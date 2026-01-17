
/// @use-src 26:"lib/v3-core/contracts/libraries/FullMath.sol"
object "FullMath_32557" {
    code {
        /// @src 26:354:5517  "library FullMath {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("FullMath_32557_deployed"), datasize("FullMath_32557_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("FullMath_32557_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 26:354:5517  "library FullMath {..."
        function constructor_FullMath_32557() {

            /// @src 26:354:5517  "library FullMath {..."

        }
        /// @src 26:354:5517  "library FullMath {..."

    }
    /// @use-src 26:"lib/v3-core/contracts/libraries/FullMath.sol"
    object "FullMath_32557_deployed" {
        code {
            /// @src 26:354:5517  "library FullMath {..."
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

        data ".metadata" hex"a2646970667358221220029973284aa48eb8a443a848a67d0f2215ef1c686f835a4089af8251c7c2608d64736f6c634300081e0033"
    }

}

