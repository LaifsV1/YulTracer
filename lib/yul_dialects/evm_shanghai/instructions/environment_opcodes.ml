(** Ethereum Virtual Machine (EVM) Environmental Instructions for Yul.
    @author Yu-Yang Lin
    created: 20-Aug-2024

    Implementations of the EVM Environment instructions for Yul based on:
    [src/ethereum/shanghai/vm/instructions/environment.py]

    The Following Instructions are defined:
    codecopy
 *)

open Z
open Yul_semantics

(** from ethereum.utils.numeric import ceil32 (note: added to base_types)
    from ethereum.base_types import U256, Uint *)
open Base_types

(** from ethereum.crypto.hash import keccak256 *)
(* open Crypto_hash *)

(** from ethereum.utils.ensure import ensure *)
open Exceptions

(** from ...fork_types import EMPTY_ACCOUNT *)
open Fork_types

(** from ...state import get_account *)
open State

(** from ...utils.address import to_address *)
open Utils_address

(** from ...vm.memory import buffer_read, memory_write *)
open Base_memory

(** from .. import Evm *)
open Init

(** from ..exceptions import OutOfBoundsRead *)

(** from ..gas import (
    GAS_BASE,
    GAS_COLD_ACCOUNT_ACCESS,
    GAS_COPY,
    GAS_FAST_STEP,
    GAS_RETURN_DATA_COPY,
    GAS_VERY_LOW,
    GAS_WARM_ACCESS,
    calculate_gas_extend_memory,
    charge_gas,
) *)
open Gas

(**
from ..stack import pop, push
 *)

(**
def address(evm: Evm) -> None:
    """
    Pushes the address of the current executing account to the stack.

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
    push(evm.stack, U256.from_be_bytes(evm.message.current_target))

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let address (evm : EVM.t) :EVM.t =
  match evm.stack with
  (* # STACK *)
  | [] ->
     (* # GAS *)
     let evm = charge_gas(evm, _GAS_BASE) in
     
     (* # OPERATION *)
     EVM.push evm (U256_val (Bytes.to_U256 evm.message.current_target))
  | _ -> assert(false) (* TODO: result monad or error type *)

(**
def balance(evm: Evm) -> None:
    """
    Pushes the balance of the given account onto the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    address = to_address(pop(evm.stack))

    # GAS
    if address in evm.accessed_addresses:
        charge_gas(evm, GAS_WARM_ACCESS)
    else:
        evm.accessed_addresses.add(address)
        charge_gas(evm, GAS_COLD_ACCOUNT_ACCESS)

    # OPERATION
    # Non-existent accounts default to EMPTY_ACCOUNT, which has balance 0.
    balance = get_account(evm.env.state, address).balance

    push(evm.stack, balance)

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let balance (evm : EVM.t) :EVM.t =
  match evm.stack with
  (* # STACK *)
  | U256_val address :: [] ->
     let address = to_address address in
     
     (* # GAS *)
     (* NOTE: we assume WARM ACCESS every time -- we don't deal with access history *)
     let evm = charge_gas(evm, _GAS_WARM_ACCESS) in
     
     (* # OPERATION *)
     (* # Non-existent accounts default to EMPTY_ACCOUNT, which has balance 0. *)
     let balance = (get_account evm.env.state address : Account.t).balance in
     
     {evm with stack = [U256_val balance]}
  | _ -> assert(false) (* TODO: result monad or error type *)

(**
def origin(evm: Evm) -> None:
    """
    Pushes the address of the original transaction sender to the stack.
    The origin address can only be an EOA.

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
    push(evm.stack, U256.from_be_bytes(evm.env.origin))

    # PROGRAM COUNTER
    evm.pc += 1
 *)

(**
def caller(evm: Evm) -> None:
    """
    Pushes the address of the caller onto the stack.

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
    push(evm.stack, U256.from_be_bytes(evm.message.caller))

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let caller (evm : EVM.t) :EVM.t =
  match evm.stack with
  (* # STACK *)
  | [] ->
     (* # GAS *)
     let evm = charge_gas(evm, _GAS_BASE) in
     
     (* # OPERATION *)
     EVM.push evm (U256_val (Bytes.to_U256 evm.message.caller))
  | _ -> assert(false) (* TODO: result monad or error type *)

(**
def callvalue(evm: Evm) -> None:
    """
    Push the value (in wei) sent with the call onto the stack.

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
    push(evm.stack, evm.message.value)

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let callvalue (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | [] ->
     (* # GAS *)
     let evm = charge_gas(evm, _GAS_BASE) in
     
     (* # OPERATION *)
     EVM.push evm (U256_val evm.message.value)
  | _ -> assert(false) (* TODO: result monad or error type *)

(**
def calldataload(evm: Evm) -> None:
    """
    Push a word (32 bytes) of the input data belonging to the current
    environment onto the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    start_index = pop(evm.stack)

    # GAS
    charge_gas(evm, GAS_VERY_LOW)

    # OPERATION
    value = buffer_read(evm.message.data, start_index, U256(32))

    push(evm.stack, U256.from_be_bytes(value))

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let calldataload (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | U256_val start_index :: [] ->

     (* # GAS *)
     let evm = charge_gas(evm, _GAS_VERY_LOW) in
     
     (* # OPERATION *)
     let value , sigma =
       Bytes.evm_val_from_be_bytes (buffer_read evm.message.data start_index (U256.of_int 32))
         evm.env.symbolic_env
     in
     
     {evm with stack = [value] ; env = {evm.env with symbolic_env = sigma}}
  | s ->
     print_endline (Z3api.string_of_sigma evm.env.symbolic_env);
     let stack_str = String.concat "::" (List.map EvmVal.to_string s) in
     failwith(Printf.sprintf "calldataload: malformed stack <%s>" stack_str)

(**
def calldatasize(evm: Evm) -> None:
    """
    Push the size of input data in current environment onto the stack.

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
    push(evm.stack, U256(len(evm.message.data)))

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let calldatasize (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | [] ->

     (* # GAS *)
     let evm = charge_gas(evm, _GAS_BASE) in
     
     (* # OPERATION *)
     EVM.push evm (U256_val (U256.of_int (List.length evm.message.data)))
  | _ -> assert(false) (* TODO: result monad or error type *)

(**
def calldatacopy(evm: Evm) -> None:
    """
    Copy a portion of the input data in current environment to memory.

    This will also expand the memory, in case that the memory is insufficient
    to store the data.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    memory_start_index = pop(evm.stack)
    data_start_index = pop(evm.stack)
    size = pop(evm.stack)

    # GAS
    words = ceil32(Uint(size)) // 32
    copy_gas_cost = GAS_COPY * words
    extend_memory = calculate_gas_extend_memory(
        evm.memory, [(memory_start_index, size)]
    )
    charge_gas(evm, GAS_VERY_LOW + copy_gas_cost + extend_memory.cost)

    # OPERATION
    evm.memory += b"\x00" * extend_memory.expand_by
    value = buffer_read(evm.message.data, data_start_index, size)
    memory_write(evm.memory, memory_start_index, value)

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let calldatacopy (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | U256_val memory_start_index :: U256_val data_start_index :: U256_val size :: [] ->

     (* # GAS *)
     let words = (ceil32 size) /< U256.of_int(32) in
     let copy_gas_cost = _GAS_COPY * words in
     let extend_memory = calculate_gas_extend_memory
                             evm.memory [(memory_start_index, size)]
     in
     let evm = charge_gas(evm, _GAS_VERY_LOW + copy_gas_cost + extend_memory.cost) in
     
     (* # OPERATION *)

     let memory = Mem.extend evm.memory extend_memory.expand_by in
     let value , sigma = buffer_read evm.message.data data_start_index size , evm.env.symbolic_env in
     let memory = Mem.write memory memory_start_index value in
     
     {evm with memory = memory; stack = []; env = {evm.env with symbolic_env = sigma}}
  | _ -> assert(false) (* TODO: result monad or error type *)

(**
def codesize(evm: Evm) -> None:
    """
    Push the size of code running in current environment onto the stack.

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
    push(evm.stack, U256(len(evm.code)))

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let codesize (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | [] ->

     (* # GAS *)
     let evm = charge_gas(evm, _GAS_BASE) in
     
     (* # OPERATION *)
     {evm with stack = [U256_val (U256.of_int (List.length evm.code))]}
  | _ -> assert(false) (* TODO: result monad or error type *)

(** Python specification for [codecopy]:
{@python[
def codecopy(evm: Evm) -> None:
    """
    Copy a portion of the code in current environment to memory.

    This will also expand the memory, in case that the memory is insufficient
    to store the data.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    memory_start_index = pop(evm.stack)
    code_start_index = pop(evm.stack)
    size = pop(evm.stack)

    # GAS
    words = ceil32(Uint(size)) // 32
    copy_gas_cost = GAS_COPY * words
    extend_memory = calculate_gas_extend_memory(
        evm.memory, [(memory_start_index, size)]
    )
    charge_gas(evm, GAS_VERY_LOW + copy_gas_cost + extend_memory.cost)

    # OPERATION
    evm.memory += b"\x00" * extend_memory.expand_by
    value = buffer_read(evm.code, code_start_index, size)
    memory_write(evm.memory, memory_start_index, value)

    # PROGRAM COUNTER
    evm.pc += 1
}]
The original specs above uses `buffer_read` to copy from `evm.code`.

Our implementation of `evm.code` uses symbolic bytes, which is similar
to the use of bytearrays here. However, instead of running bytes as code,
we shall be identifying every object member by a numerical ID that can be
looked up to find the parsed object to execute. All sizes will be fixed
to 32 bytes (one U256 word) for convenience.

For the implementation of codecopy, there isn't much difference because
32-byte IDs will be copied into memory as if they were object code. It is
when these bytes are ran as code that the IDs need to be looked up.

However, the Solidity compiler often produces Yul code that doesn't just
keep arguments in `evm.calldata`, but also appends arguments in the object
code itself (in `evm.code`). This means codecopy not only copies object IDs,
but may be copying actual 32-byte words that represent arguments.

For this purpose, we shall be differentiating between arguments and object
code by their offset. Negative offsets (i.e. very large U256 offsets) shall
be copied directly into memory as if they were bytecode, whereas smaller
offsets shall be used to access actual `evm.code` slots.

e.g.
consider the following scenario:
- evm.code = { 0-31: 0xFFF..F , 32-63: 0x00..1 , 64-95: 0x00..5 , 96-127: 0x002 }
- current running object: 0xFF..F
- arguments: 0x00..1, 0x00..5, 0x002
- memory = { 0x00.0 }

codecopy( target , source , size )
- if target =  0, source = 0, size = 32: copies 0xFFF..F into memory slot 0
- if target =  0, source = 32, size = 32: copies 0x00..1 into memory slot 0
- if target =  0, source = 0xFFF..A, size = 32: copies 0xFFF..A into memory slot 0

This means it suffices to check if a number is negative in 256 bits to
decide if we should copy it directly, or if it's an actual offset.
 *)
let codecopy (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | U256_val memory_start_index ::
      U256_val code_start_index ::
        U256_val size :: [] ->

     (* # GAS *)
     let words = (ceil32 size) /< U256.byte_length in
     let copy_gas_cost = _GAS_COPY * words in
     let extend_memory = calculate_gas_extend_memory
                           evm.memory [(memory_start_index, size)]
     in
     let evm = charge_gas(evm, _GAS_VERY_LOW + copy_gas_cost + extend_memory.cost) in
     let evm = {evm with stack = []} in
     
     (* # MODIFICATION TO MODEL OBJECT OFFSETS USING NEGATIVE IDs

        Experimental evidence that extracting works:
        utop # Z.to_string (u256_signed_extract (u256_extract (U256.of_int (-1))));;
        - : string = "-1"

        utop # Z.to_string ((u256_extract (U256.of_int (-1))));;
        - : string =
        "115792089237316195423570985008687907853269984665640564039457584007913129639935"
      *)
     let evm = {evm with memory = Mem.extend evm.memory extend_memory.expand_by} in
     let value,sigma =
       (* # OPERATION *)
       if (u256_signed_extract code_start_index) < zero then
         (* if the offset is negative, it is an object ID, so we write it into memory as is *)
         begin
           assert(size = U256.of_int 32);
           Bytes.evm_val_to_be_bytes (U256_val code_start_index) evm.env.symbolic_env
         end
       else
         (* if the offset is not negative, it's a real offset in code *)
         buffer_read evm.code code_start_index size , evm.env.symbolic_env
     in
     assert(evm.env.symbolic_env = sigma);
     {evm with memory = Mem.write evm.memory memory_start_index value;
               env = {evm.env with symbolic_env = sigma}}
  (* TODO: add symbolic case *)
  | _ -> assert(false) (* TODO: result monad or error type *)

(*
def gasprice(evm: Evm) -> None:
    """
    Push the gas price used in current environment onto the stack.

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
    push(evm.stack, U256(evm.env.gas_price))

    # PROGRAM COUNTER
    evm.pc += 1
 *)

(**
def extcodesize(evm: Evm) -> None:
    """
    Push the code size of a given account onto the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    address = to_address(pop(evm.stack))

    # GAS
    if address in evm.accessed_addresses:
        charge_gas(evm, GAS_WARM_ACCESS)
    else:
        evm.accessed_addresses.add(address)
        charge_gas(evm, GAS_COLD_ACCOUNT_ACCESS)

    # OPERATION
    # Non-existent accounts default to EMPTY_ACCOUNT, which has empty code.
    codesize = U256(len(get_account(evm.env.state, address).code))

    push(evm.stack, codesize)

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let extcodesize (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | U256_val address :: [] ->

     let address = to_address address in

     (* # GAS *)
     (* if address in evm.accessed_addresses: *)
     (*     charge_gas(evm, GAS_WARM_ACCESS) *)
     (* else: *)
     (*     evm.accessed_addresses.add(address) *)
     (*     charge_gas(evm, GAS_COLD_ACCOUNT_ACCESS) *)
     let evm = charge_gas(evm, _GAS_WARM_ACCESS) in
     let evm = {evm with stack = []} in

     (* # OPERATION *)
     (* # Non-existent accounts default to EMPTY_ACCOUNT, which has empty code. *)
     
     (* VK HACK START *)
     (* PREVIOUS CODE: let codesize = U256.of_int (List.length (get_account evm.env.state address).code) in *)
     (* HACKED CODE: *)
     let codesize = List.length (get_account evm.env.state address).code in

     let codesize = U256.of_int (if codesize == 0 then 1 else codesize) in
     (* VK HACK END *)
     EVM.push evm (U256_val codesize)
  (* TODO: add symbolic case *)
  | _ -> assert(false) (* TODO: result monad or error type *)

(*
def extcodecopy(evm: Evm) -> None:
    """
    Copy a portion of an account's code to memory.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    address = to_address(pop(evm.stack))
    memory_start_index = pop(evm.stack)
    code_start_index = pop(evm.stack)
    size = pop(evm.stack)

    # GAS
    words = ceil32(Uint(size)) // 32
    copy_gas_cost = GAS_COPY * words
    extend_memory = calculate_gas_extend_memory(
        evm.memory, [(memory_start_index, size)]
    )

    if address in evm.accessed_addresses:
        charge_gas(evm, GAS_WARM_ACCESS + copy_gas_cost + extend_memory.cost)
    else:
        evm.accessed_addresses.add(address)
        charge_gas(
            evm, GAS_COLD_ACCOUNT_ACCESS + copy_gas_cost + extend_memory.cost
        )

    # OPERATION
    evm.memory += b"\x00" * extend_memory.expand_by
    code = get_account(evm.env.state, address).code
    value = buffer_read(code, code_start_index, size)
    memory_write(evm.memory, memory_start_index, value)

    # PROGRAM COUNTER
    evm.pc += 1
 *)

(**
def returndatasize(evm: Evm) -> None:
    """
    Pushes the size of the return data buffer onto the stack.

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
    push(evm.stack, U256(len(evm.return_data)))

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let returndatasize (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | [] ->

     (* # GAS *)
     let evm = charge_gas(evm, _GAS_BASE) in
     
     (* # OPERATION *)
     EVM.push evm (U256_val (U256.of_int (List.length evm.return_data)))
  | _ -> assert(false) (* TODO: result monad or error type *)

(**
def returndatacopy(evm: Evm) -> None:
    """
    Copies data from the return data buffer code to memory

    Parameters
    ----------
    evm :
        The current EVM frame.
    """
    # STACK
    memory_start_index = pop(evm.stack)
    return_data_start_position = pop(evm.stack)
    size = pop(evm.stack)

    # GAS
    words = ceil32(Uint(size)) // 32
    copy_gas_cost = GAS_RETURN_DATA_COPY * words
    extend_memory = calculate_gas_extend_memory(
        evm.memory, [(memory_start_index, size)]
    )
    charge_gas(evm, GAS_VERY_LOW + copy_gas_cost + extend_memory.cost)

    # OPERATION
    ensure(
        Uint(return_data_start_position) + Uint(size) <= len(evm.return_data),
        OutOfBoundsRead,
    )

    evm.memory += b"\x00" * extend_memory.expand_by
    value = evm.return_data[
        return_data_start_position : return_data_start_position + size
    ]
    memory_write(evm.memory, memory_start_index, value)

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let returndatacopy (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | U256_val memory_start_index :: U256_val return_data_start_position :: U256_val size :: [] ->

     (* # GAS *)
     let words = (ceil32 size) /< U256.of_int(32) in
     let copy_gas_cost = _GAS_RETURN_DATA_COPY * words in
     let extend_memory = calculate_gas_extend_memory
                             evm.memory [(memory_start_index, size)]
     in
     let evm = charge_gas(evm, _GAS_VERY_LOW + copy_gas_cost + extend_memory.cost) in
     
     (* # OPERATION *)
     ensure(
         return_data_start_position + size <= (U256.of_int (List.length(evm.return_data))),
         OutOfBoundsRead
       ) "[returndatacopy]: attempted to read out of bounds ";

     let memory = Mem.extend evm.memory extend_memory.expand_by in
     let value =
       Utils.take (U256.to_int(return_data_start_position + size))
         (Utils.drop (U256.to_int(return_data_start_position))
            evm.return_data)
     in
     let memory = Mem.write memory memory_start_index value in
     
     {evm with memory = memory; stack = []}
  | _ -> assert(false)

(**
def extcodehash(evm: Evm) -> None:
    """
    Returns the keccak256 hash of a contract’s bytecode
    Parameters
    ----------
    evm :
        The current EVM frame.
    """
    # STACK
    address = to_address(pop(evm.stack))

    # GAS
    if address in evm.accessed_addresses:
        charge_gas(evm, GAS_WARM_ACCESS)
    else:
        evm.accessed_addresses.add(address)
        charge_gas(evm, GAS_COLD_ACCOUNT_ACCESS)

    # OPERATION
    account = get_account(evm.env.state, address)

    if account == EMPTY_ACCOUNT:
        codehash = U256(0)
    else:
        codehash = U256.from_be_bytes(keccak256(account.code))

    push(evm.stack, codehash)

    # PROGRAM COUNTER
    evm.pc += 1


def self_balance(evm: Evm) -> None:
    """
    Pushes the balance of the current address to the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    pass

    # GAS
    charge_gas(evm, GAS_FAST_STEP)

    # OPERATION
    # Non-existent accounts default to EMPTY_ACCOUNT, which has balance 0.
    balance = get_account(evm.env.state, evm.message.current_target).balance

    push(evm.stack, balance)

    # PROGRAM COUNTER
    evm.pc += 1


def base_fee(evm: Evm) -> None:
    """
    Pushes the base fee of the current block on to the stack.

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
    push(evm.stack, U256(evm.env.base_fee_per_gas))

    # PROGRAM COUNTER
    evm.pc += 1

 *)

(** wait_ms to wait some given amount of miliseconds *)
let wait_ms (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | U256_val amount :: [] ->

     let new_time = evm.env.time + amount in
     
     (* # OPERATION *)
     {evm with stack = [] ; env = {evm.env with time = new_time}}
  | _ -> assert(false) (* TODO: result monad or error type *)
