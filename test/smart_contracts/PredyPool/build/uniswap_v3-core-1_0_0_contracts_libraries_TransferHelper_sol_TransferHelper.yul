
/// @use-src 119:"uniswap/v3-core-1.0.0/contracts/libraries/TransferHelper.sol"
object "TransferHelper_22543" {
    code {
        /// @src 119:290:969  "library TransferHelper {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("TransferHelper_22543_deployed"), datasize("TransferHelper_22543_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("TransferHelper_22543_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 119:290:969  "library TransferHelper {..."
        function constructor_TransferHelper_22543() {

            /// @src 119:290:969  "library TransferHelper {..."

        }
        /// @src 119:290:969  "library TransferHelper {..."

    }
    /// @use-src 119:"uniswap/v3-core-1.0.0/contracts/libraries/TransferHelper.sol"
    object "TransferHelper_22543_deployed" {
        code {
            /// @src 119:290:969  "library TransferHelper {..."
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

        data ".metadata" hex"a264697066735822122015c082450583343fe6f89d3e6234e5784c36b76c743d918c4ea2ba243c57de4764736f6c634300081e0033"
    }

}

