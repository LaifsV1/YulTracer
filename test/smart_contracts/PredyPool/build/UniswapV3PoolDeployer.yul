
/// @use-src 91:"uniswap/v3-core-1.0.0/contracts/UniswapV3PoolDeployer.sol", 95:"uniswap/v3-core-1.0.0/contracts/interfaces/IUniswapV3PoolDeployer.sol"
object "UniswapV3PoolDeployer_8747" {
    code {
        /// @src 91:181:1444  "contract UniswapV3PoolDeployer is IUniswapV3PoolDeployer {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_UniswapV3PoolDeployer_8747()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("UniswapV3PoolDeployer_8747_deployed"), datasize("UniswapV3PoolDeployer_8747_deployed"))

        return(_1, datasize("UniswapV3PoolDeployer_8747_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 91:181:1444  "contract UniswapV3PoolDeployer is IUniswapV3PoolDeployer {..."
        function constructor_UniswapV3PoolDeployer_8747() {

            /// @src 91:181:1444  "contract UniswapV3PoolDeployer is IUniswapV3PoolDeployer {..."
            constructor_IUniswapV3PoolDeployer_19743()

        }
        /// @src 91:181:1444  "contract UniswapV3PoolDeployer is IUniswapV3PoolDeployer {..."

        /// @src 95:511:1336  "interface IUniswapV3PoolDeployer {..."
        function constructor_IUniswapV3PoolDeployer_19743() {

            /// @src 95:511:1336  "interface IUniswapV3PoolDeployer {..."

        }
        /// @src 91:181:1444  "contract UniswapV3PoolDeployer is IUniswapV3PoolDeployer {..."

    }
    /// @use-src 91:"uniswap/v3-core-1.0.0/contracts/UniswapV3PoolDeployer.sol"
    object "UniswapV3PoolDeployer_8747_deployed" {
        code {
            /// @src 91:181:1444  "contract UniswapV3PoolDeployer is IUniswapV3PoolDeployer {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x89035730
                {
                    // parameters()

                    external_fun_parameters_8697()
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

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function cleanup_from_storage_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_0_t_address(slot_value) -> value {
                value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_address(slot) -> value {
                value := extract_from_storage_value_offset_0_t_address(sload(slot))

            }

            function shift_right_160_unsigned(value) -> newValue {
                newValue :=

                shr(160, value)

            }

            function cleanup_from_storage_t_uint24(value) -> cleaned {
                cleaned := and(value, 0xffffff)
            }

            function extract_from_storage_value_offset_20_t_uint24(slot_value) -> value {
                value := cleanup_from_storage_t_uint24(shift_right_160_unsigned(slot_value))
            }

            function read_from_storage_split_offset_20_t_uint24(slot) -> value {
                value := extract_from_storage_value_offset_20_t_uint24(sload(slot))

            }

            function shift_right_184_unsigned(value) -> newValue {
                newValue :=

                shr(184, value)

            }

            function cleanup_from_storage_t_int24(value) -> cleaned {
                cleaned := signextend(2, value)
            }

            function extract_from_storage_value_offset_23_t_int24(slot_value) -> value {
                value := cleanup_from_storage_t_int24(shift_right_184_unsigned(slot_value))
            }

            function read_from_storage_split_offset_23_t_int24(slot) -> value {
                value := extract_from_storage_value_offset_23_t_int24(sload(slot))

            }

            /// @ast-id 8697
            /// @src 91:438:475  "Parameters public override parameters"
            function getter_fun_parameters_8697() -> ret_0, ret_1, ret_2, ret_3, ret_4 {

                let slot := 0
                let offset := 0

                ret_0 := read_from_storage_split_offset_0_t_address(add(slot, 0))

                ret_1 := read_from_storage_split_offset_0_t_address(add(slot, 1))

                ret_2 := read_from_storage_split_offset_0_t_address(add(slot, 2))

                ret_3 := read_from_storage_split_offset_20_t_uint24(add(slot, 2))

                ret_4 := read_from_storage_split_offset_23_t_int24(add(slot, 2))

            }
            /// @src 91:181:1444  "contract UniswapV3PoolDeployer is IUniswapV3PoolDeployer {..."

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function cleanup_t_uint24(value) -> cleaned {
                cleaned := and(value, 0xffffff)
            }

            function abi_encode_t_uint24_to_t_uint24_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint24(value))
            }

            function cleanup_t_int24(value) -> cleaned {
                cleaned := signextend(2, value)
            }

            function abi_encode_t_int24_to_t_int24_fromStack(value, pos) {
                mstore(pos, cleanup_t_int24(value))
            }

            function abi_encode_tuple_t_address_t_address_t_address_t_uint24_t_int24__to_t_address_t_address_t_address_t_uint24_t_int24__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_address_to_t_address_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint24_to_t_uint24_fromStack(value3,  add(headStart, 96))

                abi_encode_t_int24_to_t_int24_fromStack(value4,  add(headStart, 128))

            }

            function external_fun_parameters_8697() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0, ret_1, ret_2, ret_3, ret_4 :=  getter_fun_parameters_8697()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address_t_address_t_address_t_uint24_t_int24__to_t_address_t_address_t_address_t_uint24_t_int24__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

        }

        data ".metadata" hex"a264697066735822122088d4350e0ac5a99ad05b690b49011ac517446511e2cdd64890bea94189d67db064736f6c634300081e0033"
    }

}

