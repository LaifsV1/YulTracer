/*
 * @source: https://smartcontractsecurity.github.io/SWC-registry/docs/SWC-112#proxysol
 * @author: -
 * @vulnerable_at_lines: 19
 */

pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

contract Proxy {

  address owner;

  constructor() public {
    owner = msg.sender;
  }

  function forward(address callee, bytes calldata _data) public {
    // <yes> <report> ACCESS_CONTROL
    // yult: opponent address should not be able to reach this point
    Yult.Assert(msg.sender != address(0x4f505f414444524553535f30));
    assert(msg.sender != address(0x4f505f414444524553535f30));
    (bool success, ) = callee.delegatecall(_data);
    require(success); //Use delegatecall with caution and make sure to never call into untrusted contracts
  }

}
