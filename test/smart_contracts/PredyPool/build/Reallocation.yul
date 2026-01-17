
/// @use-src 65:"src/libraries/Reallocation.sol"
object "Reallocation_30905" {
    code {
        /// @src 65:401:6965  "library Reallocation {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Reallocation_30905_deployed"), datasize("Reallocation_30905_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("Reallocation_30905_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 65:401:6965  "library Reallocation {..."
        function constructor_Reallocation_30905() {

            /// @src 65:401:6965  "library Reallocation {..."

        }
        /// @src 65:401:6965  "library Reallocation {..."

    }
    /// @use-src 65:"src/libraries/Reallocation.sol"
    object "Reallocation_30905_deployed" {
        code {
            /// @src 65:401:6965  "library Reallocation {..."
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

        data ".metadata" hex"a26469706673582212201f4f20394d64fe9bb92aec1dc937504aa03e8f423453daa469d2918f9be1a21c64736f6c634300081e0033"
    }

}

