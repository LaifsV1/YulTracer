
/// @use-src 70:"src/libraries/VaultLib.sol"
object "VaultLib_17133" {
    code {
        /// @src 70:221:2079  "library VaultLib {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("VaultLib_17133_deployed"), datasize("VaultLib_17133_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("VaultLib_17133_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 70:221:2079  "library VaultLib {..."
        function constructor_VaultLib_17133() {

            /// @src 70:221:2079  "library VaultLib {..."

        }
        /// @src 70:221:2079  "library VaultLib {..."

    }
    /// @use-src 70:"src/libraries/VaultLib.sol"
    object "VaultLib_17133_deployed" {
        code {
            /// @src 70:221:2079  "library VaultLib {..."
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

        data ".metadata" hex"a26469706673582212207744e9716dd9f4eecacba9a59c5cc63eb54252d650ef8592f22e319e7ee05e1564736f6c634300081e0033"
    }

}

