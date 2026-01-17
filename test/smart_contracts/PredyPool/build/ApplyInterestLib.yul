
/// @use-src 56:"src/libraries/ApplyInterestLib.sol"
object "ApplyInterestLib_33280" {
    code {
        /// @src 56:138:2972  "library ApplyInterestLib {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("ApplyInterestLib_33280_deployed"), datasize("ApplyInterestLib_33280_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("ApplyInterestLib_33280_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 56:138:2972  "library ApplyInterestLib {..."
        function constructor_ApplyInterestLib_33280() {

            /// @src 56:138:2972  "library ApplyInterestLib {..."

        }
        /// @src 56:138:2972  "library ApplyInterestLib {..."

    }
    /// @use-src 56:"src/libraries/ApplyInterestLib.sol"
    object "ApplyInterestLib_33280_deployed" {
        code {
            /// @src 56:138:2972  "library ApplyInterestLib {..."
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

        data ".metadata" hex"a26469706673582212200fd563da6c4d1912e447c3108f906dc8fb067500c2930a4e25e5fb1d4dcb1f1364736f6c634300081e0033"
    }

}

