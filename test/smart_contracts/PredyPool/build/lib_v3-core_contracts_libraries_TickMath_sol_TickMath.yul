
/// @use-src 27:"lib/v3-core/contracts/libraries/TickMath.sol"
object "TickMath_30243" {
    code {
        /// @src 27:305:9417  "library TickMath {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("TickMath_30243_deployed"), datasize("TickMath_30243_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("TickMath_30243_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 27:305:9417  "library TickMath {..."
        function constructor_TickMath_30243() {

            /// @src 27:305:9417  "library TickMath {..."

        }
        /// @src 27:305:9417  "library TickMath {..."

    }
    /// @use-src 27:"lib/v3-core/contracts/libraries/TickMath.sol"
    object "TickMath_30243_deployed" {
        code {
            /// @src 27:305:9417  "library TickMath {..."
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

        data ".metadata" hex"a2646970667358221220b8d8daf70f8c8cf47cc4253720dd1718634ac037b06640af51a924d0cf81120a64736f6c634300081e0033"
    }

}

