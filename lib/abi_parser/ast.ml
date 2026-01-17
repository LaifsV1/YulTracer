type io_type =
  {
    internal_type : string;
    name          : string;
    type_         : string;
  } [@@deriving yojson]

type function_entry =
  {
    inputs           : io_type list;
    outputs          : io_type list;
    state_mutability : string option;
    signature        : string option;
    (* name             : string option; *)
    (* type_            : string; *)
    hash             : string option;
    (* bound            : int option; *)
  } [@@deriving yojson]

type contract =
  {
    name            : string;
    functions       : function_entry list;
  } [@@deriving yojson]

(* let pretty_print_contract c = *)
(*   c *)
(*   |> contract_to_yojson               (\* → Yojson.Safe.t *\) *)
(*   |> Yojson.Safe.pretty_to_string ~std:true  *)
(*   |> print_endline *)

let to_string_io_type (io : io_type) : string =
  Printf.sprintf
    "{ internal_type = \"%s\"; name = \"%s\"; type_ = \"%s\" }"
    io.internal_type io.name io.type_

let to_string_option f = function
  | Some x -> Printf.sprintf "Some (%s)" (f x)
  | None -> "None"

let to_string_string_option = to_string_option (fun x -> Printf.sprintf "\"%s\"" x)

let to_string_list f lst =
  let items = List.map f lst in
  Printf.sprintf "[ %s ]" (String.concat "; " items)

let to_string_function_entry (fn : function_entry) : string =
  Printf.sprintf
    "{ inputs = %s; outputs = %s; state_mutability = %s; signature = %s; hash = %s }"
    (to_string_list to_string_io_type fn.inputs)
    (to_string_list to_string_io_type fn.outputs)
    (to_string_string_option fn.state_mutability)
    (to_string_string_option fn.signature)
    (to_string_string_option fn.hash)

let to_string_contract (c : contract) : string =
  Printf.sprintf
    "{ name = \"%s\"; functions = %s }"
    c.name
    (to_string_list to_string_function_entry c.functions)

let find_function (c : contract) (hash : string) : function_entry option =
  let aux function_entry = function_entry.hash = Some hash in
  List.find_opt aux c.functions

let make_4byte_hex s =
  let len = String.length s in
  if len > 8 then
    invalid_arg (Printf.sprintf "make_4byte_hex: input <%s> too long (%d > 8)" s len)
  else
    let pad = String.make (8 - len) '0' in
    "0x" ^ pad ^ s
