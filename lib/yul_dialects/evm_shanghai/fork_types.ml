(** TODO: this file is a stub. it only defines a few type aliases.
          it's unclear if these aliases are even good choices.

"""
Ethereum Types
^^^^^^^^^^^^^^

.. contents:: Table of Contents
    :backlinks: none
    :local:

Introduction
------------

Types re-used throughout the specification, which are specific to Ethereum.
"""
 *)

(**
from dataclasses import dataclass
from typing import Tuple, Union

from .. import rlp
from ..base_types import (
    U64,
    U256,
    Bytes,
    Bytes0,
    Bytes8,
    Bytes20,
    Bytes32,
    Bytes256,
    Uint,
    slotted_freezable,
)
 *)
open Base_types

(**
from ..crypto.hash import Hash32, keccak256
 *)
open Crypto_hash

(**
from ..exceptions import InvalidBlock

Address = Bytes20
Root = Hash32
Bloom = Bytes256
 *)
type address = Bytes.t   (* TODO: should we use Z.t instead? should I use U(160)?*)
type root = hash         (* TODO: not sure if needed *)
type bloom = Bytes.t     (* TODO: not sure if needed *)

(**
TX_BASE_COST = 21000
TX_DATA_COST_PER_NON_ZERO = 16
TX_DATA_COST_PER_ZERO = 4
TX_CREATE_COST = 32000
TX_ACCESS_LIST_ADDRESS_COST = 2400
TX_ACCESS_LIST_STORAGE_KEY_COST = 1900
 *)

(**
@slotted_freezable
@dataclass
class LegacyTransaction:
    """
    Atomic operation performed on the block chain.
    """

    nonce: U256
    gas_price: Uint
    gas: Uint
    to: Union[Bytes0, Address]
    value: U256
    data: Bytes
    v: U256
    r: U256
    s: U256


@slotted_freezable
@dataclass
class AccessListTransaction:
    """
    The transaction type added in EIP-2930 to support access lists.
    """

    chain_id: U64
    nonce: U256
    gas_price: Uint
    gas: Uint
    to: Union[Bytes0, Address]
    value: U256
    data: Bytes
    access_list: Tuple[Tuple[Address, Tuple[Bytes32, ...]], ...]
    y_parity: U256
    r: U256
    s: U256


@slotted_freezable
@dataclass
class FeeMarketTransaction:
    """
    The transaction type added in EIP-1559.
    """

    chain_id: U64
    nonce: U256
    max_priority_fee_per_gas: Uint
    max_fee_per_gas: Uint
    gas: Uint
    to: Union[Bytes0, Address]
    value: U256
    data: Bytes
    access_list: Tuple[Tuple[Address, Tuple[Bytes32, ...]], ...]
    y_parity: U256
    r: U256
    s: U256


Transaction = Union[
    LegacyTransaction, AccessListTransaction, FeeMarketTransaction
]


def encode_transaction(tx: Transaction) -> Union[LegacyTransaction, Bytes]:
    """
    Encode a transaction. Needed because non-legacy transactions aren't RLP.
    """
    if isinstance(tx, LegacyTransaction):
        return tx
    elif isinstance(tx, AccessListTransaction):
        return b"\x01" + rlp.encode(tx)
    elif isinstance(tx, FeeMarketTransaction):
        return b"\x02" + rlp.encode(tx)
    else:
        raise Exception(f"Unable to encode transaction of type {type(tx)}")


def decode_transaction(tx: Union[LegacyTransaction, Bytes]) -> Transaction:
    """
    Decode a transaction. Needed because non-legacy transactions aren't RLP.
    """
    if isinstance(tx, Bytes):
        if tx[0] == 1:
            return rlp.decode_to(AccessListTransaction, tx[1:])
        elif tx[0] == 2:
            return rlp.decode_to(FeeMarketTransaction, tx[1:])
        else:
            raise InvalidBlock
    else:
        return tx
 *)

(** module for Zint -> EvmVal maps *)
module ZToEvmMap = struct
  (** Ethereum Virtual Machine (EVM) Storage:
      this sub-module implements functionality analogous to the Storage Tries in:
      [ethereum/shanghai/vm/state.py]
      from the EVM execution specs.

      These are officially defined as Tries from Bytes to U256: [Trie[Bytes, U256]]

      Here, we implement a Storage Map as a map from U256 to EVM_Vals. We suspect this
      suffices because in practice we can expect Bytes to always be U256.

      NOTE: it's implemented here because we are extending Account with an immutables map.
      this leads to a circular import if we keep it in State. Now State has an alias.
   *)
  
  (** type for Storage Map -- map from Z big-ints to EVM values *)
  type t = evm_val ZintMap.t

  let to_string (sto : t) :(string) =
    Printf.sprintf "Map{%s}"
      begin
        let module Formatter = MapFormatter(ZintMap) in
        Formatter.map_to_string U256.to_string EvmVal.to_string sto
      end
  
  let empty = ZintMap.empty

  (** function to find an EVM value at the specified pointer address *)
  let get (key : U256.t) (map : t) :(evm_val) =
    match ZintMap.find_opt key map with
    | None -> U256_val U256.zero
    | Some v -> v

  (** function to write an EVM value at the specified pointer address *)
  let set = ZintMap.add
  
end

(** module to define Accounts.
    
    Note: We are extending Accounts with an immutables map for immutable values. this is to
    model the setimmmutable() and loadimmutable() high-level opcodes in Yul. The opcodes do not
    map cleanly onto Yul and break Yul conventions. Moreover, the two opcodes are very superficially
    described. The description essentially pretends there is a separate buffer for immutables, which
    is not true in practice, since the EVM has no immutables. The least intrusive way to add the
    behaviours needed for the Yul immutable opcodes is to add exactly the previous concept, and
    extend Accounts with an extra immutables "buffer". This is merely a model as it diverges from the
    standard EVM implementations, which would normally append immutable values after the object code
    and translate the Solidity loadimmutable behaviours into codecopy instructions with hardcoded pointers.
 *)
module Account = struct 
  
  (** Type for Accounts
      @python[
      @slotted_freezable
      @dataclass
      class Account:
        """
        State associated with an address.
        """
      
        nonce: Uint
        balance: U256
        code: bytes
      ]    
   *)
  type t = { nonce : U256.t ; balance : U256.t ; code : Bytes.t ; immutables : ZToEvmMap.t }

  let to_string ({ nonce ; balance ; code ; immutables } : t) :(string) =
    Printf.sprintf "Acc{nonce = %s; balance = %s; code = %s ; immutables = %s}"
      (U256.to_string nonce)
      (U256.to_string balance)
      (Bytes.to_string code)
      (ZToEvmMap.to_string immutables)
  
  (** Empty Account
      @python[
      EMPTY_ACCOUNT = Account(
        nonce=Uint(0),
        balance=U256(0),
        code=bytearray(),
      )
      ]
   *)
  let empty :t = { nonce = U256.zero ; balance = U256.zero ; code = [] ; immutables = ZToEvmMap.empty }
  
  (** TODO: what do we do with this?
def encode_account(raw_account_data: Account, storage_root: Bytes) -> Bytes:
    """
    Encode `Account` dataclass.

    Storage is not stored in the `Account` dataclass, so `Accounts` cannot be
    encoded with providing a storage root.
    """
    return rlp.encode(
        (
            raw_account_data.nonce,
            raw_account_data.balance,
            storage_root,
            keccak256(raw_account_data.code),
        )
        )
   *)

end

(**
@slotted_freezable
@dataclass
class Withdrawal:
    """
    Withdrawals that have been validated on the consensus layer.
    """

    index: U64
    validator_index: U64
    address: Address
    amount: U256


@slotted_freezable
@dataclass
class Header:
    """
    Header portion of a block on the chain.
    """

    parent_hash: Hash32
    ommers_hash: Hash32
    coinbase: Address
    state_root: Root
    transactions_root: Root
    receipt_root: Root
    bloom: Bloom
    difficulty: Uint
    number: Uint
    gas_limit: Uint
    gas_used: Uint
    timestamp: U256
    extra_data: Bytes
    prev_randao: Bytes32
    nonce: Bytes8
    base_fee_per_gas: Uint
    withdrawals_root: Root


@slotted_freezable
@dataclass
class Block:
    """
    A complete block.
    """

    header: Header
    transactions: Tuple[Union[Bytes, LegacyTransaction], ...]
    ommers: Tuple[Header, ...]
    withdrawals: Tuple[Withdrawal, ...]


@slotted_freezable
@dataclass
class Log:
    """
    Data record produced during the execution of a transaction.
    """

    address: Address
    topics: Tuple[Hash32, ...]
    data: bytes


@slotted_freezable
@dataclass
class Receipt:
    """
    Result of a transaction.
    """

    succeeded: bool
    cumulative_gas_used: Uint
    bloom: Bloom
    logs: Tuple[Log, ...]

 *)
