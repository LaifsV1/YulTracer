// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./FibonacciBalance.sol";

contract Deployer {
    address public fibonacciLibrary;
    address public fibonacciBalance;

    constructor() {
        // Deploy the library first
        new FibonacciBalance{value: 1 ether }(address(new FibonacciLib()));
    }

}
