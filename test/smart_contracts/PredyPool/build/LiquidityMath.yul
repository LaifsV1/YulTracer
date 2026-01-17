
/// @use-src 109:"uniswap/v3-core-1.0.0/contracts/libraries/LiquidityMath.sol"
object "LiquidityMath_19837" {
    code {
        /// @src 109:146:658  "library LiquidityMath {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("LiquidityMath_19837_deployed"), datasize("LiquidityMath_19837_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("LiquidityMath_19837_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 109:146:658  "library LiquidityMath {..."
        function constructor_LiquidityMath_19837() {

            /// @src 109:146:658  "library LiquidityMath {..."

        }
        /// @src 109:146:658  "library LiquidityMath {..."

    }
    /// @use-src 109:"uniswap/v3-core-1.0.0/contracts/libraries/LiquidityMath.sol"
    object "LiquidityMath_19837_deployed" {
        code {
            /// @src 109:146:658  "library LiquidityMath {..."
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

        data ".metadata" hex"a264697066735822122007c9fe962f43131bd07b65a495203336a4abeb161f321673fcc10e8defcfcf5a64736f6c634300081e0033"
    }

}

