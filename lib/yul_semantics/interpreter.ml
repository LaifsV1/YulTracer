(** File containing Yul interpreter instantiated with specific Dialects
    @author Yu-Yang Lin
    created 20-Apr-2024

    For now, we only define the Dialect for our implementation of the Shanghai
    specifications, but this may change in the future as more versions are
    released, or as other non-EVM dialects of Yul are released.
 *)

(** for definition of Dialect *)
open Ast

(** Module for Interpreters *)
module Interpreter (D : Dialect) = struct
  open Reductions
  
  (** instantiate pretty printer *)
  module PrettyPrinter = Pretty_printer.YulPrettyPrinter(D)

  (** instantiate Yul CEK machine *)
  module CEK = YulCEK(D)
  
  (** print functions *)
  let print_code   = PrettyPrinter.print_statement
  let print_object = PrettyPrinter.print_yul_object

  (** set debug flags *)
  let set_flags = CEK.set_flags

  (** function to evaluate Yul objects *)
  let evaluate_object = CEK.evaluate_object

  (** function to evaluate Yul statements *)
  let evaluate_statement code = evaluate_object (CEK.YulAST_w_D.mk_code_object code)
end

