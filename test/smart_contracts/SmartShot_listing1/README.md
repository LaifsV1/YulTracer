# SmartShot: Listing 1

This directory contains Listing 1 from the SmartShot paper (https://doi.org/10.1145/3715714).
This example tests whether our tool YulTracer can handle the reasoning invovled in this SmartShot example.

## Running the example

Run the following command with an appropriate Python environment (with the Crypto tools package) loaded:
```
make run
```

## Results

Running the example results in the following trace found:
```
[ERROR WHILE PLAYING MOVE]
[printing trace]:
deploy(object:<take_my_ether_118_deployed> , address:<0x102030405060708090a>) --> 
o-wait --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<take_my_ether_118_deployed:0x102030405060708090a>, sig:<Try2(uint8):0xd5db31e5>, args:<[d5,db,31,e5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]>, value:<1000000000000000001>) --> 
po-call(0x4f505f414444524553535f30) --> 
o-call(caller:<0x4f505f414444524553535f30>, target:<take_my_ether_118_deployed:0x102030405060708090a>, sig:<Try2(uint8):0xd5db31e5>, args:<[d5,db,31,e5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]>, value:<1000000000000000001>)
ERROR! [game semantics]: [EVM ASSERTION ERROR]: [move_ether]: sender 0x102030405060708090a has insufficient balance (2000000000000000002) to transfer 10000000000000000000

real	0m0.131s
user	0m0.101s
sys	0m0.027s
```
which correctly proves that it is possible to drain the smart contract provided in Listing 1.

## Methodology

This example was created by copying one of our other project directories and replacing the source file with the code in Listing 1. The example required a minor modification of adding a `payable` marker inside the `solve` function to satisfy current compiler correctness (0.8.30).