
/// @use-src 112:"uniswap/v3-core-1.0.0/contracts/libraries/Position.sol"
object "Position_20914" {
    code {
        /// @src 112:387:3611  "library Position {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Position_20914_deployed"), datasize("Position_20914_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("Position_20914_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 112:387:3611  "library Position {..."
        function constructor_Position_20914() {

            /// @src 112:387:3611  "library Position {..."

        }
        /// @src 112:387:3611  "library Position {..."

    }
    /// @use-src 112:"uniswap/v3-core-1.0.0/contracts/libraries/Position.sol"
    object "Position_20914_deployed" {
        code {
            /// @src 112:387:3611  "library Position {..."
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

        data ".metadata" hex"a2646970667358221220f7f7d90eddef10a6e20de9669b6b4f3c9618c6428fe60e173d3f84e109c7536d64736f6c634300081e0033"
    }

}

