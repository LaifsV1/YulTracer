# SpankChain Exploit (with assertion) — Safe Variant

> Part of the [Gigahorse Benchmarks](../../README.md). See also the main [`README`](../../../../../README.md) and [`GUIDE`](../../../../../GUIDE.md).

For background on the SpankChain exploit and the attack sequence, see the [`reentr-vuln` README](../../reentr-vuln/reentrancy_spank_chain_payment/README.md). For the vulnerable variant with the same assertion, see the [`reentr-assert-vuln` README](../../reentr-assert-vuln/reentrancy_spank_chain_payment/README.md).

**NOTE**: Tested for `solc` version `0.8.30+commit.73712a01.Linux.g++` and OCaml `4.10.1`,  on Ubuntu `24.04.2 LTS`.

## Difference from `reentr-assert-vuln`

Like the vulnerable variant, this version adds a `Yult.Assert` to `LCOpenTimeout`. The difference is that the underlying reentrancy bug has been fixed: the channel data is copied into a local `memory` variable and the storage entry is deleted *before* the external `transfer` call:

```solidity
uint eth_prev = address(this).balance;
uint256 amount = 0;
Channel memory curr_channel = Channels[_lcID]; // FIX
delete Channels[_lcID];
if(curr_channel.initialDeposit[0] != 0) {
    amount = curr_channel.ethBalances[0];
    // ...
    payable(curr_channel.partyAddresses[0]).transfer(amount);
}
// ...
Yult.Assert(address(this).balance >= eth_prev - amount);
```

Because the channel is deleted before the external call, a reentrant call to `LCOpenTimeout` with the same `_lcID` finds the channel already gone and cannot trigger a second transfer.

## Result

YulTracer exhausts all traces within the exploration bound and finds no assertion violation or balance drainage:
```
===== GAME DONE =====

real	0m2.374s
user	0m2.156s
sys	0m0.091s
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
