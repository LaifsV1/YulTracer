/*
 * @source: https://ethernaut.zeppelin.solutions/level/0xf70706db003e94cfe4b5e27ffd891d5c81b39488
 * @author: Alejandro Santander
 * @vulnerable_at_lines: 24
 */

pragma solidity ^0.8.0;

contract Reentrance {

  mapping(address => uint256) public balances;

  function donate(address _to) public payable {
    balances[_to] += msg.value;
  }

  function balanceOf(address _who) public view returns (uint256 balance) {
    return balances[_who];
  }

  function withdraw(uint256 _amount) public {
    if(balances[msg.sender] >= _amount) {
      // <yes> <report> REENTRANCY
      (bool sent, ) = msg.sender.call{value: _amount}("");
      if (sent) {
        balances[msg.sender] -= _amount;
      }
    }
  }

  receive() external payable {

}
}
