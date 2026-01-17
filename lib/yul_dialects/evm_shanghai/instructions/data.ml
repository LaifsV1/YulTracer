(** Ethereum Virtual Machine (EVM) Data Instructions for Yul.
    @author Yu-Yang Lin
    created: 05-Sep-2024

    This file contains an implementation for Yul-specific data instructions.
    Data instructions are ones specific to EVM-flavoured Yul with objects.
    These functions are used to access object members, which correspond to
    accessing the `evm.code` component in bytecode.
 *)

open Init
open Base_types

(** `datacopy` is just an alias for `codecopy` in the EVM dialect *)
let datacopy = Environment_opcodes.codecopy

(** Function to retrieve the size (in bytes) of the byte array
    that we use to model the bytecode of the given object name.
    We abstract this to be 32 bytes so it fits in U256.
    i.e. the byte array is equivalent to a U256 ID.

    Arguments: one U256_val that holds the U256 ID of the object.

    We use a U256 ID instead of a string in order to abstract away
    the need to pass strings as values from Yul to the EVM.
 *)
let datasize (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  | _ :: [] -> {evm with stack = [U256_val _U256_BYTE_LENGTH]}
  | _ -> assert(false)

(** Usually dataoffset takes a string and returns the pointer that
    corresponds to the index in the code bytearray where the object
    starts. Here, instead of receiving strings, we receive the U256
    representation as an abstraction. Since this is already in U256,
    there is no conversion needed. So this function is the identity
    if the argument number matches.
 *)
let dataoffset (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  | _ :: [] -> evm
  | _ -> assert(false)
