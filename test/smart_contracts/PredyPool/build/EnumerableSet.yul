
/// @use-src 44:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/EnumerableSet.sol"
object "EnumerableSet_35628" {
    code {
        /// @src 44:782:9416  "library EnumerableSet {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("EnumerableSet_35628_deployed"), datasize("EnumerableSet_35628_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("EnumerableSet_35628_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 44:782:9416  "library EnumerableSet {..."
        function constructor_EnumerableSet_35628() {

            /// @src 44:782:9416  "library EnumerableSet {..."

        }
        /// @src 44:782:9416  "library EnumerableSet {..."

    }
    /// @use-src 44:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/EnumerableSet.sol"
    object "EnumerableSet_35628_deployed" {
        code {
            /// @src 44:782:9416  "library EnumerableSet {..."
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

        data ".metadata" hex"a2646970667358221220dcfef69e0bd82e113124ffada6abd6fbd593a302cb03283fbea1f61845d7545364736f6c634300081e0033"
    }

}

