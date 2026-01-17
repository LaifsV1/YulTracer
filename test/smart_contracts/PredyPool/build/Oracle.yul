
/// @use-src 111:"uniswap/v3-core-1.0.0/contracts/libraries/Oracle.sol"
object "Oracle_20737" {
    code {
        /// @src 111:713:16489  "library Oracle {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Oracle_20737_deployed"), datasize("Oracle_20737_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("Oracle_20737_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 111:713:16489  "library Oracle {..."
        function constructor_Oracle_20737() {

            /// @src 111:713:16489  "library Oracle {..."

        }
        /// @src 111:713:16489  "library Oracle {..."

    }
    /// @use-src 111:"uniswap/v3-core-1.0.0/contracts/libraries/Oracle.sol"
    object "Oracle_20737_deployed" {
        code {
            /// @src 111:713:16489  "library Oracle {..."
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

        data ".metadata" hex"a26469706673582212201e6ca5c562f2fb365ddea4f42995c5d784bf0289d66a983516e742401b238de364736f6c634300081e0033"
    }

}

