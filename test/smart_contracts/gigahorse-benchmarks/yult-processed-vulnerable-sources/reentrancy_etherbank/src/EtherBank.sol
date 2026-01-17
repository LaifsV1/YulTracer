/*
 * @source: https://github.com/seresistvanandras/EthBench/blob/master/Benchmark/Simple/reentrant.sol
 * @author: -
 * @vulnerable_at_lines: 21
 */

pragma solidity ^0.8.0;
contract EtherBank{
    mapping (address => uint256) userBalances;
    function getBalance(address user)  public view returns(uint256) {  
		return userBalances[user];
	}

	function addToBalance() public  payable {
  
		userBalances[msg.sender] += msg.value;
	}

	function withdrawBalance() public {  
		uint256 amountToWithdraw = userBalances[msg.sender];
        // <yes> <report> REENTRANCY
		(bool success, ) = msg.sender.call{value: amountToWithdraw}("");
		require(success);

		userBalances[msg.sender] = 0;
	}    
}