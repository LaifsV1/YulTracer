// SPDX-License-Identifier: MIT

// original: pragma solidity ^0.7.0;
pragma solidity ^0.8.0;

import "../utils/Strings.sol";

contract StringsMock {
    function fromUint256(uint256 value) public pure returns (string memory) {
        return Strings.toString(value);
    }
}
