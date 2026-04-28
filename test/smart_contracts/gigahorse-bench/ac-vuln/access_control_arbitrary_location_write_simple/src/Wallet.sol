/*
 * @source: https://smartcontractsecurity.github.io/SWC-registry/docs/SWC-124#arbitrary-location-write-simplesol
 * @author: Suhabe Bugrara
 * @vulnerable_at_lines: 27
 */

 pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

 contract Wallet {
     uint[] private bonusCodes;
     address private owner;

     constructor() public {
         bonusCodes = new uint[](0);
         owner = msg.sender;
     }

     fallback () external payable {
     }

     function PushBonusCode(uint c) public {
         bonusCodes.push(c);
     }

     function PopBonusCode() public {
         // <yes> <report> ACCESS_CONTROL
         require(0 <= bonusCodes.length); // this condition is always true since array lengths are unsigned
         uint __yult__pre_length = bonusCodes.length;
         // bonusCodes.length--; // an underflow can be caused here
         assembly { // yult: use assembly to bypass underflow protection of 0.8.x pop() function.
            let slot := bonusCodes.slot
            let len := sload(slot)
            sstore(slot, sub(len, 1))
        }
        Yult.Assert(bonusCodes.length < __yult__pre_length);
        assert(bonusCodes.length < __yult__pre_length);
     }

     function UpdateBonusCodeAt(uint idx, uint c) public {
         require(idx < bonusCodes.length);
         bonusCodes[idx] = c; // write to any index less than bonusCodes.length
     }

     function Destroy() public {
         require(msg.sender == owner);
         selfdestruct(payable(address(msg.sender)));
     }

 }
