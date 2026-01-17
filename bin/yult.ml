Printexc.record_backtrace true

(** Main file for YulTracer
    @author Yu-Yang Lin
    created 24-Apr-2024
 *)

open Lexing
open Yul_semantics.Utils
open Inifiles
open Evm_shanghai
open Main

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

(* OPTIONS *)
let evm_shanghai  = "evm_shanghai"
let dialect       = ref evm_shanghai
let print_code    = ref false
let ini_file      = ref None
let abi_file      = ref None
let full_abi_file = ref None

let main =
  begin
    let indent = "\n      " in
    let def_msg printer msg v = Printf.sprintf " %s%s%s(default: %s)" indent msg indent (printer v) in
    let def_msg_s = def_msg (fun s -> Printf.sprintf "%S" s) in
    let def_msg_i = def_msg string_of_int in
    let def_msg_b = def_msg string_of_bool in
    let set_option ref_opt value = ref_opt := Some value in
    let speclist =
      [
        (* -- General flags ------------------------------------------------------- *)
        ("", Arg.Unit (fun () -> ()),"\nGENERAL FLAGS:"); (* DUMMY OPTION FOR LABEL *)
        ("-d",        Arg.Set_string debug,
         (def_msg_s
            "debug mode: e.g. \"cst\" to print \n\t[c]onfigurations \n\t[s]tatements \n\t[t]races"
            !debug));
        ("-v",        Arg.Set verbose,
         (def_msg_b "verbose output" !verbose));
        ("-warnings", Arg.Set warnings,
         (def_msg_b "enables printing warnings" !warnings));
        ("-memo", Arg.Set_int memo_size,
         (def_msg_i
            "size of memoisation set (in number of configurations remembered)" !memo_size));

        (* -- Input & configuration ----------------------------------------------- *)
        ("", Arg.Unit (fun () -> ()),"\nINPUT & CONFIGURATION:"); (* DUMMY OPTION FOR LABEL *)
        ("-i",       Arg.Set_string input_file,
         (def_msg_s "input file" !input_file));
        ("-ini",     Arg.String (set_option ini_file),
         "configuration file in INI format"^indent^"(default: not set)");
        ("-abi",     Arg.String (set_option abi_file),
         "ABI file in JSON format used for exploration"^indent^"(default: not set)");
        ("-full-abi",     Arg.String (set_option full_abi_file),
         "Complete ABI file in JSON format used for printing"^indent^"(default: not set)");
        ("-dialect", Arg.Set_string dialect,
         (def_msg_s "e.g. \"evm_shanghai\"" !dialect));

        (* -- Parsing & output modes ---------------------------------------------- *)
        ("", Arg.Unit (fun () -> ()),"\nPARSING & OUTPUT MODES:"); (* DUMMY OPTION FOR LABEL *)
        ("-parse", Arg.Set just_parse,
         (def_msg_b "run parser and output parsed program only" !just_parse));
        ("-code",  Arg.Set print_code,
         def_msg_b "print EVM.code after parsing INI file" !print_code);

        (* -- Execution modes ----------------------------------------------------- *)
        ("", Arg.Unit (fun () -> ()),"\nEXECUTION MODES:"); (* DUMMY OPTION FOR LABEL *)
        ("-bfs", Arg.Set do_bfs,
         def_msg_b "enables BFS instead of DFS" !do_bfs);
        ("-g", Arg.Set game_mode,
         def_msg_b
           "enable EVM Game Semantics to model external contracts"
           !game_mode);
        ("-sym", Arg.Set Games.o_symbolic_values,
         def_msg_b
           "turn on Symbolic Execution for EVM Shanghai"
           !Games.o_symbolic_values);

        (* -- Opponent (environment) CALL settings -------------------------------------- *)
        ("", Arg.Unit (fun () -> ()),"\nOPPONENT (ENVIRONMENT) CALL SETTINGS:"); (* DUMMY OPTION FOR LABEL *)
        ("-b",    Arg.Set_int Games.o_call_bound,
         (def_msg_i
            "call bound -- number of times each hash is allowed to be selected" !Games.o_call_bound));
        ("-o-address-count",   Arg.Set_int Games.o_address_count,
         (def_msg_i "number of opponent (environment) addresses to play the game with"
            !Games.o_address_count));
        ("-o-call-stack",      Arg.Set_int Games.o_call_stack_bound,
         (def_msg_i "max call stack depth allowed during an opponent call" !Games.o_call_stack_bound));
        ("-o-default-balance", Arg.Set_string o_def_bal,
         (def_msg_s "(string) default starting balance (in WEI) for each opponent address" !o_def_bal));
        ("-o-default-spending",Arg.Set_string o_def_spend,
         (def_msg_s "(string) default amount of WEI an opponent can send per transaction" !o_def_spend));
        ("-o-ret",             Arg.Set Games.o_return_values,
         (def_msg_b "enable opponent return values" !Games.o_return_values));
        ("-o-uint-domain",  Arg.Set_string Games.o_domains_uints,
         (def_msg_s "(comma-separated string) list of uint256 the opponent can use as arguments"
            !Games.o_domains_uints));
        ("-o-address-domain",  Arg.Set_string Games.o_domains_addrs,
         (def_msg_s "(comma-separated string) list of addresses the opponent can use as arguments"
            !Games.o_domains_addrs));

        (* -- Opponent (environment) TIME settings -------------------------------------- *)
        ("", Arg.Unit (fun () -> ()),"\nOPPONENT (ENVIRONMENT) TIME SETTINGS:"); (* DUMMY OPTION FOR LABEL *)
        ("-no-wait",           Arg.Set no_wait,
         (def_msg_b "disables opponent waiting moves" !no_wait));
        ("-wait-time",         Arg.Set_int wait_time,
         (def_msg_i "time (in days) that passes per opponent wait" !wait_time));
        ("-max-time",          Arg.Set_int max_time,
         (def_msg_i "maximum cumulative time (in days) the opponent is allowed to wait" !max_time));
        ("-wait-first",        Arg.Set Games.o_wait_first,
         (def_msg_b "opponent tries to wait before trying other moves" !Games.o_wait_first));
        
        (* -- Deployment transaction settings ------------------------------------- *)
        ("", Arg.Unit (fun () -> ()),"\nDEPLOYMENT TRANSACTION SETTINGS:"); (* DUMMY OPTION FOR LABEL *)
        ("-deploy-address", Arg.Set_string Games.deployer_address,
         (def_msg_s "(string) address of the account deploying the contract" !Games.deployer_address));
        ("-deploy-gas",     Arg.Set_string Games.deployer_gas,
         (def_msg_s "(string) gas limit for the deployment transaction" !Games.deployer_gas));
        ("-deploy-value",   Arg.Set_string Games.deployer_funds,
         (def_msg_s "(string) ETH amount (in WEI) to include in deployment transaction"
            !Games.deployer_funds));

        (* -- Help ---------------------------------------------------------------- *)
        ("", Arg.Unit (fun () -> ()),"\nHELP:"); (* DUMMY OPTION FOR LABEL *)
      ]
    in
    let usage_msg = "YulTracer -- Yul interpreter with symbolic execution" in
    Arg.parse speclist print_endline usage_msg;
    let verbose_intro () = 
      print_endline "****************";
      Printf.printf "Debug mode: %s\n" !debug;
      Printf.printf "Input file: %s\n" !input_file;
      Printf.printf "Game mode:  %b\n" !game_mode;
      (match !ini_file with
       | None -> ()
       | Some file_name -> Printf.printf "Configuration file: %s\n" file_name);
      Printf.printf "Bound: %d\n"      !Games.o_call_bound;
      Printf.printf "Memoisation cache size: %d\n" !memo_size;
      print_endline "****************";
    in
    if !verbose then verbose_intro ();
    
    (* MAKE inifile reader *)
    let mk_ini_reader ini =
      fun section field -> try Some (ini#getval section field) with _ -> None
    in
    let ini_reader = !ini_file >>= fun path -> Some (mk_ini_reader (new inifile path) , !print_code) in

    (* PARSE ABI JSON file *)
    let abi_list = !abi_file >>= fun path -> Some (Abi_parser__Parser.parse_json path) in
    let full_abi_list = !full_abi_file >>= fun path -> Some (Abi_parser__Parser.parse_json path) in

    (* TODO: PASS THE ABI_LIST TO THE FILE PARSER, THEN WHEN SEARCHING THROUGH  *)
    
    (* OPEN the file and set up the file buffer for lexing *)
    let input = if (!input_file = "<stdin>")
                then stdin else open_in !input_file in
    let filebuf = Lexing.from_channel input in
    
    (* START execution depending on which dialect is selected *)    
    match !dialect with
    | s when s = evm_shanghai -> parse_and_begin_game filebuf ini_reader abi_list full_abi_list
    | _ -> failwith "[error]: dialect not implemented"
    
  end

let () = main
