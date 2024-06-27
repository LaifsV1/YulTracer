(** File containing Yul interpreter instantiated with specific Dialects
    @author Yu-Yang Lin
    created 20-Apr-2024

    For now, we only define the Dialect for our implementation of the Shanghai
    specifications, but this may change in the future as more versions are
    released, or as other non-EVM dialects of Yul are released.
 *)

(** for definition of Dialect *)
open Yul_ast

(** EVM Dialect to instantiate our Yul semantics functors. We use our EVM Shanghai libary. *)
module EvmDialect :(Dialect) = struct
  (** opens library defining the EVM specs *)
  open Evm_shanghai
  
  (** contains EVM values for Concrete U256 and Symbolic U256 *)
  open Base_types
  
  (** contains EVM configurations *)
  open Evm_shanghai.Init

  (** EVM values *)
  type value_type = evm_val

  (** EVM config *)
  type configuration_type = EVM.t

  (** type for opcode constructors *)
  type opcode = Evm_shanghai.Opcodes.opcode

  (** zero *)
  let zero = U256_val U256.zero
  
  (** function to convert evm_values to booleans. will need to do something about symbolic values. *)
  let get_bool (v : evm_val) =
    match v with
    | U256_val v -> if v = U256.zero then false else true
    | S256_val _ -> failwith "get_bool S256 not implemented"

  (** function to convert bools to evm_values *)
  let val_of_bool (b : bool) :(evm_val) =
    match b with
    | true -> U256_val U256.one
    | false -> U256_val U256.zero
  
  (** function to compare two evm values. will need to handle symbolic values too. *)
  let compare = EvmVal.compare

  (** function to convert a number literal to a U256 EVM value; useful for parsing. *)
  let value_of_string s = U256_val (U256.of_string s)

  (** function to convert an EVM value to a string; useful for printing. *)
  let string_of_value = EvmVal.to_string

  (** functions to string value to a hex string. *)
  let format_hex_32_bytes = EvmVal.format "%064x"
  let format_HEX_32_bytes = EvmVal.format "%064X"
  
  (** function to convert an identifier into an opcode if it is; useful for parsing. *)
  let opcode_of_string_opt = Evm_shanghai.Opcodes.opcode_of_string_opt

  (** function to convert an opcode  if it is; useful for printing. *)
  let string_of_opcode_opt = Evm_shanghai.Opcodes.string_of_opcode_opt

  let init = EVM.init
  
  (** function to execute a given opcode, list of values, and EVM config. the list of values
      may not be needed. we could just push values into the stack of the EVM config... *)
  let opcode_dispatcher (evm : EVM.t) (op : opcode) (vs : evm_val list)
      :(EVM.t * (evm_val option)) list =
    (* TODO: do something about STOP operations first... *)
    if not evm.running then failwith "handle stop function";
    assert(evm.stack = []); (* TODO: stack needs to be empty *)
    let operation = 
      match op with
      | Stop -> Control_flow.stop
      | Add -> Arithmetic.add
      | Sub -> Arithmetic.sub
      | Mul -> Arithmetic.mul
      | Div -> Arithmetic.div
      | Sdiv -> Arithmetic.sdiv
      | Mod -> Arithmetic.modulo
      | Smod -> Arithmetic.smodulo
      | Exp -> Arithmetic.exp
      | Not -> Bitwise.bitwise_not
      | Lt -> Comparison.less_than
      | Gt -> Comparison.greater_than
      | Slt -> Comparison.signed_less_than
      | Sgt -> Comparison.signed_greater_than
      | Eq -> Comparison.equal
      | Iszero -> Comparison.is_zero
      | And -> Bitwise.bitwise_and
      | Or -> Bitwise.bitwise_or
      | Xor -> Bitwise.bitwise_xor
      | Byte -> Bitwise.get_byte
      | Shl -> Bitwise.bitwise_shl
      | Shr -> Bitwise.bitwise_shr
      | Sar -> Bitwise.bitwise_sar
      | Addmod -> Arithmetic.addmod
      | Mulmod -> Arithmetic.mulmod
      | Signex -> Arithmetic.signextend
      | Keccak -> failwith "keccak not implemented yet" (* this requires lists *)
      | Pc -> Control_flow.pc
      | Pop -> Stack.pop
      | Print -> print_endline (string_of_value (List.hd vs)) ; fun evm -> {evm with stack = []}
      | PrintHEX -> print_endline (format_HEX_32_bytes (List.hd vs)) ; fun evm -> {evm with stack = []}
      | Printhex -> print_endline (format_hex_32_bytes (List.hd vs)) ; fun evm -> {evm with stack = []}
      | Mload -> Memory.mload
      | Mstore -> Memory.mstore
      | Mstore8 -> Memory.mstore8
      | Sload -> Storage.sload
      | Sstore -> Storage.sstore
      | Msize -> Memory.msize
      (* | Gas -> Gas.gas *)
      | _ -> failwith "not implemented"
    (*
  | Address(* address()            F| address of the current contract / execution context             *)
  | Bal    (* balance(a)           F| wei balance at address a                                        *)
  | Sbal   (* selfbalance()        I| equivalent to balance(address()), but cheaper                   *)
  | Caller (* caller()             F| call sender (excluding delegatecall)                            *)
  | Cvalue (* callvalue()          F| wei sent together with the current call                         *)
  | Cdload (* calldataload(p)      F| call data starting from position p (32 bytes)                   *)
  | Cdsize (* calldatasize()       F| size of call data in bytes                                      *)
  | Cdcode (* calldatacopy(t,f,s) -F| copy s bytes from calldata at position f to mem at position t   *)
  | Csize  (* codesize()           F| size of the code of the current contract / execution context    *)
  | Ccopy  (* codecopy(t,f,s)     -F| copy s bytes from code at position f to mem at position t       *)
  | Ecsize (* extcodesize(a)       F| size of the code at address a                                   *)
  | Eccopy (* extcodecopy(a,t,f,s)-F| like codecopy(t, f, s) but take code at address a               *)
  | Rdsize (* returndatasize()     B| size of the last returndata                                     *)
  | Rdcopy (* returndatacopy(t,f,s)
                                  -B|copy s bytes from returndata at position f to mem at position t  *)
  | Echash (* extcodehash(a)       C| code hash of address a                                          *)
  | Create (* create(v, p, n)      F| create new contract with code mem[p…(p+n)) and send v wei and
                                      return the new address; returns 0 on error *)
  | Create2(* create2(v, p, n, s)  C| create new contract with code mem[p…(p+n)) at address
                                      keccak256(0xff . this . s . keccak256(mem[p…(p+n))) and send v
                                      wei and return the new address, where 0xff is a 1 byte value,
                                      this is the current contract’s address as a 20 byte value and s
                                      is a big-endian 256-bit value; returns 0 on error               *)
  | Call   (* call(g,a,v,in,insize,out,outsize)
                                   F| call contract at address a with input mem[in…(in+insize))
                                      providing g gas and v wei and output area mem[out…(out+outsize))
                                      returning 0 on error (eg. out of gas) and 1 on success          *)
  | Callc  (* callcode(g,a,v,in,insize,out,outsize)
                                   F| identical to call but only use the code from a and stay in the
                                      context of the current contract otherwise                       *)
  | Dcall  (* delegatecall(g,a,in,insize,out,outsize)
                                   H| identical to callcode but also keep caller and callvalue        *)
  | Scall  (* staticcall(g,a,in,insize,out,outsize)
                                   B| identical to call(g, a, 0, in, insize, out, outsize) but do not
                                      allow state modifications                                       *)
  | Return (* return(p, s)        -F| end execution, return data mem[p…(p+s))                         *)
  | Revert (* revert(p, s)        -B| end execution, revert state changes, return data mem[p…(p+s))   *)
  | Selfdes(*selfdestruct(a)      -F| end execution, destroy current contract and send funds to a     *)
  | Invalid(* invalid()           -F| end execution with invalid instruction                          *)
  | Log0   (* log0(p, s)          -F| log without topics and data mem[p…(p+s))                        *)
  | Log1   (* log1(p,s,t1)        -F| log with topic t1 and data mem[p…(p+s))                         *)
  | Log2   (* log2(p,s,t1,t2)     -F| log with topics t1, t2 and data mem[p…(p+s))                    *)
  | Log3   (* log3(p,s,t1,t2,t3)  -F| log with topics t1, t2, t3 and data mem[p…(p+s))                *)
  | Log4   (* log4(p,s,t1,t2,t3,t4)
                                  -F| log with topics t1, t2, t3, t4 and data mem[p…(p+s))            *)
  | Chainid(* chainid()            I| ID of the executing chain (EIP-1344)                            *)
  | Bfree  (* basefee()            L| current block’s base fee (EIP-3198 and EIP-1559)                *)
  | Origin (* origin()             F| transaction sender                                              *)
  | Gprice (* gasprice()           F| gas price of the transaction                                    *)
  | Bhash  (* blockhash(b)         F| hash of block nr b - only for last 256 blocks excluding current *)
  | Cbase  (* coinbase()           F| current mining beneficiary                                      *)
  | Tstamp (* timestamp()          F| timestamp of the current block in seconds since the epoch       *)
  | Number (* number()             F| current block number                                            *)
  | Diffic (* difficulty()         F| difficulty of the current block                                 *)
  | Glimit (* gaslimit()           F| block gas limit of the current block                            *)
     *)
    in
    let return_evm = operation {evm with stack = vs} in (* TODO: check if needs to be reversed *)
    match return_evm.stack with
    | [] -> (* VOID RETURN *)
       (* TODO: empty the stack first? here? or at the start of the function? *)
       [ {return_evm with stack = []} , None ] (* TODO: do something void returns *)
    | x :: [] ->
      begin
        (* TODO: stack > 0? =1? maybe stack = [] means void return *)
        assert(List.length return_evm.stack > 0);
        [ {return_evm with stack = []} , Some x ] (* TODO: handle cases that return multiple evm cfgs *)
      end
    | _ -> failwith "expected only 1 return value"
end 

(** Module for Interpreters *)
module Interpreter (D : Dialect) = struct
  open Yul_reductions
  
  (** instantiate pretty printer *)
  module PrettyPrinter = Yul_pretty_printer.YulPrettyPrinter(D)

  (** instantiate Yul CEK machine *)
  module CEK = YulCEK(D)
  
  (** print functions *)
  let print_code   = PrettyPrinter.print_statement
  let print_object = PrettyPrinter.print_yul_object

  (** set debug flags *)
  let set_flags = CEK.set_flags

  (** function to evaluate Yul statements *)
  let evaluate = CEK.evaluate
end

(** Module for Yul semantics with EVM Dialect *)
module YulEvmInterpreter = Interpreter(EvmDialect)
