/*
 * @source: etherscan.io 
 * @author: -
 * @vulnerable_at_lines: 94
 */

pragma solidity ^0.8.0;

import {Yult} from "YulTracerLib.sol";

contract Ownable
{
    address newOwner;
    address owner = msg.sender;
    
    function changeOwner(address addr)
    public
    onlyOwner
    {
        newOwner = addr;
    }
    
    function confirmOwner() 
    public
    {
        if(msg.sender==newOwner)
        {
            owner=newOwner;
        }
    }
    
    modifier onlyOwner
    {
        if(owner == msg.sender)_;
    }
}

contract Token is Ownable
{
    function WithdrawToken(address token, uint256 amount, address to)
    public 
    onlyOwner
    {
      (bool success, bytes memory data) =
        token.call(abi.encodeWithSignature("transfer(address,uint256)", to, amount));
      require(success);
    }
}

contract TokenBank is Token
{
    uint256 public MinDeposit;
    mapping (address => uint256) public Holders;
    uint256 public totalDeposits; // ADDED LINE
    
    function initTokenBank()
    public
    {
        owner = msg.sender;
        MinDeposit = 1 ether;
    }
    
    receive() external payable {
      Deposit();
    }
   
    function Deposit() 
      public payable
    {
        if(msg.value>MinDeposit)
        {
            Holders[msg.sender]+=msg.value;
            totalDeposits += msg.value; // ADDED LINE
        }
    }
    
    function WitdrawTokenToHolder(address _to, address _token, uint256 _amount)
    public
    onlyOwner
    {
        if(Holders[_to]>0)
        {
            Holders[_to]=0;
            WithdrawToken(_token,_amount,_to);     
        }
    }
   
    function WithdrawToHolder(address _addr, uint256 _wei) 
    public
    onlyOwner
    payable
    {
        if(Holders[_addr]>=_wei)
        {
            // <yes> <report> REENTRANCY
            (bool sent, bytes memory data) = _addr.call{value: _wei}("");
            if (sent) {
                Holders[_addr]-=_wei;
                totalDeposits -= _wei; // ADDED LINE
                Yult.Assert(address(this).balance >= totalDeposits); // ADDED LINE
                assert(address(this).balance >= totalDeposits);
            }
        }
    }
}
