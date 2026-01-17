
/// @use-src 12:"lib/solmate/src/utils/FixedPointMathLib.sol"
object "FixedPointMathLib_37045" {
    code {
        /// @src 12:341:10053  "library FixedPointMathLib {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("FixedPointMathLib_37045_deployed"), datasize("FixedPointMathLib_37045_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("FixedPointMathLib_37045_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 12:341:10053  "library FixedPointMathLib {..."
        function constructor_FixedPointMathLib_37045() {

            /// @src 12:341:10053  "library FixedPointMathLib {..."

        }
        /// @src 12:341:10053  "library FixedPointMathLib {..."

    }
    /// @use-src 12:"lib/solmate/src/utils/FixedPointMathLib.sol"
    object "FixedPointMathLib_37045_deployed" {
        code {
            /// @src 12:341:10053  "library FixedPointMathLib {..."
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

        data ".metadata" hex"a2646970667358221220bed37dcda2148540c10f4b7809b6f426014cd644a1960c806fd0fc35678592a364736f6c634300081e0033"
    }

}

