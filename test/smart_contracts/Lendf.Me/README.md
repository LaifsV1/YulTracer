# Lendf.Me Exploit — YulTracer Analysis

This directory contains everything needed to analyse the dForce Lendf.Me exploit using **YulTracer** (abbreviated **yult**). Provided is the complete on-chain `MoneyMarket` implementation plus supporting contracts, processing scripts, and build artefacts.

**NOTE**: Tested for `solc` version `0.8.30+commit.73712a01.Linux.g++` and OCaml `4.10.1`,  on Ubuntu `24.04.2 LTS`.

---

## Quick Start

1. Ensure you have Python and the Crypto library installed:

   ```bash
   pip install pycryptodome
   ```
   You may need to set up a virtual environment in Linux using `venv`.

2. From the `Lendf.Me/` directory, run:

   ```bash
   make run
   ```
   To run YulTracer on the Lendf.Me protocol.

---

## Directory Structure

```text
Lendf.Me/
├── abi/
│   └── Deployer_pruned.json
├── scripts/
│   └── … preprocessing/linking scripts
├── src/
│   ├── Deployer.sol
│   ├── MoneyMarket.sol
│   ├── Token.sol
│   └── Yult.sol
├── yul/
│   ├── Deployer.yul
│   ├── MoneyMarket.yul
│   └── … JSON artefacts
└── Makefile
```

### `abi/`

* **Deployer\_pruned.json**
  ABI for the `Deployer` contract. Contains a curated version of the ABI.

### `scripts/`

Contains transformation and post-processing scripts to resolve linker symbols, activate `__yult__` hooks, disable checked arithmetic, update ABI object names, and transformation scripts.

### `src/`

Contains the Solidity sources to analyse:

1. **Deployer.sol**
   Entry point for `yult` exploration.

   * Deploys mock ERC777 token and reveals its address to the opponent
     ```
     token = new MiniERC777();
     YultLib.__yult__revealAddress(address(token));
     ```
     > **Note:** `__yult__revealAddress(<addr>)` teaches the opponent about the given address `<addr>`. This adds `<addr>` into the opponent value domain, which allows the opponent to use `<addr>` as an argument to proponent functions.
   * Configures protocol parameters (interest rates, collateral factors, pause flags)
     ```
     oracle = new SimplePriceOracle();
     oracle.setPrice(address(token), 1e18);
     oracle.setPrice(address(0), 1e18);
     ```
   * Deploys `MoneyMarket` protocol, configures it, mints and approves tokens
     ```
     moneyMarket = new MoneyMarket();
     require(moneyMarket._setOracle(address(oracle)) == 0,"setOracle failed");
     require(moneyMarket._supportMarket(address(token), interestModel) == 0,"supportMarket failed");

     token.mint(address(this), 1_000_000 * 1e18);
     token.approve(address(moneyMarket), type(uint256).max);
     ```
   * Creates helper functions for the opponent in the `__Yult__Toolbox` contract
      ```
      contract __Yult__Toolbox {
          MiniERC777 private token;
          MoneyMarket private moneyMarket;
      
          constructor (MiniERC777 _token, MoneyMarket _moneyMarket) {
              token = _token;
              moneyMarket = _moneyMarket;
          }
      
          // ERC20-like approve to let MoneyMarket pull tokens
          function mint_and_approve(uint256 amount) external returns (bool) {
              token.mint(msg.sender, amount * 1e18);
              token.approve(address(moneyMarket), type(uint256).max);
          }
      }
      ```
	 > **Note:** This special contract is prefixed with `__Yult__`. All Yul objects prefixed with `__Yult__` will be updated by a post-compilation script that replaces all regular calls with a custom `IMPERSONATECALL` opcode built into YulTracer. This opcode allows a call to occur from any given address. In this case, `__Yult__` objects will impersonate whoever calls them. This allows the opponent to make calls to `mint` and `approve` with the correct context (i.e. the address of `moneyMarket`). This is done because the address of `moneyMarket` is dynamic, so providing its address programmatically within Solidity is more stable.
	
2. **MoneyMarket.sol**
   The on-chain implementation of Lendf.Me’s money-market contract (from Etherscan).

   * In-lines all the libraries as provided in Etherscan, i.e. `CarefulMath`, `Exponential`, `SafeToken`, `ErrorReporter`, and `PriceOracleInterface`
   * Contains an assertion around the reentrancy-vulnerable ERC-777 transfer logic 
      ```
      // YULT: snapshot the user's stored principal before any external call
      uint256 prePrincipal = balance.principal; // ADDED FOR YULT ANALYSIS ****
      
      // We ERC-20 transfer the asset into the protocol (note: pre-conditions already checked above)
      err = doTransferIn(asset, msg.sender, amount);
       if (err != Error.NO_ERROR) {
          // This is safe since it's our first interaction and it didn't do anything if it failed
          return fail(err, FailureInfo.SUPPLY_TRANSFER_IN_FAILED);
      }
      
      // YULT: assert nobody re‑entered and poked at your balance
      YultLib.__yult__assert(balance.principal == prePrincipal); // ADDED FOR YULT ANALYSIS ****
      ```

      We compare the stored principal balance before and after the call to check if it has changed. It should not change in between since `doTransferIn` does not directly call any functionality that would update the value of `balance.principal`.
   
3. **Token.sol**
   Mock ERC-20/ERC-777 token implementations for simulation.

   * Minimal `mint`, `approve`, `transfer`, and `transferFrom` logic

4. **Yult.sol**
   Definitions of the `YultLib` contract.

   * Stubs for `__yult__assert`, `__yult__printHex`, and other hooks recognized by YulTracer

### `yul/`

Automatically generated artefacts after running `make run`:

* `.yul` files for each contract (`Deployer.yul`, `MoneyMarket.yul`, …)
* JSON metadata from `solc`
* Post-processed Yul with enabled `__yult__` functions, disabled checked arithmetic, and updated ABI names

### `Makefile`

Automates compilation, processing, and `yult` analysis. Key settings:

```make
# Entry-point contract
ENTRY_OBJECT_NAME := Deployer

# Default YulTracer flags (override via CLI)
CORE_ARGS ?= -g -b 2 -o-call-stack 3 -deploy-value 0 \
             -o-uint-domain "1" \
             -o-default-spending 1 \
             -no-wait \
             -o-ret

# Extra args you can supply (e.g. "-d t" for traces)
ARGS ?=
```

To run the full pipeline:

```bash
make run
```

Internally this invokes:

```bash
dune exec -- yult \
  -i yul/Deployer.yul \
  -full-abi yul/Deployer.json \
  -abi abi/Deployer_pruned.json \
  $(CORE_ARGS) $(ARGS)
```
