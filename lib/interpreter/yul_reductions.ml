(** File Containing AST modules for Yul
    @author Yu-Yang Lin
    created 13-Apr-2024

    We define Yul reduction semantics as a CEK machine.

    See PDF for our small-step and big-step semantics. We follow the small-step
    semantics to create a CEK machine for Yul with a given dialect.
 *)

open Yul_ast

(** Functor that implements a parametric CEK Machine for Yul so that it is modular
    on different dialects. It requires a Dialect to be instantiated. *)
module YulCEK (D : Dialect) = struct
  module Yul_AST_with_dialect = YulAST(D)
  module Yul_CEK_conf_with_dialect = YulEvalConf(D)
  open Yul_AST_with_dialect
  open Yul_CEK_conf_with_dialect
  module PrettyPrinter = Yul_pretty_printer.YulPrettyPrinter(D)
  open PrettyPrinter

  type debug_flags = {print_confs : bool}
  let debug_flags = ref {print_confs = false}
  let set_flags new_flags = debug_flags := new_flags
  
  (** function to focus into the inner-most term. returns:
      - None if focusing further is not possible
      - Some more focussed configuration otherwise

      the term must be closed. we don't have identifier expressions in Yul
      because Yul explicitly defines variables being looked up in L.
   *)
  let focus (c : red_conf) :(red_conf option) =
    match c.s.term with
    (* evaluating statements *)
    | Block _ -> None
    | Function _ -> None (* TODO: NONE? or do we just directly continue with the block? *)
    | LetNew (is , e) ->
       Some {c with s = {ecxt = S_LetNew is :: c.s.ecxt ; term = Expression e}}
    | Assign (is , e) ->
       Some {c with s = {ecxt = S_Assign is :: c.s.ecxt ; term = Expression e}}
    | If (e , b) ->
       Some {c with s = {ecxt = S_If b :: c.s.ecxt ; term = Expression e}}
    | Switch (e , cs , b) ->
       Some {c with s = {ecxt = S_Switch (cs,b) :: c.s.ecxt ; term = Expression e}}
    | For (_ , _ , _ , _) -> None
    (* returning statements *)
    | Break | Continue | Leave | Regular -> None
    (* expression statements *)
    | Expression (Val _) | Expression (Var _) | Expression (Tuple _) | Expression (Str _)
      | Expression (FunApp (_ , [])) | Expression (OpApp (_ , [])) -> None
    | Expression (FunApp (f , e1 :: es)) ->
       Some {c with s = {ecxt = E_FunApp (f, [], es) :: c.s.ecxt ; term = Expression e1}}
    | Expression (OpApp (op , e1 :: es)) ->
       Some {c with s = {ecxt = E_OpApp (op, [], es) :: c.s.ecxt ; term = Expression e1}}
    | Cnt s ->
       Some {c with s = {ecxt = S_Cnt :: c.s.ecxt ; term = s}}

  (** function to perform a small-step reduction according to our Yul semantics.
      this function requires the term to be fully focussed and reduced.
      reductions are done by matching on the term and current inner-most frame.
   *)
  let reduce (c : red_conf) : ((red_conf list) option) =
    let print_error msg =
      Format.print_string "Last CEK term seen:\n";
      print_cek_term c.s;
      Format.force_newline ();
      failwith msg
    in
    match c.s.term , c.s.ecxt with
      
    (*----- BLOCK PATTERNS -----*)
    | Block [] , ecxt -> Some ({c with s = {ecxt = ecxt ; term = Regular}} :: [])
    | Block (b::bs) , ecxt ->
       Some ({c with s = {ecxt = S_Block (bs, c.l , c.n) :: ecxt ; term = b} ;
                     n = funs c.n (b::bs)} :: [])
    | Regular , [] -> None
    | Regular , S_Block (b::bs, l , n) :: rest ->
       Some ({c with s = {ecxt = S_Block (bs, l , n) :: rest ; term = b}} :: [])
    | Break , S_Block (_ , l , n) :: rest
      | Continue , S_Block (_ , l , n) :: rest
      | Leave , S_Block (_ , l , n) :: rest
      | Regular , S_Block ([], l , n) :: rest ->
       let new_l =
         IdentMap.filter
           (fun key _ ->
             match IdentMap.find_opt key l with
             | None -> false
             | Some _ -> true)
           c.l
       in
       Some ({c with s = {ecxt = rest ; term = c.s.term} ; l = new_l ; n} :: [])
    | Function _ , ecxt ->
       Some ({c with s = {ecxt = ecxt ; term = Regular}} :: [])
  
    (*----- ASSIGNMENT PATTERNS -----*)
    | Expression (Tuple vs) , S_LetNew is :: rest ->
       assert(List.length is = List.length vs);
       assert(not (IdentMap.exists (fun key _ -> List.mem key is) c.l));
       let new_l =
         List.fold_left (fun acc (i,v) -> IdentMap.add i v acc) c.l (List.combine is vs)
       in
       Some ({c with s = {ecxt = rest ; term = Regular} ; l = new_l} :: [])
    | Expression (Tuple vs) , S_Assign is :: rest ->
       assert(List.length is = List.length vs);
       assert(List.for_all
                (fun key ->
                  match IdentMap.find_opt key c.l with None -> true | Some _ -> false) is);
       let new_l =
         List.fold_left (fun acc (i,v) -> IdentMap.add i v acc) c.l (List.combine is vs)
       in
       Some ({c with s = {ecxt = rest ; term = Regular} ; l = new_l} :: [])
    | Expression (Val v) , S_LetNew [i] :: rest ->
       assert(not (IdentMap.exists (fun key _ -> key = i) c.l));
       let new_l =IdentMap.add i v c.l in
       Some ({c with s = {ecxt = rest ; term = Regular} ; l = new_l} :: [])
    | Expression (Val v) , S_Assign [i] :: rest ->
       assert(match IdentMap.find_opt i c.l with None -> false | Some _ -> true);
       let new_l = IdentMap.add i v c.l in
       Some ({c with s = {ecxt = rest ; term = Regular} ; l = new_l} :: [])
  
    (*----- FOR LOOP PATTERNS -----*)
    | For (b1::bs,m,sp,sb) , ecxt ->
       Some ({c with s = {ecxt = ecxt ;
                          term = Block (b1 :: (bs @ [For ([],m,sp,sb)]))}} :: [])  
    | For ([],m,sp,sb) , ecxt ->
       (* don't add S_Brk if a subsequent one exists in the evaluation context *)
       if subsequent_s_brk ecxt then
         Some ({c with s = {c.s with
                             term = If (m, [Cnt (Block sb) ; (Block sp) ; For ([],m,sp,sb)])}} :: [])
       else
         Some ({c with s = {ecxt = S_Brk :: ecxt ;
                            term = If (m, [Cnt (Block sb) ; (Block sp) ; For ([],m,sp,sb)])}} :: [])
    | Continue , S_Cnt :: rest -> 
       Some ({c with s = {ecxt = rest ; term = Regular}} :: [])
    | Regular , S_Cnt :: rest
      | Break , S_Cnt :: rest
      | Leave , S_Cnt :: rest -> 
       Some ({c with s = {ecxt = rest ; term = c.s.term}} :: [])
    | Break , S_Brk :: rest -> 
       Some ({c with s = {ecxt = rest ; term = Regular}} :: [])
    | Regular , S_Brk :: rest 
      | Leave , S_Brk :: rest ->
       Some ({c with s = {ecxt = rest ; term = c.s.term}} :: [])
    | Continue , S_Brk :: _ -> print_error "found Continue in Break context"
  
    (*----- CONDITIONAL PATTERNS -----*)
    | Expression (Val v) , S_If b :: rest ->
       if D.get_bool v
       then Some ({c with s = {ecxt = rest ; term = Block b}} :: [])
       else Some ({c with s = {ecxt = rest ; term = Regular}} :: [])

    (*----- CASE SWITCHING PATTERNS -----*)
    | Expression (Val v) , S_Switch (cs,b) :: rest ->
       let stmt = get_case v (cs,b) in
       Some ({c with s = {ecxt = rest ; term = stmt}} :: [])
  
    (*----- DEREFERENCING PATTERNS -----*)
    | Expression (Var i) , ecxt ->
       begin
         match IdentMap.find_opt i c.l with 
         | Some v -> Some ({c with s = {ecxt = ecxt ; term = Expression (Val v)}} :: [])
         | None -> print_error "identifier not found in L"
       end
  
    (*----- FUNCTION APPLICATION PATTERNS -----*)
    | Expression (FunApp (f , [])) , ecxt ->
       begin
         match IdentMap.find_opt f c.n with
         | Some func ->
            (* TODO: refactor so both cases call this *)
            let new_l = new_fun_app_store func [] in
            Some ({c with s = {ecxt = E_Scope (func.rets,c.l) :: ecxt ; term = Block func.body};
                          l = new_l} :: [])
         | None -> print_error "identifier not found in N"
       end
    | Expression (Val v) , E_FunApp (f,vs,[]) :: rest -> (* no expressions left *)
       begin
         match IdentMap.find_opt f c.n with
         | Some func ->
            (* NOTE: no need to reverse value list because it was reversed at parse-time *)
            let new_l = new_fun_app_store func (v::vs) in
            Some ({c with s = {ecxt = E_Scope (func.rets,c.l) :: rest ; term = Block func.body} ;
                          l = new_l} :: [])
         | None -> print_error "identifer not found in N"
       end
    | Expression (Val v) , E_FunApp (f,vs,e::es) :: rest -> (* expressions left *)
       (* NOTE: args were reversed at parse-time, so the value list is unreversed. *)
       Some ({c with s = {ecxt = E_FunApp (f,v::vs,es) :: rest ; term = Expression e}} :: [])
  
    (*----- FUNCTION RETURN PATTERNS -----*)
    | Leave , E_Scope ([] , l) :: rest 
      | Regular , E_Scope ([] , l) :: rest -> (* VOID RETURN *)
       Some ({c with s = {ecxt = rest ; term = Regular} ; l = l} :: [])
    | Leave , E_Scope (z :: [], l) :: rest
      | Regular , E_Scope (z :: [], l) :: rest -> (* SINGLETON RETURN *)
       begin
         match IdentMap.find_opt z c.l with
         | Some v -> Some ({c with s = {ecxt = rest ; term = Expression (Val v)} ; l = l} :: [])
         | _ -> print_error "return identifier not found in L"
       end
    | Leave , E_Scope (zs , l) :: rest
      | Regular , E_Scope (zs , l) :: rest -> (* TUPLE RETURN *)
       let f z =
         match IdentMap.find_opt z c.l with
         | Some v -> v
         | None -> print_error "return identifier not found in L"
       in
       let vs = List.map f zs in
       Some ({c with s = {ecxt = rest ; term = Expression (Tuple vs)} ; l = l} :: [])
  
    (*----- OP CALL PATTERNS -----*)
    | Expression (OpApp (op , [])) , ecxt ->
       let results = D.opcode_dispatcher c.g op [] in
       Some (List.map
               (fun (g,v) ->
                 match v with
                 | Some v -> {c with s = {ecxt = ecxt ; term = Expression (Val v)}; g = g}
                 (* This case was added for Print and other functions with VOID return *)
                 | None ->  {c with s = {ecxt = ecxt ; term = Regular}; g = g} 
               )
               results)
    | Expression (Val v) , E_OpApp (f,vs,e::es) :: rest -> (* expressions left *)
       (* NOTE: args were reversed at parse-time, so the value list is unreversed. *)
       Some ({c with s = {ecxt = E_OpApp (f,v::vs,es) :: rest ; term = Expression e}} :: [])
    | Expression (Val v) , E_OpApp (op, vs , []) :: rest ->
       (* NOTE: no need to reverse value list because it was reversed at parse-time *)
       let results = D.opcode_dispatcher c.g op (v::vs) in
       Some (List.map
               (fun (g,v) ->
                 match v with
                 | Some v -> {c with s = {ecxt = rest ; term = Expression (Val v)}; g = g}
                 (* This case was added for Print and other functions with VOID return *)
                 | None ->  {c with s = {ecxt = rest ; term = Regular}; g = g} 
               )
               results)
    | Expression (Val _) , [] -> (*VK:[] (* TODO: base case? *)*)
       None
    | Expression (Str _) , E_OpApp _ :: _ -> print_error "op app with strings not handled yet"
  
    (*----- FAIL -----*)
    | _ , _ -> print_error "error!"

  (** Big step function for one configuration *)
  let rec big_step_one (c : red_conf) : (bool * (red_conf list)) =
    if !debug_flags.print_confs then
      begin
        Format.print_string "--- BEGIN: PRINTING CONFIGURATION ---";
        Format.force_newline ();
        PrettyPrinter.print_cek_term c.s;
        Format.print_string "--- END: PRINTING CONFIGURATION ---";
        Format.force_newline ();
        Format.force_newline ();
      end;
    (match focus c with
     | None ->
        (match reduce c with
         | None -> (true, c :: [])
         | Some cs -> (false, cs))
     | Some c1 -> big_step_one c1)

  (** Big step function for multiple configurations *)
  let rec big_step_many (eval_confs : red_conf list) (stuck_confs : red_conf list) : (red_conf list) =
    let (new_eval_cs, new_stuck_cs) = 
      (List.fold_right (fun conf (next_eval_cs, stuck_cs) ->
           match big_step_one conf with
           | (true, cs) -> (next_eval_cs, cs @ stuck_cs)
           | (false, next_cs) -> (next_cs @ next_eval_cs, stuck_cs)) eval_confs ([], stuck_confs)) in
    (match new_eval_cs with
     | [] -> new_stuck_cs (* all configurations are stuck, exit *)
     | _  -> big_step_many new_eval_cs new_stuck_cs) (* more configs to eval, continue *)

  let evaluate s = 
    let _ = big_step_many ((empty_red_conf s)::[]) [] in
    ()
  
end
