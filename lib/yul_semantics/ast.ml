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
  (* TYPES NEEDED FOR INSTANTIATION *)
  type value_type         (* e.g. create an instance with evm_val as the type *)
  type configuration_type (* e.g. our EVM.t type *)
  type opcode             (* e.g. the type of EVM instructions (the set of all opcode names) *)

  (** status type to wrap reductions *)
  type 'a status = Running of ('a list) | Stuck of 'a | Done of 'a (* | Error of 'a *)

  (** return type for opcodes *)
  type return_type = {g : configuration_type ; v : value_type option} (* g = ret_conf, v = ret_val *)
  
  (* FIELDS NEEDED FOR INSTANTIATION (e.g. functions) *)
  val zero : value_type                              (* gets ZERO value for the value type *)
  val get_bool : value_type -> bool option           (* gets a BOOL from a VALUE (None if symbolic) *)
  val val_of_bool : bool -> value_type               (* gets a VALUE frmo a BOOL *)
  val compare : value_type -> value_type -> int      (* compares two CONCRETE VALUES (not symbolic) *)
  val value_of_string : string -> value_type         (* gets a VALUE from a STRING *)
  val value_of_ascii_literal : string -> value_type  (* gets a VALUE from a STRING *)  
  val string_of_value : value_type -> string         (* gets a STRING from a VALUE *)
  val is_data_opcode : opcode -> bool                (* gets whether an OPCODE is a DATA opcode for strings *)
  val opcode_of_string_opt : string -> opcode option (* gets an OPCODE from a STRING *)
  val string_of_opcode_opt : opcode -> string option (* gets a STRING from an OPCODE *)
  val is_symbolic : value_type -> bool               (* returns TRUE if the value is SYMBOLIC *)
    
  (** Gets a VALUE that represents an OBJECT that is accessible within the CONFIGUATION using the
      given STRING. For instance, if the object C.C.D is accessible, then "C.C.D" returns a unique
      VALUE that identifies the object C.C.D.
   *)
  val val_of_object_name : configuration_type -> string -> value_type
  
  (** Checks if a given value can be symbolically true and keeps the new configuration if satisfiable.
      Given a configuration C that contains a symbolic environment C.sigma and given a value V:
      1. constructs a new environment sigma' = (V = true) && C.sigma (e.g. V =/= 0 in EVM)
      2. checks if sigma' is satisfiable
      3. if satisfiable, returns a new configuration {C where sigma = sigma'}
      4. otherwise, None
   *)
  val check_sat_true : configuration_type -> value_type -> configuration_type option

  (** Checks if a given value can be symbolically false and keeps the new configuration if satisfiable.
      Same as check_sat_true but for false.
   *)
  val check_sat_false : configuration_type -> value_type -> configuration_type option

  (** Checks if two values can be symbolically equal. Returns configuration with updated environment. *)
  val check_sat_eq : configuration_type -> value_type -> value_type -> configuration_type option

  (** Checks if two values can be symbolically not equal. Returns configuration with updated environment. *)
  val check_sat_neq : configuration_type -> value_type -> value_type -> configuration_type option
  
  (** selects the correct evm opcode: [dispatcher : evm -> op -> vs -> [evm * v]] *)
  val opcode_dispatcher : configuration_type -> opcode -> value_type list -> (unit -> unit)
                          -> return_type status
  
  (** initialise EVM config.
     - string list: list of object names for which the dialect chooses unique IDs if necessary;
     - inifile parser: (string -> string -> string option) option, e.g. section -> key -> value.
   *)
  val init : (string * int) list
             -> ((string -> string -> string option) * bool) option
             -> string
             -> string
             -> configuration_type
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

  type abi = Abi_parser.Ast.contract
  
  (** type for Yul Objects, which may contain nested Objects *)
  type yul_object = {name:string ;
                     code:statement ;
                     members:(yul_member list);
                     uid:int;
                     abi:abi option;
                     full_abi:abi option
                    }
  and yul_member = Object of yul_object | Data of yul_data
  and yul_data = string * yul_data_member
  and yul_data_member = Hex of string | Str of string

  (** type for parsed programs *)
  type parsed_yul = YulCode of statement | YulObject of yul_object

  (*****************************)
  (* BLOCK OF STRING FUNCTIONS *)
  (*****************************)
  (** function to get a string from a Yul statement *)
  let rec string_of_statement = function
    | Block b -> Printf.sprintf "{%s}" (string_of_block b)
    | Function (id , f) -> Printf.sprintf "function %s%s" id (string_of_func f)
    | LetNew (ids , e) -> Printf.sprintf "let %s := %s" (string_of_ids ids) (string_of_expression e)
    | Assign (ids , e) -> Printf.sprintf "%s := %s" (string_of_ids ids) (string_of_expression e)
    | Expression e -> string_of_expression e
    | If (e , b) -> Printf.sprintf "if %s %s" (string_of_expression e) (string_of_block b)
    | Switch (e , cs , b) ->
       let string_of_case (v,b) = Printf.sprintf "case %s %s" (D.string_of_value v) (string_of_block b) in
       let string_of_cases cs = Utils.string_of_list string_of_case "\n" cs in
       Printf.sprintf "switch %s %s %s"
         (string_of_expression e)
         (string_of_cases cs)
         (string_of_block b)
    | For (b1 , e , b2 , b3) ->
       Printf.sprintf "for %s %s %s %s"
         (string_of_block b1)
         (string_of_expression e)
         (string_of_block b2)
         (string_of_block b3)
    | Break -> "break"
    | Continue -> "continue"
    | Leave -> "leave"
    | Regular -> "regular"
    | Cnt s -> Printf.sprintf "[[%s]]_cnt" (string_of_statement s)
  and string_of_expression = function
    | FunApp (id, es) -> Printf.sprintf "%s(%s)" id (Utils.string_of_list string_of_expression "," es)
    | OpApp (op, es) ->
       let string_of_opcode x =
         match D.string_of_opcode_opt x with Some s -> s | None -> failwith "error: not an opcode"
       in
       Printf.sprintf "%s(%s)" (string_of_opcode op) (Utils.string_of_list string_of_expression "," es)
    | Val v -> D.string_of_value v
    | Str s -> Printf.sprintf "\"%s\"" s
    | Var id -> id
    | Tuple vs -> Printf.sprintf "<%s>" (Utils.string_of_list D.string_of_value "," vs)
  and string_of_block b = Utils.string_of_list string_of_statement "\n" b
  and string_of_func {args;rets;body} =
    Printf.sprintf "(%s) %s %s" (string_of_ids args) (string_of_ids rets) (string_of_block body)
  and string_of_ids ids = Utils.string_of_list Fun.id "," ids

  (** function to get a string from a Yul object *)
  let rec string_of_yul_object ({name ; code ; members; uid; abi; full_abi} : yul_object) =
    Printf.sprintf "object %s__(UID:%d)__ { \n code %s \n %s }%s__full%s"
      name
      uid
      (string_of_statement code)
      (Utils.string_of_list string_of_yul_member "\n" members)
      (string_of_abi_opt abi)
      (string_of_abi_opt full_abi)  
  and string_of_yul_member = function
    | Object yul_object -> string_of_yul_object yul_object
    | Data yul_data -> string_of_yul_data yul_data
  and string_of_yul_data (s , data) = Printf.sprintf "data \"%s\" %s" s (string_of_yul_data_member data)
  and string_of_yul_data_member = function
    | Hex s -> Printf.sprintf "hex\"%s\"" s
    | Str s -> s
  and string_of_abi_opt = function
    | None -> ""
    | Some abi -> Printf.sprintf "__abi__%s" (Abi_parser.Ast.to_string_contract abi)
  (***************************)
  (* END OF STRING FUNCTIONS *)
  (***************************)

  (** Function to get the case that matches a given concrete v.
      If no cases match, this returns the default block.
      
      note:
      Every [vi] in [cases] is a concrete value and cannot be symbolic.
      This is because the syntax is case value Block, so variables
      are not allowed. This in turn means that symbolic values cannot
      possibly flow into the case pattern.
   *)
  let get_case v (cases,default) =
    match List.find_opt (fun (vi,_) -> D.compare v vi = 0) cases with
    | Some (_,bi) -> Block bi
    | None -> Block default

  (** Function to assign NEGATIVE UID to each object in an object (including itself)
      - UIDs are based on HASH of the PATH
      - UIDs NEED to be NEGATIVE because the rest of the code expects object code to be NEGATIVE *)
  let assign_negative_uids (obj : yul_object) :(yul_object)=
    let rec traverse obj current_path =
      let updated_members =
        List.fold_left
          (fun acc member ->
            match member with
            | Object o ->
               let next_path = Printf.sprintf "%s.%s" current_path o.name in
               let new_obj = traverse o next_path in
               (Object new_obj :: acc)
            | Data d ->
               (Data d) :: acc)
          [] obj.members
      in
      let current_uid = Hashtbl.hash current_path in
      (* print_endline current_path; *)
      (* Printf.printf "ID: %d\n" current_uid; *)
      { obj with uid = -current_uid; members = List.rev updated_members }
    in
    traverse obj obj.name
  
  (** Function to get all the names of object members.
      
      This function finds the first object name and adds it, then proceeds to
      recursively traverse every member and lists the names with a prefix.
      Except for the first object, every object recursively seen is added to
      the prefix.

      If duplicate names are found, this function throws a failure
      after printing all the names it has found.
   *)
  let get_member_names (obj : yul_object) :((string * int) list) =
    let rec aux (acc,current_prefix) (members : yul_member list) =
      let f acc = function
        | Object o ->
           let new_name =
             if current_prefix = "" then o.name
             else Printf.sprintf "%s.%s" current_prefix o.name
           in
           fst (aux ((new_name , o.uid) :: acc,new_name) o.members)
        | Data _ -> acc
      in
      (* take new names from result, return old acc prefix to reset the height *)
      List.fold_left f acc members , current_prefix
    in
    let result = List.rev (fst (aux ([obj.name , obj.uid],"") obj.members)) in
    (* find if there are  duplicates in the list *)
    let find_duplicates lst =
      let aux (seen, duplicates) x =
        if List.mem x seen then
          if not (List.mem x duplicates) then
            (seen, x :: duplicates)
          else
            (seen, duplicates)
        else
          (x :: seen, duplicates)
      in
      let _, duplicates = List.fold_left aux ([], []) lst in
      List.rev duplicates
    in
    let duplicates = find_duplicates result in
    match duplicates with
    | [] -> result
    | _ ->
       (* duplicate names exist, need to throw an error *)
       print_endline "Object names found:";
       let result_names = List.map fst result in
       List.iter print_endline result_names;
       failwith (Printf.sprintf "duplicate object names found: %s" (String.concat ", " result_names))

  (** function to get a member from the object with a given string name.
      the name given must be in dot notation. *)
  let get_member str obj =
    let prefixes = String.split_on_char '.' str in
    let rec aux acc = function
      | [] -> acc
      | prefix :: rest ->
         let f = function
           | Object o -> if (o.name = prefix) then Some o else None
           | Data _ -> failwith "expected object name"
         in
         let new_obj = List.find_map f acc.members in
         match new_obj with
         | Some new_o -> aux new_o rest
         | None -> failwith "object name not found"
    in
    aux obj prefixes
  (* TODO: TEST get_member *)

  (** function to find an object by UID *)
  let rec find_object_by_uid uid obj =
    if obj.uid = uid then Some obj
    else
      List.find_map
        (function
         | Object o -> find_object_by_uid uid o
         | Data _ -> None)
        obj.members

  (** function to annotate all sub-objects (including the root) with ABIs *)
  let rec annotate_objects_with_abis abi_list full_abi_list (obj : yul_object) =
    let abi = Abi_parser.Parser.find_deployed_contract obj.name abi_list in
    let full_abi = Abi_parser.Parser.find_deployed_contract obj.name full_abi_list in
    let f = function
      | Object o -> Object (annotate_objects_with_abis abi_list full_abi_list o)
      | Data d -> Data d
    in
    {obj with abi ; full_abi ; members = List.map f obj.members}
  
  (** function to make an empty object containing just the given code; 0 for unassigned uid *)
  let mk_code_object code = {name = ".NIL" ; code = code ; members = []; uid = 0; abi = None; full_abi = None}
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
  type red_conf = {s : cek_term ; g : environment ; l : store ; n : nameset ; call_history : ident list}

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
  let rec drop_redundant_block_sequence l n stack =
    match stack with
    | S_Block ([], l_next , n_next) :: rest ->
       if (is_domain_subset l l_next) && (IdentMap.equal (=) n n_next)
       then drop_redundant_block_sequence l n rest
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

  (** new store initialised whenever function applications occur.
      function application creates an empty store where the argument and return variables
      are mapped to the values passed to the function and to zero respectively. *)
  let new_fun_app_store func vs =
    (* TODO: IMPROVE ERROR MESSAGE. *)
    assert(List.length func.args = List.length vs);
    let arg_val_pairs = List.combine func.args vs in
    let ret_zero_pairs = List.map (fun i -> i,D.zero) func.rets in
    new_store (arg_val_pairs @ ret_zero_pairs)

  (** function to initialise the red_conf from:
      - o: object to evaluate
      - f: configuration function parsed from inifile
      returns record with lists of stuck and done configurations 
   *)
  let init_red_conf obj f (deploy_address : string) (deploy_gas : string) :(red_conf) =
    (* NOTE: THIS DOESN'T ASSIGN OBJECT UID. YOU NEED TO DO THIS BEFORE REACHING THIS. *)
    {
      s = {ecxt = [] ; term = obj.code} ;
      g = D.init (get_member_names obj) f deploy_address deploy_gas ;
      l = IdentMap.empty ;
      n = IdentMap.empty ;
      call_history = []  ;
    }
end

