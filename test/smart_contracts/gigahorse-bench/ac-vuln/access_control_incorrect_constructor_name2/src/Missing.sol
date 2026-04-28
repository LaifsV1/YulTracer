/*
 * @source: https://smartcontractsecurity.github.io/SWC-registry/docs/SWC-118#incorrect-constructor-name1sol
 * @author: Ben Perez
 * @vulnerable_at_lines: 18
 */


pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

contract Missing{
    address private owner;

    modifier onlyowner {
        require(msg.sender==owner);
        _;
    }
    // <yes> <report> ACCESS_CONTROL
    function missing()
        public
    {
        owner = msg.sender;
    }

    fallback () external payable {}

    function withdraw()
        public
        onlyowner
    {
      // yult: opponent address should not be able to reach this point
      Yult.Assert(msg.sender != address(0x4f505f414444524553535f30));
      assert(msg.sender != address(0x4f505f414444524553535f30));
       payable(owner).transfer(address(this).balance);
    }

}
