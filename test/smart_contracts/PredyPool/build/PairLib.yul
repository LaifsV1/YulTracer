
/// @use-src 60:"src/libraries/PairLib.sol"
object "PairLib_34419" {
    code {
        /// @src 60:63:247  "library PairLib {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("PairLib_34419_deployed"), datasize("PairLib_34419_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("PairLib_34419_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 60:63:247  "library PairLib {..."
        function constructor_PairLib_34419() {

            /// @src 60:63:247  "library PairLib {..."

        }
        /// @src 60:63:247  "library PairLib {..."

    }
    /// @use-src 60:"src/libraries/PairLib.sol"
    object "PairLib_34419_deployed" {
        code {
            /// @src 60:63:247  "library PairLib {..."
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

        data ".metadata" hex"a26469706673582212206810b854a6bc8a0a21b46d76cf4a9cff73a7b971b7abe6415b5f736fafbbba1b64736f6c634300081e0033"
    }

}

