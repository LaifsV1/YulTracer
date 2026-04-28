/*
 * @source: https://consensys.github.io/smart-contract-best-practices/known_attacks/
 * @author: consensys
 * @vulnerable_at_lines: 28
 */

pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

// COMMENT: Yu-Yang Lin (YulTracer)
// the original contract is actually trivially unsafe because we can always call getFirstWithdrawalBonus()
// even when the contract has no funds. this will cause an insufficient funds bug trivially, without
// using the reentrancy. the reentrancy pattern is unsafe only in a context that makes it unsafe.
// we thus modified this example to add a way to deposit money, and only withdraw if enough money
// is present. to showcase the reentrancy bug, we want only to see the bonus logic abused.

contract Reentrancy_bonus{

    // INSECURE
    mapping (address => uint256) private userBalances;
    mapping (address => bool) private claimedBonus;
    mapping (address => uint256) private rewardsForA;

    // YULT: START OF ADDED BLOCK==========
    mapping(address => uint256) private sentTo;    
    fallback() external payable {}
    // YULT: END OF ADDED BLOCK==========

    
    function withdrawReward(address recipient) public {
        uint256 amountToWithdraw = rewardsForA[recipient];
        require(address(this).balance >= amountToWithdraw, "insufficient pool"); // YULT: ADDED LINE
        rewardsForA[recipient] = 0;
        (bool success, ) = recipient.call{value: amountToWithdraw}("");
        require(success);
        sentTo[recipient] += amountToWithdraw; // YULT: ADDED LINE
    }

    function getFirstWithdrawalBonus(address recipient) public {
        require(!claimedBonus[recipient]); // Each recipient should only be able to claim the bonus once
        rewardsForA[recipient] += 100;
        claimedBonus[recipient] = true;
        
        // <yes> <report> REENTRANCY
        withdrawReward(recipient); // At this point, the caller will be able to execute getFirstWithdrawalBonus again.
        Yult.Assert(sentTo[recipient] <= 100); // YULT: ADDED ASSERTION TO SEE THE BUG
        assert(sentTo[recipient] <= 100);
    }
}
