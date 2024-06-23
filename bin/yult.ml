(** Main file for YulTracer
    @author Yu-Yang Lin
    created 24-Apr-2024
 *)

open Lexing
open Yul_parser
open Yulinterpreter

(* report_error: string -> lexbuf -> string -> unit
Fucntion printing an error
Parameters:
  - filename: path of the file 
  - lexbuf: lexer buffer
  - msg: message to print
 *)
let report_error filename lexbuf msg =
  let (b,e) = (lexeme_start_p lexbuf, lexeme_end_p lexbuf) in
  let fc = b.pos_cnum - b.pos_bol + 1 in
  let lc = e.pos_cnum - b.pos_bol + 1 in
  Printf.eprintf "File \"%s\", line %d, characters %d-%d: %s\n" filename b.pos_lnum fc lc msg

(*======================*)
(* DEFINE DIALECTS HERE *)
let evm_shanghai = "evm_shanghai"
(* e.g. let new_dialect = "new_dialect" *)
let get_dialect s :(module Yul_ast.Dialect) =
  match s with
  | c when c = evm_shanghai -> (module Yul_interpreter.EvmDialect)
  (* MATCH DIALECTS HERE. e.g.:
     | c with c = new_dialect -> (module Yul_interpreter.NewDialect) *)
  | _ -> failwith (Printf.sprintf "invalid dialect <%s> selected" s)
(*======================*)

(* OPTIONS *)
let just_parse = ref false
let verbose    = ref false
let debug      = ref ""
let inputFile  = ref "<stdin>"
let bound      = ref 12
let memo_size  = ref 10000
let dialect    = ref evm_shanghai

let main =
  begin
    let def_msg_s = Printf.sprintf "%s (default: \"%s\")" in
    (* let def_msg_i msg i = def_msg_s msg (string_of_int i) in *)
    let def_msg_b msg b = def_msg_s msg (string_of_bool b) in
    let speclist =
      [
        ("-d", Arg.Set_string debug,
         (def_msg_s "debug mode: e.g. \"c\" to print \n\t[c]onfigurations" !debug));
        (*======================*)
        (* ADD NEW DIALECT TO HELP MENU HERE: *)
        ("-dialect", Arg.Set_string dialect,
         (def_msg_s "e.g.\"evm_shanghai\"" !dialect));
        (*======================*)
        ("-i", Arg.Set_string (inputFile),
         (def_msg_s "input file" !inputFile));
        (* ("-b", Arg.Set_int (bound),
         *  (def_msg_i "bound for function applications" !bound));
         * ("-memo", Arg.Set_int (memo_size),
         *  (def_msg_i "size of memoisation map" !memo_size)); *)
        ("-v", Arg.Set verbose,
         (def_msg_b "verbose output" !verbose));
        ("-p", Arg.Set just_parse,
         (def_msg_b "run parser and output parsed program only" !just_parse))
      ]
    in
    let usage_msg = "YulTracer -- Yul interpreter with symbolic execution" in
    Arg.parse speclist print_endline usage_msg;
    let verbose_intro () = 
      print_endline "****************";
      Printf.printf "Debug mode: %s\n" !debug;
      Printf.printf "Input file: %s\n" !inputFile;
      (* Printf.printf "Bound: %d\n"      !bound;
       * Printf.printf "Memoisation cache size: %d\n" !memo_size; *)
      print_endline "****************";
    in
    if !verbose then verbose_intro ();

    (* DIALECT SELECTOR AND MODULE INSTANTIATION USING DIALECT *)
    let (module Dialect) = get_dialect !dialect in
    let module DialectParser = Parser.Make(Dialect) in
    let module DialectInterpreter = Yul_interpreter.Interpreter(Dialect) in
    let parse_debug str :(DialectInterpreter.CEK.debug_flags) =
      let contains c = String.contains str c in
      let print_confs = contains 'c' in
      {print_confs}
    in

    (* START PARSING AND EVALUATING THE PARSED FILE *)
    (* Opening the file *)
    let input = if (!inputFile = "<stdin>") then stdin else open_in !inputFile in
    (* Lexing *)
    let filebuf = Lexing.from_channel input in
    try
      (* Parsing *)
      let pgm = DialectParser.main Lexer.token filebuf  in
      let verbose_parse () =
        Format.print_string "--- BEGIN: PROGRAM PARSED ---";
        Format.force_newline ();
        (match pgm with
         | YulCode code  -> DialectInterpreter.print_code code
         | YulObject pgm -> DialectInterpreter.print_object pgm
        );
        Format.print_string "--- END: PROGRAM PARSED ---";
        Format.force_newline ();
        Format.force_newline ();
      in
      if !just_parse then verbose_parse () else
        begin
          if !verbose then verbose_parse ();

          (* Set flags *)
          let debug_flags = parse_debug !debug in
          DialectInterpreter.set_flags debug_flags;

          (* Evaluate program *)
          let _ =
            match pgm with
            | YulCode code -> DialectInterpreter.evaluate code
            | YulObject pgm -> DialectInterpreter.evaluate pgm.code
          in
          ()
        end
    with
    | DialectParser.Error -> 
       Error.report_error_f_lex !inputFile (Lexer.get_lex_start_end_p filebuf)
         (Printf.sprintf "Parsing Error. Last seen: %s" (Lexing.lexeme filebuf))
    | Error.LexE (lex_pos, m)
      | Error.ParseE (lex_pos, m) ->
       Error.report_error_f_lex !inputFile lex_pos ("Parsing Error: " ^ m)
    | Error.SyntaxE (lex_pos_opt, m)
      | Error.TypeE (lex_pos_opt, m)
      | Error.RuntimeE (lex_pos_opt, m) ->
       begin
         match lex_pos_opt with
         | None -> Error.report_error_f !inputFile ("Typing Error: " ^ m)
         | Some lex_pos -> Error.report_error_f_lex !inputFile lex_pos ("Typing Error: " ^ m)
       end
  end

let () = main
