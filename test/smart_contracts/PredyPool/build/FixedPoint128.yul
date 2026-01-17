
/// @use-src 106:"uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint128.sol"
object "FixedPoint128_9257" {
    code {
        /// @src 106:248:347  "library FixedPoint128 {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("FixedPoint128_9257_deployed"), datasize("FixedPoint128_9257_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("FixedPoint128_9257_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 106:248:347  "library FixedPoint128 {..."
        function constructor_FixedPoint128_9257() {

            /// @src 106:248:347  "library FixedPoint128 {..."

        }
        /// @src 106:248:347  "library FixedPoint128 {..."

    }
    /// @use-src 106:"uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint128.sol"
    object "FixedPoint128_9257_deployed" {
        code {
            /// @src 106:248:347  "library FixedPoint128 {..."
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

        data ".metadata" hex"a2646970667358221220f78f37b6561981d254e5073b3fa7e3f1eb3cb0dca87846ad30a7677ed8eb9f4664736f6c634300081e0033"
    }

}

