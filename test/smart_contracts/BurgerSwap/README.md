# BurgerSwap Exploit — YulTracer Demo

This directory contains demonstration on a simplification of the BurgerSwap exploit that focuses only on `DemaxPair`.

**NOTE**: Tested for `solc` version `0.8.30+commit.73712a01.Linux.g++` and OCaml `4.10.1`,  on Ubuntu `24.04.2 LTS`.

## Background

The actual exploit was a reentrancy attack that drained over $7 million worth of assets. The reentrancy was due to the `swapExactTokensForTokens` function in the BurgerSwap platform/router, which in turn allowed calling the internal function `_swap` multiple times in a single transaction. 

However, most postmotems actually report a different bug as the real cause. The contract `DemaxPair` has a function `swap` which is called by the platform's `_swap` function. The `swap` function was missing a `requires` that would typically check the invariant `x*y ≥ k`. This was a standard check in UniSwapV2-based pairs that was missing in `DemaxPair`. The actual `_swap` function had a `nonReentrant` modifier and could not be reentered. The reentrant call to `swapExactTokensForTokens` occurs before `_swap` is called, so the swaps actually occurred sequentially in the pair, not reentrantly -- the reentrant calls only occurred at the level of the platform. With this, the attacker deployed an ERC token they controlled, created a vulnerable `DemaxPair` between this token and the BURGER token, and exploited the missing `requires` in the `swap` function to swap multiple times without maintaining constant value.

As per these postmortems, instead of exploring the platform's code, we explore the `DemaxPair` contract and its dependencies as submitted to Etherscan for verification. This is the file found in `src/BurgerSwap.sol`. In place of the BurgerSwap platform and BURGER token, files `src/DummyRouter.sol` and `src/DummyTokens.sol` provide simplified dummy versions to allow our tool to deploy a vulnerable `DemaxPair` and reach the vulnerable `swap`. Where the original `requires` should have been, we have added our own assertion hook to showcase the vulnerability. i.e. this Demo does not test YulTracer's ability to find the reentrant bug on the platform (the reentrant call would still be trivially possible in our `DummyRouter`, but this is not our goal). Instead, it tests YulTracer's ability to set up the conditions to call a vulnerable `swap`. The `Deployer.sol` file contains a hardcoded attack to demonstrate the bug; this file is unnecessary for the exploration and only serves to show what the exploit looks like concretely.

To demonstrate the exploit, YulTracer has to automatically find a trace containing the following minimal sequence of interactions from point of view of the opponent:

1. call `createPair(address,address)` to create a vulnerable pair using the dummy BURGER Token and a token it controls (in this case, its own address, as it has control over it)
2. call `mintShares(address,uint256)` to mint new LP shares -- this is a prerequisite to calling `swap`  
3. call `swapExactTokensForTokens(address,bool)`, which calls `swap` and triggers the assertion

## Running the Demo

1. Ensure you have Python and the Crypto library installed:

   ```bash
   pip install pycryptodome
   ```
   You may need to set up a virtual environment in Linux using `venv`.

2. From the `Lendf.me/` directory, run:

   ```bash
   make run
   ```
   To run YulTracer and explore the BurgerSwap `DemaxPair` contract.
