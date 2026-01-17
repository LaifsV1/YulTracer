
/// @use-src 46:"openzeppelin-contracts-4.9.3/contracts/utils/Strings.sol"
object "Strings_25178" {
    code {
        /// @src 46:220:2779  "library Strings {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Strings_25178_deployed"), datasize("Strings_25178_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("Strings_25178_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 46:220:2779  "library Strings {..."
        function constructor_Strings_25178() {

            /// @src 46:220:2779  "library Strings {..."

        }
        /// @src 46:220:2779  "library Strings {..."

    }
    /// @use-src 46:"openzeppelin-contracts-4.9.3/contracts/utils/Strings.sol"
    object "Strings_25178_deployed" {
        code {
            /// @src 46:220:2779  "library Strings {..."
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

        data ".metadata" hex"a2646970667358221220e3c42c5cbeea0e55c4a62d0f8025a06ea5fc8db1a943751d6294d138cd13431f64736f6c634300081e0033"
    }

}

