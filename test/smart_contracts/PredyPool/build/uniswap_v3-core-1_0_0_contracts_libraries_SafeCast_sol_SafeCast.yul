
/// @use-src 113:"uniswap/v3-core-1.0.0/contracts/libraries/SafeCast.sol"
object "SafeCast_20984" {
    code {
        /// @src 113:202:1084  "library SafeCast {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("SafeCast_20984_deployed"), datasize("SafeCast_20984_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("SafeCast_20984_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 113:202:1084  "library SafeCast {..."
        function constructor_SafeCast_20984() {

            /// @src 113:202:1084  "library SafeCast {..."

        }
        /// @src 113:202:1084  "library SafeCast {..."

    }
    /// @use-src 113:"uniswap/v3-core-1.0.0/contracts/libraries/SafeCast.sol"
    object "SafeCast_20984_deployed" {
        code {
            /// @src 113:202:1084  "library SafeCast {..."
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

        data ".metadata" hex"a2646970667358221220c52278135a9ddff602d57a1cd2b6783668fa1b4769166ebe5ae506d0505b798364736f6c634300081e0033"
    }

}

