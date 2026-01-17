// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {__Yult__Toolbox, YultLib} from "Yult.sol";

contract AERC20 is ERC20 {

  mapping(address => bool) public criticalTransferAddresses;

  constructor(string memory name, string memory symbol) ERC20(name, symbol) {}

  function setCriticalTransferAddress(address addr, bool isCritical) external {
    criticalTransferAddresses[addr] = isCritical;
  }
  
  // Print the from and to addresses of 
  function _beforeTokenTransfer(address from, address to, uint256 amount) internal override virtual {
    YultLib.__yult__assert((from == address(0)) || 
                           (!criticalTransferAddresses[to]) ||
                           (balanceOf(from) >= amount));
  }
}
