(** Ethereum Virtual Machine (EVM) Keccak Instructions for Yul.
    @author Yu-Yang Lin
    created: 22-Feb-2024

    Implementations of the EVM Keccak instructions for Yul based on the
    Ethereum Execution Client Specifications written in Python. This file
    implements the Ethereum Protocol Release version "Shanghai" at:
    [src/ethereum/shanghai/vm/instructions/keccak.py]

    In this module we implement Keccak hashing via concretisation of calls to
    the keccak function. The concretisation logic is implemented in the
    [base_types.ml] module. To summarise, a concrete candidate hash is selected
    via a given generator and recorded in a "history map" that remembers all
    concretisation choices made along a path. This memory map is a part of the
    EVM record type and is thus a component of EVM configurations.

    The Following Instructions are defined:
    keccak

    Note:
    - all [__op__] in python appear to be implicitly overwriting the
      op characters (e.g. [+], [-], [*], [%], etc). I'm using [_op_] for these.
    - because this is to be used by Yul, we do not have a program counter (pc).
 *)

open Z

(** from .. import Evm
    from ..memory import memory_read_bytes -- TODO: need to implement
    from ..stack import pop, push          -- implemented in [init.ml]
 *)
open Init
open Base_memory

(** from ethereum.base_types import U256, Uint
    from ethereum.crypto.hash import keccak256
    from ethereum.utils.numeric import ceil32  -- not implemented as a separate file
 *)
open Base_types
open Crypto_hash

(** from ..gas import (
         GAS_KECCAK256,
         GAS_KECCAK256_WORD,
         calculate_gas_extend_memory,
         charge_gas,
    )
 *)
open Gas

(**
def keccak(evm: Evm) -> None:
    """
    Pushes to the stack the Keccak-256 hash of a region of memory.

    This also expands the memory, in case the memory is insufficient to
    access the data's memory location.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    memory_start_index = pop(evm.stack)
    size = pop(evm.stack)

    # GAS
    words = ceil32(Uint(size)) // 32
    word_gas_cost = GAS_KECCAK256_WORD * words
    extend_memory = calculate_gas_extend_memory(
        evm.memory, [(memory_start_index, size)]
    )
    charge_gas(evm, GAS_KECCAK256 + word_gas_cost + extend_memory.cost)

    # OPERATION
    evm.memory += b"\x00" * extend_memory.expand_by
    data = memory_read_bytes(evm.memory, memory_start_index, size)
    hash = keccak256(data)

    push(evm.stack, U256.from_be_bytes(hash))

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let keccak (evm : EVM.t) :(EVM.t list) =
  match evm.stack with
  (* # STACK *)
  | U256_val memory_start_index :: U256_val size :: [] ->
     (* # GAS *)
     let words = (ceil32 size) /< U256.byte_length in
     let word_gas_cost = _GAS_KECCAK256_WORD * words in
     let extend_memory = calculate_gas_extend_memory
                           evm.memory [(memory_start_index, size)]
     in
     let evm = charge_gas(evm, _GAS_KECCAK256 + word_gas_cost + extend_memory.cost) in

     (* # OPERATION *) (* TODO: check this logic *)
     let evm = {evm with memory = Mem.extend evm.memory extend_memory.expand_by} in
     let data = Mem.read_bytes evm.memory memory_start_index size in
     let hash_list = K.hash data evm.keccak_env evm.symbolic_env in

     (* map push on hash_list to create all branching evm configurations *)
     let push (hash : K.branch_type) = {evm with stack = [U256_val hash.hash];
                                                 symbolic_env = hash.sigma;
                                                 keccak_env = hash.lookup_map}
     in
     List.map push hash_list     
  (* TODO: add symbolic case *)
  | _ -> assert(false) (* TODO: result monad or error type *)


