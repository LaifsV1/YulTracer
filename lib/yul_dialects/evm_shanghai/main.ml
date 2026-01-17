(** File that defines a main for the Game Semantics for EVM-Yul
    @author Yu-Yang Lin
      created 27-Feb-2025
 *)

open Games
open Yul_semantics

(*******************************************)
(* PARSING : REPLACES MAIN AND INTERPRETER *)
(*******************************************)

open Yul_parser
module EvmYulParser = Parser.Make(EvmDialect)

(* OPTIONS *)
let verbose      = ref false
let just_parse   = ref false
let game_mode    = ref false
let warnings     = ref false
let debug        = ref ""
let input_file   = ref ""
let memo_size    = ref 0
let o_def_bal    = ref "10_000_000_000_000_000_000"  (* 10 ETH *)
let o_def_spend  = ref "1_000"                       (* 1000 WEI *)
let no_wait      = ref false
let do_bfs       = ref false
let start_time   = ref 0
let wait_time    = ref 7
let max_time     = ref 22

(** function to set flags. order: verbose; just_parse; debug; input_file *)
let set_flags (a,b,c,d,e) =
  (* set flags *)
  verbose    := a;
  just_parse := b;
  debug      := c;
  input_file := d;
  game_mode  := e;
  ()

(** function to parse and start the symbolic execution game *)
let parse_and_begin_game
      filebuf ini_reader abi_list full_abi_list
  =
  
  (* set warnings *)
  if !warnings then Init.print_warning := print_endline;

  (* set debug flags *)
  let parse_debug str :(EvmYulCEK.debug_flags) =
    let contains c = String.contains str c in
    let print_confs = contains 'c' in
    let print_stmts = contains 's' in
    let print_trace = contains 't' in
    {print_confs ; print_stmts; print_trace; print_warnings = !warnings}
  in
  
  (* try-catch block to start the game *)
  try
    
    (* parser program *)
    let pgm = EvmYulParser.main Lexer.token filebuf in

    (* verbose parser function *)
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

    (* just print the parsed file without executing if just_parse is on *)
    if !just_parse then verbose_parse () else

      begin
        (* print the program if verbose parse is on *)
        if !verbose then verbose_parse ();

        (* Set flags *)
        let debug_flags = parse_debug !debug in
        EvmYulCEK.set_flags debug_flags;
        
        (* Evaluate program *)
        match pgm with
        | YulCode   code -> let _ = evaluate_statement code ini_reader in ()
        | YulObject pgm  ->
           if !game_mode then
             (* if game_mode is on, then start the game *)
             start_game_from_object pgm ini_reader abi_list full_abi_list
               !o_def_bal !o_def_spend 
               !no_wait !wait_time !max_time !do_bfs !memo_size
           else
             (* otherwise, just evaluate the object without external interactions *)
             let _ = evaluate_object pgm ini_reader in ()
      end

  with
  (* generic parsing error with last token seen *)
  | EvmYulParser.Error ->
    (* let string_of_token : Tokens.token -> string = function *)
    (*   | IDENT s      -> Printf.sprintf "IDENT(%S)" s *)
    (*   | DATA s       -> Printf.sprintf "DATA(%S)" s *)
    (*   | STRING s     -> Printf.sprintf "STRING(%S)" s *)
    (*   | NUMBER s     -> Printf.sprintf "NUMBER(%S)" s *)
    (*   | BOOL b       -> Printf.sprintf "BOOL(%b)" b *)
    (*   | HEXLIT s     -> Printf.sprintf "HEXLIT(%S)" s *)
    (*   | SIGNATURE s  -> Printf.sprintf "SIGNATURE(%S)" s *)
    (*   | EOF          -> "EOF" *)
    (*   | LBRACE       -> "LBRACE" *)
    (*   | RBRACE       -> "RBRACE" *)
    (*   | FUNCTION     -> "FUNCTION" *)
    (*   | LPAREN       -> "LPAREN" *)
    (*   | RPAREN       -> "RPAREN" *)
    (*   | ARROW        -> "ARROW" *)
    (*   | LET          -> "LET" *)
    (*   | COLONEQUAL   -> "COLONEQUAL" *)
    (*   | IF           -> "IF" *)
    (*   | SWITCH       -> "SWITCH" *)
    (*   | CASE         -> "CASE" *)
    (*   | DEFAULT      -> "DEFAULT" *)
    (*   | FOR          -> "FOR" *)
    (*   | BREAK        -> "BREAK" *)
    (*   | CONTINUE     -> "CONTINUE" *)
    (*   | LEAVE        -> "LEAVE" *)
    (*   | COMMA        -> "COMMA" *)
    (*   | OBJECT       -> "OBJECT" *)
    (*   | CODE         -> "CODE" *)
    (* in *)
    (* Printf.printf "last token seen: <%s>\n" (string_of_token (Lexer.token filebuf));  *)
    Error.report_error_f_lex !input_file (Lexer.get_lex_start_end_p filebuf)
      (Printf.sprintf "Parsing Error. Last seen: %s" (Lexing.lexeme filebuf))

  (* lexical or parsing error with position *)
  | Error.LexE (lex_pos, m)
    | Error.ParseE (lex_pos, m) ->
     Error.report_error_f_lex !input_file lex_pos ("Parsing Error: " ^ m)

  (* syntax, type or runtime error with position *)
  | Error.SyntaxE (lex_pos_opt, m)
    | Error.TypeE (lex_pos_opt, m)
    | Error.RuntimeE (lex_pos_opt, m) ->
     begin
       match lex_pos_opt with
       | None -> Error.report_error_f !input_file ("Typing Error: " ^ m)
       | Some lex_pos -> Error.report_error_f_lex !input_file lex_pos ("Typing Error: " ^ m)
     end
