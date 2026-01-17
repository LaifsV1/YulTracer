
/// @use-src 7:"lib/openzeppelin-contracts-upgradeable/contracts/utils/AddressUpgradeable.sol"
object "AddressUpgradeable_26981" {
    code {
        /// @src 7:194:9374  "library AddressUpgradeable {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("AddressUpgradeable_26981_deployed"), datasize("AddressUpgradeable_26981_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("AddressUpgradeable_26981_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 7:194:9374  "library AddressUpgradeable {..."
        function constructor_AddressUpgradeable_26981() {

            /// @src 7:194:9374  "library AddressUpgradeable {..."

        }
        /// @src 7:194:9374  "library AddressUpgradeable {..."

    }
    /// @use-src 7:"lib/openzeppelin-contracts-upgradeable/contracts/utils/AddressUpgradeable.sol"
    object "AddressUpgradeable_26981_deployed" {
        code {
            /// @src 7:194:9374  "library AddressUpgradeable {..."
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

        data ".metadata" hex"a264697066735822122050d9fd77f5af227301a05dcfad791323a08b3ded00ee94136b945869d4c2662d64736f6c634300081e0033"
    }

}

