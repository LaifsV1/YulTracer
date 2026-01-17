
/// @use-src 14:"lib/solmate/src/utils/SafeTransferLib.sol"
object "SafeTransferLib_13390" {
    code {
        /// @src 14:586:6336  "library SafeTransferLib {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("SafeTransferLib_13390_deployed"), datasize("SafeTransferLib_13390_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("SafeTransferLib_13390_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 14:586:6336  "library SafeTransferLib {..."
        function constructor_SafeTransferLib_13390() {

            /// @src 14:586:6336  "library SafeTransferLib {..."

        }
        /// @src 14:586:6336  "library SafeTransferLib {..."

    }
    /// @use-src 14:"lib/solmate/src/utils/SafeTransferLib.sol"
    object "SafeTransferLib_13390_deployed" {
        code {
            /// @src 14:586:6336  "library SafeTransferLib {..."
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

        data ".metadata" hex"a26469706673582212202f475cfaa6038e9707e93c94fe01745b1c15f5e024d5dc02196e0b08a043162664736f6c634300081e0033"
    }

}

