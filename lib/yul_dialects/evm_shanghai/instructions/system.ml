(** Ethereum Virtual Machine (EVM) System Instructions
    @author Yu-Yang Lin
    created: 06-Jan-2025

    Based on the Ethereum Execution Specs:
    {:https://github.com/ethereum/execution-specs/blob/master/src/ethereum/shanghai/vm/instructions/system.py}

    Last commit at time of writing: 3fe6514f2d9d234e760d11af883a47c1263eff51 (18-Oct-2023).
        
    This file contains all the functions to implement system OPCODES such as CREATE, CALL and RETURN.
    Because we are trying to exhaustively explore behaviours, calling these opcodes shall be deferred
    to the Game Semantics, not the OPCODE dispatcher.
    
"""
Ethereum Virtual Machine (EVM) System Instructions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. contents:: Table of Contents
    :backlinks: none
    :local:

Introduction
------------

Implementations of the EVM system related instructions.
"""
 *)

open Z

(** from ethereum.base_types import U256, Bytes0, Uint *)
open Base_types

(** from ethereum.utils.numeric import ceil32
    from ...fork_types import Address *)
open Fork_types

(**
from ...state import (
    account_exists_and_is_empty,
    account_has_code_or_nonce,
    get_account,
    increment_nonce,
    is_account_alive,
    set_account_balance,
)
 *)
open State

(**
from ...utils.address import (
    compute_contract_address,
    compute_create2_contract_address,
    to_address,
)
 *)
open Utils_address

(**
from .. import (
    Evm,
    Message,
    incorporate_child_on_error,
    incorporate_child_on_success,
)
 *)
open Init

(** from ethereum.utils.ensure import ensure
    from ..exceptions import OutOfGasError, Revert, WriteInStaticContext *)
open Exceptions

(**
from ..gas import (
    GAS_CALL_VALUE,
    GAS_COLD_ACCOUNT_ACCESS,
    GAS_CREATE,
    GAS_KECCAK256_WORD,
    GAS_NEW_ACCOUNT,
    GAS_SELF_DESTRUCT,
    GAS_SELF_DESTRUCT_NEW_ACCOUNT,
    GAS_WARM_ACCESS,
    GAS_ZERO,
    calculate_gas_extend_memory,
    calculate_message_call_gas,
    charge_gas,
    init_code_cost,
    max_message_call_gas,
)
 *)
open Gas

(**
from ..memory import memory_read_bytes, memory_write
from ..stack import pop, push
 *)
open Base_memory

open Interpreter

(** type for EVM confs after processing a message *)
type process_message_result = {parent : EVM.t ; child : EVM.t}

(** Function that performs half of Generic Create. It returns a parent-child pair that
    can be used to resume the game. By this we mean that the child is not executed, but
    is instead stuck. Since the child is stuck, we perform "half" of the actual computation
    here (i.e. up to producing the initial child configuration with the EVM). The "second half",
    i.e. the actual execution and return after the child terminates, shall be done by our
    game semantics and then by generic_create_continuation.
    
    Plan: the EVM gets stuck and sets the flag evm.stuck_mode. We get back those and perform the correct
    move depending on what is set on stuck_mode. The stacks should remain untouched, so we can extract
    all the necessary arguments from the stack.

{@python[
def generic_create(
    evm: Evm,
    endowment: U256,
    contract_address: Address,
    memory_start_position: U256,
    memory_size: U256,
    init_code_gas: Uint,
) -> None:
    """
    Core logic used by the `CREATE*` family of opcodes.
    """
    # This import causes a circular import error
    # if it's not moved inside this method
    from ...vm.interpreter import (
        MAX_CODE_SIZE,
        STACK_DEPTH_LIMIT,
        process_create_message,
    )

    evm.accessed_addresses.add(contract_address)

    create_message_gas = max_message_call_gas(Uint(evm.gas_left))
    evm.gas_left -= create_message_gas

    ensure(not evm.message.is_static, WriteInStaticContext)
    evm.return_data = b""

    sender_address = evm.message.current_target
    sender = get_account(evm.env.state, sender_address)

    if (
        sender.balance < endowment
        or sender.nonce == Uint(2**64 - 1)
        or evm.message.depth + 1 > STACK_DEPTH_LIMIT
    ):
        evm.gas_left += create_message_gas
        push(evm.stack, U256(0))
        return

    if account_has_code_or_nonce(evm.env.state, contract_address):
        increment_nonce(evm.env.state, evm.message.current_target)
        push(evm.stack, U256(0))
        return

    call_data = memory_read_bytes(
        evm.memory, memory_start_position, memory_size
    )

    ensure(len(call_data) <= 2 * MAX_CODE_SIZE, OutOfGasError)

    increment_nonce(evm.env.state, evm.message.current_target)

    child_message = Message(
        caller=evm.message.current_target,
        target=Bytes0(),
        gas=create_message_gas,
        value=endowment,
        data=b"",
        code=call_data,
        current_target=contract_address,
        depth=evm.message.depth + 1,
        code_address=None,
        should_transfer_value=True,
        is_static=False,
        accessed_addresses=evm.accessed_addresses.copy(),
        accessed_storage_keys=evm.accessed_storage_keys.copy(),
        parent_evm=evm,
    )
    child_evm = process_create_message(child_message, evm.env)

    if child_evm.has_erred:
        incorporate_child_on_error(evm, child_evm)
        evm.return_data = child_evm.output
        push(evm.stack, U256(0))
    else:
        incorporate_child_on_success(evm, child_evm)
        evm.return_data = b""
        push(evm.stack, U256.from_be_bytes(child_evm.message.current_target))
]}

NOTE: we do not use this as is. Instead, we split it into two parts: create and return to create.
 *)
let generic_create
      (evm : EVM.t)
      (endowment : U256.t)
      (contract_address : address)
      (memory_start_position : U256.t)
      (memory_size : U256.t)
    (* (init_code_gas : U256.t) *) (* NOTE: UNUSED?? *)
    : process_message_result
  =
  (* evm.accessed_addresses.add(contract_address) *)

  (* TODO: may be better to set max gas instead *)
  let create_message_gas = max_message_call_gas( evm.gas_left ) in
  let evm = {evm with gas_left = evm.gas_left - create_message_gas} in
  
  ensure (not evm.message.is_static , WriteInStaticContext)
  (Printf.sprintf "[generic_create]: cannot create contract at %s in static context (gas left: %s)"
     (Bytes.to_hex_string contract_address)
     (U256.to_string evm.gas_left));
  let evm = {evm with return_data = []} in

  let sender_address = evm.message.current_target in     
  let sender = get_account evm.env.state sender_address in

  (* may want to just fail in this case *)
  if (sender.balance < endowment
      || sender.nonce == U256.pred (U256.of_int(2) ** 64) (* pred x = x - 1 *)
      || U256.succ evm.message.depth > _STACK_DEPTH_LIMIT) (* succ x = x + 1 *)
  then
    raise
      (EVMError
         (AssertionError,
          "[generic_create]: ran out of balance or depth exceeded."));
  (* 
    begin
      let evm = {evm with gas_left = evm.gas_left + create_message_gas} in
      let evm = EVM.push evm (U256_val U256.zero) in
      {parent = evm ; child = None}
    end
  else
   *)
  begin
    if account_has_code_or_nonce evm.env.state contract_address then
      failwith "EVM error: detected collision in address during generic create";
    let call_data = Mem.read_bytes 
                      evm.memory memory_start_position memory_size
    in
    ensure (U256.of_int(List.length(call_data)) <= (U256.of_int(2) * _MAX_CODE_SIZE) , OutOfGasError)
      (Printf.sprintf "[generic_create]: call data size (%d bytes) exceeds limit (%s bytes)"
         (List.length call_data)
         (U256.to_string (U256.of_int 2 * _MAX_CODE_SIZE)));
    let evm =
      let env = {evm.env with state = increment_nonce evm.env.state evm.message.current_target} in
      {evm with env}
    in
    let child_message : Message.t =
      {
        caller=evm.message.current_target;
        target=[];
        gas=create_message_gas;
        value=endowment;
        data=[];
        code=call_data;
        current_target=contract_address;
        depth=U256.succ evm.message.depth;
        code_address=None;
        should_transfer_value=true;
        is_static=false;
        (* accessed_addresses=evm.accessed_addresses.copy(), *)
        (* accessed_storage_keys=[]; *) (* TODO: evm.accessed_storage_keys.copy(); *)
        (* parent_evm=evm, *) (* CIRCULAR *)
      }
    in
    let child_evm = process_create_message child_message evm.env in
    {parent = evm; child = child_evm}
  end

(** Function to incorporate a Child EVM after a Generic Create.
    This sets the code with the process_create_message_continuation.
    The idea is to call this when returning to parent EVM conf that
    is stuck with a Create instruction. This return would be handled
    by the game semantics.

    Continuation from generic_create:
    {@python[
    if child_evm.has_erred:
        incorporate_child_on_error(evm, child_evm)
        evm.return_data = child_evm.output
        push(evm.stack, U256(0))
    else:
        incorporate_child_on_success(evm, child_evm)
        evm.return_data = b""
        push(evm.stack, U256.from_be_bytes(child_evm.message.current_target))
    ]}   
 *)
let generic_create_continuation (evm : EVM.t) (child_evm : EVM.t) :(EVM.t) =
  let child_evm = process_create_message_continuation child_evm in (* sets code *)
  let evm = incorporate_child_on_success evm child_evm in          (* incorporates child *)
  let evm = {evm with return_data = []} in                         (* reset return data *)
  let evm = {evm with stack = []} in                               (* rest stack to simulate pop *)
  let evm = EVM.push evm (U256_val (Bytes.to_U256 child_evm.message.current_target)) in
  evm

(** Specification for CREATE opcode:
def create(evm: Evm) -> None:
    """
    Creates a new account with associated code.

    Parameters
    ----------
    evm :
        The current EVM frame.
    """
    # STACK
    endowment = pop(evm.stack)
    memory_start_position = pop(evm.stack)
    memory_size = pop(evm.stack)

    # GAS
    extend_memory = calculate_gas_extend_memory(
        evm.memory, [(memory_start_position, memory_size)]
    )
    init_code_gas = init_code_cost(Uint(memory_size))     # YY: UNUSED IN GENERIC CALL!!! 

    charge_gas(evm, GAS_CREATE + extend_memory.cost + init_code_gas)

    # OPERATION
    evm.memory += b"\x00" * extend_memory.expand_by
    contract_address = compute_contract_address(
        evm.message.current_target,
        get_account(evm.env.state, evm.message.current_target).nonce,
    )

    generic_create(
        evm,
        endowment,
        contract_address,
        memory_start_position,
        memory_size,
        init_code_gas,
    )

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let create (evm : EVM.t) :process_message_result =
  match evm.stack with
  (* # STACK *)
  | U256_val endowment :: U256_val memory_start_position :: U256_val memory_size :: [] ->

     (* # GAS *)
     let extend_memory = calculate_gas_extend_memory
                           evm.memory [(memory_start_position, memory_size)]
     in
     let init_code_gas = init_code_cost(memory_size) in
     
     let evm = charge_gas(evm, _GAS_CREATE + extend_memory.cost + init_code_gas) in

     (* # OPERATION *)
     let evm = {evm with memory = Mem.extend evm.memory extend_memory.expand_by} in
     let contract_address =
       compute_contract_address
         evm.message.current_target
         (get_account evm.env.state evm.message.current_target).nonce
     in

     generic_create
       evm
       endowment
       contract_address
       memory_start_position
       memory_size

  (* symbolic case *)
  | [] -> failwith "[error]: create opcode failed (empty arguments)" (* TODO: result or error type *)
  | _ -> failwith "[error]: create opcode failed" (* TODO: result or error type *)


(**
def create2(evm: Evm) -> None:
    """
    Creates a new account with associated code.

    It's similar to CREATE opcode except that the address of new account
    depends on the init_code instead of the nonce of sender.

    Parameters
    ----------
    evm :
        The current EVM frame.
    """
    # STACK
    endowment = pop(evm.stack)
    memory_start_position = pop(evm.stack)
    memory_size = pop(evm.stack)
    salt = pop(evm.stack).to_be_bytes32()

    # GAS
    extend_memory = calculate_gas_extend_memory(
        evm.memory, [(memory_start_position, memory_size)]
    )
    call_data_words = ceil32(Uint(memory_size)) // 32
    init_code_gas = init_code_cost(Uint(memory_size))
    charge_gas(
        evm,
        GAS_CREATE
        + GAS_KECCAK256_WORD * call_data_words
        + extend_memory.cost
        + init_code_gas,
    )

    # OPERATION
    evm.memory += b"\x00" * extend_memory.expand_by
    contract_address = compute_create2_contract_address(
        evm.message.current_target,
        salt,
        memory_read_bytes(evm.memory, memory_start_position, memory_size),
    )

    generic_create(
        evm,
        endowment,
        contract_address,
        memory_start_position,
        memory_size,
        init_code_gas,
    )

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let create2 (evm : EVM.t) :process_message_result =
  match evm.stack with
  (* # STACK *)
  | U256_val endowment
    :: U256_val memory_start_position
    :: U256_val memory_size
    :: U256_val salt
    :: [] ->
     (* # STACK *)
     let salt = Bytes.of_U256 salt in
     
     (* # GAS *)
     let extend_memory = calculate_gas_extend_memory
                           evm.memory [(memory_start_position, memory_size)]
     in
     let call_data_words = (ceil32 memory_size) /< (U256.of_int 32) in
     let init_code_gas = init_code_cost(memory_size) in
     let evm = 
       charge_gas(
           evm,
           _GAS_CREATE
           + _GAS_KECCAK256_WORD * call_data_words
           + extend_memory.cost
           + init_code_gas
         )
     in
     
     (* # OPERATION *)
     let evm = {evm with memory = Mem.extend evm.memory extend_memory.expand_by} in
     let contract_address , (keccak_env , symbolic_env) =
       compute_create2_contract_address
         evm.message.current_target
         salt
         (Mem.read_bytes evm.memory memory_start_position memory_size)
         evm.env.keccak_env
         evm.env.symbolic_env
     in
     let evm = {evm with env = {evm.env with keccak_env ; symbolic_env}} in
     
     generic_create
       evm
       endowment
       contract_address
       memory_start_position
       memory_size

  (* symbolic case *)
  | [] -> failwith "[error]: create opcode failed (empty arguments)" (* TODO: result or error type *)
  | _ -> failwith "[error]: create opcode failed" (* TODO: result or error type *)

(** Python specification for [return_]:
{@python[
def return_(evm: Evm) -> None:
    """
    Halts execution returning output data.

    Parameters
    ----------
    evm :
        The current EVM frame.
    """
    # STACK
    memory_start_position = pop(evm.stack)
    memory_size = pop(evm.stack)

    # GAS
    extend_memory = calculate_gas_extend_memory(
        evm.memory, [(memory_start_position, memory_size)]
    )

    charge_gas(evm, GAS_ZERO + extend_memory.cost)

    # OPERATION
    evm.memory += b"\x00" * extend_memory.expand_by
    evm.output = memory_read_bytes(
        evm.memory, memory_start_position, memory_size
    )

    evm.running = False

    # PROGRAM COUNTER
    pass
]}
 *)
let return_ (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | U256_val memory_start_position :: U256_val memory_size :: [] ->
     (* # GAS *)
     let extend_memory = calculate_gas_extend_memory
                           evm.memory [(memory_start_position, memory_size)]
     in
     let evm = charge_gas(evm, _GAS_ZERO + extend_memory.cost) in

  (* # OPERATION *)
     let memory = Mem.extend evm.memory extend_memory.expand_by in
     let output = Mem.read_bytes memory memory_start_position memory_size in
     
     {evm with memory; output; stack = []; running = false}
  | _ -> failwith "return error: malformed stack"

(** Function that performs half of Generic Call. Just like Generic Create, we only
    produce a parent-child pair that can be used to resume the game. The other
    half shall be performed by a combination of the game semantics, which upon return
    shall call the generic_call_continuation.    

{@python[
def generic_call(
    evm: Evm,
    gas: Uint,
    value: U256,
    caller: Address,
    to: Address,
    code_address: Address,
    should_transfer_value: bool,
    is_staticcall: bool,
    memory_input_start_position: U256,
    memory_input_size: U256,
    memory_output_start_position: U256,
    memory_output_size: U256,
) -> None:
    """
    Perform the core logic of the `CALL*` family of opcodes.
    """
    from ...vm.interpreter import STACK_DEPTH_LIMIT, process_message

    evm.return_data = b""

    if evm.message.depth + 1 > STACK_DEPTH_LIMIT:
        evm.gas_left += gas
        push(evm.stack, U256(0))
        return

    call_data = memory_read_bytes(
        evm.memory, memory_input_start_position, memory_input_size
    )
    code = get_account(evm.env.state, code_address).code
    child_message = Message(
        caller=caller,
        target=to,
        gas=gas,
        value=value,
        data=call_data,
        code=code,
        current_target=to,
        depth=evm.message.depth + 1,
        code_address=code_address,
        should_transfer_value=should_transfer_value,
        is_static=True if is_staticcall else evm.message.is_static,
        accessed_addresses=evm.accessed_addresses.copy(),
        accessed_storage_keys=evm.accessed_storage_keys.copy(),
        parent_evm=evm,
    )
    child_evm = process_message(child_message, evm.env)

    if child_evm.has_erred:
        incorporate_child_on_error(evm, child_evm)
        evm.return_data = child_evm.output
        push(evm.stack, U256(0))
    else:
        incorporate_child_on_success(evm, child_evm)
        evm.return_data = child_evm.output
        push(evm.stack, U256(1))

    actual_output_size = min(memory_output_size, U256(len(child_evm.output)))
    memory_write(
        evm.memory,
        memory_output_start_position,
        child_evm.output[:actual_output_size],
    )
]}
 *)
let generic_call
      (evm: EVM.t)
      (gas: U256.t)
      (value: U256.t)
      (caller: address)
      (to_ : address)
      (code_address: address)
      (should_transfer_value: bool)
      (is_staticcall: bool)
      (memory_input_start_position: U256.t)
      (memory_input_size: U256.t)
      (memory_output_start_position: U256.t)
      (memory_output_size: U256.t)
    :(process_message_result)
  =
    let evm = {evm with return_data = []} in

    if U256.succ evm.message.depth > _STACK_DEPTH_LIMIT then
        (* evm.gas_left += gas *)
        (* push(evm.stack, U256(0)) *)
      (* return *)
      failwith "EVM error: failed generic call. stack depth exceeded.";

    let call_data = Mem.read_bytes 
                      evm.memory memory_input_start_position memory_input_size
    in
    let code = (get_account evm.env.state code_address).code in

    let child_message : Message.t =
      {
        caller=caller;
        target=to_;
        gas=gas;
        value=value;
        data=call_data;
        code=code;
        current_target=to_;
        depth=U256.succ evm.message.depth;
        code_address=Some code_address;
        should_transfer_value=should_transfer_value;
        is_static=if is_staticcall then true else evm.message.is_static;
        (* accessed_addresses=evm.accessed_addresses.copy(), *)
        (* accessed_storage_keys=[]; *) (* TODO: evm.accessed_storage_keys.copy(); *)
        (* parent_evm=evm, *) (* CIRCULAR *)
      }
    in
    let child_evm = process_message child_message evm.env in
    {parent = {evm with stack = [U256_val memory_output_start_position; U256_val memory_output_size]};
     child  = child_evm}

(** Function to incorporate a Child EVM after a Generic Call.
    This sets the code with the process_create_message_continuation.
    The idea is to call this when returning to parent EVM conf that
    is stuck with a Create instruction. This return would be handled
    by the game semantics.

    Continuation from generic_call:
    {@python[
    if child_evm.has_erred:
        incorporate_child_on_error(evm, child_evm)
        evm.return_data = child_evm.output
        push(evm.stack, U256(0))
    else:
        incorporate_child_on_success(evm, child_evm)
        evm.return_data = child_evm.output
        push(evm.stack, U256(1))

    actual_output_size = min(memory_output_size, U256(len(child_evm.output)))
    memory_write(
        evm.memory,
        memory_output_start_position,
        child_evm.output[:actual_output_size],
    )
    ]}

    NOTES:
    - We do not handle EVM errors; we don't rollback transactions. Instead we crash
    and inform the user that the contract may cause the EVM to crash.
    - We do not have any continuation to call for "process_message" because
    it only performs error checking. see continuation for process_create_message.
 *)
let generic_call_continuation (evm : EVM.t) (child_evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK: remember to keep the previous arguments on the stack! *)  
  | U256_val memory_output_start_position :: U256_val memory_output_size :: [] ->
     
     (* takes N from a list, or takes the whole list *)
     let take (n : Z.t) (lst : 'a list) : 'a list =
       let rec aux count acc = function
         | [] -> List.rev acc
         | x :: xs when count > Z.zero -> aux (Z.pred count) (x :: acc) xs
         | _ -> List.rev acc
       in
       aux n [] lst
     in
     
     let evm = incorporate_child_on_success evm child_evm in   (* only on success because no errors *)
     let evm = {evm with return_data = child_evm.output} in    (* set parent.return_data to child.output *)
     let evm = {evm with stack = []} in                        (* reset stack to simulate pop *)
     let evm = EVM.push evm (U256_val U256.one) in             (* push 1, i.e. success *)
     let actual_output_size = min memory_output_size (U256.of_int(List.length(child_evm.output))) in
     let memory =
       Mem.write
         evm.memory
         memory_output_start_position
         (take actual_output_size child_evm.output)
     in
     {evm with memory}

  | s ->
     let stack_str = String.concat "::" (List.map EvmVal.to_string s) in
     failwith(Printf.sprintf "generic_call_continuation error: malformed stack <%s>" stack_str)

(**
def call(evm: Evm) -> None:
    """
    Message-call into an account.

    Parameters
    ----------
    evm :
        The current EVM frame.
    """
    # STACK
    gas = Uint(pop(evm.stack))
    to = to_address(pop(evm.stack))
    value = pop(evm.stack)
    memory_input_start_position = pop(evm.stack)
    memory_input_size = pop(evm.stack)
    memory_output_start_position = pop(evm.stack)
    memory_output_size = pop(evm.stack)

    # GAS
    extend_memory = calculate_gas_extend_memory(
        evm.memory,
        [
            (memory_input_start_position, memory_input_size),
            (memory_output_start_position, memory_output_size),
        ],
    )

    if to in evm.accessed_addresses:
        access_gas_cost = GAS_WARM_ACCESS
    else:
        evm.accessed_addresses.add(to)
        access_gas_cost = GAS_COLD_ACCOUNT_ACCESS

    create_gas_cost = (
        Uint(0)
        if is_account_alive(evm.env.state, to) or value == 0
        else GAS_NEW_ACCOUNT
    )
    transfer_gas_cost = Uint(0) if value == 0 else GAS_CALL_VALUE
    message_call_gas = calculate_message_call_gas(
        value,
        gas,
        Uint(evm.gas_left),
        extend_memory.cost,
        access_gas_cost + create_gas_cost + transfer_gas_cost,
    )
    charge_gas(evm, message_call_gas.cost + extend_memory.cost)

    # OPERATION
    ensure(not evm.message.is_static or value == U256(0), WriteInStaticContext)
    evm.memory += b"\x00" * extend_memory.expand_by
    sender_balance = get_account(
        evm.env.state, evm.message.current_target
    ).balance
    if sender_balance < value:
        push(evm.stack, U256(0))
        evm.return_data = b""
        evm.gas_left += message_call_gas.stipend
    else:
        generic_call(
            evm,
            message_call_gas.stipend,
            value,
            evm.message.current_target,
            to,
            to,
            True,
            False,
            memory_input_start_position,
            memory_input_size,
            memory_output_start_position,
            memory_output_size,
        )

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let call (evm : EVM.t) :process_message_result =
  match evm.stack with
  (* # STACK *)
  | U256_val gas
    :: U256_val to_
    :: U256_val value
    :: U256_val memory_input_start_position
    :: U256_val memory_input_size
    :: U256_val memory_output_start_position
    :: U256_val memory_output_size :: [] -> 
     (* # GAS *)
     let extend_memory = calculate_gas_extend_memory
                           evm.memory
                           [
                             (memory_input_start_position, memory_input_size) ;
                             (memory_output_start_position, memory_output_size)
                           ]
     in
     (* NOTE: removed accessed_addresses, assume WARM ACCESS  *)
     (* if to in evm.accessed_addresses: *)
     (*     access_gas_cost = GAS_WARM_ACCESS *)
     (* else: *)
     (*     evm.accessed_addresses.add(to) *)
     (*     access_gas_cost = GAS_COLD_ACCOUNT_ACCESS *)
     let access_gas_cost = _GAS_WARM_ACCESS in
     let create_gas_cost =
       if is_account_alive evm.env.state (Bytes.of_U256 to_) || U256.is_zero value then U256.one
       else _GAS_NEW_ACCOUNT
     in
     let transfer_gas_cost = if U256.is_zero value then U256.zero else _GAS_CALL_VALUE in
     let message_call_gas = calculate_message_call_gas
        value
        gas
        evm.gas_left
        extend_memory.cost
        (access_gas_cost + create_gas_cost + transfer_gas_cost)
     in
     let evm = charge_gas(evm, message_call_gas.cost + extend_memory.cost) in
     
     (* # OPERATION *)
     ensure (not evm.message.is_static || U256.is_zero value , WriteInStaticContext)
       (Printf.sprintf
          "[call]: attempted to transfer nonzero value (%s wei) in a static context"
          (U256.to_string value));
     let evm = {evm with memory = Mem.extend evm.memory extend_memory.expand_by} in
     (* let sender_balance = (get_account evm.env.state evm.message.current_target).balance in *)
     (* if sender_balance < value then  *)
     (*    let evm = push evm U256.zero in *)
     (*    let evm = {evm with return_data = []} in *)
     (*    {evm gas_left = evm.gas_left + message_call_gas.stipend} *)
     (* else *)
     generic_call
       evm
       message_call_gas.stipend
       value
       evm.message.current_target
       (to_address to_)
       (to_address to_)
       true
       false
       memory_input_start_position
       memory_input_size
       memory_output_start_position
       memory_output_size

  | _ -> failwith "call error: malformed stack"
  

(**
def callcode(evm: Evm) -> None:
    """
    Message-call into this account with alternative account’s code.

    Parameters
    ----------
    evm :
        The current EVM frame.
    """
    # STACK
    gas = Uint(pop(evm.stack))
    code_address = to_address(pop(evm.stack))
    value = pop(evm.stack)
    memory_input_start_position = pop(evm.stack)
    memory_input_size = pop(evm.stack)
    memory_output_start_position = pop(evm.stack)
    memory_output_size = pop(evm.stack)

    # GAS
    to = evm.message.current_target

    extend_memory = calculate_gas_extend_memory(
        evm.memory,
        [
            (memory_input_start_position, memory_input_size),
            (memory_output_start_position, memory_output_size),
        ],
    )

    if code_address in evm.accessed_addresses:
        access_gas_cost = GAS_WARM_ACCESS
    else:
        evm.accessed_addresses.add(code_address)
        access_gas_cost = GAS_COLD_ACCOUNT_ACCESS

    transfer_gas_cost = Uint(0) if value == 0 else GAS_CALL_VALUE
    message_call_gas = calculate_message_call_gas(
        value,
        gas,
        Uint(evm.gas_left),
        extend_memory.cost,
        access_gas_cost + transfer_gas_cost,
    )
    charge_gas(evm, message_call_gas.cost + extend_memory.cost)

    # OPERATION
    evm.memory += b"\x00" * extend_memory.expand_by
    sender_balance = get_account(
        evm.env.state, evm.message.current_target
    ).balance
    if sender_balance < value:
        push(evm.stack, U256(0))
        evm.return_data = b""
        evm.gas_left += message_call_gas.stipend
    else:
        generic_call(
            evm,
            message_call_gas.stipend,
            value,
            evm.message.current_target,
            to,
            code_address,
            True,
            False,
            memory_input_start_position,
            memory_input_size,
            memory_output_start_position,
            memory_output_size,
        )

    # PROGRAM COUNTER
    evm.pc += 1

NOTE:
- EIP-6049: becoming deprecated,
- EIP-6780: locked to creation transaction, effectively deprecated.
def selfdestruct(evm: Evm) -> None:
    """
    Halt execution and register account for later deletion.

    Parameters
    ----------
    evm :
        The current EVM frame.
    """
    # STACK
    beneficiary = to_address(pop(evm.stack))

    # GAS
    gas_cost = GAS_SELF_DESTRUCT
    if beneficiary not in evm.accessed_addresses:
        evm.accessed_addresses.add(beneficiary)
        gas_cost += GAS_COLD_ACCOUNT_ACCESS

    if (
        not is_account_alive(evm.env.state, beneficiary)
        and get_account(evm.env.state, evm.message.current_target).balance != 0
    ):
        gas_cost += GAS_SELF_DESTRUCT_NEW_ACCOUNT

    charge_gas(evm, gas_cost)

    # OPERATION
    ensure(not evm.message.is_static, WriteInStaticContext)

    originator = evm.message.current_target
    beneficiary_balance = get_account(evm.env.state, beneficiary).balance
    originator_balance = get_account(evm.env.state, originator).balance

    # First Transfer to beneficiary
    set_account_balance(
        evm.env.state, beneficiary, beneficiary_balance + originator_balance
    )
    # Next, Zero the balance of the address being deleted (must come after
    # sending to beneficiary in case the contract named itself as the
    # beneficiary).
    set_account_balance(evm.env.state, originator, U256(0))

    # register account for deletion
    evm.accounts_to_delete.add(originator)

    # mark beneficiary as touched
    if account_exists_and_is_empty(evm.env.state, beneficiary):
        evm.touched_accounts.add(beneficiary)

    # HALT the execution
    evm.running = False

    # PROGRAM COUNTER
    pass
 *)

(**
def delegatecall(evm: Evm) -> None:
    """
    Message-call into an account.

    Parameters
    ----------
    evm :
        The current EVM frame.
    """
    # STACK
    gas = Uint(pop(evm.stack))
    code_address = to_address(pop(evm.stack))
    memory_input_start_position = pop(evm.stack)
    memory_input_size = pop(evm.stack)
    memory_output_start_position = pop(evm.stack)
    memory_output_size = pop(evm.stack)

    # GAS
    extend_memory = calculate_gas_extend_memory(
        evm.memory,
        [
            (memory_input_start_position, memory_input_size),
            (memory_output_start_position, memory_output_size),
        ],
    )

    if code_address in evm.accessed_addresses:
        access_gas_cost = GAS_WARM_ACCESS
    else:
        evm.accessed_addresses.add(code_address)
        access_gas_cost = GAS_COLD_ACCOUNT_ACCESS

    message_call_gas = calculate_message_call_gas(
        U256(0), gas, Uint(evm.gas_left), extend_memory.cost, access_gas_cost
    )
    charge_gas(evm, message_call_gas.cost + extend_memory.cost)

    # OPERATION
    evm.memory += b"\x00" * extend_memory.expand_by
    generic_call(
        evm,
        message_call_gas.stipend,
        evm.message.value,
        evm.message.caller,
        evm.message.current_target,
        code_address,
        False,
        False,
        memory_input_start_position,
        memory_input_size,
        memory_output_start_position,
        memory_output_size,
    )

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let delegatecall (evm : EVM.t) :process_message_result =
  match evm.stack with
  (* # STACK *)
  | U256_val gas
    :: U256_val code_address
    :: U256_val memory_input_start_position
    :: U256_val memory_input_size
    :: U256_val memory_output_start_position
    :: U256_val memory_output_size :: [] -> 
     (* # GAS *)
     let extend_memory = calculate_gas_extend_memory
                           evm.memory
                           [
                             (memory_input_start_position, memory_input_size) ;
                             (memory_output_start_position, memory_output_size)
                           ]
     in
     (* NOTE: removed accessed_addresses, assume WARM ACCESS  *)
     (* if to in evm.accessed_addresses: *)
     (*     access_gas_cost = GAS_WARM_ACCESS *)
     (* else: *)
     (*     evm.accessed_addresses.add(to) *)
     (*     access_gas_cost = GAS_COLD_ACCOUNT_ACCESS *)
     let access_gas_cost = _GAS_WARM_ACCESS in
     let message_call_gas = calculate_message_call_gas
        U256.zero gas evm.gas_left extend_memory.cost access_gas_cost
     in
     let evm = charge_gas(evm, message_call_gas.cost + extend_memory.cost) in
     
     (* # OPERATION *)
     let evm = {evm with memory = Mem.extend evm.memory extend_memory.expand_by} in
     (* let sender_balance = (get_account evm.env.state evm.message.current_target).balance in *)
     (* if sender_balance < value then  *)
     (*    let evm = push evm U256.zero in *)
     (*    let evm = {evm with return_data = []} in *)
     (*    {evm gas_left = evm.gas_left + message_call_gas.stipend} *)
     (* else *)
     generic_call
       evm
       message_call_gas.stipend
       evm.message.value
       evm.message.caller
       evm.message.current_target
       (to_address code_address)
       false
       false
       memory_input_start_position
       memory_input_size
       memory_output_start_position
       memory_output_size

  | _ -> failwith "call error: malformed stack"

(**
def staticcall(evm: Evm) -> None:
    """
    Message-call into an account.

    Parameters
    ----------
    evm :
        The current EVM frame.
    """
    # STACK
    gas = Uint(pop(evm.stack))
    to = to_address(pop(evm.stack))
    memory_input_start_position = pop(evm.stack)
    memory_input_size = pop(evm.stack)
    memory_output_start_position = pop(evm.stack)
    memory_output_size = pop(evm.stack)

    # GAS
    extend_memory = calculate_gas_extend_memory(
        evm.memory,
        [
            (memory_input_start_position, memory_input_size),
            (memory_output_start_position, memory_output_size),
        ],
    )

    if to in evm.accessed_addresses:
        access_gas_cost = GAS_WARM_ACCESS
    else:
        evm.accessed_addresses.add(to)
        access_gas_cost = GAS_COLD_ACCOUNT_ACCESS

    message_call_gas = calculate_message_call_gas(
        U256(0),
        gas,
        Uint(evm.gas_left),
        extend_memory.cost,
        access_gas_cost,
    )
    charge_gas(evm, message_call_gas.cost + extend_memory.cost)

    # OPERATION
    evm.memory += b"\x00" * extend_memory.expand_by
    generic_call(
        evm,
        message_call_gas.stipend,
        U256(0),
        evm.message.current_target,
        to,
        to,
        True,
        True,
        memory_input_start_position,
        memory_input_size,
        memory_output_start_position,
        memory_output_size,
    )

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let staticcall (evm : EVM.t) :process_message_result =
  match evm.stack with    
  (* # STACK *)
  | U256_val gas
    :: U256_val to_
    :: U256_val memory_input_start_position
    :: U256_val memory_input_size
    :: U256_val memory_output_start_position
    :: U256_val memory_output_size :: [] ->
     (* # GAS *)
     let extend_memory = calculate_gas_extend_memory
                           evm.memory
                           [
                             (memory_input_start_position, memory_input_size) ;
                             (memory_output_start_position, memory_output_size)
                           ]
     in
     
     (* NOTE: removed accessed_addresses, assume WARM ACCESS  *)
     (* if to in evm.accessed_addresses: *)
     (*     access_gas_cost = GAS_WARM_ACCESS *)
     (* else: *)
     (*     evm.accessed_addresses.add(to) *)
     (*     access_gas_cost = GAS_COLD_ACCOUNT_ACCESS *)
     let access_gas_cost = _GAS_WARM_ACCESS in
     let message_call_gas = calculate_message_call_gas
        U256.zero
        gas
        evm.gas_left
        extend_memory.cost
        access_gas_cost
     in
     let evm = charge_gas(evm, message_call_gas.cost + extend_memory.cost) in
     
     (* # OPERATION *)
     let evm = {evm with memory = Mem.extend evm.memory extend_memory.expand_by} in
     generic_call
       evm
       message_call_gas.stipend
       U256.zero
       evm.message.current_target
       (to_address to_)
       (to_address to_)
       true
       true
       memory_input_start_position
       memory_input_size
       memory_output_start_position
       memory_output_size

  | _ -> failwith "call error: malformed stack"

(**
def revert(evm: Evm) -> None:
    """
    Stop execution and revert state changes, without consuming all provided gas
    and also has the ability to return a reason
    Parameters
    ----------
    evm :
        The current EVM frame.
    """
    # STACK
    memory_start_index = pop(evm.stack)
    size = pop(evm.stack)

    # GAS
    extend_memory = calculate_gas_extend_memory(
        evm.memory, [(memory_start_index, size)]
    )

    charge_gas(evm, extend_memory.cost)

    # OPERATION
    evm.memory += b"\x00" * extend_memory.expand_by
    output = memory_read_bytes(evm.memory, memory_start_index, size)
    evm.output = bytes(output)
    raise Revert

    # PROGRAM COUNTER
    pass
 *)
let revert_dummy (evm : EVM.t) =
  match evm.stack with
  | U256_val memory_start_index :: U256_val size :: [] ->
     (* # GAS *)
     let extend_memory = calculate_gas_extend_memory
                           evm.memory [(memory_start_index, size)]
     in
     let evm = charge_gas(evm, _GAS_ZERO + extend_memory.cost) in

     (* # OPERATION *)
     let memory = Mem.extend evm.memory extend_memory.expand_by in
     let output = Mem.read_bytes memory memory_start_index size in
     
     Printf.sprintf "\x1b[1;33mWARNING!\x1b[0m encountered <revert(%s,%s)>: %s"
       (U256.to_string memory_start_index)
       (U256.to_string size)
       (Bytes.to_ascii_string output)
     |> !print_warning ;
     Control_flow.stop {evm with stack = []; output}
  (* | _ :: _ -> Control_flow.stop {evm with stack = []} *)
  | _ -> failwith "error: REVERT"
 

(** CUSTOM opcode to add external funds *)
let external_fund (evm : EVM.t) :EVM.t =
  match evm.stack with
  (* # STACK *)
  | U256_val amount :: [] ->
     let recipient_address = (evm : EVM.t).message.current_target in
     let increase_recipient_balance (recipient: Account.t) :Account.t = 
       {recipient with balance = recipient.balance + amount}
     in
     let state = modify_state evm.env.state recipient_address increase_recipient_balance in
     let env = {evm.env with state} in
     {evm with stack = [] ; env}
  | _ -> failwith "error: EXT_FUND"



(** CUSTOM call to spoof an address and make the sender be any caller *)
let impersonate_call (evm : EVM.t) :process_message_result =
  match evm.stack with
  (* # STACK *)
  | U256_val caller
    :: U256_val gas
    :: U256_val to_
    :: U256_val value
    :: U256_val memory_input_start_position
    :: U256_val memory_input_size
    :: U256_val memory_output_start_position
    :: U256_val memory_output_size :: [] -> 
     (* # GAS *)
     let extend_memory = calculate_gas_extend_memory
                           evm.memory
                           [
                             (memory_input_start_position, memory_input_size) ;
                             (memory_output_start_position, memory_output_size)
                           ]
     in
     (* NOTE: removed accessed_addresses, assume WARM ACCESS  *)
     (* if to in evm.accessed_addresses: *)
     (*     access_gas_cost = GAS_WARM_ACCESS *)
     (* else: *)
     (*     evm.accessed_addresses.add(to) *)
     (*     access_gas_cost = GAS_COLD_ACCOUNT_ACCESS *)
     let access_gas_cost = _GAS_WARM_ACCESS in
     let create_gas_cost =
       if is_account_alive evm.env.state (Bytes.of_U256 to_) || U256.is_zero value then U256.one
       else _GAS_NEW_ACCOUNT
     in
     let transfer_gas_cost = if U256.is_zero value then U256.zero else _GAS_CALL_VALUE in
     let message_call_gas = calculate_message_call_gas
        value
        gas
        evm.gas_left
        extend_memory.cost
        (access_gas_cost + create_gas_cost + transfer_gas_cost)
     in
     let evm = charge_gas(evm, message_call_gas.cost + extend_memory.cost) in
     
     (* # OPERATION *)
     ensure (not evm.message.is_static || U256.is_zero value , WriteInStaticContext)
       (Printf.sprintf
          "[call]: attempted to transfer nonzero value (%s wei) in a static context"
          (U256.to_string value));
     let evm = {evm with memory = Mem.extend evm.memory extend_memory.expand_by} in
     (* let sender_balance = (get_account evm.env.state evm.message.current_target).balance in *)
     (* if sender_balance < value then  *)
     (*    let evm = push evm U256.zero in *)
     (*    let evm = {evm with return_data = []} in *)
     (*    {evm gas_left = evm.gas_left + message_call_gas.stipend} *)
     (* else *)
     generic_call
       evm
       message_call_gas.stipend
       value
       (to_address caller)
       (to_address to_)
       (to_address to_)
       true
       false
       memory_input_start_position
       memory_input_size
       memory_output_start_position
       memory_output_size

  | _ -> failwith "call error: malformed stack"
