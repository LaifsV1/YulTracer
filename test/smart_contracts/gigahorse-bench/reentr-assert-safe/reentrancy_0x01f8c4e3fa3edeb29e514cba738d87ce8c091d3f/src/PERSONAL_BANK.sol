/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 32 (54 in oricinal source)
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import {Yult} from "YulTracerLib.sol";

contract PERSONAL_BANK {
    mapping(address => uint256) public balances;
    uint256 public MinSum = 0; //1 ether;
    uint256 public totalDeposits; // ADDED LINE

    LogFile public Log = new LogFile(); //LogFile(0x0486cF65A2F2F3A392CBEa398AFB7F5f0B72FF46);
    bool intitalized;

    function SetMinSum(uint256 _val) public {
        if (intitalized) revert();
        MinSum = _val;
    }

    /* function SetLogFile(address _log) public { */
    /*     if (intitalized) revert(); */
    /*     Log = LogFile(_log); */
    /* } */

    /* function Initialized() public { */
    /*     intitalized = true; */
    /* } */

    function Deposit() public payable {
        balances[msg.sender] += msg.value;
        Log.AddMessage(msg.sender, msg.value, "Put");
        totalDeposits += msg.value; // ADDED LINE
    }

    function Collect(uint256 _am) public payable {
        if (balances[msg.sender] >= MinSum && balances[msg.sender] >= _am) {
            balances[msg.sender] -= _am;
            totalDeposits -= _am; // ADDED LINE
            Log.AddMessage(msg.sender, _am, "Collect");
            // <yes> <report> REENTRANCY
            (bool success, ) = msg.sender.call{ value: _am }("");
            if (success) {
                Yult.Assert(address(this).balance >= totalDeposits); // ADDED LINE
                assert(address(this).balance >= totalDeposits);
            }
        }
    }

    fallback() external payable {
        Deposit();
    }
}

contract LogFile {
    struct Message {
        address Sender;
        string  Data;
        uint256 Val;
        uint256 Time;
    }

    Message[] public History;
    Message   LastMsg;

    function AddMessage(address _adr, uint256 _val, string memory _data) public {
        LastMsg.Sender = _adr;
        LastMsg.Time   = block.timestamp;
        LastMsg.Val    = _val;
        LastMsg.Data   = _data;
        History.push(LastMsg);
    }
}
