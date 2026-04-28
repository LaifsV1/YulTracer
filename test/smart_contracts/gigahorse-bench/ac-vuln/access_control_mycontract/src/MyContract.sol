/*
 * @source: https://consensys.github.io/smart-contract-best-practices/recommendations/#avoid-using-txorigin
 * @author: Consensys Diligence
 * @vulnerable_at_lines: 20
 * Modified by Gerhard Wagner
 */

pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

contract MyContract {

    address owner;

    constructor() public {
        owner = msg.sender;
        Yult.printHex(uint256(uint160(msg.sender)));
        Yult.printHex(uint256(uint160(tx.origin)));
    }

    function sendTo(address receiver, uint amount) public {
        // <yes> <report> ACCESS_CONTROL
        require(tx.origin == owner);
        // yult: opponent address should not be able to reach this point
        Yult.Assert(msg.sender != address(0x4f505f414444524553535f30));
        assert(msg.sender != address(0x4f505f414444524553535f30));
        payable(receiver).transfer(amount);
    }

}
