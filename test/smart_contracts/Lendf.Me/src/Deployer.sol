// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./MoneyMarket.sol";
import "./Token.sol";
import "./Yult.sol";

contract __Yult__Toolbox {
    MiniERC777 private token;
    MoneyMarket private moneyMarket;

    constructor (MiniERC777 _token, MoneyMarket _moneyMarket) {
        token = _token;
        moneyMarket = _moneyMarket;
    }

    // ERC20-like approve to let MoneyMarket pull tokens
    function mint_and_approve(uint256 amount) external returns (bool) {
        token.mint(msg.sender, amount * 1e18);
        token.approve(address(moneyMarket), type(uint256).max);
    }
}

/// @notice Deployer sets up a MoneyMarket with MiniERC777 to test reentrancy bug
contract Deployer {
    MiniERC777 private token;
    SimplePriceOracle private oracle;
    SimpleInterestRateModel private interestModel;
    MoneyMarket private moneyMarket;
    __Yult__Toolbox private toolbox;

    constructor() {
        // 1) Deploy MiniERC777 and reveal its address
        token = new MiniERC777();
        YultLib.__yult__revealAddress(address(token));

        // 2) Deploy and configure price oracle
        //    - token priced at $1
        //    - address(0) priced at $1 to satisfy _setOracle's assetPrices(address(0)) check
        oracle = new SimplePriceOracle();
        oracle.setPrice(address(token), 1e18);
        oracle.setPrice(address(0), 1e18);

        // 3) Deploy a no-op interest model
        interestModel = new SimpleInterestRateModel();

        // 4) Deploy the MoneyMarket and set the protocol's oracle so _supportMarket can fetch prices
        moneyMarket = new MoneyMarket();
        require(moneyMarket._setOracle(address(oracle)) == 0,"setOracle failed");

        // ----- Deploy toolbox to allow opponent to mint and approve---//
        toolbox = new __Yult__Toolbox(token, moneyMarket);
        // -------------------------------------------------------------//
        
        // 5) Whitelist the MiniERC777 market
        require(moneyMarket._supportMarket(address(token), interestModel) == 0,"supportMarket failed");

        // 6) Mint test tokens, approve
        token.mint(address(this), 1_000_000 * 1e18);
        token.approve(address(moneyMarket), type(uint256).max);
    }
}
