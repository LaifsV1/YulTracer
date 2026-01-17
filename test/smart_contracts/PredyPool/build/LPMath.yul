
/// @use-src 78:"src/libraries/math/LPMath.sol"
object "LPMath_32112" {
    code {
        /// @src 78:304:4976  "library LPMath {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("LPMath_32112_deployed"), datasize("LPMath_32112_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("LPMath_32112_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 78:304:4976  "library LPMath {..."
        function constructor_LPMath_32112() {

            /// @src 78:304:4976  "library LPMath {..."

        }
        /// @src 78:304:4976  "library LPMath {..."

    }
    /// @use-src 78:"src/libraries/math/LPMath.sol"
    object "LPMath_32112_deployed" {
        code {
            /// @src 78:304:4976  "library LPMath {..."
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

        data ".metadata" hex"a2646970667358221220a28a8ec295e9b36c282dc06e6522bb87b2addfdb89fbcfa1a85111c723cc829264736f6c634300081e0033"
    }

}

