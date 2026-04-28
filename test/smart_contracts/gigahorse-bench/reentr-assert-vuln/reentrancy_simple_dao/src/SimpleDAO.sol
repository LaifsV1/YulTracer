/*
 * @source: http://blockchain.unica.it/projects/ethereum-survey/attacks.html#simpledao
 * @author: -
 * @vulnerable_at_lines: 19
 */
pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

contract SimpleDAO {
  mapping (address => uint256) public credit;
  uint256 public totalDeposits; // ADDED LINE

  function donate(address to) public payable {
    credit[to] += msg.value;
    totalDeposits += msg.value; // ADDED LINE
  }

  function withdraw(uint256 amount) public {
    if (credit[msg.sender]>= amount) {
      // <yes> <report> REENTRANCY
      (bool res,) = msg.sender.call{value: amount}("");
      require(res);
      credit[msg.sender]-=amount;
      totalDeposits -= amount; // ADDED LINE
      Yult.Assert(address(this).balance >= totalDeposits); // ADDED LINE
      assert(address(this).balance >= totalDeposits);
    }
  }

  //function queryCredit(address to) public returns (uint256){
  //  return credit[to];
  //}
}
