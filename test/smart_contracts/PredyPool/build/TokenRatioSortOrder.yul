
/// @use-src 152:"uniswap/v3-periphery-1.3.0/contracts/libraries/TokenRatioSortOrder.sol"
object "TokenRatioSortOrder_12509" {
    code {
        /// @src 152:94:377  "library TokenRatioSortOrder {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("TokenRatioSortOrder_12509_deployed"), datasize("TokenRatioSortOrder_12509_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("TokenRatioSortOrder_12509_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 152:94:377  "library TokenRatioSortOrder {..."
        function constructor_TokenRatioSortOrder_12509() {

            /// @src 152:94:377  "library TokenRatioSortOrder {..."

        }
        /// @src 152:94:377  "library TokenRatioSortOrder {..."

    }
    /// @use-src 152:"uniswap/v3-periphery-1.3.0/contracts/libraries/TokenRatioSortOrder.sol"
    object "TokenRatioSortOrder_12509_deployed" {
        code {
            /// @src 152:94:377  "library TokenRatioSortOrder {..."
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

        data ".metadata" hex"a2646970667358221220668616b8090bce5da54c3fafc1acbea2cfbf6f9dc048a71e4c51f77caa476e6d64736f6c634300081e0033"
    }

}

