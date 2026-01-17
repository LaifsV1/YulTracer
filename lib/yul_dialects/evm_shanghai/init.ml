(** Ethereum Virtual Machine (EVM) Initialisation Module
    @author Yu-Yang Lin
    created: 12-Nov-2023

    Based on the Ethereum Execution Specs:
    {:https://github.com/ethereum/execution-specs/blob/master/src/ethereum/shanghai/vm/__init__.py}
    Refer to files from commit: 3fe6514f2d9d234e760d11af883a47c1263eff51.
    
    This file contains all the data structures and functions that define EVM configurations
    and are used by EVM operations. Hierarchically, this file sits above `base_types.ml`. 
 *)

(* open Exceptions *) (* TODO: needed? we never fail with exception, we only crash... *)

(**
from dataclasses import dataclass
from typing import List, Optional, Set, Tuple, Union

from ethereum.base_types import U64, U256, Bytes, Bytes0, Bytes32, Uint
 *)
open Base_types
open Base_memory
(* open State *)
(* State contains a type t so we don't want to open it...
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

let init_time = U256.of_int 0   (* for 2016 use: 1451610061 *)
let print_warning = ref (fun (_ : string) -> ())

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
      (* block_hashes: hash list; *) (* List[Hash32] *)
      origin: address;
      coinbase: address;
      number: U256.t;
      base_fee_per_gas: U256.t;
      gas_limit: U256.t;
      gas_price: U256.t;
      time: U256.t;
      prev_randao: U256.t;
      state: State.t;
      chain_id: U256.t;
      (* traces: List[dict] *)
      (* vv CUSTOMS FIELD Svv *)
      symbolic_env: Z3api.sigma;
      keccak_env: K.t; (* this is a keccak concretisation lookup map that remembers all choices
                          made when selecting a concrete candidate for the hash of a given value *)
      linker: ZToEvmMap.t;
    }

  let to_string (env : t) :(string) =
    let caller = Bytes.to_hex_string env.caller in
    let origin = Bytes.to_hex_string env.origin in
    let state = State.to_string env.state in
    let keccak_env = K.to_string env.keccak_env in
    Printf.sprintf "Env{\ncaller = %s;\norigin = %s;\nstate = %s\n;\nkeccak_env = %s\n}"
      caller origin state keccak_env

  (* TODO: dummy *)
  let init = {
      caller = [];
      (* block_hashes = []; *)
      origin = [];
      coinbase = [];
      number = U256.zero;
      base_fee_per_gas = U256.zero;
      gas_limit = U256.max_value;
      gas_price = U256.zero;
      time = init_time;
      prev_randao = U256.zero; (* Bytes32 *)
      state = State.empty;
      chain_id = U256.zero;
      (* traces: List[dict] *)
      symbolic_env = [];
      keccak_env = K.empty;
      linker = ZToEvmMap.empty;
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
      (* accessed_addresses: address list; *) (* Set[Address]; *) (* TODO: needed? *)
      (* accessed_storage_keys: (address * U256.t) list; *) (* Set[Tuple[Address, Bytes32]]; *)
      (* parent_evm: Optional["Evm"] *) (* CIRCULAR??? *)
    }

  let to_string (msg : t) :(string) =
    let caller = Bytes.to_hex_string msg.caller in
    let target = Bytes.to_hex_string msg.target in
    let current_target = Bytes.to_hex_string msg.current_target in
    let gas = U256.to_string msg.gas in
    let value = U256.to_string msg.value in
    let data = Bytes.to_string msg.data in
    let code_address = Z3api.string_of_option Bytes.to_hex_string msg.code_address in
    let code = Bytes.to_string msg.code in
    let depth = U256.to_string msg.depth in
    let should_transfer_value = string_of_bool msg.should_transfer_value in
    let is_static = string_of_bool msg.is_static in
    Printf.sprintf "Msg{\ncaller = %s;\ntarget = %s;\ncurrent_target = %s;\ngas = %s;\nvalue = %s;\ndata = %s;code_address = %s;\ncode = %s;\ndepth = %s;\nshould_transfer_value = %s;\nis_static = %s\n}"
      caller
      target
      current_target
      gas
      value
      data
      code_address
      code
      depth
      should_transfer_value
      is_static

  (* dummy init *)
  let dummy = {
      caller = Bytes.dummy_address;
      target = Bytes.dummy_address;
      current_target = Bytes.dummy_address;
      gas = U256.zero;
      value = U256.zero;
      data = [];
      code_address = None; (* Optional[Address]; *)
      code = [];
      depth = U256.one;
      should_transfer_value = true;
      is_static = false;
      (* accessed_addresses = []; *)
      (* accessed_storage_keys = []; *)
      (* parent_evm: Optional["Evm"] *)
    }

  (* transactional deployment init *)
  let init deploy_address deploy_gas=
    {
      caller = Bytes.dummy_address;         (* Set to 000000... for now *)
      target = [];                          (* No specific target in a deployment *)
      current_target = deploy_address;      (* initial deployment address *)
      gas = deploy_gas;                     (* initial deployment gas *)
      value = U256.zero;                    (* No ETH transfer in transactional deployment *)
      data = [];                            (* No calldata, just constructor execution *)
      code_address = None;                  (* No external contract is being called *)
      code = [];                            (* WARNING: This has to be filled in later *)
      depth = U256.one;                     (* A direct transaction means depth = 1 *)
      should_transfer_value = true;         (* The contract is allowed to receive funds in the future *)
      is_static = false;                    (* Deployment is never static *)
      (* accessed_addresses = []; *)
      (* accessed_storage_keys = []; *)     (* UNUSED: however, should be empty at the start anyway *)
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
  (** type to identify what  *)
  type call_type = Plain | Static | Delegate | Impersonate
  let string_of_call_type = function
    | Plain -> "plain"
    | Static -> "static"
    | Delegate -> "delegate"
    | Impersonate -> "impersonate"
  type arg_type = Uint | Address
  let string_of_arg_type = function
    | Uint -> "uint256"
    | Address -> "address"
  type stuck_mode = Call of call_type * (string list) (* return type *)
                  | Return | Create | Create2 | StartAnalysis | Assert
                  | Reveal of arg_type
  let string_of_stuck_mode = function
    | Call (t,_) -> "Call_" ^ (string_of_call_type t)
    | Return -> "Return"
    | Create -> "Create"
    | Create2 -> "Create2"
    | StartAnalysis -> "StartAnalysis"
    | Assert -> "Assert"
    | Reveal t -> "Reveal_" ^ (string_of_arg_type t)
  
  (** [stack] is a mini stack for single instructions only. *)
  type t = {
      (********************************)
      (* vvv ORIGINAL FIELDS HERE vvv *)
      (********************************)
      pc: U256.t; (* NOTE: unused *)
      stack: evm_val list;
      memory: Mem.t;
      (* NOTE:
         - we can underapproximate memory
         - we assume Yul objects consume one word in Memory (i.e. [datasize(_) = 1]) *)
      code: Bytes.t;
      gas_left: U256.t;
      env: Environment.t;
      (* valid_jump_destinations: Set[Uint]; *) (* TODO: needed? *)
      (* logs: Tuple[Log, ...]; *) (* TODO: needed? *)
      (* refund_counter: U256.t; *) (* TODO: needed? *)
      running: bool; (* how do we use this? *)
      message: Message.t;
      output: Bytes.t;
      (* accounts_to_delete: address list; *) (* TODO: needed? *)
      (* touched_accounts: Set[Address]; *) (* TODO: needed? *)
      (* has_erred: bool; *) (* needed? we only ever crash.. *)
      return_data: Bytes.t;
      (* error: Exception.t option; *)
      (* accessed_addresses: address list; *) (* TODO: needed? *)
      (* accessed_storage_keys: Set[Tuple[Address, Bytes32]]; *)
      (******************************)
      (* vvv CUSTOM FIELDS HERE vvv *)
      (******************************)
      object_ids: (string * U256.t) list;
      stuck_mode : stuck_mode option;
    }

  (** to_string function *)
  let to_string (evm : t) :(string) =
    let pc = U256.to_string evm.pc in
    let stack = Yul_semantics.Utils.string_of_list EvmVal.to_string ";" evm.stack in
    let memory = Mem.to_string evm.memory in
    let code = Bytes.to_string evm.code in
    let gas_left = U256.to_string evm.gas_left in
    let env = Environment.to_string evm.env in
    let running = string_of_bool evm.running in
    let message = Message.to_string evm.message in
    let output = Bytes.to_string evm.output in
    let return_data = Bytes.to_string evm.return_data in
    let stuck_mode = Z3api.string_of_option string_of_stuck_mode evm.stuck_mode in
    Printf.sprintf "Evm{\npc = %s;\nstack = %s;\nmemory = %s;\ncode = %s;\ngas_left = %s;\nenv = %s;\nrunning = %s;\nmessage = %s;\noutput = %s;\nreturn_data = %s;\nstuck_mode = %s\n}"
      pc stack memory code gas_left env running message output return_data stuck_mode
  
  (** function to set the stuck mode flag AND set up the stack for the pending operation *)
  let set_stuck   (evm : t) vs stuck :(t) = {evm with stack = vs; stuck_mode = Some stuck}

  (** function to reset the stuck mode flag to None *)
  let set_unstuck (evm : t)          :(t) = {evm with stuck_mode = None}
  
  let section_key = "evm"

  (** expected format:
      A ::= 'arg%d' '=' V
      V ::= 'bytes:' L | 'symbolic:%d' | 'u256:' <numeral> 
      L ::= <byte_numeral> | <byte_numeral> ',' L

      byte_numerals: 0 to 255 or equivalent in hex, octal, bin
      numerals: dec, hex (0x..), octal (0o..), bin (0b..)
      
      * should be strings as expected by [Z.of_string]
      
      e.g.
      arg0=bytes:0x00,0b11,0x22,0o33,0xAA,0xBB,0xCC
      arg1=symbolic:20
      arg2=bytes:255,210,1,0x4

      NOTE: Sets the CODE field in the existing MESSAGE!
   *)
  let init_code f evm =
    let get_key id = Printf.sprintf "arg%d" id in
    let rec get_args counter acc =
      match f "evm" (get_key counter) with
      | Some s -> get_args (counter+1) (s :: acc)
      | None -> List.rev acc
    in
    let args_list = get_args 0 [] in
    let process_arg s =
      let ls = String.split_on_char ':' s in
      match ls with
      (* ---BYTES--- *)
      | "bytes" :: ss :: [] ->
         let vs = String.split_on_char ',' ss in
         (* extract U8 to get big-int between 0 and 255 *)
         List.map (fun x -> U8 (u8_extract (Z.of_string x))) vs
      (* ---SYMBOLIC--- *)
      | "symbolic" :: is :: [] ->
         begin
           match int_of_string_opt is with
           | None -> failwith "symbolic expects integer length"
           | Some i -> List.init i (fun _ -> S8 (Z3api.fresh_svar ()))
         end
      (* ---U256--- *)
      | "u256" :: ns :: [] ->
         (* extract U256 to get big-int between 0 and (2^256)-1 *)
         let u256 = u256_extract (Z.of_string ns) in
         List.map (fun x -> U8 x) (U256.to_be_bytes u256)
      | _ -> failwith "invalid INI config file format"
    in
    let code = evm.code @ (List.concat (List.map process_arg args_list)) in
    {evm with code ; message = {evm.message with code}}

  (** Function to set code and message to -1 *)
  let set_code_if_object (evm : t) object_names =
    match object_names with
    | [] -> evm
    | (_,x) :: xs ->
       (* find the root, i.e. the negative UID closest to zero, list of (string * int), we get snd.  *)
       let root_uid = List.fold_left max x (List.map snd xs) in
       (* SET TO MOST POSITIVE UID, TODO: is this correct? *)
       let code = Bytes.of_U256 (u256_extract (U256.of_int root_uid)) in 
       {evm with code ; message = {evm.message with code}}
  
  (** Function to create a list of (object name * object ID) pairs *)
  let get_u256_uids object_names =
    List.map (fun (path,id) -> path, u256_extract (U256.of_int id)) object_names
  
  (** Function to initialise an EVM configuration.
      NOTE: we assign NEGATIVE IDs to each object name.
      **THIS IS IMPORTANT**: we assign -1 to the compiled object.
   *)
  let init object_names config_fun deploy_address deploy_gas =
    let deploy_address = Utils_address.to_address (U256.of_string deploy_address) in
    let deploy_gas = U256.of_string deploy_gas in
    (* assign a negative ID to each element in the list starting from -1 *)
    let empty_evm = 
      {
        pc = U256.zero;
        stack = [];
        memory = Mem.init ();
        code = []; (* empty by default, since maybe this isn't an object *)
        gas_left = deploy_gas; (* for deployment *)
        env = Environment.init; (* TEMPORARY: dummy, to be replaced with code *)
        (* refund_counter = U256.zero; *)
        running = true;
        message = Message.init deploy_address deploy_gas; (* this is using dummy! *)
        output = [];
        (* accounts_to_delete = []; *)
        return_data = [];
        (* accessed_addresses = []; *)
        (* has_erred = false;
        error = None; *)
        object_ids = get_u256_uids object_names;
        stuck_mode = None;
      }
    in
    let empty_evm = set_code_if_object empty_evm object_names in
    match config_fun with
    | Some (f,flag_print_code) ->
       let new_evm = init_code f empty_evm in
       if flag_print_code then (Printf.printf "EVM.code: %s\n" (Bytes.to_string new_evm.code));
       new_evm
    | None -> empty_evm

    let dummy = {
      pc = U256.zero;
      stack = [];
      memory = Mem.init ();
      code = [];
      gas_left = U256.zero;
      env = Environment.init;
      running = false;
      message = Message.init (Utils_address.to_address U256.zero) (U256.zero);
      output = [];
      return_data = [];
      object_ids = [];
      stuck_mode = None;
    }
  
  (** function to "wait" for some time by adding that time to env.time *)
  let wait (evm : t) f =
    {evm with env = {evm.env with time = f evm.env.time; number = U256.increment evm.env.number}}
  
  (** [pop] : implements definition from [stack.py] here instead of in a separate file *)
  let pop evm =
    if List.length evm.stack <= 0 then failwith "StackUnderflowError" (* TODO Error type *)
    else (List.hd evm.stack, List.tl evm.stack)

  (** [push] : implements definition from [stack.py] here instead of in a separate file *)
  let push evm x =
    if List.length evm.stack >= 1024 then failwith "StackUnderflowError" (* TODO Error type *)
    else {evm with stack = x :: evm.stack}
end

(** Python specification for incorporate_child:
{@python[
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
]}
NOTE: our implementation isn't imperative, so we pass all the relevant state around.
 *)
let incorporate_child_on_success (evm : EVM.t) (child_evm : EVM.t) :(EVM.t) =
  (* evm.gas_left += child_evm.gas_left *)
  let gas_left = Z.add evm.gas_left child_evm.gas_left in
  
  (* evm.logs += child_evm.logs *)
  (* TODO: not needed? we don't log anything *)
  (* evm.refund_counter += child_evm.refund_counter *)
  (* TODO: not needed? we crash on failure, so no refund? *)
  
  (* evm.accounts_to_delete.update(child_evm.accounts_to_delete) *)
  (* let accounts_to_delete = List.sort_uniq compare (evm.accounts_to_delete @ child_evm.accounts_to_delete) in *)
  (* evm.touched_accounts.update(child_evm.touched_accounts) *)
  (* TODO: do we need this? add it back when needed *)
  
  (* if account_exists_and_is_empty evm.env.state child_evm.message.current_target then
    evm.touched_accounts.add(child_evm.message.current_target)
   *) (* TODO: do we need this? *)

  (* evm.accessed_addresses.update(child_evm.accessed_addresses) *)
  (* TODO: do we need this? *)
  
  (* evm.accessed_storage_keys.update(child_evm.accessed_storage_keys) *)
  (* TODO: do we need this? *)

  {evm with
    (* pc; *) (* unchanged *)
    (* stack; *) (* unchanged, set in return function *)
    (* memory; *) (* unchanged *)
    (* code; *) (* unchanged *)
    gas_left = gas_left; (* updated *)
    env = child_evm.env; (* NOTE: this is simulating the imperative Python specs *)
    running = true; (* TODO: do we change this here? *)
    (* message; *) (* TODO: unchanged? unused? *)
    (* output; *) (* TODO: unchanged? *)
    (* return_data; *) (* unchanged, set in return function *)
    (* object_ids; *) (* unchanged *)
    stuck_mode = None; (* TODO: can we set this here? *)
  }


(** Probably not used because we don't have programmatic EVM errors:
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

