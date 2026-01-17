// SPDX-License-Identifier: MIT

// original: pragma solidity ^0.7.0;
pragma solidity ^0.8.0;

import "../access/AccessControl.sol";

contract AccessControlMock is AccessControl {
    constructor() {
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
    }

    function setRoleAdmin(bytes32 roleId, bytes32 adminRoleId) public {
        _setRoleAdmin(roleId, adminRoleId);
    }
}
