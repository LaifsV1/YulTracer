%parameter<Dialect : Yul_semantics.Ast.Dialect>

%{
    open Yul_semantics
    open Ast
    open YulAST(Dialect)
                         
    (* we check if OPCODE or FUN here *)
    let op_or_fun string args =
      match Dialect.opcode_of_string_opt string with
      | None        -> FunApp (string , List.rev args)
      | Some opcode -> OpApp  (opcode , List.rev args)
%}

%type <YulAST(Dialect).parsed_yul> parsed_yul
%type <YulAST(Dialect).yul_object> yul_object
%start <YulAST(Dialect).parsed_yul> main

%%

main : parsed_yul EOF { $1 }

parsed_yul :
  | yul_object { YulObject $1 }
  | statement  { YulCode   $1 }

yul_object :
  | OBJECT name = STRING LBRACE code = yul_code members = yul_members RBRACE
    { {name = name; code = code; members; uid = 0 ; abi = None ; full_abi = None} }
  | OBJECT name = STRING LBRACE code = yul_code RBRACE
    { {name = name; code = code; members=[]; uid = 0 ; abi = None ; full_abi = None} }

yul_code : CODE block { Block $2 }

yul_data :
  | DATA STRING HEXLIT { $2 , Hex $3 }
  | DATA STRING STRING { $2 , Str $3 }

yul_members :
  | yul_member              { [$1] }
  | yul_member yul_members  { $1 :: $2 }

yul_member :
  | yul_object { Object $1 }
  | yul_data   { Data   $1 }

block :
  | LBRACE statements RBRACE { $2 }
  | LBRACE RBRACE            { [] }

statements :
  | statement            { [$1] }
  | statement statements { $1 :: $2 }

statement :
  | block           { Block $1 }
  | function_def    { $1 }
  | variable_decl   { $1 }
  | assignment      { $1 }
  | conditional     { $1 }
  | expression      { Expression $1 }
  | switch          { $1 }
  | for_loop        { $1 }
  | break_continue  { $1 }
  | leave           { $1 }

function_def :
  | FUNCTION id = ident LPAREN RPAREN body = block
    { Function (id , {args=[] ; rets=[] ; body}) }
  | FUNCTION id = ident LPAREN args = ident_list RPAREN body = block
    { Function (id , {args ; rets=[] ; body}) }
  | FUNCTION id = ident LPAREN RPAREN ARROW rets = ident_list body = block
    { Function (id , {args=[] ; rets ; body}) }
  | FUNCTION id = ident LPAREN args = ident_list RPAREN ARROW rets = ident_list body = block
    { Function (id , {args ; rets ; body}) }

variable_decl :
  | LET idents = ident_list
    {
      match idents with
      | [] -> failwith "Let binding cannot be empty"
      | _ :: [] ->
         LetNew (idents , Val (Dialect.zero))
      | xs      ->
         LetNew (idents , Tuple (List.map (fun _ -> Dialect.zero) xs))
    }
  | LET idents = ident_list COLONEQUAL expr = expression { LetNew (idents , expr) }

assignment : ident_list COLONEQUAL expression { Assign ($1 , $3) }

expression :
  | function_call { $1 }
  | ident         { Var $1 }
  | value         { Val $1 }
  | STRING        { Str $1 }

conditional : IF expression block { If ($2 , $3) }

switch :
  | SWITCH expr = expression def = default
    { Switch (expr , [] , def) }
  | SWITCH expr = expression cases = cases
    { Switch (expr , cases , []) }
  | SWITCH expr = expression cases = cases def = default
    { Switch (expr , cases , def) }

cases :
  | case       { [$1] }
  | case cases { $1 :: $2 }

case : CASE value sig_block { $2 , $3 }

default : DEFAULT block { $2 }

(* UNUSED: added in case we ever need to find signatures at parse time *)
sig_block :
  | LBRACE (* SIGNATURE *) stmt = statements RBRACE { stmt }
  | block                              { $1 }

for_loop : FOR init = block cond = expression post = block body = block
    { For (init , cond , post , body) }

break_continue :
  | BREAK    { Break }
  | CONTINUE { Continue }

leave : LEAVE { Leave }

(* We check if the function is an OPCODE with op_or_fun *)
function_call :
  | ident LPAREN RPAREN      { op_or_fun $1 [] }
  | ident LPAREN args RPAREN { op_or_fun $1 $3 }

args :
  | expression            { [$1] }
  | expression COMMA args { $1 :: $3 }

ident_list :
  | ident                  { [$1] }
  | ident COMMA ident_list { $1 :: $3 }

value :
  | NUMBER { Dialect.value_of_string $1 }
  | HEXLIT { Dialect.value_of_string ("0x" ^ $1) }
  | BOOL   { Dialect.val_of_bool $1 }

ident :
  | IDENT { $1 }
  | DATA  { $1 }
