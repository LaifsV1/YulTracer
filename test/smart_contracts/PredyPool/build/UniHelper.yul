
/// @use-src 69:"src/libraries/UniHelper.sol"
object "UniHelper_16942" {
    code {
        /// @src 69:318:5646  "library UniHelper {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("UniHelper_16942_deployed"), datasize("UniHelper_16942_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("UniHelper_16942_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 69:318:5646  "library UniHelper {..."
        function constructor_UniHelper_16942() {

            /// @src 69:318:5646  "library UniHelper {..."

        }
        /// @src 69:318:5646  "library UniHelper {..."

    }
    /// @use-src 69:"src/libraries/UniHelper.sol"
    object "UniHelper_16942_deployed" {
        code {
            /// @src 69:318:5646  "library UniHelper {..."
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

        data ".metadata" hex"a2646970667358221220f715e939665be14cdc0300a551e6edd1a16e6fb7769f40e7bc3a8dd443ca417f64736f6c634300081e0033"
    }

}

