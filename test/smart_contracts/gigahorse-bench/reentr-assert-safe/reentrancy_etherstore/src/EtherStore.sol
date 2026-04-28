/*
 * @source: https://github.com/sigp/solidity-security-blog
 * @author: Suhabe Bugrara
 * @vulnerable_at_lines: 27
 */

//added pragma version
pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

contract EtherStore {

    uint256 public withdrawalLimit = 1 ether;
    mapping(address => uint256) public lastWithdrawTime;
    mapping(address => uint256) public balances;
    uint256 public totalDeposits; // ADDED LINE

    function depositFunds() public payable {
        balances[msg.sender] += msg.value;
        totalDeposits += msg.value; // ADDED LINE
    }

    function withdrawFunds (uint256 _weiToWithdraw) public {
        require(balances[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        require(_weiToWithdraw <= withdrawalLimit);
        // limit the time allowed to withdraw
        require(block.timestamp >= lastWithdrawTime[msg.sender] + 1 weeks);
        balances[msg.sender] -= _weiToWithdraw;
        totalDeposits -= _weiToWithdraw; // ADDED LINE
        lastWithdrawTime[msg.sender] = block.timestamp;
        // <yes> <report> REENTRANCY
        (bool success, ) = msg.sender.call{value: _weiToWithdraw}("");
        require(success);

        Yult.Assert(address(this).balance >= totalDeposits); // ADDED LINE
        assert(address(this).balance >= totalDeposits);
    }
 }
