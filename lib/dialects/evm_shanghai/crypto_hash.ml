(** Module for Keccak Concretisation
    @author Yu-Yang Lin
    created: 01-Mar-2024

    This file implements the module for our model of Keccak concretisation.
    This module diverges from the original specifications and serves only in
    analogy to the Keccak utilities in the specifications. As such, this is
    purely a custom file of our own model for symbolic execution.
 *)

open Z
open Z3api
open Base_types

(* ------------------------------------------- *)
(* TYPES AND MODULES FOR KECCAK CONCRETISATION *)
(* ------------------------------------------- *)
type hash = zint

(** module for Keccak Sets. This is to concretise `keccak(v)` operations. *)
module K = struct
  (** map that represents the Keccak set. the type is `evm_val list -> Z.t` *)
  type t = hash BytesMap.t

  let empty = BytesMap.empty

  (** function to create a fresh U256 that will act as a new hash candidate.
      this fresh U256 may be made to satisfy constraints of our choice.
   *)
  let rec fresh_hash (p : U256.t -> bool) =
    let new_candidate = U256.random () in
    if p new_candidate
    then new_candidate
    else fresh_hash p

  (** property that fresh hashes need to satisfy *)
  let p k_map (x : U256.t) =
    (* note: this is extremely likely to fail because we have u256
       - assumption: we never hit an existing keccak already used in storage through
                     pointer arihtmetic. this can only happen by incrementing an
                     existing keccak by 1 multiple times (to the big number below).
       - potentiatlly: we need to flag when this occurs. perhaps if we ever reach
                       existing keccak used in K.t that is a key in storage through
                       pointer arithmetic, we should output a message.
     *)
    BytesMap.for_all
      (fun _ hash -> abs (x - hash) > U256.of_int 10000000) k_map

  type branch_type = {hash : U256.t ; lookup_map : t ; sigma : sigma}
  let mk_branch hash lookup_map sigma = {hash;lookup_map;sigma}
  
  (** Function that "hashes" (concretises the hash of) a value `v` using a keccak set `K`
      and symbolic environment `sigma`. we has as follows:
      if `v in dom(K)` then return singleton list `[K(v), K, sigma]`, else:
      - if the input `v` is a concrete U256,
        create fresh U256 value `z`, let `K'` = `K[v mapsto z]`, return `[z, K', sigma]`.
      - if the input `v` is a symbolic S256,
        1. for every symbolic or concrete `w_i` in `dom(K)`:
           let `sigma_i` = `sigma and (v = w_i)`
           if `SAT(sigma_i)`:
           let `z_i` = `K(w_i)`
           let `K_i` = `K[v mapsto z_i]`
        2. let `sigma_n` = `sigma and (v =/= w_0) and (v =/= w_1) ...`
                           for each symbolic or concrete w_i in dom(K)
           if `SAT(sigma_n)`:
           let `z_n` = fresh U256 value
           let `K_n` = `K[v mapsto z_n]`
        3. return list `[z_i , K_i, sigma_i]` for i = 0 to size(K) inclusive.

      This function returns a triple (Z : U256.t, MAP : t, SIGMA : sigma) where:
      - Z is the hash created from this process above
      - MAP is the new hash concretisation map that remembers all new 
   *)
  let hash (v : Bytes.t) (k_map : t) (sigma : sigma) :(branch_type list) =
    match v with
    | [] -> failwith "attempted to hash with empty input"
    | _ ->
       (* note: we check first because we branched on creation, and assume it's that value onwards *)
       match BytesMap.find_opt v k_map with
       | Some z -> [mk_branch z k_map sigma] (* if `v in dom(K)`, return singleton `[K(v), K, sigma]` *)
       | None ->                             (* else *)
          begin
            (* TODO: perhaps we need to check first whether v can be any w in dom(k_map) *)
            if Bytes.is_concrete v then                    (* if the input `v` is a concrete U256 *)
              let z =  fresh_hash (p k_map) in             (* create fresh U256 value `z` *)
              let k_map' = BytesMap.add v z k_map in       (* let `K'` = `K[v mapsto z]` *)
              [mk_branch z k_map' sigma]                   (* return `[z, K', sigma]` *)
            else                                           (* otherwise `v` is a symbolic S256 *)
              (* # PART 1: branching on equal symbolic input values.
                 This step is necessary in case the symbolic input could be equal to any of the
                 previous values hashed. If it can be equal, we branch with updated sigma and k_map. *)
              BytesMap.fold                                (* for every... *)
                begin
                  fun w_i z_i acc ->                       (* let `z_i` = `K(w_i)` *)
                  (* note: we drop the check for symbolic cases bceause we want to accumulate
                     constraints that check if symbolic inputs can be one of the concrete ones.
                     e.g. if someone is checking if an incoming address is eqaul to a hardcoded
                     hash of one. TODO: still need to check if this is ok....... *)
                  let sigma_i =                            (* let `sigma_i` = `sigma and (v = w_i)` *)
                    Bytes.symbolic_concat_eq v w_i sigma
                  in
                  if check_sigma_sat sigma_i then          (* if `SAT(sigma_i)` *)
                    (* note: we no longer add v to k_map to avoid adding effectively duplicate keys *)
                    (mk_branch z_i k_map sigma_i) :: acc   (* add to list. *)
                  else acc                                 (* skip, unsat (not eq) *)
                end
                k_map
                begin
                  (* # PART 2: the symbolic input may be different to everything seen before.
                     NOTE: if the input value cannot be different to any of the previous values,
                     it means the value is equal to one of the previous values, so this branch
                     is skipped. *)
                  (* let `sigma_n` = `sigma and (v =/= w_0) and (v =/= w_1) ...`  ...*)
                  let sigma_n =
                    BytesMap.fold                          (* ...for every... *)
                      (fun w_i _ (acc_sigma) ->            (* add `(v =/= w_i)` to sigma *)
                        Bytes.symbolic_concat_eq v w_i acc_sigma)
                      k_map
                      sigma
                  in
                  if check_sigma_sat sigma_n then          (* if `SAT(sigma_n)` *)
                    let z_n = fresh_hash (p k_map) in      (* let `z_n` = fresh U256 value *)
                    let k_n =                              (* let `K_n` = `K[v mapsto z_n]` *)
                      BytesMap.add v z_n k_map
                    in
                    [mk_branch z_n k_n sigma_n]            (* add into the accumulator *)
                  else []                                  (* skip because unsat *)
                end
          end
end
