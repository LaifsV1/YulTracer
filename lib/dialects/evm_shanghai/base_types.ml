(** Numeric & Array Types
    @author Yu-Yang Lin
    created: 29-Oct-2023

    Based on the Ethereum Execution Specs:
    {:https://github.com/ethereum/execution-specs/blob/master/src/ethereum/base_types.py}

    This file contains the definitions of all the types used for computation by the EVM.
    This involves numeric types as well as our model for keccak values and the symbolic memory map.
    Hierarchically, this file sits at the bottom, with all other files in the library importing this.

    Note: all [__op__] in python appear to be implicitly overwriting the
    op characters (e.g. [+], [-], [*], [%], etc). I'm using [_op_] for these.
 *)

open Z
open Z3api

(** alias for arbitrary precision integers. we will be using Z.t for number in this semantics.
    we shall be implementing U256 using Z.t, converting to bits then bytes for any memory ops. *)
type zint = Z.t

(* ------------------------ *)
(* DEFINITIONS FOR NUMERALS *)
(* ------------------------ *)

(**{@python[
  U8_MAX_VALUE    = (2 ** 8)   - 1
  U32_MAX_VALUE   = (2 ** 32)  - 1
  U32_CEIL_VALUE  =  2 ** 32
  U64_MAX_VALUE   = (2 ** 64)  - 1
  U255_MAX_VALUE  = (2 ** 255) - 1
  U255_CEIL_VALUE =  2 ** 255
  U256_MAX_VALUE  = (2 ** 256) - 1
  U256_CEIL_VALUE =  2 ** 256
 ]}*)
let _U8_MAX_VALUE    = (~$2 ** 8)   - ~$1
let _U32_MAX_VALUE   = (~$2 ** 32)  - ~$1
let _U32_CEIL_VALUE  =  ~$2 ** 32
let _U64_MAX_VALUE   = (~$2 ** 64)  - ~$1
let _U255_MAX_VALUE  = (~$2 ** 255) - ~$1
let _U255_CEIL_VALUE =  ~$2 ** 255
let _U256_MAX_VALUE  = (~$2 ** 256) - ~$1
let _U256_CEIL_VALUE =  ~$2 ** 256

(** other constants that may be useful *)
let _U256_BYTE_LENGTH = ~$32
let _U256_BIT_LENGTH  = ~$256

(** auxiliary type for [Fixed_uint] because we aren't using classes *)
module type Zval = sig
  val max_value : zint
  val byte_length : zint
  val bit_length : zint
end
(* initialise random numbers with the same seed which might help with memoisation *)
let _init_random_ = Random.init 9814072356 

(** Unsigned positive integer, which can represent `0` to `2 ** 256 - 1`, inclusive.
    This is implemented using Functors instead of OCaml Classes, which would be closer
    to the EVM Execution Specs in Python. This decision was taken for convenience.
    We thus don't use [self] like in Python because we are using Functors.
    In [wrapping] operations, the specifications use a mask
    - [from_signed] not implemented;
    - [to_be_bytes32] not implemented;
    - [i] and [r] variants of operations not implemented.
    Note: comments grabbed from specifications directly. Where comments say
    [left <+> right (mod N)], I interpret this to mean [(left <+> right) mod N] under
    regular associativity and precedence rules.
 *)
module Fixed_uint (MAX_VALUE : Zval) = struct
  type t = zint
  let max_value = MAX_VALUE.max_value
  let byte_length = MAX_VALUE.byte_length
  let bit_length = MAX_VALUE.bit_length
  
  let zero = Z.zero
  let one = Z.one

  let is_zero = Z.equal zero
  let is_one = Z.equal one

  (** necessary function for module *)
  let compare = Z.compare

  (** printing function *)
  let to_string (z : t) = Z.to_string z
  let format (s : string) (z : t) = Z.format s z

  (** make random number *)
  let random () =
    Random.init 9814072356;
    let random_bytes = Bytes.create 32 in
    for i = 0 to 31 do
      Bytes.set random_bytes i (char_of_int (Random.int 256))
    done;
    Z.of_bits (Bytes.to_string random_bytes)

  (** auxiliary functions for increment and decrement *)
  let increment p = p + one
  let decrement p = p - one
  
  (** auxiliary functions from Zarith *)
  let sign = Z.sign
  let to_int = Z.to_int
  
  (** auxiliary function to check if [x] is out of range *)
  let out_of_range x = Z.lt x Z.zero || Z.gt x max_value

  (** conversion function because we don't have a constructor *)
  let of_int = Z.of_int

  (** [string] should be strings as expected by [Z.of_string]. *)
  let of_string : string -> t =
    fun s -> Z.of_string s

  (** [from_le_bytes] combines a list of Z.t bytes to a single Z.t by shifting
      and applying a logical OR on the shifted number and the result.
      note: this is from little endian because we read the list front to back.
      e.g.
      consider you have input: 0x12 :: 0x34 :: 0x56 :: 0x78 :: []
      -- first cycle
      1. byte = 0x12, tail = 0x34 :: 0x56 :: 0x78 :: [], acc = 0, shift = 0
      2. Z.shift_left 0x12 0
      3. Z.logor 0 0x12
      4. 0x12
      -- second cycle
      1. byte = 0x34, tail = 0x56 :: 0x78 :: [], acc = 0x12, shift = 8
      2. Z.shift_left 0x34 8
      3. Z.logor 0x12 0x3400
      4. 0x3412
      -- third cycle
      1. byte = 0x56, tail = 0x78 :: [], acc = 0x3412, shift = 16
      2. Z.shift_left 0x56 16
      3. Z.logor 0x3412 0x560000
      4. 0x563412
      -- fourth cycle
      1. byte = 0x78, tail = [], acc = 0x563412, shift = 24
      2. Z.shift_left 0x78 24
      3. Z.logor 0x563412 0x78000000
      4. 0x78563412
      -- fifth cycle
      1. return 0x78563412
   *)
  let from_le_bytes (bytes : Z.t list) :(Z.t) =
    let rec aux acc shift = function
      | [] -> acc
      | byte :: rest ->
         let shifted_byte = Z.shift_left byte shift in
         let new_acc = Z.logor acc shifted_byte in
         aux new_acc (Stdlib.(+) shift 8) rest
    in
    aux Z.zero 0 bytes

  (** [from_be_bytes] by reversing the list and calling [from_le_bytes] *)
  let from_be_bytes (bytes : Z.t list) :(Z.t) = from_le_bytes (List.rev bytes)
  
  (** [to_be_bytes] extracts `byte_length` 8-bit bytes from the number and
      produces a list in Little-Endian form. This is done by extracting
      from the left side 8-bits and appending this to the accumulator.
      e.g.
      Consider input `0x12345678` with 4 bytes:
      --first cycle:
      1. n = 4, shift = 0, acc = []
      2. Z.logand (Z.shift_right 0x12345678 0) 0xFF
      3. Z.logand 0x12345678 0xFF
      4. 0x78
      --second cycle:
      1. n = 3, shift = 8, acc = 0x78 :: []
      2. Z.logand (Z.shift_right 0x12345678 8) 0xFF
      3. Z.logand 0x123456 0xFF
      4. 0x56
      --third cycle:
      1. n = 2, shift = 16, acc = 0x56 :: 0x78 :: []
      2. Z.logand (Z.shift_right 0x12345678 16) 0xFF
      3. Z.logand 0x1234 0xFF
      4. 0x34
      --fourth cycle:
      1. n = 1, shift = 24, acc = 0x34 :: 0x56 :: 0x78 :: []
      2. Z.logand (Z.shift_right 0x12345678 24) 0xFF
      3. Z.logand 0x12 0xFF
      4. 0x12
      --fourth cycle:
      1. n = 1, shift = 32, acc = 0x34 :: 0x56 :: 0x78 :: []
      2. Z.logand (Z.shift_right 0x12345678 32) 0xFF
      3. Z.logand 0x12 0xFF
      4. 0x12
      --fifth cycle:
      1. n = 0, shift = 32, acc = 0x12 :: 0x34 :: 0x56 :: 0x78 :: []
      2. return 0x12 :: 0x34 :: 0x56 :: 0x78 :: []
   *)
  let to_be_bytes (z : t) :(Z.t list) = 
    let byte_mask = Z.of_int 0xFF in  (* Mask to extract each byte *)
    let rec extract_bytes n acc shift =
      if n = 0 then acc
      else
        (* Extract the next byte *)
        let byte = Z.logand (Z.shift_right z shift) byte_mask in
        (* Prepend extracted byte to the accumulator for big-endian order *)
        extract_bytes (Stdlib.(-) n 1) (byte :: acc) (Stdlib.(+) shift 8)
    in
    extract_bytes (Z.to_int byte_length) [] 0
  
  (** [_add_] using definition in Zarith. Inputs guarded, but result not.
  {@python[
    def __add__(self: T, right: int) -> T:
        if not isinstance(right, int):
            return NotImplemented

        result = int.__add__(self, right)

        if right < 0 or result > self.MAX_VALUE:
            raise ValueError()

        return int.__new__(self.__class__, result)
  ]} *)
  let _add_ : t -> t -> t =
    fun left right ->
    let result = left + right in
    (* we check both left and right *)
    if Z.lt left Z.zero || Z.lt right Z.zero || Z.gt result max_value
    then assert(false)
    else result

  (** [wrapping_add]: Return a new instance containing [left + right (mod N)].
  {@python[
    def wrapping_add(self: T, right: int) -> T:
        if not isinstance(right, int):
            return NotImplemented

        if right < 0 or right > self.MAX_VALUE:
            raise ValueError()

        # This is a fast way of ensuring that the result is < (2 ** 256)
        return int.__new__(
            self.__class__, int.__add__(self, right) & self.MAX_VALUE
        )
  ]} *)
  let wrapping_add : t -> t -> t =
    fun left right ->
    (* we check both left and right *)
    if out_of_range left || out_of_range right
    then assert(false) (* TODO: either raise exception or wrap in result monad *)
    else
      (* evaluation specs uses: [int.__add__(self, right) & self.MAX_VALUE]
         because it is a fast way of ensuring that the result is < (2 ** 256) *)
      (left + right) land max_value

  (** [_sub_] using definition in Zarith. Inputs guarded, but result not.
  {@python[
    def __sub__(self: T, right: int) -> T:
        if not isinstance(right, int):
            return NotImplemented

        if right < 0 or right > self.MAX_VALUE or self < right:
            raise ValueError()

        return int.__new__(self.__class__, int.__sub__(self, right))
  ]} *)
  let _sub_ : t -> t -> t =
    fun left right ->
    (* we check both left and right *)
    if out_of_range left || out_of_range right || Z.lt left right
    then assert(false)
    else left - right

  (** [wrapping_sub]: Return a new instance containing [left - right (mod N)].
  {@python[
    def wrapping_sub(self: T, right: int) -> T:
        if not isinstance(right, int):
            return NotImplemented

        if right < 0 or right > self.MAX_VALUE:
            raise ValueError()

        # This is a fast way of ensuring that the result is < (2 ** 256)
        return int.__new__(
            self.__class__, int.__sub__(self, right) & self.MAX_VALUE
        )
  ]} *)
  let wrapping_sub : t -> t -> t =
    fun left right ->
    (* we check both left and right *)
    if out_of_range left then assert(false)
    else if out_of_range right then assert(false)
    else
      (* evaluation specs uses: [int.__sub__(self, right) & self.MAX_VALUE]
         because it is a fast way of ensuring that the result is < (2 ** 256) *)
      (left - right) land max_value

  (** [_mul_] using definition in Zarith. Inputs and result guarded.
  {@python[
    def __mul__(self: T, right: int) -> T:
        if not isinstance(right, int):
            return NotImplemented

        result = int.__mul__(self, right)

        if right < 0 or result > self.MAX_VALUE:
            raise ValueError()

        return int.__new__(self.__class__, result)
  ]} *)
  let _mul_ : t -> t -> t =
    fun left right ->
    let result = left * right in
    (* we check both left and right *)
    if Z.lt left Z.zero || Z.lt right Z.zero || Z.gt result max_value
    then assert(false)
    else result

  (** [wrapping_mul]: Return a new instance containing [left * right (mod N)].
  {@python[
    def wrapping_mul(self: T, right: int) -> T:
        if not isinstance(right, int):
            return NotImplemented

        if right < 0 or right > self.MAX_VALUE:
            raise ValueError()

        # This is a fast way of ensuring that the result is < (2 ** 256)
        return int.__new__(
            self.__class__, int.__mul__(self, right) & self.MAX_VALUE
        )
  ]} *)
  let wrapping_mul : t -> t -> t =
    fun left right ->
    if out_of_range left || out_of_range right
    then assert(false)
    else
      (* evaluation specs uses: [int.__mul__(self, right) & self.MAX_VALUE]
         because it is a fast way of ensuring that the result is < (2 ** 256) *)
      (left * right) land max_value

  (** [_floordiv_]: Return a new instance containing [left /< right].
  {@python[
    def __floordiv__(self: T, right: int) -> T:
        if not isinstance(right, int):
            return NotImplemented

        if right < 0 or right > self.MAX_VALUE:
            raise ValueError()

        return int.__new__(self.__class__, int.__floordiv__(self, right))
  ]} *)
  let _floordiv_ : t -> t -> t =
    fun left right ->
    if out_of_range left || out_of_range right
    then assert(false)
    else (left /< right)

  (** [_mod_]: Return a new instance containing [left mod right].
  {@python[
    def __mod__(self: T, right: int) -> T:
        if not isinstance(right, int):
            return NotImplemented

        if right < 0 or right > self.MAX_VALUE:
            raise ValueError()

        return int.__new__(self.__class__, int.__mod__(self, right))
  ]} *)
  let _mod_ : t -> t -> t =
    fun left right ->
    if out_of_range left then assert(false)
    else if out_of_range right then assert(false)
    else (left mod right)

  (** [_divmod_]: Return pair containing (Quotient , Remainder); i.e. [(a // b, a % b)].
  {@python[
    def __divmod__(self: T, right: int) -> Tuple[T, T]:
        if not isinstance(right, int):
            return NotImplemented

        if right < 0 or right > self.MAX_VALUE:
            raise ValueError()

        result = super(FixedUInt, self).__divmod__(right)
        return (
            int.__new__(self.__class__, result[0]),
            int.__new__(self.__class__, result[1]),
        )
  ]} *)
  let _divmod_ : t -> t -> t * t =
    fun left right ->
    if out_of_range left || out_of_range right
    then assert(false)
    else
      (* this is according to the definition of [__divmod__] in Python *)
      let quotient = left /< right in (* [//] is floor division *)
      let remainder = left mod right in
      quotient , remainder

  (** [_pow_]: Return a new instance containing [left pow right].
  {@python[
    def __pow__(self, right: int, modulo: Optional[int] = None) -> "Uint":
        if modulo is not None:
            if not isinstance(modulo, int):
                return NotImplemented

            if modulo < 0:
                raise ValueError()

        if not isinstance(right, int):
            return NotImplemented

        if right < 0:
            raise ValueError()

        return int.__new__(self.__class__, int.__pow__(self, right, modulo))
  ]} *)
  let _pow_ : t -> t -> t option -> t =
    fun left right modulo ->
    (* check left and right first because they are used for both branches below *)
    if Z.lt left Z.zero || Z.lt right Z.zero
    then assert(false)
    else
      begin
        (* we match modulo *)
        match modulo with
        (* if modulo is not None: *)
        | Some modulo ->
           (* if modulo < 0: *)
           if Z.lt modulo Z.zero
           then assert(false)
           else
             (* [int.__pow__(self, right, modulo)] *)
             (Z.powm left right modulo)
        | None ->
           (* this is different to the specs, but we need to assume [right] is a machine int,
              or we would overflow the address space *)
           (Z.pow left (Z.to_int right)) (* TODO: try-catch the to_int conversion maybe *)
      end

  (** [wrapping_pow]: Returns [left ** right (mod modulo)].
      Optional modulus (defaults to [MAX_VALUE + 1]).
      Note: we apply modulus [MAX_VALUE + 1] always because this is a wraping operation.
  {@python[
    def wrapping_pow(self: T, right: int, modulo: Optional[int] = None) -> T:
        if modulo is not None:
            if not isinstance(modulo, int):
                return NotImplemented

            if modulo < 0 or modulo > self.MAX_VALUE:
                raise ValueError()

        if not isinstance(right, int):
            return NotImplemented

        if right < 0 or right > self.MAX_VALUE:
            raise ValueError()

        # This is a fast way of ensuring that the result is < (2 ** 256)
        return int.__new__(
            self.__class__, int.__pow__(self, right, modulo) & self.MAX_VALUE
        )
  ]} *)
  let wrapping_pow : t -> t -> t option -> t =
    fun left right modulo ->
    (* check left and right first because they are used for both branches below *)
    if out_of_range left || out_of_range right
    then assert(false)
    else
      begin
        (* we match modulo *)
        match modulo with
        (* if modulo is not None: *)
        | Some modulo ->
           (* if modulo < 0 or modulo > self.MAX_VALUE: *)
           if out_of_range modulo
           then assert(false)
           else
             (* [int.__pow__(self, right, modulo) & self.MAX_VALUE] *)
             (Z.powm left right modulo) land max_value
        | None ->
           (* this is different to the specs, which uses & for fast masking *)
           (Z.powm left right max_value)
      end

  (** [_and_]: Appears to be logical bit-wise [&&] because specifications use Python [int.and].
  {@python[
    def __and__(self: T, right: int) -> T:
        if not isinstance(right, int):
            return NotImplemented

        if right < 0 or right > self.MAX_VALUE:
            raise ValueError()

        return int.__new__(self.__class__, int.__and__(self, right))
  ]} *)
  let _and_ : t -> t -> t =
    fun left right ->
    if out_of_range left || out_of_range right
    then assert(false)
    else (left land right)

  (** [_or_]: Appears to be logical bit-wise OR because specifications use Python [int.or].
  {@python[
    def __or__(self: T, right: int) -> T:
        if not isinstance(right, int):
            return NotImplemented

        if right < 0 or right > self.MAX_VALUE:
            raise ValueError()

        return int.__new__(self.__class__, int.__or__(self, right))
  ]} *)
  let _or_ : t -> t -> t =
    fun left right ->
    if out_of_range left || out_of_range right
    then assert(false)
    else (left lor right)

  (** [_xor_]: Appears to be logical bit-wise XOR because specifications use Python [int.xor].
  {@python[
    def __xor__(self: T, right: int) -> T:
        if not isinstance(right, int):
            return NotImplemented

        if right < 0 or right > self.MAX_VALUE:
            raise ValueError()

        return int.__new__(self.__class__, int.__xor__(self, right))
  ]} *)
  let _xor_ : t -> t -> t =
    fun left right ->
    if out_of_range left || out_of_range right
    then assert(false)
    else (left lxor right)

  (** custom NOT function because we need to extract N-bits from bitwise-not number *)
  let _not_ : t -> t =
    fun x ->
    let not_x = Z.lognot x in
    Z.extract not_x 0 (Z.to_int bit_length)
  
end

(** We use a functor to define U256. However, the extra methods in it cannot be
    derfined this way because we cannot extend an existing module as if it were
    an object. Instead, we shall define extra functions for the missing methods.

{@python[
class U256(FixedUInt):
    """
    Unsigned positive integer, which can represent `0` to `2 ** 256 - 1`,
    inclusive.
    """

    MAX_VALUE: ClassVar["U256"]

    __slots__ = ()
]}*)
module U256 =
  Fixed_uint(struct
      let max_value = _U256_MAX_VALUE
      let byte_length = _U256_BYTE_LENGTH
      let bit_length = _U256_BIT_LENGTH
    end)

(**
{@python[
    @classmethod
    def from_signed(cls: Type, value: int) -> "U256":
        """
        Converts a signed number into a 256-bit unsigned integer.
        Parameters
        ----------
        value :
            Signed number
        Returns
        -------
        self : `U256`
            Unsigned integer obtained from `value`.
        """
        if value >= 0:
            return cls(value)

        return cls(value & cls.MAX_VALUE)
]}*)
let u256_from_signed value =
  if Z.geq value Z.zero then
    value
  else
    value land U256.max_value

(**
{@python[
    def to_signed(self) -> int:
        """
        Converts this 256-bit unsigned integer into a signed integer.
        Returns
        -------
        signed_int : `int`
            Signed integer obtained from 256-bit unsigned integer.
        """
        if self <= U255_MAX_VALUE:
            # This means that the sign bit is 0
            return int(self)

        # -1 * (2's complement of U256 value)
        return int(self) - U256_CEIL_VALUE
]}*)
let u256_to_signed self =
  if Z.leq self _U255_MAX_VALUE then
    (* This means that the sign bit is 0 *)
    self
  else
    (* -1 * (2's complement of U256 value) *)
    self - _U256_CEIL_VALUE

(** Custom function to get a 2's complement 256-bit big-int [zint].
    This is because I do not trust the Python implementation works like
    the big-ints we are using in this file. This uses [Z.extract], which
    assumes 2's complement with infinite leading 1's and returns a
    nonnegative number. e.g. a two's complement 1111 becomes positive 1111. *)
let u256_extract (x : U256.t) :(U256.t) = Z.extract x 0 256

(** Custom function to get a signed big-int [zint] from a 2's complement [zint].
    negative numerals stay negative instead of becoming their positive two's
    complement equivalent. e.g. extracting 1111 returns a negative number. *)
let u256_signed_extract (x : U256.t) :(U256.t) = Z.signed_extract x 0 256

(** gets Z.t sign (-1,0,1) *)
let get_sign (x : zint) :(zint) = Z.of_int (Z.sign x)

(** Originally from [utils.numeric.py]. Added here for convenience.
{@python[
def ceil32(value: Uint) -> Uint:
    """
    Converts a unsigned integer to the next closest multiple of 32.

    Parameters
    ----------
    value :
        The value whose ceil32 is to be calculated.

    Returns
    -------
    ceil32 : `ethereum.base_types.U256`
        The same value if it's a perfect multiple of 32
        else it returns the smallest multiple of 32
        that is greater than `value`.
    """
    ceiling = Uint(32)
    remainder = value % ceiling
    if remainder == Uint(0):
        return value
    else:
        return value + ceiling - remainder
]}*)
let ceil32 (value : U256.t) :(U256.t) =
  let remainder = value mod _U256_BYTE_LENGTH in
  if U256.is_zero remainder then
    value
  else
    value + _U256_BYTE_LENGTH - remainder

(* ------------------------------------------- *)
(* TYPES AND MODULES FOR EVM VALUES AND MEMORY *)
(* ------------------------------------------- *)

(** Value type for EVM values. This includes:
    - concrete unsigned 256-bit big ints
    - symbolic unsigned 256-bit bit-vector
 *)
type evm_val = U256_val of U256.t | S256_val of symbolic_var

(** module for EVM Val to make it comparable and add useful functions *)
module EvmVal = struct
  type t = evm_val
  let compare (v1 : t) (v2 : t) = Stdlib.compare v1 v2
  let to_string = function
    | U256_val z -> U256.to_string z
    | S256_val s -> string_of_symbolic_var s
  let format str = function
    | U256_val z -> U256.format str z
    | S256_val s -> string_of_symbolic_var s
end

(** convert evm_val to proposition to create clauses for the symbolic environment. *)
let prop_of_evm_val = function
  | U256_val z -> mk_bv256_const z
  | S256_val s -> mk_bv256_var   s

(** Type for 8-bit bytes. We shall represent bytes using either strings (by spliting the string
    hex-representation of U256 into 32) or as a Z3api symbolic_var *)
type byte = U8 of zint | S8 of symbolic_var

(** conver byte to proposition for the symbolic encironment*)
let prop_of_byte = function
  | U8 z -> mk_bv8_const z
  | S8 s -> mk_bv8_var   s

module Bytes = struct
  type t = byte list

  let compare (v1 : t) (v2 : t) = Stdlib.compare v1 v2

  (* symbolic functions *)
  let is_symbolic (ls : t) :(bool) = List.exists (function S8 _ -> true | _ -> false) ls
  let is_concrete (ls : t) :(bool) = not(is_symbolic ls)

  (** function to extract Bytes out of EVM value *)
  let evm_val_to_be_bytes (v : evm_val) (sigma : sigma) :(t * sigma) =
    match v with
    | U256_val z -> List.map (fun x -> U8 x) (U256.to_be_bytes z) , sigma
    | S256_val w ->
       let w_prop = mk_bv256_var w in
       (* e.g. consider 0x123456
          1. we extract 0 to 7 first, add to acc, 0x56 :: []
          2. we extract 8 to 15 then, add to acc, 0x34 :: 0x56 :: []
          3. we extract 16 to 23 then, add to acc, 0x12 :: 0x34 :: 0x56 :: []

          To achieve this, we need to have n where n is the byte to extract from the left:
          low = n * 8
          high = n * 8 + 7
          e.g.
          1. n = 0, low = 0, high = 7
          2. n = 1, low = 8, high = 15
          3. n = 2, low = 16, high = 23
          4. n = 32, low = 256, high = 263 (i.e. we exit loop at 32)
        *)
       let rec extract_bytes byte_index acc sigma =
         if byte_index >= 32 then acc , sigma
         else
           (* Calculate the bit indices for each 8-bit segment *)
           let high = Stdlib.( + ) (Stdlib.( * ) byte_index  8) 7 in
           let low = Stdlib.( * ) byte_index 8 in
           (* Extract the 8-bit segment *)
           let segment = mk_bv_extract low high w_prop in
           (* Continue extracting the next byte *)
           let new_sigma , new_var = sigma_fresh_bv8_var sigma segment in
           extract_bytes (Stdlib.( + ) byte_index 1) (S8 new_var :: acc) new_sigma
       in
       (* Start with the most significant byte and accumulate bytes in reverse order *)
       extract_bytes 0 [] sigma

  (** function to extract least-significant byte out of EVM value *)
  let evm_val_to_U8_LSB (v : evm_val) (sigma : sigma) :(t * sigma) =
    match v with
    | U256_val z ->
       let byte = Z.logand z (Z.of_int 0xFF) in (* mask 1 byte *)
       [U8 byte] , sigma
    | S256_val w ->
       let w_prop = mk_bv256_var w in
       let byte = mk_bv_extract 0 7 w_prop in
       let new_sigma , new_var = sigma_fresh_bv8_var sigma byte in
       [S8 new_var] , new_sigma

  let get_concrete_bytes (bytes : t) :(zint list) =
    (List.map (function U8 x -> x | _ -> failwith "S8") bytes)
  
  (** function to merge big-endian bytes into a single evm_val.
      concrete case is straight-forward; just use the U256 function to merge bytes.
      symbolic case is more involved. for symbolic lists we proceed as follows:
      1. convert bytes into a list of props
      2. build a concatenated U256 bitvector
   *)
  let evm_val_from_be_bytes (bytes : t) (sigma : sigma) :(evm_val * sigma) =
    if List.length bytes <> 32 then
      failwith
        (Printf.sprintf "trying to convert %d bytes into U256. should be 32."
           (List.length bytes))
    else
      if is_symbolic bytes then
        (* case when symbolic values exist in the byte list *)
        begin
          let props = List.map prop_of_byte bytes in
          let concat_prop = mk_bv_concat props in
          (* WARNING: this works only because we are combining 32 bytes *)
          let new_sigma , new_var = sigma_fresh_bv256_var sigma concat_prop in
          S256_val new_var , new_sigma
        end
      else
        (* case when the byte list is completely concrete *)
        U256_val (U256.from_be_bytes (get_concrete_bytes bytes)) , sigma

  (** function to check satisfiability of an operation between two Byte lists *)
  let symbolic_concat_compare (l1 : t) (l2 : t) op (sigma : sigma) :(sigma) =
    (* convert l1 and l2 to prop lists *)
    let props1 = List.map prop_of_byte l1 in
    let props2 = List.map prop_of_byte l2 in

    (* concatenate props: this works because BitVector.mk_concat is length-agnostic *)
    let concat_prop1 = mk_bv_concat props1 in
    let concat_prop2 = mk_bv_concat props2 in

    (* create final sigma to check *)
    (op concat_prop1 concat_prop2) :: sigma

  (** check_sat for equality: l1 == l2 *)
  let symbolic_concat_eq (l1 : t) (l2 : t) (sigma : sigma) :(sigma) =
    symbolic_concat_compare l1 l2 (==.) sigma

  (** check_sat for non-equality: l1 <> l2 *)
  let symbolic_concat_neq (l1 : t) (l2 : t) (sigma : sigma) :(sigma) =
    symbolic_concat_compare l1 l2 (<>.) sigma

  let dummy_address =
    U8 (Z.zero) :: U8 (Z.zero) :: U8 (Z.zero) :: U8 (Z.zero) :: U8 (Z.zero) ::
      U8 (Z.zero) :: U8 (Z.zero) :: U8 (Z.zero) :: U8 (Z.zero) :: U8 (Z.zero) ::
        U8 (Z.zero) :: U8 (Z.zero) :: U8 (Z.zero) :: U8 (Z.zero) :: U8 (Z.zero) ::
          U8 (Z.zero) :: U8 (Z.zero) :: U8 (Z.zero) :: U8 (Z.zero) :: U8 (Z.zero) :: []
end

(** module for Keccak map *)
module BytesMap = Map.Make(Bytes)

(** shared module for both memory and storage *)
module ZintMap = Map.Make(Z)
