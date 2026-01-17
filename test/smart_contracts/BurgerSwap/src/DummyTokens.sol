// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BurgerSwap.sol"; // Imports IERC20 interface from BurgerSwap source

/// @notice A simple ERC20 token with minting for testing
contract ERC20Mock is IERC20 {
    string public override name;
    string public override symbol;
    uint8 public override decimals;
    uint public override totalSupply;

    mapping(address => uint) public override balanceOf;
    mapping(address => mapping(address => uint)) public override allowance;

    constructor(string memory name_, string memory symbol_) {
        name = name_;
        symbol = symbol_;
        decimals = 18;
    }

    function _mint(address to, uint amount) internal {
        totalSupply += amount;
        balanceOf[to] += amount;
        emit Transfer(address(0), to, amount);
    }

    /// @notice Mint new tokens to a given address
    function mint(address to, uint amount) external {
        _mint(to, amount);
    }

    function approve(address spender, uint value) external override returns (bool) {
        allowance[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }

    function transfer(address to, uint value) external override returns (bool) {
        require(balanceOf[msg.sender] >= value, "ERC20: transfer amount exceeds balance");
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        emit Transfer(msg.sender, to, value);
        return true;
    }

    function transferFrom(address from, address to, uint value) external override returns (bool) {
        require(balanceOf[from] >= value, "ERC20: transfer amount exceeds balance");
        require(allowance[from][msg.sender] >= value, "ERC20: transfer amount exceeds allowance");
        allowance[from][msg.sender] -= value;
        balanceOf[from] -= value;
        balanceOf[to] += value;
        emit Transfer(from, to, value);
        return true;
    }
}
