
/// @use-src 88:"uniswap/v3-core-1.0.0/contracts/NoDelegateCall.sol", 90:"uniswap/v3-core-1.0.0/contracts/UniswapV3Pool.sol", 94:"uniswap/v3-core-1.0.0/contracts/interfaces/IUniswapV3Pool.sol", 99:"uniswap/v3-core-1.0.0/contracts/interfaces/pool/IUniswapV3PoolActions.sol", 100:"uniswap/v3-core-1.0.0/contracts/interfaces/pool/IUniswapV3PoolDerivedState.sol", 101:"uniswap/v3-core-1.0.0/contracts/interfaces/pool/IUniswapV3PoolEvents.sol", 102:"uniswap/v3-core-1.0.0/contracts/interfaces/pool/IUniswapV3PoolImmutables.sol", 103:"uniswap/v3-core-1.0.0/contracts/interfaces/pool/IUniswapV3PoolOwnerActions.sol", 104:"uniswap/v3-core-1.0.0/contracts/interfaces/pool/IUniswapV3PoolState.sol", 116:"uniswap/v3-core-1.0.0/contracts/libraries/Tick.sol", 118:"uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol"
object "UniswapV3Pool_8675" {
    code {
        /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."
        mstore(64, memoryguard(352))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_UniswapV3Pool_8675()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("UniswapV3Pool_8675_deployed"), datasize("UniswapV3Pool_8675_deployed"))

        setimmutable(_1, "6133", mload(128))

        setimmutable(_1, "6237", mload(160))

        setimmutable(_1, "6241", mload(192))

        setimmutable(_1, "6245", mload(224))

        setimmutable(_1, "6249", mload(256))

        setimmutable(_1, "6253", mload(288))

        setimmutable(_1, "6257", mload(320))

        return(_1, datasize("UniswapV3Pool_8675_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        function zero_value_for_split_t_int24() -> ret {
            ret := 0
        }

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
        }

        function identity(value) -> ret {
            ret := value
        }

        function convert_t_uint160_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
        }

        function convert_t_uint160_to_t_contract$_IUniswapV3PoolDeployer_$19743(value) -> converted {
            converted := convert_t_uint160_to_t_uint160(value)
        }

        function convert_t_address_to_t_contract$_IUniswapV3PoolDeployer_$19743(value) -> converted {
            converted := convert_t_uint160_to_t_contract$_IUniswapV3PoolDeployer_$19743(value)
        }

        function convert_t_uint160_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_uint160(value)
        }

        function convert_t_contract$_IUniswapV3PoolDeployer_$19743_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_address(value)
        }

        function revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() {
            revert(0, 0)
        }

        function round_up_to_mul_of_32(value) -> result {
            result := and(add(value, 31), not(31))
        }

        function panic_error_0x41() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x41)
            revert(0, 0x24)
        }

        function finalize_allocation(memPtr, size) {
            let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
            // protect against overflow
            if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
            mstore(64, newFreePtr)
        }

        function shift_left_224(value) -> newValue {
            newValue :=

            shl(224, value)

        }

        function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
            revert(0, 0)
        }

        function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
            revert(0, 0)
        }

        function cleanup_t_address(value) -> cleaned {
            cleaned := cleanup_t_uint160(value)
        }

        function validator_revert_t_address(value) {
            if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
        }

        function abi_decode_t_address_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_address(value)
        }

        function cleanup_t_uint24(value) -> cleaned {
            cleaned := and(value, 0xffffff)
        }

        function validator_revert_t_uint24(value) {
            if iszero(eq(value, cleanup_t_uint24(value))) { revert(0, 0) }
        }

        function abi_decode_t_uint24_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_uint24(value)
        }

        function cleanup_t_int24(value) -> cleaned {
            cleaned := signextend(2, value)
        }

        function validator_revert_t_int24(value) {
            if iszero(eq(value, cleanup_t_int24(value))) { revert(0, 0) }
        }

        function abi_decode_t_int24_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_int24(value)
        }

        function abi_decode_tuple_t_addresst_addresst_addresst_uint24t_int24_fromMemory(headStart, dataEnd) -> value0, value1, value2, value3, value4 {
            if slt(sub(dataEnd, headStart), 160) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            {

                let offset := 0

                value0 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 32

                value1 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 64

                value2 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 96

                value3 := abi_decode_t_uint24_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 128

                value4 := abi_decode_t_int24_fromMemory(add(headStart, offset), dataEnd)
            }

        }

        function abi_encode_tuple__to__fromStack(headStart ) -> tail {
            tail := add(headStart, 0)

        }

        function revert_forward_1() {
            let pos := allocate_unbounded()
            returndatacopy(pos, 0, returndatasize())
            revert(pos, returndatasize())
        }

        /// @ast-id 6397
        /// @src 90:4372:4645  "constructor() {..."
        function constructor_UniswapV3Pool_8675() {

            /// @src 90:4372:4645  "constructor() {..."
            constructor_NoDelegateCall_6167()

            /// @src 90:4396:4414  "int24 _tickSpacing"
            let var__tickSpacing_6369
            let zero_t_int24_2 := zero_value_for_split_t_int24()
            var__tickSpacing_6369 := zero_t_int24_2
            /// @src 90:4494:4504  "msg.sender"
            let expr_6379 := caller()
            /// @src 90:4471:4505  "IUniswapV3PoolDeployer(msg.sender)"
            let expr_6380_address := convert_t_address_to_t_contract$_IUniswapV3PoolDeployer_$19743(expr_6379)
            /// @src 90:4471:4516  "IUniswapV3PoolDeployer(msg.sender).parameters"
            let expr_6381_address := convert_t_contract$_IUniswapV3PoolDeployer_$19743_to_t_address(expr_6380_address)
            let expr_6381_functionSelector := 0x89035730
            /// @src 90:4471:4518  "IUniswapV3PoolDeployer(msg.sender).parameters()"

            // storage for arguments and returned data
            let _3 := allocate_unbounded()
            mstore(_3, shift_left_224(expr_6381_functionSelector))
            let _4 := abi_encode_tuple__to__fromStack(add(_3, 4) )

            let _5 := staticcall(gas(), expr_6381_address,  _3, sub(_4, _3), _3, 160)

            if iszero(_5) { revert_forward_1() }

            let expr_6382_component_1, expr_6382_component_2, expr_6382_component_3, expr_6382_component_4, expr_6382_component_5
            if _5 {

                let _6 := 160

                if gt(_6, returndatasize()) {
                    _6 := returndatasize()
                }

                // update freeMemoryPointer according to dynamic return size
                finalize_allocation(_3, _6)

                // decode return parameters from external try-call into retVars
                expr_6382_component_1, expr_6382_component_2, expr_6382_component_3, expr_6382_component_4, expr_6382_component_5 :=  abi_decode_tuple_t_addresst_addresst_addresst_uint24t_int24_fromMemory(_3, add(_3, _6))
            }
            /// @src 90:4424:4518  "(factory, token0, token1, fee, _tickSpacing) = IUniswapV3PoolDeployer(msg.sender).parameters()"
            var__tickSpacing_6369 := expr_6382_component_5
            let _7 := expr_6382_component_4
            mstore(256, _7)
            let _8 := expr_6382_component_3
            mstore(224, _8)
            let _9 := expr_6382_component_2
            mstore(192, _9)
            let _10 := expr_6382_component_1
            mstore(160, _10)
            /// @src 90:4542:4554  "_tickSpacing"
            let _11 := var__tickSpacing_6369
            let expr_6386 := _11
            /// @src 90:4528:4554  "tickSpacing = _tickSpacing"
            let _12 := expr_6386
            mstore(288, _12)
            let expr_6387 := expr_6386
            /// @src 90:4587:4591  "Tick"
            let expr_6390_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/Tick.sol:Tick")
            /// @src 90:4625:4637  "_tickSpacing"
            let _13 := var__tickSpacing_6369
            let expr_6392 := _13
            /// @src 90:4587:4638  "Tick.tickSpacingToMaxLiquidityPerTick(_tickSpacing)"
            let expr_6393 := fun_tickSpacingToMaxLiquidityPerTick_21842(expr_6392)
            /// @src 90:4565:4638  "maxLiquidityPerTick = Tick.tickSpacingToMaxLiquidityPerTick(_tickSpacing)"
            let _14 := expr_6393
            mstore(320, _14)
            let expr_6394 := expr_6393

        }
        /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

        function convert_t_contract$_NoDelegateCall_$6167_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_address(value)
        }

        /// @ast-id 6144
        /// @src 88:387:640  "constructor() {..."
        function constructor_NoDelegateCall_6167() {

            /// @src 88:387:640  "constructor() {..."
            constructor_IUniswapV3Pool_2481()

            /// @src 88:628:632  "this"
            let expr_6139_address := address()
            /// @src 88:620:633  "address(this)"
            let expr_6140 := convert_t_contract$_NoDelegateCall_$6167_to_t_address(expr_6139_address)
            /// @src 88:609:633  "original = address(this)"
            let _15 := expr_6140
            mstore(128, _15)
            let expr_6141 := expr_6140

        }
        /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

        /// @src 94:642:845  "interface IUniswapV3Pool is..."
        function constructor_IUniswapV3Pool_2481() {

            /// @src 94:642:845  "interface IUniswapV3Pool is..."
            constructor_IUniswapV3PoolEvents_9076()

        }
        /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

        /// @src 101:196:6000  "interface IUniswapV3PoolEvents {..."
        function constructor_IUniswapV3PoolEvents_9076() {

            /// @src 101:196:6000  "interface IUniswapV3PoolEvents {..."
            constructor_IUniswapV3PoolOwnerActions_9142()

        }
        /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

        /// @src 103:224:1224  "interface IUniswapV3PoolOwnerActions {..."
        function constructor_IUniswapV3PoolOwnerActions_9142() {

            /// @src 103:224:1224  "interface IUniswapV3PoolOwnerActions {..."
            constructor_IUniswapV3PoolActions_8926()

        }
        /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

        /// @src 99:210:6340  "interface IUniswapV3PoolActions {..."
        function constructor_IUniswapV3PoolActions_8926() {

            /// @src 99:210:6340  "interface IUniswapV3PoolActions {..."
            constructor_IUniswapV3PoolDerivedState_8957()

        }
        /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

        /// @src 100:330:2638  "interface IUniswapV3PoolDerivedState {..."
        function constructor_IUniswapV3PoolDerivedState_8957() {

            /// @src 100:330:2638  "interface IUniswapV3PoolDerivedState {..."
            constructor_IUniswapV3PoolState_9250()

        }
        /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

        /// @src 104:277:6546  "interface IUniswapV3PoolState {..."
        function constructor_IUniswapV3PoolState_9250() {

            /// @src 104:277:6546  "interface IUniswapV3PoolState {..."
            constructor_IUniswapV3PoolImmutables_9116()

        }
        /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

        /// @src 102:261:1847  "interface IUniswapV3PoolImmutables {..."
        function constructor_IUniswapV3PoolImmutables_9116() {

            /// @src 102:261:1847  "interface IUniswapV3PoolImmutables {..."

        }
        /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

        function zero_value_for_split_t_uint128() -> ret {
            ret := 0
        }

        function cleanup_t_rational_minus_887272_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_minus_887272_by_1_to_t_int24(value) -> converted {
            converted := cleanup_t_int24(identity(cleanup_t_rational_minus_887272_by_1(value)))
        }

        /// @src 118:479:521  "int24 internal constant MIN_TICK = -887272"
        function constant_MIN_TICK_5103() -> ret {
            /// @src 118:514:521  "-887272"
            let expr_5102 := 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffff27618
            let _17 := convert_t_rational_minus_887272_by_1_to_t_int24(expr_5102)

            ret := _17
        }

        function panic_error_0x12() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x12)
            revert(0, 0x24)
        }

        function panic_error_0x11() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x11)
            revert(0, 0x24)
        }

        function checked_div_t_int24(x, y) -> r {
            x := cleanup_t_int24(x)
            y := cleanup_t_int24(y)
            if iszero(y) { panic_error_0x12() }

            // overflow for minVal / -1
            if and(
                eq(x, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff800000),
                eq(y, sub(0, 1))
            ) { panic_error_0x11() }

            r := sdiv(x, y)
        }

        function checked_mul_t_int24(x, y) -> product {
            x := cleanup_t_int24(x)
            y := cleanup_t_int24(y)
            let product_raw := mul(x, y)
            product := cleanup_t_int24(product_raw)

            if iszero(eq(product, product_raw)) { panic_error_0x11() }

        }

        function negate_t_int24(value) -> ret {
            value := cleanup_t_int24(value)
            if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff800000) { panic_error_0x11() }
            ret := sub(0, value)
        }

        /// @src 118:639:683  "int24 internal constant MAX_TICK = -MIN_TICK"
        function constant_MAX_TICK_5108() -> ret {
            /// @src 118:675:683  "MIN_TICK"
            let expr_5106 := constant_MIN_TICK_5103()
            /// @src 118:674:683  "-MIN_TICK"
            let expr_5107 := negate_t_int24(expr_5106)
            let _20 := expr_5107

            ret := _20
        }

        function checked_sub_t_int24(x, y) -> diff {
            x := cleanup_t_int24(x)
            y := cleanup_t_int24(y)
            diff := sub(x, y)

            if or(
                slt(diff, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff800000),
                sgt(diff, 0x7fffff)
            ) { panic_error_0x11() }

        }

        function convert_t_int24_to_t_uint24(value) -> converted {
            converted := cleanup_t_uint24(identity(cleanup_t_int24(value)))
        }

        function cleanup_t_rational_1_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_1_by_1_to_t_uint24(value) -> converted {
            converted := cleanup_t_uint24(identity(cleanup_t_rational_1_by_1(value)))
        }

        function checked_add_t_uint24(x, y) -> sum {
            x := cleanup_t_uint24(x)
            y := cleanup_t_uint24(y)
            sum := add(x, y)

            if gt(sum, 0xffffff) { panic_error_0x11() }

        }

        function cleanup_t_uint128(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffff)
        }

        function convert_t_uint24_to_t_uint128(value) -> converted {
            converted := cleanup_t_uint128(identity(cleanup_t_uint24(value)))
        }

        function checked_div_t_uint128(x, y) -> r {
            x := cleanup_t_uint128(x)
            y := cleanup_t_uint128(y)
            if iszero(y) { panic_error_0x12() }

            r := div(x, y)
        }

        /// @ast-id 21842
        /// @src 116:2232:2596  "function tickSpacingToMaxLiquidityPerTick(int24 tickSpacing) internal pure returns (uint128) {..."
        function fun_tickSpacingToMaxLiquidityPerTick_21842(var_tickSpacing_21794) -> var__21797 {
            /// @src 116:2316:2323  "uint128"
            let zero_t_uint128_16 := zero_value_for_split_t_uint128()
            var__21797 := zero_t_uint128_16

            /// @src 116:2352:2360  "TickMath"
            let expr_21801_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
            /// @src 116:2352:2369  "TickMath.MIN_TICK"
            let expr_21802 := constant_MIN_TICK_5103()
            /// @src 116:2372:2383  "tickSpacing"
            let _18 := var_tickSpacing_21794
            let expr_21803 := _18
            /// @src 116:2352:2383  "TickMath.MIN_TICK / tickSpacing"
            let expr_21804 := checked_div_t_int24(expr_21802, expr_21803)

            /// @src 116:2351:2384  "(TickMath.MIN_TICK / tickSpacing)"
            let expr_21805 := expr_21804
            /// @src 116:2387:2398  "tickSpacing"
            let _19 := var_tickSpacing_21794
            let expr_21806 := _19
            /// @src 116:2351:2398  "(TickMath.MIN_TICK / tickSpacing) * tickSpacing"
            let expr_21807 := checked_mul_t_int24(expr_21805, expr_21806)

            /// @src 116:2335:2398  "int24 minTick = (TickMath.MIN_TICK / tickSpacing) * tickSpacing"
            let var_minTick_21800 := expr_21807
            /// @src 116:2425:2433  "TickMath"
            let expr_21811_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
            /// @src 116:2425:2442  "TickMath.MAX_TICK"
            let expr_21812 := constant_MAX_TICK_5108()
            /// @src 116:2445:2456  "tickSpacing"
            let _21 := var_tickSpacing_21794
            let expr_21813 := _21
            /// @src 116:2425:2456  "TickMath.MAX_TICK / tickSpacing"
            let expr_21814 := checked_div_t_int24(expr_21812, expr_21813)

            /// @src 116:2424:2457  "(TickMath.MAX_TICK / tickSpacing)"
            let expr_21815 := expr_21814
            /// @src 116:2460:2471  "tickSpacing"
            let _22 := var_tickSpacing_21794
            let expr_21816 := _22
            /// @src 116:2424:2471  "(TickMath.MAX_TICK / tickSpacing) * tickSpacing"
            let expr_21817 := checked_mul_t_int24(expr_21815, expr_21816)

            /// @src 116:2408:2471  "int24 maxTick = (TickMath.MAX_TICK / tickSpacing) * tickSpacing"
            let var_maxTick_21810 := expr_21817
            /// @src 116:2507:2514  "maxTick"
            let _23 := var_maxTick_21810
            let expr_21823 := _23
            /// @src 116:2517:2524  "minTick"
            let _24 := var_minTick_21800
            let expr_21824 := _24
            /// @src 116:2507:2524  "maxTick - minTick"
            let expr_21825 := checked_sub_t_int24(expr_21823, expr_21824)

            /// @src 116:2506:2525  "(maxTick - minTick)"
            let expr_21826 := expr_21825
            /// @src 116:2528:2539  "tickSpacing"
            let _25 := var_tickSpacing_21794
            let expr_21827 := _25
            /// @src 116:2506:2539  "(maxTick - minTick) / tickSpacing"
            let expr_21828 := checked_div_t_int24(expr_21826, expr_21827)

            /// @src 116:2499:2540  "uint24((maxTick - minTick) / tickSpacing)"
            let expr_21829 := convert_t_int24_to_t_uint24(expr_21828)
            /// @src 116:2543:2544  "1"
            let expr_21830 := 0x01
            /// @src 116:2499:2544  "uint24((maxTick - minTick) / tickSpacing) + 1"
            let expr_21831 := checked_add_t_uint24(expr_21829, convert_t_rational_1_by_1_to_t_uint24(expr_21830))

            /// @src 116:2481:2544  "uint24 numTicks = uint24((maxTick - minTick) / tickSpacing) + 1"
            let var_numTicks_21820 := expr_21831
            /// @src 116:2561:2578  "type(uint128).max"
            let expr_21837 := 0xffffffffffffffffffffffffffffffff
            /// @src 116:2581:2589  "numTicks"
            let _26 := var_numTicks_21820
            let expr_21838 := _26
            /// @src 116:2561:2589  "type(uint128).max / numTicks"
            let expr_21839 := checked_div_t_uint128(expr_21837, convert_t_uint24_to_t_uint128(expr_21838))

            /// @src 116:2554:2589  "return type(uint128).max / numTicks"
            var__21797 := expr_21839
            leave

        }
        /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

    }
    /// @use-src 88:"uniswap/v3-core-1.0.0/contracts/NoDelegateCall.sol", 90:"uniswap/v3-core-1.0.0/contracts/UniswapV3Pool.sol", 105:"uniswap/v3-core-1.0.0/contracts/libraries/BitMath.sol", 106:"uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint128.sol", 107:"uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint96.sol", 108:"uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol", 109:"uniswap/v3-core-1.0.0/contracts/libraries/LiquidityMath.sol", 110:"uniswap/v3-core-1.0.0/contracts/libraries/LowGasSafeMath.sol", 111:"uniswap/v3-core-1.0.0/contracts/libraries/Oracle.sol", 112:"uniswap/v3-core-1.0.0/contracts/libraries/Position.sol", 113:"uniswap/v3-core-1.0.0/contracts/libraries/SafeCast.sol", 114:"uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol", 115:"uniswap/v3-core-1.0.0/contracts/libraries/SwapMath.sol", 116:"uniswap/v3-core-1.0.0/contracts/libraries/Tick.sol", 117:"uniswap/v3-core-1.0.0/contracts/libraries/TickBitmap.sol", 118:"uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol", 119:"uniswap/v3-core-1.0.0/contracts/libraries/TransferHelper.sol", 120:"uniswap/v3-core-1.0.0/contracts/libraries/UnsafeMath.sol"
    object "UniswapV3Pool_8675_deployed" {
        code {
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x0dfe1681
                {
                    // token0()

                    external_fun_token0_6241()
                }

                case 0x128acb08
                {
                    // swap(address,bool,int256,uint160,bytes)

                    external_fun_swap_8254()
                }

                case 0x1a686502
                {
                    // liquidity()

                    external_fun_liquidity_6299()
                }

                case 0x1ad8b03b
                {
                    // protocolFees()

                    external_fun_protocolFees_6295()
                }

                case 0x252c09d7
                {
                    // observations(uint256)

                    external_fun_observations_6326()
                }

                case 0x32148f67
                {
                    // increaseObservationCardinalityNext(uint16)

                    external_fun_increaseObservationCardinalityNext_6782()
                }

                case 0x3850c7bd
                {
                    // slot0()

                    external_fun_slot0_6277()
                }

                case 0x3c8a7d8d
                {
                    // mint(address,int24,int24,uint128,bytes)

                    external_fun_mint_7309()
                }

                case 0x46141319
                {
                    // feeGrowthGlobal1X128()

                    external_fun_feeGrowthGlobal1X128_6285()
                }

                case 0x490e6cbc
                {
                    // flash(address,uint256,uint256,bytes)

                    external_fun_flash_8499()
                }

                case 0x4f1eb3d8
                {
                    // collect(address,int24,int24,uint128,uint128)

                    external_fun_collect_7414()
                }

                case 0x514ea4bf
                {
                    // positions(bytes32)

                    external_fun_positions_6319()
                }

                case 0x5339c296
                {
                    // tickBitmap(int16)

                    external_fun_tickBitmap_6312()
                }

                case 0x70cf754a
                {
                    // maxLiquidityPerTick()

                    external_fun_maxLiquidityPerTick_6257()
                }

                case 0x8206a4d1
                {
                    // setFeeProtocol(uint8,uint8)

                    external_fun_setFeeProtocol_8570()
                }

                case 0x85b66729
                {
                    // collectProtocol(address,uint128,uint128)

                    external_fun_collectProtocol_8674()
                }

                case 0x883bdbfd
                {
                    // observe(uint32[])

                    external_fun_observe_6742()
                }

                case 0xa34123a7
                {
                    // burn(int24,int24,uint128)

                    external_fun_burn_7518()
                }

                case 0xa38807f2
                {
                    // snapshotCumulativesInside(int24,int24)

                    external_fun_snapshotCumulativesInside_6711()
                }

                case 0xc45a0155
                {
                    // factory()

                    external_fun_factory_6237()
                }

                case 0xd0c93a7c
                {
                    // tickSpacing()

                    external_fun_tickSpacing_6253()
                }

                case 0xd21220a7
                {
                    // token1()

                    external_fun_token1_6245()
                }

                case 0xddca3f43
                {
                    // fee()

                    external_fun_fee_6249()
                }

                case 0xf3058399
                {
                    // feeGrowthGlobal0X128()

                    external_fun_feeGrowthGlobal0X128_6281()
                }

                case 0xf30dba93
                {
                    // ticks(int24)

                    external_fun_ticks_6306()
                }

                case 0xf637731d
                {
                    // initialize(uint160)

                    external_fun_initialize_6832()
                }

                default {}
            }

            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            /// @ast-id 6241
            /// @src 90:1552:1592  "address public immutable override token0"
            function getter_fun_token0_6241() -> rval {

                rval := loadimmutable("6241")

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_token0_6241() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_token0_6241()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function abi_decode_t_address(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_address(value)
            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function validator_revert_t_bool(value) {
                if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
            }

            function abi_decode_t_bool(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bool(value)
            }

            function cleanup_t_int256(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_int256(value) {
                if iszero(eq(value, cleanup_t_int256(value))) { revert(0, 0) }
            }

            function abi_decode_t_int256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_int256(value)
            }

            function validator_revert_t_uint160(value) {
                if iszero(eq(value, cleanup_t_uint160(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint160(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint160(value)
            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() {
                revert(0, 0)
            }

            function revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() {
                revert(0, 0)
            }

            // bytes
            function abi_decode_t_bytes_calldata_ptr(offset, end) -> arrayPos, length {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                length := calldataload(offset)
                if gt(length, 0xffffffffffffffff) { revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() }
                arrayPos := add(offset, 0x20)
                if gt(add(arrayPos, mul(length, 0x01)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
            }

            function abi_decode_tuple_t_addresst_boolt_int256t_uint160t_bytes_calldata_ptr(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5 {
                if slt(sub(dataEnd, headStart), 160) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_int256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_uint160(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 128))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value4, value5 := abi_decode_t_bytes_calldata_ptr(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_int256_to_t_int256_fromStack(value, pos) {
                mstore(pos, cleanup_t_int256(value))
            }

            function abi_encode_tuple_t_int256_t_int256__to_t_int256_t_int256__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_int256_to_t_int256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int256_to_t_int256_fromStack(value1,  add(headStart, 32))

            }

            function external_fun_swap_8254() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3, param_4, param_5 :=  abi_decode_tuple_t_addresst_boolt_int256t_uint160t_bytes_calldata_ptr(4, calldatasize())
                let ret_0, ret_1 :=  fun_swap_8254(param_0, param_1, param_2, param_3, param_4, param_5)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_int256_t_int256__to_t_int256_t_int256__fromStack(memPos , ret_0, ret_1)
                return(memPos, sub(memEnd, memPos))

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function cleanup_from_storage_t_uint128(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_dynamict_uint128(slot_value, offset) -> value {
                value := cleanup_from_storage_t_uint128(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_uint128(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_uint128(sload(slot), offset)

            }

            /// @ast-id 6299
            /// @src 90:3213:3246  "uint128 public override liquidity"
            function getter_fun_liquidity_6299() -> ret {

                let slot := 4
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint128(slot, offset)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function cleanup_t_uint128(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffff)
            }

            function abi_encode_t_uint128_to_t_uint128_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint128(value))
            }

            function abi_encode_tuple_t_uint128__to_t_uint128__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint128_to_t_uint128_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_liquidity_6299() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_liquidity_6299()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint128__to_t_uint128__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function extract_from_storage_value_offset_0_t_uint128(slot_value) -> value {
                value := cleanup_from_storage_t_uint128(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint128(slot) -> value {
                value := extract_from_storage_value_offset_0_t_uint128(sload(slot))

            }

            function shift_right_128_unsigned(value) -> newValue {
                newValue :=

                shr(128, value)

            }

            function extract_from_storage_value_offset_16_t_uint128(slot_value) -> value {
                value := cleanup_from_storage_t_uint128(shift_right_128_unsigned(slot_value))
            }

            function read_from_storage_split_offset_16_t_uint128(slot) -> value {
                value := extract_from_storage_value_offset_16_t_uint128(sload(slot))

            }

            /// @ast-id 6295
            /// @src 90:3125:3166  "ProtocolFees public override protocolFees"
            function getter_fun_protocolFees_6295() -> ret_0, ret_1 {

                let slot := 3
                let offset := 0

                ret_0 := read_from_storage_split_offset_0_t_uint128(add(slot, 0))

                ret_1 := read_from_storage_split_offset_16_t_uint128(add(slot, 0))

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function abi_encode_tuple_t_uint128_t_uint128__to_t_uint128_t_uint128__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint128_to_t_uint128_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint128_to_t_uint128_fromStack(value1,  add(headStart, 32))

            }

            function external_fun_protocolFees_6295() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0, ret_1 :=  getter_fun_protocolFees_6295()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint128_t_uint128__to_t_uint128_t_uint128__fromStack(memPos , ret_0, ret_1)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
            }

            function array_length_t_array$_t_struct$_Observation_$19979_storage_$65535_storage(value) -> length {

                length := 0xffff

            }

            function array_dataslot_t_array$_t_struct$_Observation_$19979_storage_$65535_storage(ptr) -> data {
                data := ptr

            }

            function array_dataslot_t_bytes_storage_ptr(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function long_byte_array_index_access_no_checks(array, index) -> slot, offset {

                offset := sub(31, mod(index, 0x20))
                let dataArea := array_dataslot_t_bytes_storage_ptr(array)
                slot := add(dataArea, div(index, 0x20))

            }

            function storage_array_index_access_t_array$_t_struct$_Observation_$19979_storage_$65535_storage(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_struct$_Observation_$19979_storage_$65535_storage(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_struct$_Observation_$19979_storage_$65535_storage(array)
                slot := add(dataArea, mul(index, 1))
                offset := 0

            }

            function cleanup_from_storage_t_uint32(value) -> cleaned {
                cleaned := and(value, 0xffffffff)
            }

            function extract_from_storage_value_offset_0_t_uint32(slot_value) -> value {
                value := cleanup_from_storage_t_uint32(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint32(slot) -> value {
                value := extract_from_storage_value_offset_0_t_uint32(sload(slot))

            }

            function shift_right_32_unsigned(value) -> newValue {
                newValue :=

                shr(32, value)

            }

            function cleanup_from_storage_t_int56(value) -> cleaned {
                cleaned := signextend(6, value)
            }

            function extract_from_storage_value_offset_4_t_int56(slot_value) -> value {
                value := cleanup_from_storage_t_int56(shift_right_32_unsigned(slot_value))
            }

            function read_from_storage_split_offset_4_t_int56(slot) -> value {
                value := extract_from_storage_value_offset_4_t_int56(sload(slot))

            }

            function shift_right_88_unsigned(value) -> newValue {
                newValue :=

                shr(88, value)

            }

            function cleanup_from_storage_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_11_t_uint160(slot_value) -> value {
                value := cleanup_from_storage_t_uint160(shift_right_88_unsigned(slot_value))
            }

            function read_from_storage_split_offset_11_t_uint160(slot) -> value {
                value := extract_from_storage_value_offset_11_t_uint160(sload(slot))

            }

            function shift_right_248_unsigned(value) -> newValue {
                newValue :=

                shr(248, value)

            }

            function cleanup_from_storage_t_bool(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function extract_from_storage_value_offset_31_t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_248_unsigned(slot_value))
            }

            function read_from_storage_split_offset_31_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_31_t_bool(sload(slot))

            }

            /// @ast-id 6326
            /// @src 90:3591:3645  "Oracle.Observation[65535] public override observations"
            function getter_fun_observations_6326(key_0) -> ret_0, ret_1, ret_2, ret_3 {

                let slot := 8
                let offset := 0

                if iszero(lt(key_0, array_length_t_array$_t_struct$_Observation_$19979_storage_$65535_storage(slot))) { revert(0, 0) }

                slot, offset := storage_array_index_access_t_array$_t_struct$_Observation_$19979_storage_$65535_storage(slot, key_0)

                ret_0 := read_from_storage_split_offset_0_t_uint32(add(slot, 0))

                ret_1 := read_from_storage_split_offset_4_t_int56(add(slot, 0))

                ret_2 := read_from_storage_split_offset_11_t_uint160(add(slot, 0))

                ret_3 := read_from_storage_split_offset_31_t_bool(add(slot, 0))

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function cleanup_t_uint32(value) -> cleaned {
                cleaned := and(value, 0xffffffff)
            }

            function abi_encode_t_uint32_to_t_uint32_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint32(value))
            }

            function cleanup_t_int56(value) -> cleaned {
                cleaned := signextend(6, value)
            }

            function abi_encode_t_int56_to_t_int56_fromStack(value, pos) {
                mstore(pos, cleanup_t_int56(value))
            }

            function abi_encode_t_uint160_to_t_uint160_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint160(value))
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_tuple_t_uint32_t_int56_t_uint160_t_bool__to_t_uint32_t_int56_t_uint160_t_bool__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_uint32_to_t_uint32_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int56_to_t_int56_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint160_to_t_uint160_fromStack(value2,  add(headStart, 64))

                abi_encode_t_bool_to_t_bool_fromStack(value3,  add(headStart, 96))

            }

            function external_fun_observations_6326() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0, ret_1, ret_2, ret_3 :=  getter_fun_observations_6326(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint32_t_int56_t_uint160_t_bool__to_t_uint32_t_int56_t_uint160_t_bool__fromStack(memPos , ret_0, ret_1, ret_2, ret_3)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_uint16(value) -> cleaned {
                cleaned := and(value, 0xffff)
            }

            function validator_revert_t_uint16(value) {
                if iszero(eq(value, cleanup_t_uint16(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint16(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint16(value)
            }

            function abi_decode_tuple_t_uint16(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint16(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_increaseObservationCardinalityNext_6782() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint16(4, calldatasize())
                fun_increaseObservationCardinalityNext_6782(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function extract_from_storage_value_offset_0_t_uint160(slot_value) -> value {
                value := cleanup_from_storage_t_uint160(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint160(slot) -> value {
                value := extract_from_storage_value_offset_0_t_uint160(sload(slot))

            }

            function shift_right_160_unsigned(value) -> newValue {
                newValue :=

                shr(160, value)

            }

            function cleanup_from_storage_t_int24(value) -> cleaned {
                cleaned := signextend(2, value)
            }

            function extract_from_storage_value_offset_20_t_int24(slot_value) -> value {
                value := cleanup_from_storage_t_int24(shift_right_160_unsigned(slot_value))
            }

            function read_from_storage_split_offset_20_t_int24(slot) -> value {
                value := extract_from_storage_value_offset_20_t_int24(sload(slot))

            }

            function shift_right_184_unsigned(value) -> newValue {
                newValue :=

                shr(184, value)

            }

            function cleanup_from_storage_t_uint16(value) -> cleaned {
                cleaned := and(value, 0xffff)
            }

            function extract_from_storage_value_offset_23_t_uint16(slot_value) -> value {
                value := cleanup_from_storage_t_uint16(shift_right_184_unsigned(slot_value))
            }

            function read_from_storage_split_offset_23_t_uint16(slot) -> value {
                value := extract_from_storage_value_offset_23_t_uint16(sload(slot))

            }

            function shift_right_200_unsigned(value) -> newValue {
                newValue :=

                shr(200, value)

            }

            function extract_from_storage_value_offset_25_t_uint16(slot_value) -> value {
                value := cleanup_from_storage_t_uint16(shift_right_200_unsigned(slot_value))
            }

            function read_from_storage_split_offset_25_t_uint16(slot) -> value {
                value := extract_from_storage_value_offset_25_t_uint16(sload(slot))

            }

            function shift_right_216_unsigned(value) -> newValue {
                newValue :=

                shr(216, value)

            }

            function extract_from_storage_value_offset_27_t_uint16(slot_value) -> value {
                value := cleanup_from_storage_t_uint16(shift_right_216_unsigned(slot_value))
            }

            function read_from_storage_split_offset_27_t_uint16(slot) -> value {
                value := extract_from_storage_value_offset_27_t_uint16(sload(slot))

            }

            function shift_right_232_unsigned(value) -> newValue {
                newValue :=

                shr(232, value)

            }

            function cleanup_from_storage_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function extract_from_storage_value_offset_29_t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_232_unsigned(slot_value))
            }

            function read_from_storage_split_offset_29_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_29_t_uint8(sload(slot))

            }

            function shift_right_240_unsigned(value) -> newValue {
                newValue :=

                shr(240, value)

            }

            function extract_from_storage_value_offset_30_t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_240_unsigned(slot_value))
            }

            function read_from_storage_split_offset_30_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_30_t_bool(sload(slot))

            }

            /// @ast-id 6277
            /// @src 90:2734:2761  "Slot0 public override slot0"
            function getter_fun_slot0_6277() -> ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6 {

                let slot := 0
                let offset := 0

                ret_0 := read_from_storage_split_offset_0_t_uint160(add(slot, 0))

                ret_1 := read_from_storage_split_offset_20_t_int24(add(slot, 0))

                ret_2 := read_from_storage_split_offset_23_t_uint16(add(slot, 0))

                ret_3 := read_from_storage_split_offset_25_t_uint16(add(slot, 0))

                ret_4 := read_from_storage_split_offset_27_t_uint16(add(slot, 0))

                ret_5 := read_from_storage_split_offset_29_t_uint8(add(slot, 0))

                ret_6 := read_from_storage_split_offset_30_t_bool(add(slot, 0))

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function cleanup_t_int24(value) -> cleaned {
                cleaned := signextend(2, value)
            }

            function abi_encode_t_int24_to_t_int24_fromStack(value, pos) {
                mstore(pos, cleanup_t_int24(value))
            }

            function abi_encode_t_uint16_to_t_uint16_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint16(value))
            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function abi_encode_t_uint8_to_t_uint8_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
            }

            function abi_encode_tuple_t_uint160_t_int24_t_uint16_t_uint16_t_uint16_t_uint8_t_bool__to_t_uint160_t_int24_t_uint16_t_uint16_t_uint16_t_uint8_t_bool__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6) -> tail {
                tail := add(headStart, 224)

                abi_encode_t_uint160_to_t_uint160_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int24_to_t_int24_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint16_to_t_uint16_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint16_to_t_uint16_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint16_to_t_uint16_fromStack(value4,  add(headStart, 128))

                abi_encode_t_uint8_to_t_uint8_fromStack(value5,  add(headStart, 160))

                abi_encode_t_bool_to_t_bool_fromStack(value6,  add(headStart, 192))

            }

            function external_fun_slot0_6277() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6 :=  getter_fun_slot0_6277()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint160_t_int24_t_uint16_t_uint16_t_uint16_t_uint8_t_bool__to_t_uint160_t_int24_t_uint16_t_uint16_t_uint16_t_uint8_t_bool__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6)
                return(memPos, sub(memEnd, memPos))

            }

            function validator_revert_t_int24(value) {
                if iszero(eq(value, cleanup_t_int24(value))) { revert(0, 0) }
            }

            function abi_decode_t_int24(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_int24(value)
            }

            function validator_revert_t_uint128(value) {
                if iszero(eq(value, cleanup_t_uint128(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint128(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint128(value)
            }

            function abi_decode_tuple_t_addresst_int24t_int24t_uint128t_bytes_calldata_ptr(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5 {
                if slt(sub(dataEnd, headStart), 160) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_int24(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_int24(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_uint128(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 128))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value4, value5 := abi_decode_t_bytes_calldata_ptr(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

            }

            function external_fun_mint_7309() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3, param_4, param_5 :=  abi_decode_tuple_t_addresst_int24t_int24t_uint128t_bytes_calldata_ptr(4, calldatasize())
                let ret_0, ret_1 :=  fun_mint_7309(param_0, param_1, param_2, param_3, param_4, param_5)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(memPos , ret_0, ret_1)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_dynamict_uint256(slot_value, offset) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_uint256(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_uint256(sload(slot), offset)

            }

            /// @ast-id 6285
            /// @src 90:2898:2942  "uint256 public override feeGrowthGlobal1X128"
            function getter_fun_feeGrowthGlobal1X128_6285() -> ret {

                let slot := 2
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_feeGrowthGlobal1X128_6285() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_feeGrowthGlobal1X128_6285()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_uint256t_uint256t_bytes_calldata_ptr(headStart, dataEnd) -> value0, value1, value2, value3, value4 {
                if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 96))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value3, value4 := abi_decode_t_bytes_calldata_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_flash_8499() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3, param_4 :=  abi_decode_tuple_t_addresst_uint256t_uint256t_bytes_calldata_ptr(4, calldatasize())
                fun_flash_8499(param_0, param_1, param_2, param_3, param_4)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_int24t_int24t_uint128t_uint128(headStart, dataEnd) -> value0, value1, value2, value3, value4 {
                if slt(sub(dataEnd, headStart), 160) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_int24(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_int24(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_uint128(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 128

                    value4 := abi_decode_t_uint128(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_collect_7414() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3, param_4 :=  abi_decode_tuple_t_addresst_int24t_int24t_uint128t_uint128(4, calldatasize())
                let ret_0, ret_1 :=  fun_collect_7414(param_0, param_1, param_2, param_3, param_4)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint128_t_uint128__to_t_uint128_t_uint128__fromStack(memPos , ret_0, ret_1)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_bytes32(value) {
                if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
            }

            function abi_decode_t_bytes32(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bytes32(value)
            }

            function abi_decode_tuple_t_bytes32(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

            }

            function convert_t_bytes32_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(value)
            }

            function mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Info_$20754_storage_$_of_t_bytes32(slot , key) -> dataSlot {
                mstore(0, convert_t_bytes32_to_t_bytes32(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function extract_from_storage_value_offset_0_t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0_t_uint256(sload(slot))

            }

            /// @ast-id 6319
            /// @src 90:3486:3545  "mapping(bytes32 => Position.Info) public override positions"
            function getter_fun_positions_6319(key_0) -> ret_0, ret_1, ret_2, ret_3, ret_4 {

                let slot := 7
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Info_$20754_storage_$_of_t_bytes32(slot, key_0)

                ret_0 := read_from_storage_split_offset_0_t_uint128(add(slot, 0))

                ret_1 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))

                ret_2 := read_from_storage_split_offset_0_t_uint256(add(slot, 2))

                ret_3 := read_from_storage_split_offset_0_t_uint128(add(slot, 3))

                ret_4 := read_from_storage_split_offset_16_t_uint128(add(slot, 3))

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function abi_encode_tuple_t_uint128_t_uint256_t_uint256_t_uint128_t_uint128__to_t_uint128_t_uint256_t_uint256_t_uint128_t_uint128__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_uint128_to_t_uint128_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint128_to_t_uint128_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint128_to_t_uint128_fromStack(value4,  add(headStart, 128))

            }

            function external_fun_positions_6319() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bytes32(4, calldatasize())
                let ret_0, ret_1, ret_2, ret_3, ret_4 :=  getter_fun_positions_6319(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint128_t_uint256_t_uint256_t_uint128_t_uint128__to_t_uint128_t_uint256_t_uint256_t_uint128_t_uint128__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_int16(value) -> cleaned {
                cleaned := signextend(1, value)
            }

            function validator_revert_t_int16(value) {
                if iszero(eq(value, cleanup_t_int16(value))) { revert(0, 0) }
            }

            function abi_decode_t_int16(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_int16(value)
            }

            function abi_decode_tuple_t_int16(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_int16(add(headStart, offset), dataEnd)
                }

            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_int16_to_t_int16(value) -> converted {
                converted := cleanup_t_int16(identity(cleanup_t_int16(value)))
            }

            function mapping_index_access_t_mapping$_t_int16_$_t_uint256_$_of_t_int16(slot , key) -> dataSlot {
                mstore(0, convert_t_int16_to_t_int16(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @ast-id 6312
            /// @src 90:3388:3440  "mapping(int16 => uint256) public override tickBitmap"
            function getter_fun_tickBitmap_6312(key_0) -> ret {

                let slot := 6
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_int16_$_t_uint256_$_of_t_int16(slot, key_0)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function external_fun_tickBitmap_6312() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_int16(4, calldatasize())
                let ret_0 :=  getter_fun_tickBitmap_6312(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 6257
            /// @src 90:1917:1970  "uint128 public immutable override maxLiquidityPerTick"
            function getter_fun_maxLiquidityPerTick_6257() -> rval {

                rval := loadimmutable("6257")

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function external_fun_maxLiquidityPerTick_6257() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_maxLiquidityPerTick_6257()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint128__to_t_uint128__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function validator_revert_t_uint8(value) {
                if iszero(eq(value, cleanup_t_uint8(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint8(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint8(value)
            }

            function abi_decode_tuple_t_uint8t_uint8(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_setFeeProtocol_8570() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_uint8t_uint8(4, calldatasize())
                fun_setFeeProtocol_8570(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_uint128t_uint128(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint128(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint128(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_collectProtocol_8674() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_uint128t_uint128(4, calldatasize())
                let ret_0, ret_1 :=  fun_collectProtocol_8674(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint128_t_uint128__to_t_uint128_t_uint128__fromStack(memPos , ret_0, ret_1)
                return(memPos, sub(memEnd, memPos))

            }

            // uint32[]
            function abi_decode_t_array$_t_uint32_$dyn_calldata_ptr(offset, end) -> arrayPos, length {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                length := calldataload(offset)
                if gt(length, 0xffffffffffffffff) { revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() }
                arrayPos := add(offset, 0x20)
                if gt(add(arrayPos, mul(length, 0x20)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
            }

            function abi_decode_tuple_t_array$_t_uint32_$dyn_calldata_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0, value1 := abi_decode_t_array$_t_uint32_$dyn_calldata_ptr(add(headStart, offset), dataEnd)
                }

            }

            function array_length_t_array$_t_int56_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_array$_t_int56_$dyn_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_dataslot_t_array$_t_int56_$dyn_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function abi_encode_t_int56_to_t_int56(value, pos) {
                mstore(pos, cleanup_t_int56(value))
            }

            function abi_encodeUpdatedPos_t_int56_to_t_int56(value0, pos) -> updatedPos {
                abi_encode_t_int56_to_t_int56(value0, pos)
                updatedPos := add(pos, 0x20)
            }

            function array_nextElement_t_array$_t_int56_$dyn_memory_ptr(ptr) -> next {
                next := add(ptr, 0x20)
            }

            // int56[] -> int56[]
            function abi_encode_t_array$_t_int56_$dyn_memory_ptr_to_t_array$_t_int56_$dyn_memory_ptr_fromStack(value, pos)  -> end  {
                let length := array_length_t_array$_t_int56_$dyn_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_array$_t_int56_$dyn_memory_ptr_fromStack(pos, length)
                let baseRef := array_dataslot_t_array$_t_int56_$dyn_memory_ptr(value)
                let srcPtr := baseRef
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    let elementValue0 := mload(srcPtr)
                    pos := abi_encodeUpdatedPos_t_int56_to_t_int56(elementValue0, pos)
                    srcPtr := array_nextElement_t_array$_t_int56_$dyn_memory_ptr(srcPtr)
                }
                end := pos
            }

            function array_length_t_array$_t_uint160_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_array$_t_uint160_$dyn_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_dataslot_t_array$_t_uint160_$dyn_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function abi_encode_t_uint160_to_t_uint160(value, pos) {
                mstore(pos, cleanup_t_uint160(value))
            }

            function abi_encodeUpdatedPos_t_uint160_to_t_uint160(value0, pos) -> updatedPos {
                abi_encode_t_uint160_to_t_uint160(value0, pos)
                updatedPos := add(pos, 0x20)
            }

            function array_nextElement_t_array$_t_uint160_$dyn_memory_ptr(ptr) -> next {
                next := add(ptr, 0x20)
            }

            // uint160[] -> uint160[]
            function abi_encode_t_array$_t_uint160_$dyn_memory_ptr_to_t_array$_t_uint160_$dyn_memory_ptr_fromStack(value, pos)  -> end  {
                let length := array_length_t_array$_t_uint160_$dyn_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_array$_t_uint160_$dyn_memory_ptr_fromStack(pos, length)
                let baseRef := array_dataslot_t_array$_t_uint160_$dyn_memory_ptr(value)
                let srcPtr := baseRef
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    let elementValue0 := mload(srcPtr)
                    pos := abi_encodeUpdatedPos_t_uint160_to_t_uint160(elementValue0, pos)
                    srcPtr := array_nextElement_t_array$_t_uint160_$dyn_memory_ptr(srcPtr)
                }
                end := pos
            }

            function abi_encode_tuple_t_array$_t_int56_$dyn_memory_ptr_t_array$_t_uint160_$dyn_memory_ptr__to_t_array$_t_int56_$dyn_memory_ptr_t_array$_t_uint160_$dyn_memory_ptr__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_array$_t_int56_$dyn_memory_ptr_to_t_array$_t_int56_$dyn_memory_ptr_fromStack(value0,  tail)

                mstore(add(headStart, 32), sub(tail, headStart))
                tail := abi_encode_t_array$_t_uint160_$dyn_memory_ptr_to_t_array$_t_uint160_$dyn_memory_ptr_fromStack(value1,  tail)

            }

            function external_fun_observe_6742() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_array$_t_uint32_$dyn_calldata_ptr(4, calldatasize())
                let ret_0, ret_1 :=  fun_observe_6742(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_array$_t_int56_$dyn_memory_ptr_t_array$_t_uint160_$dyn_memory_ptr__to_t_array$_t_int56_$dyn_memory_ptr_t_array$_t_uint160_$dyn_memory_ptr__fromStack(memPos , ret_0, ret_1)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_int24t_int24t_uint128(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_int24(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_int24(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint128(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_burn_7518() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_int24t_int24t_uint128(4, calldatasize())
                let ret_0, ret_1 :=  fun_burn_7518(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(memPos , ret_0, ret_1)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_int24t_int24(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_int24(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_int24(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple_t_int56_t_uint160_t_uint32__to_t_int56_t_uint160_t_uint32__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_int56_to_t_int56_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint160_to_t_uint160_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint32_to_t_uint32_fromStack(value2,  add(headStart, 64))

            }

            function external_fun_snapshotCumulativesInside_6711() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_int24t_int24(4, calldatasize())
                let ret_0, ret_1, ret_2 :=  fun_snapshotCumulativesInside_6711(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_int56_t_uint160_t_uint32__to_t_int56_t_uint160_t_uint32__fromStack(memPos , ret_0, ret_1, ret_2)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 6237
            /// @src 90:1460:1501  "address public immutable override factory"
            function getter_fun_factory_6237() -> rval {

                rval := loadimmutable("6237")

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function external_fun_factory_6237() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_factory_6237()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 6253
            /// @src 90:1822:1865  "int24 public immutable override tickSpacing"
            function getter_fun_tickSpacing_6253() -> rval {

                rval := loadimmutable("6253")

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function abi_encode_tuple_t_int24__to_t_int24__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_int24_to_t_int24_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_tickSpacing_6253() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_tickSpacing_6253()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_int24__to_t_int24__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 6245
            /// @src 90:1643:1683  "address public immutable override token1"
            function getter_fun_token1_6245() -> rval {

                rval := loadimmutable("6245")

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function external_fun_token1_6245() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_token1_6245()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 6249
            /// @src 90:1734:1770  "uint24 public immutable override fee"
            function getter_fun_fee_6249() -> rval {

                rval := loadimmutable("6249")

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function cleanup_t_uint24(value) -> cleaned {
                cleaned := and(value, 0xffffff)
            }

            function abi_encode_t_uint24_to_t_uint24_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint24(value))
            }

            function abi_encode_tuple_t_uint24__to_t_uint24__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint24_to_t_uint24_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_fee_6249() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_fee_6249()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint24__to_t_uint24__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 6281
            /// @src 90:2808:2852  "uint256 public override feeGrowthGlobal0X128"
            function getter_fun_feeGrowthGlobal0X128_6281() -> ret {

                let slot := 1
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function external_fun_feeGrowthGlobal0X128_6281() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_feeGrowthGlobal0X128_6281()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_int24(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_int24(add(headStart, offset), dataEnd)
                }

            }

            function convert_t_int24_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_int24(value)))
            }

            function mapping_index_access_t_mapping$_t_int24_$_t_struct$_Info_$21791_storage_$_of_t_int24(slot , key) -> dataSlot {
                mstore(0, convert_t_int24_to_t_int24(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function cleanup_from_storage_t_int128(value) -> cleaned {
                cleaned := signextend(15, value)
            }

            function extract_from_storage_value_offset_16_t_int128(slot_value) -> value {
                value := cleanup_from_storage_t_int128(shift_right_128_unsigned(slot_value))
            }

            function read_from_storage_split_offset_16_t_int128(slot) -> value {
                value := extract_from_storage_value_offset_16_t_int128(sload(slot))

            }

            function extract_from_storage_value_offset_0_t_int56(slot_value) -> value {
                value := cleanup_from_storage_t_int56(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_int56(slot) -> value {
                value := extract_from_storage_value_offset_0_t_int56(sload(slot))

            }

            function shift_right_56_unsigned(value) -> newValue {
                newValue :=

                shr(56, value)

            }

            function extract_from_storage_value_offset_7_t_uint160(slot_value) -> value {
                value := cleanup_from_storage_t_uint160(shift_right_56_unsigned(slot_value))
            }

            function read_from_storage_split_offset_7_t_uint160(slot) -> value {
                value := extract_from_storage_value_offset_7_t_uint160(sload(slot))

            }

            function extract_from_storage_value_offset_27_t_uint32(slot_value) -> value {
                value := cleanup_from_storage_t_uint32(shift_right_216_unsigned(slot_value))
            }

            function read_from_storage_split_offset_27_t_uint32(slot) -> value {
                value := extract_from_storage_value_offset_27_t_uint32(sload(slot))

            }

            /// @ast-id 6306
            /// @src 90:3293:3342  "mapping(int24 => Tick.Info) public override ticks"
            function getter_fun_ticks_6306(key_0) -> ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7 {

                let slot := 5
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_int24_$_t_struct$_Info_$21791_storage_$_of_t_int24(slot, key_0)

                ret_0 := read_from_storage_split_offset_0_t_uint128(add(slot, 0))

                ret_1 := read_from_storage_split_offset_16_t_int128(add(slot, 0))

                ret_2 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))

                ret_3 := read_from_storage_split_offset_0_t_uint256(add(slot, 2))

                ret_4 := read_from_storage_split_offset_0_t_int56(add(slot, 3))

                ret_5 := read_from_storage_split_offset_7_t_uint160(add(slot, 3))

                ret_6 := read_from_storage_split_offset_27_t_uint32(add(slot, 3))

                ret_7 := read_from_storage_split_offset_31_t_bool(add(slot, 3))

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function cleanup_t_int128(value) -> cleaned {
                cleaned := signextend(15, value)
            }

            function abi_encode_t_int128_to_t_int128_fromStack(value, pos) {
                mstore(pos, cleanup_t_int128(value))
            }

            function abi_encode_tuple_t_uint128_t_int128_t_uint256_t_uint256_t_int56_t_uint160_t_uint32_t_bool__to_t_uint128_t_int128_t_uint256_t_uint256_t_int56_t_uint160_t_uint32_t_bool__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6, value7) -> tail {
                tail := add(headStart, 256)

                abi_encode_t_uint128_to_t_uint128_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int128_to_t_int128_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_int56_to_t_int56_fromStack(value4,  add(headStart, 128))

                abi_encode_t_uint160_to_t_uint160_fromStack(value5,  add(headStart, 160))

                abi_encode_t_uint32_to_t_uint32_fromStack(value6,  add(headStart, 192))

                abi_encode_t_bool_to_t_bool_fromStack(value7,  add(headStart, 224))

            }

            function external_fun_ticks_6306() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_int24(4, calldatasize())
                let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7 :=  getter_fun_ticks_6306(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint128_t_int128_t_uint256_t_uint256_t_int56_t_uint160_t_uint32_t_bool__to_t_uint128_t_int128_t_uint256_t_uint256_t_int56_t_uint160_t_uint32_t_bool__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_uint160(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint160(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_initialize_6832() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint160(4, calldatasize())
                fun_initialize_6832(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_int256() -> ret {
                ret := 0
            }

            /// @ast-id 6166
            /// @src 88:1037:1113  "modifier noDelegateCall() {..."
            function modifier_noDelegateCall_7576(var_amount0_7578, var_amount1_7580, var_recipient_7564, var_zeroForOne_7566, var_amountSpecified_7568, var_sqrtPriceLimitX96_7570, var_data_7572_offset, var_data_7572_length) -> _3, _4 {
                _3 := var_amount0_7578
                _4 := var_amount1_7580

                fun_checkNotDelegateCall_6158()
                /// @src 88:1105:1106  "_"
                _3, _4 := fun_swap_8254_inner(var_amount0_7578, var_amount1_7580, var_recipient_7564, var_zeroForOne_7566, var_amountSpecified_7568, var_sqrtPriceLimitX96_7570, var_data_7572_offset, var_data_7572_length)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function store_literal_in_memory_327b9f048a93c937a955c6a689ad68cff8daabdfc5fb8cf29fcae1bac2ddb4d5(memPtr) {

                mstore(add(memPtr, 0), "AS")

            }

            function abi_encode_t_stringliteral_327b9f048a93c937a955c6a689ad68cff8daabdfc5fb8cf29fcae1bac2ddb4d5_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_327b9f048a93c937a955c6a689ad68cff8daabdfc5fb8cf29fcae1bac2ddb4d5(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_327b9f048a93c937a955c6a689ad68cff8daabdfc5fb8cf29fcae1bac2ddb4d5__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_327b9f048a93c937a955c6a689ad68cff8daabdfc5fb8cf29fcae1bac2ddb4d5_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_327b9f048a93c937a955c6a689ad68cff8daabdfc5fb8cf29fcae1bac2ddb4d5(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_327b9f048a93c937a955c6a689ad68cff8daabdfc5fb8cf29fcae1bac2ddb4d5__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function write_to_memory_t_uint160(memPtr, value) {
                mstore(memPtr, cleanup_t_uint160(value))
            }

            function write_to_memory_t_int24(memPtr, value) {
                mstore(memPtr, cleanup_t_int24(value))
            }

            function write_to_memory_t_uint16(memPtr, value) {
                mstore(memPtr, cleanup_t_uint16(value))
            }

            function write_to_memory_t_uint8(memPtr, value) {
                mstore(memPtr, cleanup_t_uint8(value))
            }

            function write_to_memory_t_bool(memPtr, value) {
                mstore(memPtr, cleanup_t_bool(value))
            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function panic_error_0x41() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x41)
                revert(0, 0x24)
            }

            function finalize_allocation(memPtr, size) {
                let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }

            function allocate_memory(size) -> memPtr {
                memPtr := allocate_unbounded()
                finalize_allocation(memPtr, size)
            }

            function allocate_memory_struct_t_struct$_Slot0_$6272_memory_ptr() -> memPtr {
                memPtr := allocate_memory(224)
            }

            function read_from_storage_reference_type_t_struct$_Slot0_$6272_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_Slot0_$6272_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint160(add(slot, 0))
                    write_to_memory_t_uint160(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_20_t_int24(add(slot, 0))
                    write_to_memory_t_int24(add(value, 32), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_23_t_uint16(add(slot, 0))
                    write_to_memory_t_uint16(add(value, 64), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_25_t_uint16(add(slot, 0))
                    write_to_memory_t_uint16(add(value, 96), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_27_t_uint16(add(slot, 0))
                    write_to_memory_t_uint16(add(value, 128), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_29_t_uint8(add(slot, 0))
                    write_to_memory_t_uint8(add(value, 160), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_30_t_bool(add(slot, 0))
                    write_to_memory_t_bool(add(value, 192), memberValue_0)
                }

            }

            function convert_t_struct$_Slot0_$6272_storage_to_t_struct$_Slot0_$6272_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_Slot0_$6272_memory_ptr(value)

            }

            function read_from_memoryt_bool(ptr) -> returnValue {

                let value := cleanup_t_bool(mload(ptr))

                returnValue :=

                value

            }

            function store_literal_in_memory_e01ebc6b01bbf458b3d355b6e649efe64599751670c5d19175619893ecf97529(memPtr) {

                mstore(add(memPtr, 0), "LOK")

            }

            function abi_encode_t_stringliteral_e01ebc6b01bbf458b3d355b6e649efe64599751670c5d19175619893ecf97529_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 3)
                store_literal_in_memory_e01ebc6b01bbf458b3d355b6e649efe64599751670c5d19175619893ecf97529(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_e01ebc6b01bbf458b3d355b6e649efe64599751670c5d19175619893ecf97529__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_e01ebc6b01bbf458b3d355b6e649efe64599751670c5d19175619893ecf97529_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_e01ebc6b01bbf458b3d355b6e649efe64599751670c5d19175619893ecf97529(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_e01ebc6b01bbf458b3d355b6e649efe64599751670c5d19175619893ecf97529__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function read_from_memoryt_uint160(ptr) -> returnValue {

                let value := cleanup_t_uint160(mload(ptr))

                returnValue :=

                value

            }

            function cleanup_t_rational_1461446703485210103287273052203988822378723970342_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1461446703485210103287273052203988822378723970342_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_1461446703485210103287273052203988822378723970342_by_1(value)))
            }

            /// @src 118:991:1083  "uint160 internal constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342"
            function constant_MAX_SQRT_RATIO_5116() -> ret {
                /// @src 118:1034:1083  "1461446703485210103287273052203988822378723970342"
                let expr_5115 := 0xfffd8963efd1fc6a506488495d951d5263988d26
                let _18 := convert_t_rational_1461446703485210103287273052203988822378723970342_by_1_to_t_uint160(expr_5115)

                ret := _18
            }

            function cleanup_t_rational_4295128739_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4295128739_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_4295128739_by_1(value)))
            }

            /// @src 118:811:864  "uint160 internal constant MIN_SQRT_RATIO = 4295128739"
            function constant_MIN_SQRT_RATIO_5112() -> ret {
                /// @src 118:854:864  "4295128739"
                let expr_5111 := 0x01000276a3
                let _24 := convert_t_rational_4295128739_by_1_to_t_uint160(expr_5111)

                ret := _24
            }

            function store_literal_in_memory_a6cefa06f60ee34e0c8820e8870f7587ccd717d8768771226759d789a9582094(memPtr) {

                mstore(add(memPtr, 0), "SPL")

            }

            function abi_encode_t_stringliteral_a6cefa06f60ee34e0c8820e8870f7587ccd717d8768771226759d789a9582094_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 3)
                store_literal_in_memory_a6cefa06f60ee34e0c8820e8870f7587ccd717d8768771226759d789a9582094(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_a6cefa06f60ee34e0c8820e8870f7587ccd717d8768771226759d789a9582094__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_a6cefa06f60ee34e0c8820e8870f7587ccd717d8768771226759d789a9582094_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_a6cefa06f60ee34e0c8820e8870f7587ccd717d8768771226759d789a9582094(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_a6cefa06f60ee34e0c8820e8870f7587ccd717d8768771226759d789a9582094__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function shift_left_240(value) -> newValue {
                newValue :=

                shl(240, value)

            }

            function update_byte_slice_1_shift_30(value, toInsert) -> result {
                let mask := 0xff000000000000000000000000000000000000000000000000000000000000
                toInsert := shift_left_240(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_bool_to_t_bool(value) -> converted {
                converted := cleanup_t_bool(value)
            }

            function prepare_store_t_bool(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_30_t_bool_to_t_bool(slot, value_0) {
                let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
                sstore(slot, update_byte_slice_1_shift_30(sload(slot), prepare_store_t_bool(convertedValue_0)))
            }

            function read_from_memoryt_uint8(ptr) -> returnValue {

                let value := cleanup_t_uint8(mload(ptr))

                returnValue :=

                value

            }

            function cleanup_t_rational_4_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_4_by_1(value)))
            }

            function shift_right_t_uint8_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint8(shift_right_unsigned_dynamic(bits, cleanup_t_uint8(value)))
            }

            function cleanup_t_rational_16_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_16_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_16_by_1(value)))
            }

            function panic_error_0x12() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x12)
                revert(0, 0x24)
            }

            function mod_t_uint8(x, y) -> r {
                x := cleanup_t_uint8(x)
                y := cleanup_t_uint8(y)
                if iszero(y) { panic_error_0x12() }
                r := mod(x, y)
            }

            function allocate_memory_struct_t_struct$_SwapCache_$7531_storage_ptr() -> memPtr {
                memPtr := allocate_memory(192)
            }

            function write_to_memory_t_uint128(memPtr, value) {
                mstore(memPtr, cleanup_t_uint128(value))
            }

            function write_to_memory_t_uint32(memPtr, value) {
                mstore(memPtr, cleanup_t_uint32(value))
            }

            function convert_t_rational_0_by_1_to_t_int56(value) -> converted {
                converted := cleanup_t_int56(identity(cleanup_t_rational_0_by_1(value)))
            }

            function write_to_memory_t_int56(memPtr, value) {
                mstore(memPtr, cleanup_t_int56(value))
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function read_from_memoryt_int24(ptr) -> returnValue {

                let value := cleanup_t_int24(mload(ptr))

                returnValue :=

                value

            }

            function read_from_memoryt_uint128(ptr) -> returnValue {

                let value := cleanup_t_uint128(mload(ptr))

                returnValue :=

                value

            }

            function allocate_memory_struct_t_struct$_SwapState_$7546_storage_ptr() -> memPtr {
                memPtr := allocate_memory(224)
            }

            function write_to_memory_t_int256(memPtr, value) {
                mstore(memPtr, cleanup_t_int256(value))
            }

            function write_to_memory_t_uint256(memPtr, value) {
                mstore(memPtr, cleanup_t_uint256(value))
            }

            function convert_t_rational_0_by_1_to_t_uint128(value) -> converted {
                converted := cleanup_t_uint128(identity(cleanup_t_rational_0_by_1(value)))
            }

            function read_from_memoryt_int256(ptr) -> returnValue {

                let value := cleanup_t_int256(mload(ptr))

                returnValue :=

                value

            }

            function allocate_memory_struct_t_struct$_StepComputations_$7561_memory_ptr() -> memPtr {
                memPtr := allocate_memory(224)
            }

            function zero_value_for_t_uint160() -> ret {
                ret := 0
            }

            function zero_value_for_t_int24() -> ret {
                ret := 0
            }

            function zero_value_for_t_bool() -> ret {
                ret := 0
            }

            function zero_value_for_t_uint256() -> ret {
                ret := 0
            }

            function allocate_and_zero_memory_struct_t_struct$_StepComputations_$7561_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_StepComputations_$7561_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_uint160())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int24())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_bool())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint160())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_StepComputations_$7561_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_StepComputations_$7561_memory_ptr()
            }

            function cleanup_t_rational_minus_887272_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_minus_887272_by_1_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_rational_minus_887272_by_1(value)))
            }

            /// @src 118:479:521  "int24 internal constant MIN_TICK = -887272"
            function constant_MIN_TICK_5103() -> ret {
                /// @src 118:514:521  "-887272"
                let expr_5102 := 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffff27618
                let _83 := convert_t_rational_minus_887272_by_1_to_t_int24(expr_5102)

                ret := _83
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function negate_t_int24(value) -> ret {
                value := cleanup_t_int24(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff800000) { panic_error_0x11() }
                ret := sub(0, value)
            }

            /// @src 118:639:683  "int24 internal constant MAX_TICK = -MIN_TICK"
            function constant_MAX_TICK_5108() -> ret {
                /// @src 118:675:683  "MIN_TICK"
                let expr_5106 := constant_MIN_TICK_5103()
                /// @src 118:674:683  "-MIN_TICK"
                let expr_5107 := negate_t_int24(expr_5106)
                let _87 := expr_5107

                ret := _87
            }

            function read_from_memoryt_uint256(ptr) -> returnValue {

                let value := cleanup_t_uint256(mload(ptr))

                returnValue :=

                value

            }

            function checked_add_t_int256(x, y) -> sum {
                x := cleanup_t_int256(x)
                y := cleanup_t_int256(y)
                sum := add(x, y)

                // overflow, if x >= 0 and sum < y
                // underflow, if x < 0 and sum >= y
                if or(
                    and(iszero(slt(x, 0)), slt(sum, y)),
                    and(slt(x, 0), iszero(slt(sum, y)))
                ) { panic_error_0x11() }

            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            function checked_sub_t_int256(x, y) -> diff {
                x := cleanup_t_int256(x)
                y := cleanup_t_int256(y)
                diff := sub(x, y)

                // underflow, if y >= 0 and diff > x
                // overflow, if y < 0 and diff < x
                if or(
                    and(iszero(slt(y, 0)), sgt(diff, x)),
                    and(slt(y, 0), slt(diff, x))
                ) { panic_error_0x11() }

            }

            function convert_t_rational_0_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_uint8_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint8(value)))
            }

            function checked_div_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }

                r := div(x, y)
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            function convert_t_uint256_to_t_uint128(value) -> converted {
                converted := cleanup_t_uint128(identity(cleanup_t_uint256(value)))
            }

            function checked_add_t_uint128(x, y) -> sum {
                x := cleanup_t_uint128(x)
                y := cleanup_t_uint128(y)
                sum := add(x, y)

                if gt(sum, 0xffffffffffffffffffffffffffffffff) { panic_error_0x11() }

            }

            function cleanup_t_rational_340282366920938463463374607431768211456_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938463463374607431768211456_by_1(value)))
            }

            /// @src 106:276:344  "uint256 internal constant Q128 = 0x100000000000000000000000000000000"
            function constant_Q128_9256() -> ret {
                /// @src 106:309:344  "0x100000000000000000000000000000000"
                let expr_9255 := 0x0100000000000000000000000000000000
                let _199 := convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(expr_9255)

                ret := _199
            }

            function convert_t_uint128_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint128(value)))
            }

            function convert_array_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_to_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(value) -> converted  {
                converted := value

            }

            function read_from_memoryt_uint32(ptr) -> returnValue {

                let value := cleanup_t_uint32(mload(ptr))

                returnValue :=

                value

            }

            function read_from_memoryt_uint16(ptr) -> returnValue {

                let value := cleanup_t_uint16(mload(ptr))

                returnValue :=

                value

            }

            function convert_t_rational_0_by_1_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(identity(cleanup_t_rational_0_by_1(value)))
            }

            function read_from_memoryt_int56(ptr) -> returnValue {

                let value := cleanup_t_int56(mload(ptr))

                returnValue :=

                value

            }

            function negate_t_int128(value) -> ret {
                value := cleanup_t_int128(value)
                if eq(value, 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000) { panic_error_0x11() }
                ret := sub(0, value)
            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_rational_1_by_1(value)))
            }

            function checked_sub_t_int24(x, y) -> diff {
                x := cleanup_t_int24(x)
                y := cleanup_t_int24(y)
                diff := sub(x, y)

                if or(
                    slt(diff, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff800000),
                    sgt(diff, 0x7fffff)
                ) { panic_error_0x11() }

            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function update_byte_slice_20_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function prepare_store_t_uint160(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_uint160_to_t_uint160(slot, value_0) {
                let convertedValue_0 := convert_t_uint160_to_t_uint160(value_0)
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_uint160(convertedValue_0)))
            }

            function shift_left_200(value) -> newValue {
                newValue :=

                shl(200, value)

            }

            function update_byte_slice_2_shift_25(value, toInsert) -> result {
                let mask := 0xffff00000000000000000000000000000000000000000000000000
                toInsert := shift_left_200(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint16_to_t_uint16(value) -> converted {
                converted := cleanup_t_uint16(identity(cleanup_t_uint16(value)))
            }

            function prepare_store_t_uint16(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_25_t_uint16_to_t_uint16(slot, value_0) {
                let convertedValue_0 := convert_t_uint16_to_t_uint16(value_0)
                sstore(slot, update_byte_slice_2_shift_25(sload(slot), prepare_store_t_uint16(convertedValue_0)))
            }

            function shift_left_184(value) -> newValue {
                newValue :=

                shl(184, value)

            }

            function update_byte_slice_2_shift_23(value, toInsert) -> result {
                let mask := 0xffff0000000000000000000000000000000000000000000000
                toInsert := shift_left_184(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_23_t_uint16_to_t_uint16(slot, value_0) {
                let convertedValue_0 := convert_t_uint16_to_t_uint16(value_0)
                sstore(slot, update_byte_slice_2_shift_23(sload(slot), prepare_store_t_uint16(convertedValue_0)))
            }

            function shift_left_160(value) -> newValue {
                newValue :=

                shl(160, value)

            }

            function update_byte_slice_3_shift_20(value, toInsert) -> result {
                let mask := 0xffffff0000000000000000000000000000000000000000
                toInsert := shift_left_160(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function prepare_store_t_int24(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_20_t_int24_to_t_int24(slot, value_0) {
                let convertedValue_0 := convert_t_int24_to_t_int24(value_0)
                sstore(slot, update_byte_slice_3_shift_20(sload(slot), prepare_store_t_int24(convertedValue_0)))
            }

            function update_byte_slice_16_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint128_to_t_uint128(value) -> converted {
                converted := cleanup_t_uint128(identity(cleanup_t_uint128(value)))
            }

            function prepare_store_t_uint128(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_uint128_to_t_uint128(slot, value_0) {
                let convertedValue_0 := convert_t_uint128_to_t_uint128(value_0)
                sstore(slot, update_byte_slice_16_shift_0(sload(slot), prepare_store_t_uint128(convertedValue_0)))
            }

            function update_byte_slice_32_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_uint256_to_t_uint256(slot, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
            }

            function shift_left_128(value) -> newValue {
                newValue :=

                shl(128, value)

            }

            function update_byte_slice_16_shift_16(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000
                toInsert := shift_left_128(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_16_t_uint128_to_t_uint128(slot, value_0) {
                let convertedValue_0 := convert_t_uint128_to_t_uint128(value_0)
                sstore(slot, update_byte_slice_16_shift_16(sload(slot), prepare_store_t_uint128(convertedValue_0)))
            }

            function negate_t_int256(value) -> ret {
                value := cleanup_t_int256(value)
                if eq(value, 0x8000000000000000000000000000000000000000000000000000000000000000) { panic_error_0x11() }
                ret := sub(0, value)
            }

            function convert_t_int256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_int256(value)))
            }

            function convert_t_uint160_to_t_contract$_IUniswapV3SwapCallback_$19785(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IUniswapV3SwapCallback_$19785(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IUniswapV3SwapCallback_$19785(value)
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_contract$_IUniswapV3SwapCallback_$19785_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() {
                revert(0, 0)
            }

            function shift_left_224(value) -> newValue {
                newValue :=

                shl(224, value)

            }

            function abi_decode_tuple__fromMemory(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function copy_calldata_to_memory_with_cleanup(src, dst, length) {

                calldatacopy(dst, src, length)
                mstore(add(dst, length), 0)

            }

            // bytes -> bytes
            function abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(start, length, pos) -> end {
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length)

                copy_calldata_to_memory_with_cleanup(start, pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_int256_t_int256_t_bytes_calldata_ptr__to_t_int256_t_int256_t_bytes_memory_ptr__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_int256_to_t_int256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int256_to_t_int256_fromStack(value1,  add(headStart, 32))

                mstore(add(headStart, 64), sub(tail, headStart))
                tail := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(value2, value3,  tail)

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            function store_literal_in_memory_ead9ba8f24b0c9c3e87a0076a48a0a166e1d5cd0bd355971195d20d966e145fc(memPtr) {

                mstore(add(memPtr, 0), "IIA")

            }

            function abi_encode_t_stringliteral_ead9ba8f24b0c9c3e87a0076a48a0a166e1d5cd0bd355971195d20d966e145fc_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 3)
                store_literal_in_memory_ead9ba8f24b0c9c3e87a0076a48a0a166e1d5cd0bd355971195d20d966e145fc(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_ead9ba8f24b0c9c3e87a0076a48a0a166e1d5cd0bd355971195d20d966e145fc__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_ead9ba8f24b0c9c3e87a0076a48a0a166e1d5cd0bd355971195d20d966e145fc_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_ead9ba8f24b0c9c3e87a0076a48a0a166e1d5cd0bd355971195d20d966e145fc(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_ead9ba8f24b0c9c3e87a0076a48a0a166e1d5cd0bd355971195d20d966e145fc__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_tuple_t_int256_t_int256_t_uint160_t_uint128_t_int24__to_t_int256_t_int256_t_uint160_t_uint128_t_int24__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_int256_to_t_int256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int256_to_t_int256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint160_to_t_uint160_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint128_to_t_uint128_fromStack(value3,  add(headStart, 96))

                abi_encode_t_int24_to_t_int24_fromStack(value4,  add(headStart, 128))

            }

            /// @src 90:22954:31956  "function swap(..."
            function fun_swap_8254_inner(_5, _6, var_recipient_7564, var_zeroForOne_7566, var_amountSpecified_7568, var_sqrtPriceLimitX96_7570, var_data_7572_offset, var_data_7572_length) -> var_amount0_7578, var_amount1_7580 {
                var_amount0_7578 := _5
                var_amount1_7580 := _6

                /// @src 90:23214:23229  "amountSpecified"
                let _7 := var_amountSpecified_7568
                let expr_7583 := _7
                /// @src 90:23233:23234  "0"
                let expr_7584 := 0x00
                /// @src 90:23214:23234  "amountSpecified != 0"
                let expr_7585 := iszero(eq(cleanup_t_int256(expr_7583), convert_t_rational_0_by_1_to_t_int256(expr_7584)))
                /// @src 90:23206:23241  "require(amountSpecified != 0, 'AS')"
                require_helper_t_stringliteral_327b9f048a93c937a955c6a689ad68cff8daabdfc5fb8cf29fcae1bac2ddb4d5(expr_7585)
                /// @src 90:23278:23283  "slot0"
                let _8_slot := 0x00
                let expr_7592_slot := _8_slot
                /// @src 90:23252:23283  "Slot0 memory slot0Start = slot0"
                let var_slot0Start_7591_mpos := convert_t_struct$_Slot0_$6272_storage_to_t_struct$_Slot0_$6272_memory_ptr(expr_7592_slot)
                /// @src 90:23302:23312  "slot0Start"
                let _9_mpos := var_slot0Start_7591_mpos
                let expr_7595_mpos := _9_mpos
                /// @src 90:23302:23321  "slot0Start.unlocked"
                let _10 := add(expr_7595_mpos, 192)
                let _11 := read_from_memoryt_bool(_10)
                let expr_7596 := _11
                /// @src 90:23294:23329  "require(slot0Start.unlocked, 'LOK')"
                require_helper_t_stringliteral_e01ebc6b01bbf458b3d355b6e649efe64599751670c5d19175619893ecf97529(expr_7596)
                /// @src 90:23360:23370  "zeroForOne"
                let _12 := var_zeroForOne_7566
                let expr_7601 := _12
                /// @src 90:23360:23588  "zeroForOne..."
                let expr_7620
                switch expr_7601
                case 0 {
                    /// @src 90:23498:23515  "sqrtPriceLimitX96"
                    let _13 := var_sqrtPriceLimitX96_7570
                    let expr_7611 := _13
                    /// @src 90:23518:23528  "slot0Start"
                    let _14_mpos := var_slot0Start_7591_mpos
                    let expr_7612_mpos := _14_mpos
                    /// @src 90:23518:23541  "slot0Start.sqrtPriceX96"
                    let _15 := add(expr_7612_mpos, 0)
                    let _16 := read_from_memoryt_uint160(_15)
                    let expr_7613 := _16
                    /// @src 90:23498:23541  "sqrtPriceLimitX96 > slot0Start.sqrtPriceX96"
                    let expr_7614 := gt(cleanup_t_uint160(expr_7611), cleanup_t_uint160(expr_7613))
                    /// @src 90:23498:23588  "sqrtPriceLimitX96 > slot0Start.sqrtPriceX96 && sqrtPriceLimitX96 < TickMath.MAX_SQRT_RATIO"
                    let expr_7619 := expr_7614
                    if expr_7619 {
                        /// @src 90:23545:23562  "sqrtPriceLimitX96"
                        let _17 := var_sqrtPriceLimitX96_7570
                        let expr_7615 := _17
                        /// @src 90:23565:23573  "TickMath"
                        let expr_7616_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                        /// @src 90:23565:23588  "TickMath.MAX_SQRT_RATIO"
                        let expr_7617 := constant_MAX_SQRT_RATIO_5116()
                        /// @src 90:23545:23588  "sqrtPriceLimitX96 < TickMath.MAX_SQRT_RATIO"
                        let expr_7618 := lt(cleanup_t_uint160(expr_7615), cleanup_t_uint160(expr_7617))
                        /// @src 90:23498:23588  "sqrtPriceLimitX96 > slot0Start.sqrtPriceX96 && sqrtPriceLimitX96 < TickMath.MAX_SQRT_RATIO"
                        expr_7619 := expr_7618
                    }
                    /// @src 90:23360:23588  "zeroForOne..."
                    expr_7620 := expr_7619
                }
                default {
                    /// @src 90:23389:23406  "sqrtPriceLimitX96"
                    let _19 := var_sqrtPriceLimitX96_7570
                    let expr_7602 := _19
                    /// @src 90:23409:23419  "slot0Start"
                    let _20_mpos := var_slot0Start_7591_mpos
                    let expr_7603_mpos := _20_mpos
                    /// @src 90:23409:23432  "slot0Start.sqrtPriceX96"
                    let _21 := add(expr_7603_mpos, 0)
                    let _22 := read_from_memoryt_uint160(_21)
                    let expr_7604 := _22
                    /// @src 90:23389:23432  "sqrtPriceLimitX96 < slot0Start.sqrtPriceX96"
                    let expr_7605 := lt(cleanup_t_uint160(expr_7602), cleanup_t_uint160(expr_7604))
                    /// @src 90:23389:23479  "sqrtPriceLimitX96 < slot0Start.sqrtPriceX96 && sqrtPriceLimitX96 > TickMath.MIN_SQRT_RATIO"
                    let expr_7610 := expr_7605
                    if expr_7610 {
                        /// @src 90:23436:23453  "sqrtPriceLimitX96"
                        let _23 := var_sqrtPriceLimitX96_7570
                        let expr_7606 := _23
                        /// @src 90:23456:23464  "TickMath"
                        let expr_7607_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                        /// @src 90:23456:23479  "TickMath.MIN_SQRT_RATIO"
                        let expr_7608 := constant_MIN_SQRT_RATIO_5112()
                        /// @src 90:23436:23479  "sqrtPriceLimitX96 > TickMath.MIN_SQRT_RATIO"
                        let expr_7609 := gt(cleanup_t_uint160(expr_7606), cleanup_t_uint160(expr_7608))
                        /// @src 90:23389:23479  "sqrtPriceLimitX96 < slot0Start.sqrtPriceX96 && sqrtPriceLimitX96 > TickMath.MIN_SQRT_RATIO"
                        expr_7610 := expr_7609
                    }
                    /// @src 90:23360:23588  "zeroForOne..."
                    expr_7620 := expr_7610
                }
                /// @src 90:23339:23617  "require(..."
                require_helper_t_stringliteral_a6cefa06f60ee34e0c8820e8870f7587ccd717d8768771226759d789a9582094(expr_7620)
                /// @src 90:23645:23650  "false"
                let expr_7627 := 0x00
                /// @src 90:23628:23633  "slot0"
                let _25_slot := 0x00
                let expr_7624_slot := _25_slot
                /// @src 90:23628:23642  "slot0.unlocked"
                let _26 := add(expr_7624_slot, 0)
                /// @src 90:23628:23650  "slot0.unlocked = false"
                update_storage_value_offset_30_t_bool_to_t_bool(_26, expr_7627)
                let expr_7628 := expr_7627
                /// @src 90:23742:23751  "liquidity"
                let _27 := read_from_storage_split_offset_0_t_uint128(0x04)
                let expr_7634 := _27
                /// @src 90:23785:23802  "_blockTimestamp()"
                let expr_7636 := fun__blockTimestamp_6442()
                /// @src 90:23833:23843  "zeroForOne"
                let _28 := var_zeroForOne_7566
                let expr_7637 := _28
                /// @src 90:23833:23907  "zeroForOne ? (slot0Start.feeProtocol % 16) : (slot0Start.feeProtocol >> 4)"
                let expr_7648
                switch expr_7637
                case 0 {
                    /// @src 90:23879:23889  "slot0Start"
                    let _29_mpos := var_slot0Start_7591_mpos
                    let expr_7643_mpos := _29_mpos
                    /// @src 90:23879:23901  "slot0Start.feeProtocol"
                    let _30 := add(expr_7643_mpos, 160)
                    let _31 := read_from_memoryt_uint8(_30)
                    let expr_7644 := _31
                    /// @src 90:23905:23906  "4"
                    let expr_7645 := 0x04
                    /// @src 90:23879:23906  "slot0Start.feeProtocol >> 4"
                    let _32 := convert_t_rational_4_by_1_to_t_uint8(expr_7645)
                    let expr_7646 :=
                    shift_right_t_uint8_t_uint8(expr_7644, _32)

                    /// @src 90:23878:23907  "(slot0Start.feeProtocol >> 4)"
                    let expr_7647 := expr_7646
                    /// @src 90:23833:23907  "zeroForOne ? (slot0Start.feeProtocol % 16) : (slot0Start.feeProtocol >> 4)"
                    expr_7648 := expr_7647
                }
                default {
                    /// @src 90:23847:23857  "slot0Start"
                    let _33_mpos := var_slot0Start_7591_mpos
                    let expr_7638_mpos := _33_mpos
                    /// @src 90:23847:23869  "slot0Start.feeProtocol"
                    let _34 := add(expr_7638_mpos, 160)
                    let _35 := read_from_memoryt_uint8(_34)
                    let expr_7639 := _35
                    /// @src 90:23872:23874  "16"
                    let expr_7640 := 0x10
                    /// @src 90:23847:23874  "slot0Start.feeProtocol % 16"
                    let expr_7641 := mod_t_uint8(expr_7639, convert_t_rational_16_by_1_to_t_uint8(expr_7640))

                    /// @src 90:23846:23875  "(slot0Start.feeProtocol % 16)"
                    let expr_7642 := expr_7641
                    /// @src 90:23833:23907  "zeroForOne ? (slot0Start.feeProtocol % 16) : (slot0Start.feeProtocol >> 4)"
                    expr_7648 := expr_7642
                }
                /// @src 90:23960:23961  "0"
                let expr_7649 := 0x00
                /// @src 90:23995:23996  "0"
                let expr_7650 := 0x00
                /// @src 90:24041:24046  "false"
                let expr_7651 := 0x00
                /// @src 90:23698:24061  "SwapCache({..."
                let expr_7652_mpos := allocate_memory_struct_t_struct$_SwapCache_$7531_storage_ptr()
                write_to_memory_t_uint8(add(expr_7652_mpos, 0), expr_7648)
                write_to_memory_t_uint128(add(expr_7652_mpos, 32), expr_7634)
                write_to_memory_t_uint32(add(expr_7652_mpos, 64), expr_7636)
                let _36 := convert_t_rational_0_by_1_to_t_int56(expr_7650)
                write_to_memory_t_int56(add(expr_7652_mpos, 96), _36)
                let _37 := convert_t_rational_0_by_1_to_t_uint160(expr_7649)
                write_to_memory_t_uint160(add(expr_7652_mpos, 128), _37)
                write_to_memory_t_bool(add(expr_7652_mpos, 160), expr_7651)
                /// @src 90:23661:24061  "SwapCache memory cache =..."
                let var_cache_7632_mpos := expr_7652_mpos
                /// @src 90:24090:24105  "amountSpecified"
                let _38 := var_amountSpecified_7568
                let expr_7656 := _38
                /// @src 90:24108:24109  "0"
                let expr_7657 := 0x00
                /// @src 90:24090:24109  "amountSpecified > 0"
                let expr_7658 := sgt(cleanup_t_int256(expr_7656), convert_t_rational_0_by_1_to_t_int256(expr_7657))
                /// @src 90:24072:24109  "bool exactInput = amountSpecified > 0"
                let var_exactInput_7655 := expr_7658
                /// @src 90:24211:24226  "amountSpecified"
                let _39 := var_amountSpecified_7568
                let expr_7664 := _39
                /// @src 90:24262:24263  "0"
                let expr_7665 := 0x00
                /// @src 90:24295:24305  "slot0Start"
                let _40_mpos := var_slot0Start_7591_mpos
                let expr_7666_mpos := _40_mpos
                /// @src 90:24295:24318  "slot0Start.sqrtPriceX96"
                let _41 := add(expr_7666_mpos, 0)
                let _42 := read_from_memoryt_uint160(_41)
                let expr_7667 := _42
                /// @src 90:24342:24352  "slot0Start"
                let _43_mpos := var_slot0Start_7591_mpos
                let expr_7668_mpos := _43_mpos
                /// @src 90:24342:24357  "slot0Start.tick"
                let _44 := add(expr_7668_mpos, 32)
                let _45 := read_from_memoryt_int24(_44)
                let expr_7669 := _45
                /// @src 90:24396:24406  "zeroForOne"
                let _46 := var_zeroForOne_7566
                let expr_7670 := _46
                /// @src 90:24396:24452  "zeroForOne ? feeGrowthGlobal0X128 : feeGrowthGlobal1X128"
                let expr_7673
                switch expr_7670
                case 0 {
                    /// @src 90:24432:24452  "feeGrowthGlobal1X128"
                    let _47 := read_from_storage_split_offset_0_t_uint256(0x02)
                    let expr_7672 := _47
                    /// @src 90:24396:24452  "zeroForOne ? feeGrowthGlobal0X128 : feeGrowthGlobal1X128"
                    expr_7673 := expr_7672
                }
                default {
                    /// @src 90:24409:24429  "feeGrowthGlobal0X128"
                    let _48 := read_from_storage_split_offset_0_t_uint256(0x01)
                    let expr_7671 := _48
                    /// @src 90:24396:24452  "zeroForOne ? feeGrowthGlobal0X128 : feeGrowthGlobal1X128"
                    expr_7673 := expr_7671
                }
                /// @src 90:24483:24484  "0"
                let expr_7674 := 0x00
                /// @src 90:24513:24518  "cache"
                let _49_mpos := var_cache_7632_mpos
                let expr_7675_mpos := _49_mpos
                /// @src 90:24513:24533  "cache.liquidityStart"
                let _50 := add(expr_7675_mpos, 32)
                let _51 := read_from_memoryt_uint128(_50)
                let expr_7676 := _51
                /// @src 90:24157:24548  "SwapState({..."
                let expr_7677_mpos := allocate_memory_struct_t_struct$_SwapState_$7546_storage_ptr()
                write_to_memory_t_int256(add(expr_7677_mpos, 0), expr_7664)
                let _52 := convert_t_rational_0_by_1_to_t_int256(expr_7665)
                write_to_memory_t_int256(add(expr_7677_mpos, 32), _52)
                write_to_memory_t_uint160(add(expr_7677_mpos, 64), expr_7667)
                write_to_memory_t_int24(add(expr_7677_mpos, 96), expr_7669)
                write_to_memory_t_uint256(add(expr_7677_mpos, 128), expr_7673)
                let _53 := convert_t_rational_0_by_1_to_t_uint128(expr_7674)
                write_to_memory_t_uint128(add(expr_7677_mpos, 160), _53)
                write_to_memory_t_uint128(add(expr_7677_mpos, 192), expr_7676)
                /// @src 90:24120:24548  "SwapState memory state =..."
                let var_state_7662_mpos := expr_7677_mpos
                /// @src 90:24675:29296  "while (state.amountSpecifiedRemaining != 0 && state.sqrtPriceX96 != sqrtPriceLimitX96) {..."
                for {
                    } 1 {
                }
                {
                    /// @src 90:24682:24687  "state"
                    let _54_mpos := var_state_7662_mpos
                    let expr_7679_mpos := _54_mpos
                    /// @src 90:24682:24712  "state.amountSpecifiedRemaining"
                    let _55 := add(expr_7679_mpos, 0)
                    let _56 := read_from_memoryt_int256(_55)
                    let expr_7680 := _56
                    /// @src 90:24716:24717  "0"
                    let expr_7681 := 0x00
                    /// @src 90:24682:24717  "state.amountSpecifiedRemaining != 0"
                    let expr_7682 := iszero(eq(cleanup_t_int256(expr_7680), convert_t_rational_0_by_1_to_t_int256(expr_7681)))
                    /// @src 90:24682:24760  "state.amountSpecifiedRemaining != 0 && state.sqrtPriceX96 != sqrtPriceLimitX96"
                    let expr_7687 := expr_7682
                    if expr_7687 {
                        /// @src 90:24721:24726  "state"
                        let _57_mpos := var_state_7662_mpos
                        let expr_7683_mpos := _57_mpos
                        /// @src 90:24721:24739  "state.sqrtPriceX96"
                        let _58 := add(expr_7683_mpos, 64)
                        let _59 := read_from_memoryt_uint160(_58)
                        let expr_7684 := _59
                        /// @src 90:24743:24760  "sqrtPriceLimitX96"
                        let _60 := var_sqrtPriceLimitX96_7570
                        let expr_7685 := _60
                        /// @src 90:24721:24760  "state.sqrtPriceX96 != sqrtPriceLimitX96"
                        let expr_7686 := iszero(eq(cleanup_t_uint160(expr_7684), cleanup_t_uint160(expr_7685)))
                        /// @src 90:24682:24760  "state.amountSpecifiedRemaining != 0 && state.sqrtPriceX96 != sqrtPriceLimitX96"
                        expr_7687 := expr_7686
                    }
                    if iszero(expr_7687) { break }
                    /// @src 90:24776:24804  "StepComputations memory step"
                    let var_step_7690_mpos
                    let zero_t_struct$_StepComputations_$7561_memory_ptr_61_mpos := zero_value_for_split_t_struct$_StepComputations_$7561_memory_ptr()
                    var_step_7690_mpos := zero_t_struct$_StepComputations_$7561_memory_ptr_61_mpos
                    /// @src 90:24844:24849  "state"
                    let _62_mpos := var_state_7662_mpos
                    let expr_7695_mpos := _62_mpos
                    /// @src 90:24844:24862  "state.sqrtPriceX96"
                    let _63 := add(expr_7695_mpos, 64)
                    let _64 := read_from_memoryt_uint160(_63)
                    let expr_7696 := _64
                    /// @src 90:24819:24823  "step"
                    let _65_mpos := var_step_7690_mpos
                    let expr_7692_mpos := _65_mpos
                    /// @src 90:24819:24841  "step.sqrtPriceStartX96"
                    let _66 := add(expr_7692_mpos, 0)
                    /// @src 90:24819:24862  "step.sqrtPriceStartX96 = state.sqrtPriceX96"
                    let _67 := expr_7696
                    write_to_memory_t_uint160(_66, _67)
                    let expr_7697 := expr_7696
                    /// @src 90:24913:24923  "tickBitmap"
                    let _68_slot := 0x06
                    let expr_7705_slot := _68_slot
                    /// @src 90:24913:24956  "tickBitmap.nextInitializedTickWithinOneWord"
                    let expr_7706_self_slot := expr_7705_slot
                    /// @src 90:24974:24979  "state"
                    let _69_mpos := var_state_7662_mpos
                    let expr_7707_mpos := _69_mpos
                    /// @src 90:24974:24984  "state.tick"
                    let _70 := add(expr_7707_mpos, 96)
                    let _71 := read_from_memoryt_int24(_70)
                    let expr_7708 := _71
                    /// @src 90:25002:25013  "tickSpacing"
                    let _72 := loadimmutable("6253")
                    let expr_7709 := _72
                    /// @src 90:25031:25041  "zeroForOne"
                    let _73 := var_zeroForOne_7566
                    let expr_7710 := _73
                    /// @src 90:24913:25055  "tickBitmap.nextInitializedTickWithinOneWord(..."
                    let expr_7711_component_1, expr_7711_component_2 := fun_nextInitializedTickWithinOneWord_22491(expr_7706_self_slot, expr_7708, expr_7709, expr_7710)
                    /// @src 90:24878:24882  "step"
                    let _74_mpos := var_step_7690_mpos
                    let expr_7699_mpos := _74_mpos
                    /// @src 90:24878:24891  "step.tickNext"
                    let _75 := add(expr_7699_mpos, 32)
                    /// @src 90:24893:24897  "step"
                    let _76_mpos := var_step_7690_mpos
                    let expr_7702_mpos := _76_mpos
                    /// @src 90:24893:24909  "step.initialized"
                    let _77 := add(expr_7702_mpos, 64)
                    /// @src 90:24877:25055  "(step.tickNext, step.initialized) = tickBitmap.nextInitializedTickWithinOneWord(..."
                    let _78 := expr_7711_component_2
                    write_to_memory_t_bool(_77, _78)
                    let _79 := expr_7711_component_1
                    write_to_memory_t_int24(_75, _79)
                    /// @src 90:25187:25191  "step"
                    let _80_mpos := var_step_7690_mpos
                    let expr_7714_mpos := _80_mpos
                    /// @src 90:25187:25200  "step.tickNext"
                    let _81 := add(expr_7714_mpos, 32)
                    let _82 := read_from_memoryt_int24(_81)
                    let expr_7715 := _82
                    /// @src 90:25203:25211  "TickMath"
                    let expr_7716_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                    /// @src 90:25203:25220  "TickMath.MIN_TICK"
                    let expr_7717 := constant_MIN_TICK_5103()
                    /// @src 90:25187:25220  "step.tickNext < TickMath.MIN_TICK"
                    let expr_7718 := slt(cleanup_t_int24(expr_7715), cleanup_t_int24(expr_7717))
                    /// @src 90:25183:25399  "if (step.tickNext < TickMath.MIN_TICK) {..."
                    switch expr_7718
                    case 0 {
                        /// @src 90:25298:25302  "step"
                        let _84_mpos := var_step_7690_mpos
                        let expr_7727_mpos := _84_mpos
                        /// @src 90:25298:25311  "step.tickNext"
                        let _85 := add(expr_7727_mpos, 32)
                        let _86 := read_from_memoryt_int24(_85)
                        let expr_7728 := _86
                        /// @src 90:25314:25322  "TickMath"
                        let expr_7729_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                        /// @src 90:25314:25331  "TickMath.MAX_TICK"
                        let expr_7730 := constant_MAX_TICK_5108()
                        /// @src 90:25298:25331  "step.tickNext > TickMath.MAX_TICK"
                        let expr_7731 := sgt(cleanup_t_int24(expr_7728), cleanup_t_int24(expr_7730))
                        /// @src 90:25294:25399  "if (step.tickNext > TickMath.MAX_TICK) {..."
                        if expr_7731 {
                            /// @src 90:25367:25375  "TickMath"
                            let expr_7735_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                            /// @src 90:25367:25384  "TickMath.MAX_TICK"
                            let expr_7736 := constant_MAX_TICK_5108()
                            /// @src 90:25351:25355  "step"
                            let _88_mpos := var_step_7690_mpos
                            let expr_7732_mpos := _88_mpos
                            /// @src 90:25351:25364  "step.tickNext"
                            let _89 := add(expr_7732_mpos, 32)
                            /// @src 90:25351:25384  "step.tickNext = TickMath.MAX_TICK"
                            let _90 := expr_7736
                            write_to_memory_t_int24(_89, _90)
                            let expr_7737 := expr_7736
                            /// @src 90:25294:25399  "if (step.tickNext > TickMath.MAX_TICK) {..."
                        }
                        /// @src 90:25183:25399  "if (step.tickNext < TickMath.MIN_TICK) {..."
                    }
                    default {
                        /// @src 90:25256:25264  "TickMath"
                        let expr_7722_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                        /// @src 90:25256:25273  "TickMath.MIN_TICK"
                        let expr_7723 := constant_MIN_TICK_5103()
                        /// @src 90:25240:25244  "step"
                        let _91_mpos := var_step_7690_mpos
                        let expr_7719_mpos := _91_mpos
                        /// @src 90:25240:25253  "step.tickNext"
                        let _92 := add(expr_7719_mpos, 32)
                        /// @src 90:25240:25273  "step.tickNext = TickMath.MIN_TICK"
                        let _93 := expr_7723
                        write_to_memory_t_int24(_92, _93)
                        let expr_7724 := expr_7723
                        /// @src 90:25183:25399  "if (step.tickNext < TickMath.MIN_TICK) {..."
                    }
                    /// @src 90:25484:25492  "TickMath"
                    let expr_7745_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                    /// @src 90:25512:25516  "step"
                    let _94_mpos := var_step_7690_mpos
                    let expr_7747_mpos := _94_mpos
                    /// @src 90:25512:25525  "step.tickNext"
                    let _95 := add(expr_7747_mpos, 32)
                    let _96 := read_from_memoryt_int24(_95)
                    let expr_7748 := _96
                    /// @src 90:25484:25526  "TickMath.getSqrtRatioAtTick(step.tickNext)"
                    let expr_7749 := fun_getSqrtRatioAtTick_5493(expr_7748)
                    /// @src 90:25460:25464  "step"
                    let _97_mpos := var_step_7690_mpos
                    let expr_7742_mpos := _97_mpos
                    /// @src 90:25460:25481  "step.sqrtPriceNextX96"
                    let _98 := add(expr_7742_mpos, 96)
                    /// @src 90:25460:25526  "step.sqrtPriceNextX96 = TickMath.getSqrtRatioAtTick(step.tickNext)"
                    let _99 := expr_7749
                    write_to_memory_t_uint160(_98, _99)
                    let expr_7750 := expr_7749
                    /// @src 90:25730:25738  "SwapMath"
                    let expr_7762_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/SwapMath.sol:SwapMath")
                    /// @src 90:25772:25777  "state"
                    let _100_mpos := var_state_7662_mpos
                    let expr_7764_mpos := _100_mpos
                    /// @src 90:25772:25790  "state.sqrtPriceX96"
                    let _101 := add(expr_7764_mpos, 64)
                    let _102 := read_from_memoryt_uint160(_101)
                    let expr_7765 := _102
                    /// @src 90:25809:25819  "zeroForOne"
                    let _103 := var_zeroForOne_7566
                    let expr_7766 := _103
                    /// @src 90:25809:25907  "zeroForOne ? step.sqrtPriceNextX96 < sqrtPriceLimitX96 : step.sqrtPriceNextX96 > sqrtPriceLimitX96"
                    let expr_7775
                    switch expr_7766
                    case 0 {
                        /// @src 90:25866:25870  "step"
                        let _104_mpos := var_step_7690_mpos
                        let expr_7771_mpos := _104_mpos
                        /// @src 90:25866:25887  "step.sqrtPriceNextX96"
                        let _105 := add(expr_7771_mpos, 96)
                        let _106 := read_from_memoryt_uint160(_105)
                        let expr_7772 := _106
                        /// @src 90:25890:25907  "sqrtPriceLimitX96"
                        let _107 := var_sqrtPriceLimitX96_7570
                        let expr_7773 := _107
                        /// @src 90:25866:25907  "step.sqrtPriceNextX96 > sqrtPriceLimitX96"
                        let expr_7774 := gt(cleanup_t_uint160(expr_7772), cleanup_t_uint160(expr_7773))
                        /// @src 90:25809:25907  "zeroForOne ? step.sqrtPriceNextX96 < sqrtPriceLimitX96 : step.sqrtPriceNextX96 > sqrtPriceLimitX96"
                        expr_7775 := expr_7774
                    }
                    default {
                        /// @src 90:25822:25826  "step"
                        let _108_mpos := var_step_7690_mpos
                        let expr_7767_mpos := _108_mpos
                        /// @src 90:25822:25843  "step.sqrtPriceNextX96"
                        let _109 := add(expr_7767_mpos, 96)
                        let _110 := read_from_memoryt_uint160(_109)
                        let expr_7768 := _110
                        /// @src 90:25846:25863  "sqrtPriceLimitX96"
                        let _111 := var_sqrtPriceLimitX96_7570
                        let expr_7769 := _111
                        /// @src 90:25822:25863  "step.sqrtPriceNextX96 < sqrtPriceLimitX96"
                        let expr_7770 := lt(cleanup_t_uint160(expr_7768), cleanup_t_uint160(expr_7769))
                        /// @src 90:25809:25907  "zeroForOne ? step.sqrtPriceNextX96 < sqrtPriceLimitX96 : step.sqrtPriceNextX96 > sqrtPriceLimitX96"
                        expr_7775 := expr_7770
                    }
                    /// @src 90:25808:25908  "(zeroForOne ? step.sqrtPriceNextX96 < sqrtPriceLimitX96 : step.sqrtPriceNextX96 > sqrtPriceLimitX96)"
                    let expr_7776 := expr_7775
                    /// @src 90:25808:25992  "(zeroForOne ? step.sqrtPriceNextX96 < sqrtPriceLimitX96 : step.sqrtPriceNextX96 > sqrtPriceLimitX96)..."
                    let expr_7780
                    switch expr_7776
                    case 0 {
                        /// @src 90:25971:25975  "step"
                        let _112_mpos := var_step_7690_mpos
                        let expr_7778_mpos := _112_mpos
                        /// @src 90:25971:25992  "step.sqrtPriceNextX96"
                        let _113 := add(expr_7778_mpos, 96)
                        let _114 := read_from_memoryt_uint160(_113)
                        let expr_7779 := _114
                        /// @src 90:25808:25992  "(zeroForOne ? step.sqrtPriceNextX96 < sqrtPriceLimitX96 : step.sqrtPriceNextX96 > sqrtPriceLimitX96)..."
                        expr_7780 := expr_7779
                    }
                    default {
                        /// @src 90:25931:25948  "sqrtPriceLimitX96"
                        let _115 := var_sqrtPriceLimitX96_7570
                        let expr_7777 := _115
                        /// @src 90:25808:25992  "(zeroForOne ? step.sqrtPriceNextX96 < sqrtPriceLimitX96 : step.sqrtPriceNextX96 > sqrtPriceLimitX96)..."
                        expr_7780 := expr_7777
                    }
                    /// @src 90:26010:26015  "state"
                    let _116_mpos := var_state_7662_mpos
                    let expr_7781_mpos := _116_mpos
                    /// @src 90:26010:26025  "state.liquidity"
                    let _117 := add(expr_7781_mpos, 192)
                    let _118 := read_from_memoryt_uint128(_117)
                    let expr_7782 := _118
                    /// @src 90:26043:26048  "state"
                    let _119_mpos := var_state_7662_mpos
                    let expr_7783_mpos := _119_mpos
                    /// @src 90:26043:26073  "state.amountSpecifiedRemaining"
                    let _120 := add(expr_7783_mpos, 0)
                    let _121 := read_from_memoryt_int256(_120)
                    let expr_7784 := _121
                    /// @src 90:26091:26094  "fee"
                    let _122 := loadimmutable("6249")
                    let expr_7785 := _122
                    /// @src 90:25730:26108  "SwapMath.computeSwapStep(..."
                    let expr_7786_component_1, expr_7786_component_2, expr_7786_component_3, expr_7786_component_4 := fun_computeSwapStep_21760(expr_7765, expr_7780, expr_7782, expr_7784, expr_7785)
                    /// @src 90:25661:25666  "state"
                    let _123_mpos := var_state_7662_mpos
                    let expr_7752_mpos := _123_mpos
                    /// @src 90:25661:25679  "state.sqrtPriceX96"
                    let _124 := add(expr_7752_mpos, 64)
                    /// @src 90:25681:25685  "step"
                    let _125_mpos := var_step_7690_mpos
                    let expr_7755_mpos := _125_mpos
                    /// @src 90:25681:25694  "step.amountIn"
                    let _126 := add(expr_7755_mpos, 128)
                    /// @src 90:25696:25700  "step"
                    let _127_mpos := var_step_7690_mpos
                    let expr_7757_mpos := _127_mpos
                    /// @src 90:25696:25710  "step.amountOut"
                    let _128 := add(expr_7757_mpos, 160)
                    /// @src 90:25712:25716  "step"
                    let _129_mpos := var_step_7690_mpos
                    let expr_7759_mpos := _129_mpos
                    /// @src 90:25712:25726  "step.feeAmount"
                    let _130 := add(expr_7759_mpos, 192)
                    /// @src 90:25660:26108  "(state.sqrtPriceX96, step.amountIn, step.amountOut, step.feeAmount) = SwapMath.computeSwapStep(..."
                    let _131 := expr_7786_component_4
                    write_to_memory_t_uint256(_130, _131)
                    let _132 := expr_7786_component_3
                    write_to_memory_t_uint256(_128, _132)
                    let _133 := expr_7786_component_2
                    write_to_memory_t_uint256(_126, _133)
                    let _134 := expr_7786_component_1
                    write_to_memory_t_uint160(_124, _134)
                    /// @src 90:26127:26137  "exactInput"
                    let _135 := var_exactInput_7655
                    let expr_7789 := _135
                    /// @src 90:26123:26557  "if (exactInput) {..."
                    switch expr_7789
                    case 0 {
                        /// @src 90:26403:26407  "step"
                        let _136_mpos := var_step_7690_mpos
                        let expr_7820_mpos := _136_mpos
                        /// @src 90:26403:26417  "step.amountOut"
                        let _137 := add(expr_7820_mpos, 160)
                        let _138 := read_from_memoryt_uint256(_137)
                        let expr_7821 := _138
                        /// @src 90:26403:26426  "step.amountOut.toInt256"
                        let expr_7822_self := expr_7821
                        /// @src 90:26403:26428  "step.amountOut.toInt256()"
                        let expr_7823 := fun_toInt256_20983(expr_7822_self)
                        /// @src 90:26369:26374  "state"
                        let _139_mpos := var_state_7662_mpos
                        let expr_7817_mpos := _139_mpos
                        /// @src 90:26369:26399  "state.amountSpecifiedRemaining"
                        let _140 := add(expr_7817_mpos, 0)
                        /// @src 90:26369:26428  "state.amountSpecifiedRemaining += step.amountOut.toInt256()"
                        let _141 := read_from_memoryt_int256(_140)
                        let expr_7824 := checked_add_t_int256(_141, expr_7823)

                        let _142 := expr_7824
                        write_to_memory_t_int256(_140, _142)
                        /// @src 90:26471:26476  "state"
                        let _143_mpos := var_state_7662_mpos
                        let expr_7829_mpos := _143_mpos
                        /// @src 90:26471:26493  "state.amountCalculated"
                        let _144 := add(expr_7829_mpos, 32)
                        let _145 := read_from_memoryt_int256(_144)
                        let expr_7830 := _145
                        /// @src 90:26471:26497  "state.amountCalculated.add"
                        let expr_7831_self := expr_7830
                        /// @src 90:26499:26503  "step"
                        let _146_mpos := var_step_7690_mpos
                        let expr_7832_mpos := _146_mpos
                        /// @src 90:26499:26512  "step.amountIn"
                        let _147 := add(expr_7832_mpos, 128)
                        let _148 := read_from_memoryt_uint256(_147)
                        let expr_7833 := _148
                        /// @src 90:26515:26519  "step"
                        let _149_mpos := var_step_7690_mpos
                        let expr_7834_mpos := _149_mpos
                        /// @src 90:26515:26529  "step.feeAmount"
                        let _150 := add(expr_7834_mpos, 192)
                        let _151 := read_from_memoryt_uint256(_150)
                        let expr_7835 := _151
                        /// @src 90:26499:26529  "step.amountIn + step.feeAmount"
                        let expr_7836 := checked_add_t_uint256(expr_7833, expr_7835)

                        /// @src 90:26498:26530  "(step.amountIn + step.feeAmount)"
                        let expr_7837 := expr_7836
                        /// @src 90:26498:26539  "(step.amountIn + step.feeAmount).toInt256"
                        let expr_7838_self := expr_7837
                        /// @src 90:26498:26541  "(step.amountIn + step.feeAmount).toInt256()"
                        let expr_7839 := fun_toInt256_20983(expr_7838_self)
                        /// @src 90:26471:26542  "state.amountCalculated.add((step.amountIn + step.feeAmount).toInt256())"
                        let expr_7840 := fun_add_19939(expr_7831_self, expr_7839)
                        /// @src 90:26446:26451  "state"
                        let _152_mpos := var_state_7662_mpos
                        let expr_7826_mpos := _152_mpos
                        /// @src 90:26446:26468  "state.amountCalculated"
                        let _153 := add(expr_7826_mpos, 32)
                        /// @src 90:26446:26542  "state.amountCalculated = state.amountCalculated.add((step.amountIn + step.feeAmount).toInt256())"
                        let _154 := expr_7840
                        write_to_memory_t_int256(_153, _154)
                        let expr_7841 := expr_7840
                        /// @src 90:26123:26557  "if (exactInput) {..."
                    }
                    default {
                        /// @src 90:26192:26196  "step"
                        let _155_mpos := var_step_7690_mpos
                        let expr_7793_mpos := _155_mpos
                        /// @src 90:26192:26205  "step.amountIn"
                        let _156 := add(expr_7793_mpos, 128)
                        let _157 := read_from_memoryt_uint256(_156)
                        let expr_7794 := _157
                        /// @src 90:26208:26212  "step"
                        let _158_mpos := var_step_7690_mpos
                        let expr_7795_mpos := _158_mpos
                        /// @src 90:26208:26222  "step.feeAmount"
                        let _159 := add(expr_7795_mpos, 192)
                        let _160 := read_from_memoryt_uint256(_159)
                        let expr_7796 := _160
                        /// @src 90:26192:26222  "step.amountIn + step.feeAmount"
                        let expr_7797 := checked_add_t_uint256(expr_7794, expr_7796)

                        /// @src 90:26191:26223  "(step.amountIn + step.feeAmount)"
                        let expr_7798 := expr_7797
                        /// @src 90:26191:26232  "(step.amountIn + step.feeAmount).toInt256"
                        let expr_7799_self := expr_7798
                        /// @src 90:26191:26234  "(step.amountIn + step.feeAmount).toInt256()"
                        let expr_7800 := fun_toInt256_20983(expr_7799_self)
                        /// @src 90:26157:26162  "state"
                        let _161_mpos := var_state_7662_mpos
                        let expr_7790_mpos := _161_mpos
                        /// @src 90:26157:26187  "state.amountSpecifiedRemaining"
                        let _162 := add(expr_7790_mpos, 0)
                        /// @src 90:26157:26234  "state.amountSpecifiedRemaining -= (step.amountIn + step.feeAmount).toInt256()"
                        let _163 := read_from_memoryt_int256(_162)
                        let expr_7801 := checked_sub_t_int256(_163, expr_7800)

                        let _164 := expr_7801
                        write_to_memory_t_int256(_162, _164)
                        /// @src 90:26277:26282  "state"
                        let _165_mpos := var_state_7662_mpos
                        let expr_7806_mpos := _165_mpos
                        /// @src 90:26277:26299  "state.amountCalculated"
                        let _166 := add(expr_7806_mpos, 32)
                        let _167 := read_from_memoryt_int256(_166)
                        let expr_7807 := _167
                        /// @src 90:26277:26303  "state.amountCalculated.sub"
                        let expr_7808_self := expr_7807
                        /// @src 90:26304:26308  "step"
                        let _168_mpos := var_step_7690_mpos
                        let expr_7809_mpos := _168_mpos
                        /// @src 90:26304:26318  "step.amountOut"
                        let _169 := add(expr_7809_mpos, 160)
                        let _170 := read_from_memoryt_uint256(_169)
                        let expr_7810 := _170
                        /// @src 90:26304:26327  "step.amountOut.toInt256"
                        let expr_7811_self := expr_7810
                        /// @src 90:26304:26329  "step.amountOut.toInt256()"
                        let expr_7812 := fun_toInt256_20983(expr_7811_self)
                        /// @src 90:26277:26330  "state.amountCalculated.sub(step.amountOut.toInt256())"
                        let expr_7813 := fun_sub_19966(expr_7808_self, expr_7812)
                        /// @src 90:26252:26257  "state"
                        let _171_mpos := var_state_7662_mpos
                        let expr_7803_mpos := _171_mpos
                        /// @src 90:26252:26274  "state.amountCalculated"
                        let _172 := add(expr_7803_mpos, 32)
                        /// @src 90:26252:26330  "state.amountCalculated = state.amountCalculated.sub(step.amountOut.toInt256())"
                        let _173 := expr_7813
                        write_to_memory_t_int256(_172, _173)
                        let expr_7814 := expr_7813
                        /// @src 90:26123:26557  "if (exactInput) {..."
                    }
                    /// @src 90:26692:26697  "cache"
                    let _174_mpos := var_cache_7632_mpos
                    let expr_7845_mpos := _174_mpos
                    /// @src 90:26692:26709  "cache.feeProtocol"
                    let _175 := add(expr_7845_mpos, 0)
                    let _176 := read_from_memoryt_uint8(_175)
                    let expr_7846 := _176
                    /// @src 90:26712:26713  "0"
                    let expr_7847 := 0x00
                    /// @src 90:26692:26713  "cache.feeProtocol > 0"
                    let expr_7848 := gt(cleanup_t_uint8(expr_7846), convert_t_rational_0_by_1_to_t_uint8(expr_7847))
                    /// @src 90:26688:26892  "if (cache.feeProtocol > 0) {..."
                    if expr_7848 {
                        /// @src 90:26749:26753  "step"
                        let _177_mpos := var_step_7690_mpos
                        let expr_7851_mpos := _177_mpos
                        /// @src 90:26749:26763  "step.feeAmount"
                        let _178 := add(expr_7851_mpos, 192)
                        let _179 := read_from_memoryt_uint256(_178)
                        let expr_7852 := _179
                        /// @src 90:26766:26771  "cache"
                        let _180_mpos := var_cache_7632_mpos
                        let expr_7853_mpos := _180_mpos
                        /// @src 90:26766:26783  "cache.feeProtocol"
                        let _181 := add(expr_7853_mpos, 0)
                        let _182 := read_from_memoryt_uint8(_181)
                        let expr_7854 := _182
                        /// @src 90:26749:26783  "step.feeAmount / cache.feeProtocol"
                        let expr_7855 := checked_div_t_uint256(expr_7852, convert_t_uint8_to_t_uint256(expr_7854))

                        /// @src 90:26733:26783  "uint256 delta = step.feeAmount / cache.feeProtocol"
                        let var_delta_7850 := expr_7855
                        /// @src 90:26819:26824  "delta"
                        let _183 := var_delta_7850
                        let expr_7860 := _183
                        /// @src 90:26801:26805  "step"
                        let _184_mpos := var_step_7690_mpos
                        let expr_7857_mpos := _184_mpos
                        /// @src 90:26801:26815  "step.feeAmount"
                        let _185 := add(expr_7857_mpos, 192)
                        /// @src 90:26801:26824  "step.feeAmount -= delta"
                        let _186 := read_from_memoryt_uint256(_185)
                        let expr_7861 := checked_sub_t_uint256(_186, expr_7860)

                        let _187 := expr_7861
                        write_to_memory_t_uint256(_185, _187)
                        /// @src 90:26871:26876  "delta"
                        let _188 := var_delta_7850
                        let expr_7868 := _188
                        /// @src 90:26863:26877  "uint128(delta)"
                        let expr_7869 := convert_t_uint256_to_t_uint128(expr_7868)
                        /// @src 90:26842:26847  "state"
                        let _189_mpos := var_state_7662_mpos
                        let expr_7863_mpos := _189_mpos
                        /// @src 90:26842:26859  "state.protocolFee"
                        let _190 := add(expr_7863_mpos, 160)
                        /// @src 90:26842:26877  "state.protocolFee += uint128(delta)"
                        let _191 := read_from_memoryt_uint128(_190)
                        let expr_7870 := checked_add_t_uint128(_191, expr_7869)

                        let _192 := expr_7870
                        write_to_memory_t_uint128(_190, _192)
                        /// @src 90:26688:26892  "if (cache.feeProtocol > 0) {..."
                    }
                    /// @src 90:26951:26956  "state"
                    let _193_mpos := var_state_7662_mpos
                    let expr_7874_mpos := _193_mpos
                    /// @src 90:26951:26966  "state.liquidity"
                    let _194 := add(expr_7874_mpos, 192)
                    let _195 := read_from_memoryt_uint128(_194)
                    let expr_7875 := _195
                    /// @src 90:26969:26970  "0"
                    let expr_7876 := 0x00
                    /// @src 90:26951:26970  "state.liquidity > 0"
                    let expr_7877 := gt(cleanup_t_uint128(expr_7875), convert_t_rational_0_by_1_to_t_uint128(expr_7876))
                    /// @src 90:26947:27085  "if (state.liquidity > 0)..."
                    if expr_7877 {
                        /// @src 90:27017:27025  "FullMath"
                        let expr_7881_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                        /// @src 90:27033:27037  "step"
                        let _196_mpos := var_step_7690_mpos
                        let expr_7883_mpos := _196_mpos
                        /// @src 90:27033:27047  "step.feeAmount"
                        let _197 := add(expr_7883_mpos, 192)
                        let _198 := read_from_memoryt_uint256(_197)
                        let expr_7884 := _198
                        /// @src 90:27049:27062  "FixedPoint128"
                        let expr_7885_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint128.sol:FixedPoint128")
                        /// @src 90:27049:27067  "FixedPoint128.Q128"
                        let expr_7886 := constant_Q128_9256()
                        /// @src 90:27069:27074  "state"
                        let _200_mpos := var_state_7662_mpos
                        let expr_7887_mpos := _200_mpos
                        /// @src 90:27069:27084  "state.liquidity"
                        let _201 := add(expr_7887_mpos, 192)
                        let _202 := read_from_memoryt_uint128(_201)
                        let expr_7888 := _202
                        /// @src 90:27017:27085  "FullMath.mulDiv(step.feeAmount, FixedPoint128.Q128, state.liquidity)"
                        let _203 := convert_t_uint128_to_t_uint256(expr_7888)
                        let expr_7889 := fun_mulDiv_9388(expr_7884, expr_7886, _203)
                        /// @src 90:26988:26993  "state"
                        let _204_mpos := var_state_7662_mpos
                        let expr_7878_mpos := _204_mpos
                        /// @src 90:26988:27013  "state.feeGrowthGlobalX128"
                        let _205 := add(expr_7878_mpos, 128)
                        /// @src 90:26988:27085  "state.feeGrowthGlobalX128 += FullMath.mulDiv(step.feeAmount, FixedPoint128.Q128, state.liquidity)"
                        let _206 := read_from_memoryt_uint256(_205)
                        let expr_7890 := checked_add_t_uint256(_206, expr_7889)

                        let _207 := expr_7890
                        write_to_memory_t_uint256(_205, _207)
                        /// @src 90:26947:27085  "if (state.liquidity > 0)..."
                    }
                    /// @src 90:27159:27164  "state"
                    let _208_mpos := var_state_7662_mpos
                    let expr_7893_mpos := _208_mpos
                    /// @src 90:27159:27177  "state.sqrtPriceX96"
                    let _209 := add(expr_7893_mpos, 64)
                    let _210 := read_from_memoryt_uint160(_209)
                    let expr_7894 := _210
                    /// @src 90:27181:27185  "step"
                    let _211_mpos := var_step_7690_mpos
                    let expr_7895_mpos := _211_mpos
                    /// @src 90:27181:27202  "step.sqrtPriceNextX96"
                    let _212 := add(expr_7895_mpos, 96)
                    let _213 := read_from_memoryt_uint160(_212)
                    let expr_7896 := _213
                    /// @src 90:27159:27202  "state.sqrtPriceX96 == step.sqrtPriceNextX96"
                    let expr_7897 := eq(cleanup_t_uint160(expr_7894), cleanup_t_uint160(expr_7896))
                    /// @src 90:27155:29286  "if (state.sqrtPriceX96 == step.sqrtPriceNextX96) {..."
                    switch expr_7897
                    case 0 {
                        /// @src 90:29027:29032  "state"
                        let _214_mpos := var_state_7662_mpos
                        let expr_7993_mpos := _214_mpos
                        /// @src 90:29027:29045  "state.sqrtPriceX96"
                        let _215 := add(expr_7993_mpos, 64)
                        let _216 := read_from_memoryt_uint160(_215)
                        let expr_7994 := _216
                        /// @src 90:29049:29053  "step"
                        let _217_mpos := var_step_7690_mpos
                        let expr_7995_mpos := _217_mpos
                        /// @src 90:29049:29071  "step.sqrtPriceStartX96"
                        let _218 := add(expr_7995_mpos, 0)
                        let _219 := read_from_memoryt_uint160(_218)
                        let expr_7996 := _219
                        /// @src 90:29027:29071  "state.sqrtPriceX96 != step.sqrtPriceStartX96"
                        let expr_7997 := iszero(eq(cleanup_t_uint160(expr_7994), cleanup_t_uint160(expr_7996)))
                        /// @src 90:29023:29286  "if (state.sqrtPriceX96 != step.sqrtPriceStartX96) {..."
                        if expr_7997 {
                            /// @src 90:29224:29232  "TickMath"
                            let expr_8001_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                            /// @src 90:29252:29257  "state"
                            let _220_mpos := var_state_7662_mpos
                            let expr_8003_mpos := _220_mpos
                            /// @src 90:29252:29270  "state.sqrtPriceX96"
                            let _221 := add(expr_8003_mpos, 64)
                            let _222 := read_from_memoryt_uint160(_221)
                            let expr_8004 := _222
                            /// @src 90:29224:29271  "TickMath.getTickAtSqrtRatio(state.sqrtPriceX96)"
                            let expr_8005 := fun_getTickAtSqrtRatio_5632(expr_8004)
                            /// @src 90:29211:29216  "state"
                            let _223_mpos := var_state_7662_mpos
                            let expr_7998_mpos := _223_mpos
                            /// @src 90:29211:29221  "state.tick"
                            let _224 := add(expr_7998_mpos, 96)
                            /// @src 90:29211:29271  "state.tick = TickMath.getTickAtSqrtRatio(state.sqrtPriceX96)"
                            let _225 := expr_8005
                            write_to_memory_t_int24(_224, _225)
                            let expr_8006 := expr_8005
                            /// @src 90:29023:29286  "if (state.sqrtPriceX96 != step.sqrtPriceStartX96) {..."
                        }
                        /// @src 90:27155:29286  "if (state.sqrtPriceX96 == step.sqrtPriceNextX96) {..."
                    }
                    default {
                        /// @src 90:27297:27301  "step"
                        let _226_mpos := var_step_7690_mpos
                        let expr_7898_mpos := _226_mpos
                        /// @src 90:27297:27313  "step.initialized"
                        let _227 := add(expr_7898_mpos, 64)
                        let _228 := read_from_memoryt_bool(_227)
                        let expr_7899 := _228
                        /// @src 90:27293:28925  "if (step.initialized) {..."
                        if expr_7899 {
                            /// @src 90:27512:27517  "cache"
                            let _229_mpos := var_cache_7632_mpos
                            let expr_7900_mpos := _229_mpos
                            /// @src 90:27512:27543  "cache.computedLatestObservation"
                            let _230 := add(expr_7900_mpos, 160)
                            let _231 := read_from_memoryt_bool(_230)
                            let expr_7901 := _231
                            /// @src 90:27511:27543  "!cache.computedLatestObservation"
                            let expr_7902 := cleanup_t_bool(iszero(expr_7901))
                            /// @src 90:27507:28072  "if (!cache.computedLatestObservation) {..."
                            if expr_7902 {
                                /// @src 90:27637:27649  "observations"
                                let _232_slot := 0x08
                                let expr_7909_slot := _232_slot
                                /// @src 90:27637:27663  "observations.observeSingle"
                                let expr_7910_self_slot := convert_array_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_to_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_7909_slot)
                                /// @src 90:27693:27698  "cache"
                                let _233_mpos := var_cache_7632_mpos
                                let expr_7911_mpos := _233_mpos
                                /// @src 90:27693:27713  "cache.blockTimestamp"
                                let _234 := add(expr_7911_mpos, 64)
                                let _235 := read_from_memoryt_uint32(_234)
                                let expr_7912 := _235
                                /// @src 90:27743:27744  "0"
                                let expr_7913 := 0x00
                                /// @src 90:27774:27784  "slot0Start"
                                let _236_mpos := var_slot0Start_7591_mpos
                                let expr_7914_mpos := _236_mpos
                                /// @src 90:27774:27789  "slot0Start.tick"
                                let _237 := add(expr_7914_mpos, 32)
                                let _238 := read_from_memoryt_int24(_237)
                                let expr_7915 := _238
                                /// @src 90:27819:27829  "slot0Start"
                                let _239_mpos := var_slot0Start_7591_mpos
                                let expr_7916_mpos := _239_mpos
                                /// @src 90:27819:27846  "slot0Start.observationIndex"
                                let _240 := add(expr_7916_mpos, 64)
                                let _241 := read_from_memoryt_uint16(_240)
                                let expr_7917 := _241
                                /// @src 90:27876:27881  "cache"
                                let _242_mpos := var_cache_7632_mpos
                                let expr_7918_mpos := _242_mpos
                                /// @src 90:27876:27896  "cache.liquidityStart"
                                let _243 := add(expr_7918_mpos, 32)
                                let _244 := read_from_memoryt_uint128(_243)
                                let expr_7919 := _244
                                /// @src 90:27926:27936  "slot0Start"
                                let _245_mpos := var_slot0Start_7591_mpos
                                let expr_7920_mpos := _245_mpos
                                /// @src 90:27926:27959  "slot0Start.observationCardinality"
                                let _246 := add(expr_7920_mpos, 96)
                                let _247 := read_from_memoryt_uint16(_246)
                                let expr_7921 := _247
                                /// @src 90:27637:27985  "observations.observeSingle(..."
                                let _248 := convert_t_rational_0_by_1_to_t_uint32(expr_7913)
                                let expr_7922_component_1, expr_7922_component_2 := fun_observeSingle_20649(expr_7910_self_slot, expr_7912, _248, expr_7915, expr_7917, expr_7919, expr_7921)
                                /// @src 90:27572:27577  "cache"
                                let _249_mpos := var_cache_7632_mpos
                                let expr_7903_mpos := _249_mpos
                                /// @src 90:27572:27592  "cache.tickCumulative"
                                let _250 := add(expr_7903_mpos, 96)
                                /// @src 90:27594:27599  "cache"
                                let _251_mpos := var_cache_7632_mpos
                                let expr_7906_mpos := _251_mpos
                                /// @src 90:27594:27633  "cache.secondsPerLiquidityCumulativeX128"
                                let _252 := add(expr_7906_mpos, 128)
                                /// @src 90:27571:27985  "(cache.tickCumulative, cache.secondsPerLiquidityCumulativeX128) = observations.observeSingle(..."
                                let _253 := expr_7922_component_2
                                write_to_memory_t_uint160(_252, _253)
                                let _254 := expr_7922_component_1
                                write_to_memory_t_int56(_250, _254)
                                /// @src 90:28045:28049  "true"
                                let expr_7928 := 0x01
                                /// @src 90:28011:28016  "cache"
                                let _255_mpos := var_cache_7632_mpos
                                let expr_7925_mpos := _255_mpos
                                /// @src 90:28011:28042  "cache.computedLatestObservation"
                                let _256 := add(expr_7925_mpos, 160)
                                /// @src 90:28011:28049  "cache.computedLatestObservation = true"
                                let _257 := expr_7928
                                write_to_memory_t_bool(_256, _257)
                                let expr_7929 := expr_7928
                                /// @src 90:27507:28072  "if (!cache.computedLatestObservation) {..."
                            }
                            /// @src 90:28139:28144  "ticks"
                            let _258_slot := 0x05
                            let expr_7935_slot := _258_slot
                            /// @src 90:28139:28150  "ticks.cross"
                            let expr_7936_self_slot := expr_7935_slot
                            /// @src 90:28180:28184  "step"
                            let _259_mpos := var_step_7690_mpos
                            let expr_7937_mpos := _259_mpos
                            /// @src 90:28180:28193  "step.tickNext"
                            let _260 := add(expr_7937_mpos, 32)
                            let _261 := read_from_memoryt_int24(_260)
                            let expr_7938 := _261
                            /// @src 90:28224:28234  "zeroForOne"
                            let _262 := var_zeroForOne_7566
                            let expr_7939 := _262
                            /// @src 90:28224:28285  "zeroForOne ? state.feeGrowthGlobalX128 : feeGrowthGlobal0X128"
                            let expr_7943
                            switch expr_7939
                            case 0 {
                                /// @src 90:28265:28285  "feeGrowthGlobal0X128"
                                let _263 := read_from_storage_split_offset_0_t_uint256(0x01)
                                let expr_7942 := _263
                                /// @src 90:28224:28285  "zeroForOne ? state.feeGrowthGlobalX128 : feeGrowthGlobal0X128"
                                expr_7943 := expr_7942
                            }
                            default {
                                /// @src 90:28237:28242  "state"
                                let _264_mpos := var_state_7662_mpos
                                let expr_7940_mpos := _264_mpos
                                /// @src 90:28237:28262  "state.feeGrowthGlobalX128"
                                let _265 := add(expr_7940_mpos, 128)
                                let _266 := read_from_memoryt_uint256(_265)
                                let expr_7941 := _266
                                /// @src 90:28224:28285  "zeroForOne ? state.feeGrowthGlobalX128 : feeGrowthGlobal0X128"
                                expr_7943 := expr_7941
                            }
                            /// @src 90:28223:28286  "(zeroForOne ? state.feeGrowthGlobalX128 : feeGrowthGlobal0X128)"
                            let expr_7944 := expr_7943
                            /// @src 90:28317:28327  "zeroForOne"
                            let _267 := var_zeroForOne_7566
                            let expr_7945 := _267
                            /// @src 90:28317:28378  "zeroForOne ? feeGrowthGlobal1X128 : state.feeGrowthGlobalX128"
                            let expr_7949
                            switch expr_7945
                            case 0 {
                                /// @src 90:28353:28358  "state"
                                let _268_mpos := var_state_7662_mpos
                                let expr_7947_mpos := _268_mpos
                                /// @src 90:28353:28378  "state.feeGrowthGlobalX128"
                                let _269 := add(expr_7947_mpos, 128)
                                let _270 := read_from_memoryt_uint256(_269)
                                let expr_7948 := _270
                                /// @src 90:28317:28378  "zeroForOne ? feeGrowthGlobal1X128 : state.feeGrowthGlobalX128"
                                expr_7949 := expr_7948
                            }
                            default {
                                /// @src 90:28330:28350  "feeGrowthGlobal1X128"
                                let _271 := read_from_storage_split_offset_0_t_uint256(0x02)
                                let expr_7946 := _271
                                /// @src 90:28317:28378  "zeroForOne ? feeGrowthGlobal1X128 : state.feeGrowthGlobalX128"
                                expr_7949 := expr_7946
                            }
                            /// @src 90:28316:28379  "(zeroForOne ? feeGrowthGlobal1X128 : state.feeGrowthGlobalX128)"
                            let expr_7950 := expr_7949
                            /// @src 90:28409:28414  "cache"
                            let _272_mpos := var_cache_7632_mpos
                            let expr_7951_mpos := _272_mpos
                            /// @src 90:28409:28448  "cache.secondsPerLiquidityCumulativeX128"
                            let _273 := add(expr_7951_mpos, 128)
                            let _274 := read_from_memoryt_uint160(_273)
                            let expr_7952 := _274
                            /// @src 90:28478:28483  "cache"
                            let _275_mpos := var_cache_7632_mpos
                            let expr_7953_mpos := _275_mpos
                            /// @src 90:28478:28498  "cache.tickCumulative"
                            let _276 := add(expr_7953_mpos, 96)
                            let _277 := read_from_memoryt_int56(_276)
                            let expr_7954 := _277
                            /// @src 90:28528:28533  "cache"
                            let _278_mpos := var_cache_7632_mpos
                            let expr_7955_mpos := _278_mpos
                            /// @src 90:28528:28548  "cache.blockTimestamp"
                            let _279 := add(expr_7955_mpos, 64)
                            let _280 := read_from_memoryt_uint32(_279)
                            let expr_7956 := _280
                            /// @src 90:28139:28574  "ticks.cross(..."
                            let expr_7957 := fun_cross_22220(expr_7936_self_slot, expr_7938, expr_7944, expr_7950, expr_7952, expr_7954, expr_7956)
                            /// @src 90:28093:28574  "int128 liquidityNet =..."
                            let var_liquidityNet_7934 := expr_7957
                            /// @src 90:28772:28782  "zeroForOne"
                            let _281 := var_zeroForOne_7566
                            let expr_7959 := _281
                            /// @src 90:28768:28812  "if (zeroForOne) liquidityNet = -liquidityNet"
                            if expr_7959 {
                                /// @src 90:28800:28812  "liquidityNet"
                                let _282 := var_liquidityNet_7934
                                let expr_7961 := _282
                                /// @src 90:28799:28812  "-liquidityNet"
                                let expr_7962 := negate_t_int128(expr_7961)
                                /// @src 90:28784:28812  "liquidityNet = -liquidityNet"
                                var_liquidityNet_7934 := expr_7962
                                let expr_7963 := expr_7962
                                /// @src 90:28768:28812  "if (zeroForOne) liquidityNet = -liquidityNet"
                            }
                            /// @src 90:28853:28866  "LiquidityMath"
                            let expr_7969_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/LiquidityMath.sol:LiquidityMath")
                            /// @src 90:28876:28881  "state"
                            let _283_mpos := var_state_7662_mpos
                            let expr_7971_mpos := _283_mpos
                            /// @src 90:28876:28891  "state.liquidity"
                            let _284 := add(expr_7971_mpos, 192)
                            let _285 := read_from_memoryt_uint128(_284)
                            let expr_7972 := _285
                            /// @src 90:28893:28905  "liquidityNet"
                            let _286 := var_liquidityNet_7934
                            let expr_7973 := _286
                            /// @src 90:28853:28906  "LiquidityMath.addDelta(state.liquidity, liquidityNet)"
                            let expr_7974 := fun_addDelta_19836(expr_7972, expr_7973)
                            /// @src 90:28835:28840  "state"
                            let _287_mpos := var_state_7662_mpos
                            let expr_7966_mpos := _287_mpos
                            /// @src 90:28835:28850  "state.liquidity"
                            let _288 := add(expr_7966_mpos, 192)
                            /// @src 90:28835:28906  "state.liquidity = LiquidityMath.addDelta(state.liquidity, liquidityNet)"
                            let _289 := expr_7974
                            write_to_memory_t_uint128(_288, _289)
                            let expr_7975 := expr_7974
                            /// @src 90:27293:28925  "if (step.initialized) {..."
                        }
                        /// @src 90:28956:28966  "zeroForOne"
                        let _290 := var_zeroForOne_7566
                        let expr_7982 := _290
                        /// @src 90:28956:29002  "zeroForOne ? step.tickNext - 1 : step.tickNext"
                        let expr_7989
                        switch expr_7982
                        case 0 {
                            /// @src 90:28989:28993  "step"
                            let _291_mpos := var_step_7690_mpos
                            let expr_7987_mpos := _291_mpos
                            /// @src 90:28989:29002  "step.tickNext"
                            let _292 := add(expr_7987_mpos, 32)
                            let _293 := read_from_memoryt_int24(_292)
                            let expr_7988 := _293
                            /// @src 90:28956:29002  "zeroForOne ? step.tickNext - 1 : step.tickNext"
                            expr_7989 := expr_7988
                        }
                        default {
                            /// @src 90:28969:28973  "step"
                            let _294_mpos := var_step_7690_mpos
                            let expr_7983_mpos := _294_mpos
                            /// @src 90:28969:28982  "step.tickNext"
                            let _295 := add(expr_7983_mpos, 32)
                            let _296 := read_from_memoryt_int24(_295)
                            let expr_7984 := _296
                            /// @src 90:28985:28986  "1"
                            let expr_7985 := 0x01
                            /// @src 90:28969:28986  "step.tickNext - 1"
                            let expr_7986 := checked_sub_t_int24(expr_7984, convert_t_rational_1_by_1_to_t_int24(expr_7985))

                            /// @src 90:28956:29002  "zeroForOne ? step.tickNext - 1 : step.tickNext"
                            expr_7989 := expr_7986
                        }
                        /// @src 90:28943:28948  "state"
                        let _297_mpos := var_state_7662_mpos
                        let expr_7979_mpos := _297_mpos
                        /// @src 90:28943:28953  "state.tick"
                        let _298 := add(expr_7979_mpos, 96)
                        /// @src 90:28943:29002  "state.tick = zeroForOne ? step.tickNext - 1 : step.tickNext"
                        let _299 := expr_7989
                        write_to_memory_t_int24(_298, _299)
                        let expr_7990 := expr_7989
                        /// @src 90:27155:29286  "if (state.sqrtPriceX96 == step.sqrtPriceNextX96) {..."
                    }
                }
                /// @src 90:29378:29383  "state"
                let _300_mpos := var_state_7662_mpos
                let expr_8013_mpos := _300_mpos
                /// @src 90:29378:29388  "state.tick"
                let _301 := add(expr_8013_mpos, 96)
                let _302 := read_from_memoryt_int24(_301)
                let expr_8014 := _302
                /// @src 90:29392:29402  "slot0Start"
                let _303_mpos := var_slot0Start_7591_mpos
                let expr_8015_mpos := _303_mpos
                /// @src 90:29392:29407  "slot0Start.tick"
                let _304 := add(expr_8015_mpos, 32)
                let _305 := read_from_memoryt_int24(_304)
                let expr_8016 := _305
                /// @src 90:29378:29407  "state.tick != slot0Start.tick"
                let expr_8017 := iszero(eq(cleanup_t_int24(expr_8014), cleanup_t_int24(expr_8016)))
                /// @src 90:29374:30201  "if (state.tick != slot0Start.tick) {..."
                switch expr_8017
                case 0 {
                    /// @src 90:30172:30177  "state"
                    let _306_mpos := var_state_7662_mpos
                    let expr_8061_mpos := _306_mpos
                    /// @src 90:30172:30190  "state.sqrtPriceX96"
                    let _307 := add(expr_8061_mpos, 64)
                    let _308 := read_from_memoryt_uint160(_307)
                    let expr_8062 := _308
                    /// @src 90:30151:30156  "slot0"
                    let _309_slot := 0x00
                    let expr_8058_slot := _309_slot
                    /// @src 90:30151:30169  "slot0.sqrtPriceX96"
                    let _310 := add(expr_8058_slot, 0)
                    /// @src 90:30151:30190  "slot0.sqrtPriceX96 = state.sqrtPriceX96"
                    update_storage_value_offset_0_t_uint160_to_t_uint160(_310, expr_8062)
                    let expr_8063 := expr_8062
                    /// @src 90:29374:30201  "if (state.tick != slot0Start.tick) {..."
                }
                default {
                    /// @src 90:29498:29510  "observations"
                    let _311_slot := 0x08
                    let expr_8022_slot := _311_slot
                    /// @src 90:29498:29516  "observations.write"
                    let expr_8023_self_slot := convert_array_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_to_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_8022_slot)
                    /// @src 90:29538:29548  "slot0Start"
                    let _312_mpos := var_slot0Start_7591_mpos
                    let expr_8024_mpos := _312_mpos
                    /// @src 90:29538:29565  "slot0Start.observationIndex"
                    let _313 := add(expr_8024_mpos, 64)
                    let _314 := read_from_memoryt_uint16(_313)
                    let expr_8025 := _314
                    /// @src 90:29587:29592  "cache"
                    let _315_mpos := var_cache_7632_mpos
                    let expr_8026_mpos := _315_mpos
                    /// @src 90:29587:29607  "cache.blockTimestamp"
                    let _316 := add(expr_8026_mpos, 64)
                    let _317 := read_from_memoryt_uint32(_316)
                    let expr_8027 := _317
                    /// @src 90:29629:29639  "slot0Start"
                    let _318_mpos := var_slot0Start_7591_mpos
                    let expr_8028_mpos := _318_mpos
                    /// @src 90:29629:29644  "slot0Start.tick"
                    let _319 := add(expr_8028_mpos, 32)
                    let _320 := read_from_memoryt_int24(_319)
                    let expr_8029 := _320
                    /// @src 90:29666:29671  "cache"
                    let _321_mpos := var_cache_7632_mpos
                    let expr_8030_mpos := _321_mpos
                    /// @src 90:29666:29686  "cache.liquidityStart"
                    let _322 := add(expr_8030_mpos, 32)
                    let _323 := read_from_memoryt_uint128(_322)
                    let expr_8031 := _323
                    /// @src 90:29708:29718  "slot0Start"
                    let _324_mpos := var_slot0Start_7591_mpos
                    let expr_8032_mpos := _324_mpos
                    /// @src 90:29708:29741  "slot0Start.observationCardinality"
                    let _325 := add(expr_8032_mpos, 96)
                    let _326 := read_from_memoryt_uint16(_325)
                    let expr_8033 := _326
                    /// @src 90:29763:29773  "slot0Start"
                    let _327_mpos := var_slot0Start_7591_mpos
                    let expr_8034_mpos := _327_mpos
                    /// @src 90:29763:29800  "slot0Start.observationCardinalityNext"
                    let _328 := add(expr_8034_mpos, 128)
                    let _329 := read_from_memoryt_uint16(_328)
                    let expr_8035 := _329
                    /// @src 90:29498:29818  "observations.write(..."
                    let expr_8036_component_1, expr_8036_component_2 := fun_write_20156(expr_8023_self_slot, expr_8025, expr_8027, expr_8029, expr_8031, expr_8033, expr_8035)
                    /// @src 90:29423:29818  "(uint16 observationIndex, uint16 observationCardinality) =..."
                    let var_observationIndex_8019 := expr_8036_component_1
                    let var_observationCardinality_8021 := expr_8036_component_2
                    /// @src 90:29939:29944  "state"
                    let _330_mpos := var_state_7662_mpos
                    let expr_8048_mpos := _330_mpos
                    /// @src 90:29939:29957  "state.sqrtPriceX96"
                    let _331 := add(expr_8048_mpos, 64)
                    let _332 := read_from_memoryt_uint160(_331)
                    let expr_8049 := _332
                    /// @src 90:29921:30073  "(..."
                    let expr_8054_component_1 := expr_8049
                    /// @src 90:29975:29980  "state"
                    let _333_mpos := var_state_7662_mpos
                    let expr_8050_mpos := _333_mpos
                    /// @src 90:29975:29985  "state.tick"
                    let _334 := add(expr_8050_mpos, 96)
                    let _335 := read_from_memoryt_int24(_334)
                    let expr_8051 := _335
                    /// @src 90:29921:30073  "(..."
                    let expr_8054_component_2 := expr_8051
                    /// @src 90:30003:30019  "observationIndex"
                    let _336 := var_observationIndex_8019
                    let expr_8052 := _336
                    /// @src 90:29921:30073  "(..."
                    let expr_8054_component_3 := expr_8052
                    /// @src 90:30037:30059  "observationCardinality"
                    let _337 := var_observationCardinality_8021
                    let expr_8053 := _337
                    /// @src 90:29921:30073  "(..."
                    let expr_8054_component_4 := expr_8053
                    /// @src 90:29833:29838  "slot0"
                    let _338_slot := 0x00
                    let expr_8038_slot := _338_slot
                    /// @src 90:29833:29851  "slot0.sqrtPriceX96"
                    let _339 := add(expr_8038_slot, 0)
                    /// @src 90:29853:29858  "slot0"
                    let _340_slot := 0x00
                    let expr_8041_slot := _340_slot
                    /// @src 90:29853:29863  "slot0.tick"
                    let _341 := add(expr_8041_slot, 0)
                    /// @src 90:29865:29870  "slot0"
                    let _342_slot := 0x00
                    let expr_8043_slot := _342_slot
                    /// @src 90:29865:29887  "slot0.observationIndex"
                    let _343 := add(expr_8043_slot, 0)
                    /// @src 90:29889:29894  "slot0"
                    let _344_slot := 0x00
                    let expr_8045_slot := _344_slot
                    /// @src 90:29889:29917  "slot0.observationCardinality"
                    let _345 := add(expr_8045_slot, 0)
                    /// @src 90:29832:30073  "(slot0.sqrtPriceX96, slot0.tick, slot0.observationIndex, slot0.observationCardinality) = (..."
                    update_storage_value_offset_25_t_uint16_to_t_uint16(_345, expr_8054_component_4)
                    update_storage_value_offset_23_t_uint16_to_t_uint16(_343, expr_8054_component_3)
                    update_storage_value_offset_20_t_int24_to_t_int24(_341, expr_8054_component_2)
                    update_storage_value_offset_0_t_uint160_to_t_uint160(_339, expr_8054_component_1)
                    /// @src 90:29374:30201  "if (state.tick != slot0Start.tick) {..."
                }
                /// @src 90:30257:30262  "cache"
                let _346_mpos := var_cache_7632_mpos
                let expr_8067_mpos := _346_mpos
                /// @src 90:30257:30277  "cache.liquidityStart"
                let _347 := add(expr_8067_mpos, 32)
                let _348 := read_from_memoryt_uint128(_347)
                let expr_8068 := _348
                /// @src 90:30281:30286  "state"
                let _349_mpos := var_state_7662_mpos
                let expr_8069_mpos := _349_mpos
                /// @src 90:30281:30296  "state.liquidity"
                let _350 := add(expr_8069_mpos, 192)
                let _351 := read_from_memoryt_uint128(_350)
                let expr_8070 := _351
                /// @src 90:30257:30296  "cache.liquidityStart != state.liquidity"
                let expr_8071 := iszero(eq(cleanup_t_uint128(expr_8068), cleanup_t_uint128(expr_8070)))
                /// @src 90:30253:30325  "if (cache.liquidityStart != state.liquidity) liquidity = state.liquidity"
                if expr_8071 {
                    /// @src 90:30310:30315  "state"
                    let _352_mpos := var_state_7662_mpos
                    let expr_8073_mpos := _352_mpos
                    /// @src 90:30310:30325  "state.liquidity"
                    let _353 := add(expr_8073_mpos, 192)
                    let _354 := read_from_memoryt_uint128(_353)
                    let expr_8074 := _354
                    /// @src 90:30298:30325  "liquidity = state.liquidity"
                    update_storage_value_offset_0_t_uint128_to_t_uint128(0x04, expr_8074)
                    let expr_8075 := expr_8074
                    /// @src 90:30253:30325  "if (cache.liquidityStart != state.liquidity) liquidity = state.liquidity"
                }
                /// @src 90:30507:30517  "zeroForOne"
                let _355 := var_zeroForOne_7566
                let expr_8078 := _355
                /// @src 90:30503:30833  "if (zeroForOne) {..."
                switch expr_8078
                case 0 {
                    /// @src 90:30716:30721  "state"
                    let _356_mpos := var_state_7662_mpos
                    let expr_8098_mpos := _356_mpos
                    /// @src 90:30716:30741  "state.feeGrowthGlobalX128"
                    let _357 := add(expr_8098_mpos, 128)
                    let _358 := read_from_memoryt_uint256(_357)
                    let expr_8099 := _358
                    /// @src 90:30693:30741  "feeGrowthGlobal1X128 = state.feeGrowthGlobalX128"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(0x02, expr_8099)
                    let expr_8100 := expr_8099
                    /// @src 90:30759:30764  "state"
                    let _359_mpos := var_state_7662_mpos
                    let expr_8102_mpos := _359_mpos
                    /// @src 90:30759:30776  "state.protocolFee"
                    let _360 := add(expr_8102_mpos, 160)
                    let _361 := read_from_memoryt_uint128(_360)
                    let expr_8103 := _361
                    /// @src 90:30779:30780  "0"
                    let expr_8104 := 0x00
                    /// @src 90:30759:30780  "state.protocolFee > 0"
                    let expr_8105 := gt(cleanup_t_uint128(expr_8103), convert_t_rational_0_by_1_to_t_uint128(expr_8104))
                    /// @src 90:30755:30822  "if (state.protocolFee > 0) protocolFees.token1 += state.protocolFee"
                    if expr_8105 {
                        /// @src 90:30805:30810  "state"
                        let _362_mpos := var_state_7662_mpos
                        let expr_8109_mpos := _362_mpos
                        /// @src 90:30805:30822  "state.protocolFee"
                        let _363 := add(expr_8109_mpos, 160)
                        let _364 := read_from_memoryt_uint128(_363)
                        let expr_8110 := _364
                        /// @src 90:30782:30794  "protocolFees"
                        let _365_slot := 0x03
                        let expr_8106_slot := _365_slot
                        /// @src 90:30782:30801  "protocolFees.token1"
                        let _366 := add(expr_8106_slot, 0)
                        /// @src 90:30782:30822  "protocolFees.token1 += state.protocolFee"
                        let _367 := read_from_storage_split_offset_16_t_uint128(_366)
                        let expr_8111 := checked_add_t_uint128(_367, expr_8110)

                        update_storage_value_offset_16_t_uint128_to_t_uint128(_366, expr_8111)
                        /// @src 90:30755:30822  "if (state.protocolFee > 0) protocolFees.token1 += state.protocolFee"
                    }
                    /// @src 90:30503:30833  "if (zeroForOne) {..."
                }
                default {
                    /// @src 90:30556:30561  "state"
                    let _368_mpos := var_state_7662_mpos
                    let expr_8080_mpos := _368_mpos
                    /// @src 90:30556:30581  "state.feeGrowthGlobalX128"
                    let _369 := add(expr_8080_mpos, 128)
                    let _370 := read_from_memoryt_uint256(_369)
                    let expr_8081 := _370
                    /// @src 90:30533:30581  "feeGrowthGlobal0X128 = state.feeGrowthGlobalX128"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(0x01, expr_8081)
                    let expr_8082 := expr_8081
                    /// @src 90:30599:30604  "state"
                    let _371_mpos := var_state_7662_mpos
                    let expr_8084_mpos := _371_mpos
                    /// @src 90:30599:30616  "state.protocolFee"
                    let _372 := add(expr_8084_mpos, 160)
                    let _373 := read_from_memoryt_uint128(_372)
                    let expr_8085 := _373
                    /// @src 90:30619:30620  "0"
                    let expr_8086 := 0x00
                    /// @src 90:30599:30620  "state.protocolFee > 0"
                    let expr_8087 := gt(cleanup_t_uint128(expr_8085), convert_t_rational_0_by_1_to_t_uint128(expr_8086))
                    /// @src 90:30595:30662  "if (state.protocolFee > 0) protocolFees.token0 += state.protocolFee"
                    if expr_8087 {
                        /// @src 90:30645:30650  "state"
                        let _374_mpos := var_state_7662_mpos
                        let expr_8091_mpos := _374_mpos
                        /// @src 90:30645:30662  "state.protocolFee"
                        let _375 := add(expr_8091_mpos, 160)
                        let _376 := read_from_memoryt_uint128(_375)
                        let expr_8092 := _376
                        /// @src 90:30622:30634  "protocolFees"
                        let _377_slot := 0x03
                        let expr_8088_slot := _377_slot
                        /// @src 90:30622:30641  "protocolFees.token0"
                        let _378 := add(expr_8088_slot, 0)
                        /// @src 90:30622:30662  "protocolFees.token0 += state.protocolFee"
                        let _379 := read_from_storage_split_offset_0_t_uint128(_378)
                        let expr_8093 := checked_add_t_uint128(_379, expr_8092)

                        update_storage_value_offset_0_t_uint128_to_t_uint128(_378, expr_8093)
                        /// @src 90:30595:30662  "if (state.protocolFee > 0) protocolFees.token0 += state.protocolFee"
                    }
                    /// @src 90:30503:30833  "if (zeroForOne) {..."
                }
                /// @src 90:30864:30874  "zeroForOne"
                let _380 := var_zeroForOne_7566
                let expr_8119 := _380
                /// @src 90:30878:30888  "exactInput"
                let _381 := var_exactInput_7655
                let expr_8120 := _381
                /// @src 90:30864:30888  "zeroForOne == exactInput"
                let expr_8121 := eq(cleanup_t_bool(expr_8119), cleanup_t_bool(expr_8120))
                /// @src 90:30864:31066  "zeroForOne == exactInput..."
                let expr_8136_component_1, expr_8136_component_2
                switch expr_8121
                case 0 {
                    /// @src 90:30993:30998  "state"
                    let _382_mpos := var_state_7662_mpos
                    let expr_8129_mpos := _382_mpos
                    /// @src 90:30993:31015  "state.amountCalculated"
                    let _383 := add(expr_8129_mpos, 32)
                    let _384 := read_from_memoryt_int256(_383)
                    let expr_8130 := _384
                    /// @src 90:30992:31066  "(state.amountCalculated, amountSpecified - state.amountSpecifiedRemaining)"
                    let expr_8135_component_1 := expr_8130
                    /// @src 90:31017:31032  "amountSpecified"
                    let _385 := var_amountSpecified_7568
                    let expr_8131 := _385
                    /// @src 90:31035:31040  "state"
                    let _386_mpos := var_state_7662_mpos
                    let expr_8132_mpos := _386_mpos
                    /// @src 90:31035:31065  "state.amountSpecifiedRemaining"
                    let _387 := add(expr_8132_mpos, 0)
                    let _388 := read_from_memoryt_int256(_387)
                    let expr_8133 := _388
                    /// @src 90:31017:31065  "amountSpecified - state.amountSpecifiedRemaining"
                    let expr_8134 := checked_sub_t_int256(expr_8131, expr_8133)

                    /// @src 90:30992:31066  "(state.amountCalculated, amountSpecified - state.amountSpecifiedRemaining)"
                    let expr_8135_component_2 := expr_8134
                    /// @src 90:30864:31066  "zeroForOne == exactInput..."
                    expr_8136_component_1 := expr_8135_component_1
                    expr_8136_component_2 := expr_8135_component_2
                }
                default {
                    /// @src 90:30904:30919  "amountSpecified"
                    let _389 := var_amountSpecified_7568
                    let expr_8122 := _389
                    /// @src 90:30922:30927  "state"
                    let _390_mpos := var_state_7662_mpos
                    let expr_8123_mpos := _390_mpos
                    /// @src 90:30922:30952  "state.amountSpecifiedRemaining"
                    let _391 := add(expr_8123_mpos, 0)
                    let _392 := read_from_memoryt_int256(_391)
                    let expr_8124 := _392
                    /// @src 90:30904:30952  "amountSpecified - state.amountSpecifiedRemaining"
                    let expr_8125 := checked_sub_t_int256(expr_8122, expr_8124)

                    /// @src 90:30903:30977  "(amountSpecified - state.amountSpecifiedRemaining, state.amountCalculated)"
                    let expr_8128_component_1 := expr_8125
                    /// @src 90:30954:30959  "state"
                    let _393_mpos := var_state_7662_mpos
                    let expr_8126_mpos := _393_mpos
                    /// @src 90:30954:30976  "state.amountCalculated"
                    let _394 := add(expr_8126_mpos, 32)
                    let _395 := read_from_memoryt_int256(_394)
                    let expr_8127 := _395
                    /// @src 90:30903:30977  "(amountSpecified - state.amountSpecifiedRemaining, state.amountCalculated)"
                    let expr_8128_component_2 := expr_8127
                    /// @src 90:30864:31066  "zeroForOne == exactInput..."
                    expr_8136_component_1 := expr_8128_component_1
                    expr_8136_component_2 := expr_8128_component_2
                }
                /// @src 90:30843:31066  "(amount0, amount1) = zeroForOne == exactInput..."
                var_amount1_7580 := expr_8136_component_2
                var_amount0_7578 := expr_8136_component_1
                /// @src 90:31129:31139  "zeroForOne"
                let _396 := var_zeroForOne_7566
                let expr_8139 := _396
                /// @src 90:31125:31809  "if (zeroForOne) {..."
                switch expr_8139
                case 0 {
                    /// @src 90:31496:31503  "amount0"
                    let _397 := var_amount0_7578
                    let expr_8186 := _397
                    /// @src 90:31506:31507  "0"
                    let expr_8187 := 0x00
                    /// @src 90:31496:31507  "amount0 < 0"
                    let expr_8188 := slt(cleanup_t_int256(expr_8186), convert_t_rational_0_by_1_to_t_int256(expr_8187))
                    /// @src 90:31492:31574  "if (amount0 < 0) TransferHelper.safeTransfer(token0, recipient, uint256(-amount0))"
                    if expr_8188 {
                        /// @src 90:31509:31523  "TransferHelper"
                        let expr_8189_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TransferHelper.sol:TransferHelper")
                        /// @src 90:31537:31543  "token0"
                        let _398 := loadimmutable("6241")
                        let expr_8192 := _398
                        /// @src 90:31545:31554  "recipient"
                        let _399 := var_recipient_7564
                        let expr_8193 := _399
                        /// @src 90:31565:31572  "amount0"
                        let _400 := var_amount0_7578
                        let expr_8196 := _400
                        /// @src 90:31564:31572  "-amount0"
                        let expr_8197 := negate_t_int256(expr_8196)
                        /// @src 90:31556:31573  "uint256(-amount0)"
                        let expr_8198 := convert_t_int256_to_t_uint256(expr_8197)
                        fun_safeTransfer_22542(expr_8192, expr_8193, expr_8198)
                        /// @src 90:31492:31574  "if (amount0 < 0) TransferHelper.safeTransfer(token0, recipient, uint256(-amount0))"
                    }
                    /// @src 90:31614:31624  "balance1()"
                    let expr_8205 := fun_balance1_6526()
                    /// @src 90:31589:31624  "uint256 balance1Before = balance1()"
                    let var_balance1Before_8203 := expr_8205
                    /// @src 90:31661:31671  "msg.sender"
                    let expr_8209 := caller()
                    /// @src 90:31638:31672  "IUniswapV3SwapCallback(msg.sender)"
                    let expr_8210_address := convert_t_address_to_t_contract$_IUniswapV3SwapCallback_$19785(expr_8209)
                    /// @src 90:31638:31694  "IUniswapV3SwapCallback(msg.sender).uniswapV3SwapCallback"
                    let expr_8211_address := convert_t_contract$_IUniswapV3SwapCallback_$19785_to_t_address(expr_8210_address)
                    let expr_8211_functionSelector := 0xfa461e33
                    /// @src 90:31695:31702  "amount0"
                    let _401 := var_amount0_7578
                    let expr_8212 := _401
                    /// @src 90:31704:31711  "amount1"
                    let _402 := var_amount1_7580
                    let expr_8213 := _402
                    /// @src 90:31713:31717  "data"
                    let _403_offset := var_data_7572_offset
                    let _403_length := var_data_7572_length
                    let expr_8214_offset := _403_offset
                    let expr_8214_length := _403_length
                    /// @src 90:31638:31718  "IUniswapV3SwapCallback(msg.sender).uniswapV3SwapCallback(amount0, amount1, data)"

                    if iszero(extcodesize(expr_8211_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                    // storage for arguments and returned data
                    let _404 := allocate_unbounded()
                    mstore(_404, shift_left_224(expr_8211_functionSelector))
                    let _405 := abi_encode_tuple_t_int256_t_int256_t_bytes_calldata_ptr__to_t_int256_t_int256_t_bytes_memory_ptr__fromStack(add(_404, 4) , expr_8212, expr_8213, expr_8214_offset, expr_8214_length)

                    let _406 := call(gas(), expr_8211_address,  0,  _404, sub(_405, _404), _404, 0)

                    if iszero(_406) { revert_forward_1() }

                    if _406 {

                        let _407 := 0

                        if gt(_407, returndatasize()) {
                            _407 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_404, _407)

                        // decode return parameters from external try-call into retVars
                        abi_decode_tuple__fromMemory(_404, add(_404, _407))
                    }
                    /// @src 90:31740:31754  "balance1Before"
                    let _408 := var_balance1Before_8203
                    let expr_8218 := _408
                    /// @src 90:31740:31758  "balance1Before.add"
                    let expr_8219_self := expr_8218
                    /// @src 90:31767:31774  "amount1"
                    let _409 := var_amount1_7580
                    let expr_8222 := _409
                    /// @src 90:31759:31775  "uint256(amount1)"
                    let expr_8223 := convert_t_int256_to_t_uint256(expr_8222)
                    /// @src 90:31740:31776  "balance1Before.add(uint256(amount1))"
                    let expr_8224 := fun_add_19862(expr_8219_self, expr_8223)
                    /// @src 90:31780:31790  "balance1()"
                    let expr_8226 := fun_balance1_6526()
                    /// @src 90:31740:31790  "balance1Before.add(uint256(amount1)) <= balance1()"
                    let expr_8227 := iszero(gt(cleanup_t_uint256(expr_8224), cleanup_t_uint256(expr_8226)))
                    /// @src 90:31732:31798  "require(balance1Before.add(uint256(amount1)) <= balance1(), 'IIA')"
                    require_helper_t_stringliteral_ead9ba8f24b0c9c3e87a0076a48a0a166e1d5cd0bd355971195d20d966e145fc(expr_8227)
                    /// @src 90:31125:31809  "if (zeroForOne) {..."
                }
                default {
                    /// @src 90:31159:31166  "amount1"
                    let _410 := var_amount1_7580
                    let expr_8140 := _410
                    /// @src 90:31169:31170  "0"
                    let expr_8141 := 0x00
                    /// @src 90:31159:31170  "amount1 < 0"
                    let expr_8142 := slt(cleanup_t_int256(expr_8140), convert_t_rational_0_by_1_to_t_int256(expr_8141))
                    /// @src 90:31155:31237  "if (amount1 < 0) TransferHelper.safeTransfer(token1, recipient, uint256(-amount1))"
                    if expr_8142 {
                        /// @src 90:31172:31186  "TransferHelper"
                        let expr_8143_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TransferHelper.sol:TransferHelper")
                        /// @src 90:31200:31206  "token1"
                        let _411 := loadimmutable("6245")
                        let expr_8146 := _411
                        /// @src 90:31208:31217  "recipient"
                        let _412 := var_recipient_7564
                        let expr_8147 := _412
                        /// @src 90:31228:31235  "amount1"
                        let _413 := var_amount1_7580
                        let expr_8150 := _413
                        /// @src 90:31227:31235  "-amount1"
                        let expr_8151 := negate_t_int256(expr_8150)
                        /// @src 90:31219:31236  "uint256(-amount1)"
                        let expr_8152 := convert_t_int256_to_t_uint256(expr_8151)
                        fun_safeTransfer_22542(expr_8146, expr_8147, expr_8152)
                        /// @src 90:31155:31237  "if (amount1 < 0) TransferHelper.safeTransfer(token1, recipient, uint256(-amount1))"
                    }
                    /// @src 90:31277:31287  "balance0()"
                    let expr_8159 := fun_balance0_6484()
                    /// @src 90:31252:31287  "uint256 balance0Before = balance0()"
                    let var_balance0Before_8157 := expr_8159
                    /// @src 90:31324:31334  "msg.sender"
                    let expr_8163 := caller()
                    /// @src 90:31301:31335  "IUniswapV3SwapCallback(msg.sender)"
                    let expr_8164_address := convert_t_address_to_t_contract$_IUniswapV3SwapCallback_$19785(expr_8163)
                    /// @src 90:31301:31357  "IUniswapV3SwapCallback(msg.sender).uniswapV3SwapCallback"
                    let expr_8165_address := convert_t_contract$_IUniswapV3SwapCallback_$19785_to_t_address(expr_8164_address)
                    let expr_8165_functionSelector := 0xfa461e33
                    /// @src 90:31358:31365  "amount0"
                    let _414 := var_amount0_7578
                    let expr_8166 := _414
                    /// @src 90:31367:31374  "amount1"
                    let _415 := var_amount1_7580
                    let expr_8167 := _415
                    /// @src 90:31376:31380  "data"
                    let _416_offset := var_data_7572_offset
                    let _416_length := var_data_7572_length
                    let expr_8168_offset := _416_offset
                    let expr_8168_length := _416_length
                    /// @src 90:31301:31381  "IUniswapV3SwapCallback(msg.sender).uniswapV3SwapCallback(amount0, amount1, data)"

                    if iszero(extcodesize(expr_8165_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                    // storage for arguments and returned data
                    let _417 := allocate_unbounded()
                    mstore(_417, shift_left_224(expr_8165_functionSelector))
                    let _418 := abi_encode_tuple_t_int256_t_int256_t_bytes_calldata_ptr__to_t_int256_t_int256_t_bytes_memory_ptr__fromStack(add(_417, 4) , expr_8166, expr_8167, expr_8168_offset, expr_8168_length)

                    let _419 := call(gas(), expr_8165_address,  0,  _417, sub(_418, _417), _417, 0)

                    if iszero(_419) { revert_forward_1() }

                    if _419 {

                        let _420 := 0

                        if gt(_420, returndatasize()) {
                            _420 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_417, _420)

                        // decode return parameters from external try-call into retVars
                        abi_decode_tuple__fromMemory(_417, add(_417, _420))
                    }
                    /// @src 90:31403:31417  "balance0Before"
                    let _421 := var_balance0Before_8157
                    let expr_8172 := _421
                    /// @src 90:31403:31421  "balance0Before.add"
                    let expr_8173_self := expr_8172
                    /// @src 90:31430:31437  "amount0"
                    let _422 := var_amount0_7578
                    let expr_8176 := _422
                    /// @src 90:31422:31438  "uint256(amount0)"
                    let expr_8177 := convert_t_int256_to_t_uint256(expr_8176)
                    /// @src 90:31403:31439  "balance0Before.add(uint256(amount0))"
                    let expr_8178 := fun_add_19862(expr_8173_self, expr_8177)
                    /// @src 90:31443:31453  "balance0()"
                    let expr_8180 := fun_balance0_6484()
                    /// @src 90:31403:31453  "balance0Before.add(uint256(amount0)) <= balance0()"
                    let expr_8181 := iszero(gt(cleanup_t_uint256(expr_8178), cleanup_t_uint256(expr_8180)))
                    /// @src 90:31395:31461  "require(balance0Before.add(uint256(amount0)) <= balance0(), 'IIA')"
                    require_helper_t_stringliteral_ead9ba8f24b0c9c3e87a0076a48a0a166e1d5cd0bd355971195d20d966e145fc(expr_8181)
                    /// @src 90:31125:31809  "if (zeroForOne) {..."
                }
                /// @src 90:31829:31839  "msg.sender"
                let expr_8235 := caller()
                /// @src 90:31841:31850  "recipient"
                let _423 := var_recipient_7564
                let expr_8236 := _423
                /// @src 90:31852:31859  "amount0"
                let _424 := var_amount0_7578
                let expr_8237 := _424
                /// @src 90:31861:31868  "amount1"
                let _425 := var_amount1_7580
                let expr_8238 := _425
                /// @src 90:31870:31875  "state"
                let _426_mpos := var_state_7662_mpos
                let expr_8239_mpos := _426_mpos
                /// @src 90:31870:31888  "state.sqrtPriceX96"
                let _427 := add(expr_8239_mpos, 64)
                let _428 := read_from_memoryt_uint160(_427)
                let expr_8240 := _428
                /// @src 90:31890:31895  "state"
                let _429_mpos := var_state_7662_mpos
                let expr_8241_mpos := _429_mpos
                /// @src 90:31890:31905  "state.liquidity"
                let _430 := add(expr_8241_mpos, 192)
                let _431 := read_from_memoryt_uint128(_430)
                let expr_8242 := _431
                /// @src 90:31907:31912  "state"
                let _432_mpos := var_state_7662_mpos
                let expr_8243_mpos := _432_mpos
                /// @src 90:31907:31917  "state.tick"
                let _433 := add(expr_8243_mpos, 96)
                let _434 := read_from_memoryt_int24(_433)
                let expr_8244 := _434
                /// @src 90:31824:31918  "Swap(msg.sender, recipient, amount0, amount1, state.sqrtPriceX96, state.liquidity, state.tick)"
                let _435 := 0xc42079f94a6350d7e6235f29174924f928cc2ac818eb64fed8004e115fbcca67
                let _436 := convert_t_address_to_t_address(expr_8235)
                let _437 := convert_t_address_to_t_address(expr_8236)
                {
                    let _438 := allocate_unbounded()
                    let _439 := abi_encode_tuple_t_int256_t_int256_t_uint160_t_uint128_t_int24__to_t_int256_t_int256_t_uint160_t_uint128_t_int24__fromStack(_438 , expr_8237, expr_8238, expr_8240, expr_8242, expr_8244)
                    log3(_438, sub(_439, _438) , _435, _436, _437)
                }/// @src 90:31945:31949  "true"
                let expr_8250 := 0x01
                /// @src 90:31928:31933  "slot0"
                let _440_slot := 0x00
                let expr_8247_slot := _440_slot
                /// @src 90:31928:31942  "slot0.unlocked"
                let _441 := add(expr_8247_slot, 0)
                /// @src 90:31928:31949  "slot0.unlocked = true"
                update_storage_value_offset_30_t_bool_to_t_bool(_441, expr_8250)
                let expr_8251 := expr_8250

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 8254
            /// @src 90:22954:31956  "function swap(..."
            function fun_swap_8254(var_recipient_7564, var_zeroForOne_7566, var_amountSpecified_7568, var_sqrtPriceLimitX96_7570, var_data_7572_offset, var_data_7572_length) -> var_amount0_7578, var_amount1_7580 {
                /// @src 90:23164:23178  "int256 amount0"
                let zero_t_int256_1 := zero_value_for_split_t_int256()
                var_amount0_7578 := zero_t_int256_1
                /// @src 90:23180:23194  "int256 amount1"
                let zero_t_int256_2 := zero_value_for_split_t_int256()
                var_amount1_7580 := zero_t_int256_2

                var_amount0_7578, var_amount1_7580 := modifier_noDelegateCall_7576(var_amount0_7578, var_amount1_7580, var_recipient_7564, var_zeroForOne_7566, var_amountSpecified_7568, var_sqrtPriceLimitX96_7570, var_data_7572_offset, var_data_7572_length)
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 6349
            /// @src 90:4000:4137  "modifier lock() {..."
            function modifier_lock_6749(var_observationCardinalityNext_6745) {

                /// @src 90:4034:4039  "slot0"
                let _442_slot := 0x00
                let expr_6330_slot := _442_slot
                /// @src 90:4034:4048  "slot0.unlocked"
                let _443 := add(expr_6330_slot, 0)
                let _444 := read_from_storage_split_offset_30_t_bool(_443)
                let expr_6331 := _444
                /// @src 90:4026:4056  "require(slot0.unlocked, 'LOK')"
                require_helper_t_stringliteral_e01ebc6b01bbf458b3d355b6e649efe64599751670c5d19175619893ecf97529(expr_6331)
                /// @src 90:4083:4088  "false"
                let expr_6338 := 0x00
                /// @src 90:4066:4071  "slot0"
                let _445_slot := 0x00
                let expr_6335_slot := _445_slot
                /// @src 90:4066:4080  "slot0.unlocked"
                let _446 := add(expr_6335_slot, 0)
                /// @src 90:4066:4088  "slot0.unlocked = false"
                update_storage_value_offset_30_t_bool_to_t_bool(_446, expr_6338)
                let expr_6339 := expr_6338
                /// @src 90:4098:4099  "_"
                modifier_noDelegateCall_6751(var_observationCardinalityNext_6745)
                /// @src 90:4126:4130  "true"
                let expr_6345 := 0x01
                /// @src 90:4109:4114  "slot0"
                let _447_slot := 0x00
                let expr_6342_slot := _447_slot
                /// @src 90:4109:4123  "slot0.unlocked"
                let _448 := add(expr_6342_slot, 0)
                /// @src 90:4109:4130  "slot0.unlocked = true"
                update_storage_value_offset_30_t_bool_to_t_bool(_448, expr_6345)
                let expr_6346 := expr_6345

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 6166
            /// @src 88:1037:1113  "modifier noDelegateCall() {..."
            function modifier_noDelegateCall_6751(var_observationCardinalityNext_6745) {

                fun_checkNotDelegateCall_6158()
                /// @src 88:1105:1106  "_"
                fun_increaseObservationCardinalityNext_6782_inner(var_observationCardinalityNext_6745)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function shift_left_216(value) -> newValue {
                newValue :=

                shl(216, value)

            }

            function update_byte_slice_2_shift_27(value, toInsert) -> result {
                let mask := 0xffff000000000000000000000000000000000000000000000000000000
                toInsert := shift_left_216(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_27_t_uint16_to_t_uint16(slot, value_0) {
                let convertedValue_0 := convert_t_uint16_to_t_uint16(value_0)
                sstore(slot, update_byte_slice_2_shift_27(sload(slot), prepare_store_t_uint16(convertedValue_0)))
            }

            function abi_encode_tuple_t_uint16_t_uint16__to_t_uint16_t_uint16__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint16_to_t_uint16_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint16_to_t_uint16_fromStack(value1,  add(headStart, 32))

            }

            /// @src 90:9660:10320  "function increaseObservationCardinalityNext(uint16 observationCardinalityNext)..."
            function fun_increaseObservationCardinalityNext_6782_inner(var_observationCardinalityNext_6745) {

                /// @src 90:9862:9867  "slot0"
                let _449_slot := 0x00
                let expr_6755_slot := _449_slot
                /// @src 90:9862:9894  "slot0.observationCardinalityNext"
                let _450 := add(expr_6755_slot, 0)
                let _451 := read_from_storage_split_offset_27_t_uint16(_450)
                let expr_6756 := _451
                /// @src 90:9823:9894  "uint16 observationCardinalityNextOld = slot0.observationCardinalityNext"
                let var_observationCardinalityNextOld_6754 := expr_6756
                /// @src 90:9972:9984  "observations"
                let _452_slot := 0x08
                let expr_6760_slot := _452_slot
                /// @src 90:9972:9989  "observations.grow"
                let expr_6761_self_slot := convert_array_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_to_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_6760_slot)
                /// @src 90:9990:10019  "observationCardinalityNextOld"
                let _453 := var_observationCardinalityNextOld_6754
                let expr_6762 := _453
                /// @src 90:10021:10047  "observationCardinalityNext"
                let _454 := var_observationCardinalityNext_6745
                let expr_6763 := _454
                /// @src 90:9972:10048  "observations.grow(observationCardinalityNextOld, observationCardinalityNext)"
                let expr_6764 := fun_grow_20205(expr_6761_self_slot, expr_6762, expr_6763)
                /// @src 90:9921:10048  "uint16 observationCardinalityNextNew =..."
                let var_observationCardinalityNextNew_6759 := expr_6764
                /// @src 90:10093:10122  "observationCardinalityNextNew"
                let _455 := var_observationCardinalityNextNew_6759
                let expr_6769 := _455
                /// @src 90:10058:10063  "slot0"
                let _456_slot := 0x00
                let expr_6766_slot := _456_slot
                /// @src 90:10058:10090  "slot0.observationCardinalityNext"
                let _457 := add(expr_6766_slot, 0)
                /// @src 90:10058:10122  "slot0.observationCardinalityNext = observationCardinalityNextNew"
                update_storage_value_offset_27_t_uint16_to_t_uint16(_457, expr_6769)
                let expr_6770 := expr_6769
                /// @src 90:10136:10165  "observationCardinalityNextOld"
                let _458 := var_observationCardinalityNextOld_6754
                let expr_6772 := _458
                /// @src 90:10169:10198  "observationCardinalityNextNew"
                let _459 := var_observationCardinalityNextNew_6759
                let expr_6773 := _459
                /// @src 90:10136:10198  "observationCardinalityNextOld != observationCardinalityNextNew"
                let expr_6774 := iszero(eq(cleanup_t_uint16(expr_6772), cleanup_t_uint16(expr_6773)))
                /// @src 90:10132:10313  "if (observationCardinalityNextOld != observationCardinalityNextNew)..."
                if expr_6774 {
                    /// @src 90:10252:10281  "observationCardinalityNextOld"
                    let _460 := var_observationCardinalityNextOld_6754
                    let expr_6776 := _460
                    /// @src 90:10283:10312  "observationCardinalityNextNew"
                    let _461 := var_observationCardinalityNextNew_6759
                    let expr_6777 := _461
                    /// @src 90:10217:10313  "IncreaseObservationCardinalityNext(observationCardinalityNextOld, observationCardinalityNextNew)"
                    let _462 := 0xac49e518f90a358f652e4400164f05a5d8f7e35e7747279bc3a93dbf584e125a
                    {
                        let _463 := allocate_unbounded()
                        let _464 := abi_encode_tuple_t_uint16_t_uint16__to_t_uint16_t_uint16__fromStack(_463 , expr_6776, expr_6777)
                        log1(_463, sub(_464, _463) , _462)
                    }/// @src 90:10132:10313  "if (observationCardinalityNextOld != observationCardinalityNextNew)..."
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 6782
            /// @src 90:9660:10320  "function increaseObservationCardinalityNext(uint16 observationCardinalityNext)..."
            function fun_increaseObservationCardinalityNext_6782(var_observationCardinalityNext_6745) {

                modifier_lock_6749(var_observationCardinalityNext_6745)
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            /// @ast-id 6349
            /// @src 90:4000:4137  "modifier lock() {..."
            function modifier_lock_7186(var_amount0_7188, var_amount1_7190, var_recipient_7174, var_tickLower_7176, var_tickUpper_7178, var_amount_7180, var_data_7182_offset, var_data_7182_length) -> _467, _468 {
                _467 := var_amount0_7188
                _468 := var_amount1_7190

                /// @src 90:4034:4039  "slot0"
                let _469_slot := 0x00
                let expr_6330_slot := _469_slot
                /// @src 90:4034:4048  "slot0.unlocked"
                let _470 := add(expr_6330_slot, 0)
                let _471 := read_from_storage_split_offset_30_t_bool(_470)
                let expr_6331 := _471
                /// @src 90:4026:4056  "require(slot0.unlocked, 'LOK')"
                require_helper_t_stringliteral_e01ebc6b01bbf458b3d355b6e649efe64599751670c5d19175619893ecf97529(expr_6331)
                /// @src 90:4083:4088  "false"
                let expr_6338 := 0x00
                /// @src 90:4066:4071  "slot0"
                let _472_slot := 0x00
                let expr_6335_slot := _472_slot
                /// @src 90:4066:4080  "slot0.unlocked"
                let _473 := add(expr_6335_slot, 0)
                /// @src 90:4066:4088  "slot0.unlocked = false"
                update_storage_value_offset_30_t_bool_to_t_bool(_473, expr_6338)
                let expr_6339 := expr_6338
                /// @src 90:4098:4099  "_"
                _467, _468 := fun_mint_7309_inner(var_amount0_7188, var_amount1_7190, var_recipient_7174, var_tickLower_7176, var_tickUpper_7178, var_amount_7180, var_data_7182_offset, var_data_7182_length)
                /// @src 90:4126:4130  "true"
                let expr_6345 := 0x01
                /// @src 90:4109:4114  "slot0"
                let _474_slot := 0x00
                let expr_6342_slot := _474_slot
                /// @src 90:4109:4123  "slot0.unlocked"
                let _475 := add(expr_6342_slot, 0)
                /// @src 90:4109:4130  "slot0.unlocked = true"
                update_storage_value_offset_30_t_bool_to_t_bool(_475, expr_6345)
                let expr_6346 := expr_6345

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            function convert_t_uint256_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_uint256(value)))
            }

            function allocate_memory_struct_t_struct$_ModifyPositionParams_$6841_storage_ptr() -> memPtr {
                memPtr := allocate_memory(128)
            }

            function write_to_memory_t_address(memPtr, value) {
                mstore(memPtr, cleanup_t_address(value))
            }

            function write_to_memory_t_int128(memPtr, value) {
                mstore(memPtr, cleanup_t_int128(value))
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_uint160_to_t_contract$_IUniswapV3MintCallback_$19771(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IUniswapV3MintCallback_$19771(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IUniswapV3MintCallback_$19771(value)
            }

            function convert_t_contract$_IUniswapV3MintCallback_$19771_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_tuple_t_uint256_t_uint256_t_bytes_calldata_ptr__to_t_uint256_t_uint256_t_bytes_memory_ptr__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                mstore(add(headStart, 64), sub(tail, headStart))
                tail := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(value2, value3,  tail)

            }

            function store_literal_in_memory_9dd967dd89b196c3d39f30180cbfe6d91b2a16dc0c0a05c39a100e33eea78be7(memPtr) {

                mstore(add(memPtr, 0), "M0")

            }

            function abi_encode_t_stringliteral_9dd967dd89b196c3d39f30180cbfe6d91b2a16dc0c0a05c39a100e33eea78be7_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_9dd967dd89b196c3d39f30180cbfe6d91b2a16dc0c0a05c39a100e33eea78be7(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_9dd967dd89b196c3d39f30180cbfe6d91b2a16dc0c0a05c39a100e33eea78be7__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_9dd967dd89b196c3d39f30180cbfe6d91b2a16dc0c0a05c39a100e33eea78be7_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_9dd967dd89b196c3d39f30180cbfe6d91b2a16dc0c0a05c39a100e33eea78be7(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_9dd967dd89b196c3d39f30180cbfe6d91b2a16dc0c0a05c39a100e33eea78be7__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_b12041addd3285c2b6d2a98e6dc83b6f7dc08f5942fa2296e6ce355782d133de(memPtr) {

                mstore(add(memPtr, 0), "M1")

            }

            function abi_encode_t_stringliteral_b12041addd3285c2b6d2a98e6dc83b6f7dc08f5942fa2296e6ce355782d133de_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_b12041addd3285c2b6d2a98e6dc83b6f7dc08f5942fa2296e6ce355782d133de(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_b12041addd3285c2b6d2a98e6dc83b6f7dc08f5942fa2296e6ce355782d133de__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_b12041addd3285c2b6d2a98e6dc83b6f7dc08f5942fa2296e6ce355782d133de_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_b12041addd3285c2b6d2a98e6dc83b6f7dc08f5942fa2296e6ce355782d133de(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_b12041addd3285c2b6d2a98e6dc83b6f7dc08f5942fa2296e6ce355782d133de__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function abi_encode_tuple_t_address_t_uint128_t_uint256_t_uint256__to_t_address_t_uint128_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint128_to_t_uint128_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

            }

            /// @src 90:17566:18763  "function mint(..."
            function fun_mint_7309_inner(_476, _477, var_recipient_7174, var_tickLower_7176, var_tickUpper_7178, var_amount_7180, var_data_7182_offset, var_data_7182_length) -> var_amount0_7188, var_amount1_7190 {
                var_amount0_7188 := _476
                var_amount1_7190 := _477

                /// @src 90:17800:17806  "amount"
                let _478 := var_amount_7180
                let expr_7193 := _478
                /// @src 90:17809:17810  "0"
                let expr_7194 := 0x00
                /// @src 90:17800:17810  "amount > 0"
                let expr_7195 := gt(cleanup_t_uint128(expr_7193), convert_t_rational_0_by_1_to_t_uint128(expr_7194))
                /// @src 90:17792:17811  "require(amount > 0)"
                require_helper(expr_7195)
                /// @src 90:17959:17968  "recipient"
                let _479 := var_recipient_7174
                let expr_7204 := _479
                /// @src 90:18001:18010  "tickLower"
                let _480 := var_tickLower_7176
                let expr_7205 := _480
                /// @src 90:18043:18052  "tickUpper"
                let _481 := var_tickUpper_7178
                let expr_7206 := _481
                /// @src 90:18105:18111  "amount"
                let _482 := var_amount_7180
                let expr_7211 := _482
                /// @src 90:18097:18112  "uint256(amount)"
                let expr_7212 := convert_t_uint128_to_t_uint256(expr_7211)
                /// @src 90:18090:18113  "int256(uint256(amount))"
                let expr_7213 := convert_t_uint256_to_t_int256(expr_7212)
                /// @src 90:18090:18122  "int256(uint256(amount)).toInt128"
                let expr_7214_self := expr_7213
                /// @src 90:18090:18124  "int256(uint256(amount)).toInt128()"
                let expr_7215 := fun_toInt128_20959(expr_7214_self)
                /// @src 90:17909:18143  "ModifyPositionParams({..."
                let expr_7216_mpos := allocate_memory_struct_t_struct$_ModifyPositionParams_$6841_storage_ptr()
                write_to_memory_t_address(add(expr_7216_mpos, 0), expr_7204)
                write_to_memory_t_int24(add(expr_7216_mpos, 32), expr_7205)
                write_to_memory_t_int24(add(expr_7216_mpos, 64), expr_7206)
                write_to_memory_t_int128(add(expr_7216_mpos, 96), expr_7215)
                /// @src 90:17876:18157  "_modifyPosition(..."
                let expr_7217_component_1_slot, expr_7217_component_2, expr_7217_component_3 := fun__modifyPosition_7007(expr_7216_mpos)
                /// @src 90:17821:18157  "(, int256 amount0Int, int256 amount1Int) =..."
                let var_amount0Int_7199 := expr_7217_component_2
                let var_amount1Int_7201 := expr_7217_component_3
                /// @src 90:18186:18196  "amount0Int"
                let _483 := var_amount0Int_7199
                let expr_7222 := _483
                /// @src 90:18178:18197  "uint256(amount0Int)"
                let expr_7223 := convert_t_int256_to_t_uint256(expr_7222)
                /// @src 90:18168:18197  "amount0 = uint256(amount0Int)"
                var_amount0_7188 := expr_7223
                let expr_7224 := expr_7223
                /// @src 90:18225:18235  "amount1Int"
                let _484 := var_amount1Int_7201
                let expr_7229 := _484
                /// @src 90:18217:18236  "uint256(amount1Int)"
                let expr_7230 := convert_t_int256_to_t_uint256(expr_7229)
                /// @src 90:18207:18236  "amount1 = uint256(amount1Int)"
                var_amount1_7190 := expr_7230
                let expr_7231 := expr_7230
                /// @src 90:18247:18269  "uint256 balance0Before"
                let var_balance0Before_7234
                let zero_t_uint256_485 := zero_value_for_split_t_uint256()
                var_balance0Before_7234 := zero_t_uint256_485
                /// @src 90:18279:18301  "uint256 balance1Before"
                let var_balance1Before_7237
                let zero_t_uint256_486 := zero_value_for_split_t_uint256()
                var_balance1Before_7237 := zero_t_uint256_486
                /// @src 90:18315:18322  "amount0"
                let _487 := var_amount0_7188
                let expr_7239 := _487
                /// @src 90:18325:18326  "0"
                let expr_7240 := 0x00
                /// @src 90:18315:18326  "amount0 > 0"
                let expr_7241 := gt(cleanup_t_uint256(expr_7239), convert_t_rational_0_by_1_to_t_uint256(expr_7240))
                /// @src 90:18311:18355  "if (amount0 > 0) balance0Before = balance0()"
                if expr_7241 {
                    /// @src 90:18345:18355  "balance0()"
                    let expr_7244 := fun_balance0_6484()
                    /// @src 90:18328:18355  "balance0Before = balance0()"
                    var_balance0Before_7234 := expr_7244
                    let expr_7245 := expr_7244
                    /// @src 90:18311:18355  "if (amount0 > 0) balance0Before = balance0()"
                }
                /// @src 90:18369:18376  "amount1"
                let _488 := var_amount1_7190
                let expr_7248 := _488
                /// @src 90:18379:18380  "0"
                let expr_7249 := 0x00
                /// @src 90:18369:18380  "amount1 > 0"
                let expr_7250 := gt(cleanup_t_uint256(expr_7248), convert_t_rational_0_by_1_to_t_uint256(expr_7249))
                /// @src 90:18365:18409  "if (amount1 > 0) balance1Before = balance1()"
                if expr_7250 {
                    /// @src 90:18399:18409  "balance1()"
                    let expr_7253 := fun_balance1_6526()
                    /// @src 90:18382:18409  "balance1Before = balance1()"
                    var_balance1Before_7237 := expr_7253
                    let expr_7254 := expr_7253
                    /// @src 90:18365:18409  "if (amount1 > 0) balance1Before = balance1()"
                }
                /// @src 90:18442:18452  "msg.sender"
                let expr_7259 := caller()
                /// @src 90:18419:18453  "IUniswapV3MintCallback(msg.sender)"
                let expr_7260_address := convert_t_address_to_t_contract$_IUniswapV3MintCallback_$19771(expr_7259)
                /// @src 90:18419:18475  "IUniswapV3MintCallback(msg.sender).uniswapV3MintCallback"
                let expr_7261_address := convert_t_contract$_IUniswapV3MintCallback_$19771_to_t_address(expr_7260_address)
                let expr_7261_functionSelector := 0xd3487997
                /// @src 90:18476:18483  "amount0"
                let _489 := var_amount0_7188
                let expr_7262 := _489
                /// @src 90:18485:18492  "amount1"
                let _490 := var_amount1_7190
                let expr_7263 := _490
                /// @src 90:18494:18498  "data"
                let _491_offset := var_data_7182_offset
                let _491_length := var_data_7182_length
                let expr_7264_offset := _491_offset
                let expr_7264_length := _491_length
                /// @src 90:18419:18499  "IUniswapV3MintCallback(msg.sender).uniswapV3MintCallback(amount0, amount1, data)"

                if iszero(extcodesize(expr_7261_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _492 := allocate_unbounded()
                mstore(_492, shift_left_224(expr_7261_functionSelector))
                let _493 := abi_encode_tuple_t_uint256_t_uint256_t_bytes_calldata_ptr__to_t_uint256_t_uint256_t_bytes_memory_ptr__fromStack(add(_492, 4) , expr_7262, expr_7263, expr_7264_offset, expr_7264_length)

                let _494 := call(gas(), expr_7261_address,  0,  _492, sub(_493, _492), _492, 0)

                if iszero(_494) { revert_forward_1() }

                if _494 {

                    let _495 := 0

                    if gt(_495, returndatasize()) {
                        _495 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_492, _495)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_492, add(_492, _495))
                }
                /// @src 90:18513:18520  "amount0"
                let _496 := var_amount0_7188
                let expr_7267 := _496
                /// @src 90:18523:18524  "0"
                let expr_7268 := 0x00
                /// @src 90:18513:18524  "amount0 > 0"
                let expr_7269 := gt(cleanup_t_uint256(expr_7267), convert_t_rational_0_by_1_to_t_uint256(expr_7268))
                /// @src 90:18509:18582  "if (amount0 > 0) require(balance0Before.add(amount0) <= balance0(), 'M0')"
                if expr_7269 {
                    /// @src 90:18534:18548  "balance0Before"
                    let _497 := var_balance0Before_7234
                    let expr_7271 := _497
                    /// @src 90:18534:18552  "balance0Before.add"
                    let expr_7272_self := expr_7271
                    /// @src 90:18553:18560  "amount0"
                    let _498 := var_amount0_7188
                    let expr_7273 := _498
                    /// @src 90:18534:18561  "balance0Before.add(amount0)"
                    let expr_7274 := fun_add_19862(expr_7272_self, expr_7273)
                    /// @src 90:18565:18575  "balance0()"
                    let expr_7276 := fun_balance0_6484()
                    /// @src 90:18534:18575  "balance0Before.add(amount0) <= balance0()"
                    let expr_7277 := iszero(gt(cleanup_t_uint256(expr_7274), cleanup_t_uint256(expr_7276)))
                    /// @src 90:18526:18582  "require(balance0Before.add(amount0) <= balance0(), 'M0')"
                    require_helper_t_stringliteral_9dd967dd89b196c3d39f30180cbfe6d91b2a16dc0c0a05c39a100e33eea78be7(expr_7277)
                    /// @src 90:18509:18582  "if (amount0 > 0) require(balance0Before.add(amount0) <= balance0(), 'M0')"
                }
                /// @src 90:18596:18603  "amount1"
                let _499 := var_amount1_7190
                let expr_7282 := _499
                /// @src 90:18606:18607  "0"
                let expr_7283 := 0x00
                /// @src 90:18596:18607  "amount1 > 0"
                let expr_7284 := gt(cleanup_t_uint256(expr_7282), convert_t_rational_0_by_1_to_t_uint256(expr_7283))
                /// @src 90:18592:18665  "if (amount1 > 0) require(balance1Before.add(amount1) <= balance1(), 'M1')"
                if expr_7284 {
                    /// @src 90:18617:18631  "balance1Before"
                    let _500 := var_balance1Before_7237
                    let expr_7286 := _500
                    /// @src 90:18617:18635  "balance1Before.add"
                    let expr_7287_self := expr_7286
                    /// @src 90:18636:18643  "amount1"
                    let _501 := var_amount1_7190
                    let expr_7288 := _501
                    /// @src 90:18617:18644  "balance1Before.add(amount1)"
                    let expr_7289 := fun_add_19862(expr_7287_self, expr_7288)
                    /// @src 90:18648:18658  "balance1()"
                    let expr_7291 := fun_balance1_6526()
                    /// @src 90:18617:18658  "balance1Before.add(amount1) <= balance1()"
                    let expr_7292 := iszero(gt(cleanup_t_uint256(expr_7289), cleanup_t_uint256(expr_7291)))
                    /// @src 90:18609:18665  "require(balance1Before.add(amount1) <= balance1(), 'M1')"
                    require_helper_t_stringliteral_b12041addd3285c2b6d2a98e6dc83b6f7dc08f5942fa2296e6ce355782d133de(expr_7292)
                    /// @src 90:18592:18665  "if (amount1 > 0) require(balance1Before.add(amount1) <= balance1(), 'M1')"
                }
                /// @src 90:18686:18696  "msg.sender"
                let expr_7299 := caller()
                /// @src 90:18698:18707  "recipient"
                let _502 := var_recipient_7174
                let expr_7300 := _502
                /// @src 90:18709:18718  "tickLower"
                let _503 := var_tickLower_7176
                let expr_7301 := _503
                /// @src 90:18720:18729  "tickUpper"
                let _504 := var_tickUpper_7178
                let expr_7302 := _504
                /// @src 90:18731:18737  "amount"
                let _505 := var_amount_7180
                let expr_7303 := _505
                /// @src 90:18739:18746  "amount0"
                let _506 := var_amount0_7188
                let expr_7304 := _506
                /// @src 90:18748:18755  "amount1"
                let _507 := var_amount1_7190
                let expr_7305 := _507
                /// @src 90:18681:18756  "Mint(msg.sender, recipient, tickLower, tickUpper, amount, amount0, amount1)"
                let _508 := 0x7a53080ba414158be7ec69b987b5fb7d07dee101fe85488f0853ae16239d0bde
                let _509 := convert_t_address_to_t_address(expr_7300)
                let _510 := convert_t_int24_to_t_int24(expr_7301)
                let _511 := convert_t_int24_to_t_int24(expr_7302)
                {
                    let _512 := allocate_unbounded()
                    let _513 := abi_encode_tuple_t_address_t_uint128_t_uint256_t_uint256__to_t_address_t_uint128_t_uint256_t_uint256__fromStack(_512 , expr_7299, expr_7303, expr_7304, expr_7305)
                    log4(_512, sub(_513, _512) , _508, _509, _510, _511)
                }
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 7309
            /// @src 90:17566:18763  "function mint(..."
            function fun_mint_7309(var_recipient_7174, var_tickLower_7176, var_tickUpper_7178, var_amount_7180, var_data_7182_offset, var_data_7182_length) -> var_amount0_7188, var_amount1_7190 {
                /// @src 90:17748:17763  "uint256 amount0"
                let zero_t_uint256_465 := zero_value_for_split_t_uint256()
                var_amount0_7188 := zero_t_uint256_465
                /// @src 90:17765:17780  "uint256 amount1"
                let zero_t_uint256_466 := zero_value_for_split_t_uint256()
                var_amount1_7190 := zero_t_uint256_466

                var_amount0_7188, var_amount1_7190 := modifier_lock_7186(var_amount0_7188, var_amount1_7190, var_recipient_7174, var_tickLower_7176, var_tickUpper_7178, var_amount_7180, var_data_7182_offset, var_data_7182_length)
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 6349
            /// @src 90:4000:4137  "modifier lock() {..."
            function modifier_lock_8267(var_recipient_8257, var_amount0_8259, var_amount1_8261, var_data_8263_offset, var_data_8263_length) {

                /// @src 90:4034:4039  "slot0"
                let _514_slot := 0x00
                let expr_6330_slot := _514_slot
                /// @src 90:4034:4048  "slot0.unlocked"
                let _515 := add(expr_6330_slot, 0)
                let _516 := read_from_storage_split_offset_30_t_bool(_515)
                let expr_6331 := _516
                /// @src 90:4026:4056  "require(slot0.unlocked, 'LOK')"
                require_helper_t_stringliteral_e01ebc6b01bbf458b3d355b6e649efe64599751670c5d19175619893ecf97529(expr_6331)
                /// @src 90:4083:4088  "false"
                let expr_6338 := 0x00
                /// @src 90:4066:4071  "slot0"
                let _517_slot := 0x00
                let expr_6335_slot := _517_slot
                /// @src 90:4066:4080  "slot0.unlocked"
                let _518 := add(expr_6335_slot, 0)
                /// @src 90:4066:4088  "slot0.unlocked = false"
                update_storage_value_offset_30_t_bool_to_t_bool(_518, expr_6338)
                let expr_6339 := expr_6338
                /// @src 90:4098:4099  "_"
                modifier_noDelegateCall_8269(var_recipient_8257, var_amount0_8259, var_amount1_8261, var_data_8263_offset, var_data_8263_length)
                /// @src 90:4126:4130  "true"
                let expr_6345 := 0x01
                /// @src 90:4109:4114  "slot0"
                let _519_slot := 0x00
                let expr_6342_slot := _519_slot
                /// @src 90:4109:4123  "slot0.unlocked"
                let _520 := add(expr_6342_slot, 0)
                /// @src 90:4109:4130  "slot0.unlocked = true"
                update_storage_value_offset_30_t_bool_to_t_bool(_520, expr_6345)
                let expr_6346 := expr_6345

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 6166
            /// @src 88:1037:1113  "modifier noDelegateCall() {..."
            function modifier_noDelegateCall_8269(var_recipient_8257, var_amount0_8259, var_amount1_8261, var_data_8263_offset, var_data_8263_length) {

                fun_checkNotDelegateCall_6158()
                /// @src 88:1105:1106  "_"
                fun_flash_8499_inner(var_recipient_8257, var_amount0_8259, var_amount1_8261, var_data_8263_offset, var_data_8263_length)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function store_literal_in_memory_8aa64f937099b65a4febc243a5ae0f2d6416bb9e473c30dd29c1ee498fb7c5a8(memPtr) {

                mstore(add(memPtr, 0), "L")

            }

            function abi_encode_t_stringliteral_8aa64f937099b65a4febc243a5ae0f2d6416bb9e473c30dd29c1ee498fb7c5a8_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 1)
                store_literal_in_memory_8aa64f937099b65a4febc243a5ae0f2d6416bb9e473c30dd29c1ee498fb7c5a8(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_8aa64f937099b65a4febc243a5ae0f2d6416bb9e473c30dd29c1ee498fb7c5a8__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_8aa64f937099b65a4febc243a5ae0f2d6416bb9e473c30dd29c1ee498fb7c5a8_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_8aa64f937099b65a4febc243a5ae0f2d6416bb9e473c30dd29c1ee498fb7c5a8(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_8aa64f937099b65a4febc243a5ae0f2d6416bb9e473c30dd29c1ee498fb7c5a8__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function convert_t_uint24_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint24(value)))
            }

            function cleanup_t_rational_1000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000000_by_1(value)))
            }

            function convert_t_uint160_to_t_contract$_IUniswapV3FlashCallback_$19757(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IUniswapV3FlashCallback_$19757(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IUniswapV3FlashCallback_$19757(value)
            }

            function convert_t_contract$_IUniswapV3FlashCallback_$19757_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function store_literal_in_memory_03a44893a6f04a1de143742ff3f2d3f895f4c0834e5d5ed116313011722d95d5(memPtr) {

                mstore(add(memPtr, 0), "F0")

            }

            function abi_encode_t_stringliteral_03a44893a6f04a1de143742ff3f2d3f895f4c0834e5d5ed116313011722d95d5_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_03a44893a6f04a1de143742ff3f2d3f895f4c0834e5d5ed116313011722d95d5(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_03a44893a6f04a1de143742ff3f2d3f895f4c0834e5d5ed116313011722d95d5__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_03a44893a6f04a1de143742ff3f2d3f895f4c0834e5d5ed116313011722d95d5_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_03a44893a6f04a1de143742ff3f2d3f895f4c0834e5d5ed116313011722d95d5(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_03a44893a6f04a1de143742ff3f2d3f895f4c0834e5d5ed116313011722d95d5__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_61f8f8560327748d3d32b99138645b9511e5310a7109d5ec11cbfb1b408602cf(memPtr) {

                mstore(add(memPtr, 0), "F1")

            }

            function abi_encode_t_stringliteral_61f8f8560327748d3d32b99138645b9511e5310a7109d5ec11cbfb1b408602cf_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_61f8f8560327748d3d32b99138645b9511e5310a7109d5ec11cbfb1b408602cf(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_61f8f8560327748d3d32b99138645b9511e5310a7109d5ec11cbfb1b408602cf__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_61f8f8560327748d3d32b99138645b9511e5310a7109d5ec11cbfb1b408602cf_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_61f8f8560327748d3d32b99138645b9511e5310a7109d5ec11cbfb1b408602cf(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_61f8f8560327748d3d32b99138645b9511e5310a7109d5ec11cbfb1b408602cf__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

            }

            /// @src 90:32004:33917  "function flash(..."
            function fun_flash_8499_inner(var_recipient_8257, var_amount0_8259, var_amount1_8261, var_data_8263_offset, var_data_8263_length) {

                /// @src 90:32200:32209  "liquidity"
                let _521 := read_from_storage_split_offset_0_t_uint128(0x04)
                let expr_8273 := _521
                /// @src 90:32179:32209  "uint128 _liquidity = liquidity"
                let var__liquidity_8272 := expr_8273
                /// @src 90:32227:32237  "_liquidity"
                let _522 := var__liquidity_8272
                let expr_8276 := _522
                /// @src 90:32240:32241  "0"
                let expr_8277 := 0x00
                /// @src 90:32227:32241  "_liquidity > 0"
                let expr_8278 := gt(cleanup_t_uint128(expr_8276), convert_t_rational_0_by_1_to_t_uint128(expr_8277))
                /// @src 90:32219:32247  "require(_liquidity > 0, 'L')"
                require_helper_t_stringliteral_8aa64f937099b65a4febc243a5ae0f2d6416bb9e473c30dd29c1ee498fb7c5a8(expr_8278)
                /// @src 90:32273:32281  "FullMath"
                let expr_8284_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                /// @src 90:32299:32306  "amount0"
                let _523 := var_amount0_8259
                let expr_8286 := _523
                /// @src 90:32308:32311  "fee"
                let _524 := loadimmutable("6249")
                let expr_8287 := _524
                /// @src 90:32313:32316  "1e6"
                let expr_8288 := 0x0f4240
                /// @src 90:32273:32317  "FullMath.mulDivRoundingUp(amount0, fee, 1e6)"
                let _525 := convert_t_uint24_to_t_uint256(expr_8287)
                let _526 := convert_t_rational_1000000_by_1_to_t_uint256(expr_8288)
                let expr_8289 := fun_mulDivRoundingUp_9431(expr_8286, _525, _526)
                /// @src 90:32258:32317  "uint256 fee0 = FullMath.mulDivRoundingUp(amount0, fee, 1e6)"
                let var_fee0_8283 := expr_8289
                /// @src 90:32342:32350  "FullMath"
                let expr_8293_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                /// @src 90:32368:32375  "amount1"
                let _527 := var_amount1_8261
                let expr_8295 := _527
                /// @src 90:32377:32380  "fee"
                let _528 := loadimmutable("6249")
                let expr_8296 := _528
                /// @src 90:32382:32385  "1e6"
                let expr_8297 := 0x0f4240
                /// @src 90:32342:32386  "FullMath.mulDivRoundingUp(amount1, fee, 1e6)"
                let _529 := convert_t_uint24_to_t_uint256(expr_8296)
                let _530 := convert_t_rational_1000000_by_1_to_t_uint256(expr_8297)
                let expr_8298 := fun_mulDivRoundingUp_9431(expr_8295, _529, _530)
                /// @src 90:32327:32386  "uint256 fee1 = FullMath.mulDivRoundingUp(amount1, fee, 1e6)"
                let var_fee1_8292 := expr_8298
                /// @src 90:32421:32431  "balance0()"
                let expr_8303 := fun_balance0_6484()
                /// @src 90:32396:32431  "uint256 balance0Before = balance0()"
                let var_balance0Before_8301 := expr_8303
                /// @src 90:32466:32476  "balance1()"
                let expr_8308 := fun_balance1_6526()
                /// @src 90:32441:32476  "uint256 balance1Before = balance1()"
                let var_balance1Before_8306 := expr_8308
                /// @src 90:32491:32498  "amount0"
                let _531 := var_amount0_8259
                let expr_8310 := _531
                /// @src 90:32501:32502  "0"
                let expr_8311 := 0x00
                /// @src 90:32491:32502  "amount0 > 0"
                let expr_8312 := gt(cleanup_t_uint256(expr_8310), convert_t_rational_0_by_1_to_t_uint256(expr_8311))
                /// @src 90:32487:32559  "if (amount0 > 0) TransferHelper.safeTransfer(token0, recipient, amount0)"
                if expr_8312 {
                    /// @src 90:32504:32518  "TransferHelper"
                    let expr_8313_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TransferHelper.sol:TransferHelper")
                    /// @src 90:32532:32538  "token0"
                    let _532 := loadimmutable("6241")
                    let expr_8316 := _532
                    /// @src 90:32540:32549  "recipient"
                    let _533 := var_recipient_8257
                    let expr_8317 := _533
                    /// @src 90:32551:32558  "amount0"
                    let _534 := var_amount0_8259
                    let expr_8318 := _534
                    fun_safeTransfer_22542(expr_8316, expr_8317, expr_8318)
                    /// @src 90:32487:32559  "if (amount0 > 0) TransferHelper.safeTransfer(token0, recipient, amount0)"
                }
                /// @src 90:32573:32580  "amount1"
                let _535 := var_amount1_8261
                let expr_8322 := _535
                /// @src 90:32583:32584  "0"
                let expr_8323 := 0x00
                /// @src 90:32573:32584  "amount1 > 0"
                let expr_8324 := gt(cleanup_t_uint256(expr_8322), convert_t_rational_0_by_1_to_t_uint256(expr_8323))
                /// @src 90:32569:32641  "if (amount1 > 0) TransferHelper.safeTransfer(token1, recipient, amount1)"
                if expr_8324 {
                    /// @src 90:32586:32600  "TransferHelper"
                    let expr_8325_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TransferHelper.sol:TransferHelper")
                    /// @src 90:32614:32620  "token1"
                    let _536 := loadimmutable("6245")
                    let expr_8328 := _536
                    /// @src 90:32622:32631  "recipient"
                    let _537 := var_recipient_8257
                    let expr_8329 := _537
                    /// @src 90:32633:32640  "amount1"
                    let _538 := var_amount1_8261
                    let expr_8330 := _538
                    fun_safeTransfer_22542(expr_8328, expr_8329, expr_8330)
                    /// @src 90:32569:32641  "if (amount1 > 0) TransferHelper.safeTransfer(token1, recipient, amount1)"
                }
                /// @src 90:32676:32686  "msg.sender"
                let expr_8336 := caller()
                /// @src 90:32652:32687  "IUniswapV3FlashCallback(msg.sender)"
                let expr_8337_address := convert_t_address_to_t_contract$_IUniswapV3FlashCallback_$19757(expr_8336)
                /// @src 90:32652:32710  "IUniswapV3FlashCallback(msg.sender).uniswapV3FlashCallback"
                let expr_8338_address := convert_t_contract$_IUniswapV3FlashCallback_$19757_to_t_address(expr_8337_address)
                let expr_8338_functionSelector := 0xe9cbafb0
                /// @src 90:32711:32715  "fee0"
                let _539 := var_fee0_8283
                let expr_8339 := _539
                /// @src 90:32717:32721  "fee1"
                let _540 := var_fee1_8292
                let expr_8340 := _540
                /// @src 90:32723:32727  "data"
                let _541_offset := var_data_8263_offset
                let _541_length := var_data_8263_length
                let expr_8341_offset := _541_offset
                let expr_8341_length := _541_length
                /// @src 90:32652:32728  "IUniswapV3FlashCallback(msg.sender).uniswapV3FlashCallback(fee0, fee1, data)"

                if iszero(extcodesize(expr_8338_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _542 := allocate_unbounded()
                mstore(_542, shift_left_224(expr_8338_functionSelector))
                let _543 := abi_encode_tuple_t_uint256_t_uint256_t_bytes_calldata_ptr__to_t_uint256_t_uint256_t_bytes_memory_ptr__fromStack(add(_542, 4) , expr_8339, expr_8340, expr_8341_offset, expr_8341_length)

                let _544 := call(gas(), expr_8338_address,  0,  _542, sub(_543, _542), _542, 0)

                if iszero(_544) { revert_forward_1() }

                if _544 {

                    let _545 := 0

                    if gt(_545, returndatasize()) {
                        _545 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_542, _545)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_542, add(_542, _545))
                }
                /// @src 90:32763:32773  "balance0()"
                let expr_8347 := fun_balance0_6484()
                /// @src 90:32739:32773  "uint256 balance0After = balance0()"
                let var_balance0After_8345 := expr_8347
                /// @src 90:32807:32817  "balance1()"
                let expr_8352 := fun_balance1_6526()
                /// @src 90:32783:32817  "uint256 balance1After = balance1()"
                let var_balance1After_8350 := expr_8352
                /// @src 90:32836:32850  "balance0Before"
                let _546 := var_balance0Before_8301
                let expr_8355 := _546
                /// @src 90:32836:32854  "balance0Before.add"
                let expr_8356_self := expr_8355
                /// @src 90:32855:32859  "fee0"
                let _547 := var_fee0_8283
                let expr_8357 := _547
                /// @src 90:32836:32860  "balance0Before.add(fee0)"
                let expr_8358 := fun_add_19862(expr_8356_self, expr_8357)
                /// @src 90:32864:32877  "balance0After"
                let _548 := var_balance0After_8345
                let expr_8359 := _548
                /// @src 90:32836:32877  "balance0Before.add(fee0) <= balance0After"
                let expr_8360 := iszero(gt(cleanup_t_uint256(expr_8358), cleanup_t_uint256(expr_8359)))
                /// @src 90:32828:32884  "require(balance0Before.add(fee0) <= balance0After, 'F0')"
                require_helper_t_stringliteral_03a44893a6f04a1de143742ff3f2d3f895f4c0834e5d5ed116313011722d95d5(expr_8360)
                /// @src 90:32902:32916  "balance1Before"
                let _549 := var_balance1Before_8306
                let expr_8365 := _549
                /// @src 90:32902:32920  "balance1Before.add"
                let expr_8366_self := expr_8365
                /// @src 90:32921:32925  "fee1"
                let _550 := var_fee1_8292
                let expr_8367 := _550
                /// @src 90:32902:32926  "balance1Before.add(fee1)"
                let expr_8368 := fun_add_19862(expr_8366_self, expr_8367)
                /// @src 90:32930:32943  "balance1After"
                let _551 := var_balance1After_8350
                let expr_8369 := _551
                /// @src 90:32902:32943  "balance1Before.add(fee1) <= balance1After"
                let expr_8370 := iszero(gt(cleanup_t_uint256(expr_8368), cleanup_t_uint256(expr_8369)))
                /// @src 90:32894:32950  "require(balance1Before.add(fee1) <= balance1After, 'F1')"
                require_helper_t_stringliteral_61f8f8560327748d3d32b99138645b9511e5310a7109d5ec11cbfb1b408602cf(expr_8370)
                /// @src 90:33065:33078  "balance0After"
                let _552 := var_balance0After_8345
                let expr_8376 := _552
                /// @src 90:33081:33095  "balance0Before"
                let _553 := var_balance0Before_8301
                let expr_8377 := _553
                /// @src 90:33065:33095  "balance0After - balance0Before"
                let expr_8378 := checked_sub_t_uint256(expr_8376, expr_8377)

                /// @src 90:33049:33095  "uint256 paid0 = balance0After - balance0Before"
                let var_paid0_8375 := expr_8378
                /// @src 90:33121:33134  "balance1After"
                let _554 := var_balance1After_8350
                let expr_8382 := _554
                /// @src 90:33137:33151  "balance1Before"
                let _555 := var_balance1Before_8306
                let expr_8383 := _555
                /// @src 90:33121:33151  "balance1After - balance1Before"
                let expr_8384 := checked_sub_t_uint256(expr_8382, expr_8383)

                /// @src 90:33105:33151  "uint256 paid1 = balance1After - balance1Before"
                let var_paid1_8381 := expr_8384
                /// @src 90:33166:33171  "paid0"
                let _556 := var_paid0_8375
                let expr_8386 := _556
                /// @src 90:33174:33175  "0"
                let expr_8387 := 0x00
                /// @src 90:33166:33175  "paid0 > 0"
                let expr_8388 := gt(cleanup_t_uint256(expr_8386), convert_t_rational_0_by_1_to_t_uint256(expr_8387))
                /// @src 90:33162:33494  "if (paid0 > 0) {..."
                if expr_8388 {
                    /// @src 90:33212:33217  "slot0"
                    let _557_slot := 0x00
                    let expr_8391_slot := _557_slot
                    /// @src 90:33212:33229  "slot0.feeProtocol"
                    let _558 := add(expr_8391_slot, 0)
                    let _559 := read_from_storage_split_offset_29_t_uint8(_558)
                    let expr_8392 := _559
                    /// @src 90:33232:33234  "16"
                    let expr_8393 := 0x10
                    /// @src 90:33212:33234  "slot0.feeProtocol % 16"
                    let expr_8394 := mod_t_uint8(expr_8392, convert_t_rational_16_by_1_to_t_uint8(expr_8393))

                    /// @src 90:33191:33234  "uint8 feeProtocol0 = slot0.feeProtocol % 16"
                    let var_feeProtocol0_8390 := expr_8394
                    /// @src 90:33264:33276  "feeProtocol0"
                    let _560 := var_feeProtocol0_8390
                    let expr_8398 := _560
                    /// @src 90:33280:33281  "0"
                    let expr_8399 := 0x00
                    /// @src 90:33264:33281  "feeProtocol0 == 0"
                    let expr_8400 := eq(cleanup_t_uint8(expr_8398), convert_t_rational_0_by_1_to_t_uint8(expr_8399))
                    /// @src 90:33264:33308  "feeProtocol0 == 0 ? 0 : paid0 / feeProtocol0"
                    let expr_8405
                    switch expr_8400
                    case 0 {
                        /// @src 90:33288:33293  "paid0"
                        let _561 := var_paid0_8375
                        let expr_8402 := _561
                        /// @src 90:33296:33308  "feeProtocol0"
                        let _562 := var_feeProtocol0_8390
                        let expr_8403 := _562
                        /// @src 90:33288:33308  "paid0 / feeProtocol0"
                        let expr_8404 := checked_div_t_uint256(expr_8402, convert_t_uint8_to_t_uint256(expr_8403))

                        /// @src 90:33264:33308  "feeProtocol0 == 0 ? 0 : paid0 / feeProtocol0"
                        expr_8405 := expr_8404
                    }
                    default {
                        /// @src 90:33284:33285  "0"
                        let expr_8401 := 0x00
                        /// @src 90:33264:33308  "feeProtocol0 == 0 ? 0 : paid0 / feeProtocol0"
                        expr_8405 := convert_t_rational_0_by_1_to_t_uint256(expr_8401)
                    }
                    /// @src 90:33248:33308  "uint256 fees0 = feeProtocol0 == 0 ? 0 : paid0 / feeProtocol0"
                    let var_fees0_8397 := expr_8405
                    /// @src 90:33334:33339  "fees0"
                    let _563 := var_fees0_8397
                    let expr_8409 := _563
                    /// @src 90:33326:33340  "uint128(fees0)"
                    let expr_8410 := convert_t_uint256_to_t_uint128(expr_8409)
                    /// @src 90:33343:33344  "0"
                    let expr_8411 := 0x00
                    /// @src 90:33326:33344  "uint128(fees0) > 0"
                    let expr_8412 := gt(cleanup_t_uint128(expr_8410), convert_t_rational_0_by_1_to_t_uint128(expr_8411))
                    /// @src 90:33322:33383  "if (uint128(fees0) > 0) protocolFees.token0 += uint128(fees0)"
                    if expr_8412 {
                        /// @src 90:33377:33382  "fees0"
                        let _564 := var_fees0_8397
                        let expr_8418 := _564
                        /// @src 90:33369:33383  "uint128(fees0)"
                        let expr_8419 := convert_t_uint256_to_t_uint128(expr_8418)
                        /// @src 90:33346:33358  "protocolFees"
                        let _565_slot := 0x03
                        let expr_8413_slot := _565_slot
                        /// @src 90:33346:33365  "protocolFees.token0"
                        let _566 := add(expr_8413_slot, 0)
                        /// @src 90:33346:33383  "protocolFees.token0 += uint128(fees0)"
                        let _567 := read_from_storage_split_offset_0_t_uint128(_566)
                        let expr_8420 := checked_add_t_uint128(_567, expr_8419)

                        update_storage_value_offset_0_t_uint128_to_t_uint128(_566, expr_8420)
                        /// @src 90:33322:33383  "if (uint128(fees0) > 0) protocolFees.token0 += uint128(fees0)"
                    }
                    /// @src 90:33421:33429  "FullMath"
                    let expr_8424_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 90:33437:33442  "paid0"
                    let _568 := var_paid0_8375
                    let expr_8426 := _568
                    /// @src 90:33445:33450  "fees0"
                    let _569 := var_fees0_8397
                    let expr_8427 := _569
                    /// @src 90:33437:33450  "paid0 - fees0"
                    let expr_8428 := checked_sub_t_uint256(expr_8426, expr_8427)

                    /// @src 90:33452:33465  "FixedPoint128"
                    let expr_8429_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint128.sol:FixedPoint128")
                    /// @src 90:33452:33470  "FixedPoint128.Q128"
                    let expr_8430 := constant_Q128_9256()
                    /// @src 90:33472:33482  "_liquidity"
                    let _570 := var__liquidity_8272
                    let expr_8431 := _570
                    /// @src 90:33421:33483  "FullMath.mulDiv(paid0 - fees0, FixedPoint128.Q128, _liquidity)"
                    let _571 := convert_t_uint128_to_t_uint256(expr_8431)
                    let expr_8432 := fun_mulDiv_9388(expr_8428, expr_8430, _571)
                    /// @src 90:33397:33483  "feeGrowthGlobal0X128 += FullMath.mulDiv(paid0 - fees0, FixedPoint128.Q128, _liquidity)"
                    let _572 := read_from_storage_split_offset_0_t_uint256(0x01)
                    let expr_8433 := checked_add_t_uint256(_572, expr_8432)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(0x01, expr_8433)
                    /// @src 90:33162:33494  "if (paid0 > 0) {..."
                }
                /// @src 90:33507:33512  "paid1"
                let _573 := var_paid1_8381
                let expr_8437 := _573
                /// @src 90:33515:33516  "0"
                let expr_8438 := 0x00
                /// @src 90:33507:33516  "paid1 > 0"
                let expr_8439 := gt(cleanup_t_uint256(expr_8437), convert_t_rational_0_by_1_to_t_uint256(expr_8438))
                /// @src 90:33503:33835  "if (paid1 > 0) {..."
                if expr_8439 {
                    /// @src 90:33553:33558  "slot0"
                    let _574_slot := 0x00
                    let expr_8442_slot := _574_slot
                    /// @src 90:33553:33570  "slot0.feeProtocol"
                    let _575 := add(expr_8442_slot, 0)
                    let _576 := read_from_storage_split_offset_29_t_uint8(_575)
                    let expr_8443 := _576
                    /// @src 90:33574:33575  "4"
                    let expr_8444 := 0x04
                    /// @src 90:33553:33575  "slot0.feeProtocol >> 4"
                    let _577 := convert_t_rational_4_by_1_to_t_uint8(expr_8444)
                    let expr_8445 :=
                    shift_right_t_uint8_t_uint8(expr_8443, _577)

                    /// @src 90:33532:33575  "uint8 feeProtocol1 = slot0.feeProtocol >> 4"
                    let var_feeProtocol1_8441 := expr_8445
                    /// @src 90:33605:33617  "feeProtocol1"
                    let _578 := var_feeProtocol1_8441
                    let expr_8449 := _578
                    /// @src 90:33621:33622  "0"
                    let expr_8450 := 0x00
                    /// @src 90:33605:33622  "feeProtocol1 == 0"
                    let expr_8451 := eq(cleanup_t_uint8(expr_8449), convert_t_rational_0_by_1_to_t_uint8(expr_8450))
                    /// @src 90:33605:33649  "feeProtocol1 == 0 ? 0 : paid1 / feeProtocol1"
                    let expr_8456
                    switch expr_8451
                    case 0 {
                        /// @src 90:33629:33634  "paid1"
                        let _579 := var_paid1_8381
                        let expr_8453 := _579
                        /// @src 90:33637:33649  "feeProtocol1"
                        let _580 := var_feeProtocol1_8441
                        let expr_8454 := _580
                        /// @src 90:33629:33649  "paid1 / feeProtocol1"
                        let expr_8455 := checked_div_t_uint256(expr_8453, convert_t_uint8_to_t_uint256(expr_8454))

                        /// @src 90:33605:33649  "feeProtocol1 == 0 ? 0 : paid1 / feeProtocol1"
                        expr_8456 := expr_8455
                    }
                    default {
                        /// @src 90:33625:33626  "0"
                        let expr_8452 := 0x00
                        /// @src 90:33605:33649  "feeProtocol1 == 0 ? 0 : paid1 / feeProtocol1"
                        expr_8456 := convert_t_rational_0_by_1_to_t_uint256(expr_8452)
                    }
                    /// @src 90:33589:33649  "uint256 fees1 = feeProtocol1 == 0 ? 0 : paid1 / feeProtocol1"
                    let var_fees1_8448 := expr_8456
                    /// @src 90:33675:33680  "fees1"
                    let _581 := var_fees1_8448
                    let expr_8460 := _581
                    /// @src 90:33667:33681  "uint128(fees1)"
                    let expr_8461 := convert_t_uint256_to_t_uint128(expr_8460)
                    /// @src 90:33684:33685  "0"
                    let expr_8462 := 0x00
                    /// @src 90:33667:33685  "uint128(fees1) > 0"
                    let expr_8463 := gt(cleanup_t_uint128(expr_8461), convert_t_rational_0_by_1_to_t_uint128(expr_8462))
                    /// @src 90:33663:33724  "if (uint128(fees1) > 0) protocolFees.token1 += uint128(fees1)"
                    if expr_8463 {
                        /// @src 90:33718:33723  "fees1"
                        let _582 := var_fees1_8448
                        let expr_8469 := _582
                        /// @src 90:33710:33724  "uint128(fees1)"
                        let expr_8470 := convert_t_uint256_to_t_uint128(expr_8469)
                        /// @src 90:33687:33699  "protocolFees"
                        let _583_slot := 0x03
                        let expr_8464_slot := _583_slot
                        /// @src 90:33687:33706  "protocolFees.token1"
                        let _584 := add(expr_8464_slot, 0)
                        /// @src 90:33687:33724  "protocolFees.token1 += uint128(fees1)"
                        let _585 := read_from_storage_split_offset_16_t_uint128(_584)
                        let expr_8471 := checked_add_t_uint128(_585, expr_8470)

                        update_storage_value_offset_16_t_uint128_to_t_uint128(_584, expr_8471)
                        /// @src 90:33663:33724  "if (uint128(fees1) > 0) protocolFees.token1 += uint128(fees1)"
                    }
                    /// @src 90:33762:33770  "FullMath"
                    let expr_8475_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 90:33778:33783  "paid1"
                    let _586 := var_paid1_8381
                    let expr_8477 := _586
                    /// @src 90:33786:33791  "fees1"
                    let _587 := var_fees1_8448
                    let expr_8478 := _587
                    /// @src 90:33778:33791  "paid1 - fees1"
                    let expr_8479 := checked_sub_t_uint256(expr_8477, expr_8478)

                    /// @src 90:33793:33806  "FixedPoint128"
                    let expr_8480_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint128.sol:FixedPoint128")
                    /// @src 90:33793:33811  "FixedPoint128.Q128"
                    let expr_8481 := constant_Q128_9256()
                    /// @src 90:33813:33823  "_liquidity"
                    let _588 := var__liquidity_8272
                    let expr_8482 := _588
                    /// @src 90:33762:33824  "FullMath.mulDiv(paid1 - fees1, FixedPoint128.Q128, _liquidity)"
                    let _589 := convert_t_uint128_to_t_uint256(expr_8482)
                    let expr_8483 := fun_mulDiv_9388(expr_8479, expr_8481, _589)
                    /// @src 90:33738:33824  "feeGrowthGlobal1X128 += FullMath.mulDiv(paid1 - fees1, FixedPoint128.Q128, _liquidity)"
                    let _590 := read_from_storage_split_offset_0_t_uint256(0x02)
                    let expr_8484 := checked_add_t_uint256(_590, expr_8483)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(0x02, expr_8484)
                    /// @src 90:33503:33835  "if (paid1 > 0) {..."
                }
                /// @src 90:33856:33866  "msg.sender"
                let expr_8490 := caller()
                /// @src 90:33868:33877  "recipient"
                let _591 := var_recipient_8257
                let expr_8491 := _591
                /// @src 90:33879:33886  "amount0"
                let _592 := var_amount0_8259
                let expr_8492 := _592
                /// @src 90:33888:33895  "amount1"
                let _593 := var_amount1_8261
                let expr_8493 := _593
                /// @src 90:33897:33902  "paid0"
                let _594 := var_paid0_8375
                let expr_8494 := _594
                /// @src 90:33904:33909  "paid1"
                let _595 := var_paid1_8381
                let expr_8495 := _595
                /// @src 90:33850:33910  "Flash(msg.sender, recipient, amount0, amount1, paid0, paid1)"
                let _596 := 0xbdbdb71d7860376ba52b25a5028beea23581364a40522f6bcfb86bb1f2dca633
                let _597 := convert_t_address_to_t_address(expr_8490)
                let _598 := convert_t_address_to_t_address(expr_8491)
                {
                    let _599 := allocate_unbounded()
                    let _600 := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint256__fromStack(_599 , expr_8492, expr_8493, expr_8494, expr_8495)
                    log3(_599, sub(_600, _599) , _596, _597, _598)
                }
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 8499
            /// @src 90:32004:33917  "function flash(..."
            function fun_flash_8499(var_recipient_8257, var_amount0_8259, var_amount1_8261, var_data_8263_offset, var_data_8263_length) {

                modifier_lock_8267(var_recipient_8257, var_amount0_8259, var_amount1_8261, var_data_8263_offset, var_data_8263_length)
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function zero_value_for_split_t_uint128() -> ret {
                ret := 0
            }

            /// @ast-id 6349
            /// @src 90:4000:4137  "modifier lock() {..."
            function modifier_lock_7324(var_amount0_7326, var_amount1_7328, var_recipient_7312, var_tickLower_7314, var_tickUpper_7316, var_amount0Requested_7318, var_amount1Requested_7320) -> _603, _604 {
                _603 := var_amount0_7326
                _604 := var_amount1_7328

                /// @src 90:4034:4039  "slot0"
                let _605_slot := 0x00
                let expr_6330_slot := _605_slot
                /// @src 90:4034:4048  "slot0.unlocked"
                let _606 := add(expr_6330_slot, 0)
                let _607 := read_from_storage_split_offset_30_t_bool(_606)
                let expr_6331 := _607
                /// @src 90:4026:4056  "require(slot0.unlocked, 'LOK')"
                require_helper_t_stringliteral_e01ebc6b01bbf458b3d355b6e649efe64599751670c5d19175619893ecf97529(expr_6331)
                /// @src 90:4083:4088  "false"
                let expr_6338 := 0x00
                /// @src 90:4066:4071  "slot0"
                let _608_slot := 0x00
                let expr_6335_slot := _608_slot
                /// @src 90:4066:4080  "slot0.unlocked"
                let _609 := add(expr_6335_slot, 0)
                /// @src 90:4066:4088  "slot0.unlocked = false"
                update_storage_value_offset_30_t_bool_to_t_bool(_609, expr_6338)
                let expr_6339 := expr_6338
                /// @src 90:4098:4099  "_"
                _603, _604 := fun_collect_7414_inner(var_amount0_7326, var_amount1_7328, var_recipient_7312, var_tickLower_7314, var_tickUpper_7316, var_amount0Requested_7318, var_amount1Requested_7320)
                /// @src 90:4126:4130  "true"
                let expr_6345 := 0x01
                /// @src 90:4109:4114  "slot0"
                let _610_slot := 0x00
                let expr_6342_slot := _610_slot
                /// @src 90:4109:4123  "slot0.unlocked"
                let _611 := add(expr_6342_slot, 0)
                /// @src 90:4109:4130  "slot0.unlocked = true"
                update_storage_value_offset_30_t_bool_to_t_bool(_611, expr_6345)
                let expr_6346 := expr_6345

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function checked_sub_t_uint128(x, y) -> diff {
                x := cleanup_t_uint128(x)
                y := cleanup_t_uint128(y)
                diff := sub(x, y)

                if gt(diff, 0xffffffffffffffffffffffffffffffff) { panic_error_0x11() }

            }

            function abi_encode_tuple_t_address_t_uint128_t_uint128__to_t_address_t_uint128_t_uint128__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint128_to_t_uint128_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint128_to_t_uint128_fromStack(value2,  add(headStart, 64))

            }

            /// @src 90:18811:19846  "function collect(..."
            function fun_collect_7414_inner(_612, _613, var_recipient_7312, var_tickLower_7314, var_tickUpper_7316, var_amount0Requested_7318, var_amount1Requested_7320) -> var_amount0_7326, var_amount1_7328 {
                var_amount0_7326 := _612
                var_amount1_7328 := _613

                /// @src 90:19200:19209  "positions"
                let _614_slot := 0x07
                let expr_7335_slot := _614_slot
                /// @src 90:19200:19213  "positions.get"
                let expr_7336_self_slot := expr_7335_slot
                /// @src 90:19214:19224  "msg.sender"
                let expr_7338 := caller()
                /// @src 90:19226:19235  "tickLower"
                let _615 := var_tickLower_7314
                let expr_7339 := _615
                /// @src 90:19237:19246  "tickUpper"
                let _616 := var_tickUpper_7316
                let expr_7340 := _616
                /// @src 90:19200:19247  "positions.get(msg.sender, tickLower, tickUpper)"
                let expr_7341_slot := fun_get_20786(expr_7336_self_slot, expr_7338, expr_7339, expr_7340)
                /// @src 90:19167:19247  "Position.Info storage position = positions.get(msg.sender, tickLower, tickUpper)"
                let var_position_7334_slot := expr_7341_slot
                /// @src 90:19268:19284  "amount0Requested"
                let _617 := var_amount0Requested_7318
                let expr_7344 := _617
                /// @src 90:19287:19295  "position"
                let _618_slot := var_position_7334_slot
                let expr_7345_slot := _618_slot
                /// @src 90:19287:19307  "position.tokensOwed0"
                let _619 := add(expr_7345_slot, 3)
                let _620 := read_from_storage_split_offset_0_t_uint128(_619)
                let expr_7346 := _620
                /// @src 90:19268:19307  "amount0Requested > position.tokensOwed0"
                let expr_7347 := gt(cleanup_t_uint128(expr_7344), cleanup_t_uint128(expr_7346))
                /// @src 90:19268:19349  "amount0Requested > position.tokensOwed0 ? position.tokensOwed0 : amount0Requested"
                let expr_7351
                switch expr_7347
                case 0 {
                    /// @src 90:19333:19349  "amount0Requested"
                    let _621 := var_amount0Requested_7318
                    let expr_7350 := _621
                    /// @src 90:19268:19349  "amount0Requested > position.tokensOwed0 ? position.tokensOwed0 : amount0Requested"
                    expr_7351 := expr_7350
                }
                default {
                    /// @src 90:19310:19318  "position"
                    let _622_slot := var_position_7334_slot
                    let expr_7348_slot := _622_slot
                    /// @src 90:19310:19330  "position.tokensOwed0"
                    let _623 := add(expr_7348_slot, 3)
                    let _624 := read_from_storage_split_offset_0_t_uint128(_623)
                    let expr_7349 := _624
                    /// @src 90:19268:19349  "amount0Requested > position.tokensOwed0 ? position.tokensOwed0 : amount0Requested"
                    expr_7351 := expr_7349
                }
                /// @src 90:19258:19349  "amount0 = amount0Requested > position.tokensOwed0 ? position.tokensOwed0 : amount0Requested"
                var_amount0_7326 := expr_7351
                let expr_7352 := expr_7351
                /// @src 90:19369:19385  "amount1Requested"
                let _625 := var_amount1Requested_7320
                let expr_7355 := _625
                /// @src 90:19388:19396  "position"
                let _626_slot := var_position_7334_slot
                let expr_7356_slot := _626_slot
                /// @src 90:19388:19408  "position.tokensOwed1"
                let _627 := add(expr_7356_slot, 3)
                let _628 := read_from_storage_split_offset_16_t_uint128(_627)
                let expr_7357 := _628
                /// @src 90:19369:19408  "amount1Requested > position.tokensOwed1"
                let expr_7358 := gt(cleanup_t_uint128(expr_7355), cleanup_t_uint128(expr_7357))
                /// @src 90:19369:19450  "amount1Requested > position.tokensOwed1 ? position.tokensOwed1 : amount1Requested"
                let expr_7362
                switch expr_7358
                case 0 {
                    /// @src 90:19434:19450  "amount1Requested"
                    let _629 := var_amount1Requested_7320
                    let expr_7361 := _629
                    /// @src 90:19369:19450  "amount1Requested > position.tokensOwed1 ? position.tokensOwed1 : amount1Requested"
                    expr_7362 := expr_7361
                }
                default {
                    /// @src 90:19411:19419  "position"
                    let _630_slot := var_position_7334_slot
                    let expr_7359_slot := _630_slot
                    /// @src 90:19411:19431  "position.tokensOwed1"
                    let _631 := add(expr_7359_slot, 3)
                    let _632 := read_from_storage_split_offset_16_t_uint128(_631)
                    let expr_7360 := _632
                    /// @src 90:19369:19450  "amount1Requested > position.tokensOwed1 ? position.tokensOwed1 : amount1Requested"
                    expr_7362 := expr_7360
                }
                /// @src 90:19359:19450  "amount1 = amount1Requested > position.tokensOwed1 ? position.tokensOwed1 : amount1Requested"
                var_amount1_7328 := expr_7362
                let expr_7363 := expr_7362
                /// @src 90:19465:19472  "amount0"
                let _633 := var_amount0_7326
                let expr_7365 := _633
                /// @src 90:19475:19476  "0"
                let expr_7366 := 0x00
                /// @src 90:19465:19476  "amount0 > 0"
                let expr_7367 := gt(cleanup_t_uint128(expr_7365), convert_t_rational_0_by_1_to_t_uint128(expr_7366))
                /// @src 90:19461:19603  "if (amount0 > 0) {..."
                if expr_7367 {
                    /// @src 90:19516:19523  "amount0"
                    let _634 := var_amount0_7326
                    let expr_7371 := _634
                    /// @src 90:19492:19500  "position"
                    let _635_slot := var_position_7334_slot
                    let expr_7368_slot := _635_slot
                    /// @src 90:19492:19512  "position.tokensOwed0"
                    let _636 := add(expr_7368_slot, 3)
                    /// @src 90:19492:19523  "position.tokensOwed0 -= amount0"
                    let _637 := read_from_storage_split_offset_0_t_uint128(_636)
                    let expr_7372 := checked_sub_t_uint128(_637, expr_7371)

                    update_storage_value_offset_0_t_uint128_to_t_uint128(_636, expr_7372)
                    /// @src 90:19537:19551  "TransferHelper"
                    let expr_7374_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TransferHelper.sol:TransferHelper")
                    /// @src 90:19565:19571  "token0"
                    let _638 := loadimmutable("6241")
                    let expr_7377 := _638
                    /// @src 90:19573:19582  "recipient"
                    let _639 := var_recipient_7312
                    let expr_7378 := _639
                    /// @src 90:19584:19591  "amount0"
                    let _640 := var_amount0_7326
                    let expr_7379 := _640
                    /// @src 90:19537:19592  "TransferHelper.safeTransfer(token0, recipient, amount0)"
                    let _641 := convert_t_uint128_to_t_uint256(expr_7379)
                    fun_safeTransfer_22542(expr_7377, expr_7378, _641)
                    /// @src 90:19461:19603  "if (amount0 > 0) {..."
                }
                /// @src 90:19616:19623  "amount1"
                let _642 := var_amount1_7328
                let expr_7384 := _642
                /// @src 90:19626:19627  "0"
                let expr_7385 := 0x00
                /// @src 90:19616:19627  "amount1 > 0"
                let expr_7386 := gt(cleanup_t_uint128(expr_7384), convert_t_rational_0_by_1_to_t_uint128(expr_7385))
                /// @src 90:19612:19754  "if (amount1 > 0) {..."
                if expr_7386 {
                    /// @src 90:19667:19674  "amount1"
                    let _643 := var_amount1_7328
                    let expr_7390 := _643
                    /// @src 90:19643:19651  "position"
                    let _644_slot := var_position_7334_slot
                    let expr_7387_slot := _644_slot
                    /// @src 90:19643:19663  "position.tokensOwed1"
                    let _645 := add(expr_7387_slot, 3)
                    /// @src 90:19643:19674  "position.tokensOwed1 -= amount1"
                    let _646 := read_from_storage_split_offset_16_t_uint128(_645)
                    let expr_7391 := checked_sub_t_uint128(_646, expr_7390)

                    update_storage_value_offset_16_t_uint128_to_t_uint128(_645, expr_7391)
                    /// @src 90:19688:19702  "TransferHelper"
                    let expr_7393_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TransferHelper.sol:TransferHelper")
                    /// @src 90:19716:19722  "token1"
                    let _647 := loadimmutable("6245")
                    let expr_7396 := _647
                    /// @src 90:19724:19733  "recipient"
                    let _648 := var_recipient_7312
                    let expr_7397 := _648
                    /// @src 90:19735:19742  "amount1"
                    let _649 := var_amount1_7328
                    let expr_7398 := _649
                    /// @src 90:19688:19743  "TransferHelper.safeTransfer(token1, recipient, amount1)"
                    let _650 := convert_t_uint128_to_t_uint256(expr_7398)
                    fun_safeTransfer_22542(expr_7396, expr_7397, _650)
                    /// @src 90:19612:19754  "if (amount1 > 0) {..."
                }
                /// @src 90:19777:19787  "msg.sender"
                let expr_7405 := caller()
                /// @src 90:19789:19798  "recipient"
                let _651 := var_recipient_7312
                let expr_7406 := _651
                /// @src 90:19800:19809  "tickLower"
                let _652 := var_tickLower_7314
                let expr_7407 := _652
                /// @src 90:19811:19820  "tickUpper"
                let _653 := var_tickUpper_7316
                let expr_7408 := _653
                /// @src 90:19822:19829  "amount0"
                let _654 := var_amount0_7326
                let expr_7409 := _654
                /// @src 90:19831:19838  "amount1"
                let _655 := var_amount1_7328
                let expr_7410 := _655
                /// @src 90:19769:19839  "Collect(msg.sender, recipient, tickLower, tickUpper, amount0, amount1)"
                let _656 := 0x70935338e69775456a85ddef226c395fb668b63fa0115f5f20610b388e6ca9c0
                let _657 := convert_t_address_to_t_address(expr_7405)
                let _658 := convert_t_int24_to_t_int24(expr_7407)
                let _659 := convert_t_int24_to_t_int24(expr_7408)
                {
                    let _660 := allocate_unbounded()
                    let _661 := abi_encode_tuple_t_address_t_uint128_t_uint128__to_t_address_t_uint128_t_uint128__fromStack(_660 , expr_7406, expr_7409, expr_7410)
                    log4(_660, sub(_661, _660) , _656, _657, _658, _659)
                }
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 7414
            /// @src 90:18811:19846  "function collect(..."
            function fun_collect_7414(var_recipient_7312, var_tickLower_7314, var_tickUpper_7316, var_amount0Requested_7318, var_amount1Requested_7320) -> var_amount0_7326, var_amount1_7328 {
                /// @src 90:19011:19026  "uint128 amount0"
                let zero_t_uint128_601 := zero_value_for_split_t_uint128()
                var_amount0_7326 := zero_t_uint128_601
                /// @src 90:19028:19043  "uint128 amount1"
                let zero_t_uint128_602 := zero_value_for_split_t_uint128()
                var_amount1_7328 := zero_t_uint128_602

                var_amount0_7326, var_amount1_7328 := modifier_lock_7324(var_amount0_7326, var_amount1_7328, var_recipient_7312, var_tickLower_7314, var_tickUpper_7316, var_amount0Requested_7318, var_amount1Requested_7320)
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 6349
            /// @src 90:4000:4137  "modifier lock() {..."
            function modifier_lock_8508(var_feeProtocol0_8502, var_feeProtocol1_8504) {

                /// @src 90:4034:4039  "slot0"
                let _662_slot := 0x00
                let expr_6330_slot := _662_slot
                /// @src 90:4034:4048  "slot0.unlocked"
                let _663 := add(expr_6330_slot, 0)
                let _664 := read_from_storage_split_offset_30_t_bool(_663)
                let expr_6331 := _664
                /// @src 90:4026:4056  "require(slot0.unlocked, 'LOK')"
                require_helper_t_stringliteral_e01ebc6b01bbf458b3d355b6e649efe64599751670c5d19175619893ecf97529(expr_6331)
                /// @src 90:4083:4088  "false"
                let expr_6338 := 0x00
                /// @src 90:4066:4071  "slot0"
                let _665_slot := 0x00
                let expr_6335_slot := _665_slot
                /// @src 90:4066:4080  "slot0.unlocked"
                let _666 := add(expr_6335_slot, 0)
                /// @src 90:4066:4088  "slot0.unlocked = false"
                update_storage_value_offset_30_t_bool_to_t_bool(_666, expr_6338)
                let expr_6339 := expr_6338
                /// @src 90:4098:4099  "_"
                modifier_onlyFactoryOwner_8510(var_feeProtocol0_8502, var_feeProtocol1_8504)
                /// @src 90:4126:4130  "true"
                let expr_6345 := 0x01
                /// @src 90:4109:4114  "slot0"
                let _667_slot := 0x00
                let expr_6342_slot := _667_slot
                /// @src 90:4109:4123  "slot0.unlocked"
                let _668 := add(expr_6342_slot, 0)
                /// @src 90:4109:4130  "slot0.unlocked = true"
                update_storage_value_offset_30_t_bool_to_t_bool(_668, expr_6345)
                let expr_6346 := expr_6345

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function convert_t_uint160_to_t_contract$_IUniswapV3Factory_$8830(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IUniswapV3Factory_$8830(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IUniswapV3Factory_$8830(value)
            }

            function convert_t_contract$_IUniswapV3Factory_$8830_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_decode_t_address_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_address(value)
            }

            function abi_decode_tuple_t_address_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            /// @ast-id 6365
            /// @src 90:4253:4366  "modifier onlyFactoryOwner() {..."
            function modifier_onlyFactoryOwner_8510(var_feeProtocol0_8502, var_feeProtocol1_8504) {

                /// @src 90:4299:4309  "msg.sender"
                let expr_6354 := caller()
                /// @src 90:4331:4338  "factory"
                let _669 := loadimmutable("6237")
                let expr_6356 := _669
                /// @src 90:4313:4339  "IUniswapV3Factory(factory)"
                let expr_6357_address := convert_t_address_to_t_contract$_IUniswapV3Factory_$8830(expr_6356)
                /// @src 90:4313:4345  "IUniswapV3Factory(factory).owner"
                let expr_6358_address := convert_t_contract$_IUniswapV3Factory_$8830_to_t_address(expr_6357_address)
                let expr_6358_functionSelector := 0x8da5cb5b
                /// @src 90:4313:4347  "IUniswapV3Factory(factory).owner()"

                // storage for arguments and returned data
                let _670 := allocate_unbounded()
                mstore(_670, shift_left_224(expr_6358_functionSelector))
                let _671 := abi_encode_tuple__to__fromStack(add(_670, 4) )

                let _672 := staticcall(gas(), expr_6358_address,  _670, sub(_671, _670), _670, 32)

                if iszero(_672) { revert_forward_1() }

                let expr_6359
                if _672 {

                    let _673 := 32

                    if gt(_673, returndatasize()) {
                        _673 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_670, _673)

                    // decode return parameters from external try-call into retVars
                    expr_6359 :=  abi_decode_tuple_t_address_fromMemory(_670, add(_670, _673))
                }
                /// @src 90:4299:4347  "msg.sender == IUniswapV3Factory(factory).owner()"
                let expr_6360 := eq(cleanup_t_address(expr_6354), cleanup_t_address(expr_6359))
                /// @src 90:4291:4348  "require(msg.sender == IUniswapV3Factory(factory).owner())"
                require_helper(expr_6360)
                /// @src 90:4358:4359  "_"
                fun_setFeeProtocol_8570_inner(var_feeProtocol0_8502, var_feeProtocol1_8504)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function cleanup_t_rational_10_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_10_by_1(value)))
            }

            function shift_left_dynamic(bits, value) -> newValue {
                newValue :=

                shl(bits, value)

            }

            function shift_left_t_uint8_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint8(shift_left_dynamic(bits, cleanup_t_uint8(value)))
            }

            function checked_add_t_uint8(x, y) -> sum {
                x := cleanup_t_uint8(x)
                y := cleanup_t_uint8(y)
                sum := add(x, y)

                if gt(sum, 0xff) { panic_error_0x11() }

            }

            function shift_left_232(value) -> newValue {
                newValue :=

                shl(232, value)

            }

            function update_byte_slice_1_shift_29(value, toInsert) -> result {
                let mask := 0xff0000000000000000000000000000000000000000000000000000000000
                toInsert := shift_left_232(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint8_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_uint8(value)))
            }

            function prepare_store_t_uint8(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_29_t_uint8_to_t_uint8(slot, value_0) {
                let convertedValue_0 := convert_t_uint8_to_t_uint8(value_0)
                sstore(slot, update_byte_slice_1_shift_29(sload(slot), prepare_store_t_uint8(convertedValue_0)))
            }

            function abi_encode_tuple_t_uint8_t_uint8_t_uint8_t_uint8__to_t_uint8_t_uint8_t_uint8_t_uint8__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_uint8_to_t_uint8_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint8_to_t_uint8_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint8_to_t_uint8_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint8_to_t_uint8_fromStack(value3,  add(headStart, 96))

            }

            /// @src 90:33970:34483  "function setFeeProtocol(uint8 feeProtocol0, uint8 feeProtocol1) external override lock onlyFactoryOwner {..."
            function fun_setFeeProtocol_8570_inner(var_feeProtocol0_8502, var_feeProtocol1_8504) {

                /// @src 90:34106:34118  "feeProtocol0"
                let _674 := var_feeProtocol0_8502
                let expr_8513 := _674
                /// @src 90:34122:34123  "0"
                let expr_8514 := 0x00
                /// @src 90:34106:34123  "feeProtocol0 == 0"
                let expr_8515 := eq(cleanup_t_uint8(expr_8513), convert_t_rational_0_by_1_to_t_uint8(expr_8514))
                /// @src 90:34106:34168  "feeProtocol0 == 0 || (feeProtocol0 >= 4 && feeProtocol0 <= 10)"
                let expr_8524 := expr_8515
                if iszero(expr_8524) {
                    /// @src 90:34128:34140  "feeProtocol0"
                    let _675 := var_feeProtocol0_8502
                    let expr_8516 := _675
                    /// @src 90:34144:34145  "4"
                    let expr_8517 := 0x04
                    /// @src 90:34128:34145  "feeProtocol0 >= 4"
                    let expr_8518 := iszero(lt(cleanup_t_uint8(expr_8516), convert_t_rational_4_by_1_to_t_uint8(expr_8517)))
                    /// @src 90:34128:34167  "feeProtocol0 >= 4 && feeProtocol0 <= 10"
                    let expr_8522 := expr_8518
                    if expr_8522 {
                        /// @src 90:34149:34161  "feeProtocol0"
                        let _676 := var_feeProtocol0_8502
                        let expr_8519 := _676
                        /// @src 90:34165:34167  "10"
                        let expr_8520 := 0x0a
                        /// @src 90:34149:34167  "feeProtocol0 <= 10"
                        let expr_8521 := iszero(gt(cleanup_t_uint8(expr_8519), convert_t_rational_10_by_1_to_t_uint8(expr_8520)))
                        /// @src 90:34128:34167  "feeProtocol0 >= 4 && feeProtocol0 <= 10"
                        expr_8522 := expr_8521
                    }
                    /// @src 90:34127:34168  "(feeProtocol0 >= 4 && feeProtocol0 <= 10)"
                    let expr_8523 := expr_8522
                    /// @src 90:34106:34168  "feeProtocol0 == 0 || (feeProtocol0 >= 4 && feeProtocol0 <= 10)"
                    expr_8524 := expr_8523
                }
                /// @src 90:34105:34169  "(feeProtocol0 == 0 || (feeProtocol0 >= 4 && feeProtocol0 <= 10))"
                let expr_8525 := expr_8524
                /// @src 90:34105:34253  "(feeProtocol0 == 0 || (feeProtocol0 >= 4 && feeProtocol0 <= 10)) &&..."
                let expr_8539 := expr_8525
                if expr_8539 {
                    /// @src 90:34190:34202  "feeProtocol1"
                    let _677 := var_feeProtocol1_8504
                    let expr_8526 := _677
                    /// @src 90:34206:34207  "0"
                    let expr_8527 := 0x00
                    /// @src 90:34190:34207  "feeProtocol1 == 0"
                    let expr_8528 := eq(cleanup_t_uint8(expr_8526), convert_t_rational_0_by_1_to_t_uint8(expr_8527))
                    /// @src 90:34190:34252  "feeProtocol1 == 0 || (feeProtocol1 >= 4 && feeProtocol1 <= 10)"
                    let expr_8537 := expr_8528
                    if iszero(expr_8537) {
                        /// @src 90:34212:34224  "feeProtocol1"
                        let _678 := var_feeProtocol1_8504
                        let expr_8529 := _678
                        /// @src 90:34228:34229  "4"
                        let expr_8530 := 0x04
                        /// @src 90:34212:34229  "feeProtocol1 >= 4"
                        let expr_8531 := iszero(lt(cleanup_t_uint8(expr_8529), convert_t_rational_4_by_1_to_t_uint8(expr_8530)))
                        /// @src 90:34212:34251  "feeProtocol1 >= 4 && feeProtocol1 <= 10"
                        let expr_8535 := expr_8531
                        if expr_8535 {
                            /// @src 90:34233:34245  "feeProtocol1"
                            let _679 := var_feeProtocol1_8504
                            let expr_8532 := _679
                            /// @src 90:34249:34251  "10"
                            let expr_8533 := 0x0a
                            /// @src 90:34233:34251  "feeProtocol1 <= 10"
                            let expr_8534 := iszero(gt(cleanup_t_uint8(expr_8532), convert_t_rational_10_by_1_to_t_uint8(expr_8533)))
                            /// @src 90:34212:34251  "feeProtocol1 >= 4 && feeProtocol1 <= 10"
                            expr_8535 := expr_8534
                        }
                        /// @src 90:34211:34252  "(feeProtocol1 >= 4 && feeProtocol1 <= 10)"
                        let expr_8536 := expr_8535
                        /// @src 90:34190:34252  "feeProtocol1 == 0 || (feeProtocol1 >= 4 && feeProtocol1 <= 10)"
                        expr_8537 := expr_8536
                    }
                    /// @src 90:34189:34253  "(feeProtocol1 == 0 || (feeProtocol1 >= 4 && feeProtocol1 <= 10))"
                    let expr_8538 := expr_8537
                    /// @src 90:34105:34253  "(feeProtocol0 == 0 || (feeProtocol0 >= 4 && feeProtocol0 <= 10)) &&..."
                    expr_8539 := expr_8538
                }
                /// @src 90:34084:34263  "require(..."
                require_helper(expr_8539)
                /// @src 90:34296:34301  "slot0"
                let _680_slot := 0x00
                let expr_8544_slot := _680_slot
                /// @src 90:34296:34313  "slot0.feeProtocol"
                let _681 := add(expr_8544_slot, 0)
                let _682 := read_from_storage_split_offset_29_t_uint8(_681)
                let expr_8545 := _682
                /// @src 90:34273:34313  "uint8 feeProtocolOld = slot0.feeProtocol"
                let var_feeProtocolOld_8543 := expr_8545
                /// @src 90:34343:34355  "feeProtocol0"
                let _683 := var_feeProtocol0_8502
                let expr_8550 := _683
                /// @src 90:34359:34371  "feeProtocol1"
                let _684 := var_feeProtocol1_8504
                let expr_8551 := _684
                /// @src 90:34375:34376  "4"
                let expr_8552 := 0x04
                /// @src 90:34359:34376  "feeProtocol1 << 4"
                let _685 := convert_t_rational_4_by_1_to_t_uint8(expr_8552)
                let expr_8553 :=
                shift_left_t_uint8_t_uint8(expr_8551, _685)

                /// @src 90:34358:34377  "(feeProtocol1 << 4)"
                let expr_8554 := expr_8553
                /// @src 90:34343:34377  "feeProtocol0 + (feeProtocol1 << 4)"
                let expr_8555 := checked_add_t_uint8(expr_8550, expr_8554)

                /// @src 90:34323:34328  "slot0"
                let _686_slot := 0x00
                let expr_8547_slot := _686_slot
                /// @src 90:34323:34340  "slot0.feeProtocol"
                let _687 := add(expr_8547_slot, 0)
                /// @src 90:34323:34377  "slot0.feeProtocol = feeProtocol0 + (feeProtocol1 << 4)"
                update_storage_value_offset_29_t_uint8_to_t_uint8(_687, expr_8555)
                let expr_8556 := expr_8555
                /// @src 90:34407:34421  "feeProtocolOld"
                let _688 := var_feeProtocolOld_8543
                let expr_8559 := _688
                /// @src 90:34424:34426  "16"
                let expr_8560 := 0x10
                /// @src 90:34407:34426  "feeProtocolOld % 16"
                let expr_8561 := mod_t_uint8(expr_8559, convert_t_rational_16_by_1_to_t_uint8(expr_8560))

                /// @src 90:34428:34442  "feeProtocolOld"
                let _689 := var_feeProtocolOld_8543
                let expr_8562 := _689
                /// @src 90:34446:34447  "4"
                let expr_8563 := 0x04
                /// @src 90:34428:34447  "feeProtocolOld >> 4"
                let _690 := convert_t_rational_4_by_1_to_t_uint8(expr_8563)
                let expr_8564 :=
                shift_right_t_uint8_t_uint8(expr_8562, _690)

                /// @src 90:34449:34461  "feeProtocol0"
                let _691 := var_feeProtocol0_8502
                let expr_8565 := _691
                /// @src 90:34463:34475  "feeProtocol1"
                let _692 := var_feeProtocol1_8504
                let expr_8566 := _692
                /// @src 90:34392:34476  "SetFeeProtocol(feeProtocolOld % 16, feeProtocolOld >> 4, feeProtocol0, feeProtocol1)"
                let _693 := 0x973d8d92bb299f4af6ce49b52a8adb85ae46b9f214c4c4fc06ac77401237b133
                {
                    let _694 := allocate_unbounded()
                    let _695 := abi_encode_tuple_t_uint8_t_uint8_t_uint8_t_uint8__to_t_uint8_t_uint8_t_uint8_t_uint8__fromStack(_694 , expr_8561, expr_8564, expr_8565, expr_8566)
                    log1(_694, sub(_695, _694) , _693)
                }
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 8570
            /// @src 90:33970:34483  "function setFeeProtocol(uint8 feeProtocol0, uint8 feeProtocol1) external override lock onlyFactoryOwner {..."
            function fun_setFeeProtocol_8570(var_feeProtocol0_8502, var_feeProtocol1_8504) {

                modifier_lock_8508(var_feeProtocol0_8502, var_feeProtocol1_8504)
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 6349
            /// @src 90:4000:4137  "modifier lock() {..."
            function modifier_lock_8581(var_amount0_8585, var_amount1_8587, var_recipient_8573, var_amount0Requested_8575, var_amount1Requested_8577) -> _698, _699 {
                _698 := var_amount0_8585
                _699 := var_amount1_8587

                /// @src 90:4034:4039  "slot0"
                let _700_slot := 0x00
                let expr_6330_slot := _700_slot
                /// @src 90:4034:4048  "slot0.unlocked"
                let _701 := add(expr_6330_slot, 0)
                let _702 := read_from_storage_split_offset_30_t_bool(_701)
                let expr_6331 := _702
                /// @src 90:4026:4056  "require(slot0.unlocked, 'LOK')"
                require_helper_t_stringliteral_e01ebc6b01bbf458b3d355b6e649efe64599751670c5d19175619893ecf97529(expr_6331)
                /// @src 90:4083:4088  "false"
                let expr_6338 := 0x00
                /// @src 90:4066:4071  "slot0"
                let _703_slot := 0x00
                let expr_6335_slot := _703_slot
                /// @src 90:4066:4080  "slot0.unlocked"
                let _704 := add(expr_6335_slot, 0)
                /// @src 90:4066:4088  "slot0.unlocked = false"
                update_storage_value_offset_30_t_bool_to_t_bool(_704, expr_6338)
                let expr_6339 := expr_6338
                /// @src 90:4098:4099  "_"
                _698, _699 := modifier_onlyFactoryOwner_8583(var_amount0_8585, var_amount1_8587, var_recipient_8573, var_amount0Requested_8575, var_amount1Requested_8577)
                /// @src 90:4126:4130  "true"
                let expr_6345 := 0x01
                /// @src 90:4109:4114  "slot0"
                let _705_slot := 0x00
                let expr_6342_slot := _705_slot
                /// @src 90:4109:4123  "slot0.unlocked"
                let _706 := add(expr_6342_slot, 0)
                /// @src 90:4109:4130  "slot0.unlocked = true"
                update_storage_value_offset_30_t_bool_to_t_bool(_706, expr_6345)
                let expr_6346 := expr_6345

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 6365
            /// @src 90:4253:4366  "modifier onlyFactoryOwner() {..."
            function modifier_onlyFactoryOwner_8583(var_amount0_8585, var_amount1_8587, var_recipient_8573, var_amount0Requested_8575, var_amount1Requested_8577) -> _707, _708 {
                _707 := var_amount0_8585
                _708 := var_amount1_8587

                /// @src 90:4299:4309  "msg.sender"
                let expr_6354 := caller()
                /// @src 90:4331:4338  "factory"
                let _709 := loadimmutable("6237")
                let expr_6356 := _709
                /// @src 90:4313:4339  "IUniswapV3Factory(factory)"
                let expr_6357_address := convert_t_address_to_t_contract$_IUniswapV3Factory_$8830(expr_6356)
                /// @src 90:4313:4345  "IUniswapV3Factory(factory).owner"
                let expr_6358_address := convert_t_contract$_IUniswapV3Factory_$8830_to_t_address(expr_6357_address)
                let expr_6358_functionSelector := 0x8da5cb5b
                /// @src 90:4313:4347  "IUniswapV3Factory(factory).owner()"

                // storage for arguments and returned data
                let _710 := allocate_unbounded()
                mstore(_710, shift_left_224(expr_6358_functionSelector))
                let _711 := abi_encode_tuple__to__fromStack(add(_710, 4) )

                let _712 := staticcall(gas(), expr_6358_address,  _710, sub(_711, _710), _710, 32)

                if iszero(_712) { revert_forward_1() }

                let expr_6359
                if _712 {

                    let _713 := 32

                    if gt(_713, returndatasize()) {
                        _713 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_710, _713)

                    // decode return parameters from external try-call into retVars
                    expr_6359 :=  abi_decode_tuple_t_address_fromMemory(_710, add(_710, _713))
                }
                /// @src 90:4299:4347  "msg.sender == IUniswapV3Factory(factory).owner()"
                let expr_6360 := eq(cleanup_t_address(expr_6354), cleanup_t_address(expr_6359))
                /// @src 90:4291:4348  "require(msg.sender == IUniswapV3Factory(factory).owner())"
                require_helper(expr_6360)
                /// @src 90:4358:4359  "_"
                _707, _708 := fun_collectProtocol_8674_inner(var_amount0_8585, var_amount1_8587, var_recipient_8573, var_amount0Requested_8575, var_amount1Requested_8577)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function decrement_t_uint128(value) -> ret {
                value := cleanup_t_uint128(value)
                if eq(value, 0x00) { panic_error_0x11() }
                ret := sub(value, 1)
            }

            /// @src 90:34536:35553  "function collectProtocol(..."
            function fun_collectProtocol_8674_inner(_714, _715, var_recipient_8573, var_amount0Requested_8575, var_amount1Requested_8577) -> var_amount0_8585, var_amount1_8587 {
                var_amount0_8585 := _714
                var_amount1_8587 := _715

                /// @src 90:34765:34781  "amount0Requested"
                let _716 := var_amount0Requested_8575
                let expr_8590 := _716
                /// @src 90:34784:34796  "protocolFees"
                let _717_slot := 0x03
                let expr_8591_slot := _717_slot
                /// @src 90:34784:34803  "protocolFees.token0"
                let _718 := add(expr_8591_slot, 0)
                let _719 := read_from_storage_split_offset_0_t_uint128(_718)
                let expr_8592 := _719
                /// @src 90:34765:34803  "amount0Requested > protocolFees.token0"
                let expr_8593 := gt(cleanup_t_uint128(expr_8590), cleanup_t_uint128(expr_8592))
                /// @src 90:34765:34844  "amount0Requested > protocolFees.token0 ? protocolFees.token0 : amount0Requested"
                let expr_8597
                switch expr_8593
                case 0 {
                    /// @src 90:34828:34844  "amount0Requested"
                    let _720 := var_amount0Requested_8575
                    let expr_8596 := _720
                    /// @src 90:34765:34844  "amount0Requested > protocolFees.token0 ? protocolFees.token0 : amount0Requested"
                    expr_8597 := expr_8596
                }
                default {
                    /// @src 90:34806:34818  "protocolFees"
                    let _721_slot := 0x03
                    let expr_8594_slot := _721_slot
                    /// @src 90:34806:34825  "protocolFees.token0"
                    let _722 := add(expr_8594_slot, 0)
                    let _723 := read_from_storage_split_offset_0_t_uint128(_722)
                    let expr_8595 := _723
                    /// @src 90:34765:34844  "amount0Requested > protocolFees.token0 ? protocolFees.token0 : amount0Requested"
                    expr_8597 := expr_8595
                }
                /// @src 90:34755:34844  "amount0 = amount0Requested > protocolFees.token0 ? protocolFees.token0 : amount0Requested"
                var_amount0_8585 := expr_8597
                let expr_8598 := expr_8597
                /// @src 90:34864:34880  "amount1Requested"
                let _724 := var_amount1Requested_8577
                let expr_8601 := _724
                /// @src 90:34883:34895  "protocolFees"
                let _725_slot := 0x03
                let expr_8602_slot := _725_slot
                /// @src 90:34883:34902  "protocolFees.token1"
                let _726 := add(expr_8602_slot, 0)
                let _727 := read_from_storage_split_offset_16_t_uint128(_726)
                let expr_8603 := _727
                /// @src 90:34864:34902  "amount1Requested > protocolFees.token1"
                let expr_8604 := gt(cleanup_t_uint128(expr_8601), cleanup_t_uint128(expr_8603))
                /// @src 90:34864:34943  "amount1Requested > protocolFees.token1 ? protocolFees.token1 : amount1Requested"
                let expr_8608
                switch expr_8604
                case 0 {
                    /// @src 90:34927:34943  "amount1Requested"
                    let _728 := var_amount1Requested_8577
                    let expr_8607 := _728
                    /// @src 90:34864:34943  "amount1Requested > protocolFees.token1 ? protocolFees.token1 : amount1Requested"
                    expr_8608 := expr_8607
                }
                default {
                    /// @src 90:34905:34917  "protocolFees"
                    let _729_slot := 0x03
                    let expr_8605_slot := _729_slot
                    /// @src 90:34905:34924  "protocolFees.token1"
                    let _730 := add(expr_8605_slot, 0)
                    let _731 := read_from_storage_split_offset_16_t_uint128(_730)
                    let expr_8606 := _731
                    /// @src 90:34864:34943  "amount1Requested > protocolFees.token1 ? protocolFees.token1 : amount1Requested"
                    expr_8608 := expr_8606
                }
                /// @src 90:34854:34943  "amount1 = amount1Requested > protocolFees.token1 ? protocolFees.token1 : amount1Requested"
                var_amount1_8587 := expr_8608
                let expr_8609 := expr_8608
                /// @src 90:34958:34965  "amount0"
                let _732 := var_amount0_8585
                let expr_8611 := _732
                /// @src 90:34968:34969  "0"
                let expr_8612 := 0x00
                /// @src 90:34958:34969  "amount0 > 0"
                let expr_8613 := gt(cleanup_t_uint128(expr_8611), convert_t_rational_0_by_1_to_t_uint128(expr_8612))
                /// @src 90:34954:35210  "if (amount0 > 0) {..."
                if expr_8613 {
                    /// @src 90:34989:34996  "amount0"
                    let _733 := var_amount0_8585
                    let expr_8614 := _733
                    /// @src 90:35000:35012  "protocolFees"
                    let _734_slot := 0x03
                    let expr_8615_slot := _734_slot
                    /// @src 90:35000:35019  "protocolFees.token0"
                    let _735 := add(expr_8615_slot, 0)
                    let _736 := read_from_storage_split_offset_0_t_uint128(_735)
                    let expr_8616 := _736
                    /// @src 90:34989:35019  "amount0 == protocolFees.token0"
                    let expr_8617 := eq(cleanup_t_uint128(expr_8614), cleanup_t_uint128(expr_8616))
                    /// @src 90:34985:35030  "if (amount0 == protocolFees.token0) amount0--"
                    if expr_8617 {
                        /// @src 90:35021:35030  "amount0--"
                        let _738 := var_amount0_8585
                        let _737 := decrement_t_uint128(_738)
                        var_amount0_8585 := _737
                        let expr_8619 := _738
                        /// @src 90:34985:35030  "if (amount0 == protocolFees.token0) amount0--"
                    }
                    /// @src 90:35123:35130  "amount0"
                    let _739 := var_amount0_8585
                    let expr_8625 := _739
                    /// @src 90:35100:35112  "protocolFees"
                    let _740_slot := 0x03
                    let expr_8622_slot := _740_slot
                    /// @src 90:35100:35119  "protocolFees.token0"
                    let _741 := add(expr_8622_slot, 0)
                    /// @src 90:35100:35130  "protocolFees.token0 -= amount0"
                    let _742 := read_from_storage_split_offset_0_t_uint128(_741)
                    let expr_8626 := checked_sub_t_uint128(_742, expr_8625)

                    update_storage_value_offset_0_t_uint128_to_t_uint128(_741, expr_8626)
                    /// @src 90:35144:35158  "TransferHelper"
                    let expr_8628_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TransferHelper.sol:TransferHelper")
                    /// @src 90:35172:35178  "token0"
                    let _743 := loadimmutable("6241")
                    let expr_8631 := _743
                    /// @src 90:35180:35189  "recipient"
                    let _744 := var_recipient_8573
                    let expr_8632 := _744
                    /// @src 90:35191:35198  "amount0"
                    let _745 := var_amount0_8585
                    let expr_8633 := _745
                    /// @src 90:35144:35199  "TransferHelper.safeTransfer(token0, recipient, amount0)"
                    let _746 := convert_t_uint128_to_t_uint256(expr_8633)
                    fun_safeTransfer_22542(expr_8631, expr_8632, _746)
                    /// @src 90:34954:35210  "if (amount0 > 0) {..."
                }
                /// @src 90:35223:35230  "amount1"
                let _747 := var_amount1_8587
                let expr_8638 := _747
                /// @src 90:35233:35234  "0"
                let expr_8639 := 0x00
                /// @src 90:35223:35234  "amount1 > 0"
                let expr_8640 := gt(cleanup_t_uint128(expr_8638), convert_t_rational_0_by_1_to_t_uint128(expr_8639))
                /// @src 90:35219:35475  "if (amount1 > 0) {..."
                if expr_8640 {
                    /// @src 90:35254:35261  "amount1"
                    let _748 := var_amount1_8587
                    let expr_8641 := _748
                    /// @src 90:35265:35277  "protocolFees"
                    let _749_slot := 0x03
                    let expr_8642_slot := _749_slot
                    /// @src 90:35265:35284  "protocolFees.token1"
                    let _750 := add(expr_8642_slot, 0)
                    let _751 := read_from_storage_split_offset_16_t_uint128(_750)
                    let expr_8643 := _751
                    /// @src 90:35254:35284  "amount1 == protocolFees.token1"
                    let expr_8644 := eq(cleanup_t_uint128(expr_8641), cleanup_t_uint128(expr_8643))
                    /// @src 90:35250:35295  "if (amount1 == protocolFees.token1) amount1--"
                    if expr_8644 {
                        /// @src 90:35286:35295  "amount1--"
                        let _753 := var_amount1_8587
                        let _752 := decrement_t_uint128(_753)
                        var_amount1_8587 := _752
                        let expr_8646 := _753
                        /// @src 90:35250:35295  "if (amount1 == protocolFees.token1) amount1--"
                    }
                    /// @src 90:35388:35395  "amount1"
                    let _754 := var_amount1_8587
                    let expr_8652 := _754
                    /// @src 90:35365:35377  "protocolFees"
                    let _755_slot := 0x03
                    let expr_8649_slot := _755_slot
                    /// @src 90:35365:35384  "protocolFees.token1"
                    let _756 := add(expr_8649_slot, 0)
                    /// @src 90:35365:35395  "protocolFees.token1 -= amount1"
                    let _757 := read_from_storage_split_offset_16_t_uint128(_756)
                    let expr_8653 := checked_sub_t_uint128(_757, expr_8652)

                    update_storage_value_offset_16_t_uint128_to_t_uint128(_756, expr_8653)
                    /// @src 90:35409:35423  "TransferHelper"
                    let expr_8655_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TransferHelper.sol:TransferHelper")
                    /// @src 90:35437:35443  "token1"
                    let _758 := loadimmutable("6245")
                    let expr_8658 := _758
                    /// @src 90:35445:35454  "recipient"
                    let _759 := var_recipient_8573
                    let expr_8659 := _759
                    /// @src 90:35456:35463  "amount1"
                    let _760 := var_amount1_8587
                    let expr_8660 := _760
                    /// @src 90:35409:35464  "TransferHelper.safeTransfer(token1, recipient, amount1)"
                    let _761 := convert_t_uint128_to_t_uint256(expr_8660)
                    fun_safeTransfer_22542(expr_8658, expr_8659, _761)
                    /// @src 90:35219:35475  "if (amount1 > 0) {..."
                }
                /// @src 90:35506:35516  "msg.sender"
                let expr_8667 := caller()
                /// @src 90:35518:35527  "recipient"
                let _762 := var_recipient_8573
                let expr_8668 := _762
                /// @src 90:35529:35536  "amount0"
                let _763 := var_amount0_8585
                let expr_8669 := _763
                /// @src 90:35538:35545  "amount1"
                let _764 := var_amount1_8587
                let expr_8670 := _764
                /// @src 90:35490:35546  "CollectProtocol(msg.sender, recipient, amount0, amount1)"
                let _765 := 0x596b573906218d3411850b26a6b437d6c4522fdb43d2d2386263f86d50b8b151
                let _766 := convert_t_address_to_t_address(expr_8667)
                let _767 := convert_t_address_to_t_address(expr_8668)
                {
                    let _768 := allocate_unbounded()
                    let _769 := abi_encode_tuple_t_uint128_t_uint128__to_t_uint128_t_uint128__fromStack(_768 , expr_8669, expr_8670)
                    log3(_768, sub(_769, _768) , _765, _766, _767)
                }
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 8674
            /// @src 90:34536:35553  "function collectProtocol(..."
            function fun_collectProtocol_8674(var_recipient_8573, var_amount0Requested_8575, var_amount1Requested_8577) -> var_amount0_8585, var_amount1_8587 {
                /// @src 90:34711:34726  "uint128 amount0"
                let zero_t_uint128_696 := zero_value_for_split_t_uint128()
                var_amount0_8585 := zero_t_uint128_696
                /// @src 90:34728:34743  "uint128 amount1"
                let zero_t_uint128_697 := zero_value_for_split_t_uint128()
                var_amount1_8587 := zero_t_uint128_697

                var_amount0_8585, var_amount1_8587 := modifier_lock_8581(var_amount0_8585, var_amount1_8587, var_recipient_8573, var_amount0Requested_8575, var_amount1Requested_8577)
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function zero_value_for_split_t_array$_t_int56_$dyn_memory_ptr() -> ret {
                ret := 96
            }

            function zero_value_for_split_t_array$_t_uint160_$dyn_memory_ptr() -> ret {
                ret := 96
            }

            /// @ast-id 6166
            /// @src 88:1037:1113  "modifier noDelegateCall() {..."
            function modifier_noDelegateCall_6719(var_tickCumulatives_6722_mpos, var_secondsPerLiquidityCumulativeX128s_6725_mpos, var_secondsAgos_6715_offset, var_secondsAgos_6715_length) -> _772, _773 {
                _772 := var_tickCumulatives_6722_mpos
                _773 := var_secondsPerLiquidityCumulativeX128s_6725_mpos

                fun_checkNotDelegateCall_6158()
                /// @src 88:1105:1106  "_"
                _772, _773 := fun_observe_6742_inner(var_tickCumulatives_6722_mpos, var_secondsPerLiquidityCumulativeX128s_6725_mpos, var_secondsAgos_6715_offset, var_secondsAgos_6715_length)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function array_allocation_size_t_array$_t_uint32_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function validator_revert_t_uint32(value) {
                if iszero(eq(value, cleanup_t_uint32(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint32(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint32(value)
            }

            // uint32[]
            function abi_decode_available_length_t_array$_t_uint32_$dyn_memory_ptr(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_uint32_$dyn_memory_ptr(length))
                let dst := array

                mstore(array, length)
                dst := add(array, 0x20)

                let srcEnd := add(offset, mul(length, 0x20))
                if gt(srcEnd, end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
                {

                    let elementPos := src

                    mstore(dst, abi_decode_t_uint32(elementPos, end))
                    dst := add(dst, 0x20)
                }
            }

            function convert_array_t_array$_t_uint32_$dyn_calldata_ptr_to_t_array$_t_uint32_$dyn_memory_ptr(value, length) -> converted  {

                // Copy the array to a free position in memory
                converted :=

                abi_decode_available_length_t_array$_t_uint32_$dyn_memory_ptr(value, length, calldatasize())

            }

            /// @src 90:9113:9612  "function observe(uint32[] calldata secondsAgos)..."
            function fun_observe_6742_inner(_774, _775, var_secondsAgos_6715_offset, var_secondsAgos_6715_length) -> var_tickCumulatives_6722_mpos, var_secondsPerLiquidityCumulativeX128s_6725_mpos {
                var_tickCumulatives_6722_mpos := _774
                var_secondsPerLiquidityCumulativeX128s_6725_mpos := _775

                /// @src 90:9366:9378  "observations"
                let _776_slot := 0x08
                let expr_6727_slot := _776_slot
                /// @src 90:9366:9386  "observations.observe"
                let expr_6728_self_slot := convert_array_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_to_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_6727_slot)
                /// @src 90:9404:9421  "_blockTimestamp()"
                let expr_6730 := fun__blockTimestamp_6442()
                /// @src 90:9439:9450  "secondsAgos"
                let _777_offset := var_secondsAgos_6715_offset
                let _777_length := var_secondsAgos_6715_length
                let expr_6731_offset := _777_offset
                let expr_6731_length := _777_length
                /// @src 90:9468:9473  "slot0"
                let _778_slot := 0x00
                let expr_6732_slot := _778_slot
                /// @src 90:9468:9478  "slot0.tick"
                let _779 := add(expr_6732_slot, 0)
                let _780 := read_from_storage_split_offset_20_t_int24(_779)
                let expr_6733 := _780
                /// @src 90:9496:9501  "slot0"
                let _781_slot := 0x00
                let expr_6734_slot := _781_slot
                /// @src 90:9496:9518  "slot0.observationIndex"
                let _782 := add(expr_6734_slot, 0)
                let _783 := read_from_storage_split_offset_23_t_uint16(_782)
                let expr_6735 := _783
                /// @src 90:9536:9545  "liquidity"
                let _784 := read_from_storage_split_offset_0_t_uint128(0x04)
                let expr_6736 := _784
                /// @src 90:9563:9568  "slot0"
                let _785_slot := 0x00
                let expr_6737_slot := _785_slot
                /// @src 90:9563:9591  "slot0.observationCardinality"
                let _786 := add(expr_6737_slot, 0)
                let _787 := read_from_storage_split_offset_25_t_uint16(_786)
                let expr_6738 := _787
                /// @src 90:9366:9605  "observations.observe(..."
                let _788_mpos := convert_array_t_array$_t_uint32_$dyn_calldata_ptr_to_t_array$_t_uint32_$dyn_memory_ptr(expr_6731_offset, expr_6731_length)
                let expr_6739_component_1_mpos, expr_6739_component_2_mpos := fun_observe_20736(expr_6728_self_slot, expr_6730, _788_mpos, expr_6733, expr_6735, expr_6736, expr_6738)
                /// @src 90:9347:9605  "return..."
                var_tickCumulatives_6722_mpos := expr_6739_component_1_mpos
                var_secondsPerLiquidityCumulativeX128s_6725_mpos := expr_6739_component_2_mpos
                leave

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 6742
            /// @src 90:9113:9612  "function observe(uint32[] calldata secondsAgos)..."
            function fun_observe_6742(var_secondsAgos_6715_offset, var_secondsAgos_6715_length) -> var_tickCumulatives_6722_mpos, var_secondsPerLiquidityCumulativeX128s_6725_mpos {
                /// @src 90:9248:9278  "int56[] memory tickCumulatives"
                let zero_t_array$_t_int56_$dyn_memory_ptr_770_mpos := zero_value_for_split_t_array$_t_int56_$dyn_memory_ptr()
                var_tickCumulatives_6722_mpos := zero_t_array$_t_int56_$dyn_memory_ptr_770_mpos
                /// @src 90:9280:9331  "uint160[] memory secondsPerLiquidityCumulativeX128s"
                let zero_t_array$_t_uint160_$dyn_memory_ptr_771_mpos := zero_value_for_split_t_array$_t_uint160_$dyn_memory_ptr()
                var_secondsPerLiquidityCumulativeX128s_6725_mpos := zero_t_array$_t_uint160_$dyn_memory_ptr_771_mpos

                var_tickCumulatives_6722_mpos, var_secondsPerLiquidityCumulativeX128s_6725_mpos := modifier_noDelegateCall_6719(var_tickCumulatives_6722_mpos, var_secondsPerLiquidityCumulativeX128s_6725_mpos, var_secondsAgos_6715_offset, var_secondsAgos_6715_length)
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 6349
            /// @src 90:4000:4137  "modifier lock() {..."
            function modifier_lock_7425(var_amount0_7427, var_amount1_7429, var_tickLower_7417, var_tickUpper_7419, var_amount_7421) -> _791, _792 {
                _791 := var_amount0_7427
                _792 := var_amount1_7429

                /// @src 90:4034:4039  "slot0"
                let _793_slot := 0x00
                let expr_6330_slot := _793_slot
                /// @src 90:4034:4048  "slot0.unlocked"
                let _794 := add(expr_6330_slot, 0)
                let _795 := read_from_storage_split_offset_30_t_bool(_794)
                let expr_6331 := _795
                /// @src 90:4026:4056  "require(slot0.unlocked, 'LOK')"
                require_helper_t_stringliteral_e01ebc6b01bbf458b3d355b6e649efe64599751670c5d19175619893ecf97529(expr_6331)
                /// @src 90:4083:4088  "false"
                let expr_6338 := 0x00
                /// @src 90:4066:4071  "slot0"
                let _796_slot := 0x00
                let expr_6335_slot := _796_slot
                /// @src 90:4066:4080  "slot0.unlocked"
                let _797 := add(expr_6335_slot, 0)
                /// @src 90:4066:4088  "slot0.unlocked = false"
                update_storage_value_offset_30_t_bool_to_t_bool(_797, expr_6338)
                let expr_6339 := expr_6338
                /// @src 90:4098:4099  "_"
                _791, _792 := fun_burn_7518_inner(var_amount0_7427, var_amount1_7429, var_tickLower_7417, var_tickUpper_7419, var_amount_7421)
                /// @src 90:4126:4130  "true"
                let expr_6345 := 0x01
                /// @src 90:4109:4114  "slot0"
                let _798_slot := 0x00
                let expr_6342_slot := _798_slot
                /// @src 90:4109:4123  "slot0.unlocked"
                let _799 := add(expr_6342_slot, 0)
                /// @src 90:4109:4130  "slot0.unlocked = true"
                update_storage_value_offset_30_t_bool_to_t_bool(_799, expr_6345)
                let expr_6346 := expr_6345

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function abi_encode_tuple_t_uint128_t_uint256_t_uint256__to_t_uint128_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_uint128_to_t_uint128_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

            }

            /// @src 90:19964:20912  "function burn(..."
            function fun_burn_7518_inner(_800, _801, var_tickLower_7417, var_tickUpper_7419, var_amount_7421) -> var_amount0_7427, var_amount1_7429 {
                var_amount0_7427 := _800
                var_amount1_7429 := _801

                /// @src 90:20302:20312  "msg.sender"
                let expr_7443 := caller()
                /// @src 90:20345:20354  "tickLower"
                let _802 := var_tickLower_7417
                let expr_7444 := _802
                /// @src 90:20387:20396  "tickUpper"
                let _803 := var_tickUpper_7419
                let expr_7445 := _803
                /// @src 90:20450:20456  "amount"
                let _804 := var_amount_7421
                let expr_7450 := _804
                /// @src 90:20442:20457  "uint256(amount)"
                let expr_7451 := convert_t_uint128_to_t_uint256(expr_7450)
                /// @src 90:20435:20458  "int256(uint256(amount))"
                let expr_7452 := convert_t_uint256_to_t_int256(expr_7451)
                /// @src 90:20435:20467  "int256(uint256(amount)).toInt128"
                let expr_7453_self := expr_7452
                /// @src 90:20435:20469  "int256(uint256(amount)).toInt128()"
                let expr_7454 := fun_toInt128_20959(expr_7453_self)
                /// @src 90:20434:20469  "-int256(uint256(amount)).toInt128()"
                let expr_7455 := negate_t_int128(expr_7454)
                /// @src 90:20252:20488  "ModifyPositionParams({..."
                let expr_7456_mpos := allocate_memory_struct_t_struct$_ModifyPositionParams_$6841_storage_ptr()
                write_to_memory_t_address(add(expr_7456_mpos, 0), expr_7443)
                write_to_memory_t_int24(add(expr_7456_mpos, 32), expr_7444)
                write_to_memory_t_int24(add(expr_7456_mpos, 64), expr_7445)
                write_to_memory_t_int128(add(expr_7456_mpos, 96), expr_7455)
                /// @src 90:20219:20502  "_modifyPosition(..."
                let expr_7457_component_1_slot, expr_7457_component_2, expr_7457_component_3 := fun__modifyPosition_7007(expr_7456_mpos)
                /// @src 90:20134:20502  "(Position.Info storage position, int256 amount0Int, int256 amount1Int) =..."
                let var_position_7435_slot := expr_7457_component_1_slot
                let var_amount0Int_7437 := expr_7457_component_2
                let var_amount1Int_7439 := expr_7457_component_3
                /// @src 90:20532:20542  "amount0Int"
                let _805 := var_amount0Int_7437
                let expr_7462 := _805
                /// @src 90:20531:20542  "-amount0Int"
                let expr_7463 := negate_t_int256(expr_7462)
                /// @src 90:20523:20543  "uint256(-amount0Int)"
                let expr_7464 := convert_t_int256_to_t_uint256(expr_7463)
                /// @src 90:20513:20543  "amount0 = uint256(-amount0Int)"
                var_amount0_7427 := expr_7464
                let expr_7465 := expr_7464
                /// @src 90:20572:20582  "amount1Int"
                let _806 := var_amount1Int_7439
                let expr_7470 := _806
                /// @src 90:20571:20582  "-amount1Int"
                let expr_7471 := negate_t_int256(expr_7470)
                /// @src 90:20563:20583  "uint256(-amount1Int)"
                let expr_7472 := convert_t_int256_to_t_uint256(expr_7471)
                /// @src 90:20553:20583  "amount1 = uint256(-amount1Int)"
                var_amount1_7429 := expr_7472
                let expr_7473 := expr_7472
                /// @src 90:20598:20605  "amount0"
                let _807 := var_amount0_7427
                let expr_7475 := _807
                /// @src 90:20608:20609  "0"
                let expr_7476 := 0x00
                /// @src 90:20598:20609  "amount0 > 0"
                let expr_7477 := gt(cleanup_t_uint256(expr_7475), convert_t_rational_0_by_1_to_t_uint256(expr_7476))
                /// @src 90:20598:20624  "amount0 > 0 || amount1 > 0"
                let expr_7481 := expr_7477
                if iszero(expr_7481) {
                    /// @src 90:20613:20620  "amount1"
                    let _808 := var_amount1_7429
                    let expr_7478 := _808
                    /// @src 90:20623:20624  "0"
                    let expr_7479 := 0x00
                    /// @src 90:20613:20624  "amount1 > 0"
                    let expr_7480 := gt(cleanup_t_uint256(expr_7478), convert_t_rational_0_by_1_to_t_uint256(expr_7479))
                    /// @src 90:20598:20624  "amount0 > 0 || amount1 > 0"
                    expr_7481 := expr_7480
                }
                /// @src 90:20594:20826  "if (amount0 > 0 || amount1 > 0) {..."
                if expr_7481 {
                    /// @src 90:20705:20713  "position"
                    let _809_slot := var_position_7435_slot
                    let expr_7488_slot := _809_slot
                    /// @src 90:20705:20725  "position.tokensOwed0"
                    let _810 := add(expr_7488_slot, 3)
                    let _811 := read_from_storage_split_offset_0_t_uint128(_810)
                    let expr_7489 := _811
                    /// @src 90:20736:20743  "amount0"
                    let _812 := var_amount0_7427
                    let expr_7492 := _812
                    /// @src 90:20728:20744  "uint128(amount0)"
                    let expr_7493 := convert_t_uint256_to_t_uint128(expr_7492)
                    /// @src 90:20705:20744  "position.tokensOwed0 + uint128(amount0)"
                    let expr_7494 := checked_add_t_uint128(expr_7489, expr_7493)

                    /// @src 90:20687:20815  "(..."
                    let expr_7502_component_1 := expr_7494
                    /// @src 90:20762:20770  "position"
                    let _813_slot := var_position_7435_slot
                    let expr_7495_slot := _813_slot
                    /// @src 90:20762:20782  "position.tokensOwed1"
                    let _814 := add(expr_7495_slot, 3)
                    let _815 := read_from_storage_split_offset_16_t_uint128(_814)
                    let expr_7496 := _815
                    /// @src 90:20793:20800  "amount1"
                    let _816 := var_amount1_7429
                    let expr_7499 := _816
                    /// @src 90:20785:20801  "uint128(amount1)"
                    let expr_7500 := convert_t_uint256_to_t_uint128(expr_7499)
                    /// @src 90:20762:20801  "position.tokensOwed1 + uint128(amount1)"
                    let expr_7501 := checked_add_t_uint128(expr_7496, expr_7500)

                    /// @src 90:20687:20815  "(..."
                    let expr_7502_component_2 := expr_7501
                    /// @src 90:20641:20649  "position"
                    let _817_slot := var_position_7435_slot
                    let expr_7482_slot := _817_slot
                    /// @src 90:20641:20661  "position.tokensOwed0"
                    let _818 := add(expr_7482_slot, 3)
                    /// @src 90:20663:20671  "position"
                    let _819_slot := var_position_7435_slot
                    let expr_7485_slot := _819_slot
                    /// @src 90:20663:20683  "position.tokensOwed1"
                    let _820 := add(expr_7485_slot, 3)
                    /// @src 90:20640:20815  "(position.tokensOwed0, position.tokensOwed1) = (..."
                    update_storage_value_offset_16_t_uint128_to_t_uint128(_820, expr_7502_component_2)
                    update_storage_value_offset_0_t_uint128_to_t_uint128(_818, expr_7502_component_1)
                    /// @src 90:20594:20826  "if (amount0 > 0 || amount1 > 0) {..."
                }
                /// @src 90:20846:20856  "msg.sender"
                let expr_7509 := caller()
                /// @src 90:20858:20867  "tickLower"
                let _821 := var_tickLower_7417
                let expr_7510 := _821
                /// @src 90:20869:20878  "tickUpper"
                let _822 := var_tickUpper_7419
                let expr_7511 := _822
                /// @src 90:20880:20886  "amount"
                let _823 := var_amount_7421
                let expr_7512 := _823
                /// @src 90:20888:20895  "amount0"
                let _824 := var_amount0_7427
                let expr_7513 := _824
                /// @src 90:20897:20904  "amount1"
                let _825 := var_amount1_7429
                let expr_7514 := _825
                /// @src 90:20841:20905  "Burn(msg.sender, tickLower, tickUpper, amount, amount0, amount1)"
                let _826 := 0x0c396cd989a39f4459b5fa1aed6a9a8dcdbc45908acfd67e028cd568da98982c
                let _827 := convert_t_address_to_t_address(expr_7509)
                let _828 := convert_t_int24_to_t_int24(expr_7510)
                let _829 := convert_t_int24_to_t_int24(expr_7511)
                {
                    let _830 := allocate_unbounded()
                    let _831 := abi_encode_tuple_t_uint128_t_uint256_t_uint256__to_t_uint128_t_uint256_t_uint256__fromStack(_830 , expr_7512, expr_7513, expr_7514)
                    log4(_830, sub(_831, _830) , _826, _827, _828, _829)
                }
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 7518
            /// @src 90:19964:20912  "function burn(..."
            function fun_burn_7518(var_tickLower_7417, var_tickUpper_7419, var_amount_7421) -> var_amount0_7427, var_amount1_7429 {
                /// @src 90:20090:20105  "uint256 amount0"
                let zero_t_uint256_789 := zero_value_for_split_t_uint256()
                var_amount0_7427 := zero_t_uint256_789
                /// @src 90:20107:20122  "uint256 amount1"
                let zero_t_uint256_790 := zero_value_for_split_t_uint256()
                var_amount1_7429 := zero_t_uint256_790

                var_amount0_7427, var_amount1_7429 := modifier_lock_7425(var_amount0_7427, var_amount1_7429, var_tickLower_7417, var_tickUpper_7419, var_amount_7421)
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function zero_value_for_split_t_int56() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_uint160() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_uint32() -> ret {
                ret := 0
            }

            /// @ast-id 6166
            /// @src 88:1037:1113  "modifier noDelegateCall() {..."
            function modifier_noDelegateCall_6535(var_tickCumulativeInside_6537, var_secondsPerLiquidityInsideX128_6539, var_secondsInside_6541, var_tickLower_6529, var_tickUpper_6531) -> _835, _836, _837 {
                _835 := var_tickCumulativeInside_6537
                _836 := var_secondsPerLiquidityInsideX128_6539
                _837 := var_secondsInside_6541

                fun_checkNotDelegateCall_6158()
                /// @src 88:1105:1106  "_"
                _835, _836, _837 := fun_snapshotCumulativesInside_6711_inner(var_tickCumulativeInside_6537, var_secondsPerLiquidityInsideX128_6539, var_secondsInside_6541, var_tickLower_6529, var_tickUpper_6531)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function convert_t_struct$_Info_$21791_storage_to_t_struct$_Info_$21791_storage_ptr(value) -> converted {
                converted := value
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function checked_sub_t_int56(x, y) -> diff {
                x := cleanup_t_int56(x)
                y := cleanup_t_int56(y)
                diff := sub(x, y)

                if or(
                    slt(diff, 0xffffffffffffffffffffffffffffffffffffffffffffffffff80000000000000),
                    sgt(diff, 0x7fffffffffffff)
                ) { panic_error_0x11() }

            }

            function checked_sub_t_uint160(x, y) -> diff {
                x := cleanup_t_uint160(x)
                y := cleanup_t_uint160(y)
                diff := sub(x, y)

                if gt(diff, 0xffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }

            }

            function checked_sub_t_uint32(x, y) -> diff {
                x := cleanup_t_uint32(x)
                y := cleanup_t_uint32(y)
                diff := sub(x, y)

                if gt(diff, 0xffffffff) { panic_error_0x11() }

            }

            /// @src 90:6206:9060  "function snapshotCumulativesInside(int24 tickLower, int24 tickUpper)..."
            function fun_snapshotCumulativesInside_6711_inner(_838, _839, _840, var_tickLower_6529, var_tickUpper_6531) -> var_tickCumulativeInside_6537, var_secondsPerLiquidityInsideX128_6539, var_secondsInside_6541 {
                var_tickCumulativeInside_6537 := _838
                var_secondsPerLiquidityInsideX128_6539 := _839
                var_secondsInside_6541 := _840

                /// @src 90:6522:6531  "tickLower"
                let _841 := var_tickLower_6529
                let expr_6544 := _841
                /// @src 90:6533:6542  "tickUpper"
                let _842 := var_tickUpper_6531
                let expr_6545 := _842
                fun_checkTicks_6429(expr_6544, expr_6545)
                /// @src 90:6554:6579  "int56 tickCumulativeLower"
                let var_tickCumulativeLower_6549
                let zero_t_int56_843 := zero_value_for_split_t_int56()
                var_tickCumulativeLower_6549 := zero_t_int56_843
                /// @src 90:6589:6614  "int56 tickCumulativeUpper"
                let var_tickCumulativeUpper_6552
                let zero_t_int56_844 := zero_value_for_split_t_int56()
                var_tickCumulativeUpper_6552 := zero_t_int56_844
                /// @src 90:6624:6667  "uint160 secondsPerLiquidityOutsideLowerX128"
                let var_secondsPerLiquidityOutsideLowerX128_6555
                let zero_t_uint160_845 := zero_value_for_split_t_uint160()
                var_secondsPerLiquidityOutsideLowerX128_6555 := zero_t_uint160_845
                /// @src 90:6677:6720  "uint160 secondsPerLiquidityOutsideUpperX128"
                let var_secondsPerLiquidityOutsideUpperX128_6558
                let zero_t_uint160_846 := zero_value_for_split_t_uint160()
                var_secondsPerLiquidityOutsideUpperX128_6558 := zero_t_uint160_846
                /// @src 90:6730:6756  "uint32 secondsOutsideLower"
                let var_secondsOutsideLower_6561
                let zero_t_uint32_847 := zero_value_for_split_t_uint32()
                var_secondsOutsideLower_6561 := zero_t_uint32_847
                /// @src 90:6766:6792  "uint32 secondsOutsideUpper"
                let var_secondsOutsideUpper_6564
                let zero_t_uint32_848 := zero_value_for_split_t_uint32()
                var_secondsOutsideUpper_6564 := zero_t_uint32_848
                /// @src 90:6843:6848  "ticks"
                let _849_slot := 0x05
                let expr_6571_slot := _849_slot
                /// @src 90:6849:6858  "tickLower"
                let _850 := var_tickLower_6529
                let expr_6572 := _850
                /// @src 90:6843:6859  "ticks[tickLower]"
                let _851 := mapping_index_access_t_mapping$_t_int24_$_t_struct$_Info_$21791_storage_$_of_t_int24(expr_6571_slot,expr_6572)
                let _852_slot := _851
                let expr_6573_slot := _852_slot
                /// @src 90:6817:6859  "Tick.Info storage lower = ticks[tickLower]"
                let var_lower_6570_slot := convert_t_struct$_Info_$21791_storage_to_t_struct$_Info_$21791_storage_ptr(expr_6573_slot)
                /// @src 90:6899:6904  "ticks"
                let _853_slot := 0x05
                let expr_6580_slot := _853_slot
                /// @src 90:6905:6914  "tickUpper"
                let _854 := var_tickUpper_6531
                let expr_6581 := _854
                /// @src 90:6899:6915  "ticks[tickUpper]"
                let _855 := mapping_index_access_t_mapping$_t_int24_$_t_struct$_Info_$21791_storage_$_of_t_int24(expr_6580_slot,expr_6581)
                let _856_slot := _855
                let expr_6582_slot := _856_slot
                /// @src 90:6873:6915  "Tick.Info storage upper = ticks[tickUpper]"
                let var_upper_6579_slot := convert_t_struct$_Info_$21791_storage_to_t_struct$_Info_$21791_storage_ptr(expr_6582_slot)
                /// @src 90:6929:6950  "bool initializedLower"
                let var_initializedLower_6585
                let zero_t_bool_857 := zero_value_for_split_t_bool()
                var_initializedLower_6585 := zero_t_bool_857
                /// @src 90:7082:7087  "lower"
                let _858_slot := var_lower_6570_slot
                let expr_6592_slot := _858_slot
                /// @src 90:7082:7109  "lower.tickCumulativeOutside"
                let _859 := add(expr_6592_slot, 3)
                let _860 := read_from_storage_split_offset_0_t_int56(_859)
                let expr_6593 := _860
                /// @src 90:7064:7250  "(..."
                let expr_6600_component_1 := expr_6593
                /// @src 90:7127:7132  "lower"
                let _861_slot := var_lower_6570_slot
                let expr_6594_slot := _861_slot
                /// @src 90:7127:7163  "lower.secondsPerLiquidityOutsideX128"
                let _862 := add(expr_6594_slot, 3)
                let _863 := read_from_storage_split_offset_7_t_uint160(_862)
                let expr_6595 := _863
                /// @src 90:7064:7250  "(..."
                let expr_6600_component_2 := expr_6595
                /// @src 90:7181:7186  "lower"
                let _864_slot := var_lower_6570_slot
                let expr_6596_slot := _864_slot
                /// @src 90:7181:7201  "lower.secondsOutside"
                let _865 := add(expr_6596_slot, 3)
                let _866 := read_from_storage_split_offset_27_t_uint32(_865)
                let expr_6597 := _866
                /// @src 90:7064:7250  "(..."
                let expr_6600_component_3 := expr_6597
                /// @src 90:7219:7224  "lower"
                let _867_slot := var_lower_6570_slot
                let expr_6598_slot := _867_slot
                /// @src 90:7219:7236  "lower.initialized"
                let _868 := add(expr_6598_slot, 3)
                let _869 := read_from_storage_split_offset_31_t_bool(_868)
                let expr_6599 := _869
                /// @src 90:7064:7250  "(..."
                let expr_6600_component_4 := expr_6599
                /// @src 90:6964:7250  "(tickCumulativeLower, secondsPerLiquidityOutsideLowerX128, secondsOutsideLower, initializedLower) = (..."
                var_initializedLower_6585 := expr_6600_component_4
                var_secondsOutsideLower_6561 := expr_6600_component_3
                var_secondsPerLiquidityOutsideLowerX128_6555 := expr_6600_component_2
                var_tickCumulativeLower_6549 := expr_6600_component_1
                /// @src 90:7272:7288  "initializedLower"
                let _870 := var_initializedLower_6585
                let expr_6604 := _870
                /// @src 90:7264:7289  "require(initializedLower)"
                require_helper(expr_6604)
                /// @src 90:7304:7325  "bool initializedUpper"
                let var_initializedUpper_6608
                let zero_t_bool_871 := zero_value_for_split_t_bool()
                var_initializedUpper_6608 := zero_t_bool_871
                /// @src 90:7457:7462  "upper"
                let _872_slot := var_upper_6579_slot
                let expr_6615_slot := _872_slot
                /// @src 90:7457:7484  "upper.tickCumulativeOutside"
                let _873 := add(expr_6615_slot, 3)
                let _874 := read_from_storage_split_offset_0_t_int56(_873)
                let expr_6616 := _874
                /// @src 90:7439:7625  "(..."
                let expr_6623_component_1 := expr_6616
                /// @src 90:7502:7507  "upper"
                let _875_slot := var_upper_6579_slot
                let expr_6617_slot := _875_slot
                /// @src 90:7502:7538  "upper.secondsPerLiquidityOutsideX128"
                let _876 := add(expr_6617_slot, 3)
                let _877 := read_from_storage_split_offset_7_t_uint160(_876)
                let expr_6618 := _877
                /// @src 90:7439:7625  "(..."
                let expr_6623_component_2 := expr_6618
                /// @src 90:7556:7561  "upper"
                let _878_slot := var_upper_6579_slot
                let expr_6619_slot := _878_slot
                /// @src 90:7556:7576  "upper.secondsOutside"
                let _879 := add(expr_6619_slot, 3)
                let _880 := read_from_storage_split_offset_27_t_uint32(_879)
                let expr_6620 := _880
                /// @src 90:7439:7625  "(..."
                let expr_6623_component_3 := expr_6620
                /// @src 90:7594:7599  "upper"
                let _881_slot := var_upper_6579_slot
                let expr_6621_slot := _881_slot
                /// @src 90:7594:7611  "upper.initialized"
                let _882 := add(expr_6621_slot, 3)
                let _883 := read_from_storage_split_offset_31_t_bool(_882)
                let expr_6622 := _883
                /// @src 90:7439:7625  "(..."
                let expr_6623_component_4 := expr_6622
                /// @src 90:7339:7625  "(tickCumulativeUpper, secondsPerLiquidityOutsideUpperX128, secondsOutsideUpper, initializedUpper) = (..."
                var_initializedUpper_6608 := expr_6623_component_4
                var_secondsOutsideUpper_6564 := expr_6623_component_3
                var_secondsPerLiquidityOutsideUpperX128_6558 := expr_6623_component_2
                var_tickCumulativeUpper_6552 := expr_6623_component_1
                /// @src 90:7647:7663  "initializedUpper"
                let _884 := var_initializedUpper_6608
                let expr_6627 := _884
                /// @src 90:7639:7664  "require(initializedUpper)"
                require_helper(expr_6627)
                /// @src 90:7707:7712  "slot0"
                let _885_slot := 0x00
                let expr_6634_slot := _885_slot
                /// @src 90:7685:7712  "Slot0 memory _slot0 = slot0"
                let var__slot0_6633_mpos := convert_t_struct$_Slot0_$6272_storage_to_t_struct$_Slot0_$6272_memory_ptr(expr_6634_slot)
                /// @src 90:7727:7733  "_slot0"
                let _886_mpos := var__slot0_6633_mpos
                let expr_6636_mpos := _886_mpos
                /// @src 90:7727:7738  "_slot0.tick"
                let _887 := add(expr_6636_mpos, 32)
                let _888 := read_from_memoryt_int24(_887)
                let expr_6637 := _888
                /// @src 90:7741:7750  "tickLower"
                let _889 := var_tickLower_6529
                let expr_6638 := _889
                /// @src 90:7727:7750  "_slot0.tick < tickLower"
                let expr_6639 := slt(cleanup_t_int24(expr_6637), cleanup_t_int24(expr_6638))
                /// @src 90:7723:9054  "if (_slot0.tick < tickLower) {..."
                switch expr_6639
                case 0 {
                    /// @src 90:8017:8023  "_slot0"
                    let _890_mpos := var__slot0_6633_mpos
                    let expr_6652_mpos := _890_mpos
                    /// @src 90:8017:8028  "_slot0.tick"
                    let _891 := add(expr_6652_mpos, 32)
                    let _892 := read_from_memoryt_int24(_891)
                    let expr_6653 := _892
                    /// @src 90:8031:8040  "tickUpper"
                    let _893 := var_tickUpper_6531
                    let expr_6654 := _893
                    /// @src 90:8017:8040  "_slot0.tick < tickUpper"
                    let expr_6655 := slt(cleanup_t_int24(expr_6653), cleanup_t_int24(expr_6654))
                    /// @src 90:8013:9054  "if (_slot0.tick < tickUpper) {..."
                    switch expr_6655
                    case 0 {
                        /// @src 90:8838:8857  "tickCumulativeUpper"
                        let _894 := var_tickCumulativeUpper_6552
                        let expr_6696 := _894
                        /// @src 90:8860:8879  "tickCumulativeLower"
                        let _895 := var_tickCumulativeLower_6549
                        let expr_6697 := _895
                        /// @src 90:8838:8879  "tickCumulativeUpper - tickCumulativeLower"
                        let expr_6698 := checked_sub_t_int56(expr_6696, expr_6697)

                        /// @src 90:8820:9043  "(..."
                        let expr_6705_component_1 := expr_6698
                        /// @src 90:8897:8932  "secondsPerLiquidityOutsideUpperX128"
                        let _896 := var_secondsPerLiquidityOutsideUpperX128_6558
                        let expr_6699 := _896
                        /// @src 90:8935:8970  "secondsPerLiquidityOutsideLowerX128"
                        let _897 := var_secondsPerLiquidityOutsideLowerX128_6555
                        let expr_6700 := _897
                        /// @src 90:8897:8970  "secondsPerLiquidityOutsideUpperX128 - secondsPerLiquidityOutsideLowerX128"
                        let expr_6701 := checked_sub_t_uint160(expr_6699, expr_6700)

                        /// @src 90:8820:9043  "(..."
                        let expr_6705_component_2 := expr_6701
                        /// @src 90:8988:9007  "secondsOutsideUpper"
                        let _898 := var_secondsOutsideUpper_6564
                        let expr_6702 := _898
                        /// @src 90:9010:9029  "secondsOutsideLower"
                        let _899 := var_secondsOutsideLower_6561
                        let expr_6703 := _899
                        /// @src 90:8988:9029  "secondsOutsideUpper - secondsOutsideLower"
                        let expr_6704 := checked_sub_t_uint32(expr_6702, expr_6703)

                        /// @src 90:8820:9043  "(..."
                        let expr_6705_component_3 := expr_6704
                        /// @src 90:8813:9043  "return (..."
                        var_tickCumulativeInside_6537 := expr_6705_component_1
                        var_secondsPerLiquidityInsideX128_6539 := expr_6705_component_2
                        var_secondsInside_6541 := expr_6705_component_3
                        leave
                        /// @src 90:8013:9054  "if (_slot0.tick < tickUpper) {..."
                    }
                    default {
                        /// @src 90:8070:8087  "_blockTimestamp()"
                        let expr_6659 := fun__blockTimestamp_6442()
                        /// @src 90:8056:8087  "uint32 time = _blockTimestamp()"
                        let var_time_6657 := expr_6659
                        /// @src 90:8185:8197  "observations"
                        let _900_slot := 0x08
                        let expr_6665_slot := _900_slot
                        /// @src 90:8185:8211  "observations.observeSingle"
                        let expr_6666_self_slot := convert_array_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_to_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_6665_slot)
                        /// @src 90:8233:8237  "time"
                        let _901 := var_time_6657
                        let expr_6667 := _901
                        /// @src 90:8259:8260  "0"
                        let expr_6668 := 0x00
                        /// @src 90:8282:8288  "_slot0"
                        let _902_mpos := var__slot0_6633_mpos
                        let expr_6669_mpos := _902_mpos
                        /// @src 90:8282:8293  "_slot0.tick"
                        let _903 := add(expr_6669_mpos, 32)
                        let _904 := read_from_memoryt_int24(_903)
                        let expr_6670 := _904
                        /// @src 90:8315:8321  "_slot0"
                        let _905_mpos := var__slot0_6633_mpos
                        let expr_6671_mpos := _905_mpos
                        /// @src 90:8315:8338  "_slot0.observationIndex"
                        let _906 := add(expr_6671_mpos, 64)
                        let _907 := read_from_memoryt_uint16(_906)
                        let expr_6672 := _907
                        /// @src 90:8360:8369  "liquidity"
                        let _908 := read_from_storage_split_offset_0_t_uint128(0x04)
                        let expr_6673 := _908
                        /// @src 90:8391:8397  "_slot0"
                        let _909_mpos := var__slot0_6633_mpos
                        let expr_6674_mpos := _909_mpos
                        /// @src 90:8391:8420  "_slot0.observationCardinality"
                        let _910 := add(expr_6674_mpos, 96)
                        let _911 := read_from_memoryt_uint16(_910)
                        let expr_6675 := _911
                        /// @src 90:8185:8438  "observations.observeSingle(..."
                        let _912 := convert_t_rational_0_by_1_to_t_uint32(expr_6668)
                        let expr_6676_component_1, expr_6676_component_2 := fun_observeSingle_20649(expr_6666_self_slot, expr_6667, _912, expr_6670, expr_6672, expr_6673, expr_6675)
                        /// @src 90:8101:8438  "(int56 tickCumulative, uint160 secondsPerLiquidityCumulativeX128) =..."
                        let var_tickCumulative_6662 := expr_6676_component_1
                        let var_secondsPerLiquidityCumulativeX128_6664 := expr_6676_component_2
                        /// @src 90:8477:8491  "tickCumulative"
                        let _913 := var_tickCumulative_6662
                        let expr_6678 := _913
                        /// @src 90:8494:8513  "tickCumulativeLower"
                        let _914 := var_tickCumulativeLower_6549
                        let expr_6679 := _914
                        /// @src 90:8477:8513  "tickCumulative - tickCumulativeLower"
                        let expr_6680 := checked_sub_t_int56(expr_6678, expr_6679)

                        /// @src 90:8516:8535  "tickCumulativeUpper"
                        let _915 := var_tickCumulativeUpper_6552
                        let expr_6681 := _915
                        /// @src 90:8477:8535  "tickCumulative - tickCumulativeLower - tickCumulativeUpper"
                        let expr_6682 := checked_sub_t_int56(expr_6680, expr_6681)

                        /// @src 90:8459:8782  "(..."
                        let expr_6693_component_1 := expr_6682
                        /// @src 90:8553:8586  "secondsPerLiquidityCumulativeX128"
                        let _916 := var_secondsPerLiquidityCumulativeX128_6664
                        let expr_6683 := _916
                        /// @src 90:8609:8644  "secondsPerLiquidityOutsideLowerX128"
                        let _917 := var_secondsPerLiquidityOutsideLowerX128_6555
                        let expr_6684 := _917
                        /// @src 90:8553:8644  "secondsPerLiquidityCumulativeX128 -..."
                        let expr_6685 := checked_sub_t_uint160(expr_6683, expr_6684)

                        /// @src 90:8667:8702  "secondsPerLiquidityOutsideUpperX128"
                        let _918 := var_secondsPerLiquidityOutsideUpperX128_6558
                        let expr_6686 := _918
                        /// @src 90:8553:8702  "secondsPerLiquidityCumulativeX128 -..."
                        let expr_6687 := checked_sub_t_uint160(expr_6685, expr_6686)

                        /// @src 90:8459:8782  "(..."
                        let expr_6693_component_2 := expr_6687
                        /// @src 90:8720:8724  "time"
                        let _919 := var_time_6657
                        let expr_6688 := _919
                        /// @src 90:8727:8746  "secondsOutsideLower"
                        let _920 := var_secondsOutsideLower_6561
                        let expr_6689 := _920
                        /// @src 90:8720:8746  "time - secondsOutsideLower"
                        let expr_6690 := checked_sub_t_uint32(expr_6688, expr_6689)

                        /// @src 90:8749:8768  "secondsOutsideUpper"
                        let _921 := var_secondsOutsideUpper_6564
                        let expr_6691 := _921
                        /// @src 90:8720:8768  "time - secondsOutsideLower - secondsOutsideUpper"
                        let expr_6692 := checked_sub_t_uint32(expr_6690, expr_6691)

                        /// @src 90:8459:8782  "(..."
                        let expr_6693_component_3 := expr_6692
                        /// @src 90:8452:8782  "return (..."
                        var_tickCumulativeInside_6537 := expr_6693_component_1
                        var_secondsPerLiquidityInsideX128_6539 := expr_6693_component_2
                        var_secondsInside_6541 := expr_6693_component_3
                        leave
                        /// @src 90:8013:9054  "if (_slot0.tick < tickUpper) {..."
                    }
                    /// @src 90:7723:9054  "if (_slot0.tick < tickLower) {..."
                }
                default {
                    /// @src 90:7791:7810  "tickCumulativeLower"
                    let _922 := var_tickCumulativeLower_6549
                    let expr_6640 := _922
                    /// @src 90:7813:7832  "tickCumulativeUpper"
                    let _923 := var_tickCumulativeUpper_6552
                    let expr_6641 := _923
                    /// @src 90:7791:7832  "tickCumulativeLower - tickCumulativeUpper"
                    let expr_6642 := checked_sub_t_int56(expr_6640, expr_6641)

                    /// @src 90:7773:7996  "(..."
                    let expr_6649_component_1 := expr_6642
                    /// @src 90:7850:7885  "secondsPerLiquidityOutsideLowerX128"
                    let _924 := var_secondsPerLiquidityOutsideLowerX128_6555
                    let expr_6643 := _924
                    /// @src 90:7888:7923  "secondsPerLiquidityOutsideUpperX128"
                    let _925 := var_secondsPerLiquidityOutsideUpperX128_6558
                    let expr_6644 := _925
                    /// @src 90:7850:7923  "secondsPerLiquidityOutsideLowerX128 - secondsPerLiquidityOutsideUpperX128"
                    let expr_6645 := checked_sub_t_uint160(expr_6643, expr_6644)

                    /// @src 90:7773:7996  "(..."
                    let expr_6649_component_2 := expr_6645
                    /// @src 90:7941:7960  "secondsOutsideLower"
                    let _926 := var_secondsOutsideLower_6561
                    let expr_6646 := _926
                    /// @src 90:7963:7982  "secondsOutsideUpper"
                    let _927 := var_secondsOutsideUpper_6564
                    let expr_6647 := _927
                    /// @src 90:7941:7982  "secondsOutsideLower - secondsOutsideUpper"
                    let expr_6648 := checked_sub_t_uint32(expr_6646, expr_6647)

                    /// @src 90:7773:7996  "(..."
                    let expr_6649_component_3 := expr_6648
                    /// @src 90:7766:7996  "return (..."
                    var_tickCumulativeInside_6537 := expr_6649_component_1
                    var_secondsPerLiquidityInsideX128_6539 := expr_6649_component_2
                    var_secondsInside_6541 := expr_6649_component_3
                    leave
                    /// @src 90:7723:9054  "if (_slot0.tick < tickLower) {..."
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 6711
            /// @src 90:6206:9060  "function snapshotCumulativesInside(int24 tickLower, int24 tickUpper)..."
            function fun_snapshotCumulativesInside_6711(var_tickLower_6529, var_tickUpper_6531) -> var_tickCumulativeInside_6537, var_secondsPerLiquidityInsideX128_6539, var_secondsInside_6541 {
                /// @src 90:6375:6401  "int56 tickCumulativeInside"
                let zero_t_int56_832 := zero_value_for_split_t_int56()
                var_tickCumulativeInside_6537 := zero_t_int56_832
                /// @src 90:6415:6452  "uint160 secondsPerLiquidityInsideX128"
                let zero_t_uint160_833 := zero_value_for_split_t_uint160()
                var_secondsPerLiquidityInsideX128_6539 := zero_t_uint160_833
                /// @src 90:6466:6486  "uint32 secondsInside"
                let zero_t_uint32_834 := zero_value_for_split_t_uint32()
                var_secondsInside_6541 := zero_t_uint32_834

                var_tickCumulativeInside_6537, var_secondsPerLiquidityInsideX128_6539, var_secondsInside_6541 := modifier_noDelegateCall_6535(var_tickCumulativeInside_6537, var_secondsPerLiquidityInsideX128_6539, var_secondsInside_6541, var_tickLower_6529, var_tickUpper_6531)
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function store_literal_in_memory_78dda996de494b599fdb66c8365826df9b80d101d1cea931b5fa3753fca7ab85(memPtr) {

                mstore(add(memPtr, 0), "AI")

            }

            function abi_encode_t_stringliteral_78dda996de494b599fdb66c8365826df9b80d101d1cea931b5fa3753fca7ab85_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_78dda996de494b599fdb66c8365826df9b80d101d1cea931b5fa3753fca7ab85(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_78dda996de494b599fdb66c8365826df9b80d101d1cea931b5fa3753fca7ab85__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_78dda996de494b599fdb66c8365826df9b80d101d1cea931b5fa3753fca7ab85_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_78dda996de494b599fdb66c8365826df9b80d101d1cea931b5fa3753fca7ab85(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_78dda996de494b599fdb66c8365826df9b80d101d1cea931b5fa3753fca7ab85__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function allocate_memory_struct_t_struct$_Slot0_$6272_storage_ptr() -> memPtr {
                memPtr := allocate_memory(224)
            }

            function convert_t_rational_0_by_1_to_t_uint16(value) -> converted {
                converted := cleanup_t_uint16(identity(cleanup_t_rational_0_by_1(value)))
            }

            function panic_error_0x00() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x00)
                revert(0, 0x24)
            }

            function copy_struct_to_storage_from_t_struct$_Slot0_$6272_memory_ptr_to_t_struct$_Slot0_$6272_storage(slot, value) {

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 0)

                    let memberValue_0 := read_from_memoryt_uint160(memberSrcPtr)

                    update_storage_value_offset_0_t_uint160_to_t_uint160(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 32)

                    let memberValue_0 := read_from_memoryt_int24(memberSrcPtr)

                    update_storage_value_offset_20_t_int24_to_t_int24(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 64)

                    let memberValue_0 := read_from_memoryt_uint16(memberSrcPtr)

                    update_storage_value_offset_23_t_uint16_to_t_uint16(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 96)

                    let memberValue_0 := read_from_memoryt_uint16(memberSrcPtr)

                    update_storage_value_offset_25_t_uint16_to_t_uint16(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 128)

                    let memberValue_0 := read_from_memoryt_uint16(memberSrcPtr)

                    update_storage_value_offset_27_t_uint16_to_t_uint16(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 160)

                    let memberValue_0 := read_from_memoryt_uint8(memberSrcPtr)

                    update_storage_value_offset_29_t_uint8_to_t_uint8(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 192)

                    let memberValue_0 := read_from_memoryt_bool(memberSrcPtr)

                    update_storage_value_offset_30_t_bool_to_t_bool(memberSlot, memberValue_0)

                }

            }

            function update_storage_value_offset_0_t_struct$_Slot0_$6272_memory_ptr_to_t_struct$_Slot0_$6272_storage(slot, value_0) {

                copy_struct_to_storage_from_t_struct$_Slot0_$6272_memory_ptr_to_t_struct$_Slot0_$6272_storage(slot, value_0)
            }

            function abi_encode_tuple_t_uint160_t_int24__to_t_uint160_t_int24__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint160_to_t_uint160_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int24_to_t_int24_fromStack(value1,  add(headStart, 32))

            }

            /// @ast-id 6832
            /// @src 90:10424:11045  "function initialize(uint160 sqrtPriceX96) external override {..."
            function fun_initialize_6832(var_sqrtPriceX96_6785) {

                /// @src 90:10502:10507  "slot0"
                let _928_slot := 0x00
                let expr_6790_slot := _928_slot
                /// @src 90:10502:10520  "slot0.sqrtPriceX96"
                let _929 := add(expr_6790_slot, 0)
                let _930 := read_from_storage_split_offset_0_t_uint160(_929)
                let expr_6791 := _930
                /// @src 90:10524:10525  "0"
                let expr_6792 := 0x00
                /// @src 90:10502:10525  "slot0.sqrtPriceX96 == 0"
                let expr_6793 := eq(cleanup_t_uint160(expr_6791), convert_t_rational_0_by_1_to_t_uint160(expr_6792))
                /// @src 90:10494:10532  "require(slot0.sqrtPriceX96 == 0, 'AI')"
                require_helper_t_stringliteral_78dda996de494b599fdb66c8365826df9b80d101d1cea931b5fa3753fca7ab85(expr_6793)
                /// @src 90:10556:10564  "TickMath"
                let expr_6799_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                /// @src 90:10584:10596  "sqrtPriceX96"
                let _931 := var_sqrtPriceX96_6785
                let expr_6801 := _931
                /// @src 90:10556:10597  "TickMath.getTickAtSqrtRatio(sqrtPriceX96)"
                let expr_6802 := fun_getTickAtSqrtRatio_5632(expr_6801)
                /// @src 90:10543:10597  "int24 tick = TickMath.getTickAtSqrtRatio(sqrtPriceX96)"
                let var_tick_6798 := expr_6802
                /// @src 90:10655:10667  "observations"
                let _932_slot := 0x08
                let expr_6808_slot := _932_slot
                /// @src 90:10655:10678  "observations.initialize"
                let expr_6809_self_slot := convert_array_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_to_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_6808_slot)
                /// @src 90:10679:10696  "_blockTimestamp()"
                let expr_6811 := fun__blockTimestamp_6442()
                /// @src 90:10655:10697  "observations.initialize(_blockTimestamp())"
                let expr_6812_component_1, expr_6812_component_2 := fun_initialize_20073(expr_6809_self_slot, expr_6811)
                /// @src 90:10608:10697  "(uint16 cardinality, uint16 cardinalityNext) = observations.initialize(_blockTimestamp())"
                let var_cardinality_6805 := expr_6812_component_1
                let var_cardinalityNext_6807 := expr_6812_component_2
                /// @src 90:10750:10762  "sqrtPriceX96"
                let _933 := var_sqrtPriceX96_6785
                let expr_6816 := _933
                /// @src 90:10782:10786  "tick"
                let _934 := var_tick_6798
                let expr_6817 := _934
                /// @src 90:10818:10819  "0"
                let expr_6818 := 0x00
                /// @src 90:10857:10868  "cardinality"
                let _935 := var_cardinality_6805
                let expr_6819 := _935
                /// @src 90:10910:10925  "cardinalityNext"
                let _936 := var_cardinalityNext_6807
                let expr_6820 := _936
                /// @src 90:10952:10953  "0"
                let expr_6821 := 0x00
                /// @src 90:10977:10981  "true"
                let expr_6822 := 0x01
                /// @src 90:10716:10992  "Slot0({..."
                let expr_6823_mpos := allocate_memory_struct_t_struct$_Slot0_$6272_storage_ptr()
                write_to_memory_t_uint160(add(expr_6823_mpos, 0), expr_6816)
                write_to_memory_t_int24(add(expr_6823_mpos, 32), expr_6817)
                let _937 := convert_t_rational_0_by_1_to_t_uint16(expr_6818)
                write_to_memory_t_uint16(add(expr_6823_mpos, 64), _937)
                write_to_memory_t_uint16(add(expr_6823_mpos, 96), expr_6819)
                write_to_memory_t_uint16(add(expr_6823_mpos, 128), expr_6820)
                let _938 := convert_t_rational_0_by_1_to_t_uint8(expr_6821)
                write_to_memory_t_uint8(add(expr_6823_mpos, 160), _938)
                write_to_memory_t_bool(add(expr_6823_mpos, 192), expr_6822)
                /// @src 90:10708:10992  "slot0 = Slot0({..."
                update_storage_value_offset_0_t_struct$_Slot0_$6272_memory_ptr_to_t_struct$_Slot0_$6272_storage(0x00, expr_6823_mpos)
                let _939_slot := 0x00
                let expr_6824_slot := _939_slot
                /// @src 90:11019:11031  "sqrtPriceX96"
                let _940 := var_sqrtPriceX96_6785
                let expr_6827 := _940
                /// @src 90:11033:11037  "tick"
                let _941 := var_tick_6798
                let expr_6828 := _941
                /// @src 90:11008:11038  "Initialize(sqrtPriceX96, tick)"
                let _942 := 0x98636036cb66a9c19a37435efc1e90142190214e8abeb821bdba3f2990dd4c95
                {
                    let _943 := allocate_unbounded()
                    let _944 := abi_encode_tuple_t_uint160_t_int24__to_t_uint160_t_int24__fromStack(_943 , expr_6827, expr_6828)
                    log1(_943, sub(_944, _943) , _942)
                }
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function convert_t_contract$_NoDelegateCall_$6167_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            /// @ast-id 6158
            /// @src 88:872:968  "function checkNotDelegateCall() private view {..."
            function fun_checkNotDelegateCall_6158() {

                /// @src 88:943:947  "this"
                let expr_6151_address := address()
                /// @src 88:935:948  "address(this)"
                let expr_6152 := convert_t_contract$_NoDelegateCall_$6167_to_t_address(expr_6151_address)
                /// @src 88:952:960  "original"
                let _945 := loadimmutable("6133")
                let expr_6153 := _945
                /// @src 88:935:960  "address(this) == original"
                let expr_6154 := eq(cleanup_t_address(expr_6152), cleanup_t_address(expr_6153))
                /// @src 88:927:961  "require(address(this) == original)"
                require_helper(expr_6154)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function convert_t_uint256_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(identity(cleanup_t_uint256(value)))
            }

            /// @ast-id 6442
            /// @src 90:5055:5193  "function _blockTimestamp() internal view virtual returns (uint32) {..."
            function fun__blockTimestamp_6442() -> var__6433 {
                /// @src 90:5113:5119  "uint32"
                let zero_t_uint32_946 := zero_value_for_split_t_uint32()
                var__6433 := zero_t_uint32_946

                /// @src 90:5145:5160  "block.timestamp"
                let expr_6438 := timestamp()
                /// @src 90:5138:5161  "uint32(block.timestamp)"
                let expr_6439 := convert_t_uint256_to_t_uint32(expr_6438)
                /// @src 90:5131:5161  "return uint32(block.timestamp)"
                var__6433 := expr_6439
                leave

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function zero_value_for_split_t_int24() -> ret {
                ret := 0
            }

            function checked_div_t_int24(x, y) -> r {
                x := cleanup_t_int24(x)
                y := cleanup_t_int24(y)
                if iszero(y) { panic_error_0x12() }

                // overflow for minVal / -1
                if and(
                    eq(x, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff800000),
                    eq(y, sub(0, 1))
                ) { panic_error_0x11() }

                r := sdiv(x, y)
            }

            function convert_t_rational_0_by_1_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_rational_0_by_1(value)))
            }

            function mod_t_int24(x, y) -> r {
                x := cleanup_t_int24(x)
                y := cleanup_t_int24(y)
                if iszero(y) { panic_error_0x12() }
                r := smod(x, y)
            }

            function decrement_t_int24(value) -> ret {
                value := cleanup_t_int24(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff800000) { panic_error_0x11() }
                ret := sub(value, 1)
            }

            function checked_add_t_int24(x, y) -> sum {
                x := cleanup_t_int24(x)
                y := cleanup_t_int24(y)
                sum := add(x, y)

                if or(
                    sgt(sum, 0x7fffff),
                    slt(sum, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff800000)
                ) { panic_error_0x11() }

            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function shift_left_t_uint256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint256(shift_left_dynamic(bits, cleanup_t_uint256(value)))
            }

            function convert_t_uint8_to_t_uint24(value) -> converted {
                converted := cleanup_t_uint24(identity(cleanup_t_uint8(value)))
            }

            function checked_sub_t_uint24(x, y) -> diff {
                x := cleanup_t_uint24(x)
                y := cleanup_t_uint24(y)
                diff := sub(x, y)

                if gt(diff, 0xffffff) { panic_error_0x11() }

            }

            function convert_t_uint24_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_uint24(value)))
            }

            function checked_mul_t_int24(x, y) -> product {
                x := cleanup_t_int24(x)
                y := cleanup_t_int24(y)
                let product_raw := mul(x, y)
                product := cleanup_t_int24(product_raw)

                if iszero(eq(product, product_raw)) { panic_error_0x11() }

            }

            function checked_sub_t_uint8(x, y) -> diff {
                x := cleanup_t_uint8(x)
                y := cleanup_t_uint8(y)
                diff := sub(x, y)

                if gt(diff, 0xff) { panic_error_0x11() }

            }

            /// @ast-id 22491
            /// @src 117:2233:4186  "function nextInitializedTickWithinOneWord(..."
            function fun_nextInitializedTickWithinOneWord_22491(var_self_22305_slot, var_tick_22307, var_tickSpacing_22309, var_lte_22311) -> var_next_22314, var_initialized_22316 {
                /// @src 117:2417:2427  "int24 next"
                let zero_t_int24_947 := zero_value_for_split_t_int24()
                var_next_22314 := zero_t_int24_947
                /// @src 117:2429:2445  "bool initialized"
                let zero_t_bool_948 := zero_value_for_split_t_bool()
                var_initialized_22316 := zero_t_bool_948

                /// @src 117:2476:2480  "tick"
                let _949 := var_tick_22307
                let expr_22320 := _949
                /// @src 117:2483:2494  "tickSpacing"
                let _950 := var_tickSpacing_22309
                let expr_22321 := _950
                /// @src 117:2476:2494  "tick / tickSpacing"
                let expr_22322 := checked_div_t_int24(expr_22320, expr_22321)

                /// @src 117:2457:2494  "int24 compressed = tick / tickSpacing"
                let var_compressed_22319 := expr_22322
                /// @src 117:2508:2512  "tick"
                let _951 := var_tick_22307
                let expr_22324 := _951
                /// @src 117:2515:2516  "0"
                let expr_22325 := 0x00
                /// @src 117:2508:2516  "tick < 0"
                let expr_22326 := slt(cleanup_t_int24(expr_22324), convert_t_rational_0_by_1_to_t_int24(expr_22325))
                /// @src 117:2508:2543  "tick < 0 && tick % tickSpacing != 0"
                let expr_22332 := expr_22326
                if expr_22332 {
                    /// @src 117:2520:2524  "tick"
                    let _952 := var_tick_22307
                    let expr_22327 := _952
                    /// @src 117:2527:2538  "tickSpacing"
                    let _953 := var_tickSpacing_22309
                    let expr_22328 := _953
                    /// @src 117:2520:2538  "tick % tickSpacing"
                    let expr_22329 := mod_t_int24(expr_22327, expr_22328)

                    /// @src 117:2542:2543  "0"
                    let expr_22330 := 0x00
                    /// @src 117:2520:2543  "tick % tickSpacing != 0"
                    let expr_22331 := iszero(eq(cleanup_t_int24(expr_22329), convert_t_rational_0_by_1_to_t_int24(expr_22330)))
                    /// @src 117:2508:2543  "tick < 0 && tick % tickSpacing != 0"
                    expr_22332 := expr_22331
                }
                /// @src 117:2504:2557  "if (tick < 0 && tick % tickSpacing != 0) compressed--"
                if expr_22332 {
                    /// @src 117:2545:2557  "compressed--"
                    let _955 := var_compressed_22319
                    let _954 := decrement_t_int24(_955)
                    var_compressed_22319 := _954
                    let expr_22334 := _955
                    /// @src 117:2504:2557  "if (tick < 0 && tick % tickSpacing != 0) compressed--"
                }
                /// @src 117:2607:2610  "lte"
                let _956 := var_lte_22311
                let expr_22337 := _956
                /// @src 117:2603:4180  "if (lte) {..."
                switch expr_22337
                case 0 {
                    /// @src 117:3502:3512  "compressed"
                    let _957 := var_compressed_22319
                    let expr_22414 := _957
                    /// @src 117:3515:3516  "1"
                    let expr_22415 := 0x01
                    /// @src 117:3502:3516  "compressed + 1"
                    let expr_22416 := checked_add_t_int24(expr_22414, convert_t_rational_1_by_1_to_t_int24(expr_22415))

                    /// @src 117:3493:3517  "position(compressed + 1)"
                    let expr_22417_component_1, expr_22417_component_2 := fun_position_22257(expr_22416)
                    /// @src 117:3461:3517  "(int16 wordPos, uint8 bitPos) = position(compressed + 1)"
                    let var_wordPos_22410 := expr_22417_component_1
                    let var_bitPos_22412 := expr_22417_component_2
                    /// @src 117:3607:3608  "1"
                    let expr_22421 := 0x01
                    /// @src 117:3612:3618  "bitPos"
                    let _958 := var_bitPos_22412
                    let expr_22422 := _958
                    /// @src 117:3607:3618  "1 << bitPos"
                    let _959 := convert_t_rational_1_by_1_to_t_uint256(expr_22421)
                    let expr_22423 :=
                    shift_left_t_uint256_t_uint8(_959, expr_22422)

                    /// @src 117:3606:3619  "(1 << bitPos)"
                    let expr_22424 := expr_22423
                    /// @src 117:3622:3623  "1"
                    let expr_22425 := 0x01
                    /// @src 117:3606:3623  "(1 << bitPos) - 1"
                    let expr_22426 := checked_sub_t_uint256(expr_22424, convert_t_rational_1_by_1_to_t_uint256(expr_22425))

                    /// @src 117:3605:3624  "((1 << bitPos) - 1)"
                    let expr_22427 := expr_22426
                    /// @src 117:3604:3624  "~((1 << bitPos) - 1)"
                    let expr_22428 := cleanup_t_uint256(not(expr_22427))
                    /// @src 117:3589:3624  "uint256 mask = ~((1 << bitPos) - 1)"
                    let var_mask_22420 := expr_22428
                    /// @src 117:3655:3659  "self"
                    let _960_slot := var_self_22305_slot
                    let expr_22432_slot := _960_slot
                    /// @src 117:3660:3667  "wordPos"
                    let _961 := var_wordPos_22410
                    let expr_22433 := _961
                    /// @src 117:3655:3668  "self[wordPos]"
                    let _962 := mapping_index_access_t_mapping$_t_int16_$_t_uint256_$_of_t_int16(expr_22432_slot,expr_22433)
                    let _963 := read_from_storage_split_offset_0_t_uint256(_962)
                    let expr_22434 := _963
                    /// @src 117:3671:3675  "mask"
                    let _964 := var_mask_22420
                    let expr_22435 := _964
                    /// @src 117:3655:3675  "self[wordPos] & mask"
                    let expr_22436 := and(expr_22434, expr_22435)

                    /// @src 117:3638:3675  "uint256 masked = self[wordPos] & mask"
                    let var_masked_22431 := expr_22436
                    /// @src 117:3814:3820  "masked"
                    let _965 := var_masked_22431
                    let expr_22439 := _965
                    /// @src 117:3824:3825  "0"
                    let expr_22440 := 0x00
                    /// @src 117:3814:3825  "masked != 0"
                    let expr_22441 := iszero(eq(cleanup_t_uint256(expr_22439), convert_t_rational_0_by_1_to_t_uint256(expr_22440)))
                    /// @src 117:3800:3825  "initialized = masked != 0"
                    var_initialized_22316 := expr_22441
                    let expr_22442 := expr_22441
                    /// @src 117:3956:3967  "initialized"
                    let _966 := var_initialized_22316
                    let expr_22445 := _966
                    /// @src 117:3956:4169  "initialized..."
                    let expr_22485
                    switch expr_22445
                    case 0 {
                        /// @src 117:4098:4108  "compressed"
                        let _967 := var_compressed_22319
                        let expr_22465 := _967
                        /// @src 117:4111:4112  "1"
                        let expr_22466 := 0x01
                        /// @src 117:4098:4112  "compressed + 1"
                        let expr_22467 := checked_add_t_int24(expr_22465, convert_t_rational_1_by_1_to_t_int24(expr_22466))

                        /// @src 117:4128:4143  "type(uint8).max"
                        let expr_22476 := 255
                        /// @src 117:4121:4144  "uint24(type(uint8).max)"
                        let expr_22477 := convert_t_uint8_to_t_uint24(expr_22476)
                        /// @src 117:4147:4153  "bitPos"
                        let _968 := var_bitPos_22412
                        let expr_22478 := _968
                        /// @src 117:4121:4153  "uint24(type(uint8).max) - bitPos"
                        let expr_22479 := checked_sub_t_uint24(expr_22477, convert_t_uint8_to_t_uint24(expr_22478))

                        /// @src 117:4115:4154  "int24(uint24(type(uint8).max) - bitPos)"
                        let expr_22480 := convert_t_uint24_to_t_int24(expr_22479)
                        /// @src 117:4098:4154  "compressed + 1 + int24(uint24(type(uint8).max) - bitPos)"
                        let expr_22481 := checked_add_t_int24(expr_22467, expr_22480)

                        /// @src 117:4097:4155  "(compressed + 1 + int24(uint24(type(uint8).max) - bitPos))"
                        let expr_22482 := expr_22481
                        /// @src 117:4158:4169  "tickSpacing"
                        let _969 := var_tickSpacing_22309
                        let expr_22483 := _969
                        /// @src 117:4097:4169  "(compressed + 1 + int24(uint24(type(uint8).max) - bitPos)) * tickSpacing"
                        let expr_22484 := checked_mul_t_int24(expr_22482, expr_22483)

                        /// @src 117:3956:4169  "initialized..."
                        expr_22485 := expr_22484
                    }
                    default {
                        /// @src 117:3987:3997  "compressed"
                        let _970 := var_compressed_22319
                        let expr_22446 := _970
                        /// @src 117:4000:4001  "1"
                        let expr_22447 := 0x01
                        /// @src 117:3987:4001  "compressed + 1"
                        let expr_22448 := checked_add_t_int24(expr_22446, convert_t_rational_1_by_1_to_t_int24(expr_22447))

                        /// @src 117:4017:4024  "BitMath"
                        let expr_22453_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/BitMath.sol:BitMath")
                        /// @src 117:4045:4051  "masked"
                        let _971 := var_masked_22431
                        let expr_22455 := _971
                        /// @src 117:4017:4052  "BitMath.leastSignificantBit(masked)"
                        let expr_22456 := fun_leastSignificantBit_25456(expr_22455)
                        /// @src 117:4010:4053  "uint24(BitMath.leastSignificantBit(masked))"
                        let expr_22457 := convert_t_uint8_to_t_uint24(expr_22456)
                        /// @src 117:4056:4062  "bitPos"
                        let _972 := var_bitPos_22412
                        let expr_22458 := _972
                        /// @src 117:4010:4062  "uint24(BitMath.leastSignificantBit(masked)) - bitPos"
                        let expr_22459 := checked_sub_t_uint24(expr_22457, convert_t_uint8_to_t_uint24(expr_22458))

                        /// @src 117:4004:4063  "int24(uint24(BitMath.leastSignificantBit(masked)) - bitPos)"
                        let expr_22460 := convert_t_uint24_to_t_int24(expr_22459)
                        /// @src 117:3987:4063  "compressed + 1 + int24(uint24(BitMath.leastSignificantBit(masked)) - bitPos)"
                        let expr_22461 := checked_add_t_int24(expr_22448, expr_22460)

                        /// @src 117:3986:4064  "(compressed + 1 + int24(uint24(BitMath.leastSignificantBit(masked)) - bitPos))"
                        let expr_22462 := expr_22461
                        /// @src 117:4067:4078  "tickSpacing"
                        let _973 := var_tickSpacing_22309
                        let expr_22463 := _973
                        /// @src 117:3986:4078  "(compressed + 1 + int24(uint24(BitMath.leastSignificantBit(masked)) - bitPos)) * tickSpacing"
                        let expr_22464 := checked_mul_t_int24(expr_22462, expr_22463)

                        /// @src 117:3956:4169  "initialized..."
                        expr_22485 := expr_22464
                    }
                    /// @src 117:3949:4169  "next = initialized..."
                    var_next_22314 := expr_22485
                    let expr_22486 := expr_22485
                    /// @src 117:2603:4180  "if (lte) {..."
                }
                default {
                    /// @src 117:2667:2677  "compressed"
                    let _974 := var_compressed_22319
                    let expr_22343 := _974
                    /// @src 117:2658:2678  "position(compressed)"
                    let expr_22344_component_1, expr_22344_component_2 := fun_position_22257(expr_22343)
                    /// @src 117:2626:2678  "(int16 wordPos, uint8 bitPos) = position(compressed)"
                    let var_wordPos_22339 := expr_22344_component_1
                    let var_bitPos_22341 := expr_22344_component_2
                    /// @src 117:2775:2776  "1"
                    let expr_22348 := 0x01
                    /// @src 117:2780:2786  "bitPos"
                    let _975 := var_bitPos_22341
                    let expr_22349 := _975
                    /// @src 117:2775:2786  "1 << bitPos"
                    let _976 := convert_t_rational_1_by_1_to_t_uint256(expr_22348)
                    let expr_22350 :=
                    shift_left_t_uint256_t_uint8(_976, expr_22349)

                    /// @src 117:2774:2787  "(1 << bitPos)"
                    let expr_22351 := expr_22350
                    /// @src 117:2790:2791  "1"
                    let expr_22352 := 0x01
                    /// @src 117:2774:2791  "(1 << bitPos) - 1"
                    let expr_22353 := checked_sub_t_uint256(expr_22351, convert_t_rational_1_by_1_to_t_uint256(expr_22352))

                    /// @src 117:2795:2796  "1"
                    let expr_22354 := 0x01
                    /// @src 117:2800:2806  "bitPos"
                    let _977 := var_bitPos_22341
                    let expr_22355 := _977
                    /// @src 117:2795:2806  "1 << bitPos"
                    let _978 := convert_t_rational_1_by_1_to_t_uint256(expr_22354)
                    let expr_22356 :=
                    shift_left_t_uint256_t_uint8(_978, expr_22355)

                    /// @src 117:2794:2807  "(1 << bitPos)"
                    let expr_22357 := expr_22356
                    /// @src 117:2774:2807  "(1 << bitPos) - 1 + (1 << bitPos)"
                    let expr_22358 := checked_add_t_uint256(expr_22353, expr_22357)

                    /// @src 117:2759:2807  "uint256 mask = (1 << bitPos) - 1 + (1 << bitPos)"
                    let var_mask_22347 := expr_22358
                    /// @src 117:2838:2842  "self"
                    let _979_slot := var_self_22305_slot
                    let expr_22362_slot := _979_slot
                    /// @src 117:2843:2850  "wordPos"
                    let _980 := var_wordPos_22339
                    let expr_22363 := _980
                    /// @src 117:2838:2851  "self[wordPos]"
                    let _981 := mapping_index_access_t_mapping$_t_int16_$_t_uint256_$_of_t_int16(expr_22362_slot,expr_22363)
                    let _982 := read_from_storage_split_offset_0_t_uint256(_981)
                    let expr_22364 := _982
                    /// @src 117:2854:2858  "mask"
                    let _983 := var_mask_22347
                    let expr_22365 := _983
                    /// @src 117:2838:2858  "self[wordPos] & mask"
                    let expr_22366 := and(expr_22364, expr_22365)

                    /// @src 117:2821:2858  "uint256 masked = self[wordPos] & mask"
                    let var_masked_22361 := expr_22366
                    /// @src 117:3005:3011  "masked"
                    let _984 := var_masked_22361
                    let expr_22369 := _984
                    /// @src 117:3015:3016  "0"
                    let expr_22370 := 0x00
                    /// @src 117:3005:3016  "masked != 0"
                    let expr_22371 := iszero(eq(cleanup_t_uint256(expr_22369), convert_t_rational_0_by_1_to_t_uint256(expr_22370)))
                    /// @src 117:2991:3016  "initialized = masked != 0"
                    var_initialized_22316 := expr_22371
                    let expr_22372 := expr_22371
                    /// @src 117:3147:3158  "initialized"
                    let _985 := var_initialized_22316
                    let expr_22375 := _985
                    /// @src 117:3147:3333  "initialized..."
                    let expr_22405
                    switch expr_22375
                    case 0 {
                        /// @src 117:3284:3294  "compressed"
                        let _986 := var_compressed_22319
                        let expr_22393 := _986
                        /// @src 117:3310:3316  "bitPos"
                        let _987 := var_bitPos_22341
                        let expr_22398 := _987
                        /// @src 117:3303:3317  "uint24(bitPos)"
                        let expr_22399 := convert_t_uint8_to_t_uint24(expr_22398)
                        /// @src 117:3297:3318  "int24(uint24(bitPos))"
                        let expr_22400 := convert_t_uint24_to_t_int24(expr_22399)
                        /// @src 117:3284:3318  "compressed - int24(uint24(bitPos))"
                        let expr_22401 := checked_sub_t_int24(expr_22393, expr_22400)

                        /// @src 117:3283:3319  "(compressed - int24(uint24(bitPos)))"
                        let expr_22402 := expr_22401
                        /// @src 117:3322:3333  "tickSpacing"
                        let _988 := var_tickSpacing_22309
                        let expr_22403 := _988
                        /// @src 117:3283:3333  "(compressed - int24(uint24(bitPos))) * tickSpacing"
                        let expr_22404 := checked_mul_t_int24(expr_22402, expr_22403)

                        /// @src 117:3147:3333  "initialized..."
                        expr_22405 := expr_22404
                    }
                    default {
                        /// @src 117:3178:3188  "compressed"
                        let _989 := var_compressed_22319
                        let expr_22376 := _989
                        /// @src 117:3204:3210  "bitPos"
                        let _990 := var_bitPos_22341
                        let expr_22381 := _990
                        /// @src 117:3213:3220  "BitMath"
                        let expr_22382_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/BitMath.sol:BitMath")
                        /// @src 117:3240:3246  "masked"
                        let _991 := var_masked_22361
                        let expr_22384 := _991
                        /// @src 117:3213:3247  "BitMath.mostSignificantBit(masked)"
                        let expr_22385 := fun_mostSignificantBit_25295(expr_22384)
                        /// @src 117:3204:3247  "bitPos - BitMath.mostSignificantBit(masked)"
                        let expr_22386 := checked_sub_t_uint8(expr_22381, expr_22385)

                        /// @src 117:3197:3248  "uint24(bitPos - BitMath.mostSignificantBit(masked))"
                        let expr_22387 := convert_t_uint8_to_t_uint24(expr_22386)
                        /// @src 117:3191:3249  "int24(uint24(bitPos - BitMath.mostSignificantBit(masked)))"
                        let expr_22388 := convert_t_uint24_to_t_int24(expr_22387)
                        /// @src 117:3178:3249  "compressed - int24(uint24(bitPos - BitMath.mostSignificantBit(masked)))"
                        let expr_22389 := checked_sub_t_int24(expr_22376, expr_22388)

                        /// @src 117:3177:3250  "(compressed - int24(uint24(bitPos - BitMath.mostSignificantBit(masked))))"
                        let expr_22390 := expr_22389
                        /// @src 117:3253:3264  "tickSpacing"
                        let _992 := var_tickSpacing_22309
                        let expr_22391 := _992
                        /// @src 117:3177:3264  "(compressed - int24(uint24(bitPos - BitMath.mostSignificantBit(masked)))) * tickSpacing"
                        let expr_22392 := checked_mul_t_int24(expr_22390, expr_22391)

                        /// @src 117:3147:3333  "initialized..."
                        expr_22405 := expr_22392
                    }
                    /// @src 117:3140:3333  "next = initialized..."
                    var_next_22314 := expr_22405
                    let expr_22406 := expr_22405
                    /// @src 117:2603:4180  "if (lte) {..."
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function convert_t_int24_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_int24(value)))
            }

            function store_literal_in_memory_846b7b6deb1cfa110d0ea7ec6162a7123b761785528db70cceed5143183b11fc(memPtr) {

                mstore(add(memPtr, 0), "T")

            }

            function abi_encode_t_stringliteral_846b7b6deb1cfa110d0ea7ec6162a7123b761785528db70cceed5143183b11fc_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 1)
                store_literal_in_memory_846b7b6deb1cfa110d0ea7ec6162a7123b761785528db70cceed5143183b11fc(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_846b7b6deb1cfa110d0ea7ec6162a7123b761785528db70cceed5143183b11fc__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_846b7b6deb1cfa110d0ea7ec6162a7123b761785528db70cceed5143183b11fc_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_846b7b6deb1cfa110d0ea7ec6162a7123b761785528db70cceed5143183b11fc(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_846b7b6deb1cfa110d0ea7ec6162a7123b761785528db70cceed5143183b11fc__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function cleanup_t_uint136(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffff)
            }

            function convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint136(value) -> converted {
                converted := cleanup_t_uint136(identity(cleanup_t_rational_340282366920938463463374607431768211456_by_1(value)))
            }

            function cleanup_t_rational_340265354078544963557816517032075149313_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340265354078544963557816517032075149313_by_1_to_t_uint136(value) -> converted {
                converted := cleanup_t_uint136(identity(cleanup_t_rational_340265354078544963557816517032075149313_by_1(value)))
            }

            function convert_t_uint136_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint136(value)))
            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            function cleanup_t_rational_340248342086729790484326174814286782778_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340248342086729790484326174814286782778_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340248342086729790484326174814286782778_by_1(value)))
            }

            function checked_mul_t_uint256(x, y) -> product {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                let product_raw := mul(x, y)
                product := cleanup_t_uint256(product_raw)

                // overflow, if x != 0 and y != product/x
                if iszero(
                    or(
                        iszero(x),
                        eq(y, div(product, x))
                    )
                ) { panic_error_0x11() }

            }

            function cleanup_t_rational_128_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_128_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_128_by_1(value)))
            }

            function shift_right_t_uint256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint256(shift_right_unsigned_dynamic(bits, cleanup_t_uint256(value)))
            }

            function convert_t_rational_4_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4_by_1(value)))
            }

            function cleanup_t_rational_340214320654664324051920982716015181260_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340214320654664324051920982716015181260_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340214320654664324051920982716015181260_by_1(value)))
            }

            function cleanup_t_rational_8_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_8_by_1(value)))
            }

            function cleanup_t_rational_340146287995602323631171512101879684304_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340146287995602323631171512101879684304_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340146287995602323631171512101879684304_by_1(value)))
            }

            function convert_t_rational_16_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_16_by_1(value)))
            }

            function cleanup_t_rational_340010263488231146823593991679159461444_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340010263488231146823593991679159461444_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340010263488231146823593991679159461444_by_1(value)))
            }

            function cleanup_t_rational_32_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_32_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_32_by_1(value)))
            }

            function cleanup_t_rational_339738377640345403697157401104375502016_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_339738377640345403697157401104375502016_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_339738377640345403697157401104375502016_by_1(value)))
            }

            function cleanup_t_rational_64_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_64_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_64_by_1(value)))
            }

            function cleanup_t_rational_339195258003219555707034227454543997025_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_339195258003219555707034227454543997025_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_339195258003219555707034227454543997025_by_1(value)))
            }

            function convert_t_rational_128_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_128_by_1(value)))
            }

            function cleanup_t_rational_338111622100601834656805679988414885971_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_338111622100601834656805679988414885971_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_338111622100601834656805679988414885971_by_1(value)))
            }

            function cleanup_t_rational_256_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_256_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_256_by_1(value)))
            }

            function cleanup_t_rational_335954724994790223023589805789778977700_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_335954724994790223023589805789778977700_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_335954724994790223023589805789778977700_by_1(value)))
            }

            function cleanup_t_rational_512_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_512_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_512_by_1(value)))
            }

            function cleanup_t_rational_331682121138379247127172139078559817300_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_331682121138379247127172139078559817300_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_331682121138379247127172139078559817300_by_1(value)))
            }

            function cleanup_t_rational_1024_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1024_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1024_by_1(value)))
            }

            function cleanup_t_rational_323299236684853023288211250268160618739_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_323299236684853023288211250268160618739_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_323299236684853023288211250268160618739_by_1(value)))
            }

            function cleanup_t_rational_2048_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2048_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2048_by_1(value)))
            }

            function cleanup_t_rational_307163716377032989948697243942600083929_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_307163716377032989948697243942600083929_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_307163716377032989948697243942600083929_by_1(value)))
            }

            function cleanup_t_rational_4096_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4096_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4096_by_1(value)))
            }

            function cleanup_t_rational_277268403626896220162999269216087595045_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_277268403626896220162999269216087595045_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_277268403626896220162999269216087595045_by_1(value)))
            }

            function cleanup_t_rational_8192_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8192_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_8192_by_1(value)))
            }

            function cleanup_t_rational_225923453940442621947126027127485391333_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_225923453940442621947126027127485391333_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_225923453940442621947126027127485391333_by_1(value)))
            }

            function cleanup_t_rational_16384_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_16384_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_16384_by_1(value)))
            }

            function cleanup_t_rational_149997214084966997727330242082538205943_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_149997214084966997727330242082538205943_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_149997214084966997727330242082538205943_by_1(value)))
            }

            function cleanup_t_rational_32768_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_32768_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_32768_by_1(value)))
            }

            function cleanup_t_rational_66119101136024775622716233608466517926_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_66119101136024775622716233608466517926_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_66119101136024775622716233608466517926_by_1(value)))
            }

            function cleanup_t_rational_65536_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_65536_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_65536_by_1(value)))
            }

            function cleanup_t_rational_12847376061809297530290974190478138313_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_12847376061809297530290974190478138313_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_12847376061809297530290974190478138313_by_1(value)))
            }

            function cleanup_t_rational_131072_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_131072_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_131072_by_1(value)))
            }

            function cleanup_t_rational_485053260817066172746253684029974020_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_485053260817066172746253684029974020_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_485053260817066172746253684029974020_by_1(value)))
            }

            function cleanup_t_rational_262144_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_262144_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_262144_by_1(value)))
            }

            function cleanup_t_rational_691415978906521570653435304214168_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_691415978906521570653435304214168_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_691415978906521570653435304214168_by_1(value)))
            }

            function cleanup_t_rational_524288_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_524288_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_524288_by_1(value)))
            }

            function cleanup_t_rational_1404880482679654955896180642_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1404880482679654955896180642_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1404880482679654955896180642_by_1(value)))
            }

            function convert_t_rational_32_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_32_by_1(value)))
            }

            function cleanup_t_rational_4294967296_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4294967296_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4294967296_by_1(value)))
            }

            function mod_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }
                r := mod(x, y)
            }

            function convert_t_rational_1_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_1_by_1(value)))
            }

            function convert_t_uint256_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint256(value)))
            }

            /// @ast-id 5493
            /// @src 118:1392:3980  "function getSqrtRatioAtTick(int24 tick) internal pure returns (uint160 sqrtPriceX96) {..."
            function fun_getSqrtRatioAtTick_5493(var_tick_5119) -> var_sqrtPriceX96_5122 {
                /// @src 118:1455:1475  "uint160 sqrtPriceX96"
                let zero_t_uint160_993 := zero_value_for_split_t_uint160()
                var_sqrtPriceX96_5122 := zero_t_uint160_993

                /// @src 118:1505:1509  "tick"
                let _994 := var_tick_5119
                let expr_5126 := _994
                /// @src 118:1512:1513  "0"
                let expr_5127 := 0x00
                /// @src 118:1505:1513  "tick < 0"
                let expr_5128 := slt(cleanup_t_int24(expr_5126), convert_t_rational_0_by_1_to_t_int24(expr_5127))
                /// @src 118:1505:1562  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                let expr_5144
                switch expr_5128
                case 0 {
                    /// @src 118:1556:1560  "tick"
                    let _995 := var_tick_5119
                    let expr_5141 := _995
                    /// @src 118:1549:1561  "int256(tick)"
                    let expr_5142 := convert_t_int24_to_t_int256(expr_5141)
                    /// @src 118:1541:1562  "uint256(int256(tick))"
                    let expr_5143 := convert_t_int256_to_t_uint256(expr_5142)
                    /// @src 118:1505:1562  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                    expr_5144 := expr_5143
                }
                default {
                    /// @src 118:1532:1536  "tick"
                    let _996 := var_tick_5119
                    let expr_5133 := _996
                    /// @src 118:1525:1537  "int256(tick)"
                    let expr_5134 := convert_t_int24_to_t_int256(expr_5133)
                    /// @src 118:1524:1537  "-int256(tick)"
                    let expr_5135 := negate_t_int256(expr_5134)
                    /// @src 118:1516:1538  "uint256(-int256(tick))"
                    let expr_5136 := convert_t_int256_to_t_uint256(expr_5135)
                    /// @src 118:1505:1562  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                    expr_5144 := expr_5136
                }
                /// @src 118:1487:1562  "uint256 absTick = tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                let var_absTick_5125 := expr_5144
                /// @src 118:1580:1587  "absTick"
                let _997 := var_absTick_5125
                let expr_5147 := _997
                /// @src 118:1606:1614  "MAX_TICK"
                let expr_5152 := constant_MAX_TICK_5108()
                /// @src 118:1599:1615  "int256(MAX_TICK)"
                let expr_5153 := convert_t_int24_to_t_int256(expr_5152)
                /// @src 118:1591:1616  "uint256(int256(MAX_TICK))"
                let expr_5154 := convert_t_int256_to_t_uint256(expr_5153)
                /// @src 118:1580:1616  "absTick <= uint256(int256(MAX_TICK))"
                let expr_5155 := iszero(gt(cleanup_t_uint256(expr_5147), cleanup_t_uint256(expr_5154)))
                /// @src 118:1572:1622  "require(absTick <= uint256(int256(MAX_TICK)), 'T')"
                require_helper_t_stringliteral_846b7b6deb1cfa110d0ea7ec6162a7123b761785528db70cceed5143183b11fc(expr_5155)
                /// @src 118:1649:1656  "absTick"
                let _998 := var_absTick_5125
                let expr_5161 := _998
                /// @src 118:1659:1662  "0x1"
                let expr_5162 := 0x01
                /// @src 118:1649:1662  "absTick & 0x1"
                let expr_5163 := and(expr_5161, convert_t_rational_1_by_1_to_t_uint256(expr_5162))

                /// @src 118:1666:1667  "0"
                let expr_5164 := 0x00
                /// @src 118:1649:1667  "absTick & 0x1 != 0"
                let expr_5165 := iszero(eq(cleanup_t_uint256(expr_5163), convert_t_rational_0_by_1_to_t_uint256(expr_5164)))
                /// @src 118:1649:1742  "absTick & 0x1 != 0 ? 0xfffcb933bd6fad37aa2d162d1a594001 : 0x100000000000000000000000000000000"
                let expr_5168
                switch expr_5165
                case 0 {
                    /// @src 118:1707:1742  "0x100000000000000000000000000000000"
                    let expr_5167 := 0x0100000000000000000000000000000000
                    /// @src 118:1649:1742  "absTick & 0x1 != 0 ? 0xfffcb933bd6fad37aa2d162d1a594001 : 0x100000000000000000000000000000000"
                    expr_5168 := convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint136(expr_5167)
                }
                default {
                    /// @src 118:1670:1704  "0xfffcb933bd6fad37aa2d162d1a594001"
                    let expr_5166 := 0xfffcb933bd6fad37aa2d162d1a594001
                    /// @src 118:1649:1742  "absTick & 0x1 != 0 ? 0xfffcb933bd6fad37aa2d162d1a594001 : 0x100000000000000000000000000000000"
                    expr_5168 := convert_t_rational_340265354078544963557816517032075149313_by_1_to_t_uint136(expr_5166)
                }
                /// @src 118:1633:1742  "uint256 ratio = absTick & 0x1 != 0 ? 0xfffcb933bd6fad37aa2d162d1a594001 : 0x100000000000000000000000000000000"
                let var_ratio_5160 := convert_t_uint136_to_t_uint256(expr_5168)
                /// @src 118:1756:1763  "absTick"
                let _999 := var_absTick_5125
                let expr_5170 := _999
                /// @src 118:1766:1769  "0x2"
                let expr_5171 := 0x02
                /// @src 118:1756:1769  "absTick & 0x2"
                let expr_5172 := and(expr_5170, convert_t_rational_2_by_1_to_t_uint256(expr_5171))

                /// @src 118:1773:1774  "0"
                let expr_5173 := 0x00
                /// @src 118:1756:1774  "absTick & 0x2 != 0"
                let expr_5174 := iszero(eq(cleanup_t_uint256(expr_5172), convert_t_rational_0_by_1_to_t_uint256(expr_5173)))
                /// @src 118:1752:1835  "if (absTick & 0x2 != 0) ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                if expr_5174 {
                    /// @src 118:1785:1790  "ratio"
                    let _1000 := var_ratio_5160
                    let expr_5176 := _1000
                    /// @src 118:1793:1827  "0xfff97272373d413259a46990580e213a"
                    let expr_5177 := 0xfff97272373d413259a46990580e213a
                    /// @src 118:1785:1827  "ratio * 0xfff97272373d413259a46990580e213a"
                    let expr_5178 := checked_mul_t_uint256(expr_5176, convert_t_rational_340248342086729790484326174814286782778_by_1_to_t_uint256(expr_5177))

                    /// @src 118:1784:1828  "(ratio * 0xfff97272373d413259a46990580e213a)"
                    let expr_5179 := expr_5178
                    /// @src 118:1832:1835  "128"
                    let expr_5180 := 0x80
                    /// @src 118:1784:1835  "(ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                    let _1001 := convert_t_rational_128_by_1_to_t_uint8(expr_5180)
                    let expr_5181 :=
                    shift_right_t_uint256_t_uint8(expr_5179, _1001)

                    /// @src 118:1776:1835  "ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                    var_ratio_5160 := expr_5181
                    let expr_5182 := expr_5181
                    /// @src 118:1752:1835  "if (absTick & 0x2 != 0) ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                }
                /// @src 118:1849:1856  "absTick"
                let _1002 := var_absTick_5125
                let expr_5185 := _1002
                /// @src 118:1859:1862  "0x4"
                let expr_5186 := 0x04
                /// @src 118:1849:1862  "absTick & 0x4"
                let expr_5187 := and(expr_5185, convert_t_rational_4_by_1_to_t_uint256(expr_5186))

                /// @src 118:1866:1867  "0"
                let expr_5188 := 0x00
                /// @src 118:1849:1867  "absTick & 0x4 != 0"
                let expr_5189 := iszero(eq(cleanup_t_uint256(expr_5187), convert_t_rational_0_by_1_to_t_uint256(expr_5188)))
                /// @src 118:1845:1928  "if (absTick & 0x4 != 0) ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                if expr_5189 {
                    /// @src 118:1878:1883  "ratio"
                    let _1003 := var_ratio_5160
                    let expr_5191 := _1003
                    /// @src 118:1886:1920  "0xfff2e50f5f656932ef12357cf3c7fdcc"
                    let expr_5192 := 0xfff2e50f5f656932ef12357cf3c7fdcc
                    /// @src 118:1878:1920  "ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc"
                    let expr_5193 := checked_mul_t_uint256(expr_5191, convert_t_rational_340214320654664324051920982716015181260_by_1_to_t_uint256(expr_5192))

                    /// @src 118:1877:1921  "(ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc)"
                    let expr_5194 := expr_5193
                    /// @src 118:1925:1928  "128"
                    let expr_5195 := 0x80
                    /// @src 118:1877:1928  "(ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                    let _1004 := convert_t_rational_128_by_1_to_t_uint8(expr_5195)
                    let expr_5196 :=
                    shift_right_t_uint256_t_uint8(expr_5194, _1004)

                    /// @src 118:1869:1928  "ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                    var_ratio_5160 := expr_5196
                    let expr_5197 := expr_5196
                    /// @src 118:1845:1928  "if (absTick & 0x4 != 0) ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                }
                /// @src 118:1942:1949  "absTick"
                let _1005 := var_absTick_5125
                let expr_5200 := _1005
                /// @src 118:1952:1955  "0x8"
                let expr_5201 := 0x08
                /// @src 118:1942:1955  "absTick & 0x8"
                let expr_5202 := and(expr_5200, convert_t_rational_8_by_1_to_t_uint256(expr_5201))

                /// @src 118:1959:1960  "0"
                let expr_5203 := 0x00
                /// @src 118:1942:1960  "absTick & 0x8 != 0"
                let expr_5204 := iszero(eq(cleanup_t_uint256(expr_5202), convert_t_rational_0_by_1_to_t_uint256(expr_5203)))
                /// @src 118:1938:2021  "if (absTick & 0x8 != 0) ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                if expr_5204 {
                    /// @src 118:1971:1976  "ratio"
                    let _1006 := var_ratio_5160
                    let expr_5206 := _1006
                    /// @src 118:1979:2013  "0xffe5caca7e10e4e61c3624eaa0941cd0"
                    let expr_5207 := 0xffe5caca7e10e4e61c3624eaa0941cd0
                    /// @src 118:1971:2013  "ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0"
                    let expr_5208 := checked_mul_t_uint256(expr_5206, convert_t_rational_340146287995602323631171512101879684304_by_1_to_t_uint256(expr_5207))

                    /// @src 118:1970:2014  "(ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0)"
                    let expr_5209 := expr_5208
                    /// @src 118:2018:2021  "128"
                    let expr_5210 := 0x80
                    /// @src 118:1970:2021  "(ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                    let _1007 := convert_t_rational_128_by_1_to_t_uint8(expr_5210)
                    let expr_5211 :=
                    shift_right_t_uint256_t_uint8(expr_5209, _1007)

                    /// @src 118:1962:2021  "ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                    var_ratio_5160 := expr_5211
                    let expr_5212 := expr_5211
                    /// @src 118:1938:2021  "if (absTick & 0x8 != 0) ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                }
                /// @src 118:2035:2042  "absTick"
                let _1008 := var_absTick_5125
                let expr_5215 := _1008
                /// @src 118:2045:2049  "0x10"
                let expr_5216 := 0x10
                /// @src 118:2035:2049  "absTick & 0x10"
                let expr_5217 := and(expr_5215, convert_t_rational_16_by_1_to_t_uint256(expr_5216))

                /// @src 118:2053:2054  "0"
                let expr_5218 := 0x00
                /// @src 118:2035:2054  "absTick & 0x10 != 0"
                let expr_5219 := iszero(eq(cleanup_t_uint256(expr_5217), convert_t_rational_0_by_1_to_t_uint256(expr_5218)))
                /// @src 118:2031:2115  "if (absTick & 0x10 != 0) ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                if expr_5219 {
                    /// @src 118:2065:2070  "ratio"
                    let _1009 := var_ratio_5160
                    let expr_5221 := _1009
                    /// @src 118:2073:2107  "0xffcb9843d60f6159c9db58835c926644"
                    let expr_5222 := 0xffcb9843d60f6159c9db58835c926644
                    /// @src 118:2065:2107  "ratio * 0xffcb9843d60f6159c9db58835c926644"
                    let expr_5223 := checked_mul_t_uint256(expr_5221, convert_t_rational_340010263488231146823593991679159461444_by_1_to_t_uint256(expr_5222))

                    /// @src 118:2064:2108  "(ratio * 0xffcb9843d60f6159c9db58835c926644)"
                    let expr_5224 := expr_5223
                    /// @src 118:2112:2115  "128"
                    let expr_5225 := 0x80
                    /// @src 118:2064:2115  "(ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                    let _1010 := convert_t_rational_128_by_1_to_t_uint8(expr_5225)
                    let expr_5226 :=
                    shift_right_t_uint256_t_uint8(expr_5224, _1010)

                    /// @src 118:2056:2115  "ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                    var_ratio_5160 := expr_5226
                    let expr_5227 := expr_5226
                    /// @src 118:2031:2115  "if (absTick & 0x10 != 0) ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                }
                /// @src 118:2129:2136  "absTick"
                let _1011 := var_absTick_5125
                let expr_5230 := _1011
                /// @src 118:2139:2143  "0x20"
                let expr_5231 := 0x20
                /// @src 118:2129:2143  "absTick & 0x20"
                let expr_5232 := and(expr_5230, convert_t_rational_32_by_1_to_t_uint256(expr_5231))

                /// @src 118:2147:2148  "0"
                let expr_5233 := 0x00
                /// @src 118:2129:2148  "absTick & 0x20 != 0"
                let expr_5234 := iszero(eq(cleanup_t_uint256(expr_5232), convert_t_rational_0_by_1_to_t_uint256(expr_5233)))
                /// @src 118:2125:2209  "if (absTick & 0x20 != 0) ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                if expr_5234 {
                    /// @src 118:2159:2164  "ratio"
                    let _1012 := var_ratio_5160
                    let expr_5236 := _1012
                    /// @src 118:2167:2201  "0xff973b41fa98c081472e6896dfb254c0"
                    let expr_5237 := 0xff973b41fa98c081472e6896dfb254c0
                    /// @src 118:2159:2201  "ratio * 0xff973b41fa98c081472e6896dfb254c0"
                    let expr_5238 := checked_mul_t_uint256(expr_5236, convert_t_rational_339738377640345403697157401104375502016_by_1_to_t_uint256(expr_5237))

                    /// @src 118:2158:2202  "(ratio * 0xff973b41fa98c081472e6896dfb254c0)"
                    let expr_5239 := expr_5238
                    /// @src 118:2206:2209  "128"
                    let expr_5240 := 0x80
                    /// @src 118:2158:2209  "(ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                    let _1013 := convert_t_rational_128_by_1_to_t_uint8(expr_5240)
                    let expr_5241 :=
                    shift_right_t_uint256_t_uint8(expr_5239, _1013)

                    /// @src 118:2150:2209  "ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                    var_ratio_5160 := expr_5241
                    let expr_5242 := expr_5241
                    /// @src 118:2125:2209  "if (absTick & 0x20 != 0) ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                }
                /// @src 118:2223:2230  "absTick"
                let _1014 := var_absTick_5125
                let expr_5245 := _1014
                /// @src 118:2233:2237  "0x40"
                let expr_5246 := 0x40
                /// @src 118:2223:2237  "absTick & 0x40"
                let expr_5247 := and(expr_5245, convert_t_rational_64_by_1_to_t_uint256(expr_5246))

                /// @src 118:2241:2242  "0"
                let expr_5248 := 0x00
                /// @src 118:2223:2242  "absTick & 0x40 != 0"
                let expr_5249 := iszero(eq(cleanup_t_uint256(expr_5247), convert_t_rational_0_by_1_to_t_uint256(expr_5248)))
                /// @src 118:2219:2303  "if (absTick & 0x40 != 0) ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                if expr_5249 {
                    /// @src 118:2253:2258  "ratio"
                    let _1015 := var_ratio_5160
                    let expr_5251 := _1015
                    /// @src 118:2261:2295  "0xff2ea16466c96a3843ec78b326b52861"
                    let expr_5252 := 0xff2ea16466c96a3843ec78b326b52861
                    /// @src 118:2253:2295  "ratio * 0xff2ea16466c96a3843ec78b326b52861"
                    let expr_5253 := checked_mul_t_uint256(expr_5251, convert_t_rational_339195258003219555707034227454543997025_by_1_to_t_uint256(expr_5252))

                    /// @src 118:2252:2296  "(ratio * 0xff2ea16466c96a3843ec78b326b52861)"
                    let expr_5254 := expr_5253
                    /// @src 118:2300:2303  "128"
                    let expr_5255 := 0x80
                    /// @src 118:2252:2303  "(ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                    let _1016 := convert_t_rational_128_by_1_to_t_uint8(expr_5255)
                    let expr_5256 :=
                    shift_right_t_uint256_t_uint8(expr_5254, _1016)

                    /// @src 118:2244:2303  "ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                    var_ratio_5160 := expr_5256
                    let expr_5257 := expr_5256
                    /// @src 118:2219:2303  "if (absTick & 0x40 != 0) ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                }
                /// @src 118:2317:2324  "absTick"
                let _1017 := var_absTick_5125
                let expr_5260 := _1017
                /// @src 118:2327:2331  "0x80"
                let expr_5261 := 0x80
                /// @src 118:2317:2331  "absTick & 0x80"
                let expr_5262 := and(expr_5260, convert_t_rational_128_by_1_to_t_uint256(expr_5261))

                /// @src 118:2335:2336  "0"
                let expr_5263 := 0x00
                /// @src 118:2317:2336  "absTick & 0x80 != 0"
                let expr_5264 := iszero(eq(cleanup_t_uint256(expr_5262), convert_t_rational_0_by_1_to_t_uint256(expr_5263)))
                /// @src 118:2313:2397  "if (absTick & 0x80 != 0) ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                if expr_5264 {
                    /// @src 118:2347:2352  "ratio"
                    let _1018 := var_ratio_5160
                    let expr_5266 := _1018
                    /// @src 118:2355:2389  "0xfe5dee046a99a2a811c461f1969c3053"
                    let expr_5267 := 0xfe5dee046a99a2a811c461f1969c3053
                    /// @src 118:2347:2389  "ratio * 0xfe5dee046a99a2a811c461f1969c3053"
                    let expr_5268 := checked_mul_t_uint256(expr_5266, convert_t_rational_338111622100601834656805679988414885971_by_1_to_t_uint256(expr_5267))

                    /// @src 118:2346:2390  "(ratio * 0xfe5dee046a99a2a811c461f1969c3053)"
                    let expr_5269 := expr_5268
                    /// @src 118:2394:2397  "128"
                    let expr_5270 := 0x80
                    /// @src 118:2346:2397  "(ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                    let _1019 := convert_t_rational_128_by_1_to_t_uint8(expr_5270)
                    let expr_5271 :=
                    shift_right_t_uint256_t_uint8(expr_5269, _1019)

                    /// @src 118:2338:2397  "ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                    var_ratio_5160 := expr_5271
                    let expr_5272 := expr_5271
                    /// @src 118:2313:2397  "if (absTick & 0x80 != 0) ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                }
                /// @src 118:2411:2418  "absTick"
                let _1020 := var_absTick_5125
                let expr_5275 := _1020
                /// @src 118:2421:2426  "0x100"
                let expr_5276 := 0x0100
                /// @src 118:2411:2426  "absTick & 0x100"
                let expr_5277 := and(expr_5275, convert_t_rational_256_by_1_to_t_uint256(expr_5276))

                /// @src 118:2430:2431  "0"
                let expr_5278 := 0x00
                /// @src 118:2411:2431  "absTick & 0x100 != 0"
                let expr_5279 := iszero(eq(cleanup_t_uint256(expr_5277), convert_t_rational_0_by_1_to_t_uint256(expr_5278)))
                /// @src 118:2407:2492  "if (absTick & 0x100 != 0) ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                if expr_5279 {
                    /// @src 118:2442:2447  "ratio"
                    let _1021 := var_ratio_5160
                    let expr_5281 := _1021
                    /// @src 118:2450:2484  "0xfcbe86c7900a88aedcffc83b479aa3a4"
                    let expr_5282 := 0xfcbe86c7900a88aedcffc83b479aa3a4
                    /// @src 118:2442:2484  "ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4"
                    let expr_5283 := checked_mul_t_uint256(expr_5281, convert_t_rational_335954724994790223023589805789778977700_by_1_to_t_uint256(expr_5282))

                    /// @src 118:2441:2485  "(ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4)"
                    let expr_5284 := expr_5283
                    /// @src 118:2489:2492  "128"
                    let expr_5285 := 0x80
                    /// @src 118:2441:2492  "(ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                    let _1022 := convert_t_rational_128_by_1_to_t_uint8(expr_5285)
                    let expr_5286 :=
                    shift_right_t_uint256_t_uint8(expr_5284, _1022)

                    /// @src 118:2433:2492  "ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                    var_ratio_5160 := expr_5286
                    let expr_5287 := expr_5286
                    /// @src 118:2407:2492  "if (absTick & 0x100 != 0) ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                }
                /// @src 118:2506:2513  "absTick"
                let _1023 := var_absTick_5125
                let expr_5290 := _1023
                /// @src 118:2516:2521  "0x200"
                let expr_5291 := 0x0200
                /// @src 118:2506:2521  "absTick & 0x200"
                let expr_5292 := and(expr_5290, convert_t_rational_512_by_1_to_t_uint256(expr_5291))

                /// @src 118:2525:2526  "0"
                let expr_5293 := 0x00
                /// @src 118:2506:2526  "absTick & 0x200 != 0"
                let expr_5294 := iszero(eq(cleanup_t_uint256(expr_5292), convert_t_rational_0_by_1_to_t_uint256(expr_5293)))
                /// @src 118:2502:2587  "if (absTick & 0x200 != 0) ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                if expr_5294 {
                    /// @src 118:2537:2542  "ratio"
                    let _1024 := var_ratio_5160
                    let expr_5296 := _1024
                    /// @src 118:2545:2579  "0xf987a7253ac413176f2b074cf7815e54"
                    let expr_5297 := 0xf987a7253ac413176f2b074cf7815e54
                    /// @src 118:2537:2579  "ratio * 0xf987a7253ac413176f2b074cf7815e54"
                    let expr_5298 := checked_mul_t_uint256(expr_5296, convert_t_rational_331682121138379247127172139078559817300_by_1_to_t_uint256(expr_5297))

                    /// @src 118:2536:2580  "(ratio * 0xf987a7253ac413176f2b074cf7815e54)"
                    let expr_5299 := expr_5298
                    /// @src 118:2584:2587  "128"
                    let expr_5300 := 0x80
                    /// @src 118:2536:2587  "(ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                    let _1025 := convert_t_rational_128_by_1_to_t_uint8(expr_5300)
                    let expr_5301 :=
                    shift_right_t_uint256_t_uint8(expr_5299, _1025)

                    /// @src 118:2528:2587  "ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                    var_ratio_5160 := expr_5301
                    let expr_5302 := expr_5301
                    /// @src 118:2502:2587  "if (absTick & 0x200 != 0) ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                }
                /// @src 118:2601:2608  "absTick"
                let _1026 := var_absTick_5125
                let expr_5305 := _1026
                /// @src 118:2611:2616  "0x400"
                let expr_5306 := 0x0400
                /// @src 118:2601:2616  "absTick & 0x400"
                let expr_5307 := and(expr_5305, convert_t_rational_1024_by_1_to_t_uint256(expr_5306))

                /// @src 118:2620:2621  "0"
                let expr_5308 := 0x00
                /// @src 118:2601:2621  "absTick & 0x400 != 0"
                let expr_5309 := iszero(eq(cleanup_t_uint256(expr_5307), convert_t_rational_0_by_1_to_t_uint256(expr_5308)))
                /// @src 118:2597:2682  "if (absTick & 0x400 != 0) ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                if expr_5309 {
                    /// @src 118:2632:2637  "ratio"
                    let _1027 := var_ratio_5160
                    let expr_5311 := _1027
                    /// @src 118:2640:2674  "0xf3392b0822b70005940c7a398e4b70f3"
                    let expr_5312 := 0xf3392b0822b70005940c7a398e4b70f3
                    /// @src 118:2632:2674  "ratio * 0xf3392b0822b70005940c7a398e4b70f3"
                    let expr_5313 := checked_mul_t_uint256(expr_5311, convert_t_rational_323299236684853023288211250268160618739_by_1_to_t_uint256(expr_5312))

                    /// @src 118:2631:2675  "(ratio * 0xf3392b0822b70005940c7a398e4b70f3)"
                    let expr_5314 := expr_5313
                    /// @src 118:2679:2682  "128"
                    let expr_5315 := 0x80
                    /// @src 118:2631:2682  "(ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                    let _1028 := convert_t_rational_128_by_1_to_t_uint8(expr_5315)
                    let expr_5316 :=
                    shift_right_t_uint256_t_uint8(expr_5314, _1028)

                    /// @src 118:2623:2682  "ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                    var_ratio_5160 := expr_5316
                    let expr_5317 := expr_5316
                    /// @src 118:2597:2682  "if (absTick & 0x400 != 0) ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                }
                /// @src 118:2696:2703  "absTick"
                let _1029 := var_absTick_5125
                let expr_5320 := _1029
                /// @src 118:2706:2711  "0x800"
                let expr_5321 := 0x0800
                /// @src 118:2696:2711  "absTick & 0x800"
                let expr_5322 := and(expr_5320, convert_t_rational_2048_by_1_to_t_uint256(expr_5321))

                /// @src 118:2715:2716  "0"
                let expr_5323 := 0x00
                /// @src 118:2696:2716  "absTick & 0x800 != 0"
                let expr_5324 := iszero(eq(cleanup_t_uint256(expr_5322), convert_t_rational_0_by_1_to_t_uint256(expr_5323)))
                /// @src 118:2692:2777  "if (absTick & 0x800 != 0) ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                if expr_5324 {
                    /// @src 118:2727:2732  "ratio"
                    let _1030 := var_ratio_5160
                    let expr_5326 := _1030
                    /// @src 118:2735:2769  "0xe7159475a2c29b7443b29c7fa6e889d9"
                    let expr_5327 := 0xe7159475a2c29b7443b29c7fa6e889d9
                    /// @src 118:2727:2769  "ratio * 0xe7159475a2c29b7443b29c7fa6e889d9"
                    let expr_5328 := checked_mul_t_uint256(expr_5326, convert_t_rational_307163716377032989948697243942600083929_by_1_to_t_uint256(expr_5327))

                    /// @src 118:2726:2770  "(ratio * 0xe7159475a2c29b7443b29c7fa6e889d9)"
                    let expr_5329 := expr_5328
                    /// @src 118:2774:2777  "128"
                    let expr_5330 := 0x80
                    /// @src 118:2726:2777  "(ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                    let _1031 := convert_t_rational_128_by_1_to_t_uint8(expr_5330)
                    let expr_5331 :=
                    shift_right_t_uint256_t_uint8(expr_5329, _1031)

                    /// @src 118:2718:2777  "ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                    var_ratio_5160 := expr_5331
                    let expr_5332 := expr_5331
                    /// @src 118:2692:2777  "if (absTick & 0x800 != 0) ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                }
                /// @src 118:2791:2798  "absTick"
                let _1032 := var_absTick_5125
                let expr_5335 := _1032
                /// @src 118:2801:2807  "0x1000"
                let expr_5336 := 0x1000
                /// @src 118:2791:2807  "absTick & 0x1000"
                let expr_5337 := and(expr_5335, convert_t_rational_4096_by_1_to_t_uint256(expr_5336))

                /// @src 118:2811:2812  "0"
                let expr_5338 := 0x00
                /// @src 118:2791:2812  "absTick & 0x1000 != 0"
                let expr_5339 := iszero(eq(cleanup_t_uint256(expr_5337), convert_t_rational_0_by_1_to_t_uint256(expr_5338)))
                /// @src 118:2787:2873  "if (absTick & 0x1000 != 0) ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                if expr_5339 {
                    /// @src 118:2823:2828  "ratio"
                    let _1033 := var_ratio_5160
                    let expr_5341 := _1033
                    /// @src 118:2831:2865  "0xd097f3bdfd2022b8845ad8f792aa5825"
                    let expr_5342 := 0xd097f3bdfd2022b8845ad8f792aa5825
                    /// @src 118:2823:2865  "ratio * 0xd097f3bdfd2022b8845ad8f792aa5825"
                    let expr_5343 := checked_mul_t_uint256(expr_5341, convert_t_rational_277268403626896220162999269216087595045_by_1_to_t_uint256(expr_5342))

                    /// @src 118:2822:2866  "(ratio * 0xd097f3bdfd2022b8845ad8f792aa5825)"
                    let expr_5344 := expr_5343
                    /// @src 118:2870:2873  "128"
                    let expr_5345 := 0x80
                    /// @src 118:2822:2873  "(ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                    let _1034 := convert_t_rational_128_by_1_to_t_uint8(expr_5345)
                    let expr_5346 :=
                    shift_right_t_uint256_t_uint8(expr_5344, _1034)

                    /// @src 118:2814:2873  "ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                    var_ratio_5160 := expr_5346
                    let expr_5347 := expr_5346
                    /// @src 118:2787:2873  "if (absTick & 0x1000 != 0) ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                }
                /// @src 118:2887:2894  "absTick"
                let _1035 := var_absTick_5125
                let expr_5350 := _1035
                /// @src 118:2897:2903  "0x2000"
                let expr_5351 := 0x2000
                /// @src 118:2887:2903  "absTick & 0x2000"
                let expr_5352 := and(expr_5350, convert_t_rational_8192_by_1_to_t_uint256(expr_5351))

                /// @src 118:2907:2908  "0"
                let expr_5353 := 0x00
                /// @src 118:2887:2908  "absTick & 0x2000 != 0"
                let expr_5354 := iszero(eq(cleanup_t_uint256(expr_5352), convert_t_rational_0_by_1_to_t_uint256(expr_5353)))
                /// @src 118:2883:2969  "if (absTick & 0x2000 != 0) ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                if expr_5354 {
                    /// @src 118:2919:2924  "ratio"
                    let _1036 := var_ratio_5160
                    let expr_5356 := _1036
                    /// @src 118:2927:2961  "0xa9f746462d870fdf8a65dc1f90e061e5"
                    let expr_5357 := 0xa9f746462d870fdf8a65dc1f90e061e5
                    /// @src 118:2919:2961  "ratio * 0xa9f746462d870fdf8a65dc1f90e061e5"
                    let expr_5358 := checked_mul_t_uint256(expr_5356, convert_t_rational_225923453940442621947126027127485391333_by_1_to_t_uint256(expr_5357))

                    /// @src 118:2918:2962  "(ratio * 0xa9f746462d870fdf8a65dc1f90e061e5)"
                    let expr_5359 := expr_5358
                    /// @src 118:2966:2969  "128"
                    let expr_5360 := 0x80
                    /// @src 118:2918:2969  "(ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                    let _1037 := convert_t_rational_128_by_1_to_t_uint8(expr_5360)
                    let expr_5361 :=
                    shift_right_t_uint256_t_uint8(expr_5359, _1037)

                    /// @src 118:2910:2969  "ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                    var_ratio_5160 := expr_5361
                    let expr_5362 := expr_5361
                    /// @src 118:2883:2969  "if (absTick & 0x2000 != 0) ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                }
                /// @src 118:2983:2990  "absTick"
                let _1038 := var_absTick_5125
                let expr_5365 := _1038
                /// @src 118:2993:2999  "0x4000"
                let expr_5366 := 0x4000
                /// @src 118:2983:2999  "absTick & 0x4000"
                let expr_5367 := and(expr_5365, convert_t_rational_16384_by_1_to_t_uint256(expr_5366))

                /// @src 118:3003:3004  "0"
                let expr_5368 := 0x00
                /// @src 118:2983:3004  "absTick & 0x4000 != 0"
                let expr_5369 := iszero(eq(cleanup_t_uint256(expr_5367), convert_t_rational_0_by_1_to_t_uint256(expr_5368)))
                /// @src 118:2979:3065  "if (absTick & 0x4000 != 0) ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                if expr_5369 {
                    /// @src 118:3015:3020  "ratio"
                    let _1039 := var_ratio_5160
                    let expr_5371 := _1039
                    /// @src 118:3023:3057  "0x70d869a156d2a1b890bb3df62baf32f7"
                    let expr_5372 := 0x70d869a156d2a1b890bb3df62baf32f7
                    /// @src 118:3015:3057  "ratio * 0x70d869a156d2a1b890bb3df62baf32f7"
                    let expr_5373 := checked_mul_t_uint256(expr_5371, convert_t_rational_149997214084966997727330242082538205943_by_1_to_t_uint256(expr_5372))

                    /// @src 118:3014:3058  "(ratio * 0x70d869a156d2a1b890bb3df62baf32f7)"
                    let expr_5374 := expr_5373
                    /// @src 118:3062:3065  "128"
                    let expr_5375 := 0x80
                    /// @src 118:3014:3065  "(ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                    let _1040 := convert_t_rational_128_by_1_to_t_uint8(expr_5375)
                    let expr_5376 :=
                    shift_right_t_uint256_t_uint8(expr_5374, _1040)

                    /// @src 118:3006:3065  "ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                    var_ratio_5160 := expr_5376
                    let expr_5377 := expr_5376
                    /// @src 118:2979:3065  "if (absTick & 0x4000 != 0) ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                }
                /// @src 118:3079:3086  "absTick"
                let _1041 := var_absTick_5125
                let expr_5380 := _1041
                /// @src 118:3089:3095  "0x8000"
                let expr_5381 := 0x8000
                /// @src 118:3079:3095  "absTick & 0x8000"
                let expr_5382 := and(expr_5380, convert_t_rational_32768_by_1_to_t_uint256(expr_5381))

                /// @src 118:3099:3100  "0"
                let expr_5383 := 0x00
                /// @src 118:3079:3100  "absTick & 0x8000 != 0"
                let expr_5384 := iszero(eq(cleanup_t_uint256(expr_5382), convert_t_rational_0_by_1_to_t_uint256(expr_5383)))
                /// @src 118:3075:3161  "if (absTick & 0x8000 != 0) ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                if expr_5384 {
                    /// @src 118:3111:3116  "ratio"
                    let _1042 := var_ratio_5160
                    let expr_5386 := _1042
                    /// @src 118:3119:3153  "0x31be135f97d08fd981231505542fcfa6"
                    let expr_5387 := 0x31be135f97d08fd981231505542fcfa6
                    /// @src 118:3111:3153  "ratio * 0x31be135f97d08fd981231505542fcfa6"
                    let expr_5388 := checked_mul_t_uint256(expr_5386, convert_t_rational_66119101136024775622716233608466517926_by_1_to_t_uint256(expr_5387))

                    /// @src 118:3110:3154  "(ratio * 0x31be135f97d08fd981231505542fcfa6)"
                    let expr_5389 := expr_5388
                    /// @src 118:3158:3161  "128"
                    let expr_5390 := 0x80
                    /// @src 118:3110:3161  "(ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                    let _1043 := convert_t_rational_128_by_1_to_t_uint8(expr_5390)
                    let expr_5391 :=
                    shift_right_t_uint256_t_uint8(expr_5389, _1043)

                    /// @src 118:3102:3161  "ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                    var_ratio_5160 := expr_5391
                    let expr_5392 := expr_5391
                    /// @src 118:3075:3161  "if (absTick & 0x8000 != 0) ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                }
                /// @src 118:3175:3182  "absTick"
                let _1044 := var_absTick_5125
                let expr_5395 := _1044
                /// @src 118:3185:3192  "0x10000"
                let expr_5396 := 0x010000
                /// @src 118:3175:3192  "absTick & 0x10000"
                let expr_5397 := and(expr_5395, convert_t_rational_65536_by_1_to_t_uint256(expr_5396))

                /// @src 118:3196:3197  "0"
                let expr_5398 := 0x00
                /// @src 118:3175:3197  "absTick & 0x10000 != 0"
                let expr_5399 := iszero(eq(cleanup_t_uint256(expr_5397), convert_t_rational_0_by_1_to_t_uint256(expr_5398)))
                /// @src 118:3171:3257  "if (absTick & 0x10000 != 0) ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                if expr_5399 {
                    /// @src 118:3208:3213  "ratio"
                    let _1045 := var_ratio_5160
                    let expr_5401 := _1045
                    /// @src 118:3216:3249  "0x9aa508b5b7a84e1c677de54f3e99bc9"
                    let expr_5402 := 0x09aa508b5b7a84e1c677de54f3e99bc9
                    /// @src 118:3208:3249  "ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9"
                    let expr_5403 := checked_mul_t_uint256(expr_5401, convert_t_rational_12847376061809297530290974190478138313_by_1_to_t_uint256(expr_5402))

                    /// @src 118:3207:3250  "(ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9)"
                    let expr_5404 := expr_5403
                    /// @src 118:3254:3257  "128"
                    let expr_5405 := 0x80
                    /// @src 118:3207:3257  "(ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                    let _1046 := convert_t_rational_128_by_1_to_t_uint8(expr_5405)
                    let expr_5406 :=
                    shift_right_t_uint256_t_uint8(expr_5404, _1046)

                    /// @src 118:3199:3257  "ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                    var_ratio_5160 := expr_5406
                    let expr_5407 := expr_5406
                    /// @src 118:3171:3257  "if (absTick & 0x10000 != 0) ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                }
                /// @src 118:3271:3278  "absTick"
                let _1047 := var_absTick_5125
                let expr_5410 := _1047
                /// @src 118:3281:3288  "0x20000"
                let expr_5411 := 0x020000
                /// @src 118:3271:3288  "absTick & 0x20000"
                let expr_5412 := and(expr_5410, convert_t_rational_131072_by_1_to_t_uint256(expr_5411))

                /// @src 118:3292:3293  "0"
                let expr_5413 := 0x00
                /// @src 118:3271:3293  "absTick & 0x20000 != 0"
                let expr_5414 := iszero(eq(cleanup_t_uint256(expr_5412), convert_t_rational_0_by_1_to_t_uint256(expr_5413)))
                /// @src 118:3267:3352  "if (absTick & 0x20000 != 0) ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                if expr_5414 {
                    /// @src 118:3304:3309  "ratio"
                    let _1048 := var_ratio_5160
                    let expr_5416 := _1048
                    /// @src 118:3312:3344  "0x5d6af8dedb81196699c329225ee604"
                    let expr_5417 := 0x5d6af8dedb81196699c329225ee604
                    /// @src 118:3304:3344  "ratio * 0x5d6af8dedb81196699c329225ee604"
                    let expr_5418 := checked_mul_t_uint256(expr_5416, convert_t_rational_485053260817066172746253684029974020_by_1_to_t_uint256(expr_5417))

                    /// @src 118:3303:3345  "(ratio * 0x5d6af8dedb81196699c329225ee604)"
                    let expr_5419 := expr_5418
                    /// @src 118:3349:3352  "128"
                    let expr_5420 := 0x80
                    /// @src 118:3303:3352  "(ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                    let _1049 := convert_t_rational_128_by_1_to_t_uint8(expr_5420)
                    let expr_5421 :=
                    shift_right_t_uint256_t_uint8(expr_5419, _1049)

                    /// @src 118:3295:3352  "ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                    var_ratio_5160 := expr_5421
                    let expr_5422 := expr_5421
                    /// @src 118:3267:3352  "if (absTick & 0x20000 != 0) ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                }
                /// @src 118:3366:3373  "absTick"
                let _1050 := var_absTick_5125
                let expr_5425 := _1050
                /// @src 118:3376:3383  "0x40000"
                let expr_5426 := 0x040000
                /// @src 118:3366:3383  "absTick & 0x40000"
                let expr_5427 := and(expr_5425, convert_t_rational_262144_by_1_to_t_uint256(expr_5426))

                /// @src 118:3387:3388  "0"
                let expr_5428 := 0x00
                /// @src 118:3366:3388  "absTick & 0x40000 != 0"
                let expr_5429 := iszero(eq(cleanup_t_uint256(expr_5427), convert_t_rational_0_by_1_to_t_uint256(expr_5428)))
                /// @src 118:3362:3445  "if (absTick & 0x40000 != 0) ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                if expr_5429 {
                    /// @src 118:3399:3404  "ratio"
                    let _1051 := var_ratio_5160
                    let expr_5431 := _1051
                    /// @src 118:3407:3437  "0x2216e584f5fa1ea926041bedfe98"
                    let expr_5432 := 0x2216e584f5fa1ea926041bedfe98
                    /// @src 118:3399:3437  "ratio * 0x2216e584f5fa1ea926041bedfe98"
                    let expr_5433 := checked_mul_t_uint256(expr_5431, convert_t_rational_691415978906521570653435304214168_by_1_to_t_uint256(expr_5432))

                    /// @src 118:3398:3438  "(ratio * 0x2216e584f5fa1ea926041bedfe98)"
                    let expr_5434 := expr_5433
                    /// @src 118:3442:3445  "128"
                    let expr_5435 := 0x80
                    /// @src 118:3398:3445  "(ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                    let _1052 := convert_t_rational_128_by_1_to_t_uint8(expr_5435)
                    let expr_5436 :=
                    shift_right_t_uint256_t_uint8(expr_5434, _1052)

                    /// @src 118:3390:3445  "ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                    var_ratio_5160 := expr_5436
                    let expr_5437 := expr_5436
                    /// @src 118:3362:3445  "if (absTick & 0x40000 != 0) ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                }
                /// @src 118:3459:3466  "absTick"
                let _1053 := var_absTick_5125
                let expr_5440 := _1053
                /// @src 118:3469:3476  "0x80000"
                let expr_5441 := 0x080000
                /// @src 118:3459:3476  "absTick & 0x80000"
                let expr_5442 := and(expr_5440, convert_t_rational_524288_by_1_to_t_uint256(expr_5441))

                /// @src 118:3480:3481  "0"
                let expr_5443 := 0x00
                /// @src 118:3459:3481  "absTick & 0x80000 != 0"
                let expr_5444 := iszero(eq(cleanup_t_uint256(expr_5442), convert_t_rational_0_by_1_to_t_uint256(expr_5443)))
                /// @src 118:3455:3533  "if (absTick & 0x80000 != 0) ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                if expr_5444 {
                    /// @src 118:3492:3497  "ratio"
                    let _1054 := var_ratio_5160
                    let expr_5446 := _1054
                    /// @src 118:3500:3525  "0x48a170391f7dc42444e8fa2"
                    let expr_5447 := 0x048a170391f7dc42444e8fa2
                    /// @src 118:3492:3525  "ratio * 0x48a170391f7dc42444e8fa2"
                    let expr_5448 := checked_mul_t_uint256(expr_5446, convert_t_rational_1404880482679654955896180642_by_1_to_t_uint256(expr_5447))

                    /// @src 118:3491:3526  "(ratio * 0x48a170391f7dc42444e8fa2)"
                    let expr_5449 := expr_5448
                    /// @src 118:3530:3533  "128"
                    let expr_5450 := 0x80
                    /// @src 118:3491:3533  "(ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                    let _1055 := convert_t_rational_128_by_1_to_t_uint8(expr_5450)
                    let expr_5451 :=
                    shift_right_t_uint256_t_uint8(expr_5449, _1055)

                    /// @src 118:3483:3533  "ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                    var_ratio_5160 := expr_5451
                    let expr_5452 := expr_5451
                    /// @src 118:3455:3533  "if (absTick & 0x80000 != 0) ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                }
                /// @src 118:3548:3552  "tick"
                let _1056 := var_tick_5119
                let expr_5455 := _1056
                /// @src 118:3555:3556  "0"
                let expr_5456 := 0x00
                /// @src 118:3548:3556  "tick > 0"
                let expr_5457 := sgt(cleanup_t_int24(expr_5455), convert_t_rational_0_by_1_to_t_int24(expr_5456))
                /// @src 118:3544:3591  "if (tick > 0) ratio = type(uint256).max / ratio"
                if expr_5457 {
                    /// @src 118:3566:3583  "type(uint256).max"
                    let expr_5463 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 118:3586:3591  "ratio"
                    let _1057 := var_ratio_5160
                    let expr_5464 := _1057
                    /// @src 118:3566:3591  "type(uint256).max / ratio"
                    let expr_5465 := checked_div_t_uint256(expr_5463, expr_5464)

                    /// @src 118:3558:3591  "ratio = type(uint256).max / ratio"
                    var_ratio_5160 := expr_5465
                    let expr_5466 := expr_5465
                    /// @src 118:3544:3591  "if (tick > 0) ratio = type(uint256).max / ratio"
                }
                /// @src 118:3925:3930  "ratio"
                let _1058 := var_ratio_5160
                let expr_5472 := _1058
                /// @src 118:3934:3936  "32"
                let expr_5473 := 0x20
                /// @src 118:3925:3936  "ratio >> 32"
                let _1059 := convert_t_rational_32_by_1_to_t_uint8(expr_5473)
                let expr_5474 :=
                shift_right_t_uint256_t_uint8(expr_5472, _1059)

                /// @src 118:3924:3937  "(ratio >> 32)"
                let expr_5475 := expr_5474
                /// @src 118:3941:3946  "ratio"
                let _1060 := var_ratio_5160
                let expr_5476 := _1060
                /// @src 118:3950:3957  "1 << 32"
                let expr_5479 := 0x0100000000
                /// @src 118:3949:3958  "(1 << 32)"
                let expr_5480 := expr_5479
                /// @src 118:3941:3958  "ratio % (1 << 32)"
                let expr_5481 := mod_t_uint256(expr_5476, convert_t_rational_4294967296_by_1_to_t_uint256(expr_5480))

                /// @src 118:3962:3963  "0"
                let expr_5482 := 0x00
                /// @src 118:3941:3963  "ratio % (1 << 32) == 0"
                let expr_5483 := eq(cleanup_t_uint256(expr_5481), convert_t_rational_0_by_1_to_t_uint256(expr_5482))
                /// @src 118:3941:3971  "ratio % (1 << 32) == 0 ? 0 : 1"
                let expr_5486
                switch expr_5483
                case 0 {
                    /// @src 118:3970:3971  "1"
                    let expr_5485 := 0x01
                    /// @src 118:3941:3971  "ratio % (1 << 32) == 0 ? 0 : 1"
                    expr_5486 := convert_t_rational_1_by_1_to_t_uint8(expr_5485)
                }
                default {
                    /// @src 118:3966:3967  "0"
                    let expr_5484 := 0x00
                    /// @src 118:3941:3971  "ratio % (1 << 32) == 0 ? 0 : 1"
                    expr_5486 := convert_t_rational_0_by_1_to_t_uint8(expr_5484)
                }
                /// @src 118:3940:3972  "(ratio % (1 << 32) == 0 ? 0 : 1)"
                let expr_5487 := expr_5486
                /// @src 118:3924:3972  "(ratio >> 32) + (ratio % (1 << 32) == 0 ? 0 : 1)"
                let expr_5488 := checked_add_t_uint256(expr_5475, convert_t_uint8_to_t_uint256(expr_5487))

                /// @src 118:3916:3973  "uint160((ratio >> 32) + (ratio % (1 << 32) == 0 ? 0 : 1))"
                let expr_5489 := convert_t_uint256_to_t_uint160(expr_5488)
                /// @src 118:3901:3973  "sqrtPriceX96 = uint160((ratio >> 32) + (ratio % (1 << 32) == 0 ? 0 : 1))"
                var_sqrtPriceX96_5122 := expr_5489
                let expr_5490 := expr_5489

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function convert_t_rational_1000000_by_1_to_t_uint24(value) -> converted {
                converted := cleanup_t_uint24(identity(cleanup_t_rational_1000000_by_1(value)))
            }

            /// @ast-id 21760
            /// @src 115:1428:4667  "function computeSwapStep(..."
            function fun_computeSwapStep_21760(var_sqrtRatioCurrentX96_21508, var_sqrtRatioTargetX96_21510, var_liquidity_21512, var_amountRemaining_21514, var_feePips_21516) -> var_sqrtRatioNextX96_21519, var_amountIn_21521, var_amountOut_21523, var_feeAmount_21525 {
                /// @src 115:1675:1699  "uint160 sqrtRatioNextX96"
                let zero_t_uint160_1061 := zero_value_for_split_t_uint160()
                var_sqrtRatioNextX96_21519 := zero_t_uint160_1061
                /// @src 115:1713:1729  "uint256 amountIn"
                let zero_t_uint256_1062 := zero_value_for_split_t_uint256()
                var_amountIn_21521 := zero_t_uint256_1062
                /// @src 115:1743:1760  "uint256 amountOut"
                let zero_t_uint256_1063 := zero_value_for_split_t_uint256()
                var_amountOut_21523 := zero_t_uint256_1063
                /// @src 115:1774:1791  "uint256 feeAmount"
                let zero_t_uint256_1064 := zero_value_for_split_t_uint256()
                var_feeAmount_21525 := zero_t_uint256_1064

                /// @src 115:1834:1853  "sqrtRatioCurrentX96"
                let _1065 := var_sqrtRatioCurrentX96_21508
                let expr_21529 := _1065
                /// @src 115:1857:1875  "sqrtRatioTargetX96"
                let _1066 := var_sqrtRatioTargetX96_21510
                let expr_21530 := _1066
                /// @src 115:1834:1875  "sqrtRatioCurrentX96 >= sqrtRatioTargetX96"
                let expr_21531 := iszero(lt(cleanup_t_uint160(expr_21529), cleanup_t_uint160(expr_21530)))
                /// @src 115:1816:1875  "bool zeroForOne = sqrtRatioCurrentX96 >= sqrtRatioTargetX96"
                let var_zeroForOne_21528 := expr_21531
                /// @src 115:1900:1915  "amountRemaining"
                let _1067 := var_amountRemaining_21514
                let expr_21535 := _1067
                /// @src 115:1919:1920  "0"
                let expr_21536 := 0x00
                /// @src 115:1900:1920  "amountRemaining >= 0"
                let expr_21537 := iszero(slt(cleanup_t_int256(expr_21535), convert_t_rational_0_by_1_to_t_int256(expr_21536)))
                /// @src 115:1885:1920  "bool exactIn = amountRemaining >= 0"
                let var_exactIn_21534 := expr_21537
                /// @src 115:1935:1942  "exactIn"
                let _1068 := var_exactIn_21534
                let expr_21539 := _1068
                /// @src 115:1931:3285  "if (exactIn) {..."
                switch expr_21539
                case 0 {
                    /// @src 115:2692:2702  "zeroForOne"
                    let _1069 := var_zeroForOne_21528
                    let expr_21593 := _1069
                    /// @src 115:2692:2916  "zeroForOne..."
                    let expr_21608
                    switch expr_21593
                    case 0 {
                        /// @src 115:2828:2841  "SqrtPriceMath"
                        let expr_21601_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol:SqrtPriceMath")
                        /// @src 115:2858:2877  "sqrtRatioCurrentX96"
                        let _1070 := var_sqrtRatioCurrentX96_21508
                        let expr_21603 := _1070
                        /// @src 115:2879:2897  "sqrtRatioTargetX96"
                        let _1071 := var_sqrtRatioTargetX96_21510
                        let expr_21604 := _1071
                        /// @src 115:2899:2908  "liquidity"
                        let _1072 := var_liquidity_21512
                        let expr_21605 := _1072
                        /// @src 115:2910:2915  "false"
                        let expr_21606 := 0x00
                        /// @src 115:2828:2916  "SqrtPriceMath.getAmount0Delta(sqrtRatioCurrentX96, sqrtRatioTargetX96, liquidity, false)"
                        let expr_21607 := fun_getAmount0Delta_21367(expr_21603, expr_21604, expr_21605, expr_21606)
                        /// @src 115:2692:2916  "zeroForOne..."
                        expr_21608 := expr_21607
                    }
                    default {
                        /// @src 115:2721:2734  "SqrtPriceMath"
                        let expr_21594_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol:SqrtPriceMath")
                        /// @src 115:2751:2769  "sqrtRatioTargetX96"
                        let _1073 := var_sqrtRatioTargetX96_21510
                        let expr_21596 := _1073
                        /// @src 115:2771:2790  "sqrtRatioCurrentX96"
                        let _1074 := var_sqrtRatioCurrentX96_21508
                        let expr_21597 := _1074
                        /// @src 115:2792:2801  "liquidity"
                        let _1075 := var_liquidity_21512
                        let expr_21598 := _1075
                        /// @src 115:2803:2808  "false"
                        let expr_21599 := 0x00
                        /// @src 115:2721:2809  "SqrtPriceMath.getAmount1Delta(sqrtRatioTargetX96, sqrtRatioCurrentX96, liquidity, false)"
                        let expr_21600 := fun_getAmount1Delta_21415(expr_21596, expr_21597, expr_21598, expr_21599)
                        /// @src 115:2692:2916  "zeroForOne..."
                        expr_21608 := expr_21600
                    }
                    /// @src 115:2680:2916  "amountOut = zeroForOne..."
                    var_amountOut_21523 := expr_21608
                    let expr_21609 := expr_21608
                    /// @src 115:2943:2958  "amountRemaining"
                    let _1076 := var_amountRemaining_21514
                    let expr_21613 := _1076
                    /// @src 115:2942:2958  "-amountRemaining"
                    let expr_21614 := negate_t_int256(expr_21613)
                    /// @src 115:2934:2959  "uint256(-amountRemaining)"
                    let expr_21615 := convert_t_int256_to_t_uint256(expr_21614)
                    /// @src 115:2963:2972  "amountOut"
                    let _1077 := var_amountOut_21523
                    let expr_21616 := _1077
                    /// @src 115:2934:2972  "uint256(-amountRemaining) >= amountOut"
                    let expr_21617 := iszero(lt(cleanup_t_uint256(expr_21615), cleanup_t_uint256(expr_21616)))
                    /// @src 115:2930:3274  "if (uint256(-amountRemaining) >= amountOut) sqrtRatioNextX96 = sqrtRatioTargetX96;..."
                    switch expr_21617
                    case 0 {
                        /// @src 115:3065:3078  "SqrtPriceMath"
                        let expr_21623_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol:SqrtPriceMath")
                        /// @src 115:3127:3146  "sqrtRatioCurrentX96"
                        let _1078 := var_sqrtRatioCurrentX96_21508
                        let expr_21625 := _1078
                        /// @src 115:3168:3177  "liquidity"
                        let _1079 := var_liquidity_21512
                        let expr_21626 := _1079
                        /// @src 115:3208:3223  "amountRemaining"
                        let _1080 := var_amountRemaining_21514
                        let expr_21629 := _1080
                        /// @src 115:3207:3223  "-amountRemaining"
                        let expr_21630 := negate_t_int256(expr_21629)
                        /// @src 115:3199:3224  "uint256(-amountRemaining)"
                        let expr_21631 := convert_t_int256_to_t_uint256(expr_21630)
                        /// @src 115:3246:3256  "zeroForOne"
                        let _1081 := var_zeroForOne_21528
                        let expr_21632 := _1081
                        /// @src 115:3065:3274  "SqrtPriceMath.getNextSqrtPriceFromOutput(..."
                        let expr_21633 := fun_getNextSqrtPriceFromOutput_21297(expr_21625, expr_21626, expr_21631, expr_21632)
                        /// @src 115:3046:3274  "sqrtRatioNextX96 = SqrtPriceMath.getNextSqrtPriceFromOutput(..."
                        var_sqrtRatioNextX96_21519 := expr_21633
                        let expr_21634 := expr_21633
                        /// @src 115:2930:3274  "if (uint256(-amountRemaining) >= amountOut) sqrtRatioNextX96 = sqrtRatioTargetX96;..."
                    }
                    default {
                        /// @src 115:2993:3011  "sqrtRatioTargetX96"
                        let _1082 := var_sqrtRatioTargetX96_21510
                        let expr_21619 := _1082
                        /// @src 115:2974:3011  "sqrtRatioNextX96 = sqrtRatioTargetX96"
                        var_sqrtRatioNextX96_21519 := expr_21619
                        let expr_21620 := expr_21619
                        /// @src 115:2930:3274  "if (uint256(-amountRemaining) >= amountOut) sqrtRatioNextX96 = sqrtRatioTargetX96;..."
                    }
                    /// @src 115:1931:3285  "if (exactIn) {..."
                }
                default {
                    /// @src 115:1991:1999  "FullMath"
                    let expr_21542_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 115:2015:2030  "amountRemaining"
                    let _1083 := var_amountRemaining_21514
                    let expr_21546 := _1083
                    /// @src 115:2007:2031  "uint256(amountRemaining)"
                    let expr_21547 := convert_t_int256_to_t_uint256(expr_21546)
                    /// @src 115:2033:2036  "1e6"
                    let expr_21548 := 0x0f4240
                    /// @src 115:2039:2046  "feePips"
                    let _1084 := var_feePips_21516
                    let expr_21549 := _1084
                    /// @src 115:2033:2046  "1e6 - feePips"
                    let expr_21550 := checked_sub_t_uint24(convert_t_rational_1000000_by_1_to_t_uint24(expr_21548), expr_21549)

                    /// @src 115:2048:2051  "1e6"
                    let expr_21551 := 0x0f4240
                    /// @src 115:1991:2052  "FullMath.mulDiv(uint256(amountRemaining), 1e6 - feePips, 1e6)"
                    let _1085 := convert_t_uint24_to_t_uint256(expr_21550)
                    let _1086 := convert_t_rational_1000000_by_1_to_t_uint256(expr_21551)
                    let expr_21552 := fun_mulDiv_9388(expr_21547, _1085, _1086)
                    /// @src 115:1958:2052  "uint256 amountRemainingLessFee = FullMath.mulDiv(uint256(amountRemaining), 1e6 - feePips, 1e6)"
                    let var_amountRemainingLessFee_21541 := expr_21552
                    /// @src 115:2077:2087  "zeroForOne"
                    let _1087 := var_zeroForOne_21528
                    let expr_21555 := _1087
                    /// @src 115:2077:2299  "zeroForOne..."
                    let expr_21570
                    switch expr_21555
                    case 0 {
                        /// @src 115:2212:2225  "SqrtPriceMath"
                        let expr_21563_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol:SqrtPriceMath")
                        /// @src 115:2242:2261  "sqrtRatioCurrentX96"
                        let _1088 := var_sqrtRatioCurrentX96_21508
                        let expr_21565 := _1088
                        /// @src 115:2263:2281  "sqrtRatioTargetX96"
                        let _1089 := var_sqrtRatioTargetX96_21510
                        let expr_21566 := _1089
                        /// @src 115:2283:2292  "liquidity"
                        let _1090 := var_liquidity_21512
                        let expr_21567 := _1090
                        /// @src 115:2294:2298  "true"
                        let expr_21568 := 0x01
                        /// @src 115:2212:2299  "SqrtPriceMath.getAmount1Delta(sqrtRatioCurrentX96, sqrtRatioTargetX96, liquidity, true)"
                        let expr_21569 := fun_getAmount1Delta_21415(expr_21565, expr_21566, expr_21567, expr_21568)
                        /// @src 115:2077:2299  "zeroForOne..."
                        expr_21570 := expr_21569
                    }
                    default {
                        /// @src 115:2106:2119  "SqrtPriceMath"
                        let expr_21556_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol:SqrtPriceMath")
                        /// @src 115:2136:2154  "sqrtRatioTargetX96"
                        let _1091 := var_sqrtRatioTargetX96_21510
                        let expr_21558 := _1091
                        /// @src 115:2156:2175  "sqrtRatioCurrentX96"
                        let _1092 := var_sqrtRatioCurrentX96_21508
                        let expr_21559 := _1092
                        /// @src 115:2177:2186  "liquidity"
                        let _1093 := var_liquidity_21512
                        let expr_21560 := _1093
                        /// @src 115:2188:2192  "true"
                        let expr_21561 := 0x01
                        /// @src 115:2106:2193  "SqrtPriceMath.getAmount0Delta(sqrtRatioTargetX96, sqrtRatioCurrentX96, liquidity, true)"
                        let expr_21562 := fun_getAmount0Delta_21367(expr_21558, expr_21559, expr_21560, expr_21561)
                        /// @src 115:2077:2299  "zeroForOne..."
                        expr_21570 := expr_21562
                    }
                    /// @src 115:2066:2299  "amountIn = zeroForOne..."
                    var_amountIn_21521 := expr_21570
                    let expr_21571 := expr_21570
                    /// @src 115:2317:2339  "amountRemainingLessFee"
                    let _1094 := var_amountRemainingLessFee_21541
                    let expr_21573 := _1094
                    /// @src 115:2343:2351  "amountIn"
                    let _1095 := var_amountIn_21521
                    let expr_21574 := _1095
                    /// @src 115:2317:2351  "amountRemainingLessFee >= amountIn"
                    let expr_21575 := iszero(lt(cleanup_t_uint256(expr_21573), cleanup_t_uint256(expr_21574)))
                    /// @src 115:2313:2649  "if (amountRemainingLessFee >= amountIn) sqrtRatioNextX96 = sqrtRatioTargetX96;..."
                    switch expr_21575
                    case 0 {
                        /// @src 115:2444:2457  "SqrtPriceMath"
                        let expr_21581_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol:SqrtPriceMath")
                        /// @src 115:2505:2524  "sqrtRatioCurrentX96"
                        let _1096 := var_sqrtRatioCurrentX96_21508
                        let expr_21583 := _1096
                        /// @src 115:2546:2555  "liquidity"
                        let _1097 := var_liquidity_21512
                        let expr_21584 := _1097
                        /// @src 115:2577:2599  "amountRemainingLessFee"
                        let _1098 := var_amountRemainingLessFee_21541
                        let expr_21585 := _1098
                        /// @src 115:2621:2631  "zeroForOne"
                        let _1099 := var_zeroForOne_21528
                        let expr_21586 := _1099
                        /// @src 115:2444:2649  "SqrtPriceMath.getNextSqrtPriceFromInput(..."
                        let expr_21587 := fun_getNextSqrtPriceFromInput_21255(expr_21583, expr_21584, expr_21585, expr_21586)
                        /// @src 115:2425:2649  "sqrtRatioNextX96 = SqrtPriceMath.getNextSqrtPriceFromInput(..."
                        var_sqrtRatioNextX96_21519 := expr_21587
                        let expr_21588 := expr_21587
                        /// @src 115:2313:2649  "if (amountRemainingLessFee >= amountIn) sqrtRatioNextX96 = sqrtRatioTargetX96;..."
                    }
                    default {
                        /// @src 115:2372:2390  "sqrtRatioTargetX96"
                        let _1100 := var_sqrtRatioTargetX96_21510
                        let expr_21577 := _1100
                        /// @src 115:2353:2390  "sqrtRatioNextX96 = sqrtRatioTargetX96"
                        var_sqrtRatioNextX96_21519 := expr_21577
                        let expr_21578 := expr_21577
                        /// @src 115:2313:2649  "if (amountRemainingLessFee >= amountIn) sqrtRatioNextX96 = sqrtRatioTargetX96;..."
                    }
                    /// @src 115:1931:3285  "if (exactIn) {..."
                }
                /// @src 115:3306:3324  "sqrtRatioTargetX96"
                let _1101 := var_sqrtRatioTargetX96_21510
                let expr_21641 := _1101
                /// @src 115:3328:3344  "sqrtRatioNextX96"
                let _1102 := var_sqrtRatioNextX96_21519
                let expr_21642 := _1102
                /// @src 115:3306:3344  "sqrtRatioTargetX96 == sqrtRatioNextX96"
                let expr_21643 := eq(cleanup_t_uint160(expr_21641), cleanup_t_uint160(expr_21642))
                /// @src 115:3295:3344  "bool max = sqrtRatioTargetX96 == sqrtRatioNextX96"
                let var_max_21640 := expr_21643
                /// @src 115:3399:3409  "zeroForOne"
                let _1103 := var_zeroForOne_21528
                let expr_21645 := _1103
                /// @src 115:3395:4127  "if (zeroForOne) {..."
                switch expr_21645
                case 0 {
                    /// @src 115:3797:3800  "max"
                    let _1104 := var_max_21640
                    let expr_21679 := _1104
                    /// @src 115:3797:3811  "max && exactIn"
                    let expr_21681 := expr_21679
                    if expr_21681 {
                        /// @src 115:3804:3811  "exactIn"
                        let _1105 := var_exactIn_21534
                        let expr_21680 := _1105
                        /// @src 115:3797:3811  "max && exactIn"
                        expr_21681 := expr_21680
                    }
                    /// @src 115:3797:3942  "max && exactIn..."
                    let expr_21690
                    switch expr_21681
                    case 0 {
                        /// @src 115:3857:3870  "SqrtPriceMath"
                        let expr_21683_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol:SqrtPriceMath")
                        /// @src 115:3887:3906  "sqrtRatioCurrentX96"
                        let _1106 := var_sqrtRatioCurrentX96_21508
                        let expr_21685 := _1106
                        /// @src 115:3908:3924  "sqrtRatioNextX96"
                        let _1107 := var_sqrtRatioNextX96_21519
                        let expr_21686 := _1107
                        /// @src 115:3926:3935  "liquidity"
                        let _1108 := var_liquidity_21512
                        let expr_21687 := _1108
                        /// @src 115:3937:3941  "true"
                        let expr_21688 := 0x01
                        /// @src 115:3857:3942  "SqrtPriceMath.getAmount1Delta(sqrtRatioCurrentX96, sqrtRatioNextX96, liquidity, true)"
                        let expr_21689 := fun_getAmount1Delta_21415(expr_21685, expr_21686, expr_21687, expr_21688)
                        /// @src 115:3797:3942  "max && exactIn..."
                        expr_21690 := expr_21689
                    }
                    default {
                        /// @src 115:3830:3838  "amountIn"
                        let _1109 := var_amountIn_21521
                        let expr_21682 := _1109
                        /// @src 115:3797:3942  "max && exactIn..."
                        expr_21690 := expr_21682
                    }
                    /// @src 115:3786:3942  "amountIn = max && exactIn..."
                    var_amountIn_21521 := expr_21690
                    let expr_21691 := expr_21690
                    /// @src 115:3968:3971  "max"
                    let _1110 := var_max_21640
                    let expr_21694 := _1110
                    /// @src 115:3968:3983  "max && !exactIn"
                    let expr_21697 := expr_21694
                    if expr_21697 {
                        /// @src 115:3976:3983  "exactIn"
                        let _1111 := var_exactIn_21534
                        let expr_21695 := _1111
                        /// @src 115:3975:3983  "!exactIn"
                        let expr_21696 := cleanup_t_bool(iszero(expr_21695))
                        /// @src 115:3968:3983  "max && !exactIn"
                        expr_21697 := expr_21696
                    }
                    /// @src 115:3968:4116  "max && !exactIn..."
                    let expr_21706
                    switch expr_21697
                    case 0 {
                        /// @src 115:4030:4043  "SqrtPriceMath"
                        let expr_21699_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol:SqrtPriceMath")
                        /// @src 115:4060:4079  "sqrtRatioCurrentX96"
                        let _1112 := var_sqrtRatioCurrentX96_21508
                        let expr_21701 := _1112
                        /// @src 115:4081:4097  "sqrtRatioNextX96"
                        let _1113 := var_sqrtRatioNextX96_21519
                        let expr_21702 := _1113
                        /// @src 115:4099:4108  "liquidity"
                        let _1114 := var_liquidity_21512
                        let expr_21703 := _1114
                        /// @src 115:4110:4115  "false"
                        let expr_21704 := 0x00
                        /// @src 115:4030:4116  "SqrtPriceMath.getAmount0Delta(sqrtRatioCurrentX96, sqrtRatioNextX96, liquidity, false)"
                        let expr_21705 := fun_getAmount0Delta_21367(expr_21701, expr_21702, expr_21703, expr_21704)
                        /// @src 115:3968:4116  "max && !exactIn..."
                        expr_21706 := expr_21705
                    }
                    default {
                        /// @src 115:4002:4011  "amountOut"
                        let _1115 := var_amountOut_21523
                        let expr_21698 := _1115
                        /// @src 115:3968:4116  "max && !exactIn..."
                        expr_21706 := expr_21698
                    }
                    /// @src 115:3956:4116  "amountOut = max && !exactIn..."
                    var_amountOut_21523 := expr_21706
                    let expr_21707 := expr_21706
                    /// @src 115:3395:4127  "if (zeroForOne) {..."
                }
                default {
                    /// @src 115:3436:3439  "max"
                    let _1116 := var_max_21640
                    let expr_21647 := _1116
                    /// @src 115:3436:3450  "max && exactIn"
                    let expr_21649 := expr_21647
                    if expr_21649 {
                        /// @src 115:3443:3450  "exactIn"
                        let _1117 := var_exactIn_21534
                        let expr_21648 := _1117
                        /// @src 115:3436:3450  "max && exactIn"
                        expr_21649 := expr_21648
                    }
                    /// @src 115:3436:3581  "max && exactIn..."
                    let expr_21658
                    switch expr_21649
                    case 0 {
                        /// @src 115:3496:3509  "SqrtPriceMath"
                        let expr_21651_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol:SqrtPriceMath")
                        /// @src 115:3526:3542  "sqrtRatioNextX96"
                        let _1118 := var_sqrtRatioNextX96_21519
                        let expr_21653 := _1118
                        /// @src 115:3544:3563  "sqrtRatioCurrentX96"
                        let _1119 := var_sqrtRatioCurrentX96_21508
                        let expr_21654 := _1119
                        /// @src 115:3565:3574  "liquidity"
                        let _1120 := var_liquidity_21512
                        let expr_21655 := _1120
                        /// @src 115:3576:3580  "true"
                        let expr_21656 := 0x01
                        /// @src 115:3496:3581  "SqrtPriceMath.getAmount0Delta(sqrtRatioNextX96, sqrtRatioCurrentX96, liquidity, true)"
                        let expr_21657 := fun_getAmount0Delta_21367(expr_21653, expr_21654, expr_21655, expr_21656)
                        /// @src 115:3436:3581  "max && exactIn..."
                        expr_21658 := expr_21657
                    }
                    default {
                        /// @src 115:3469:3477  "amountIn"
                        let _1121 := var_amountIn_21521
                        let expr_21650 := _1121
                        /// @src 115:3436:3581  "max && exactIn..."
                        expr_21658 := expr_21650
                    }
                    /// @src 115:3425:3581  "amountIn = max && exactIn..."
                    var_amountIn_21521 := expr_21658
                    let expr_21659 := expr_21658
                    /// @src 115:3607:3610  "max"
                    let _1122 := var_max_21640
                    let expr_21662 := _1122
                    /// @src 115:3607:3622  "max && !exactIn"
                    let expr_21665 := expr_21662
                    if expr_21665 {
                        /// @src 115:3615:3622  "exactIn"
                        let _1123 := var_exactIn_21534
                        let expr_21663 := _1123
                        /// @src 115:3614:3622  "!exactIn"
                        let expr_21664 := cleanup_t_bool(iszero(expr_21663))
                        /// @src 115:3607:3622  "max && !exactIn"
                        expr_21665 := expr_21664
                    }
                    /// @src 115:3607:3755  "max && !exactIn..."
                    let expr_21674
                    switch expr_21665
                    case 0 {
                        /// @src 115:3669:3682  "SqrtPriceMath"
                        let expr_21667_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol:SqrtPriceMath")
                        /// @src 115:3699:3715  "sqrtRatioNextX96"
                        let _1124 := var_sqrtRatioNextX96_21519
                        let expr_21669 := _1124
                        /// @src 115:3717:3736  "sqrtRatioCurrentX96"
                        let _1125 := var_sqrtRatioCurrentX96_21508
                        let expr_21670 := _1125
                        /// @src 115:3738:3747  "liquidity"
                        let _1126 := var_liquidity_21512
                        let expr_21671 := _1126
                        /// @src 115:3749:3754  "false"
                        let expr_21672 := 0x00
                        /// @src 115:3669:3755  "SqrtPriceMath.getAmount1Delta(sqrtRatioNextX96, sqrtRatioCurrentX96, liquidity, false)"
                        let expr_21673 := fun_getAmount1Delta_21415(expr_21669, expr_21670, expr_21671, expr_21672)
                        /// @src 115:3607:3755  "max && !exactIn..."
                        expr_21674 := expr_21673
                    }
                    default {
                        /// @src 115:3641:3650  "amountOut"
                        let _1127 := var_amountOut_21523
                        let expr_21666 := _1127
                        /// @src 115:3607:3755  "max && !exactIn..."
                        expr_21674 := expr_21666
                    }
                    /// @src 115:3595:3755  "amountOut = max && !exactIn..."
                    var_amountOut_21523 := expr_21674
                    let expr_21675 := expr_21674
                    /// @src 115:3395:4127  "if (zeroForOne) {..."
                }
                /// @src 115:4217:4224  "exactIn"
                let _1128 := var_exactIn_21534
                let expr_21711 := _1128
                /// @src 115:4216:4224  "!exactIn"
                let expr_21712 := cleanup_t_bool(iszero(expr_21711))
                /// @src 115:4216:4265  "!exactIn && amountOut > uint256(-amountRemaining)"
                let expr_21720 := expr_21712
                if expr_21720 {
                    /// @src 115:4228:4237  "amountOut"
                    let _1129 := var_amountOut_21523
                    let expr_21713 := _1129
                    /// @src 115:4249:4264  "amountRemaining"
                    let _1130 := var_amountRemaining_21514
                    let expr_21716 := _1130
                    /// @src 115:4248:4264  "-amountRemaining"
                    let expr_21717 := negate_t_int256(expr_21716)
                    /// @src 115:4240:4265  "uint256(-amountRemaining)"
                    let expr_21718 := convert_t_int256_to_t_uint256(expr_21717)
                    /// @src 115:4228:4265  "amountOut > uint256(-amountRemaining)"
                    let expr_21719 := gt(cleanup_t_uint256(expr_21713), cleanup_t_uint256(expr_21718))
                    /// @src 115:4216:4265  "!exactIn && amountOut > uint256(-amountRemaining)"
                    expr_21720 := expr_21719
                }
                /// @src 115:4212:4329  "if (!exactIn && amountOut > uint256(-amountRemaining)) {..."
                if expr_21720 {
                    /// @src 115:4302:4317  "amountRemaining"
                    let _1131 := var_amountRemaining_21514
                    let expr_21724 := _1131
                    /// @src 115:4301:4317  "-amountRemaining"
                    let expr_21725 := negate_t_int256(expr_21724)
                    /// @src 115:4293:4318  "uint256(-amountRemaining)"
                    let expr_21726 := convert_t_int256_to_t_uint256(expr_21725)
                    /// @src 115:4281:4318  "amountOut = uint256(-amountRemaining)"
                    var_amountOut_21523 := expr_21726
                    let expr_21727 := expr_21726
                    /// @src 115:4212:4329  "if (!exactIn && amountOut > uint256(-amountRemaining)) {..."
                }
                /// @src 115:4343:4350  "exactIn"
                let _1132 := var_exactIn_21534
                let expr_21731 := _1132
                /// @src 115:4343:4392  "exactIn && sqrtRatioNextX96 != sqrtRatioTargetX96"
                let expr_21735 := expr_21731
                if expr_21735 {
                    /// @src 115:4354:4370  "sqrtRatioNextX96"
                    let _1133 := var_sqrtRatioNextX96_21519
                    let expr_21732 := _1133
                    /// @src 115:4374:4392  "sqrtRatioTargetX96"
                    let _1134 := var_sqrtRatioTargetX96_21510
                    let expr_21733 := _1134
                    /// @src 115:4354:4392  "sqrtRatioNextX96 != sqrtRatioTargetX96"
                    let expr_21734 := iszero(eq(cleanup_t_uint160(expr_21732), cleanup_t_uint160(expr_21733)))
                    /// @src 115:4343:4392  "exactIn && sqrtRatioNextX96 != sqrtRatioTargetX96"
                    expr_21735 := expr_21734
                }
                /// @src 115:4339:4661  "if (exactIn && sqrtRatioNextX96 != sqrtRatioTargetX96) {..."
                switch expr_21735
                case 0 {
                    /// @src 115:4591:4599  "FullMath"
                    let expr_21747_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 115:4617:4625  "amountIn"
                    let _1135 := var_amountIn_21521
                    let expr_21749 := _1135
                    /// @src 115:4627:4634  "feePips"
                    let _1136 := var_feePips_21516
                    let expr_21750 := _1136
                    /// @src 115:4636:4639  "1e6"
                    let expr_21751 := 0x0f4240
                    /// @src 115:4642:4649  "feePips"
                    let _1137 := var_feePips_21516
                    let expr_21752 := _1137
                    /// @src 115:4636:4649  "1e6 - feePips"
                    let expr_21753 := checked_sub_t_uint24(convert_t_rational_1000000_by_1_to_t_uint24(expr_21751), expr_21752)

                    /// @src 115:4591:4650  "FullMath.mulDivRoundingUp(amountIn, feePips, 1e6 - feePips)"
                    let _1138 := convert_t_uint24_to_t_uint256(expr_21750)
                    let _1139 := convert_t_uint24_to_t_uint256(expr_21753)
                    let expr_21754 := fun_mulDivRoundingUp_9431(expr_21749, _1138, _1139)
                    /// @src 115:4579:4650  "feeAmount = FullMath.mulDivRoundingUp(amountIn, feePips, 1e6 - feePips)"
                    var_feeAmount_21525 := expr_21754
                    let expr_21755 := expr_21754
                    /// @src 115:4339:4661  "if (exactIn && sqrtRatioNextX96 != sqrtRatioTargetX96) {..."
                }
                default {
                    /// @src 115:4521:4536  "amountRemaining"
                    let _1140 := var_amountRemaining_21514
                    let expr_21739 := _1140
                    /// @src 115:4513:4537  "uint256(amountRemaining)"
                    let expr_21740 := convert_t_int256_to_t_uint256(expr_21739)
                    /// @src 115:4540:4548  "amountIn"
                    let _1141 := var_amountIn_21521
                    let expr_21741 := _1141
                    /// @src 115:4513:4548  "uint256(amountRemaining) - amountIn"
                    let expr_21742 := checked_sub_t_uint256(expr_21740, expr_21741)

                    /// @src 115:4501:4548  "feeAmount = uint256(amountRemaining) - amountIn"
                    var_feeAmount_21525 := expr_21742
                    let expr_21743 := expr_21742
                    /// @src 115:4339:4661  "if (exactIn && sqrtRatioNextX96 != sqrtRatioTargetX96) {..."
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function cleanup_t_rational_57896044618658097711785492504343953926634992332820282019728792003956564819968_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_57896044618658097711785492504343953926634992332820282019728792003956564819968_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_57896044618658097711785492504343953926634992332820282019728792003956564819968_by_1(value)))
            }

            /// @ast-id 20983
            /// @src 113:961:1082  "function toInt256(uint256 y) internal pure returns (int256 z) {..."
            function fun_toInt256_20983(var_y_20962) -> var_z_20965 {
                /// @src 113:1013:1021  "int256 z"
                let zero_t_int256_1142 := zero_value_for_split_t_int256()
                var_z_20965 := zero_t_int256_1142

                /// @src 113:1041:1042  "y"
                let _1143 := var_y_20962
                let expr_20968 := _1143
                /// @src 113:1045:1051  "2**255"
                let expr_20971 := 0x8000000000000000000000000000000000000000000000000000000000000000
                /// @src 113:1041:1051  "y < 2**255"
                let expr_20972 := lt(cleanup_t_uint256(expr_20968), convert_t_rational_57896044618658097711785492504343953926634992332820282019728792003956564819968_by_1_to_t_uint256(expr_20971))
                /// @src 113:1033:1052  "require(y < 2**255)"
                require_helper(expr_20972)
                /// @src 113:1073:1074  "y"
                let _1144 := var_y_20962
                let expr_20978 := _1144
                /// @src 113:1066:1075  "int256(y)"
                let expr_20979 := convert_t_uint256_to_t_int256(expr_20978)
                /// @src 113:1062:1075  "z = int256(y)"
                var_z_20965 := expr_20979
                let expr_20980 := expr_20979

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 19939
            /// @src 110:1313:1433  "function add(int256 x, int256 y) internal pure returns (int256 z) {..."
            function fun_add_19939(var_x_19915, var_y_19917) -> var_z_19920 {
                /// @src 110:1369:1377  "int256 z"
                let zero_t_int256_1145 := zero_value_for_split_t_int256()
                var_z_19920 := zero_t_int256_1145

                /// @src 110:1402:1403  "x"
                let _1146 := var_x_19915
                let expr_19924 := _1146
                /// @src 110:1406:1407  "y"
                let _1147 := var_y_19917
                let expr_19925 := _1147
                /// @src 110:1402:1407  "x + y"
                let expr_19926 := checked_add_t_int256(expr_19924, expr_19925)

                /// @src 110:1398:1407  "z = x + y"
                var_z_19920 := expr_19926
                let expr_19927 := expr_19926
                /// @src 110:1397:1408  "(z = x + y)"
                let expr_19928 := expr_19927
                /// @src 110:1412:1413  "x"
                let _1148 := var_x_19915
                let expr_19929 := _1148
                /// @src 110:1397:1413  "(z = x + y) >= x"
                let expr_19930 := iszero(slt(cleanup_t_int256(expr_19928), cleanup_t_int256(expr_19929)))
                /// @src 110:1418:1419  "y"
                let _1149 := var_y_19917
                let expr_19931 := _1149
                /// @src 110:1423:1424  "0"
                let expr_19932 := 0x00
                /// @src 110:1418:1424  "y >= 0"
                let expr_19933 := iszero(slt(cleanup_t_int256(expr_19931), convert_t_rational_0_by_1_to_t_int256(expr_19932)))
                /// @src 110:1417:1425  "(y >= 0)"
                let expr_19934 := expr_19933
                /// @src 110:1397:1425  "(z = x + y) >= x == (y >= 0)"
                let expr_19935 := eq(cleanup_t_bool(expr_19930), cleanup_t_bool(expr_19934))
                /// @src 110:1389:1426  "require((z = x + y) >= x == (y >= 0))"
                require_helper(expr_19935)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 19966
            /// @src 110:1610:1730  "function sub(int256 x, int256 y) internal pure returns (int256 z) {..."
            function fun_sub_19966(var_x_19942, var_y_19944) -> var_z_19947 {
                /// @src 110:1666:1674  "int256 z"
                let zero_t_int256_1150 := zero_value_for_split_t_int256()
                var_z_19947 := zero_t_int256_1150

                /// @src 110:1699:1700  "x"
                let _1151 := var_x_19942
                let expr_19951 := _1151
                /// @src 110:1703:1704  "y"
                let _1152 := var_y_19944
                let expr_19952 := _1152
                /// @src 110:1699:1704  "x - y"
                let expr_19953 := checked_sub_t_int256(expr_19951, expr_19952)

                /// @src 110:1695:1704  "z = x - y"
                var_z_19947 := expr_19953
                let expr_19954 := expr_19953
                /// @src 110:1694:1705  "(z = x - y)"
                let expr_19955 := expr_19954
                /// @src 110:1709:1710  "x"
                let _1153 := var_x_19942
                let expr_19956 := _1153
                /// @src 110:1694:1710  "(z = x - y) <= x"
                let expr_19957 := iszero(sgt(cleanup_t_int256(expr_19955), cleanup_t_int256(expr_19956)))
                /// @src 110:1715:1716  "y"
                let _1154 := var_y_19944
                let expr_19958 := _1154
                /// @src 110:1720:1721  "0"
                let expr_19959 := 0x00
                /// @src 110:1715:1721  "y >= 0"
                let expr_19960 := iszero(slt(cleanup_t_int256(expr_19958), convert_t_rational_0_by_1_to_t_int256(expr_19959)))
                /// @src 110:1714:1722  "(y >= 0)"
                let expr_19961 := expr_19960
                /// @src 110:1694:1722  "(z = x - y) <= x == (y >= 0)"
                let expr_19962 := eq(cleanup_t_bool(expr_19957), cleanup_t_bool(expr_19961))
                /// @src 110:1686:1723  "require((z = x - y) <= x == (y >= 0))"
                require_helper(expr_19962)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function cleanup_t_rational_3_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_3_by_1(value)))
            }

            /// @ast-id 9388
            /// @src 108:779:4558  "function mulDiv(..."
            function fun_mulDiv_9388(var_a_9263, var_b_9265, var_denominator_9267) -> var_result_9270 {
                /// @src 108:891:905  "uint256 result"
                let zero_t_uint256_1155 := zero_value_for_split_t_uint256()
                var_result_9270 := zero_t_uint256_1155

                /// @src 108:1220:1233  "uint256 prod0"
                let var_prod0_9273
                let zero_t_uint256_1156 := zero_value_for_split_t_uint256()
                var_prod0_9273 := zero_t_uint256_1156
                /// @src 108:1288:1301  "uint256 prod1"
                let var_prod1_9276
                let zero_t_uint256_1157 := zero_value_for_split_t_uint256()
                var_prod1_9276 := zero_t_uint256_1157
                /// @src 108:1355:1505  "assembly {..."
                {
                    let usr$mm := mulmod(var_a_9263, var_b_9265, not(0))
                    var_prod0_9273 := mul(var_a_9263, var_b_9265)
                    var_prod1_9276 := sub(sub(usr$mm, var_prod0_9273), lt(usr$mm, var_prod0_9273))
                }
                /// @src 108:1577:1582  "prod1"
                let _1158 := var_prod1_9276
                let expr_9279 := _1158
                /// @src 108:1586:1587  "0"
                let expr_9280 := 0x00
                /// @src 108:1577:1587  "prod1 == 0"
                let expr_9281 := eq(cleanup_t_uint256(expr_9279), convert_t_rational_0_by_1_to_t_uint256(expr_9280))
                /// @src 108:1573:1752  "if (prod1 == 0) {..."
                if expr_9281 {
                    /// @src 108:1611:1622  "denominator"
                    let _1159 := var_denominator_9267
                    let expr_9283 := _1159
                    /// @src 108:1625:1626  "0"
                    let expr_9284 := 0x00
                    /// @src 108:1611:1626  "denominator > 0"
                    let expr_9285 := gt(cleanup_t_uint256(expr_9283), convert_t_rational_0_by_1_to_t_uint256(expr_9284))
                    /// @src 108:1603:1627  "require(denominator > 0)"
                    require_helper(expr_9285)
                    /// @src 108:1641:1715  "assembly {..."
                    {
                        var_result_9270 := div(var_prod0_9273, var_denominator_9267)
                    }
                    /// @src 108:1735:1741  "result"
                    let _1160 := var_result_9270
                    let expr_9289 := _1160
                    /// @src 108:1728:1741  "return result"
                    var_result_9270 := expr_9289
                    leave
                    /// @src 108:1573:1752  "if (prod1 == 0) {..."
                }
                /// @src 108:1865:1876  "denominator"
                let _1161 := var_denominator_9267
                let expr_9294 := _1161
                /// @src 108:1879:1884  "prod1"
                let _1162 := var_prod1_9276
                let expr_9295 := _1162
                /// @src 108:1865:1884  "denominator > prod1"
                let expr_9296 := gt(cleanup_t_uint256(expr_9294), cleanup_t_uint256(expr_9295))
                /// @src 108:1857:1885  "require(denominator > prod1)"
                require_helper(expr_9296)
                /// @src 108:2162:2179  "uint256 remainder"
                let var_remainder_9300
                let zero_t_uint256_1163 := zero_value_for_split_t_uint256()
                var_remainder_9300 := zero_t_uint256_1163
                /// @src 108:2189:2260  "assembly {..."
                {
                    var_remainder_9300 := mulmod(var_a_9263, var_b_9265, var_denominator_9267)
                }
                /// @src 108:2324:2441  "assembly {..."
                {
                    var_prod1_9276 := sub(var_prod1_9276, gt(var_remainder_9300, var_prod0_9273))
                    var_prod0_9273 := sub(var_prod0_9273, var_remainder_9300)
                }
                /// @src 108:2606:2607  "0"
                let expr_9306 := 0x00
                /// @src 108:2608:2619  "denominator"
                let _1164 := var_denominator_9267
                let expr_9307 := _1164
                /// @src 108:2606:2619  "0-denominator"
                let expr_9308 := checked_sub_t_uint256(convert_t_rational_0_by_1_to_t_uint256(expr_9306), expr_9307)

                /// @src 108:2605:2620  "(0-denominator)"
                let expr_9309 := expr_9308
                /// @src 108:2623:2634  "denominator"
                let _1165 := var_denominator_9267
                let expr_9310 := _1165
                /// @src 108:2605:2634  "(0-denominator) & denominator"
                let expr_9311 := and(expr_9309, expr_9310)

                /// @src 108:2590:2634  "uint256 twos = (0-denominator) & denominator"
                let var_twos_9305 := expr_9311
                /// @src 108:2690:2760  "assembly {..."
                {
                    var_denominator_9267 := div(var_denominator_9267, var_twos_9305)
                }
                /// @src 108:2824:2882  "assembly {..."
                {
                    var_prod0_9273 := div(var_prod0_9273, var_twos_9305)
                }
                /// @src 108:3061:3133  "assembly {..."
                {
                    var_twos_9305 := add(div(sub(0, var_twos_9305), var_twos_9305), 1)
                }
                /// @src 108:3151:3156  "prod1"
                let _1166 := var_prod1_9276
                let expr_9317 := _1166
                /// @src 108:3159:3163  "twos"
                let _1167 := var_twos_9305
                let expr_9318 := _1167
                /// @src 108:3151:3163  "prod1 * twos"
                let expr_9319 := checked_mul_t_uint256(expr_9317, expr_9318)

                /// @src 108:3142:3163  "prod0 |= prod1 * twos"
                let _1168 := var_prod0_9273
                let expr_9320 := or(_1168, expr_9319)

                var_prod0_9273 := expr_9320
                /// @src 108:3512:3513  "3"
                let expr_9324 := 0x03
                /// @src 108:3516:3527  "denominator"
                let _1169 := var_denominator_9267
                let expr_9325 := _1169
                /// @src 108:3512:3527  "3 * denominator"
                let expr_9326 := checked_mul_t_uint256(convert_t_rational_3_by_1_to_t_uint256(expr_9324), expr_9325)

                /// @src 108:3511:3528  "(3 * denominator)"
                let expr_9327 := expr_9326
                /// @src 108:3531:3532  "2"
                let expr_9328 := 0x02
                /// @src 108:3511:3532  "(3 * denominator) ^ 2"
                let expr_9329 := xor(expr_9327, convert_t_rational_2_by_1_to_t_uint256(expr_9328))

                /// @src 108:3497:3532  "uint256 inv = (3 * denominator) ^ 2"
                let var_inv_9323 := expr_9329
                /// @src 108:3754:3755  "2"
                let expr_9332 := 0x02
                /// @src 108:3758:3769  "denominator"
                let _1170 := var_denominator_9267
                let expr_9333 := _1170
                /// @src 108:3772:3775  "inv"
                let _1171 := var_inv_9323
                let expr_9334 := _1171
                /// @src 108:3758:3775  "denominator * inv"
                let expr_9335 := checked_mul_t_uint256(expr_9333, expr_9334)

                /// @src 108:3754:3775  "2 - denominator * inv"
                let expr_9336 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9332), expr_9335)

                /// @src 108:3747:3775  "inv *= 2 - denominator * inv"
                let _1172 := var_inv_9323
                let expr_9337 := checked_mul_t_uint256(_1172, expr_9336)

                var_inv_9323 := expr_9337
                /// @src 108:3812:3813  "2"
                let expr_9340 := 0x02
                /// @src 108:3816:3827  "denominator"
                let _1173 := var_denominator_9267
                let expr_9341 := _1173
                /// @src 108:3830:3833  "inv"
                let _1174 := var_inv_9323
                let expr_9342 := _1174
                /// @src 108:3816:3833  "denominator * inv"
                let expr_9343 := checked_mul_t_uint256(expr_9341, expr_9342)

                /// @src 108:3812:3833  "2 - denominator * inv"
                let expr_9344 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9340), expr_9343)

                /// @src 108:3805:3833  "inv *= 2 - denominator * inv"
                let _1175 := var_inv_9323
                let expr_9345 := checked_mul_t_uint256(_1175, expr_9344)

                var_inv_9323 := expr_9345
                /// @src 108:3871:3872  "2"
                let expr_9348 := 0x02
                /// @src 108:3875:3886  "denominator"
                let _1176 := var_denominator_9267
                let expr_9349 := _1176
                /// @src 108:3889:3892  "inv"
                let _1177 := var_inv_9323
                let expr_9350 := _1177
                /// @src 108:3875:3892  "denominator * inv"
                let expr_9351 := checked_mul_t_uint256(expr_9349, expr_9350)

                /// @src 108:3871:3892  "2 - denominator * inv"
                let expr_9352 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9348), expr_9351)

                /// @src 108:3864:3892  "inv *= 2 - denominator * inv"
                let _1178 := var_inv_9323
                let expr_9353 := checked_mul_t_uint256(_1178, expr_9352)

                var_inv_9323 := expr_9353
                /// @src 108:3930:3931  "2"
                let expr_9356 := 0x02
                /// @src 108:3934:3945  "denominator"
                let _1179 := var_denominator_9267
                let expr_9357 := _1179
                /// @src 108:3948:3951  "inv"
                let _1180 := var_inv_9323
                let expr_9358 := _1180
                /// @src 108:3934:3951  "denominator * inv"
                let expr_9359 := checked_mul_t_uint256(expr_9357, expr_9358)

                /// @src 108:3930:3951  "2 - denominator * inv"
                let expr_9360 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9356), expr_9359)

                /// @src 108:3923:3951  "inv *= 2 - denominator * inv"
                let _1181 := var_inv_9323
                let expr_9361 := checked_mul_t_uint256(_1181, expr_9360)

                var_inv_9323 := expr_9361
                /// @src 108:3989:3990  "2"
                let expr_9364 := 0x02
                /// @src 108:3993:4004  "denominator"
                let _1182 := var_denominator_9267
                let expr_9365 := _1182
                /// @src 108:4007:4010  "inv"
                let _1183 := var_inv_9323
                let expr_9366 := _1183
                /// @src 108:3993:4010  "denominator * inv"
                let expr_9367 := checked_mul_t_uint256(expr_9365, expr_9366)

                /// @src 108:3989:4010  "2 - denominator * inv"
                let expr_9368 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9364), expr_9367)

                /// @src 108:3982:4010  "inv *= 2 - denominator * inv"
                let _1184 := var_inv_9323
                let expr_9369 := checked_mul_t_uint256(_1184, expr_9368)

                var_inv_9323 := expr_9369
                /// @src 108:4049:4050  "2"
                let expr_9372 := 0x02
                /// @src 108:4053:4064  "denominator"
                let _1185 := var_denominator_9267
                let expr_9373 := _1185
                /// @src 108:4067:4070  "inv"
                let _1186 := var_inv_9323
                let expr_9374 := _1186
                /// @src 108:4053:4070  "denominator * inv"
                let expr_9375 := checked_mul_t_uint256(expr_9373, expr_9374)

                /// @src 108:4049:4070  "2 - denominator * inv"
                let expr_9376 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9372), expr_9375)

                /// @src 108:4042:4070  "inv *= 2 - denominator * inv"
                let _1187 := var_inv_9323
                let expr_9377 := checked_mul_t_uint256(_1187, expr_9376)

                var_inv_9323 := expr_9377
                /// @src 108:4517:4522  "prod0"
                let _1188 := var_prod0_9273
                let expr_9380 := _1188
                /// @src 108:4525:4528  "inv"
                let _1189 := var_inv_9323
                let expr_9381 := _1189
                /// @src 108:4517:4528  "prod0 * inv"
                let expr_9382 := checked_mul_t_uint256(expr_9380, expr_9381)

                /// @src 108:4508:4528  "result = prod0 * inv"
                var_result_9270 := expr_9382
                let expr_9383 := expr_9382
                /// @src 108:4545:4551  "result"
                let _1190 := var_result_9270
                let expr_9385 := _1190
                /// @src 108:4538:4551  "return result"
                var_result_9270 := expr_9385
                leave

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function store_literal_in_memory_ef22bddd350b943170a67d35191c27e310709a28c38b5762a152ff640108f5b2(memPtr) {

                mstore(add(memPtr, 0), "R")

            }

            function abi_encode_t_stringliteral_ef22bddd350b943170a67d35191c27e310709a28c38b5762a152ff640108f5b2_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 1)
                store_literal_in_memory_ef22bddd350b943170a67d35191c27e310709a28c38b5762a152ff640108f5b2(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_ef22bddd350b943170a67d35191c27e310709a28c38b5762a152ff640108f5b2__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_ef22bddd350b943170a67d35191c27e310709a28c38b5762a152ff640108f5b2_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_ef22bddd350b943170a67d35191c27e310709a28c38b5762a152ff640108f5b2(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_ef22bddd350b943170a67d35191c27e310709a28c38b5762a152ff640108f5b2__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function convert_t_uint160_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint160(value)))
            }

            function cleanup_t_rational_127_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_127_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_127_by_1(value)))
            }

            function shift_left_t_uint256_t_uint256(value, bits) -> result {
                bits := cleanup_t_uint256(bits)
                result := cleanup_t_uint256(shift_left_dynamic(bits, cleanup_t_uint256(value)))
            }

            function shift_right_t_uint256_t_uint256(value, bits) -> result {
                bits := cleanup_t_uint256(bits)
                result := cleanup_t_uint256(shift_right_unsigned_dynamic(bits, cleanup_t_uint256(value)))
            }

            function convert_t_rational_128_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_128_by_1(value)))
            }

            function convert_t_rational_64_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_64_by_1(value)))
            }

            function shift_left_t_int256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_int256(shift_left_dynamic(bits, cleanup_t_int256(value)))
            }

            function cleanup_t_rational_255738958999603826347141_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_255738958999603826347141_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_255738958999603826347141_by_1(value)))
            }

            function checked_mul_t_int256(x, y) -> product {
                x := cleanup_t_int256(x)
                y := cleanup_t_int256(y)
                let product_raw := mul(x, y)
                product := cleanup_t_int256(product_raw)

                // special case
                if and(slt(x, 0), eq(y, 0x8000000000000000000000000000000000000000000000000000000000000000)) { panic_error_0x11() }

                // overflow, if x != 0 and y != product/x
                if iszero(
                    or(
                        iszero(x),
                        eq(y, sdiv(product, x))
                    )
                ) { panic_error_0x11() }

            }

            function cleanup_t_rational_3402992956809132418596140100660247210_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3402992956809132418596140100660247210_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_3402992956809132418596140100660247210_by_1(value)))
            }

            function shift_right_signed_dynamic(bits, value) -> result {

                result := sar(bits, value)

            }

            function shift_right_t_int256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_int256(shift_right_signed_dynamic(bits, cleanup_t_int256(value)))
            }

            function convert_t_int256_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_int256(value)))
            }

            function cleanup_t_rational_291339464771989622907027621153398088495_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_291339464771989622907027621153398088495_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_291339464771989622907027621153398088495_by_1(value)))
            }

            /// @ast-id 5632
            /// @src 118:4399:8680  "function getTickAtSqrtRatio(uint160 sqrtPriceX96) internal pure returns (int24 tick) {..."
            function fun_getTickAtSqrtRatio_5632(var_sqrtPriceX96_5496) -> var_tick_5499 {
                /// @src 118:4472:4482  "int24 tick"
                let zero_t_int24_1191 := zero_value_for_split_t_int24()
                var_tick_5499 := zero_t_int24_1191

                /// @src 118:4601:4613  "sqrtPriceX96"
                let _1192 := var_sqrtPriceX96_5496
                let expr_5502 := _1192
                /// @src 118:4617:4631  "MIN_SQRT_RATIO"
                let expr_5503 := constant_MIN_SQRT_RATIO_5112()
                /// @src 118:4601:4631  "sqrtPriceX96 >= MIN_SQRT_RATIO"
                let expr_5504 := iszero(lt(cleanup_t_uint160(expr_5502), cleanup_t_uint160(expr_5503)))
                /// @src 118:4601:4664  "sqrtPriceX96 >= MIN_SQRT_RATIO && sqrtPriceX96 < MAX_SQRT_RATIO"
                let expr_5508 := expr_5504
                if expr_5508 {
                    /// @src 118:4635:4647  "sqrtPriceX96"
                    let _1193 := var_sqrtPriceX96_5496
                    let expr_5505 := _1193
                    /// @src 118:4650:4664  "MAX_SQRT_RATIO"
                    let expr_5506 := constant_MAX_SQRT_RATIO_5116()
                    /// @src 118:4635:4664  "sqrtPriceX96 < MAX_SQRT_RATIO"
                    let expr_5507 := lt(cleanup_t_uint160(expr_5505), cleanup_t_uint160(expr_5506))
                    /// @src 118:4601:4664  "sqrtPriceX96 >= MIN_SQRT_RATIO && sqrtPriceX96 < MAX_SQRT_RATIO"
                    expr_5508 := expr_5507
                }
                /// @src 118:4593:4670  "require(sqrtPriceX96 >= MIN_SQRT_RATIO && sqrtPriceX96 < MAX_SQRT_RATIO, 'R')"
                require_helper_t_stringliteral_ef22bddd350b943170a67d35191c27e310709a28c38b5762a152ff640108f5b2(expr_5508)
                /// @src 118:4704:4716  "sqrtPriceX96"
                let _1194 := var_sqrtPriceX96_5496
                let expr_5516 := _1194
                /// @src 118:4696:4717  "uint256(sqrtPriceX96)"
                let expr_5517 := convert_t_uint160_to_t_uint256(expr_5516)
                /// @src 118:4721:4723  "32"
                let expr_5518 := 0x20
                /// @src 118:4696:4723  "uint256(sqrtPriceX96) << 32"
                let _1195 := convert_t_rational_32_by_1_to_t_uint8(expr_5518)
                let expr_5519 :=
                shift_left_t_uint256_t_uint8(expr_5517, _1195)

                /// @src 118:4680:4723  "uint256 ratio = uint256(sqrtPriceX96) << 32"
                let var_ratio_5513 := expr_5519
                /// @src 118:4746:4751  "ratio"
                let _1196 := var_ratio_5513
                let expr_5523 := _1196
                /// @src 118:4734:4751  "uint256 r = ratio"
                let var_r_5522 := expr_5523
                /// @src 118:4775:4776  "0"
                let expr_5527 := 0x00
                /// @src 118:4761:4776  "uint256 msb = 0"
                let var_msb_5526 := convert_t_rational_0_by_1_to_t_uint256(expr_5527)
                /// @src 118:4787:4935  "assembly {..."
                {
                    let usr$f := shl(7, gt(var_r_5522, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF))
                    var_msb_5526 := or(var_msb_5526, usr$f)
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:4944:5076  "assembly {..."
                {
                    let usr$f := shl(6, gt(var_r_5522, 0xFFFFFFFFFFFFFFFF))
                    var_msb_5526 := or(var_msb_5526, usr$f)
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:5085:5209  "assembly {..."
                {
                    let usr$f := shl(5, gt(var_r_5522, 0xFFFFFFFF))
                    var_msb_5526 := or(var_msb_5526, usr$f)
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:5218:5338  "assembly {..."
                {
                    let usr$f := shl(4, gt(var_r_5522, 0xFFFF))
                    var_msb_5526 := or(var_msb_5526, usr$f)
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:5347:5465  "assembly {..."
                {
                    let usr$f := shl(3, gt(var_r_5522, 0xFF))
                    var_msb_5526 := or(var_msb_5526, usr$f)
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:5474:5591  "assembly {..."
                {
                    let usr$f := shl(2, gt(var_r_5522, 0xF))
                    var_msb_5526 := or(var_msb_5526, usr$f)
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:5600:5717  "assembly {..."
                {
                    let usr$f := shl(1, gt(var_r_5522, 0x3))
                    var_msb_5526 := or(var_msb_5526, usr$f)
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:5726:5808  "assembly {..."
                {
                    let usr$f := gt(var_r_5522, 0x1)
                    var_msb_5526 := or(var_msb_5526, usr$f)
                }
                /// @src 118:5822:5825  "msb"
                let _1197 := var_msb_5526
                let expr_5537 := _1197
                /// @src 118:5829:5832  "128"
                let expr_5538 := 0x80
                /// @src 118:5822:5832  "msb >= 128"
                let expr_5539 := iszero(lt(cleanup_t_uint256(expr_5537), convert_t_rational_128_by_1_to_t_uint256(expr_5538)))
                /// @src 118:5818:5897  "if (msb >= 128) r = ratio >> (msb - 127);..."
                switch expr_5539
                case 0 {
                    /// @src 118:5877:5882  "ratio"
                    let _1198 := var_ratio_5513
                    let expr_5550 := _1198
                    /// @src 118:5887:5890  "127"
                    let expr_5551 := 0x7f
                    /// @src 118:5893:5896  "msb"
                    let _1199 := var_msb_5526
                    let expr_5552 := _1199
                    /// @src 118:5887:5896  "127 - msb"
                    let expr_5553 := checked_sub_t_uint256(convert_t_rational_127_by_1_to_t_uint256(expr_5551), expr_5552)

                    /// @src 118:5886:5897  "(127 - msb)"
                    let expr_5554 := expr_5553
                    /// @src 118:5877:5897  "ratio << (127 - msb)"
                    let expr_5555 :=
                    shift_left_t_uint256_t_uint256(expr_5550, expr_5554)

                    /// @src 118:5873:5897  "r = ratio << (127 - msb)"
                    var_r_5522 := expr_5555
                    let expr_5556 := expr_5555
                    /// @src 118:5818:5897  "if (msb >= 128) r = ratio >> (msb - 127);..."
                }
                default {
                    /// @src 118:5838:5843  "ratio"
                    let _1200 := var_ratio_5513
                    let expr_5541 := _1200
                    /// @src 118:5848:5851  "msb"
                    let _1201 := var_msb_5526
                    let expr_5542 := _1201
                    /// @src 118:5854:5857  "127"
                    let expr_5543 := 0x7f
                    /// @src 118:5848:5857  "msb - 127"
                    let expr_5544 := checked_sub_t_uint256(expr_5542, convert_t_rational_127_by_1_to_t_uint256(expr_5543))

                    /// @src 118:5847:5858  "(msb - 127)"
                    let expr_5545 := expr_5544
                    /// @src 118:5838:5858  "ratio >> (msb - 127)"
                    let expr_5546 :=
                    shift_right_t_uint256_t_uint256(expr_5541, expr_5545)

                    /// @src 118:5834:5858  "r = ratio >> (msb - 127)"
                    var_r_5522 := expr_5546
                    let expr_5547 := expr_5546
                    /// @src 118:5818:5897  "if (msb >= 128) r = ratio >> (msb - 127);..."
                }
                /// @src 118:5931:5934  "msb"
                let _1202 := var_msb_5526
                let expr_5563 := _1202
                /// @src 118:5924:5935  "int256(msb)"
                let expr_5564 := convert_t_uint256_to_t_int256(expr_5563)
                /// @src 118:5938:5941  "128"
                let expr_5565 := 0x80
                /// @src 118:5924:5941  "int256(msb) - 128"
                let expr_5566 := checked_sub_t_int256(expr_5564, convert_t_rational_128_by_1_to_t_int256(expr_5565))

                /// @src 118:5923:5942  "(int256(msb) - 128)"
                let expr_5567 := expr_5566
                /// @src 118:5946:5948  "64"
                let expr_5568 := 0x40
                /// @src 118:5923:5948  "(int256(msb) - 128) << 64"
                let _1203 := convert_t_rational_64_by_1_to_t_uint8(expr_5568)
                let expr_5569 :=
                shift_left_t_int256_t_uint8(expr_5567, _1203)

                /// @src 118:5908:5948  "int256 log_2 = (int256(msb) - 128) << 64"
                let var_log_2_5560 := expr_5569
                /// @src 118:5959:6119  "assembly {..."
                {
                    var_r_5522 := shr(127, mul(var_r_5522, var_r_5522))
                    let usr$f := shr(128, var_r_5522)
                    var_log_2_5560 := or(var_log_2_5560, shl(63, usr$f))
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:6128:6288  "assembly {..."
                {
                    var_r_5522 := shr(127, mul(var_r_5522, var_r_5522))
                    let usr$f := shr(128, var_r_5522)
                    var_log_2_5560 := or(var_log_2_5560, shl(62, usr$f))
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:6297:6457  "assembly {..."
                {
                    var_r_5522 := shr(127, mul(var_r_5522, var_r_5522))
                    let usr$f := shr(128, var_r_5522)
                    var_log_2_5560 := or(var_log_2_5560, shl(61, usr$f))
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:6466:6626  "assembly {..."
                {
                    var_r_5522 := shr(127, mul(var_r_5522, var_r_5522))
                    let usr$f := shr(128, var_r_5522)
                    var_log_2_5560 := or(var_log_2_5560, shl(60, usr$f))
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:6635:6795  "assembly {..."
                {
                    var_r_5522 := shr(127, mul(var_r_5522, var_r_5522))
                    let usr$f := shr(128, var_r_5522)
                    var_log_2_5560 := or(var_log_2_5560, shl(59, usr$f))
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:6804:6964  "assembly {..."
                {
                    var_r_5522 := shr(127, mul(var_r_5522, var_r_5522))
                    let usr$f := shr(128, var_r_5522)
                    var_log_2_5560 := or(var_log_2_5560, shl(58, usr$f))
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:6973:7133  "assembly {..."
                {
                    var_r_5522 := shr(127, mul(var_r_5522, var_r_5522))
                    let usr$f := shr(128, var_r_5522)
                    var_log_2_5560 := or(var_log_2_5560, shl(57, usr$f))
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:7142:7302  "assembly {..."
                {
                    var_r_5522 := shr(127, mul(var_r_5522, var_r_5522))
                    let usr$f := shr(128, var_r_5522)
                    var_log_2_5560 := or(var_log_2_5560, shl(56, usr$f))
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:7311:7471  "assembly {..."
                {
                    var_r_5522 := shr(127, mul(var_r_5522, var_r_5522))
                    let usr$f := shr(128, var_r_5522)
                    var_log_2_5560 := or(var_log_2_5560, shl(55, usr$f))
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:7480:7640  "assembly {..."
                {
                    var_r_5522 := shr(127, mul(var_r_5522, var_r_5522))
                    let usr$f := shr(128, var_r_5522)
                    var_log_2_5560 := or(var_log_2_5560, shl(54, usr$f))
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:7649:7809  "assembly {..."
                {
                    var_r_5522 := shr(127, mul(var_r_5522, var_r_5522))
                    let usr$f := shr(128, var_r_5522)
                    var_log_2_5560 := or(var_log_2_5560, shl(53, usr$f))
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:7818:7978  "assembly {..."
                {
                    var_r_5522 := shr(127, mul(var_r_5522, var_r_5522))
                    let usr$f := shr(128, var_r_5522)
                    var_log_2_5560 := or(var_log_2_5560, shl(52, usr$f))
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:7987:8147  "assembly {..."
                {
                    var_r_5522 := shr(127, mul(var_r_5522, var_r_5522))
                    let usr$f := shr(128, var_r_5522)
                    var_log_2_5560 := or(var_log_2_5560, shl(51, usr$f))
                    var_r_5522 := shr(usr$f, var_r_5522)
                }
                /// @src 118:8156:8289  "assembly {..."
                {
                    var_r_5522 := shr(127, mul(var_r_5522, var_r_5522))
                    let usr$f := shr(128, var_r_5522)
                    var_log_2_5560 := or(var_log_2_5560, shl(50, usr$f))
                }
                /// @src 118:8322:8327  "log_2"
                let _1204 := var_log_2_5560
                let expr_5587 := _1204
                /// @src 118:8330:8354  "255738958999603826347141"
                let expr_5588 := 0x3627a301d71055774c85
                /// @src 118:8322:8354  "log_2 * 255738958999603826347141"
                let expr_5589 := checked_mul_t_int256(expr_5587, convert_t_rational_255738958999603826347141_by_1_to_t_int256(expr_5588))

                /// @src 118:8299:8354  "int256 log_sqrt10001 = log_2 * 255738958999603826347141"
                let var_log_sqrt10001_5586 := expr_5589
                /// @src 118:8406:8419  "log_sqrt10001"
                let _1205 := var_log_sqrt10001_5586
                let expr_5595 := _1205
                /// @src 118:8422:8459  "3402992956809132418596140100660247210"
                let expr_5596 := 0x028f6481ab7f045a5af012a19d003aaa
                /// @src 118:8406:8459  "log_sqrt10001 - 3402992956809132418596140100660247210"
                let expr_5597 := checked_sub_t_int256(expr_5595, convert_t_rational_3402992956809132418596140100660247210_by_1_to_t_int256(expr_5596))

                /// @src 118:8405:8460  "(log_sqrt10001 - 3402992956809132418596140100660247210)"
                let expr_5598 := expr_5597
                /// @src 118:8464:8467  "128"
                let expr_5599 := 0x80
                /// @src 118:8405:8467  "(log_sqrt10001 - 3402992956809132418596140100660247210) >> 128"
                let _1206 := convert_t_rational_128_by_1_to_t_uint8(expr_5599)
                let expr_5600 :=
                shift_right_t_int256_t_uint8(expr_5598, _1206)

                /// @src 118:8399:8468  "int24((log_sqrt10001 - 3402992956809132418596140100660247210) >> 128)"
                let expr_5601 := convert_t_int256_to_t_int24(expr_5600)
                /// @src 118:8383:8468  "int24 tickLow = int24((log_sqrt10001 - 3402992956809132418596140100660247210) >> 128)"
                let var_tickLow_5592 := expr_5601
                /// @src 118:8500:8513  "log_sqrt10001"
                let _1207 := var_log_sqrt10001_5586
                let expr_5607 := _1207
                /// @src 118:8516:8555  "291339464771989622907027621153398088495"
                let expr_5608 := 0xdb2df09e81959a81455e260799a0632f
                /// @src 118:8500:8555  "log_sqrt10001 + 291339464771989622907027621153398088495"
                let expr_5609 := checked_add_t_int256(expr_5607, convert_t_rational_291339464771989622907027621153398088495_by_1_to_t_int256(expr_5608))

                /// @src 118:8499:8556  "(log_sqrt10001 + 291339464771989622907027621153398088495)"
                let expr_5610 := expr_5609
                /// @src 118:8560:8563  "128"
                let expr_5611 := 0x80
                /// @src 118:8499:8563  "(log_sqrt10001 + 291339464771989622907027621153398088495) >> 128"
                let _1208 := convert_t_rational_128_by_1_to_t_uint8(expr_5611)
                let expr_5612 :=
                shift_right_t_int256_t_uint8(expr_5610, _1208)

                /// @src 118:8493:8564  "int24((log_sqrt10001 + 291339464771989622907027621153398088495) >> 128)"
                let expr_5613 := convert_t_int256_to_t_int24(expr_5612)
                /// @src 118:8478:8564  "int24 tickHi = int24((log_sqrt10001 + 291339464771989622907027621153398088495) >> 128)"
                let var_tickHi_5604 := expr_5613
                /// @src 118:8582:8589  "tickLow"
                let _1209 := var_tickLow_5592
                let expr_5616 := _1209
                /// @src 118:8593:8599  "tickHi"
                let _1210 := var_tickHi_5604
                let expr_5617 := _1210
                /// @src 118:8582:8599  "tickLow == tickHi"
                let expr_5618 := eq(cleanup_t_int24(expr_5616), cleanup_t_int24(expr_5617))
                /// @src 118:8582:8673  "tickLow == tickHi ? tickLow : getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow"
                let expr_5628
                switch expr_5618
                case 0 {
                    /// @src 118:8631:8637  "tickHi"
                    let _1211 := var_tickHi_5604
                    let expr_5621 := _1211
                    /// @src 118:8612:8638  "getSqrtRatioAtTick(tickHi)"
                    let expr_5622 := fun_getSqrtRatioAtTick_5493(expr_5621)
                    /// @src 118:8642:8654  "sqrtPriceX96"
                    let _1212 := var_sqrtPriceX96_5496
                    let expr_5623 := _1212
                    /// @src 118:8612:8654  "getSqrtRatioAtTick(tickHi) <= sqrtPriceX96"
                    let expr_5624 := iszero(gt(cleanup_t_uint160(expr_5622), cleanup_t_uint160(expr_5623)))
                    /// @src 118:8612:8673  "getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow"
                    let expr_5627
                    switch expr_5624
                    case 0 {
                        /// @src 118:8666:8673  "tickLow"
                        let _1213 := var_tickLow_5592
                        let expr_5626 := _1213
                        /// @src 118:8612:8673  "getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow"
                        expr_5627 := expr_5626
                    }
                    default {
                        /// @src 118:8657:8663  "tickHi"
                        let _1214 := var_tickHi_5604
                        let expr_5625 := _1214
                        /// @src 118:8612:8673  "getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow"
                        expr_5627 := expr_5625
                    }
                    /// @src 118:8582:8673  "tickLow == tickHi ? tickLow : getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow"
                    expr_5628 := expr_5627
                }
                default {
                    /// @src 118:8602:8609  "tickLow"
                    let _1215 := var_tickLow_5592
                    let expr_5619 := _1215
                    /// @src 118:8582:8673  "tickLow == tickHi ? tickLow : getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow"
                    expr_5628 := expr_5619
                }
                /// @src 118:8575:8673  "tick = tickLow == tickHi ? tickLow : getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow"
                var_tick_5499 := expr_5628
                let expr_5629 := expr_5628

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function array_length_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(value) -> length {

                length := 0xffff

            }

            function array_dataslot_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(ptr) -> data {
                data := ptr

            }

            function storage_array_index_access_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(array)
                slot := add(dataArea, mul(index, 1))
                offset := 0

            }

            function allocate_memory_struct_t_struct$_Observation_$19979_memory_ptr() -> memPtr {
                memPtr := allocate_memory(128)
            }

            function read_from_storage_reference_type_t_struct$_Observation_$19979_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_Observation_$19979_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint32(add(slot, 0))
                    write_to_memory_t_uint32(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_4_t_int56(add(slot, 0))
                    write_to_memory_t_int56(add(value, 32), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_11_t_uint160(add(slot, 0))
                    write_to_memory_t_uint160(add(value, 64), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_31_t_bool(add(slot, 0))
                    write_to_memory_t_bool(add(value, 96), memberValue_0)
                }

            }

            function convert_t_struct$_Observation_$19979_storage_to_t_struct$_Observation_$19979_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_Observation_$19979_memory_ptr(value)

            }

            function cleanup_t_uint56(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffff)
            }

            function convert_t_uint32_to_t_uint56(value) -> converted {
                converted := cleanup_t_uint56(identity(cleanup_t_uint32(value)))
            }

            function convert_t_uint56_to_t_int56(value) -> converted {
                converted := cleanup_t_int56(identity(cleanup_t_uint56(value)))
            }

            function checked_div_t_int56(x, y) -> r {
                x := cleanup_t_int56(x)
                y := cleanup_t_int56(y)
                if iszero(y) { panic_error_0x12() }

                // overflow for minVal / -1
                if and(
                    eq(x, 0xffffffffffffffffffffffffffffffffffffffffffffffffff80000000000000),
                    eq(y, sub(0, 1))
                ) { panic_error_0x11() }

                r := sdiv(x, y)
            }

            function checked_mul_t_int56(x, y) -> product {
                x := cleanup_t_int56(x)
                y := cleanup_t_int56(y)
                let product_raw := mul(x, y)
                product := cleanup_t_int56(product_raw)

                if iszero(eq(product, product_raw)) { panic_error_0x11() }

            }

            function checked_add_t_int56(x, y) -> sum {
                x := cleanup_t_int56(x)
                y := cleanup_t_int56(y)
                sum := add(x, y)

                if or(
                    sgt(sum, 0x7fffffffffffff),
                    slt(sum, 0xffffffffffffffffffffffffffffffffffffffffffffffffff80000000000000)
                ) { panic_error_0x11() }

            }

            function convert_t_uint32_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint32(value)))
            }

            function checked_add_t_uint160(x, y) -> sum {
                x := cleanup_t_uint160(x)
                y := cleanup_t_uint160(y)
                sum := add(x, y)

                if gt(sum, 0xffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }

            }

            /// @ast-id 20649
            /// @src 111:12698:14671  "function observeSingle(..."
            function fun_observeSingle_20649(var_self_20488_slot, var_time_20490, var_secondsAgo_20492, var_tick_20494, var_index_20496, var_liquidity_20498, var_cardinality_20500) -> var_tickCumulative_20503, var_secondsPerLiquidityCumulativeX128_20505 {
                /// @src 111:12936:12956  "int56 tickCumulative"
                let zero_t_int56_1216 := zero_value_for_split_t_int56()
                var_tickCumulative_20503 := zero_t_int56_1216
                /// @src 111:12958:12999  "uint160 secondsPerLiquidityCumulativeX128"
                let zero_t_uint160_1217 := zero_value_for_split_t_uint160()
                var_secondsPerLiquidityCumulativeX128_20505 := zero_t_uint160_1217

                /// @src 111:13015:13025  "secondsAgo"
                let _1218 := var_secondsAgo_20492
                let expr_20507 := _1218
                /// @src 111:13029:13030  "0"
                let expr_20508 := 0x00
                /// @src 111:13015:13030  "secondsAgo == 0"
                let expr_20509 := eq(cleanup_t_uint32(expr_20507), convert_t_rational_0_by_1_to_t_uint32(expr_20508))
                /// @src 111:13011:13268  "if (secondsAgo == 0) {..."
                if expr_20509 {
                    /// @src 111:13072:13076  "self"
                    let _1219_slot := var_self_20488_slot
                    let expr_20513_slot := _1219_slot
                    /// @src 111:13077:13082  "index"
                    let _1220 := var_index_20496
                    let expr_20514 := _1220
                    /// @src 111:13072:13083  "self[index]"

                    let _1221, _1222 := storage_array_index_access_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_20513_slot, expr_20514)
                    let _1223_slot := _1221
                    let expr_20515_slot := _1223_slot
                    /// @src 111:13046:13083  "Observation memory last = self[index]"
                    let var_last_20512_mpos := convert_t_struct$_Observation_$19979_storage_to_t_struct$_Observation_$19979_memory_ptr(expr_20515_slot)
                    /// @src 111:13101:13105  "last"
                    let _1224_mpos := var_last_20512_mpos
                    let expr_20517_mpos := _1224_mpos
                    /// @src 111:13101:13120  "last.blockTimestamp"
                    let _1225 := add(expr_20517_mpos, 0)
                    let _1226 := read_from_memoryt_uint32(_1225)
                    let expr_20518 := _1226
                    /// @src 111:13124:13128  "time"
                    let _1227 := var_time_20490
                    let expr_20519 := _1227
                    /// @src 111:13101:13128  "last.blockTimestamp != time"
                    let expr_20520 := iszero(eq(cleanup_t_uint32(expr_20518), cleanup_t_uint32(expr_20519)))
                    /// @src 111:13097:13175  "if (last.blockTimestamp != time) last = transform(last, time, tick, liquidity)"
                    if expr_20520 {
                        /// @src 111:13147:13151  "last"
                        let _1228_mpos := var_last_20512_mpos
                        let expr_20523_mpos := _1228_mpos
                        /// @src 111:13153:13157  "time"
                        let _1229 := var_time_20490
                        let expr_20524 := _1229
                        /// @src 111:13159:13163  "tick"
                        let _1230 := var_tick_20494
                        let expr_20525 := _1230
                        /// @src 111:13165:13174  "liquidity"
                        let _1231 := var_liquidity_20498
                        let expr_20526 := _1231
                        /// @src 111:13137:13175  "transform(last, time, tick, liquidity)"
                        let expr_20527_mpos := fun_transform_20042(expr_20523_mpos, expr_20524, expr_20525, expr_20526)
                        /// @src 111:13130:13175  "last = transform(last, time, tick, liquidity)"
                        var_last_20512_mpos := expr_20527_mpos
                        let _1232_mpos := var_last_20512_mpos
                        let expr_20528_mpos := _1232_mpos
                        /// @src 111:13097:13175  "if (last.blockTimestamp != time) last = transform(last, time, tick, liquidity)"
                    }
                    /// @src 111:13197:13201  "last"
                    let _1233_mpos := var_last_20512_mpos
                    let expr_20531_mpos := _1233_mpos
                    /// @src 111:13197:13216  "last.tickCumulative"
                    let _1234 := add(expr_20531_mpos, 32)
                    let _1235 := read_from_memoryt_int56(_1234)
                    let expr_20532 := _1235
                    /// @src 111:13196:13257  "(last.tickCumulative, last.secondsPerLiquidityCumulativeX128)"
                    let expr_20535_component_1 := expr_20532
                    /// @src 111:13218:13222  "last"
                    let _1236_mpos := var_last_20512_mpos
                    let expr_20533_mpos := _1236_mpos
                    /// @src 111:13218:13256  "last.secondsPerLiquidityCumulativeX128"
                    let _1237 := add(expr_20533_mpos, 64)
                    let _1238 := read_from_memoryt_uint160(_1237)
                    let expr_20534 := _1238
                    /// @src 111:13196:13257  "(last.tickCumulative, last.secondsPerLiquidityCumulativeX128)"
                    let expr_20535_component_2 := expr_20534
                    /// @src 111:13189:13257  "return (last.tickCumulative, last.secondsPerLiquidityCumulativeX128)"
                    var_tickCumulative_20503 := expr_20535_component_1
                    var_secondsPerLiquidityCumulativeX128_20505 := expr_20535_component_2
                    leave
                    /// @src 111:13011:13268  "if (secondsAgo == 0) {..."
                }
                /// @src 111:13294:13298  "time"
                let _1239 := var_time_20490
                let expr_20541 := _1239
                /// @src 111:13301:13311  "secondsAgo"
                let _1240 := var_secondsAgo_20492
                let expr_20542 := _1240
                /// @src 111:13294:13311  "time - secondsAgo"
                let expr_20543 := checked_sub_t_uint32(expr_20541, expr_20542)

                /// @src 111:13278:13311  "uint32 target = time - secondsAgo"
                let var_target_20540 := expr_20543
                /// @src 111:13425:13429  "self"
                let _1241_slot := var_self_20488_slot
                let expr_20552_slot := _1241_slot
                /// @src 111:13431:13435  "time"
                let _1242 := var_time_20490
                let expr_20553 := _1242
                /// @src 111:13437:13443  "target"
                let _1243 := var_target_20540
                let expr_20554 := _1243
                /// @src 111:13445:13449  "tick"
                let _1244 := var_tick_20494
                let expr_20555 := _1244
                /// @src 111:13451:13456  "index"
                let _1245 := var_index_20496
                let expr_20556 := _1245
                /// @src 111:13458:13467  "liquidity"
                let _1246 := var_liquidity_20498
                let expr_20557 := _1246
                /// @src 111:13469:13480  "cardinality"
                let _1247 := var_cardinality_20500
                let expr_20558 := _1247
                /// @src 111:13398:13481  "getSurroundingObservations(self, time, target, tick, index, liquidity, cardinality)"
                let expr_20559_component_1_mpos, expr_20559_component_2_mpos := fun_getSurroundingObservations_20482(expr_20552_slot, expr_20553, expr_20554, expr_20555, expr_20556, expr_20557, expr_20558)
                /// @src 111:13322:13481  "(Observation memory beforeOrAt, Observation memory atOrAfter) =..."
                let var_beforeOrAt_20547_mpos := expr_20559_component_1_mpos
                let var_atOrAfter_20550_mpos := expr_20559_component_2_mpos
                /// @src 111:13496:13502  "target"
                let _1248 := var_target_20540
                let expr_20561 := _1248
                /// @src 111:13506:13516  "beforeOrAt"
                let _1249_mpos := var_beforeOrAt_20547_mpos
                let expr_20562_mpos := _1249_mpos
                /// @src 111:13506:13531  "beforeOrAt.blockTimestamp"
                let _1250 := add(expr_20562_mpos, 0)
                let _1251 := read_from_memoryt_uint32(_1250)
                let expr_20563 := _1251
                /// @src 111:13496:13531  "target == beforeOrAt.blockTimestamp"
                let expr_20564 := eq(cleanup_t_uint32(expr_20561), cleanup_t_uint32(expr_20563))
                /// @src 111:13492:14665  "if (target == beforeOrAt.blockTimestamp) {..."
                switch expr_20564
                case 0 {
                    /// @src 111:13690:13696  "target"
                    let _1252 := var_target_20540
                    let expr_20572 := _1252
                    /// @src 111:13700:13709  "atOrAfter"
                    let _1253_mpos := var_atOrAfter_20550_mpos
                    let expr_20573_mpos := _1253_mpos
                    /// @src 111:13700:13724  "atOrAfter.blockTimestamp"
                    let _1254 := add(expr_20573_mpos, 0)
                    let _1255 := read_from_memoryt_uint32(_1254)
                    let expr_20574 := _1255
                    /// @src 111:13690:13724  "target == atOrAfter.blockTimestamp"
                    let expr_20575 := eq(cleanup_t_uint32(expr_20572), cleanup_t_uint32(expr_20574))
                    /// @src 111:13686:14665  "if (target == atOrAfter.blockTimestamp) {..."
                    switch expr_20575
                    case 0 {
                        /// @src 111:13957:13966  "atOrAfter"
                        let _1256_mpos := var_atOrAfter_20550_mpos
                        let expr_20585_mpos := _1256_mpos
                        /// @src 111:13957:13981  "atOrAfter.blockTimestamp"
                        let _1257 := add(expr_20585_mpos, 0)
                        let _1258 := read_from_memoryt_uint32(_1257)
                        let expr_20586 := _1258
                        /// @src 111:13984:13994  "beforeOrAt"
                        let _1259_mpos := var_beforeOrAt_20547_mpos
                        let expr_20587_mpos := _1259_mpos
                        /// @src 111:13984:14009  "beforeOrAt.blockTimestamp"
                        let _1260 := add(expr_20587_mpos, 0)
                        let _1261 := read_from_memoryt_uint32(_1260)
                        let expr_20588 := _1261
                        /// @src 111:13957:14009  "atOrAfter.blockTimestamp - beforeOrAt.blockTimestamp"
                        let expr_20589 := checked_sub_t_uint32(expr_20586, expr_20588)

                        /// @src 111:13927:14009  "uint32 observationTimeDelta = atOrAfter.blockTimestamp - beforeOrAt.blockTimestamp"
                        let var_observationTimeDelta_20584 := expr_20589
                        /// @src 111:14044:14050  "target"
                        let _1262 := var_target_20540
                        let expr_20593 := _1262
                        /// @src 111:14053:14063  "beforeOrAt"
                        let _1263_mpos := var_beforeOrAt_20547_mpos
                        let expr_20594_mpos := _1263_mpos
                        /// @src 111:14053:14078  "beforeOrAt.blockTimestamp"
                        let _1264 := add(expr_20594_mpos, 0)
                        let _1265 := read_from_memoryt_uint32(_1264)
                        let expr_20595 := _1265
                        /// @src 111:14044:14078  "target - beforeOrAt.blockTimestamp"
                        let expr_20596 := checked_sub_t_uint32(expr_20593, expr_20595)

                        /// @src 111:14023:14078  "uint32 targetDelta = target - beforeOrAt.blockTimestamp"
                        let var_targetDelta_20592 := expr_20596
                        /// @src 111:14117:14127  "beforeOrAt"
                        let _1266_mpos := var_beforeOrAt_20547_mpos
                        let expr_20598_mpos := _1266_mpos
                        /// @src 111:14117:14142  "beforeOrAt.tickCumulative"
                        let _1267 := add(expr_20598_mpos, 32)
                        let _1268 := read_from_memoryt_int56(_1267)
                        let expr_20599 := _1268
                        /// @src 111:14167:14176  "atOrAfter"
                        let _1269_mpos := var_atOrAfter_20550_mpos
                        let expr_20600_mpos := _1269_mpos
                        /// @src 111:14167:14191  "atOrAfter.tickCumulative"
                        let _1270 := add(expr_20600_mpos, 32)
                        let _1271 := read_from_memoryt_int56(_1270)
                        let expr_20601 := _1271
                        /// @src 111:14194:14204  "beforeOrAt"
                        let _1272_mpos := var_beforeOrAt_20547_mpos
                        let expr_20602_mpos := _1272_mpos
                        /// @src 111:14194:14219  "beforeOrAt.tickCumulative"
                        let _1273 := add(expr_20602_mpos, 32)
                        let _1274 := read_from_memoryt_int56(_1273)
                        let expr_20603 := _1274
                        /// @src 111:14167:14219  "atOrAfter.tickCumulative - beforeOrAt.tickCumulative"
                        let expr_20604 := checked_sub_t_int56(expr_20601, expr_20603)

                        /// @src 111:14166:14220  "(atOrAfter.tickCumulative - beforeOrAt.tickCumulative)"
                        let expr_20605 := expr_20604
                        /// @src 111:14236:14256  "observationTimeDelta"
                        let _1275 := var_observationTimeDelta_20584
                        let expr_20610 := _1275
                        /// @src 111:14229:14257  "uint56(observationTimeDelta)"
                        let expr_20611 := convert_t_uint32_to_t_uint56(expr_20610)
                        /// @src 111:14223:14258  "int56(uint56(observationTimeDelta))"
                        let expr_20612 := convert_t_uint56_to_t_int56(expr_20611)
                        /// @src 111:14166:14258  "(atOrAfter.tickCumulative - beforeOrAt.tickCumulative) / int56(uint56(observationTimeDelta))"
                        let expr_20613 := checked_div_t_int56(expr_20605, expr_20612)

                        /// @src 111:14165:14259  "((atOrAfter.tickCumulative - beforeOrAt.tickCumulative) / int56(uint56(observationTimeDelta)))"
                        let expr_20614 := expr_20613
                        /// @src 111:14295:14306  "targetDelta"
                        let _1276 := var_targetDelta_20592
                        let expr_20619 := _1276
                        /// @src 111:14288:14307  "uint56(targetDelta)"
                        let expr_20620 := convert_t_uint32_to_t_uint56(expr_20619)
                        /// @src 111:14282:14308  "int56(uint56(targetDelta))"
                        let expr_20621 := convert_t_uint56_to_t_int56(expr_20620)
                        /// @src 111:14165:14308  "((atOrAfter.tickCumulative - beforeOrAt.tickCumulative) / int56(uint56(observationTimeDelta))) *..."
                        let expr_20622 := checked_mul_t_int56(expr_20614, expr_20621)

                        /// @src 111:14117:14308  "beforeOrAt.tickCumulative +..."
                        let expr_20623 := checked_add_t_int56(expr_20599, expr_20622)

                        /// @src 111:14099:14654  "(..."
                        let expr_20643_component_1 := expr_20623
                        /// @src 111:14326:14336  "beforeOrAt"
                        let _1277_mpos := var_beforeOrAt_20547_mpos
                        let expr_20624_mpos := _1277_mpos
                        /// @src 111:14326:14370  "beforeOrAt.secondsPerLiquidityCumulativeX128"
                        let _1278 := add(expr_20624_mpos, 64)
                        let _1279 := read_from_memoryt_uint160(_1278)
                        let expr_20625 := _1279
                        /// @src 111:14464:14473  "atOrAfter"
                        let _1280_mpos := var_atOrAfter_20550_mpos
                        let expr_20630_mpos := _1280_mpos
                        /// @src 111:14464:14507  "atOrAfter.secondsPerLiquidityCumulativeX128"
                        let _1281 := add(expr_20630_mpos, 64)
                        let _1282 := read_from_memoryt_uint160(_1281)
                        let expr_20631 := _1282
                        /// @src 111:14510:14520  "beforeOrAt"
                        let _1283_mpos := var_beforeOrAt_20547_mpos
                        let expr_20632_mpos := _1283_mpos
                        /// @src 111:14510:14554  "beforeOrAt.secondsPerLiquidityCumulativeX128"
                        let _1284 := add(expr_20632_mpos, 64)
                        let _1285 := read_from_memoryt_uint160(_1284)
                        let expr_20633 := _1285
                        /// @src 111:14464:14554  "atOrAfter.secondsPerLiquidityCumulativeX128 - beforeOrAt.secondsPerLiquidityCumulativeX128"
                        let expr_20634 := checked_sub_t_uint160(expr_20631, expr_20633)

                        /// @src 111:14427:14580  "uint256(..."
                        let expr_20635 := convert_t_uint160_to_t_uint256(expr_20634)
                        /// @src 111:14583:14594  "targetDelta"
                        let _1286 := var_targetDelta_20592
                        let expr_20636 := _1286
                        /// @src 111:14427:14594  "uint256(..."
                        let expr_20637 := checked_mul_t_uint256(expr_20635, convert_t_uint32_to_t_uint256(expr_20636))

                        /// @src 111:14426:14595  "(uint256(..."
                        let expr_20638 := expr_20637
                        /// @src 111:14598:14618  "observationTimeDelta"
                        let _1287 := var_observationTimeDelta_20584
                        let expr_20639 := _1287
                        /// @src 111:14426:14618  "(uint256(..."
                        let expr_20640 := checked_div_t_uint256(expr_20638, convert_t_uint32_to_t_uint256(expr_20639))

                        /// @src 111:14393:14640  "uint160(..."
                        let expr_20641 := convert_t_uint256_to_t_uint160(expr_20640)
                        /// @src 111:14326:14640  "beforeOrAt.secondsPerLiquidityCumulativeX128 +..."
                        let expr_20642 := checked_add_t_uint160(expr_20625, expr_20641)

                        /// @src 111:14099:14654  "(..."
                        let expr_20643_component_2 := expr_20642
                        /// @src 111:14092:14654  "return (..."
                        var_tickCumulative_20503 := expr_20643_component_1
                        var_secondsPerLiquidityCumulativeX128_20505 := expr_20643_component_2
                        leave
                        /// @src 111:13686:14665  "if (target == atOrAfter.blockTimestamp) {..."
                    }
                    default {
                        /// @src 111:13791:13800  "atOrAfter"
                        let _1288_mpos := var_atOrAfter_20550_mpos
                        let expr_20576_mpos := _1288_mpos
                        /// @src 111:13791:13815  "atOrAfter.tickCumulative"
                        let _1289 := add(expr_20576_mpos, 32)
                        let _1290 := read_from_memoryt_int56(_1289)
                        let expr_20577 := _1290
                        /// @src 111:13790:13861  "(atOrAfter.tickCumulative, atOrAfter.secondsPerLiquidityCumulativeX128)"
                        let expr_20580_component_1 := expr_20577
                        /// @src 111:13817:13826  "atOrAfter"
                        let _1291_mpos := var_atOrAfter_20550_mpos
                        let expr_20578_mpos := _1291_mpos
                        /// @src 111:13817:13860  "atOrAfter.secondsPerLiquidityCumulativeX128"
                        let _1292 := add(expr_20578_mpos, 64)
                        let _1293 := read_from_memoryt_uint160(_1292)
                        let expr_20579 := _1293
                        /// @src 111:13790:13861  "(atOrAfter.tickCumulative, atOrAfter.secondsPerLiquidityCumulativeX128)"
                        let expr_20580_component_2 := expr_20579
                        /// @src 111:13783:13861  "return (atOrAfter.tickCumulative, atOrAfter.secondsPerLiquidityCumulativeX128)"
                        var_tickCumulative_20503 := expr_20580_component_1
                        var_secondsPerLiquidityCumulativeX128_20505 := expr_20580_component_2
                        leave
                        /// @src 111:13686:14665  "if (target == atOrAfter.blockTimestamp) {..."
                    }
                    /// @src 111:13492:14665  "if (target == beforeOrAt.blockTimestamp) {..."
                }
                default {
                    /// @src 111:13597:13607  "beforeOrAt"
                    let _1294_mpos := var_beforeOrAt_20547_mpos
                    let expr_20565_mpos := _1294_mpos
                    /// @src 111:13597:13622  "beforeOrAt.tickCumulative"
                    let _1295 := add(expr_20565_mpos, 32)
                    let _1296 := read_from_memoryt_int56(_1295)
                    let expr_20566 := _1296
                    /// @src 111:13596:13669  "(beforeOrAt.tickCumulative, beforeOrAt.secondsPerLiquidityCumulativeX128)"
                    let expr_20569_component_1 := expr_20566
                    /// @src 111:13624:13634  "beforeOrAt"
                    let _1297_mpos := var_beforeOrAt_20547_mpos
                    let expr_20567_mpos := _1297_mpos
                    /// @src 111:13624:13668  "beforeOrAt.secondsPerLiquidityCumulativeX128"
                    let _1298 := add(expr_20567_mpos, 64)
                    let _1299 := read_from_memoryt_uint160(_1298)
                    let expr_20568 := _1299
                    /// @src 111:13596:13669  "(beforeOrAt.tickCumulative, beforeOrAt.secondsPerLiquidityCumulativeX128)"
                    let expr_20569_component_2 := expr_20568
                    /// @src 111:13589:13669  "return (beforeOrAt.tickCumulative, beforeOrAt.secondsPerLiquidityCumulativeX128)"
                    var_tickCumulative_20503 := expr_20569_component_1
                    var_secondsPerLiquidityCumulativeX128_20505 := expr_20569_component_2
                    leave
                    /// @src 111:13492:14665  "if (target == beforeOrAt.blockTimestamp) {..."
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function zero_value_for_split_t_int128() -> ret {
                ret := 0
            }

            function shift_left_56(value) -> newValue {
                newValue :=

                shl(56, value)

            }

            function update_byte_slice_20_shift_7(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff00000000000000
                toInsert := shift_left_56(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_7_t_uint160_to_t_uint160(slot, value_0) {
                let convertedValue_0 := convert_t_uint160_to_t_uint160(value_0)
                sstore(slot, update_byte_slice_20_shift_7(sload(slot), prepare_store_t_uint160(convertedValue_0)))
            }

            function update_byte_slice_7_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_int56_to_t_int56(value) -> converted {
                converted := cleanup_t_int56(identity(cleanup_t_int56(value)))
            }

            function prepare_store_t_int56(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_int56_to_t_int56(slot, value_0) {
                let convertedValue_0 := convert_t_int56_to_t_int56(value_0)
                sstore(slot, update_byte_slice_7_shift_0(sload(slot), prepare_store_t_int56(convertedValue_0)))
            }

            function update_byte_slice_4_shift_27(value, toInsert) -> result {
                let mask := 0xffffffff000000000000000000000000000000000000000000000000000000
                toInsert := shift_left_216(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint32_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(identity(cleanup_t_uint32(value)))
            }

            function prepare_store_t_uint32(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_27_t_uint32_to_t_uint32(slot, value_0) {
                let convertedValue_0 := convert_t_uint32_to_t_uint32(value_0)
                sstore(slot, update_byte_slice_4_shift_27(sload(slot), prepare_store_t_uint32(convertedValue_0)))
            }

            /// @ast-id 22220
            /// @src 116:8716:9553  "function cross(..."
            function fun_cross_22220(var_self_22143_slot, var_tick_22145, var_feeGrowthGlobal0X128_22147, var_feeGrowthGlobal1X128_22149, var_secondsPerLiquidityCumulativeX128_22151, var_tickCumulative_22153, var_time_22155) -> var_liquidityNet_22158 {
                /// @src 116:9003:9022  "int128 liquidityNet"
                let zero_t_int128_1300 := zero_value_for_split_t_int128()
                var_liquidityNet_22158 := zero_t_int128_1300

                /// @src 116:9059:9063  "self"
                let _1301_slot := var_self_22143_slot
                let expr_22165_slot := _1301_slot
                /// @src 116:9064:9068  "tick"
                let _1302 := var_tick_22145
                let expr_22166 := _1302
                /// @src 116:9059:9069  "self[tick]"
                let _1303 := mapping_index_access_t_mapping$_t_int24_$_t_struct$_Info_$21791_storage_$_of_t_int24(expr_22165_slot,expr_22166)
                let _1304_slot := _1303
                let expr_22167_slot := _1304_slot
                /// @src 116:9034:9069  "Tick.Info storage info = self[tick]"
                let var_info_22164_slot := convert_t_struct$_Info_$21791_storage_to_t_struct$_Info_$21791_storage_ptr(expr_22167_slot)
                /// @src 116:9108:9128  "feeGrowthGlobal0X128"
                let _1305 := var_feeGrowthGlobal0X128_22147
                let expr_22172 := _1305
                /// @src 116:9131:9135  "info"
                let _1306_slot := var_info_22164_slot
                let expr_22173_slot := _1306_slot
                /// @src 116:9131:9157  "info.feeGrowthOutside0X128"
                let _1307 := add(expr_22173_slot, 1)
                let _1308 := read_from_storage_split_offset_0_t_uint256(_1307)
                let expr_22174 := _1308
                /// @src 116:9108:9157  "feeGrowthGlobal0X128 - info.feeGrowthOutside0X128"
                let expr_22175 := checked_sub_t_uint256(expr_22172, expr_22174)

                /// @src 116:9079:9083  "info"
                let _1309_slot := var_info_22164_slot
                let expr_22169_slot := _1309_slot
                /// @src 116:9079:9105  "info.feeGrowthOutside0X128"
                let _1310 := add(expr_22169_slot, 1)
                /// @src 116:9079:9157  "info.feeGrowthOutside0X128 = feeGrowthGlobal0X128 - info.feeGrowthOutside0X128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_1310, expr_22175)
                let expr_22176 := expr_22175
                /// @src 116:9196:9216  "feeGrowthGlobal1X128"
                let _1311 := var_feeGrowthGlobal1X128_22149
                let expr_22181 := _1311
                /// @src 116:9219:9223  "info"
                let _1312_slot := var_info_22164_slot
                let expr_22182_slot := _1312_slot
                /// @src 116:9219:9245  "info.feeGrowthOutside1X128"
                let _1313 := add(expr_22182_slot, 2)
                let _1314 := read_from_storage_split_offset_0_t_uint256(_1313)
                let expr_22183 := _1314
                /// @src 116:9196:9245  "feeGrowthGlobal1X128 - info.feeGrowthOutside1X128"
                let expr_22184 := checked_sub_t_uint256(expr_22181, expr_22183)

                /// @src 116:9167:9171  "info"
                let _1315_slot := var_info_22164_slot
                let expr_22178_slot := _1315_slot
                /// @src 116:9167:9193  "info.feeGrowthOutside1X128"
                let _1316 := add(expr_22178_slot, 2)
                /// @src 116:9167:9245  "info.feeGrowthOutside1X128 = feeGrowthGlobal1X128 - info.feeGrowthOutside1X128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_1316, expr_22184)
                let expr_22185 := expr_22184
                /// @src 116:9293:9326  "secondsPerLiquidityCumulativeX128"
                let _1317 := var_secondsPerLiquidityCumulativeX128_22151
                let expr_22190 := _1317
                /// @src 116:9329:9333  "info"
                let _1318_slot := var_info_22164_slot
                let expr_22191_slot := _1318_slot
                /// @src 116:9329:9364  "info.secondsPerLiquidityOutsideX128"
                let _1319 := add(expr_22191_slot, 3)
                let _1320 := read_from_storage_split_offset_7_t_uint160(_1319)
                let expr_22192 := _1320
                /// @src 116:9293:9364  "secondsPerLiquidityCumulativeX128 - info.secondsPerLiquidityOutsideX128"
                let expr_22193 := checked_sub_t_uint160(expr_22190, expr_22192)

                /// @src 116:9255:9259  "info"
                let _1321_slot := var_info_22164_slot
                let expr_22187_slot := _1321_slot
                /// @src 116:9255:9290  "info.secondsPerLiquidityOutsideX128"
                let _1322 := add(expr_22187_slot, 3)
                /// @src 116:9255:9364  "info.secondsPerLiquidityOutsideX128 = secondsPerLiquidityCumulativeX128 - info.secondsPerLiquidityOutsideX128"
                update_storage_value_offset_7_t_uint160_to_t_uint160(_1322, expr_22193)
                let expr_22194 := expr_22193
                /// @src 116:9403:9417  "tickCumulative"
                let _1323 := var_tickCumulative_22153
                let expr_22199 := _1323
                /// @src 116:9420:9424  "info"
                let _1324_slot := var_info_22164_slot
                let expr_22200_slot := _1324_slot
                /// @src 116:9420:9446  "info.tickCumulativeOutside"
                let _1325 := add(expr_22200_slot, 3)
                let _1326 := read_from_storage_split_offset_0_t_int56(_1325)
                let expr_22201 := _1326
                /// @src 116:9403:9446  "tickCumulative - info.tickCumulativeOutside"
                let expr_22202 := checked_sub_t_int56(expr_22199, expr_22201)

                /// @src 116:9374:9378  "info"
                let _1327_slot := var_info_22164_slot
                let expr_22196_slot := _1327_slot
                /// @src 116:9374:9400  "info.tickCumulativeOutside"
                let _1328 := add(expr_22196_slot, 3)
                /// @src 116:9374:9446  "info.tickCumulativeOutside = tickCumulative - info.tickCumulativeOutside"
                update_storage_value_offset_0_t_int56_to_t_int56(_1328, expr_22202)
                let expr_22203 := expr_22202
                /// @src 116:9478:9482  "time"
                let _1329 := var_time_22155
                let expr_22208 := _1329
                /// @src 116:9485:9489  "info"
                let _1330_slot := var_info_22164_slot
                let expr_22209_slot := _1330_slot
                /// @src 116:9485:9504  "info.secondsOutside"
                let _1331 := add(expr_22209_slot, 3)
                let _1332 := read_from_storage_split_offset_27_t_uint32(_1331)
                let expr_22210 := _1332
                /// @src 116:9478:9504  "time - info.secondsOutside"
                let expr_22211 := checked_sub_t_uint32(expr_22208, expr_22210)

                /// @src 116:9456:9460  "info"
                let _1333_slot := var_info_22164_slot
                let expr_22205_slot := _1333_slot
                /// @src 116:9456:9475  "info.secondsOutside"
                let _1334 := add(expr_22205_slot, 3)
                /// @src 116:9456:9504  "info.secondsOutside = time - info.secondsOutside"
                update_storage_value_offset_27_t_uint32_to_t_uint32(_1334, expr_22211)
                let expr_22212 := expr_22211
                /// @src 116:9529:9533  "info"
                let _1335_slot := var_info_22164_slot
                let expr_22215_slot := _1335_slot
                /// @src 116:9529:9546  "info.liquidityNet"
                let _1336 := add(expr_22215_slot, 0)
                let _1337 := read_from_storage_split_offset_16_t_int128(_1336)
                let expr_22216 := _1337
                /// @src 116:9514:9546  "liquidityNet = info.liquidityNet"
                var_liquidityNet_22158 := expr_22216
                let expr_22217 := expr_22216

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function convert_t_rational_0_by_1_to_t_int128(value) -> converted {
                converted := cleanup_t_int128(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_int128_to_t_uint128(value) -> converted {
                converted := cleanup_t_uint128(identity(cleanup_t_int128(value)))
            }

            function store_literal_in_memory_ce8fc98a1432efc8ba166615239eb1702fbbbd0ddab9a5952502a98483035383(memPtr) {

                mstore(add(memPtr, 0), "LA")

            }

            function abi_encode_t_stringliteral_ce8fc98a1432efc8ba166615239eb1702fbbbd0ddab9a5952502a98483035383_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_ce8fc98a1432efc8ba166615239eb1702fbbbd0ddab9a5952502a98483035383(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_ce8fc98a1432efc8ba166615239eb1702fbbbd0ddab9a5952502a98483035383__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_ce8fc98a1432efc8ba166615239eb1702fbbbd0ddab9a5952502a98483035383_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_ce8fc98a1432efc8ba166615239eb1702fbbbd0ddab9a5952502a98483035383(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_ce8fc98a1432efc8ba166615239eb1702fbbbd0ddab9a5952502a98483035383__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_2be2231ccd52e7fedf30c30a3dfa3d6c9d9d3400159e305398a7b6d437f56985(memPtr) {

                mstore(add(memPtr, 0), "LS")

            }

            function abi_encode_t_stringliteral_2be2231ccd52e7fedf30c30a3dfa3d6c9d9d3400159e305398a7b6d437f56985_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_2be2231ccd52e7fedf30c30a3dfa3d6c9d9d3400159e305398a7b6d437f56985(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_2be2231ccd52e7fedf30c30a3dfa3d6c9d9d3400159e305398a7b6d437f56985__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_2be2231ccd52e7fedf30c30a3dfa3d6c9d9d3400159e305398a7b6d437f56985_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_2be2231ccd52e7fedf30c30a3dfa3d6c9d9d3400159e305398a7b6d437f56985(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_2be2231ccd52e7fedf30c30a3dfa3d6c9d9d3400159e305398a7b6d437f56985__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 19836
            /// @src 109:420:656  "function addDelta(uint128 x, int128 y) internal pure returns (uint128 z) {..."
            function fun_addDelta_19836(var_x_19791, var_y_19793) -> var_z_19796 {
                /// @src 109:482:491  "uint128 z"
                let zero_t_uint128_1338 := zero_value_for_split_t_uint128()
                var_z_19796 := zero_t_uint128_1338

                /// @src 109:507:508  "y"
                let _1339 := var_y_19793
                let expr_19798 := _1339
                /// @src 109:511:512  "0"
                let expr_19799 := 0x00
                /// @src 109:507:512  "y < 0"
                let expr_19800 := slt(cleanup_t_int128(expr_19798), convert_t_rational_0_by_1_to_t_int128(expr_19799))
                /// @src 109:503:650  "if (y < 0) {..."
                switch expr_19800
                case 0 {
                    /// @src 109:612:613  "x"
                    let _1340 := var_x_19791
                    let expr_19820 := _1340
                    /// @src 109:624:625  "y"
                    let _1341 := var_y_19793
                    let expr_19823 := _1341
                    /// @src 109:616:626  "uint128(y)"
                    let expr_19824 := convert_t_int128_to_t_uint128(expr_19823)
                    /// @src 109:612:626  "x + uint128(y)"
                    let expr_19825 := checked_add_t_uint128(expr_19820, expr_19824)

                    /// @src 109:608:626  "z = x + uint128(y)"
                    var_z_19796 := expr_19825
                    let expr_19826 := expr_19825
                    /// @src 109:607:627  "(z = x + uint128(y))"
                    let expr_19827 := expr_19826
                    /// @src 109:631:632  "x"
                    let _1342 := var_x_19791
                    let expr_19828 := _1342
                    /// @src 109:607:632  "(z = x + uint128(y)) >= x"
                    let expr_19829 := iszero(lt(cleanup_t_uint128(expr_19827), cleanup_t_uint128(expr_19828)))
                    /// @src 109:599:639  "require((z = x + uint128(y)) >= x, 'LA')"
                    require_helper_t_stringliteral_ce8fc98a1432efc8ba166615239eb1702fbbbd0ddab9a5952502a98483035383(expr_19829)
                    /// @src 109:503:650  "if (y < 0) {..."
                }
                default {
                    /// @src 109:541:542  "x"
                    let _1343 := var_x_19791
                    let expr_19803 := _1343
                    /// @src 109:554:555  "y"
                    let _1344 := var_y_19793
                    let expr_19806 := _1344
                    /// @src 109:553:555  "-y"
                    let expr_19807 := negate_t_int128(expr_19806)
                    /// @src 109:545:556  "uint128(-y)"
                    let expr_19808 := convert_t_int128_to_t_uint128(expr_19807)
                    /// @src 109:541:556  "x - uint128(-y)"
                    let expr_19809 := checked_sub_t_uint128(expr_19803, expr_19808)

                    /// @src 109:537:556  "z = x - uint128(-y)"
                    var_z_19796 := expr_19809
                    let expr_19810 := expr_19809
                    /// @src 109:536:557  "(z = x - uint128(-y))"
                    let expr_19811 := expr_19810
                    /// @src 109:560:561  "x"
                    let _1345 := var_x_19791
                    let expr_19812 := _1345
                    /// @src 109:536:561  "(z = x - uint128(-y)) < x"
                    let expr_19813 := lt(cleanup_t_uint128(expr_19811), cleanup_t_uint128(expr_19812))
                    /// @src 109:528:568  "require((z = x - uint128(-y)) < x, 'LS')"
                    require_helper_t_stringliteral_2be2231ccd52e7fedf30c30a3dfa3d6c9d9d3400159e305398a7b6d437f56985(expr_19813)
                    /// @src 109:503:650  "if (y < 0) {..."
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function zero_value_for_split_t_uint16() -> ret {
                ret := 0
            }

            function convert_t_rational_1_by_1_to_t_uint16(value) -> converted {
                converted := cleanup_t_uint16(identity(cleanup_t_rational_1_by_1(value)))
            }

            function checked_sub_t_uint16(x, y) -> diff {
                x := cleanup_t_uint16(x)
                y := cleanup_t_uint16(y)
                diff := sub(x, y)

                if gt(diff, 0xffff) { panic_error_0x11() }

            }

            function checked_add_t_uint16(x, y) -> sum {
                x := cleanup_t_uint16(x)
                y := cleanup_t_uint16(y)
                sum := add(x, y)

                if gt(sum, 0xffff) { panic_error_0x11() }

            }

            function mod_t_uint16(x, y) -> r {
                x := cleanup_t_uint16(x)
                y := cleanup_t_uint16(y)
                if iszero(y) { panic_error_0x12() }
                r := mod(x, y)
            }

            function update_byte_slice_4_shift_0(value, toInsert) -> result {
                let mask := 0xffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_0_t_uint32_to_t_uint32(slot, value_0) {
                let convertedValue_0 := convert_t_uint32_to_t_uint32(value_0)
                sstore(slot, update_byte_slice_4_shift_0(sload(slot), prepare_store_t_uint32(convertedValue_0)))
            }

            function shift_left_32(value) -> newValue {
                newValue :=

                shl(32, value)

            }

            function update_byte_slice_7_shift_4(value, toInsert) -> result {
                let mask := 0xffffffffffffff00000000
                toInsert := shift_left_32(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_4_t_int56_to_t_int56(slot, value_0) {
                let convertedValue_0 := convert_t_int56_to_t_int56(value_0)
                sstore(slot, update_byte_slice_7_shift_4(sload(slot), prepare_store_t_int56(convertedValue_0)))
            }

            function shift_left_88(value) -> newValue {
                newValue :=

                shl(88, value)

            }

            function update_byte_slice_20_shift_11(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff0000000000000000000000
                toInsert := shift_left_88(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_11_t_uint160_to_t_uint160(slot, value_0) {
                let convertedValue_0 := convert_t_uint160_to_t_uint160(value_0)
                sstore(slot, update_byte_slice_20_shift_11(sload(slot), prepare_store_t_uint160(convertedValue_0)))
            }

            function shift_left_248(value) -> newValue {
                newValue :=

                shl(248, value)

            }

            function update_byte_slice_1_shift_31(value, toInsert) -> result {
                let mask := 0xff00000000000000000000000000000000000000000000000000000000000000
                toInsert := shift_left_248(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_31_t_bool_to_t_bool(slot, value_0) {
                let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
                sstore(slot, update_byte_slice_1_shift_31(sload(slot), prepare_store_t_bool(convertedValue_0)))
            }

            function copy_struct_to_storage_from_t_struct$_Observation_$19979_memory_ptr_to_t_struct$_Observation_$19979_storage(slot, value) {

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 0)

                    let memberValue_0 := read_from_memoryt_uint32(memberSrcPtr)

                    update_storage_value_offset_0_t_uint32_to_t_uint32(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 32)

                    let memberValue_0 := read_from_memoryt_int56(memberSrcPtr)

                    update_storage_value_offset_4_t_int56_to_t_int56(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 64)

                    let memberValue_0 := read_from_memoryt_uint160(memberSrcPtr)

                    update_storage_value_offset_11_t_uint160_to_t_uint160(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 96)

                    let memberValue_0 := read_from_memoryt_bool(memberSrcPtr)

                    update_storage_value_offset_31_t_bool_to_t_bool(memberSlot, memberValue_0)

                }

            }

            function update_storage_value_t_struct$_Observation_$19979_memory_ptr_to_t_struct$_Observation_$19979_storage(slot, offset, value_0) {
                if offset { panic_error_0x00() }
                copy_struct_to_storage_from_t_struct$_Observation_$19979_memory_ptr_to_t_struct$_Observation_$19979_storage(slot, value_0)
            }

            /// @ast-id 20156
            /// @src 111:4484:5386  "function write(..."
            function fun_write_20156(var_self_20079_slot, var_index_20081, var_blockTimestamp_20083, var_tick_20085, var_liquidity_20087, var_cardinality_20089, var_cardinalityNext_20091) -> var_indexUpdated_20094, var_cardinalityUpdated_20096 {
                /// @src 111:4724:4743  "uint16 indexUpdated"
                let zero_t_uint16_1346 := zero_value_for_split_t_uint16()
                var_indexUpdated_20094 := zero_t_uint16_1346
                /// @src 111:4745:4770  "uint16 cardinalityUpdated"
                let zero_t_uint16_1347 := zero_value_for_split_t_uint16()
                var_cardinalityUpdated_20096 := zero_t_uint16_1347

                /// @src 111:4808:4812  "self"
                let _1348_slot := var_self_20079_slot
                let expr_20101_slot := _1348_slot
                /// @src 111:4813:4818  "index"
                let _1349 := var_index_20081
                let expr_20102 := _1349
                /// @src 111:4808:4819  "self[index]"

                let _1350, _1351 := storage_array_index_access_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_20101_slot, expr_20102)
                let _1352_slot := _1350
                let expr_20103_slot := _1352_slot
                /// @src 111:4782:4819  "Observation memory last = self[index]"
                let var_last_20100_mpos := convert_t_struct$_Observation_$19979_storage_to_t_struct$_Observation_$19979_memory_ptr(expr_20103_slot)
                /// @src 111:4909:4913  "last"
                let _1353_mpos := var_last_20100_mpos
                let expr_20105_mpos := _1353_mpos
                /// @src 111:4909:4928  "last.blockTimestamp"
                let _1354 := add(expr_20105_mpos, 0)
                let _1355 := read_from_memoryt_uint32(_1354)
                let expr_20106 := _1355
                /// @src 111:4932:4946  "blockTimestamp"
                let _1356 := var_blockTimestamp_20083
                let expr_20107 := _1356
                /// @src 111:4909:4946  "last.blockTimestamp == blockTimestamp"
                let expr_20108 := eq(cleanup_t_uint32(expr_20106), cleanup_t_uint32(expr_20107))
                /// @src 111:4905:4975  "if (last.blockTimestamp == blockTimestamp) return (index, cardinality)"
                if expr_20108 {
                    /// @src 111:4956:4961  "index"
                    let _1357 := var_index_20081
                    let expr_20109 := _1357
                    /// @src 111:4955:4975  "(index, cardinality)"
                    let expr_20111_component_1 := expr_20109
                    /// @src 111:4963:4974  "cardinality"
                    let _1358 := var_cardinality_20089
                    let expr_20110 := _1358
                    /// @src 111:4955:4975  "(index, cardinality)"
                    let expr_20111_component_2 := expr_20110
                    /// @src 111:4948:4975  "return (index, cardinality)"
                    var_indexUpdated_20094 := expr_20111_component_1
                    var_cardinalityUpdated_20096 := expr_20111_component_2
                    leave
                    /// @src 111:4905:4975  "if (last.blockTimestamp == blockTimestamp) return (index, cardinality)"
                }
                /// @src 111:5058:5073  "cardinalityNext"
                let _1359 := var_cardinalityNext_20091
                let expr_20114 := _1359
                /// @src 111:5076:5087  "cardinality"
                let _1360 := var_cardinality_20089
                let expr_20115 := _1360
                /// @src 111:5058:5087  "cardinalityNext > cardinality"
                let expr_20116 := gt(cleanup_t_uint16(expr_20114), cleanup_t_uint16(expr_20115))
                /// @src 111:5058:5117  "cardinalityNext > cardinality && index == (cardinality - 1)"
                let expr_20123 := expr_20116
                if expr_20123 {
                    /// @src 111:5091:5096  "index"
                    let _1361 := var_index_20081
                    let expr_20117 := _1361
                    /// @src 111:5101:5112  "cardinality"
                    let _1362 := var_cardinality_20089
                    let expr_20118 := _1362
                    /// @src 111:5115:5116  "1"
                    let expr_20119 := 0x01
                    /// @src 111:5101:5116  "cardinality - 1"
                    let expr_20120 := checked_sub_t_uint16(expr_20118, convert_t_rational_1_by_1_to_t_uint16(expr_20119))

                    /// @src 111:5100:5117  "(cardinality - 1)"
                    let expr_20121 := expr_20120
                    /// @src 111:5091:5117  "index == (cardinality - 1)"
                    let expr_20122 := eq(cleanup_t_uint16(expr_20117), cleanup_t_uint16(expr_20121))
                    /// @src 111:5058:5117  "cardinalityNext > cardinality && index == (cardinality - 1)"
                    expr_20123 := expr_20122
                }
                /// @src 111:5054:5243  "if (cardinalityNext > cardinality && index == (cardinality - 1)) {..."
                switch expr_20123
                case 0 {
                    /// @src 111:5221:5232  "cardinality"
                    let _1363 := var_cardinality_20089
                    let expr_20130 := _1363
                    /// @src 111:5200:5232  "cardinalityUpdated = cardinality"
                    var_cardinalityUpdated_20096 := expr_20130
                    let expr_20131 := expr_20130
                    /// @src 111:5054:5243  "if (cardinalityNext > cardinality && index == (cardinality - 1)) {..."
                }
                default {
                    /// @src 111:5154:5169  "cardinalityNext"
                    let _1364 := var_cardinalityNext_20091
                    let expr_20125 := _1364
                    /// @src 111:5133:5169  "cardinalityUpdated = cardinalityNext"
                    var_cardinalityUpdated_20096 := expr_20125
                    let expr_20126 := expr_20125
                    /// @src 111:5054:5243  "if (cardinalityNext > cardinality && index == (cardinality - 1)) {..."
                }
                /// @src 111:5269:5274  "index"
                let _1365 := var_index_20081
                let expr_20136 := _1365
                /// @src 111:5277:5278  "1"
                let expr_20137 := 0x01
                /// @src 111:5269:5278  "index + 1"
                let expr_20138 := checked_add_t_uint16(expr_20136, convert_t_rational_1_by_1_to_t_uint16(expr_20137))

                /// @src 111:5268:5279  "(index + 1)"
                let expr_20139 := expr_20138
                /// @src 111:5282:5300  "cardinalityUpdated"
                let _1366 := var_cardinalityUpdated_20096
                let expr_20140 := _1366
                /// @src 111:5268:5300  "(index + 1) % cardinalityUpdated"
                let expr_20141 := mod_t_uint16(expr_20139, expr_20140)

                /// @src 111:5253:5300  "indexUpdated = (index + 1) % cardinalityUpdated"
                var_indexUpdated_20094 := expr_20141
                let expr_20142 := expr_20141
                /// @src 111:5341:5345  "last"
                let _1367_mpos := var_last_20100_mpos
                let expr_20148_mpos := _1367_mpos
                /// @src 111:5347:5361  "blockTimestamp"
                let _1368 := var_blockTimestamp_20083
                let expr_20149 := _1368
                /// @src 111:5363:5367  "tick"
                let _1369 := var_tick_20085
                let expr_20150 := _1369
                /// @src 111:5369:5378  "liquidity"
                let _1370 := var_liquidity_20087
                let expr_20151 := _1370
                /// @src 111:5331:5379  "transform(last, blockTimestamp, tick, liquidity)"
                let expr_20152_mpos := fun_transform_20042(expr_20148_mpos, expr_20149, expr_20150, expr_20151)
                /// @src 111:5310:5314  "self"
                let _1371_slot := var_self_20079_slot
                let expr_20144_slot := _1371_slot
                /// @src 111:5315:5327  "indexUpdated"
                let _1372 := var_indexUpdated_20094
                let expr_20145 := _1372
                /// @src 111:5310:5328  "self[indexUpdated]"

                let _1373, _1374 := storage_array_index_access_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_20144_slot, expr_20145)
                /// @src 111:5310:5379  "self[indexUpdated] = transform(last, blockTimestamp, tick, liquidity)"
                update_storage_value_t_struct$_Observation_$19979_memory_ptr_to_t_struct$_Observation_$19979_storage(_1373, _1374, expr_20152_mpos)
                let _1375_slot := _1373
                let expr_20153_slot := _1375_slot

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

            }

            function array_allocation_size_t_bytes_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_bytes_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_value_for_split_t_bytes_memory_ptr() -> ret {
                ret := 96
            }

            function extract_returndata() -> data {

                switch returndatasize()
                case 0 {
                    data := zero_value_for_split_t_bytes_memory_ptr()
                }
                default {
                    data := allocate_memory_array_t_bytes_memory_ptr(returndatasize())
                    returndatacopy(add(data, 0x20), 0, returndatasize())
                }

            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function abi_decode_t_bool_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_bool(value)
            }

            function abi_decode_tuple_t_bool_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bool_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function store_literal_in_memory_cebb2b2e317200ffcf39e4291b6400d95f06e73adfd258bd495d227b7d846ff0(memPtr) {

                mstore(add(memPtr, 0), "TF")

            }

            function abi_encode_t_stringliteral_cebb2b2e317200ffcf39e4291b6400d95f06e73adfd258bd495d227b7d846ff0_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_cebb2b2e317200ffcf39e4291b6400d95f06e73adfd258bd495d227b7d846ff0(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_cebb2b2e317200ffcf39e4291b6400d95f06e73adfd258bd495d227b7d846ff0__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_cebb2b2e317200ffcf39e4291b6400d95f06e73adfd258bd495d227b7d846ff0_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_cebb2b2e317200ffcf39e4291b6400d95f06e73adfd258bd495d227b7d846ff0(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_cebb2b2e317200ffcf39e4291b6400d95f06e73adfd258bd495d227b7d846ff0__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 22542
            /// @src 119:639:967  "function safeTransfer(..."
            function fun_safeTransfer_22542(var_token_22499, var_to_22501, var_value_22503) {

                /// @src 119:800:805  "token"
                let _1376 := var_token_22499
                let expr_22510 := _1376
                /// @src 119:800:810  "token.call"
                let expr_22511_address := expr_22510
                /// @src 119:834:865  "IERC20Minimal.transfer.selector"
                let expr_22516 := 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                /// @src 119:867:869  "to"
                let _1377 := var_to_22501
                let expr_22517 := _1377
                /// @src 119:871:876  "value"
                let _1378 := var_value_22503
                let expr_22518 := _1378
                /// @src 119:811:877  "abi.encodeWithSelector(IERC20Minimal.transfer.selector, to, value)"

                let expr_22519_mpos := allocate_unbounded()
                let _1379 := add(expr_22519_mpos, 0x20)

                mstore(_1379, expr_22516)
                _1379 := add(_1379, 4)

                let _1380 := abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(_1379, expr_22517, expr_22518)
                mstore(expr_22519_mpos, sub(_1380, add(expr_22519_mpos, 0x20)))
                finalize_allocation(expr_22519_mpos, sub(_1380, expr_22519_mpos))
                /// @src 119:800:878  "token.call(abi.encodeWithSelector(IERC20Minimal.transfer.selector, to, value))"

                let _1381 := add(expr_22519_mpos, 0x20)
                let _1382 := mload(expr_22519_mpos)

                let expr_22520_component_1 := call(gas(), expr_22511_address,  0,  _1381, _1382, 0, 0)

                let expr_22520_component_2_mpos := extract_returndata()
                /// @src 119:752:878  "(bool success, bytes memory data) =..."
                let var_success_22507 := expr_22520_component_1
                let var_data_22509_mpos := expr_22520_component_2_mpos
                /// @src 119:896:903  "success"
                let _1383 := var_success_22507
                let expr_22523 := _1383
                /// @src 119:896:953  "success && (data.length == 0 || abi.decode(data, (bool)))"
                let expr_22537 := expr_22523
                if expr_22537 {
                    /// @src 119:908:912  "data"
                    let _1384_mpos := var_data_22509_mpos
                    let expr_22524_mpos := _1384_mpos
                    /// @src 119:908:919  "data.length"
                    let expr_22525 := array_length_t_bytes_memory_ptr(expr_22524_mpos)
                    /// @src 119:923:924  "0"
                    let expr_22526 := 0x00
                    /// @src 119:908:924  "data.length == 0"
                    let expr_22527 := eq(cleanup_t_uint256(expr_22525), convert_t_rational_0_by_1_to_t_uint256(expr_22526))
                    /// @src 119:908:952  "data.length == 0 || abi.decode(data, (bool))"
                    let expr_22535 := expr_22527
                    if iszero(expr_22535) {
                        /// @src 119:939:943  "data"
                        let _1385_mpos := var_data_22509_mpos
                        let expr_22530_mpos := _1385_mpos
                        /// @src 119:928:952  "abi.decode(data, (bool))"

                        let expr_22534 :=  abi_decode_tuple_t_bool_fromMemory(add(expr_22530_mpos, 32), add(add(expr_22530_mpos, 32), array_length_t_bytes_memory_ptr(expr_22530_mpos)))
                        /// @src 119:908:952  "data.length == 0 || abi.decode(data, (bool))"
                        expr_22535 := expr_22534
                    }
                    /// @src 119:907:953  "(data.length == 0 || abi.decode(data, (bool)))"
                    let expr_22536 := expr_22535
                    /// @src 119:896:953  "success && (data.length == 0 || abi.decode(data, (bool)))"
                    expr_22537 := expr_22536
                }
                /// @src 119:888:960  "require(success && (data.length == 0 || abi.decode(data, (bool))), 'TF')"
                require_helper_t_stringliteral_cebb2b2e317200ffcf39e4291b6400d95f06e73adfd258bd495d227b7d846ff0(expr_22537)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function convert_t_contract$_UniswapV3Pool_$8675_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_decode_t_uint256_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_t_uint256_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            /// @ast-id 6526
            /// @src 90:5856:6153  "function balance1() private view returns (uint256) {..."
            function fun_balance1_6526() -> var__6488 {
                /// @src 90:5898:5905  "uint256"
                let zero_t_uint256_1386 := zero_value_for_split_t_uint256()
                var__6488 := zero_t_uint256_1386

                /// @src 90:5965:5971  "token1"
                let _1387 := loadimmutable("6245")
                let expr_6494 := _1387
                /// @src 90:5965:5982  "token1.staticcall"
                let expr_6495_address := expr_6494
                /// @src 90:6006:6038  "IERC20Minimal.balanceOf.selector"
                let expr_6500 := 0x70a0823100000000000000000000000000000000000000000000000000000000
                /// @src 90:6048:6052  "this"
                let expr_6503_address := address()
                /// @src 90:6040:6053  "address(this)"
                let expr_6504 := convert_t_contract$_UniswapV3Pool_$8675_to_t_address(expr_6503_address)
                /// @src 90:5983:6054  "abi.encodeWithSelector(IERC20Minimal.balanceOf.selector, address(this))"

                let expr_6505_mpos := allocate_unbounded()
                let _1388 := add(expr_6505_mpos, 0x20)

                mstore(_1388, expr_6500)
                _1388 := add(_1388, 4)

                let _1389 := abi_encode_tuple_t_address__to_t_address__fromStack(_1388, expr_6504)
                mstore(expr_6505_mpos, sub(_1389, add(expr_6505_mpos, 0x20)))
                finalize_allocation(expr_6505_mpos, sub(_1389, expr_6505_mpos))
                /// @src 90:5965:6055  "token1.staticcall(abi.encodeWithSelector(IERC20Minimal.balanceOf.selector, address(this)))"

                let _1390 := add(expr_6505_mpos, 0x20)
                let _1391 := mload(expr_6505_mpos)

                let expr_6506_component_1 := staticcall(gas(), expr_6495_address,  _1390, _1391, 0, 0)

                let expr_6506_component_2_mpos := extract_returndata()
                /// @src 90:5917:6055  "(bool success, bytes memory data) =..."
                let var_success_6491 := expr_6506_component_1
                let var_data_6493_mpos := expr_6506_component_2_mpos
                /// @src 90:6073:6080  "success"
                let _1392 := var_success_6491
                let expr_6509 := _1392
                /// @src 90:6073:6101  "success && data.length >= 32"
                let expr_6514 := expr_6509
                if expr_6514 {
                    /// @src 90:6084:6088  "data"
                    let _1393_mpos := var_data_6493_mpos
                    let expr_6510_mpos := _1393_mpos
                    /// @src 90:6084:6095  "data.length"
                    let expr_6511 := array_length_t_bytes_memory_ptr(expr_6510_mpos)
                    /// @src 90:6099:6101  "32"
                    let expr_6512 := 0x20
                    /// @src 90:6084:6101  "data.length >= 32"
                    let expr_6513 := iszero(lt(cleanup_t_uint256(expr_6511), convert_t_rational_32_by_1_to_t_uint256(expr_6512)))
                    /// @src 90:6073:6101  "success && data.length >= 32"
                    expr_6514 := expr_6513
                }
                /// @src 90:6065:6102  "require(success && data.length >= 32)"
                require_helper(expr_6514)
                /// @src 90:6130:6134  "data"
                let _1394_mpos := var_data_6493_mpos
                let expr_6519_mpos := _1394_mpos
                /// @src 90:6119:6146  "abi.decode(data, (uint256))"

                let expr_6523 :=  abi_decode_tuple_t_uint256_fromMemory(add(expr_6519_mpos, 32), add(add(expr_6519_mpos, 32), array_length_t_bytes_memory_ptr(expr_6519_mpos)))
                /// @src 90:6112:6146  "return abi.decode(data, (uint256))"
                var__6488 := expr_6523
                leave

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 19862
            /// @src 110:472:583  "function add(uint256 x, uint256 y) internal pure returns (uint256 z) {..."
            function fun_add_19862(var_x_19843, var_y_19845) -> var_z_19848 {
                /// @src 110:530:539  "uint256 z"
                let zero_t_uint256_1395 := zero_value_for_split_t_uint256()
                var_z_19848 := zero_t_uint256_1395

                /// @src 110:564:565  "x"
                let _1396 := var_x_19843
                let expr_19852 := _1396
                /// @src 110:568:569  "y"
                let _1397 := var_y_19845
                let expr_19853 := _1397
                /// @src 110:564:569  "x + y"
                let expr_19854 := checked_add_t_uint256(expr_19852, expr_19853)

                /// @src 110:560:569  "z = x + y"
                var_z_19848 := expr_19854
                let expr_19855 := expr_19854
                /// @src 110:559:570  "(z = x + y)"
                let expr_19856 := expr_19855
                /// @src 110:574:575  "x"
                let _1398 := var_x_19843
                let expr_19857 := _1398
                /// @src 110:559:575  "(z = x + y) >= x"
                let expr_19858 := iszero(lt(cleanup_t_uint256(expr_19856), cleanup_t_uint256(expr_19857)))
                /// @src 110:551:576  "require((z = x + y) >= x)"
                require_helper(expr_19858)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 6484
            /// @src 90:5376:5673  "function balance0() private view returns (uint256) {..."
            function fun_balance0_6484() -> var__6446 {
                /// @src 90:5418:5425  "uint256"
                let zero_t_uint256_1399 := zero_value_for_split_t_uint256()
                var__6446 := zero_t_uint256_1399

                /// @src 90:5485:5491  "token0"
                let _1400 := loadimmutable("6241")
                let expr_6452 := _1400
                /// @src 90:5485:5502  "token0.staticcall"
                let expr_6453_address := expr_6452
                /// @src 90:5526:5558  "IERC20Minimal.balanceOf.selector"
                let expr_6458 := 0x70a0823100000000000000000000000000000000000000000000000000000000
                /// @src 90:5568:5572  "this"
                let expr_6461_address := address()
                /// @src 90:5560:5573  "address(this)"
                let expr_6462 := convert_t_contract$_UniswapV3Pool_$8675_to_t_address(expr_6461_address)
                /// @src 90:5503:5574  "abi.encodeWithSelector(IERC20Minimal.balanceOf.selector, address(this))"

                let expr_6463_mpos := allocate_unbounded()
                let _1401 := add(expr_6463_mpos, 0x20)

                mstore(_1401, expr_6458)
                _1401 := add(_1401, 4)

                let _1402 := abi_encode_tuple_t_address__to_t_address__fromStack(_1401, expr_6462)
                mstore(expr_6463_mpos, sub(_1402, add(expr_6463_mpos, 0x20)))
                finalize_allocation(expr_6463_mpos, sub(_1402, expr_6463_mpos))
                /// @src 90:5485:5575  "token0.staticcall(abi.encodeWithSelector(IERC20Minimal.balanceOf.selector, address(this)))"

                let _1403 := add(expr_6463_mpos, 0x20)
                let _1404 := mload(expr_6463_mpos)

                let expr_6464_component_1 := staticcall(gas(), expr_6453_address,  _1403, _1404, 0, 0)

                let expr_6464_component_2_mpos := extract_returndata()
                /// @src 90:5437:5575  "(bool success, bytes memory data) =..."
                let var_success_6449 := expr_6464_component_1
                let var_data_6451_mpos := expr_6464_component_2_mpos
                /// @src 90:5593:5600  "success"
                let _1405 := var_success_6449
                let expr_6467 := _1405
                /// @src 90:5593:5621  "success && data.length >= 32"
                let expr_6472 := expr_6467
                if expr_6472 {
                    /// @src 90:5604:5608  "data"
                    let _1406_mpos := var_data_6451_mpos
                    let expr_6468_mpos := _1406_mpos
                    /// @src 90:5604:5615  "data.length"
                    let expr_6469 := array_length_t_bytes_memory_ptr(expr_6468_mpos)
                    /// @src 90:5619:5621  "32"
                    let expr_6470 := 0x20
                    /// @src 90:5604:5621  "data.length >= 32"
                    let expr_6471 := iszero(lt(cleanup_t_uint256(expr_6469), convert_t_rational_32_by_1_to_t_uint256(expr_6470)))
                    /// @src 90:5593:5621  "success && data.length >= 32"
                    expr_6472 := expr_6471
                }
                /// @src 90:5585:5622  "require(success && data.length >= 32)"
                require_helper(expr_6472)
                /// @src 90:5650:5654  "data"
                let _1407_mpos := var_data_6451_mpos
                let expr_6477_mpos := _1407_mpos
                /// @src 90:5639:5666  "abi.decode(data, (uint256))"

                let expr_6481 :=  abi_decode_tuple_t_uint256_fromMemory(add(expr_6477_mpos, 32), add(add(expr_6477_mpos, 32), array_length_t_bytes_memory_ptr(expr_6477_mpos)))
                /// @src 90:5632:5666  "return abi.decode(data, (uint256))"
                var__6446 := expr_6481
                leave

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function store_literal_in_memory_8d61ecf6e15472e15b1a0f63cd77f62aa57e6edcd3871d7a841f1056fb42b216(memPtr) {

                mstore(add(memPtr, 0), "I")

            }

            function abi_encode_t_stringliteral_8d61ecf6e15472e15b1a0f63cd77f62aa57e6edcd3871d7a841f1056fb42b216_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 1)
                store_literal_in_memory_8d61ecf6e15472e15b1a0f63cd77f62aa57e6edcd3871d7a841f1056fb42b216(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_8d61ecf6e15472e15b1a0f63cd77f62aa57e6edcd3871d7a841f1056fb42b216__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_8d61ecf6e15472e15b1a0f63cd77f62aa57e6edcd3871d7a841f1056fb42b216_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_8d61ecf6e15472e15b1a0f63cd77f62aa57e6edcd3871d7a841f1056fb42b216(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_8d61ecf6e15472e15b1a0f63cd77f62aa57e6edcd3871d7a841f1056fb42b216__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function increment_wrapping_t_uint16(value) -> ret {
                ret := cleanup_t_uint16(add(value, 1))
            }

            function convert_t_rational_1_by_1_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(identity(cleanup_t_rational_1_by_1(value)))
            }

            /// @ast-id 20205
            /// @src 111:5765:6314  "function grow(..."
            function fun_grow_20205(var_self_20162_slot, var_current_20164, var_next_20166) -> var__20169 {
                /// @src 111:5889:5895  "uint16"
                let zero_t_uint16_1408 := zero_value_for_split_t_uint16()
                var__20169 := zero_t_uint16_1408

                /// @src 111:5915:5922  "current"
                let _1409 := var_current_20164
                let expr_20172 := _1409
                /// @src 111:5925:5926  "0"
                let expr_20173 := 0x00
                /// @src 111:5915:5926  "current > 0"
                let expr_20174 := gt(cleanup_t_uint16(expr_20172), convert_t_rational_0_by_1_to_t_uint16(expr_20173))
                /// @src 111:5907:5932  "require(current > 0, 'I')"
                require_helper_t_stringliteral_8d61ecf6e15472e15b1a0f63cd77f62aa57e6edcd3871d7a841f1056fb42b216(expr_20174)
                /// @src 111:6030:6034  "next"
                let _1410 := var_next_20166
                let expr_20178 := _1410
                /// @src 111:6038:6045  "current"
                let _1411 := var_current_20164
                let expr_20179 := _1411
                /// @src 111:6030:6045  "next <= current"
                let expr_20180 := iszero(gt(cleanup_t_uint16(expr_20178), cleanup_t_uint16(expr_20179)))
                /// @src 111:6026:6061  "if (next <= current) return current"
                if expr_20180 {
                    /// @src 111:6054:6061  "current"
                    let _1412 := var_current_20164
                    let expr_20181 := _1412
                    /// @src 111:6047:6061  "return current"
                    var__20169 := expr_20181
                    leave
                    /// @src 111:6026:6061  "if (next <= current) return current"
                }
                /// @src 111:6220:6286  "for (uint16 i = current; i < next; i++) self[i].blockTimestamp = 1"
                for {
                    /// @src 111:6236:6243  "current"
                    let _1413 := var_current_20164
                    let expr_20186 := _1413
                    /// @src 111:6225:6243  "uint16 i = current"
                    let var_i_20185 := expr_20186
                    } 1 {
                    /// @src 111:6255:6258  "i++"
                    let _1415 := var_i_20185
                    let _1414 := increment_wrapping_t_uint16(_1415)
                    var_i_20185 := _1414
                    let expr_20192 := _1415
                }
                {
                    /// @src 111:6245:6246  "i"
                    let _1416 := var_i_20185
                    let expr_20188 := _1416
                    /// @src 111:6249:6253  "next"
                    let _1417 := var_next_20166
                    let expr_20189 := _1417
                    /// @src 111:6245:6253  "i < next"
                    let expr_20190 := lt(cleanup_t_uint16(expr_20188), cleanup_t_uint16(expr_20189))
                    if iszero(expr_20190) { break }
                    /// @src 111:6285:6286  "1"
                    let expr_20198 := 0x01
                    /// @src 111:6260:6286  "self[i].blockTimestamp = 1"
                    let _1418 := convert_t_rational_1_by_1_to_t_uint32(expr_20198)
                    /// @src 111:6260:6264  "self"
                    let _1419_slot := var_self_20162_slot
                    let expr_20194_slot := _1419_slot
                    /// @src 111:6265:6266  "i"
                    let _1420 := var_i_20185
                    let expr_20195 := _1420
                    /// @src 111:6260:6267  "self[i]"

                    let _1421, _1422 := storage_array_index_access_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_20194_slot, expr_20195)
                    let _1423_slot := _1421
                    let expr_20196_slot := _1423_slot
                    /// @src 111:6260:6282  "self[i].blockTimestamp"
                    let _1424 := add(expr_20196_slot, 0)
                    /// @src 111:6260:6286  "self[i].blockTimestamp = 1"
                    update_storage_value_offset_0_t_uint32_to_t_uint32(_1424, _1418)
                    let expr_20199 := _1418
                }
                /// @src 111:6303:6307  "next"
                let _1425 := var_next_20166
                let expr_20202 := _1425
                /// @src 111:6296:6307  "return next"
                var__20169 := expr_20202
                leave

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function convert_t_int256_to_t_int128(value) -> converted {
                converted := cleanup_t_int128(identity(cleanup_t_int256(value)))
            }

            function convert_t_int128_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_int128(value)))
            }

            /// @ast-id 20959
            /// @src 113:689:796  "function toInt128(int256 y) internal pure returns (int128 z) {..."
            function fun_toInt128_20959(var_y_20941) -> var_z_20944 {
                /// @src 113:740:748  "int128 z"
                let zero_t_int128_1426 := zero_value_for_split_t_int128()
                var_z_20944 := zero_t_int128_1426

                /// @src 113:780:781  "y"
                let _1427 := var_y_20941
                let expr_20950 := _1427
                /// @src 113:773:782  "int128(y)"
                let expr_20951 := convert_t_int256_to_t_int128(expr_20950)
                /// @src 113:769:782  "z = int128(y)"
                var_z_20944 := expr_20951
                let expr_20952 := expr_20951
                /// @src 113:768:783  "(z = int128(y))"
                let expr_20953 := expr_20952
                /// @src 113:787:788  "y"
                let _1428 := var_y_20941
                let expr_20954 := _1428
                /// @src 113:768:788  "(z = int128(y)) == y"
                let expr_20955 := eq(convert_t_int128_to_t_int256(expr_20953), cleanup_t_int256(expr_20954))
                /// @src 113:760:789  "require((z = int128(y)) == y)"
                require_helper(expr_20955)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 6166
            /// @src 88:1037:1113  "modifier noDelegateCall() {..."
            function modifier_noDelegateCall_6848(var_position_6851_slot, var_amount0_6853, var_amount1_6855, var_params_6845_mpos) -> _1431, _1432, _1433 {
                _1431 := var_position_6851_slot
                _1432 := var_amount0_6853
                _1433 := var_amount1_6855

                fun_checkNotDelegateCall_6158()
                /// @src 88:1105:1106  "_"
                _1431, _1432, _1433 := fun__modifyPosition_7007_inner(var_position_6851_slot, var_amount0_6853, var_amount1_6855, var_params_6845_mpos)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function read_from_memoryt_address(ptr) -> returnValue {

                let value := cleanup_t_address(mload(ptr))

                returnValue :=

                value

            }

            function read_from_memoryt_int128(ptr) -> returnValue {

                let value := cleanup_t_int128(mload(ptr))

                returnValue :=

                value

            }

            /// @src 90:11794:14607  "function _modifyPosition(ModifyPositionParams memory params)..."
            function fun__modifyPosition_7007_inner(_1434, _1435, _1436, var_params_6845_mpos) -> var_position_6851_slot, var_amount0_6853, var_amount1_6855 {
                var_position_6851_slot := _1434
                var_amount0_6853 := _1435
                var_amount1_6855 := _1436

                /// @src 90:12046:12052  "params"
                let _1437_mpos := var_params_6845_mpos
                let expr_6858_mpos := _1437_mpos
                /// @src 90:12046:12062  "params.tickLower"
                let _1438 := add(expr_6858_mpos, 32)
                let _1439 := read_from_memoryt_int24(_1438)
                let expr_6859 := _1439
                /// @src 90:12064:12070  "params"
                let _1440_mpos := var_params_6845_mpos
                let expr_6860_mpos := _1440_mpos
                /// @src 90:12064:12080  "params.tickUpper"
                let _1441 := add(expr_6860_mpos, 64)
                let _1442 := read_from_memoryt_int24(_1441)
                let expr_6861 := _1442
                fun_checkTicks_6429(expr_6859, expr_6861)
                /// @src 90:12114:12119  "slot0"
                let _1443_slot := 0x00
                let expr_6867_slot := _1443_slot
                /// @src 90:12092:12119  "Slot0 memory _slot0 = slot0"
                let var__slot0_6866_mpos := convert_t_struct$_Slot0_$6272_storage_to_t_struct$_Slot0_$6272_memory_ptr(expr_6867_slot)
                /// @src 90:12200:12206  "params"
                let _1444_mpos := var_params_6845_mpos
                let expr_6871_mpos := _1444_mpos
                /// @src 90:12200:12212  "params.owner"
                let _1445 := add(expr_6871_mpos, 0)
                let _1446 := read_from_memoryt_address(_1445)
                let expr_6872 := _1446
                /// @src 90:12226:12232  "params"
                let _1447_mpos := var_params_6845_mpos
                let expr_6873_mpos := _1447_mpos
                /// @src 90:12226:12242  "params.tickLower"
                let _1448 := add(expr_6873_mpos, 32)
                let _1449 := read_from_memoryt_int24(_1448)
                let expr_6874 := _1449
                /// @src 90:12256:12262  "params"
                let _1450_mpos := var_params_6845_mpos
                let expr_6875_mpos := _1450_mpos
                /// @src 90:12256:12272  "params.tickUpper"
                let _1451 := add(expr_6875_mpos, 64)
                let _1452 := read_from_memoryt_int24(_1451)
                let expr_6876 := _1452
                /// @src 90:12286:12292  "params"
                let _1453_mpos := var_params_6845_mpos
                let expr_6877_mpos := _1453_mpos
                /// @src 90:12286:12307  "params.liquidityDelta"
                let _1454 := add(expr_6877_mpos, 96)
                let _1455 := read_from_memoryt_int128(_1454)
                let expr_6878 := _1455
                /// @src 90:12321:12327  "_slot0"
                let _1456_mpos := var__slot0_6866_mpos
                let expr_6879_mpos := _1456_mpos
                /// @src 90:12321:12332  "_slot0.tick"
                let _1457 := add(expr_6879_mpos, 32)
                let _1458 := read_from_memoryt_int24(_1457)
                let expr_6880 := _1458
                /// @src 90:12171:12342  "_updatePosition(..."
                let expr_6881_slot := fun__updatePosition_7171(expr_6872, expr_6874, expr_6876, expr_6878, expr_6880)
                /// @src 90:12160:12342  "position = _updatePosition(..."
                var_position_6851_slot := expr_6881_slot
                let _1459_slot := var_position_6851_slot
                let expr_6882_slot := _1459_slot
                /// @src 90:12357:12363  "params"
                let _1460_mpos := var_params_6845_mpos
                let expr_6884_mpos := _1460_mpos
                /// @src 90:12357:12378  "params.liquidityDelta"
                let _1461 := add(expr_6884_mpos, 96)
                let _1462 := read_from_memoryt_int128(_1461)
                let expr_6885 := _1462
                /// @src 90:12382:12383  "0"
                let expr_6886 := 0x00
                /// @src 90:12357:12383  "params.liquidityDelta != 0"
                let expr_6887 := iszero(eq(cleanup_t_int128(expr_6885), convert_t_rational_0_by_1_to_t_int128(expr_6886)))
                /// @src 90:12353:14601  "if (params.liquidityDelta != 0) {..."
                if expr_6887 {
                    /// @src 90:12403:12409  "_slot0"
                    let _1463_mpos := var__slot0_6866_mpos
                    let expr_6888_mpos := _1463_mpos
                    /// @src 90:12403:12414  "_slot0.tick"
                    let _1464 := add(expr_6888_mpos, 32)
                    let _1465 := read_from_memoryt_int24(_1464)
                    let expr_6889 := _1465
                    /// @src 90:12417:12423  "params"
                    let _1466_mpos := var_params_6845_mpos
                    let expr_6890_mpos := _1466_mpos
                    /// @src 90:12417:12433  "params.tickLower"
                    let _1467 := add(expr_6890_mpos, 32)
                    let _1468 := read_from_memoryt_int24(_1467)
                    let expr_6891 := _1468
                    /// @src 90:12403:12433  "_slot0.tick < params.tickLower"
                    let expr_6892 := slt(cleanup_t_int24(expr_6889), cleanup_t_int24(expr_6891))
                    /// @src 90:12399:14591  "if (_slot0.tick < params.tickLower) {..."
                    switch expr_6892
                    case 0 {
                        /// @src 90:12941:12947  "_slot0"
                        let _1469_mpos := var__slot0_6866_mpos
                        let expr_6912_mpos := _1469_mpos
                        /// @src 90:12941:12952  "_slot0.tick"
                        let _1470 := add(expr_6912_mpos, 32)
                        let _1471 := read_from_memoryt_int24(_1470)
                        let expr_6913 := _1471
                        /// @src 90:12955:12961  "params"
                        let _1472_mpos := var_params_6845_mpos
                        let expr_6914_mpos := _1472_mpos
                        /// @src 90:12955:12971  "params.tickUpper"
                        let _1473 := add(expr_6914_mpos, 64)
                        let _1474 := read_from_memoryt_int24(_1473)
                        let expr_6915 := _1474
                        /// @src 90:12941:12971  "_slot0.tick < params.tickUpper"
                        let expr_6916 := slt(cleanup_t_int24(expr_6913), cleanup_t_int24(expr_6915))
                        /// @src 90:12937:14591  "if (_slot0.tick < params.tickUpper) {..."
                        switch expr_6916
                        case 0 {
                            /// @src 90:14352:14365  "SqrtPriceMath"
                            let expr_6984_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol:SqrtPriceMath")
                            /// @src 90:14403:14411  "TickMath"
                            let expr_6986_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                            /// @src 90:14431:14437  "params"
                            let _1475_mpos := var_params_6845_mpos
                            let expr_6988_mpos := _1475_mpos
                            /// @src 90:14431:14447  "params.tickLower"
                            let _1476 := add(expr_6988_mpos, 32)
                            let _1477 := read_from_memoryt_int24(_1476)
                            let expr_6989 := _1477
                            /// @src 90:14403:14448  "TickMath.getSqrtRatioAtTick(params.tickLower)"
                            let expr_6990 := fun_getSqrtRatioAtTick_5493(expr_6989)
                            /// @src 90:14470:14478  "TickMath"
                            let expr_6991_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                            /// @src 90:14498:14504  "params"
                            let _1478_mpos := var_params_6845_mpos
                            let expr_6993_mpos := _1478_mpos
                            /// @src 90:14498:14514  "params.tickUpper"
                            let _1479 := add(expr_6993_mpos, 64)
                            let _1480 := read_from_memoryt_int24(_1479)
                            let expr_6994 := _1480
                            /// @src 90:14470:14515  "TickMath.getSqrtRatioAtTick(params.tickUpper)"
                            let expr_6995 := fun_getSqrtRatioAtTick_5493(expr_6994)
                            /// @src 90:14537:14543  "params"
                            let _1481_mpos := var_params_6845_mpos
                            let expr_6996_mpos := _1481_mpos
                            /// @src 90:14537:14558  "params.liquidityDelta"
                            let _1482 := add(expr_6996_mpos, 96)
                            let _1483 := read_from_memoryt_int128(_1482)
                            let expr_6997 := _1483
                            /// @src 90:14352:14576  "SqrtPriceMath.getAmount1Delta(..."
                            let expr_6998 := fun_getAmount1Delta_21499(expr_6990, expr_6995, expr_6997)
                            /// @src 90:14342:14576  "amount1 = SqrtPriceMath.getAmount1Delta(..."
                            var_amount1_6855 := expr_6998
                            let expr_6999 := expr_6998
                            /// @src 90:12937:14591  "if (_slot0.tick < params.tickUpper) {..."
                        }
                        default {
                            /// @src 90:13076:13085  "liquidity"
                            let _1484 := read_from_storage_split_offset_0_t_uint128(0x04)
                            let expr_6919 := _1484
                            /// @src 90:13050:13085  "uint128 liquidityBefore = liquidity"
                            let var_liquidityBefore_6918 := expr_6919
                            /// @src 90:13232:13244  "observations"
                            let _1485_slot := 0x08
                            let expr_6927_slot := _1485_slot
                            /// @src 90:13232:13250  "observations.write"
                            let expr_6928_self_slot := convert_array_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_to_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_6927_slot)
                            /// @src 90:13272:13278  "_slot0"
                            let _1486_mpos := var__slot0_6866_mpos
                            let expr_6929_mpos := _1486_mpos
                            /// @src 90:13272:13295  "_slot0.observationIndex"
                            let _1487 := add(expr_6929_mpos, 64)
                            let _1488 := read_from_memoryt_uint16(_1487)
                            let expr_6930 := _1488
                            /// @src 90:13317:13334  "_blockTimestamp()"
                            let expr_6932 := fun__blockTimestamp_6442()
                            /// @src 90:13356:13362  "_slot0"
                            let _1489_mpos := var__slot0_6866_mpos
                            let expr_6933_mpos := _1489_mpos
                            /// @src 90:13356:13367  "_slot0.tick"
                            let _1490 := add(expr_6933_mpos, 32)
                            let _1491 := read_from_memoryt_int24(_1490)
                            let expr_6934 := _1491
                            /// @src 90:13389:13404  "liquidityBefore"
                            let _1492 := var_liquidityBefore_6918
                            let expr_6935 := _1492
                            /// @src 90:13426:13432  "_slot0"
                            let _1493_mpos := var__slot0_6866_mpos
                            let expr_6936_mpos := _1493_mpos
                            /// @src 90:13426:13455  "_slot0.observationCardinality"
                            let _1494 := add(expr_6936_mpos, 96)
                            let _1495 := read_from_memoryt_uint16(_1494)
                            let expr_6937 := _1495
                            /// @src 90:13477:13483  "_slot0"
                            let _1496_mpos := var__slot0_6866_mpos
                            let expr_6938_mpos := _1496_mpos
                            /// @src 90:13477:13510  "_slot0.observationCardinalityNext"
                            let _1497 := add(expr_6938_mpos, 128)
                            let _1498 := read_from_memoryt_uint16(_1497)
                            let expr_6939 := _1498
                            /// @src 90:13232:13528  "observations.write(..."
                            let expr_6940_component_1, expr_6940_component_2 := fun_write_20156(expr_6928_self_slot, expr_6930, expr_6932, expr_6934, expr_6935, expr_6937, expr_6939)
                            /// @src 90:13176:13181  "slot0"
                            let _1499_slot := 0x00
                            let expr_6921_slot := _1499_slot
                            /// @src 90:13176:13198  "slot0.observationIndex"
                            let _1500 := add(expr_6921_slot, 0)
                            /// @src 90:13200:13205  "slot0"
                            let _1501_slot := 0x00
                            let expr_6924_slot := _1501_slot
                            /// @src 90:13200:13228  "slot0.observationCardinality"
                            let _1502 := add(expr_6924_slot, 0)
                            /// @src 90:13175:13528  "(slot0.observationIndex, slot0.observationCardinality) = observations.write(..."
                            update_storage_value_offset_25_t_uint16_to_t_uint16(_1502, expr_6940_component_2)
                            update_storage_value_offset_23_t_uint16_to_t_uint16(_1500, expr_6940_component_1)
                            /// @src 90:13557:13570  "SqrtPriceMath"
                            let expr_6944_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol:SqrtPriceMath")
                            /// @src 90:13608:13614  "_slot0"
                            let _1503_mpos := var__slot0_6866_mpos
                            let expr_6946_mpos := _1503_mpos
                            /// @src 90:13608:13627  "_slot0.sqrtPriceX96"
                            let _1504 := add(expr_6946_mpos, 0)
                            let _1505 := read_from_memoryt_uint160(_1504)
                            let expr_6947 := _1505
                            /// @src 90:13649:13657  "TickMath"
                            let expr_6948_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                            /// @src 90:13677:13683  "params"
                            let _1506_mpos := var_params_6845_mpos
                            let expr_6950_mpos := _1506_mpos
                            /// @src 90:13677:13693  "params.tickUpper"
                            let _1507 := add(expr_6950_mpos, 64)
                            let _1508 := read_from_memoryt_int24(_1507)
                            let expr_6951 := _1508
                            /// @src 90:13649:13694  "TickMath.getSqrtRatioAtTick(params.tickUpper)"
                            let expr_6952 := fun_getSqrtRatioAtTick_5493(expr_6951)
                            /// @src 90:13716:13722  "params"
                            let _1509_mpos := var_params_6845_mpos
                            let expr_6953_mpos := _1509_mpos
                            /// @src 90:13716:13737  "params.liquidityDelta"
                            let _1510 := add(expr_6953_mpos, 96)
                            let _1511 := read_from_memoryt_int128(_1510)
                            let expr_6954 := _1511
                            /// @src 90:13557:13755  "SqrtPriceMath.getAmount0Delta(..."
                            let expr_6955 := fun_getAmount0Delta_21457(expr_6947, expr_6952, expr_6954)
                            /// @src 90:13547:13755  "amount0 = SqrtPriceMath.getAmount0Delta(..."
                            var_amount0_6853 := expr_6955
                            let expr_6956 := expr_6955
                            /// @src 90:13783:13796  "SqrtPriceMath"
                            let expr_6959_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol:SqrtPriceMath")
                            /// @src 90:13834:13842  "TickMath"
                            let expr_6961_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                            /// @src 90:13862:13868  "params"
                            let _1512_mpos := var_params_6845_mpos
                            let expr_6963_mpos := _1512_mpos
                            /// @src 90:13862:13878  "params.tickLower"
                            let _1513 := add(expr_6963_mpos, 32)
                            let _1514 := read_from_memoryt_int24(_1513)
                            let expr_6964 := _1514
                            /// @src 90:13834:13879  "TickMath.getSqrtRatioAtTick(params.tickLower)"
                            let expr_6965 := fun_getSqrtRatioAtTick_5493(expr_6964)
                            /// @src 90:13901:13907  "_slot0"
                            let _1515_mpos := var__slot0_6866_mpos
                            let expr_6966_mpos := _1515_mpos
                            /// @src 90:13901:13920  "_slot0.sqrtPriceX96"
                            let _1516 := add(expr_6966_mpos, 0)
                            let _1517 := read_from_memoryt_uint160(_1516)
                            let expr_6967 := _1517
                            /// @src 90:13942:13948  "params"
                            let _1518_mpos := var_params_6845_mpos
                            let expr_6968_mpos := _1518_mpos
                            /// @src 90:13942:13963  "params.liquidityDelta"
                            let _1519 := add(expr_6968_mpos, 96)
                            let _1520 := read_from_memoryt_int128(_1519)
                            let expr_6969 := _1520
                            /// @src 90:13783:13981  "SqrtPriceMath.getAmount1Delta(..."
                            let expr_6970 := fun_getAmount1Delta_21499(expr_6965, expr_6967, expr_6969)
                            /// @src 90:13773:13981  "amount1 = SqrtPriceMath.getAmount1Delta(..."
                            var_amount1_6855 := expr_6970
                            let expr_6971 := expr_6970
                            /// @src 90:14012:14025  "LiquidityMath"
                            let expr_6974_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/LiquidityMath.sol:LiquidityMath")
                            /// @src 90:14035:14050  "liquidityBefore"
                            let _1521 := var_liquidityBefore_6918
                            let expr_6976 := _1521
                            /// @src 90:14052:14058  "params"
                            let _1522_mpos := var_params_6845_mpos
                            let expr_6977_mpos := _1522_mpos
                            /// @src 90:14052:14073  "params.liquidityDelta"
                            let _1523 := add(expr_6977_mpos, 96)
                            let _1524 := read_from_memoryt_int128(_1523)
                            let expr_6978 := _1524
                            /// @src 90:14012:14074  "LiquidityMath.addDelta(liquidityBefore, params.liquidityDelta)"
                            let expr_6979 := fun_addDelta_19836(expr_6976, expr_6978)
                            /// @src 90:14000:14074  "liquidity = LiquidityMath.addDelta(liquidityBefore, params.liquidityDelta)"
                            update_storage_value_offset_0_t_uint128_to_t_uint128(0x04, expr_6979)
                            let expr_6980 := expr_6979
                            /// @src 90:12937:14591  "if (_slot0.tick < params.tickUpper) {..."
                        }
                        /// @src 90:12399:14591  "if (_slot0.tick < params.tickLower) {..."
                    }
                    default {
                        /// @src 90:12692:12705  "SqrtPriceMath"
                        let expr_6894_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol:SqrtPriceMath")
                        /// @src 90:12743:12751  "TickMath"
                        let expr_6896_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                        /// @src 90:12771:12777  "params"
                        let _1525_mpos := var_params_6845_mpos
                        let expr_6898_mpos := _1525_mpos
                        /// @src 90:12771:12787  "params.tickLower"
                        let _1526 := add(expr_6898_mpos, 32)
                        let _1527 := read_from_memoryt_int24(_1526)
                        let expr_6899 := _1527
                        /// @src 90:12743:12788  "TickMath.getSqrtRatioAtTick(params.tickLower)"
                        let expr_6900 := fun_getSqrtRatioAtTick_5493(expr_6899)
                        /// @src 90:12810:12818  "TickMath"
                        let expr_6901_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                        /// @src 90:12838:12844  "params"
                        let _1528_mpos := var_params_6845_mpos
                        let expr_6903_mpos := _1528_mpos
                        /// @src 90:12838:12854  "params.tickUpper"
                        let _1529 := add(expr_6903_mpos, 64)
                        let _1530 := read_from_memoryt_int24(_1529)
                        let expr_6904 := _1530
                        /// @src 90:12810:12855  "TickMath.getSqrtRatioAtTick(params.tickUpper)"
                        let expr_6905 := fun_getSqrtRatioAtTick_5493(expr_6904)
                        /// @src 90:12877:12883  "params"
                        let _1531_mpos := var_params_6845_mpos
                        let expr_6906_mpos := _1531_mpos
                        /// @src 90:12877:12898  "params.liquidityDelta"
                        let _1532 := add(expr_6906_mpos, 96)
                        let _1533 := read_from_memoryt_int128(_1532)
                        let expr_6907 := _1533
                        /// @src 90:12692:12916  "SqrtPriceMath.getAmount0Delta(..."
                        let expr_6908 := fun_getAmount0Delta_21457(expr_6900, expr_6905, expr_6907)
                        /// @src 90:12682:12916  "amount0 = SqrtPriceMath.getAmount0Delta(..."
                        var_amount0_6853 := expr_6908
                        let expr_6909 := expr_6908
                        /// @src 90:12399:14591  "if (_slot0.tick < params.tickLower) {..."
                    }
                    /// @src 90:12353:14601  "if (params.liquidityDelta != 0) {..."
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 7007
            /// @src 90:11794:14607  "function _modifyPosition(ModifyPositionParams memory params)..."
            function fun__modifyPosition_7007(var_params_6845_mpos) -> var_position_6851_slot, var_amount0_6853, var_amount1_6855 {
                /// @src 90:11968:11982  "int256 amount0"
                let zero_t_int256_1429 := zero_value_for_split_t_int256()
                var_amount0_6853 := zero_t_int256_1429
                /// @src 90:11996:12010  "int256 amount1"
                let zero_t_int256_1430 := zero_value_for_split_t_int256()
                var_amount1_6855 := zero_t_int256_1430

                var_position_6851_slot, var_amount0_6853, var_amount1_6855 := modifier_noDelegateCall_6848(var_position_6851_slot, var_amount0_6853, var_amount1_6855, var_params_6845_mpos)
            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            /// @ast-id 9431
            /// @src 108:4840:5155  "function mulDivRoundingUp(..."
            function fun_mulDivRoundingUp_9431(var_a_9391, var_b_9393, var_denominator_9395) -> var_result_9398 {
                /// @src 108:4962:4976  "uint256 result"
                let zero_t_uint256_1534 := zero_value_for_split_t_uint256()
                var_result_9398 := zero_t_uint256_1534

                /// @src 108:5004:5005  "a"
                let _1535 := var_a_9391
                let expr_9402 := _1535
                /// @src 108:5007:5008  "b"
                let _1536 := var_b_9393
                let expr_9403 := _1536
                /// @src 108:5010:5021  "denominator"
                let _1537 := var_denominator_9395
                let expr_9404 := _1537
                /// @src 108:4997:5022  "mulDiv(a, b, denominator)"
                let expr_9405 := fun_mulDiv_9388(expr_9402, expr_9403, expr_9404)
                /// @src 108:4988:5022  "result = mulDiv(a, b, denominator)"
                var_result_9398 := expr_9405
                let expr_9406 := expr_9405
                /// @src 108:5043:5044  "a"
                let _1538 := var_a_9391
                let expr_9409 := _1538
                /// @src 108:5046:5047  "b"
                let _1539 := var_b_9393
                let expr_9410 := _1539
                /// @src 108:5049:5060  "denominator"
                let _1540 := var_denominator_9395
                let expr_9411 := _1540
                /// @src 108:5036:5061  "mulmod(a, b, denominator)"
                let _1541 := expr_9411
                if iszero(_1541) { panic_error_0x12() }
                let expr_9412 := mulmod(expr_9409, expr_9410, _1541)
                /// @src 108:5064:5065  "0"
                let expr_9413 := 0x00
                /// @src 108:5036:5065  "mulmod(a, b, denominator) > 0"
                let expr_9414 := gt(cleanup_t_uint256(expr_9412), convert_t_rational_0_by_1_to_t_uint256(expr_9413))
                /// @src 108:5032:5149  "if (mulmod(a, b, denominator) > 0) {..."
                if expr_9414 {
                    /// @src 108:5089:5095  "result"
                    let _1542 := var_result_9398
                    let expr_9416 := _1542
                    /// @src 108:5098:5115  "type(uint256).max"
                    let expr_9421 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 108:5089:5115  "result < type(uint256).max"
                    let expr_9422 := lt(cleanup_t_uint256(expr_9416), cleanup_t_uint256(expr_9421))
                    /// @src 108:5081:5116  "require(result < type(uint256).max)"
                    require_helper(expr_9422)
                    /// @src 108:5130:5138  "result++"
                    let _1544 := var_result_9398
                    let _1543 := increment_t_uint256(_1544)
                    var_result_9398 := _1543
                    let expr_9426 := _1544
                    /// @src 108:5032:5149  "if (mulmod(a, b, denominator) > 0) {..."
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function shift_left_96(value) -> newValue {
                newValue :=

                shl(96, value)

            }

            function leftAlign_t_uint160(value) -> aligned {
                aligned := shift_left_96(value)
            }

            function leftAlign_t_address(value) -> aligned {
                aligned := leftAlign_t_uint160(value)
            }

            function abi_encode_t_address_to_t_address_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_address(cleanup_t_address(value)))
            }

            function leftAlign_t_int24(value) -> aligned {
                aligned := shift_left_232(value)
            }

            function abi_encode_t_int24_to_t_int24_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_int24(cleanup_t_int24(value)))
            }

            function abi_encode_tuple_packed_t_address_t_int24_t_int24__to_t_address_t_int24_t_int24__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                abi_encode_t_address_to_t_address_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 20)

                abi_encode_t_int24_to_t_int24_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 3)

                abi_encode_t_int24_to_t_int24_nonPadded_inplace_fromStack(value2,  pos)
                pos := add(pos, 3)

                end := pos
            }

            function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function convert_t_struct$_Info_$20754_storage_to_t_struct$_Info_$20754_storage_ptr(value) -> converted {
                converted := value
            }

            /// @ast-id 20786
            /// @src 112:1283:1567  "function get(..."
            function fun_get_20786(var_self_20760_slot, var_owner_20762, var_tickLower_20764, var_tickUpper_20766) -> var_position_20770_slot {

                /// @src 112:1498:1502  "self"
                let _1545_slot := var_self_20760_slot
                let expr_20773_slot := _1545_slot
                /// @src 112:1530:1535  "owner"
                let _1546 := var_owner_20762
                let expr_20777 := _1546
                /// @src 112:1537:1546  "tickLower"
                let _1547 := var_tickLower_20764
                let expr_20778 := _1547
                /// @src 112:1548:1557  "tickUpper"
                let _1548 := var_tickUpper_20766
                let expr_20779 := _1548
                /// @src 112:1513:1558  "abi.encodePacked(owner, tickLower, tickUpper)"

                let expr_20780_mpos := allocate_unbounded()
                let _1549 := add(expr_20780_mpos, 0x20)

                let _1550 := abi_encode_tuple_packed_t_address_t_int24_t_int24__to_t_address_t_int24_t_int24__nonPadded_inplace_fromStack(_1549, expr_20777, expr_20778, expr_20779)
                mstore(expr_20780_mpos, sub(_1550, add(expr_20780_mpos, 0x20)))
                finalize_allocation(expr_20780_mpos, sub(_1550, expr_20780_mpos))
                /// @src 112:1503:1559  "keccak256(abi.encodePacked(owner, tickLower, tickUpper))"
                let expr_20781 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_20780_mpos), array_length_t_bytes_memory_ptr(expr_20780_mpos))
                /// @src 112:1498:1560  "self[keccak256(abi.encodePacked(owner, tickLower, tickUpper))]"
                let _1551 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Info_$20754_storage_$_of_t_bytes32(expr_20773_slot,expr_20781)
                let _1552_slot := _1551
                let expr_20782_slot := _1552_slot
                /// @src 112:1487:1560  "position = self[keccak256(abi.encodePacked(owner, tickLower, tickUpper))]"
                var_position_20770_slot := convert_t_struct$_Info_$20754_storage_to_t_struct$_Info_$20754_storage_ptr(expr_20782_slot)
                let _1553_slot := var_position_20770_slot
                let expr_20783_slot := _1553_slot

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function array_length_t_array$_t_uint32_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_allocation_size_t_array$_t_int56_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_array$_t_int56_$dyn_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_int56_$dyn_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_memory_chunk_t_int56(dataStart, dataSizeInBytes) {
                calldatacopy(dataStart, calldatasize(), dataSizeInBytes)
            }

            function allocate_and_zero_memory_array_t_array$_t_int56_$dyn_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_int56_$dyn_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_int56_$dyn_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_int56(dataStart, dataSize)
            }

            function array_allocation_size_t_array$_t_uint160_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_array$_t_uint160_$dyn_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_uint160_$dyn_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_memory_chunk_t_uint160(dataStart, dataSizeInBytes) {
                calldatacopy(dataStart, calldatasize(), dataSizeInBytes)
            }

            function allocate_and_zero_memory_array_t_array$_t_uint160_$dyn_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_uint160_$dyn_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_uint160_$dyn_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_uint160(dataStart, dataSize)
            }

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            function memory_array_index_access_t_array$_t_uint32_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_uint32_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function memory_array_index_access_t_array$_t_int56_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_int56_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function memory_array_index_access_t_array$_t_uint160_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_uint160_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            /// @ast-id 20736
            /// @src 111:15625:16487  "function observe(..."
            function fun_observe_20736(var_self_20655_slot, var_time_20657, var_secondsAgos_20660_mpos, var_tick_20662, var_index_20664, var_liquidity_20666, var_cardinality_20668) -> var_tickCumulatives_20672_mpos, var_secondsPerLiquidityCumulativeX128s_20675_mpos {
                /// @src 111:15867:15897  "int56[] memory tickCumulatives"
                let zero_t_array$_t_int56_$dyn_memory_ptr_1554_mpos := zero_value_for_split_t_array$_t_int56_$dyn_memory_ptr()
                var_tickCumulatives_20672_mpos := zero_t_array$_t_int56_$dyn_memory_ptr_1554_mpos
                /// @src 111:15899:15950  "uint160[] memory secondsPerLiquidityCumulativeX128s"
                let zero_t_array$_t_uint160_$dyn_memory_ptr_1555_mpos := zero_value_for_split_t_array$_t_uint160_$dyn_memory_ptr()
                var_secondsPerLiquidityCumulativeX128s_20675_mpos := zero_t_array$_t_uint160_$dyn_memory_ptr_1555_mpos

                /// @src 111:15970:15981  "cardinality"
                let _1556 := var_cardinality_20668
                let expr_20678 := _1556
                /// @src 111:15984:15985  "0"
                let expr_20679 := 0x00
                /// @src 111:15970:15985  "cardinality > 0"
                let expr_20680 := gt(cleanup_t_uint16(expr_20678), convert_t_rational_0_by_1_to_t_uint16(expr_20679))
                /// @src 111:15962:15991  "require(cardinality > 0, 'I')"
                require_helper_t_stringliteral_8d61ecf6e15472e15b1a0f63cd77f62aa57e6edcd3871d7a841f1056fb42b216(expr_20680)
                /// @src 111:16032:16043  "secondsAgos"
                let _1557_mpos := var_secondsAgos_20660_mpos
                let expr_20688_mpos := _1557_mpos
                /// @src 111:16032:16050  "secondsAgos.length"
                let expr_20689 := array_length_t_array$_t_uint32_$dyn_memory_ptr(expr_20688_mpos)
                /// @src 111:16020:16051  "new int56[](secondsAgos.length)"
                let expr_20690_mpos := allocate_and_zero_memory_array_t_array$_t_int56_$dyn_memory_ptr(expr_20689)
                /// @src 111:16002:16051  "tickCumulatives = new int56[](secondsAgos.length)"
                var_tickCumulatives_20672_mpos := expr_20690_mpos
                let _1558_mpos := var_tickCumulatives_20672_mpos
                let expr_20691_mpos := _1558_mpos
                /// @src 111:16112:16123  "secondsAgos"
                let _1559_mpos := var_secondsAgos_20660_mpos
                let expr_20697_mpos := _1559_mpos
                /// @src 111:16112:16130  "secondsAgos.length"
                let expr_20698 := array_length_t_array$_t_uint32_$dyn_memory_ptr(expr_20697_mpos)
                /// @src 111:16098:16131  "new uint160[](secondsAgos.length)"
                let expr_20699_mpos := allocate_and_zero_memory_array_t_array$_t_uint160_$dyn_memory_ptr(expr_20698)
                /// @src 111:16061:16131  "secondsPerLiquidityCumulativeX128s = new uint160[](secondsAgos.length)"
                var_secondsPerLiquidityCumulativeX128s_20675_mpos := expr_20699_mpos
                let _1560_mpos := var_secondsPerLiquidityCumulativeX128s_20675_mpos
                let expr_20700_mpos := _1560_mpos
                /// @src 111:16141:16481  "for (uint256 i = 0; i < secondsAgos.length; i++) {..."
                for {
                    /// @src 111:16158:16159  "0"
                    let expr_20704 := 0x00
                    /// @src 111:16146:16159  "uint256 i = 0"
                    let var_i_20703 := convert_t_rational_0_by_1_to_t_uint256(expr_20704)
                    } 1 {
                    /// @src 111:16185:16188  "i++"
                    let _1562 := var_i_20703
                    let _1561 := increment_wrapping_t_uint256(_1562)
                    var_i_20703 := _1561
                    let expr_20711 := _1562
                }
                {
                    /// @src 111:16161:16162  "i"
                    let _1563 := var_i_20703
                    let expr_20706 := _1563
                    /// @src 111:16165:16176  "secondsAgos"
                    let _1564_mpos := var_secondsAgos_20660_mpos
                    let expr_20707_mpos := _1564_mpos
                    /// @src 111:16165:16183  "secondsAgos.length"
                    let expr_20708 := array_length_t_array$_t_uint32_$dyn_memory_ptr(expr_20707_mpos)
                    /// @src 111:16161:16183  "i < secondsAgos.length"
                    let expr_20709 := lt(cleanup_t_uint256(expr_20706), cleanup_t_uint256(expr_20708))
                    if iszero(expr_20709) { break }
                    /// @src 111:16297:16301  "self"
                    let _1565_slot := var_self_20655_slot
                    let expr_20721_slot := _1565_slot
                    /// @src 111:16319:16323  "time"
                    let _1566 := var_time_20657
                    let expr_20722 := _1566
                    /// @src 111:16341:16352  "secondsAgos"
                    let _1567_mpos := var_secondsAgos_20660_mpos
                    let expr_20723_mpos := _1567_mpos
                    /// @src 111:16353:16354  "i"
                    let _1568 := var_i_20703
                    let expr_20724 := _1568
                    /// @src 111:16341:16355  "secondsAgos[i]"
                    let _1569 := read_from_memoryt_uint32(memory_array_index_access_t_array$_t_uint32_$dyn_memory_ptr(expr_20723_mpos, expr_20724))
                    let expr_20725 := _1569
                    /// @src 111:16373:16377  "tick"
                    let _1570 := var_tick_20662
                    let expr_20726 := _1570
                    /// @src 111:16395:16400  "index"
                    let _1571 := var_index_20664
                    let expr_20727 := _1571
                    /// @src 111:16418:16427  "liquidity"
                    let _1572 := var_liquidity_20666
                    let expr_20728 := _1572
                    /// @src 111:16445:16456  "cardinality"
                    let _1573 := var_cardinality_20668
                    let expr_20729 := _1573
                    /// @src 111:16266:16470  "observeSingle(..."
                    let expr_20730_component_1, expr_20730_component_2 := fun_observeSingle_20649(expr_20721_slot, expr_20722, expr_20725, expr_20726, expr_20727, expr_20728, expr_20729)
                    /// @src 111:16205:16220  "tickCumulatives"
                    let _1574_mpos := var_tickCumulatives_20672_mpos
                    let expr_20713_mpos := _1574_mpos
                    /// @src 111:16221:16222  "i"
                    let _1575 := var_i_20703
                    let expr_20714 := _1575
                    /// @src 111:16225:16259  "secondsPerLiquidityCumulativeX128s"
                    let _1576_mpos := var_secondsPerLiquidityCumulativeX128s_20675_mpos
                    let expr_20716_mpos := _1576_mpos
                    /// @src 111:16260:16261  "i"
                    let _1577 := var_i_20703
                    let expr_20717 := _1577
                    /// @src 111:16204:16470  "(tickCumulatives[i], secondsPerLiquidityCumulativeX128s[i]) = observeSingle(..."
                    let _1578 := expr_20730_component_2
                    write_to_memory_t_uint160(memory_array_index_access_t_array$_t_uint160_$dyn_memory_ptr(expr_20716_mpos, expr_20717), _1578)
                    let _1579 := expr_20730_component_1
                    write_to_memory_t_int56(memory_array_index_access_t_array$_t_int56_$dyn_memory_ptr(expr_20713_mpos, expr_20714), _1579)
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function store_literal_in_memory_06776ee9cbc7ad0c1c06e0539ee449ea9f1cfe5ae7f3eda3c33aaa56fb586d6b(memPtr) {

                mstore(add(memPtr, 0), "TLU")

            }

            function abi_encode_t_stringliteral_06776ee9cbc7ad0c1c06e0539ee449ea9f1cfe5ae7f3eda3c33aaa56fb586d6b_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 3)
                store_literal_in_memory_06776ee9cbc7ad0c1c06e0539ee449ea9f1cfe5ae7f3eda3c33aaa56fb586d6b(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_06776ee9cbc7ad0c1c06e0539ee449ea9f1cfe5ae7f3eda3c33aaa56fb586d6b__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_06776ee9cbc7ad0c1c06e0539ee449ea9f1cfe5ae7f3eda3c33aaa56fb586d6b_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_06776ee9cbc7ad0c1c06e0539ee449ea9f1cfe5ae7f3eda3c33aaa56fb586d6b(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_06776ee9cbc7ad0c1c06e0539ee449ea9f1cfe5ae7f3eda3c33aaa56fb586d6b__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_9f9b85a186c017db58134196c73d3823c64ac15bc5fdab86c88cfc6bb064f2e5(memPtr) {

                mstore(add(memPtr, 0), "TLM")

            }

            function abi_encode_t_stringliteral_9f9b85a186c017db58134196c73d3823c64ac15bc5fdab86c88cfc6bb064f2e5_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 3)
                store_literal_in_memory_9f9b85a186c017db58134196c73d3823c64ac15bc5fdab86c88cfc6bb064f2e5(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_9f9b85a186c017db58134196c73d3823c64ac15bc5fdab86c88cfc6bb064f2e5__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_9f9b85a186c017db58134196c73d3823c64ac15bc5fdab86c88cfc6bb064f2e5_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_9f9b85a186c017db58134196c73d3823c64ac15bc5fdab86c88cfc6bb064f2e5(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_9f9b85a186c017db58134196c73d3823c64ac15bc5fdab86c88cfc6bb064f2e5__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_95f36cdfdff7cff798fd6265395ae5b2ff6ffb0b1fac3580c0e5d24a0519f359(memPtr) {

                mstore(add(memPtr, 0), "TUM")

            }

            function abi_encode_t_stringliteral_95f36cdfdff7cff798fd6265395ae5b2ff6ffb0b1fac3580c0e5d24a0519f359_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 3)
                store_literal_in_memory_95f36cdfdff7cff798fd6265395ae5b2ff6ffb0b1fac3580c0e5d24a0519f359(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_95f36cdfdff7cff798fd6265395ae5b2ff6ffb0b1fac3580c0e5d24a0519f359__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_95f36cdfdff7cff798fd6265395ae5b2ff6ffb0b1fac3580c0e5d24a0519f359_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_95f36cdfdff7cff798fd6265395ae5b2ff6ffb0b1fac3580c0e5d24a0519f359(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_95f36cdfdff7cff798fd6265395ae5b2ff6ffb0b1fac3580c0e5d24a0519f359__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 6429
            /// @src 90:4701:4934  "function checkTicks(int24 tickLower, int24 tickUpper) private pure {..."
            function fun_checkTicks_6429(var_tickLower_6400, var_tickUpper_6402) {

                /// @src 90:4786:4795  "tickLower"
                let _1580 := var_tickLower_6400
                let expr_6406 := _1580
                /// @src 90:4798:4807  "tickUpper"
                let _1581 := var_tickUpper_6402
                let expr_6407 := _1581
                /// @src 90:4786:4807  "tickLower < tickUpper"
                let expr_6408 := slt(cleanup_t_int24(expr_6406), cleanup_t_int24(expr_6407))
                /// @src 90:4778:4815  "require(tickLower < tickUpper, 'TLU')"
                require_helper_t_stringliteral_06776ee9cbc7ad0c1c06e0539ee449ea9f1cfe5ae7f3eda3c33aaa56fb586d6b(expr_6408)
                /// @src 90:4833:4842  "tickLower"
                let _1582 := var_tickLower_6400
                let expr_6413 := _1582
                /// @src 90:4846:4854  "TickMath"
                let expr_6414_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                /// @src 90:4846:4863  "TickMath.MIN_TICK"
                let expr_6415 := constant_MIN_TICK_5103()
                /// @src 90:4833:4863  "tickLower >= TickMath.MIN_TICK"
                let expr_6416 := iszero(slt(cleanup_t_int24(expr_6413), cleanup_t_int24(expr_6415)))
                /// @src 90:4825:4871  "require(tickLower >= TickMath.MIN_TICK, 'TLM')"
                require_helper_t_stringliteral_9f9b85a186c017db58134196c73d3823c64ac15bc5fdab86c88cfc6bb064f2e5(expr_6416)
                /// @src 90:4889:4898  "tickUpper"
                let _1583 := var_tickUpper_6402
                let expr_6421 := _1583
                /// @src 90:4902:4910  "TickMath"
                let expr_6422_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                /// @src 90:4902:4919  "TickMath.MAX_TICK"
                let expr_6423 := constant_MAX_TICK_5108()
                /// @src 90:4889:4919  "tickUpper <= TickMath.MAX_TICK"
                let expr_6424 := iszero(sgt(cleanup_t_int24(expr_6421), cleanup_t_int24(expr_6423)))
                /// @src 90:4881:4927  "require(tickUpper <= TickMath.MAX_TICK, 'TUM')"
                require_helper_t_stringliteral_95f36cdfdff7cff798fd6265395ae5b2ff6ffb0b1fac3580c0e5d24a0519f359(expr_6424)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function allocate_memory_struct_t_struct$_Observation_$19979_storage_ptr() -> memPtr {
                memPtr := allocate_memory(128)
            }

            /// @ast-id 20073
            /// @src 111:2940:3307  "function initialize(Observation[65535] storage self, uint32 time)..."
            function fun_initialize_20073(var_self_20048_slot, var_time_20050) -> var_cardinality_20053, var_cardinalityNext_20055 {
                /// @src 111:3040:3058  "uint16 cardinality"
                let zero_t_uint16_1584 := zero_value_for_split_t_uint16()
                var_cardinality_20053 := zero_t_uint16_1584
                /// @src 111:3060:3082  "uint16 cardinalityNext"
                let zero_t_uint16_1585 := zero_value_for_split_t_uint16()
                var_cardinalityNext_20055 := zero_t_uint16_1585

                /// @src 111:3150:3154  "time"
                let _1586 := var_time_20050
                let expr_20061 := _1586
                /// @src 111:3184:3185  "0"
                let expr_20062 := 0x00
                /// @src 111:3234:3235  "0"
                let expr_20063 := 0x00
                /// @src 111:3262:3266  "true"
                let expr_20064 := 0x01
                /// @src 111:3108:3277  "Observation({..."
                let expr_20065_mpos := allocate_memory_struct_t_struct$_Observation_$19979_storage_ptr()
                write_to_memory_t_uint32(add(expr_20065_mpos, 0), expr_20061)
                let _1587 := convert_t_rational_0_by_1_to_t_int56(expr_20062)
                write_to_memory_t_int56(add(expr_20065_mpos, 32), _1587)
                let _1588 := convert_t_rational_0_by_1_to_t_uint160(expr_20063)
                write_to_memory_t_uint160(add(expr_20065_mpos, 64), _1588)
                write_to_memory_t_bool(add(expr_20065_mpos, 96), expr_20064)
                /// @src 111:3098:3102  "self"
                let _1589_slot := var_self_20048_slot
                let expr_20057_slot := _1589_slot
                /// @src 111:3103:3104  "0"
                let expr_20058 := 0x00
                /// @src 111:3098:3105  "self[0]"

                let _1590, _1591 := storage_array_index_access_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_20057_slot, expr_20058)
                /// @src 111:3098:3277  "self[0] = Observation({..."
                update_storage_value_t_struct$_Observation_$19979_memory_ptr_to_t_struct$_Observation_$19979_storage(_1590, _1591, expr_20065_mpos)
                let _1592_slot := _1590
                let expr_20066_slot := _1592_slot
                /// @src 111:3295:3296  "1"
                let expr_20068 := 0x01
                /// @src 111:3294:3300  "(1, 1)"
                let expr_20070_component_1 := expr_20068
                /// @src 111:3298:3299  "1"
                let expr_20069 := 0x01
                /// @src 111:3294:3300  "(1, 1)"
                let expr_20070_component_2 := expr_20069
                /// @src 111:3287:3300  "return (1, 1)"
                var_cardinality_20053 := convert_t_rational_1_by_1_to_t_uint16(expr_20070_component_1)
                var_cardinalityNext_20055 := convert_t_rational_1_by_1_to_t_uint16(expr_20070_component_2)
                leave

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function zero_value_for_split_t_int16() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_uint8() -> ret {
                ret := 0
            }

            function convert_t_rational_8_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_8_by_1(value)))
            }

            function shift_right_t_int24_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_int24(shift_right_signed_dynamic(bits, cleanup_t_int24(value)))
            }

            function convert_t_int24_to_t_int16(value) -> converted {
                converted := cleanup_t_int16(identity(cleanup_t_int24(value)))
            }

            function convert_t_rational_256_by_1_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_rational_256_by_1(value)))
            }

            function convert_t_int24_to_t_uint24(value) -> converted {
                converted := cleanup_t_uint24(identity(cleanup_t_int24(value)))
            }

            function convert_t_uint24_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_uint24(value)))
            }

            /// @ast-id 22257
            /// @src 117:723:891  "function position(int24 tick) private pure returns (int16 wordPos, uint8 bitPos) {..."
            function fun_position_22257(var_tick_22228) -> var_wordPos_22231, var_bitPos_22233 {
                /// @src 117:775:788  "int16 wordPos"
                let zero_t_int16_1593 := zero_value_for_split_t_int16()
                var_wordPos_22231 := zero_t_int16_1593
                /// @src 117:790:802  "uint8 bitPos"
                let zero_t_uint8_1594 := zero_value_for_split_t_uint8()
                var_bitPos_22233 := zero_t_uint8_1594

                /// @src 117:830:834  "tick"
                let _1595 := var_tick_22228
                let expr_22238 := _1595
                /// @src 117:838:839  "8"
                let expr_22239 := 0x08
                /// @src 117:830:839  "tick >> 8"
                let _1596 := convert_t_rational_8_by_1_to_t_uint8(expr_22239)
                let expr_22240 :=
                shift_right_t_int24_t_uint8(expr_22238, _1596)

                /// @src 117:824:840  "int16(tick >> 8)"
                let expr_22241 := convert_t_int24_to_t_int16(expr_22240)
                /// @src 117:814:840  "wordPos = int16(tick >> 8)"
                var_wordPos_22231 := expr_22241
                let expr_22242 := expr_22241
                /// @src 117:872:876  "tick"
                let _1597 := var_tick_22228
                let expr_22249 := _1597
                /// @src 117:879:882  "256"
                let expr_22250 := 0x0100
                /// @src 117:872:882  "tick % 256"
                let expr_22251 := mod_t_int24(expr_22249, convert_t_rational_256_by_1_to_t_int24(expr_22250))

                /// @src 117:865:883  "uint24(tick % 256)"
                let expr_22252 := convert_t_int24_to_t_uint24(expr_22251)
                /// @src 117:859:884  "uint8(uint24(tick % 256))"
                let expr_22253 := convert_t_uint24_to_t_uint8(expr_22252)
                /// @src 117:850:884  "bitPos = uint8(uint24(tick % 256))"
                var_bitPos_22233 := expr_22253
                let expr_22254 := expr_22253

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function cleanup_t_rational_255_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_255_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_255_by_1(value)))
            }

            function cleanup_t_uint64(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffff)
            }

            function convert_t_uint64_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint64(value)))
            }

            function convert_t_uint16_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint16(value)))
            }

            function cleanup_t_rational_15_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_15_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_15_by_1(value)))
            }

            function convert_t_rational_2_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_2_by_1(value)))
            }

            /// @ast-id 25456
            /// @src 105:1930:2824  "function leastSignificantBit(uint256 x) internal pure returns (uint8 r) {..."
            function fun_leastSignificantBit_25456(var_x_25298) -> var_r_25301 {
                /// @src 105:1993:2000  "uint8 r"
                let zero_t_uint8_1598 := zero_value_for_split_t_uint8()
                var_r_25301 := zero_t_uint8_1598

                /// @src 105:2020:2021  "x"
                let _1599 := var_x_25298
                let expr_25304 := _1599
                /// @src 105:2024:2025  "0"
                let expr_25305 := 0x00
                /// @src 105:2020:2025  "x > 0"
                let expr_25306 := gt(cleanup_t_uint256(expr_25304), convert_t_rational_0_by_1_to_t_uint256(expr_25305))
                /// @src 105:2012:2026  "require(x > 0)"
                require_helper(expr_25306)
                /// @src 105:2041:2044  "255"
                let expr_25310 := 0xff
                /// @src 105:2037:2044  "r = 255"
                let _1600 := convert_t_rational_255_by_1_to_t_uint8(expr_25310)
                var_r_25301 := _1600
                let expr_25311 := _1600
                /// @src 105:2058:2059  "x"
                let _1601 := var_x_25298
                let expr_25313 := _1601
                /// @src 105:2062:2079  "type(uint128).max"
                let expr_25318 := 0xffffffffffffffffffffffffffffffff
                /// @src 105:2058:2079  "x & type(uint128).max"
                let expr_25319 := and(expr_25313, convert_t_uint128_to_t_uint256(expr_25318))

                /// @src 105:2082:2083  "0"
                let expr_25320 := 0x00
                /// @src 105:2058:2083  "x & type(uint128).max > 0"
                let expr_25321 := gt(cleanup_t_uint256(expr_25319), convert_t_rational_0_by_1_to_t_uint256(expr_25320))
                /// @src 105:2054:2158  "if (x & type(uint128).max > 0) {..."
                switch expr_25321
                case 0 {
                    /// @src 105:2144:2147  "128"
                    let expr_25328 := 0x80
                    /// @src 105:2138:2147  "x >>= 128"
                    let _1602 := convert_t_rational_128_by_1_to_t_uint8(expr_25328)
                    let _1603 := var_x_25298
                    let expr_25329 :=
                    shift_right_t_uint256_t_uint8(_1603, _1602)

                    var_x_25298 := expr_25329
                    /// @src 105:2054:2158  "if (x & type(uint128).max > 0) {..."
                }
                default {
                    /// @src 105:2104:2107  "128"
                    let expr_25323 := 0x80
                    /// @src 105:2099:2107  "r -= 128"
                    let _1604 := convert_t_rational_128_by_1_to_t_uint8(expr_25323)
                    let _1605 := var_r_25301
                    let expr_25324 := checked_sub_t_uint8(_1605, _1604)

                    var_r_25301 := expr_25324
                    /// @src 105:2054:2158  "if (x & type(uint128).max > 0) {..."
                }
                /// @src 105:2171:2172  "x"
                let _1606 := var_x_25298
                let expr_25333 := _1606
                /// @src 105:2175:2191  "type(uint64).max"
                let expr_25338 := 0xffffffffffffffff
                /// @src 105:2171:2191  "x & type(uint64).max"
                let expr_25339 := and(expr_25333, convert_t_uint64_to_t_uint256(expr_25338))

                /// @src 105:2194:2195  "0"
                let expr_25340 := 0x00
                /// @src 105:2171:2195  "x & type(uint64).max > 0"
                let expr_25341 := gt(cleanup_t_uint256(expr_25339), convert_t_rational_0_by_1_to_t_uint256(expr_25340))
                /// @src 105:2167:2268  "if (x & type(uint64).max > 0) {..."
                switch expr_25341
                case 0 {
                    /// @src 105:2255:2257  "64"
                    let expr_25348 := 0x40
                    /// @src 105:2249:2257  "x >>= 64"
                    let _1607 := convert_t_rational_64_by_1_to_t_uint8(expr_25348)
                    let _1608 := var_x_25298
                    let expr_25349 :=
                    shift_right_t_uint256_t_uint8(_1608, _1607)

                    var_x_25298 := expr_25349
                    /// @src 105:2167:2268  "if (x & type(uint64).max > 0) {..."
                }
                default {
                    /// @src 105:2216:2218  "64"
                    let expr_25343 := 0x40
                    /// @src 105:2211:2218  "r -= 64"
                    let _1609 := convert_t_rational_64_by_1_to_t_uint8(expr_25343)
                    let _1610 := var_r_25301
                    let expr_25344 := checked_sub_t_uint8(_1610, _1609)

                    var_r_25301 := expr_25344
                    /// @src 105:2167:2268  "if (x & type(uint64).max > 0) {..."
                }
                /// @src 105:2281:2282  "x"
                let _1611 := var_x_25298
                let expr_25353 := _1611
                /// @src 105:2285:2301  "type(uint32).max"
                let expr_25358 := 0xffffffff
                /// @src 105:2281:2301  "x & type(uint32).max"
                let expr_25359 := and(expr_25353, convert_t_uint32_to_t_uint256(expr_25358))

                /// @src 105:2304:2305  "0"
                let expr_25360 := 0x00
                /// @src 105:2281:2305  "x & type(uint32).max > 0"
                let expr_25361 := gt(cleanup_t_uint256(expr_25359), convert_t_rational_0_by_1_to_t_uint256(expr_25360))
                /// @src 105:2277:2378  "if (x & type(uint32).max > 0) {..."
                switch expr_25361
                case 0 {
                    /// @src 105:2365:2367  "32"
                    let expr_25368 := 0x20
                    /// @src 105:2359:2367  "x >>= 32"
                    let _1612 := convert_t_rational_32_by_1_to_t_uint8(expr_25368)
                    let _1613 := var_x_25298
                    let expr_25369 :=
                    shift_right_t_uint256_t_uint8(_1613, _1612)

                    var_x_25298 := expr_25369
                    /// @src 105:2277:2378  "if (x & type(uint32).max > 0) {..."
                }
                default {
                    /// @src 105:2326:2328  "32"
                    let expr_25363 := 0x20
                    /// @src 105:2321:2328  "r -= 32"
                    let _1614 := convert_t_rational_32_by_1_to_t_uint8(expr_25363)
                    let _1615 := var_r_25301
                    let expr_25364 := checked_sub_t_uint8(_1615, _1614)

                    var_r_25301 := expr_25364
                    /// @src 105:2277:2378  "if (x & type(uint32).max > 0) {..."
                }
                /// @src 105:2391:2392  "x"
                let _1616 := var_x_25298
                let expr_25373 := _1616
                /// @src 105:2395:2411  "type(uint16).max"
                let expr_25378 := 65535
                /// @src 105:2391:2411  "x & type(uint16).max"
                let expr_25379 := and(expr_25373, convert_t_uint16_to_t_uint256(expr_25378))

                /// @src 105:2414:2415  "0"
                let expr_25380 := 0x00
                /// @src 105:2391:2415  "x & type(uint16).max > 0"
                let expr_25381 := gt(cleanup_t_uint256(expr_25379), convert_t_rational_0_by_1_to_t_uint256(expr_25380))
                /// @src 105:2387:2488  "if (x & type(uint16).max > 0) {..."
                switch expr_25381
                case 0 {
                    /// @src 105:2475:2477  "16"
                    let expr_25388 := 0x10
                    /// @src 105:2469:2477  "x >>= 16"
                    let _1617 := convert_t_rational_16_by_1_to_t_uint8(expr_25388)
                    let _1618 := var_x_25298
                    let expr_25389 :=
                    shift_right_t_uint256_t_uint8(_1618, _1617)

                    var_x_25298 := expr_25389
                    /// @src 105:2387:2488  "if (x & type(uint16).max > 0) {..."
                }
                default {
                    /// @src 105:2436:2438  "16"
                    let expr_25383 := 0x10
                    /// @src 105:2431:2438  "r -= 16"
                    let _1619 := convert_t_rational_16_by_1_to_t_uint8(expr_25383)
                    let _1620 := var_r_25301
                    let expr_25384 := checked_sub_t_uint8(_1620, _1619)

                    var_r_25301 := expr_25384
                    /// @src 105:2387:2488  "if (x & type(uint16).max > 0) {..."
                }
                /// @src 105:2501:2502  "x"
                let _1621 := var_x_25298
                let expr_25393 := _1621
                /// @src 105:2505:2520  "type(uint8).max"
                let expr_25398 := 255
                /// @src 105:2501:2520  "x & type(uint8).max"
                let expr_25399 := and(expr_25393, convert_t_uint8_to_t_uint256(expr_25398))

                /// @src 105:2523:2524  "0"
                let expr_25400 := 0x00
                /// @src 105:2501:2524  "x & type(uint8).max > 0"
                let expr_25401 := gt(cleanup_t_uint256(expr_25399), convert_t_rational_0_by_1_to_t_uint256(expr_25400))
                /// @src 105:2497:2595  "if (x & type(uint8).max > 0) {..."
                switch expr_25401
                case 0 {
                    /// @src 105:2583:2584  "8"
                    let expr_25408 := 0x08
                    /// @src 105:2577:2584  "x >>= 8"
                    let _1622 := convert_t_rational_8_by_1_to_t_uint8(expr_25408)
                    let _1623 := var_x_25298
                    let expr_25409 :=
                    shift_right_t_uint256_t_uint8(_1623, _1622)

                    var_x_25298 := expr_25409
                    /// @src 105:2497:2595  "if (x & type(uint8).max > 0) {..."
                }
                default {
                    /// @src 105:2545:2546  "8"
                    let expr_25403 := 0x08
                    /// @src 105:2540:2546  "r -= 8"
                    let _1624 := convert_t_rational_8_by_1_to_t_uint8(expr_25403)
                    let _1625 := var_r_25301
                    let expr_25404 := checked_sub_t_uint8(_1625, _1624)

                    var_r_25301 := expr_25404
                    /// @src 105:2497:2595  "if (x & type(uint8).max > 0) {..."
                }
                /// @src 105:2608:2609  "x"
                let _1626 := var_x_25298
                let expr_25413 := _1626
                /// @src 105:2612:2615  "0xf"
                let expr_25414 := 0x0f
                /// @src 105:2608:2615  "x & 0xf"
                let expr_25415 := and(expr_25413, convert_t_rational_15_by_1_to_t_uint256(expr_25414))

                /// @src 105:2618:2619  "0"
                let expr_25416 := 0x00
                /// @src 105:2608:2619  "x & 0xf > 0"
                let expr_25417 := gt(cleanup_t_uint256(expr_25415), convert_t_rational_0_by_1_to_t_uint256(expr_25416))
                /// @src 105:2604:2690  "if (x & 0xf > 0) {..."
                switch expr_25417
                case 0 {
                    /// @src 105:2678:2679  "4"
                    let expr_25424 := 0x04
                    /// @src 105:2672:2679  "x >>= 4"
                    let _1627 := convert_t_rational_4_by_1_to_t_uint8(expr_25424)
                    let _1628 := var_x_25298
                    let expr_25425 :=
                    shift_right_t_uint256_t_uint8(_1628, _1627)

                    var_x_25298 := expr_25425
                    /// @src 105:2604:2690  "if (x & 0xf > 0) {..."
                }
                default {
                    /// @src 105:2640:2641  "4"
                    let expr_25419 := 0x04
                    /// @src 105:2635:2641  "r -= 4"
                    let _1629 := convert_t_rational_4_by_1_to_t_uint8(expr_25419)
                    let _1630 := var_r_25301
                    let expr_25420 := checked_sub_t_uint8(_1630, _1629)

                    var_r_25301 := expr_25420
                    /// @src 105:2604:2690  "if (x & 0xf > 0) {..."
                }
                /// @src 105:2703:2704  "x"
                let _1631 := var_x_25298
                let expr_25429 := _1631
                /// @src 105:2707:2710  "0x3"
                let expr_25430 := 0x03
                /// @src 105:2703:2710  "x & 0x3"
                let expr_25431 := and(expr_25429, convert_t_rational_3_by_1_to_t_uint256(expr_25430))

                /// @src 105:2713:2714  "0"
                let expr_25432 := 0x00
                /// @src 105:2703:2714  "x & 0x3 > 0"
                let expr_25433 := gt(cleanup_t_uint256(expr_25431), convert_t_rational_0_by_1_to_t_uint256(expr_25432))
                /// @src 105:2699:2785  "if (x & 0x3 > 0) {..."
                switch expr_25433
                case 0 {
                    /// @src 105:2773:2774  "2"
                    let expr_25440 := 0x02
                    /// @src 105:2767:2774  "x >>= 2"
                    let _1632 := convert_t_rational_2_by_1_to_t_uint8(expr_25440)
                    let _1633 := var_x_25298
                    let expr_25441 :=
                    shift_right_t_uint256_t_uint8(_1633, _1632)

                    var_x_25298 := expr_25441
                    /// @src 105:2699:2785  "if (x & 0x3 > 0) {..."
                }
                default {
                    /// @src 105:2735:2736  "2"
                    let expr_25435 := 0x02
                    /// @src 105:2730:2736  "r -= 2"
                    let _1634 := convert_t_rational_2_by_1_to_t_uint8(expr_25435)
                    let _1635 := var_r_25301
                    let expr_25436 := checked_sub_t_uint8(_1635, _1634)

                    var_r_25301 := expr_25436
                    /// @src 105:2699:2785  "if (x & 0x3 > 0) {..."
                }
                /// @src 105:2798:2799  "x"
                let _1636 := var_x_25298
                let expr_25445 := _1636
                /// @src 105:2802:2805  "0x1"
                let expr_25446 := 0x01
                /// @src 105:2798:2805  "x & 0x1"
                let expr_25447 := and(expr_25445, convert_t_rational_1_by_1_to_t_uint256(expr_25446))

                /// @src 105:2808:2809  "0"
                let expr_25448 := 0x00
                /// @src 105:2798:2809  "x & 0x1 > 0"
                let expr_25449 := gt(cleanup_t_uint256(expr_25447), convert_t_rational_0_by_1_to_t_uint256(expr_25448))
                /// @src 105:2794:2817  "if (x & 0x1 > 0) r -= 1"
                if expr_25449 {
                    /// @src 105:2816:2817  "1"
                    let expr_25451 := 0x01
                    /// @src 105:2811:2817  "r -= 1"
                    let _1637 := convert_t_rational_1_by_1_to_t_uint8(expr_25451)
                    let _1638 := var_r_25301
                    let expr_25452 := checked_sub_t_uint8(_1638, _1637)

                    var_r_25301 := expr_25452
                    /// @src 105:2794:2817  "if (x & 0x1 > 0) r -= 1"
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function cleanup_t_rational_18446744073709551616_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_18446744073709551616_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_18446744073709551616_by_1(value)))
            }

            /// @ast-id 25295
            /// @src 105:708:1439  "function mostSignificantBit(uint256 x) internal pure returns (uint8 r) {..."
            function fun_mostSignificantBit_25295(var_x_25184) -> var_r_25187 {
                /// @src 105:770:777  "uint8 r"
                let zero_t_uint8_1639 := zero_value_for_split_t_uint8()
                var_r_25187 := zero_t_uint8_1639

                /// @src 105:797:798  "x"
                let _1640 := var_x_25184
                let expr_25190 := _1640
                /// @src 105:801:802  "0"
                let expr_25191 := 0x00
                /// @src 105:797:802  "x > 0"
                let expr_25192 := gt(cleanup_t_uint256(expr_25190), convert_t_rational_0_by_1_to_t_uint256(expr_25191))
                /// @src 105:789:803  "require(x > 0)"
                require_helper(expr_25192)
                /// @src 105:818:819  "x"
                let _1641 := var_x_25184
                let expr_25195 := _1641
                /// @src 105:823:858  "0x100000000000000000000000000000000"
                let expr_25196 := 0x0100000000000000000000000000000000
                /// @src 105:818:858  "x >= 0x100000000000000000000000000000000"
                let expr_25197 := iszero(lt(cleanup_t_uint256(expr_25195), convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(expr_25196)))
                /// @src 105:814:916  "if (x >= 0x100000000000000000000000000000000) {..."
                if expr_25197 {
                    /// @src 105:880:883  "128"
                    let expr_25199 := 0x80
                    /// @src 105:874:883  "x >>= 128"
                    let _1642 := convert_t_rational_128_by_1_to_t_uint8(expr_25199)
                    let _1643 := var_x_25184
                    let expr_25200 :=
                    shift_right_t_uint256_t_uint8(_1643, _1642)

                    var_x_25184 := expr_25200
                    /// @src 105:902:905  "128"
                    let expr_25203 := 0x80
                    /// @src 105:897:905  "r += 128"
                    let _1644 := convert_t_rational_128_by_1_to_t_uint8(expr_25203)
                    let _1645 := var_r_25187
                    let expr_25204 := checked_add_t_uint8(_1645, _1644)

                    var_r_25187 := expr_25204
                    /// @src 105:814:916  "if (x >= 0x100000000000000000000000000000000) {..."
                }
                /// @src 105:929:930  "x"
                let _1646 := var_x_25184
                let expr_25208 := _1646
                /// @src 105:934:953  "0x10000000000000000"
                let expr_25209 := 0x010000000000000000
                /// @src 105:929:953  "x >= 0x10000000000000000"
                let expr_25210 := iszero(lt(cleanup_t_uint256(expr_25208), convert_t_rational_18446744073709551616_by_1_to_t_uint256(expr_25209)))
                /// @src 105:925:1009  "if (x >= 0x10000000000000000) {..."
                if expr_25210 {
                    /// @src 105:975:977  "64"
                    let expr_25212 := 0x40
                    /// @src 105:969:977  "x >>= 64"
                    let _1647 := convert_t_rational_64_by_1_to_t_uint8(expr_25212)
                    let _1648 := var_x_25184
                    let expr_25213 :=
                    shift_right_t_uint256_t_uint8(_1648, _1647)

                    var_x_25184 := expr_25213
                    /// @src 105:996:998  "64"
                    let expr_25216 := 0x40
                    /// @src 105:991:998  "r += 64"
                    let _1649 := convert_t_rational_64_by_1_to_t_uint8(expr_25216)
                    let _1650 := var_r_25187
                    let expr_25217 := checked_add_t_uint8(_1650, _1649)

                    var_r_25187 := expr_25217
                    /// @src 105:925:1009  "if (x >= 0x10000000000000000) {..."
                }
                /// @src 105:1022:1023  "x"
                let _1651 := var_x_25184
                let expr_25221 := _1651
                /// @src 105:1027:1038  "0x100000000"
                let expr_25222 := 0x0100000000
                /// @src 105:1022:1038  "x >= 0x100000000"
                let expr_25223 := iszero(lt(cleanup_t_uint256(expr_25221), convert_t_rational_4294967296_by_1_to_t_uint256(expr_25222)))
                /// @src 105:1018:1094  "if (x >= 0x100000000) {..."
                if expr_25223 {
                    /// @src 105:1060:1062  "32"
                    let expr_25225 := 0x20
                    /// @src 105:1054:1062  "x >>= 32"
                    let _1652 := convert_t_rational_32_by_1_to_t_uint8(expr_25225)
                    let _1653 := var_x_25184
                    let expr_25226 :=
                    shift_right_t_uint256_t_uint8(_1653, _1652)

                    var_x_25184 := expr_25226
                    /// @src 105:1081:1083  "32"
                    let expr_25229 := 0x20
                    /// @src 105:1076:1083  "r += 32"
                    let _1654 := convert_t_rational_32_by_1_to_t_uint8(expr_25229)
                    let _1655 := var_r_25187
                    let expr_25230 := checked_add_t_uint8(_1655, _1654)

                    var_r_25187 := expr_25230
                    /// @src 105:1018:1094  "if (x >= 0x100000000) {..."
                }
                /// @src 105:1107:1108  "x"
                let _1656 := var_x_25184
                let expr_25234 := _1656
                /// @src 105:1112:1119  "0x10000"
                let expr_25235 := 0x010000
                /// @src 105:1107:1119  "x >= 0x10000"
                let expr_25236 := iszero(lt(cleanup_t_uint256(expr_25234), convert_t_rational_65536_by_1_to_t_uint256(expr_25235)))
                /// @src 105:1103:1175  "if (x >= 0x10000) {..."
                if expr_25236 {
                    /// @src 105:1141:1143  "16"
                    let expr_25238 := 0x10
                    /// @src 105:1135:1143  "x >>= 16"
                    let _1657 := convert_t_rational_16_by_1_to_t_uint8(expr_25238)
                    let _1658 := var_x_25184
                    let expr_25239 :=
                    shift_right_t_uint256_t_uint8(_1658, _1657)

                    var_x_25184 := expr_25239
                    /// @src 105:1162:1164  "16"
                    let expr_25242 := 0x10
                    /// @src 105:1157:1164  "r += 16"
                    let _1659 := convert_t_rational_16_by_1_to_t_uint8(expr_25242)
                    let _1660 := var_r_25187
                    let expr_25243 := checked_add_t_uint8(_1660, _1659)

                    var_r_25187 := expr_25243
                    /// @src 105:1103:1175  "if (x >= 0x10000) {..."
                }
                /// @src 105:1188:1189  "x"
                let _1661 := var_x_25184
                let expr_25247 := _1661
                /// @src 105:1193:1198  "0x100"
                let expr_25248 := 0x0100
                /// @src 105:1188:1198  "x >= 0x100"
                let expr_25249 := iszero(lt(cleanup_t_uint256(expr_25247), convert_t_rational_256_by_1_to_t_uint256(expr_25248)))
                /// @src 105:1184:1252  "if (x >= 0x100) {..."
                if expr_25249 {
                    /// @src 105:1220:1221  "8"
                    let expr_25251 := 0x08
                    /// @src 105:1214:1221  "x >>= 8"
                    let _1662 := convert_t_rational_8_by_1_to_t_uint8(expr_25251)
                    let _1663 := var_x_25184
                    let expr_25252 :=
                    shift_right_t_uint256_t_uint8(_1663, _1662)

                    var_x_25184 := expr_25252
                    /// @src 105:1240:1241  "8"
                    let expr_25255 := 0x08
                    /// @src 105:1235:1241  "r += 8"
                    let _1664 := convert_t_rational_8_by_1_to_t_uint8(expr_25255)
                    let _1665 := var_r_25187
                    let expr_25256 := checked_add_t_uint8(_1665, _1664)

                    var_r_25187 := expr_25256
                    /// @src 105:1184:1252  "if (x >= 0x100) {..."
                }
                /// @src 105:1265:1266  "x"
                let _1666 := var_x_25184
                let expr_25260 := _1666
                /// @src 105:1270:1274  "0x10"
                let expr_25261 := 0x10
                /// @src 105:1265:1274  "x >= 0x10"
                let expr_25262 := iszero(lt(cleanup_t_uint256(expr_25260), convert_t_rational_16_by_1_to_t_uint256(expr_25261)))
                /// @src 105:1261:1328  "if (x >= 0x10) {..."
                if expr_25262 {
                    /// @src 105:1296:1297  "4"
                    let expr_25264 := 0x04
                    /// @src 105:1290:1297  "x >>= 4"
                    let _1667 := convert_t_rational_4_by_1_to_t_uint8(expr_25264)
                    let _1668 := var_x_25184
                    let expr_25265 :=
                    shift_right_t_uint256_t_uint8(_1668, _1667)

                    var_x_25184 := expr_25265
                    /// @src 105:1316:1317  "4"
                    let expr_25268 := 0x04
                    /// @src 105:1311:1317  "r += 4"
                    let _1669 := convert_t_rational_4_by_1_to_t_uint8(expr_25268)
                    let _1670 := var_r_25187
                    let expr_25269 := checked_add_t_uint8(_1670, _1669)

                    var_r_25187 := expr_25269
                    /// @src 105:1261:1328  "if (x >= 0x10) {..."
                }
                /// @src 105:1341:1342  "x"
                let _1671 := var_x_25184
                let expr_25273 := _1671
                /// @src 105:1346:1349  "0x4"
                let expr_25274 := 0x04
                /// @src 105:1341:1349  "x >= 0x4"
                let expr_25275 := iszero(lt(cleanup_t_uint256(expr_25273), convert_t_rational_4_by_1_to_t_uint256(expr_25274)))
                /// @src 105:1337:1403  "if (x >= 0x4) {..."
                if expr_25275 {
                    /// @src 105:1371:1372  "2"
                    let expr_25277 := 0x02
                    /// @src 105:1365:1372  "x >>= 2"
                    let _1672 := convert_t_rational_2_by_1_to_t_uint8(expr_25277)
                    let _1673 := var_x_25184
                    let expr_25278 :=
                    shift_right_t_uint256_t_uint8(_1673, _1672)

                    var_x_25184 := expr_25278
                    /// @src 105:1391:1392  "2"
                    let expr_25281 := 0x02
                    /// @src 105:1386:1392  "r += 2"
                    let _1674 := convert_t_rational_2_by_1_to_t_uint8(expr_25281)
                    let _1675 := var_r_25187
                    let expr_25282 := checked_add_t_uint8(_1675, _1674)

                    var_r_25187 := expr_25282
                    /// @src 105:1337:1403  "if (x >= 0x4) {..."
                }
                /// @src 105:1416:1417  "x"
                let _1676 := var_x_25184
                let expr_25286 := _1676
                /// @src 105:1421:1424  "0x2"
                let expr_25287 := 0x02
                /// @src 105:1416:1424  "x >= 0x2"
                let expr_25288 := iszero(lt(cleanup_t_uint256(expr_25286), convert_t_rational_2_by_1_to_t_uint256(expr_25287)))
                /// @src 105:1412:1432  "if (x >= 0x2) r += 1"
                if expr_25288 {
                    /// @src 105:1431:1432  "1"
                    let expr_25290 := 0x01
                    /// @src 105:1426:1432  "r += 1"
                    let _1677 := convert_t_rational_1_by_1_to_t_uint8(expr_25290)
                    let _1678 := var_r_25187
                    let expr_25291 := checked_add_t_uint8(_1678, _1677)

                    var_r_25187 := expr_25291
                    /// @src 105:1412:1432  "if (x >= 0x2) r += 1"
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function cleanup_t_rational_96_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_96_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_96_by_1(value)))
            }

            /// @src 107:309:348  "uint8 internal constant RESOLUTION = 96"
            function constant_RESOLUTION_34438() -> ret {
                /// @src 107:346:348  "96"
                let expr_34437 := 0x60
                let _1685 := convert_t_rational_96_by_1_to_t_uint8(expr_34437)

                ret := _1685
            }

            /// @ast-id 21367
            /// @src 114:7530:8309  "function getAmount0Delta(..."
            function fun_getAmount0Delta_21367(var_sqrtRatioAX96_21300, var_sqrtRatioBX96_21302, var_liquidity_21304, var_roundUp_21306) -> var_amount0_21309 {
                /// @src 114:7695:7710  "uint256 amount0"
                let zero_t_uint256_1679 := zero_value_for_split_t_uint256()
                var_amount0_21309 := zero_t_uint256_1679

                /// @src 114:7726:7739  "sqrtRatioAX96"
                let _1680 := var_sqrtRatioAX96_21300
                let expr_21311 := _1680
                /// @src 114:7742:7755  "sqrtRatioBX96"
                let _1681 := var_sqrtRatioBX96_21302
                let expr_21312 := _1681
                /// @src 114:7726:7755  "sqrtRatioAX96 > sqrtRatioBX96"
                let expr_21313 := gt(cleanup_t_uint160(expr_21311), cleanup_t_uint160(expr_21312))
                /// @src 114:7722:7820  "if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96)"
                if expr_21313 {
                    /// @src 114:7791:7804  "sqrtRatioBX96"
                    let _1682 := var_sqrtRatioBX96_21302
                    let expr_21317 := _1682
                    /// @src 114:7790:7820  "(sqrtRatioBX96, sqrtRatioAX96)"
                    let expr_21319_component_1 := expr_21317
                    /// @src 114:7806:7819  "sqrtRatioAX96"
                    let _1683 := var_sqrtRatioAX96_21300
                    let expr_21318 := _1683
                    /// @src 114:7790:7820  "(sqrtRatioBX96, sqrtRatioAX96)"
                    let expr_21319_component_2 := expr_21318
                    /// @src 114:7757:7820  "(sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96)"
                    var_sqrtRatioBX96_21302 := expr_21319_component_2
                    var_sqrtRatioAX96_21300 := expr_21319_component_1
                    /// @src 114:7722:7820  "if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96)"
                }
                /// @src 114:7860:7869  "liquidity"
                let _1684 := var_liquidity_21304
                let expr_21327 := _1684
                /// @src 114:7852:7870  "uint256(liquidity)"
                let expr_21328 := convert_t_uint128_to_t_uint256(expr_21327)
                /// @src 114:7874:7886  "FixedPoint96"
                let expr_21329_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                /// @src 114:7874:7897  "FixedPoint96.RESOLUTION"
                let expr_21330 := constant_RESOLUTION_34438()
                /// @src 114:7852:7897  "uint256(liquidity) << FixedPoint96.RESOLUTION"
                let expr_21331 :=
                shift_left_t_uint256_t_uint8(expr_21328, expr_21330)

                /// @src 114:7831:7897  "uint256 numerator1 = uint256(liquidity) << FixedPoint96.RESOLUTION"
                let var_numerator1_21324 := expr_21331
                /// @src 114:7928:7941  "sqrtRatioBX96"
                let _1686 := var_sqrtRatioBX96_21302
                let expr_21335 := _1686
                /// @src 114:7944:7957  "sqrtRatioAX96"
                let _1687 := var_sqrtRatioAX96_21300
                let expr_21336 := _1687
                /// @src 114:7928:7957  "sqrtRatioBX96 - sqrtRatioAX96"
                let expr_21337 := checked_sub_t_uint160(expr_21335, expr_21336)

                /// @src 114:7907:7957  "uint256 numerator2 = sqrtRatioBX96 - sqrtRatioAX96"
                let var_numerator2_21334 := convert_t_uint160_to_t_uint256(expr_21337)
                /// @src 114:7976:7989  "sqrtRatioAX96"
                let _1688 := var_sqrtRatioAX96_21300
                let expr_21340 := _1688
                /// @src 114:7992:7993  "0"
                let expr_21341 := 0x00
                /// @src 114:7976:7993  "sqrtRatioAX96 > 0"
                let expr_21342 := gt(cleanup_t_uint160(expr_21340), convert_t_rational_0_by_1_to_t_uint160(expr_21341))
                /// @src 114:7968:7994  "require(sqrtRatioAX96 > 0)"
                require_helper(expr_21342)
                /// @src 114:8024:8031  "roundUp"
                let _1689 := var_roundUp_21306
                let expr_21345 := _1689
                /// @src 114:8024:8302  "roundUp..."
                let expr_21364
                switch expr_21345
                case 0 {
                    /// @src 114:8232:8240  "FullMath"
                    let expr_21356_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 114:8248:8258  "numerator1"
                    let _1690 := var_numerator1_21324
                    let expr_21358 := _1690
                    /// @src 114:8260:8270  "numerator2"
                    let _1691 := var_numerator2_21334
                    let expr_21359 := _1691
                    /// @src 114:8272:8285  "sqrtRatioBX96"
                    let _1692 := var_sqrtRatioBX96_21302
                    let expr_21360 := _1692
                    /// @src 114:8232:8286  "FullMath.mulDiv(numerator1, numerator2, sqrtRatioBX96)"
                    let _1693 := convert_t_uint160_to_t_uint256(expr_21360)
                    let expr_21361 := fun_mulDiv_9388(expr_21358, expr_21359, _1693)
                    /// @src 114:8289:8302  "sqrtRatioAX96"
                    let _1694 := var_sqrtRatioAX96_21300
                    let expr_21362 := _1694
                    /// @src 114:8232:8302  "FullMath.mulDiv(numerator1, numerator2, sqrtRatioBX96) / sqrtRatioAX96"
                    let expr_21363 := checked_div_t_uint256(expr_21361, convert_t_uint160_to_t_uint256(expr_21362))

                    /// @src 114:8024:8302  "roundUp..."
                    expr_21364 := expr_21363
                }
                default {
                    /// @src 114:8050:8060  "UnsafeMath"
                    let expr_21346_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/UnsafeMath.sol:UnsafeMath")
                    /// @src 114:8096:8104  "FullMath"
                    let expr_21348_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 114:8122:8132  "numerator1"
                    let _1695 := var_numerator1_21324
                    let expr_21350 := _1695
                    /// @src 114:8134:8144  "numerator2"
                    let _1696 := var_numerator2_21334
                    let expr_21351 := _1696
                    /// @src 114:8146:8159  "sqrtRatioBX96"
                    let _1697 := var_sqrtRatioBX96_21302
                    let expr_21352 := _1697
                    /// @src 114:8096:8160  "FullMath.mulDivRoundingUp(numerator1, numerator2, sqrtRatioBX96)"
                    let _1698 := convert_t_uint160_to_t_uint256(expr_21352)
                    let expr_21353 := fun_mulDivRoundingUp_9431(expr_21350, expr_21351, _1698)
                    /// @src 114:8182:8195  "sqrtRatioAX96"
                    let _1699 := var_sqrtRatioAX96_21300
                    let expr_21354 := _1699
                    /// @src 114:8050:8213  "UnsafeMath.divRoundingUp(..."
                    let _1700 := convert_t_uint160_to_t_uint256(expr_21354)
                    let expr_21355 := fun_divRoundingUp_34457(expr_21353, _1700)
                    /// @src 114:8024:8302  "roundUp..."
                    expr_21364 := expr_21355
                }
                /// @src 114:8005:8302  "return..."
                var_amount0_21309 := expr_21364
                leave

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function cleanup_t_rational_79228162514264337593543950336_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_79228162514264337593543950336_by_1(value)))
            }

            /// @src 107:354:413  "uint256 internal constant Q96 = 0x1000000000000000000000000"
            function constant_Q96_34441() -> ret {
                /// @src 107:386:413  "0x1000000000000000000000000"
                let expr_34440 := 0x01000000000000000000000000
                let _1710 := convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(expr_34440)

                ret := _1710
            }

            /// @ast-id 21415
            /// @src 114:8764:9296  "function getAmount1Delta(..."
            function fun_getAmount1Delta_21415(var_sqrtRatioAX96_21370, var_sqrtRatioBX96_21372, var_liquidity_21374, var_roundUp_21376) -> var_amount1_21379 {
                /// @src 114:8929:8944  "uint256 amount1"
                let zero_t_uint256_1701 := zero_value_for_split_t_uint256()
                var_amount1_21379 := zero_t_uint256_1701

                /// @src 114:8960:8973  "sqrtRatioAX96"
                let _1702 := var_sqrtRatioAX96_21370
                let expr_21381 := _1702
                /// @src 114:8976:8989  "sqrtRatioBX96"
                let _1703 := var_sqrtRatioBX96_21372
                let expr_21382 := _1703
                /// @src 114:8960:8989  "sqrtRatioAX96 > sqrtRatioBX96"
                let expr_21383 := gt(cleanup_t_uint160(expr_21381), cleanup_t_uint160(expr_21382))
                /// @src 114:8956:9054  "if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96)"
                if expr_21383 {
                    /// @src 114:9025:9038  "sqrtRatioBX96"
                    let _1704 := var_sqrtRatioBX96_21372
                    let expr_21387 := _1704
                    /// @src 114:9024:9054  "(sqrtRatioBX96, sqrtRatioAX96)"
                    let expr_21389_component_1 := expr_21387
                    /// @src 114:9040:9053  "sqrtRatioAX96"
                    let _1705 := var_sqrtRatioAX96_21370
                    let expr_21388 := _1705
                    /// @src 114:9024:9054  "(sqrtRatioBX96, sqrtRatioAX96)"
                    let expr_21389_component_2 := expr_21388
                    /// @src 114:8991:9054  "(sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96)"
                    var_sqrtRatioBX96_21372 := expr_21389_component_2
                    var_sqrtRatioAX96_21370 := expr_21389_component_1
                    /// @src 114:8956:9054  "if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96)"
                }
                /// @src 114:9084:9091  "roundUp"
                let _1706 := var_roundUp_21376
                let expr_21393 := _1706
                /// @src 114:9084:9289  "roundUp..."
                let expr_21412
                switch expr_21393
                case 0 {
                    /// @src 114:9214:9222  "FullMath"
                    let expr_21403_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 114:9230:9239  "liquidity"
                    let _1707 := var_liquidity_21374
                    let expr_21405 := _1707
                    /// @src 114:9241:9254  "sqrtRatioBX96"
                    let _1708 := var_sqrtRatioBX96_21372
                    let expr_21406 := _1708
                    /// @src 114:9257:9270  "sqrtRatioAX96"
                    let _1709 := var_sqrtRatioAX96_21370
                    let expr_21407 := _1709
                    /// @src 114:9241:9270  "sqrtRatioBX96 - sqrtRatioAX96"
                    let expr_21408 := checked_sub_t_uint160(expr_21406, expr_21407)

                    /// @src 114:9272:9284  "FixedPoint96"
                    let expr_21409_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 114:9272:9288  "FixedPoint96.Q96"
                    let expr_21410 := constant_Q96_34441()
                    /// @src 114:9214:9289  "FullMath.mulDiv(liquidity, sqrtRatioBX96 - sqrtRatioAX96, FixedPoint96.Q96)"
                    let _1711 := convert_t_uint128_to_t_uint256(expr_21405)
                    let _1712 := convert_t_uint160_to_t_uint256(expr_21408)
                    let expr_21411 := fun_mulDiv_9388(_1711, _1712, expr_21410)
                    /// @src 114:9084:9289  "roundUp..."
                    expr_21412 := expr_21411
                }
                default {
                    /// @src 114:9110:9118  "FullMath"
                    let expr_21394_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 114:9136:9145  "liquidity"
                    let _1713 := var_liquidity_21374
                    let expr_21396 := _1713
                    /// @src 114:9147:9160  "sqrtRatioBX96"
                    let _1714 := var_sqrtRatioBX96_21372
                    let expr_21397 := _1714
                    /// @src 114:9163:9176  "sqrtRatioAX96"
                    let _1715 := var_sqrtRatioAX96_21370
                    let expr_21398 := _1715
                    /// @src 114:9147:9176  "sqrtRatioBX96 - sqrtRatioAX96"
                    let expr_21399 := checked_sub_t_uint160(expr_21397, expr_21398)

                    /// @src 114:9178:9190  "FixedPoint96"
                    let expr_21400_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 114:9178:9194  "FixedPoint96.Q96"
                    let expr_21401 := constant_Q96_34441()
                    /// @src 114:9110:9195  "FullMath.mulDivRoundingUp(liquidity, sqrtRatioBX96 - sqrtRatioAX96, FixedPoint96.Q96)"
                    let _1716 := convert_t_uint128_to_t_uint256(expr_21396)
                    let _1717 := convert_t_uint160_to_t_uint256(expr_21399)
                    let expr_21402 := fun_mulDivRoundingUp_9431(_1716, _1717, expr_21401)
                    /// @src 114:9084:9289  "roundUp..."
                    expr_21412 := expr_21402
                }
                /// @src 114:9065:9289  "return..."
                var_amount1_21379 := expr_21412
                leave

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 21297
            /// @src 114:6432:6982  "function getNextSqrtPriceFromOutput(..."
            function fun_getNextSqrtPriceFromOutput_21297(var_sqrtPX96_21258, var_liquidity_21260, var_amountOut_21262, var_zeroForOne_21264) -> var_sqrtQX96_21267 {
                /// @src 114:6602:6618  "uint160 sqrtQX96"
                let zero_t_uint160_1718 := zero_value_for_split_t_uint160()
                var_sqrtQX96_21267 := zero_t_uint160_1718

                /// @src 114:6638:6646  "sqrtPX96"
                let _1719 := var_sqrtPX96_21258
                let expr_21270 := _1719
                /// @src 114:6649:6650  "0"
                let expr_21271 := 0x00
                /// @src 114:6638:6650  "sqrtPX96 > 0"
                let expr_21272 := gt(cleanup_t_uint160(expr_21270), convert_t_rational_0_by_1_to_t_uint160(expr_21271))
                /// @src 114:6630:6651  "require(sqrtPX96 > 0)"
                require_helper(expr_21272)
                /// @src 114:6669:6678  "liquidity"
                let _1720 := var_liquidity_21260
                let expr_21276 := _1720
                /// @src 114:6681:6682  "0"
                let expr_21277 := 0x00
                /// @src 114:6669:6682  "liquidity > 0"
                let expr_21278 := gt(cleanup_t_uint128(expr_21276), convert_t_rational_0_by_1_to_t_uint128(expr_21277))
                /// @src 114:6661:6683  "require(liquidity > 0)"
                require_helper(expr_21278)
                /// @src 114:6773:6783  "zeroForOne"
                let _1721 := var_zeroForOne_21264
                let expr_21281 := _1721
                /// @src 114:6773:6975  "zeroForOne..."
                let expr_21294
                switch expr_21281
                case 0 {
                    /// @src 114:6937:6945  "sqrtPX96"
                    let _1722 := var_sqrtPX96_21258
                    let expr_21289 := _1722
                    /// @src 114:6947:6956  "liquidity"
                    let _1723 := var_liquidity_21260
                    let expr_21290 := _1723
                    /// @src 114:6958:6967  "amountOut"
                    let _1724 := var_amountOut_21262
                    let expr_21291 := _1724
                    /// @src 114:6969:6974  "false"
                    let expr_21292 := 0x00
                    /// @src 114:6899:6975  "getNextSqrtPriceFromAmount0RoundingUp(sqrtPX96, liquidity, amountOut, false)"
                    let expr_21293 := fun_getNextSqrtPriceFromAmount0RoundingUp_21118(expr_21289, expr_21290, expr_21291, expr_21292)
                    /// @src 114:6773:6975  "zeroForOne..."
                    expr_21294 := expr_21293
                }
                default {
                    /// @src 114:6842:6850  "sqrtPX96"
                    let _1725 := var_sqrtPX96_21258
                    let expr_21283 := _1725
                    /// @src 114:6852:6861  "liquidity"
                    let _1726 := var_liquidity_21260
                    let expr_21284 := _1726
                    /// @src 114:6863:6872  "amountOut"
                    let _1727 := var_amountOut_21262
                    let expr_21285 := _1727
                    /// @src 114:6874:6879  "false"
                    let expr_21286 := 0x00
                    /// @src 114:6802:6880  "getNextSqrtPriceFromAmount1RoundingDown(sqrtPX96, liquidity, amountOut, false)"
                    let expr_21287 := fun_getNextSqrtPriceFromAmount1RoundingDown_21213(expr_21283, expr_21284, expr_21285, expr_21286)
                    /// @src 114:6773:6975  "zeroForOne..."
                    expr_21294 := expr_21287
                }
                /// @src 114:6754:6975  "return..."
                var_sqrtQX96_21267 := expr_21294
                leave

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 21255
            /// @src 114:5336:5886  "function getNextSqrtPriceFromInput(..."
            function fun_getNextSqrtPriceFromInput_21255(var_sqrtPX96_21216, var_liquidity_21218, var_amountIn_21220, var_zeroForOne_21222) -> var_sqrtQX96_21225 {
                /// @src 114:5504:5520  "uint160 sqrtQX96"
                let zero_t_uint160_1728 := zero_value_for_split_t_uint160()
                var_sqrtQX96_21225 := zero_t_uint160_1728

                /// @src 114:5540:5548  "sqrtPX96"
                let _1729 := var_sqrtPX96_21216
                let expr_21228 := _1729
                /// @src 114:5551:5552  "0"
                let expr_21229 := 0x00
                /// @src 114:5540:5552  "sqrtPX96 > 0"
                let expr_21230 := gt(cleanup_t_uint160(expr_21228), convert_t_rational_0_by_1_to_t_uint160(expr_21229))
                /// @src 114:5532:5553  "require(sqrtPX96 > 0)"
                require_helper(expr_21230)
                /// @src 114:5571:5580  "liquidity"
                let _1730 := var_liquidity_21218
                let expr_21234 := _1730
                /// @src 114:5583:5584  "0"
                let expr_21235 := 0x00
                /// @src 114:5571:5584  "liquidity > 0"
                let expr_21236 := gt(cleanup_t_uint128(expr_21234), convert_t_rational_0_by_1_to_t_uint128(expr_21235))
                /// @src 114:5563:5585  "require(liquidity > 0)"
                require_helper(expr_21236)
                /// @src 114:5681:5691  "zeroForOne"
                let _1731 := var_zeroForOne_21222
                let expr_21239 := _1731
                /// @src 114:5681:5879  "zeroForOne..."
                let expr_21252
                switch expr_21239
                case 0 {
                    /// @src 114:5843:5851  "sqrtPX96"
                    let _1732 := var_sqrtPX96_21216
                    let expr_21247 := _1732
                    /// @src 114:5853:5862  "liquidity"
                    let _1733 := var_liquidity_21218
                    let expr_21248 := _1733
                    /// @src 114:5864:5872  "amountIn"
                    let _1734 := var_amountIn_21220
                    let expr_21249 := _1734
                    /// @src 114:5874:5878  "true"
                    let expr_21250 := 0x01
                    /// @src 114:5803:5879  "getNextSqrtPriceFromAmount1RoundingDown(sqrtPX96, liquidity, amountIn, true)"
                    let expr_21251 := fun_getNextSqrtPriceFromAmount1RoundingDown_21213(expr_21247, expr_21248, expr_21249, expr_21250)
                    /// @src 114:5681:5879  "zeroForOne..."
                    expr_21252 := expr_21251
                }
                default {
                    /// @src 114:5748:5756  "sqrtPX96"
                    let _1735 := var_sqrtPX96_21216
                    let expr_21241 := _1735
                    /// @src 114:5758:5767  "liquidity"
                    let _1736 := var_liquidity_21218
                    let expr_21242 := _1736
                    /// @src 114:5769:5777  "amountIn"
                    let _1737 := var_amountIn_21220
                    let expr_21243 := _1737
                    /// @src 114:5779:5783  "true"
                    let expr_21244 := 0x01
                    /// @src 114:5710:5784  "getNextSqrtPriceFromAmount0RoundingUp(sqrtPX96, liquidity, amountIn, true)"
                    let expr_21245 := fun_getNextSqrtPriceFromAmount0RoundingUp_21118(expr_21241, expr_21242, expr_21243, expr_21244)
                    /// @src 114:5681:5879  "zeroForOne..."
                    expr_21252 := expr_21245
                }
                /// @src 114:5662:5879  "return..."
                var_sqrtQX96_21225 := expr_21252
                leave

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function zero_value_for_t_uint32() -> ret {
                ret := 0
            }

            function zero_value_for_t_int56() -> ret {
                ret := 0
            }

            function allocate_and_zero_memory_struct_t_struct$_Observation_$19979_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_Observation_$19979_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_uint32())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int56())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint160())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_bool())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_Observation_$19979_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_Observation_$19979_memory_ptr()
            }

            function convert_t_int24_to_t_int56(value) -> converted {
                converted := cleanup_t_int56(identity(cleanup_t_int24(value)))
            }

            function convert_t_uint32_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint32(value)))
            }

            function shift_left_t_uint160_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint160(shift_left_dynamic(bits, cleanup_t_uint160(value)))
            }

            function convert_t_rational_1_by_1_to_t_uint128(value) -> converted {
                converted := cleanup_t_uint128(identity(cleanup_t_rational_1_by_1(value)))
            }

            function convert_t_uint128_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint128(value)))
            }

            function checked_div_t_uint160(x, y) -> r {
                x := cleanup_t_uint160(x)
                y := cleanup_t_uint160(y)
                if iszero(y) { panic_error_0x12() }

                r := div(x, y)
            }

            /// @ast-id 20042
            /// @src 111:1841:2489  "function transform(..."
            function fun_transform_20042(var_last_19983_mpos, var_blockTimestamp_19985, var_tick_19987, var_liquidity_19989) -> var__19993_mpos {
                /// @src 111:1999:2017  "Observation memory"
                let zero_t_struct$_Observation_$19979_memory_ptr_1738_mpos := zero_value_for_split_t_struct$_Observation_$19979_memory_ptr()
                var__19993_mpos := zero_t_struct$_Observation_$19979_memory_ptr_1738_mpos

                /// @src 111:2044:2058  "blockTimestamp"
                let _1739 := var_blockTimestamp_19985
                let expr_19997 := _1739
                /// @src 111:2061:2065  "last"
                let _1740_mpos := var_last_19983_mpos
                let expr_19998_mpos := _1740_mpos
                /// @src 111:2061:2080  "last.blockTimestamp"
                let _1741 := add(expr_19998_mpos, 0)
                let _1742 := read_from_memoryt_uint32(_1741)
                let expr_19999 := _1742
                /// @src 111:2044:2080  "blockTimestamp - last.blockTimestamp"
                let expr_20000 := checked_sub_t_uint32(expr_19997, expr_19999)

                /// @src 111:2029:2080  "uint32 delta = blockTimestamp - last.blockTimestamp"
                let var_delta_19996 := expr_20000
                /// @src 111:2155:2169  "blockTimestamp"
                let _1743 := var_blockTimestamp_19985
                let expr_20003 := _1743
                /// @src 111:2203:2207  "last"
                let _1744_mpos := var_last_19983_mpos
                let expr_20004_mpos := _1744_mpos
                /// @src 111:2203:2222  "last.tickCumulative"
                let _1745 := add(expr_20004_mpos, 32)
                let _1746 := read_from_memoryt_int56(_1745)
                let expr_20005 := _1746
                /// @src 111:2231:2235  "tick"
                let _1747 := var_tick_19987
                let expr_20008 := _1747
                /// @src 111:2225:2236  "int56(tick)"
                let expr_20009 := convert_t_int24_to_t_int56(expr_20008)
                /// @src 111:2252:2257  "delta"
                let _1748 := var_delta_19996
                let expr_20014 := _1748
                /// @src 111:2245:2258  "uint56(delta)"
                let expr_20015 := convert_t_uint32_to_t_uint56(expr_20014)
                /// @src 111:2239:2259  "int56(uint56(delta))"
                let expr_20016 := convert_t_uint56_to_t_int56(expr_20015)
                /// @src 111:2225:2259  "int56(tick) * int56(uint56(delta))"
                let expr_20017 := checked_mul_t_int56(expr_20009, expr_20016)

                /// @src 111:2203:2259  "last.tickCumulative + int56(tick) * int56(uint56(delta))"
                let expr_20018 := checked_add_t_int56(expr_20005, expr_20017)

                /// @src 111:2312:2316  "last"
                let _1749_mpos := var_last_19983_mpos
                let expr_20019_mpos := _1749_mpos
                /// @src 111:2312:2350  "last.secondsPerLiquidityCumulativeX128"
                let _1750 := add(expr_20019_mpos, 64)
                let _1751 := read_from_memoryt_uint160(_1750)
                let expr_20020 := _1751
                /// @src 111:2383:2388  "delta"
                let _1752 := var_delta_19996
                let expr_20023 := _1752
                /// @src 111:2375:2389  "uint160(delta)"
                let expr_20024 := convert_t_uint32_to_t_uint160(expr_20023)
                /// @src 111:2393:2396  "128"
                let expr_20025 := 0x80
                /// @src 111:2375:2396  "uint160(delta) << 128"
                let _1753 := convert_t_rational_128_by_1_to_t_uint8(expr_20025)
                let expr_20026 :=
                shift_left_t_uint160_t_uint8(expr_20024, _1753)

                /// @src 111:2374:2397  "(uint160(delta) << 128)"
                let expr_20027 := expr_20026
                /// @src 111:2401:2410  "liquidity"
                let _1754 := var_liquidity_19989
                let expr_20028 := _1754
                /// @src 111:2413:2414  "0"
                let expr_20029 := 0x00
                /// @src 111:2401:2414  "liquidity > 0"
                let expr_20030 := gt(cleanup_t_uint128(expr_20028), convert_t_rational_0_by_1_to_t_uint128(expr_20029))
                /// @src 111:2401:2430  "liquidity > 0 ? liquidity : 1"
                let expr_20033
                switch expr_20030
                case 0 {
                    /// @src 111:2429:2430  "1"
                    let expr_20032 := 0x01
                    /// @src 111:2401:2430  "liquidity > 0 ? liquidity : 1"
                    expr_20033 := convert_t_rational_1_by_1_to_t_uint128(expr_20032)
                }
                default {
                    /// @src 111:2417:2426  "liquidity"
                    let _1755 := var_liquidity_19989
                    let expr_20031 := _1755
                    /// @src 111:2401:2430  "liquidity > 0 ? liquidity : 1"
                    expr_20033 := expr_20031
                }
                /// @src 111:2400:2431  "(liquidity > 0 ? liquidity : 1)"
                let expr_20034 := expr_20033
                /// @src 111:2374:2431  "(uint160(delta) << 128) / (liquidity > 0 ? liquidity : 1)"
                let expr_20035 := checked_div_t_uint160(expr_20027, convert_t_uint128_to_t_uint160(expr_20034))

                /// @src 111:2373:2432  "((uint160(delta) << 128) / (liquidity > 0 ? liquidity : 1))"
                let expr_20036 := expr_20035
                /// @src 111:2312:2432  "last.secondsPerLiquidityCumulativeX128 +..."
                let expr_20037 := checked_add_t_uint160(expr_20020, expr_20036)

                /// @src 111:2463:2467  "true"
                let expr_20038 := 0x01
                /// @src 111:2109:2482  "Observation({..."
                let expr_20039_mpos := allocate_memory_struct_t_struct$_Observation_$19979_storage_ptr()
                write_to_memory_t_uint32(add(expr_20039_mpos, 0), expr_20003)
                write_to_memory_t_int56(add(expr_20039_mpos, 32), expr_20018)
                write_to_memory_t_uint160(add(expr_20039_mpos, 64), expr_20037)
                write_to_memory_t_bool(add(expr_20039_mpos, 96), expr_20038)
                /// @src 111:2090:2482  "return..."
                var__19993_mpos := expr_20039_mpos
                leave

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function store_literal_in_memory_d30c0d219016dd7e5cf2b2c30c4d7c091820fc329f335b57cab26b9ff3384a9e(memPtr) {

                mstore(add(memPtr, 0), "OLD")

            }

            function abi_encode_t_stringliteral_d30c0d219016dd7e5cf2b2c30c4d7c091820fc329f335b57cab26b9ff3384a9e_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 3)
                store_literal_in_memory_d30c0d219016dd7e5cf2b2c30c4d7c091820fc329f335b57cab26b9ff3384a9e(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_d30c0d219016dd7e5cf2b2c30c4d7c091820fc329f335b57cab26b9ff3384a9e__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_d30c0d219016dd7e5cf2b2c30c4d7c091820fc329f335b57cab26b9ff3384a9e_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_d30c0d219016dd7e5cf2b2c30c4d7c091820fc329f335b57cab26b9ff3384a9e(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_d30c0d219016dd7e5cf2b2c30c4d7c091820fc329f335b57cab26b9ff3384a9e__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 20482
            /// @src 111:10162:11587  "function getSurroundingObservations(..."
            function fun_getSurroundingObservations_20482(var_self_20387_slot, var_time_20389, var_target_20391, var_tick_20393, var_index_20395, var_liquidity_20397, var_cardinality_20399) -> var_beforeOrAt_20403_mpos, var_atOrAfter_20406_mpos {
                /// @src 111:10408:10437  "Observation memory beforeOrAt"
                let zero_t_struct$_Observation_$19979_memory_ptr_1756_mpos := zero_value_for_split_t_struct$_Observation_$19979_memory_ptr()
                var_beforeOrAt_20403_mpos := zero_t_struct$_Observation_$19979_memory_ptr_1756_mpos
                /// @src 111:10439:10467  "Observation memory atOrAfter"
                let zero_t_struct$_Observation_$19979_memory_ptr_1757_mpos := zero_value_for_split_t_struct$_Observation_$19979_memory_ptr()
                var_atOrAfter_20406_mpos := zero_t_struct$_Observation_$19979_memory_ptr_1757_mpos

                /// @src 111:10555:10559  "self"
                let _1758_slot := var_self_20387_slot
                let expr_20409_slot := _1758_slot
                /// @src 111:10560:10565  "index"
                let _1759 := var_index_20395
                let expr_20410 := _1759
                /// @src 111:10555:10566  "self[index]"

                let _1760, _1761 := storage_array_index_access_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_20409_slot, expr_20410)
                let _1762_slot := _1760
                let expr_20411_slot := _1762_slot
                /// @src 111:10542:10566  "beforeOrAt = self[index]"
                var_beforeOrAt_20403_mpos := convert_t_struct$_Observation_$19979_storage_to_t_struct$_Observation_$19979_memory_ptr(expr_20411_slot)
                let _1763_mpos := var_beforeOrAt_20403_mpos
                let expr_20412_mpos := _1763_mpos
                /// @src 111:10685:10689  "time"
                let _1764 := var_time_20389
                let expr_20415 := _1764
                /// @src 111:10691:10701  "beforeOrAt"
                let _1765_mpos := var_beforeOrAt_20403_mpos
                let expr_20416_mpos := _1765_mpos
                /// @src 111:10691:10716  "beforeOrAt.blockTimestamp"
                let _1766 := add(expr_20416_mpos, 0)
                let _1767 := read_from_memoryt_uint32(_1766)
                let expr_20417 := _1767
                /// @src 111:10718:10724  "target"
                let _1768 := var_target_20391
                let expr_20418 := _1768
                /// @src 111:10681:10725  "lte(time, beforeOrAt.blockTimestamp, target)"
                let expr_20419 := fun_lte_20260(expr_20415, expr_20417, expr_20418)
                /// @src 111:10677:11120  "if (lte(time, beforeOrAt.blockTimestamp, target)) {..."
                if expr_20419 {
                    /// @src 111:10745:10755  "beforeOrAt"
                    let _1769_mpos := var_beforeOrAt_20403_mpos
                    let expr_20420_mpos := _1769_mpos
                    /// @src 111:10745:10770  "beforeOrAt.blockTimestamp"
                    let _1770 := add(expr_20420_mpos, 0)
                    let _1771 := read_from_memoryt_uint32(_1770)
                    let expr_20421 := _1771
                    /// @src 111:10774:10780  "target"
                    let _1772 := var_target_20391
                    let expr_20422 := _1772
                    /// @src 111:10745:10780  "beforeOrAt.blockTimestamp == target"
                    let expr_20423 := eq(cleanup_t_uint32(expr_20421), cleanup_t_uint32(expr_20422))
                    /// @src 111:10741:11110  "if (beforeOrAt.blockTimestamp == target) {..."
                    switch expr_20423
                    case 0 {
                        /// @src 111:11036:11046  "beforeOrAt"
                        let _1773_mpos := var_beforeOrAt_20403_mpos
                        let expr_20429_mpos := _1773_mpos
                        /// @src 111:11035:11095  "(beforeOrAt, transform(beforeOrAt, target, tick, liquidity))"
                        let expr_20436_component_1_mpos := expr_20429_mpos
                        /// @src 111:11058:11068  "beforeOrAt"
                        let _1774_mpos := var_beforeOrAt_20403_mpos
                        let expr_20431_mpos := _1774_mpos
                        /// @src 111:11070:11076  "target"
                        let _1775 := var_target_20391
                        let expr_20432 := _1775
                        /// @src 111:11078:11082  "tick"
                        let _1776 := var_tick_20393
                        let expr_20433 := _1776
                        /// @src 111:11084:11093  "liquidity"
                        let _1777 := var_liquidity_20397
                        let expr_20434 := _1777
                        /// @src 111:11048:11094  "transform(beforeOrAt, target, tick, liquidity)"
                        let expr_20435_mpos := fun_transform_20042(expr_20431_mpos, expr_20432, expr_20433, expr_20434)
                        /// @src 111:11035:11095  "(beforeOrAt, transform(beforeOrAt, target, tick, liquidity))"
                        let expr_20436_component_2_mpos := expr_20435_mpos
                        /// @src 111:11028:11095  "return (beforeOrAt, transform(beforeOrAt, target, tick, liquidity))"
                        var_beforeOrAt_20403_mpos := expr_20436_component_1_mpos
                        var_atOrAfter_20406_mpos := expr_20436_component_2_mpos
                        leave
                        /// @src 111:10741:11110  "if (beforeOrAt.blockTimestamp == target) {..."
                    }
                    default {
                        /// @src 111:10916:10926  "beforeOrAt"
                        let _1778_mpos := var_beforeOrAt_20403_mpos
                        let expr_20424_mpos := _1778_mpos
                        /// @src 111:10915:10938  "(beforeOrAt, atOrAfter)"
                        let expr_20426_component_1_mpos := expr_20424_mpos
                        /// @src 111:10928:10937  "atOrAfter"
                        let _1779_mpos := var_atOrAfter_20406_mpos
                        let expr_20425_mpos := _1779_mpos
                        /// @src 111:10915:10938  "(beforeOrAt, atOrAfter)"
                        let expr_20426_component_2_mpos := expr_20425_mpos
                        /// @src 111:10908:10938  "return (beforeOrAt, atOrAfter)"
                        var_beforeOrAt_20403_mpos := expr_20426_component_1_mpos
                        var_atOrAfter_20406_mpos := expr_20426_component_2_mpos
                        leave
                        /// @src 111:10741:11110  "if (beforeOrAt.blockTimestamp == target) {..."
                    }
                    /// @src 111:10677:11120  "if (lte(time, beforeOrAt.blockTimestamp, target)) {..."
                }
                /// @src 111:11196:11200  "self"
                let _1780_slot := var_self_20387_slot
                let expr_20443_slot := _1780_slot
                /// @src 111:11202:11207  "index"
                let _1781 := var_index_20395
                let expr_20444 := _1781
                /// @src 111:11210:11211  "1"
                let expr_20445 := 0x01
                /// @src 111:11202:11211  "index + 1"
                let expr_20446 := checked_add_t_uint16(expr_20444, convert_t_rational_1_by_1_to_t_uint16(expr_20445))

                /// @src 111:11201:11212  "(index + 1)"
                let expr_20447 := expr_20446
                /// @src 111:11215:11226  "cardinality"
                let _1782 := var_cardinality_20399
                let expr_20448 := _1782
                /// @src 111:11201:11226  "(index + 1) % cardinality"
                let expr_20449 := mod_t_uint16(expr_20447, expr_20448)

                /// @src 111:11196:11227  "self[(index + 1) % cardinality]"

                let _1783, _1784 := storage_array_index_access_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_20443_slot, expr_20449)
                let _1785_slot := _1783
                let expr_20450_slot := _1785_slot
                /// @src 111:11183:11227  "beforeOrAt = self[(index + 1) % cardinality]"
                var_beforeOrAt_20403_mpos := convert_t_struct$_Observation_$19979_storage_to_t_struct$_Observation_$19979_memory_ptr(expr_20450_slot)
                let _1786_mpos := var_beforeOrAt_20403_mpos
                let expr_20451_mpos := _1786_mpos
                /// @src 111:11242:11252  "beforeOrAt"
                let _1787_mpos := var_beforeOrAt_20403_mpos
                let expr_20453_mpos := _1787_mpos
                /// @src 111:11242:11264  "beforeOrAt.initialized"
                let _1788 := add(expr_20453_mpos, 96)
                let _1789 := read_from_memoryt_bool(_1788)
                let expr_20454 := _1789
                /// @src 111:11241:11264  "!beforeOrAt.initialized"
                let expr_20455 := cleanup_t_bool(iszero(expr_20454))
                /// @src 111:11237:11286  "if (!beforeOrAt.initialized) beforeOrAt = self[0]"
                if expr_20455 {
                    /// @src 111:11279:11283  "self"
                    let _1790_slot := var_self_20387_slot
                    let expr_20457_slot := _1790_slot
                    /// @src 111:11284:11285  "0"
                    let expr_20458 := 0x00
                    /// @src 111:11279:11286  "self[0]"

                    let _1791, _1792 := storage_array_index_access_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_20457_slot, expr_20458)
                    let _1793_slot := _1791
                    let expr_20459_slot := _1793_slot
                    /// @src 111:11266:11286  "beforeOrAt = self[0]"
                    var_beforeOrAt_20403_mpos := convert_t_struct$_Observation_$19979_storage_to_t_struct$_Observation_$19979_memory_ptr(expr_20459_slot)
                    let _1794_mpos := var_beforeOrAt_20403_mpos
                    let expr_20460_mpos := _1794_mpos
                    /// @src 111:11237:11286  "if (!beforeOrAt.initialized) beforeOrAt = self[0]"
                }
                /// @src 111:11397:11401  "time"
                let _1795 := var_time_20389
                let expr_20465 := _1795
                /// @src 111:11403:11413  "beforeOrAt"
                let _1796_mpos := var_beforeOrAt_20403_mpos
                let expr_20466_mpos := _1796_mpos
                /// @src 111:11403:11428  "beforeOrAt.blockTimestamp"
                let _1797 := add(expr_20466_mpos, 0)
                let _1798 := read_from_memoryt_uint32(_1797)
                let expr_20467 := _1798
                /// @src 111:11430:11436  "target"
                let _1799 := var_target_20391
                let expr_20468 := _1799
                /// @src 111:11393:11437  "lte(time, beforeOrAt.blockTimestamp, target)"
                let expr_20469 := fun_lte_20260(expr_20465, expr_20467, expr_20468)
                /// @src 111:11385:11445  "require(lte(time, beforeOrAt.blockTimestamp, target), 'OLD')"
                require_helper_t_stringliteral_d30c0d219016dd7e5cf2b2c30c4d7c091820fc329f335b57cab26b9ff3384a9e(expr_20469)
                /// @src 111:11541:11545  "self"
                let _1800_slot := var_self_20387_slot
                let expr_20474_slot := _1800_slot
                /// @src 111:11547:11551  "time"
                let _1801 := var_time_20389
                let expr_20475 := _1801
                /// @src 111:11553:11559  "target"
                let _1802 := var_target_20391
                let expr_20476 := _1802
                /// @src 111:11561:11566  "index"
                let _1803 := var_index_20395
                let expr_20477 := _1803
                /// @src 111:11568:11579  "cardinality"
                let _1804 := var_cardinality_20399
                let expr_20478 := _1804
                /// @src 111:11528:11580  "binarySearch(self, time, target, index, cardinality)"
                let expr_20479_component_1_mpos, expr_20479_component_2_mpos := fun_binarySearch_20381(expr_20474_slot, expr_20475, expr_20476, expr_20477, expr_20478)
                /// @src 111:11521:11580  "return binarySearch(self, time, target, index, cardinality)"
                var_beforeOrAt_20403_mpos := expr_20479_component_1_mpos
                var_atOrAfter_20406_mpos := expr_20479_component_2_mpos
                leave

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 7171
            /// @src 90:14931:17448  "function _updatePosition(..."
            function fun__updatePosition_7171(var_owner_7010, var_tickLower_7012, var_tickUpper_7014, var_liquidityDelta_7016, var_tick_7018) -> var_position_7022_slot {

                /// @src 90:15156:15165  "positions"
                let _1805_slot := 0x07
                let expr_7025_slot := _1805_slot
                /// @src 90:15156:15169  "positions.get"
                let expr_7026_self_slot := expr_7025_slot
                /// @src 90:15170:15175  "owner"
                let _1806 := var_owner_7010
                let expr_7027 := _1806
                /// @src 90:15177:15186  "tickLower"
                let _1807 := var_tickLower_7012
                let expr_7028 := _1807
                /// @src 90:15188:15197  "tickUpper"
                let _1808 := var_tickUpper_7014
                let expr_7029 := _1808
                /// @src 90:15156:15198  "positions.get(owner, tickLower, tickUpper)"
                let expr_7030_slot := fun_get_20786(expr_7026_self_slot, expr_7027, expr_7028, expr_7029)
                /// @src 90:15145:15198  "position = positions.get(owner, tickLower, tickUpper)"
                var_position_7022_slot := expr_7030_slot
                let _1809_slot := var_position_7022_slot
                let expr_7031_slot := _1809_slot
                /// @src 90:15241:15261  "feeGrowthGlobal0X128"
                let _1810 := read_from_storage_split_offset_0_t_uint256(0x01)
                let expr_7035 := _1810
                /// @src 90:15209:15261  "uint256 _feeGrowthGlobal0X128 = feeGrowthGlobal0X128"
                let var__feeGrowthGlobal0X128_7034 := expr_7035
                /// @src 90:15333:15353  "feeGrowthGlobal1X128"
                let _1811 := read_from_storage_split_offset_0_t_uint256(0x02)
                let expr_7039 := _1811
                /// @src 90:15301:15353  "uint256 _feeGrowthGlobal1X128 = feeGrowthGlobal1X128"
                let var__feeGrowthGlobal1X128_7038 := expr_7039
                /// @src 90:15443:15460  "bool flippedLower"
                let var_flippedLower_7042
                let zero_t_bool_1812 := zero_value_for_split_t_bool()
                var_flippedLower_7042 := zero_t_bool_1812
                /// @src 90:15470:15487  "bool flippedUpper"
                let var_flippedUpper_7045
                let zero_t_bool_1813 := zero_value_for_split_t_bool()
                var_flippedUpper_7045 := zero_t_bool_1813
                /// @src 90:15501:15515  "liquidityDelta"
                let _1814 := var_liquidityDelta_7016
                let expr_7047 := _1814
                /// @src 90:15519:15520  "0"
                let expr_7048 := 0x00
                /// @src 90:15501:15520  "liquidityDelta != 0"
                let expr_7049 := iszero(eq(cleanup_t_int128(expr_7047), convert_t_rational_0_by_1_to_t_int128(expr_7048)))
                /// @src 90:15497:16899  "if (liquidityDelta != 0) {..."
                if expr_7049 {
                    /// @src 90:15550:15567  "_blockTimestamp()"
                    let expr_7053 := fun__blockTimestamp_6442()
                    /// @src 90:15536:15567  "uint32 time = _blockTimestamp()"
                    let var_time_7051 := expr_7053
                    /// @src 90:15665:15677  "observations"
                    let _1815_slot := 0x08
                    let expr_7059_slot := _1815_slot
                    /// @src 90:15665:15691  "observations.observeSingle"
                    let expr_7060_self_slot := convert_array_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_to_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_7059_slot)
                    /// @src 90:15713:15717  "time"
                    let _1816 := var_time_7051
                    let expr_7061 := _1816
                    /// @src 90:15739:15740  "0"
                    let expr_7062 := 0x00
                    /// @src 90:15762:15767  "slot0"
                    let _1817_slot := 0x00
                    let expr_7063_slot := _1817_slot
                    /// @src 90:15762:15772  "slot0.tick"
                    let _1818 := add(expr_7063_slot, 0)
                    let _1819 := read_from_storage_split_offset_20_t_int24(_1818)
                    let expr_7064 := _1819
                    /// @src 90:15794:15799  "slot0"
                    let _1820_slot := 0x00
                    let expr_7065_slot := _1820_slot
                    /// @src 90:15794:15816  "slot0.observationIndex"
                    let _1821 := add(expr_7065_slot, 0)
                    let _1822 := read_from_storage_split_offset_23_t_uint16(_1821)
                    let expr_7066 := _1822
                    /// @src 90:15838:15847  "liquidity"
                    let _1823 := read_from_storage_split_offset_0_t_uint128(0x04)
                    let expr_7067 := _1823
                    /// @src 90:15869:15874  "slot0"
                    let _1824_slot := 0x00
                    let expr_7068_slot := _1824_slot
                    /// @src 90:15869:15897  "slot0.observationCardinality"
                    let _1825 := add(expr_7068_slot, 0)
                    let _1826 := read_from_storage_split_offset_25_t_uint16(_1825)
                    let expr_7069 := _1826
                    /// @src 90:15665:15915  "observations.observeSingle(..."
                    let _1827 := convert_t_rational_0_by_1_to_t_uint32(expr_7062)
                    let expr_7070_component_1, expr_7070_component_2 := fun_observeSingle_20649(expr_7060_self_slot, expr_7061, _1827, expr_7064, expr_7066, expr_7067, expr_7069)
                    /// @src 90:15581:15915  "(int56 tickCumulative, uint160 secondsPerLiquidityCumulativeX128) =..."
                    let var_tickCumulative_7056 := expr_7070_component_1
                    let var_secondsPerLiquidityCumulativeX128_7058 := expr_7070_component_2
                    /// @src 90:15945:15950  "ticks"
                    let _1828_slot := 0x05
                    let expr_7073_slot := _1828_slot
                    /// @src 90:15945:15957  "ticks.update"
                    let expr_7074_self_slot := expr_7073_slot
                    /// @src 90:15975:15984  "tickLower"
                    let _1829 := var_tickLower_7012
                    let expr_7075 := _1829
                    /// @src 90:16002:16006  "tick"
                    let _1830 := var_tick_7018
                    let expr_7076 := _1830
                    /// @src 90:16024:16038  "liquidityDelta"
                    let _1831 := var_liquidityDelta_7016
                    let expr_7077 := _1831
                    /// @src 90:16056:16077  "_feeGrowthGlobal0X128"
                    let _1832 := var__feeGrowthGlobal0X128_7034
                    let expr_7078 := _1832
                    /// @src 90:16095:16116  "_feeGrowthGlobal1X128"
                    let _1833 := var__feeGrowthGlobal1X128_7038
                    let expr_7079 := _1833
                    /// @src 90:16134:16167  "secondsPerLiquidityCumulativeX128"
                    let _1834 := var_secondsPerLiquidityCumulativeX128_7058
                    let expr_7080 := _1834
                    /// @src 90:16185:16199  "tickCumulative"
                    let _1835 := var_tickCumulative_7056
                    let expr_7081 := _1835
                    /// @src 90:16217:16221  "time"
                    let _1836 := var_time_7051
                    let expr_7082 := _1836
                    /// @src 90:16239:16244  "false"
                    let expr_7083 := 0x00
                    /// @src 90:16262:16281  "maxLiquidityPerTick"
                    let _1837 := loadimmutable("6257")
                    let expr_7084 := _1837
                    /// @src 90:15945:16295  "ticks.update(..."
                    let expr_7085 := fun_update_22120(expr_7074_self_slot, expr_7075, expr_7076, expr_7077, expr_7078, expr_7079, expr_7080, expr_7081, expr_7082, expr_7083, expr_7084)
                    /// @src 90:15930:16295  "flippedLower = ticks.update(..."
                    var_flippedLower_7042 := expr_7085
                    let expr_7086 := expr_7085
                    /// @src 90:16324:16329  "ticks"
                    let _1838_slot := 0x05
                    let expr_7089_slot := _1838_slot
                    /// @src 90:16324:16336  "ticks.update"
                    let expr_7090_self_slot := expr_7089_slot
                    /// @src 90:16354:16363  "tickUpper"
                    let _1839 := var_tickUpper_7014
                    let expr_7091 := _1839
                    /// @src 90:16381:16385  "tick"
                    let _1840 := var_tick_7018
                    let expr_7092 := _1840
                    /// @src 90:16403:16417  "liquidityDelta"
                    let _1841 := var_liquidityDelta_7016
                    let expr_7093 := _1841
                    /// @src 90:16435:16456  "_feeGrowthGlobal0X128"
                    let _1842 := var__feeGrowthGlobal0X128_7034
                    let expr_7094 := _1842
                    /// @src 90:16474:16495  "_feeGrowthGlobal1X128"
                    let _1843 := var__feeGrowthGlobal1X128_7038
                    let expr_7095 := _1843
                    /// @src 90:16513:16546  "secondsPerLiquidityCumulativeX128"
                    let _1844 := var_secondsPerLiquidityCumulativeX128_7058
                    let expr_7096 := _1844
                    /// @src 90:16564:16578  "tickCumulative"
                    let _1845 := var_tickCumulative_7056
                    let expr_7097 := _1845
                    /// @src 90:16596:16600  "time"
                    let _1846 := var_time_7051
                    let expr_7098 := _1846
                    /// @src 90:16618:16622  "true"
                    let expr_7099 := 0x01
                    /// @src 90:16640:16659  "maxLiquidityPerTick"
                    let _1847 := loadimmutable("6257")
                    let expr_7100 := _1847
                    /// @src 90:16324:16673  "ticks.update(..."
                    let expr_7101 := fun_update_22120(expr_7090_self_slot, expr_7091, expr_7092, expr_7093, expr_7094, expr_7095, expr_7096, expr_7097, expr_7098, expr_7099, expr_7100)
                    /// @src 90:16309:16673  "flippedUpper = ticks.update(..."
                    var_flippedUpper_7045 := expr_7101
                    let expr_7102 := expr_7101
                    /// @src 90:16692:16704  "flippedLower"
                    let _1848 := var_flippedLower_7042
                    let expr_7104 := _1848
                    /// @src 90:16688:16782  "if (flippedLower) {..."
                    if expr_7104 {
                        /// @src 90:16724:16734  "tickBitmap"
                        let _1849_slot := 0x06
                        let expr_7105_slot := _1849_slot
                        /// @src 90:16724:16743  "tickBitmap.flipTick"
                        let expr_7107_self_slot := expr_7105_slot
                        /// @src 90:16744:16753  "tickLower"
                        let _1850 := var_tickLower_7012
                        let expr_7108 := _1850
                        /// @src 90:16755:16766  "tickSpacing"
                        let _1851 := loadimmutable("6253")
                        let expr_7109 := _1851
                        fun_flipTick_22300(expr_7107_self_slot, expr_7108, expr_7109)
                        /// @src 90:16688:16782  "if (flippedLower) {..."
                    }
                    /// @src 90:16799:16811  "flippedUpper"
                    let _1852 := var_flippedUpper_7045
                    let expr_7114 := _1852
                    /// @src 90:16795:16889  "if (flippedUpper) {..."
                    if expr_7114 {
                        /// @src 90:16831:16841  "tickBitmap"
                        let _1853_slot := 0x06
                        let expr_7115_slot := _1853_slot
                        /// @src 90:16831:16850  "tickBitmap.flipTick"
                        let expr_7117_self_slot := expr_7115_slot
                        /// @src 90:16851:16860  "tickUpper"
                        let _1854 := var_tickUpper_7014
                        let expr_7118 := _1854
                        /// @src 90:16862:16873  "tickSpacing"
                        let _1855 := loadimmutable("6253")
                        let expr_7119 := _1855
                        fun_flipTick_22300(expr_7117_self_slot, expr_7118, expr_7119)
                        /// @src 90:16795:16889  "if (flippedUpper) {..."
                    }
                    /// @src 90:15497:16899  "if (liquidityDelta != 0) {..."
                }
                /// @src 90:16984:16989  "ticks"
                let _1856_slot := 0x05
                let expr_7130_slot := _1856_slot
                /// @src 90:16984:17008  "ticks.getFeeGrowthInside"
                let expr_7131_self_slot := expr_7130_slot
                /// @src 90:17009:17018  "tickLower"
                let _1857 := var_tickLower_7012
                let expr_7132 := _1857
                /// @src 90:17020:17029  "tickUpper"
                let _1858 := var_tickUpper_7014
                let expr_7133 := _1858
                /// @src 90:17031:17035  "tick"
                let _1859 := var_tick_7018
                let expr_7134 := _1859
                /// @src 90:17037:17058  "_feeGrowthGlobal0X128"
                let _1860 := var__feeGrowthGlobal0X128_7034
                let expr_7135 := _1860
                /// @src 90:17060:17081  "_feeGrowthGlobal1X128"
                let _1861 := var__feeGrowthGlobal1X128_7038
                let expr_7136 := _1861
                /// @src 90:16984:17082  "ticks.getFeeGrowthInside(tickLower, tickUpper, tick, _feeGrowthGlobal0X128, _feeGrowthGlobal1X128)"
                let expr_7137_component_1, expr_7137_component_2 := fun_getFeeGrowthInside_21968(expr_7131_self_slot, expr_7132, expr_7133, expr_7134, expr_7135, expr_7136)
                /// @src 90:16909:17082  "(uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) =..."
                let var_feeGrowthInside0X128_7127 := expr_7137_component_1
                let var_feeGrowthInside1X128_7129 := expr_7137_component_2
                /// @src 90:17093:17101  "position"
                let _1862_slot := var_position_7022_slot
                let expr_7139_slot := _1862_slot
                /// @src 90:17093:17108  "position.update"
                let expr_7141_self_slot := expr_7139_slot
                /// @src 90:17109:17123  "liquidityDelta"
                let _1863 := var_liquidityDelta_7016
                let expr_7142 := _1863
                /// @src 90:17125:17145  "feeGrowthInside0X128"
                let _1864 := var_feeGrowthInside0X128_7127
                let expr_7143 := _1864
                /// @src 90:17147:17167  "feeGrowthInside1X128"
                let _1865 := var_feeGrowthInside1X128_7129
                let expr_7144 := _1865
                fun_update_20913(expr_7141_self_slot, expr_7142, expr_7143, expr_7144)
                /// @src 90:17239:17253  "liquidityDelta"
                let _1866 := var_liquidityDelta_7016
                let expr_7147 := _1866
                /// @src 90:17256:17257  "0"
                let expr_7148 := 0x00
                /// @src 90:17239:17257  "liquidityDelta < 0"
                let expr_7149 := slt(cleanup_t_int128(expr_7147), convert_t_rational_0_by_1_to_t_int128(expr_7148))
                /// @src 90:17235:17442  "if (liquidityDelta < 0) {..."
                if expr_7149 {
                    /// @src 90:17277:17289  "flippedLower"
                    let _1867 := var_flippedLower_7042
                    let expr_7150 := _1867
                    /// @src 90:17273:17346  "if (flippedLower) {..."
                    if expr_7150 {
                        /// @src 90:17309:17314  "ticks"
                        let _1868_slot := 0x05
                        let expr_7151_slot := _1868_slot
                        /// @src 90:17309:17320  "ticks.clear"
                        let expr_7153_self_slot := expr_7151_slot
                        /// @src 90:17321:17330  "tickLower"
                        let _1869 := var_tickLower_7012
                        let expr_7154 := _1869
                        fun_clear_22137(expr_7153_self_slot, expr_7154)
                        /// @src 90:17273:17346  "if (flippedLower) {..."
                    }
                    /// @src 90:17363:17375  "flippedUpper"
                    let _1870 := var_flippedUpper_7045
                    let expr_7159 := _1870
                    /// @src 90:17359:17432  "if (flippedUpper) {..."
                    if expr_7159 {
                        /// @src 90:17395:17400  "ticks"
                        let _1871_slot := 0x05
                        let expr_7160_slot := _1871_slot
                        /// @src 90:17395:17406  "ticks.clear"
                        let expr_7162_self_slot := expr_7160_slot
                        /// @src 90:17407:17416  "tickUpper"
                        let _1872 := var_tickUpper_7014
                        let expr_7163 := _1872
                        fun_clear_22137(expr_7162_self_slot, expr_7163)
                        /// @src 90:17359:17432  "if (flippedUpper) {..."
                    }
                    /// @src 90:17235:17442  "if (liquidityDelta < 0) {..."
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 21499
            /// @src 114:10396:10808  "function getAmount1Delta(..."
            function fun_getAmount1Delta_21499(var_sqrtRatioAX96_21460, var_sqrtRatioBX96_21462, var_liquidity_21464) -> var_amount1_21467 {
                /// @src 114:10538:10552  "int256 amount1"
                let zero_t_int256_1873 := zero_value_for_split_t_int256()
                var_amount1_21467 := zero_t_int256_1873

                /// @src 114:10583:10592  "liquidity"
                let _1874 := var_liquidity_21464
                let expr_21469 := _1874
                /// @src 114:10595:10596  "0"
                let expr_21470 := 0x00
                /// @src 114:10583:10596  "liquidity < 0"
                let expr_21471 := slt(cleanup_t_int128(expr_21469), convert_t_rational_0_by_1_to_t_int128(expr_21470))
                /// @src 114:10583:10801  "liquidity < 0..."
                let expr_21496
                switch expr_21471
                case 0 {
                    /// @src 114:10735:10748  "sqrtRatioAX96"
                    let _1875 := var_sqrtRatioAX96_21460
                    let expr_21486 := _1875
                    /// @src 114:10750:10763  "sqrtRatioBX96"
                    let _1876 := var_sqrtRatioBX96_21462
                    let expr_21487 := _1876
                    /// @src 114:10773:10782  "liquidity"
                    let _1877 := var_liquidity_21464
                    let expr_21490 := _1877
                    /// @src 114:10765:10783  "uint128(liquidity)"
                    let expr_21491 := convert_t_int128_to_t_uint128(expr_21490)
                    /// @src 114:10785:10789  "true"
                    let expr_21492 := 0x01
                    /// @src 114:10719:10790  "getAmount1Delta(sqrtRatioAX96, sqrtRatioBX96, uint128(liquidity), true)"
                    let expr_21493 := fun_getAmount1Delta_21415(expr_21486, expr_21487, expr_21491, expr_21492)
                    /// @src 114:10719:10799  "getAmount1Delta(sqrtRatioAX96, sqrtRatioBX96, uint128(liquidity), true).toInt256"
                    let expr_21494_self := expr_21493
                    /// @src 114:10719:10801  "getAmount1Delta(sqrtRatioAX96, sqrtRatioBX96, uint128(liquidity), true).toInt256()"
                    let expr_21495 := fun_toInt256_20983(expr_21494_self)
                    /// @src 114:10583:10801  "liquidity < 0..."
                    expr_21496 := expr_21495
                }
                default {
                    /// @src 114:10632:10645  "sqrtRatioAX96"
                    let _1878 := var_sqrtRatioAX96_21460
                    let expr_21473 := _1878
                    /// @src 114:10647:10660  "sqrtRatioBX96"
                    let _1879 := var_sqrtRatioBX96_21462
                    let expr_21474 := _1879
                    /// @src 114:10671:10680  "liquidity"
                    let _1880 := var_liquidity_21464
                    let expr_21477 := _1880
                    /// @src 114:10670:10680  "-liquidity"
                    let expr_21478 := negate_t_int128(expr_21477)
                    /// @src 114:10662:10681  "uint128(-liquidity)"
                    let expr_21479 := convert_t_int128_to_t_uint128(expr_21478)
                    /// @src 114:10683:10688  "false"
                    let expr_21480 := 0x00
                    /// @src 114:10616:10689  "getAmount1Delta(sqrtRatioAX96, sqrtRatioBX96, uint128(-liquidity), false)"
                    let expr_21481 := fun_getAmount1Delta_21415(expr_21473, expr_21474, expr_21479, expr_21480)
                    /// @src 114:10616:10698  "getAmount1Delta(sqrtRatioAX96, sqrtRatioBX96, uint128(-liquidity), false).toInt256"
                    let expr_21482_self := expr_21481
                    /// @src 114:10616:10700  "getAmount1Delta(sqrtRatioAX96, sqrtRatioBX96, uint128(-liquidity), false).toInt256()"
                    let expr_21483 := fun_toInt256_20983(expr_21482_self)
                    /// @src 114:10615:10700  "-getAmount1Delta(sqrtRatioAX96, sqrtRatioBX96, uint128(-liquidity), false).toInt256()"
                    let expr_21484 := negate_t_int256(expr_21483)
                    /// @src 114:10583:10801  "liquidity < 0..."
                    expr_21496 := expr_21484
                }
                /// @src 114:10564:10801  "return..."
                var_amount1_21467 := expr_21496
                leave

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 21457
            /// @src 114:9640:10052  "function getAmount0Delta(..."
            function fun_getAmount0Delta_21457(var_sqrtRatioAX96_21418, var_sqrtRatioBX96_21420, var_liquidity_21422) -> var_amount0_21425 {
                /// @src 114:9782:9796  "int256 amount0"
                let zero_t_int256_1881 := zero_value_for_split_t_int256()
                var_amount0_21425 := zero_t_int256_1881

                /// @src 114:9827:9836  "liquidity"
                let _1882 := var_liquidity_21422
                let expr_21427 := _1882
                /// @src 114:9839:9840  "0"
                let expr_21428 := 0x00
                /// @src 114:9827:9840  "liquidity < 0"
                let expr_21429 := slt(cleanup_t_int128(expr_21427), convert_t_rational_0_by_1_to_t_int128(expr_21428))
                /// @src 114:9827:10045  "liquidity < 0..."
                let expr_21454
                switch expr_21429
                case 0 {
                    /// @src 114:9979:9992  "sqrtRatioAX96"
                    let _1883 := var_sqrtRatioAX96_21418
                    let expr_21444 := _1883
                    /// @src 114:9994:10007  "sqrtRatioBX96"
                    let _1884 := var_sqrtRatioBX96_21420
                    let expr_21445 := _1884
                    /// @src 114:10017:10026  "liquidity"
                    let _1885 := var_liquidity_21422
                    let expr_21448 := _1885
                    /// @src 114:10009:10027  "uint128(liquidity)"
                    let expr_21449 := convert_t_int128_to_t_uint128(expr_21448)
                    /// @src 114:10029:10033  "true"
                    let expr_21450 := 0x01
                    /// @src 114:9963:10034  "getAmount0Delta(sqrtRatioAX96, sqrtRatioBX96, uint128(liquidity), true)"
                    let expr_21451 := fun_getAmount0Delta_21367(expr_21444, expr_21445, expr_21449, expr_21450)
                    /// @src 114:9963:10043  "getAmount0Delta(sqrtRatioAX96, sqrtRatioBX96, uint128(liquidity), true).toInt256"
                    let expr_21452_self := expr_21451
                    /// @src 114:9963:10045  "getAmount0Delta(sqrtRatioAX96, sqrtRatioBX96, uint128(liquidity), true).toInt256()"
                    let expr_21453 := fun_toInt256_20983(expr_21452_self)
                    /// @src 114:9827:10045  "liquidity < 0..."
                    expr_21454 := expr_21453
                }
                default {
                    /// @src 114:9876:9889  "sqrtRatioAX96"
                    let _1886 := var_sqrtRatioAX96_21418
                    let expr_21431 := _1886
                    /// @src 114:9891:9904  "sqrtRatioBX96"
                    let _1887 := var_sqrtRatioBX96_21420
                    let expr_21432 := _1887
                    /// @src 114:9915:9924  "liquidity"
                    let _1888 := var_liquidity_21422
                    let expr_21435 := _1888
                    /// @src 114:9914:9924  "-liquidity"
                    let expr_21436 := negate_t_int128(expr_21435)
                    /// @src 114:9906:9925  "uint128(-liquidity)"
                    let expr_21437 := convert_t_int128_to_t_uint128(expr_21436)
                    /// @src 114:9927:9932  "false"
                    let expr_21438 := 0x00
                    /// @src 114:9860:9933  "getAmount0Delta(sqrtRatioAX96, sqrtRatioBX96, uint128(-liquidity), false)"
                    let expr_21439 := fun_getAmount0Delta_21367(expr_21431, expr_21432, expr_21437, expr_21438)
                    /// @src 114:9860:9942  "getAmount0Delta(sqrtRatioAX96, sqrtRatioBX96, uint128(-liquidity), false).toInt256"
                    let expr_21440_self := expr_21439
                    /// @src 114:9860:9944  "getAmount0Delta(sqrtRatioAX96, sqrtRatioBX96, uint128(-liquidity), false).toInt256()"
                    let expr_21441 := fun_toInt256_20983(expr_21440_self)
                    /// @src 114:9859:9944  "-getAmount0Delta(sqrtRatioAX96, sqrtRatioBX96, uint128(-liquidity), false).toInt256()"
                    let expr_21442 := negate_t_int256(expr_21441)
                    /// @src 114:9827:10045  "liquidity < 0..."
                    expr_21454 := expr_21442
                }
                /// @src 114:9808:10045  "return..."
                var_amount0_21425 := expr_21454
                leave

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 34457
            /// @src 120:529:694  "function divRoundingUp(uint256 x, uint256 y) internal pure returns (uint256 z) {..."
            function fun_divRoundingUp_34457(var_x_34448, var_y_34450) -> var_z_34453 {
                /// @src 120:597:606  "uint256 z"
                let zero_t_uint256_1889 := zero_value_for_split_t_uint256()
                var_z_34453 := zero_t_uint256_1889

                /// @src 120:618:688  "assembly {..."
                {
                    var_z_34453 := add(div(var_x_34448, var_y_34450), gt(mod(var_x_34448, var_y_34450), 0))
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 21118
            /// @src 114:1442:2808  "function getNextSqrtPriceFromAmount0RoundingUp(..."
            function fun_getNextSqrtPriceFromAmount0RoundingUp_21118(var_sqrtPX96_21001, var_liquidity_21003, var_amount_21005, var_add_21007) -> var__21010 {
                /// @src 114:1613:1620  "uint160"
                let zero_t_uint160_1890 := zero_value_for_split_t_uint160()
                var__21010 := zero_t_uint160_1890

                /// @src 114:1748:1754  "amount"
                let _1891 := var_amount_21005
                let expr_21012 := _1891
                /// @src 114:1758:1759  "0"
                let expr_21013 := 0x00
                /// @src 114:1748:1759  "amount == 0"
                let expr_21014 := eq(cleanup_t_uint256(expr_21012), convert_t_rational_0_by_1_to_t_uint256(expr_21013))
                /// @src 114:1744:1776  "if (amount == 0) return sqrtPX96"
                if expr_21014 {
                    /// @src 114:1768:1776  "sqrtPX96"
                    let _1892 := var_sqrtPX96_21001
                    let expr_21015 := _1892
                    /// @src 114:1761:1776  "return sqrtPX96"
                    var__21010 := expr_21015
                    leave
                    /// @src 114:1744:1776  "if (amount == 0) return sqrtPX96"
                }
                /// @src 114:1815:1824  "liquidity"
                let _1893 := var_liquidity_21003
                let expr_21022 := _1893
                /// @src 114:1807:1825  "uint256(liquidity)"
                let expr_21023 := convert_t_uint128_to_t_uint256(expr_21022)
                /// @src 114:1829:1841  "FixedPoint96"
                let expr_21024_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                /// @src 114:1829:1852  "FixedPoint96.RESOLUTION"
                let expr_21025 := constant_RESOLUTION_34438()
                /// @src 114:1807:1852  "uint256(liquidity) << FixedPoint96.RESOLUTION"
                let expr_21026 :=
                shift_left_t_uint256_t_uint8(expr_21023, expr_21025)

                /// @src 114:1786:1852  "uint256 numerator1 = uint256(liquidity) << FixedPoint96.RESOLUTION"
                let var_numerator1_21019 := expr_21026
                /// @src 114:1867:1870  "add"
                let _1894 := var_add_21007
                let expr_21028 := _1894
                /// @src 114:1863:2802  "if (add) {..."
                switch expr_21028
                case 0 {
                    /// @src 114:2372:2387  "uint256 product"
                    let var_product_21081
                    let zero_t_uint256_1895 := zero_value_for_split_t_uint256()
                    var_product_21081 := zero_t_uint256_1895
                    /// @src 114:2578:2584  "amount"
                    let _1896 := var_amount_21005
                    let expr_21085 := _1896
                    /// @src 114:2587:2595  "sqrtPX96"
                    let _1897 := var_sqrtPX96_21001
                    let expr_21086 := _1897
                    /// @src 114:2578:2595  "amount * sqrtPX96"
                    let expr_21087 := checked_mul_t_uint256(expr_21085, convert_t_uint160_to_t_uint256(expr_21086))

                    /// @src 114:2568:2595  "product = amount * sqrtPX96"
                    var_product_21081 := expr_21087
                    let expr_21088 := expr_21087
                    /// @src 114:2567:2596  "(product = amount * sqrtPX96)"
                    let expr_21089 := expr_21088
                    /// @src 114:2599:2605  "amount"
                    let _1898 := var_amount_21005
                    let expr_21090 := _1898
                    /// @src 114:2567:2605  "(product = amount * sqrtPX96) / amount"
                    let expr_21091 := checked_div_t_uint256(expr_21089, expr_21090)

                    /// @src 114:2609:2617  "sqrtPX96"
                    let _1899 := var_sqrtPX96_21001
                    let expr_21092 := _1899
                    /// @src 114:2567:2617  "(product = amount * sqrtPX96) / amount == sqrtPX96"
                    let expr_21093 := eq(cleanup_t_uint256(expr_21091), convert_t_uint160_to_t_uint256(expr_21092))
                    /// @src 114:2567:2641  "(product = amount * sqrtPX96) / amount == sqrtPX96 && numerator1 > product"
                    let expr_21097 := expr_21093
                    if expr_21097 {
                        /// @src 114:2621:2631  "numerator1"
                        let _1900 := var_numerator1_21019
                        let expr_21094 := _1900
                        /// @src 114:2634:2641  "product"
                        let _1901 := var_product_21081
                        let expr_21095 := _1901
                        /// @src 114:2621:2641  "numerator1 > product"
                        let expr_21096 := gt(cleanup_t_uint256(expr_21094), cleanup_t_uint256(expr_21095))
                        /// @src 114:2567:2641  "(product = amount * sqrtPX96) / amount == sqrtPX96 && numerator1 > product"
                        expr_21097 := expr_21096
                    }
                    /// @src 114:2559:2642  "require((product = amount * sqrtPX96) / amount == sqrtPX96 && numerator1 > product)"
                    require_helper(expr_21097)
                    /// @src 114:2678:2688  "numerator1"
                    let _1902 := var_numerator1_21019
                    let expr_21102 := _1902
                    /// @src 114:2691:2698  "product"
                    let _1903 := var_product_21081
                    let expr_21103 := _1903
                    /// @src 114:2678:2698  "numerator1 - product"
                    let expr_21104 := checked_sub_t_uint256(expr_21102, expr_21103)

                    /// @src 114:2656:2698  "uint256 denominator = numerator1 - product"
                    let var_denominator_21101 := expr_21104
                    /// @src 114:2719:2727  "FullMath"
                    let expr_21106_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 114:2745:2755  "numerator1"
                    let _1904 := var_numerator1_21019
                    let expr_21108 := _1904
                    /// @src 114:2757:2765  "sqrtPX96"
                    let _1905 := var_sqrtPX96_21001
                    let expr_21109 := _1905
                    /// @src 114:2767:2778  "denominator"
                    let _1906 := var_denominator_21101
                    let expr_21110 := _1906
                    /// @src 114:2719:2779  "FullMath.mulDivRoundingUp(numerator1, sqrtPX96, denominator)"
                    let _1907 := convert_t_uint160_to_t_uint256(expr_21109)
                    let expr_21111 := fun_mulDivRoundingUp_9431(expr_21108, _1907, expr_21110)
                    /// @src 114:2719:2789  "FullMath.mulDivRoundingUp(numerator1, sqrtPX96, denominator).toUint160"
                    let expr_21112_self := expr_21111
                    /// @src 114:2719:2791  "FullMath.mulDivRoundingUp(numerator1, sqrtPX96, denominator).toUint160()"
                    let expr_21113 := fun_toUint160_20938(expr_21112_self)
                    /// @src 114:2712:2791  "return FullMath.mulDivRoundingUp(numerator1, sqrtPX96, denominator).toUint160()"
                    var__21010 := expr_21113
                    leave
                    /// @src 114:1863:2802  "if (add) {..."
                }
                default {
                    /// @src 114:1886:1901  "uint256 product"
                    let var_product_21030
                    let zero_t_uint256_1908 := zero_value_for_split_t_uint256()
                    var_product_21030 := zero_t_uint256_1908
                    /// @src 114:1930:1936  "amount"
                    let _1909 := var_amount_21005
                    let expr_21033 := _1909
                    /// @src 114:1939:1947  "sqrtPX96"
                    let _1910 := var_sqrtPX96_21001
                    let expr_21034 := _1910
                    /// @src 114:1930:1947  "amount * sqrtPX96"
                    let expr_21035 := checked_mul_t_uint256(expr_21033, convert_t_uint160_to_t_uint256(expr_21034))

                    /// @src 114:1920:1947  "product = amount * sqrtPX96"
                    var_product_21030 := expr_21035
                    let expr_21036 := expr_21035
                    /// @src 114:1919:1948  "(product = amount * sqrtPX96)"
                    let expr_21037 := expr_21036
                    /// @src 114:1951:1957  "amount"
                    let _1911 := var_amount_21005
                    let expr_21038 := _1911
                    /// @src 114:1919:1957  "(product = amount * sqrtPX96) / amount"
                    let expr_21039 := checked_div_t_uint256(expr_21037, expr_21038)

                    /// @src 114:1961:1969  "sqrtPX96"
                    let _1912 := var_sqrtPX96_21001
                    let expr_21040 := _1912
                    /// @src 114:1919:1969  "(product = amount * sqrtPX96) / amount == sqrtPX96"
                    let expr_21041 := eq(cleanup_t_uint256(expr_21039), convert_t_uint160_to_t_uint256(expr_21040))
                    /// @src 114:1915:2238  "if ((product = amount * sqrtPX96) / amount == sqrtPX96) {..."
                    if expr_21041 {
                        /// @src 114:2011:2021  "numerator1"
                        let _1913 := var_numerator1_21019
                        let expr_21044 := _1913
                        /// @src 114:2024:2031  "product"
                        let _1914 := var_product_21030
                        let expr_21045 := _1914
                        /// @src 114:2011:2031  "numerator1 + product"
                        let expr_21046 := checked_add_t_uint256(expr_21044, expr_21045)

                        /// @src 114:1989:2031  "uint256 denominator = numerator1 + product"
                        let var_denominator_21043 := expr_21046
                        /// @src 114:2053:2064  "denominator"
                        let _1915 := var_denominator_21043
                        let expr_21048 := _1915
                        /// @src 114:2068:2078  "numerator1"
                        let _1916 := var_numerator1_21019
                        let expr_21049 := _1916
                        /// @src 114:2053:2078  "denominator >= numerator1"
                        let expr_21050 := iszero(lt(cleanup_t_uint256(expr_21048), cleanup_t_uint256(expr_21049)))
                        /// @src 114:2049:2223  "if (denominator >= numerator1)..."
                        if expr_21050 {
                            /// @src 114:2162:2170  "FullMath"
                            let expr_21053_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                            /// @src 114:2188:2198  "numerator1"
                            let _1917 := var_numerator1_21019
                            let expr_21055 := _1917
                            /// @src 114:2200:2208  "sqrtPX96"
                            let _1918 := var_sqrtPX96_21001
                            let expr_21056 := _1918
                            /// @src 114:2210:2221  "denominator"
                            let _1919 := var_denominator_21043
                            let expr_21057 := _1919
                            /// @src 114:2162:2222  "FullMath.mulDivRoundingUp(numerator1, sqrtPX96, denominator)"
                            let _1920 := convert_t_uint160_to_t_uint256(expr_21056)
                            let expr_21058 := fun_mulDivRoundingUp_9431(expr_21055, _1920, expr_21057)
                            /// @src 114:2154:2223  "uint160(FullMath.mulDivRoundingUp(numerator1, sqrtPX96, denominator))"
                            let expr_21059 := convert_t_uint256_to_t_uint160(expr_21058)
                            /// @src 114:2147:2223  "return uint160(FullMath.mulDivRoundingUp(numerator1, sqrtPX96, denominator))"
                            var__21010 := expr_21059
                            leave
                            /// @src 114:2049:2223  "if (denominator >= numerator1)..."
                        }
                        /// @src 114:1915:2238  "if ((product = amount * sqrtPX96) / amount == sqrtPX96) {..."
                    }
                    /// @src 114:2267:2277  "UnsafeMath"
                    let expr_21066_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/UnsafeMath.sol:UnsafeMath")
                    /// @src 114:2292:2302  "numerator1"
                    let _1921 := var_numerator1_21019
                    let expr_21068 := _1921
                    /// @src 114:2305:2315  "numerator1"
                    let _1922 := var_numerator1_21019
                    let expr_21069 := _1922
                    /// @src 114:2318:2326  "sqrtPX96"
                    let _1923 := var_sqrtPX96_21001
                    let expr_21070 := _1923
                    /// @src 114:2305:2326  "numerator1 / sqrtPX96"
                    let expr_21071 := checked_div_t_uint256(expr_21069, convert_t_uint160_to_t_uint256(expr_21070))

                    /// @src 114:2304:2327  "(numerator1 / sqrtPX96)"
                    let expr_21072 := expr_21071
                    /// @src 114:2304:2331  "(numerator1 / sqrtPX96).add"
                    let expr_21073_self := expr_21072
                    /// @src 114:2332:2338  "amount"
                    let _1924 := var_amount_21005
                    let expr_21074 := _1924
                    /// @src 114:2304:2339  "(numerator1 / sqrtPX96).add(amount)"
                    let expr_21075 := fun_add_19862(expr_21073_self, expr_21074)
                    /// @src 114:2267:2340  "UnsafeMath.divRoundingUp(numerator1, (numerator1 / sqrtPX96).add(amount))"
                    let expr_21076 := fun_divRoundingUp_34457(expr_21068, expr_21075)
                    /// @src 114:2259:2341  "uint160(UnsafeMath.divRoundingUp(numerator1, (numerator1 / sqrtPX96).add(amount)))"
                    let expr_21077 := convert_t_uint256_to_t_uint160(expr_21076)
                    /// @src 114:2252:2341  "return uint160(UnsafeMath.divRoundingUp(numerator1, (numerator1 / sqrtPX96).add(amount)))"
                    var__21010 := expr_21077
                    leave
                    /// @src 114:1863:2802  "if (add) {..."
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 21213
            /// @src 114:3634:4787  "function getNextSqrtPriceFromAmount1RoundingDown(..."
            function fun_getNextSqrtPriceFromAmount1RoundingDown_21213(var_sqrtPX96_21121, var_liquidity_21123, var_amount_21125, var_add_21127) -> var__21130 {
                /// @src 114:3807:3814  "uint160"
                let zero_t_uint160_1925 := zero_value_for_split_t_uint160()
                var__21130 := zero_t_uint160_1925

                /// @src 114:3984:3987  "add"
                let _1926 := var_add_21127
                let expr_21132 := _1926
                /// @src 114:3980:4781  "if (add) {..."
                switch expr_21132
                case 0 {
                    /// @src 114:4411:4417  "amount"
                    let _1927 := var_amount_21125
                    let expr_21172 := _1927
                    /// @src 114:4421:4438  "type(uint160).max"
                    let expr_21177 := 0xffffffffffffffffffffffffffffffffffffffff
                    /// @src 114:4411:4438  "amount <= type(uint160).max"
                    let expr_21178 := iszero(gt(cleanup_t_uint256(expr_21172), convert_t_uint160_to_t_uint256(expr_21177)))
                    /// @src 114:4411:4624  "amount <= type(uint160).max..."
                    let expr_21194
                    switch expr_21178
                    case 0 {
                        /// @src 114:4562:4570  "FullMath"
                        let expr_21187_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                        /// @src 114:4588:4594  "amount"
                        let _1928 := var_amount_21125
                        let expr_21189 := _1928
                        /// @src 114:4596:4608  "FixedPoint96"
                        let expr_21190_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                        /// @src 114:4596:4612  "FixedPoint96.Q96"
                        let expr_21191 := constant_Q96_34441()
                        /// @src 114:4614:4623  "liquidity"
                        let _1929 := var_liquidity_21123
                        let expr_21192 := _1929
                        /// @src 114:4562:4624  "FullMath.mulDivRoundingUp(amount, FixedPoint96.Q96, liquidity)"
                        let _1930 := convert_t_uint128_to_t_uint256(expr_21192)
                        let expr_21193 := fun_mulDivRoundingUp_9431(expr_21189, expr_21191, _1930)
                        /// @src 114:4411:4624  "amount <= type(uint160).max..."
                        expr_21194 := expr_21193
                    }
                    default {
                        /// @src 114:4465:4475  "UnsafeMath"
                        let expr_21179_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/UnsafeMath.sol:UnsafeMath")
                        /// @src 114:4490:4496  "amount"
                        let _1931 := var_amount_21125
                        let expr_21181 := _1931
                        /// @src 114:4500:4512  "FixedPoint96"
                        let expr_21182_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                        /// @src 114:4500:4523  "FixedPoint96.RESOLUTION"
                        let expr_21183 := constant_RESOLUTION_34438()
                        /// @src 114:4490:4523  "amount << FixedPoint96.RESOLUTION"
                        let expr_21184 :=
                        shift_left_t_uint256_t_uint8(expr_21181, expr_21183)

                        /// @src 114:4525:4534  "liquidity"
                        let _1932 := var_liquidity_21123
                        let expr_21185 := _1932
                        /// @src 114:4465:4535  "UnsafeMath.divRoundingUp(amount << FixedPoint96.RESOLUTION, liquidity)"
                        let _1933 := convert_t_uint128_to_t_uint256(expr_21185)
                        let expr_21186 := fun_divRoundingUp_34457(expr_21184, _1933)
                        /// @src 114:4411:4624  "amount <= type(uint160).max..."
                        expr_21194 := expr_21186
                    }
                    /// @src 114:4389:4642  "(..."
                    let expr_21195 := expr_21194
                    /// @src 114:4354:4642  "uint256 quotient =..."
                    let var_quotient_21171 := expr_21195
                    /// @src 114:4665:4673  "sqrtPX96"
                    let _1934 := var_sqrtPX96_21121
                    let expr_21198 := _1934
                    /// @src 114:4676:4684  "quotient"
                    let _1935 := var_quotient_21171
                    let expr_21199 := _1935
                    /// @src 114:4665:4684  "sqrtPX96 > quotient"
                    let expr_21200 := gt(convert_t_uint160_to_t_uint256(expr_21198), cleanup_t_uint256(expr_21199))
                    /// @src 114:4657:4685  "require(sqrtPX96 > quotient)"
                    require_helper(expr_21200)
                    /// @src 114:4750:4758  "sqrtPX96"
                    let _1936 := var_sqrtPX96_21121
                    let expr_21205 := _1936
                    /// @src 114:4761:4769  "quotient"
                    let _1937 := var_quotient_21171
                    let expr_21206 := _1937
                    /// @src 114:4750:4769  "sqrtPX96 - quotient"
                    let expr_21207 := checked_sub_t_uint256(convert_t_uint160_to_t_uint256(expr_21205), expr_21206)

                    /// @src 114:4742:4770  "uint160(sqrtPX96 - quotient)"
                    let expr_21208 := convert_t_uint256_to_t_uint160(expr_21207)
                    /// @src 114:4735:4770  "return uint160(sqrtPX96 - quotient)"
                    var__21130 := expr_21208
                    leave
                    /// @src 114:3980:4781  "if (add) {..."
                }
                default {
                    /// @src 114:4060:4066  "amount"
                    let _1938 := var_amount_21125
                    let expr_21135 := _1938
                    /// @src 114:4070:4087  "type(uint160).max"
                    let expr_21140 := 0xffffffffffffffffffffffffffffffffffffffff
                    /// @src 114:4060:4087  "amount <= type(uint160).max"
                    let expr_21141 := iszero(gt(cleanup_t_uint256(expr_21135), convert_t_uint160_to_t_uint256(expr_21140)))
                    /// @src 114:4060:4240  "amount <= type(uint160).max..."
                    let expr_21156
                    switch expr_21141
                    case 0 {
                        /// @src 114:4188:4196  "FullMath"
                        let expr_21149_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                        /// @src 114:4204:4210  "amount"
                        let _1939 := var_amount_21125
                        let expr_21151 := _1939
                        /// @src 114:4212:4224  "FixedPoint96"
                        let expr_21152_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                        /// @src 114:4212:4228  "FixedPoint96.Q96"
                        let expr_21153 := constant_Q96_34441()
                        /// @src 114:4230:4239  "liquidity"
                        let _1940 := var_liquidity_21123
                        let expr_21154 := _1940
                        /// @src 114:4188:4240  "FullMath.mulDiv(amount, FixedPoint96.Q96, liquidity)"
                        let _1941 := convert_t_uint128_to_t_uint256(expr_21154)
                        let expr_21155 := fun_mulDiv_9388(expr_21151, expr_21153, _1941)
                        /// @src 114:4060:4240  "amount <= type(uint160).max..."
                        expr_21156 := expr_21155
                    }
                    default {
                        /// @src 114:4115:4121  "amount"
                        let _1942 := var_amount_21125
                        let expr_21142 := _1942
                        /// @src 114:4125:4137  "FixedPoint96"
                        let expr_21143_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                        /// @src 114:4125:4148  "FixedPoint96.RESOLUTION"
                        let expr_21144 := constant_RESOLUTION_34438()
                        /// @src 114:4115:4148  "amount << FixedPoint96.RESOLUTION"
                        let expr_21145 :=
                        shift_left_t_uint256_t_uint8(expr_21142, expr_21144)

                        /// @src 114:4114:4149  "(amount << FixedPoint96.RESOLUTION)"
                        let expr_21146 := expr_21145
                        /// @src 114:4152:4161  "liquidity"
                        let _1943 := var_liquidity_21123
                        let expr_21147 := _1943
                        /// @src 114:4114:4161  "(amount << FixedPoint96.RESOLUTION) / liquidity"
                        let expr_21148 := checked_div_t_uint256(expr_21146, convert_t_uint128_to_t_uint256(expr_21147))

                        /// @src 114:4060:4240  "amount <= type(uint160).max..."
                        expr_21156 := expr_21148
                    }
                    /// @src 114:4038:4258  "(..."
                    let expr_21157 := expr_21156
                    /// @src 114:4003:4258  "uint256 quotient =..."
                    let var_quotient_21134 := expr_21157
                    /// @src 114:4288:4296  "sqrtPX96"
                    let _1944 := var_sqrtPX96_21121
                    let expr_21161 := _1944
                    /// @src 114:4280:4297  "uint256(sqrtPX96)"
                    let expr_21162 := convert_t_uint160_to_t_uint256(expr_21161)
                    /// @src 114:4280:4301  "uint256(sqrtPX96).add"
                    let expr_21163_self := expr_21162
                    /// @src 114:4302:4310  "quotient"
                    let _1945 := var_quotient_21134
                    let expr_21164 := _1945
                    /// @src 114:4280:4311  "uint256(sqrtPX96).add(quotient)"
                    let expr_21165 := fun_add_19862(expr_21163_self, expr_21164)
                    /// @src 114:4280:4321  "uint256(sqrtPX96).add(quotient).toUint160"
                    let expr_21166_self := expr_21165
                    /// @src 114:4280:4323  "uint256(sqrtPX96).add(quotient).toUint160()"
                    let expr_21167 := fun_toUint160_20938(expr_21166_self)
                    /// @src 114:4273:4323  "return uint256(sqrtPX96).add(quotient).toUint160()"
                    var__21130 := expr_21167
                    leave
                    /// @src 114:3980:4781  "if (add) {..."
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function cleanup_t_uint40(value) -> cleaned {
                cleaned := and(value, 0xffffffffff)
            }

            function convert_t_uint32_to_t_uint40(value) -> converted {
                converted := cleanup_t_uint40(identity(cleanup_t_uint32(value)))
            }

            function convert_t_rational_4294967296_by_1_to_t_uint40(value) -> converted {
                converted := cleanup_t_uint40(identity(cleanup_t_rational_4294967296_by_1(value)))
            }

            function checked_add_t_uint40(x, y) -> sum {
                x := cleanup_t_uint40(x)
                y := cleanup_t_uint40(y)
                sum := add(x, y)

                if gt(sum, 0xffffffffff) { panic_error_0x11() }

            }

            function convert_t_uint40_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint40(value)))
            }

            /// @ast-id 20260
            /// @src 111:6748:7119  "function lte(..."
            function fun_lte_20260(var_time_20208, var_a_20210, var_b_20212) -> var__20215 {
                /// @src 111:6846:6850  "bool"
                let zero_t_bool_1946 := zero_value_for_split_t_bool()
                var__20215 := zero_t_bool_1946

                /// @src 111:6926:6927  "a"
                let _1947 := var_a_20210
                let expr_20217 := _1947
                /// @src 111:6931:6935  "time"
                let _1948 := var_time_20208
                let expr_20218 := _1948
                /// @src 111:6926:6935  "a <= time"
                let expr_20219 := iszero(gt(cleanup_t_uint32(expr_20217), cleanup_t_uint32(expr_20218)))
                /// @src 111:6926:6948  "a <= time && b <= time"
                let expr_20223 := expr_20219
                if expr_20223 {
                    /// @src 111:6939:6940  "b"
                    let _1949 := var_b_20212
                    let expr_20220 := _1949
                    /// @src 111:6944:6948  "time"
                    let _1950 := var_time_20208
                    let expr_20221 := _1950
                    /// @src 111:6939:6948  "b <= time"
                    let expr_20222 := iszero(gt(cleanup_t_uint32(expr_20220), cleanup_t_uint32(expr_20221)))
                    /// @src 111:6926:6948  "a <= time && b <= time"
                    expr_20223 := expr_20222
                }
                /// @src 111:6922:6963  "if (a <= time && b <= time) return a <= b"
                if expr_20223 {
                    /// @src 111:6957:6958  "a"
                    let _1951 := var_a_20210
                    let expr_20224 := _1951
                    /// @src 111:6962:6963  "b"
                    let _1952 := var_b_20212
                    let expr_20225 := _1952
                    /// @src 111:6957:6963  "a <= b"
                    let expr_20226 := iszero(gt(cleanup_t_uint32(expr_20224), cleanup_t_uint32(expr_20225)))
                    /// @src 111:6950:6963  "return a <= b"
                    var__20215 := expr_20226
                    leave
                    /// @src 111:6922:6963  "if (a <= time && b <= time) return a <= b"
                }
                /// @src 111:6994:6995  "a"
                let _1953 := var_a_20210
                let expr_20231 := _1953
                /// @src 111:6998:7002  "time"
                let _1954 := var_time_20208
                let expr_20232 := _1954
                /// @src 111:6994:7002  "a > time"
                let expr_20233 := gt(cleanup_t_uint32(expr_20231), cleanup_t_uint32(expr_20232))
                /// @src 111:6994:7018  "a > time ? a : a + 2**32"
                let expr_20240
                switch expr_20233
                case 0 {
                    /// @src 111:7009:7010  "a"
                    let _1955 := var_a_20210
                    let expr_20235 := _1955
                    /// @src 111:7013:7018  "2**32"
                    let expr_20238 := 0x0100000000
                    /// @src 111:7009:7018  "a + 2**32"
                    let expr_20239 := checked_add_t_uint40(convert_t_uint32_to_t_uint40(expr_20235), convert_t_rational_4294967296_by_1_to_t_uint40(expr_20238))

                    /// @src 111:6994:7018  "a > time ? a : a + 2**32"
                    expr_20240 := expr_20239
                }
                default {
                    /// @src 111:7005:7006  "a"
                    let _1956 := var_a_20210
                    let expr_20234 := _1956
                    /// @src 111:6994:7018  "a > time ? a : a + 2**32"
                    expr_20240 := convert_t_uint32_to_t_uint40(expr_20234)
                }
                /// @src 111:6974:7018  "uint256 aAdjusted = a > time ? a : a + 2**32"
                let var_aAdjusted_20230 := convert_t_uint40_to_t_uint256(expr_20240)
                /// @src 111:7048:7049  "b"
                let _1957 := var_b_20212
                let expr_20244 := _1957
                /// @src 111:7052:7056  "time"
                let _1958 := var_time_20208
                let expr_20245 := _1958
                /// @src 111:7048:7056  "b > time"
                let expr_20246 := gt(cleanup_t_uint32(expr_20244), cleanup_t_uint32(expr_20245))
                /// @src 111:7048:7072  "b > time ? b : b + 2**32"
                let expr_20253
                switch expr_20246
                case 0 {
                    /// @src 111:7063:7064  "b"
                    let _1959 := var_b_20212
                    let expr_20248 := _1959
                    /// @src 111:7067:7072  "2**32"
                    let expr_20251 := 0x0100000000
                    /// @src 111:7063:7072  "b + 2**32"
                    let expr_20252 := checked_add_t_uint40(convert_t_uint32_to_t_uint40(expr_20248), convert_t_rational_4294967296_by_1_to_t_uint40(expr_20251))

                    /// @src 111:7048:7072  "b > time ? b : b + 2**32"
                    expr_20253 := expr_20252
                }
                default {
                    /// @src 111:7059:7060  "b"
                    let _1960 := var_b_20212
                    let expr_20247 := _1960
                    /// @src 111:7048:7072  "b > time ? b : b + 2**32"
                    expr_20253 := convert_t_uint32_to_t_uint40(expr_20247)
                }
                /// @src 111:7028:7072  "uint256 bAdjusted = b > time ? b : b + 2**32"
                let var_bAdjusted_20243 := convert_t_uint40_to_t_uint256(expr_20253)
                /// @src 111:7090:7099  "aAdjusted"
                let _1961 := var_aAdjusted_20230
                let expr_20255 := _1961
                /// @src 111:7103:7112  "bAdjusted"
                let _1962 := var_bAdjusted_20243
                let expr_20256 := _1962
                /// @src 111:7090:7112  "aAdjusted <= bAdjusted"
                let expr_20257 := iszero(gt(cleanup_t_uint256(expr_20255), cleanup_t_uint256(expr_20256)))
                /// @src 111:7083:7112  "return aAdjusted <= bAdjusted"
                var__20215 := expr_20257
                leave

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 20381
            /// @src 111:8074:9138  "function binarySearch(..."
            function fun_binarySearch_20381(var_self_20266_slot, var_time_20268, var_target_20270, var_index_20272, var_cardinality_20274) -> var_beforeOrAt_20278_mpos, var_atOrAfter_20281_mpos {
                /// @src 111:8259:8288  "Observation memory beforeOrAt"
                let zero_t_struct$_Observation_$19979_memory_ptr_1963_mpos := zero_value_for_split_t_struct$_Observation_$19979_memory_ptr()
                var_beforeOrAt_20278_mpos := zero_t_struct$_Observation_$19979_memory_ptr_1963_mpos
                /// @src 111:8290:8318  "Observation memory atOrAfter"
                let zero_t_struct$_Observation_$19979_memory_ptr_1964_mpos := zero_value_for_split_t_struct$_Observation_$19979_memory_ptr()
                var_atOrAfter_20281_mpos := zero_t_struct$_Observation_$19979_memory_ptr_1964_mpos

                /// @src 111:8343:8348  "index"
                let _1965 := var_index_20272
                let expr_20285 := _1965
                /// @src 111:8351:8352  "1"
                let expr_20286 := 0x01
                /// @src 111:8343:8352  "index + 1"
                let expr_20287 := checked_add_t_uint16(expr_20285, convert_t_rational_1_by_1_to_t_uint16(expr_20286))

                /// @src 111:8342:8353  "(index + 1)"
                let expr_20288 := expr_20287
                /// @src 111:8356:8367  "cardinality"
                let _1966 := var_cardinality_20274
                let expr_20289 := _1966
                /// @src 111:8342:8367  "(index + 1) % cardinality"
                let expr_20290 := mod_t_uint16(expr_20288, expr_20289)

                /// @src 111:8330:8367  "uint256 l = (index + 1) % cardinality"
                let var_l_20284 := convert_t_uint16_to_t_uint256(expr_20290)
                /// @src 111:8411:8412  "l"
                let _1967 := var_l_20284
                let expr_20294 := _1967
                /// @src 111:8415:8426  "cardinality"
                let _1968 := var_cardinality_20274
                let expr_20295 := _1968
                /// @src 111:8411:8426  "l + cardinality"
                let expr_20296 := checked_add_t_uint256(expr_20294, convert_t_uint16_to_t_uint256(expr_20295))

                /// @src 111:8429:8430  "1"
                let expr_20297 := 0x01
                /// @src 111:8411:8430  "l + cardinality - 1"
                let expr_20298 := checked_sub_t_uint256(expr_20296, convert_t_rational_1_by_1_to_t_uint256(expr_20297))

                /// @src 111:8399:8430  "uint256 r = l + cardinality - 1"
                let var_r_20293 := expr_20298
                /// @src 111:8462:8471  "uint256 i"
                let var_i_20301
                let zero_t_uint256_1969 := zero_value_for_split_t_uint256()
                var_i_20301 := zero_t_uint256_1969
                /// @src 111:8481:9132  "while (true) {..."
                for {
                    } 1 {
                }
                {
                    /// @src 111:8488:8492  "true"
                    let expr_20303 := 0x01
                    if iszero(expr_20303) { break }
                    /// @src 111:8513:8514  "l"
                    let _1970 := var_l_20284
                    let expr_20305 := _1970
                    /// @src 111:8517:8518  "r"
                    let _1971 := var_r_20293
                    let expr_20306 := _1971
                    /// @src 111:8513:8518  "l + r"
                    let expr_20307 := checked_add_t_uint256(expr_20305, expr_20306)

                    /// @src 111:8512:8519  "(l + r)"
                    let expr_20308 := expr_20307
                    /// @src 111:8522:8523  "2"
                    let expr_20309 := 0x02
                    /// @src 111:8512:8523  "(l + r) / 2"
                    let expr_20310 := checked_div_t_uint256(expr_20308, convert_t_rational_2_by_1_to_t_uint256(expr_20309))

                    /// @src 111:8508:8523  "i = (l + r) / 2"
                    var_i_20301 := expr_20310
                    let expr_20311 := expr_20310
                    /// @src 111:8551:8555  "self"
                    let _1972_slot := var_self_20266_slot
                    let expr_20314_slot := _1972_slot
                    /// @src 111:8556:8557  "i"
                    let _1973 := var_i_20301
                    let expr_20315 := _1973
                    /// @src 111:8560:8571  "cardinality"
                    let _1974 := var_cardinality_20274
                    let expr_20316 := _1974
                    /// @src 111:8556:8571  "i % cardinality"
                    let expr_20317 := mod_t_uint256(expr_20315, convert_t_uint16_to_t_uint256(expr_20316))

                    /// @src 111:8551:8572  "self[i % cardinality]"

                    let _1975, _1976 := storage_array_index_access_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_20314_slot, expr_20317)
                    let _1977_slot := _1975
                    let expr_20318_slot := _1977_slot
                    /// @src 111:8538:8572  "beforeOrAt = self[i % cardinality]"
                    var_beforeOrAt_20278_mpos := convert_t_struct$_Observation_$19979_storage_to_t_struct$_Observation_$19979_memory_ptr(expr_20318_slot)
                    let _1978_mpos := var_beforeOrAt_20278_mpos
                    let expr_20319_mpos := _1978_mpos
                    /// @src 111:8684:8694  "beforeOrAt"
                    let _1979_mpos := var_beforeOrAt_20278_mpos
                    let expr_20321_mpos := _1979_mpos
                    /// @src 111:8684:8706  "beforeOrAt.initialized"
                    let _1980 := add(expr_20321_mpos, 96)
                    let _1981 := read_from_memoryt_bool(_1980)
                    let expr_20322 := _1981
                    /// @src 111:8683:8706  "!beforeOrAt.initialized"
                    let expr_20323 := cleanup_t_bool(iszero(expr_20322))
                    /// @src 111:8679:8776  "if (!beforeOrAt.initialized) {..."
                    if expr_20323 {
                        /// @src 111:8730:8731  "i"
                        let _1982 := var_i_20301
                        let expr_20325 := _1982
                        /// @src 111:8734:8735  "1"
                        let expr_20326 := 0x01
                        /// @src 111:8730:8735  "i + 1"
                        let expr_20327 := checked_add_t_uint256(expr_20325, convert_t_rational_1_by_1_to_t_uint256(expr_20326))

                        /// @src 111:8726:8735  "l = i + 1"
                        var_l_20284 := expr_20327
                        let expr_20328 := expr_20327
                        /// @src 111:8753:8761  "continue"
                        continue
                        /// @src 111:8679:8776  "if (!beforeOrAt.initialized) {..."
                    }
                    /// @src 111:8802:8806  "self"
                    let _1983_slot := var_self_20266_slot
                    let expr_20334_slot := _1983_slot
                    /// @src 111:8808:8809  "i"
                    let _1984 := var_i_20301
                    let expr_20335 := _1984
                    /// @src 111:8812:8813  "1"
                    let expr_20336 := 0x01
                    /// @src 111:8808:8813  "i + 1"
                    let expr_20337 := checked_add_t_uint256(expr_20335, convert_t_rational_1_by_1_to_t_uint256(expr_20336))

                    /// @src 111:8807:8814  "(i + 1)"
                    let expr_20338 := expr_20337
                    /// @src 111:8817:8828  "cardinality"
                    let _1985 := var_cardinality_20274
                    let expr_20339 := _1985
                    /// @src 111:8807:8828  "(i + 1) % cardinality"
                    let expr_20340 := mod_t_uint256(expr_20338, convert_t_uint16_to_t_uint256(expr_20339))

                    /// @src 111:8802:8829  "self[(i + 1) % cardinality]"

                    let _1986, _1987 := storage_array_index_access_t_array$_t_struct$_Observation_$19979_storage_$65535_storage_ptr(expr_20334_slot, expr_20340)
                    let _1988_slot := _1986
                    let expr_20341_slot := _1988_slot
                    /// @src 111:8790:8829  "atOrAfter = self[(i + 1) % cardinality]"
                    var_atOrAfter_20281_mpos := convert_t_struct$_Observation_$19979_storage_to_t_struct$_Observation_$19979_memory_ptr(expr_20341_slot)
                    let _1989_mpos := var_atOrAfter_20281_mpos
                    let expr_20342_mpos := _1989_mpos
                    /// @src 111:8871:8875  "time"
                    let _1990 := var_time_20268
                    let expr_20347 := _1990
                    /// @src 111:8877:8887  "beforeOrAt"
                    let _1991_mpos := var_beforeOrAt_20278_mpos
                    let expr_20348_mpos := _1991_mpos
                    /// @src 111:8877:8902  "beforeOrAt.blockTimestamp"
                    let _1992 := add(expr_20348_mpos, 0)
                    let _1993 := read_from_memoryt_uint32(_1992)
                    let expr_20349 := _1993
                    /// @src 111:8904:8910  "target"
                    let _1994 := var_target_20270
                    let expr_20350 := _1994
                    /// @src 111:8867:8911  "lte(time, beforeOrAt.blockTimestamp, target)"
                    let expr_20351 := fun_lte_20260(expr_20347, expr_20349, expr_20350)
                    /// @src 111:8844:8911  "bool targetAtOrAfter = lte(time, beforeOrAt.blockTimestamp, target)"
                    let var_targetAtOrAfter_20345 := expr_20351
                    /// @src 111:8978:8993  "targetAtOrAfter"
                    let _1995 := var_targetAtOrAfter_20345
                    let expr_20353 := _1995
                    /// @src 111:8978:9040  "targetAtOrAfter && lte(time, target, atOrAfter.blockTimestamp)"
                    let expr_20360 := expr_20353
                    if expr_20360 {
                        /// @src 111:9001:9005  "time"
                        let _1996 := var_time_20268
                        let expr_20355 := _1996
                        /// @src 111:9007:9013  "target"
                        let _1997 := var_target_20270
                        let expr_20356 := _1997
                        /// @src 111:9015:9024  "atOrAfter"
                        let _1998_mpos := var_atOrAfter_20281_mpos
                        let expr_20357_mpos := _1998_mpos
                        /// @src 111:9015:9039  "atOrAfter.blockTimestamp"
                        let _1999 := add(expr_20357_mpos, 0)
                        let _2000 := read_from_memoryt_uint32(_1999)
                        let expr_20358 := _2000
                        /// @src 111:8997:9040  "lte(time, target, atOrAfter.blockTimestamp)"
                        let expr_20359 := fun_lte_20260(expr_20355, expr_20356, expr_20358)
                        /// @src 111:8978:9040  "targetAtOrAfter && lte(time, target, atOrAfter.blockTimestamp)"
                        expr_20360 := expr_20359
                    }
                    /// @src 111:8974:9047  "if (targetAtOrAfter && lte(time, target, atOrAfter.blockTimestamp)) break"
                    if expr_20360 {
                        /// @src 111:9042:9047  "break"
                        break
                        /// @src 111:8974:9047  "if (targetAtOrAfter && lte(time, target, atOrAfter.blockTimestamp)) break"
                    }
                    /// @src 111:9067:9082  "targetAtOrAfter"
                    let _2001 := var_targetAtOrAfter_20345
                    let expr_20363 := _2001
                    /// @src 111:9066:9082  "!targetAtOrAfter"
                    let expr_20364 := cleanup_t_bool(iszero(expr_20363))
                    /// @src 111:9062:9121  "if (!targetAtOrAfter) r = i - 1;..."
                    switch expr_20364
                    case 0 {
                        /// @src 111:9116:9117  "i"
                        let _2002 := var_i_20301
                        let expr_20372 := _2002
                        /// @src 111:9120:9121  "1"
                        let expr_20373 := 0x01
                        /// @src 111:9116:9121  "i + 1"
                        let expr_20374 := checked_add_t_uint256(expr_20372, convert_t_rational_1_by_1_to_t_uint256(expr_20373))

                        /// @src 111:9112:9121  "l = i + 1"
                        var_l_20284 := expr_20374
                        let expr_20375 := expr_20374
                        /// @src 111:9062:9121  "if (!targetAtOrAfter) r = i - 1;..."
                    }
                    default {
                        /// @src 111:9088:9089  "i"
                        let _2003 := var_i_20301
                        let expr_20366 := _2003
                        /// @src 111:9092:9093  "1"
                        let expr_20367 := 0x01
                        /// @src 111:9088:9093  "i - 1"
                        let expr_20368 := checked_sub_t_uint256(expr_20366, convert_t_rational_1_by_1_to_t_uint256(expr_20367))

                        /// @src 111:9084:9093  "r = i - 1"
                        var_r_20293 := expr_20368
                        let expr_20369 := expr_20368
                        /// @src 111:9062:9121  "if (!targetAtOrAfter) r = i - 1;..."
                    }
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function store_literal_in_memory_df0e8e403ea3fe54c7efb80492fa8f6599886b9c5435c1772b8d6400862c8c48(memPtr) {

                mstore(add(memPtr, 0), "LO")

            }

            function abi_encode_t_stringliteral_df0e8e403ea3fe54c7efb80492fa8f6599886b9c5435c1772b8d6400862c8c48_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_df0e8e403ea3fe54c7efb80492fa8f6599886b9c5435c1772b8d6400862c8c48(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_df0e8e403ea3fe54c7efb80492fa8f6599886b9c5435c1772b8d6400862c8c48__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_df0e8e403ea3fe54c7efb80492fa8f6599886b9c5435c1772b8d6400862c8c48_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_df0e8e403ea3fe54c7efb80492fa8f6599886b9c5435c1772b8d6400862c8c48(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_df0e8e403ea3fe54c7efb80492fa8f6599886b9c5435c1772b8d6400862c8c48__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function convert_t_int128_to_t_int128(value) -> converted {
                converted := cleanup_t_int128(identity(cleanup_t_int128(value)))
            }

            function prepare_store_t_int128(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_16_t_int128_to_t_int128(slot, value_0) {
                let convertedValue_0 := convert_t_int128_to_t_int128(value_0)
                sstore(slot, update_byte_slice_16_shift_16(sload(slot), prepare_store_t_int128(convertedValue_0)))
            }

            /// @ast-id 22120
            /// @src 116:6047:7736  "function update(..."
            function fun_update_22120(var_self_21974_slot, var_tick_21976, var_tickCurrent_21978, var_liquidityDelta_21980, var_feeGrowthGlobal0X128_21982, var_feeGrowthGlobal1X128_21984, var_secondsPerLiquidityCumulativeX128_21986, var_tickCumulative_21988, var_time_21990, var_upper_21992, var_maxLiquidity_21994) -> var_flipped_21997 {
                /// @src 116:6443:6455  "bool flipped"
                let zero_t_bool_2004 := zero_value_for_split_t_bool()
                var_flipped_21997 := zero_t_bool_2004

                /// @src 116:6492:6496  "self"
                let _2005_slot := var_self_21974_slot
                let expr_22004_slot := _2005_slot
                /// @src 116:6497:6501  "tick"
                let _2006 := var_tick_21976
                let expr_22005 := _2006
                /// @src 116:6492:6502  "self[tick]"
                let _2007 := mapping_index_access_t_mapping$_t_int24_$_t_struct$_Info_$21791_storage_$_of_t_int24(expr_22004_slot,expr_22005)
                let _2008_slot := _2007
                let expr_22006_slot := _2008_slot
                /// @src 116:6467:6502  "Tick.Info storage info = self[tick]"
                let var_info_22003_slot := convert_t_struct$_Info_$21791_storage_to_t_struct$_Info_$21791_storage_ptr(expr_22006_slot)
                /// @src 116:6544:6548  "info"
                let _2009_slot := var_info_22003_slot
                let expr_22010_slot := _2009_slot
                /// @src 116:6544:6563  "info.liquidityGross"
                let _2010 := add(expr_22010_slot, 0)
                let _2011 := read_from_storage_split_offset_0_t_uint128(_2010)
                let expr_22011 := _2011
                /// @src 116:6513:6563  "uint128 liquidityGrossBefore = info.liquidityGross"
                let var_liquidityGrossBefore_22009 := expr_22011
                /// @src 116:6603:6616  "LiquidityMath"
                let expr_22015_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/LiquidityMath.sol:LiquidityMath")
                /// @src 116:6626:6646  "liquidityGrossBefore"
                let _2012 := var_liquidityGrossBefore_22009
                let expr_22017 := _2012
                /// @src 116:6648:6662  "liquidityDelta"
                let _2013 := var_liquidityDelta_21980
                let expr_22018 := _2013
                /// @src 116:6603:6663  "LiquidityMath.addDelta(liquidityGrossBefore, liquidityDelta)"
                let expr_22019 := fun_addDelta_19836(expr_22017, expr_22018)
                /// @src 116:6573:6663  "uint128 liquidityGrossAfter = LiquidityMath.addDelta(liquidityGrossBefore, liquidityDelta)"
                let var_liquidityGrossAfter_22014 := expr_22019
                /// @src 116:6682:6701  "liquidityGrossAfter"
                let _2014 := var_liquidityGrossAfter_22014
                let expr_22022 := _2014
                /// @src 116:6705:6717  "maxLiquidity"
                let _2015 := var_maxLiquidity_21994
                let expr_22023 := _2015
                /// @src 116:6682:6717  "liquidityGrossAfter <= maxLiquidity"
                let expr_22024 := iszero(gt(cleanup_t_uint128(expr_22022), cleanup_t_uint128(expr_22023)))
                /// @src 116:6674:6724  "require(liquidityGrossAfter <= maxLiquidity, 'LO')"
                require_helper_t_stringliteral_df0e8e403ea3fe54c7efb80492fa8f6599886b9c5435c1772b8d6400862c8c48(expr_22024)
                /// @src 116:6746:6765  "liquidityGrossAfter"
                let _2016 := var_liquidityGrossAfter_22014
                let expr_22029 := _2016
                /// @src 116:6769:6770  "0"
                let expr_22030 := 0x00
                /// @src 116:6746:6770  "liquidityGrossAfter == 0"
                let expr_22031 := eq(cleanup_t_uint128(expr_22029), convert_t_rational_0_by_1_to_t_uint128(expr_22030))
                /// @src 116:6745:6771  "(liquidityGrossAfter == 0)"
                let expr_22032 := expr_22031
                /// @src 116:6776:6796  "liquidityGrossBefore"
                let _2017 := var_liquidityGrossBefore_22009
                let expr_22033 := _2017
                /// @src 116:6800:6801  "0"
                let expr_22034 := 0x00
                /// @src 116:6776:6801  "liquidityGrossBefore == 0"
                let expr_22035 := eq(cleanup_t_uint128(expr_22033), convert_t_rational_0_by_1_to_t_uint128(expr_22034))
                /// @src 116:6775:6802  "(liquidityGrossBefore == 0)"
                let expr_22036 := expr_22035
                /// @src 116:6745:6802  "(liquidityGrossAfter == 0) != (liquidityGrossBefore == 0)"
                let expr_22037 := iszero(eq(cleanup_t_bool(expr_22032), cleanup_t_bool(expr_22036)))
                /// @src 116:6735:6802  "flipped = (liquidityGrossAfter == 0) != (liquidityGrossBefore == 0)"
                var_flipped_21997 := expr_22037
                let expr_22038 := expr_22037
                /// @src 116:6817:6837  "liquidityGrossBefore"
                let _2018 := var_liquidityGrossBefore_22009
                let expr_22040 := _2018
                /// @src 116:6841:6842  "0"
                let expr_22041 := 0x00
                /// @src 116:6817:6842  "liquidityGrossBefore == 0"
                let expr_22042 := eq(cleanup_t_uint128(expr_22040), convert_t_rational_0_by_1_to_t_uint128(expr_22041))
                /// @src 116:6813:7385  "if (liquidityGrossBefore == 0) {..."
                if expr_22042 {
                    /// @src 116:6974:6978  "tick"
                    let _2019 := var_tick_21976
                    let expr_22043 := _2019
                    /// @src 116:6982:6993  "tickCurrent"
                    let _2020 := var_tickCurrent_21978
                    let expr_22044 := _2020
                    /// @src 116:6974:6993  "tick <= tickCurrent"
                    let expr_22045 := iszero(sgt(cleanup_t_int24(expr_22043), cleanup_t_int24(expr_22044)))
                    /// @src 116:6970:7338  "if (tick <= tickCurrent) {..."
                    if expr_22045 {
                        /// @src 116:7042:7062  "feeGrowthGlobal0X128"
                        let _2021 := var_feeGrowthGlobal0X128_21982
                        let expr_22049 := _2021
                        /// @src 116:7013:7017  "info"
                        let _2022_slot := var_info_22003_slot
                        let expr_22046_slot := _2022_slot
                        /// @src 116:7013:7039  "info.feeGrowthOutside0X128"
                        let _2023 := add(expr_22046_slot, 1)
                        /// @src 116:7013:7062  "info.feeGrowthOutside0X128 = feeGrowthGlobal0X128"
                        update_storage_value_offset_0_t_uint256_to_t_uint256(_2023, expr_22049)
                        let expr_22050 := expr_22049
                        /// @src 116:7109:7129  "feeGrowthGlobal1X128"
                        let _2024 := var_feeGrowthGlobal1X128_21984
                        let expr_22055 := _2024
                        /// @src 116:7080:7084  "info"
                        let _2025_slot := var_info_22003_slot
                        let expr_22052_slot := _2025_slot
                        /// @src 116:7080:7106  "info.feeGrowthOutside1X128"
                        let _2026 := add(expr_22052_slot, 2)
                        /// @src 116:7080:7129  "info.feeGrowthOutside1X128 = feeGrowthGlobal1X128"
                        update_storage_value_offset_0_t_uint256_to_t_uint256(_2026, expr_22055)
                        let expr_22056 := expr_22055
                        /// @src 116:7185:7218  "secondsPerLiquidityCumulativeX128"
                        let _2027 := var_secondsPerLiquidityCumulativeX128_21986
                        let expr_22061 := _2027
                        /// @src 116:7147:7151  "info"
                        let _2028_slot := var_info_22003_slot
                        let expr_22058_slot := _2028_slot
                        /// @src 116:7147:7182  "info.secondsPerLiquidityOutsideX128"
                        let _2029 := add(expr_22058_slot, 3)
                        /// @src 116:7147:7218  "info.secondsPerLiquidityOutsideX128 = secondsPerLiquidityCumulativeX128"
                        update_storage_value_offset_7_t_uint160_to_t_uint160(_2029, expr_22061)
                        let expr_22062 := expr_22061
                        /// @src 116:7265:7279  "tickCumulative"
                        let _2030 := var_tickCumulative_21988
                        let expr_22067 := _2030
                        /// @src 116:7236:7240  "info"
                        let _2031_slot := var_info_22003_slot
                        let expr_22064_slot := _2031_slot
                        /// @src 116:7236:7262  "info.tickCumulativeOutside"
                        let _2032 := add(expr_22064_slot, 3)
                        /// @src 116:7236:7279  "info.tickCumulativeOutside = tickCumulative"
                        update_storage_value_offset_0_t_int56_to_t_int56(_2032, expr_22067)
                        let expr_22068 := expr_22067
                        /// @src 116:7319:7323  "time"
                        let _2033 := var_time_21990
                        let expr_22073 := _2033
                        /// @src 116:7297:7301  "info"
                        let _2034_slot := var_info_22003_slot
                        let expr_22070_slot := _2034_slot
                        /// @src 116:7297:7316  "info.secondsOutside"
                        let _2035 := add(expr_22070_slot, 3)
                        /// @src 116:7297:7323  "info.secondsOutside = time"
                        update_storage_value_offset_27_t_uint32_to_t_uint32(_2035, expr_22073)
                        let expr_22074 := expr_22073
                        /// @src 116:6970:7338  "if (tick <= tickCurrent) {..."
                    }
                    /// @src 116:7370:7374  "true"
                    let expr_22081 := 0x01
                    /// @src 116:7351:7355  "info"
                    let _2036_slot := var_info_22003_slot
                    let expr_22078_slot := _2036_slot
                    /// @src 116:7351:7367  "info.initialized"
                    let _2037 := add(expr_22078_slot, 3)
                    /// @src 116:7351:7374  "info.initialized = true"
                    update_storage_value_offset_31_t_bool_to_t_bool(_2037, expr_22081)
                    let expr_22082 := expr_22081
                    /// @src 116:6813:7385  "if (liquidityGrossBefore == 0) {..."
                }
                /// @src 116:7417:7436  "liquidityGrossAfter"
                let _2038 := var_liquidityGrossAfter_22014
                let expr_22089 := _2038
                /// @src 116:7395:7399  "info"
                let _2039_slot := var_info_22003_slot
                let expr_22086_slot := _2039_slot
                /// @src 116:7395:7414  "info.liquidityGross"
                let _2040 := add(expr_22086_slot, 0)
                /// @src 116:7395:7436  "info.liquidityGross = liquidityGrossAfter"
                update_storage_value_offset_0_t_uint128_to_t_uint128(_2040, expr_22089)
                let expr_22090 := expr_22089
                /// @src 116:7582:7587  "upper"
                let _2041 := var_upper_21992
                let expr_22095 := _2041
                /// @src 116:7582:7729  "upper..."
                let expr_22116
                switch expr_22095
                case 0 {
                    /// @src 116:7680:7684  "info"
                    let _2042_slot := var_info_22003_slot
                    let expr_22108_slot := _2042_slot
                    /// @src 116:7680:7697  "info.liquidityNet"
                    let _2043 := add(expr_22108_slot, 0)
                    let _2044 := read_from_storage_split_offset_16_t_int128(_2043)
                    let expr_22109 := _2044
                    /// @src 116:7673:7698  "int256(info.liquidityNet)"
                    let expr_22110 := convert_t_int128_to_t_int256(expr_22109)
                    /// @src 116:7673:7702  "int256(info.liquidityNet).add"
                    let expr_22111_self := expr_22110
                    /// @src 116:7703:7717  "liquidityDelta"
                    let _2045 := var_liquidityDelta_21980
                    let expr_22112 := _2045
                    /// @src 116:7673:7718  "int256(info.liquidityNet).add(liquidityDelta)"
                    let _2046 := convert_t_int128_to_t_int256(expr_22112)
                    let expr_22113 := fun_add_19939(expr_22111_self, _2046)
                    /// @src 116:7673:7727  "int256(info.liquidityNet).add(liquidityDelta).toInt128"
                    let expr_22114_self := expr_22113
                    /// @src 116:7673:7729  "int256(info.liquidityNet).add(liquidityDelta).toInt128()"
                    let expr_22115 := fun_toInt128_20959(expr_22114_self)
                    /// @src 116:7582:7729  "upper..."
                    expr_22116 := expr_22115
                }
                default {
                    /// @src 116:7609:7613  "info"
                    let _2047_slot := var_info_22003_slot
                    let expr_22098_slot := _2047_slot
                    /// @src 116:7609:7626  "info.liquidityNet"
                    let _2048 := add(expr_22098_slot, 0)
                    let _2049 := read_from_storage_split_offset_16_t_int128(_2048)
                    let expr_22099 := _2049
                    /// @src 116:7602:7627  "int256(info.liquidityNet)"
                    let expr_22100 := convert_t_int128_to_t_int256(expr_22099)
                    /// @src 116:7602:7631  "int256(info.liquidityNet).sub"
                    let expr_22101_self := expr_22100
                    /// @src 116:7632:7646  "liquidityDelta"
                    let _2050 := var_liquidityDelta_21980
                    let expr_22102 := _2050
                    /// @src 116:7602:7647  "int256(info.liquidityNet).sub(liquidityDelta)"
                    let _2051 := convert_t_int128_to_t_int256(expr_22102)
                    let expr_22103 := fun_sub_19966(expr_22101_self, _2051)
                    /// @src 116:7602:7656  "int256(info.liquidityNet).sub(liquidityDelta).toInt128"
                    let expr_22104_self := expr_22103
                    /// @src 116:7602:7658  "int256(info.liquidityNet).sub(liquidityDelta).toInt128()"
                    let expr_22105 := fun_toInt128_20959(expr_22104_self)
                    /// @src 116:7582:7729  "upper..."
                    expr_22116 := expr_22105
                }
                /// @src 116:7562:7566  "info"
                let _2052_slot := var_info_22003_slot
                let expr_22092_slot := _2052_slot
                /// @src 116:7562:7579  "info.liquidityNet"
                let _2053 := add(expr_22092_slot, 0)
                /// @src 116:7562:7729  "info.liquidityNet = upper..."
                update_storage_value_offset_16_t_int128_to_t_int128(_2053, expr_22116)
                let expr_22117 := expr_22116

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 22300
            /// @src 117:1147:1495  "function flipTick(..."
            function fun_flipTick_22300(var_self_22262_slot, var_tick_22264, var_tickSpacing_22266) {

                /// @src 117:1293:1297  "tick"
                let _2054 := var_tick_22264
                let expr_22270 := _2054
                /// @src 117:1300:1311  "tickSpacing"
                let _2055 := var_tickSpacing_22266
                let expr_22271 := _2055
                /// @src 117:1293:1311  "tick % tickSpacing"
                let expr_22272 := mod_t_int24(expr_22270, expr_22271)

                /// @src 117:1315:1316  "0"
                let expr_22273 := 0x00
                /// @src 117:1293:1316  "tick % tickSpacing == 0"
                let expr_22274 := eq(cleanup_t_int24(expr_22272), convert_t_rational_0_by_1_to_t_int24(expr_22273))
                /// @src 117:1285:1317  "require(tick % tickSpacing == 0)"
                require_helper(expr_22274)
                /// @src 117:1402:1406  "tick"
                let _2056 := var_tick_22264
                let expr_22282 := _2056
                /// @src 117:1409:1420  "tickSpacing"
                let _2057 := var_tickSpacing_22266
                let expr_22283 := _2057
                /// @src 117:1402:1420  "tick / tickSpacing"
                let expr_22284 := checked_div_t_int24(expr_22282, expr_22283)

                /// @src 117:1393:1421  "position(tick / tickSpacing)"
                let expr_22285_component_1, expr_22285_component_2 := fun_position_22257(expr_22284)
                /// @src 117:1361:1421  "(int16 wordPos, uint8 bitPos) = position(tick / tickSpacing)"
                let var_wordPos_22278 := expr_22285_component_1
                let var_bitPos_22280 := expr_22285_component_2
                /// @src 117:1446:1447  "1"
                let expr_22289 := 0x01
                /// @src 117:1451:1457  "bitPos"
                let _2058 := var_bitPos_22280
                let expr_22290 := _2058
                /// @src 117:1446:1457  "1 << bitPos"
                let _2059 := convert_t_rational_1_by_1_to_t_uint256(expr_22289)
                let expr_22291 :=
                shift_left_t_uint256_t_uint8(_2059, expr_22290)

                /// @src 117:1431:1457  "uint256 mask = 1 << bitPos"
                let var_mask_22288 := expr_22291
                /// @src 117:1484:1488  "mask"
                let _2060 := var_mask_22288
                let expr_22296 := _2060
                /// @src 117:1467:1471  "self"
                let _2061_slot := var_self_22262_slot
                let expr_22293_slot := _2061_slot
                /// @src 117:1472:1479  "wordPos"
                let _2062 := var_wordPos_22278
                let expr_22294 := _2062
                /// @src 117:1467:1480  "self[wordPos]"
                let _2063 := mapping_index_access_t_mapping$_t_int16_$_t_uint256_$_of_t_int16(expr_22293_slot,expr_22294)
                /// @src 117:1467:1488  "self[wordPos] ^= mask"
                let _2064 := read_from_storage_split_offset_0_t_uint256(_2063)
                let expr_22297 := xor(_2064, expr_22296)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_2063, expr_22297)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 21968
            /// @src 116:3372:4941  "function getFeeGrowthInside(..."
            function fun_getFeeGrowthInside_21968(var_self_21848_slot, var_tickLower_21850, var_tickUpper_21852, var_tickCurrent_21854, var_feeGrowthGlobal0X128_21856, var_feeGrowthGlobal1X128_21858) -> var_feeGrowthInside0X128_21861, var_feeGrowthInside1X128_21863 {
                /// @src 116:3632:3660  "uint256 feeGrowthInside0X128"
                let zero_t_uint256_2065 := zero_value_for_split_t_uint256()
                var_feeGrowthInside0X128_21861 := zero_t_uint256_2065
                /// @src 116:3662:3690  "uint256 feeGrowthInside1X128"
                let zero_t_uint256_2066 := zero_value_for_split_t_uint256()
                var_feeGrowthInside1X128_21863 := zero_t_uint256_2066

                /// @src 116:3723:3727  "self"
                let _2067_slot := var_self_21848_slot
                let expr_21868_slot := _2067_slot
                /// @src 116:3728:3737  "tickLower"
                let _2068 := var_tickLower_21850
                let expr_21869 := _2068
                /// @src 116:3723:3738  "self[tickLower]"
                let _2069 := mapping_index_access_t_mapping$_t_int24_$_t_struct$_Info_$21791_storage_$_of_t_int24(expr_21868_slot,expr_21869)
                let _2070_slot := _2069
                let expr_21870_slot := _2070_slot
                /// @src 116:3702:3738  "Info storage lower = self[tickLower]"
                let var_lower_21867_slot := convert_t_struct$_Info_$21791_storage_to_t_struct$_Info_$21791_storage_ptr(expr_21870_slot)
                /// @src 116:3769:3773  "self"
                let _2071_slot := var_self_21848_slot
                let expr_21875_slot := _2071_slot
                /// @src 116:3774:3783  "tickUpper"
                let _2072 := var_tickUpper_21852
                let expr_21876 := _2072
                /// @src 116:3769:3784  "self[tickUpper]"
                let _2073 := mapping_index_access_t_mapping$_t_int24_$_t_struct$_Info_$21791_storage_$_of_t_int24(expr_21875_slot,expr_21876)
                let _2074_slot := _2073
                let expr_21877_slot := _2074_slot
                /// @src 116:3748:3784  "Info storage upper = self[tickUpper]"
                let var_upper_21874_slot := convert_t_struct$_Info_$21791_storage_to_t_struct$_Info_$21791_storage_ptr(expr_21877_slot)
                /// @src 116:3833:3860  "uint256 feeGrowthBelow0X128"
                let var_feeGrowthBelow0X128_21880
                let zero_t_uint256_2075 := zero_value_for_split_t_uint256()
                var_feeGrowthBelow0X128_21880 := zero_t_uint256_2075
                /// @src 116:3870:3897  "uint256 feeGrowthBelow1X128"
                let var_feeGrowthBelow1X128_21883
                let zero_t_uint256_2076 := zero_value_for_split_t_uint256()
                var_feeGrowthBelow1X128_21883 := zero_t_uint256_2076
                /// @src 116:3911:3922  "tickCurrent"
                let _2077 := var_tickCurrent_21854
                let expr_21885 := _2077
                /// @src 116:3926:3935  "tickLower"
                let _2078 := var_tickLower_21850
                let expr_21886 := _2078
                /// @src 116:3911:3935  "tickCurrent >= tickLower"
                let expr_21887 := iszero(slt(cleanup_t_int24(expr_21885), cleanup_t_int24(expr_21886)))
                /// @src 116:3907:4263  "if (tickCurrent >= tickLower) {..."
                switch expr_21887
                case 0 {
                    /// @src 116:4116:4136  "feeGrowthGlobal0X128"
                    let _2079 := var_feeGrowthGlobal0X128_21856
                    let expr_21900 := _2079
                    /// @src 116:4139:4144  "lower"
                    let _2080_slot := var_lower_21867_slot
                    let expr_21901_slot := _2080_slot
                    /// @src 116:4139:4166  "lower.feeGrowthOutside0X128"
                    let _2081 := add(expr_21901_slot, 1)
                    let _2082 := read_from_storage_split_offset_0_t_uint256(_2081)
                    let expr_21902 := _2082
                    /// @src 116:4116:4166  "feeGrowthGlobal0X128 - lower.feeGrowthOutside0X128"
                    let expr_21903 := checked_sub_t_uint256(expr_21900, expr_21902)

                    /// @src 116:4094:4166  "feeGrowthBelow0X128 = feeGrowthGlobal0X128 - lower.feeGrowthOutside0X128"
                    var_feeGrowthBelow0X128_21880 := expr_21903
                    let expr_21904 := expr_21903
                    /// @src 116:4202:4222  "feeGrowthGlobal1X128"
                    let _2083 := var_feeGrowthGlobal1X128_21858
                    let expr_21907 := _2083
                    /// @src 116:4225:4230  "lower"
                    let _2084_slot := var_lower_21867_slot
                    let expr_21908_slot := _2084_slot
                    /// @src 116:4225:4252  "lower.feeGrowthOutside1X128"
                    let _2085 := add(expr_21908_slot, 2)
                    let _2086 := read_from_storage_split_offset_0_t_uint256(_2085)
                    let expr_21909 := _2086
                    /// @src 116:4202:4252  "feeGrowthGlobal1X128 - lower.feeGrowthOutside1X128"
                    let expr_21910 := checked_sub_t_uint256(expr_21907, expr_21909)

                    /// @src 116:4180:4252  "feeGrowthBelow1X128 = feeGrowthGlobal1X128 - lower.feeGrowthOutside1X128"
                    var_feeGrowthBelow1X128_21883 := expr_21910
                    let expr_21911 := expr_21910
                    /// @src 116:3907:4263  "if (tickCurrent >= tickLower) {..."
                }
                default {
                    /// @src 116:3973:3978  "lower"
                    let _2087_slot := var_lower_21867_slot
                    let expr_21889_slot := _2087_slot
                    /// @src 116:3973:4000  "lower.feeGrowthOutside0X128"
                    let _2088 := add(expr_21889_slot, 1)
                    let _2089 := read_from_storage_split_offset_0_t_uint256(_2088)
                    let expr_21890 := _2089
                    /// @src 116:3951:4000  "feeGrowthBelow0X128 = lower.feeGrowthOutside0X128"
                    var_feeGrowthBelow0X128_21880 := expr_21890
                    let expr_21891 := expr_21890
                    /// @src 116:4036:4041  "lower"
                    let _2090_slot := var_lower_21867_slot
                    let expr_21894_slot := _2090_slot
                    /// @src 116:4036:4063  "lower.feeGrowthOutside1X128"
                    let _2091 := add(expr_21894_slot, 2)
                    let _2092 := read_from_storage_split_offset_0_t_uint256(_2091)
                    let expr_21895 := _2092
                    /// @src 116:4014:4063  "feeGrowthBelow1X128 = lower.feeGrowthOutside1X128"
                    var_feeGrowthBelow1X128_21883 := expr_21895
                    let expr_21896 := expr_21895
                    /// @src 116:3907:4263  "if (tickCurrent >= tickLower) {..."
                }
                /// @src 116:4311:4338  "uint256 feeGrowthAbove0X128"
                let var_feeGrowthAbove0X128_21916
                let zero_t_uint256_2093 := zero_value_for_split_t_uint256()
                var_feeGrowthAbove0X128_21916 := zero_t_uint256_2093
                /// @src 116:4348:4375  "uint256 feeGrowthAbove1X128"
                let var_feeGrowthAbove1X128_21919
                let zero_t_uint256_2094 := zero_value_for_split_t_uint256()
                var_feeGrowthAbove1X128_21919 := zero_t_uint256_2094
                /// @src 116:4389:4400  "tickCurrent"
                let _2095 := var_tickCurrent_21854
                let expr_21921 := _2095
                /// @src 116:4403:4412  "tickUpper"
                let _2096 := var_tickUpper_21852
                let expr_21922 := _2096
                /// @src 116:4389:4412  "tickCurrent < tickUpper"
                let expr_21923 := slt(cleanup_t_int24(expr_21921), cleanup_t_int24(expr_21922))
                /// @src 116:4385:4740  "if (tickCurrent < tickUpper) {..."
                switch expr_21923
                case 0 {
                    /// @src 116:4593:4613  "feeGrowthGlobal0X128"
                    let _2097 := var_feeGrowthGlobal0X128_21856
                    let expr_21936 := _2097
                    /// @src 116:4616:4621  "upper"
                    let _2098_slot := var_upper_21874_slot
                    let expr_21937_slot := _2098_slot
                    /// @src 116:4616:4643  "upper.feeGrowthOutside0X128"
                    let _2099 := add(expr_21937_slot, 1)
                    let _2100 := read_from_storage_split_offset_0_t_uint256(_2099)
                    let expr_21938 := _2100
                    /// @src 116:4593:4643  "feeGrowthGlobal0X128 - upper.feeGrowthOutside0X128"
                    let expr_21939 := checked_sub_t_uint256(expr_21936, expr_21938)

                    /// @src 116:4571:4643  "feeGrowthAbove0X128 = feeGrowthGlobal0X128 - upper.feeGrowthOutside0X128"
                    var_feeGrowthAbove0X128_21916 := expr_21939
                    let expr_21940 := expr_21939
                    /// @src 116:4679:4699  "feeGrowthGlobal1X128"
                    let _2101 := var_feeGrowthGlobal1X128_21858
                    let expr_21943 := _2101
                    /// @src 116:4702:4707  "upper"
                    let _2102_slot := var_upper_21874_slot
                    let expr_21944_slot := _2102_slot
                    /// @src 116:4702:4729  "upper.feeGrowthOutside1X128"
                    let _2103 := add(expr_21944_slot, 2)
                    let _2104 := read_from_storage_split_offset_0_t_uint256(_2103)
                    let expr_21945 := _2104
                    /// @src 116:4679:4729  "feeGrowthGlobal1X128 - upper.feeGrowthOutside1X128"
                    let expr_21946 := checked_sub_t_uint256(expr_21943, expr_21945)

                    /// @src 116:4657:4729  "feeGrowthAbove1X128 = feeGrowthGlobal1X128 - upper.feeGrowthOutside1X128"
                    var_feeGrowthAbove1X128_21919 := expr_21946
                    let expr_21947 := expr_21946
                    /// @src 116:4385:4740  "if (tickCurrent < tickUpper) {..."
                }
                default {
                    /// @src 116:4450:4455  "upper"
                    let _2105_slot := var_upper_21874_slot
                    let expr_21925_slot := _2105_slot
                    /// @src 116:4450:4477  "upper.feeGrowthOutside0X128"
                    let _2106 := add(expr_21925_slot, 1)
                    let _2107 := read_from_storage_split_offset_0_t_uint256(_2106)
                    let expr_21926 := _2107
                    /// @src 116:4428:4477  "feeGrowthAbove0X128 = upper.feeGrowthOutside0X128"
                    var_feeGrowthAbove0X128_21916 := expr_21926
                    let expr_21927 := expr_21926
                    /// @src 116:4513:4518  "upper"
                    let _2108_slot := var_upper_21874_slot
                    let expr_21930_slot := _2108_slot
                    /// @src 116:4513:4540  "upper.feeGrowthOutside1X128"
                    let _2109 := add(expr_21930_slot, 2)
                    let _2110 := read_from_storage_split_offset_0_t_uint256(_2109)
                    let expr_21931 := _2110
                    /// @src 116:4491:4540  "feeGrowthAbove1X128 = upper.feeGrowthOutside1X128"
                    var_feeGrowthAbove1X128_21919 := expr_21931
                    let expr_21932 := expr_21931
                    /// @src 116:4385:4740  "if (tickCurrent < tickUpper) {..."
                }
                /// @src 116:4773:4793  "feeGrowthGlobal0X128"
                let _2111 := var_feeGrowthGlobal0X128_21856
                let expr_21952 := _2111
                /// @src 116:4796:4815  "feeGrowthBelow0X128"
                let _2112 := var_feeGrowthBelow0X128_21880
                let expr_21953 := _2112
                /// @src 116:4773:4815  "feeGrowthGlobal0X128 - feeGrowthBelow0X128"
                let expr_21954 := checked_sub_t_uint256(expr_21952, expr_21953)

                /// @src 116:4818:4837  "feeGrowthAbove0X128"
                let _2113 := var_feeGrowthAbove0X128_21916
                let expr_21955 := _2113
                /// @src 116:4773:4837  "feeGrowthGlobal0X128 - feeGrowthBelow0X128 - feeGrowthAbove0X128"
                let expr_21956 := checked_sub_t_uint256(expr_21954, expr_21955)

                /// @src 116:4750:4837  "feeGrowthInside0X128 = feeGrowthGlobal0X128 - feeGrowthBelow0X128 - feeGrowthAbove0X128"
                var_feeGrowthInside0X128_21861 := expr_21956
                let expr_21957 := expr_21956
                /// @src 116:4870:4890  "feeGrowthGlobal1X128"
                let _2114 := var_feeGrowthGlobal1X128_21858
                let expr_21960 := _2114
                /// @src 116:4893:4912  "feeGrowthBelow1X128"
                let _2115 := var_feeGrowthBelow1X128_21883
                let expr_21961 := _2115
                /// @src 116:4870:4912  "feeGrowthGlobal1X128 - feeGrowthBelow1X128"
                let expr_21962 := checked_sub_t_uint256(expr_21960, expr_21961)

                /// @src 116:4915:4934  "feeGrowthAbove1X128"
                let _2116 := var_feeGrowthAbove1X128_21919
                let expr_21963 := _2116
                /// @src 116:4870:4934  "feeGrowthGlobal1X128 - feeGrowthBelow1X128 - feeGrowthAbove1X128"
                let expr_21964 := checked_sub_t_uint256(expr_21962, expr_21963)

                /// @src 116:4847:4934  "feeGrowthInside1X128 = feeGrowthGlobal1X128 - feeGrowthBelow1X128 - feeGrowthAbove1X128"
                var_feeGrowthInside1X128_21863 := expr_21964
                let expr_21965 := expr_21964

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function allocate_memory_struct_t_struct$_Info_$20754_memory_ptr() -> memPtr {
                memPtr := allocate_memory(160)
            }

            function read_from_storage_reference_type_t_struct$_Info_$20754_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_Info_$20754_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint128(add(slot, 0))
                    write_to_memory_t_uint128(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))
                    write_to_memory_t_uint256(add(value, 32), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 2))
                    write_to_memory_t_uint256(add(value, 64), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint128(add(slot, 3))
                    write_to_memory_t_uint128(add(value, 96), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_16_t_uint128(add(slot, 3))
                    write_to_memory_t_uint128(add(value, 128), memberValue_0)
                }

            }

            function convert_t_struct$_Info_$20754_storage_ptr_to_t_struct$_Info_$20754_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_Info_$20754_memory_ptr(value)

            }

            function store_literal_in_memory_ebb814de87c671cfe97a338672e9700a9288a1a6d16839e238618b2b7f2aa86d(memPtr) {

                mstore(add(memPtr, 0), "NP")

            }

            function abi_encode_t_stringliteral_ebb814de87c671cfe97a338672e9700a9288a1a6d16839e238618b2b7f2aa86d_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_ebb814de87c671cfe97a338672e9700a9288a1a6d16839e238618b2b7f2aa86d(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_ebb814de87c671cfe97a338672e9700a9288a1a6d16839e238618b2b7f2aa86d__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_ebb814de87c671cfe97a338672e9700a9288a1a6d16839e238618b2b7f2aa86d_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_ebb814de87c671cfe97a338672e9700a9288a1a6d16839e238618b2b7f2aa86d(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_ebb814de87c671cfe97a338672e9700a9288a1a6d16839e238618b2b7f2aa86d__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 20913
            /// @src 112:2047:3609  "function update(..."
            function fun_update_20913(var_self_20790_slot, var_liquidityDelta_20792, var_feeGrowthInside0X128_20794, var_feeGrowthInside1X128_20796) {

                /// @src 112:2242:2246  "self"
                let _2117_slot := var_self_20790_slot
                let expr_20802_slot := _2117_slot
                /// @src 112:2222:2246  "Info memory _self = self"
                let var__self_20801_mpos := convert_t_struct$_Info_$20754_storage_ptr_to_t_struct$_Info_$20754_memory_ptr(expr_20802_slot)
                /// @src 112:2257:2278  "uint128 liquidityNext"
                let var_liquidityNext_20805
                let zero_t_uint128_2118 := zero_value_for_split_t_uint128()
                var_liquidityNext_20805 := zero_t_uint128_2118
                /// @src 112:2292:2306  "liquidityDelta"
                let _2119 := var_liquidityDelta_20792
                let expr_20807 := _2119
                /// @src 112:2310:2311  "0"
                let expr_20808 := 0x00
                /// @src 112:2292:2311  "liquidityDelta == 0"
                let expr_20809 := eq(cleanup_t_int128(expr_20807), convert_t_rational_0_by_1_to_t_int128(expr_20808))
                /// @src 112:2288:2563  "if (liquidityDelta == 0) {..."
                switch expr_20809
                case 0 {
                    /// @src 112:2497:2510  "LiquidityMath"
                    let expr_20825_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/LiquidityMath.sol:LiquidityMath")
                    /// @src 112:2520:2525  "_self"
                    let _2120_mpos := var__self_20801_mpos
                    let expr_20827_mpos := _2120_mpos
                    /// @src 112:2520:2535  "_self.liquidity"
                    let _2121 := add(expr_20827_mpos, 0)
                    let _2122 := read_from_memoryt_uint128(_2121)
                    let expr_20828 := _2122
                    /// @src 112:2537:2551  "liquidityDelta"
                    let _2123 := var_liquidityDelta_20792
                    let expr_20829 := _2123
                    /// @src 112:2497:2552  "LiquidityMath.addDelta(_self.liquidity, liquidityDelta)"
                    let expr_20830 := fun_addDelta_19836(expr_20828, expr_20829)
                    /// @src 112:2481:2552  "liquidityNext = LiquidityMath.addDelta(_self.liquidity, liquidityDelta)"
                    var_liquidityNext_20805 := expr_20830
                    let expr_20831 := expr_20830
                    /// @src 112:2288:2563  "if (liquidityDelta == 0) {..."
                }
                default {
                    /// @src 112:2335:2340  "_self"
                    let _2124_mpos := var__self_20801_mpos
                    let expr_20811_mpos := _2124_mpos
                    /// @src 112:2335:2350  "_self.liquidity"
                    let _2125 := add(expr_20811_mpos, 0)
                    let _2126 := read_from_memoryt_uint128(_2125)
                    let expr_20812 := _2126
                    /// @src 112:2353:2354  "0"
                    let expr_20813 := 0x00
                    /// @src 112:2335:2354  "_self.liquidity > 0"
                    let expr_20814 := gt(cleanup_t_uint128(expr_20812), convert_t_rational_0_by_1_to_t_uint128(expr_20813))
                    /// @src 112:2327:2361  "require(_self.liquidity > 0, 'NP')"
                    require_helper_t_stringliteral_ebb814de87c671cfe97a338672e9700a9288a1a6d16839e238618b2b7f2aa86d(expr_20814)
                    /// @src 112:2435:2440  "_self"
                    let _2127_mpos := var__self_20801_mpos
                    let expr_20819_mpos := _2127_mpos
                    /// @src 112:2435:2450  "_self.liquidity"
                    let _2128 := add(expr_20819_mpos, 0)
                    let _2129 := read_from_memoryt_uint128(_2128)
                    let expr_20820 := _2129
                    /// @src 112:2419:2450  "liquidityNext = _self.liquidity"
                    var_liquidityNext_20805 := expr_20820
                    let expr_20821 := expr_20820
                    /// @src 112:2288:2563  "if (liquidityDelta == 0) {..."
                }
                /// @src 112:2670:2678  "FullMath"
                let expr_20839_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                /// @src 112:2707:2727  "feeGrowthInside0X128"
                let _2130 := var_feeGrowthInside0X128_20794
                let expr_20841 := _2130
                /// @src 112:2730:2735  "_self"
                let _2131_mpos := var__self_20801_mpos
                let expr_20842_mpos := _2131_mpos
                /// @src 112:2730:2760  "_self.feeGrowthInside0LastX128"
                let _2132 := add(expr_20842_mpos, 32)
                let _2133 := read_from_memoryt_uint256(_2132)
                let expr_20843 := _2133
                /// @src 112:2707:2760  "feeGrowthInside0X128 - _self.feeGrowthInside0LastX128"
                let expr_20844 := checked_sub_t_uint256(expr_20841, expr_20843)

                /// @src 112:2782:2787  "_self"
                let _2134_mpos := var__self_20801_mpos
                let expr_20845_mpos := _2134_mpos
                /// @src 112:2782:2797  "_self.liquidity"
                let _2135 := add(expr_20845_mpos, 0)
                let _2136 := read_from_memoryt_uint128(_2135)
                let expr_20846 := _2136
                /// @src 112:2819:2832  "FixedPoint128"
                let expr_20847_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint128.sol:FixedPoint128")
                /// @src 112:2819:2837  "FixedPoint128.Q128"
                let expr_20848 := constant_Q128_9256()
                /// @src 112:2670:2855  "FullMath.mulDiv(..."
                let _2137 := convert_t_uint128_to_t_uint256(expr_20846)
                let expr_20849 := fun_mulDiv_9388(expr_20844, _2137, expr_20848)
                /// @src 112:2645:2869  "uint128(..."
                let expr_20850 := convert_t_uint256_to_t_uint128(expr_20849)
                /// @src 112:2611:2869  "uint128 tokensOwed0 =..."
                let var_tokensOwed0_20836 := expr_20850
                /// @src 112:2938:2946  "FullMath"
                let expr_20856_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                /// @src 112:2975:2995  "feeGrowthInside1X128"
                let _2138 := var_feeGrowthInside1X128_20796
                let expr_20858 := _2138
                /// @src 112:2998:3003  "_self"
                let _2139_mpos := var__self_20801_mpos
                let expr_20859_mpos := _2139_mpos
                /// @src 112:2998:3028  "_self.feeGrowthInside1LastX128"
                let _2140 := add(expr_20859_mpos, 64)
                let _2141 := read_from_memoryt_uint256(_2140)
                let expr_20860 := _2141
                /// @src 112:2975:3028  "feeGrowthInside1X128 - _self.feeGrowthInside1LastX128"
                let expr_20861 := checked_sub_t_uint256(expr_20858, expr_20860)

                /// @src 112:3050:3055  "_self"
                let _2142_mpos := var__self_20801_mpos
                let expr_20862_mpos := _2142_mpos
                /// @src 112:3050:3065  "_self.liquidity"
                let _2143 := add(expr_20862_mpos, 0)
                let _2144 := read_from_memoryt_uint128(_2143)
                let expr_20863 := _2144
                /// @src 112:3087:3100  "FixedPoint128"
                let expr_20864_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint128.sol:FixedPoint128")
                /// @src 112:3087:3105  "FixedPoint128.Q128"
                let expr_20865 := constant_Q128_9256()
                /// @src 112:2938:3123  "FullMath.mulDiv(..."
                let _2145 := convert_t_uint128_to_t_uint256(expr_20863)
                let expr_20866 := fun_mulDiv_9388(expr_20861, _2145, expr_20865)
                /// @src 112:2913:3137  "uint128(..."
                let expr_20867 := convert_t_uint256_to_t_uint128(expr_20866)
                /// @src 112:2879:3137  "uint128 tokensOwed1 =..."
                let var_tokensOwed1_20853 := expr_20867
                /// @src 112:3183:3197  "liquidityDelta"
                let _2146 := var_liquidityDelta_20792
                let expr_20869 := _2146
                /// @src 112:3201:3202  "0"
                let expr_20870 := 0x00
                /// @src 112:3183:3202  "liquidityDelta != 0"
                let expr_20871 := iszero(eq(cleanup_t_int128(expr_20869), convert_t_rational_0_by_1_to_t_int128(expr_20870)))
                /// @src 112:3179:3234  "if (liquidityDelta != 0) self.liquidity = liquidityNext"
                if expr_20871 {
                    /// @src 112:3221:3234  "liquidityNext"
                    let _2147 := var_liquidityNext_20805
                    let expr_20875 := _2147
                    /// @src 112:3204:3208  "self"
                    let _2148_slot := var_self_20790_slot
                    let expr_20872_slot := _2148_slot
                    /// @src 112:3204:3218  "self.liquidity"
                    let _2149 := add(expr_20872_slot, 0)
                    /// @src 112:3204:3234  "self.liquidity = liquidityNext"
                    update_storage_value_offset_0_t_uint128_to_t_uint128(_2149, expr_20875)
                    let expr_20876 := expr_20875
                    /// @src 112:3179:3234  "if (liquidityDelta != 0) self.liquidity = liquidityNext"
                }
                /// @src 112:3276:3296  "feeGrowthInside0X128"
                let _2150 := var_feeGrowthInside0X128_20794
                let expr_20882 := _2150
                /// @src 112:3244:3248  "self"
                let _2151_slot := var_self_20790_slot
                let expr_20879_slot := _2151_slot
                /// @src 112:3244:3273  "self.feeGrowthInside0LastX128"
                let _2152 := add(expr_20879_slot, 1)
                /// @src 112:3244:3296  "self.feeGrowthInside0LastX128 = feeGrowthInside0X128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_2152, expr_20882)
                let expr_20883 := expr_20882
                /// @src 112:3338:3358  "feeGrowthInside1X128"
                let _2153 := var_feeGrowthInside1X128_20796
                let expr_20888 := _2153
                /// @src 112:3306:3310  "self"
                let _2154_slot := var_self_20790_slot
                let expr_20885_slot := _2154_slot
                /// @src 112:3306:3335  "self.feeGrowthInside1LastX128"
                let _2155 := add(expr_20885_slot, 2)
                /// @src 112:3306:3358  "self.feeGrowthInside1LastX128 = feeGrowthInside1X128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_2155, expr_20888)
                let expr_20889 := expr_20888
                /// @src 112:3372:3383  "tokensOwed0"
                let _2156 := var_tokensOwed0_20836
                let expr_20891 := _2156
                /// @src 112:3386:3387  "0"
                let expr_20892 := 0x00
                /// @src 112:3372:3387  "tokensOwed0 > 0"
                let expr_20893 := gt(cleanup_t_uint128(expr_20891), convert_t_rational_0_by_1_to_t_uint128(expr_20892))
                /// @src 112:3372:3406  "tokensOwed0 > 0 || tokensOwed1 > 0"
                let expr_20897 := expr_20893
                if iszero(expr_20897) {
                    /// @src 112:3391:3402  "tokensOwed1"
                    let _2157 := var_tokensOwed1_20853
                    let expr_20894 := _2157
                    /// @src 112:3405:3406  "0"
                    let expr_20895 := 0x00
                    /// @src 112:3391:3406  "tokensOwed1 > 0"
                    let expr_20896 := gt(cleanup_t_uint128(expr_20894), convert_t_rational_0_by_1_to_t_uint128(expr_20895))
                    /// @src 112:3372:3406  "tokensOwed0 > 0 || tokensOwed1 > 0"
                    expr_20897 := expr_20896
                }
                /// @src 112:3368:3603  "if (tokensOwed0 > 0 || tokensOwed1 > 0) {..."
                if expr_20897 {
                    /// @src 112:3536:3547  "tokensOwed0"
                    let _2158 := var_tokensOwed0_20836
                    let expr_20901 := _2158
                    /// @src 112:3516:3520  "self"
                    let _2159_slot := var_self_20790_slot
                    let expr_20898_slot := _2159_slot
                    /// @src 112:3516:3532  "self.tokensOwed0"
                    let _2160 := add(expr_20898_slot, 3)
                    /// @src 112:3516:3547  "self.tokensOwed0 += tokensOwed0"
                    let _2161 := read_from_storage_split_offset_0_t_uint128(_2160)
                    let expr_20902 := checked_add_t_uint128(_2161, expr_20901)

                    update_storage_value_offset_0_t_uint128_to_t_uint128(_2160, expr_20902)
                    /// @src 112:3581:3592  "tokensOwed1"
                    let _2162 := var_tokensOwed1_20853
                    let expr_20907 := _2162
                    /// @src 112:3561:3565  "self"
                    let _2163_slot := var_self_20790_slot
                    let expr_20904_slot := _2163_slot
                    /// @src 112:3561:3577  "self.tokensOwed1"
                    let _2164 := add(expr_20904_slot, 3)
                    /// @src 112:3561:3592  "self.tokensOwed1 += tokensOwed1"
                    let _2165 := read_from_storage_split_offset_16_t_uint128(_2164)
                    let expr_20908 := checked_add_t_uint128(_2165, expr_20907)

                    update_storage_value_offset_16_t_uint128_to_t_uint128(_2164, expr_20908)
                    /// @src 112:3368:3603  "if (tokensOwed0 > 0 || tokensOwed1 > 0) {..."
                }

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            function update_byte_slice_dynamic32(value, shiftBytes, toInsert) -> result {
                let shiftBits := mul(shiftBytes, 8)
                let mask := shift_left_dynamic(shiftBits, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                toInsert := shift_left_dynamic(shiftBits, toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_t_uint256_to_t_uint256(slot, offset, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_uint256(convertedValue_0)))
            }

            function storage_set_to_zero_t_uint256(slot, offset) {
                let zero_0 := zero_value_for_split_t_uint256()
                update_storage_value_t_uint256_to_t_uint256(slot, offset, zero_0)
            }

            function clear_struct_storage_t_struct$_Info_$21791_storage(slot) {

                sstore(add(slot, 0), 0)

                storage_set_to_zero_t_uint256(add(slot, 1), 0)

                storage_set_to_zero_t_uint256(add(slot, 2), 0)

                sstore(add(slot, 3), 0)

            }

            function storage_set_to_zero_t_struct$_Info_$21791_storage(slot, offset) {
                if iszero(eq(offset, 0)) { panic_error_0x00() }
                clear_struct_storage_t_struct$_Info_$21791_storage(slot)
            }

            /// @ast-id 22137
            /// @src 116:7923:8035  "function clear(mapping(int24 => Tick.Info) storage self, int24 tick) internal {..."
            function fun_clear_22137(var_self_22126_slot, var_tick_22128) {

                /// @src 116:8018:8022  "self"
                let _2166_slot := var_self_22126_slot
                let expr_22131_slot := _2166_slot
                /// @src 116:8023:8027  "tick"
                let _2167 := var_tick_22128
                let expr_22132 := _2167
                /// @src 116:8018:8028  "self[tick]"
                let _2168 := mapping_index_access_t_mapping$_t_int24_$_t_struct$_Info_$21791_storage_$_of_t_int24(expr_22131_slot,expr_22132)
                /// @src 116:8011:8028  "delete self[tick]"
                storage_set_to_zero_t_struct$_Info_$21791_storage(_2168, 0)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

            /// @ast-id 20938
            /// @src 113:394:505  "function toUint160(uint256 y) internal pure returns (uint160 z) {..."
            function fun_toUint160_20938(var_y_20920) -> var_z_20923 {
                /// @src 113:447:456  "uint160 z"
                let zero_t_uint160_2169 := zero_value_for_split_t_uint160()
                var_z_20923 := zero_t_uint160_2169

                /// @src 113:489:490  "y"
                let _2170 := var_y_20920
                let expr_20929 := _2170
                /// @src 113:481:491  "uint160(y)"
                let expr_20930 := convert_t_uint256_to_t_uint160(expr_20929)
                /// @src 113:477:491  "z = uint160(y)"
                var_z_20923 := expr_20930
                let expr_20931 := expr_20930
                /// @src 113:476:492  "(z = uint160(y))"
                let expr_20932 := expr_20931
                /// @src 113:496:497  "y"
                let _2171 := var_y_20920
                let expr_20933 := _2171
                /// @src 113:476:497  "(z = uint160(y)) == y"
                let expr_20934 := eq(convert_t_uint160_to_t_uint256(expr_20932), cleanup_t_uint256(expr_20933))
                /// @src 113:468:498  "require((z = uint160(y)) == y)"
                require_helper(expr_20934)

            }
            /// @src 90:969:35555  "contract UniswapV3Pool is IUniswapV3Pool, NoDelegateCall {..."

        }

        data ".metadata" hex"a2646970667358221220b0276133ebacf6b3bc1b84f667230de33c96113e62120ca56e61e29316a223dd64736f6c634300081e0033"
    }

}

