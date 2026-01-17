(** File that defines the Game Semantics for the EVM Dialect implemented in this directory
    @author Yu-Yang Lin
      created 11-Dec-2024

      Defines the Types and Rules needed for the Game Semantics for the EVM Dialect and
      instantiates Yul with the EVM Dialect defined here.
 *)

(* open Base_types *)
open Fork_types
open Exceptions

(** Yul file defined in EVM Shanghai lib. contains instantiation of Dialect *)
module EvmDialect = Yul.EvmDialect

(***********)
(* OPTIONS *)
(***********)

(* deployment options *)
let deployer_address = ref "0x0102030405060708090A"
let deployer_gas = ref "30_000_000_000_000_000_000_000"
let deployer_funds = ref "123456789_000_000_000_000_000_000"

(* game exploration options *)
let root_object = ref None

(* time and wait options *)
let one_day       = Z.of_int 86_400
let wait_time     = ref (Z.mul one_day (Z.of_int 7))
let time_function = ref (fun current_time -> Z.add current_time !wait_time)
let time_bound    = ref (Z.mul one_day (Z.of_int 22))
let do_owait      = ref true

(* default options for the opponent -- values are overwritten by the main *)
let o_call_bound        = ref 2
let o_call_stack_bound  = ref 3
let o_address_count     = ref 1 (* number of opponents to start with *)
let o_default_balance   = ref (Z.of_string "100_000_000_000_000_000_000") (* 100 ETH *)
let o_default_spending  = ref (Z.of_string "1_000") (* 1000 WEI *)
let o_return_values     = ref false
let o_symbolic_values   = ref false
let o_domains_addrs     = ref ""
let o_domains_uints     = ref "0x0,1,1_000"
let o_wait_first        = ref false

(**********************************************)
(* Initialise our EVM flavoured Yul semantics *)
(**********************************************)

(** library for Yul semantics *)
open Yul_semantics
open Reductions

(** instance of pretty printer with EVM Dialect *)
module PrettyPrinter = Pretty_printer.YulPrettyPrinter(EvmDialect)

(** instance of EVM flavoured Yul CEK machine *)
module EvmYulCEK = YulCEK(EvmDialect)
open EvmYulCEK

(** instance of Yul AST initialised with EVM Dialect *)
module EvmYulAST = YulAST_w_D

(** instance of Yul CEK conf initialised with EVM dialect *)
module EvmYulCEK_conf = YulCEK_conf_w_D

(** print functions *)
let print_code   = PrettyPrinter.print_statement
let print_object = PrettyPrinter.print_yul_object

(** function to evaluate a list of CEK red_confs *)
let evaluate_conf c = evaluate c

(** function to evaluate objects as much as possible. returns stuck confs. *)
let evaluate_object o inireader = evaluate_object o inireader !deployer_address !deployer_gas

(** function to evaluate Yul statements *)
let evaluate_statement code =
  evaluate_object (YulAST_w_D.mk_code_object code)

(* ERROR FUNCTIONS *)

(* function to print error *)
let print_error msg =
  Error.report_error_f "[game semantics]" msg

(* function to report errors *)
let report_error_if b msg = if b then print_error msg

let warning_str = "\x1b[1;33mWARNING!\x1b[0m"

(*****************************)
(* GAMES-RELATED BEGINS HERE *)
(*****************************)

open Init           (* where EVM.t is *)
open Base_types     (* open Base_types *)
open Format
open Pretty_printer
open Utils
open Abi_parser.Ast
open Gas
open Base_memory
(* open Crypto_hash *)

(***********************)
(* GAME TYPES AND ASTS *)
(***********************)

(**********)
(* FRAMES *)
(**********)

(** type for active Yul configuration and frames *)
type yul_object = EvmYulAST.yul_object
type yul_conf = EvmYulCEK_conf.red_conf
type evm_conf = EvmYulAST.environment (* this is the YulAST env, not the EVM env *)

(** type for frames. F ::=  Op of G | Pr of Cy *)
type frame = Pr of yul_conf (* Cy : yul_conf *)
           | Op of evm_conf (* G  : evm_conf *)

(** function to print a game frame *)
let print_frame = function
  | Pr cy ->
     pr "[BEGIN Proponent Frame]";
     force_newline ();
     pr (EVM.to_string cy.g);
     force_newline ();
     (* PrettyPrinter.print_cek_term cy.s; *)
     (* force_newline (); *)
     pr "[END Proponent Frame]"
  | Op g ->
     pr "[BEGIN Opponent Frame]";
     force_newline ();
     pr (EVM.to_string g);
     force_newline ();
     pr "[END Opponent Frame]"

(** function to initialise proponent frame *)
let init_prop_frame yul_conf = Pr yul_conf

(** function to get the G environment from a frame -- used to return *)
let get_g_from_frame frame =
  match frame with
  | Pr yul_conf -> yul_conf.g
  | Op evm_conf -> evm_conf

(** function to replace the G in a frame *)
let replace_g_in_frame (frame : frame) (new_g : evm_conf) =
  match frame with
  | Pr cy -> Pr {cy with g = new_g}
  | Op _  -> Op new_g

(*************)
(* ADDRESSES *)
(*************)

(** record for known addresses: {Ap : address -> yul_c ; Ao : address set} *)
type addresses = { p : (address * yul_object) list ; o : address list }

let string_of_addresses (a : addresses) : string =
  (* pull out just the addresses from p *)
  let p_addrs = List.map fst a.p in
  let bracketed_addrs addrs =
    "[" ^ string_of_list Bytes.to_string "; " addrs ^ "]"
  in
  let p_str = bracketed_addrs p_addrs in
  let o_str = bracketed_addrs a.o in
  Printf.sprintf "{ p = %s; o = %s }" p_str o_str

let print_addresses {p; o} =
  begin
    let print_pair ((a,b): address * yul_object) =
      pr "(";
      force_newline ();
      indent ();
      open_hovbox 0;
      pr (Bytes.to_string a);
      force_newline ();
      pr "--->";
      force_newline ();
      print_object b;
      close_box ();
      force_newline ();
      pr ")"
    in
    pr "{";
    force_newline ();
    indent ();
    open_hovbox 0;
    pr "Proponent Addresses:";
    force_newline ();
    print_list print_pair force_newline p;
    force_newline ();
    pr "Opponent Addresses:";
    force_newline ();
    print_list (fun a -> pr (Bytes.to_string a)) print_comma o;
    close_box ();
    force_newline ();
    pr "}"
  end

(** function to add a proponent address *)
let add_p_address ({ p ; o } : addresses) (a : address) (obj : yul_object) :(addresses) =
  (* there cannot be duplicates *)
  report_error_if (List.exists (fun (addr , _) -> addr = a) p) "attempted to add duplicate PR-address";
  { p = (a , obj) :: p ; o }

(** function to add a proponent address *)
let add_o_address ({ p ; o } : addresses) (a : address) :(addresses) =
  (* there cannot be duplicates *)
  report_error_if (List.exists (fun addr -> addr = a) o) "attempted to add duplicate OP-address";
  { p ; o = a :: o }

(** function create an initial set of addresses *)
let init_addresses p o :(addresses) = { p ; o }

(*********)
(* MOVES *)
(*********)

type name = string
type move = OWait
          (* caller, target, sig, args *)
          | OCall   of address * name * address * function_entry * Bytes.t * U256.t 
          | ORet    of Bytes.t
          (* target , args , mode *)
          | PPCall  of yul_object * Bytes.t * EVM.call_type 
          | POCall  of address
          | Create  of name * address
          | Create2 of name * address
          | PPRet   of Bytes.t
          | PORet   of Bytes.t
          | Deploy  of name * address
          | StartAnalysis
let string_of_move = function
  | PPRet b -> Printf.sprintf "\x1b[1mpp-ret\x1b[0m(%s)"    (Bytes.to_string b)
  | PORet b -> Printf.sprintf "\x1b[1;32mpo-ret\x1b[0m(%s)" (Bytes.to_string b)
  | ORet  b -> Printf.sprintf "\x1b[1;36mo-ret\x1b[0m(%s)"  (Bytes.to_string b)
  | OWait -> "\x1b[1;33mo-wait\x1b[0m"
  | StartAnalysis -> "\x1b[1;32mstart-analysis\x1b[0m"
  | Deploy (name,a) ->
     Printf.sprintf
       "\x1b[1;32mdeploy\x1b[0m(object:<\x1b[1;32m%s\x1b[0m> , address:<\x1b[1;32m%s\x1b[0m>)"
       name (Bytes.to_hex_string a)
  | PPCall (o,b,t) ->
     let signature =
       let hash = take 4 b
                  |> Bytes.to_concrete_bytes
                  |> U256.from_be_bytes
                  |> U256.to_hex_string
                  |> make_4byte_hex
       in
       let f = o.full_abi >>= fun abi -> find_function abi hash in
       match f with
       | None -> "<ABI not found>"
       | Some f ->
          begin
            match f.signature with
            | None -> print_error "[string of move]: no signature found for PP-Call!"
            | Some signature -> signature
          end
     in
     Printf.sprintf
       "\x1b[1mpp-call\x1b[0m(mode:<\x1b[1m%s\x1b[0m> , target:<\x1b[1m%s\x1b[0m> , sig:<\x1b[1m%s\x1b[0m> , args:<%s>)"
       (EVM.string_of_call_type t)
       o.name
       signature
       (Bytes.to_string b)

  | POCall a ->
     Printf.sprintf
       "\x1b[1;32mpo-call\x1b[0m(%s)"
       (Bytes.to_hex_string a)
  | Create (name,a) ->
     Printf.sprintf
       "\x1b[1mcreate\x1b[0m(object:<\x1b[1m%s\x1b[0m> , address:<\x1b[1m%s\x1b[0m>)"
       name (Bytes.to_hex_string a)
  | Create2 (name,a) ->
     Printf.sprintf
       "\x1b[1mcreate2\x1b[0m(object:<\x1b[1m%s\x1b[0m> , address:<\x1b[1m%s\x1b[0m>)"
       name (Bytes.to_hex_string a)
  | OCall(a,name,a2,f,b,v) ->
     begin
       match f.hash , f.signature with
       | None , _ -> print_error "[string of move]: tried calling F without a hash!"
       | _ , None -> print_error "[string of move]: tried calling F without a signature!"
       | Some hash , Some signature ->
          Printf.sprintf
            "\x1b[1;36mo-call\x1b[0m(caller:<%s>, target:<\x1b[1;36m%s\x1b[0m:%s>, sig:<\x1b[1;36m%s\x1b[0m:%s>, args:<%s>, value:<%s>)"
            (Bytes.to_hex_string a)
            name
            (Bytes.to_hex_string a2)
            signature hash
            (Bytes.to_string b)
            (U256.to_string v)
     end
let print_move m = pr (string_of_move m)

type trace = move list
let string_of_trace (tr : trace) :(string) = string_of_list string_of_move "\n --> " (List.rev tr)
let print_trace (tr : trace) = print_list print_move (fun () -> pr " --> "; force_newline ()) (List.rev tr)

(* function to report errors *)
let report_error_w_trace msg tr =
  begin
    print_endline "[ERROR WHILE PLAYING MOVE]";
    print_endline "[printing trace]:";
    print_trace tr;
    print_error msg
  end

(* function to report errors *)
let report_error_w_trace_if b msg tr =
  if b then
    begin
      print_endline "[ERROR WHILE PLAYING MOVE]";
      print_endline "[printing trace]:";
      print_trace tr;
      print_error msg
    end

(**************************)
(* OPPONENT VALUE DOMAINS *)
(**************************)

(* TODO: CHECK WHERE YOU USE Bytes.of_U256 IN THE WHOLE CODE!
   THIS FUNCTION USES U256.to_be_bytes WHICH MAKES A 32-BYTE LIST!
   THIS IS OK FOR STRINGS, WHICH ARE RIGHT PADDED, BUT NOT FOR INTEGERS!
 *)

(** function to get a bytes list from a string. only works with strings smaller than 32 bytes.
    TODO: this doesnt work. U256.to_be_bytes returns a BE bytes list that is already padded... *)
let string_to_32_bytes (string : string) :(Bytes.t) =
  string |> explode_to_char_ints             (* convert into list of ASCII int values per char *)
  |> List.rev_map (fun x -> U8 (Z.of_int x)) (* maps and reverses the list *)
  |> left_pad_to_32 (U8 (U256.zero))         (* pad with ZEROs in front, i.e. left side of reversed list *)
  |> List.rev                                (* reverses list back to BE orientation *)

(** function to get a 32 bytes list from an int. *)
let int_to_32_bytes (i : int) :(Bytes.t) =
  i |> U256.of_int |> Bytes.of_U256 (* this is already left-padded with 0s *)

(** type for the width of arguments expected from the opponent: either 32 or dynamic *)
type op_type_width  = Fixed of Bytes.t | Variable of Bytes.t * Bytes.t
type op_type_domain = op_type_width list
type op_domains = { u256    : op_type_domain ;
                    bool    : op_type_domain ;
                    address : op_type_domain ;
                    string  : op_type_domain ;
                    bytes   : op_type_domain ;
                  }
let empty_op_domains =
  {
    u256    = [] ;
    bool    = [] ;
    address = [] ;
    string  = [] ;
    bytes   = [] ;
  }

let string_of_op_type_width = function
  | Fixed b ->
     Printf.sprintf "Fixed %s" (Bytes.to_string b)
  | Variable (b1, b2) ->
     Printf.sprintf "Variable (%s, %s)"
       (Bytes.to_string b1)
       (Bytes.to_string b2)

let string_of_op_type_domain dom =
  match dom with
  | [] -> "[]"
  | lst ->
     let body = string_of_list string_of_op_type_width ";\n    " lst in
     "[\n    " ^ body ^ "\n  ]"

let string_of_op_domains od =
  let fmt name dom =
    Printf.sprintf "  %-7s = %s;" name (string_of_op_type_domain dom)
  in
  String.concat "\n"
    [ "{" ;
      fmt "u256"    od.u256 ;
      fmt "bool"    od.bool ;
      fmt "address" od.address ;
      fmt "string"  od.string ;
      fmt "bytes"   od.bytes ;
      "}" ]

(** function to add symbolic values to the domain of opponent values *)
let do_symbolic_op_values (domains : op_domains) =
  let op_symbol_str = "EXT_S8" in
  let mk_sbytes_32 () = Fixed (List.init 32 (fun _ -> S8 (Z3api.fresh_named_svar op_symbol_str))) in
  {domains with
    u256 = mk_sbytes_32 () :: domains.u256 ;
    bool = mk_sbytes_32 () :: [] ; (* TODO: no concrete ones? *)
  }

(** function to initialise the opponent value domains. these are values the opponent can play *)
let init_op_domains uints addresses =
  let domains = 
  {
    u256    = (List.map (fun a -> Fixed a) uints) ;
    bool    = Fixed (Bytes.of_U256 (U256.one))                      (* new curator *)
              :: Fixed (Bytes.of_U256 (U256.zero))
              :: [] ;
    address = List.map (fun a -> Fixed (left_pad_to_32 (U8 U256.zero) a)) addresses.o ;
    string  = List.map (fun (a,b) -> Variable (int_to_32_bytes a , string_to_32_bytes b))
                [ 11 , "lonely, so lonely" ] ;
    bytes   = List.map (fun (a,b) -> Variable (int_to_32_bytes a , string_to_32_bytes b))
                [ 0 , "" ] ;
  }
  in if !o_symbolic_values then do_symbolic_op_values domains else domains

(* ---------------- START: BLOCK OF FUNCTIONS FOR OP-DOMAIN TYPE SELECTION ---------------- *)

(** function that gets the number of bits for a uint-like type
    NOTE: we will never encounter an ABI for uint which is not a multiple of 8.
    so this works on the assumption that the ABI always has uint<M> where M in (8,16,..,256).
 *)
let is_uint_like (s : string) =
  if s = "uint" || s = "uint256" then Some 256 else
    if String.length s > 4 && String.sub s 0 4 = "uint" then
      match int_of_string_opt (String.sub s 4 (String.length s - 4)) with
      | Some n when n >= 8 && n <= 256 && n mod 8 = 0 -> Some n
      | _ -> None
    else None

(** function that gets the number of bytes in a bytesN-like type
    NOTE: this is constrained to values from 1 to 32 inclusive.
 *)
let is_bytesN_like (s : string) =
  if s = "bytes32" then Some 32 else
    if String.length s > 5 && String.sub s 0 5 = "bytes" then
      match int_of_string_opt (String.sub s 5 (String.length s - 5)) with
      | Some n when n >= 1 && n <= 32 -> Some n
      | _ -> None
    else None

(** function to prepare a uintN value: zero the first M bytes (most-significant) for uintN *)
let clamp_uintN (n : int) tr : op_type_width -> op_type_width = function
  | Fixed bytes ->
     begin
       let bytes32 = left_pad_to_32 (U8 Z.zero) bytes in
       let m = 32 - n in
       let rec aux i = function
         | [] -> []
         | _ :: xs when i < m -> (U8 Z.zero) :: aux (i+1) xs
         | x :: xs -> x :: aux (i+1) xs
       in
       Fixed (aux 0 bytes32)
     end
  | _ -> report_error_w_trace "[clamp_uintN]: encountered variable type in fixed-width domain" tr

(** function to prepare a bytesN value: keep first n bytes, zero the tail, for bytesN *)
let clamp_bytesN (n : int) tr : op_type_width -> op_type_width = function
  | Fixed bytes ->
     let bytes32 = left_pad_to_32 (U8 Z.zero) bytes in
     Fixed (take n bytes32 @ List.init (32 - n) (fun _ -> (U8 Z.zero)))
  | _ -> report_error_w_trace "[clamp_bytesN]: encountered variable type in fixed-width domain" tr

(** function used to build the list of opponent arguments based on the type from the ABI
    NOTE: uint256 and bytes32 are synonymns in this analysis.
    For all uint-like and bytesN-like values, we just prune the u256 domain.
 *)
let type_selector op_domains tr signature (typ : string) =
  match typ with
  | "uint256" | "uint" | "bytes32" -> op_domains.u256
  | "bool"    -> op_domains.bool
  | "address" -> op_domains.address
  | "string"  -> op_domains.string
  | "bytes" -> op_domains.bytes
  | "uint256[2]" | "bytes32[2]" -> [ Fixed (Bytes.of_U256 (U256.one) @ Bytes.of_U256 (U256.one)) ]
  | _ ->
     match is_uint_like typ with
     | Some bits -> List.map (clamp_uintN (bits/8) tr) op_domains.u256
     | None ->
        match is_bytesN_like typ with
        | Some n -> List.map (clamp_bytesN n tr) op_domains.u256
        | None ->
           report_error_w_trace
             (Printf.sprintf "type <%s> is not supported in call <%s>." typ signature) tr

(* ---------------- END: BLOCK OF FUNCTIONS FOR OP-DOMAIN TYPE SELECTION ---------------- *)

let add_unique x xs =
  if List.mem x xs then xs else x :: xs

(** function to add a given value of a given type to the right domain
    this is how the opponent LEARNS new values to replay
    NOTE: for addresses, we drop 12 because these are 32-byte arguments/returns
 *)
let op_domains_add op_domains value = function
  | "uint256" -> {op_domains with u256 = add_unique (Fixed value) op_domains.u256}
  | "bool"    -> op_domains (* don't add more booleans *)
  | "address" -> {op_domains with address = add_unique (Fixed value) (op_domains.address)} (* don't drop *)
  | "string"  -> op_domains (* don't add more strings *)
  | "bytes" -> op_domains (* don't add more bytes *)
  | _ -> op_domains (* anything else is ignored *)

(** function to add list of values into op_domains.
    the values are in bytes and classified by outputs, which list all the types present in bytes in order.
    outputs is a list of strings.
 *)
let rec op_domains_add_bytes op_domains bytes outputs =
  match outputs with
  | [] -> op_domains
  | str :: rest ->
     let segment, rest_bytes = Bytes.take_32 bytes in
     let op_domains' = op_domains_add op_domains segment str in
     op_domains_add_bytes op_domains' rest_bytes rest

(** function to get all the bytes of fixed size from op_domains *)
let get_fixed_of_op_domains op_domains =
  let aux = function Fixed b -> Some b | Variable _ -> None in
  List.filter_map aux
    (List.rev_append op_domains.u256
       (List.rev_append op_domains.bool op_domains.address))

(***********************)
(* GAME CONFIGURATIONS *)
(***********************)
module StringMap = Map.Make(String)
type int_string_map = int StringMap.t

let get_count s map =
  match StringMap.find_opt s map with
  | Some n -> n
  | None -> 0

let increment_count key map =
  let current = get_count key map in
  StringMap.add key (current + 1) map

(** game configuration *)
type game_conf = { active        : frame          ;    (* F *)
                   stack         : frame list     ;    (* K *)
                   addresses     : addresses      ;    (* Ao ; Ap *)
                   trace         : move list      ;    (* tr *)
                   hashes_called : int_string_map ;    (* history of hashes called by the opponent *)
                   op_domains    : op_domains     ;    (* domain of values the opponent can use as args *)
                 }

let print_game_conf {active; stack; trace; _} =
  begin
    pr "[BEGIN Game Configuration]";
    force_newline ();
    indent ();
    open_hovbox 0;

    (* PRINT ACTIVE: *)
    pr "[BEGIN Active Frame]";
    force_newline ();
    indent ();
    open_hovbox 0;
    print_frame active;
    close_box ();
    force_newline ();
    pr "[END Active Frame]";
    force_newline ();

    (* PRINT STACK: *)
    pr "[BEGIN Stack]";
    force_newline ();
    indent ();
    open_hovbox 0;
    pr "[";
    print_list print_frame (fun () -> pr ";"; force_newline ()) stack;
    pr "]";
    close_box ();
    force_newline ();
    pr "[END Stack]";
    force_newline ();

    (* (\* PRINT ADDRESSES: *\) *)
    (* pr "[BEGIN Addresses]"; *)
    (* force_newline (); *)
    (* indent (); *)
    (* open_hovbox 0; *)
    (* print_addresses addresses; *)
    (* close_box (); *)
    (* force_newline (); *)
    (* pr "[END Addresses]"; *)

    (* PRINT TRACE: *)
    pr "[BEGIN Trace]";
    force_newline ();
    indent ();
    open_hovbox 0;
    print_trace trace;
    close_box ();
    force_newline ();
    pr "[END Trace]";

    close_box ();
    force_newline ();
    pr "[END Game Configuration]";
    force_newline ();
  end

(* AUXILIARY FUNCTIONS FOR CONFIGURATIONS *)

(** function to create a fresh address and add it to the address list in a game configuration *)
let make_fresh_opponent_address (c : game_conf) :(game_conf) =
  let default_name = "OP_ADDRESS" in
  let o_address_size = List.length c.addresses.o in
  let new_address =
    Printf.sprintf "%s_%d" default_name o_address_size
    |> string_to_hex
    |> U256.of_string
    |> Utils_address.to_address
  in
  (* %! flushes the stdout so it's not buffered *)
  Printf.printf "created fresh opponent address: <%s>\n%!" (Bytes.to_hex_string new_address);
  {c with addresses = add_o_address c.addresses new_address}

(** function to fund all opponent addresses in a given EVM configuration *)
let fund_opponent_addresses (addresses : addresses) (evm : EVM.t) :(EVM.t) =
  let move_eth (evm : EVM.t) (recipient_address : address) :(EVM.t) =
    let amount = !o_default_balance in
    let increase_recipient_balance (recipient: Account.t) :Account.t =
      {recipient with balance = Z.add recipient.balance amount}
    in
    let state = State.modify_state evm.env.state recipient_address increase_recipient_balance in
    let env = {evm.env with state} in
    {evm with env}
  in
  List.fold_left move_eth evm addresses.o

(** function to fund all opponent addresses in a given EVM configuration *)
let fund_deployer (evm : EVM.t) :(EVM.t) =
  let d_address = (Utils_address.to_address (U256.of_string !deployer_address)) in
  let increase_recipient_balance (recipient: Account.t) :Account.t =
    {recipient with balance = Z.add recipient.balance (U256.of_string !deployer_funds)}
  in
  let state = State.modify_state evm.env.state d_address increase_recipient_balance in
  let env = {evm.env with state} in
  {evm with env}

(* FUNCTIONS TO INITIALISE CONFIGURATIONS *)

(** function to initialise game configurations *)
let init_game_conf f =
  { stack = [] ; active = f ; addresses = init_addresses [] [] ; trace = [] ;
    op_domains = empty_op_domains ; 
    hashes_called = increment_count "0x612e45a3" StringMap.empty}

(** function to initialise all opponent addresses with a starting fund *)
let initialise_opponents (c : game_conf) :(game_conf) =
  let rec aux i c =
    if i > 0
    then aux (i-1) (make_fresh_opponent_address c)
    else c
  in
  let c_with_o_addrs = aux !o_address_count c in
  let new_g =
    let evm = get_g_from_frame c.active in
    fund_opponent_addresses c_with_o_addrs.addresses evm
  in
  {c_with_o_addrs with active = replace_g_in_frame c_with_o_addrs.active new_g}

(** function to split without empty strings "" *)
let split_nonempty (sep : char) (s : string) : string list =
  String.split_on_char sep s
  |> List.filter (fun part -> part <> "")

(** function to initialise o_domains. this also adds all addresses in !o_domains_addreses into the list *)
let initialise_o_domains (c : game_conf) :(game_conf) =
  let uint_strings    = split_nonempty ',' !o_domains_uints in
  let init_uints =
    List.fold_left
      (fun acc str -> (Bytes.of_U256 (U256.of_string str)) :: acc)
      [] uint_strings
  in
  let address_strings = split_nonempty ',' !o_domains_addrs in
  let init_addresses =
    List.fold_left
      (fun acc str ->
        print_endline str;
        add_o_address acc (Utils_address.to_address (U256.of_string str)))
      c.addresses address_strings
  in
  let op_domains = init_op_domains init_uints init_addresses in
  Printf.printf "Initial OP Domain:\n%s\n%!" (string_of_op_domains op_domains);
  {c with op_domains}

(** function to fund the deployer *)
let initialise_dep_funds (c : game_conf) :(game_conf) =
  let new_evm = fund_deployer (get_g_from_frame c.active) in
  let new_active = replace_g_in_frame c.active new_evm in
  {c with active = new_active}

(** function to initialise proponent game configurations *)
let init_game_conf_from_object o f =
  (* no addresses to start. we can add special default addressees if want here. *)
  init_game_conf (init_prop_frame (YulCEK_conf_w_D.init_red_conf o f !deployer_address !deployer_gas))
  |> initialise_opponents (* initialise all opponent addresses *)
  |> initialise_o_domains (* initialise conf with opponent value domains *)
  |> initialise_dep_funds (* initialise deployer funds *)

(** list of confs that we are done processing *)
(* let done_confs = ref [] *)

(************************)
(* GAME SEMANTICS MOVES *)
(************************)

(** function to look up the object corresponding to the ID encoded in some bytes *)
let get_object_from_bytes (bytes : Bytes.t) tr :(yul_object) =
  (* this has to be a U256 so 32 bytes. if shorter, throws error. *)
  report_error_w_trace_if (List.length bytes < 32)
    (Printf.sprintf "[object from bytes error]: invalid object code called -- saw <%s>\n"
       (Bytes.to_string bytes)) tr;

  (* takes the first 32 bytes to get the object *)
  let evm_value : evm_val = U256_val (Bytes.to_U256 (take 32 bytes)) in
  let object_uid : int =
    try
      Z.to_int (EvmVal.signed_extract evm_value)
    with
    | Z.Overflow ->
       print_error
         (Printf.sprintf
            "[object from bytes] invalid object UID <%s> -- improper use of datacopy() or dataoffset()\n"
            (Z.to_string (EvmVal.signed_extract evm_value)))
  in
  match !root_object with
  | Some o ->
     begin
       match EvmYulAST.find_object_by_uid object_uid o with
       | None -> print_error (Printf.sprintf "[object from bytes error] object UID %d not found\n" object_uid)
       | Some o -> o
     end
  | None -> print_error ("[object from bytes error] there is no root object; can't access object UID")

(** function to look up the object corresponding to the ID encoded in the output field of an EVM conf *)
let get_object_from_output (g : evm_conf) tr :(yul_object) =
  get_object_from_bytes g.output tr

(** function to get the object that is pointed at by the code of an account at a given address in the state *)
let get_object_at_address (g : evm_conf) (a : address) tr :(yul_object) =
  match State.get_account_optional g.env.state a with
  | Some acc -> get_object_from_bytes(acc.code) tr
  | None -> print_error "error getting object at address"

(** function to pop Cy.G.stack (value stack) and fill the hole in the evaluation context *)
let pop_stack_on_return (parent_cy : yul_conf) (g' : EVM.t) tr :(frame) =
  let evm_val,stack = EVM.pop g' in
  let yul_val = EvmYulAST.Val evm_val in
  let s = {parent_cy.s with term = Expression yul_val} in
  report_error_w_trace_if (List.length stack <> 0) "[RETURN]: value stack is not empty after POP" tr;
  Pr {parent_cy with g = {g' with stack} ; s}

(*----------*)
(* PR-MOVES *)
(*----------*)

(* PR-ASSERT *)
(*-----------*)

(** function to abort and print a trace if an assertion is violated *)
let pr_assert (c : game_conf) (cy : yul_conf) :(game_conf option) =
  let evm_val,stack = EVM.pop cy.g in
  report_error_w_trace_if (evm_val = U256_val U256.zero) "[ASSERTION VIOLATION]" c.trace;
  let cy = {cy with g = {cy.g with stack}} in
  Some {c with active = Pr cy}

(* PR REVEAL *)
(*-----------*)
let pr_reveal string_type (c : game_conf) (cy : yul_conf) :(game_conf option) =
  let evm_val,stack = EVM.pop cy.g in
  match evm_val with
  | U256_val new_arg ->
     let op_domains =
       let bytes =
         match string_type with
         | "uint256" -> Bytes.of_U256 new_arg
         | "address" -> Bytes.of_U256 new_arg |> left_pad_to_32 (U8 U256.zero) (* right-aligned 32-bytes *)
         | _ -> report_error_w_trace ("[PR REVEAL]: error while revealing "^string_type) c.trace
       in
       op_domains_add_bytes c.op_domains bytes [string_type]
     in
     let cy = {cy with g = {cy.g with stack}} in
     Some {c with active = Pr cy; op_domains}
  | _ -> report_error_w_trace ("[PR REVEAL]: error while revealing "^string_type) c.trace


(* START-ANALYSIS (LAUNCH OPPONENT) *)
(*----------------------------------*)

(** function to launch the opponent from the proponent. this creates a top-level oppopnent *)
let prepare_initial_op_evm (addresses : addresses) (g : EVM.t) :(EVM.t) =
  match addresses.o with
  | [] -> print_error "[preparing initial OP]: no opponent addresses available!"
  | a1 :: _ ->
     let env : Environment.t = {g.env with caller = [] } in
     let msg : Message.t = {g.message with caller = [] ;
                                           target = a1 ;
                                           current_target = a1 ;
                                           value = U256.zero ;
                                           data = [] ;
                                           code_address = None ; }
     in
     {g with pc = U256.zero ;
             stack = [] ;
             memory = Mem.init () ;
             code = [] ;
             env = env ;
             running = true ;
             message = msg ;
             output = [] ;
             return_data = [] ;
             object_ids = [] ;
             stuck_mode = None ; }

(** function to the start_analysis move *)
let start_analysis (c : game_conf) (cy : yul_conf) :(game_conf option) =
  report_error_w_trace_if (c.stack <> [])
    "[start analysis]: game stack needs to be empty when launching opponent. stack wasn't empty." c.trace;
  let g = prepare_initial_op_evm c.addresses cy.g in
  Some {c with active = Op g ; trace = StartAnalysis :: c.trace}

(* PR-RET *)
(*--------*)

(** function to perform the proponent return move: either deploy or normal return *)
let pr_return (c : game_conf) (cy : yul_conf) :(game_conf option) =
  match c.stack with

  (* DEPLOY *)
  | [] ->
     (* note: no need to check for return stuck mode *)
     (* note2: this was modified to be more similar to start_analysis. I had not set the target *)
     let op_domains = op_domains_add_bytes c.op_domains cy.g.output ["address"] in
     let env = cy.g.env in
     let alpha0 = cy.g.message.current_target in
     let env = {env with state = State.set_code env.state alpha0 cy.g.output} in
     let g' = EVM.set_unstuck {cy.g with env} in
     let ob = get_object_from_output cy.g c.trace in (* object to deploy *)
     let a' = add_p_address c.addresses alpha0 ob in
     let g' = prepare_initial_op_evm c.addresses g' in (* TODO: check that this is correct!!! *)
     let label = Deploy(ob.name,alpha0) in
     Some {c with active = Op g'; addresses = a' ; trace = label :: c.trace; op_domains}

  (* RETURN *)
  | parent :: k ->
     begin
       let new_addresses , new_frame , new_op_domains , label =
         let parent_g = get_g_from_frame parent in
         let child_g  = cy.g in

         (* INCORPORATE : select correct continuation *)
         let g' , addresses' , op_domains' =
           match parent_g.stuck_mode with
           | None | Some (EVM.Return) | Some (EVM.StartAnalysis) | Some Assert | Some (Reveal _) ->
              print_error "[incorporate error]: expected parent with call or create stuck_mode"
           | Some (EVM.Call (_,types)) ->
              let g' = EVM.set_unstuck (System.generic_call_continuation parent_g child_g) in
              g' , c.addresses , op_domains_add_bytes c.op_domains child_g.output types
           | Some (EVM.Create) | Some (EVM.Create2) ->
              (* TODO: opponent too powerful. can't know P-addresses until after WAIT move. *)
              let g' = EVM.set_unstuck (System.generic_create_continuation parent_g child_g) in
              let a  = child_g.message.current_target in
              let ob = get_object_from_output child_g c.trace in
              let addresses' = add_p_address c.addresses a ob in
              (* let op_domains' = op_domains_add_bytes c.op_domains cy.g.output ["address"] in *)
              g' , addresses' , c.op_domains (* op_domains' *)
         in

         (* POP THE VALUE STACK: pop the top value and replace the term with the new value *)
         let fi , label =
           (* pop the stack and replace the term with the new value *)
           match parent with
           | Pr parent_cy -> pop_stack_on_return parent_cy g' c.trace , PPRet cy.g.output
           | Op _ -> Op g' , PORet cy.g.output
         in
         
         addresses' , fi , op_domains' , label
       in
       Some
         {c with addresses = new_addresses ; stack = k ; active = new_frame ; op_domains = new_op_domains ; 
                 trace = label :: c.trace} (* TRACE *)
     end

(* PR-PR-MOVE : CREATE and CALL *)
(*------------------------------*)

(** function to make a new list that assigns negative IDs to every path in the object *)
let make_object_ids obj =
  let list_of_paths = EvmYulAST.get_member_names obj in
  EVM.get_u256_uids list_of_paths

(** function to perform the proponent-proponent move *)
let p_p_move ({parent; child} : System.process_message_result) (c : game_conf ) (cy : yul_conf) =
  (* note: no need to check for stuck mode *)
  let cy'  = {cy with g = parent} in
  let ob'  = get_object_from_bytes child.message.code c.trace in
  let cy'' : yul_conf =
    {
      s = {ecxt = [] ; term = ob'.code} ; (* NOTE: ob'.code is a STATEMENT not code as in BYTES *)
      g = {child with object_ids = make_object_ids ob'};
      l = Ast.IdentMap.empty ;
      n = Ast.IdentMap.empty ;
      call_history = [] ; 
    }
  in
  let label =
    match cy'.g.stuck_mode with
    | Some Create       -> Create  (ob'.name,cy''.g.message.current_target)
    | Some Create2      -> Create2 (ob'.name,cy''.g.message.current_target)
    | Some (Call (t,_)) -> PPCall  (ob',child.message.data,t)
    | _ -> failwith "[pp move]: should be either call variant, create, create2"
  in
  Some
    {
      c with stack  = Pr cy' :: c.stack ;
             active = Pr cy'' ;
             trace  = label :: c.trace ; (* TRACE *)
    }

(* PR-OP-CALL *)
(*------------*)

(** function to perform the proponent-opponent calls
    note: all addresses are known during calls -- must be either a P or O address.
 *)
let p_o_call ({parent; child} : System.process_message_result) (c : game_conf) (cy : yul_conf) =
  (* print ACCESS CONTROL for DELEGATECALL *)
  begin
    match cy.g.stuck_mode with
    | Some Call (Delegate,_) -> print_endline "\n\x1b[1;31mACCESS CONTROL!\x1b[0m delegatecall to opponent!!!"
    | _ -> ()
  end;
  
  (* note: no need to check for stuck mode *)
  if (List.for_all ((<>) child.message.target) c.addresses.o) then
    begin
      print_endline (warning_str ^ " non-existent address called: "
                     ^ "<" ^ (Bytes.to_hex_string child.message.target) ^ ">; " 
                     ^ "args: <" ^ (Bytes.to_string child.message.data) ^ ">") ;
      (* NOTE: returning NONE because it may be a spurious call caused by the Opponent *)
      None
    end
  else
    let cy'  = {cy with g = parent} in
    Some
      {
        c with stack = Pr cy' :: c.stack ;
               active = Op child ;
               trace  = POCall child.message.target :: c.trace ; (* TRACE *)
      }

(* PR-MOVE SELECTOR *)
(*------------------*)

(** Funntion to play proponent move
    1. get stuck Yul conf (resulting from Yul internal moves)
    2. get EVM conf (G) from Yul
    3. get stuck mode from EVM conf
    4. match stuck_mode to select the right move

    Note: Although the old game_conf.active is never used, and new_yul_conf is all we need,
    we are not adding new_yul_conf into the old game_conf yet. This is because:
    - new_yul_conf is always used (as cy) and having to write a selector for it is an extra step
    - new_yul_conf is produced by internal moves as a list; mapping this list is more direct than
    mapping this list to produce a new game_conf to be fed here, to then be split again.

    Note: we assume PR can only do plain calls to OP because it would otherwise need the ABI of OP.
    since PR doesn't make static calls, we don't need OP to make static calls. we assume OP only makes
    plain calls because that's what PR only ever does to reach OP.

    TODO: we still need to check that is_static is done correctly for PR-PR calls. however, because
    these are calls that happen from incorrectly typed code, we can even leave it for the user to ensure.
 *)
let pr_move_selector (game_conf : game_conf) (cy : yul_conf) =
  try
    let new_evm_conf : EVM.t = cy.g in
    let pr_move =
      match new_evm_conf.stuck_mode with
      | Some (Reveal t) -> pr_reveal (EVM.string_of_arg_type t)
      | Some Assert  -> pr_assert
      | Some Return  -> pr_return                       (* [ PR: RETURN and DEPLOY ] *)
      | Some Create  -> p_p_move (System.create  cy.g)  (* [ PR: CREATE  ] *)
      | Some Create2 -> p_p_move (System.create2 cy.g)  (* [ PR: CREATE2 ] *)
      | Some Call (t,_) ->
         let opcode =
           match t with
           | Plain -> System.call
           | Static -> System.staticcall
           | Delegate -> System.delegatecall
           | Impersonate -> System.impersonate_call
         in
         let msg_result = opcode cy.g in
         let target = msg_result.child.message.target in
         (* if it's not a P address, it could be an O address, a spurious call, or an error in the contract *)
         if List.exists (fun (a,_) -> a = target) game_conf.addresses.p
         then p_p_move msg_result             (* [ PR-PR: CALL ] *)    (* TODO: check is_static? *)
         else p_o_call msg_result             (* [ PR-OP: CALL ] *)    (* TODO: allow static now *)
      | Some StartAnalysis -> start_analysis  (* [ PR: START-ANALYSIS ] *)
      | None -> print_error "[PR move selector error]: PR configuration is not stuck"
    in
    pr_move game_conf cy
  with
  | EVMError(Exception.AssertionError,msg) ->
     report_error_w_trace ("[EVM ASSERTION ERROR]: "^msg) game_conf.trace
  | EVMError(Exception.OutOfGasError,msg) ->
     !print_warning (warning_str ^ " [EVM OutOfGas ERROR]: "^msg); None


(*----------*)
(* OP-MOVES *)
(*----------*)

(* OP-WAIT *)
(*---------*)

(** function to do nothing and let time pass -- supposed to mark the end of the previous transaction *)
let op_wait (c : game_conf) :(game_conf option) =
  match c.active with
  | Op g -> if Z.lt g.env.time !time_bound
            then Some {c with active = Op (EVM.wait g !time_function) ;
                              trace = OWait :: c.trace} (* TRACE *)
            else (!print_warning (warning_str ^ " reached time bound!"); None)
  | _ -> print_error "expected Opponent configuration in OP-WAIT"

(* OP-RET *)
(*--------*)

(** function to perform the opponent return move: either deploy or normal return
    NOTE: we assume P-CALLs never expect any return data.
 *)
let op_return (c : game_conf) (g : evm_conf) :(game_conf list) =
  match c.stack with
  | [] -> print_error "[OP return error]: stack cannot be empty"
  | Op _ :: _ -> print_error "[OP return error]: parent cannot be an opponent"
  | Pr parent :: k ->
     begin
       let parent_g = parent.g in
       let possible_outputs =
         [] :: (if !o_return_values then get_fixed_of_op_domains c.op_domains else [])
       in
       let child_gs = List.map (fun o -> {g with output = o}) possible_outputs in

       let aux child_g =
         (* INCORPORATE : select correct continuation (this sets the stack to 1) *)
         let g' = EVM.set_unstuck (System.generic_call_continuation parent_g child_g) in

         (* POP THE VALUE STACK: pop the top value and replace the term with the new value *)
         let new_active = pop_stack_on_return parent g' c.trace in

         {c with stack = k ; active = new_active ;
                 trace = ORet child_g.output :: c.trace} (* TRACE *)
       in
       List.map aux child_gs
     end

(* OP-CALL *)
(*---------*)

(** function to set up all the arguments for the function call. this is a hard function to
    implement, because we have to reverse engineer what the OPCODE is setting up. perhaps there
    is an alternative approach where we call the opcode directly with the correct parameters.

    Type width:
    - fixed-width : "uint256", "bool", "address"
    - variable-width : "string", "bytes"

    Plan:
    - address = opponent address
    - uint256 = symbolic
    - bool = symbolic / concrete branches
    - string = small string from a set of opponent strings (may need strings provided by the proponent)
    - bytes  = small bytes from a set of opponent bytes (may need bytes provided by the proponent)

    NOTES:
    - for now, we shall assume fixed-width small bytes/strings only.
    - for now, we shall return symbolic values for booleans.
    - we need to test if concretising is actually better. it could be that game semantics
    is so expensive that adding another state is worse than letting Z3 reason about values.
 *)
let set_args
      (g : evm_conf) (ap : address) (op_domains : op_domains)
      ((hash, f) : string * function_entry) tr
    :((Bytes.t * evm_conf) list) =
  
  let arg_types =
    List.map (fun io -> type_selector op_domains tr (Option.get f.signature) io.internal_type) f.inputs
  in
  let arg_variants = cartesian_product arg_types in (* execution paths *)

  (* function to flatten the list of args into a single bytes list.
     adds variable width at the end. *)
  let rec build_abi_args tail_offset (res_bytes , var_bytes) variant =
    match variant with
    | [] -> List.rev_append res_bytes (List.rev var_bytes)
    | Fixed bytes :: xs -> build_abi_args tail_offset (List.rev_append bytes res_bytes , var_bytes) xs
    | Variable (size , bytes) :: xs ->
       report_error_w_trace_if (List.length size  <> 32)
         "[building ABI args]: size is not encoded in 32 bytes" tr;
       report_error_w_trace_if (List.length bytes <> 32)
         "[building ABI args]: length is not encoded in 32 bytes" tr;
       build_abi_args (tail_offset+64)
         (res_bytes |> List.rev_append (int_to_32_bytes tail_offset),
          var_bytes |> List.rev_append size |> List.rev_append bytes) xs
  in
  let abi_args_variants =
    let hash = (U256.of_string hash) |> Bytes.of_U256 |> drop 28 in

    let aux variant =
      (* offset for the start of the block of dynamic bytes *)
      let tail_offset = List.length variant * 32 in

      let abi_variant = build_abi_args tail_offset ( List.rev hash , [] ) variant in
      abi_variant
    in
    List.map aux arg_variants
  in

  (* starting position in MEMORY for each G *)
  let start_position = Z.zero in

  (* function to store a list of bytes into start_position in g.mem *)
  let mstore_args bytes =
     let extend_memory = Gas.calculate_gas_extend_memory
                           g.memory [(start_position, U256.of_int(List.length bytes))]
     in
     let evm = charge_gas(g, Z.add _GAS_VERY_LOW extend_memory.cost) in

     let memory = Mem.extend evm.memory extend_memory.expand_by in
     let memory = Mem.write memory start_position bytes in

     (* has to be "payable", "nonpayable", "pure"/"view" in some versions *)
     let values_payable =
       match f.state_mutability , g.message.is_static with
       | Some "payable" , false -> [!o_default_spending ; U256.zero]
       | _ -> [U256.zero]
     in

     (* STACK ARGS FOR CALL OPCODE *)
     let aux value_payable =
       let call_gas          = U256_val (evm.gas_left) in
       let call_to           = U256_val (Bytes.to_U256 ap) in
       let call_value        = U256_val value_payable in
       let call_input_start  = U256_val start_position in
       let call_input_size   = U256_val (U256.of_int (List.length bytes)) in
       let call_output_start = U256_val U256.zero in
       let call_output_size  = U256_val U256.zero in

       bytes ,
       {evm with
         memory = memory;
         stack = call_gas
                 :: call_to
                 :: call_value
                 :: call_input_start
                 :: call_input_size
                 :: call_output_start
                 :: call_output_size
                 :: []
       }
     in
     List.map aux values_payable
  in
  let abi_encoded_g_variants = List.map mstore_args abi_args_variants in
  List.flatten abi_encoded_g_variants

(** function to enumerate all opponent addresses as callers for a given EVM configuration *)
let op_call_enumerate_callers
      (o_addresses : address list) acc (args, g : Bytes.t * evm_conf)
    :((Bytes.t * evm_conf) list) =
  (* function to set the caller for a single G for one address into acc *)
  let aux acc (a : address) =
    (args , {g with message = {g.message with target = a ; current_target = a}}) :: acc
  in
  (* apply the above function to set callers for all addresses *)
  List.fold_left aux acc o_addresses

(** function to play an OP-CALL move for a given object and hash
    argument `func` is a pair of hash and function_entry (abi)
    NOTE:
    - the object and has have already been selected. this function only makes ONE call
    - if we thread the accumulator through here, we would be fixing the exploration order.
    this may be faster than merging all the lists at the end, but it may be unavoidable anyway
    because would have to reverse the whole frontier each time if we use fold_left.
 *)
let op_call
      (c : game_conf) (g : evm_conf) (ap : address) (ob : yul_object)
      acc ((hash , func) : string * function_entry)
    :(game_conf list) =
  try
    if get_count hash c.hashes_called >= !o_call_bound
       || Option.equal (=) func.state_mutability (Some "view")
    then (!print_warning
            (warning_str ^ " o-call bound reached! " ^ (Option.get func.signature)); acc) else

      let c = {c with hashes_called = increment_count hash c.hashes_called} in

      (* no need for accumulator: only generates Gs *)
      let gs_args = set_args g ap c.op_domains (hash, func) c.trace in
      let gs_args_callers = List.fold_left (op_call_enumerate_callers c.addresses.o) [] gs_args in

      (* we do care about accumulator here, because now we are adding it to the frontier *)
      let aux acc (args,g_arg) =
        (* NOTE: oppopnent can only make PLAIN calls *)
        let {parent;child} : System.process_message_result = System.call g_arg in
        let ret_type_strings = List.map (fun (out : Abi_parser.Ast.io_type) -> out.type_) func.outputs in
        let parent = {parent with stuck_mode = Some (Call (Plain,ret_type_strings))} in 
        report_error_w_trace_if (List.for_all (fun (a,_) -> child.message.target <> a) c.addresses.p)
          "[OP CALL]: PR-address does not exist." c.trace;
        let cy : yul_conf =
          {
            s = {ecxt = [] ; term = ob.code} ;
            g = {child with object_ids = make_object_ids ob};
            l = Ast.IdentMap.empty ;
            n = Ast.IdentMap.empty ;
            call_history = [] ;
          }
        in
        { c with stack = Op parent :: c.stack ; active = Pr cy ;
                 trace = OCall (child.message.caller , ob.name , child.message.target ,
                                func, args, child.message.value)
                         :: c.trace ;
        } :: acc
      in
      List.fold_left aux acc gs_args_callers (* reverses list: Gs in reverse *)
  with
  | EVMError(_,msg) -> (* only try-catch opponent moves, which may cause invalid runs *)
     !print_warning (warning_str ^ " EVM exception raised: "^msg);
     acc

(** function to play an OP-CALL for each FUNCTION (i.e. hash) provided by the object's ABI
    NOTE:
    - the object has already been selected. this function only plays calls for ONE object
    - again, we could thread the accumulator here, but this would fix the exploration, and if
    use fold_left, we would need to reverse the frontier.
 *)
let op_call_fun_enumerator
      (c : game_conf) (g : evm_conf) (ap : address) acc (ob : yul_object) :(game_conf list) =
  (* TODO: CHECK. if this is a static call, just return *)
  if g.message.is_static || List.length c.stack > !o_call_stack_bound
  then (!print_warning (warning_str ^ " o-call stack bound reached!"); acc) else 
    match ob.abi with
    | Some contract ->
       (* TODO: this isn't adding the DEFAULT function into the enumeration. at the moment we can
          skip it because it may just add noise (and the DAO doesn't use it). but this is needed for
          completeness. *)
       let functions = List.filter_map (fun f -> f.hash >>= fun hash -> Some (hash, f)) contract.functions in
       List.fold_left (op_call c g ap ob) acc functions (* reverses list: hashes in reverse *)
    | None ->
       acc (* object has no functions, i.e., can't make any calls from here -- prune conf *)

(** function to play an OP-CALL for each OBJECT provided in addreses.p
    NOTE: if we were to thread the accumulator, we wouldn't have to flatten here.
    flattening has QUADRATIC complexity, which is not very good. this is because it is
    actually a List.concat, which is `h :: (t @ l2)`.
 *)
let op_call_ob_enumerator (c : game_conf) (g : evm_conf) :(game_conf list) =
  List.fold_left (fun acc (ap,ob) -> op_call_fun_enumerator c g ap acc ob) [] c.addresses.p

(* OP-MOVE ENUMERATOR *)
(*--------------------*)

(* TODO: we need to handle receive(), which does not have a hash!! we need a special case!! *) 
(** function to enumerate all opponent moves *) 
let op_moves (c : game_conf) (g : evm_conf) :(game_conf list) =
  let c_calls = (op_call_ob_enumerator c g) in
  let c_ret   =
    match c.stack with
    |[] -> c_calls
    | _ -> List.rev_append (List.rev (op_return c g)) c_calls
  in
  let c_wait =
    if !do_owait then
      match op_wait c with (* TODO: maybe improve this so the wait is more sensible *)
      | Some c_wait -> if !o_wait_first then c_wait :: c_ret else c_ret @ [c_wait]
      | None -> c_ret
    else
      c_ret
  in
  c_wait

(**************************)
(* EXECUTE GAME SEMANTICS *)
(**************************)

type search_strat = DFS | BFS
let search_strat = ref DFS

let debug_print_conf c =
  (* PRINT CONF TO START *)
  if !debug_flags.print_confs then
    begin
      Format.print_string "--- BEGIN: PRINTING GAME CONFIGURATION ---";
      Format.force_newline ();
      print_game_conf c;
      Format.print_string "--- END: PRINTING GAME CONFIGURATION ---";
      Format.force_newline ();
      Format.force_newline ();
    end

let debug_print_trace c =
  (* PRINT CONF TO START *)
  if !debug_flags.print_trace then
    begin
      Printf.printf "OP Domain:\n%s\n%!" (string_of_op_domains c.op_domains);
      Format.print_string "--- BEGIN: PRINTING TRACE ---";
      Format.force_newline ();
      print_trace c.trace;
      Format.force_newline ();
      Format.print_string "--- END: PRINTING TRACE ---";
      Format.force_newline ();
      Format.force_newline ();
    end

(* plays the symbolic execution game until the frontier is exhausted *)
let rec play_game (frontier : game_conf list) check_memo =
  match frontier with
  | [] -> print_endline "===== GAME DONE =====" (* [ END ] *)
  | c :: xs ->
     (* attempt memoisation (if enabled): if it's true, it succeeded, so c not already in memo_cache *)
     if check_memo c then

       (* select search strategy *)
       let new_frontier cs =
         match !search_strat with
         | DFS -> List.rev_append (List.rev cs) xs (* DFS *)
         | BFS -> List.rev_append (List.rev xs) cs (* BFS *)
       in
       (* let new_frontier cs = cs @ xs in (* DFS *) *)
       begin

         (* debug printing before playing game *)
         debug_print_conf c;
         debug_print_trace c;

         match c.active with
         | Pr yul_conf ->
            let internal_result : yul_result  = evaluate_conf yul_conf in (* [ PR: INTERNAL ] *)
            let new_cs =                                                  (* [ PR: MOVES    ] *)
              List.filter_map (pr_move_selector c) internal_result.stuck_confs
            in
            play_game (new_frontier new_cs) check_memo
         | Op evm_conf ->
            let new_cs = op_moves c evm_conf in                           (* [ OP: MOVES    ] *)
            play_game (new_frontier new_cs) check_memo
       end

     else play_game xs check_memo

(** function to initialise the memoisation set *)
let init_memoisation_cache n =
  let dummy_frame = Op EVM.dummy in
  let dummy_game_conf : game_conf =
    { active = dummy_frame ;
      stack = [] ;
      addresses = init_addresses [] [] ;
      trace = [] ;
      hashes_called = StringMap.empty ;
      op_domains = empty_op_domains ;
    }
  in
  Memoisation.make_bounded_set n dummy_game_conf

(** start the game from an object *)
let start_game_from_object
      o f abi_list full_abi_list o_bal o_spend
      no_wait wait_days max_days bfs memo_size
  =

  (* set options to set initial funds and initial number of opponents to add *)
  o_default_balance  := Z.of_string o_bal;
  o_default_spending := Z.of_string o_spend;
  do_owait           := not(no_wait);
  wait_time          := Z.mul one_day (Z.of_int wait_days);
  time_bound         := Z.mul one_day (Z.of_int max_days);
  if bfs then search_strat := BFS;

  (* use a check function for memoisation for efficiency *)
  let check_memo =
    if memo_size > 0 then
      let memo = init_memoisation_cache memo_size in
      (fun c -> Memoisation.add memo
                  {c with addresses     = init_addresses [] [] ;
                          trace         = [] ;
                          hashes_called = StringMap.empty ;
                          op_domains    = empty_op_domains ; })
    else (fun _ -> true)
  in
  
  (* assign all UIDs *)
  let o_with_uids = EvmYulAST.assign_negative_uids o in

  (* populate all objects with ABI annotations if necessary *)
  let o_with_abis =
    match abi_list , full_abi_list with
    | Some abi_list , Some full_abi_list ->
       EvmYulAST.annotate_objects_with_abis abi_list full_abi_list o_with_uids
    | None , Some full_abi_list ->
       EvmYulAST.annotate_objects_with_abis [] full_abi_list o_with_uids
    | Some abi_list , None ->
       EvmYulAST.annotate_objects_with_abis abi_list [] o_with_uids
    | None , None -> o_with_uids
  in

  (* set the root object after UIDs and ABI annotations *)
  root_object := Some o_with_abis;

  play_game [init_game_conf_from_object o_with_abis f] check_memo
