(* keccak256.ml *)
module Keccak256 = struct
  (* === permutation constants === *)
  let rc : Int64.t array = [|
    0x0000000000000001L; 0x0000000000008082L; 0x800000000000808aL;
    0x8000000080008000L; 0x000000000000808bL; 0x0000000080000001L;
    0x8000000080008081L; 0x8000000000008009L; 0x000000000000008aL;
    0x0000000000000088L; 0x0000000080008009L; 0x000000008000000aL;
    0x000000008000808bL; 0x800000000000008bL; 0x8000000000008089L;
    0x8000000000008003L; 0x8000000000008002L; 0x8000000000000080L;
    0x000000000000800aL; 0x800000008000000aL; 0x8000000080008081L;
    0x8000000000008080L; 0x0000000080000001L; 0x8000000080008008L
  |]

  let rot_offsets : int array array = [|
    [|   0;  36;   3;  41;  18 |];
    [|   1;  44;  10;  45;   2 |];
    [|  62;   6;  43;  15;  61 |];
    [|  28;  55;  25;  21;  56 |];
    [|  27;  20;  39;   8;  14 |];
  |]

  let index x y = x + 5 * y

  let rotl64 (x : Int64.t) (n : int) : Int64.t =
    let open Int64 in
    logor (shift_left x n) (shift_right_logical x (64 - n))

  let keccakf (st : Int64.t array) =
    let c = Array.make 5 Int64.zero in
    let d = Array.make 5 Int64.zero in
    for round = 0 to 23 do
      (* θ *)
      for x = 0 to 4 do
        c.(x) <-
          Int64.logxor
            (Int64.logxor (Int64.logxor st.(index x 0) st.(index x 1))
                           (Int64.logxor st.(index x 2) st.(index x 3)))
            st.(index x 4)
      done;
      for x = 0 to 4 do
        let cx1 = c.((x + 1) mod 5) in
        d.(x) <- Int64.logxor c.((x + 4) mod 5) (rotl64 cx1 1)
      done;
      for y = 0 to 4 do
        for x = 0 to 4 do
          st.(index x y) <- Int64.logxor st.(index x y) d.(x)
        done
      done;

      (* ρ+π *)
      let b = Array.make 25 Int64.zero in
      for y = 0 to 4 do
        for x = 0 to 4 do
          let r = rot_offsets.(x).(y) in
          let v = rotl64 st.(index x y) r in
          let x' = y in
          let y' = (2*x + 3*y) mod 5 in
          b.(index x' y') <- v
        done
      done;

      (* χ *)
      for y = 0 to 4 do
        for x = 0 to 4 do
          let a  = b.(index x y) in
          let b1 = b.(index ((x+1) mod 5) y) in
          let b2 = b.(index ((x+2) mod 5) y) in
          st.(index x y) <- Int64.logxor a (Int64.logand (Int64.lognot b1) b2)
        done
      done;

      (* ι *)
      st.(index 0 0) <- Int64.logxor st.(index 0 0) rc.(round)
    done

  let pad10star1 ~rate_bytes msg_len =
    let r = rate_bytes in
    let rem = msg_len mod r in
    let pad_len = if rem = 0 then r else r - rem in
    let pad = Bytes.make pad_len '\000' in
    if pad_len = 1 then
      Bytes.set pad 0 (Char.chr 0x81)
    else begin
      Bytes.set pad 0 (Char.chr 0x01);
      Bytes.set pad (pad_len-1) (Char.chr 0x80)
    end;
    pad

  let keccak256_bytes (msg : Bytes.t) : Bytes.t =
    let rate_bytes = 1088 / 8 in  (* 136 *)
    let state = Array.make 25 Int64.zero in
    let padded = Bytes.cat msg (pad10star1 ~rate_bytes (Bytes.length msg)) in
    let total = Bytes.length padded in
    let n_blocks = total / rate_bytes in

    (* ABSORB: loop over blocks of [rate_bytes] bytes *)
    for i = 0 to n_blocks - 1 do
      let off = i * rate_bytes in
      for lane = 0 to (rate_bytes / 8) - 1 do
        let base = off + lane * 8 in
        let b0 = Char.code (Bytes.get padded (base + 0))
        and b1 = Char.code (Bytes.get padded (base + 1))
        and b2 = Char.code (Bytes.get padded (base + 2))
        and b3 = Char.code (Bytes.get padded (base + 3))
        and b4 = Char.code (Bytes.get padded (base + 4))
        and b5 = Char.code (Bytes.get padded (base + 5))
        and b6 = Char.code (Bytes.get padded (base + 6))
        and b7 = Char.code (Bytes.get padded (base + 7)) in
        let lane_val =
          Int64.logor
            (Int64.shift_left (Int64.of_int b7) 56)
            (Int64.logor
               (Int64.shift_left (Int64.of_int b6) 48)
               (Int64.logor
                  (Int64.shift_left (Int64.of_int b5) 40)
                  (Int64.logor
                     (Int64.shift_left (Int64.of_int b4) 32)
                     (Int64.logor
                        (Int64.shift_left (Int64.of_int b3) 24)
                        (Int64.logor
                           (Int64.shift_left (Int64.of_int b2) 16)
                           (Int64.logor
                              (Int64.shift_left (Int64.of_int b1) 8)
                              (Int64.of_int b0))))))) in
        state.(lane) <- Int64.logxor state.(lane) lane_val
      done;
      keccakf state
    done;

    (* SQUEEZE: read first 32 bytes out *)
    let out = Bytes.make 32 '\000' in
    for lane = 0 to 3 do
      let v = state.(lane) in
      for j = 0 to 7 do
        let byte = Int64.(to_int (logand (shift_right_logical v (8*j)) 0xFFL)) in
        Bytes.set out (lane*8 + j) (Char.chr byte)
      done
    done;
    out

  let to_hex (b : Bytes.t) : string =
    let hex = "0123456789abcdef" in
    let n = Bytes.length b in
    let res = Bytes.create (2*n) in
    for i = 0 to n-1 do
      let v = Char.code (Bytes.get b i) in
      Bytes.set res (2*i    ) hex.[v lsr 4];
      Bytes.set res (2*i + 1) hex.[v land 0x0F]
    done;
    Bytes.unsafe_to_string res

  let keccak256 (s : string) : string =
    to_hex (keccak256_bytes (Bytes.of_string s))
end

let keccak256 = Keccak256.keccak256
