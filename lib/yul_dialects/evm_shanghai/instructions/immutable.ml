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
open State

(** Function store an immutable value for the current address *)
let setimmutable (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  | _ :: U256_val name :: value :: [] ->
     let set_immutable (current : Account.t) =
       {current with immutables = ZToEvmMap.set name value current.immutables}
     in
     let state = modify_state evm.env.state evm.message.current_target set_immutable in
     {evm with stack = []; env = {evm.env with state}}
  | _ -> assert(false)

(** Function load an immutable value for the current address *)
let loadimmutable (evm : EVM.t) :(EVM.t) =
  match evm.stack with
  | U256_val name :: [] ->
     let account = get_account evm.env.state evm.message.current_target in
     let value = ZToEvmMap.get name account.immutables in
     {evm with stack = [ value ]}
  | _ -> assert(false)
