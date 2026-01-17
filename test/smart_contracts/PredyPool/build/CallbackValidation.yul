
/// @use-src 144:"uniswap/v3-periphery-1.3.0/contracts/libraries/CallbackValidation.sol"
object "CallbackValidation_24090" {
    code {
        /// @src 144:271:1507  "library CallbackValidation {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("CallbackValidation_24090_deployed"), datasize("CallbackValidation_24090_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("CallbackValidation_24090_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 144:271:1507  "library CallbackValidation {..."
        function constructor_CallbackValidation_24090() {

            /// @src 144:271:1507  "library CallbackValidation {..."

        }
        /// @src 144:271:1507  "library CallbackValidation {..."

    }
    /// @use-src 144:"uniswap/v3-periphery-1.3.0/contracts/libraries/CallbackValidation.sol"
    object "CallbackValidation_24090_deployed" {
        code {
            /// @src 144:271:1507  "library CallbackValidation {..."
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

        data ".metadata" hex"a264697066735822122014199313f08b09ee5ebf31cdd417badd27cf6f9d0308b7839a97d4c6729ea5ea64736f6c634300081e0033"
    }

}

