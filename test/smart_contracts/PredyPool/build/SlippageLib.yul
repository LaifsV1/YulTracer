
/// @use-src 67:"src/libraries/SlippageLib.sol"
object "SlippageLib_33921" {
    code {
        /// @src 67:240:1681  "library SlippageLib {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("SlippageLib_33921_deployed"), datasize("SlippageLib_33921_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("SlippageLib_33921_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 67:240:1681  "library SlippageLib {..."
        function constructor_SlippageLib_33921() {

            /// @src 67:240:1681  "library SlippageLib {..."

        }
        /// @src 67:240:1681  "library SlippageLib {..."

    }
    /// @use-src 67:"src/libraries/SlippageLib.sol"
    object "SlippageLib_33921_deployed" {
        code {
            /// @src 67:240:1681  "library SlippageLib {..."
            mstore(64, memoryguard(128))

            let called_via_delegatecall := iszero(eq(loadimmutable("library_deploy_address"), address()))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x614626d4
                {
                    // MAX_ACCEPTABLE_SQRT_PRICE_RANGE()

                    external_fun_MAX_ACCEPTABLE_SQRT_PRICE_RANGE_33815()
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

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function cleanup_t_rational_100747209_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_100747209_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_100747209_by_1(value)))
            }

            /// @src 67:320:387  "uint256 public constant MAX_ACCEPTABLE_SQRT_PRICE_RANGE = 100747209"
            function constant_MAX_ACCEPTABLE_SQRT_PRICE_RANGE_33815() -> ret {
                /// @src 67:378:387  "100747209"
                let expr_33814 := 0x060147c9
                let _1 := convert_t_rational_100747209_by_1_to_t_uint256(expr_33814)

                ret := _1
            }

            /// @ast-id 33815
            /// @src 67:320:387  "uint256 public constant MAX_ACCEPTABLE_SQRT_PRICE_RANGE = 100747209"
            function getter_fun_MAX_ACCEPTABLE_SQRT_PRICE_RANGE_33815() -> ret_0 {
                ret_0 := constant_MAX_ACCEPTABLE_SQRT_PRICE_RANGE_33815()
            }
            /// @src 67:240:1681  "library SlippageLib {..."

            function abi_encode_t_uint256_to_t_uint256_fromStack_library(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

            }

            function external_fun_MAX_ACCEPTABLE_SQRT_PRICE_RANGE_33815() {

                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_MAX_ACCEPTABLE_SQRT_PRICE_RANGE_33815()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

        }

        data ".metadata" hex"a2646970667358221220781345e190269ad0d305026dd44d8df6d77762e84cb3712814f2b69db0b6c92c64736f6c634300081e0033"
    }

}

