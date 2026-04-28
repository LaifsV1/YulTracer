# DAO Exploit — YulTracer Analysis

> See the main [`README`](../../../README.md) for build instructions and [`GUIDE`](../../../GUIDE.md) for setting up new projects.

This directory contains seven analyses of the **on-chain** original DAO contracts (from Etherscan) using **YulTracer** (abbreviated **yult**), which uses a Game Semantics crafted for the EVM to exhaustively and precisely enumerate all external contract interactions with the DAO, including reentrancy. 

**NOTE**: Tested for `solc` version `0.8.30+commit.73712a01.Linux.g++` and OCaml `4.10.1`,  on Ubuntu `24.04.2 LTS`.

---

## Quick Start

- Make sure you have `Python` installed (see the main [`README`](../../../README.md) on setting up a virtual environment on Linux).

- For a Solidity harness (e.g. `splitDAO`):

   ```bash
   cd splitDAO
   make
   make run
   ```

- To run and time the **`splitDAO`**, **`transfer`**, and **`safe`** harnesses, use the script in this directory:

   ```
   bash run-dao-tests.sh
   ```

   This will print a summary listing every directory, whether the assertion violation was found, and the time taken to find the error. To see the output of YulTracer and record logs, use verbose mode:

   ```
   bash run-dao-tests.sh -v
   ```

   This will create a log directory (`dao-logs-YYYYmmdd-HHMMSS`) and redirect all the output of the tool to the terminal and to log files in the log directory.

   > **Warning:** The `safe` version does not find a bug and may run up to the timeout before terminating (default: **60 minutes**; override with `-t MINUTES`).

  Each harness will explore the DAO split-and-withdraw logic and either find the bug or terminate without bugs for the safe versions.

---

## Subdirectories

1. **splitDAO**  
  Vulnerable DAO analysed with a single opponent (attacker) address. No assertion is added. Exploit due to reentering `splitDAO` recursively before the contract’s state is updated. YulTracer detects the exploit because the DAO contract is drained: it attempts to transfer more ether than its balance, a clear sign it was manipulated to account for more funds than the contract holds. Entry point is a Solidity `Deployer` contract.
Use the following command to run the harness:
    ```
    make
    make run
    ```

2. **splitDAO\_assertion**  
    Same DAO contracts as (1) but with an added assertion in `splitDAO` that checks the contract’s balance change matches the expected funds moved (`beforeBalance - address(this).balance == fundsToBeMoved`). Ships with two configurations toggled by commenting/uncommenting lines in `src/DAO.sol`:
    - **Original (vulnerable):** Lines 1007–1009 active (marked `ORIGINAL`). Token burning and state updates happen *after* the external call to `createTokenProxy`, enabling reentrancy. YulTracer reports an assertion violation.
    - **Fixed (safe):** Lines 1003–1005 active (marked `FIX`), lines 1007–1009 commented out. State updates are moved *before* the external call, closing the reentrancy window. YulTracer terminates without finding a violation.

  The assertion on line 1010 (`Yult.Assert(...)`) can also be checked using Solidity’s built-in SMTChecker, Mythril, and Slither. Use `run-all-tools.sh` (in this directory) to run any combination of these tools on both the vulnerable and safe variants (see [Running All Tools](#running-all-tools)).

  Use the following command to run the YulTracer harness:
    ```
    make
    make run
    ```

3. **safe**  
    Patched DAO variant. No assertion is added. The same `Deployer` solidity harness as (1) but using a safe `splitDAO` implementation so no reentrancy bug can be triggered.

    > **Warning:** This version does not find a bug and may run up to the timeout before terminating (default: **60 minutes** when run via `run-dao-tests.sh`).

    Use the following command to run the harness:
    ```
    make
    make run
    ```

4. **transfer**  
  Vulnerable DAO analysed with two opponent addresses. No assertion is added. Demonstrates that adding a `nonReentrant` modifier on `splitDAO` can be bypassed. Two attacker-controlled addresses transfer DAO tokens back and forth between calls, avoiding the reentrancy guard yet preserving token balances. As in (1), YulTracer detects the exploit because the DAO contract is drained. Deployer written in Solidity.
Use the following command to run the harness:
    ```
    make
    make run
    ```

5. **transfer\_dummy**  
  Similar to (4), but uses one opponent address plus a dummy helper contract. No assertion is added. The dummy contract transfers tokens to the caller. As in (1), YulTracer detects the exploit because the DAO contract is drained.
Use the following command to run the harness:
    ```
    make
    make run
    ```

### OPTIONAL low-level harnesses:
The following two directories are OPTIONAL. Our scripts work directly with Solidity and do not require any background knowleddge on Yul. In fact, the usage of low-level harnesses directly written in Yul will disallow the use of our scripts. **These alternative harnesses are only to demonstrate direct low-level usage of Yul with our tool.**
 
6. **yul\_deployer**  
  Same as `splitDAO`, but the `Deployer` was manually written in Yul. This is to demonstrate how one may manually set up contracts for the analysis directly in Yul if needed.

7. **yul\_deployer\_safe** 
  Safe variant of (6), with its Deployer also manually written in Yul.

---

## Running All Tools

This directory contains two scripts. `run-dao-tests.sh` runs YulTracer on the `splitDAO`, `transfer`, and `safe` harnesses (see Quick Start above). `run-all-tools.sh` runs any combination of Mythril, SMTChecker (CHC and BMC engines), Slither, and YulTracer on both the `splitDAO_assertion` (vulnerable) and `safe` variants for tool comparison, writing results under `results/`.

```bash
# Run all tools on both variants (30-minute timeout each)
bash run-all-tools.sh --all

# Run a specific subset of tools
bash run-all-tools.sh --chc --yultracer

# Custom timeout (seconds)
bash run-all-tools.sh --all --timeout 600
```

Available tool flags:

| Flag | Tool |
|---|---|
| `--mythril` | Mythril |
| `--chc` | SMTChecker (CHC engine) |
| `--bmc` | SMTChecker (BMC engine) |
| `--slither` | Slither |
| `--yultracer` | YulTracer |
| `--all` | All of the above |

Run `bash run-all-tools.sh --help` (or with no arguments) for the full usage message.

Results are written to `results/<variant>-<tool>/`, where `<variant>` is `vuln` (splitDAO\_assertion) or `safe`. Tools other than YulTracer analyse `src/DAO.sol` in each variant's directory; YulTracer is invoked via each variant's `Makefile` (`make` / `make run` / `make clean`).

> **Warning:** Mythril and SMTChecker CHC hit the 30-minute timeout on both variants, so running `--all` can take up to 4 hours. Use `--timeout N` to reduce the per-tool timeout.

> **Note:** `YULTRACER_ROOT` is used if already set in the environment; otherwise it is inferred from the script's location.

---

## Common Layout for Solidity Harnesses

```
splitDAO/
├── src/
│   ├── DAO.sol           # main DAO contract
│   ├── Deployer.sol      # entry-point contract
│   └── …                 # other on-chain DAO contracts (token, pool, offers, proxy, etc.)
├── build/                # generated by `make`
└── Makefile
```

* **DAO.sol**
  Contains the main contract for the DAO platform
* **Deployer.sol**
  Contains the entry point contract that deploys the whole DAO platform
* **Other `.sol` files**
  Supporting contracts are present to satisfy all the DAO dependencies

### Key Makefile targets

* `make`
  Compiles `src/Deployer.sol`, links, postprocesses, and generates the ABI into `build/`
* `make run`
  Invoke YulTracer exploration on the compiled output
* `make clean`
  Deletes the `build/` directory

---

## Manual Low-Level Yul Harnesses

The `yul_deployer` and `yul_deployer_safe` directories contain hand-written `Deployer.yul` files plus their ABIs. No compilation is needed — just run:

```bash
cd yul_deployer
make run
```
