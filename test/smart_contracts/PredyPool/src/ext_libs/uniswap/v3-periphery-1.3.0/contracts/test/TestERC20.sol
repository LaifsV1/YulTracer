// SPDX-License-Identifier: UNLICENSED
// original: pragma solidity =0.7.6;
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/drafts/ERC20Permit.sol';

contract TestERC20 is ERC20Permit {
    constructor(uint256 amountToMint) ERC20('Test ERC20', 'TEST') ERC20Permit('Test ERC20') {
        _mint(msg.sender, amountToMint);
    }
}
