
/// @use-src 150:"uniswap/v3-periphery-1.3.0/contracts/libraries/PoolAddress.sol"
object "PoolAddress_10355" {
    code {
        /// @src 150:204:2157  "library PoolAddress {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("PoolAddress_10355_deployed"), datasize("PoolAddress_10355_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("PoolAddress_10355_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 150:204:2157  "library PoolAddress {..."
        function constructor_PoolAddress_10355() {

            /// @src 150:204:2157  "library PoolAddress {..."

        }
        /// @src 150:204:2157  "library PoolAddress {..."

    }
    /// @use-src 150:"uniswap/v3-periphery-1.3.0/contracts/libraries/PoolAddress.sol"
    object "PoolAddress_10355_deployed" {
        code {
            /// @src 150:204:2157  "library PoolAddress {..."
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

        data ".metadata" hex"a26469706673582212205eb1d49dae6a268f2afb89b46298f37bc6314cf3bd55b3853fabd0fe3b964a7364736f6c634300081e0033"
    }

}

