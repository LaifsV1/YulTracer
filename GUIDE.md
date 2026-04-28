# Setting Up a New YulTracer Project

This guide explains how to set up a new project directory to analyse Solidity smart contracts with YulTracer.

**Prerequisites:**

- YulTracer compiled (`dune build` — see [`README.md`](README.md) for full build and installation instructions)
- `solc` (Solidity compiler) version 0.8.x
- Python

---

## Table of Contents

- [1. Create the Project Directory](#1-create-the-project-directory)
- [2. The Entry-Point Contract](#2-the-entry-point-contract)
    - [Simple Case: No Deployer Needed](#simple-case-no-deployer-needed)
    - [When a Deployer Is Needed](#when-a-deployer-is-needed)
- [3. Assertions (optional)](#3-assertions-optional)
    - [Other Library Functions](#other-library-functions)
- [4. Helper Contracts with `__Yult__` Prefix (Advanced)](#4-helper-contracts-with-__yult__-prefix-advanced)
- [5. Write the Makefile](#5-write-the-makefile)
    - [Minimal Example](#minimal-example)
    - [Exploring a Different Contract](#exploring-a-different-contract)
    - [Filtering the Exploration ABI](#filtering-the-exploration-abi)
- [6. Makefile Variable Reference](#6-makefile-variable-reference)
    - [Common `CORE_ARGS` Flags](#common-core_args-flags)
- [7. Build and Run](#7-build-and-run)
    - [Available Makefile Targets](#available-makefile-targets)
- [8. The Build Output](#8-the-build-output)
- [Examples](#examples)
- [The YulTracer Library: Helper Functions and Opcode Mapping](#the-yultracer-library-helper-functions-and-opcode-mapping)

---

## 1. Create the Project Directory

```
my-project/
├── src/
│   └── MyContract.sol    # contract(s) to analyse
└── Makefile
```

Place all Solidity source files in `src/`. The build pipeline produces compiled artifacts in a `build/` directory, which is created automatically.

---

## 2. The Entry-Point Contract

The **entry-point contract** is the Solidity contract that YulTracer compiles and deploys. Its `constructor` runs once to set up the initial on-chain state, after which YulTracer takes over and explores the contract's functions by having a model opponent call them.

### Simple Case: No Deployer Needed

For self-contained contracts that require no special initialisation, the contract under analysis can serve directly as the entry point. For example, the following contract can be analysed without a Deployer:

```solidity
// src/SimpleDAO.sol
pragma solidity ^0.8.0;

contract SimpleDAO {
    mapping (address => uint256) public credit;

    function donate(address to) public payable {
        credit[to] += msg.value;
    }

    function withdraw(uint256 amount) public {
        if (credit[msg.sender] >= amount) {
            (bool res,) = msg.sender.call{value: amount}("");
            require(res);
            credit[msg.sender] -= amount;
        }
    }
}
```

The Makefile sets `ENTRY_OBJECT_NAME := SimpleDAO`, and YulTracer explores all public functions of `SimpleDAO` directly.

### When a Deployer Is Needed

A separate Deployer contract is required when the analysis target needs initialisation that cannot happen through its public interface alone. Common situations include:

- **Constructor arguments** — the target contract's constructor takes parameters (e.g. addresses of dependencies, configuration values) that must be provided at deployment time.
- **Multi-contract deployments** — the target depends on other contracts (oracles, tokens, libraries) that must be deployed and wired together first.
- **Initial state setup** — the protocol requires configuration after deployment (e.g. whitelisting tokens, setting prices, minting initial supply) before meaningful exploration can begin.
- **Revealing addresses** — dynamically deployed contract addresses need to be communicated to the opponent via `Yult.revealAddress()` so that the opponent can use them as function arguments.

In these cases, create a `Deployer.sol` whose constructor performs all the setup:

```solidity
// src/Deployer.sol
pragma solidity ^0.8.0;

import "./MyContract.sol";
import "./Token.sol";
import {Yult} from "YulTracerLib.sol";

contract Deployer {
    constructor() {
        Token token = new Token();
        Yult.revealAddress(address(token));

        MyContract target = new MyContract(address(token));
        token.mint(address(target), 1_000_000 * 1e18);
    }
}
```

The Makefile then sets `ENTRY_OBJECT_NAME := Deployer` and `EXPLORE_OBJECT_NAME := MyContract` to compile via the Deployer but explore the target contract's functions.

---

## 3. Assertions (optional)

Import the YulTracer library and use `Yult.Assert(condition)` to specify safety properties. YulTracer reports a counterexample trace whenever it finds a reachable state where `condition` evaluates to `false`.

```solidity
import {Yult} from "YulTracerLib.sol";

// Inside a function:
uint256 balanceBefore = address(this).balance;
// ... some external call ...
Yult.Assert(address(this).balance >= balanceBefore);
```

`Yult.Assert` compiles to the `ASSERT` custom opcode (detected by YulTracer) via the same magic-assembly mechanism used by all other YulTracer library functions.

Assertions are optional. Even without them, YulTracer can detect exploits that cause attempts to transfer more ether than the contract holds.

**Note:** `YulTracerLib.sol` is provided under `include/` at the YulTracer root and is automatically available via the build pipeline — there is no need to copy it into your project.

### Other Library Functions

The `Yult` library also provides:

- **`Yult.revealAddress(addr)`** — Makes an address available to the opponent for use as a function argument. Without this, the opponent cannot pass `addr` to explored functions. Note that *calling* contracts is different: opponent automatically calls any address whose contract is in the exploration ABI, without an explicit reveal.
- **`Yult.revealUint(n)`** — makes a `uint256` value available to the opponent for use as a function argument.
- **`Yult.wait(seconds)`** — Advances the block timestamp. Useful for exploring time-dependent logic.
- **`Yult.print(x)`**, **`Yult.printHex(x)`**, etc. — Debugging helpers that print values during exploration.

See `include/YulTracerLib.sol` for the complete list; a summary is also provided at the end of this document in the section [The YulTracer Library: Helper Functions and Opcode Mapping](#the-yultracer-library-helper-functions-and-opcode-mapping).

---

## 4. Helper Contracts with `__Yult__` Prefix (Advanced)

If the opponent needs to perform multi-step operations (e.g. mint tokens and then approve a spender in a single action), you can create a helper contract whose name is prefixed with `__Yult__`. The build pipeline automatically transforms calls inside `__Yult__` contracts to use YulTracer's `IMPERSONATECALL` opcode, which means the helper executes as if it were the caller (the opponent).

```solidity
contract __Yult__Toolbox {
    MyToken private token;
    MyContract private target;

    constructor(MyToken _token, MyContract _target) {
        token = _token;
        target = _target;
    }

    // When the opponent calls this, it executes as if the opponent
    // called mint and approve directly from its own address.
    function mint_and_approve(uint256 amount) external {
        token.mint(msg.sender, amount);
        token.approve(address(target), type(uint256).max);
    }
}
```

Deploy the `__Yult__` contract in the Deployer's constructor. Its functions should appear in the exploration ABI, using appropriate  filtering like those of any other contract.

---

## 5. Write the Makefile

The Makefile specifies project-specific settings and includes the shared build pipeline.

### Minimal Example

When the entry-point contract is also the exploration target (no Deployer needed). This example is based on `test/smart_contracts/gigahorse-bench/reentr-vuln/reentrancy_simple_dao/`:

```makefile
ENTRY_OBJECT_NAME := SimpleDAO
CORE_ARGS  ?= -g -b 2 -trace-length 12

# Run `make` to build, then `make run` to explore
.PHONY: default
default: build_opt

ifndef YULTRACER_ROOT
$(error YULTRACER_ROOT is not set. Set it to the YulTracer root, e.g.: export YULTRACER_ROOT=/path/to/YulTracer)
endif
empty :=
space := $(empty) $(empty)
include $(subst $(space),\ ,$(YULTRACER_ROOT))/scripts/yultracer.mk
```

This explores all public functions of `SimpleDAO`. Note that this requires to set beforehand the YULTRACER_ROOT environment variable. Spaces in the path are escaped in the last 3 lines of the makefile.

```bash
export YULTRACER_ROOT=/path/to/YulTracer
```

### Exploring a Different Contract

When a Deployer sets up the environment but a different contract is the exploration target (see e.g. `test/smart_contracts/DAO/splitDAO/`):

```makefile
ENTRY_OBJECT_NAME   := Deployer
EXPLORE_OBJECT_NAME := DAO
CORE_ARGS  ?= -g -b 2 -trace-length 20

# Run `make` to build, then `make run` to explore
.PHONY: default
default: build_opt

ifndef YULTRACER_ROOT
$(error YULTRACER_ROOT is not set. Set it to the YulTracer root, e.g.: export YULTRACER_ROOT=/path/to/YulTracer)
endif
empty :=
space := $(empty) $(empty)
include $(subst $(space),\ ,$(YULTRACER_ROOT))/scripts/yultracer.mk
```

### Filtering the Exploration ABI

By default, all functions of `EXPLORE_OBJECT_NAME` are explored by the opponent. Use `ABI_FILTER_ARGS` to restrict which functions the opponent can call.

For example, the DAO analysis (`test/smart_contracts/DAO/splitDAO`) exposes only three named functions plus the payable fallback:

```makefile
ABI_FILTER_ARGS := --keep-pattern "DAO" \
  --keep-function newProposal splitDAO vote --keep-types fallback
```

Further examples:

```makefile
# Exclude admin functions (those starting with _) and events
ABI_FILTER_ARGS := --keep-pattern "MyContract" \
  --exclude-function-pattern "_*" --exclude-types event

# Per-contract function overrides (useful with __Yult__ helpers;
# see test/smart_contracts/Lendf.Me/)
ABI_FILTER_ARGS := --keep-pattern "MoneyMarket" "__Yult__*" \
  --contract-function "MoneyMarket:supply" \
  --contract-function "__Yult__Toolbox:mint_and_approve"
```

**Note:** `--keep-function` takes multiple space-separated names in a single invocation (e.g. `--keep-function foo bar baz`), not repeated flags. `--contract-function` takes multiple space-separated `ContractName:func1,func2` blobs and overrides the global filters for the matched contract.

Run `$(YULTRACER_ROOT)/scripts/filter_abi.py --help` for the full list of filtering options.

---

## 6. Makefile Variable Reference

| Variable | Required | Default | Description |
|---|---|---|---|
| `ENTRY_OBJECT_NAME` | Yes | — | Name of the Solidity contract to compile as entry point |
| `EXPLORE_OBJECT_NAME` | No | Same as entry | Contract whose functions the opponent explores |
| `CORE_ARGS` | Yes | — | YulTracer exploration flags (see below) |
| `ARGS` | No | empty | Extra flags appended after `CORE_ARGS`; useful for `ARGS="-d t" make run` |
| `ABI_FILTER_ARGS` | No | `--keep-pattern "$(EXPLORE_OBJECT_NAME)"` | Arguments passed to `filter_abi.py` |
| `EXPLORE_ABI_PATTERN` | No | `$(EXPLORE_OBJECT_NAME)_` | Grep pattern for syncing deployed object names |
| `SOLC_INCLUDES` | No | empty | Extra `solc` include paths |
| `SOLC_REMAPS` | No | empty | Solidity import remappings |

### Common `CORE_ARGS` Flags

**Execution Modes:**

| Flag | Default | Description |
|---|---|---|
| `-g` | false | Enable game semantics to model external contracts (required for safety analysis) |
| `-bfs` | false | Use breadth-first search (default is depth-first) |
| `-trace-length N` | 20 | Maximum observable trace length (number of opponent moves) |

**Opponent Call Settings:**

| Flag | Default | Description |
|---|---|---|
| `-b N` | 2 | Call bound — number of times each explored function may be called |
| `-o-address-count N` | 1 | Number of opponent addresses to play the game with |
| `-o-call-stack N` | 3 | Maximum call-stack depth during an opponent call |
| `-o-default-balance N` | 10 ETH | Starting balance (in wei) for each opponent address |
| `-o-default-spending N` | 1000 wei | Amount of wei the opponent may send per payable call |
| `-o-uint-domain "v1,v2,..."` | `"0x0,1,1_000"` | Comma-separated uint256 values the opponent can use as arguments |
| `-o-address-domain "a1,a2,..."` | empty | Comma-separated addresses the opponent can use as arguments |
| `-o-ret` | false | Allow the opponent to choose return values |

**Opponent Time Settings:**

| Flag | Default | Description |
|---|---|---|
| `-wait-first` | false | Opponent explores waiting before trying other moves |
| `-no-wait` | false | Disable opponent waiting moves |
| `-wait-time N` | 7 | Time in days that passes per opponent wait move |
| `-max-time N` | 22 | Maximum cumulative time in days the opponent is allowed to wait in each trace |

**Deployment Transaction Settings:**

| Flag | Default | Description |
|---|---|---|
| `-deploy-value N` | 123456789 ETH | ETH amount (in wei) sent with the deployment transaction |
| `-deploy-gas N` | 30000 ETH | Gas limit for the deployment transaction |
| `-deploy-address A` | `0x0102030405060708090A` | Address of the account deploying the contract |

Run `dune exec -- yult --help` for the full list of options.

---

## 7. Build and Run

```bash
export YULTRACER_ROOT=/path/to/YulTracer

cd my-project/
make          # compile, link, postprocess, generate ABI
make run      # run YulTracer exploration
```

The build pipeline supports both standard and optimised Solidity compilation. Standard compilation (`make build`) produces unoptimised Yul IR that corresponds more closely to the original Solidity source code. Optimised compilation (`make build_opt`) passes `--optimize --ir-optimized` to `solc`, which applies the Solidity optimiser to the generated Yul; this results in marginally faster exploration. The default target in each project's Makefile chooses one of these (typically `build_opt`).

### Available Makefile Targets

| Target | Description |
|---|---|
| `make` | Default target (typically `build_opt`) |
| `make build` | Build with standard (unoptimised) Solidity compilation |
| `make build_opt` | Build with optimised Solidity compilation (`--optimize --ir-optimized`) |
| `make run` | Run exploration with the filtered ABI |
| `make run-full-abi` | Run exploration with the full (unfiltered) ABI |
| `make clean` | Delete the `build/` directory |

---

## 8. The Build Output

After building, the `build/` directory contains:

| File | Description |
|---|---|
| `<Entry>.yul` | Compiled and linked Yul program |
| `<Entry>.json` | Full ABI (all contracts in the compilation unit) |
| `<Explore>_explored.json` | Filtered exploration ABI (functions the opponent can call) |
| `<Explore>_explored_full.json` | Unfiltered exploration ABI (all functions of the explored contract) |

Inspect `<Explore>_explored.json` to verify that the opponent will call exactly the functions you intended.

---

## Examples

Working examples are provided under `test/smart_contracts/`:

- [**`gigahorse-bench/`**](test/smart_contracts/gigahorse-bench/README.md) — Small self-contained contracts analysed, most without a Deployer (minimal Makefiles).
- [**`BurgerSwap/`**](test/smart_contracts/BurgerSwap/README.md) — DeFi exploit with optimised build and a deterministic attack demo.
- [**`Lendf.Me/`**](test/smart_contracts/Lendf.Me/README.md) — Complex multi-contract setup with custom ABI filtering.
- [**`DAO/`**](test/smart_contracts/DAO/README.md) — Multiple analysis variants of the same contract: vulnerable, safe, with assertions, and multi-address.
- [**`PredyPool/`**](test/smart_contracts/PredyPool/README.md) — Predy Finance exploit analysis (vulnerable and fixed versions).
- [**`SmartShot_listing1/`**](test/smart_contracts/SmartShot_listing1/README.md) — SmartShot paper Listing 1 example.

---

## The YulTracer Library: Helper Functions and Opcode Mapping

The table below lists the Solidity helper functions provided by the YulTracer library, the custom Yul instructions they are compiled to, and their semantics. During analysis, calls to these functions are automatically replaced with the corresponding custom opcodes.


| Solidity function | Custom Yul instruction | Description |
|---|---|---|
| `Assert(b)` | `ASSERT(b)` | Checks assertion condition `b`; reports a violation when `b` is false. |
| `wait(n)` | `WAIT(n)` | Increases the current timestamp by `n` seconds. |
| `mkSymbol()` | `MK_SYMBOL()` | Creates a fresh symbolic `uint256`. |
| `extFund(n)` | `EXT_FUND(n)` | Increases the balance of the current address by `n` wei. |
| `setLinker(s,n)` | `SETLINKER(s,n)` | Sets string `s` to point at `uint256` `n` in the linker table used by the `linkersymbol` instruction. |
| `startAnalysis()` | `START_ANALYSIS()` | Passes control to the opponent. |
| `launchOpponent()` | `LAUNCH_OPPONENT()` | Passes control to the opponent. |
| `impersonateCall(c,g,t,v,i,s1,o,s2)` | `IMPERSONATECALL(c,g,t,v,i,s1,o,s2)` | Variant of `call` that spoofs the calling address; acts like `call(g,t,v,i,s1,o,s2)` from address `c` instead of the current address. |
| `revealUint(n)` | `REVEAL_UINT(n)` | Passes the `uint256` word `n` to the opponent as a value; the opponent remembers `n` and can use it as a value. |
| `revealAddress(n)` | `REVEAL_ADDR(n)` | Passes the `uint256` word `n` to the opponent as an address; the opponent remembers `n` and can use it as an address. |
| `print(n)` | `PRINT(n)` | Prints a `uint256` word as an unsigned decimal integer. |
| `printSigned(n)` | `PRINT_signed(n)` | Prints a `uint256` word as a signed decimal integer. |
| `printHEX(n)` | `PRINT_HEX(n)` | Prints a `uint256` word in uppercase hexadecimal. |
| `printHex(n)` | `PRINT_hex(n)` | Prints a `uint256` word in lowercase hexadecimal. |
| `printBin(n)` | `PRINT_bin(n)` | Prints a `uint256` word in binary. |
| `printAscii(n)` | `PRINT_ascii(n)` | Prints the ASCII string interpretation of a `uint256` word. |
| `printObject()` | `PRINT_object()` | Prints the current object. |
| `printIDs()` | `PRINT_IDS()` | Prints all discovered object IDs. |
| `printNames()` | `PRINT_names()` | Prints all discovered object names. |
| `printSigma()` | `PRINT_sigma()` | Prints the symbolic environment, `sigma`, directly. |
| `printZ3()` | `PRINT_z3()` | Prints the symbolic environment, `sigma`, via Z3. |
| `printMem()` | `PRINT_mem()` | Prints the current memory. |