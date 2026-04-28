# YulTracer
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.12098663.svg)](https://doi.org/10.5281/zenodo.12098663)
![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)

`YulTracer` is a bounded safety checker (finds assertion violations) and interpreter for [Yul](https://docs.soliditylang.org/en/latest/yul.html). `YulTracer` performs reachability analysis for programs written in Yul and is also able to analyse smart contracts written in Solidity via the Solidity compiler --- we provide examples in this repository showing automatic tool-chains set up to analyse large code bases.

We envision `YulTracer` to be used in semi-automatic fashion by developers and auditors. The exploration is fully automatic, but assertions need to be added to the code to specify safety. Additionally, we expect exploration parameters need to be specified for complex projects.

---

## Table of Contents

- [Releases](#releases)
    - [Current Release (0.2.x)](#current-release-02x)
    - [Previous Release (0.1.x)](#previous-release-01x)
- [Testing](#testing)
- [Usage](#usage)
- [Compilation](#compilation)
    - [1. Installing the OCaml Package Manager `opam`](#1-installing-the-ocaml-package-manager-opam)
        - [Ubuntu](#ubuntu)
        - [Fedora, CentOS and RHEL](#fedora-centos-and-rhel)
        - [macOS](#macos)
    - [2. Initialising `opam`](#2-initialising-opam)
    - [3. Installing Dependencies](#3-installing-dependencies)
    - [4. Compiling `YulTracer`](#4-compiling-yultracer)
- [Directory Structure:](#directory-structure)
- [EVM Dialect and Instruction Set](#evm-dialect-and-instruction-set)
    - [Custom Instructions](#custom-instructions)
    - [Print Instructions](#print-instructions)

---
## Releases

### Current Release (0.2.x)
**DOI**: [10.5281/zenodo.18280182](https://doi.org/10.5281/zenodo.18280182)<br>
**Report**: [arXiv:2512.22417](https://arxiv.org/abs/2512.22417)

The core technical contribution of this release is the addition of a semantically grounded attacker/environment model that exhaustively enumerates all possible traces reachable by an external user interacting with the set of contracts being analysed. We use Game Semantics to model the environment and perform an on-the-fly depth-bounded reachability analysis of the Game Semantics for said set of smart contracts. The tool constructs a finite exploration tree that is an unfolding of the interaction LTS, and reports a counterexample trace when an assertion-violating configuration is reachable within depth explored.

The above makes the tool sound and complete up to the bound provided and with respect to the fidelity of our Yul interpreter and EVM model; i.e. `YulTracer` is precise with regards to the trace enumeration (no false positives up to the contraints mentioned). Our Yul interpreter implements a CEK machine based on our formal small-step operational semantics for Yul (see [10.1007/978-3-031-77382-2_19](https://doi.org/10.1007/978-3-031-77382-2_19)). Our EVM model is a line-by-line port of the Shanghai fork of the [Ethereum Execution Client Specifications](https://github.com/ethereum/execution-specs), extended with Symbolic Execution and abstracted for compatibility with Yul and our Games. 

`YulTracer` currently features limited support for Symbolic Execution via Z3 BitVectors: symbolic reasoning is present for arithmetic and branching, but not for symbolic pointers. As a result, symbolic execution is not recommended at this stage and is not used in any of the smart contract use-case examples provided in this repository.

### Previous Release (0.1.x)
**DOI**: [10.5281/zenodo.12511493](https://doi.org/10.5281/zenodo.12511493)<br>
**Publication**: [10.1007/978-3-031-77382-2_19](https://doi.org/10.1007/978-3-031-77382-2_19)

For the previous interpreter-only version `0.1` of YulTracer, please see commit [`57f9202`](https://github.com/LaifsV1/YulTracer/tree/57f92027b94c89c76dd88f308a99b55b9ad9df41) and [release 0.1.1](https://github.com/LaifsV1/YulTracer/releases/tag/v0.1.1-alpha). 

---
## Testing
Provided under `YulTracer/test/` are two directories:

- **`smart_contracts`**: Contains directories documenting our application of `YulTracer` to various real-world on-chain smart contracts exploits and benchmarks from literature. Each subdirectory contains its own `README` file explaining how to compile and run the examples:
    - [`gigahorse-bench/`](test/smart_contracts/gigahorse-bench/README.md) --- Gigahorse benchmarks with tool comparison scripts
    - [`DAO/`](test/smart_contracts/DAO/README.md) --- Seven analysis variants of the original on-chain DAO contracts
    - [`BurgerSwap/`](test/smart_contracts/BurgerSwap/README.md) --- BurgerSwap/DemaxPair exploit demo
    - [`Lendf.Me/`](test/smart_contracts/Lendf.Me/README.md) --- dForce Lendf.Me exploit analysis
    - [`PredyPool/`](test/smart_contracts/PredyPool/README.md) --- Predy Finance exploit analysis
    - [`SmartShot_listing1/`](test/smart_contracts/SmartShot_listing1/README.md) --- SmartShot paper Listing 1 example
- **`yul_tests`**: Contains tests from the previous release written in Yul to test the interpreter.

## Usage

For a step-by-step guide on setting up a new project to analyse Solidity smart contracts, see [`GUIDE.md`](GUIDE.md).

To run `YulTracer` on a given program, use the `-i` option (within the tool directory tree):
```bash
dune exec -- yult -i <target-path>.yul
```
This compiles the project and runs the resulting binary with option `-i <path>.yul`, which evaluates the target program without running any games. For games (and safety analysis), we use the `-g` option, which enables games, together with the `-abi` option, which defines the set methods to explore. For more help on the options available, use the `-help` or `--help` option.

In practice, we use previously prepared scripts in project directories (especially for large complex projects) to automatically compile Solidity sources, link the resulting Yul objects that need linking, and provide other necessary options (like ABI and exploration parameters). See the `test/smart_contracts` directory for examples.

## Compilation
To compile `YulTracer`, if you have all dependencies, run:
```bash
dune build
```
The dependencies are:
- [Opam](https://opam.ocaml.org/) package manager (+initialisation)
- [OCaml](https://ocaml.org/) 4.10+ compiler (up to 4.14.2 for stable hashing of hardcoded addresses)
- [Dune](https://dune.build/) build system for OCaml projects
- [Menhir](https://gallium.inria.fr/~fpottier/menhir/) parser generator
- [Z3](https://github.com/Z3Prover/z3) package for OCaml bindings
- [Zarith](https://github.com/ocaml/Zarith) package for arbitrary-precision integers
- [Yojson](https://github.com/ocaml-community/yojson) and [`ppx_deriving_yojson`](https://github.com/ocaml-ppx/ppx_deriving_yojson)

All the above dependencies can be obtained from Opam package manager after setting up Opam. For more detailed instructions, the instructions below were tested on Linux and macOS. For Windows, we have tested the Ubuntu instructions on WSL (Ubuntu) under Windows 11 and observed no unexpected behaviour. For native Windows support, please refer to the [official OCaml website](https://opam.ocaml.org/doc/Install.html). We were unable to build Z3 natively on Windows through Opam+Cygwin; at present, this seems to require manually compiling Z3 with OCaml bindings.

### 1. Installing the OCaml Package Manager `opam`
All dependencies are obtainable through OCaml's official package manager [`opam`](http://opam.ocaml.org/doc/Install.html). Installation of `opam` is system specific so you may need to refer to their website linked above. Instructions for some common systems are listed below:
#### Ubuntu
```bash
add-apt-repository ppa:avsm/ppa
apt update
apt install opam
```
#### Fedora, CentOS and RHEL
```bash
dnf install opam
```
#### macOS
```bash
# Homebrew
brew install gpatch
brew install opam

# MacPort
port install opam
```

### 2. Initialising `opam`
`opam` needs to be set up after installation, which may also be system dependent. First one needs to initialise it:
```bash
opam init
```
After initialisation, one has to create the switch to a specific compiler. Any version 4.10 and over works. The command below uses `4.10.1`, but one can use the latest version listed.
```bash
opam switch create 4.10.1
```
If this does not work, it could be because `opam` is missing a dependency. This depends on how minimal the installation of the system is. Check the error messages to know what is missing. From our experience, these are the dependencies typically missing for a fresh installation of Ubuntu:
```bash
apt install build-essential
apt install gcc
apt install bubblewrap
```
The above correspond to `make`, `gcc` and `bwrap`, which are often missing in fresh installations.

Finally, initialising `opam` updates your `~/.profile` file, so you may have to source it on Linux:
```bash
source ~/.profile
```

### 3. Installing Dependencies

With `opam` set up, installing dependencies becomes very easy.
```bash
opam install dune
opam install menhir
opam install zarith
opam install z3
opam install yojson
opam install ppx_deriving_yojson
```
Note that Z3 takes a long time to install.

### 4. Compiling `YulTracer`
With all dependencies installed and `~/.profile` sourced, call the build system:
```bash
dune build
```
This produces an executable binary `yult.exe` usually located at `_build/default/bin/`.

## Directory Structure:
This project has the following directory structure. This may change in the future.
```
YulTracer/
├── bin/     # contains main file; produces the executable
├── lib/     # contains implementation of Yul interpreter, EVM and Games
└── test/    # contains our smart contract tests and yul tests.
```
A typical project directory in our tests has the following structure:
```
<project-name>/
├── abi/     # contains ABI (.json) files for the project
├── scripts/ # contains scripts for pre-/post-compilation processing
├── src/     # contains Solidity (.sol) source files
└── Makefile # stages the compilation, processing scripts, and runs YulTracer
```
A `README` is provided with each example.

---
## EVM Dialect and Instruction Set

Provided in this repository is a partial implementation of the EVM based on the [Shanghai update of the EVM execution specifications](https://github.com/ethereum/execution-specs/tree/master/src/ethereum/shanghai). This means the tool supports EVM behaviours up to, without including, the addition of transient storage.

The following opcode categories are implemented:

| Category | Instructions |
|---|---|
| **Arithmetic** | `add`, `sub`, `mul`, `div`, `sdiv`, `mod`, `smod`, `addmod`, `mulmod`, `exp`, `signextend` |
| **Bitwise** | `and`, `or`, `xor`, `not`, `byte`, `shl`, `shr`, `sar` |
| **Block** | `coinbase`<sup>1</sup>, `timestamp`, `chainid`<sup>1</sup>, `number`<sup>1</sup>, `gaslimit`<sup>1</sup> |
| **Comparison** | `lt`, `gt`, `slt`, `sgt`, `eq`, `iszero` |
| **Control-flow** | `stop`, `pc`<sup>1</sup>, `gas` |
| **Data**<sup>2</sup> | `datasize`<sup>3</sup>, `dataoffset`<sup>3</sup>, `datacopy`<sup>3</sup> |
| **Environment** | `address`, `caller`, `codesize`, `callvalue`, `codecopy`, `calldataload`, `calldatasize`, `balance`, `calldatacopy`, `returndatasize`, `returndatacopy`, `extcodesize`, `WAIT`<sup>4</sup>, `MK_SYMBOL`<sup>4</sup>, `EXT_FUND`<sup>4</sup> |
| **Immutable**<sup>2</sup> | `setimmutable`<sup>3</sup>, `loadimmutable`<sup>3</sup> |
| **Keccak** | `keccak` |
| **Linker**<sup>2</sup> | `SETLINKER`<sup>4</sup>, `linkersymbol`<sup>3</sup> |
| **Log** | `log1`<sup>1</sup>, `log2`<sup>1</sup>, `log3`<sup>1</sup>, `log4`<sup>1</sup> |
| **Memory** | `mload`, `mstore`, `mstore8`, `msize`, `memoryguard`<sup>3</sup> |
| **Stack** | `pop`<sup>1</sup> |
| **Storage** | `sload`, `sstore` |
| **System** | `revert`<sup>1</sup>, `return`, `call`, `staticcall`, `delegatecall`, `create`, `create2`, `START_ANALYSIS`<sup>4</sup>/`LAUNCH_OPPONENT`<sup>4</sup>, `IMPERSONATECALL`<sup>4</sup>, `REVEAL_UINT`<sup>4</sup>, `REVEAL_ADDR`<sup>4</sup> |
| **Print**<sup>2</sup> | `PRINT`<sup>3</sup>, `PRINT_signed`<sup>3</sup>, `PRINT_HEX`<sup>3</sup>, `PRINT_hex`<sup>3</sup>, `PRINT_bin`<sup>3</sup>, `PRINT_object`<sup>3</sup>, `PRINT_IDS`<sup>3</sup>, `PRINT_names`<sup>3</sup>, `PRINT_sigma`<sup>3</sup>, `PRINT_z3`<sup>3</sup>, `PRINT_mem`<sup>3</sup>, `PRINT_ascii`<sup>3</sup> |

<sup>1</sup> Instructions with simpler or dummy implementations.<br>
<sup>2</sup> Unofficial instruction categories needed for Yul.<br>
<sup>3</sup> Official Yul-only instructions that are not part of the EVM specs.<br>
<sup>4</sup> Custom `YulTracer`-only instructions in all-caps.

`Data`, `Immutable` and `Linker` are unofficial categories added to support official instructions specified only in the Yul documentation. These Yul-only instructions are not part of the EVM specification, but are still necessary to analyse real-world Yul objects (in particular, those produced by the Solidity compiler). Since the semantics of these instructions is not formally specified, their behaviour was inferred from the documentation. Additionally, some instructions were not compatible with Yul or not necessary for safety analysis of the contracts we checked. These were implemented as simpler or dummy versions. Lastly, a few custom opcodes were added for analysis — these are all in uppercase.

### Custom Instructions

| Instruction | Description |
|---|---|
| `ASSERT(b)` | Checks assertion condition `b`; reports a violation when `b` is false. |
| `WAIT(n)` | Increases the current timestamp by `n` seconds. |
| `MK_SYMBOL()` | Creates a fresh symbolic `uint256`. |
| `EXT_FUND(n)` | Increases the balance of the current address by `n` wei. |
| `SETLINKER(s,n)` | Sets string `s` to point at `uint256` `n` in the linker table used by the `linkersymbol` instruction. |
| `START_ANALYSIS()` | Passes control to the opponent; equivalent to `LAUNCH_OPPONENT`. |
| `IMPERSONATECALL(c,g,t,v,i,s1,o,s2)` | Variant of `call` that spoofs the calling address; behaves as if called from address `c`. |
| `REVEAL_UINT(n)` | Passes the `uint256` word `n` to the opponent as a value. |
| `REVEAL_ADDR(n)` | Passes the `uint256` word `n` to the opponent as an address. |

### Print Instructions

| Instruction | Description |
|---|---|
| `PRINT` | Print a `uint256` word as an unsigned decimal integer. |
| `PRINT_signed` | Print a `uint256` word as a signed decimal integer. |
| `PRINT_HEX` | Print a `uint256` word in uppercase hexadecimal. |
| `PRINT_hex` | Print a `uint256` word in lowercase hexadecimal. |
| `PRINT_bin` | Print a `uint256` word in binary. |
| `PRINT_object` | Print the current object. |
| `PRINT_IDS` | Print all discovered object IDs. |
| `PRINT_names` | Print all discovered object names. |
| `PRINT_sigma` | Print the symbolic environment (`sigma`) directly. |
| `PRINT_z3` | Print the symbolic environment (`sigma`) via Z3. |
| `PRINT_mem` | Print the current memory. |
| `PRINT_ascii` | Print the ASCII string interpretation of a `uint256` word. |

**Note**: All `uint` words are `uint256` by default.

See [`GUIDE.md`](GUIDE.md) for the corresponding Solidity helper functions implementing these instructions.