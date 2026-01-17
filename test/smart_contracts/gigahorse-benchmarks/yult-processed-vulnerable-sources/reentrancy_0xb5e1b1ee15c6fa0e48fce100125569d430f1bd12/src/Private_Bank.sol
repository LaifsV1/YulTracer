/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 40
 */

pragma solidity ^0.8.0;

contract Private_Bank
{
    mapping (address => uint256) public balances;
    
    uint256 public MinDeposit = 1 ether;
    
    Log TransferLog;
    
    constructor() //(address _log)
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
            TransferLog.AddMessage(msg.sender,msg.value,"Deposit");
        }
    }
    
    function CashOut(uint256 _am)
    public
    payable
    {
        if(_am<=balances[msg.sender])
        {
            // <yes> <report> REENTRANCY
            (bool sent, ) = msg.sender.call{value: _am}("");
            if (sent)
            {
                balances[msg.sender]-=_am;
                TransferLog.AddMessage(msg.sender,_am,"CashOut");
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
