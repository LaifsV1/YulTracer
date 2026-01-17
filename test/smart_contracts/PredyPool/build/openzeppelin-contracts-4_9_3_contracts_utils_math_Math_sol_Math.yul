
/// @use-src 47:"openzeppelin-contracts-4.9.3/contracts/utils/math/Math.sol"
object "Math_36769" {
    code {
        /// @src 47:202:12784  "library Math {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Math_36769_deployed"), datasize("Math_36769_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("Math_36769_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 47:202:12784  "library Math {..."
        function constructor_Math_36769() {

            /// @src 47:202:12784  "library Math {..."

        }
        /// @src 47:202:12784  "library Math {..."

    }
    /// @use-src 47:"openzeppelin-contracts-4.9.3/contracts/utils/math/Math.sol"
    object "Math_36769_deployed" {
        code {
            /// @src 47:202:12784  "library Math {..."
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

        data ".metadata" hex"a26469706673582212206fdacb962983ba8bd41197435c45fa1edefeea51b90a61b463bdca558c1a539364736f6c634300081e0033"
    }

}

