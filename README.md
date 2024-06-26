# YulTracer

[![DOI](https://zenodo.org/badge/816446887.svg)](https://zenodo.org/doi/10.5281/zenodo.12098663)
![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)

`YulTracer` is an interpreter and future symbolic execution engine for [Yul](https://docs.soliditylang.org/en/latest/yul.html) written in OCaml with Z3 for symbolic reasoning and compiled using the Dune build system. This project is currently in a pre-alpha stage.

The interpreter in `YulTracer` implements a CEK machine based on our formal small-step operational semantics for Yul and is designed to be modular and extensible on dialect implementations. Currently, `YulTracer` only runs Yul programs written in the EVM dialect of Yul. This is because the EVM dialect is the only officially specified dialect for Yul. At the moment, symbolic execution is yet to be integrated with the interpreter, but Z3 is still required for compilation as a dependency to our EVM dialect, which partially implements symbolic reasoning.

## Testing
Provided under `YulTracer/test/scripts/` are `Bash` scripts that run tests for the following categories: 
1) **Sequence Generators**: implementations of generators for Catalan numbers, the Heighway dragon curve, Fibonacci numbers, Pell numbers, Prime
numbers, and the Thue–Morse sequence.
2) **Sorting Algorithms**: implementations of bubble, heap, insertion, quick and shell sort on arrays of 6, 300 and 1000 items.
3) [**Solidity Yul Interpreter Tests**](https://github.com/ethereum/solidity/tree/develop/test/libyul/yulInterpreterTests): out of the 50 files (c.f. commit [2b2c76c](https://github.com/ethereum/solidity/tree/2b2c76c214c9c5770856f91601426ab6b79a2d0b/test/libyul/yulInterpreterTests)), we kept 19 files that do not use unimplemented instructions (e.g. opcodes introduced in the Cancun update), of which we marked and omitted 3 files that do not behave according to the official specifications of the EVM.

To run the scripts, you can use:
```
cd test/scripts/
bash test_sequence_generators.sh
bash test_sorting_algorithms.sh
bash test_solidity_yulInterpreterTests.sh
```
for each category of tests respectively. Each script:
1. Runs `YulTracer` on programs in `YulTracer/test/programs/<category>`
2. Produces an output directory in `YulTracer/test/scripts/out/<category>`
3. Compares the contents of the output directory with a directory of expected outputs at `YulTracer/test/programs/<category>/expected_output/`

You can manually inspect the output produced by looking in the output directory specified in (2), and inspect the expected output by looking in the directory specified in (3).

To run individual programs, see the Usage section below.

## Usage
To run `YulTracer` on a given program, use the `-i` option:
```
dune exec -- yultracer -i <path>.yul
```
This compiles the project and executes the resulting binary with option `-i <path>.yul`. For more help on options, use the `-help` or `--help` option.

## Compilation
To compile `YulTracer`, if you have all dependencies, run:
```
dune build
```
The dependencies are:
- Opam package manager (+initialisation)
- OCaml 4.10+ compiler
- Menhir parser generator
- Z3 package for OCaml bindings
- Zarith package for arbitrary-precision integers

For more detailed instructions, the following were tested for Linux and macOS. `opam` is not yet officially supported for Windows.

### 1. Installing the OCaml Package Manager `opam`
All dependencies are obtainable through OCaml's official package manager [`opam`](http://opam.ocaml.org/doc/Install.html). Installation of `opam` is system specific so you may need to refer to their website linked above. Instructions for some common systems are listed below:
#### Ubuntu
```
add-apt-repository ppa:avsm/ppa
apt update
apt install opam
```
#### Fedora, CentOS and RHEL
```
dnf install opam
```
#### macOS
```
# Homebrew
brew install gpatch
brew install opam

# MacPort
port install opam
```

### 2. Initialising `opam`
`opam` needs to be set up after installation, which may also be system dependent. First one needs to initialise it:
```
opam init
```
After initialisation, one has to create the switch to a specific compiler. Any version 4.10 and over works. The command below uses `4.10.1`, but one can use the latest version listed.
```
opam switch create 4.10.1
```
If this does not work, it could be because `opam` is missing a dependency. This depends on how minimal the installation of the system is. Check the error messages to know what is missing. From our experience, these are the dependencies typically missing for a fresh installation of Ubuntu:
```
apt install build-essential
apt install gcc
apt install bubblewrap
```
The above correspond to `make`, `gcc` and `bwrap`, which are often missing in fresh installations.

Finally, initialising `opam` updates your `~/.profile` file, so you may have to source it on Linux:
```
source ~/.profile
```

### 3. Installing dependencies

With `opam` set up, installing dependencies becomes very easy.
```
opam install dune
opam install menhir
opam install zarith
opam install z3
```
Note that Z3 takes a long time to install.

### 4. Compiling `YulTracer`
With all dependencies installed and `~/.profile` sourced, call the build system:
```
dune build
```
This produces an executable binary `yult.exe` usually located at `_build/default/bin/`.

## Preliminary structure:
This project has the following directory structure. This may change in the future.
```
YulTracer/
├── bin/
│   ├── yult.ml                   # main file; produces executable
|   └── dune                      # dune configuration file
├── lib/
│   ├── parser/                   # dialect-independent parser
│   │   ├── lexer.mll             # tokenizer
│   │   ├── parser.mly            # Menhir parser file
|   |   └── dune                  # dune configuration file
│   ├── interpreter/
|   |   ├── yul_ast.ml            # implements the Yul AST as a Functor; 
|   |   |                         # defines module signature for Dialects
|   |   ├── yul_reductions.ml     # implements the reduction semantics for Yul
|   |   |                         # in the style of CEK machines
|   |   ├── yul_interpreter.ml    # implements the Yul interpreter by
|   |   |                         # instantiating a dialect, AST, reductions;
|   |   |                         # additional dialects are instantiated here
|   |   ├── yul_pretty_printer.ml # implements Yul pretty printer as a Functor
|   |   |                         # for a given dialect
│   │   ├── error.ml              # module for error reporting
|   |   └── dune                  # dune configuration file
│   └── dialects/
│       ├── evm_shanghai/         # Shanghai update
│       │   ├── ...               # Shanghai-specific opcodes, etc  
|       |   └── dune              # dune configuration file
│       └── ...                   # additional dialect behaviours go here
└── test/
|   ├── programs/                 # testing Yul programs go here
|   └── scripts/                  # testing scripts go here
└── dune-project                  # dune project file
```

## EVM Dialect and Opcodes

Provided in this repository is a partial implementation of the EVM based on the [Shanghai update of the EVM execution specifications](https://github.com/ethereum/execution-specs/tree/master/src/ethereum/shanghai).

At the moment, only the following EVM opcode categories are implemented and integrated with the Yul interpreter:

- Arithmetic: `add`, `sub`, `mul`, `div`, `sdiv`, `mod`, `smod`, `exp`, `addmod`, `mulmod`, `signextend`
- Bitwise: `not`, `and`, `or`, `xor`, `byte`, `shl`, `shr`, `sar`
- Comparison: `lt`, `gt`, `slt`, `sgt`, `eq`, `iszero`
- Control-flow: `stop`, `pc` (placeholder value)
- Memory: `mload`, `mstore`, `mstore8`, `msize`
- Stack: `pop`
- Storage: `sload`, `sstore`

More specifically, `YulTracer` only executes *closed programs*. That is, programs which do not interact with external programs (e.g. other contracts via calls in the System opcode category) or make use blockchain-specific instructions (e.g. those in the Block, Environment or Log categories). Lastly, while our EVM dialect does provide an opcode for `keccak` in the Keccak category, it currently uses a model that requires symbolic execution, which is yet to be integrated with the interpreter.

## Extending YulTracer with a new dialect

Creating Yul dialects requires some inspection of the codebase for reference. The current structure of `YulTracer` is such that the Yul semantics is parametrised on a given dialect implementation. For this, we assume familiarity with OCaml and Dune.
1. First, you will need to define all the machine instructions and their behaviour in `lib/dialects`, e.g. `lib/dialects/new_dialect`. Add and update `dune` files as required.
2. This behaviour can be used to instantiate a new dialect `NewDialect` in `lib/interpreter/yul_interpreter.ml`. Dialects must follow the module signature defined in `yul_ast.ml`. e.g.
```
module NewDialect :(Dialect) = struct
  open New_dialect
  (* implement all necessary behaviours...*)
end
```
3. A new interpreter can then be created by instantiating `Interpreter` with `D`. e.g.
```
module YulEvmInterpreter = Interpreter(NewDialect)
```
4. Lastly, the main file `bin/yult.ml` needs to be updated to add the new dialect to the selector function `get_dialect`. e.g.
```
let new_dialect = "new_dialect" (* added new dialect here *)

let get_dialect s :(module Yul_ast.Dialect) =
  match s with
  ...
  | c with c = new_dialect ->  (module Yul_interpreter.NewDialect) (* new dialect added here *)
  ...
```
Although not necessary, for user convenience the new dialect should be added to the help menu. e.g.  
```
("-dialect", Arg.Set_string dialect,
  (def_msg_s "e.g. ... \"new_dialect\"" !dialect));
```
