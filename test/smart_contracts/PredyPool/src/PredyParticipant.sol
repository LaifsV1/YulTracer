// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {IHooks} from "src/interfaces/IHooks.sol";
import {IPredyPool} from "src/interfaces/IPredyPool.sol";

import {__Yult__Toolbox, YultLib} from "Yult.sol";
import {AERC20} from "AERC20.sol";

contract PredyParticipant is IHooks {
  AERC20 private tokenA;
  AERC20 private tokenB;
  __Yult__Toolbox toolbox;

  uint24 poolFee = 0;
  uint predyPoolId = 0;
  mapping(bool => int256) public myPredyBalance;
  // amount to be used at each move (18 decimal places)
  uint amountQuantum = 1 * (10 ** 18);

  address controller = address(0);
 
  constructor (AERC20 _tokenA, AERC20 _tokenB, uint24 _poolFee, __Yult__Toolbox _toolbox) {
    tokenA = _tokenA;
    tokenB = _tokenB;
    toolbox = _toolbox;
    poolFee = _poolFee;
  }

  function createPredyPool() public {
    // Each participant can create at most one pool
    require(predyPoolId == 0);

    IUniswapV3Pool pool = toolbox.createUniswapV3Pool(tokenA, tokenB, poolFee, amountQuantum, amountQuantum);
    predyPoolId = toolbox.registerPredyPoolLP(pool);
  }

  function supplyLiquidity(bool toQuoteAsset) external {
    // operation valid only with an active predy pool
    require(predyPoolId > 0);

    AERC20 token = (toQuoteAsset? tokenA: tokenB);

    // there must be token balance in this contract to supply
    require (token.balanceOf(address(this)) >= amountQuantum);

    // approve and transfer to Predy
    token.approve(address(toolbox.predyPool()), amountQuantum);
    toolbox.predyPool().supply(predyPoolId, toQuoteAsset, amountQuantum);
    // remember Liquidity balances
    myPredyBalance[toQuoteAsset] += int(amountQuantum);
  }

  function withdrawLiquidity(bool toQuoteAsset) external {
    // operation valid only with an active predy pool
    require(predyPoolId != 0);

    AERC20 token = (toQuoteAsset? tokenA: tokenB);

    // PredyPool must have tokens to take
    //require (token.balanceOf(address(toolbox.predyPool())) >= amountQuantum);

    // there must be supply balance for this contract in PredyPool to withdraw
    require(myPredyBalance[toQuoteAsset] >= int(amountQuantum));

    //This transfer is a critical assertion
    token.setCriticalTransferAddress(address(this), true); 
    toolbox.predyPool().withdraw(predyPoolId, toQuoteAsset, amountQuantum);
    token.setCriticalTransferAddress(address(this), false); 

    myPredyBalance[toQuoteAsset] -= int(amountQuantum);
  }

  function take(bool toQuoteAsset) external {
    require(predyPoolId > 0);

    AERC20 token = (toQuoteAsset? tokenA: tokenB);

    // PredyPool must have tokens to take
    require (token.balanceOf(address(toolbox.predyPool())) >= amountQuantum);
    toolbox.predyPool().take(toQuoteAsset, address(this), amountQuantum);
  }

  function trade() external {
    require(predyPoolId != 0);
    controller = msg.sender;
    toolbox.trade(predyPoolId);
  }

  function predySettlementCallback(
    address quoteToken, address baseToken,
    bytes memory settlementData, int256 baseAmountDelta
  ) external {
    IHooks(controller).predySettlementCallback(quoteToken, baseToken, settlementData, baseAmountDelta);
  }

  function predyTradeAfterCallback(
    IPredyPool.TradeParams memory tradeParams,
    IPredyPool.TradeResult memory tradeResult
  ) external {
    IHooks(controller).predyTradeAfterCallback(tradeParams, tradeResult);
  }

}

