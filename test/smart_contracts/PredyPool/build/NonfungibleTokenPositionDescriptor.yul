
/// @use-src 122:"uniswap/v3-periphery-1.3.0/contracts/NonfungibleTokenPositionDescriptor.sol", 136:"uniswap/v3-periphery-1.3.0/contracts/interfaces/INonfungibleTokenPositionDescriptor.sol"
object "NonfungibleTokenPositionDescriptor_3919" {
    code {
        /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."
        mstore(64, memoryguard(192))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1, _2 := copy_arguments_for_constructor_3641_object_NonfungibleTokenPositionDescriptor_3919()
        constructor_NonfungibleTokenPositionDescriptor_3919(_1, _2)

        let _3 := allocate_unbounded()
        codecopy(_3, dataoffset("NonfungibleTokenPositionDescriptor_3919_deployed"), datasize("NonfungibleTokenPositionDescriptor_3919_deployed"))

        setimmutable(_3, "3622", mload(128))

        setimmutable(_3, "3625", mload(160))

        return(_3, datasize("NonfungibleTokenPositionDescriptor_3919_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
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

        function allocate_memory(size) -> memPtr {
            memPtr := allocate_unbounded()
            finalize_allocation(memPtr, size)
        }

        function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
            revert(0, 0)
        }

        function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
            revert(0, 0)
        }

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
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

        function cleanup_t_bytes32(value) -> cleaned {
            cleaned := value
        }

        function validator_revert_t_bytes32(value) {
            if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
        }

        function abi_decode_t_bytes32_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_bytes32(value)
        }

        function abi_decode_tuple_t_addresst_bytes32_fromMemory(headStart, dataEnd) -> value0, value1 {
            if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            {

                let offset := 0

                value0 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 32

                value1 := abi_decode_t_bytes32_fromMemory(add(headStart, offset), dataEnd)
            }

        }

        function copy_arguments_for_constructor_3641_object_NonfungibleTokenPositionDescriptor_3919() -> ret_param_0, ret_param_1 {

            let programSize := datasize("NonfungibleTokenPositionDescriptor_3919")
            let argSize := sub(codesize(), programSize)

            let memoryDataOffset := allocate_memory(argSize)
            codecopy(memoryDataOffset, programSize, argSize)

            ret_param_0, ret_param_1 := abi_decode_tuple_t_addresst_bytes32_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
        }

        /// @ast-id 3641
        /// @src 122:1317:1473  "constructor(address _WETH9, bytes32 _nativeCurrencyLabelBytes) {..."
        function constructor_NonfungibleTokenPositionDescriptor_3919(var__WETH9_3627, var__nativeCurrencyLabelBytes_3629) {

            /// @src 122:1317:1473  "constructor(address _WETH9, bytes32 _nativeCurrencyLabelBytes) {..."
            constructor_INonfungibleTokenPositionDescriptor_4134()

            /// @src 122:1398:1404  "_WETH9"
            let _4 := var__WETH9_3627
            let expr_3633 := _4
            /// @src 122:1390:1404  "WETH9 = _WETH9"
            let _5 := expr_3633
            mstore(128, _5)
            let expr_3634 := expr_3633
            /// @src 122:1441:1466  "_nativeCurrencyLabelBytes"
            let _6 := var__nativeCurrencyLabelBytes_3629
            let expr_3637 := _6
            /// @src 122:1414:1466  "nativeCurrencyLabelBytes = _nativeCurrencyLabelBytes"
            let _7 := expr_3637
            mstore(160, _7)
            let expr_3638 := expr_3637

        }
        /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

        /// @src 136:202:816  "interface INonfungibleTokenPositionDescriptor {..."
        function constructor_INonfungibleTokenPositionDescriptor_4134() {

            /// @src 136:202:816  "interface INonfungibleTokenPositionDescriptor {..."

        }
        /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

    }
    /// @use-src 86:"uniswap/solidity-lib-4.0.0-alpha/contracts/libraries/AddressStringUtil.sol", 87:"uniswap/solidity-lib-4.0.0-alpha/contracts/libraries/SafeERC20Namer.sol", 122:"uniswap/v3-periphery-1.3.0/contracts/NonfungibleTokenPositionDescriptor.sol", 145:"uniswap/v3-periphery-1.3.0/contracts/libraries/ChainId.sol", 150:"uniswap/v3-periphery-1.3.0/contracts/libraries/PoolAddress.sol", 152:"uniswap/v3-periphery-1.3.0/contracts/libraries/TokenRatioSortOrder.sol"
    object "NonfungibleTokenPositionDescriptor_3919_deployed" {
        code {
            /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x4aa4a4fc
                {
                    // WETH9()

                    external_fun_WETH9_3622()
                }

                case 0x7e5af771
                {
                    // flipRatio(address,address,uint256)

                    external_fun_flipRatio_3850()
                }

                case 0x9d7b0ea8
                {
                    // tokenRatioPriority(address,uint256)

                    external_fun_tokenRatioPriority_3918()
                }

                case 0xa18246e2
                {
                    // nativeCurrencyLabelBytes()

                    external_fun_nativeCurrencyLabelBytes_3625()
                }

                case 0xb7af3cdc
                {
                    // nativeCurrencyLabel()

                    external_fun_nativeCurrencyLabel_3698()
                }

                case 0xe9dc6375
                {
                    // tokenURI(address,uint256)

                    external_fun_tokenURI_3828()
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

            /// @ast-id 3622
            /// @src 122:1187:1217  "address public immutable WETH9"
            function getter_fun_WETH9_3622() -> rval {

                rval := loadimmutable("3622")

            }
            /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

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

            function external_fun_WETH9_3622() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_WETH9_3622()
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

            function abi_decode_tuple_t_addresst_addresst_uint256(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_tuple_t_bool__to_t_bool__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_flipRatio_3850() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_flipRatio_3850(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function cleanup_t_int256(value) -> cleaned {
                cleaned := value
            }

            function abi_encode_t_int256_to_t_int256_fromStack(value, pos) {
                mstore(pos, cleanup_t_int256(value))
            }

            function abi_encode_tuple_t_int256__to_t_int256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_int256_to_t_int256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_tokenRatioPriority_3918() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_tokenRatioPriority_3918(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_int256__to_t_int256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 3625
            /// @src 122:1261:1310  "bytes32 public immutable nativeCurrencyLabelBytes"
            function getter_fun_nativeCurrencyLabelBytes_3625() -> rval {

                rval := loadimmutable("3625")

            }
            /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_nativeCurrencyLabelBytes_3625() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_nativeCurrencyLabelBytes_3625()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function copy_memory_to_memory_with_cleanup(src, dst, length) {

                mcopy(dst, src, length)
                mstore(add(dst, length), 0)

            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value0,  tail)

            }

            function external_fun_nativeCurrencyLabel_3698() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_nativeCurrencyLabel_3698()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_contract$_INonfungiblePositionManager_$4118(value) -> cleaned {
                cleaned := cleanup_t_address(value)
            }

            function validator_revert_t_contract$_INonfungiblePositionManager_$4118(value) {
                if iszero(eq(value, cleanup_t_contract$_INonfungiblePositionManager_$4118(value))) { revert(0, 0) }
            }

            function abi_decode_t_contract$_INonfungiblePositionManager_$4118(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_contract$_INonfungiblePositionManager_$4118(value)
            }

            function abi_decode_tuple_t_contract$_INonfungiblePositionManager_$4118t_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_contract$_INonfungiblePositionManager_$4118(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_tokenURI_3828() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_contract$_INonfungiblePositionManager_$4118t_uint256(4, calldatasize())
                let ret_0 :=  fun_tokenURI_3828(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            /// @ast-id 3850
            /// @src 122:4149:4371  "function flipRatio(..."
            function fun_flipRatio_3850(var_token0_3830, var_token1_3832, var_chainId_3834) -> var__3837 {
                /// @src 122:4268:4272  "bool"
                let zero_t_bool_1 := zero_value_for_split_t_bool()
                var__3837 := zero_t_bool_1

                /// @src 122:4310:4316  "token0"
                let _2 := var_token0_3830
                let expr_3840 := _2
                /// @src 122:4318:4325  "chainId"
                let _3 := var_chainId_3834
                let expr_3841 := _3
                /// @src 122:4291:4326  "tokenRatioPriority(token0, chainId)"
                let expr_3842 := fun_tokenRatioPriority_3918(expr_3840, expr_3841)
                /// @src 122:4348:4354  "token1"
                let _4 := var_token1_3832
                let expr_3844 := _4
                /// @src 122:4356:4363  "chainId"
                let _5 := var_chainId_3834
                let expr_3845 := _5
                /// @src 122:4329:4364  "tokenRatioPriority(token1, chainId)"
                let expr_3846 := fun_tokenRatioPriority_3918(expr_3844, expr_3845)
                /// @src 122:4291:4364  "tokenRatioPriority(token0, chainId) > tokenRatioPriority(token1, chainId)"
                let expr_3847 := sgt(cleanup_t_int256(expr_3842), cleanup_t_int256(expr_3846))
                /// @src 122:4284:4364  "return tokenRatioPriority(token0, chainId) > tokenRatioPriority(token1, chainId)"
                var__3837 := expr_3847
                leave

            }
            /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

            function zero_value_for_split_t_int256() -> ret {
                ret := 0
            }

            function cleanup_t_rational_minus_100_by_1(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_minus_100_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_minus_100_by_1(value)))
            }

            /// @src 152:340:374  "int256 constant DENOMINATOR = -100"
            function constant_DENOMINATOR_12508() -> ret {
                /// @src 152:370:374  "-100"
                let expr_12507 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff9c
                let _9 := convert_t_rational_minus_100_by_1_to_t_int256(expr_12507)

                ret := _9
            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            /// @src 122:866:940  "address private constant USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48"
            function constant_USDC_3611() -> ret {
                /// @src 122:898:940  "0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48"
                let expr_3610 := 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48
                let _12 := expr_3610

                ret := _12
            }

            /// @src 122:946:1020  "address private constant USDT = 0xdAC17F958D2ee523a2206206994597C13D831ec7"
            function constant_USDT_3614() -> ret {
                /// @src 122:978:1020  "0xdAC17F958D2ee523a2206206994597C13D831ec7"
                let expr_3613 := 0xdac17f958d2ee523a2206206994597c13d831ec7
                let _14 := expr_3613

                ret := _14
            }

            /// @src 122:787:860  "address private constant DAI = 0x6B175474E89094C44Da98b954EedeAC495271d0F"
            function constant_DAI_3608() -> ret {
                /// @src 122:818:860  "0x6B175474E89094C44Da98b954EedeAC495271d0F"
                let expr_3607 := 0x6b175474e89094c44da98b954eedeac495271d0f
                let _16 := expr_3607

                ret := _16
            }

            /// @src 122:1026:1100  "address private constant TBTC = 0x8dAEBADE922dF735c38C80C7eBD708Af50815fAa"
            function constant_TBTC_3617() -> ret {
                /// @src 122:1058:1100  "0x8dAEBADE922dF735c38C80C7eBD708Af50815fAa"
                let expr_3616 := 0x8daebade922df735c38c80c7ebd708af50815faa
                let _18 := expr_3616

                ret := _18
            }

            /// @src 122:1106:1180  "address private constant WBTC = 0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599"
            function constant_WBTC_3620() -> ret {
                /// @src 122:1138:1180  "0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599"
                let expr_3619 := 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599
                let _20 := expr_3619

                ret := _20
            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function cleanup_t_rational_minus_300_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_minus_300_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_minus_300_by_1(value)))
            }

            /// @src 152:250:289  "int256 constant DENOMINATOR_MOST = -300"
            function constant_DENOMINATOR_MOST_12500() -> ret {
                /// @src 152:285:289  "-300"
                let expr_12499 := 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffed4
                let _21 := convert_t_rational_minus_300_by_1_to_t_int256(expr_12499)

                ret := _21
            }

            function cleanup_t_rational_minus_200_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_minus_200_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_minus_200_by_1(value)))
            }

            /// @src 152:295:334  "int256 constant DENOMINATOR_MORE = -200"
            function constant_DENOMINATOR_MORE_12504() -> ret {
                /// @src 152:330:334  "-200"
                let expr_12503 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff38
                let _22 := convert_t_rational_minus_200_by_1_to_t_int256(expr_12503)

                ret := _22
            }

            function cleanup_t_rational_100_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_100_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_100_by_1(value)))
            }

            /// @src 152:212:243  "int256 constant NUMERATOR = 100"
            function constant_NUMERATOR_12496() -> ret {
                /// @src 152:240:243  "100"
                let expr_12495 := 0x64
                let _23 := convert_t_rational_100_by_1_to_t_int256(expr_12495)

                ret := _23
            }

            function cleanup_t_rational_200_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_200_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_200_by_1(value)))
            }

            /// @src 152:170:206  "int256 constant NUMERATOR_MORE = 200"
            function constant_NUMERATOR_MORE_12493() -> ret {
                /// @src 152:203:206  "200"
                let expr_12492 := 0xc8
                let _24 := convert_t_rational_200_by_1_to_t_int256(expr_12492)

                ret := _24
            }

            function cleanup_t_rational_300_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_300_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_300_by_1(value)))
            }

            /// @src 152:128:164  "int256 constant NUMERATOR_MOST = 300"
            function constant_NUMERATOR_MOST_12490() -> ret {
                /// @src 152:161:164  "300"
                let expr_12489 := 0x012c
                let _25 := convert_t_rational_300_by_1_to_t_int256(expr_12489)

                ret := _25
            }

            /// @ast-id 3918
            /// @src 122:4377:5168  "function tokenRatioPriority(address token, uint256 chainId) public view returns (int256) {..."
            function fun_tokenRatioPriority_3918(var_token_3852, var_chainId_3854) -> var__3857 {
                /// @src 122:4458:4464  "int256"
                let zero_t_int256_6 := zero_value_for_split_t_int256()
                var__3857 := zero_t_int256_6

                /// @src 122:4480:4485  "token"
                let _7 := var_token_3852
                let expr_3859 := _7
                /// @src 122:4489:4494  "WETH9"
                let _8 := loadimmutable("3622")
                let expr_3860 := _8
                /// @src 122:4480:4494  "token == WETH9"
                let expr_3861 := eq(cleanup_t_address(expr_3859), cleanup_t_address(expr_3860))
                /// @src 122:4476:4559  "if (token == WETH9) {..."
                if expr_3861 {
                    /// @src 122:4517:4536  "TokenRatioSortOrder"
                    let expr_3862_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/TokenRatioSortOrder.sol:TokenRatioSortOrder")
                    /// @src 122:4517:4548  "TokenRatioSortOrder.DENOMINATOR"
                    let expr_3863 := constant_DENOMINATOR_12508()
                    /// @src 122:4510:4548  "return TokenRatioSortOrder.DENOMINATOR"
                    var__3857 := expr_3863
                    leave
                    /// @src 122:4476:4559  "if (token == WETH9) {..."
                }
                /// @src 122:4572:4579  "chainId"
                let _10 := var_chainId_3854
                let expr_3867 := _10
                /// @src 122:4583:4584  "1"
                let expr_3868 := 0x01
                /// @src 122:4572:4584  "chainId == 1"
                let expr_3869 := eq(cleanup_t_uint256(expr_3867), convert_t_rational_1_by_1_to_t_uint256(expr_3868))
                /// @src 122:4568:5144  "if (chainId == 1) {..."
                if expr_3869 {
                    /// @src 122:4604:4609  "token"
                    let _11 := var_token_3852
                    let expr_3870 := _11
                    /// @src 122:4613:4617  "USDC"
                    let expr_3871 := constant_USDC_3611()
                    /// @src 122:4604:4617  "token == USDC"
                    let expr_3872 := eq(cleanup_t_address(expr_3870), cleanup_t_address(expr_3871))
                    /// @src 122:4600:5134  "if (token == USDC) {..."
                    switch expr_3872
                    case 0 {
                        /// @src 122:4703:4708  "token"
                        let _13 := var_token_3852
                        let expr_3877 := _13
                        /// @src 122:4712:4716  "USDT"
                        let expr_3878 := constant_USDT_3614()
                        /// @src 122:4703:4716  "token == USDT"
                        let expr_3879 := eq(cleanup_t_address(expr_3877), cleanup_t_address(expr_3878))
                        /// @src 122:4699:5134  "if (token == USDT) {..."
                        switch expr_3879
                        case 0 {
                            /// @src 122:4802:4807  "token"
                            let _15 := var_token_3852
                            let expr_3884 := _15
                            /// @src 122:4811:4814  "DAI"
                            let expr_3885 := constant_DAI_3608()
                            /// @src 122:4802:4814  "token == DAI"
                            let expr_3886 := eq(cleanup_t_address(expr_3884), cleanup_t_address(expr_3885))
                            /// @src 122:4798:5134  "if (token == DAI) {..."
                            switch expr_3886
                            case 0 {
                                /// @src 122:4895:4900  "token"
                                let _17 := var_token_3852
                                let expr_3891 := _17
                                /// @src 122:4904:4908  "TBTC"
                                let expr_3892 := constant_TBTC_3617()
                                /// @src 122:4895:4908  "token == TBTC"
                                let expr_3893 := eq(cleanup_t_address(expr_3891), cleanup_t_address(expr_3892))
                                /// @src 122:4891:5134  "if (token == TBTC) {..."
                                switch expr_3893
                                case 0 {
                                    /// @src 122:4996:5001  "token"
                                    let _19 := var_token_3852
                                    let expr_3898 := _19
                                    /// @src 122:5005:5009  "WBTC"
                                    let expr_3899 := constant_WBTC_3620()
                                    /// @src 122:4996:5009  "token == WBTC"
                                    let expr_3900 := eq(cleanup_t_address(expr_3898), cleanup_t_address(expr_3899))
                                    /// @src 122:4992:5134  "if (token == WBTC) {..."
                                    switch expr_3900
                                    case 0 {
                                        /// @src 122:5118:5119  "0"
                                        let expr_3905 := 0x00
                                        /// @src 122:5111:5119  "return 0"
                                        var__3857 := convert_t_rational_0_by_1_to_t_int256(expr_3905)
                                        leave
                                        /// @src 122:4992:5134  "if (token == WBTC) {..."
                                    }
                                    default {
                                        /// @src 122:5036:5055  "TokenRatioSortOrder"
                                        let expr_3901_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/TokenRatioSortOrder.sol:TokenRatioSortOrder")
                                        /// @src 122:5036:5072  "TokenRatioSortOrder.DENOMINATOR_MOST"
                                        let expr_3902 := constant_DENOMINATOR_MOST_12500()
                                        /// @src 122:5029:5072  "return TokenRatioSortOrder.DENOMINATOR_MOST"
                                        var__3857 := expr_3902
                                        leave
                                        /// @src 122:4992:5134  "if (token == WBTC) {..."
                                    }
                                    /// @src 122:4891:5134  "if (token == TBTC) {..."
                                }
                                default {
                                    /// @src 122:4935:4954  "TokenRatioSortOrder"
                                    let expr_3894_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/TokenRatioSortOrder.sol:TokenRatioSortOrder")
                                    /// @src 122:4935:4971  "TokenRatioSortOrder.DENOMINATOR_MORE"
                                    let expr_3895 := constant_DENOMINATOR_MORE_12504()
                                    /// @src 122:4928:4971  "return TokenRatioSortOrder.DENOMINATOR_MORE"
                                    var__3857 := expr_3895
                                    leave
                                    /// @src 122:4891:5134  "if (token == TBTC) {..."
                                }
                                /// @src 122:4798:5134  "if (token == DAI) {..."
                            }
                            default {
                                /// @src 122:4841:4860  "TokenRatioSortOrder"
                                let expr_3887_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/TokenRatioSortOrder.sol:TokenRatioSortOrder")
                                /// @src 122:4841:4870  "TokenRatioSortOrder.NUMERATOR"
                                let expr_3888 := constant_NUMERATOR_12496()
                                /// @src 122:4834:4870  "return TokenRatioSortOrder.NUMERATOR"
                                var__3857 := expr_3888
                                leave
                                /// @src 122:4798:5134  "if (token == DAI) {..."
                            }
                            /// @src 122:4699:5134  "if (token == USDT) {..."
                        }
                        default {
                            /// @src 122:4743:4762  "TokenRatioSortOrder"
                            let expr_3880_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/TokenRatioSortOrder.sol:TokenRatioSortOrder")
                            /// @src 122:4743:4777  "TokenRatioSortOrder.NUMERATOR_MORE"
                            let expr_3881 := constant_NUMERATOR_MORE_12493()
                            /// @src 122:4736:4777  "return TokenRatioSortOrder.NUMERATOR_MORE"
                            var__3857 := expr_3881
                            leave
                            /// @src 122:4699:5134  "if (token == USDT) {..."
                        }
                        /// @src 122:4600:5134  "if (token == USDC) {..."
                    }
                    default {
                        /// @src 122:4644:4663  "TokenRatioSortOrder"
                        let expr_3873_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/TokenRatioSortOrder.sol:TokenRatioSortOrder")
                        /// @src 122:4644:4678  "TokenRatioSortOrder.NUMERATOR_MOST"
                        let expr_3874 := constant_NUMERATOR_MOST_12490()
                        /// @src 122:4637:4678  "return TokenRatioSortOrder.NUMERATOR_MOST"
                        var__3857 := expr_3874
                        leave
                        /// @src 122:4600:5134  "if (token == USDC) {..."
                    }
                    /// @src 122:4568:5144  "if (chainId == 1) {..."
                }
                /// @src 122:5160:5161  "0"
                let expr_3915 := 0x00
                /// @src 122:5153:5161  "return 0"
                var__3857 := convert_t_rational_0_by_1_to_t_int256(expr_3915)
                leave

            }
            /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

            function zero_value_for_split_t_string_memory_ptr() -> ret {
                ret := 96
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function cleanup_t_rational_32_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_32_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_32_by_1(value)))
            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
            }

            function shift_left_248(value) -> newValue {
                newValue :=

                shl(248, value)

            }

            function cleanup_t_bytes1(value) -> cleaned {
                cleaned := and(value, 0xff00000000000000000000000000000000000000000000000000000000000000)
            }

            function convert_t_rational_0_by_1_to_t_bytes1(value) -> converted {
                converted := cleanup_t_bytes1(shift_left_248(cleanup_t_rational_0_by_1(value)))
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
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

            function zero_memory_chunk_t_bytes1(dataStart, dataSizeInBytes) {
                calldatacopy(dataStart, calldatasize(), dataSizeInBytes)
            }

            function allocate_and_zero_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_bytes_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_bytes_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_bytes1(dataStart, dataSize)
            }

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function memory_array_index_access_t_bytes_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_bytes_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 1)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(value) -> converted  {
                converted := value

            }

            /// @ast-id 3698
            /// @src 122:1541:1903  "function nativeCurrencyLabel() public view returns (string memory) {..."
            function fun_nativeCurrencyLabel_3698() -> var__3645_mpos {
                /// @src 122:1593:1606  "string memory"
                let zero_t_string_memory_ptr_26_mpos := zero_value_for_split_t_string_memory_ptr()
                var__3645_mpos := zero_t_string_memory_ptr_26_mpos

                /// @src 122:1632:1633  "0"
                let expr_3649 := 0x00
                /// @src 122:1618:1633  "uint256 len = 0"
                let var_len_3648 := convert_t_rational_0_by_1_to_t_uint256(expr_3649)
                /// @src 122:1643:1728  "while (len < 32 && nativeCurrencyLabelBytes[len] != 0) {..."
                for {
                    } 1 {
                }
                {
                    /// @src 122:1650:1653  "len"
                    let _27 := var_len_3648
                    let expr_3651 := _27
                    /// @src 122:1656:1658  "32"
                    let expr_3652 := 0x20
                    /// @src 122:1650:1658  "len < 32"
                    let expr_3653 := lt(cleanup_t_uint256(expr_3651), convert_t_rational_32_by_1_to_t_uint256(expr_3652))
                    /// @src 122:1650:1696  "len < 32 && nativeCurrencyLabelBytes[len] != 0"
                    let expr_3659 := expr_3653
                    if expr_3659 {
                        /// @src 122:1662:1686  "nativeCurrencyLabelBytes"
                        let _28 := loadimmutable("3625")
                        let expr_3654 := _28
                        /// @src 122:1687:1690  "len"
                        let _29 := var_len_3648
                        let expr_3655 := _29
                        /// @src 122:1662:1691  "nativeCurrencyLabelBytes[len]"
                        let _30 := expr_3655

                        if iszero(lt(_30, 32)) { panic_error_0x32() }
                        let expr_3656 := shift_left_248(byte(_30, expr_3654))
                        /// @src 122:1695:1696  "0"
                        let expr_3657 := 0x00
                        /// @src 122:1662:1696  "nativeCurrencyLabelBytes[len] != 0"
                        let expr_3658 := iszero(eq(cleanup_t_bytes1(expr_3656), convert_t_rational_0_by_1_to_t_bytes1(expr_3657)))
                        /// @src 122:1650:1696  "len < 32 && nativeCurrencyLabelBytes[len] != 0"
                        expr_3659 := expr_3658
                    }
                    if iszero(expr_3659) { break }
                    /// @src 122:1712:1717  "len++"
                    let _32 := var_len_3648
                    let _31 := increment_t_uint256(_32)
                    var_len_3648 := _31
                    let expr_3661 := _32
                }
                /// @src 122:1764:1767  "len"
                let _33 := var_len_3648
                let expr_3669 := _33
                /// @src 122:1754:1768  "new bytes(len)"
                let expr_3670_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(expr_3669)
                /// @src 122:1737:1768  "bytes memory b = new bytes(len)"
                let var_b_3666_mpos := expr_3670_mpos
                /// @src 122:1778:1871  "for (uint256 i = 0; i < len; i++) {..."
                for {
                    /// @src 122:1795:1796  "0"
                    let expr_3674 := 0x00
                    /// @src 122:1783:1796  "uint256 i = 0"
                    let var_i_3673 := convert_t_rational_0_by_1_to_t_uint256(expr_3674)
                    } 1 {
                    /// @src 122:1807:1810  "i++"
                    let _35 := var_i_3673
                    let _34 := increment_wrapping_t_uint256(_35)
                    var_i_3673 := _34
                    let expr_3680 := _35
                }
                {
                    /// @src 122:1798:1799  "i"
                    let _36 := var_i_3673
                    let expr_3676 := _36
                    /// @src 122:1802:1805  "len"
                    let _37 := var_len_3648
                    let expr_3677 := _37
                    /// @src 122:1798:1805  "i < len"
                    let expr_3678 := lt(cleanup_t_uint256(expr_3676), cleanup_t_uint256(expr_3677))
                    if iszero(expr_3678) { break }
                    /// @src 122:1833:1857  "nativeCurrencyLabelBytes"
                    let _38 := loadimmutable("3625")
                    let expr_3685 := _38
                    /// @src 122:1858:1859  "i"
                    let _39 := var_i_3673
                    let expr_3686 := _39
                    /// @src 122:1833:1860  "nativeCurrencyLabelBytes[i]"
                    let _40 := expr_3686

                    if iszero(lt(_40, 32)) { panic_error_0x32() }
                    let expr_3687 := shift_left_248(byte(_40, expr_3685))
                    /// @src 122:1826:1827  "b"
                    let _41_mpos := var_b_3666_mpos
                    let expr_3682_mpos := _41_mpos
                    /// @src 122:1828:1829  "i"
                    let _42 := var_i_3673
                    let expr_3683 := _42
                    /// @src 122:1826:1860  "b[i] = nativeCurrencyLabelBytes[i]"
                    let _43 := expr_3687
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_3682_mpos, expr_3683), byte(0, _43))
                    let expr_3688 := expr_3687
                }
                /// @src 122:1894:1895  "b"
                let _44_mpos := var_b_3666_mpos
                let expr_3694_mpos := _44_mpos
                /// @src 122:1887:1896  "string(b)"
                let expr_3695_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_3694_mpos)
                /// @src 122:1880:1896  "return string(b)"
                var__3645_mpos := expr_3695_mpos
                leave

            }
            /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_contract$_INonfungiblePositionManager_$4118_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() {
                revert(0, 0)
            }

            function shift_left_224(value) -> newValue {
                newValue :=

                shl(224, value)

            }

            function cleanup_t_uint96(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffff)
            }

            function validator_revert_t_uint96(value) {
                if iszero(eq(value, cleanup_t_uint96(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint96_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint96(value)
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

            function cleanup_t_uint128(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffff)
            }

            function validator_revert_t_uint128(value) {
                if iszero(eq(value, cleanup_t_uint128(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint128_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint128(value)
            }

            function abi_decode_t_uint256_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_t_uint96t_addresst_addresst_addresst_uint24t_int24t_int24t_uint128t_uint256t_uint256t_uint128t_uint128_fromMemory(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5, value6, value7, value8, value9, value10, value11 {
                if slt(sub(dataEnd, headStart), 384) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint96_fromMemory(add(headStart, offset), dataEnd)
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

                    value3 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 128

                    value4 := abi_decode_t_uint24_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 160

                    value5 := abi_decode_t_int24_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 192

                    value6 := abi_decode_t_int24_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 224

                    value7 := abi_decode_t_uint128_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 256

                    value8 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 288

                    value9 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 320

                    value10 := abi_decode_t_uint128_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 352

                    value11 := abi_decode_t_uint128_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            function abi_decode_tuple_t_address_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function convert_t_uint160_to_t_contract$_IUniswapV3Pool_$2481(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IUniswapV3Pool_$2481(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IUniswapV3Pool_$2481(value)
            }

            function convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function validator_revert_t_uint160(value) {
                if iszero(eq(value, cleanup_t_uint160(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint160_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint160(value)
            }

            function cleanup_t_uint16(value) -> cleaned {
                cleaned := and(value, 0xffff)
            }

            function validator_revert_t_uint16(value) {
                if iszero(eq(value, cleanup_t_uint16(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint16_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint16(value)
            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function validator_revert_t_uint8(value) {
                if iszero(eq(value, cleanup_t_uint8(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint8_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint8(value)
            }

            function validator_revert_t_bool(value) {
                if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
            }

            function abi_decode_t_bool_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_bool(value)
            }

            function abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5, value6 {
                if slt(sub(dataEnd, headStart), 224) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint160_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_int24_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint16_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_uint16_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 128

                    value4 := abi_decode_t_uint16_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 160

                    value5 := abi_decode_t_uint8_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 192

                    value6 := abi_decode_t_bool_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function convert_t_type$_t_contract$_NFTDescriptor_$12485_$_to_t_address(value) -> converted {
                converted := value
            }

            function convert_t_uint160_to_t_contract$_IERC20Metadata_$10720(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IERC20Metadata_$10720(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IERC20Metadata_$10720(value)
            }

            function convert_t_contract$_IERC20Metadata_$10720_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_decode_tuple_t_uint8_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint8_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_int24_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_int24_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function allocate_memory_struct_t_struct$_ConstructTokenURIParams_$10798_storage_ptr() -> memPtr {
                memPtr := allocate_memory(448)
            }

            function write_to_memory_t_uint256(memPtr, value) {
                mstore(memPtr, cleanup_t_uint256(value))
            }

            function write_to_memory_t_address(memPtr, value) {
                mstore(memPtr, cleanup_t_address(value))
            }

            function write_to_memory_t_string_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function write_to_memory_t_uint8(memPtr, value) {
                mstore(memPtr, cleanup_t_uint8(value))
            }

            function write_to_memory_t_bool(memPtr, value) {
                mstore(memPtr, cleanup_t_bool(value))
            }

            function write_to_memory_t_int24(memPtr, value) {
                mstore(memPtr, cleanup_t_int24(value))
            }

            function write_to_memory_t_uint24(memPtr, value) {
                mstore(memPtr, cleanup_t_uint24(value))
            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() {
                revert(0, 0)
            }

            function array_allocation_size_t_string_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function abi_decode_available_length_t_string_memory_ptr_fromMemory(src, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_string_memory_ptr(length))
                mstore(array, length)
                let dst := add(array, 0x20)
                if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
                copy_memory_to_memory_with_cleanup(src, dst, length)
            }

            // string
            function abi_decode_t_string_memory_ptr_fromMemory(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := mload(offset)
                array := abi_decode_available_length_t_string_memory_ptr_fromMemory(add(offset, 0x20), length, end)
            }

            function abi_decode_tuple_t_string_memory_ptr_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := mload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_uint256_to_t_uint256_library(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_t_address_to_t_address_library(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_library(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_library(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_library(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_t_uint8_to_t_uint8_library(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
            }

            function abi_encode_t_bool_to_t_bool_library(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_t_int24_to_t_int24_library(value, pos) {
                mstore(pos, cleanup_t_int24(value))
            }

            function abi_encode_t_uint24_to_t_uint24_library(value, pos) {
                mstore(pos, cleanup_t_uint24(value))
            }

            // struct NFTDescriptor.ConstructTokenURIParams -> struct NFTDescriptor.ConstructTokenURIParams
            function abi_encode_t_struct$_ConstructTokenURIParams_$10798_memory_ptr_to_t_struct$_ConstructTokenURIParams_$10798_memory_ptr_fromStack_library(value, pos)  -> end  {
                let tail := add(pos, 0x01c0)

                {
                    // tokenId

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_uint256_to_t_uint256_library(memberValue0, add(pos, 0x00))
                }

                {
                    // quoteTokenAddress

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_address_to_t_address_library(memberValue0, add(pos, 0x20))
                }

                {
                    // baseTokenAddress

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_address_to_t_address_library(memberValue0, add(pos, 0x40))
                }

                {
                    // quoteTokenSymbol

                    let memberValue0 := mload(add(value, 0x60))

                    mstore(add(pos, 0x60), sub(tail, pos))
                    tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_library(memberValue0, tail)

                }

                {
                    // baseTokenSymbol

                    let memberValue0 := mload(add(value, 0x80))

                    mstore(add(pos, 0x80), sub(tail, pos))
                    tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_library(memberValue0, tail)

                }

                {
                    // quoteTokenDecimals

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_uint8_to_t_uint8_library(memberValue0, add(pos, 0xa0))
                }

                {
                    // baseTokenDecimals

                    let memberValue0 := mload(add(value, 0xc0))
                    abi_encode_t_uint8_to_t_uint8_library(memberValue0, add(pos, 0xc0))
                }

                {
                    // flipRatio

                    let memberValue0 := mload(add(value, 0xe0))
                    abi_encode_t_bool_to_t_bool_library(memberValue0, add(pos, 0xe0))
                }

                {
                    // tickLower

                    let memberValue0 := mload(add(value, 0x0100))
                    abi_encode_t_int24_to_t_int24_library(memberValue0, add(pos, 0x0100))
                }

                {
                    // tickUpper

                    let memberValue0 := mload(add(value, 0x0120))
                    abi_encode_t_int24_to_t_int24_library(memberValue0, add(pos, 0x0120))
                }

                {
                    // tickCurrent

                    let memberValue0 := mload(add(value, 0x0140))
                    abi_encode_t_int24_to_t_int24_library(memberValue0, add(pos, 0x0140))
                }

                {
                    // tickSpacing

                    let memberValue0 := mload(add(value, 0x0160))
                    abi_encode_t_int24_to_t_int24_library(memberValue0, add(pos, 0x0160))
                }

                {
                    // fee

                    let memberValue0 := mload(add(value, 0x0180))
                    abi_encode_t_uint24_to_t_uint24_library(memberValue0, add(pos, 0x0180))
                }

                {
                    // poolAddress

                    let memberValue0 := mload(add(value, 0x01a0))
                    abi_encode_t_address_to_t_address_library(memberValue0, add(pos, 0x01a0))
                }

                end := tail
            }

            function abi_encode_tuple_t_struct$_ConstructTokenURIParams_$10798_memory_ptr__to_t_struct$_ConstructTokenURIParams_$10798_memory_ptr__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_struct$_ConstructTokenURIParams_$10798_memory_ptr_to_t_struct$_ConstructTokenURIParams_$10798_memory_ptr_fromStack_library(value0,  tail)

            }

            /// @ast-id 3828
            /// @src 122:1965:4143  "function tokenURI(INonfungiblePositionManager positionManager, uint256 tokenId)..."
            function fun_tokenURI_3828(var_positionManager_3702_address, var_tokenId_3704) -> var__3708_mpos {
                /// @src 122:2109:2122  "string memory"
                let zero_t_string_memory_ptr_45_mpos := zero_value_for_split_t_string_memory_ptr()
                var__3708_mpos := zero_t_string_memory_ptr_45_mpos

                /// @src 122:2245:2260  "positionManager"
                let _46_address := var_positionManager_3702_address
                let expr_3720_address := _46_address
                /// @src 122:2245:2270  "positionManager.positions"
                let expr_3721_address := convert_t_contract$_INonfungiblePositionManager_$4118_to_t_address(expr_3720_address)
                let expr_3721_functionSelector := 0x99fbab88
                /// @src 122:2271:2278  "tokenId"
                let _47 := var_tokenId_3704
                let expr_3722 := _47
                /// @src 122:2245:2279  "positionManager.positions(tokenId)"

                // storage for arguments and returned data
                let _48 := allocate_unbounded()
                mstore(_48, shift_left_224(expr_3721_functionSelector))
                let _49 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_48, 4) , expr_3722)

                let _50 := staticcall(gas(), expr_3721_address,  _48, sub(_49, _48), _48, 384)

                if iszero(_50) { revert_forward_1() }

                let expr_3723_component_1, expr_3723_component_2, expr_3723_component_3, expr_3723_component_4, expr_3723_component_5, expr_3723_component_6, expr_3723_component_7, expr_3723_component_8, expr_3723_component_9, expr_3723_component_10, expr_3723_component_11, expr_3723_component_12
                if _50 {

                    let _51 := 384

                    if gt(_51, returndatasize()) {
                        _51 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_48, _51)

                    // decode return parameters from external try-call into retVars
                    expr_3723_component_1, expr_3723_component_2, expr_3723_component_3, expr_3723_component_4, expr_3723_component_5, expr_3723_component_6, expr_3723_component_7, expr_3723_component_8, expr_3723_component_9, expr_3723_component_10, expr_3723_component_11, expr_3723_component_12 :=  abi_decode_tuple_t_uint96t_addresst_addresst_addresst_uint24t_int24t_int24t_uint128t_uint256t_uint256t_uint128t_uint128_fromMemory(_48, add(_48, _51))
                }
                /// @src 122:2138:2279  "(, , address token0, address token1, uint24 fee, int24 tickLower, int24 tickUpper, , , , , ) =..."
                let var_token0_3711 := expr_3723_component_3
                let var_token1_3713 := expr_3723_component_4
                let var_fee_3715 := expr_3723_component_5
                let var_tickLower_3717 := expr_3723_component_6
                let var_tickUpper_3719 := expr_3723_component_7
                /// @src 122:2356:2367  "PoolAddress"
                let expr_3729_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/PoolAddress.sol:PoolAddress")
                /// @src 122:2404:2419  "positionManager"
                let _52_address := var_positionManager_3702_address
                let expr_3731_address := _52_address
                /// @src 122:2404:2427  "positionManager.factory"
                let expr_3732_address := convert_t_contract$_INonfungiblePositionManager_$4118_to_t_address(expr_3731_address)
                let expr_3732_functionSelector := 0xc45a0155
                /// @src 122:2404:2429  "positionManager.factory()"

                // storage for arguments and returned data
                let _53 := allocate_unbounded()
                mstore(_53, shift_left_224(expr_3732_functionSelector))
                let _54 := abi_encode_tuple__to__fromStack(add(_53, 4) )

                let _55 := staticcall(gas(), expr_3732_address,  _53, sub(_54, _53), _53, 32)

                if iszero(_55) { revert_forward_1() }

                let expr_3733
                if _55 {

                    let _56 := 32

                    if gt(_56, returndatasize()) {
                        _56 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_53, _56)

                    // decode return parameters from external try-call into retVars
                    expr_3733 :=  abi_decode_tuple_t_address_fromMemory(_53, add(_53, _56))
                }
                /// @src 122:2451:2462  "PoolAddress"
                let expr_3734_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/PoolAddress.sol:PoolAddress")
                /// @src 122:2474:2480  "token0"
                let _57 := var_token0_3711
                let expr_3736 := _57
                /// @src 122:2482:2488  "token1"
                let _58 := var_token1_3713
                let expr_3737 := _58
                /// @src 122:2490:2493  "fee"
                let _59 := var_fee_3715
                let expr_3738 := _59
                /// @src 122:2451:2494  "PoolAddress.getPoolKey(token0, token1, fee)"
                let expr_3739_mpos := fun_getPoolKey_10303(expr_3736, expr_3737, expr_3738)
                /// @src 122:2356:2733  "PoolAddress.computeAddress(..."
                let expr_3740 := fun_computeAddress_10354(expr_3733, expr_3739_mpos)
                /// @src 122:2324:2747  "IUniswapV3Pool(..."
                let expr_3741_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$2481(expr_3740)
                /// @src 122:2290:2747  "IUniswapV3Pool pool =..."
                let var_pool_3727_address := expr_3741_address
                /// @src 122:2786:2792  "token0"
                let _60 := var_token0_3711
                let expr_3746 := _60
                /// @src 122:2794:2800  "token1"
                let _61 := var_token1_3713
                let expr_3747 := _61
                /// @src 122:2802:2809  "ChainId"
                let expr_3748_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/ChainId.sol:ChainId")
                /// @src 122:2802:2815  "ChainId.get()"
                let expr_3750 := fun_get_10731()
                /// @src 122:2776:2816  "flipRatio(token0, token1, ChainId.get())"
                let expr_3751 := fun_flipRatio_3850(expr_3746, expr_3747, expr_3750)
                /// @src 122:2758:2816  "bool _flipRatio = flipRatio(token0, token1, ChainId.get())"
                let var__flipRatio_3744 := expr_3751
                /// @src 122:2855:2865  "_flipRatio"
                let _62 := var__flipRatio_3744
                let expr_3755 := _62
                /// @src 122:2854:2865  "!_flipRatio"
                let expr_3756 := cleanup_t_bool(iszero(expr_3755))
                /// @src 122:2854:2883  "!_flipRatio ? token1 : token0"
                let expr_3759
                switch expr_3756
                case 0 {
                    /// @src 122:2877:2883  "token0"
                    let _63 := var_token0_3711
                    let expr_3758 := _63
                    /// @src 122:2854:2883  "!_flipRatio ? token1 : token0"
                    expr_3759 := expr_3758
                }
                default {
                    /// @src 122:2868:2874  "token1"
                    let _64 := var_token1_3713
                    let expr_3757 := _64
                    /// @src 122:2854:2883  "!_flipRatio ? token1 : token0"
                    expr_3759 := expr_3757
                }
                /// @src 122:2826:2883  "address quoteTokenAddress = !_flipRatio ? token1 : token0"
                let var_quoteTokenAddress_3754 := expr_3759
                /// @src 122:2921:2931  "_flipRatio"
                let _65 := var__flipRatio_3744
                let expr_3763 := _65
                /// @src 122:2920:2931  "!_flipRatio"
                let expr_3764 := cleanup_t_bool(iszero(expr_3763))
                /// @src 122:2920:2949  "!_flipRatio ? token0 : token1"
                let expr_3767
                switch expr_3764
                case 0 {
                    /// @src 122:2943:2949  "token1"
                    let _66 := var_token1_3713
                    let expr_3766 := _66
                    /// @src 122:2920:2949  "!_flipRatio ? token0 : token1"
                    expr_3767 := expr_3766
                }
                default {
                    /// @src 122:2934:2940  "token0"
                    let _67 := var_token0_3711
                    let expr_3765 := _67
                    /// @src 122:2920:2949  "!_flipRatio ? token0 : token1"
                    expr_3767 := expr_3765
                }
                /// @src 122:2893:2949  "address baseTokenAddress = !_flipRatio ? token0 : token1"
                let var_baseTokenAddress_3762 := expr_3767
                /// @src 122:2986:2990  "pool"
                let _68_address := var_pool_3727_address
                let expr_3771_address := _68_address
                /// @src 122:2986:2996  "pool.slot0"
                let expr_3772_address := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_3771_address)
                let expr_3772_functionSelector := 0x3850c7bd
                /// @src 122:2986:2998  "pool.slot0()"

                // storage for arguments and returned data
                let _69 := allocate_unbounded()
                mstore(_69, shift_left_224(expr_3772_functionSelector))
                let _70 := abi_encode_tuple__to__fromStack(add(_69, 4) )

                let _71 := staticcall(gas(), expr_3772_address,  _69, sub(_70, _69), _69, 224)

                if iszero(_71) { revert_forward_1() }

                let expr_3773_component_1, expr_3773_component_2, expr_3773_component_3, expr_3773_component_4, expr_3773_component_5, expr_3773_component_6, expr_3773_component_7
                if _71 {

                    let _72 := 224

                    if gt(_72, returndatasize()) {
                        _72 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_69, _72)

                    // decode return parameters from external try-call into retVars
                    expr_3773_component_1, expr_3773_component_2, expr_3773_component_3, expr_3773_component_4, expr_3773_component_5, expr_3773_component_6, expr_3773_component_7 :=  abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(_69, add(_69, _72))
                }
                /// @src 122:2959:2998  "(, int24 tick, , , , , ) = pool.slot0()"
                let var_tick_3770 := expr_3773_component_2
                /// @src 122:3028:3041  "NFTDescriptor"
                let expr_3775_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/NFTDescriptor.sol:NFTDescriptor")
                /// @src 122:3028:3059  "NFTDescriptor.constructTokenURI"
                let expr_3776_address := convert_t_type$_t_contract$_NFTDescriptor_$12485_$_to_t_address(expr_3775_address)
                let expr_3776_functionSelector := 0xc49917d7
                /// @src 122:3077:3090  "NFTDescriptor"
                let expr_3777_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/NFTDescriptor.sol:NFTDescriptor")
                /// @src 122:3146:3153  "tokenId"
                let _73 := var_tokenId_3704
                let expr_3779 := _73
                /// @src 122:3194:3211  "quoteTokenAddress"
                let _74 := var_quoteTokenAddress_3754
                let expr_3780 := _74
                /// @src 122:3251:3267  "baseTokenAddress"
                let _75 := var_baseTokenAddress_3762
                let expr_3781 := _75
                /// @src 122:3307:3324  "quoteTokenAddress"
                let _76 := var_quoteTokenAddress_3754
                let expr_3782 := _76
                /// @src 122:3328:3333  "WETH9"
                let _77 := loadimmutable("3622")
                let expr_3783 := _77
                /// @src 122:3307:3333  "quoteTokenAddress == WETH9"
                let expr_3784 := eq(cleanup_t_address(expr_3782), cleanup_t_address(expr_3783))
                /// @src 122:3307:3453  "quoteTokenAddress == WETH9..."
                let expr_3791_mpos
                switch expr_3784
                case 0 {
                    /// @src 122:3408:3422  "SafeERC20Namer"
                    let expr_3787_address := linkersymbol("uniswap/solidity-lib-4.0.0-alpha/contracts/libraries/SafeERC20Namer.sol:SafeERC20Namer")
                    /// @src 122:3435:3452  "quoteTokenAddress"
                    let _78 := var_quoteTokenAddress_3754
                    let expr_3789 := _78
                    /// @src 122:3408:3453  "SafeERC20Namer.tokenSymbol(quoteTokenAddress)"
                    let expr_3790_mpos := fun_tokenSymbol_10664(expr_3789)
                    /// @src 122:3307:3453  "quoteTokenAddress == WETH9..."
                    expr_3791_mpos := expr_3790_mpos
                }
                default {
                    /// @src 122:3360:3381  "nativeCurrencyLabel()"
                    let expr_3786_mpos := fun_nativeCurrencyLabel_3698()
                    /// @src 122:3307:3453  "quoteTokenAddress == WETH9..."
                    expr_3791_mpos := expr_3786_mpos
                }
                /// @src 122:3492:3508  "baseTokenAddress"
                let _79 := var_baseTokenAddress_3762
                let expr_3792 := _79
                /// @src 122:3512:3517  "WETH9"
                let _80 := loadimmutable("3622")
                let expr_3793 := _80
                /// @src 122:3492:3517  "baseTokenAddress == WETH9"
                let expr_3794 := eq(cleanup_t_address(expr_3792), cleanup_t_address(expr_3793))
                /// @src 122:3492:3636  "baseTokenAddress == WETH9..."
                let expr_3801_mpos
                switch expr_3794
                case 0 {
                    /// @src 122:3592:3606  "SafeERC20Namer"
                    let expr_3797_address := linkersymbol("uniswap/solidity-lib-4.0.0-alpha/contracts/libraries/SafeERC20Namer.sol:SafeERC20Namer")
                    /// @src 122:3619:3635  "baseTokenAddress"
                    let _81 := var_baseTokenAddress_3762
                    let expr_3799 := _81
                    /// @src 122:3592:3636  "SafeERC20Namer.tokenSymbol(baseTokenAddress)"
                    let expr_3800_mpos := fun_tokenSymbol_10664(expr_3799)
                    /// @src 122:3492:3636  "baseTokenAddress == WETH9..."
                    expr_3801_mpos := expr_3800_mpos
                }
                default {
                    /// @src 122:3544:3565  "nativeCurrencyLabel()"
                    let expr_3796_mpos := fun_nativeCurrencyLabel_3698()
                    /// @src 122:3492:3636  "baseTokenAddress == WETH9..."
                    expr_3801_mpos := expr_3796_mpos
                }
                /// @src 122:3693:3710  "quoteTokenAddress"
                let _82 := var_quoteTokenAddress_3754
                let expr_3803 := _82
                /// @src 122:3678:3711  "IERC20Metadata(quoteTokenAddress)"
                let expr_3804_address := convert_t_address_to_t_contract$_IERC20Metadata_$10720(expr_3803)
                /// @src 122:3678:3720  "IERC20Metadata(quoteTokenAddress).decimals"
                let expr_3805_address := convert_t_contract$_IERC20Metadata_$10720_to_t_address(expr_3804_address)
                let expr_3805_functionSelector := 0x313ce567
                /// @src 122:3678:3722  "IERC20Metadata(quoteTokenAddress).decimals()"

                // storage for arguments and returned data
                let _83 := allocate_unbounded()
                mstore(_83, shift_left_224(expr_3805_functionSelector))
                let _84 := abi_encode_tuple__to__fromStack(add(_83, 4) )

                let _85 := staticcall(gas(), expr_3805_address,  _83, sub(_84, _83), _83, 32)

                if iszero(_85) { revert_forward_1() }

                let expr_3806
                if _85 {

                    let _86 := 32

                    if gt(_86, returndatasize()) {
                        _86 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_83, _86)

                    // decode return parameters from external try-call into retVars
                    expr_3806 :=  abi_decode_tuple_t_uint8_fromMemory(_83, add(_83, _86))
                }
                /// @src 122:3778:3794  "baseTokenAddress"
                let _87 := var_baseTokenAddress_3762
                let expr_3808 := _87
                /// @src 122:3763:3795  "IERC20Metadata(baseTokenAddress)"
                let expr_3809_address := convert_t_address_to_t_contract$_IERC20Metadata_$10720(expr_3808)
                /// @src 122:3763:3804  "IERC20Metadata(baseTokenAddress).decimals"
                let expr_3810_address := convert_t_contract$_IERC20Metadata_$10720_to_t_address(expr_3809_address)
                let expr_3810_functionSelector := 0x313ce567
                /// @src 122:3763:3806  "IERC20Metadata(baseTokenAddress).decimals()"

                // storage for arguments and returned data
                let _88 := allocate_unbounded()
                mstore(_88, shift_left_224(expr_3810_functionSelector))
                let _89 := abi_encode_tuple__to__fromStack(add(_88, 4) )

                let _90 := staticcall(gas(), expr_3810_address,  _88, sub(_89, _88), _88, 32)

                if iszero(_90) { revert_forward_1() }

                let expr_3811
                if _90 {

                    let _91 := 32

                    if gt(_91, returndatasize()) {
                        _91 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_88, _91)

                    // decode return parameters from external try-call into retVars
                    expr_3811 :=  abi_decode_tuple_t_uint8_fromMemory(_88, add(_88, _91))
                }
                /// @src 122:3839:3849  "_flipRatio"
                let _92 := var__flipRatio_3744
                let expr_3812 := _92
                /// @src 122:3882:3891  "tickLower"
                let _93 := var_tickLower_3717
                let expr_3813 := _93
                /// @src 122:3924:3933  "tickUpper"
                let _94 := var_tickUpper_3719
                let expr_3814 := _94
                /// @src 122:3968:3972  "tick"
                let _95 := var_tick_3770
                let expr_3815 := _95
                /// @src 122:4007:4011  "pool"
                let _96_address := var_pool_3727_address
                let expr_3816_address := _96_address
                /// @src 122:4007:4023  "pool.tickSpacing"
                let expr_3817_address := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_3816_address)
                let expr_3817_functionSelector := 0xd0c93a7c
                /// @src 122:4007:4025  "pool.tickSpacing()"

                // storage for arguments and returned data
                let _97 := allocate_unbounded()
                mstore(_97, shift_left_224(expr_3817_functionSelector))
                let _98 := abi_encode_tuple__to__fromStack(add(_97, 4) )

                let _99 := staticcall(gas(), expr_3817_address,  _97, sub(_98, _97), _97, 32)

                if iszero(_99) { revert_forward_1() }

                let expr_3818
                if _99 {

                    let _100 := 32

                    if gt(_100, returndatasize()) {
                        _100 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_97, _100)

                    // decode return parameters from external try-call into retVars
                    expr_3818 :=  abi_decode_tuple_t_int24_fromMemory(_97, add(_97, _100))
                }
                /// @src 122:4052:4055  "fee"
                let _101 := var_fee_3715
                let expr_3819 := _101
                /// @src 122:4098:4102  "pool"
                let _102_address := var_pool_3727_address
                let expr_3822_address := _102_address
                /// @src 122:4090:4103  "address(pool)"
                let expr_3823 := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_3822_address)
                /// @src 122:3077:4122  "NFTDescriptor.ConstructTokenURIParams({..."
                let expr_3824_mpos := allocate_memory_struct_t_struct$_ConstructTokenURIParams_$10798_storage_ptr()
                write_to_memory_t_uint256(add(expr_3824_mpos, 0), expr_3779)
                write_to_memory_t_address(add(expr_3824_mpos, 32), expr_3780)
                write_to_memory_t_address(add(expr_3824_mpos, 64), expr_3781)
                write_to_memory_t_string_memory_ptr(add(expr_3824_mpos, 96), expr_3791_mpos)
                write_to_memory_t_string_memory_ptr(add(expr_3824_mpos, 128), expr_3801_mpos)
                write_to_memory_t_uint8(add(expr_3824_mpos, 160), expr_3806)
                write_to_memory_t_uint8(add(expr_3824_mpos, 192), expr_3811)
                write_to_memory_t_bool(add(expr_3824_mpos, 224), expr_3812)
                write_to_memory_t_int24(add(expr_3824_mpos, 256), expr_3813)
                write_to_memory_t_int24(add(expr_3824_mpos, 288), expr_3814)
                write_to_memory_t_int24(add(expr_3824_mpos, 320), expr_3815)
                write_to_memory_t_int24(add(expr_3824_mpos, 352), expr_3818)
                write_to_memory_t_uint24(add(expr_3824_mpos, 384), expr_3819)
                write_to_memory_t_address(add(expr_3824_mpos, 416), expr_3823)
                /// @src 122:3028:4136  "NFTDescriptor.constructTokenURI(..."

                // storage for arguments and returned data
                let _103 := allocate_unbounded()
                mstore(_103, shift_left_224(expr_3776_functionSelector))
                let _104 := abi_encode_tuple_t_struct$_ConstructTokenURIParams_$10798_memory_ptr__to_t_struct$_ConstructTokenURIParams_$10798_memory_ptr__fromStack_library(add(_103, 4) , expr_3824_mpos)

                let _105 := delegatecall(gas(), expr_3776_address,  _103, sub(_104, _103), _103, 0)

                if iszero(_105) { revert_forward_1() }

                let expr_3825_mpos
                if _105 {

                    let _106 := returndatasize()
                    returndatacopy(_103, 0, _106)

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_103, _106)

                    // decode return parameters from external try-call into retVars
                    expr_3825_mpos :=  abi_decode_tuple_t_string_memory_ptr_fromMemory(_103, add(_103, _106))
                }
                /// @src 122:3009:4136  "return..."
                var__3708_mpos := expr_3825_mpos
                leave

            }
            /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

            function allocate_memory_struct_t_struct$_PoolKey_$10271_memory_ptr() -> memPtr {
                memPtr := allocate_memory(96)
            }

            function zero_value_for_t_address() -> ret {
                ret := 0
            }

            function zero_value_for_t_uint24() -> ret {
                ret := 0
            }

            function allocate_and_zero_memory_struct_t_struct$_PoolKey_$10271_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_PoolKey_$10271_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_address())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_address())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint24())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_PoolKey_$10271_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_PoolKey_$10271_memory_ptr()
            }

            function allocate_memory_struct_t_struct$_PoolKey_$10271_storage_ptr() -> memPtr {
                memPtr := allocate_memory(96)
            }

            /// @ast-id 10303
            /// @src 150:1113:1387  "function getPoolKey(..."
            function fun_getPoolKey_10303(var_tokenA_10274, var_tokenB_10276, var_fee_10278) -> var__10282_mpos {
                /// @src 150:1230:1244  "PoolKey memory"
                let zero_t_struct$_PoolKey_$10271_memory_ptr_107_mpos := zero_value_for_split_t_struct$_PoolKey_$10271_memory_ptr()
                var__10282_mpos := zero_t_struct$_PoolKey_$10271_memory_ptr_107_mpos

                /// @src 150:1260:1266  "tokenA"
                let _108 := var_tokenA_10274
                let expr_10284 := _108
                /// @src 150:1269:1275  "tokenB"
                let _109 := var_tokenB_10276
                let expr_10285 := _109
                /// @src 150:1260:1275  "tokenA > tokenB"
                let expr_10286 := gt(cleanup_t_address(expr_10284), cleanup_t_address(expr_10285))
                /// @src 150:1256:1312  "if (tokenA > tokenB) (tokenA, tokenB) = (tokenB, tokenA)"
                if expr_10286 {
                    /// @src 150:1297:1303  "tokenB"
                    let _110 := var_tokenB_10276
                    let expr_10290 := _110
                    /// @src 150:1296:1312  "(tokenB, tokenA)"
                    let expr_10292_component_1 := expr_10290
                    /// @src 150:1305:1311  "tokenA"
                    let _111 := var_tokenA_10274
                    let expr_10291 := _111
                    /// @src 150:1296:1312  "(tokenB, tokenA)"
                    let expr_10292_component_2 := expr_10291
                    /// @src 150:1277:1312  "(tokenA, tokenB) = (tokenB, tokenA)"
                    var_tokenB_10276 := expr_10292_component_2
                    var_tokenA_10274 := expr_10292_component_1
                    /// @src 150:1256:1312  "if (tokenA > tokenB) (tokenA, tokenB) = (tokenB, tokenA)"
                }
                /// @src 150:1346:1352  "tokenA"
                let _112 := var_tokenA_10274
                let expr_10297 := _112
                /// @src 150:1362:1368  "tokenB"
                let _113 := var_tokenB_10276
                let expr_10298 := _113
                /// @src 150:1375:1378  "fee"
                let _114 := var_fee_10278
                let expr_10299 := _114
                /// @src 150:1329:1380  "PoolKey({token0: tokenA, token1: tokenB, fee: fee})"
                let expr_10300_mpos := allocate_memory_struct_t_struct$_PoolKey_$10271_storage_ptr()
                write_to_memory_t_address(add(expr_10300_mpos, 0), expr_10297)
                write_to_memory_t_address(add(expr_10300_mpos, 32), expr_10298)
                write_to_memory_t_uint24(add(expr_10300_mpos, 64), expr_10299)
                /// @src 150:1322:1380  "return PoolKey({token0: tokenA, token1: tokenB, fee: fee})"
                var__10282_mpos := expr_10300_mpos
                leave

            }
            /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            function read_from_memoryt_address(ptr) -> returnValue {

                let value := cleanup_t_address(mload(ptr))

                returnValue :=

                value

            }

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            function read_from_memoryt_uint24(ptr) -> returnValue {

                let value := cleanup_t_uint24(mload(ptr))

                returnValue :=

                value

            }

            function abi_encode_t_uint24_to_t_uint24_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint24(value))
            }

            function abi_encode_tuple_t_address_t_address_t_uint24__to_t_address_t_address_t_uint24__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint24_to_t_uint24_fromStack(value2,  add(headStart, 64))

            }

            function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function cleanup_t_rational_6435762369149880793144289087658240527799312872955058363844139844524577174150_by_1(value) -> cleaned {
                cleaned := value
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function convert_t_rational_6435762369149880793144289087658240527799312872955058363844139844524577174150_by_1_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_rational_6435762369149880793144289087658240527799312872955058363844139844524577174150_by_1(value)))
            }

            /// @src 150:522:636  "bytes32 internal constant POOL_INIT_CODE_HASH = 0x0e3a832da3dfd081d69b94d94f3338902e03ab48de274facdb45434f27c4b286"
            function constant_POOL_INIT_CODE_HASH_10263() -> ret {
                /// @src 150:570:636  "0x0e3a832da3dfd081d69b94d94f3338902e03ab48de274facdb45434f27c4b286"
                let expr_10262 := 0x0e3a832da3dfd081d69b94d94f3338902e03ab48de274facdb45434f27c4b286
                let _134 := convert_t_rational_6435762369149880793144289087658240527799312872955058363844139844524577174150_by_1_to_t_bytes32(expr_10262)

                ret := _134
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function store_literal_in_memory_8b1a944cf13a9a1c08facb2c9e98623ef3254d2ddb48113885c3e8e97fec8db9(memPtr) {

                mstore(add(memPtr, 0), 0xff00000000000000000000000000000000000000000000000000000000000000)

            }

            function abi_encode_t_stringliteral_8b1a944cf13a9a1c08facb2c9e98623ef3254d2ddb48113885c3e8e97fec8db9_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 1)
                store_literal_in_memory_8b1a944cf13a9a1c08facb2c9e98623ef3254d2ddb48113885c3e8e97fec8db9(pos)
                end := add(pos, 1)
            }

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

            function leftAlign_t_bytes32(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes32(cleanup_t_bytes32(value)))
            }

            function abi_encode_tuple_packed_t_stringliteral_8b1a944cf13a9a1c08facb2c9e98623ef3254d2ddb48113885c3e8e97fec8db9_t_address_t_bytes32_t_bytes32__to_t_string_memory_ptr_t_address_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                pos := abi_encode_t_stringliteral_8b1a944cf13a9a1c08facb2c9e98623ef3254d2ddb48113885c3e8e97fec8db9_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                abi_encode_t_address_to_t_address_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 20)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 32)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value2,  pos)
                pos := add(pos, 32)

                end := pos
            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function convert_t_bytes32_to_t_uint256(value) -> converted {
                converted := convert_t_uint256_to_t_uint256(shift_right_0_unsigned(value))
            }

            function convert_t_uint256_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint256(value)))
            }

            /// @ast-id 10354
            /// @src 150:1634:2155  "function computeAddress(address factory, PoolKey memory key) internal pure returns (address pool) {..."
            function fun_computeAddress_10354(var_factory_10306, var_key_10309_mpos) -> var_pool_10312 {
                /// @src 150:1718:1730  "address pool"
                let zero_t_address_115 := zero_value_for_split_t_address()
                var_pool_10312 := zero_t_address_115

                /// @src 150:1750:1753  "key"
                let _116_mpos := var_key_10309_mpos
                let expr_10315_mpos := _116_mpos
                /// @src 150:1750:1760  "key.token0"
                let _117 := add(expr_10315_mpos, 0)
                let _118 := read_from_memoryt_address(_117)
                let expr_10316 := _118
                /// @src 150:1763:1766  "key"
                let _119_mpos := var_key_10309_mpos
                let expr_10317_mpos := _119_mpos
                /// @src 150:1763:1773  "key.token1"
                let _120 := add(expr_10317_mpos, 32)
                let _121 := read_from_memoryt_address(_120)
                let expr_10318 := _121
                /// @src 150:1750:1773  "key.token0 < key.token1"
                let expr_10319 := lt(cleanup_t_address(expr_10316), cleanup_t_address(expr_10318))
                /// @src 150:1742:1774  "require(key.token0 < key.token1)"
                require_helper(expr_10319)
                /// @src 150:1951:1958  "factory"
                let _122 := var_factory_10306
                let expr_10333 := _122
                /// @src 150:2005:2008  "key"
                let _123_mpos := var_key_10309_mpos
                let expr_10337_mpos := _123_mpos
                /// @src 150:2005:2015  "key.token0"
                let _124 := add(expr_10337_mpos, 0)
                let _125 := read_from_memoryt_address(_124)
                let expr_10338 := _125
                /// @src 150:2017:2020  "key"
                let _126_mpos := var_key_10309_mpos
                let expr_10339_mpos := _126_mpos
                /// @src 150:2017:2027  "key.token1"
                let _127 := add(expr_10339_mpos, 32)
                let _128 := read_from_memoryt_address(_127)
                let expr_10340 := _128
                /// @src 150:2029:2032  "key"
                let _129_mpos := var_key_10309_mpos
                let expr_10341_mpos := _129_mpos
                /// @src 150:2029:2036  "key.fee"
                let _130 := add(expr_10341_mpos, 64)
                let _131 := read_from_memoryt_uint24(_130)
                let expr_10342 := _131
                /// @src 150:1994:2037  "abi.encode(key.token0, key.token1, key.fee)"

                let expr_10343_mpos := allocate_unbounded()
                let _132 := add(expr_10343_mpos, 0x20)

                let _133 := abi_encode_tuple_t_address_t_address_t_uint24__to_t_address_t_address_t_uint24__fromStack(_132, expr_10338, expr_10340, expr_10342)
                mstore(expr_10343_mpos, sub(_133, add(expr_10343_mpos, 0x20)))
                finalize_allocation(expr_10343_mpos, sub(_133, expr_10343_mpos))
                /// @src 150:1984:2038  "keccak256(abi.encode(key.token0, key.token1, key.fee))"
                let expr_10344 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_10343_mpos), array_length_t_bytes_memory_ptr(expr_10343_mpos))
                /// @src 150:2064:2083  "POOL_INIT_CODE_HASH"
                let expr_10345 := constant_POOL_INIT_CODE_HASH_10263()
                /// @src 150:1876:2105  "abi.encodePacked(..."

                let expr_10346_mpos := allocate_unbounded()
                let _135 := add(expr_10346_mpos, 0x20)

                let _136 := abi_encode_tuple_packed_t_stringliteral_8b1a944cf13a9a1c08facb2c9e98623ef3254d2ddb48113885c3e8e97fec8db9_t_address_t_bytes32_t_bytes32__to_t_string_memory_ptr_t_address_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(_135, expr_10333, expr_10344, expr_10345)
                mstore(expr_10346_mpos, sub(_136, add(expr_10346_mpos, 0x20)))
                finalize_allocation(expr_10346_mpos, sub(_136, expr_10346_mpos))
                /// @src 150:1845:2123  "keccak256(..."
                let expr_10347 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_10346_mpos), array_length_t_bytes_memory_ptr(expr_10346_mpos))
                /// @src 150:1820:2137  "uint256(..."
                let expr_10348 := convert_t_bytes32_to_t_uint256(expr_10347)
                /// @src 150:1799:2147  "uint160(..."
                let expr_10349 := convert_t_uint256_to_t_uint160(expr_10348)
                /// @src 150:1791:2148  "address(uint160(..."
                let expr_10350 := convert_t_uint160_to_t_address(expr_10349)
                /// @src 150:1784:2148  "pool = address(uint160(..."
                var_pool_10312 := expr_10350
                let expr_10351 := expr_10350

            }
            /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            /// @ast-id 10731
            /// @src 145:267:391  "function get() internal view returns (uint256 chainId) {..."
            function fun_get_10731() -> var_chainId_10727 {
                /// @src 145:305:320  "uint256 chainId"
                let zero_t_uint256_137 := zero_value_for_split_t_uint256()
                var_chainId_10727 := zero_t_uint256_137

                /// @src 145:332:385  "assembly {..."
                {
                    var_chainId_10727 := chainid()
                }

            }
            /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

            function cleanup_t_rational_2514000705_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_bytes4(value) -> cleaned {
                cleaned := and(value, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            }

            function convert_t_rational_2514000705_by_1_to_t_bytes4(value) -> converted {
                converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_2514000705_by_1(value)))
            }

            function convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(value) -> converted  {
                converted := value

            }

            /// @ast-id 10664
            /// @src 87:2960:3342  "function tokenSymbol(address token) internal view returns (string memory) {..."
            function fun_tokenSymbol_10664(var_token_10636) -> var__10639_mpos {
                /// @src 87:3019:3032  "string memory"
                let zero_t_string_memory_ptr_138_mpos := zero_value_for_split_t_string_memory_ptr()
                var__10639_mpos := zero_t_string_memory_ptr_138_mpos

                /// @src 87:3146:3151  "token"
                let _139 := var_token_10636
                let expr_10644 := _139
                /// @src 87:3153:3163  "0x95d89b41"
                let expr_10645 := 0x95d89b41
                /// @src 87:3121:3164  "callAndParseStringReturn(token, 0x95d89b41)"
                let _140 := convert_t_rational_2514000705_by_1_to_t_bytes4(expr_10645)
                let expr_10646_mpos := fun_callAndParseStringReturn_10634(expr_10644, _140)
                /// @src 87:3098:3164  "string memory symbol = callAndParseStringReturn(token, 0x95d89b41)"
                let var_symbol_10642_mpos := expr_10646_mpos
                /// @src 87:3184:3190  "symbol"
                let _141_mpos := var_symbol_10642_mpos
                let expr_10650_mpos := _141_mpos
                /// @src 87:3178:3191  "bytes(symbol)"
                let expr_10651_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_10650_mpos)
                /// @src 87:3178:3198  "bytes(symbol).length"
                let expr_10652 := array_length_t_bytes_memory_ptr(expr_10651_mpos)
                /// @src 87:3202:3203  "0"
                let expr_10653 := 0x00
                /// @src 87:3178:3203  "bytes(symbol).length == 0"
                let expr_10654 := eq(cleanup_t_uint256(expr_10652), convert_t_rational_0_by_1_to_t_uint256(expr_10653))
                /// @src 87:3174:3313  "if (bytes(symbol).length == 0) {..."
                if expr_10654 {
                    /// @src 87:3296:3301  "token"
                    let _142 := var_token_10636
                    let expr_10656 := _142
                    /// @src 87:3280:3302  "addressToSymbol(token)"
                    let expr_10657_mpos := fun_addressToSymbol_10565(expr_10656)
                    /// @src 87:3273:3302  "return addressToSymbol(token)"
                    var__10639_mpos := expr_10657_mpos
                    leave
                    /// @src 87:3174:3313  "if (bytes(symbol).length == 0) {..."
                }
                /// @src 87:3329:3335  "symbol"
                let _143_mpos := var_symbol_10642_mpos
                let expr_10661_mpos := _143_mpos
                /// @src 87:3322:3335  "return symbol"
                var__10639_mpos := expr_10661_mpos
                leave

            }
            /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

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

            function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_string_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(memPtr) {

            }

            function copy_literal_to_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(0)
                store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(add(memPtr, 32))
            }

            function convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470()
            }

            function cleanup_t_rational_64_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_64_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_64_by_1(value)))
            }

            function validator_revert_t_bytes32(value) {
                if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
            }

            function abi_decode_t_bytes32_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_bytes32(value)
            }

            function abi_decode_tuple_t_bytes32_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            /// @ast-id 10634
            /// @src 87:2180:2834  "function callAndParseStringReturn(address token, bytes4 selector) private view returns (string memory) {..."
            function fun_callAndParseStringReturn_10634(var_token_10567, var_selector_10569) -> var__10572_mpos {
                /// @src 87:2268:2281  "string memory"
                let zero_t_string_memory_ptr_144_mpos := zero_value_for_split_t_string_memory_ptr()
                var__10572_mpos := zero_t_string_memory_ptr_144_mpos

                /// @src 87:2329:2334  "token"
                let _145 := var_token_10567
                let expr_10578 := _145
                /// @src 87:2329:2345  "token.staticcall"
                let expr_10579_address := expr_10578
                /// @src 87:2369:2377  "selector"
                let _146 := var_selector_10569
                let expr_10582 := _146
                /// @src 87:2346:2378  "abi.encodeWithSelector(selector)"

                let expr_10583_mpos := allocate_unbounded()
                let _147 := add(expr_10583_mpos, 0x20)

                mstore(_147, expr_10582)
                _147 := add(_147, 4)

                let _148 := abi_encode_tuple__to__fromStack(_147)
                mstore(expr_10583_mpos, sub(_148, add(expr_10583_mpos, 0x20)))
                finalize_allocation(expr_10583_mpos, sub(_148, expr_10583_mpos))
                /// @src 87:2329:2379  "token.staticcall(abi.encodeWithSelector(selector))"

                let _149 := add(expr_10583_mpos, 0x20)
                let _150 := mload(expr_10583_mpos)

                let expr_10584_component_1 := staticcall(gas(), expr_10579_address,  _149, _150, 0, 0)

                let expr_10584_component_2_mpos := extract_returndata()
                /// @src 87:2293:2379  "(bool success, bytes memory data) = token.staticcall(abi.encodeWithSelector(selector))"
                let var_success_10575 := expr_10584_component_1
                let var_data_10577_mpos := expr_10584_component_2_mpos
                /// @src 87:2468:2475  "success"
                let _151 := var_success_10575
                let expr_10586 := _151
                /// @src 87:2467:2475  "!success"
                let expr_10587 := cleanup_t_bool(iszero(expr_10586))
                /// @src 87:2467:2495  "!success || data.length == 0"
                let expr_10592 := expr_10587
                if iszero(expr_10592) {
                    /// @src 87:2479:2483  "data"
                    let _152_mpos := var_data_10577_mpos
                    let expr_10588_mpos := _152_mpos
                    /// @src 87:2479:2490  "data.length"
                    let expr_10589 := array_length_t_bytes_memory_ptr(expr_10588_mpos)
                    /// @src 87:2494:2495  "0"
                    let expr_10590 := 0x00
                    /// @src 87:2479:2495  "data.length == 0"
                    let expr_10591 := eq(cleanup_t_uint256(expr_10589), convert_t_rational_0_by_1_to_t_uint256(expr_10590))
                    /// @src 87:2467:2495  "!success || data.length == 0"
                    expr_10592 := expr_10591
                }
                /// @src 87:2463:2531  "if (!success || data.length == 0) {..."
                if expr_10592 {
                    /// @src 87:2511:2520  "return ''"
                    var__10572_mpos := convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_string_memory_ptr()
                    leave
                    /// @src 87:2463:2531  "if (!success || data.length == 0) {..."
                }
                /// @src 87:2589:2593  "data"
                let _153_mpos := var_data_10577_mpos
                let expr_10597_mpos := _153_mpos
                /// @src 87:2589:2600  "data.length"
                let expr_10598 := array_length_t_bytes_memory_ptr(expr_10597_mpos)
                /// @src 87:2604:2606  "32"
                let expr_10599 := 0x20
                /// @src 87:2589:2606  "data.length == 32"
                let expr_10600 := eq(cleanup_t_uint256(expr_10598), convert_t_rational_32_by_1_to_t_uint256(expr_10599))
                /// @src 87:2585:2809  "if (data.length == 32) {..."
                switch expr_10600
                case 0 {
                    /// @src 87:2733:2737  "data"
                    let _154_mpos := var_data_10577_mpos
                    let expr_10616_mpos := _154_mpos
                    /// @src 87:2733:2744  "data.length"
                    let expr_10617 := array_length_t_bytes_memory_ptr(expr_10616_mpos)
                    /// @src 87:2747:2749  "64"
                    let expr_10618 := 0x40
                    /// @src 87:2733:2749  "data.length > 64"
                    let expr_10619 := gt(cleanup_t_uint256(expr_10617), convert_t_rational_64_by_1_to_t_uint256(expr_10618))
                    /// @src 87:2729:2809  "if (data.length > 64) {..."
                    if expr_10619 {
                        /// @src 87:2783:2787  "data"
                        let _155_mpos := var_data_10577_mpos
                        let expr_10622_mpos := _155_mpos
                        /// @src 87:2772:2798  "abi.decode(data, (string))"

                        let expr_10626_mpos :=  abi_decode_tuple_t_string_memory_ptr_fromMemory(add(expr_10622_mpos, 32), add(add(expr_10622_mpos, 32), array_length_t_bytes_memory_ptr(expr_10622_mpos)))
                        /// @src 87:2765:2798  "return abi.decode(data, (string))"
                        var__10572_mpos := expr_10626_mpos
                        leave
                        /// @src 87:2729:2809  "if (data.length > 64) {..."
                    }
                    /// @src 87:2585:2809  "if (data.length == 32) {..."
                }
                default {
                    /// @src 87:2651:2655  "data"
                    let _156_mpos := var_data_10577_mpos
                    let expr_10605_mpos := _156_mpos
                    /// @src 87:2640:2667  "abi.decode(data, (bytes32))"

                    let expr_10609 :=  abi_decode_tuple_t_bytes32_fromMemory(add(expr_10605_mpos, 32), add(add(expr_10605_mpos, 32), array_length_t_bytes_memory_ptr(expr_10605_mpos)))
                    /// @src 87:2622:2667  "bytes32 decoded = abi.decode(data, (bytes32))"
                    let var_decoded_10602 := expr_10609
                    /// @src 87:2704:2711  "decoded"
                    let _157 := var_decoded_10602
                    let expr_10612 := _157
                    /// @src 87:2688:2712  "bytes32ToString(decoded)"
                    let expr_10613_mpos := fun_bytes32ToString_10466(expr_10612)
                    /// @src 87:2681:2712  "return bytes32ToString(decoded)"
                    var__10572_mpos := expr_10613_mpos
                    leave
                    /// @src 87:2585:2809  "if (data.length == 32) {..."
                }
                /// @src 87:2818:2827  "return ''"
                var__10572_mpos := convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_string_memory_ptr()
                leave

            }
            /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

            function cleanup_t_rational_6_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_6_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_6_by_1(value)))
            }

            /// @ast-id 10565
            /// @src 87:1913:2055  "function addressToSymbol(address token) private pure returns (string memory) {..."
            function fun_addressToSymbol_10565(var_token_10553) -> var__10556_mpos {
                /// @src 87:1975:1988  "string memory"
                let zero_t_string_memory_ptr_158_mpos := zero_value_for_split_t_string_memory_ptr()
                var__10556_mpos := zero_t_string_memory_ptr_158_mpos

                /// @src 87:2007:2024  "AddressStringUtil"
                let expr_10558_address := linkersymbol("uniswap/solidity-lib-4.0.0-alpha/contracts/libraries/AddressStringUtil.sol:AddressStringUtil")
                /// @src 87:2039:2044  "token"
                let _159 := var_token_10553
                let expr_10560 := _159
                /// @src 87:2046:2047  "6"
                let expr_10561 := 0x06
                /// @src 87:2007:2048  "AddressStringUtil.toAsciiString(token, 6)"
                let _160 := convert_t_rational_6_by_1_to_t_uint256(expr_10561)
                let expr_10562_mpos := fun_toAsciiString_24690(expr_10560, _160)
                /// @src 87:2000:2048  "return AddressStringUtil.toAsciiString(token, 6)"
                var__10556_mpos := expr_10562_mpos
                leave

            }
            /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

            function read_from_memoryt_bytes1(ptr) -> returnValue {

                let value := cleanup_t_bytes1(mload(ptr))

                returnValue :=

                value

            }

            /// @ast-id 10466
            /// @src 87:332:916  "function bytes32ToString(bytes32 x) private pure returns (string memory) {..."
            function fun_bytes32ToString_10466(var_x_10385) -> var__10388_mpos {
                /// @src 87:390:403  "string memory"
                let zero_t_string_memory_ptr_161_mpos := zero_value_for_split_t_string_memory_ptr()
                var__10388_mpos := zero_t_string_memory_ptr_161_mpos

                /// @src 87:452:454  "32"
                let expr_10394 := 0x20
                /// @src 87:442:455  "new bytes(32)"
                let _162 := convert_t_rational_32_by_1_to_t_uint256(expr_10394)
                let expr_10395_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(_162)
                /// @src 87:415:455  "bytes memory bytesString = new bytes(32)"
                let var_bytesString_10391_mpos := expr_10395_mpos
                /// @src 87:485:486  "0"
                let expr_10399 := 0x00
                /// @src 87:465:486  "uint256 charCount = 0"
                let var_charCount_10398 := convert_t_rational_0_by_1_to_t_uint256(expr_10399)
                /// @src 87:496:691  "for (uint256 j = 0; j < 32; j++) {..."
                for {
                    /// @src 87:513:514  "0"
                    let expr_10403 := 0x00
                    /// @src 87:501:514  "uint256 j = 0"
                    let var_j_10402 := convert_t_rational_0_by_1_to_t_uint256(expr_10403)
                    } 1 {
                    /// @src 87:524:527  "j++"
                    let _164 := var_j_10402
                    let _163 := increment_wrapping_t_uint256(_164)
                    var_j_10402 := _163
                    let expr_10409 := _164
                }
                {
                    /// @src 87:516:517  "j"
                    let _165 := var_j_10402
                    let expr_10405 := _165
                    /// @src 87:520:522  "32"
                    let expr_10406 := 0x20
                    /// @src 87:516:522  "j < 32"
                    let expr_10407 := lt(cleanup_t_uint256(expr_10405), convert_t_rational_32_by_1_to_t_uint256(expr_10406))
                    if iszero(expr_10407) { break }
                    /// @src 87:557:558  "x"
                    let _166 := var_x_10385
                    let expr_10413 := _166
                    /// @src 87:559:560  "j"
                    let _167 := var_j_10402
                    let expr_10414 := _167
                    /// @src 87:557:561  "x[j]"
                    let _168 := expr_10414

                    if iszero(lt(_168, 32)) { panic_error_0x32() }
                    let expr_10415 := shift_left_248(byte(_168, expr_10413))
                    /// @src 87:543:561  "bytes1 char = x[j]"
                    let var_char_10412 := expr_10415
                    /// @src 87:579:583  "char"
                    let _169 := var_char_10412
                    let expr_10417 := _169
                    /// @src 87:587:588  "0"
                    let expr_10418 := 0x00
                    /// @src 87:579:588  "char != 0"
                    let expr_10419 := iszero(eq(cleanup_t_bytes1(expr_10417), convert_t_rational_0_by_1_to_t_bytes1(expr_10418)))
                    /// @src 87:575:681  "if (char != 0) {..."
                    if expr_10419 {
                        /// @src 87:633:637  "char"
                        let _170 := var_char_10412
                        let expr_10423 := _170
                        /// @src 87:608:619  "bytesString"
                        let _171_mpos := var_bytesString_10391_mpos
                        let expr_10420_mpos := _171_mpos
                        /// @src 87:620:629  "charCount"
                        let _172 := var_charCount_10398
                        let expr_10421 := _172
                        /// @src 87:608:637  "bytesString[charCount] = char"
                        let _173 := expr_10423
                        mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_10420_mpos, expr_10421), byte(0, _173))
                        let expr_10424 := expr_10423
                        /// @src 87:655:666  "charCount++"
                        let _175 := var_charCount_10398
                        let _174 := increment_t_uint256(_175)
                        var_charCount_10398 := _174
                        let expr_10427 := _175
                        /// @src 87:575:681  "if (char != 0) {..."
                    }
                }
                /// @src 87:744:753  "charCount"
                let _176 := var_charCount_10398
                let expr_10437 := _176
                /// @src 87:734:754  "new bytes(charCount)"
                let expr_10438_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(expr_10437)
                /// @src 87:700:754  "bytes memory bytesStringTrimmed = new bytes(charCount)"
                let var_bytesStringTrimmed_10434_mpos := expr_10438_mpos
                /// @src 87:764:867  "for (uint256 j = 0; j < charCount; j++) {..."
                for {
                    /// @src 87:781:782  "0"
                    let expr_10442 := 0x00
                    /// @src 87:769:782  "uint256 j = 0"
                    let var_j_10441 := convert_t_rational_0_by_1_to_t_uint256(expr_10442)
                    } 1 {
                    /// @src 87:799:802  "j++"
                    let _178 := var_j_10441
                    let _177 := increment_wrapping_t_uint256(_178)
                    var_j_10441 := _177
                    let expr_10448 := _178
                }
                {
                    /// @src 87:784:785  "j"
                    let _179 := var_j_10441
                    let expr_10444 := _179
                    /// @src 87:788:797  "charCount"
                    let _180 := var_charCount_10398
                    let expr_10445 := _180
                    /// @src 87:784:797  "j < charCount"
                    let expr_10446 := lt(cleanup_t_uint256(expr_10444), cleanup_t_uint256(expr_10445))
                    if iszero(expr_10446) { break }
                    /// @src 87:842:853  "bytesString"
                    let _181_mpos := var_bytesString_10391_mpos
                    let expr_10453_mpos := _181_mpos
                    /// @src 87:854:855  "j"
                    let _182 := var_j_10441
                    let expr_10454 := _182
                    /// @src 87:842:856  "bytesString[j]"
                    let _183 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_10453_mpos, expr_10454))
                    let expr_10455 := _183
                    /// @src 87:818:836  "bytesStringTrimmed"
                    let _184_mpos := var_bytesStringTrimmed_10434_mpos
                    let expr_10450_mpos := _184_mpos
                    /// @src 87:837:838  "j"
                    let _185 := var_j_10441
                    let expr_10451 := _185
                    /// @src 87:818:856  "bytesStringTrimmed[j] = bytesString[j]"
                    let _186 := expr_10455
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_10450_mpos, expr_10451), byte(0, _186))
                    let expr_10456 := expr_10455
                }
                /// @src 87:890:908  "bytesStringTrimmed"
                let _187_mpos := var_bytesStringTrimmed_10434_mpos
                let expr_10462_mpos := _187_mpos
                /// @src 87:883:909  "string(bytesStringTrimmed)"
                let expr_10463_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_10462_mpos)
                /// @src 87:876:909  "return string(bytesStringTrimmed)"
                var__10388_mpos := expr_10463_mpos
                leave

            }
            /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            function panic_error_0x12() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x12)
                revert(0, 0x24)
            }

            function mod_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }
                r := mod(x, y)
            }

            function cleanup_t_rational_40_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_40_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_40_by_1(value)))
            }

            function store_literal_in_memory_eab9febfbdce9e67c4279e4c2a77a43766d401ab3f3bd92cdff53b9ffd3f8f3f(memPtr) {

                mstore(add(memPtr, 0), "AddressStringUtil: INVALID_LEN")

            }

            function abi_encode_t_stringliteral_eab9febfbdce9e67c4279e4c2a77a43766d401ab3f3bd92cdff53b9ffd3f8f3f_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 30)
                store_literal_in_memory_eab9febfbdce9e67c4279e4c2a77a43766d401ab3f3bd92cdff53b9ffd3f8f3f(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_eab9febfbdce9e67c4279e4c2a77a43766d401ab3f3bd92cdff53b9ffd3f8f3f__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_eab9febfbdce9e67c4279e4c2a77a43766d401ab3f3bd92cdff53b9ffd3f8f3f_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_eab9febfbdce9e67c4279e4c2a77a43766d401ab3f3bd92cdff53b9ffd3f8f3f(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_eab9febfbdce9e67c4279e4c2a77a43766d401ab3f3bd92cdff53b9ffd3f8f3f__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function convert_t_address_to_t_uint160(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_uint160_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint160(value)))
            }

            function checked_div_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }

                r := div(x, y)
            }

            function cleanup_t_rational_19_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_19_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_19_by_1(value)))
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            function cleanup_t_rational_8_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_8_by_1(value)))
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

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function shift_right_t_uint256_t_uint256(value, bits) -> result {
                bits := cleanup_t_uint256(bits)
                result := cleanup_t_uint256(shift_right_unsigned_dynamic(bits, cleanup_t_uint256(value)))
            }

            function convert_t_uint256_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_uint256(value)))
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

            function shift_left_dynamic(bits, value) -> newValue {
                newValue :=

                shl(bits, value)

            }

            function shift_left_t_uint8_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint8(shift_left_dynamic(bits, cleanup_t_uint8(value)))
            }

            function checked_sub_t_uint8(x, y) -> diff {
                x := cleanup_t_uint8(x)
                y := cleanup_t_uint8(y)
                diff := sub(x, y)

                if gt(diff, 0xff) { panic_error_0x11() }

            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            /// @ast-id 24690
            /// @src 86:212:1013  "function toAsciiString(address addr, uint256 len) internal pure returns (string memory) {..."
            function fun_toAsciiString_24690(var_addr_24577, var_len_24579) -> var__24582_mpos {
                /// @src 86:285:298  "string memory"
                let zero_t_string_memory_ptr_188_mpos := zero_value_for_split_t_string_memory_ptr()
                var__24582_mpos := zero_t_string_memory_ptr_188_mpos

                /// @src 86:318:321  "len"
                let _189 := var_len_24579
                let expr_24585 := _189
                /// @src 86:324:325  "2"
                let expr_24586 := 0x02
                /// @src 86:318:325  "len % 2"
                let expr_24587 := mod_t_uint256(expr_24585, convert_t_rational_2_by_1_to_t_uint256(expr_24586))

                /// @src 86:329:330  "0"
                let expr_24588 := 0x00
                /// @src 86:318:330  "len % 2 == 0"
                let expr_24589 := eq(cleanup_t_uint256(expr_24587), convert_t_rational_0_by_1_to_t_uint256(expr_24588))
                /// @src 86:318:341  "len % 2 == 0 && len > 0"
                let expr_24593 := expr_24589
                if expr_24593 {
                    /// @src 86:334:337  "len"
                    let _190 := var_len_24579
                    let expr_24590 := _190
                    /// @src 86:340:341  "0"
                    let expr_24591 := 0x00
                    /// @src 86:334:341  "len > 0"
                    let expr_24592 := gt(cleanup_t_uint256(expr_24590), convert_t_rational_0_by_1_to_t_uint256(expr_24591))
                    /// @src 86:318:341  "len % 2 == 0 && len > 0"
                    expr_24593 := expr_24592
                }
                /// @src 86:318:354  "len % 2 == 0 && len > 0 && len <= 40"
                let expr_24597 := expr_24593
                if expr_24597 {
                    /// @src 86:345:348  "len"
                    let _191 := var_len_24579
                    let expr_24594 := _191
                    /// @src 86:352:354  "40"
                    let expr_24595 := 0x28
                    /// @src 86:345:354  "len <= 40"
                    let expr_24596 := iszero(gt(cleanup_t_uint256(expr_24594), convert_t_rational_40_by_1_to_t_uint256(expr_24595)))
                    /// @src 86:318:354  "len % 2 == 0 && len > 0 && len <= 40"
                    expr_24597 := expr_24596
                }
                /// @src 86:310:389  "require(len % 2 == 0 && len > 0 && len <= 40, 'AddressStringUtil: INVALID_LEN')"
                require_helper_t_stringliteral_eab9febfbdce9e67c4279e4c2a77a43766d401ab3f3bd92cdff53b9ffd3f8f3f(expr_24597)
                /// @src 86:427:430  "len"
                let _192 := var_len_24579
                let expr_24605 := _192
                /// @src 86:417:431  "new bytes(len)"
                let expr_24606_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(expr_24605)
                /// @src 86:400:431  "bytes memory s = new bytes(len)"
                let var_s_24602_mpos := expr_24606_mpos
                /// @src 86:475:479  "addr"
                let _193 := var_addr_24577
                let expr_24614 := _193
                /// @src 86:467:480  "uint160(addr)"
                let expr_24615 := convert_t_address_to_t_uint160(expr_24614)
                /// @src 86:459:481  "uint256(uint160(addr))"
                let expr_24616 := convert_t_uint160_to_t_uint256(expr_24615)
                /// @src 86:441:481  "uint256 addrNum = uint256(uint160(addr))"
                let var_addrNum_24609 := expr_24616
                /// @src 86:491:981  "for (uint256 i = 0; i < len / 2; i++) {..."
                for {
                    /// @src 86:508:509  "0"
                    let expr_24620 := 0x00
                    /// @src 86:496:509  "uint256 i = 0"
                    let var_i_24619 := convert_t_rational_0_by_1_to_t_uint256(expr_24620)
                    } 1 {
                    /// @src 86:524:527  "i++"
                    let _195 := var_i_24619
                    let _194 := increment_wrapping_t_uint256(_195)
                    var_i_24619 := _194
                    let expr_24628 := _195
                }
                {
                    /// @src 86:511:512  "i"
                    let _196 := var_i_24619
                    let expr_24622 := _196
                    /// @src 86:515:518  "len"
                    let _197 := var_len_24579
                    let expr_24623 := _197
                    /// @src 86:521:522  "2"
                    let expr_24624 := 0x02
                    /// @src 86:515:522  "len / 2"
                    let expr_24625 := checked_div_t_uint256(expr_24623, convert_t_rational_2_by_1_to_t_uint256(expr_24624))

                    /// @src 86:511:522  "i < len / 2"
                    let expr_24626 := lt(cleanup_t_uint256(expr_24622), cleanup_t_uint256(expr_24625))
                    if iszero(expr_24626) { break }
                    /// @src 86:671:678  "addrNum"
                    let _198 := var_addrNum_24609
                    let expr_24634 := _198
                    /// @src 86:683:684  "8"
                    let expr_24635 := 0x08
                    /// @src 86:688:690  "19"
                    let expr_24636 := 0x13
                    /// @src 86:693:694  "i"
                    let _199 := var_i_24619
                    let expr_24637 := _199
                    /// @src 86:688:694  "19 - i"
                    let expr_24638 := checked_sub_t_uint256(convert_t_rational_19_by_1_to_t_uint256(expr_24636), expr_24637)

                    /// @src 86:687:695  "(19 - i)"
                    let expr_24639 := expr_24638
                    /// @src 86:683:695  "8 * (19 - i)"
                    let expr_24640 := checked_mul_t_uint256(convert_t_rational_8_by_1_to_t_uint256(expr_24635), expr_24639)

                    /// @src 86:682:696  "(8 * (19 - i))"
                    let expr_24641 := expr_24640
                    /// @src 86:671:696  "addrNum >> (8 * (19 - i))"
                    let expr_24642 :=
                    shift_right_t_uint256_t_uint256(expr_24634, expr_24641)

                    /// @src 86:665:697  "uint8(addrNum >> (8 * (19 - i)))"
                    let expr_24643 := convert_t_uint256_to_t_uint8(expr_24642)
                    /// @src 86:655:697  "uint8 b = uint8(addrNum >> (8 * (19 - i)))"
                    let var_b_24631 := expr_24643
                    /// @src 86:788:789  "b"
                    let _200 := var_b_24631
                    let expr_24647 := _200
                    /// @src 86:793:794  "4"
                    let expr_24648 := 0x04
                    /// @src 86:788:794  "b >> 4"
                    let _201 := convert_t_rational_4_by_1_to_t_uint8(expr_24648)
                    let expr_24649 :=
                    shift_right_t_uint8_t_uint8(expr_24647, _201)

                    /// @src 86:777:794  "uint8 hi = b >> 4"
                    let var_hi_24646 := expr_24649
                    /// @src 86:887:888  "b"
                    let _202 := var_b_24631
                    let expr_24653 := _202
                    /// @src 86:892:894  "hi"
                    let _203 := var_hi_24646
                    let expr_24654 := _203
                    /// @src 86:898:899  "4"
                    let expr_24655 := 0x04
                    /// @src 86:892:899  "hi << 4"
                    let _204 := convert_t_rational_4_by_1_to_t_uint8(expr_24655)
                    let expr_24656 :=
                    shift_left_t_uint8_t_uint8(expr_24654, _204)

                    /// @src 86:891:900  "(hi << 4)"
                    let expr_24657 := expr_24656
                    /// @src 86:887:900  "b - (hi << 4)"
                    let expr_24658 := checked_sub_t_uint8(expr_24653, expr_24657)

                    /// @src 86:876:900  "uint8 lo = b - (hi << 4)"
                    let var_lo_24652 := expr_24658
                    /// @src 86:930:932  "hi"
                    let _205 := var_hi_24646
                    let expr_24666 := _205
                    /// @src 86:925:933  "char(hi)"
                    let expr_24667 := fun_char_24718(expr_24666)
                    /// @src 86:914:915  "s"
                    let _206_mpos := var_s_24602_mpos
                    let expr_24660_mpos := _206_mpos
                    /// @src 86:916:917  "2"
                    let expr_24661 := 0x02
                    /// @src 86:920:921  "i"
                    let _207 := var_i_24619
                    let expr_24662 := _207
                    /// @src 86:916:921  "2 * i"
                    let expr_24663 := checked_mul_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_24661), expr_24662)

                    /// @src 86:914:933  "s[2 * i] = char(hi)"
                    let _208 := expr_24667
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_24660_mpos, expr_24663), byte(0, _208))
                    let expr_24668 := expr_24667
                    /// @src 86:967:969  "lo"
                    let _209 := var_lo_24652
                    let expr_24678 := _209
                    /// @src 86:962:970  "char(lo)"
                    let expr_24679 := fun_char_24718(expr_24678)
                    /// @src 86:947:948  "s"
                    let _210_mpos := var_s_24602_mpos
                    let expr_24670_mpos := _210_mpos
                    /// @src 86:949:950  "2"
                    let expr_24671 := 0x02
                    /// @src 86:953:954  "i"
                    let _211 := var_i_24619
                    let expr_24672 := _211
                    /// @src 86:949:954  "2 * i"
                    let expr_24673 := checked_mul_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_24671), expr_24672)

                    /// @src 86:957:958  "1"
                    let expr_24674 := 0x01
                    /// @src 86:949:958  "2 * i + 1"
                    let expr_24675 := checked_add_t_uint256(expr_24673, convert_t_rational_1_by_1_to_t_uint256(expr_24674))

                    /// @src 86:947:970  "s[2 * i + 1] = char(lo)"
                    let _212 := expr_24679
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_24670_mpos, expr_24675), byte(0, _212))
                    let expr_24680 := expr_24679
                }
                /// @src 86:1004:1005  "s"
                let _213_mpos := var_s_24602_mpos
                let expr_24686_mpos := _213_mpos
                /// @src 86:997:1006  "string(s)"
                let expr_24687_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_24686_mpos)
                /// @src 86:990:1006  "return string(s)"
                var__24582_mpos := expr_24687_mpos
                leave

            }
            /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

            function zero_value_for_split_t_bytes1() -> ret {
                ret := 0
            }

            function cleanup_t_rational_10_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_10_by_1(value)))
            }

            function cleanup_t_rational_55_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_55_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_55_by_1(value)))
            }

            function checked_add_t_uint8(x, y) -> sum {
                x := cleanup_t_uint8(x)
                y := cleanup_t_uint8(y)
                sum := add(x, y)

                if gt(sum, 0xff) { panic_error_0x11() }

            }

            function convert_t_uint8_to_t_bytes1(value) -> converted {
                converted := cleanup_t_bytes1(shift_left_248(cleanup_t_uint8(value)))
            }

            function cleanup_t_rational_48_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_48_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_48_by_1(value)))
            }

            /// @ast-id 24718
            /// @src 86:1215:1400  "function char(uint8 b) private pure returns (bytes1 c) {..."
            function fun_char_24718(var_b_24692) -> var_c_24695 {
                /// @src 86:1260:1268  "bytes1 c"
                let zero_t_bytes1_214 := zero_value_for_split_t_bytes1()
                var_c_24695 := zero_t_bytes1_214

                /// @src 86:1284:1285  "b"
                let _215 := var_b_24692
                let expr_24697 := _215
                /// @src 86:1288:1290  "10"
                let expr_24698 := 0x0a
                /// @src 86:1284:1290  "b < 10"
                let expr_24699 := lt(cleanup_t_uint8(expr_24697), convert_t_rational_10_by_1_to_t_uint8(expr_24698))
                /// @src 86:1280:1394  "if (b < 10) {..."
                switch expr_24699
                case 0 {
                    /// @src 86:1374:1375  "b"
                    let _216 := var_b_24692
                    let expr_24710 := _216
                    /// @src 86:1378:1382  "0x37"
                    let expr_24711 := 0x37
                    /// @src 86:1374:1382  "b + 0x37"
                    let expr_24712 := checked_add_t_uint8(expr_24710, convert_t_rational_55_by_1_to_t_uint8(expr_24711))

                    /// @src 86:1367:1383  "bytes1(b + 0x37)"
                    let expr_24713 := convert_t_uint8_to_t_bytes1(expr_24712)
                    /// @src 86:1360:1383  "return bytes1(b + 0x37)"
                    var_c_24695 := expr_24713
                    leave
                    /// @src 86:1280:1394  "if (b < 10) {..."
                }
                default {
                    /// @src 86:1320:1321  "b"
                    let _217 := var_b_24692
                    let expr_24702 := _217
                    /// @src 86:1324:1328  "0x30"
                    let expr_24703 := 0x30
                    /// @src 86:1320:1328  "b + 0x30"
                    let expr_24704 := checked_add_t_uint8(expr_24702, convert_t_rational_48_by_1_to_t_uint8(expr_24703))

                    /// @src 86:1313:1329  "bytes1(b + 0x30)"
                    let expr_24705 := convert_t_uint8_to_t_bytes1(expr_24704)
                    /// @src 86:1306:1329  "return bytes1(b + 0x30)"
                    var_c_24695 := expr_24705
                    leave
                    /// @src 86:1280:1394  "if (b < 10) {..."
                }

            }
            /// @src 122:698:5170  "contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {..."

        }

        data ".metadata" hex"a2646970667358221220387c245c5304519dcbec9175ea07a029aa23755f637bf734b65c9a7b2e11cc8364736f6c634300081e0033"
    }

}

