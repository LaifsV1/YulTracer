// SPDX-License-Identifier: MIT

// original: pragma solidity ^0.7.0;
pragma solidity ^0.8.0;

import "../introspection/ERC1820Implementer.sol";

contract ERC1820ImplementerMock is ERC1820Implementer {
    function registerInterfaceForAddress(bytes32 interfaceHash, address account) public {
        _registerInterfaceForAddress(interfaceHash, account);
    }
}
