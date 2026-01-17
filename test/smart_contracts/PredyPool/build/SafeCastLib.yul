
/// @use-src 13:"lib/solmate/src/utils/SafeCastLib.sol"
object "SafeCastLib_29687" {
    code {
        /// @src 13:387:4604  "library SafeCastLib {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("SafeCastLib_29687_deployed"), datasize("SafeCastLib_29687_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("SafeCastLib_29687_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 13:387:4604  "library SafeCastLib {..."
        function constructor_SafeCastLib_29687() {

            /// @src 13:387:4604  "library SafeCastLib {..."

        }
        /// @src 13:387:4604  "library SafeCastLib {..."

    }
    /// @use-src 13:"lib/solmate/src/utils/SafeCastLib.sol"
    object "SafeCastLib_29687_deployed" {
        code {
            /// @src 13:387:4604  "library SafeCastLib {..."
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

        data ".metadata" hex"a26469706673582212202af4f2b4e617617f271727a24e906af0b5184c1f2382f0a3d5411f757e80dee464736f6c634300081e0033"
    }

}

