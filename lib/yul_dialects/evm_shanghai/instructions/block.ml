(** Ethereum Virtual Machine (EVM) Block Instructions for Yul
    @author Yu-Yang Lin
    created: 15-Nov-2023

    Implementations of the EVM block instructions for Yul based on EVM specs.
 *)

(** from ethereum.base_types import U256 *)
open Base_types

(** from .. import Evm *)
open Init

(** from ..gas import GAS_BASE, GAS_BLOCK_HASH, charge_gas *)
open Gas

(* from ..stack import pop, push *)

(** TODO
def block_hash(evm: Evm) -> None:
    """
    Push the hash of one of the 256 most recent complete blocks onto the
    stack. The block number to hash is present at the top of the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    Raises
    ------
    :py:class:`~ethereum.shanghai.vm.exceptions.StackUnderflowError`
        If `len(stack)` is less than `1`.
    :py:class:`~ethereum.shanghai.vm.exceptions.OutOfGasError`
        If `evm.gas_left` is less than `20`.
    """
    # STACK
    block_number = pop(evm.stack)

    # GAS
    charge_gas(evm, GAS_BLOCK_HASH)

    # OPERATION
    if evm.env.number <= block_number or evm.env.number > block_number + 256:
        # Default hash to 0, if the block of interest is not yet on the chain
        # (including the block which has the current executing transaction),
        # or if the block's age is more than 256.
        hash = b"\x00"
    else:
        hash = evm.env.block_hashes[-(evm.env.number - block_number)]

    push(evm.stack, U256.from_be_bytes(hash))

    # PROGRAM COUNTER
    evm.pc += 1
 *)

(**
def coinbase(evm: Evm) -> None:
    """
    Push the current block's beneficiary address (address of the block miner)
    onto the stack.

    Here the current block refers to the block in which the currently
    executing transaction/call resides.

    Parameters
    ----------
    evm :
        The current EVM frame.

    Raises
    ------
    :py:class:`~ethereum.shanghai.vm.exceptions.StackOverflowError`
        If `len(stack)` is equal to `1024`.
    :py:class:`~ethereum.shanghai.vm.exceptions.OutOfGasError`
        If `evm.gas_left` is less than `2`.
    """
    # STACK
    pass

    # GAS
    charge_gas(evm, GAS_BASE)

    # OPERATION
    push(evm.stack, U256.from_be_bytes(evm.env.coinbase))

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let coinbase (evm : EVM.t) :(EVM.t) =
  do_pushval evm
    (* NOTE: addresses are only concrete so the following never fails *)
    ((U256.from_be_bytes (Bytes.to_concrete_bytes evm.env.coinbase)))
    _GAS_BASE

(**
def timestamp(evm: Evm) -> None:
    """
    Push the current block's timestamp onto the stack. Here the timestamp
    being referred is actually the unix timestamp in seconds.

    Here the current block refers to the block in which the currently
    executing transaction/call resides.

    Parameters
    ----------
    evm :
        The current EVM frame.

    Raises
    ------
    :py:class:`~ethereum.shanghai.vm.exceptions.StackOverflowError`
        If `len(stack)` is equal to `1024`.
    :py:class:`~ethereum.shanghai.vm.exceptions.OutOfGasError`
        If `evm.gas_left` is less than `2`.
    """
    # STACK
    pass

    # GAS
    charge_gas(evm, GAS_BASE)

    # OPERATION
    push(evm.stack, evm.env.time)

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let timestamp (evm : EVM.t) :(EVM.t) = do_pushval evm evm.env.time _GAS_BASE

(**
def number(evm: Evm) -> None:
    """
    Push the current block's number onto the stack.

    Here the current block refers to the block in which the currently
    executing transaction/call resides.

    Parameters
    ----------
    evm :
        The current EVM frame.

    Raises
    ------
    :py:class:`~ethereum.shanghai.vm.exceptions.StackOverflowError`
        If `len(stack)` is equal to `1024`.
    :py:class:`~ethereum.shanghai.vm.exceptions.OutOfGasError`
        If `evm.gas_left` is less than `2`.
    """
    # STACK
    pass

    # GAS
    charge_gas(evm, GAS_BASE)

    # OPERATION
    push(evm.stack, U256(evm.env.number))

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let number (evm : EVM.t) :(EVM.t) = do_pushval evm evm.env.number _GAS_BASE

(**
def prev_randao(evm: Evm) -> None:
    """
    Push the `prev_randao` value onto the stack.

    The `prev_randao` value is the random output of the beacon chain's
    randomness oracle for the previous block.

    Parameters
    ----------
    evm :
        The current EVM frame.

    Raises
    ------
    :py:class:`~ethereum.shanghai.vm.exceptions.StackOverflowError`
        If `len(stack)` is equal to `1024`.
    :py:class:`~ethereum.shanghai.vm.exceptions.OutOfGasError`
        If `evm.gas_left` is less than `2`.
    """
    # STACK
    pass

    # GAS
    charge_gas(evm, GAS_BASE)

    # OPERATION
    push(evm.stack, U256.from_be_bytes(evm.env.prev_randao))

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let prev_randao (evm : EVM.t) :(EVM.t) = do_pushval evm evm.env.prev_randao _GAS_BASE

(**
def gas_limit(evm: Evm) -> None:
    """
    Push the current block's gas limit onto the stack.

    Here the current block refers to the block in which the currently
    executing transaction/call resides.

    Parameters
    ----------
    evm :
        The current EVM frame.

    Raises
    ------
    :py:class:`~ethereum.shanghai.vm.exceptions.StackOverflowError`
        If `len(stack)` is equal to `1024`.
    :py:class:`~ethereum.shanghai.vm.exceptions.OutOfGasError`
        If `evm.gas_left` is less than `2`.
    """
    # STACK
    pass

    # GAS
    charge_gas(evm, GAS_BASE)

    # OPERATION
    push(evm.stack, U256(evm.env.gas_limit))

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let gas_limit (evm : EVM.t) :(EVM.t) = do_pushval evm evm.env.gas_limit _GAS_BASE

(**
def chain_id(evm: Evm) -> None:
    """
    Push the chain id onto the stack.

    Parameters
    ----------
    evm :
        The current EVM frame.

    Raises
    ------
    :py:class:`~ethereum.shanghai.vm.exceptions.StackOverflowError`
        If `len(stack)` is equal to `1024`.
    :py:class:`~ethereum.shanghai.vm.exceptions.OutOfGasError`
        If `evm.gas_left` is less than `2`.
    """
    # STACK
    pass

    # GAS
    charge_gas(evm, GAS_BASE)

    # OPERATION
    push(evm.stack, U256(evm.env.chain_id))

    # PROGRAM COUNTER
    evm.pc += 1
 *)
let chain_id (evm : EVM.t) :(EVM.t) = do_pushval evm evm.env.chain_id _GAS_BASE
