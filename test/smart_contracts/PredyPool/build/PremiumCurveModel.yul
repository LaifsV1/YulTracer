
/// @use-src 64:"src/libraries/PremiumCurveModel.sol"
object "PremiumCurveModel_30360" {
    code {
        /// @src 64:90:646  "library PremiumCurveModel {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("PremiumCurveModel_30360_deployed"), datasize("PremiumCurveModel_30360_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("PremiumCurveModel_30360_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 64:90:646  "library PremiumCurveModel {..."
        function constructor_PremiumCurveModel_30360() {

            /// @src 64:90:646  "library PremiumCurveModel {..."

        }
        /// @src 64:90:646  "library PremiumCurveModel {..."

    }
    /// @use-src 64:"src/libraries/PremiumCurveModel.sol"
    object "PremiumCurveModel_30360_deployed" {
        code {
            /// @src 64:90:646  "library PremiumCurveModel {..."
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

        data ".metadata" hex"a2646970667358221220b27c822e19946647e4c5cec93c29251cc41e7e5300a510c3553243705d8e292064736f6c634300081e0033"
    }

}

