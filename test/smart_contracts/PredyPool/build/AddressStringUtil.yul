
/// @use-src 86:"uniswap/solidity-lib-4.0.0-alpha/contracts/libraries/AddressStringUtil.sol"
object "AddressStringUtil_24719" {
    code {
        /// @src 86:72:1402  "library AddressStringUtil {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("AddressStringUtil_24719_deployed"), datasize("AddressStringUtil_24719_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("AddressStringUtil_24719_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 86:72:1402  "library AddressStringUtil {..."
        function constructor_AddressStringUtil_24719() {

            /// @src 86:72:1402  "library AddressStringUtil {..."

        }
        /// @src 86:72:1402  "library AddressStringUtil {..."

    }
    /// @use-src 86:"uniswap/solidity-lib-4.0.0-alpha/contracts/libraries/AddressStringUtil.sol"
    object "AddressStringUtil_24719_deployed" {
        code {
            /// @src 86:72:1402  "library AddressStringUtil {..."
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

        data ".metadata" hex"a2646970667358221220d7bd638d96ae61603c02d256cb9ad3c3f051664f47e568935818e4d29ab993c464736f6c634300081e0033"
    }

}

