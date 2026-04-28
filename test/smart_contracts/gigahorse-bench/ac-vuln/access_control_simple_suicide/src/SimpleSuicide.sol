/*
 * @source: https://github.com/SmartContractSecurity/SWC-registry/blob/master/test_cases/unprotected_critical_functions/simple_suicide.sol
 * @author: -
 * @vulnerable_at_lines: 12,13
 */

//added prgma version
pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

contract SimpleSuicide {
  // <yes> <report> ACCESS_CONTROL
  function sudicideAnyone() external {
    // yult: opponent address should not be able to reach this point
    Yult.Assert(msg.sender != address(0x4f505f414444524553535f30));
    assert(msg.sender != address(0x4f505f414444524553535f30));
    selfdestruct(payable(address(msg.sender)));
  }


}
