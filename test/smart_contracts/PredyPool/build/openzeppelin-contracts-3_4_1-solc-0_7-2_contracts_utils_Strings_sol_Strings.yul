
/// @use-src 45:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/Strings.sol"
object "Strings_35715" {
    code {
        /// @src 45:130:966  "library Strings {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Strings_35715_deployed"), datasize("Strings_35715_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("Strings_35715_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 45:130:966  "library Strings {..."
        function constructor_Strings_35715() {

            /// @src 45:130:966  "library Strings {..."

        }
        /// @src 45:130:966  "library Strings {..."

    }
    /// @use-src 45:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/Strings.sol"
    object "Strings_35715_deployed" {
        code {
            /// @src 45:130:966  "library Strings {..."
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

        data ".metadata" hex"a264697066735822122017dedb2e59bf45733678cca9deb8197818334e8f13ea2cd9e4699e96b494c6f564736f6c634300081e0033"
    }

}

