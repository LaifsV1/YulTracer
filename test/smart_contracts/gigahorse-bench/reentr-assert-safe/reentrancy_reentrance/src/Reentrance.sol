/*
 * @source: https://ethernaut.zeppelin.solutions/level/0xf70706db003e94cfe4b5e27ffd891d5c81b39488
 * @author: Alejandro Santander
 * @vulnerable_at_lines: 24
 */

pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

contract Reentrance {

  mapping(address => uint256) public balances;
  uint256 public totalDeposits; // ADDED LINE

  function donate(address _to) public payable {
    balances[_to] += msg.value;
    totalDeposits += msg.value; // ADDED LINE
  }

  function balanceOf(address _who) public view returns (uint256 balance) {
    return balances[_who];
  }

  function withdraw(uint256 _amount) public {
    if(balances[msg.sender] >= _amount) {
      balances[msg.sender] -= _amount;  
      totalDeposits -= _amount; // ADDED LINE
      // <yes> <report> REENTRANCY
      (bool sent, ) = msg.sender.call{value: _amount}("");
      if (sent) {
        Yult.Assert(address(this).balance >= totalDeposits); // ADDED LINE
        assert(address(this).balance >= totalDeposits);
      }
    }
  }

  receive() external payable {

}
}
