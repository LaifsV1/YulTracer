// SPDX-License-Identifier: MIT

// original: pragma solidity ^0.7.0;
pragma solidity ^0.8.0;

import "../introspection/ERC165.sol";

contract ERC165Mock is ERC165 {
    function registerInterface(bytes4 interfaceId) public {
        _registerInterface(interfaceId);
    }
}
