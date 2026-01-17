(** Hardfork Utility Functions For Addresses
    @author Yu-Yang Lin
      date-created: 10-Jan-2025
      
"""
Hardfork Utility Functions For Addresses
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. contents:: Table of Contents
    :backlinks: none
    :local:

Introduction
------------

Address specific functions used in this shanghai version of
specification.
"""
from typing import Union
 *)

(** from ethereum.base_types import U256, Bytes32, Uint *)
open Base_types

(** from ethereum.crypto.hash import keccak256 *)
open Crypto_hash

(**
from ethereum.utils.byte import left_pad_zero_bytes
 *)
open Yul_semantics.Utils (* to import drop *)

(** from ... import rlp *)

(** from ..fork_types import Address *)
open Fork_types

(**
def to_address(data: Union[Uint, U256]) -> Address:
    """
    Convert a Uint or U256 value to a valid address (20 bytes).

    Parameters
    ----------
    data :
        The string to be converted to bytes.

    Returns
    -------
    address : `Address`
        The obtained address.
    """
    return Address(data.to_be_bytes32()[-20:])
 *)
let to_address (data : U256.t) :(address) = drop 12 (Bytes.of_U256 data) (* drop 32 - 20 *)

(** function to mimic the encoding. this flattens the list for hashing, because hashing only takes 10 items *)
let rlp_encode (bytes, nonce) = (Bytes.to_string bytes , nonce)

(**
def compute_contract_address(address: Address, nonce: Uint) -> Address:
    """
    Computes address of the new account that needs to be created.

    Parameters
    ----------
    address :
        The address of the account that wants to create the new account.
    nonce :
        The transaction count of the account that wants to create the new
        account.

    Returns
    -------
    address: `Address`
        The computed address of the new account.
    """
    computed_address = keccak256(rlp.encode([address, nonce]))
    canonical_address = computed_address[-20:]
    padded_address = left_pad_zero_bytes(canonical_address, 20)
    return Address(padded_address)
 *)
let compute_contract_address (address : address) (nonce : U256.t) :address =
  (* We use Hashtbl.hash because we do not need the Keccak model for this. This is just to generate
     a new (hopefully) unique address. Produces a small int. Perhaps we can use Z.hash instead. *)
  let computed_address = U256.of_int(Hashtbl.hash(rlp_encode(address, nonce))) in (* always 32 bytes long *)
  let canonical_address = to_address computed_address in (* drop 12 to keep 20 *)
  assert(List.length canonical_address = 20); (* no padding needed, but check padding just in case *)
  canonical_address (* Return the BIG ENDIAN 20-byte address *)

(**
def compute_create2_contract_address(
    address: Address, salt: Bytes32, call_data: bytearray
) -> Address:
    """
    Computes address of the new account that needs to be created, which is
    based on the sender address, salt and the call data as well.

    Parameters
    ----------
    address :
        The address of the account that wants to create the new account.
    salt :
        Address generation salt.
    call_data :
        The code of the new account which is to be created.

    Returns
    -------
    address: `ethereum.shanghai.fork_types.Address`
        The computed address of the new account.
    """
    preimage = b"\xff" + address + salt + keccak256(call_data)
    computed_address = keccak256(preimage)
    canonical_address = computed_address[-20:]
    padded_address = left_pad_zero_bytes(canonical_address, 20)
    return Address(padded_address)
 *)
let compute_create2_contract_address
      (address : address) (salt : Bytes.t) (call_data : Bytes.t)
      (keccak_env : K.t) (sigma : Z3api.sigma)
    :(address * (K.t * Z3api.sigma)) =
  let keccak256 data (keccak_env,sigma) =
    match K.hash data keccak_env sigma with
    | branch :: [] -> branch.hash , (branch.lookup_map,branch.sigma)
    | [] -> failwith "[compute_create2_contract_address]: invalid keccak -- no keccak produced!"
    | _  -> failwith "[compute_create2_contract_address]: invalid keccak -- symbolic salt not supported!"
  in
  let call_data_hash , env1 = keccak256 call_data (keccak_env,sigma) in
  let preimage = b"0xff" :: address @ salt @ (Bytes.of_U256 call_data_hash) in
  let computed_address , env2 = keccak256 preimage env1 in
  let canonical_address = to_address computed_address in
  assert(List.length canonical_address = 20);
  "created salted proponent address:"                             |> print_endline; 
  "   caller: "           ^ (Bytes.to_hex_string address)         |> print_endline;
  "   salt: "             ^ (Bytes.to_string salt)                |> print_endline;
  "   call_data: "        ^ (Bytes.to_string salt)                |> print_endline;
  "   call_data_hash: "   ^ (U256.to_hex_string call_data_hash)   |> print_endline;
  "   computed_address: " ^ (U256.to_hex_string computed_address) |> print_endline;
  canonical_address , env2
