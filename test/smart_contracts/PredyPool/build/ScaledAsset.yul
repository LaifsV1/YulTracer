
/// @use-src 66:"src/libraries/ScaledAsset.sol"
object "ScaledAsset_31669" {
    code {
        /// @src 66:311:8412  "library ScaledAsset {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("ScaledAsset_31669_deployed"), datasize("ScaledAsset_31669_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("ScaledAsset_31669_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 66:311:8412  "library ScaledAsset {..."
        function constructor_ScaledAsset_31669() {

            /// @src 66:311:8412  "library ScaledAsset {..."

        }
        /// @src 66:311:8412  "library ScaledAsset {..."

    }
    /// @use-src 66:"src/libraries/ScaledAsset.sol"
    object "ScaledAsset_31669_deployed" {
        code {
            /// @src 66:311:8412  "library ScaledAsset {..."
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

        data ".metadata" hex"a26469706673582212207f27bb811db4466f703b3ca460c66822f5c45a0759779d9decf72cca66afbd6d64736f6c634300081e0033"
    }

}

