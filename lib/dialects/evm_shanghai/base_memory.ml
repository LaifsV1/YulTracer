(** Module for Memory
    @author Yu-Yang Lin
    created: 01-Mar-2024

    This file implements Memory as a Byte Map instead of a Bytearray like in the
    Python Execution Specs. We address every U256 in sequence and map it to
    exactly one byte (represented by U8/S8).

    Note: Memory is Byte-indexed, unlike Storage which is Word-indexed.
          Memory has a linear cost and expands linearly as you use it.
          Gas use of Memory typically is lower than writing to storage.
          Memory is volatile between transactions whereas Storage is persistent.
 *)

open Z
open Base_types

(* ----------------- *)
(* MODULE FOR MEMORY *)
(* ----------------- *)
module Mem = struct
  (** Ethereum Virtual Machine (EVM) Memory:
      this sub-module implements functionality analogous to: [ethereum/shanghai/vm/memory.py]
      from the EVM execution specs.
   *)
  
  (** type for Memory Map -- map from Z big-ints to EVM values *)
  type t = byte ZintMap.t

  (* TODO: check this, original uses len(memory) *)
  (** returns number of bindings in map.
      in the Python specs, they use len(memory), which for a bytearray, gives you the length
      of the array. I'm guessing this means that for 4 bytes [0x00; 0x01; 0x02; 0x03], the
      length is 4 and the max binding is 3. This means we must assert that:
      [max_binding + 1 = size]
   *)
  let length (memory : t) :(U256.t) =
    match ZintMap.max_binding_opt memory with
    | None -> U256.zero
    | Some (max_binding,_) ->
       let size = U256.of_int (ZintMap.cardinal memory) in
       assert(Z.equal (U256.increment max_binding) size);
       size
    
  (*-----------------------------------*)
  (* START OF READ AND WRITE FUNCTIONS *)
  (*-----------------------------------*)

  (* TODO: check *)
  (**
  def memory_write(
    memory: bytearray, start_position: U256, value: Bytes
  ) -> None:
    """
    Writes to memory.

    Parameters
    ----------
    memory :
        Memory contents of the EVM.
    start_position :
        Starting pointer to the memory.
    value :
        Data to write to memory.
    """
    memory[start_position : Uint(start_position) + len(value)] = value
   *)
  let write (memory : t) (start_position : U256.t) (value : Bytes.t) :(t) =
    let rec write_bytes (memory : t) (p : U256.t) (bytes : Bytes.t) :(t) =
      match bytes with
      | [] -> memory
      | x :: xs -> write_bytes (ZintMap.add p x memory) (U256.increment p) xs
    in
    write_bytes memory start_position value
  
  (**
  def memory_read_bytes(
    memory: bytearray, start_position: U256, size: U256
  ) -> bytearray:
    """
    Read bytes from memory.

    Parameters
    ----------
    memory :
        Memory contents of the EVM.
    start_position :
        Starting pointer to the memory.
    size :
        Size of the data that needs to be read from `start_position`.

    Returns
    -------
    data_bytes :
        Data read from memory.
    """
    return memory[start_position : Uint(start_position) + Uint(size)]
   *)
  let read_bytes (memory : t) (start_position : U256.t) (size : U256.t) :(Bytes.t) =
    (* note: if size = 0, we get empty list. this is consistent with Pythons memory[i:i] *)
    let rec aux p size acc =
      if size <= U256.zero then List.rev acc
      else
        match ZintMap.find_opt p memory with
        | None ->
           failwith
             (Printf.sprintf "tried to access memory at unallocated address <%s>"
                (Z.to_string p))
        | Some v ->  aux (U256.increment p) (U256.decrement size) (v :: acc)
    in
    aux start_position size []

  (* TODO: we need to use Bytes here, so we need a list, not a map?
  (**
  def buffer_read(buffer: Bytes, start_position: U256, size: U256) -> Bytes:
    """
    Read bytes from a buffer. Padding with zeros if neccesary.

    Parameters
    ----------
    buffer :
        Memory contents of the EVM.
    start_position :
        Starting pointer to the memory.
    size :
        Size of the data that needs to be read from `start_position`.

    Returns
    -------
    data_bytes :
        Data read from memory.
    """
    return right_pad_zero_bytes(
        buffer[start_position : Uint(start_position) + Uint(size)], size
    )
   *)
  let buffer_read (memory : t) (start_position : U256.t) (size : U256.t) :(Bytes.t) =
   *)
  
  (*----------------------------------------*)
  (* EXTENSION AND INITIALISATION FUNCTIONS *)
  (*----------------------------------------*)

  (** this function extends memory by one byte by initialising p+1 with zero,
      where p is the max binding in the map. *)
  let extend_by_one_byte (memory : t) :(t) =
    let next_pointer = length memory in
    ZintMap.add next_pointer (U8 zero) memory

  (** this extends the memory by a number of bytes. because words are multiples of 32,
      this shall extend memory by bytes / 32. extension is achieved by adding a new
      mapping from p+1 to zero, where p is the max binding. *)
  let extend (memory : t) (bytes_to_extend_by : U256.t) :(t) =
    let rec aux mem size =
      if size <= zero then mem
      else
        let new_size = U256.decrement size in
        let new_mem = extend_by_one_byte mem in
        aux new_mem new_size          
    in
    aux memory bytes_to_extend_by

  (* TODO: need to write a bunch of bytes here.
  (** initial memory map.
      - 0x00 - 0x3f (64 bytes): scratch space for hashing methods (0th and 1st word)
      - 0x40 - 0x5f (32 bytes): currently allocated memory size (aka. free memory pointer) (2nd word)
      - 0x60 - 0x7f (32 bytes): zero slot (3rd word)
      - 0x80 onwards: initially, the free memory pointer points to position 0x80 in memory (4th word)

      Note: there's a question of whether msize should include the next available free slot
            or if msize should only count it once it's assigned to. this is relevant when
            calculating the length of the memory (i.e. the size of the map).
      MSIZE returns the size of the used memory so far in bytes, so it doubles as the pointer
      to the next word allocatable without expanding memory.
      i.e. if you have 96 bytes in memory, the 96th byte is assignable without expanding memory.
   *)
  let init () =
    let map0 = ZintMap.add U256.zero       (U256_val U256.zero) ZintMap.empty in (* 0-31: hashing *)
    let map1 = ZintMap.add U256.one        (U256_val U256.zero) map0 in (* 32-63: hashing *)
    let map2 = ZintMap.add (U256.of_int 2) (U256_val U256.zero) map1 in (* 64-95: free pointer *)
    let map3 = ZintMap.add (U256.of_int 3) (U256_val U256.zero) map2 in (* 96-127: zero *)
    let map4 = ZintMap.add (U256.of_int 4) (U256_val U256.zero) map3 in (* 128-159: free memory *)
    map4
   *)
  let init () = ZintMap.empty

end

