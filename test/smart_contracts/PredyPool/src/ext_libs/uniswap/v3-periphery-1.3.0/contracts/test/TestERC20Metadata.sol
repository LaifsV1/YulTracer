// SPDX-License-Identifier: UNLICENSED
// original: pragma solidity =0.7.6;
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/drafts/ERC20Permit.sol';

contract TestERC20Metadata is ERC20Permit {
    constructor(
        uint256 amountToMint,
        string memory name,
        string memory symbol
    ) ERC20(name, symbol) ERC20Permit(name) {
        _mint(msg.sender, amountToMint);
    }
}
