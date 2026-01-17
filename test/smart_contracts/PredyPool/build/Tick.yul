
/// @use-src 116:"uniswap/v3-core-1.0.0/contracts/libraries/Tick.sol"
object "Tick_22221" {
    code {
        /// @src 116:314:9555  "library Tick {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Tick_22221_deployed"), datasize("Tick_22221_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("Tick_22221_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 116:314:9555  "library Tick {..."
        function constructor_Tick_22221() {

            /// @src 116:314:9555  "library Tick {..."

        }
        /// @src 116:314:9555  "library Tick {..."

    }
    /// @use-src 116:"uniswap/v3-core-1.0.0/contracts/libraries/Tick.sol"
    object "Tick_22221_deployed" {
        code {
            /// @src 116:314:9555  "library Tick {..."
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

        data ".metadata" hex"a264697066735822122040dd893ab1e2bff592a63936cc126527565cb0e5478e83bf19873129cef3220c64736f6c634300081e0033"
    }

}

