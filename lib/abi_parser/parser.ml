(* open Yojson.Basic *)
open Yojson.Basic.Util
open Ast
open Keccak256

(** Parse I/O parameters *)
let parse_io json =
  {
    internal_type = json |> member "internalType" |> to_string;
    name          = json |> member "name"         |> to_string;
    type_         = json |> member "type"         |> to_string;
  }

(** [to_4byte_hex hex] returns "0x" ^ a exactly-8-hex-char string:
    - If [hex] is ≥8 chars, it takes the first 8.
    - If [hex] is <8 chars, it pads on the left with '0's. *)
let to_4byte_hex (hex : string) : string =
  (* 1) detect & strip an existing 0x/0X *)
  let has_prefix =
    String.length hex >= 2
    && (String.sub hex 0 2 = "0x" || String.sub hex 0 2 = "0X")
  in
  let prefix =
    if has_prefix then String.sub hex 0 2 else "0x"
  in
  let raw =
    if has_prefix
    then String.sub hex 2 (String.length hex - 2)
    else hex
  in

  (* 2) pad or truncate raw hex digits to exactly 8 chars *)
  let len = String.length raw in
  let eight =
    if len >= 8 then
      String.sub raw 0 8
    else
      String.make (8 - len) '0' ^ raw
  in

  (* 3) re-attach one “0x” (or “0X”) *)
  prefix ^ eight

(** Parse Function entry, auto-computing hash if missing. *)
let parse_function_entry json =
  let inputs           = json |> member "inputs"          |> to_list |> List.map parse_io in
  let outputs          = json |> member "outputs"         |> to_list |> List.map parse_io in
  let state_mutability = json |> member "stateMutability" |> to_option to_string in
  let signature        = json |> member "signature"       |> to_option to_string in
  (* pull hash if present, otherwise derive from signature *)
  let hash =
    match json |> member "hash" |> to_option to_string with
    | Some h -> Some (to_4byte_hex h)
    | None ->
       (* only compute if we actually have a signature *)
       Option.map
         (fun sig_ ->
           let full = Keccak256.keccak256 sig_ in
           to_4byte_hex full)
         signature
  in
  {
    inputs ;
    outputs ;
    state_mutability ;
    hash ;
    signature ;
  }

(** Parse Contract *)
let parse_contract json =
  let abi_entries = json |> member "abi" |> to_list in
  let mk_fallback_function json =
    {
      inputs           = []; 
      outputs          = [];
      state_mutability = json |> member "stateMutability" |> to_option to_string;
      hash             = Some "0x00000000";
      signature        = Some "fallback()";
      (* name             = json |> member "name"            |> to_option to_string; *)
      (* type_            = json |> member "type"            |> to_string; *)
    }
  in
  let fallback_entry =
    abi_entries
    |> List.filter (fun json -> member "type" json |> to_string = "fallback")
    |> List.map mk_fallback_function
  in
  let mk_receive_function json =
    {
      inputs           = [];
      outputs          = [];
      state_mutability = json |> member "stateMutability" |> to_option to_string;
      hash             = None;
      signature        = Some "receive()";
    }
  in
  let receive_entry =
    abi_entries
    |> List.filter (fun json -> member "type" json |> to_string = "receive")
    |> List.map mk_receive_function
  in
  {
    name = json |> member "name" |> to_string;
    functions =
      abi_entries
      |> List.filter (fun json -> member "type" json |> to_string = "function")
      |> List.map parse_function_entry
      |> List.append fallback_entry
      |> List.append receive_entry;
  }

(** Parse JSON file into structured OCaml data *)
let parse_json filename =
  let json = Yojson.Basic.from_file filename in
  json |> to_list |> List.map parse_contract

(** Find contract name that matches deployed name
    e.g. ManagedAccount_375_deployed => ManagedAccount

    more generally: STR + _ + INT + _ + deployed

    NOTE: We depend here on Solidity contracts having unique names.
    this is because Yul allows Objects to have the same name so long as they
    don't both occur at the same level. Solidity simplifies this for us by
    making the flattened list of contracts have only unique names.
 *)
let find_deployed_contract name abi_list =
  List.find_opt (fun (c : contract) -> c.name = name) abi_list


(** function for testing *)
let test () =
  let contracts = parse_json "DAO.json" in
  List.iter (fun contract -> Format.printf "%a\n" Pretty_printer.pp_contract contract) contracts

