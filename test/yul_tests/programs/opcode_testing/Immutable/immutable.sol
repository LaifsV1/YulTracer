// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ImmutableExample {
    address public immutable owner;
    address public immutable self;

    constructor(address _owner) {
        owner = _owner;
        self = address(this);
    }
}

contract Deployer {
    ImmutableExample public deployed;

    constructor() {
        deployed = new ImmutableExample(address(this));
    }
}
