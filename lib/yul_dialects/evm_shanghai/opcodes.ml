(** OPCODES based on: https://docs.soliditylang.org/en/v0.8.15/yul.html *)

(** EVM DIALECT:
    The default dialect of Yul currently is the EVM dialect for the currently
    selected version of the EVM. The only type available in this dialect is u256,
    the native type of the Ethereum Virtual Machine.

    Opcodes marked with - do not return a result and all others return exactly
    one value. Opcodes marked with F, H, B, C, I and L are present since Frontier,
    Homestead, Byzantium, Constantinople, Istanbul or London respectively.

    In the following, mem\[a...b) signifies the bytes of memory starting at
    position a up to but not including position b and storage\[p\] signifies
    the storage contents at slot p.

    Since Yul manages local variables and control-flow, opcodes that interfere
    with these features are not available. This includes the dup and swap
    instructions as well as jump instructions, labels and the push instructions.
*)
type opcode =
  | Stop   (* stop()              -F| stop execution, identical to return(0, 0)                       *)
  | Add    (* add(x,y)             F| x + y                                                           *)
  | Sub    (* sub(x,y)             F| x - y                                                           *)
  | Mul    (* mul(x,y)             F| x * y                                                           *)
  | Div    (* div(x,y)             F| x / y or 0 if y == 0                                            *)
  | Sdiv   (* sdiv(x,y)            F| x / y, for signed numbers in two’s complement, 0 if y == 0      *)
  | Mod    (* mod(x,y)             F| x % y, 0 if y == 0                                              *)
  | Smod   (* smod(x,y)            F| x % y, for signed numbers in two’s complement, 0 if y == 0      *)
  | Exp    (* exp(x,y)             F| x to the power of y                                             *)
  | Not    (* not(x)               F| bitwise “not” of x (every bit of x is negated)                  *)
  | Lt     (* lt(x,y)              F| 1 if x < y, 0 otherwise                                         *)
  | Gt     (* gt(x,y)              F| 1 if x > y, 0 otherwise                                         *)
  | Slt    (* slt(x,y)             F| 1 if x < y, 0 otherwise, for signed numbers in two’s complement *)
  | Sgt    (* sgt(x,y)             F| 1 if x > y, 0 otherwise, for signed numbers in two’s complement *)
  | Eq     (* eq(x,y)              F| 1 if x == y, 0 otherwise                                        *)
  | Iszero (* iszero(x)            F| 1 if x == 0, 0 otherwise                                        *)
  | And    (* and(x,y)             F| bitwise “and” of x and y                                        *)
  | Or     (* or(x,y)              F| bitwise “or” of x and y                                         *)
  | Xor    (* xor(x,y)             F| bitwise “xor” of x and y                                        *)
  | Byte   (* byte(n,x)            F| nth byte of x, where the most significant byte is the 0th byte  *)
  | Shl    (* shl(x,y)             C| logical shift left y by x bits                                  *)
  | Shr    (* shr(x,y)             C| logical shift right y by x bits                                 *)
  | Sar    (* sar(x,y)             C| signed arithmetic shift right y by x bits                       *)
  | Addmod (* addmod(x,y,m)        F| (x + y) % m with arbitrary precision arithmetic, 0 if m == 0    *)
  | Mulmod (* mulmod(x,y,m)        F| (x * y) % m with arbitrary precision arithmetic, 0 if m == 0    *)
  | Signex (* signextend(i,x)      F| sign extend from (i*8+7)th bit counting from least significant  *)
  | Keccak (* keccak256(p,n)       F| keccak(mem[p…(p+n)))                                            *)
  | Pc     (* pc()                 F| current position in code                                        *)
  | Pop    (* pop(x)              -F| discard value x                                                 *)
  | Mload  (* mload(p)             F| mem[p…(p+32))                                                   *)
  | Mstore (* mstore(p,v)         -F| mem[p…(p+32)) := v                                              *)
  | Mstore8(* mstore8(p,v)        -F| mem[p] := v & 0xff (only modifies a single byte)                *)
  | Sload  (* sload(p)             F| storage[p]                                                      *)
  | Sstore (* sstore(p,v)         -F| storage[p] := v                                                 *)
  | Msize  (* msize()              F| size of memory, i.e. largest accessed memory index              *)
  | Gas    (* gas()                F| gas still available to execution                                *)
  | Address(* address()            F| address of the current contract / execution context             *)
  | Bal    (* balance(a)           F| wei balance at address a                                        *)
  | Sbal   (* selfbalance()        I| equivalent to balance(address()), but cheaper                   *)
  | Caller (* caller()             F| call sender (excluding delegatecall)                            *)
  | Cvalue (* callvalue()          F| wei sent together with the current call                         *)
  | Cdload (* calldataload(p)      F| call data starting from position p (32 bytes)                   *)
  | Cdsize (* calldatasize()       F| size of call data in bytes                                      *)
  | Cdcode (* calldatacopy(t,f,s) -F| copy s bytes from calldata at position f to mem at position t   *)
  | Csize  (* codesize()           F| size of the code of the current contract / execution context    *)
  | Ccopy  (* codecopy(t,f,s)     -F| copy s bytes from code at position f to mem at position t       *)
  | Ecsize (* extcodesize(a)       F| size of the code at address a                                   *)
  | Eccopy (* extcodecopy(a,t,f,s)-F| like codecopy(t, f, s) but take code at address a               *)
  | Rdsize (* returndatasize()     B| size of the last returndata                                     *)
  | Mcopy  (* mcopy(t, f, s)      -N| copy s bytes from mem at position f to mem at position t        *)
  | Rdcopy (* returndatacopy(t,f,s)
                                  -B|copy s bytes from returndata at position f to mem at position t  *)
  | Echash (* extcodehash(a)       C| code hash of address a                                          *)
  | Create (* create(v, p, n)      F| create new contract with code mem[p…(p+n)) and send v wei and
                                      return the new address; returns 0 on error *)
  | Create2(* create2(v, p, n, s)  C| create new contract with code mem[p…(p+n)) at address
                                      keccak256(0xff . this . s . keccak256(mem[p…(p+n))) and send v
                                      wei and return the new address, where 0xff is a 1 byte value,
                                      this is the current contract’s address as a 20 byte value and s
                                      is a big-endian 256-bit value; returns 0 on error               *)
  | Call   (* call(g,a,v,in,insize,out,outsize)
                                   F| call contract at address a with input mem[in…(in+insize))
                                      providing g gas and v wei and output area mem[out…(out+outsize))
                                      returning 0 on error (eg. out of gas) and 1 on success          *)
  | Callc  (* callcode(g,a,v,in,insize,out,outsize)
                                   F| identical to call but only use the code from a and stay in the
                                      context of the current contract otherwise                       *)
  | Dcall  (* delegatecall(g,a,in,insize,out,outsize)
                                   H| identical to callcode but also keep caller and callvalue        *)
  | Scall  (* staticcall(g,a,in,insize,out,outsize)
                                   B| identical to call(g, a, 0, in, insize, out, outsize) but do not
                                      allow state modifications                                       *)
  | Return (* return(p, s)        -F| end execution, return data mem[p…(p+s))                         *)
  | Revert (* revert(p, s)        -B| end execution, revert state changes, return data mem[p…(p+s))   *)
  | Selfdes(*selfdestruct(a)      -F| end execution, destroy current contract and send funds to a     *)
  | Invalid(* invalid()           -F| end execution with invalid instruction                          *)
  | Log0   (* log0(p, s)          -F| log without topics and data mem[p…(p+s))                        *)
  | Log1   (* log1(p,s,t1)        -F| log with topic t1 and data mem[p…(p+s))                         *)
  | Log2   (* log2(p,s,t1,t2)     -F| log with topics t1, t2 and data mem[p…(p+s))                    *)
  | Log3   (* log3(p,s,t1,t2,t3)  -F| log with topics t1, t2, t3 and data mem[p…(p+s))                *)
  | Log4   (* log4(p,s,t1,t2,t3,t4)
                                  -F| log with topics t1, t2, t3, t4 and data mem[p…(p+s))            *)
  | Chainid(* chainid()            I| ID of the executing chain (EIP-1344)                            *)
  | Bfee   (* basefee()            L| current block’s base fee (EIP-3198 and EIP-1559)                *)
  | Origin (* origin()             F| transaction sender                                              *)
  | Gprice (* gasprice()           F| gas price of the transaction                                    *)
  | Bhash  (* blockhash(b)         F| hash of block nr b - only for last 256 blocks excluding current *)
  | Cbase  (* coinbase()           F| current mining beneficiary                                      *)
  | Tstamp (* timestamp()          F| timestamp of the current block in seconds since the epoch       *)
  | Number (* number()             F| current block number                                            *)
  | Diffic (* difficulty()         F| difficulty of the current block                                 *)
  | Glimit (* gaslimit()           F| block gas limit of the current block                            *)
  (* DATA FUNCTIONS -- used to access Yul objects *)
  | Datasize
  | Dataoffset
  | Datacopy
  (* OTHER YUL-SPECIFIC FUNCTIONS *)
  | MemGuard
  | SetImm
  | LoadImm
  | SetLinker
  | LoadLinker
  (* CUSTOM PRINT OEPRATIONS GO HERE: *)
  | Print     (* prints decimal number *)
  | Printsign (* prints signed decimal *)
  | Printbin  (* prints binary number *)
  | Printhex  (* prints lower-case hex number *)
  | PrintHEX  (* prints upper-case hex number *)
  | PrintObj  (* prints object name *)
  | PrintIds  (* prints all object ids *)
  | PrintNms  (* prints all object names *)
  | PrintSig  (* prints sigma *)
  | PrintZ3   (* prints sigma by calling Z3 *)
  | PrintMem  (* prints entire memory map *)
  | PrintAscii(* prints ASCII value for U256 *)
  (* CUSTOM OPCODES FOR ANALYSIS *)
  | MkSymbol  (* creates a new symbolic variable *)
  | ExtFund   (* simulates external transfer -- adds any amount of ETH into current address *)
  | Wait      (* waits for some amount of seconds *)
  | Assert    (* if assertion is violated, it aborts the current path and prints the trace *)
  | RevealUint(* teaches the opponent the given int     -- adds it to o_domains.uint *)
  | RevealAddr(* teaches the opponent the given address -- adds it to o_domains.address *)
  (* CUSTOM SYSTEM OPCODES *)
  | StartAnalysis | LaunchOpponent (* passes control to top-level opponent *)
  | ImpersonateCall

(** list cotaining opcode * string relation *)
let opcode_table =
  [ (Stop   , "stop");
    (Add    , "add");
    (Sub    , "sub");
    (Mul    , "mul");
    (Div    , "div");
    (Sdiv   , "sdiv");
    (Mod    , "mod");
    (Smod   , "smod");
    (Exp    , "exp");
    (Not    , "not");
    (Lt     , "lt");
    (Gt     , "gt");
    (Slt    , "slt");
    (Sgt    , "sgt");
    (Eq     , "eq");
    (Iszero , "iszero");
    (And    , "and");
    (Or     , "or");
    (Xor    , "xor");
    (Byte   , "byte");
    (Shl    , "shl");
    (Shr    , "shr");
    (Sar    , "sar");
    (Addmod , "addmod");
    (Mulmod , "mulmod");
    (Signex , "signextend");
    (Keccak , "keccak256");
    (Pc     , "pc");
    (Pop    , "pop");
    (Mload  , "mload");
    (Mstore , "mstore");
    (Mstore8, "mstore8");
    (Sload  , "sload");
    (Sstore , "sstore");
    (Msize  , "msize");
    (Gas    , "gas");
    (Address, "address");
    (Bal    , "balance");
    (Sbal   , "selfbalance");
    (Caller , "caller");
    (Cvalue , "callvalue");
    (Cdload , "calldataload");
    (Cdsize , "calldatasize");
    (Cdcode , "calldatacopy");
    (Csize  , "codesize");
    (Ccopy  , "codecopy");
    (Ecsize , "extcodesize");
    (Eccopy , "extcodecopy");
    (Rdsize , "returndatasize");
    (Rdcopy , "returndatacopy");
    (Mcopy  , "mcopy");               (* this is from after Shanghai *)
    (Echash , "extcodehash");
    (Create , "create");
    (Create2, "create2");
    (Call   , "call");
    (Callc  , "callcode");
    (Dcall  , "delegatecall");
    (Scall  , "staticcall");
    (Return , "return");
    (Revert , "revert");
    (Selfdes, "selfdestruct");
    (Invalid, "invalid");
    (Log0   , "log0");
    (Log1   , "log1");
    (Log2   , "log2");
    (Log3   , "log3");
    (Log4   , "log4");
    (Chainid, "chainid");
    (Bfee   , "basefee");
    (Origin , "origin");
    (Gprice , "gasprice");
    (Bhash  , "blockhash");
    (Cbase  , "coinbase");
    (Tstamp , "timestamp");
    (Number , "number");
    (Diffic , "difficulty");
    (Glimit , "gaslimit");
    (* DATA FUNCTIONS *)
    (Datasize  , "datasize");
    (Dataoffset, "dataoffset");
    (Datacopy  , "datacopy");
    (* OTHER YUL FUNCTIONS *)
    (MemGuard , "memoryguard");
    (SetImm   , "setimmutable");
    (LoadImm  , "loadimmutable");
    (* CUSTOM OPCODES : WE USE CAPS FOR THESE OPCODES *)
    (* PRINT FUNCTIONS *)
    (Print    , "PRINT");          (* print u256 word in decimal *)
    (Printsign, "PRINT_signed");   (* print u256 word in signed decimal *)
    (PrintHEX , "PRINT_HEX");      (* print u256 word in HEX in caps *)
    (Printhex , "PRINT_hex");      (* print u256 word in hex in lowercase *)
    (Printbin , "PRINT_bin");      (* print u256 word in binary *)
    (PrintObj , "PRINT_object");   (* print object *)
    (PrintIds , "PRINT_IDS");      (* print all object IDs found *)
    (PrintNms , "PRINT_names");    (* print all object names found *)
    (PrintSig , "PRINT_sigma");    (* print symbolic environment sigma directly *)
    (PrintZ3  , "PRINT_z3");       (* print symbolic environment sigma via Z3 *)
    (PrintMem , "PRINT_mem");      (* print memory *)
    (PrintAscii, "PRINT_ascii");   (* print ascii string of U256 *)
    (* OTHER CUSTOM OPCODES *)
    (MkSymbol , "MK_SYMBOL");      (* make symbolic s256 value *)
    (ExtFund  , "EXT_FUND");       (* adds a given amount of WEI to the balance of the current target *)
    (Wait     , "WAIT");           (* waits a given number of seconds *)
    (Assert   , "ASSERT");         (* stops game and prints trace *)
    (SetLinker  , "SETLINKER");    (* sets  linkersymbol : string -> U256 -> void  *)
    (LoadLinker , "linkersymbol"); (* loads linkersymbol : string -> U256(address) *)
    (RevealUint , "REVEAL_UINT");  (* adds given UINT    to O_DOMAINS.UINT *)
    (RevealAddr , "REVEAL_ADDR");  (* adds given ADDRESS to O_DOMAINS.ADDRESS *)
    (* CUSTOM OPCODES TO PASS CONTROL TO A TOP-LEVEL OPPONENT *)
    (StartAnalysis , "START_ANALYSIS");
    (LaunchOpponent , "LAUNCH_OPPONENT");
    (ImpersonateCall, "IMPERSONATECALL");
  ]

module StringMap = Map.Make (String)
type opcode_map = opcode StringMap.t

(** look up map for opcode: string -> opcode *)
let opcode_lookup_map : opcode_map =
  List.fold_left
    (fun acc (op,str) -> StringMap.add str op acc)
    StringMap.empty
    opcode_table

(** lookup function for opcode from string *)
let opcode_of_string_opt string = StringMap.find_opt string opcode_lookup_map
  
(** lookup option function for string from opcode *)
let string_of_opcode_opt opcode = List.assoc_opt opcode opcode_table

(** lookup function for string from opcode *)
let string_of_opcode opcode = try List.assoc opcode opcode_table with Not_found -> failwith "unknown opcode"

(** checks if a string is an opcode *)
let is_string_opcode string =
  match opcode_of_string_opt string with
  | Some _ -> true
  | None -> false
  
