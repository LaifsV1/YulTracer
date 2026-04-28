/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 44
 */

pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

contract ETH_FUND
{
    mapping (address => uint256) public balances;
    uint256 public totalDeposits; // ADDED LINE
    
    uint256 public MinDeposit = 1 ether;
    
    Log TransferLog;
    
    uint256 lastBlock;
    
    constructor() //(address _log)
    public 
    {
      TransferLog = new Log(); //Log(_log);
    }
    
    function Deposit()
    public
    payable
    {
        if(msg.value > MinDeposit)
        {
            balances[msg.sender]+=msg.value;
            totalDeposits += msg.value; // ADDED LINE
            TransferLog.AddMessage(msg.sender,msg.value,"Deposit");
            lastBlock = block.number;
        }
    }
    
    function CashOut(uint256 _am)
    public
    payable
    {
        if(_am<=balances[msg.sender]&&block.number>lastBlock)
        {
            balances[msg.sender]-=_am;
            totalDeposits -= _am; // ADDED LINE
            TransferLog.AddMessage(msg.sender,_am,"CashOut");
            // <yes> <report> REENTRANCY
            (bool sent, ) = msg.sender.call{value: _am}("");
            if (sent)
            {
                Yult.Assert(address(this).balance >= totalDeposits); // ADDED LINE
                assert(address(this).balance >= totalDeposits);
            }
        }
    }
    
    receive() external payable {

}    
    
}

contract Log 
{
   
    struct Message
    {
        address Sender;
        string  Data;
        uint256 Val;
        uint256  Time;
    }
    
    Message[] public History;
    
    Message LastMsg;
    
    function AddMessage(address _adr, uint256 _val, string memory _data)
    public
    {
        LastMsg.Sender = _adr;
        LastMsg.Time = block.timestamp;
        LastMsg.Val = _val;
        LastMsg.Data = _data;
        History.push(LastMsg);
    }
}
