
/// @use-src 145:"uniswap/v3-periphery-1.3.0/contracts/libraries/ChainId.sol"
object "ChainId_10732" {
    code {
        /// @src 145:161:393  "library ChainId {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("ChainId_10732_deployed"), datasize("ChainId_10732_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("ChainId_10732_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 145:161:393  "library ChainId {..."
        function constructor_ChainId_10732() {

            /// @src 145:161:393  "library ChainId {..."

        }
        /// @src 145:161:393  "library ChainId {..."

    }
    /// @use-src 145:"uniswap/v3-periphery-1.3.0/contracts/libraries/ChainId.sol"
    object "ChainId_10732_deployed" {
        code {
            /// @src 145:161:393  "library ChainId {..."
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

        data ".metadata" hex"a26469706673582212203eaa7d0c8c04986a99daf99e14afaa5e7e5a4dc2c7dfc4cbaf80a311959f4fe564736f6c634300081e0033"
    }

}

