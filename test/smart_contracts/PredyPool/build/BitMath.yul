
/// @use-src 105:"uniswap/v3-core-1.0.0/contracts/libraries/BitMath.sol"
object "BitMath_25457" {
    code {
        /// @src 105:224:2826  "library BitMath {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("BitMath_25457_deployed"), datasize("BitMath_25457_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("BitMath_25457_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 105:224:2826  "library BitMath {..."
        function constructor_BitMath_25457() {

            /// @src 105:224:2826  "library BitMath {..."

        }
        /// @src 105:224:2826  "library BitMath {..."

    }
    /// @use-src 105:"uniswap/v3-core-1.0.0/contracts/libraries/BitMath.sol"
    object "BitMath_25457_deployed" {
        code {
            /// @src 105:224:2826  "library BitMath {..."
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

        data ".metadata" hex"a26469706673582212207014c45a657ec08055cb85a56be0b0696c05bc22339ab37084549289d6b8a3ac64736f6c634300081e0033"
    }

}

