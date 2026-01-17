(** Ethereum Virtual Machine (EVM) Immutable Instructions for Yul.
    @author Yu-Yang Lin
      created: 01-Jul-2025

      This file contains an implementation for Yul-specific immutable opcodes.
      Immutable opcodes are specific to EVM-flavoured Yul. In actual EVM bytecode,
      immutable values are stored as values appended at the end of object code
      and are loaded via codecopy with hardcoded pointers. Because the Solidity compiler
      does not do this for Yul, we instead model the behaviour with a separate "buffer"
      in Accounts. These functions are used to access this "buffer" without having to
      modify our model for evm.code or Yul Objects with immutable values.
 *)

open Init
open Base_types
open Fork_types

(** Function set a linker address for the given name (library filepath) *)
let setlinkersymbol (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  | U256_val name :: U256_val address :: [] ->
     begin
       match ZintMap.find_opt name evm.env.linker with
       | None -> let linker = ZToEvmMap.set name (U256_val address) evm.env.linker in
                 {evm with stack = []; env = {evm.env with linker}}
       | Some _ -> failwith ("linker symbol added twice: " ^ (U256.to_ascii_string name))
     end
  | _ -> assert(false)

(** Function load a linker address for the given name (library filepath) *)
let linkersymbol (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  | U256_val name :: [] ->
     begin
       match ZintMap.find_opt name evm.env.linker with
       | None -> failwith ("linker symbol not found: " ^ (U256.to_ascii_string name))
       | Some v -> {evm with stack = [ v ]}
     end
  | _ -> assert(false)
