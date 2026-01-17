
/// @use-src 153:"uniswap/v3-periphery-1.3.0/contracts/libraries/TransferHelper.sol"
object "TransferHelper_35903" {
    code {
        /// @src 153:166:2574  "library TransferHelper {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("TransferHelper_35903_deployed"), datasize("TransferHelper_35903_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("TransferHelper_35903_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 153:166:2574  "library TransferHelper {..."
        function constructor_TransferHelper_35903() {

            /// @src 153:166:2574  "library TransferHelper {..."

        }
        /// @src 153:166:2574  "library TransferHelper {..."

    }
    /// @use-src 153:"uniswap/v3-periphery-1.3.0/contracts/libraries/TransferHelper.sol"
    object "TransferHelper_35903_deployed" {
        code {
            /// @src 153:166:2574  "library TransferHelper {..."
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

        data ".metadata" hex"a2646970667358221220fc536b4cd7e235cb8bead0649df78992b27729c7cda75421bd2c3113b3ba6d5764736f6c634300081e0033"
    }

}

