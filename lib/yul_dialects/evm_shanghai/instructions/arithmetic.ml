(** Ethereum Virtual Machine (EVM) Arithmetic Instructions for Yul.
    @author Yu-Yang Lin
    created: 01-Nov-2023

    Implementations of the EVM Arithmetic instructions for Yul based on the
    Ethereum Execution Client Specifications written in Python. This file
    implements the Ethereum Protocol Release version "Shanghai" at:
    [src/ethereum/shanghai/vm/instructions/arithmetic.py]

    Because Yul is not a stack machine, functions return values instead of
    pushing results on the stack. We implement a middle ground to remain close
    to the EVM specs by using EVM configurations with "mini stacks", which do
    not hold the entire stack machine, but instead hold just the arguments for
    a single EVM instruction. Instructions push results back into this mini
    stack, effectively acting as a single function call with return. All
    functions are implemented using the Yul documentation for Solidity v0.8.22
    (latest as of October 2023).
    See {:https://docs.soliditylang.org/en/v0.8.22/yul.html}

    The Following Instructions are defined:
    add, sub, mul, div, sdiv, modulo, smodulo, addmod, mulmod, exp, signextend

    Note:
    - all [__op__] in python appear to be implicitly overwriting the
      op characters (e.g. [+], [-], [*], [%], etc). I'm using [_op_] for these.
    - because this is to be used by Yul, we do not have a program counter (pc).
 *)

open Z3api

(** this appears to be implicit in the specs in Python, which names it [__init__] *)
open Init

(** {@python[from ethereum.base_types import U255_CEIL_VALUE, U256, U256_CEIL_VALUE, Uint
             from .. import Evm]} *)
open Base_types

(* missing: from ethereum.utils.numeric import get_sign*)
(* TODO: there are many places where we use _op_ instead of Z.op directly. do these matter? *)

(** {@python[from ..gas import (
                GAS_EXPONENTIATION,
                GAS_EXPONENTIATION_PER_BYTE,
                GAS_LOW,
                GAS_MID,
                GAS_VERY_LOW,
                charge_gas,)]} *)
open Gas

(** Python specification for [add]:
{@python[
def add(evm: Evm) -> None:
    """
    Adds the top two elements of the stack together, and pushes the result back
    on the stack.

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
    result = x.wrapping_add(y)

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specification: [add(x,y) = x + y]
 *)
let add (evm : EVM.t) :(EVM.t) = do_binop evm U256.wrapping_add mk_bv_add _GAS_VERY_LOW

(** Python specification for [sub]:
{@python[
def sub(evm: Evm) -> None:
    """
    Subtracts the top two elements of the stack, and pushes the result back
    on the stack.

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
    result = x.wrapping_sub(y)

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specification: [sub(x,y) = x - y]
 *)
let sub (evm : EVM.t) :(EVM.t) = do_binop evm U256.wrapping_sub mk_bv_sub _GAS_VERY_LOW

(** Python specification for [mul]:
{@python[
def mul(evm: Evm) -> None:
    """
    Multiply the top two elements of the stack, and pushes the result back
    on the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    x = pop(evm.stack)
    y = pop(evm.stack)

    # GAS
    charge_gas(evm, GAS_LOW)

    # OPERATION
    result = x.wrapping_mul(y)

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specification: [mul(x,y) = x * y]
 *)
let mul (evm : EVM.t) :(EVM.t) = do_binop evm U256.wrapping_mul mk_bv_mul _GAS_LOW

(** Python specification for [div]:
{@python[
def div(evm: Evm) -> None:
    """
    Integer division of the top two elements of the stack. Pushes the result
    back on the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    dividend = pop(evm.stack)
    divisor = pop(evm.stack)

    # GAS
    charge_gas(evm, GAS_LOW)

    # OPERATION
    if divisor == 0:
        quotient = U256(0)
    else:
        quotient = dividend // divisor

    push(evm.stack, quotient)

    # PROGRAM COUNTER
    evm.pc += 1
]}
    Yul specification: [mul(x,y) = x / y or 0 if y == 0]
    Note: [//] in Python is floor division.
 *)
let div (evm : EVM.t) :(EVM.t) =
  let gas = _GAS_LOW in
  match evm.stack with
  (* # STACK *)
  | U256_val dividend :: U256_val divisor :: [] ->
     (* # GAS *)
     let evm = charge_gas(evm, gas) in
     
     (* # OPERATION *)
     let quotient =
       if Z.equal divisor Z.zero then
         Z.zero
       else
         U256._floordiv_ dividend divisor
     in
     {evm with stack = [U256_val quotient]}
  (* SYMBOLIC CASE. note: this assumes only U256 and S256, no other constructors. *)
  | dividend :: divisor :: [] -> symbolic_binop evm dividend divisor mk_bv_udiv gas
  | _ -> assert(false) (* TODO: result or error type *)

(** Python specification for [sdiv]:
{@python[
def sdiv(evm: Evm) -> None:
    """
    Signed integer division of the top two elements of the stack. Pushes the
    result back on the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    dividend = pop(evm.stack).to_signed()
    divisor = pop(evm.stack).to_signed()

    # GAS
    charge_gas(evm, GAS_LOW)

    # OPERATION
    if divisor == 0:
        quotient = 0
    elif dividend == -U255_CEIL_VALUE and divisor == -1:
        quotient = -U255_CEIL_VALUE
    else:
        sign = get_sign(dividend * divisor)
        quotient = sign * (abs(dividend) // abs(divisor))

    push(evm.stack, U256.from_signed(quotient))

    # PROGRAM COUNTER
    evm.pc += 1
]}
 *)
let sdiv (evm : EVM.t) :(EVM.t) =
  let gas = _GAS_LOW in
  match evm.stack with
  (* # STACK *)
  | U256_val dividend :: U256_val divisor :: [] ->
     let dividend = u256_to_signed dividend in (* TODO: check [dividend.to_signed()] *)
     let divisor  = u256_to_signed divisor  in (* TODO: check [divisor.to_signed()] *)
     
     (* # GAS *)
     let evm = charge_gas(evm, gas) in
     
     (* # OPERATION *)
     let quotient =
       if Z.equal divisor Z.zero then
         Z.zero
       else if Z.equal dividend (Z.neg _U255_CEIL_VALUE) && Z.equal divisor (Z.neg Z.one) then
         Z.neg _U255_CEIL_VALUE
       else
         (* according to the execution specs in Python, we should be doing:
            [
            let sign = get_sign (U256._mul_ dividend divisor) in
            U256._mul_ sign (U256._floordiv_ (Z.abs dividend) (Z.abs divisor))
            ]
            however, I don't see how this is more efficient or simpler than just getting
            the sign of either the divisor or dividend and then negating if true.
          *)
         let sign = get_sign (U256._mul_ dividend divisor) in
         U256._mul_ sign (U256._floordiv_ (Z.abs dividend) (Z.abs divisor))
     in
     {evm with stack = [U256_val quotient]}
  (* SYMBOLIC CASE. note: this assumes only U256 and S256, no other constructors. *)
  | dividend :: divisor :: [] -> symbolic_binop evm dividend divisor mk_bv_sdiv gas
  | _ -> assert(false) (* TODO: result or error type *) 

(** Python specification for [mod]:
{@python[
def mod(evm: Evm) -> None:
    """
    Modulo remainder of the top two elements of the stack. Pushes the result
    back on the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    x = pop(evm.stack)
    y = pop(evm.stack)

    # GAS
    charge_gas(evm, GAS_LOW)

    # OPERATION
    if y == 0:
        remainder = U256(0)
    else:
        remainder = x % y

    push(evm.stack, remainder)

    # PROGRAM COUNTER
    evm.pc += 1
]}
 *)
let modulo (evm : EVM.t) :(EVM.t) = (* can't be named [mod] because it's a keyword *)
  let gas = _GAS_LOW in
  match evm.stack with
  (* # STACK *)
  | U256_val x :: U256_val y :: [] ->
     (* # GAS *)
     let evm = charge_gas(evm, gas) in
     
     (* # OPERATION *)
     let remainder =
       if Z.equal y Z.zero then
         Z.zero
       else
         U256._mod_ x y
     in
     {evm with stack = [U256_val remainder]}
  (* SYMBOLIC CASE. note: this assumes only U256 and S256, no other constructors. *)
  | x :: y :: [] -> symbolic_binop evm x y mk_bv_urem gas
  | _ -> assert(false)

(** Python specification for [smod]:
{@python[
def smod(evm: Evm) -> None:
    """
    Signed modulo remainder of the top two elements of the stack. Pushes the
    result back on the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    x = pop(evm.stack).to_signed()
    y = pop(evm.stack).to_signed()

    # GAS
    charge_gas(evm, GAS_LOW)

    # OPERATION
    if y == 0:
        remainder = 0
    else:
        remainder = get_sign(x) * (abs(x) % abs(y))

    push(evm.stack, U256.from_signed(remainder))

    # PROGRAM COUNTER
    evm.pc += 1
]}
 *)
let smodulo (evm : EVM.t) :(EVM.t) =
  let gas = _GAS_LOW in
  match evm.stack with
  (* # STACK *)
  | U256_val x :: U256_val y :: [] ->
     let x = u256_to_signed x in (* TODO: check if [x.to_signed()] *)
     let y = u256_to_signed y in (* TODO: check if [y.to_signed()] *)
     
     (* # GAS *)
     let evm = charge_gas(evm, gas) in
     
     (* # OPERATION *)
     let remainder =
       if Z.equal y Z.zero then
         Z.zero
       else
         U256._mul_ (get_sign x) (U256._mod_ (Z.abs x) (Z.abs y))
     in
     {evm with stack = [U256_val remainder]}
  (* SYMBOLIC CASE. note: this assumes only U256 and S256, no other constructors. *)
  | x :: y :: [] -> symbolic_binop evm x y mk_bv_srem gas
  | _ -> assert(false) (* TODO: result or error type *)

(* Generic function for trinary mod operations *)
let symbolic_mod_triop evm x y z sop =
     (* # GAS *)
     let evm = charge_gas(evm, _GAS_MID) in

     (* create symbolic values out of evm values *)
     let x_prop = prop_of_evm_val x in
     let y_prop = prop_of_evm_val y in
     let z_prop = prop_of_evm_val z in

     (* # OPERATION *)
     let result_prop =
       mk_ite                                    (* if *)
         (mk_bv_is_zero z_prop)                  (* z == zero *)
         (mk_bv256_zero)                         (* then zero *)
         (mk_bv_urem (sop x_prop y_prop) z_prop) (* else mod (sop x y) z *)
     in
     let sigma , new_var = sigma_fresh_bv256_var evm.env.symbolic_env result_prop in
     (* update stack and symbolic environment *)
     {evm with stack = [S256_val new_var]; env = {evm.env with symbolic_env = sigma}}

(** Python specification for [addmod]:
{@python[
def addmod(evm: Evm) -> None:
    """
    Modulo addition of the top 2 elements with the 3rd element. Pushes the
    result back on the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    x = Uint(pop(evm.stack))
    y = Uint(pop(evm.stack))
    z = Uint(pop(evm.stack))

    # GAS
    charge_gas(evm, GAS_MID)

    # OPERATION
    if z == 0:
        result = U256(0)
    else:
        result = U256((x + y) % z)

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
 *)
let addmod (evm : EVM.t) :(EVM.t) = 
  match evm.stack with
  (* # STACK *)
  | U256_val x :: U256_val y :: U256_val z :: [] ->
     (* # GAS *)
     let evm = charge_gas(evm, _GAS_MID) in
     
     (* # OPERATION *)
     let result =
       if Z.equal z Z.zero then (* could use [U256.from_int 0] instead too *) 
         Z.zero 
       else
         U256._mod_ (U256._add_ x y) z
     in
     {evm with stack = [U256_val result]}
  (* symbolic case. NOTE: this assumes only U256 and S256 constructors. *)
  | x :: y :: z :: [] -> symbolic_mod_triop evm x y z mk_bv_add
  | _ -> assert(false) (* TODO: result or error type *)

(** Python specification for [mulmod]:
{@python[
def mulmod(evm: Evm) -> None:
    """
    Modulo multiplication of the top 2 elements with the 3rd element. Pushes
    the result back on the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    x = Uint(pop(evm.stack))
    y = Uint(pop(evm.stack))
    z = Uint(pop(evm.stack))

    # GAS
    charge_gas(evm, GAS_MID)

    # OPERATION
    if z == 0:
        result = U256(0)
    else:
        result = U256((x * y) % z)

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
 *)
let mulmod (evm : EVM.t) :(EVM.t) = 
  match evm.stack with
  (* # STACK *)
  | U256_val x :: U256_val y :: U256_val z :: [] ->
     (* # GAS *)
     let evm = charge_gas(evm, _GAS_MID) in
     
     (* # OPERATION *)
     let result =
       if Z.equal z Z.zero then
         Z.zero 
       else
         U256._mod_ (U256._mul_ x y) z
     in
     {evm with stack = [U256_val result]}
  (* symbolic case. NOTE: this assumes only U256 and S256 constructors. *)
  | x :: y :: z :: [] -> symbolic_mod_triop evm x y z mk_bv_mul
  | _ -> assert(false) (* TODO: result monad or error type *)

(** Python specification for [exp]:
{@python[
def exp(evm: Evm) -> None:
    """
    Exponential operation of the top 2 elements. Pushes the result back on
    the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    base = Uint(pop(evm.stack))
    exponent = Uint(pop(evm.stack))

    # GAS
    # This is equivalent to 1 + floor(log(y, 256)). But in python the log
    # function is inaccurate leading to wrong results.
    exponent_bits = exponent.bit_length()
    exponent_bytes = (exponent_bits + 7) // 8
    charge_gas(
        evm, GAS_EXPONENTIATION + GAS_EXPONENTIATION_PER_BYTE * exponent_bytes
    )

    # OPERATION
    result = U256(pow(base, exponent, U256_CEIL_VALUE))

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
 *)
let exp (evm : EVM.t) :(EVM.t) = 
  match evm.stack with
  (* # STACK *)
  | U256_val base :: U256_val exponent :: [] ->
     (* # GAS *)
     let exponent_bits = Z.numbits exponent in (* not sure if this is equivalent *)
     let exponent_bytes = (exponent_bits + 7) / 8 in
     let evm =
       charge_gas(
           evm,
           (* TODO: this shouldn't be too large anyway, but should we use U256 or Z directly? *)
           U256._add_ 
             _GAS_EXPONENTIATION
             (U256._mul_ _GAS_EXPONENTIATION_PER_BYTE (U256.of_int exponent_bytes))
         )
     in
     (* # OPERATION *)
     (* TODO: should this not be [wrapping_pow]? *)
     let result = U256._pow_ base exponent (Some _U256_CEIL_VALUE) in
     
     {evm with stack = [U256_val result]}
  (* TODO: add symbolic case *)
  | _ -> assert(false) (* TODO: result monad or error type *)

(** Python specification for [signextend]: [byte_num] is [N-1] in the specs.
{@python[
def signextend(evm: Evm) -> None:
    """
    Sign extend operation. In other words, extend a signed number which
    fits in N bytes to 32 bytes.

    Parameters
    ----------
    evm :
        The current EVM frame.

    """
    # STACK
    byte_num = pop(evm.stack)
    value = pop(evm.stack)

    # GAS
    charge_gas(evm, GAS_LOW)

    # OPERATION
    if byte_num > 31:
        # Can't extend any further
        result = value
    else:
        # U256(0).to_be_bytes() gives b'' instead b'\x00'.
        value_bytes = bytes(value.to_be_bytes32())
        # Now among the obtained value bytes, consider only
        # N `least significant bytes`, where N is `byte_num + 1`.
        value_bytes = value_bytes[31 - int(byte_num) :]
        sign_bit = value_bytes[0] >> 7
        if sign_bit == 0:
            result = U256.from_be_bytes(value_bytes)
        else:
            num_bytes_prepend = 32 - (byte_num + 1)
            result = U256.from_be_bytes(
                bytearray([0xFF] * num_bytes_prepend) + value_bytes
            )

    push(evm.stack, result)

    # PROGRAM COUNTER
    evm.pc += 1
]}
   Yul specs: [signextend(i, x) = sign extend from (i*8+7)th bit counting from least significant]

   Note: We deviate from the Python implementation. That is because we
         have access to Zarith big-ints, which has the [extract] and
         [signed_extract] functions. I suspect these do what the semantics
         intends. Moreover, I suspect the Python implementation is not
         compatible with Zarith big-ints.
 *)
let signextend (evm : EVM.t) :(EVM.t) = 
  match evm.stack with
  (* # STACK *)
  | U256_val byte_num :: U256_val value :: [] ->     
     (* # GAS *)
     let evm = charge_gas(evm, _GAS_LOW) in
     
     (* # OPERATION *)
     let result =
       if Z.gt byte_num (U256.of_int 31) then
         (* # Can't extend any further -- i.e. already in 32 bytes *)
         value
       else
         (* We start deviating here: *)
         (* [signed_value] is in sign-magnitude representation obtained by extracting
            [0] to [byte_num * 8] (because 8 bits per byte) bits from value *)
         (* Important: We do [byte_num + 1]. The comment on the specs is misleading. this isn't
              [byte_num] bytes extended, but [byte_num+1] bytes extended. [N=byte_num+1], so
              [byte_num = 0] would give you [1] byte. This is because of Python's [[A:]] syntax,
              so [[31-0:] = [31:32]], i.e. the last byte. *)
         let signed_value = Z.signed_extract value 0 (((Z.to_int byte_num) + 1) * 8) in
         
         (* negative numbers in sign-magnitude representation are used as if they
            had infinite-length 2's complement; i.e. infinite preceding 1's. *)
         (* NOTE: the following line is necessary to convert a small negative number
            into a large 2's complement number of size 256bits *)
         u256_extract signed_value
     in
     
     {evm with stack = [U256_val result]}
  (* Symbolic Case where the Byte Number is concrete *)
  | U256_val byte_num :: S256_val value :: [] ->
     (* # GAS *)
     let evm = charge_gas(evm, _GAS_LOW) in
     
     (* # OPERATION *)
     if Z.gt byte_num (U256.of_int 31) then
       (* # Can't extend any further -- i.e. already in 32 bytes *)
       {evm with stack = [S256_val value]}
     else
       (* We start deviating here: *)
       (* The following line implements the same operation as our concrete case above.
          Instead of doing the masking or shifting logic ourselves, I'm going to trust
          the OCaml Z3 API to handle extraction and extension.

          Important aspects worth noting:
          - `mk_extract` expects a `low` and `high` bit range. We need to make sure of that
            this correctly corresponds to the bytes (note bytes not bits) we want.
            I suspect we have to extract from [0] to [(byte_num + 1) *8] bits as above.
            IMPORTANT: `mk_extract cxt 3 0 n` extracts the least significant 4 bits.
                       `mk_extract cxt 4 1 n` extracts the least signifcant 4 bits after
                                              removing the least significant 1 bit.
          - `mk_sign_ext` expects an integer, which in our case should lead to 32 bytes.
            We need to calculate how many bits are in n bytes, then subtract from 256 to
            obtain the number of bits we need to extend by. The given integer is the number
            of bits to extend by, not the total number of bits we end up with.
            IMPORTANT: `mk_sign_ext cxt 5 m` adds 5 bits to the size of m.

          e.g. worked example using Z3 for BIT extraction and extension for POSITIVE number:
          [let u256_n = mk_numeral cxt "20000" 256]   # 20,000 = 0b100111000100000, length = 256
          [let u8_n   = mk_extract cxt 7 0 u256_n]    #     32 = 0b       00100000, length = 8 (pos)
          [numeral_to_string (simplify u8_n None)     # need to run simplify to evaluate.
           - : string = "32"]                         # result is correct (32).
          [let u256_n' = mk_sign_ext cxt 248 u8_n]    # 256 - 8 = 248, so we need to extend by 248
          [numeral_to_string (simplify u256_n' None)  # need to run simplify to evaluate.
           - : string = "32"]                         # result is correct (32).
          [get_size (Z3.Expr.get_sort u256_n')        # need to get the sort first to get size
           - : int = 256]                             # size is correct (256).

          e.g. worked example using Z3 for BIT extraction and extension for NEGATIVE number:
          [let u256_n = mk_numeral cxt "20000" 256]   # 20,000 = 0b100111000100000, length = 256
          [let u10_n   = mk_extract cxt 9 0 u256_n]   #    544 = 0b     1000100000, length = 10 (neg)
          [numeral_to_string (simplify u10_n None)    # need to run simplify to evaluate.
           - : string = "544"]                        # result is correct (544).
          [let u256_n'' = mk_sign_ext cxt 248 u10_n]  # 256 - 8 = 248, so we need to extend by 248
          [numeral_to_string (simplify u256_n'' None) # need to run simplify to evaluate.
           - : string =
           "115792089237316195423570985008687907853269984665640564039457584007913129639456"]
                                                      # 115792...= 0b1..1000100000, length 256 (neg)
                                                      # -480     =-0b0..0111100000
                                                      #         => 0b1..1000011111, flip bits
                                                      #         => 0b1..1000100000, add 1
                                                      #            result is correct.
          [get_size (Z3.Expr.get_sort u256_n'')       # need to get the sort first to get size
           - : int = 256]                             # size is correct (256).

          NOTE: sign extension requires INT not BIGINTs so we need to convert.
        *)
       (* 1. convert byte_num to INT *)
       let byte_num_int = Z.to_int byte_num in (* this works because <32 *)
       
       (* 2. new size  is byte_num + 1 *)
       let extracted_byte_size = byte_num_int + 1 in
       
       (* 3. how many bits to extract *)
       let bits_to_extract = extracted_byte_size * 8 in

       (* 4. extract bits from value, INDEX = bits_to_extract - 1 *)
       (* # create new prop for value *)
       let value_prop = mk_bv256_var value in
       (* # do the extraction of bits from 0 to N-1 and create new prop P_extract
        WARNING: THIS WILL CREATE A BITVECTOR LESS THAN 256 BITS LONG.
                 DO NOT ASSIGN BEFORE EXTENDING! *)
       let extract_prop = mk_bv_extract 0 (bits_to_extract - 1) value_prop in
       
       (* 5. figure out the number of bits needed to get back to 256 *)
       let bits_to_extend = 256 - bits_to_extract in
       
       (* 6. sign extend the extracted bits *)
       (* # perform sign extension on P_extract_var and create new prop P_signed *)
       let signed_prop = mk_bv_sign_ext bits_to_extend extract_prop in
       (* # create new variable W_signed and add clause W_signed = P_signed *)
       (* NOTE: WE ASSUME THAT WE ARE ONLY ADDING VARIABLES FOR 256-BIT EXPRESSIONS!!! *)
       let signed_sigma , signed_var = sigma_fresh_bv256_var evm.env.symbolic_env signed_prop in

       {evm with stack = [S256_val signed_var]; env = {evm.env with symbolic_env = signed_sigma}}
  (* TODO General Symbolic Case is not handled yet *)
  | _ -> assert(false) (* TODO: result monad or error type *)
               (* TODO , this function may be broken *)
