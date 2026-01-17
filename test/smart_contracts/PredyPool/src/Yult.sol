// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {UniswapV3Factory} from "@uniswap/v3-core/contracts/UniswapV3Factory.sol";
import {WETH9} from "canonical-weth/contracts/WETH9.sol";
import {UniswapV3Factory} from "@uniswap/v3-core/contracts/UniswapV3Factory.sol";
import {TickMath} from "@uniswap/v3-core/contracts/libraries/TickMath.sol";
import {NonfungibleTokenPositionDescriptor} from "@uniswap/v3-periphery/contracts/NonfungibleTokenPositionDescriptor.sol";
import {INonfungibleTokenPositionDescriptor} from "@uniswap/v3-periphery/contracts/interfaces/INonfungibleTokenPositionDescriptor.sol";

import {NonfungiblePositionManager} from "@uniswap/v3-periphery/contracts/NonfungiblePositionManager.sol";
import {INonfungiblePositionManager} from "@uniswap/v3-periphery/contracts/interfaces/INonfungiblePositionManager.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";

import {PredyPool, AddPairLogic, Perp, InterestRateModel} from "src/PredyPool.sol";
import {IPredyPool} from "src/interfaces/IPredyPool.sol";


library YultLib {
  function __yult__wait(uint) pure internal {}
  function __yult__print(uint) pure internal {}
  function __yult__printHex(uint) pure internal {}
  function __yult__assert(bool) pure internal {}
}

contract __Yult__Toolbox {
  UniswapV3Factory private uniswapFactory;
  INonfungiblePositionManager private positionManager;
  ERC20 public stableTA;
  ERC20 public tokenB;
  WETH9 public weth;
  PredyPool public predyPool;

  constructor (WETH9 _weth, ERC20 _stableTA, ERC20 _tokenB) {
    weth = _weth;
    stableTA = _stableTA;
    tokenB = _tokenB;
    uniswapFactory = new UniswapV3Factory();

    bytes32 nativeLabel = keccak256("WETH"); // or FormatBytes32String("WETH")
    INonfungibleTokenPositionDescriptor positionDescriptor = new NonfungibleTokenPositionDescriptor(
      address(weth),
      nativeLabel
    );
    positionManager = new NonfungiblePositionManager(
      address(uniswapFactory),
      address(weth),
      address(positionDescriptor)
    );
    predyPool = new PredyPool();
    predyPool.initialize(address(uniswapFactory));

  }

  function createUniswapV3Pool(ERC20 tokA, ERC20 tokB, uint24 fee, uint tokAAmount, uint tokBAmount) public returns (IUniswapV3Pool) {

    // 4. create & initialize a 0.3% fee pool between tokA & tokB
    //uint24 fee = 3000;
    address poolAddr = uniswapFactory.createPool(address(tokA), address(tokB), fee);
    IUniswapV3Pool pool = IUniswapV3Pool(poolAddr);

    // The pool starts empty: set its initial price to 1:1
    // priceX96 = (sqrtPrice << 96) / Q96. Here sqrt(1) = 1, so:
    int24 tick = 0;
    pool.initialize(TickMath.getSqrtRatioAtTick(tick));

    // 5) approve manager to move your tokens
    tokA.approve(address(positionManager), type(uint128).max);
    tokB.approve(address(positionManager), type(uint128).max);

    // 6) mint a position spanning the full range (for testing!)
    int24 spacing = IUniswapV3Pool(poolAddr).tickSpacing();

    // integer division in Solidity truncates toward zero
    // minTick and maxTick must be multiples of spacing.
    int24 delta   = spacing * 10;  // ten ticks above and below
    int24 minTick = - delta; 
    int24 maxTick = delta;
    positionManager.mint(
      INonfungiblePositionManager.MintParams({
      token0: address(tokA),
      token1: address(tokB),
      fee:   fee,
      tickLower: minTick,
      tickUpper: maxTick,
      amount0Desired: tokAAmount,
      amount1Desired: tokBAmount,
      amount0Min: 0,
      amount1Min: 0,
      recipient: msg.sender,
      //recipient: address(this),
      deadline: block.timestamp
    })
    );

    // hardcoded wait so that the game exploration does not need to consider all wait times.
    YultLib.__yult__wait(3600);

    return pool;
  }

  function registerPredyPoolLP(IUniswapV3Pool pool) public returns (uint predyPoolId) {
    uint pairId = predyPool.registerPair(
      AddPairLogic.AddPairParams({
      marginId : address(stableTA),
      poolOwner : address(msg.sender),
      uniswapPool : address(pool),
      priceFeed : address(0),
      whitelistEnabled : true,
      fee : 0,
      assetRiskParams :
        Perp.AssetRiskParams({
        riskRatio : uint128(100995049) , // wei
        debtRiskRatio : uint128(100995049) , // wei
        rangeSize : int24(660),
        rebalanceThreshold : int24(330),
        minSlippage : uint64(1005000),
        maxSlippage : uint64(1016000)
      }),
      quoteIrmParams :
        InterestRateModel.IRMParams({
        baseRate : uint256(10000000000000000), // wei
        kinkRate : uint256(900000000000000000), // wei
        slope1 : uint256(47000000000000000), // wei
        slope2 : uint256(1600000000000000000) // wei
      }),
      baseIrmParams :
        InterestRateModel.IRMParams({
        baseRate : uint256(10000000000000000), // wei
        kinkRate : uint256(900000000000000000), // wei
        slope1 : uint256(47000000000000000), // wei
        slope2 : uint256(1600000000000000000) // wei
      })
    }));
    predyPool.updateWhitelistAddress(pairId, address(msg.sender), true);
    return pairId;

  }

  function trade(uint predyPoolId)  public {

    predyPool.trade(
      IPredyPool.TradeParams({
        pairId : predyPoolId,
        vaultId : 0,
        tradeAmount : 0,
        tradeAmountSqrt : 0,
        extraData : ""
      }),
      ""
    );
  }
}
