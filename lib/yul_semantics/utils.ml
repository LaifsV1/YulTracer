(* Monadic Operations to intimidate people *)
let return x = Some x
let (>>=) x f =
  match x with
  | Some v -> f v
  | None   -> None
let (>>) x y = x >>= (fun _ -> y)
let (let*) x f = x >>= f

(* Applicative Functor to intimidate the rest *)
let pure x = Some x
let (<*>) fo xo =
  match fo, xo with
  | Some f, Some x  -> Some (f x)
  | _               -> None
let fmap g x = pure g <*> x

(* Function Composition *)
let (<%) f g x = f(g(x))
let (%>) f g x = g(f(x))

(* Function to append an option type to a list *)
let append_some opt xs =
  match opt with
  | Some x -> x :: xs
  | None -> xs

(* Standard functions missing from OCaml List module -- added in OCaml 5.3 *)

let take n l =
  let[@tail_mod_cons] rec aux n l =
    match n, l with
    | 0, _ | _, [] -> []
    | n, x::l -> x::aux (n - 1) l
  in
  if n < 0 then invalid_arg "List.take";
  aux n l

let drop n l =
  let rec aux i = function
    | _x::l when i < n -> aux (i + 1) l
    | rest -> rest
  in
  if n < 0 then invalid_arg "List.drop";
  aux 0 l

let take_while p l =
  let[@tail_mod_cons] rec aux = function
    | x::l when p x -> x::aux l
    | _rest -> []
  in
  aux l

let rec drop_while p = function
  | x::l when p x -> drop_while p l
  | rest -> rest

(* Custom functions *)

let string_of_list 
    (string_of_elem : 'a -> string) 
    (delimiter : string) 
    (lst : 'a list) : string =
  String.concat delimiter (List.map string_of_elem lst)

let rec cartesian_product = function
  | [] -> [[]]
  | xs :: xss ->
     let rest = cartesian_product xss in
     List.concat_map (fun x ->
         List.map (fun ys -> x :: ys) rest
       ) xs

let string_to_hex (s : string) : string =
  let hex_of_char c = Printf.sprintf "%02x" (int_of_char c) in
  "0x" ^ String.concat ""
           (List.init (String.length s) (fun i -> hex_of_char s.[i]))

let explode_to_char_ints (s : string) : int list =
  List.init (String.length s) (fun i ->  s.[i] |> int_of_char)

let left_pad_to_32 (pad : 'a) (lst : 'a list) : 'a list =
  let len = List.length lst in
  if len >= 32 then lst
  else List.rev_append (List.init (32 - len) (fun _ -> pad)) lst

let right_pad_to_32 (pad : 'a) (lst : 'a list) : 'a list =
  let len = List.length lst in
  if len >= 32 then lst
  else lst @ List.init (32 - len) (fun _ -> pad)
