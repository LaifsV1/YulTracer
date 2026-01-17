(** File Containing AST modules for Yul
    @author Yu-Yang Lin
    created 13-Apr-2024

    We define Yul reduction semantics as a CEK machine.

    See PDF for our small-step and big-step semantics. We follow the small-step
    semantics to create a CEK machine for Yul with a given dialect.
 *)

open Ast
open Utils

(** Functor that implements a parametric CEK Machine for Yul so that it is modular
    on different dialects. It requires a Dialect to be instantiated. *)
module YulCEK (D : Dialect) = struct
  open D
  module YulAST_w_D = YulAST(D)
  module YulCEK_conf_w_D = YulEvalConf(D)
  open YulAST_w_D
  open YulCEK_conf_w_D
  module PrettyPrinter = Pretty_printer.YulPrettyPrinter(D)
  open PrettyPrinter

  type debug_flags = {print_confs : bool; print_stmts : bool;
                      print_trace : bool; print_warnings : bool}
  let debug_flags = ref {print_confs = false; print_stmts = false;
                         print_trace = false; print_warnings = false;}
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
  let reduce (c : red_conf) :(red_conf status) =

    (* auxiliary function to print the call history *)
    let print_call_history () =
      if !debug_flags.print_warnings then
        begin
          if c.call_history <> [] then
            begin
              let call_history = string_of_list Fun.id "\n" c.call_history in
              print_endline "\x1b[1;34m[INFO]\x1b[0m Printing stack trace...";
              print_endline call_history;
            end
        end
    in
    
    (* auxiliary function to print a warning if the EOF was reached *)
    let print_unexpected_eof () =
      if !debug_flags.print_warnings then
        print_endline "\x1b[1;33mWARNING!\x1b[0m unexpected EOF! missing terminal instruction (return, stop, revert, selfdestruct) -- reverting!"
    in
    
    (* auxiliary function to print the CEK term on error *)
    let print_error msg =
      Format.print_string "Last CEK term seen:\n";
      print_cek_term c.s;
      Format.force_newline ();
      Error.report_error_f "[reductions]" msg
    in

    (* auxiliary function to report errors *)
    let report_error_if b msg = if b then print_error msg in
    
    (* auxiliary function to handle opcodes *)
    let generic_op_call op args new_ecxt =
      let mk_conf_from_return ret f =
        match ret.v with
        (* VALUED return *)
        | Some v -> f {c with s = {ecxt = new_ecxt ; term = Expression (Val v)}; g = ret.g}
        (* VOID return *)
        | None -> f {c with s = {ecxt = new_ecxt ; term = Regular}; g = ret.g}
      in
      begin
        match D.opcode_dispatcher c.g op args print_call_history with
        | Running rets -> Running (List.map (fun ret -> mk_conf_from_return ret Fun.id) rets)
        | Stuck ret -> mk_conf_from_return ret (fun x -> Stuck x)
        | Done ret -> mk_conf_from_return ret (fun x -> Done x)            
      end
    in
    
    match c.s.term , c.s.ecxt with
      
    (*----- BLOCK PATTERNS -----*)
    | Regular , [] -> (* Base Case ? *)
       print_unexpected_eof (); Done c 
    | Block [] , ecxt -> Running ({c with s = {ecxt = ecxt ; term = Regular}} :: [])
    | Block (b::bs) , ecxt ->
       Running ({c with s = {ecxt = S_Block (bs, c.l , c.n) :: ecxt ; term = b} ;
                        n = funs c.n (b::bs)} :: [])
    | Regular , S_Block (b::bs, l , n) :: rest ->
       Running ({c with s = {ecxt = S_Block (bs, l , n) :: rest ; term = b}} :: [])
    | Break , S_Block (_ , l , n) :: rest
      | Continue , S_Block (_ , l , n) :: rest
      | Leave , S_Block (_ , l , n) :: rest
      | Regular , S_Block ([], l , n) :: rest ->
       let new_l = restrict_l c.l l in
       Running ({c with s = {ecxt = rest ; term = c.s.term} ; l = new_l ; n} :: [])
    | Function (id,_) , ecxt ->
       Running ({c with s = {ecxt = ecxt ; term = Regular} ; call_history = id :: c.call_history} :: [])
  
    (*----- ASSIGNMENT PATTERNS -----*)
    | Expression (Tuple vs) , S_LetNew is :: rest ->
       report_error_if (List.length is <> List.length vs) "declaration — identifier tuple cannot be empty.";
       begin
         match List.find_opt (fun key -> IdentMap.mem key c.l) is with
         | None -> ()
         | Some i -> print_error (Printf.sprintf "declaration — identifier <%s> already in scope." i)
       end;
       let new_l =
         List.fold_left (fun acc (i,v) -> IdentMap.add i v acc) c.l (List.combine is vs)
       in
       Running ({c with s = {ecxt = rest ; term = Regular} ; l = new_l} :: [])
    | Expression (Tuple vs) , S_Assign is :: rest ->
       report_error_if (List.length is <> List.length vs) "assignment — identifier tuple cannot be empty.";
       begin
         match List.find_opt (fun key -> not (IdentMap.mem key c.l)) is with
         | None -> ()
         | Some i -> print_error (Printf.sprintf "assignment — identifier <%s> not in scope." i)
       end;
       let new_l =
         List.fold_left (fun acc (i,v) -> IdentMap.add i v acc) c.l (List.combine is vs)
       in
       Running ({c with s = {ecxt = rest ; term = Regular} ; l = new_l} :: [])
    | Expression (Tuple vs) , _ ->
       print_error                                                                     (* report error *)
         (Printf.sprintf "malformed term <%s> — value tuples can only exist in assignments."
            (string_of_expression (Tuple vs)))
    | Expression (Val v) , S_LetNew [i] :: rest ->
       report_error_if (IdentMap.mem i c.l)                                            (* report error *)
         (Printf.sprintf "declaration — identifier <%s> already in scope.\n" i);
       let new_l = IdentMap.add i v c.l in
       Running ({c with s = {ecxt = rest ; term = Regular} ; l = new_l} :: [])
    | Expression (Val v) , S_Assign [i] :: rest ->
       report_error_if (not (IdentMap.mem i c.l))                                      (* report error *)
         (Printf.sprintf "assignment — identifier <%s> not in scope.\n" i);
       let new_l = IdentMap.add i v c.l in
       Running ({c with s = {ecxt = rest ; term = Regular} ; l = new_l} :: [])
    | Expression (Val v) , S_LetNew is :: _ | Expression (Val v) , S_Assign is :: _ ->
       print_error                                                                     (* report error *)
         (Printf.sprintf "malformed term — can't assign singleton value <%s> to a tuple <%s>.\n"
            (string_of_expression (Val v))
            (string_of_ids is))
  
    (*----- FOR LOOP PATTERNS -----*)
    | For (b1::bs,m,sp,sb) , ecxt ->
       Running ({c with s = {ecxt = ecxt ;
                             term = Block (b1 :: (bs @ [For ([],m,sp,sb)]))}} :: [])  
    | For ([],m,sp,sb) , ecxt ->
       (* don't add S_Brk if a subsequent one exists in the evaluation context *)
       if subsequent_s_brk ecxt then
         Running ({c with s = {c.s with
                                term = If (m, [Cnt (Block sb) ; (Block sp) ; For ([],m,sp,sb)])}} :: [])
       else
         Running ({c with s = {ecxt = S_Brk :: ecxt ;
                               term = If (m, [Cnt (Block sb) ; (Block sp) ; For ([],m,sp,sb)])}} :: [])
    | Continue , S_Cnt :: rest -> 
       Running ({c with s = {ecxt = rest ; term = Regular}} :: [])
    | Regular , S_Cnt :: rest
      | Break , S_Cnt :: rest
      | Leave , S_Cnt :: rest -> 
       Running ({c with s = {ecxt = rest ; term = c.s.term}} :: [])
    | Break , S_Brk :: rest -> 
       Running ({c with s = {ecxt = rest ; term = Regular}} :: [])
    | Regular , S_Brk :: rest 
      | Leave , S_Brk :: rest ->
       Running ({c with s = {ecxt = rest ; term = c.s.term}} :: [])
    | Continue , S_Brk :: _ -> print_error "found Continue in Break context"
  
    (*----- CONDITIONAL PATTERNS -----*)
    | Expression (Val v) , S_If b :: rest ->
       begin
         match D.get_bool v with
         | Some bool ->
            if bool
            then Running ({c with s = {ecxt = rest ; term = Block b}} :: [])
            else Running ({c with s = {ecxt = rest ; term = Regular}} :: [])
         | None ->
            let true_c =
              D.check_sat_true c.g v
              >>= fun g -> Some {c with s = {ecxt = rest ; term = Block b}; g = g}
            in
            let false_c =
              D.check_sat_false c.g v
              >>= fun g -> Some {c with s = {ecxt = rest ; term = Regular}; g = g}
            in
            Running (append_some true_c (append_some false_c []))
       end

    (*----- CASE SWITCHING PATTERNS -----*)
    | Expression (Val v) , S_Switch (cs,d) :: rest ->
       if D.is_symbolic v then
         begin
           (* symbolic case (v is symbolic):
              for every vi in cases and previous g:
              1. check if SAT(vi ==. v && previous g):
              -- if (vi ==. v) then add the case with new g to the list
              2. check if SAT(vi <>. v && previous g):
              -- if (vi <>. v) update previous g with new g, and go to v{i+1}
              3. as the base case, if non-None g is left:
              -- add DEFAULT case with previous g.

              note:
              - [confs]: the list of configurations to return in the end
              - [prev_g]: an option monad for g that threads around vi <>. v to the next operation
            *)
           let f (confs,prev_g) (vi,bi) =
             let new_cases =
               (* cases added when vi ==. v is SAT *)
               let vi_v_eq_conf =
                 prev_g >>=
                   (fun prev_g -> D.check_sat_eq prev_g v vi) >>=
                   (fun gi_eq -> Some ({c with s = {ecxt = rest ; term = Block bi}; g = gi_eq}))
               in
               append_some vi_v_eq_conf confs
             in
             let new_g =
               (* prev_g updated when vi <>. v is SAT *)
               prev_g >>=
                 (fun prev_g -> D.check_sat_neq prev_g v vi) >>=
                 (fun gi_neq -> Some gi_neq)
             in
             new_cases , new_g
           in
           let new_confs,neq_g = List.fold_left f ([], Some c.g) cs in
           let default_case =
             neq_g >>= (fun g' -> Some {c with s = {ecxt = rest ; term = Block d}; g = g'})
           in
           Running (append_some default_case new_confs)
         end
       else
         (* concrete case (v is concrete) *)
         let stmt = get_case v (cs,d) in
         Running ({c with s = {ecxt = rest ; term = stmt}} :: [])
  
    (*----- DEREFERENCING PATTERNS -----*)
    | Expression (Var i) , ecxt ->
       begin
         match IdentMap.find_opt i c.l with 
         | Some v -> Running ({c with s = {ecxt = ecxt ; term = Expression (Val v)}} :: [])
         | None -> print_error "identifier not found in L"
       end
  
    (*----- FUNCTION APPLICATION PATTERNS -----*)
    | Expression (FunApp (f , [])) , ecxt -> (* function with no args? *)
       begin
         match IdentMap.find_opt f c.n with
         | Some func ->
            let new_l = new_fun_app_store func [] in
            Running ({c with s = {ecxt = E_Scope (func.rets,c.l) :: ecxt ; term = Block func.body};
                             l = new_l;
                             call_history = f :: c.call_history} :: [])
         | None -> print_error (Printf.sprintf "unknown function <%s>" f)
       end
    | Expression (Val v) , E_FunApp (f,vs,[]) :: rest -> (* no expressions left *) 
       begin
         match IdentMap.find_opt f c.n with
         | Some func ->
            (* NOTE: no need to reverse value list because it was reversed at parse-time *)
            let new_l = new_fun_app_store func (v::vs) in
            Running ({c with s = {ecxt = E_Scope (func.rets,c.l) :: rest ; term = Block func.body} ;
                             l = new_l;
                             call_history = f :: c.call_history} :: [])
         | None -> print_error (Printf.sprintf "unknown function <%s>" f)
       end
    | Expression (Val v) , E_FunApp (f,vs,e::es) :: rest -> (* expressions left *)
       (* NOTE: args were reversed at parse-time, so the value list is unreversed. *)
       Running ({c with s = {ecxt = E_FunApp (f,v::vs,es) :: rest ; term = Expression e}} :: [])
  
    (*----- FUNCTION RETURN PATTERNS -----*)
    | Leave , E_Scope ([] , l) :: rest 
      | Regular , E_Scope ([] , l) :: rest -> (* VOID RETURN *)
       Running ({c with s = {ecxt = rest ; term = Regular} ; l = l;
                        call_history = List.tl c.call_history} :: [])
    | Leave , E_Scope (z :: [], l) :: rest
      | Regular , E_Scope (z :: [], l) :: rest -> (* SINGLETON RETURN *)
       begin
         match IdentMap.find_opt z c.l with
         | Some v -> Running ({c with s = {ecxt = rest ; term = Expression (Val v)} ; l = l;
                                      call_history = List.tl c.call_history} :: [])
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
       Running ({c with s = {ecxt = rest ; term = Expression (Tuple vs)} ; l = l;
                        call_history = List.tl c.call_history} :: [])
  
    (*----- OP CALL PATTERNS -----*)
    | Expression (OpApp (op , [])) , ecxt ->
       generic_op_call op [] ecxt
    | Expression (Val v) , E_OpApp (op, vs , []) :: rest ->
       generic_op_call op (v::vs) rest
    | Expression (Str s) , E_OpApp (op, vs, []) :: rest ->
       begin
         if D.is_data_opcode op then           
           (* DATA FUNCTIONS *)
           begin
             match vs with
             | [] -> generic_op_call op [D.val_of_object_name c.g s] rest
             | _ -> print_error "expected singleton string argument for data functions"
           end
         else
           (* OP CALL WITH A ASCII STRING LITERAL ARGUMENT *)
           begin
             let v = D.value_of_ascii_literal s in
             generic_op_call op (v::vs) rest
           end
       end
    | Expression (Val v) , E_OpApp (f,vs,e::es) :: rest -> (* expressions left *)
       (* NOTE: args were reversed at parse-time, so the value list is unreversed. *)
       Running ({c with s = {ecxt = E_OpApp (f,v::vs,es) :: rest ; term = Expression e}} :: [])
    | Expression (Str s) , E_OpApp (f,vs,e::es) :: rest -> (* expressions left *)
       (* NOTE: args were reversed at parse-time, so the value list is unreversed. *)
       let v = D.value_of_ascii_literal s in (* case for ASCII string literal in list of args *)
       Running ({c with s = {ecxt = E_OpApp (f,v::vs,es) :: rest ; term = Expression e}} :: [])
    | Expression (Val _) , [] -> (*VK:[] (* TODO: base case? *)*)
       print_unexpected_eof (); Done c
   
    (*----- FAIL -----*)
    | _ , _ -> print_error "malformed term — no matching reduction rule!"

  (** Big step function for one configuration *)
  let rec big_step_one (c : red_conf) : (red_conf status) =
    if !debug_flags.print_stmts then
      begin
        Format.print_string "--- BEGIN: PRINTING STATEMENT ---";
        Format.force_newline ();
        PrettyPrinter.print_cek_term c.s;
        Format.print_string "--- END: PRINTING STATEMENT ---";
        Format.force_newline ();
        Format.force_newline ();
      end;
    match focus c with
    | None -> reduce c
    | Some c1 -> big_step_one c1

  (** type for the result of big-step reductions *)
  type yul_result = {stuck_confs : red_conf list ; done_confs : red_conf list}
  let add_stuck confs c = {confs with stuck_confs = c :: confs.stuck_confs}
  let add_done confs c = {confs with done_confs = c :: confs.done_confs}
  let empty_yul_result = {stuck_confs = [] ; done_confs = []}
  
  (** Big step function for multiple configurations. Returns all confs that cannot be evaluated further.
      NOTE: a bound can be added here. *) 
  let rec big_step_many (pending_confs : red_conf list) (result_confs : yul_result) : (yul_result) =
    let (new_pending, new_results) =
      let f (acc_pending, acc_results) conf =
        match big_step_one conf with
        | Stuck   c  -> (acc_pending, add_stuck acc_results c)
        | Done    c  -> (acc_pending, add_done acc_results c)
        | Running cs -> (cs @ acc_pending, acc_results) (* NOTE: cs @ acc = BFS because reversed by foldl *)
      in
      List.fold_left f ([], result_confs) pending_confs (* NOTE: FOLD LEFT = BFS *)
    in
    match new_pending with
    | [] -> new_results                           (* no confs to eval, return stuck confs *)
    | _  -> big_step_many new_pending new_results (* confs to eval, recursive call *)

  (** function to evaluate a CEK red_conf list.
      returns struct with lists of stuck and done confs. *)
  let evaluate c :(yul_result) = big_step_many [c] empty_yul_result

  (** function to evaluate a given object:
      - o: object to evaluate
      - f: configuration function parsed from inifile
      returns record with lists of stuck and done configurations 
   *)
  let evaluate_object o f deploy_address deploy_gas = evaluate (init_red_conf o f deploy_address deploy_gas)
end
