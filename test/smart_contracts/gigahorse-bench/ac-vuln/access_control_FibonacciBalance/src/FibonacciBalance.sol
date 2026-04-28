/*
 * @source: https://github.com/sigp/solidity-security-blog
 * @author: Suhabe Bugrara
 * @vulnerable_at_lines: 31,38
 */

//added pragma version
pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

contract FibonacciBalance {

    address public fibonacciLibrary;
    // the current fibonacci number to withdraw
    uint public calculatedFibNumber;
    // the starting fibonacci sequence number
    uint public start = 3;
    uint public withdrawalCounter;
    // the fibonancci function selector
    bytes4 constant fibSig = bytes4(keccak256("setFibonacci(uint256)"));

    // constructor - loads the contract with ether
    constructor(address _fibonacciLibrary) public payable {
        fibonacciLibrary = _fibonacciLibrary;
    }

    function withdraw() public {
        withdrawalCounter += 1;
        // calculate the fibonacci number for the current withdrawal user
        // this sets calculatedFibNumber
        // <yes> <report> ACCESS_CONTROL
        // yult: a call from an opponent address should not be able to reach this point
        Yult.Assert(msg.sender != address(0x4f505f414444524553535f30));
        assert(msg.sender != address(0x4f505f414444524553535f30));
        (bool success, ) = fibonacciLibrary.delegatecall(abi.encodeWithSelector(fibSig, withdrawalCounter));
        require(success);
        payable(msg.sender).transfer(calculatedFibNumber * 1 ether);
    }

    // allow users to call fibonacci library functions
    fallback() external {
        // <yes> <report> ACCESS_CONTROL
        // yult: a call from an opponent address should not be able to reach this point
        Yult.Assert(msg.sender != address(0x4f505f414444524553535f30));
        assert(msg.sender != address(0x4f505f414444524553535f30));
        (bool success, ) = fibonacciLibrary.delegatecall(msg.data);
        require(success);
    }

}

// library contract - calculates fibonacci-like numbers;
contract FibonacciLib {
    // initializing the standard fibonacci sequence;
    uint public start;
    uint public calculatedFibNumber;

    // modify the zeroth number in the sequence
    function setStart(uint _start) public {
        start = _start;
    }

    function setFibonacci(uint n) public {
        calculatedFibNumber = fibonacci(n);
    }

    function fibonacci(uint n) internal returns (uint) {
        if (n == 0) return start;
        else if (n == 1) return start + 1;
        else return fibonacci(n - 1) + fibonacci(n - 2);
    }
}
