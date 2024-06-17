(** Ethereum Virtual Machine (EVM)
    @author Yu-Yang Lin
    created: 12-Nov-2023

    Based on the Ethereum Execution Specs:
    {:https://github.com/ethereum/execution-specs/blob/master/src/ethereum/shanghai/vm/__init__.py}

    This file contains all the data structures and functions that define EVM configurations
    and are used by EVM operations. Hierarchically, this file sits above `base_types.ml`. 
 *)

(* Function Composition *)
let (<|) f g x = f(g(x))
let (|>) f g x = g(f(x))

open Exceptions

(**
from dataclasses import dataclass
from typing import List, Optional, Set, Tuple, Union

from ethereum.base_types import U64, U256, Bytes, Bytes0, Bytes32, Uint
 *)
open Base_types
open Base_memory
(* open State *) (* State contains a type t so we don't want to open it...
                    perhaps we should rename state.ml and add a State module inside it... *)

(**
from ethereum.crypto.hash import Hash32
 *)
open Crypto_hash

(**
from ..fork_types import Address, Log
 *)
open Fork_types (* not sure if we need this *)

(**
from ..state import State, account_exists_and_is_empty
from .precompiled_contracts import RIPEMD160_ADDRESS
 *)

(**
@dataclass
class Environment:
    """
    Items external to the virtual machine itself, provided by the environment.
    """

    caller: Address
    block_hashes: List[Hash32]
    origin: Address
    coinbase: Address
    number: Uint
    base_fee_per_gas: Uint
    gas_limit: Uint
    gas_price: Uint
    time: U256
    prev_randao: Bytes32
    state: State
    chain_id: U64
    traces: List[dict]
 *)
module Environment = struct
  type t = {
      caller: address;
      block_hashes: hash list; (* List[Hash32] *)
      origin: address;
      coinbase: address;
      number: U256.t;
      base_fee_per_gas: U256.t;
      gas_limit: U256.t;
      gas_price: U256.t;
      time: U256.t;
      prev_randao: U256.t; (* Bytes32 *)
      state: State.t;
      chain_id: U256.t;
      (* traces: List[dict] *)
    }

  (* TODO: dummy *)
  let init = {
      caller = [];
      block_hashes = [];
      origin = [];
      coinbase = [];
      number = U256.zero;
      base_fee_per_gas = U256.zero;
      gas_limit = U256.max_value;
      gas_price = U256.zero;
      time = U256.zero;
      prev_randao = U256.zero; (* Bytes32 *)
      state = State.empty;
      chain_id = U256.zero;
      (* traces: List[dict] *)
    }
end

(**
@dataclass
class Message:
    """
    Items that are used by contract creation or message call.
    """

    caller: Address
    target: Union[Bytes0, Address]
    current_target: Address
    gas: Uint
    value: U256
    data: Bytes
    code_address: Optional[Address]
    code: Bytes
    depth: Uint
    should_transfer_value: bool
    is_static: bool
    accessed_addresses: Set[Address]
    accessed_storage_keys: Set[Tuple[Address, Bytes32]]
    parent_evm: Optional["Evm"]
 *)
module Message = struct
  type t = {
      caller: address;
      target: address; (* Union[Bytes0, Address]; i.e. either empty or 20 bytes*)
      current_target: address;
      gas: U256.t;
      value: U256.t;
      data: Bytes.t;
      code_address: address option; (* Optional[Address]; *)
      code: Bytes.t;
      depth: U256.t;
      should_transfer_value: bool;
      is_static: bool;
      accessed_addresses: address list; (* Set[Address]; *)
      accessed_storage_keys: (address * U256.t) list; (* Set[Tuple[Address, Bytes32]]; *)
      (* parent_evm: Optional["Evm"] *)
    }

  (* dummy init *)
  let init = {
      caller = Bytes.dummy_address;
      target = Bytes.dummy_address;
      current_target = Bytes.dummy_address;
      gas = U256.zero;
      value = U256.zero;
      data = [];
      code_address = None; (* Optional[Address]; *)
      code = [];
      depth = U256.zero;
      should_transfer_value = false;
      is_static = false;
      accessed_addresses = [];
      accessed_storage_keys = []
      (* parent_evm: Optional["Evm"] *)
    }
end

(** {@python[
@dataclass
class Evm:
    """The internal state of the virtual machine."""

    pc: Uint
    stack: List[U256]
    memory: bytearray
    code: Bytes
    gas_left: Uint
    env: Environment
    valid_jump_destinations: Set[Uint]
    logs: Tuple[Log, ...]
    refund_counter: int
    running: bool
    message: Message
    output: Bytes
    accounts_to_delete: Set[Address]
    touched_accounts: Set[Address]
    has_erred: bool
    return_data: Bytes
    error: Optional[Exception]
    accessed_addresses: Set[Address]
    accessed_storage_keys: Set[Tuple[Address, Bytes32]]
]} *)
module EVM = struct
  (** [stack] is a mini stack for single instructions only. *)
  type t = {
      pc: U256.t;
      stack: evm_val list;
      memory: Mem.t;
      (* NOTE:
         - we can underapproximate memory
         - we assume Yul objects consume one word in Memory (i.e. [datasize(_) = 1]) *)
      (* code: Bytes; *) (* needed? *)
      gas_left: U256.t;
      env: Environment.t;
      (* valid_jump_destinations: Set[Uint]; *) (* needed? *)
      (* logs: Tuple[Log, ...]; *) (* needed? *)
      (* refund_counter: int *) (* needed? *)
      running: bool;
      message: Message.t;
      (* output: Bytes; *)
      (* accounts_to_delete: Set[Address]; *)
      (* touched_accounts: Set[Address]; *)
      has_erred: bool;
      (* return_data: Bytes; *)
      error: Exception.t option;
      (* accessed_addresses: Set[Address]; *)
      (* accessed_storage_keys: Set[Tuple[Address, Bytes32]]; *)
      symbolic_env: Z3api.sigma;
      keccak_env: K.t (* this is a keccak concretisation lookup map that remembers all choices
                         made when selecting a concrete candidate for the hash of a given value *)
    }

  (* TODO: temporary *)
  let init = {
      pc = U256.zero;
      stack = [];
      memory = Mem.init ();
      gas_left = U256.of_int 30000000; (* TODO: temporary *)
      env = Environment.init; (* TODO: dummy *)
      running = true;
      message = Message.init;
      has_erred = false;
      error = None;
      symbolic_env = [];
      keccak_env = K.empty
    }
  
  (** [pop] : implements definition from [stack.py] here instead of in a separate file *)
  let pop xs =
    if List.length xs <= 0 then failwith "StackUnderflowError" (* TODO Error type *)
    else (List.hd xs, List.tl xs)

  (** [push] : implements definition from [stack.py] here instead of in a separate file *)
  let push xs x =
    if List.length xs >= 1024 then failwith "StackUnderflowError" (* TODO Error type *)
    else x :: xs
end

(**
def incorporate_child_on_success(evm: Evm, child_evm: Evm) -> None:
    """
    Incorporate the state of a successful `child_evm` into the parent `evm`.

    Parameters
    ----------
    evm :
        The parent `EVM`.
    child_evm :
        The child evm to incorporate.
    """
    evm.gas_left += child_evm.gas_left
    evm.logs += child_evm.logs
    evm.refund_counter += child_evm.refund_counter
    evm.accounts_to_delete.update(child_evm.accounts_to_delete)
    evm.touched_accounts.update(child_evm.touched_accounts)
    if account_exists_and_is_empty(
        evm.env.state, child_evm.message.current_target
    ):
        evm.touched_accounts.add(child_evm.message.current_target)
    evm.accessed_addresses.update(child_evm.accessed_addresses)
    evm.accessed_storage_keys.update(child_evm.accessed_storage_keys)


def incorporate_child_on_error(evm: Evm, child_evm: Evm) -> None:
    """
    Incorporate the state of an unsuccessful `child_evm` into the parent `evm`.

    Parameters
    ----------
    evm :
        The parent `EVM`.
    child_evm :
        The child evm to incorporate.
    """
    # In block 2675119, the empty account at 0x3 (the RIPEMD160 precompile) was
    # cleared despite running out of gas. This is an obscure edge case that can
    # only happen to a precompile.
    # According to the general rules governing clearing of empty accounts, the
    # touch should have been reverted. Due to client bugs, this event went
    # unnoticed and 0x3 has been exempted from the rule that touches are
    # reverted in order to preserve this historical behaviour.
    if RIPEMD160_ADDRESS in child_evm.touched_accounts:
        evm.touched_accounts.add(RIPEMD160_ADDRESS)
    if child_evm.message.current_target == RIPEMD160_ADDRESS:
        if account_exists_and_is_empty(
            evm.env.state, child_evm.message.current_target
        ):
            evm.touched_accounts.add(RIPEMD160_ADDRESS)
    evm.gas_left += child_evm.gas_left

 *)

