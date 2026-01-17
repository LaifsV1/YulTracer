
/// @use-src 3:"base64-sol-1.0.1/base64.sol"
object "Base64_24770" {
    code {
        /// @src 3:190:2304  "library Base64 {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Base64_24770_deployed"), datasize("Base64_24770_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("Base64_24770_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 3:190:2304  "library Base64 {..."
        function constructor_Base64_24770() {

            /// @src 3:190:2304  "library Base64 {..."

        }
        /// @src 3:190:2304  "library Base64 {..."

    }
    /// @use-src 3:"base64-sol-1.0.1/base64.sol"
    object "Base64_24770_deployed" {
        code {
            /// @src 3:190:2304  "library Base64 {..."
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

        data ".metadata" hex"a2646970667358221220552eeb9d2a944d2ad404cab98f4c56d7011c33c6a82e87c946e96f37554767dd64736f6c634300081e0033"
    }

}

