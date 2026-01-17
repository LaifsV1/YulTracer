// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Keccak {
  // Private mapping used only for initialization
  mapping(uint256 => uint256) private storageSlots;

  // Constructor to initialize fixed values and validate them
  constructor(uint256 x, uint256 y) {
    // Initialize key-value pairs
    storageSlots[1] = 100;
    storageSlots[2] = uint256(keccak256(abi.encodePacked(x)));
    storageSlots[3] = uint256(keccak256(abi.encodePacked(y)));

    assert(true);
  }
}
