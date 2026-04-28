/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 54
 */

pragma solidity ^0.8.0;

contract DEP_BANK 
{
    mapping (address=>uint256) public balances;   
   
    uint256 public MinSum;
    
    LogFile Log;
    
    bool intitalized;
    
    function SetMinSum(uint256 _val)
    public
    {
        require(!intitalized);
        MinSum = _val;
    }
    
    function SetLogFile(address _log)
    public
    {
        require(!intitalized);
        Log = LogFile(_log);
    }
    
    function Initialized()
    public
    {
        intitalized = true;
    }
    
    function Deposit()
    public
    payable
    {
        balances[msg.sender]+= msg.value;
        Log.AddMessage(msg.sender,msg.value,"Put");
    }
    
    function Collect(uint256 _am)
    public
    payable
    {
        if(balances[msg.sender]>=MinSum && balances[msg.sender]>=_am)
        {
            // <yes> <report> REENTRANCY
            (bool sent, ) = msg.sender.call{value: _am}("");
            if (sent)
            {
                balances[msg.sender]-=_am;
                Log.AddMessage(msg.sender,_am,"Collect");
            }
        }
    }
    
    receive() external payable {
Deposit();
}
    
}


contract LogFile
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