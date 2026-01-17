
/// @use-src 120:"uniswap/v3-core-1.0.0/contracts/libraries/UnsafeMath.sol"
object "UnsafeMath_34458" {
    code {
        /// @src 120:281:696  "library UnsafeMath {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("UnsafeMath_34458_deployed"), datasize("UnsafeMath_34458_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("UnsafeMath_34458_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 120:281:696  "library UnsafeMath {..."
        function constructor_UnsafeMath_34458() {

            /// @src 120:281:696  "library UnsafeMath {..."

        }
        /// @src 120:281:696  "library UnsafeMath {..."

    }
    /// @use-src 120:"uniswap/v3-core-1.0.0/contracts/libraries/UnsafeMath.sol"
    object "UnsafeMath_34458_deployed" {
        code {
            /// @src 120:281:696  "library UnsafeMath {..."
            mstore(64, memoryguard(128))

            let called_via_delegatecall := iszero(eq(loadimmutable("library_deploy_address"), address()))

            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

        }

        data ".metadata" hex"a2646970667358221220583d9e8f824f504c6f99f869ae7dc1cc2337519936a81ab0bded45418a5108e664736f6c634300081e0033"
    }

}

