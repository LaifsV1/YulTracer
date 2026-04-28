// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "./Phishable.sol";

contract Deployer {

    constructor() {
      Phishable victim = new Phishable(tx.origin);
      payable(address(victim)).call{value: 1 ether}("");
        
    }

}
