(** Ethereum Virtual Machine (EVM) Bitwise Instructions
    @author Yu-Yang Lin
    created: 12-Nov-2023

    Implemention of EVM bitwise instructions for Yul based on the Ethereum
    Execution Client Specifications written in Python. This file implements
    the release version "Shanghai", which can be found at:
    [src/ethereum/shanghai/vm/instructions/bitwise.py]

    The following instructions are defined:
    bitwise_and, bitwise_or, bitwise_xor, bitwise_not, get_byte, bitwise_shl,
    bitwise_shr, bitwise_sar

    As with arithmetic.ml, we mimic a stack machine but are not actually
    one, since Yul is uses a function-based semantics. We shall use these
    "stacks" for arguments and returns.
 *)

open Z3api

open Init

(** {@python[from ethereum.base_types import U256, U256_CEIL_VALUE
             from .. import Evm]} *)
open Base_types

(** {@python[from ..gas import GAS_VERY_LOW, charge_gas
             from ..stack import pop, push]} *)
open Gas

(** Python specification for [bitwise_and]:
{@python[
def bitwise_and(evm: Evm) -> None:
    """
    Bitwise AND operation of the top 2 elements of the stack. Pushes the
    result back on the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    x = pop(evm.stack)
    y = pop(evm.stack)

    # GAS
    charge_gas(evm, GAS_VERY_LOW)

    # OPERATION
    push(evm.stack, x & y)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specs: [and(x, y) = bitwise “and” of x and y]
 *)
let bitwise_and (evm : EVM.t) :(EVM.t) = do_binop evm U256._and_ mk_bv_and _GAS_VERY_LOW

(** Python specification for [bitwise_or]:
{@python[
def bitwise_or(evm: Evm) -> None:
    """
    Bitwise OR operation of the top 2 elements of the stack. Pushes the
    result back on the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    x = pop(evm.stack)
    y = pop(evm.stack)

    # GAS
    charge_gas(evm, GAS_VERY_LOW)

    # OPERATION
    push(evm.stack, x | y)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specs: [or(x, y) = bitwise “or” of x and y]
 *)
let bitwise_or (evm : EVM.t) :(EVM.t) = do_binop evm U256._or_ mk_bv_or _GAS_VERY_LOW

(** Python specification for [bitwise_xor]:
{@python[
def bitwise_xor(evm: Evm) -> None:
    """
    Bitwise XOR operation of the top 2 elements of the stack. Pushes the
    result back on the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    x = pop(evm.stack)
    y = pop(evm.stack)

    # GAS
    charge_gas(evm, GAS_VERY_LOW)

    # OPERATION
    push(evm.stack, x ^ y)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specs: [xor(x, y) = bitwise “xor” of x and y]
 *)
let bitwise_xor (evm : EVM.t) :(EVM.t) = do_binop evm U256._xor_ mk_bv_xor _GAS_VERY_LOW

(** Python specification for [bitwise_not]:
{@python[
def bitwise_not(evm: Evm) -> None:
    """
    Bitwise NOT operation of the top element of the stack. Pushes the
    result back on the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    x = pop(evm.stack)

    # GAS
    charge_gas(evm, GAS_VERY_LOW)

    # OPERATION
    push(evm.stack, ~x)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specs: [not(x) = bitwise “not” of x (every bit of x is negated)]
 *)
let bitwise_not (evm : EVM.t) :(EVM.t) = do_uniop evm U256._not_ mk_bv_not _GAS_VERY_LOW

(** Python specification for [get_byte]:
{@python[
def get_byte(evm: Evm) -> None:
    """
    For a word (defined by next top element of the stack), retrieve the
    Nth byte (0-indexed and defined by top element of stack) from the
    left (most significant) to right (least significant).

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    byte_index = pop(evm.stack)
    word = pop(evm.stack)

    # GAS
    charge_gas(evm, GAS_VERY_LOW)

    # OPERATION
    if byte_index >= 32:
        result = U256(0)
    else:
        extra_bytes_to_right = 31 - byte_index
        # Remove the extra bytes in the right
        word = word >> (extra_bytes_to_right * 8)
        # Remove the extra bytes in the left
        word = word & 0xFF
        result = U256(word)

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specs: [byte(n, x) = nth byte of x, where the most significant byte is the 0th byte]
 *)
let get_byte (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | U256_val byte_index :: U256_val word :: [] ->
     (* # GAS *)
     let evm = charge_gas(evm, _GAS_VERY_LOW) in

     (* # OPERATION *)
     let result =
       if Z.geq byte_index (U256.of_int 32) then
         Z.zero
       else
         (* no exception because we checked that [byte_index < 32] *)
         let extra_bytes_to_right = 31 - (Z.to_int byte_index) in
         (* # Remove the extra bytes in the right *)
         let word = Z.shift_right word (extra_bytes_to_right * 8) in
         (* # Remove the extra bytes in the left *)
         U256._and_ word (U256.of_int 0xFF)
     in

     {evm with stack = [U256_val result]}
  (* Symbolic Case where Index is concrete *)
  | U256_val byte_index :: S256_val word :: [] ->
     (* # GAS *)
     let evm = charge_gas(evm, _GAS_VERY_LOW) in

     (* # OPERATION *)  (* TODO: CHECK THAT WE STAY WITHIN 256 BITS *)
     let result , sigma =
       if Z.geq byte_index (U256.of_int 32) then
         U256_val Z.zero , evm.env.symbolic_env
       else
         (* no exception because we checked that [byte_index < 32] *)
         let extra_bytes_to_right = 31 - (Z.to_int byte_index) in
         let extra_bits_to_shift = extra_bytes_to_right * 8 in
         let extra_bits_prop = mk_bv256_const (U256.of_int extra_bits_to_shift) in
         (* # Remove the extra bytes in the right *)
         let word = mk_bv_shr (mk_bv256_var word) extra_bits_prop in
         (* # Remove the extra bytes in the left. note: masking to stay in 256-bits *)
         let masked_prop = mk_bv_and word (mk_bv256_const (U256.of_int 0xFF)) in
         let new_sigma , new_var = sigma_fresh_bv256_var evm.env.symbolic_env masked_prop in
         S256_val new_var , new_sigma
     in
     {evm with stack = [result]; env = {evm.env with symbolic_env = sigma}}
  (* TODO: general symbolic execution *)
  | _ -> assert(false) (* TODO: result or error type *)

(** Python specification for [bitwise_shl]:
{@python[
def bitwise_shl(evm: Evm) -> None:
    """
    Logical shift left (SHL) operation of the top 2 elements of the stack.
    Pushes the result back on the stack.
    Parameters
    ----------
    evm :
        The current EVM frame.
    """
    # STACK
    shift = pop(evm.stack)
    value = pop(evm.stack)

    # GAS
    charge_gas(evm, GAS_VERY_LOW)

    # OPERATION
    if shift < 256:
        result = U256((value << shift) % U256_CEIL_VALUE)
    else:
        result = U256(0)

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specs: [shl(x, y) = logical shift left y by x bits]
 *)
let bitwise_shl (evm : EVM.t) :(EVM.t) =
  let gas = _GAS_VERY_LOW in
  match evm.stack with
  (* # STACK *)
  | U256_val shift :: U256_val value :: [] ->
     (* # GAS *)
     let evm = charge_gas(evm, gas) in

     (* # OPERATION *)
     let result =
       if Z.lt shift (U256.of_int 256) then
         (* no exception because we check [shift < 256] *)
         (* TODO: CHECK the MOD. We used to use U256._mod_ which has checks,
                  just like in the specs. However, this triggers a failure
                  since U256_CEIL_VALUE is outside the range of U256 *)
         Z.(mod) (Z.shift_left value (Z.to_int shift)) _U256_CEIL_VALUE
       else
         Z.zero
     in

     {evm with stack = [U256_val result]}
  (* symbolic case *)
  | x :: y :: [] -> symbolic_binop evm y x mk_bv_shl gas
  | _ -> assert(false) (* TODO: result or error type *)

(** Python specification for [bitwise_shr]:
{@python[
def bitwise_shr(evm: Evm) -> None:
    """
    Logical shift right (SHR) operation of the top 2 elements of the stack.
    Pushes the result back on the stack.
    Parameters
    ----------
    evm :
        The current EVM frame.
    """
    # STACK
    shift = pop(evm.stack)
    value = pop(evm.stack)

    # GAS
    charge_gas(evm, GAS_VERY_LOW)

    # OPERATION
    if shift < 256:
        result = value >> shift
    else:
        result = U256(0)

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specs: [shr(x, y) = logical shift right y by x bits]
 *)
let bitwise_shr (evm : EVM.t) :(EVM.t) =
  let gas = _GAS_VERY_LOW in
  match evm.stack with
  (* # STACK *)
  | U256_val shift :: U256_val value :: [] ->
     (* # GAS *)
     let evm = charge_gas(evm, gas) in

     (* # OPERATION *)
     let result =
       if Z.lt shift (U256.of_int 256) then
         (* no exception because we check [shift < 256] *)
         Z.shift_right value (Z.to_int shift)
       else
         Z.zero
     in

     {evm with stack = [U256_val result]}
  (* symbolic case *)
  | x :: y :: [] -> symbolic_binop evm y x mk_bv_shr gas
  | _ -> assert(false) (* TODO: result or error type *)

(** Python specification for [bitwise_sar]:
{@python[
def bitwise_sar(evm: Evm) -> None:
    """
    Arithmetic shift right (SAR) operation of the top 2 elements of the stack.
    Pushes the result back on the stack.
    Parameters
    ----------
    evm :
        The current EVM frame.
    """
    # STACK
    shift = pop(evm.stack)
    signed_value = pop(evm.stack).to_signed()

    # GAS
    charge_gas(evm, GAS_VERY_LOW)

    # OPERATION
    if shift < 256:
        result = U256.from_signed(signed_value >> shift)
    elif signed_value >= 0:
        result = U256(0)
    else:
        result = U256.MAX_VALUE

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specs: [sar(x, y) = signed arithmetic shift right y by x bits]
 *)
let bitwise_sar (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | U256_val shift :: U256_val signed_value :: [] ->
     let signed_value = u256_to_signed signed_value in (* TODO: check [signed_value.to_signed()] *)

     (* # GAS *)
     let evm = charge_gas(evm, _GAS_VERY_LOW) in

     (* # OPERATION *)
     let result =
       if Z.lt shift (U256.of_int 256) then (* if shift < 256: *)
         (* result = U256.from_signed(signed_value >> shift) *)
         u256_from_signed (Z.shift_right signed_value (Z.to_int shift))
       else if Z.geq signed_value Z.zero then (* elif signed_value >= 0: *)
         (* result = U256(0) *)
         Z.zero
       else (* else: *)
         (* result = U256.MAX_VALUE *)
         U256.max_value
     in
     {evm with stack = [U256_val result]}
  (* symbolic case *)
  | x :: y :: [] -> symbolic_binop evm y x mk_bv_sar _GAS_VERY_LOW
  | _ -> assert(false) (* TODO: result or error type *)
