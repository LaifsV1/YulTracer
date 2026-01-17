// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IndirectStorage {
    // Private mapping used only for initialization
    mapping(uint256 => uint256) private storageSlots;

    // Constructor to initialize fixed values and validate them
    constructor() {
        // Initialize key-value pairs
        storageSlots[1] = 100;
        storageSlots[2] = 200;
        storageSlots[3] = 300;

        // Assertions to verify correct initialization
        assert(storageSlots[1] == 100);
        assert(storageSlots[2] == 200);
        assert(storageSlots[3] == 300);
    }
}
