// SPDX-License-Identifier: GPL-2.0-or-later
// original: pragma solidity =0.7.6;
pragma solidity ^0.8.0;

import './BlockTimestamp.sol';

abstract contract PeripheryValidation is BlockTimestamp {
    modifier checkDeadline(uint256 deadline) {
        require(_blockTimestamp() <= deadline, 'Transaction too old');
        _;
    }
}
