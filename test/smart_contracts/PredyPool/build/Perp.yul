
/// @use-src 61:"src/libraries/Perp.sol"
object "Perp_15783" {
    code {
        /// @src 61:803:30128  "library Perp {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Perp_15783_deployed"), datasize("Perp_15783_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("Perp_15783_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 61:803:30128  "library Perp {..."
        function constructor_Perp_15783() {

            /// @src 61:803:30128  "library Perp {..."

        }
        /// @src 61:803:30128  "library Perp {..."

    }
    /// @use-src 61:"src/libraries/Perp.sol"
    object "Perp_15783_deployed" {
        code {
            /// @src 61:803:30128  "library Perp {..."
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

        data ".metadata" hex"a2646970667358221220aad9f6e553965bbcc5256396cdbc8d0ab01319485c91f2f70bb8aff77415048e64736f6c634300081e0033"
    }

}

