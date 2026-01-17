open Ast

let pp_option pp fmt = function
  | Some x -> Format.fprintf fmt "Some(%a)" pp x
  | None -> Format.fprintf fmt "None"

let pp_io_type fmt { internal_type; name; type_ } =
  Format.fprintf fmt "  I/O{ internal_type = %S; name = %S; type_ = %S }"
    internal_type name type_

let pp_function_entry fmt { inputs; outputs; state_mutability; hash; signature } =
  Format.fprintf fmt "  Function{ inputs = [%a]; outputs = [%a]; state_mutability = %a; hash = %a ; signature = %a}"
    (Format.pp_print_list pp_io_type) inputs
    (Format.pp_print_list pp_io_type) outputs
    (pp_option Format.pp_print_string) state_mutability
    (pp_option Format.pp_print_string) hash
    (pp_option Format.pp_print_string) signature

let pp_contract fmt { name; functions } =
  Format.fprintf fmt "Contract{ name = %S; functions = [%a] }"
    name
    (Format.pp_print_list pp_function_entry) functions
