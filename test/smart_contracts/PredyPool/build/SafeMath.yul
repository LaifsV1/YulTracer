
/// @use-src 32:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/math/SafeMath.sol"
object "SafeMath_5988" {
    code {
        /// @src 32:659:7253  "library SafeMath {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("SafeMath_5988_deployed"), datasize("SafeMath_5988_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("SafeMath_5988_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 32:659:7253  "library SafeMath {..."
        function constructor_SafeMath_5988() {

            /// @src 32:659:7253  "library SafeMath {..."

        }
        /// @src 32:659:7253  "library SafeMath {..."

    }
    /// @use-src 32:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/math/SafeMath.sol"
    object "SafeMath_5988_deployed" {
        code {
            /// @src 32:659:7253  "library SafeMath {..."
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

        data ".metadata" hex"a264697066735822122064b8982c220c570e41a628796d6f49c449afd6d86c0ab8c3366c359bc6ec6c1a64736f6c634300081e0033"
    }

}

