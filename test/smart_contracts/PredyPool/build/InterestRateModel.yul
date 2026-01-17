
/// @use-src 59:"src/libraries/InterestRateModel.sol"
object "InterestRateModel_13511" {
    code {
        /// @src 59:63:782  "library InterestRateModel {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("InterestRateModel_13511_deployed"), datasize("InterestRateModel_13511_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("InterestRateModel_13511_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 59:63:782  "library InterestRateModel {..."
        function constructor_InterestRateModel_13511() {

            /// @src 59:63:782  "library InterestRateModel {..."

        }
        /// @src 59:63:782  "library InterestRateModel {..."

    }
    /// @use-src 59:"src/libraries/InterestRateModel.sol"
    object "InterestRateModel_13511_deployed" {
        code {
            /// @src 59:63:782  "library InterestRateModel {..."
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

        data ".metadata" hex"a264697066735822122056dacf842a069ac117a9a50ec8cdae043443f8d482af94de3aab833d2ee9de9764736f6c634300081e0033"
    }

}

