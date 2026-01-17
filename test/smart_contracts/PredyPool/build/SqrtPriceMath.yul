
/// @use-src 114:"uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol"
object "SqrtPriceMath_21500" {
    code {
        /// @src 114:406:10810  "library SqrtPriceMath {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("SqrtPriceMath_21500_deployed"), datasize("SqrtPriceMath_21500_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("SqrtPriceMath_21500_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 114:406:10810  "library SqrtPriceMath {..."
        function constructor_SqrtPriceMath_21500() {

            /// @src 114:406:10810  "library SqrtPriceMath {..."

        }
        /// @src 114:406:10810  "library SqrtPriceMath {..."

    }
    /// @use-src 114:"uniswap/v3-core-1.0.0/contracts/libraries/SqrtPriceMath.sol"
    object "SqrtPriceMath_21500_deployed" {
        code {
            /// @src 114:406:10810  "library SqrtPriceMath {..."
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

        data ".metadata" hex"a2646970667358221220383187c389132b295e2245a03d5e5f8b6a50d1ed7464bbc56679e72e226b6e0464736f6c634300081e0033"
    }

}

