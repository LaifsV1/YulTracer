
/// @use-src 149:"uniswap/v3-periphery-1.3.0/contracts/libraries/NFTSVG.sol"
object "NFTSVG_26535" {
    code {
        /// @src 149:354:19374  "library NFTSVG {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("NFTSVG_26535_deployed"), datasize("NFTSVG_26535_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("NFTSVG_26535_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 149:354:19374  "library NFTSVG {..."
        function constructor_NFTSVG_26535() {

            /// @src 149:354:19374  "library NFTSVG {..."

        }
        /// @src 149:354:19374  "library NFTSVG {..."

    }
    /// @use-src 149:"uniswap/v3-periphery-1.3.0/contracts/libraries/NFTSVG.sol"
    object "NFTSVG_26535_deployed" {
        code {
            /// @src 149:354:19374  "library NFTSVG {..."
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

        data ".metadata" hex"a2646970667358221220fd237b84426081e24d13151131c392e6444483e50bfd4821aa0406c1b7b52dee64736f6c634300081e0033"
    }

}

