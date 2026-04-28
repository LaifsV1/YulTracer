# SpankChain Exploit — YulTracer Analysis

> Part of the [Gigahorse Benchmarks](../../README.md). See also the main [`README`](../../../../../README.md) and [`GUIDE`](../../../../../GUIDE.md).

This directory contains an analysis of the reentrancy attack on `SpankChain_Payment.sol` as provided in the gigahorse-benchmarks, which in turn comes as provided by Etherscan.

**NOTE**: Tested for `solc` version `0.8.30+commit.73712a01.Linux.g++` and OCaml `4.10.1`,  on Ubuntu `24.04.2 LTS`.

## Background

This is the final reentrancy example provided in the gigahorse-benchmarks. While every other example in the benchmark has been a toy example, this one is a real set of contracts that was exploited in 2018. An attacker stole 165 Ether (valued at $40,000) from SpankChain. Because this is a real contract, this directory has its own README.

## The Exploit

The expoit is a simple reentrancy attack. From the point of view of the oppponent, the sequence is as follows:  

1. Call `createChannel(bytes32,address,uint256,address,uint256[2])` with a WEI value of 1. The arguments are:
   - any fresh channel ID (in this case, all are fresh)
   - address for the payee (in this case, its own address)
   - confirmation time (0 enables instant timeout, which requires any timestamp above the current one)
   - address for a malicious token (in this case, its own address)
   - a pair which states how much ETH and how many tokens to deposit (in this case `[1,1]`)
   
   YulTracer will generate these arguments by trying out values from the domain of values that it knows.
2. Wait any amount of time (in this case 1 day)
3. Call `LCOpenTimeout(bytes32)` on the channel ID (`_lcID`) which you want to close via timeout, which allow the channel creator to reclaim their funds
4. Reenter`LCOpenTimeout(bytes32)` before the channel state is updated

YulTracer produces the minimal trace:
```
create(object:<ECTools_645> , address:<0x9b2c6206c273f257853dc0dcb356b0660fdb5479>) --> 
pp-ret([ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,fc]) --> 
deploy(object:<LedgerChannel_3495_deployed> , address:<0x102030405060708090a>) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<LedgerChannel_3495_deployed:0x102030405060708090a>, sig:<createChannel(bytes32,address,uint256,address,uint256[2]):0xaeba142c>, args:<[ae,ba,14,2c,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4f,50,5f,41,44,44,52,45,53,53,5f,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4f,50,5f,41,44,44,52,45,53,53,5f,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]>, value:<1>) --> 
po-call(0x4f505f414444524553535f30) --> 
o-ret([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]) --> 
po-ret([]) --> 
o-wait --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<LedgerChannel_3495_deployed:0x102030405060708090a>, sig:<LCOpenTimeout(bytes32):0x002e1d7e>, args:<[0,2e,1d,7e,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]>, value:<0>) --> 
po-call(0x4f505f414444524553535f30) --> 
o-ret([]) --> 
po-call(0x4f505f414444524553535f30) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<LedgerChannel_3495_deployed:0x102030405060708090a>, sig:<LCOpenTimeout(bytes32):0x002e1d7e>, args:<[0,2e,1d,7e,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]>, value:<0>)
ERROR! [game semantics]: [EVM INVARIANT ERROR]: [move_ether]: sender 0x102030405060708090a has insufficient balance (0) to transfer 1

real	0m0.802s
user	0m0.377s
sys	0m0.109s
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
