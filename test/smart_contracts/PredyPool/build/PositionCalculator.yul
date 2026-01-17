
/// @use-src 63:"src/libraries/PositionCalculator.sol"
object "PositionCalculator_16468" {
    code {
        /// @src 63:528:8599  "library PositionCalculator {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("PositionCalculator_16468_deployed"), datasize("PositionCalculator_16468_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("PositionCalculator_16468_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 63:528:8599  "library PositionCalculator {..."
        function constructor_PositionCalculator_16468() {

            /// @src 63:528:8599  "library PositionCalculator {..."

        }
        /// @src 63:528:8599  "library PositionCalculator {..."

    }
    /// @use-src 63:"src/libraries/PositionCalculator.sol"
    object "PositionCalculator_16468_deployed" {
        code {
            /// @src 63:528:8599  "library PositionCalculator {..."
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

        data ".metadata" hex"a26469706673582212208c9c609b0c5a3a7c4e16dec06479e244a53141b54c6aec7d85b94bd16fe4b99164736f6c634300081e0033"
    }

}

