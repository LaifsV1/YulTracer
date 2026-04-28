/*
 * @source: https://github.com/sigp/solidity-security-blog
 * @author: -
 * @vulnerable_at_lines: 20
 */

 pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

 contract Phishable {
    address public owner;

    constructor (address _owner) {
        owner = _owner;
    }

    fallback () external payable {} // collect ether

    function withdrawAll(address _recipient) public {
        // <yes> <report> ACCESS_CONTROL
        require(tx.origin == owner);
        // yult: the opponent address may not reach this point
        Yult.Assert(msg.sender != address(0x4f505f414444524553535f30));
        assert(msg.sender != address(0x4f505f414444524553535f30));
        payable(_recipient).transfer(address(this).balance);
    }

}
