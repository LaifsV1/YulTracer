// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract take_my_ether {
    uint256 public deadline;
    uint8 public puzzle;
    bytes32 public puzzleHash;
    bool public puzzleSolved;

    constructor() {
        puzzleHash = keccak256(abi.encode(puzzle));
        puzzleSolved = false;
        deadline = block.timestamp + 30 days;
    }

    function Try1(uint8 x) public payable {
        require(x <= 5);
        puzzle += 2 * x;
        solve();
    }

    function Try2(uint8 x) public payable {
        require(x <= 5);
        puzzle -= 2 * x;
        solve();
    }

    function solve() private {
        require(!puzzleSolved);
        require(keccak256(abi.encode(puzzle)) == puzzleHash);
        require(block.timestamp > deadline);
        payable(msg.sender).call{value: 10 ether}("");
        puzzleSolved = true;
    }
}
