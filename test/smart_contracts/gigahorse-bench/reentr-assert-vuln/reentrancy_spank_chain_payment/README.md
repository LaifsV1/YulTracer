# SpankChain Exploit (with assertion) — Vulnerable Variant

> Part of the [Gigahorse Benchmarks](../../README.md). See also the main [`README`](../../../../../README.md) and [`GUIDE`](../../../../../GUIDE.md).

For background on the SpankChain exploit and the attack sequence, see the [`reentr-vuln` README](../../reentr-vuln/reentrancy_spank_chain_payment/README.md). For the safe (patched) variant, see the [`reentr-assert-safe` README](../../reentr-assert-safe/reentrancy_spank_chain_payment/README.md).

**NOTE**: Tested for `solc` version `0.8.30+commit.73712a01.Linux.g++` and OCaml `4.10.1`,  on Ubuntu `24.04.2 LTS`.

## Difference from `reentr-vuln`

This variant adds a `Yult.Assert` to `LCOpenTimeout` that checks the contract's balance has not decreased by more than the expected transfer amount:

```solidity
uint eth_prev = address(this).balance;
uint256 amount = 0;
// ... existing vulnerable LCOpenTimeout logic (reads from storage after external call) ...
Yult.Assert(address(this).balance >= eth_prev - amount);
```

The underlying code is still vulnerable — the channel state is read from storage and deleted *after* the external `transfer` call, so reentrancy is still possible. The assertion makes the violation visible to tools that check assertions (YulTracer, SMTChecker) rather than only to tools that detect balance drainage.

## Result

YulTracer finds the assertion violation:
```
create(object:<Yult_3685> , address:<0x9b2c6206c273f257853dc0dcb356b0660fdb5479>) --> 
pp-ret([ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,fc]) --> 
create(object:<ECTools_647> , address:<0x75f7c78d068424bf14652e144be1445f9d3d4b96>) --> 
pp-ret([ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,fa]) --> 
deploy(object:<LedgerChannel_3532_deployed> , address:<0x102030405060708090a>) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<LedgerChannel_3532_deployed:0x102030405060708090a>, sig:<createChannel(bytes32,address,uint256,address,uint256[2]):0xaeba142c>, args:<[ae,ba,14,2c,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4f,50,5f,41,44,44,52,45,53,53,5f,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4f,50,5f,41,44,44,52,45,53,53,5f,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]>, value:<1>) --> 
po-call(0x4f505f414444524553535f30) --> 
o-ret([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]) --> 
po-ret([]) --> 
o-wait --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<LedgerChannel_3532_deployed:0x102030405060708090a>, sig:<LCOpenTimeout(bytes32):0x002e1d7e>, args:<[0,2e,1d,7e,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]>, value:<0>) --> 
po-call(0x4f505f414444524553535f30) --> 
o-ret([]) --> 
po-call(0x4f505f414444524553535f30) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<LedgerChannel_3532_deployed:0x102030405060708090a>, sig:<LCOpenTimeout(bytes32):0x002e1d7e>, args:<[0,2e,1d,7e,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]>, value:<0>)
ERROR! [game semantics]: [EVM INVARIANT ERROR]: [move_ether]: sender 0x102030405060708090a has insufficient balance (0) to transfer 1

real	0m0.569s
user	0m0.367s
sys	0m0.087s
```

## Running YulTracer

1. Ensure you have Python.

2. Set `YULTRACER_ROOT` to the YulTracer root directory:

   ```bash
   export YULTRACER_ROOT=/path/to/YulTracer
   ```

3. From the `reentrancy_spank_chain_payment/` directory, build and run:

   ```bash
   make
   make run
   ```
