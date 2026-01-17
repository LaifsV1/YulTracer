
/// @use-src 25:"lib/v3-core/contracts/libraries/FixedPoint96.sol"
object "FixedPoint96_29697" {
    code {
        /// @src 25:245:379  "library FixedPoint96 {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("FixedPoint96_29697_deployed"), datasize("FixedPoint96_29697_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("FixedPoint96_29697_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 25:245:379  "library FixedPoint96 {..."
        function constructor_FixedPoint96_29697() {

            /// @src 25:245:379  "library FixedPoint96 {..."

        }
        /// @src 25:245:379  "library FixedPoint96 {..."

    }
    /// @use-src 25:"lib/v3-core/contracts/libraries/FixedPoint96.sol"
    object "FixedPoint96_29697_deployed" {
        code {
            /// @src 25:245:379  "library FixedPoint96 {..."
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

        data ".metadata" hex"a2646970667358221220db1e2c0c78f97a11c85b2ce276c51bdc3a0c3ef0467fb38b6c4d807c86c5440164736f6c634300081e0033"
    }

}

