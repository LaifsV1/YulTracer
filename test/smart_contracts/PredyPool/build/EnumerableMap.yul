
/// @use-src 43:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/EnumerableMap.sol"
object "EnumerableMap_35113" {
    code {
        /// @src 43:801:9764  "library EnumerableMap {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("EnumerableMap_35113_deployed"), datasize("EnumerableMap_35113_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("EnumerableMap_35113_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 43:801:9764  "library EnumerableMap {..."
        function constructor_EnumerableMap_35113() {

            /// @src 43:801:9764  "library EnumerableMap {..."

        }
        /// @src 43:801:9764  "library EnumerableMap {..."

    }
    /// @use-src 43:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/EnumerableMap.sol"
    object "EnumerableMap_35113_deployed" {
        code {
            /// @src 43:801:9764  "library EnumerableMap {..."
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

        data ".metadata" hex"a26469706673582212209ea240020342324274abe138df876191941c176d2ccf5e828ea28df71a4fb52664736f6c634300081e0033"
    }

}

