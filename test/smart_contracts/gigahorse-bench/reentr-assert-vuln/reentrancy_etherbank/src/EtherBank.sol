pragma solidity ^0.8.30;

import {Yult} from "YulTracerLib.sol";

contract EtherBank{
    mapping (address => uint256) userBalances;
    uint256 public totalDeposits; // ADDED LINE

    function getBalance(address user)  public view returns(uint256) {
        return userBalances[user];
    }

    function addToBalance() public  payable {

        userBalances[msg.sender] += msg.value;
        totalDeposits += msg.value; // ADDED LINE
    }

    function withdrawBalance() public {

        uint256 amountToWithdraw = userBalances[msg.sender];
        require(amountToWithdraw > 0);
        // <yes> <report> REENTRANCY
        (bool success, ) = msg.sender.call{value: amountToWithdraw}("");
        require(success);

        userBalances[msg.sender] = 0;
        totalDeposits -= amountToWithdraw; // ADDED LINE
        Yult.Assert(address(this).balance >= totalDeposits); // ADDED LINE
        assert(address(this).balance >= totalDeposits);

    }
}
