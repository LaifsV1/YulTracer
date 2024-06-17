(** Ethereum Virtual Machine (EVM) Comparison Instructions for Yul.
    @author Yu-Yang Lin
    created 13-Nov-2023

    Implementations of the EVM Comparison instructions for Yul based on the
    Ethereum Execution Client Specifications written in Python. This file
    implements the Ethereum Protocol Release version "Shanghai" at:
    [src/ethereum/shanghai/vm/instructions/comparison.py]

    The following instructions are defined:
    less_than, signed_less_than, greater_than, signed_greater_than,
    equal, is_zero
 *)
open Z3api

(** {@python[from ethereum.base_types import U256]} *)
open Base_types

(** {@python[from .. import Evm]} *)
open Init

(** {@python[from ..gas import GAS_VERY_LOW, charge_gas] *)
open Gas

(*from ..stack import pop, push *)

(** generic [do_compare] function that pushes a zint *)
let do_compare
      (evm : EVM.t)
      (op  : U256.t -> U256.t -> bool)
      (sop : prop -> prop -> prop) (* is a compare function, so returns bool, but need bv256 *)
      (gas : U256.t)
    :(EVM.t) =
  let compare left right = if op left right then Z.one else Z.zero in
  (* symbolic compare function, takes compare function and returns numbers *)
  let scompare left right = mk_ite (sop left right) mk_bv256_one mk_bv256_zero in
  do_binop evm compare scompare gas

(** generic [do_signed_compare] function that pushes a zint *)
let do_signed_compare
      (evm : EVM.t)
      (op : U256.t -> U256.t -> bool)
      (sop : prop -> prop -> prop) (* is a compare function, so returns bool, but need bv256 *)
      (gas : U256.t)
    :(EVM.t) =
  match evm.stack with
  (* # STACK *)
  | U256_val left :: U256_val right :: [] ->
     let left  = u256_to_signed left  in
     let right = u256_to_signed right in
     
     (* # GAS *)
     let evm = charge_gas(evm, gas) in
     
     (* # OPERATION *)
     let result = if op left right then Z.one else Z.zero in
     {evm with stack = [U256_val result]}
  (* symbolic case *)
  | x :: y :: [] -> (* TODO: check if signed symbolic case is correct *)
     let scompare left right = mk_ite (sop left right) mk_bv256_one mk_bv256_zero in
     symbolic_binop evm x y scompare gas
  | _ -> assert(false) (* TODO: result or error type *)

(** Python specification for [less_than]:
{@python[
def less_than(evm: Evm) -> None:
    """
    Checks if the top element is less than the next top element. Pushes the
    result back on the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    left = pop(evm.stack)
    right = pop(evm.stack)

    # GAS
    charge_gas(evm, GAS_VERY_LOW)

    # OPERATION
    result = U256(left < right)

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specification: [lt(x, y) = 1 if x < y, 0 otherwise]
 *)
let less_than (evm : EVM.t) :(EVM.t) = do_compare evm Z.lt mk_bv_ult _GAS_VERY_LOW

(** Python specification for [signed_less_than]:
{@python[
def signed_less_than(evm: Evm) -> None:
    """
    Signed less-than comparison.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    left = pop(evm.stack).to_signed()
    right = pop(evm.stack).to_signed()

    # GAS
    charge_gas(evm, GAS_VERY_LOW)

    # OPERATION
    result = U256(left < right)

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specification: [slt(x, y) = 1 if x < y, 0 otherwise, for signed numbers in two’s complement]
 *)
let signed_less_than (evm : EVM.t) :(EVM.t) = do_signed_compare evm Z.lt (mk_binop BVslt) _GAS_VERY_LOW

(** Python specification for [greater_than]:
{@python[
def greater_than(evm: Evm) -> None:
    """
    Checks if the top element is greater than the next top element. Pushes
    the result back on the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    left = pop(evm.stack)
    right = pop(evm.stack)

    # GAS
    charge_gas(evm, GAS_VERY_LOW)

    # OPERATION
    result = U256(left > right)

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specification: [gt(x, y) = 1 if x > y, 0 otherwise]
 *)
let greater_than (evm : EVM.t) :(EVM.t) = do_compare evm Z.gt mk_bv_ugt _GAS_VERY_LOW

(** Python specification for [signed_greater_than]:
{@python[
def signed_greater_than(evm: Evm) -> None:
    """
    Signed greater-than comparison.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    left = pop(evm.stack).to_signed()
    right = pop(evm.stack).to_signed()

    # GAS
    charge_gas(evm, GAS_VERY_LOW)

    # OPERATION
    result = U256(left > right)

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specification: [sgt(x, y) = 1 if x > y, 0 otherwise, for signed numbers in two’s complement]
 *)
let signed_greater_than (evm : EVM.t) :(EVM.t) =
  do_signed_compare evm Z.gt (mk_binop BVsgt) _GAS_VERY_LOW

(** Python specification for [equal]:
{@python[
def equal(evm: Evm) -> None:
    """
    Checks if the top element is equal to the next top element. Pushes
    the result back on the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    left = pop(evm.stack)
    right = pop(evm.stack)

    # GAS
    charge_gas(evm, GAS_VERY_LOW)

    # OPERATION
    result = U256(left == right)

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specification: [eq(x, y) = 1 if x == y, 0 otherwise]
 *)
let equal (evm : EVM.t) :(EVM.t) = do_compare evm Z.equal (==.) _GAS_VERY_LOW

(** Python specification for [is_zero]:
{@python[
def is_zero(evm: Evm) -> None:
    """
    Checks if the top element is equal to 0. Pushes the result back on the
    stack.

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
    result = U256(x == 0)

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specification: [iszero(x) = 1 if x == 0, 0 otherwise]
 *)
let is_zero (evm : EVM.t) :(EVM.t) =
  let op x = if Z.equal x Z.zero then Z.one else Z.zero in
  do_uniop evm op mk_bv_is_zero _GAS_VERY_LOW
