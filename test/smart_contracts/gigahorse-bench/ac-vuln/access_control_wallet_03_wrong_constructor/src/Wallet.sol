/*
 * @source: https://smartcontractsecurity.github.io/SWC-registry/docs/SWC-105#wallet-03-wrong-constructorsol
 * @author: -
 * @vulnerable_at_lines: 19,20
 */

 pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

 /* User can add pay in and withdraw Ether.
    The constructor is wrongly named, so anyone can become 'creator' and withdraw all funds.
 */

 contract Wallet {
     address creator;

     mapping(address => uint256) balances;
     
     // <yes> <report> ACCESS_CONTROL
     function initWallet() public {
         // yult: opponent address should not be able to reach this point
         Yult.Assert(msg.sender != address(0x4f505f414444524553535f30));
         assert(msg.sender != address(0x4f505f414444524553535f30));
         creator = msg.sender;
     }


     function deposit() public payable {
         assert(balances[msg.sender] + msg.value > balances[msg.sender]);
         balances[msg.sender] += msg.value;
     }

     function withdraw(uint256 amount) public {
         require(amount <= balances[msg.sender]);
         payable(msg.sender).transfer(amount);
         balances[msg.sender] -= amount;
     }

     // In an emergency the owner can migrate  allfunds to a different address.

     function migrateTo(address to) public {
         require(creator == msg.sender);
         payable(to).transfer(address(this).balance);
     }

 }
