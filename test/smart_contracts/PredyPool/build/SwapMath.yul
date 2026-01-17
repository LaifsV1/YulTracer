
/// @use-src 115:"uniswap/v3-core-1.0.0/contracts/libraries/SwapMath.sol"
object "SwapMath_21761" {
    code {
        /// @src 115:329:4669  "library SwapMath {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("SwapMath_21761_deployed"), datasize("SwapMath_21761_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("SwapMath_21761_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 115:329:4669  "library SwapMath {..."
        function constructor_SwapMath_21761() {

            /// @src 115:329:4669  "library SwapMath {..."

        }
        /// @src 115:329:4669  "library SwapMath {..."

    }
    /// @use-src 115:"uniswap/v3-core-1.0.0/contracts/libraries/SwapMath.sol"
    object "SwapMath_21761_deployed" {
        code {
            /// @src 115:329:4669  "library SwapMath {..."
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

        data ".metadata" hex"a2646970667358221220ed8f3114addfa4bebb6c416c1bb602e9709249c099353eb39799c899392e6b6f64736f6c634300081e0033"
    }

}

