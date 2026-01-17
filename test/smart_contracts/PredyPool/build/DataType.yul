
/// @use-src 58:"src/libraries/DataType.sol"
object "DataType_6127" {
    code {
        /// @src 58:97:915  "library DataType {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("DataType_6127_deployed"), datasize("DataType_6127_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("DataType_6127_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 58:97:915  "library DataType {..."
        function constructor_DataType_6127() {

            /// @src 58:97:915  "library DataType {..."

        }
        /// @src 58:97:915  "library DataType {..."

    }
    /// @use-src 58:"src/libraries/DataType.sol"
    object "DataType_6127_deployed" {
        code {
            /// @src 58:97:915  "library DataType {..."
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

        data ".metadata" hex"a2646970667358221220d42f76e3f806f4ca40e31d1242eced5e86bb8a65cb0029e6c85eeab359f1579364736f6c634300081e0033"
    }

}

