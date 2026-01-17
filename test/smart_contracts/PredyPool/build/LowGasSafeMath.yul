
/// @use-src 110:"uniswap/v3-core-1.0.0/contracts/libraries/LowGasSafeMath.sol"
object "LowGasSafeMath_19967" {
    code {
        /// @src 110:286:1732  "library LowGasSafeMath {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("LowGasSafeMath_19967_deployed"), datasize("LowGasSafeMath_19967_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("LowGasSafeMath_19967_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 110:286:1732  "library LowGasSafeMath {..."
        function constructor_LowGasSafeMath_19967() {

            /// @src 110:286:1732  "library LowGasSafeMath {..."

        }
        /// @src 110:286:1732  "library LowGasSafeMath {..."

    }
    /// @use-src 110:"uniswap/v3-core-1.0.0/contracts/libraries/LowGasSafeMath.sol"
    object "LowGasSafeMath_19967_deployed" {
        code {
            /// @src 110:286:1732  "library LowGasSafeMath {..."
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

        data ".metadata" hex"a2646970667358221220d4a862bf7085772982a8b245c4f4143e2cecc8a624ec95c293d90a01d34d118d64736f6c634300081e0033"
    }

}

