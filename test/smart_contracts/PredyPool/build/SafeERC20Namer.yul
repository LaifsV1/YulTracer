
/// @use-src 87:"uniswap/solidity-lib-4.0.0-alpha/contracts/libraries/SafeERC20Namer.sol"
object "SafeERC20Namer_10695" {
    code {
        /// @src 87:303:3827  "library SafeERC20Namer {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("SafeERC20Namer_10695_deployed"), datasize("SafeERC20Namer_10695_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("SafeERC20Namer_10695_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 87:303:3827  "library SafeERC20Namer {..."
        function constructor_SafeERC20Namer_10695() {

            /// @src 87:303:3827  "library SafeERC20Namer {..."

        }
        /// @src 87:303:3827  "library SafeERC20Namer {..."

    }
    /// @use-src 87:"uniswap/solidity-lib-4.0.0-alpha/contracts/libraries/SafeERC20Namer.sol"
    object "SafeERC20Namer_10695_deployed" {
        code {
            /// @src 87:303:3827  "library SafeERC20Namer {..."
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

        data ".metadata" hex"a2646970667358221220e85bc9f6945ba5ec4296528fcdc31dbbac0db989f04f9b531de104111740f96564736f6c634300081e0033"
    }

}

