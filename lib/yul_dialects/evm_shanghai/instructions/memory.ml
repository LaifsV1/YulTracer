(** Ethereum Virtual Machine (EVM) Memory Instructions for Yul.
    @author Yu-Yang Lin
    created: 04-Mar-2024

    Implementations of the EVM Memory instructions for Yul based on the
    Ethereum Execution Client Specifications written in Python. This file
    implements the Ethereum Protocol Release version "Shanghai" at:
    [src/ethereum/shanghai/vm/instructions/memory.py]

    The Following Instructions are defined:
    mstore, mstore8, mload, msize, memoryguard

 *)

open Z
open Z3api

(** from ethereum.base_types import U8_MAX_VALUE, U256, Bytes *)
open Base_types

(** from .. import Evm
    from ..stack import pop, push *)
open Init

(** from ..gas import (
    GAS_BASE,
    GAS_VERY_LOW,
    calculate_gas_extend_memory,
    charge_gas,
)
 *)
open Gas

(** from ..memory import memory_read_bytes, memory_write *)
open Base_memory

(**
def mstore(evm: Evm) -> None:
    """
    Stores a word to memory.
    This also expands the memory, if the memory is
    insufficient to store the word.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    start_position = pop(evm.stack)
    value = pop(evm.stack).to_be_bytes32()

    # GAS
    extend_memory = calculate_gas_extend_memory(
        evm.memory, [(start_position, U256(len(value)))]
    )

    charge_gas(evm, GAS_VERY_LOW + extend_memory.cost)

    # OPERATION
    evm.memory += b"\x00" * extend_memory.expand_by
    memory_write(evm.memory, start_position, value)

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let mstore (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | U256_val start_position :: value :: [] ->
     (* value = pop(evm.stack).to_be_bytes32() *)
     let value , sigma = Bytes.evm_val_to_be_bytes value evm.env.symbolic_env in
     let evm = {evm with env = {evm.env with symbolic_env = sigma}} in
     
     (* # GAS *)
     let extend_memory = calculate_gas_extend_memory
                           evm.memory [(start_position, U256.byte_length)]
     in
     let evm = charge_gas(evm, _GAS_VERY_LOW + extend_memory.cost) in
     
     (* # OPERATION *)
     let memory = Mem.extend evm.memory extend_memory.expand_by in
     let memory = Mem.write memory start_position value in
     
     {evm with memory = memory; stack = []}
  | S256_val start_position :: _ :: [] ->
     failwith
       (Printf.sprintf "mstore: symbolic adddress <%s> unsupported"
          (string_of_symbolic_var start_position))
  | _ -> assert(false) (* TODO: result monad or error type *)

(**
def mstore8(evm: Evm) -> None:
    """
    Stores a byte to memory.
    This also expands the memory, if the memory is
    insufficient to store the word.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    start_position = pop(evm.stack)
    value = pop(evm.stack)

    # GAS
    extend_memory = calculate_gas_extend_memory(
        evm.memory, [(start_position, U256(1))]
    )

    charge_gas(evm, GAS_VERY_LOW + extend_memory.cost)

    # OPERATION
    evm.memory += b"\x00" * extend_memory.expand_by
    normalized_bytes_value = Bytes([value & U8_MAX_VALUE])
    memory_write(evm.memory, start_position, normalized_bytes_value)

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let mstore8 (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | U256_val start_position :: value :: [] ->
     (* # GAS *)
     let extend_memory = calculate_gas_extend_memory
                           evm.memory [(start_position, U256.one)]
     in
     let evm = charge_gas(evm, _GAS_VERY_LOW + extend_memory.cost) in
     
     (* # OPERATION *)
     let memory = Mem.extend evm.memory extend_memory.expand_by in
     let normalized_bytes_value , sigma = Bytes.evm_val_to_U8_LSB value evm.env.symbolic_env in
     let memory = Mem.write memory start_position normalized_bytes_value in
     
     {evm with memory = memory ; env = {evm.env with symbolic_env = sigma}; stack = []}
  | S256_val start_position :: _ :: [] ->
     failwith
       (Printf.sprintf "mstore8: symbolic adddress <%s> unsupported"
          (string_of_symbolic_var start_position))
  | _ -> assert(false) (* TODO: result monad or error type *)

(**
def mload(evm: Evm) -> None:
    """
    Load word from memory.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    start_position = pop(evm.stack)

    # GAS
    extend_memory = calculate_gas_extend_memory(
        evm.memory, [(start_position, U256(32))]
    )
    charge_gas(evm, GAS_VERY_LOW + extend_memory.cost)

    # OPERATION
    evm.memory += b"\x00" * extend_memory.expand_by
    value = U256.from_be_bytes(
        memory_read_bytes(evm.memory, start_position, U256(32))
    )
    push(evm.stack, value)

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let mload (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | U256_val start_position :: [] ->
     (* # GAS *)
     let extend_memory = calculate_gas_extend_memory
                           evm.memory [(start_position, U256.byte_length)]
     in
     let evm = charge_gas(evm, _GAS_VERY_LOW + extend_memory.cost) in
     
     (* # OPERATION *)
     let evm = {evm with memory = Mem.extend evm.memory extend_memory.expand_by} in
     let value , sigma = (* TODO: need a from_be_bytes for EVM_VAL (for symbolic missing) *)
       Bytes.evm_val_from_be_bytes 
         (Mem.read_bytes evm.memory start_position U256.byte_length) evm.env.symbolic_env
     in
     
     {evm with stack = [value] ; env = {evm.env with symbolic_env = sigma}}
  | S256_val start_position :: [] ->
     failwith
       (Printf.sprintf "mload: symbolic adddress <%s> unsupported"
          (string_of_symbolic_var start_position))
  | _ -> assert(false) (* TODO: result monad or error type *)

(**
def msize(evm: Evm) -> None:
    """
    Push the size of active memory in bytes onto the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    pass

    # GAS
    charge_gas(evm, GAS_BASE)

    # OPERATION
    push(evm.stack, U256(len(evm.memory)))

    # PROGRAM COUNTER
    evm.pc += 1

 *)
let msize (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | [] ->
     (* # GAS *)
     let evm = charge_gas(evm, _GAS_BASE) in
     
     (* # OPERATION *)
     let result = Mem.length evm.memory in
     
     EVM.push evm (U256_val result)
  | _ -> assert(false) (* TODO: result monad or error type *)

(** 
def mcopy(evm: Evm) -> None:
    """
    Copy the bytes in memory from one location to another.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    destination = pop(evm.stack)
    source = pop(evm.stack)
    length = pop(evm.stack)

    # GAS
    words = ceil32(Uint(length)) // Uint(32)
    copy_gas_cost = GAS_COPY * words

    extend_memory = calculate_gas_extend_memory(
        evm.memory, [(source, length), (destination, length)]
    )
    charge_gas(evm, GAS_VERY_LOW + copy_gas_cost + extend_memory.cost)

    # OPERATION
    evm.memory += b"\x00" * extend_memory.expand_by
    value = memory_read_bytes(evm.memory, source, length)
    memory_write(evm.memory, destination, value)

    # PROGRAM COUNTER
    evm.pc += Uint(1)
 *)
let mcopy (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK
    destination = pop(evm.stack)
    source = pop(evm.stack)
    length = pop(evm.stack)
   *)
  | U256_val destination :: U256_val source :: U256_val length :: [] ->
     (* # GAS *)
     let words = (ceil32 length) /< U256.byte_length in
     let copy_gas_cost = _GAS_COPY * words in
     let extend_memory = calculate_gas_extend_memory
                           evm.memory [(source, length); (destination, length)]
     in 
     let evm = charge_gas(evm, _GAS_VERY_LOW + copy_gas_cost + extend_memory.cost) in
     
     (* # OPERATION *)
     let evm = {evm with memory = Mem.extend evm.memory extend_memory.expand_by} in
     let value = Mem.read_bytes evm.memory source length in
     let memory = Mem.write evm.memory destination value in
    
     {evm with stack = [] ; memory = memory}
  | S256_val start_position :: [] ->
     failwith
       (Printf.sprintf "mload: symbolic adddress <%s> unsupported"
          (string_of_symbolic_var start_position))
  | _ -> assert(false) (* TODO: result monad or error type *)


(** Yul-specific opcode to initialise memory for the Yul optimiser.
    According to the specifications, this sets memory boundaries between code
    and the optimizer as follows where `memoryguard(size)` returns `ptr`:
    - code memory: `\[0, size) and \[ptr,+inf\]`
    - optimiser memory: `\[size, ptr)`
    If the optimiser does not use any memory, size = ptr.

    Since we do not call the optimiser, we shall model this opcode by assuming
    the case where the optimiser does not need to use any memory. By doing so,
    this opcode then serves just to directly initialise the free-memory pointer
    usually found at 0x40 (according to Solidity conventions).

    e.g. `mstore(64, memoryguard(128))`
    which is found at the top of every Yul object will always set 0x40 to 0x80.

    As such, this is a long-winded explanation for the identity function.
 *)
let memoryguard (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  | _ :: [] -> evm
  | _ -> assert(false)

(** custom opcode to print the entire memory map *)
let print_mem (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  | [] -> Mem.print evm.memory; {evm with stack = []}
  | _ -> assert(false)

