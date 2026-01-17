
/// @use-src 2:"Yult.sol"
object "YultLib_751" {
    code {
        /// @src 2:1146:1360  "library YultLib {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("YultLib_751_deployed"), datasize("YultLib_751_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("YultLib_751_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 2:1146:1360  "library YultLib {..."
        function constructor_YultLib_751() {

            /// @src 2:1146:1360  "library YultLib {..."

        }
        /// @src 2:1146:1360  "library YultLib {..."

    }
    /// @use-src 2:"Yult.sol"
    object "YultLib_751_deployed" {
        code {
            /// @src 2:1146:1360  "library YultLib {..."
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

        data ".metadata" hex"a26469706673582212209110bbf4a2091221a02c612b658c638840d67ea487085e0f05c765dae279fc9864736f6c634300081e0033"
    }

}

