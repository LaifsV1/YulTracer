
/// @use-src 77:"src/libraries/math/Bps.sol"
object "Bps_37160" {
    code {
        /// @src 77:63:360  "library Bps {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Bps_37160_deployed"), datasize("Bps_37160_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("Bps_37160_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 77:63:360  "library Bps {..."
        function constructor_Bps_37160() {

            /// @src 77:63:360  "library Bps {..."

        }
        /// @src 77:63:360  "library Bps {..."

    }
    /// @use-src 77:"src/libraries/math/Bps.sol"
    object "Bps_37160_deployed" {
        code {
            /// @src 77:63:360  "library Bps {..."
            mstore(64, memoryguard(128))

            let called_via_delegatecall := iszero(eq(loadimmutable("library_deploy_address"), address()))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0xc2ee3a08
                {
                    // ONE()

                    external_fun_ONE_37127()
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

            function cleanup_t_rational_1000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint32(value) -> cleaned {
                cleaned := and(value, 0xffffffff)
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_1000000_by_1_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(identity(cleanup_t_rational_1000000_by_1(value)))
            }

            /// @src 77:81:113  "uint32 public constant ONE = 1e6"
            function constant_ONE_37127() -> ret {
                /// @src 77:110:113  "1e6"
                let expr_37126 := 0x0f4240
                let _1 := convert_t_rational_1000000_by_1_to_t_uint32(expr_37126)

                ret := _1
            }

            /// @ast-id 37127
            /// @src 77:81:113  "uint32 public constant ONE = 1e6"
            function getter_fun_ONE_37127() -> ret_0 {
                ret_0 := constant_ONE_37127()
            }
            /// @src 77:63:360  "library Bps {..."

            function abi_encode_t_uint32_to_t_uint32_fromStack_library(value, pos) {
                mstore(pos, cleanup_t_uint32(value))
            }

            function abi_encode_tuple_t_uint32__to_t_uint32__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint32_to_t_uint32_fromStack_library(value0,  add(headStart, 0))

            }

            function external_fun_ONE_37127() {

                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_ONE_37127()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint32__to_t_uint32__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

        }

        data ".metadata" hex"a2646970667358221220df1ef859d5fb310f0c0e7c119aaaf29f7e6b7a79d5f21769077a7626bc64dfa364736f6c634300081e0033"
    }

}

