
/// @use-src 10:"lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol"
object "SafeCast_28970" {
    code {
        /// @src 10:927:35080  "library SafeCast {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("SafeCast_28970_deployed"), datasize("SafeCast_28970_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("SafeCast_28970_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 10:927:35080  "library SafeCast {..."
        function constructor_SafeCast_28970() {

            /// @src 10:927:35080  "library SafeCast {..."

        }
        /// @src 10:927:35080  "library SafeCast {..."

    }
    /// @use-src 10:"lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol"
    object "SafeCast_28970_deployed" {
        code {
            /// @src 10:927:35080  "library SafeCast {..."
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

        data ".metadata" hex"a2646970667358221220fb4ad71b3f0a7331d5c36bd989157a9fe0ae0a485adefd660f4eb0f385a9753d64736f6c634300081e0033"
    }

}

