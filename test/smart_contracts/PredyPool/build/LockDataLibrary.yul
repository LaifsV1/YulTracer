
/// @use-src 82:"src/types/LockData.sol"
object "LockDataLibrary_34432" {
    code {
        /// @src 82:105:267  "library LockDataLibrary {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("LockDataLibrary_34432_deployed"), datasize("LockDataLibrary_34432_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("LockDataLibrary_34432_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 82:105:267  "library LockDataLibrary {..."
        function constructor_LockDataLibrary_34432() {

            /// @src 82:105:267  "library LockDataLibrary {..."

        }
        /// @src 82:105:267  "library LockDataLibrary {..."

    }
    /// @use-src 82:"src/types/LockData.sol"
    object "LockDataLibrary_34432_deployed" {
        code {
            /// @src 82:105:267  "library LockDataLibrary {..."
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

        data ".metadata" hex"a2646970667358221220ecf59cd6c0357b1c627618ca29d4fff9a9a95ff7e74dc7ded766a9ad2507141b64736f6c634300081e0033"
    }

}

