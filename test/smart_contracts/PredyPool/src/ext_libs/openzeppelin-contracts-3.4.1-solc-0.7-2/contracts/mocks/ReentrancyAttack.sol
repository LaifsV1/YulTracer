// SPDX-License-Identifier: MIT

// original: pragma solidity ^0.7.0;
pragma solidity ^0.8.0;

import "../utils/Context.sol";
contract ReentrancyAttack is Context {
    function callSender(bytes4 data) public {
        // solhint-disable-next-line avoid-low-level-calls
        (bool success,) = _msgSender().call(abi.encodeWithSelector(data));
        require(success, "ReentrancyAttack: failed call");
    }
}
