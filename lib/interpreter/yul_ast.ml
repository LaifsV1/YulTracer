(** File Containing AST modules for Yul
    @author Yu-Yang Lin
    created 27-Mar-2024

    We define the AST here as a Functor that can take Dialects. The idea is to
    make Dialects modular and keep the Yul interpreter independent from the
    implementation of EVM opcodes and other dialect-specific instructions.

    See PDF for our small-step and big-step semantics. We follow the small-step
    semantics to create a CEK machine for Yul with a given dialect.
 *)

(* ---- IDENTIFIERS ---- *)
(** type for identifiers *)
type ident = string

(** module for identifiers to use with functors *)
module Ident = struct
  type t = ident
  let compare = compare
end

(** module for identifier sets in case we need name sets *)
module IdentSet = Set.Make(Ident)

(** module for identifier sets in case we need name sets *)
module IdentMap = Map.Make(Ident)

(* ---- SIGNATURES FOR DIALECTS ---- *)
(** module signature for dialects for YUL functor. this is like an interface. *)
module type Dialect = sig
  type value_type (* we can create an instance with evm_val as the type *)
  type configuration_type (* this would be our EVM.t type *)
  type opcode (* this would be the type of EVM instructions *)
  val zero : value_type
  val get_bool : value_type -> bool
  val compare : value_type -> value_type -> int
  val value_of_string : string -> value_type
  val string_of_value : value_type -> string
  val opcode_of_string_opt : string -> opcode option
  val string_of_opcode_opt : opcode -> string option
  (* evm -> op -> vs -> [evm * v] *)
  val opcode_dispatcher : configuration_type -> opcode -> value_type list
                          -> (configuration_type * (value_type option)) list
  val init : configuration_type
end

(* ---- YUL AST FOR TERMS ---- *)
(** module for YUL AST functor that takes in an instance of the dialect "interface" *)
module YulAST (D : Dialect) = struct

  (** type for dialect values *)
  type value = D.value_type

  (** type for dialect environment *)
  type environment = D.configuration_type

  (** type of dialect operations *)
  type op = D.opcode

  (** type for Yul terms, which are statements. statements may contain expressions. *)
  type statement = Block of block
                 | Function of ident * func
                 | LetNew of (ident list) * expression
                 | Assign of (ident list) * expression
                 | Expression of expression
                 | If of expression * block
                 | Switch of expression * (case list) * block
                 | For of block * expression * block * block
                 | Break
                 | Continue
                 | Leave
                 | Regular (* combining the Mode with Statements here *)
                 | Cnt of statement (* [[ S ]]_cnt *)
  and expression = FunApp of ident * (expression list) (* must return single value per expr *)
                 | OpApp of op * (expression list) (* must return single value per expr *)
                 | Val of value
                 | Str of string
                 | Var of ident
                 | Tuple of (value list)
  and block = statement list
  and case = value * block
  and func = {args : Ident.t list ; rets : Ident.t list ; body : block}
  
  let get_case v (cases,default) =
    match List.find_opt (fun (vi,_) -> D.compare v vi = 0) cases with
    | Some (_,bi) -> Block bi
    | None -> Block default

  (** type for Yul Objects, which may contain nested Objects *)
  type yul_object = {name:string ; code:statement ; contents:(yul_content list)}
  and yul_content = Object of yul_object | Data of yul_data
  and yul_data = string * yul_data_content
  and yul_data_content = Hex of string | Str of string

  (** type for parsed programs *)
  type parsed_yul = YulCode of statement | YulObject of yul_object
end

(* ---- EVALUATION CONTEXTS AND CONFIGURATIONS ---- *)
(** module for evaluation contexts and configurations *)
module YulEvalConf (D : Dialect) = struct
  module Yul_AST_with_dialect = YulAST(D)
  open Yul_AST_with_dialect
  
  (** type for L (variable dictionary) in Yul semantics *)
  type store = value IdentMap.t
  
  (** nameset for N (function names) in Yul semantics *)
  type nameset = func IdentMap.t (* TODO: add functions, make a map *)

  (** evaluation frames for evaluation context *)
  type eval_frame = S_Block of block * store * nameset (* L , N *) (* { S* }_L^N *)
                  | S_LetNew of ident list
                  | S_Assign of ident list
                  | S_Cnt (* [[ E ]]_cnt *)
                  | S_Brk (* [[ E ]]_brk *)
                  | S_If of block
                  | S_Switch of (case list) * block
                  | E_FunApp of ident * (value list) * (expression list) (* value list in reverse *)
                  | E_OpApp of op * (value list) * (expression list) (* value list in reverse *)
                  | E_Scope of (ident list) * store (* (| E |) *)

  (** evaluation context for our CEK machine implementation for Yul *)
  type eval_cxt = eval_frame list

  (** CEK term to reduce: a pair of context and inner term (statement or expression) *)
  type cek_term  = {ecxt : eval_cxt ; term : statement}

  (** reduction configuration. consists of:
      - cek_term: holds a statement that is being evaluated
      - G component: the dialect's global environment
      - L component: variable (identifiers) dictionary/store from identifiers to dialect values
      - N component: set of function names (which are identifiers) in scope
   *)
  type red_conf = {s : cek_term ; g : environment ; l : store ; n : nameset}

  (** function to restrict the domain of L *)
  let restrict_l l_to_restrict l_filter =
    IdentMap.filter
      (fun key _ ->
        match IdentMap.find_opt key l_filter with
        | None -> false
        | Some _ -> true)
      l_to_restrict

  (** function to check if dom(M1) is a subset of dom(M2) *)
  let is_domain_subset map1 map2 =
    IdentMap.fold (fun key _ acc -> acc && IdentMap.mem key map2) map1 true

  (** function to remove the next frame if it is an empty S_Block with subset dom(L) and equal N.
      in practice slower because checking for subset is slow. *)
  let remove_redundant_block_frames l_top n_top stack =
    match stack with
    | S_Block ([], l_next , n_next) :: rest ->
       if (is_domain_subset l_top l_next)
          && (IdentMap.equal (=) n_top n_next)
       then rest
       else stack
    | _ -> stack
  
  (** function to remove the next frame if it is an empty S_Block with subset dom(L) and empty N.
      very minimal impact because checking for subset is slow. *)
  let remove_redundant_block_frames_2 l_top n_top stack =
    match stack with
    | S_Block ([], l_next , n_next) :: rest ->
       if (is_domain_subset l_top l_next)
          && (IdentMap.is_empty n_top) && (IdentMap.is_empty n_next)
       then rest
       else stack
    | _ -> stack

  (** function to remove the next frame if it is an empty S_Block with empty dom(L) and equal N.
      in practice slower because checking for subset is slow. *)
  let remove_redundant_block_frames3 l_top n_top stack =
    match stack with
    | S_Block ([], l_next , n_next) :: rest ->
       if (IdentMap.is_empty l_top)
          && (IdentMap.is_empty l_next)
          && (IdentMap.equal (=) n_top n_next)
       then rest
       else stack
    | _ -> stack
  
  (** function to drop entire sequences of empty S_Block if they are all subset of dom(L) and same N.
      in practice slow or no impact because checking for subset is slow. *)
  let rec drop_reduandant_block_sequence l n stack =
    match stack with
    | S_Block ([], l_next , n_next) :: rest ->
       if (is_domain_subset l l_next) && (IdentMap.equal (=) n n_next)
       then drop_reduandant_block_sequence l n rest
       else stack
    | _ -> stack
  
  (** function returns true iff the regexp [S_Block*S_Cnt] is matched in the context.
      i.e. any number of S_Blocks followed by a S_Cnt *)
  let rec subsequent_s_brk ecxt =
    match ecxt with
    | [] -> false
    | S_Brk :: _ -> true
    | S_Block _ :: rest -> subsequent_s_brk rest
    | _ :: _ -> false
  
  (** function that extracts all functions in a block and adds them to N (acc) *)
  let rec funs (acc : nameset) = function
    | [] -> acc
    | Function (id , func) :: rest -> funs (IdentMap.add id func acc) rest
    | _ :: rest -> funs acc rest

  (** new store initialised with a given list of bindings *)
  let new_store bindings =
    List.fold_left (fun acc (i,v) -> IdentMap.add i v acc) (IdentMap.empty) bindings

  (** *)
  let new_fun_app_store func vs =
    assert(List.length func.args = List.length vs);
    let arg_val_pairs = List.combine func.args vs in
    let ret_zero_pairs = List.map (fun i -> i,D.zero) func.rets in
    new_store (arg_val_pairs @ ret_zero_pairs)
  
  let empty_red_conf s :(red_conf) = {s = {ecxt = [] ; term = s} ;
                                      g = D.init ;
                                      l = IdentMap.empty ;
                                      n = IdentMap.empty}
end

