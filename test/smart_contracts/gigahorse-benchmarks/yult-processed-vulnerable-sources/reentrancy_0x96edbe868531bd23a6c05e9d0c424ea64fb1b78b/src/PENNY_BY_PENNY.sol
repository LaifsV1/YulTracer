/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 63
 */

pragma solidity ^0.8.0;

contract PENNY_BY_PENNY  
{
    struct Holder   
    {
        uint256 unlockTime;
        uint256 balance;
    }
    
    mapping (address => Holder) public Acc;
    
    uint256 public MinSum;
    
    LogFile Log = new LogFile();
    
    bool intitalized; // intitalized (typo in original file)
    
    function SetMinSum(uint256 _val)
    public
    {
        require(!intitalized);
        MinSum = _val;
    }
    
    /* function SetLogFile(address _log) */
    /* public */
    /* { */
    /*     require(!intitalized); */
    /*     Log = LogFile(_log); */
    /* } */
    
    /* function Initialized() */
    /* public */
    /* { */
    /*     intitalized = true; */
    /* } */
    
    function Put(uint256 _lockTime)
    public
    payable
    {
        Holder storage acc = Acc[msg.sender]; //uint256 acc = Acc[msg.sender];
        acc.balance += msg.value;
        if(block.timestamp+_lockTime>acc.unlockTime)acc.unlockTime=block.timestamp+_lockTime;
        Log.AddMessage(msg.sender,msg.value,"Put");
    }
    
    function Collect(uint256 _am)
    public
    payable
    {
        Holder storage acc = Acc[msg.sender]; //uint256 acc = Acc[msg.sender];
        if( acc.balance>=MinSum && acc.balance>=_am && block.timestamp>acc.unlockTime)
        {
            // <yes> <report> REENTRANCY
            (bool sent, ) = msg.sender.call{value: _am}("");
            if (sent)
            {
                acc.balance-=_am;
                Log.AddMessage(msg.sender,_am,"Collect");
            }
        }
    }
    
    receive() external payable {
      Put(0);
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
