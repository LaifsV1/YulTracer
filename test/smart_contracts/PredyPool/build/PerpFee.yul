
/// @use-src 62:"src/libraries/PerpFee.sol"
object "PerpFee_33799" {
    code {
        /// @src 62:316:6827  "library PerpFee {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("PerpFee_33799_deployed"), datasize("PerpFee_33799_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("PerpFee_33799_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 62:316:6827  "library PerpFee {..."
        function constructor_PerpFee_33799() {

            /// @src 62:316:6827  "library PerpFee {..."

        }
        /// @src 62:316:6827  "library PerpFee {..."

    }
    /// @use-src 62:"src/libraries/PerpFee.sol"
    object "PerpFee_33799_deployed" {
        code {
            /// @src 62:316:6827  "library PerpFee {..."
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

        data ".metadata" hex"a2646970667358221220e534e216a1ac55953e1f0f87aa0cc3595f644eb1aad068eae4c2d00d7fe52ac364736f6c634300081e0033"
    }

}

