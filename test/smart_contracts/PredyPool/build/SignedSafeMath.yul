
/// @use-src 33:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/math/SignedSafeMath.sol"
object "SignedSafeMath_24949" {
    code {
        /// @src 33:200:2695  "library SignedSafeMath {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("SignedSafeMath_24949_deployed"), datasize("SignedSafeMath_24949_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("SignedSafeMath_24949_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 33:200:2695  "library SignedSafeMath {..."
        function constructor_SignedSafeMath_24949() {

            /// @src 33:200:2695  "library SignedSafeMath {..."

        }
        /// @src 33:200:2695  "library SignedSafeMath {..."

    }
    /// @use-src 33:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/math/SignedSafeMath.sol"
    object "SignedSafeMath_24949_deployed" {
        code {
            /// @src 33:200:2695  "library SignedSafeMath {..."
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

        data ".metadata" hex"a264697066735822122046795dded94335e57e2c6ab16b9204b42aea13157c772fcb5a1330f2bb6620d764736f6c634300081e0033"
    }

}

