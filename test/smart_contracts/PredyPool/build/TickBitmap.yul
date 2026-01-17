
/// @use-src 117:"uniswap/v3-core-1.0.0/contracts/libraries/TickBitmap.sol"
object "TickBitmap_22492" {
    code {
        /// @src 117:368:4188  "library TickBitmap {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("TickBitmap_22492_deployed"), datasize("TickBitmap_22492_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("TickBitmap_22492_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 117:368:4188  "library TickBitmap {..."
        function constructor_TickBitmap_22492() {

            /// @src 117:368:4188  "library TickBitmap {..."

        }
        /// @src 117:368:4188  "library TickBitmap {..."

    }
    /// @use-src 117:"uniswap/v3-core-1.0.0/contracts/libraries/TickBitmap.sol"
    object "TickBitmap_22492_deployed" {
        code {
            /// @src 117:368:4188  "library TickBitmap {..."
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

        data ".metadata" hex"a2646970667358221220957be1d9cee4cb43492e18a9e4b1d5c00e4a336a7375272933e3d1231b6a458264736f6c634300081e0033"
    }

}

