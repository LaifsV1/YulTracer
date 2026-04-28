/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 52
 */

pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

contract PrivateDeposit
{
    mapping (address => uint256) public balances;
    uint256 public totalDeposits; // ADDED LINE

    uint256 public MinDeposit = 1 ether;
    address public owner;
    
    Log TransferLog;
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }    
    
    constructor()
    {
        owner = msg.sender;
        TransferLog = new Log();
    }
    
    
    
    function setLog(address _lib) public onlyOwner
    {
        TransferLog = Log(_lib);
    }    
    
    function Deposit()
    public
    payable
    {
        if(msg.value >= MinDeposit)
        {
            balances[msg.sender]+=msg.value;
            TransferLog.AddMessage(msg.sender,msg.value,"Deposit");
            totalDeposits += msg.value; // ADDED LINE
        }
    }
    
    function CashOut(uint256 _am)
    public {
        if(_am<=balances[msg.sender])
        {            
            // <yes> <report> REENTRANCY
            (bool sent, ) = msg.sender.call{value: _am}("");
            if (sent)
            {
                balances[msg.sender]-=_am;
                TransferLog.AddMessage(msg.sender,_am,"CashOut");
                totalDeposits -= _am; // ADDED LINE
                Yult.Assert(address(this).balance >= totalDeposits); // ADDED LINE
                assert(address(this).balance >= totalDeposits);
            }
        }
    }
    
    receive() external payable { }    
    
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
