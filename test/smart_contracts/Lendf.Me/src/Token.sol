// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./MoneyMarket.sol";

/// @notice Mini ERC-777 style token with only hooks needed for reentrancy testing
contract MiniERC777 {
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    /// @notice Mint tokens for testing
    function mint(address to, uint256 amount) external {
        balanceOf[to] += amount;
    }

    /// @notice ERC20-like approve for MoneyMarket to pull tokens
    function approve(address spender, uint256 amount) external returns (bool) {
        allowance[msg.sender][spender] = amount;
        return true;
    }

    /// @notice ERC20-like transfer
    function transfer(address to, uint256 amount) external returns (bool) {
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
        return true;
    }

    /// @notice transferFrom with ERC777-style pre-hook to reenter
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool) {
        require(balanceOf[from] >= amount, "Insufficient balance");
        require(allowance[from][msg.sender] >= amount, "Allowance exceeded");
        allowance[from][msg.sender] -= amount;

        // ERC777-style hook: reenter if sender is a contract
        if (isContract(from)) {
            try ITokenSender(from).tokensToSend(msg.sender, from, to, amount, "", "") {
            } catch {}
        }

        balanceOf[from] -= amount;
        balanceOf[to] += amount;
        return true;
    }

    /// @dev detect contracts for the hook
    function isContract(address account) internal view returns (bool) {
        uint256 size;
        assembly { size := extcodesize(account) }
        return size > 0;
    }
}

/// @notice Interface for ERC777-style sender callbacks
interface ITokenSender {
    function tokensToSend(
        address operator,
        address from,
        address to,
        uint256 amount,
        bytes calldata userData,
        bytes calldata operatorData
    ) external;
}

/// @notice Simple price oracle implementing PriceOracleInterface
contract SimplePriceOracle is PriceOracleInterface {
    mapping(address => uint256) public prices;

    /// @notice Set price for any asset (including address(0) sentinel)
    function setPrice(address asset, uint256 price) external {
        prices[asset] = price;
    }

    /// @notice Return price or zero if not set
    function assetPrices(address asset) public view override returns (uint256) {
        uint256 p = prices[asset];
        require(p > 0, "Price not set");
        return p;
    }
}

/// @notice Dummy interest rate model implementing InterestRateModel
contract SimpleInterestRateModel is InterestRateModel {
    function getBorrowRate(address asset, uint256 cash, uint256 borrows) public view override returns (uint256, uint256) {
        return (0, 0);
    }

    function getSupplyRate(address asset, uint256 cash, uint256 borrows) public view override returns (uint256, uint256) {
        return (0, 0);
    }
}
