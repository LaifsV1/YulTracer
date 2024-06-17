(* This file contains an API to interface with Z3's API *)
(* It currently uses its own AST since it is easier to manipulate, but I may change it *)
(* API functions are defined at the bottom of this file. *)
(* NOTE: we do not perform the EVM-equivalent symbolic execution here. This is merely an API
         and has base functions. For instance, EVM `div` checks for zero and if not zero,
         but `udiv` here is Z3's udiv, which is simple floor-div without checks, which is
         undefined for division by zero. *)

open Z3
open Format

let next_symbolic_id = ref 0
let get_fresh_symbolic_id () = let i = !next_symbolic_id in next_symbolic_id := i + 1; i 
let ctx = Z3.mk_context []
let solver = Z3.Solver.mk_simple_solver ctx

(* unparsing *)
let string_of_z3 e = Expr.to_string e
let string_of_sequence delim f ls = String.concat delim (List.map f ls)
let string_of_list f ls = Printf.sprintf "[%s]" (String.concat ";" (List.map f ls))

(* sorts *)
let bv256_sort = BitVector.mk_sort ctx 256
let bv8_sort   = BitVector.mk_sort ctx 8
let bool_sort  =   Boolean.mk_sort ctx

(* Z3 FUNCTIONS FOR INTERNAL USE
   note: functions ending with _z3 build an object of type Z3.Expr.expr
 *)
(* constructors for constants *)
(* variables *)
let str_symbol_z3 x = Symbol.mk_string ctx x
let bv256_var_z3  x :(Expr.expr) = BitVector.mk_const ctx (str_symbol_z3 x) 256
let bv8_var_z3    x :(Expr.expr) = BitVector.mk_const ctx (str_symbol_z3 x) 8
let bool_var_z3   x :(Expr.expr) =   Boolean.mk_const ctx (str_symbol_z3 x)
(* bv256 *)
let bv256_numeral_z3 s :(Expr.expr) = BitVector.mk_numeral ctx s 256
let bv256_zero_z3      :(Expr.expr) = bv256_numeral_z3 "0"
(* booleans *)
let true_z3  :(Expr.expr) = Boolean.mk_true  ctx
let false_z3 :(Expr.expr) = Boolean.mk_false ctx

(* bool ops - returns bool expr *)
(* bool arguments *)
let not_z3     e        :(Expr.expr) = Boolean.mk_not     ctx e
let or_z3      es       :(Expr.expr) = Boolean.mk_or      ctx es
let and_z3     es       :(Expr.expr) = Boolean.mk_and     ctx es
let xor_z3     e1 e2    :(Expr.expr) = Boolean.mk_xor     ctx e1 e2
(* parametrically polymorphic *)
let eq_z3      e1 e2    :(Expr.expr) = Boolean.mk_eq      ctx e1 e2
let ite_z3     eb e1 e2 :(Expr.expr) = Boolean.mk_ite     ctx eb e1 e2
let implies_z3 e1 e2    :(Expr.expr) = Boolean.mk_implies ctx e1 e2

(* bv ops (as organised in the EVM specs) *)
(* arithmetic operations - returns bv expr
   unimplemented: addmod, mulmod, exponentiation, signextend (different implementation)
 *)
let bv_add_z3  e1 e2 :(Expr.expr) = BitVector.mk_add  ctx e1 e2
let bv_mul_z3  e1 e2 :(Expr.expr) = BitVector.mk_mul  ctx e1 e2
let bv_sub_z3  e1 e2 :(Expr.expr) = BitVector.mk_sub  ctx e1 e2
let bv_udiv_z3 e1 e2 :(Expr.expr) = BitVector.mk_udiv ctx e1 e2
let bv_sdiv_z3 e1 e2 :(Expr.expr) = BitVector.mk_sdiv ctx e1 e2
let bv_neg_z3  e1    :(Expr.expr) = BitVector.mk_neg  ctx e1
let bv_urem_z3 e1 e2 :(Expr.expr) = BitVector.mk_urem ctx e1 e2
let bv_srem_z3 e1 e2 :(Expr.expr) = BitVector.mk_srem ctx e1 e2
(* bitwise operations - returns bv expr
   unimplemented: get_byte
 *) 
let bv_and_z3 e1 e2 :(Expr.expr) = BitVector.mk_and  ctx e1 e2
let bv_or_z3  e1 e2 :(Expr.expr) = BitVector.mk_or   ctx e1 e2
let bv_xor_z3 e1 e2 :(Expr.expr) = BitVector.mk_xor  ctx e1 e2
let bv_not_z3 e     :(Expr.expr) = BitVector.mk_not  ctx e
let bv_shl_z3 e1 e2 :(Expr.expr) = BitVector.mk_shl  ctx e1 e2
let bv_shr_z3 e1 e2 :(Expr.expr) = BitVector.mk_lshr ctx e1 e2
let bv_sar_z3 e1 e2 :(Expr.expr) = BitVector.mk_ashr ctx e1 e2
(* bitwise operations that take integer arguments: inclusive range *)
let bv_extract_z3 low high e :(Expr.expr) = BitVector.mk_extract ctx high low e
let bv_sign_ext_z3 bits e :(Expr.expr) = BitVector.mk_sign_ext ctx bits e
let bv_zero_ext_z3 bits e :(Expr.expr) = BitVector.mk_zero_ext ctx bits e
(* bitwise operation to concatenate a list of bitvectors *)
let bv_concat_z3 bvs :(Expr.expr) =
  match bvs with
  | [] -> failwith "empty bitvector list for concatenation"
  | hd :: tl ->  List.fold_left (fun acc bv -> BitVector.mk_concat ctx acc bv) hd tl
(* comparison - returns bool expr
   note: equal implemented above for booleans
 *)
let bv_ult_z3  e1 e2 :(Expr.expr) = BitVector.mk_ult  ctx e1 e2 (* less than *)
let bv_slt_z3  e1 e2 :(Expr.expr) = BitVector.mk_slt  ctx e1 e2
let bv_ule_z3  e1 e2 :(Expr.expr) = BitVector.mk_ule  ctx e1 e2 (* less equal *)
let bv_sle_z3  e1 e2 :(Expr.expr) = BitVector.mk_sle  ctx e1 e2
let bv_ugt_z3  e1 e2 :(Expr.expr) = BitVector.mk_ugt  ctx e1 e2 (* greater than *)
let bv_sgt_z3  e1 e2 :(Expr.expr) = BitVector.mk_sgt  ctx e1 e2
let bv_uge_z3  e1 e2 :(Expr.expr) = BitVector.mk_uge  ctx e1 e2 (* greater equal *)
let bv_sge_z3  e1 e2 :(Expr.expr) = BitVector.mk_sge  ctx e1 e2
let bv_is_zero_z3 e  :(Expr.expr) = eq_z3 e bv256_zero_z3

(* quantifier *)
let forall_z3 vars body =
  if vars = [] then true_z3 else
    Quantifier.expr_of_quantifier (Quantifier.mk_forall_const ctx vars body None [] [] None None)
let exists_z3 vars body =
  if vars = [] then false_z3 else
    Quantifier.expr_of_quantifier (Quantifier.mk_exists_const ctx vars body None [] [] None None)

(* solver operations *)
let check es =
  match Z3.Solver.check solver es with  
  | UNSATISFIABLE -> false
  | UNKNOWN       -> failwith (sprintf "couldn't check if sat: %s" (string_of_z3 (and_z3 es)))
  | SATISFIABLE   -> true

let get_model () =
  match Z3.Solver.get_model solver with
  | None -> failwith "couldn't get model"
  | Some m -> m

(* DATASTRUCTURES FOR OUR INTERNAL REPRESENTATION *)
(* operators *)
type unary_op = BVneg | BVnot | BViszero (* BV unary operators *)
type binary_op =
  | BVadd | BVmul | BVsub | BVudiv | BVsdiv | BVurem | BVsrem         (* BV arithmetic *)
  | BVand | BVor  | BVxor | BVshl  | BVshr  | BVsar                   (* BV bitwise *)
  | BVult | BVslt | BVule | BVsle  | BVugt  | BVsgt  | BVuge  | BVsge (* BV comparisons *)

(* symbolic constants *)
type symbolic_var = {str : string; id : int}
let string_of_symbolic_var {str;id} = Printf.sprintf "%s_%d" str id

(* propositions *)
type prop =
  (* constants *)
  | ConstBV256 of Z.t
  | ConstBV8   of Z.t
  | ConstTrue
  | ConstFalse
  (* variables *)
  | VarBV256 of symbolic_var
  | VarBV8   of symbolic_var
  | VarBool  of symbolic_var
  (* bit-vector operations -- done this way for extensibility *)
  | BVunop  of unary_op  * prop
  | BVbinop of binary_op * prop * prop
  (* bit-vector operations that take integer input *)
  | BVExtract of int * int * prop
  | BVSignExt of int * prop
  (* bit-vector operations for concatenation *)
  | BVConcat of prop list
  (* boolean operations -- top-level because extensibility is not needed *)
  | NotProp of prop        (* returns bool sort *)
  | OrProp  of (prop list) (* makes it easier to flatten *) (* returns bool sort *)
  | AndProp of (prop list) (* makes it easier to flatten *) (* returns bool sort *)
  | XorProp of prop * prop (* returns bool sort *)
  | EqProp  of prop * prop (* returns bool sort *)
  | ImpliesProp of prop * prop
  | IteProp     of prop * prop * prop

(* internal op representation to z3 constructors *)
let z3_constructor_of_unary_op (unop : unary_op) =
  match unop with
  | BVneg    -> bv_neg_z3
  | BVnot    -> bv_not_z3
  | BViszero -> bv_is_zero_z3

let z3_constructor_of_binary_op (binop : binary_op) =
  match binop with
  | BVadd  -> bv_add_z3
  | BVmul  -> bv_mul_z3
  | BVsub  -> bv_sub_z3
  | BVudiv -> bv_udiv_z3
  | BVsdiv -> bv_sdiv_z3
  | BVurem -> bv_urem_z3
  | BVsrem -> bv_srem_z3
  | BVand  -> bv_and_z3
  | BVor   -> bv_or_z3
  | BVxor  -> bv_xor_z3
  | BVshl  -> bv_shl_z3
  | BVshr  -> bv_shr_z3
  | BVsar  -> bv_sar_z3
  | BVult  -> bv_ult_z3
  | BVslt  -> bv_slt_z3
  | BVule  -> bv_ule_z3
  | BVsle  -> bv_sle_z3
  | BVugt  -> bv_ugt_z3
  | BVsgt  -> bv_sgt_z3
  | BVuge  -> bv_uge_z3
  | BVsge  -> bv_sge_z3

(* Z3 Expression from our internal Prop *)
let rec z3_of_prop (prop : prop) :(Expr.expr) =
  match prop with
  (* WARNING: We use FORMAT here, which needs the 0x prefix.
              If no prefix is given, it's considered a decimal numeral *)
  | ConstBV256 z -> bv256_numeral_z3 (Z.format "%#x" z) (* todo: check that it is within range of 256 *)
  | ConstBV8   z -> bv256_numeral_z3 (Z.format "%#x" z) (* todo: check that it is within range of 8 *)
  | ConstTrue -> true_z3
  | ConstFalse -> false_z3
  | VarBV256 s -> bv256_var_z3 (string_of_symbolic_var s)
  | VarBV8 s -> bv8_var_z3 (string_of_symbolic_var s)
  | VarBool s -> bool_var_z3 (string_of_symbolic_var s)
  | BVunop (op, p) -> (z3_constructor_of_unary_op op) (z3_of_prop p)
  | BVbinop (op, p1, p2) -> (z3_constructor_of_binary_op op) (z3_of_prop p1) (z3_of_prop p2)
  | NotProp p -> not_z3 (z3_of_prop p)
  | OrProp ps -> or_z3 (List.map z3_of_prop ps)
  | AndProp ps -> and_z3 (List.map z3_of_prop ps)
  | XorProp (p1, p2) -> xor_z3 (z3_of_prop p1) (z3_of_prop p2)
  | EqProp (p1, p2) -> eq_z3 (z3_of_prop p1) (z3_of_prop p2)
  | ImpliesProp (p1, p2) -> implies_z3 (z3_of_prop p1) (z3_of_prop p2)
  | IteProp (pb, ptt, pff) -> ite_z3 (z3_of_prop pb) (z3_of_prop ptt) (z3_of_prop pff)
  | BVExtract (low,high,prop) -> bv_extract_z3 low high (z3_of_prop prop)
  | BVSignExt (bits,prop) -> bv_sign_ext_z3 bits (z3_of_prop prop)
  | BVConcat ls -> bv_concat_z3 (List.map z3_of_prop ls)
  
(* API FUNCTIONS *)
(* check_sat : prop -> bool, get_model_s : unit -> string *)
let string_of_prop (prop : prop) :(string) = string_of_z3 (z3_of_prop prop) (* todo: adhoc? *)
let check_prop_sat prop = check [z3_of_prop prop]
let get_model_s () = Z3.Model.to_string (get_model ())
let simplify (e : Expr.expr) = Expr.simplify e None

(* prop builder functions *)

(* propositions *)
(* U256 *)
let mk_bv256_const z     :(prop) = ConstBV256 z      (* bv256 numeral *)
let mk_bv256_var   sname :(prop) = VarBV256   sname  (* symbolic int *)
let mk_bv256_zero        :(prop) = mk_bv256_const Z.zero
let mk_bv256_one         :(prop) = mk_bv256_const Z.one
(* U8 *)
let mk_bv8_const   z     :(prop) = ConstBV8   z      (* bv8 numeral *)
let mk_bv8_var     sname :(prop) = VarBV8     sname  (* symbolic int *)
(* booleans *)
let mk_true              :(prop) = ConstTrue         (* true *)
let mk_false             :(prop) = ConstFalse        (* false *)
let mk_bool_var    sname :(prop) = VarBool    sname  (* symbolic bool *)

(* UNARY operations *)
(* prefix NOT operator *)
let mk_not p =
  match p with
  | ConstFalse -> ConstTrue
  | ConstTrue  -> ConstFalse
  | _ -> NotProp p

(* prefix unary minus *)
let mk_bv_neg p =
  match p with
  | ConstBV256 z -> ConstBV256 (Z.neg z)
  | _ -> BVunop (BVneg, p) (* TODO: probably can negate directly when concrete *)

(* prefix unary minus *)
let mk_bv_not p = 
  match p with
  | ConstBV256 z -> ConstBV256 (Z.lognot z)
  | _ -> BVunop (BVnot, p) (* TODO: probably can not directly when concrete *)

(* prefix unary minus *)
let mk_bv_is_zero p = 
  match p with
  | ConstBV256 z -> if Z.equal z Z.zero then ConstTrue else ConstFalse
  | _ -> BVunop (BViszero, p) (* TODO: do concretely too *)

(* BINARY operations *)
(* infix EQUALS *)
let ( ==. ) p1 p2 =
  (*Printf.printf "==. %s %s \n" (string_of_prop p1) (string_of_prop p2);*)
  if p1 = p2 then ConstTrue else
  match p1,p2 with
  | ConstTrue , ConstFalse | ConstFalse , ConstTrue -> ConstFalse
  | ConstBV256 s1, ConstBV256 s2 -> if s1 = s2 then ConstTrue else ConstFalse
  | _ -> EqProp (p1, p2)

(* infix DIFFERENT *)
let ( <>. ) p1 p2 =
  if p1 = p2 then ConstFalse else
  match p1,p2 with
  | ConstTrue , ConstFalse | ConstFalse , ConstTrue -> ConstTrue
  | ConstBV256 s1, ConstBV256 s2 -> if s1 = s2 then ConstFalse else ConstTrue
  | _ -> mk_not (p1 ==. p2)

(* infix IMPLIES *)
let ( =>. ) p1 p2 =
  match p1 with
  | ConstTrue  -> p2
  | ConstFalse -> ConstTrue (* vacuous truth *)
  | _          -> ImpliesProp (p1, p2)

(* infix OR *)
let ( ||. ) p1 p2 =
  match p1,p2 with
  | ConstTrue , _ | _ , ConstTrue -> ConstTrue
  | ConstFalse , ConstFalse -> ConstFalse
  | ConstFalse , _ -> p2
  | _ , ConstFalse -> p1
  | OrProp p1 , OrProp p2 -> OrProp (List.sort_uniq compare (p1 @ p2))
  | OrProp p1 , p2        -> OrProp (List.sort_uniq compare (p1 @ [p2]))
  |        p1 , OrProp p2 -> OrProp (List.sort_uniq compare (p1 :: p2))
  | _ -> OrProp (List.sort_uniq compare [p1;p2])

(* infix AND *)
let ( &&. ) p1 p2 =
  match p1,p2 with
  | ConstFalse , _ | _ , ConstFalse -> ConstFalse
  | ConstTrue , ConstTrue -> ConstTrue
  | ConstTrue , _ -> p2
  | _ , ConstTrue -> p1
  | AndProp p1 , AndProp p2 -> AndProp (List.sort_uniq compare (p1 @ p2))
  | AndProp p1 , p2         -> AndProp (List.sort_uniq compare (p1 @ [p2]))
  |         p1 , AndProp p2 -> AndProp (List.sort_uniq compare (p1 :: p2))
  | _ -> AndProp (List.sort_uniq compare [p1;p2])

(* infix XOR *)
let mk_xor p1 p2 =
  match p1,p2 with
  | ConstTrue , ConstFalse | ConstFalse , ConstTrue -> ConstTrue
  | ConstFalse , ConstFalse -> ConstFalse
  | ConstTrue  , ConstTrue -> ConstFalse
  | _ -> XorProp (p1, p2)

(* prefix ITE *)
let mk_ite pb ptt pff =
  match pb with
  | ConstTrue -> ptt
  | ConstFalse -> pff
  | _ -> IteProp (pb, ptt, pff)

(* todo: compute where possible, e.g. bv1 + bv2 *)
(* binop builder *)
(* | BVadd | BVmul | BVsub | BVudiv | BVsdiv | BVurem | BVsrem         (* BV arithmetic *)
   | BVand | BVor  | BVxor | BVshl  | BVshr  | BVsar                   (* BV bitwise *)
   | BVult | BVslt | BVule | BVsle  | BVugt  | BVsgt  | BVuge  | BVsge (* BV comparisons *)
 *)
let mk_bv_add p1 p2 =
  match p1,p2 with
  | ConstBV256 z1, ConstBV256 z2 -> ConstBV256 (Z.add z1 z2)
  | _ -> BVbinop (BVadd, p1, p2)

let mk_bv_mul p1 p2 =
  match p1,p2 with
  | ConstBV256 z1, ConstBV256 z2 -> ConstBV256 (Z.mul z1 z2)
  | _ -> BVbinop (BVmul, p1, p2)

let mk_bv_sub p1 p2 =
  match p1,p2 with
  | ConstBV256 z1, ConstBV256 z2 -> ConstBV256 (Z.sub z1 z2)
  | _ -> BVbinop (BVsub, p1, p2)

let mk_bv_udiv p1 p2 = 
  match p1,p2 with
  | ConstBV256 z1, ConstBV256 z2 -> ConstBV256 (Z.fdiv z1 z2) (* note: doesn't check div by zero *)
  | _ -> BVbinop (BVudiv, p1, p2)

(* todo: Zarith only has fdiv. If p1 and p2 are concrete, we need to interpret it according to sign *)
let mk_bv_sdiv p1 p2 = BVbinop (BVsdiv, p1, p2)

let mk_bv_urem p1 p2 = 
  match p1,p2 with
  | ConstBV256 z1, ConstBV256 z2 -> ConstBV256 (Z.rem z1 z2) (* note: doesn't check div by zero *)
  | _ -> BVbinop (BVurem, p1, p2)

(* todo: Zarith only has fdiv. If p1 and p2 are concrete, we need to interpret it according to sign *)
let mk_bv_srem p1 p2 = BVbinop (BVsrem, p1, p2)

let mk_bv_and p1 p2 =
  match p1,p2 with
  | ConstBV256 z1, ConstBV256 z2 -> ConstBV256 (Z.logand z1 z2)
  | _ -> BVbinop (BVand, p1, p2)

let mk_bv_or p1 p2 =
  match p1,p2 with
  | ConstBV256 z1, ConstBV256 z2 -> ConstBV256 (Z.logor z1 z2)
  | _ -> BVbinop (BVor, p1, p2)

let mk_bv_xor p1 p2 =
  match p1,p2 with
  | ConstBV256 z1, ConstBV256 z2 -> ConstBV256 (Z.logxor z1 z2)
  | _ -> BVbinop (BVxor, p1, p2)

let mk_bv_shl p1 p2 =
  match p1,p2 with
  | ConstBV256 z1, ConstBV256 z2 -> ConstBV256 (Z.shift_left z1 (Z.to_int z2))
  | _ -> BVbinop (BVshl, p1, p2)

let mk_bv_shr p1 p2 =
  match p1,p2 with
  | ConstBV256 z1, ConstBV256 z2 -> ConstBV256 (Z.shift_right_trunc z1 (Z.to_int z2))
  | _ -> BVbinop (BVshr, p1, p2)

(* note: default Z.shift_right appears to be arithmetic *) (* todo: check if true <= *)
let mk_bv_sar p1 p2 =
  match p1,p2 with
  | ConstBV256 z1, ConstBV256 z2 -> ConstBV256 (Z.shift_right z1 (Z.to_int z2))
  | _ -> BVbinop (BVshr, p1, p2)

(* bitwise operations that take integers *)
(* NOTE: these result in non-256 bitvectors. CAREFUL. perhaps needs programmatic way to enforce. *)
let mk_bv_extract low high p = BVExtract (low,high,p) (* inclusive low to high *)
let mk_bv_sign_ext    bits p = BVSignExt (bits,p)

(* concatenation function *)
let mk_bv_concat ps = BVConcat ps

(* comparison functions return bool sort, but we may need bv sort. need handle this in code
   constructions: BVult | BVslt | BVule | BVsle  | BVugt  | BVsgt  | BVuge  | BVsge
 *)
let mk_bv_ult p1 p2 =
  match p1,p2 with
  | ConstBV256 z1, ConstBV256 z2 -> if Z.lt z1 z2 then mk_true else mk_false
  | _ -> BVbinop (BVult, p1, p2)

let mk_bv_ule p1 p2 =
  match p1,p2 with
  | ConstBV256 z1, ConstBV256 z2 -> if Z.leq z1 z2 then mk_true else mk_false
  | _ -> BVbinop (BVule, p1, p2)

let mk_bv_ugt p1 p2 =
  match p1,p2 with
  | ConstBV256 z1, ConstBV256 z2 -> if Z.gt z1 z2 then mk_true else mk_false
  | _ -> BVbinop (BVugt, p1, p2)

let mk_bv_uge p1 p2 =
  match p1,p2 with
  | ConstBV256 z1, ConstBV256 z2 -> if Z.geq z1 z2 then mk_true else mk_false
  | _ -> BVbinop (BVuge, p1, p2)

(* todo: missing all the comparison instructions *)
let mk_binop op p1 p2 = BVbinop (op, p1, p2) (* TODO: bunch of BV operations *)
 

(* SYMBOLIC ENVIRONMENT -- SIGMA
   List of clauses
 *)
type sigma = prop list

(* todo: clause_map, clause_fold, sigma_fold, string_of_clause, string_of_sigma *)

let default_sname = "w"

let name_of_svar str id = Printf.sprintf "%s_%d" str id

let sigma_set_false : sigma -> sigma =
  fun _ -> [ConstFalse]

(* sigma maker functions *)
let sigma_fresh_bv256_var sigma p =
  let new_id  = get_fresh_symbolic_id () in
  let new_sname = {str=default_sname;id=new_id} in
  (mk_bv256_var new_sname ==. p) :: sigma , new_sname

let sigma_newvar_eq_bool sigma p =
  let new_id  = get_fresh_symbolic_id () in
  let new_sname = {str=default_sname;id=new_id} in
  (mk_bool_var new_sname ==. p) :: sigma , new_sname

let sigma_newvar_neq_bv sigma p =
  let new_id  = get_fresh_symbolic_id () in
  let new_sname = {str=default_sname;id=new_id} in
  (mk_bv256_var new_sname <>. p) :: sigma , new_sname

let sigma_newvar_neq_bool sigma p =
  let new_id  = get_fresh_symbolic_id () in
  let new_sname = {str=default_sname;id=new_id} in
  (mk_bool_var new_sname <>. p) :: sigma , new_sname

(* bv8 creation function *)
let sigma_fresh_bv8_var sigma p =
  let new_id  = get_fresh_symbolic_id () in
  let new_sname = {str=default_sname;id=new_id} in
  (mk_bv8_var new_sname ==. p) :: sigma , new_sname

(* convert sigma to Z3 expr *)  
let is_sigma_empty : sigma -> bool = function
  | [] -> true
  | _ -> false

let string_of_sigma sigma = string_of_sequence " and \n" string_of_prop sigma
let check_sigma_sat sigma =
  check (List.map z3_of_prop sigma)


