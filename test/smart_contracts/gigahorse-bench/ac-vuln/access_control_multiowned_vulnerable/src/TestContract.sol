/*
 * @source: https://github.com/SmartContractSecurity/SWC-registry/blob/master/test_cases/solidity/unprotected_critical_functions/multiowned_vulnerable/multiowned_vulnerable.sol
 * @author: -
 * @vulnerable_at_lines: 38
 */

pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

/**
 * @title MultiOwnable
 */
contract MultiOwnable {
  address public root;
  mapping (address => address) public owners; // owner => parent of owner

  /**
  * @dev The Ownable constructor sets the original `owner` of the contract to the sender
  * account.
  */
  constructor() public {
    root = msg.sender;
    owners[root] = root;
  }

  /**
  * @dev Throws if called by any account other than the owner.
  */
  modifier onlyOwner() {
    require(owners[msg.sender] != address(0));
    _;
  }

  /**
  * @dev Adding new owners
  * Note that the "onlyOwner" modifier is missing here.
  */
  // <yes> <report> ACCESS_CONTROL
  function newOwner(address _owner) external returns (bool) {
    require(_owner != address(0));
    owners[_owner] = msg.sender;
    return true;
  }

  /**
    * @dev Deleting owners
    */
  function deleteOwner(address _owner) onlyOwner external returns (bool) {
    require(owners[_owner] == msg.sender || (owners[_owner] != address(0) && msg.sender == root));
    owners[_owner] = address(0);
    return true;
  }
}

contract TestContract is MultiOwnable {

  function withdrawAll() external onlyOwner {
    // yultracer: opponent should not withdraw the balance
    Yult.Assert(msg.sender != address(0x4f505f414444524553535f30));
    assert(msg.sender != address(0x4f505f414444524553535f30));
    payable(msg.sender).transfer(address(this).balance);
  }

  receive() external payable {
  }
}
