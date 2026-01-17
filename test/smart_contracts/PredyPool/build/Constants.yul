
/// @use-src 57:"src/libraries/Constants.sol"
object "Constants_30318" {
    code {
        /// @src 57:63:1161  "library Constants {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Constants_30318_deployed"), datasize("Constants_30318_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("Constants_30318_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 57:63:1161  "library Constants {..."
        function constructor_Constants_30318() {

            /// @src 57:63:1161  "library Constants {..."

        }
        /// @src 57:63:1161  "library Constants {..."

    }
    /// @use-src 57:"src/libraries/Constants.sol"
    object "Constants_30318_deployed" {
        code {
            /// @src 57:63:1161  "library Constants {..."
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

        data ".metadata" hex"a264697066735822122058d46a4a58b214eca2bf3d87cb6046aac38d7ddf55e89d9171092480d668a18e64736f6c634300081e0033"
    }

}

