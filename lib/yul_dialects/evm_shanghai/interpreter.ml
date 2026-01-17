(** Ethereum Virtual Machine (EVM) Interpreter
    @author Yu-Yang Lin
    created: 22-Jan-2025

    Based on the Ethereum Execution Specs:
    {:https://github.com/ethereum/execution-specs/blob/master/src/ethereum/shanghai/vm/interpreter.py}
    
    Last update (commit) to specs used: 3fe6514f2d9d234e760d11af883a47c1263eff51 (18-Oct-2023)
       
"""
Ethereum Virtual Machine (EVM) Interpreter
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. contents:: Table of Contents
    :backlinks: none
    :local:

Introduction
------------

A straightforward interpreter that executes EVM code.
"""
 *)

open Z

(** 
from dataclasses import dataclass
from typing import Iterable, Optional, Set, Tuple, Union

from ethereum.base_types import U256, Bytes0, Uint
 *)
open Base_types
open Base_memory (* for Mem *)
(* open Crypto_hash (* for K *) *)

(** (TODO: TRACE)
from ethereum.trace import (
    EvmStop,
    OpEnd,
    OpException,
    OpStart,
    PrecompileEnd,
    PrecompileStart,
    TransactionEnd,
    evm_trace,
)
from ..fork_types import Address, Log *)
(* open Fork_types *)

(** 
from ..state import (
    account_exists_and_is_empty,
    account_has_code_or_nonce,
    begin_transaction,
    commit_transaction,
    destroy_storage,
    increment_nonce,
    mark_account_created,
    move_ether,
    rollback_transaction,
    set_code,
    touch_account,
)
 *)
open State

(** from ..vm import Message 

    (NOTE: this is interesting. they have precompiled contracts)
    from ..vm.precompiled_contracts.mapping import PRE_COMPILED_CONTRACTS
    from . import Environment, Evm
 *)
open Init

(** from ..vm.gas import GAS_CODE_DEPOSIT, charge_gas *)
open Gas


(**
from ethereum.utils.ensure import ensure
from .exceptions import (
    AddressCollision,
    ExceptionalHalt,
    InvalidContractPrefix,
    InvalidOpcode,
    OutOfGasError,
    Revert,
    StackDepthLimitError,
)
 *)
open Exceptions

(**
from .instructions import Ops, op_implementation
from .runtime import get_valid_jump_destinations
 *)

(** STACK_DEPTH_LIMIT = U256(1024) *)
let _STACK_DEPTH_LIMIT = U256.of_int(1024)

(** MAX_CODE_SIZE = 0x6000 *)
let _MAX_CODE_SIZE = U256.of_string "0x6000" (* TODO: CHECK THAT THIS WORKS *)

(**
@dataclass
class MessageCallOutput:
    """
    Output of a particular message call

    Contains the following:

          1. `gas_left`: remaining gas after execution.
          2. `refund_counter`: gas to refund after execution.
          3. `logs`: list of `Log` generated during execution.
          4. `accounts_to_delete`: Contracts which have self-destructed.
          5. `touched_accounts`: Accounts that have been touched.
          6. `error`: The error from the execution if any.
    """

    gas_left: Uint
    refund_counter: U256
    logs: Union[Tuple[()], Tuple[Log, ...]]
    accounts_to_delete: Set[Address]
    touched_accounts: Iterable[Address]
    error: Optional[Exception]


def process_message_call(
    message: Message, env: Environment
) -> MessageCallOutput:
    """
    If `message.current` is empty then it creates a smart contract
    else it executes a call from the `message.caller` to the `message.target`.

    Parameters
    ----------
    message :
        Transaction specific items.

    env :
        External items required for EVM execution.

    Returns
    -------
    output : `MessageCallOutput`
        Output of the message call
    """
    if message.target == Bytes0(b""):
        is_collision = account_has_code_or_nonce(
            env.state, message.current_target
        )
        if is_collision:
            return MessageCallOutput(
                Uint(0), U256(0), tuple(), set(), set(), AddressCollision()
            )
        else:
            evm = process_create_message(message, env)
    else:
        evm = process_message(message, env)
        if account_exists_and_is_empty(env.state, Address(message.target)):
            evm.touched_accounts.add(Address(message.target))

    if evm.error:
        logs: Tuple[Log, ...] = ()
        accounts_to_delete = set()
        touched_accounts = set()
        refund_counter = U256(0)
    else:
        logs = evm.logs
        accounts_to_delete = evm.accounts_to_delete
        touched_accounts = evm.touched_accounts
        refund_counter = U256(evm.refund_counter)

    tx_end = TransactionEnd(message.gas - evm.gas_left, evm.output, evm.error)
    evm_trace(evm, tx_end)

    return MessageCallOutput(
        gas_left=evm.gas_left,
        refund_counter=refund_counter,
        logs=logs,
        accounts_to_delete=accounts_to_delete,
        touched_accounts=touched_accounts,
        error=evm.error,
    )
 *)

(**
def execute_code(message: Message, env: Environment) -> Evm:
    """
    Executes bytecode present in the `message`.

    Parameters
    ----------
    message :
        Transaction specific items.
    env :
        External items required for EVM execution.

    Returns
    -------
    evm: `ethereum.vm.EVM`
        Items containing execution specific objects
    """
    code = message.code
    valid_jump_destinations = get_valid_jump_destinations(code)

    evm = Evm(
        pc=Uint(0),
        stack=[],
        memory=bytearray(),
        code=code,
        gas_left=message.gas,
        env=env,
        valid_jump_destinations=valid_jump_destinations,
        logs=(),
        refund_counter=0,
        running=True,
        message=message,
        output=b"",
        accounts_to_delete=set(),
        touched_accounts=set(),
        return_data=b"",
        error=None,
        accessed_addresses=message.accessed_addresses,
        accessed_storage_keys=message.accessed_storage_keys,
    )
    try:

        if evm.message.code_address in PRE_COMPILED_CONTRACTS:
            evm_trace(evm, PrecompileStart(evm.message.code_address))
            PRE_COMPILED_CONTRACTS[evm.message.code_address](evm)
            evm_trace(evm, PrecompileEnd())
            return evm

        while evm.running and evm.pc < len(evm.code):
            try:
                op = Ops(evm.code[evm.pc])
            except ValueError:
                raise InvalidOpcode(evm.code[evm.pc])

            evm_trace(evm, OpStart(op))
            op_implementation[op](evm)
            evm_trace(evm, OpEnd())

        evm_trace(evm, EvmStop(Ops.STOP))

    except ExceptionalHalt as error:
        evm_trace(evm, OpException(error))
        evm.gas_left = Uint(0)
        evm.output = b""
        evm.error = error
    except Revert as error:
        evm_trace(evm, OpException(error))
        evm.error = error
    return evm
 *)
let execute_code (message: Message.t) (env: Environment.t) :(EVM.t) =
  (* TODO: this is probably quite involved. We have a mixture of code and arguments here.
     this likely requires us to get the first U256, extract the KEY that this corresponds to,
     get the name of the object mapped, and get the object mapped to that name. *)

  let code = message.code in
  (* valid_jump_destinations = get_valid_jump_destinations(code) *)

  let evm : EVM.t =
    {
      pc=U256.zero;
      stack=[];
      memory=Mem.init ();
      code=code;
      gas_left=message.gas;
      env=env;
      (* valid_jump_destinations=valid_jump_destinations; *)
      (* logs=(); *)
      (* refund_counter=0; *)
      running=true;
      message=message;
      output=[];
      (* accounts_to_delete=set(); *)
      (* touched_accounts=set(); *)
      return_data=[];
      (* error=None; *)
      (* accessed_addresses=message.accessed_addresses; *)
      (* accessed_storage_keys=message.accessed_storage_keys; *)
      object_ids = []; (* TODO: initialise object IDs with the new object to be extracted ABOVE *)
      stuck_mode = None;
    }
  in

  (* TODO: there is typically a try-catch that checks for precompiled contracts, and then runs the code.
     the code is executed using the PC to decide whether it is done or not. since we use Yul to execute
     code, we perhaps need to move this try-catch outside to the game. Currently, we do not really support
     exceptions, however, so perhaps it's not worth adding. *)

  (* NOTE: at the moment, this is just mimicking calling execution function. however, this is actually
     note executing any code, but just returning the stuck conf. I suspect we need the game to handle
     this instead *)
     
  evm 

  

(**
def process_message(message: Message, env: Environment) -> Evm:
    """
    Executes a call to create a smart contract.

    Parameters
    ----------
    message :
        Transaction specific items.
    env :
        External items required for EVM execution.

    Returns
    -------
    evm: :py:class:`~ethereum.shanghai.vm.Evm`
        Items containing execution specific objects
    """
    if message.depth > STACK_DEPTH_LIMIT:
        raise StackDepthLimitError("Stack depth limit reached")

    # take snapshot of state before processing the message
    begin_transaction(env.state)

    touch_account(env.state, message.current_target)

    if message.should_transfer_value and message.value != 0:
        move_ether(
            env.state, message.caller, message.current_target, message.value
        )

    evm = execute_code(message, env)
    if evm.error:
        # revert state to the last saved checkpoint
        # since the message call resulted in an error
        rollback_transaction(env.state)
    else:
        commit_transaction(env.state)
    return evm
 *)
let process_message (message: Message.t) (env: Environment.t) :(EVM.t) =

  (* if message.depth > STACK_DEPTH_LIMIT:
        raise StackDepthLimitError("Stack depth limit reached") *)

  (* begin_transaction(env.state) *) (* TODO: do we need this? we already have this below too *)

  (* touch_account(env.state, message.current_target) *) (* TODO: do we need this? *)

  let env = 
    if message.should_transfer_value && message.value <> U256.zero then
      let state = move_ether
                    env.state message.caller message.current_target message.value
      in
      {env with state}
    else env
  in

  let evm = execute_code message env in (* TODO: SHOULD WE EXECUTE CODE HERE? OR IN THE GAME? *)
  
  (* TODO: do we need pattern matching on EVM errors? *)
  evm

(**
def process_create_message(message: Message, env: Environment) -> Evm:
    """
    Executes a call to create a smart contract.

    Parameters
    ----------
    message :
        Transaction specific items.
    env :
        External items required for EVM execution.

    Returns
    -------
    evm: :py:class:`~ethereum.shanghai.vm.Evm`
        Items containing execution specific objects.
    """
    # take snapshot of state before processing the message
    begin_transaction(env.state)

    # If the address where the account is being created has storage, it is
    # destroyed. This can only happen in the following highly unlikely
    # circumstances:
    # * The address created by a `CREATE` call collides with a subsequent
    #   `CREATE` or `CREATE2` call.
    # * The first `CREATE` happened before Spurious Dragon and left empty
    #   code.
    destroy_storage(env.state, message.current_target)

    # In the previously mentioned edge case the preexisting storage is ignored
    # for gas refund purposes. In order to do this we must track created
    # accounts.
    mark_account_created(env.state, message.current_target)

    increment_nonce(env.state, message.current_target)
    evm = process_message(message, env)
    if not evm.error:
        contract_code = evm.output
        contract_code_gas = len(contract_code) * GAS_CODE_DEPOSIT
        try:
            if len(contract_code) > 0:
                ensure(contract_code[0] != 0xEF, InvalidContractPrefix)
            charge_gas(evm, contract_code_gas)
            ensure(len(contract_code) <= MAX_CODE_SIZE, OutOfGasError)
        except ExceptionalHalt as error:
            rollback_transaction(env.state)
            evm.gas_left = Uint(0)
            evm.output = b""
            evm.error = error
        else:
            set_code(env.state, message.current_target, contract_code)
            commit_transaction(env.state)
    else:
        rollback_transaction(env.state)
    return evm
 *)
let process_create_message (message : Message.t) (env : Environment.t) :(EVM.t) =
    
  (* begin_transaction(env.state) *) (* NOTE: do we need this? *)

  (* destroy_storage(env.state, message.current_target) *) (* TODO: check if we need this *)

  (* mark_account_created(env.state, message.current_target) *) (* TODO: implement? *)

  (* increment_nonce(env.state, message.current_target) *) (* TODO: do we need this? *)

  (* NOTE: this appears to be the main body of this *)
  let evm = process_message message env in

  (* TODO: the next part is doing the error handling. how do we implement it?
     this is basically supposed to be a continuation because the actual smart contract
     code isn't added until the execution of the child EVM finishes.
     however, we don't have execution finishing normally here. Should we move this out to
     the incorporate EVM section?
   *)

  (* NOTE: we are splitting the function into the preparation for execution and the
     continuation after execution. This is because in the game we expect to have
     stuck configurations that need to be processed by the game semantics.
   *)
  
  evm
   
(** function that implements the continuation part of process_create_message
    which is supposed to run after the EVM has finished computing. Because
    we do not execute the EVM to termination, we spplit it into a continuation.

    {@python[
    if not evm.error:
        contract_code = evm.output
        contract_code_gas = len(contract_code) * GAS_CODE_DEPOSIT
        try:
            if len(contract_code) > 0:
                ensure(contract_code[0] != 0xEF, InvalidContractPrefix)
            charge_gas(evm, contract_code_gas)
            ensure(len(contract_code) <= MAX_CODE_SIZE, OutOfGasError)
        except ExceptionalHalt as error:
            rollback_transaction(env.state)
            evm.gas_left = Uint(0)
            evm.output = b""
            evm.error = error
        else:
            set_code(env.state, message.current_target, contract_code)
            commit_transaction(env.state)
    else:
        rollback_transaction(env.state)
    return evm
    ]}

    NOTE: no continuation for process_message called because process_message only
    calls error handling after returning. we do not handle EVM errors, only
    contract logical errors. So we don't rollback. Instead, we crash and tell
    the user that the contract is capable of causing the EVM to crash.
 *)
let process_create_message_continuation (evm : EVM.t) =

  (* SKIP error checking for now *)
  (* if not evm.error: *)
  
  let contract_code = evm.output in
  (* TODO: we don't have a contract code length... what do? perhaps we get the object length somehow? *)
  let contract_code_gas = U256.of_int(List.length(contract_code)) * _GAS_CODE_DEPOSIT in

  (* SKIP try-catch for now *)
  (* try: *)
  if List.length(contract_code) > 0 then
    (* SKIP ensure for invalid contract prefix *)
    (* ensure(contract_code[0] <> 0xEF, InvalidContractPrefix) *)
    let evm = charge_gas(evm, contract_code_gas) in
    ensure(U256.of_int(List.length(contract_code)) <= _MAX_CODE_SIZE , OutOfGasError)
      (Printf.sprintf "[create continuation]: contract code size (%d bytes) exceeds limit (%s bytes)"
         (List.length contract_code)
         (U256.to_string _MAX_CODE_SIZE));

  (* except ExceptionalHalt as error:
     rollback_transaction(env.state)
     evm.gas_left = Uint(0)
     evm.output = b""
     evm.error = error
  else *) (* NOTE: this else is attached to the try in Python... *)
    
    let env = {evm.env with state = set_code evm.env.state evm.message.current_target contract_code} in
    (* commit_transaction(env.state) *) (* TODO: commit transaction *)
    {evm with env = env}
  else
    failwith "error: rolling back transaction in contiuation for create message"
    (* rollback_transaction(env.state) *)

