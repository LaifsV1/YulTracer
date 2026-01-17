/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 29
 */
pragma solidity ^0.8.0;


contract U_BANK
{
    function Put(uint256 _unlockTime)
    public
    payable
    {
        Holder storage acc = Acc[msg.sender]; // needs declaring as "storage" after 0.5.0
        acc.balance += msg.value;
        acc.unlockTime = _unlockTime>block.timestamp?_unlockTime:block.timestamp;
        LogFile.AddMessage(msg.sender,msg.value,"Put");
    }

    function Collect(uint256 _am)
    public
    payable
    {
        Holder storage acc = Acc[msg.sender]; // needs declaring as "storage" after 0.5.0
        if( acc.balance>=MinSum && acc.balance>=_am && block.timestamp>acc.unlockTime)
        {
            // <yes> <report> REENTRANCY
            (bool sent, ) = msg.sender.call{value: _am}("");
            if(sent)
            {
                acc.balance-=_am;
                LogFile.AddMessage(msg.sender,_am,"Collect");
            }
        }
    }

    receive() external payable {
        Put(0);
    }

    struct Holder   
    {
        uint256 unlockTime;
        uint256 balance;
    }

    mapping (address => Holder) public Acc;

    Log LogFile;

    uint256 public MinSum = 2 ether;  // 2 eth instead of 1 eth...  

    constructor() { //(address log) public{
        LogFile = new Log();
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
