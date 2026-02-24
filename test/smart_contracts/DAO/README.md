# DAO Exploit — YulTracer Analysis

This directory contains six analyses of the **on-chain** original DAO contracts (from Etherscan) using **YulTracer** (abbreviated **yult**), which uses a Game Semantics crafted for the EVM to exhaustively and precisely enumerate all external contract interactions with the DAO, including reentrancy. 

**NOTE**: Tested for `solc` version `0.8.30+commit.73712a01.Linux.g++` and OCaml `4.10.1`,  on Ubuntu `24.04.2 LTS`.

---

## Quick Start

- Make sure you have `Python` + `Crypto` installed (see main `README` on setting up a virtual environment on Linux).

- For a Solidity harness (e.g. `solidity_deployer`):

   ```bash
   cd solidity_deployer
   make run
   ```

- To run YulTracer on **all Solidity harnesses**, use:  

   ```
   bash run-dao-tests.sh
   ```

   This will print a summary listing every directory, whether the assertion violation was found, and the time taken to find the error. To see the output of YulTracer and record logs, use verbose mode:

   ```
   bash run-dao-tests.sh -v
   ```

   This will create a log directory (`dao-logs-YYYYmmdd-HHMMSS`) and redirect all the output of the tool to the terminal and to log files in the log directory.

Each harness will explore the DAO split-and-withdraw logic and either find the bug or terminate without bugs for the safe versions.

---

## Subdirectories

1. **solidity\_deployer**  
  Vulnerable DAO analysed with a single opponent (attacker) address. Exploit due to reentering `splitDAO` recursively before the contract’s state is updated. Entry point is a Solidity `Deployer` contract.
Use the following command to run the harness:
    ```
    make run
    ```

2. **solidity\_deployer\_safe**  
  Patched DAO variant. The same `Deployer` solidity harness as (1) but using a safe `splitDAO` implementation so no reentrancy bug can be triggered.
Use the following command to run the harness:
    ```
    make run
    ```

3. **solidity\_deployer\_transfer**  
  Vulnerable DAO analysed with two opponent addresses. Demonstrates that adding a `nonReentrant` modifier on `splitDAO` can be bypassed. Two attacker-controlled addresses transfer DAO tokens back and forth between calls, avoiding the reentrancy guard yet preserving token balances. Deployer written in Solidity.
Use the following command to run the harness:
    ```
    make run
    ```

4. **solidity\_deployer\_transfer\_dummy**  
  Similar to (3), but uses one opponent address plus a dummy helper contract. The dummy contract transfers tokens to the caller.
Use the following command to run the harness:
    ```
    make run
    ```

### OPTIONAL low-level harnesses:
The following two directories are OPTIONAL. Our scripts work directly with Solidity and do not require any background knowleddge on Yul. In fact, the usage of low-level harnesses directly written in Yul will disallow the use of our scripts. **These alternative harnesses are only to demonstrate direct low-level usage of Yul with our tool.**
 
5. **yul\_deployer**  
  Same as `solidity_deployer`, but the `Deployer` was manually written in Yul. This is to demonstrate how one may manually set up contracts for the analysis directly in Yul if needed.

6. **yul\_deployer\_safe** 
  Safe variant of (5), with its Deployer also manually written in Yul.

---

## Common Layout for `solidity_deployer*`

```
solidity_deployer/
├── abi/
│   └── Deployer_pruned.json
├── scripts/
│   ├── preprocess_yult_assert.sh
│   ├── process_abi.py
│   └── remove_08_panic_checks.sh
├── src/
│   ├── DAO.sol                    # main DAO contract
│   ├── Deployer.sol               # entry-point contract
│   └── … other on-chain DAO contracts (token, pool, offers, proxy, etc.)
├── yul/
│   ├── Deployer.yul               # entry-point Yul file: contains all contracts
│   └── … other Yul artifacts
└── Makefile
```

* **DAO.sol**
  Contains the main contract for the DAO platform
* **Deployer.sol**
  Contains the entry point contract that deploys the whole DAO platform
* **Other `.sol` files**
  Supporting contracts are present to satisfy all the DAO dependencies

### Key Makefile targets

* `make` or `make build`
  Compiles `src/Deployer.sol` into `yul/Deployer.yul`

* `make run [ABI=Foo.json]`
  Build, preprocess, then invoke YulTracer:

  ```bash
  dune exec -- yult \
    -i yul/Deployer.yul \
    -abi abi/${ABI:-Deployer_pruned.json} \
    -full-abi yul/Deployer.json \
    -g \
    -o-uint-domain "0,604800" \
    -wait-first
  ```

* `make clean`
  Deletes the `yul/` directory

 **Note:** You need Python with the `Crypto` library (e.g. `pycryptodome`):

 ```bash
 pip install pycryptodome
 ```
For more detailed instructions, see the main `README` at the root directory of this repository.

---

## Manual Low-Level Yul Harnesses

The `yul_deployer` and `yul_deployer_safe` directories contain hand-written `Deployer.yul` files plus their ABIs. There is no Makefile. You'll have to run `yult` directly:

```bash
dune exec -- yult \
  -i Deployer.yul \
  -abi DAO_pruned.json \
  -full-abi DAO.json \
  -g \
  -o-uint-domain "0,604800"
```
