/*
 * @source: https://github.com/ConsenSys/evm-analyzer-benchmark-suite
 * @author: Suhabe Bugrara
 * @vulnerable_at_lines: 18
 */

pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

contract ReentrancyDAO {
    mapping (address => uint256) credit;
    uint256 balance;

    function withdrawAll() public {
        uint256 oCredit = credit[msg.sender];
        if (oCredit > 0) {
            balance -= oCredit;
            // <yes> <report> REENTRANCY
            (bool callResult, ) = msg.sender.call{value: oCredit}("");
            require (callResult);
            credit[msg.sender] = 0;
            Yult.Assert(address(this).balance >= balance); // ADDED LINE
            assert(address(this).balance >= balance);
        }
    }

    function deposit() public payable {
        credit[msg.sender] += msg.value;
        balance += msg.value;
    }
}
