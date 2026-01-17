
/// @use-src 79:"src/libraries/math/Math.sol"
object "Math_32380" {
    code {
        /// @src 79:329:2116  "library Math {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Math_32380_deployed"), datasize("Math_32380_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("Math_32380_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 79:329:2116  "library Math {..."
        function constructor_Math_32380() {

            /// @src 79:329:2116  "library Math {..."

        }
        /// @src 79:329:2116  "library Math {..."

    }
    /// @use-src 79:"src/libraries/math/Math.sol"
    object "Math_32380_deployed" {
        code {
            /// @src 79:329:2116  "library Math {..."
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

        data ".metadata" hex"a26469706673582212205aa6ccfb6d2e89c2214bc320681f55acd1cabcebd5ee215dc422f75c85fabc0864736f6c634300081e0033"
    }

}

