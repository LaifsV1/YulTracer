/*
 * @source: https://github.com/trailofbits/not-so-smart-contracts/blob/master/reentrancy/Reentrancy.sol
 * @author: -
 * @vulnerable_at_lines: 24
 */
pragma solidity ^0.8.0;

 contract Reentrance {
     mapping (address => uint256) userBalance;

     function getBalance(address u)  public view returns(uint256){
         return userBalance[u];
     }

     function addToBalance() public payable{
         userBalance[msg.sender] += msg.value;
     }

     function withdrawBalance()public {
         // send userBalance[msg.sender] ethers to msg.sender
         // if mgs.sender is a contract, it will call its fallback function
         // <yes> <report> REENTRANCY
         (bool success, ) = msg.sender.call{value: userBalance[msg.sender]}("");
         require(success);

         userBalance[msg.sender] = 0;
     }
 }
