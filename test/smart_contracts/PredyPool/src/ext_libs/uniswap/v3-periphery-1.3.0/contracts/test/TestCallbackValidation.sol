// SPDX-License-Identifier: UNLICENSED
// original: pragma solidity =0.7.6;
pragma solidity ^0.8.0;

import '../libraries/CallbackValidation.sol';

contract TestCallbackValidation {
    function verifyCallback(
        address factory,
        address tokenA,
        address tokenB,
        uint24 fee
    ) external view returns (IUniswapV3Pool pool) {
        return CallbackValidation.verifyCallback(factory, tokenA, tokenB, fee);
    }
}
