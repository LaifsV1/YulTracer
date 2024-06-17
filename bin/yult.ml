(** Temporary Main file for YulTracer
    @author Yu-Yang Lin
    created 24-Apr-2024
 *)

open Lexing
open Yul_evm_shanghai_parser
open Yulinterpreter
open Yul_interpreter.YulEvmInterpreter

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

let just_parse = ref false
let verbose    = ref false
let debug      = ref ""
let inputFile  = ref "<stdin>"
let bound      = ref 12
let memo_size  = ref 10000

let parse_debug str :(CEK.debug_flags) =
  let contains c = String.contains str c in
  let print_confs = contains 'c' in
  {print_confs}

let main =
  begin
    let def_msg_s = Printf.sprintf "%s (default: \"%s\")" in
    (* let def_msg_i msg i = def_msg_s msg (string_of_int i) in *)
    let def_msg_b msg b = def_msg_s msg (string_of_bool b) in
    let speclist =
      [
        ("-d", Arg.Set_string debug,
         (def_msg_s "debug mode: e.g. \"c\" to print \n    [c]onfigurations" !debug));
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
    
    (* Opening the file *)
    let input = if (!inputFile = "<stdin>") then stdin else open_in !inputFile in
    (* Lexing *)
    let filebuf = Lexing.from_channel input in
    try
      (* Parsing *)
      let pgm = Parser.main Lexer.token filebuf  in
      let verbose_parse () =
        Format.print_string "--- BEGIN: PROGRAM PARSED ---";
        Format.force_newline ();
        (match pgm with
         | YulCode code  -> print_code code
         | YulObject pgm -> print_object pgm
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
          set_flags debug_flags;

          (* Evaluate program *)
          let _ =
            match pgm with
            | YulCode code -> evaluate code
            | YulObject pgm -> evaluate pgm.code
          in
          ()
        end
    with
    | Parser.Error -> 
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
