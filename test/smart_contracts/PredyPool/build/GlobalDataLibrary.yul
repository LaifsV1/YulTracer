
/// @use-src 81:"src/types/GlobalData.sol"
object "GlobalDataLibrary_19653" {
    code {
        /// @src 81:433:4063  "library GlobalDataLibrary {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("GlobalDataLibrary_19653_deployed"), datasize("GlobalDataLibrary_19653_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("GlobalDataLibrary_19653_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 81:433:4063  "library GlobalDataLibrary {..."
        function constructor_GlobalDataLibrary_19653() {

            /// @src 81:433:4063  "library GlobalDataLibrary {..."

        }
        /// @src 81:433:4063  "library GlobalDataLibrary {..."

    }
    /// @use-src 81:"src/types/GlobalData.sol"
    object "GlobalDataLibrary_19653_deployed" {
        code {
            /// @src 81:433:4063  "library GlobalDataLibrary {..."
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

        data ".metadata" hex"a264697066735822122018c9d043c01e2cb40c01efc623345b12f2387d55bb7078b9520a49c8126e296c64736f6c634300081e0033"
    }

}

