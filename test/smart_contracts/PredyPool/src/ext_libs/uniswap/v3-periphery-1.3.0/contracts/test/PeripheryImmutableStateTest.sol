// SPDX-License-Identifier: GPL-2.0-or-later
// original: pragma solidity =0.7.6;
pragma solidity ^0.8.0;

import '../base/PeripheryImmutableState.sol';

contract PeripheryImmutableStateTest is PeripheryImmutableState {
    constructor(address _factory, address _WETH9) PeripheryImmutableState(_factory, _WETH9) {}
}
