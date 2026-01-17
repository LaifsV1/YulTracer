(** File that defines the EVM Dialect implemented in this directory
    @author Yu-Yang Lin
      created 20-Aug-2024

      Defines the EVM Dialect by instantiating the Dialect module defined
      in the Yul Interpreter directory.
 *)
open Yul_semantics
open Ast

(** EVM Dialect to instantiate our Yul semantics functors. We use our EVM Shanghai libary. *)
module EvmDialect =
  struct
  (** contains EVM values for Concrete U256 and Symbolic U256 *)
  open Base_types
  
  (** contains EVM configurations *)
  open Init

  (** Z3 API for symbolic operations *)
  open Z3api 
  
  (** EVM values *)
  type value_type = evm_val

  (** EVM config *)
  type configuration_type = EVM.t

  (** type for opcode constructors *)
  type opcode = Opcodes.opcode

  (** status type to wrap reductions *)
  type 'a status = Running of ('a list) | Stuck of 'a | Done of 'a (* | Error of 'a *)

  (** return type for opcodes *)
  type return_type = {g : configuration_type ; v : value_type option}
  
  (** zero *)
  let zero = U256_val U256.zero

  let extra_method a = a
  
  (** function to convert evm_values to booleans. *)
  let get_bool (v : evm_val) :(bool option) =
    match v with
    | U256_val v -> Some (v <> U256.zero)
    | S256_val _ -> None

  (** function to convert bools to evm_values *)
  let val_of_bool (b : bool) :(evm_val) =
    match b with
    | true -> U256_val U256.one
    | false -> U256_val U256.zero
  
  (** function to compare two evm values. DOES NOT WORK withsymbolic values. *)
  let compare = EvmVal.compare

  (** function to convert a number literal to a U256 EVM value; useful for parsing. *)
  let value_of_string s = U256_val (U256.of_string s)

  (** function to convert a string literal containing ASCII into a value *)
  let value_of_ascii_literal s =
    let string_for_all f s =
      let rec aux i =
        if i >= String.length s then true
        else if f s.[i] then aux (i + 1)
        else false
      in
      aux 0
    in
    let is_ascii (s : string) : bool =
      string_for_all (fun c -> Char.code c < 128) s
    in
    let to_32byte_padded_hex (s : string) : string =
      if not (is_ascii s) then invalid_arg "Input string contains non-ASCII characters";
      let len = String.length s in
      if len > 32 then invalid_arg ("Input string must be at most 32 bytes: " ^ s);
      let hex_string =
        String.concat "" (List.map (Printf.sprintf "%02x") (List.init len (fun i -> Char.code s.[i])))
      in
      let padding = String.make ((32 - len) * 2) '0' in
      "0x" ^ hex_string ^ padding
    in
    value_of_string (to_32byte_padded_hex s)

  (** function to get whether an opcode is a data opcode that takes a string *)
  let is_data_opcode (op : opcode) :bool = match op with Datasize | Dataoffset -> true | _ -> false
  
  (** function to convert an EVM value to a string; useful for printing. *)
  let string_of_value = EvmVal.to_string

  (** function to convert an EVM value into an ascii string *)
  let ascii_string_of_value = function
    | U256_val v -> U256.to_ascii_string v
    | _ -> failwith "[ascii of value]: can't get ascii value of a symbolic number"
  
  (** functions to string value to a hex string. *)
  let format_hex_32_bytes = EvmVal.format "%064x"
  let format_HEX_32_bytes = EvmVal.format "%064X"
  let format_bin_256_bits = EvmVal.format "%0256b"
  let format_dec_signed_256 v = U256.to_string (EvmVal.signed_extract v)
  
  (** function to convert an identifier into an opcode if it is; useful for parsing. *)
  let opcode_of_string_opt = Opcodes.opcode_of_string_opt

  (** function to convert an opcode  if it is; useful for printing. *)
  let string_of_opcode_opt = Opcodes.string_of_opcode_opt

  (** function to convert a object name string to EVM value *)
  let val_of_object_name (evm : EVM.t) (s : string) :(evm_val) =
    match List.find_opt (fun (name,_) -> name = s) evm.object_ids with
    | Some (_,id) -> U256_val id
    | None -> failwith (Printf.sprintf "could not find object <%s>" s)

  (** function to convert an object id EVM val to string *)
  let object_name_of_val (evm : EVM.t) (v : evm_val) :(string) =
    match v with
    | U256_val v ->
       begin
         match List.find_opt (fun (_,id) -> id = v) evm.object_ids with
         | Some (name,_) -> name
         | None ->
            Printf.printf "[error]: the following UIDs are available: %s"
              (Yul_semantics.Utils.string_of_list Z.to_string "\n" (List.map snd evm.object_ids));
            failwith (Printf.sprintf "could not find object id <%s>" (string_of_value (U256_val v)))
       end
    | v -> failwith (Printf.sprintf "[object_name_of_val]: expected U256 but got <%s>" (string_of_value v))

  (* function to check if a given value is symbolic *)
  let is_symbolic (v : evm_val) :(bool) =
    match v with
    | U256_val _ -> false
    | S256_val _ -> true

  (** generic function to check if a PROP holds *)
  let check_sat_prop (evm : EVM.t) (prop : prop) :(EVM.t option) =
    let new_sigma = prop :: evm.env.symbolic_env in
    
    if check_sigma_sat new_sigma
    then Some {evm with env = {evm.env with symbolic_env = new_sigma}}
    else
      begin        
        (* print_endline "============== CHECK SAT FAILED =============="; *)
        (* Printf.printf "PROP:  %s\n" (string_of_prop prop); *)
        (* Printf.printf "SIGMA: %s\n" (string_of_sigma evm.symbolic_env); *)
        (* Printf.printf "SIGMA (Z3): %s\n" (string_of_sigma_via_z3 evm.symbolic_env); *)
        (* Printf.printf "SIGMA SAT: %b\n" (check_sigma_sat evm.symbolic_env); *)
        (* traverse_print_sigma new_sigma;  *)
        None
      end
  
  (** function to check if a value can be satifiably true (i.e. != 0) *)
  let check_sat_true (evm : EVM.t) (v : evm_val) :(EVM.t option) =
    let prop_v = prop_of_evm_val v in
    let prop_v_is_zero = mk_not (mk_bv_is_zero prop_v) in
    check_sat_prop evm prop_v_is_zero
  
  (** function to check if a value can be satifiably true (i.e. == 0) *)
  let check_sat_false (evm : EVM.t) (v : evm_val) :(EVM.t option) =
    let prop_v = prop_of_evm_val v in
    let prop_v_is_zero = mk_bv_is_zero prop_v in
    check_sat_prop evm prop_v_is_zero

  (** function to check if two values are equal *)
  let check_sat_eq (evm : EVM.t) (v1 : evm_val) (v2 : evm_val) :(EVM.t option) =
    let prop_v1 = prop_of_evm_val v1 in
    let prop_v2 = prop_of_evm_val v2 in
    let prop_v1_v2_eq = prop_v1 ==. prop_v2 in
    check_sat_prop evm prop_v1_v2_eq

  (** function to check if two values are NOT equal *)
  let check_sat_neq (evm : EVM.t) (v1 : evm_val) (v2 : evm_val) :(EVM.t option) =
    let prop_v1 = prop_of_evm_val v1 in
    let prop_v2 = prop_of_evm_val v2 in
    let prop_v1_v2_neq = prop_v1 <>. prop_v2 in
    check_sat_prop evm prop_v1_v2_neq
  
  (** function to initialise the EVM configuration *)
  let init = EVM.init
  
  (** function to execute a given opcode, list of values, and EVM config. the list of values
      may not be needed. we could just push values into the stack of the EVM config... *)
  let opcode_dispatcher (evm : EVM.t) (op : opcode) (vs : evm_val list) (print_history : unit -> unit)
      :return_type status =

    if not evm.running then failwith "EVM has stopped.";
    assert(evm.stack = []); (* stack needs to be empty *)

    (* functions to report errors *)
    let print_error msg = Error.report_error_f "[opcode dispatcher]" msg in
    let report_error_if b msg = if b then print_error msg in
    
    (* auxiliary functions to wipe the stack and wrap the return in an option monad if needed *)
    let mk_return_conf g v vs = {g = {g with stack = vs} ; v} in
    let return_running (return_evm : EVM.t) x = Running [ mk_return_conf return_evm x [] ] in
    (* let return_done    (return_evm : EVM.t)   = Done (mk_return_conf return_evm None []) in *)

    (* auxiliary generic function to execute opcodes. *)
    let exec_op_generic ~is_done ~is_void ~operation =
      let (return_evms : EVM.t list) = operation {evm with stack = vs} in
      let handle_return (return_evm : EVM.t) =
          match is_void , return_evm.stack with
          | true , []  -> mk_return_conf return_evm None     [] 
          | false, [x] -> mk_return_conf return_evm (Some x) []
          | true , _   -> failwith "[exec_op_generic]: expected void return"
          | false, _   -> failwith "[exec_op_generic]: expected single value return"
      in
      let (ret_confs : return_type list) = List.map handle_return return_evms in
      match ret_confs with
      | x :: [] -> if is_done || not(x.g.running) then Done x else Running [x]
      | xs -> Running xs
    in
    (* auxiliary function to execute a void-return opcode. opcode returns a single conf. *)
    let exec_void_op operation =
      exec_op_generic ~is_done:false ~is_void:true ~operation:(fun x -> [operation x])
    in
    (* auxiliary function to execute a void-return opcode that terminates the EVM. *)
    let exec_done_op operation =
      print_history ();
      exec_op_generic ~is_done:true ~is_void:true ~operation:(fun x -> [operation x])
    in
    (* auxiliary function to execute a singleton-return opcode. opcode returns a single conf. *)    
    let exec_val_op operation =
      exec_op_generic ~is_done:false ~is_void:false ~operation:(fun x -> [operation x])
    in
    (* auxiliary function to execute a potentially branching opcode. opcode may return multiple confs. *)
    let exec_branching_val_op operation =
      exec_op_generic ~is_done:false ~is_void:false ~operation:operation
    in
    (* auxiliary functions to execute prints *)
    let exec_print_value f vs =
      match vs with
      | v :: [] -> print_endline (f v) ; return_running evm None
      | _ -> failwith "[exec_print_value]: expected one argument"
    in
    let exec_print_list f ls =
      Pretty_printer.print_list f Fun.id ls ;
      return_running evm None
    in
    let mk_symbolic_uint (evm : EVM.t) =
      match evm.stack with
      | [] -> {evm with stack= [S256_val (Z3api.fresh_svar ())]}
      | _ -> failwith "invalid number of arguments for <mk_symbolic_uint>"
    in
    (* pattern-match the OPCODE to decide which operation to apply *)
    match op with
    (* CONTROL FLOW *)
    | Stop    ->
       (* BEHAVES IDENTICAL TO RETURN(0,0) *)
       begin
         let return_evm = System.return_ {evm with stack = [U256_val U256.zero ; U256_val U256.zero]} in
         match return_evm.stack with
         | [] -> Stuck (mk_return_conf (EVM.set_stuck return_evm vs Return) None [])
         | _ -> failwith "[stop]: expected void return"
       end
    | Pc      -> exec_val_op Control_flow.pc
    | Gas     -> exec_val_op Control_flow.gas_left
    (* ARITHMETIC *)
    | Add     -> exec_val_op Arithmetic.add
    | Sub     -> exec_val_op Arithmetic.sub
    | Mul     -> exec_val_op Arithmetic.mul
    | Div     -> exec_val_op Arithmetic.div
    | Sdiv    -> exec_val_op Arithmetic.sdiv
    | Mod     -> exec_val_op Arithmetic.modulo
    | Smod    -> exec_val_op Arithmetic.smodulo
    | Exp     -> exec_val_op Arithmetic.exp
    | Addmod  -> exec_val_op Arithmetic.addmod
    | Mulmod  -> exec_val_op Arithmetic.mulmod
    | Signex  -> exec_val_op Arithmetic.signextend
    (* BLOCK *)
    | Cbase   -> exec_val_op Block.coinbase
    | Tstamp  -> exec_val_op Block.timestamp
    | Chainid -> exec_val_op Block.chain_id
    | Number  -> exec_val_op Block.number
    | Glimit  -> exec_val_op Block.gas_limit
    (* COMPARISON *)
    | Lt      -> exec_val_op Comparison.less_than
    | Gt      -> exec_val_op Comparison.greater_than
    | Slt     -> exec_val_op Comparison.signed_less_than
    | Sgt     -> exec_val_op Comparison.signed_greater_than
    | Eq      -> exec_val_op Comparison.equal
    | Iszero  -> exec_val_op Comparison.is_zero
    (* LOGICAL *)
    | Not     -> exec_val_op Bitwise.bitwise_not
    | And     -> exec_val_op Bitwise.bitwise_and
    | Or      -> exec_val_op Bitwise.bitwise_or
    | Xor     -> exec_val_op Bitwise.bitwise_xor
    | Byte    -> exec_val_op Bitwise.get_byte
    | Shl     -> exec_val_op Bitwise.bitwise_shl
    | Shr     -> exec_val_op Bitwise.bitwise_shr
    | Sar     -> exec_val_op Bitwise.bitwise_sar
    (* KECCAK *)
    | Keccak  -> exec_branching_val_op Keccak.keccak
    (* STACK *)
    | Pop     -> exec_void_op Stack.pop
    (* STATE *)
    | Mload   -> exec_val_op  Memory.mload
    | Mstore  -> exec_void_op Memory.mstore
    | Mstore8 -> exec_void_op Memory.mstore8
    | Sload   -> exec_val_op  Storage.sload
    | Sstore  -> exec_void_op Storage.sstore
    | Msize   -> exec_val_op  Memory.msize
    | Mcopy   -> exec_void_op Memory.mcopy
    (* ENVIRONMENT *)
    | Address -> exec_val_op  Environment_opcodes.address
    | Caller  -> exec_val_op  Environment_opcodes.caller
    | Csize   -> exec_val_op  Environment_opcodes.codesize
    | Cvalue  -> exec_val_op  Environment_opcodes.callvalue
    | Ccopy   -> exec_void_op Environment_opcodes.codecopy
    | Cdload  -> exec_val_op  Environment_opcodes.calldataload
    | Cdsize  -> exec_val_op  Environment_opcodes.calldatasize
    | Bal     -> exec_val_op  Environment_opcodes.balance
    | Cdcode  -> exec_void_op Environment_opcodes.calldatacopy
    | Rdsize  -> exec_val_op  Environment_opcodes.returndatasize
    | Rdcopy  -> exec_void_op Environment_opcodes.returndatacopy
    | Ecsize  -> exec_val_op  Environment_opcodes.extcodesize
    | Wait -> exec_void_op Environment_opcodes.wait_ms
    (* LOGS *) (* TODO: NOP FOR NOW *)
    | Log0 | Log1 | Log2 | Log3 | Log4 -> exec_void_op (fun evm -> {evm with stack = []})
    (* YUL-SPECIFIC OPCODES *)
    | MemGuard   -> exec_val_op  Memory.memoryguard
    | SetImm     -> exec_void_op Immutable.setimmutable
    | LoadImm    -> exec_val_op  Immutable.loadimmutable
    | SetLinker  -> exec_void_op Linker.setlinkersymbol
    | LoadLinker -> exec_val_op  Linker.linkersymbol
    (* OBJECT DATA *)
    | Datasize   -> exec_val_op  Data.datasize
    | Dataoffset -> exec_val_op  Data.dataoffset
    | Datacopy   -> exec_void_op Data.datacopy
    (* PRINTING *)
    | Print    -> exec_print_value string_of_value vs
    | Printsign-> exec_print_value format_dec_signed_256 vs
    | PrintHEX -> exec_print_value format_HEX_32_bytes vs
    | Printhex -> exec_print_value format_hex_32_bytes vs
    | Printbin -> exec_print_value format_bin_256_bits vs
    | PrintAscii-> exec_print_value ascii_string_of_value vs
    | PrintObj -> exec_print_value (object_name_of_val evm) vs
    | PrintIds -> exec_print_list
                    (fun (name,id) -> Printf.printf "%-20s  %s\n" name (U256.to_string id))
                    evm.object_ids
    | PrintNms -> exec_print_list
                    (fun (name,_) -> print_endline name)
                    evm.object_ids
    | PrintSig -> exec_print_value Z3api.string_of_sigma        [evm.env.symbolic_env]
    | PrintZ3  -> exec_print_value Z3api.string_of_sigma_via_z3 [evm.env.symbolic_env]
    | PrintMem -> exec_void_op Memory.print_mem
    (* SYMBOLIC EXECUTION OPERATIONS *)
    | MkSymbol -> exec_val_op mk_symbolic_uint
    (* GAME OPERATIONS: sets stuck flag, need to set the stack too. *)
    | ExtFund -> exec_void_op System.external_fund
    | Revert  -> exec_done_op System.revert_dummy
    | Return ->
       begin
         let return_evm = System.return_ {evm with stack = vs} in
         match return_evm.stack with
         | [] -> Stuck (mk_return_conf (EVM.set_stuck return_evm vs Return) None [])
         | _ -> failwith "[Return]: expected void return"
       end
    | Call ->
       report_error_if (List.length vs <> 7)
         (Printf.sprintf "Opcode <call> expects 7 arguments, but got <%d>" (List.length vs));
       Stuck (mk_return_conf (EVM.set_stuck evm vs (Call (Plain,[]))) None vs) (* TODO: add output *)
    | Scall ->
       report_error_if (List.length vs <> 6)
         (Printf.sprintf "Opcode <staticcall> expects 6 arguments, but got <%d>" (List.length vs));
       Stuck (mk_return_conf (EVM.set_stuck evm vs (Call (Static,[]))) None vs) (* TODO: add output *)
    | Dcall ->
       report_error_if (List.length vs <> 6)
         (Printf.sprintf "Opcode <delegatecall> expects 6 arguments, but got <%d>" (List.length vs));
       Stuck (mk_return_conf (EVM.set_stuck evm vs (Call (Delegate,[]))) None vs) (* TODO: add output *)
    | Create ->
       report_error_if (List.length vs <> 3)
         (Printf.sprintf "Opcode <create> expects 3 arguments, but got <%d>" (List.length vs));
       Stuck (mk_return_conf (EVM.set_stuck evm vs Create) None vs)
    | Create2 ->
       report_error_if (List.length vs <> 4)
         (Printf.sprintf "Opcode <create> expects 4 arguments, but got <%d>" (List.length vs));
       Stuck (mk_return_conf (EVM.set_stuck evm vs Create2) None vs)  
    | StartAnalysis | LaunchOpponent ->
       report_error_if (List.length vs <> 0)
         (Printf.sprintf "Opcode <START_ANALYSIS> expects 0 arguments, but got <%d>" (List.length vs));
       Stuck (mk_return_conf (EVM.set_stuck evm vs StartAnalysis) None vs)
    | Assert ->
       report_error_if (List.length vs <> 1)
         (Printf.sprintf "Opcode <ASSERT> expects 1 argument, but got <%d>" (List.length vs));
       Stuck (mk_return_conf (EVM.set_stuck evm vs Assert) None vs)
    | ImpersonateCall ->
       report_error_if (List.length vs <> 8)
         (Printf.sprintf "Opcode <IMPERSONATECALL> expects 8 arguments, but got <%d>" (List.length vs));
       Stuck (mk_return_conf (EVM.set_stuck evm vs (Call (Impersonate,[]))) None vs) (* TODO: add output *)
    | RevealUint ->
       report_error_if (List.length vs <> 1)
         (Printf.sprintf "Opcode <REVEAL_UINT> expects 1 argument, but got <%d>" (List.length vs));
       Stuck (mk_return_conf (EVM.set_stuck evm vs (Reveal Uint)) None vs)
    | RevealAddr -> 
       report_error_if (List.length vs <> 1)
         (Printf.sprintf "Opcode <REVEAL_UINT> expects 1 argument, but got <%d>" (List.length vs));
       Stuck (mk_return_conf (EVM.set_stuck evm vs (Reveal Address)) None vs)
  
    (*
      | Sbal   (* selfbalance()        I| equivalent to balance(address()), but cheaper                   *)
      | Bfree  (* basefee()            L| current block’s base fee (EIP-3198 and EIP-1559)                *)
      | Origin (* origin()             F| transaction sender                                              *)
      | Gprice (* gasprice()           F| gas price of the transaction                                    *)
      | Eccopy (* extcodecopy(a,t,f,s)-F| like codecopy(t, f, s) but take code at address a               *)
      | Echash (* extcodehash(a)       C| code hash of address a                                          *)
      | Create (* create(v, p, n)      F| create new contract with code mem[p…(p+n)) and send v wei and
      return the new address; returns 0 on error *)
      | Create2(* create2(v, p, n, s)  C| create new contract with code mem[p…(p+n)) at address
      keccak256(0xff . this . s . keccak256(mem[p…(p+n))) and send v
      wei and return the new address, where 0xff is a 1 byte value,
      this is the current contract’s address as a 20 byte value and s
      is a big-endian 256-bit value; returns 0 on error               *)
      | Callc  (* callcode(g,a,v,in,insize,out,outsize)
      F| identical to call but only use the code from a and stay in the
      context of the current contract otherwise                       *)
      | Selfdes(*selfdestruct(a)      -F| end execution, destroy current contract and send funds to a     *)
      | Invalid(* invalid()           -F| end execution with invalid instruction                          *)
      | Bhash  (* blockhash(b)         F| hash of block nr b - only for last 256 blocks excluding current *)
      | Diffic (* difficulty()         F| difficulty of the current block                                 *)
     *)
    (* ERROR *)
    | _ -> failwith (Printf.sprintf "not implemented: <%s>" (Opcodes.string_of_opcode op))
  end

(** This is to make the types in EvmDialect visible. *)
module Dialect :(Dialect) = EvmDialect
