{
  open Parser
  open Lexing

  let get_lex_pos lexbuf = 
    let (b,e) = (lexeme_start_p lexbuf, lexeme_end_p lexbuf) in
    let line_no = b.pos_lnum in
    let char_start = b.pos_cnum - b.pos_bol + 1 in
    let char_end = e.pos_cnum - b.pos_bol + 1 in
    (line_no, char_start, char_end)
 
  let get_lex_start_end_p lexbuf = (lexeme_start_p lexbuf, lexeme_end_p lexbuf)

  let parse_hex_literal s =
      let hex_string = String.sub s 4 (String.length s - 5) in
      HEXLIT hex_string
}

let white = [' ' '\t']+
let newline = '\r' | '\n' | "\r\n"
let digit = ['0'-'9']
let hexdigit = ['0'-'9' 'a'-'f' 'A'-'F']
let lowercase = ['a' - 'z']
let uppercase = ['A' - 'Z']
let alphabet = lowercase | uppercase
let alphanum = alphabet | digit | '_' | '.'
let ident_hd = alphabet | ['_' '$']
let ident_tl = alphanum | ['$']

(* literals *)
(* booleans as keywords below *)
let dec_num = digit+
let hex_num = "0x" hexdigit+
let num_lit = dec_num | hex_num
let string_lit = '"' ([^'"' '\r' '\n' '\\'] | '\\' _)* '"'
let hex_lit = "hex" ('"' (hexdigit hexdigit)* '"' | '\'' (hexdigit hexdigit)* '\'')

(* identifiers *)
let identifier = ident_hd ident_tl*
(* identifier_list: do in parser *)
(* typed_identifier_list: do in parser *)

let comments =
  (* Comments end of line *)
  "//" [^'\n']*
let open_comment = "/*"
let close_comment = "*/"

(* keywords from https://docs.soliditylang.org/en/v0.8.21/yul.html *)
rule token = parse
  | newline            { new_line lexbuf; token lexbuf } (* ignore newlines but count them *)
  | white              { token lexbuf }                  (* ignore whitespaces and tabs *)    
  | comments           { (token lexbuf) }
  | "object"           { OBJECT }
  | "code"             { CODE }
  | "data"             { DATA "data" }
  | hex_lit as hexlit  { parse_hex_literal hexlit }
  | '{'                { LBRACE }
  | '}'                { RBRACE }
  | "function"         { FUNCTION }
  | '('                { LPAREN }
  | ')'                { RPAREN }
  | "->"               { ARROW }
  | "let"              { LET }
  | ":="               { COLONEQUAL }
  | "if"               { IF }
  | "switch"           { SWITCH }
  | "case"             { CASE }
  | "default"          { DEFAULT }
  | "for"              { FOR }
  | "break"            { BREAK }
  | "continue"         { CONTINUE }
  | "leave"            { LEAVE }
  | ','                { COMMA }
  | string_lit as text { STRING (String.sub text 1 ((String.length text) - 2)) }
  | num_lit as num     { NUMBER num }
  (** TODO: does ID need to be parsed at the end? **)
  | identifier as text { IDENT text }
  | eof                { EOF }
  | open_comment       { comment lexbuf } (* OCaml comments *)
  | _                  { raise (Yulinterpreter.Error.LexE (get_lex_start_end_p lexbuf,
                               "Unexpected char: " ^ (Lexing.lexeme lexbuf))) }
and comment = parse
  | close_comment      { token lexbuf }
  | newline            { new_line lexbuf; comment lexbuf }
  | _                  { comment lexbuf }


(* opcodes:
stop()
add(x, y)
sub(x, y)
mul(x, y)
div(x, y)
sdiv(x, y)
mod(x, y)
smod(x, y)
exp(x, y)
not(x)
lt(x, y)
gt(x, y)
slt(x, y)
sgt(x, y)
eq(x, y)
iszero(x)
and(x, y)
or(x, y)
xor(x, y)
byte(n, x)
shl(x, y)
shr(x, y)
sar(x, y)
addmod(x, y, m)
mulmod(x, y, m)
signextend(i, x)
keccak256(p, n)
pc()
pop(x)
mload(p)
mstore(p, v)
mstore8(p, v)
sload(p)
sstore(p, v)
msize()
gas()
address()
balance(a)
selfbalance()
caller()
callvalue()
calldataload(p)
calldatasize()
calldatacopy(t, f, s)
codesize()
codecopy(t, f, s)
extcodesize(a)
extcodecopy(a, t, f, s)
returndatasize()
returndatacopy(t, f, s)
extcodehash(a)
create(v, p, n)
create2(v, p, n, s)
call(g, a, v, in, insize, out, outsize)
callcode(g, a, v, in, insize, out, outsize)
delegatecall(g, a, in, insize, out, outsize)
staticcall(g, a, in, insize, out, outsize)
return(p, s)
revert(p, s)
selfdestruct(a)
invalid()
log0(p, s)
log1(p, s, t1)
log2(p, s, t1, t2)
log3(p, s, t1, t2, t3)
log4(p, s, t1, t2, t3, t4)
chainid()
basefee()
origin()
gasprice()
blockhash(b)
coinbase()
timestamp()
number()
difficulty()
prevrandao()
gaslimit()
*)