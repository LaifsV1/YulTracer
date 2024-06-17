(** Pretty Printer for Yul Objects
    @author Yu-Yang Lin
    created 25-Apr-2024

    Pretty Printer for Yul using OCaml's Format library to infer indentation.
    We define the module as a functor to make it dialect agnostic.
 *)
open Yul_ast
open Format

(** Functor that implements a Pretty Printer for Yul *)
module YulPrettyPrinter (D : Dialect) = struct
  module YulAst_with_Dialect = YulAST(D)
  open YulAst_with_Dialect
  module YulEvalConf_with_Dialect = YulEvalConf(D)
  open YulEvalConf_with_Dialect
  
  (** generic printing function *)
  let pr = print_string

  (** function to print indentation. useful for formating. *)
  let indent () = pr "  "

  (** print value *)
  let print_value v = pr (D.string_of_value v)
  
  (** prints a comma *)
  let print_comma () = pr ", "

  (** prints a list *)
  let rec print_list print_fun delim ls =
    match ls with
    | [] -> ()
    | [a] -> print_fun a
    | (x :: xs) -> print_fun x; delim (); print_list print_fun delim xs

  (** prints an identifier *)
  let print_ident str =
    pr str

  (** prints a list of identifiers *)
  let print_ident_list ls = print_list print_ident print_comma ls

  (** functions to print Statements and Expressions *)
  let rec print_statement statement' =
    match statement' with
    | Block ss ->
       (* {%s} *)
       pr "{";
       force_newline ();
       indent ();
       open_hovbox 0;
       print_list print_statement force_newline ss;
       close_box ();
       force_newline ();
       pr "}";
       print_cut ();
    | Function (id , {args ; rets ; body}) ->
       (* function %s(%s) %s %s *) 
       pr "function ";
       pr id ;
       pr "(";
       print_ident_list args;
       pr ")";
       (match rets with
        | [] -> ()
        | ls -> pr " -> ";
                print_ident_list ls);
       print_space ();
       (print_statement (Block body))
    | LetNew (ids , exp) ->
       (* let %s := %s *)
       pr "let ";
       print_ident_list ids;
       pr " := ";
       print_expression exp
    | Assign (ids,exp) ->
       (* %s := %s *)
       print_ident_list ids;
       pr " := ";
       print_expression exp
    | If (cond,body) ->
       (* if %s %s *)
       pr "if ";
       print_expression cond;
       print_space ();
       print_statement (Block body)
    | Expression expr ->
       print_expression expr
    | Switch (cond,cases,default) ->
       let print_case (value,body) =
         (* case %s %s *)
         pr "case ";
         print_value value;
         print_space ();
         print_statement (Block body)
       in
       let print_cases ls =
         print_list print_case force_newline ls
       in
       (* switch %s %s %s *)
       pr "switch ";
       print_expression cond;
       print_space ();
       print_cases cases;
       (* default %s *)
       pr "default ";
       print_statement (Block default)
    | For (init,cond,post,body) ->
       (* for %s %s %s %s *)
       pr "for ";
       print_statement (Block init);
       print_space ();
       print_expression cond;
       print_space ();
       print_statement (Block post);
       print_space ();
       print_statement (Block body)
    | Break -> pr "break"
    | Continue -> pr "continue"
    | Leave -> pr "leave"
    | Regular -> pr "regular"
    | Cnt s ->
       pr " [[ ";
       print_statement s;
       pr " ]]_cnt "
  and print_expression expression' =
    match expression' with
    | FunApp (id,args) ->
       (* %s(%s) *)
       pr id;
       pr "(";
       print_list print_expression print_comma args;
       pr ")"
    | OpApp  (opcode,args) ->
       (* %s(%s) *)
       (match D.string_of_opcode_opt opcode with
        | None -> failwith "print_opcode"
        | Some str -> pr str);
       pr "(";
       print_list print_expression print_comma args;
       pr ")"
    | Val v -> print_value v
    | Var i -> pr i
    | Str s ->
       pr "\"";
       pr s;
       pr "\""
    | Tuple vs ->
       pr "<";
       List.iter (fun v -> print_value v) vs;
       pr ">"

  (** functions to print Yul Objects *)
  let rec print_yul_object {name;code;contents} =
    (* object %s { code %s %s } *)
    pr "object ";
    pr "\"";
    pr name;
    pr "\"";
    pr " {";
    force_newline ();
    indent ();
    open_hovbox 0;
    pr "code ";
    print_statement code;
    force_newline ();
    print_list print_yul_content force_newline contents;
    close_box ();
    force_newline ();
    pr "}";
    print_cut (); 
  and print_yul_data (str,data) =
    pr "data";
    print_space ();
    pr "\"";
    pr str;
    pr "\"";
    print_space ();
    match data with
    | Hex str ->
       begin
         pr "hex";
         pr "\"";
         pr str;
         pr "\"";
       end
    | Str str -> pr str
  and print_yul_content = function
    | Object obj -> print_yul_object obj
    | Data   dat -> print_yul_data   dat

  let print_hole () = pr "[ . ]"
  
  let print_eval_frame ecxt =
    match ecxt with
    | S_Block (ss, _, _) ->
       (* {[ . ] , %s}_(L,N) *)
       pr "{";
       print_space ();
       open_hovbox 0;
       print_hole ();
       if ss <> [] then (print_comma (); print_space ());
       print_list
         print_statement
         (fun () ->
           print_comma ();
           print_space ()) ss;
       close_box ();
       print_space ();
       pr "}";
       pr "_(L,N)";
       print_space ();
       print_cut ()
    | S_LetNew ids ->
       (* let %s := [ . ] *)
       pr "let ";
       print_ident_list ids;
       pr " := ";
       print_hole ()
    | S_Assign ids ->
       (* %s := [ . ] *)
       print_ident_list ids;
       pr " := ";
       print_hole ()
    | S_Cnt ->
       pr " [[ ";
       print_hole ();
       pr " ]]_cnt "
    | S_Brk ->
       pr " [[ ";
       print_hole ();
       pr " ]]_brk "
    | S_If body ->
       (* if [ . ] %s *)
       pr "if ";
       print_hole ();
       print_space ();
       print_statement (Block body)
    | S_Switch (cases,default) ->
       let print_case (value,body) =
         (* case %s %s *)
         pr "case ";
         print_value value;
         print_space ();
         print_statement (Block body)
       in
       let print_cases ls =
         print_list print_case force_newline ls
       in
       (* switch [ . ] %s %s *)
       pr "switch ";
       print_hole ();
       print_space ();
       print_cases cases;
       (* default %s *)
       pr "default ";
       print_statement (Block default)
    | E_FunApp (id, args_reduced, args_to_reduce) -> (* value list in reverse *)
       (* %s(%s , [ . ], %s) *)
       pr id;
       pr "(";
       print_list print_value print_comma args_reduced;
       if args_reduced <> [] then print_comma ();
       print_hole ();
       if args_to_reduce <> [] then print_comma ();
       print_list print_expression print_comma args_to_reduce;
       pr ")"
    | E_OpApp (opcode,args_reduced,args_to_reduce) -> (* value list in reverse *)
       (* %s(%s , [ . ] , %s) *)
       (match D.string_of_opcode_opt opcode with
        | None -> failwith "print_opcode"
        | Some str -> pr str);
       pr "(";
       print_list print_value print_comma args_reduced;
       if args_reduced <> [] then print_comma ();
       print_hole ();
       if args_to_reduce <> [] then print_comma ();
       print_list print_expression print_comma args_to_reduce;
       pr ")"
    | E_Scope (rets, _) -> 
       (* (| [ . ] |)_(%s, L) *)
       pr "(|";
       print_hole ();
       pr "|)";
       pr "_";
       pr "(";
       print_ident_list rets;
       pr ";";
       pr "L";
       pr ")"

  let print_cek_term {ecxt ; term} =
    pr "<<";
    force_newline ();
    pr "[statement]:";
    force_newline ();
    indent ();
    open_hovbox 0;
    print_statement term;
    close_box ();
    force_newline ();
    pr "[context]:";
    force_newline ();
    indent ();
    open_hovbox 0;
    print_list
      print_eval_frame
      (fun () -> pr "::"; print_space ()) ecxt;
    close_box ();
    force_newline ();
    pr ">>";
    force_newline ();
    print_cut ()
end
