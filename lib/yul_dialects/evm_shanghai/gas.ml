(** Ethereum Virtual Machine (EVM) Gas
    @author Yu-Yang Lin
    created: 02-Nov-2023

    EVM gas constants and calculators.

    Please refer to specs in commit: 3fe6514f2d9d234e760d11af883a47c1263eff51.
    The executions specs repository has been refactored since.
 *)

open Z
open Z3api
open Base_memory

(** {@python[from ethereum.base_types import U256, Uint]} *)
open Base_types

(** this appears to be implicit in the specs in Python, which names it [__init__] *)
open Init
open Exceptions

(* ------------------- *)
(* DEFINITIONS FOR GAS *)
(* ------------------- *)

(** {@python[
  GAS_JUMPDEST = Uint(1)
  GAS_BASE = Uint(2)
  GAS_VERY_LOW = Uint(3)
  GAS_STORAGE_SET = Uint(20000)
  GAS_STORAGE_UPDATE = Uint(5000)
  GAS_STORAGE_CLEAR_REFUND = Uint(4800)
  GAS_LOW = Uint(5)
  GAS_MID = Uint(8)
  GAS_HIGH = Uint(10)
  GAS_EXPONENTIATION = Uint(10)
  GAS_EXPONENTIATION_PER_BYTE = Uint(50)
  GAS_MEMORY = Uint(3)
  GAS_KECCAK256 = Uint(30)
  GAS_KECCAK256_WORD = Uint(6)
  GAS_COPY = Uint(3)
  GAS_BLOCK_HASH = Uint(20)
  GAS_LOG = Uint(375)
  GAS_LOG_DATA = Uint(8)
  GAS_LOG_TOPIC = Uint(375)
  GAS_CREATE = Uint(32000)
  GAS_CODE_DEPOSIT = Uint(200)
  GAS_ZERO = Uint(0)
  GAS_NEW_ACCOUNT = Uint(25000)
  GAS_CALL_VALUE = Uint(9000)
  GAS_CALL_STIPEND = Uint(2300)
  GAS_SELF_DESTRUCT = Uint(5000)
  GAS_SELF_DESTRUCT_NEW_ACCOUNT = Uint(25000)
  GAS_ECRECOVER = Uint(3000)
  GAS_SHA256 = Uint(60)
  GAS_SHA256_WORD = Uint(12)
  GAS_RIPEMD160 = Uint(600)
  GAS_RIPEMD160_WORD = Uint(120)
  GAS_IDENTITY = Uint(15)
  GAS_IDENTITY_WORD = Uint(3)
  GAS_RETURN_DATA_COPY = Uint(3)
  GAS_FAST_STEP = Uint(5)
  GAS_BLAKE2_PER_ROUND = Uint(1)
  GAS_COLD_SLOAD = Uint(2100)
  GAS_COLD_ACCOUNT_ACCESS = Uint(2600)
  GAS_WARM_ACCESS = Uint(100)
  GAS_INIT_CODE_WORD_COST = 2
]}
 *)

let _GAS_ZERO = U256.zero
let _GAS_VERY_LOW = U256.of_int(3)
let _GAS_MID = U256.of_int(8)
let _GAS_LOW = U256.of_int(5)
let _GAS_EXPONENTIATION = U256.of_int(10)
let _GAS_EXPONENTIATION_PER_BYTE = U256.of_int(50)
let _GAS_BASE = U256.of_int(2)
let _GAS_MEMORY = U256.of_int(3)
let _GAS_KECCAK256 = U256.of_int(30)
let _GAS_KECCAK256_WORD = U256.of_int(6)
let _GAS_COPY = U256.of_int(3)
let _GAS_INIT_CODE_WORD_COST = U256.of_int(2)
let _GAS_CREATE = U256.of_int(32000)
let _GAS_CODE_DEPOSIT = U256.of_int(200)
let _GAS_WARM_ACCESS = U256.of_int(100)
let _GAS_NEW_ACCOUNT = U256.of_int(25000)
let _GAS_CALL_VALUE = U256.of_int(9000)
let _GAS_CALL_STIPEND = U256.of_int(2300)
let _GAS_RETURN_DATA_COPY = U256.of_int(3)

(** [ExtendMemory] class from Python Execution Specs:
{@python[
class ExtendMemory:
    """
    Define the parameters for memory extension in opcodes

    `cost`: `ethereum.base_types.Uint`
        The gas required to perform the extension
    `expand_by`: `ethereum.base_types.Uint`
        The size by which the memory will be extended
    """

    cost: Uint
    expand_by: Uint
]}
note: we implement this as a record type instead of a class.
 *)
type extend_memory = {cost : U256.t ; expand_by : U256.t}

(** [MessageCallGas] class from Python Execution Specs:
{@python[
@dataclass
class MessageCallGas:
    """
    Define the gas cost and stipend for executing the call opcodes.

    `cost`: `ethereum.base_types.Uint`
        The non-refundable portion of gas reserved for executing the
        call opcode.
    `stipend`: `ethereum.base_types.Uint`
        The portion of gas available to sub-calls that is refundable
        if not consumed
    """

    cost: Uint
    stipend: Uint
]}
note: we implement this as a record type instead of a class.
 *)
type message_call_gas = {cost : U256.t ; stipend : U256.t}

(** [charge_gas] from Python Execution Specs:
{@python[
def charge_gas(evm: Evm, amount: Uint) -> None:
    """
    Subtracts `amount` from `evm.gas_left`.

    Parameters
    ----------
    evm :
        The current EVM.
    amount :
        The amount of gas the current operation requires.

    """
    evm_trace(evm, GasAndRefund(amount))

    if evm.gas_left < amount:
        raise OutOfGasError
    else:
        evm.gas_left -= U256(amount)
]}
 *)
let charge_gas : EVM.t * U256.t -> EVM.t =
  fun (evm , amount) ->
  if evm.gas_left < amount then
    begin
      raise (EVMError(OutOfGasError ,
                      Printf.sprintf "out of gas!! gas left: %s; amount charged: %s"
                        (U256.to_string evm.gas_left)
                        (U256.to_string amount)))
    end
  else
    {evm with gas_left = evm.gas_left - amount}

(** [calculate_memory_gas_cost] from Python Execution Specs:
{@python[
def calculate_memory_gas_cost(size_in_bytes: Uint) -> Uint:
    """
    Calculates the gas cost for allocating memory
    to the smallest multiple of 32 bytes,
    such that the allocated size is at least as big as the given size.

    Parameters
    ----------
    size_in_bytes :
        The size of the data in bytes.

    Returns
    -------
    total_gas_cost : `ethereum.base_types.Uint`
        The gas cost for storing data in memory.
    """
    size_in_words = ceil32(size_in_bytes) // 32
    linear_cost = size_in_words * GAS_MEMORY
    quadratic_cost = size_in_words**2 // 512
    total_gas_cost = linear_cost + quadratic_cost
    try:
        return total_gas_cost
    except ValueError:
        raise OutOfGasError
]}
 *)
let calculate_memory_gas_cost (size_in_bytes : U256.t) :(U256.t) =
  let size_in_words = (ceil32 size_in_bytes) /< U256.byte_length in
  let linear_cost = size_in_words * _GAS_MEMORY in
  let quadratic_cost = size_in_words ** 2 /< ~$512 in
  let total_gas_cost = linear_cost + quadratic_cost in
  total_gas_cost (* TODO: I don't understand what the try-catch is for *)

(** [calculate_gas_extend_memory] from Python Execution Specs:
{@python[
def calculate_gas_extend_memory(
    memory: bytearray, extensions: List[Tuple[U256, U256]]
) -> ExtendMemory:
    """
    Calculates the gas amount to extend memory

    Parameters
    ----------
    memory :
        Memory contents of the EVM.
    extensions:
        List of extensions to be made to the memory.
        Consists of a tuple of start position and size.

    Returns
    -------
    extend_memory: `ExtendMemory`
    """
    size_to_extend = Uint(0)
    to_be_paid = Uint(0)
    current_size = Uint(len(memory))
    for start_position, size in extensions:
        if size == 0:
            continue
        before_size = ceil32(current_size)
        after_size = ceil32(Uint(start_position) + Uint(size))
        if after_size <= before_size:
            continue

        size_to_extend += after_size - before_size
        already_paid = calculate_memory_gas_cost(before_size)
        total_cost = calculate_memory_gas_cost(after_size)
        to_be_paid += total_cost - already_paid

        current_size = after_size

    return ExtendMemory(to_be_paid, size_to_extend)
]}
 *) (* TODO: CHECK IF THIS IS CORRECT *)
let calculate_gas_extend_memory
      (memory : Mem.t) (extensions : (U256.t * U256.t) list)
    :(extend_memory) =
  let size_to_extend = U256.zero in (* size_to_extend = Uint(0) *)
  let to_be_paid = U256.zero in     (* to_be_paid = Uint(0) *)
  let current_size = Mem.length memory in (* in bytes, so max_binding * 32 *)
  let _ , to_be_paid , size_to_extend = 
    List.fold_left
      (* before_size shall be current_size *)
      (fun (before_size, to_be_paid, size_to_extend) (start_position , size) ->
        (* if size == 0: continue *) 
        if U256.is_zero size then (before_size, to_be_paid, size_to_extend)
        else
          (* after_size = ceil32(Uint(start_position) + Uint(size))*)
          let after_size = ceil32 (start_position + size) in
          (* if after_size <= before_size: continue *)
          if Z.leq after_size before_size then (before_size, to_be_paid, size_to_extend)
          else
            (* size_to_extend += after_size - before_size *)
            let size_to_extend = size_to_extend + after_size - before_size in
            (* already_paid = calculate_memory_gas_cost(before_size) *)
            let already_paid = calculate_memory_gas_cost before_size in
            (* total_cost = calculate_memory_gas_cost(after_size) *)
            let total_cost = calculate_memory_gas_cost after_size in
            (* to_be_paid += total_cost - already_paid *)
            let to_be_paid = to_be_paid + total_cost - already_paid in
            (* current_size = after_size *)
            let current_size = after_size in
            (current_size, to_be_paid, size_to_extend))
      (current_size, to_be_paid, size_to_extend)
      extensions
  in      
  {cost = to_be_paid ; expand_by = size_to_extend}

(**
def max_message_call_gas(gas: Uint) -> Uint:
    """
    Calculates the maximum gas that is allowed for making a message call

    Parameters
    ----------
    gas :
        The amount of gas provided to the message-call.

    Returns
    -------
    max_allowed_message_call_gas: `ethereum.base_types.Uint`
        The maximum gas allowed for making the message-call.
    """
    return gas - (gas // Uint(64))
 *)
let max_message_call_gas (gas : U256.t) :(U256.t) = gas - (gas /< U256.of_int(64))

(**
def calculate_message_call_gas(
    value: U256,
    gas: Uint,
    gas_left: Uint,
    memory_cost: Uint,
    extra_gas: Uint,
    call_stipend: Uint = GAS_CALL_STIPEND,
) -> MessageCallGas:
    """
    Calculates the MessageCallGas (cost and stipend) for
    executing call Opcodes.

    Parameters
    ----------
    value:
        The amount of `ETH` that needs to be transferred.
    gas :
        The amount of gas provided to the message-call.
    gas_left :
        The amount of gas left in the current frame.
    memory_cost :
        The amount needed to extend the memory in the current frame.
    extra_gas :
        The amount of gas needed for transferring value + creating a new
        account inside a message call.
    call_stipend :
        The amount of stipend provided to a message call to execute code while
        transferring value(ETH).

    Returns
    -------
    message_call_gas: `MessageCallGas`
    """
    call_stipend = Uint(0) if value == 0 else call_stipend
    if gas_left < extra_gas + memory_cost:
        return MessageCallGas(gas + extra_gas, gas + call_stipend)

    gas = min(gas, max_message_call_gas(gas_left - memory_cost - extra_gas))

    return MessageCallGas(gas + extra_gas, gas + call_stipend)
 *)
let calculate_message_call_gas
    (value: U256.t)
    (gas: U256.t)
    (gas_left: U256.t)
    (memory_cost: U256.t)
    (extra_gas: U256.t)
  =
  let call_stipend: U256.t = _GAS_CALL_STIPEND in
  let call_stipend = if U256.is_zero value then U256.zero else call_stipend in
  if gas_left < extra_gas + memory_cost then
    {cost = gas + extra_gas ; stipend = gas + call_stipend}
  else
    let gas = min gas (max_message_call_gas(gas_left - memory_cost - extra_gas)) in
    {cost = gas + extra_gas ; stipend = gas + call_stipend}

(**
def init_code_cost(init_code_length: Uint) -> Uint:
    """
    Calculates the gas to be charged for the init code in CREAT*
    opcodes as well as create transactions.

    Parameters
    ----------
    init_code_length :
        The length of the init code provided to the opcode
        or a create transaction

    Returns
    -------
    init_code_gas: `ethereum.base_types.Uint`
        The gas to be charged for the init code.
    """
    return GAS_INIT_CODE_WORD_COST * ceil32(init_code_length) // 32
 *)
let init_code_cost (init_code_length: U256.t) :U256.t =
  _GAS_INIT_CODE_WORD_COST * ceil32(init_code_length) /< U256.of_int(32)
  
(* ---------------------------------- *)
(* GENERIC OPERATIONS THAT CHARGE GAS *)
(* ---------------------------------- *)

(** Generic function for binary symbolic operations. Used for Symbolic Execution. *)
let symbolic_binop evm x y sop gas =
  (* # GAS *)
  let evm = charge_gas(evm, gas) in

  (* create symbolic values out of evm values *)
  let x_prop = prop_of_evm_val x in
  let y_prop = prop_of_evm_val y in
  
  (* apply symbolic operation [of the form NEW_VAR = (SOP X_PROP Y_PROP)]*)
  let sigma , new_var = sigma_fresh_bv256_var evm.env.symbolic_env (sop x_prop y_prop) in
  
  (* update stack and symbolic environment *)
  {evm with stack = [(S256_val new_var)]; env = {evm.env with symbolic_env = sigma}}

(** Generic binary operation that consumes a given amount of gas.
    This function isn't present in the original specs. I implement
    this as it's a common and useful pattern.
    
    Note 1:
    for the EVM specs, the top of the stack is [x]. according to
    the Yul specs, arguments are ordered [op(x,y)]. we shall order
    the stack in reverse; i.e. [x :: y :: []].
    
    Note 2:
    missing program counter. we want to skip this.
 *)
let do_binop
      (evm : EVM.t)
      (op  : U256.t -> U256.t -> U256.t)
      (sop : prop -> prop -> prop)
      (gas : U256.t)
    :(EVM.t) =
  (* closer to specs but not idiomatic and less safe:
     # GAS
     let evm = charge_gas(evm, gas) in
     let stack = evm.stack in
     
     # STACK
     let x,stack = EVM.pop stack in
     let y,stack = EVM.pop stack in
     
     # OPERATION
     let result = op x y in
     
     {evm with stack = EVM.push stack result} *)
  (* OCaml safer and idiomatic way *)
  match evm.stack with
  (* # STACK *)
  | U256_val x :: U256_val y :: [] ->
     (* # GAS *)
     let evm = charge_gas(evm, gas) in
     
     (* # OPERATION *)
     let result = U256_val (op x y) in
     
     {evm with stack = [result]}
  (* SYMBOLIC CASE. note: this assumes only U256 and S256, no other constructors. *)
  | x :: y :: [] -> symbolic_binop evm x y sop gas
  | _ -> assert(false) (* TODO: result or error type *)

(** Generic unary operation that consumes gas *)
let do_uniop
      (evm : EVM.t)
      (op : U256.t -> U256.t)
      (sop : prop -> prop)
      (gas : U256.t)
    :(EVM.t) =
  (* closer to specs but not idiomatic and less safe:
     # GAS
     let evm = charge_gas(evm, gas) in
     let stack = evm.stack in
     
     # STACK
     let x,stack = EVM.pop stack in
     
     # OPERATION
     let result = op x in
     
     {evm with stack = EVM.push stack result} *)
  (* OCaml safer and idiomatic way *)
  match evm.stack with
  (* # STACK *)
  | U256_val x :: [] ->
     (* # GAS *)
     let evm = charge_gas(evm, gas) in
     
     (* # OPERATION *)
     let result = U256_val (op x) in
     
     {evm with stack = [result]}
  (* SYMBOLIC CASE. note: this assumes only U256 and S256, no other constructors. *)
  | (S256_val _) as x :: [] ->
     (* # GAS *)
     let evm = charge_gas(evm, gas) in

     (* create symbolic values out of evm values *)
     let x_prop = prop_of_evm_val x in
     
     (* apply symbolic operation *)
     let sigma , new_var = sigma_fresh_bv256_var evm.env.symbolic_env (sop x_prop) in
     
     (* update stack and symbolic environment *)
     {evm with stack = [S256_val new_var]; env = {evm.env with symbolic_env = sigma}}
  | _ -> assert(false) (* TODO: result or error type *)

(** Generic operation that consumes gas and pushes a given value onto an empty stack *)
let do_pushval (evm : EVM.t) (v : U256.t) (gas : U256.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | [] -> (* pass, but we want to make sure the stack is empty since this per instruction *)
     (* # GAS *)
     let evm = charge_gas(evm, gas) in
     
     (* # OPERATION *)
     {evm with stack = [U256_val v]}
  | _ -> assert(false) (* TODO: result or error type *)

