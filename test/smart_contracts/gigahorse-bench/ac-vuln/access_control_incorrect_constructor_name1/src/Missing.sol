/*
 * @source: https://github.com/trailofbits/not-so-smart-contracts/blob/master/wrong_constructor_name/incorrect_constructor.sol
 * @author: Ben Perez
 * @vulnerable_at_lines: 20
 */

pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

contract Missing{
    address private owner;

    modifier onlyowner {
        require(msg.sender==owner);
        _;
    }

    // The name of the constructor should be Missing
    // Anyone can call the IamMissing once the contract is deployed
    // <yes> <report> ACCESS_CONTROL
    function IamMissing()
        public
    {
        // yult: opponent address should not be able to reach this point
        Yult.Assert(msg.sender != address(0x4f505f414444524553535f30));
        assert(msg.sender != address(0x4f505f414444524553535f30));
        owner = msg.sender;
    }

    fallback () external payable {}

    function withdraw()
        public
        onlyowner
    {
       payable(address(owner)).transfer(address(this).balance);
    }

}
