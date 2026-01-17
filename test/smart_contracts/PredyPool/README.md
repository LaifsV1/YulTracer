**NOTE**: Tested for `solc` version `0.8.30+commit.73712a01.Linux.g++` and OCaml `4.10.1`,  on Ubuntu `24.04.2 LTS`.

# Links:
- Medium article: https://predyfinance.medium.com/postmortem-report-on-the-details-of-the-events-of-may-14-2024-8690508c820b
- Verichain.io article: https://blog.verichains.io/p/predy-finance-attack-how-a-liquidity

Article copies are available in directory `Info`

# Contracts:
- Victim contract (PredyPool -- Proxy): https://arbiscan.io/address/0x9215748657319B17fecb2b5D086A3147BFBC8613
- Actual victim contract Address: https://arbiscan.io/address/0x7b8b944ab2f24c829504a7a6d70fce5298f2147c
- Implementation during the attack on 14/5/2024: https://arbiscan.io/address/0x7b8b944AB2f24C829504a7a6D70fce5298f2147c
- transaction that set up this implementation on 25/4/2024: https://arbiscan.io/tx/0x4d562dddd2233208d83555c98de9b8bd3c8ee4f7ad629baa6408d0b8c9d0afe4
    - Txhash: 0x4d562dddd2233208d83555c98de9b8bd3c8ee4f7ad629baa6408d0b8c9d0afe4
    - Blockno: 204580992
    - UnixTimestamp: 1714024654
    - DateTime (UTC): 25/04/2024 05:57
    - From: 0x4f071924d66bbc71a5254217893cc7d49938b1c4
    - To: 0x9215748657319b17fecb2b5d086a3147bfbc8613
    - Method: Upgrade To
    - Actual Contract Address: 7b8b944ab2f24c829504a7a6d70fce5298f2147c

- Exploit contract: https://arbiscan.io/address/0x8afFdD350eb754b4652D9EA5070579394280CaD9
- Exploit transaction: https://arbiscan.io/tx/0xbe163f651d23f0c9e4d4a443c0cc163134a31a1c2761b60188adcfd33178f50f

Attack start date: 29/3/2024 (when attacker registered a LP pair)
Exploit transaction date: 14/5/2024

# Versions:
- src/PredyPool-attacked-version: version running during the attack 
- src/PredyPool-fixed-version: fixed version

# Compile and run the game exploration on the vulnerable version of PredyPool
```bash
make clean normal run
```

# Compile and run the game exploration on the patched version of PredyPool
```bash
make clean fixed run
```

# Compile and run a deterministic attack on the vulnerable version of PredyPool (no game exploration)
```bash
make clean deterministic run EXTRA_ARGS="-warnings"
```

