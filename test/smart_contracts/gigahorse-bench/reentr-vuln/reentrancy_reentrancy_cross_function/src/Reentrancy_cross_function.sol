/*
 * @source: https://consensys.github.io/smart-contract-best-practices/known_attacks/
 * @author: consensys
 * @vulnerable_at_lines: 24 ==NOTE: NOW LINE 43 BECAUSE A MODIFIER WAS ADDED AND A DEPOSIT METHOD.
 */

pragma solidity ^0.8.0;

contract Reentrancy_cross_function {

    // NOTE: MODIFIER ADDED TO FIX THE REENTRANCY BUG WITH withdrawBalance() TO TEST JUST THE TRANSFER BUG
    bool private locked;
    modifier nonReentrant() {
        require(!locked, "Reentrant call");
        locked = true;
        _;
        locked = false;
    }
  
    // INSECURE ===NOTE: ACTUALLY, ORIGINAL CONTRACT IS SAFE BECAUSE THERE IS NO WAY TO PAY THE CONTRACT
    mapping (address => uint256) private userBalances;

    /// NOTE: ADDED A FUNDING METHOD BECAUSE OTHERWISE THIS IS A SAFE CONTRACT!
    function deposit() external payable {
        require(msg.value > 0, "Must send ETH");
        userBalances[msg.sender] += msg.value;
    }

    function transfer(address to, uint256 amount) public {
        if (userBalances[msg.sender] >= amount && userBalances[to] + amount >= userBalances[to]) {
            userBalances[to] += amount;
            userBalances[msg.sender] -= amount;
        }
    }

    // NOTE: withdrawBalance() IS VULNERABLE TO REENTRANCY TOO...
    // TO TEST JUST THE TRANSFER BUG (WHICH IS THE INTENTION OF THIS BENCHMARK), A MUTEX WAS ADDED.
    function withdrawBalance() public nonReentrant {
        // NOTE: ADDED GUARD BECAUSE OTHERWISE YOU CAN ALWAYS CALL THIS
        require(userBalances[msg.sender] > 0);
        uint256 amountToWithdraw = userBalances[msg.sender];
        // <yes> <report> REENTRANCY
        (bool success, ) = msg.sender.call{value: amountToWithdraw}(""); // At this point, the caller's code is executed, and can call transfer()
        require(success);
        userBalances[msg.sender] = 0;
    }
}
