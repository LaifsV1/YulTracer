
/// @use-src 147:"uniswap/v3-periphery-1.3.0/contracts/libraries/LiquidityAmounts.sol"
object "LiquidityAmounts_24430" {
    code {
        /// @src 147:364:6851  "library LiquidityAmounts {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("LiquidityAmounts_24430_deployed"), datasize("LiquidityAmounts_24430_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("LiquidityAmounts_24430_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 147:364:6851  "library LiquidityAmounts {..."
        function constructor_LiquidityAmounts_24430() {

            /// @src 147:364:6851  "library LiquidityAmounts {..."

        }
        /// @src 147:364:6851  "library LiquidityAmounts {..."

    }
    /// @use-src 147:"uniswap/v3-periphery-1.3.0/contracts/libraries/LiquidityAmounts.sol"
    object "LiquidityAmounts_24430_deployed" {
        code {
            /// @src 147:364:6851  "library LiquidityAmounts {..."
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

        data ".metadata" hex"a264697066735822122094f4517f6b43d88329e066934b0ea22ac5256822239bd33acdc176499eb66bdc64736f6c634300081e0033"
    }

}

