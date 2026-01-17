
/// @use-src 151:"uniswap/v3-periphery-1.3.0/contracts/libraries/PositionKey.sol"
object "PositionKey_10380" {
    code {
        /// @src 151:108:409  "library PositionKey {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("PositionKey_10380_deployed"), datasize("PositionKey_10380_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("PositionKey_10380_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 151:108:409  "library PositionKey {..."
        function constructor_PositionKey_10380() {

            /// @src 151:108:409  "library PositionKey {..."

        }
        /// @src 151:108:409  "library PositionKey {..."

    }
    /// @use-src 151:"uniswap/v3-periphery-1.3.0/contracts/libraries/PositionKey.sol"
    object "PositionKey_10380_deployed" {
        code {
            /// @src 151:108:409  "library PositionKey {..."
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

        data ".metadata" hex"a2646970667358221220c005452abdfa7289ca05610737943234c4403c231e5c2f0130e80827a370b77b64736f6c634300081e0033"
    }

}

