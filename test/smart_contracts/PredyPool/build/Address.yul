
/// @use-src 41:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/Address.sol"
object "Address_23787" {
    code {
        /// @src 41:163:7847  "library Address {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Address_23787_deployed"), datasize("Address_23787_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("Address_23787_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 41:163:7847  "library Address {..."
        function constructor_Address_23787() {

            /// @src 41:163:7847  "library Address {..."

        }
        /// @src 41:163:7847  "library Address {..."

    }
    /// @use-src 41:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/Address.sol"
    object "Address_23787_deployed" {
        code {
            /// @src 41:163:7847  "library Address {..."
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

        data ".metadata" hex"a2646970667358221220c788134ff6c65dac1418609d04c6e5b9c7383b911b8b8880954b8c37cdf1764e64736f6c634300081e0033"
    }

}

