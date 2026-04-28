/*
 * @source: https://github.com/trailofbits/not-so-smart-contracts/blob/master/reentrancy/Reentrancy.sol
 * @author: -
 * @vulnerable_at_lines: 24
 */
pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

 contract Reentrance {
     mapping (address => uint256) userBalance;
     uint256 public totalDeposits; // ADDED LINE

     function getBalance(address u)  public view returns(uint256){
         return userBalance[u];
     }

     function addToBalance() public payable{
         userBalance[msg.sender] += msg.value;
         totalDeposits += msg.value; // ADDED LINE
     }

     function withdrawBalance()public {
         uint256 amountToWithdraw = userBalance[msg.sender]; // ADDED LINE
         // send userBalance[msg.sender] ethers to msg.sender
         // if mgs.sender is a contract, it will call its fallback function
         // <yes> <report> REENTRANCY
         (bool success, ) = msg.sender.call{value: userBalance[msg.sender]}("");
         require(success);

         userBalance[msg.sender] = 0;
         totalDeposits -= amountToWithdraw; // ADDED LINE
         Yult.Assert(address(this).balance >= totalDeposits); // ADDED LINE
         assert(address(this).balance >= totalDeposits);

     }
 }
