/*
 * @source: https://consensys.github.io/smart-contract-best-practices/known_attacks/
 * @author: consensys
 * @vulnerable_at_lines: 17
 */

pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

contract Reentrancy_insecure {

    // INSECURE
    mapping (address => uint256) private userBalances;
    uint256 public totalDeposits; // ADDED LINE

    function withdrawBalance() public {
        uint256 amountToWithdraw = userBalances[msg.sender];
        // <yes> <report> REENTRANCY
        (bool success, ) = msg.sender.call{value: amountToWithdraw}(""); // At this point, the caller's code is executed, and can call withdrawBalance again
        require(success);
        userBalances[msg.sender] = 0;
        totalDeposits -= amountToWithdraw; // ADDED LINE
        Yult.Assert(address(this).balance >= totalDeposits); // ADDED LINE
        assert(address(this).balance >= totalDeposits);
    }

    // --- MISSING: deposit money into your balance ---
    // without a deposit, the pattern is unsafe, but the contract is technically safe
    // because there is no way to increase the balance and thus trigger the bug.
    function deposit() external payable {
        userBalances[msg.sender] += msg.value;
        totalDeposits += msg.value; // ADDED LINE
    }

}
