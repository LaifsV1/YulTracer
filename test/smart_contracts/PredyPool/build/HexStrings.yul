
/// @use-src 146:"uniswap/v3-periphery-1.3.0/contracts/libraries/HexStrings.sol"
object "HexStrings_25592" {
    code {
        /// @src 146:94:1248  "library HexStrings {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("HexStrings_25592_deployed"), datasize("HexStrings_25592_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("HexStrings_25592_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 146:94:1248  "library HexStrings {..."
        function constructor_HexStrings_25592() {

            /// @src 146:94:1248  "library HexStrings {..."

        }
        /// @src 146:94:1248  "library HexStrings {..."

    }
    /// @use-src 146:"uniswap/v3-periphery-1.3.0/contracts/libraries/HexStrings.sol"
    object "HexStrings_25592_deployed" {
        code {
            /// @src 146:94:1248  "library HexStrings {..."
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

        data ".metadata" hex"a26469706673582212202c430fe90f96d905651884f5bf4095cb32ed407d077ea42c52257cede4d0e8f464736f6c634300081e0033"
    }

}

