/// @use-src 0:"map.sol"
object "IndirectStorage_52" {
    code {
        /// @src 0:57:589  "contract IndirectStorage {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_IndirectStorage_52()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("IndirectStorage_52_deployed"), datasize("IndirectStorage_52_deployed"))

        return(_1, datasize("IndirectStorage_52_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        function cleanup_t_rational_100_by_1(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function identity(value) -> ret {
            ret := value
        }

        function convert_t_rational_100_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_100_by_1(value)))
        }

        function cleanup_t_rational_1_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
        }

        function mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(slot , key) -> dataSlot {
            mstore(0, convert_t_rational_1_by_1_to_t_uint256(key))
            mstore(0x20, slot)
            dataSlot := keccak256(0, 0x40)
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function update_byte_slice_32_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function convert_t_uint256_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
        }

        function prepare_store_t_uint256(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_0_t_uint256_to_t_uint256(slot, value_0) {
            let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
        }

        function cleanup_t_rational_200_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_200_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_200_by_1(value)))
        }

        function cleanup_t_rational_2_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
        }

        function mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_2_by_1(slot , key) -> dataSlot {
            mstore(0, convert_t_rational_2_by_1_to_t_uint256(key))
            mstore(0x20, slot)
            dataSlot := keccak256(0, 0x40)
        }

        function cleanup_t_rational_300_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_300_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_300_by_1(value)))
        }

        function cleanup_t_rational_3_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_3_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_3_by_1(value)))
        }

        function mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_3_by_1(slot , key) -> dataSlot {
            mstore(0, convert_t_rational_3_by_1_to_t_uint256(key))
            mstore(0x20, slot)
            dataSlot := keccak256(0, 0x40)
        }

        function shift_right_0_unsigned(value) -> newValue {
            newValue :=

            shr(0, value)

        }

        function cleanup_from_storage_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function extract_from_storage_value_offset_0_t_uint256(slot_value) -> value {
            value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
        }

        function read_from_storage_split_offset_0_t_uint256(slot) -> value {
            value := extract_from_storage_value_offset_0_t_uint256(sload(slot))

        }

        function panic_error_0x01() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x01)
            revert(0, 0x24)
        }

        function assert_helper(condition) {
            if iszero(condition) { panic_error_0x01() }
        }

        /// @ast-id 51
        /// @src 0:259:587  "constructor() {..."
        function constructor_IndirectStorage_52() {

            /// @src 0:259:587  "constructor() {..."

            /// @src 0:339:342  "100"
            let expr_11 := 0x64
            /// @src 0:321:342  "storageSlots[1] = 100"
            let _2 := convert_t_rational_100_by_1_to_t_uint256(expr_11)
            /// @src 0:321:333  "storageSlots"
            let _3_slot := 0x00
            let expr_8_slot := _3_slot
            /// @src 0:334:335  "1"
            let expr_9 := 0x01
            /// @src 0:321:336  "storageSlots[1]"
            let _4 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_8_slot,expr_9)
            /// @src 0:321:342  "storageSlots[1] = 100"
            update_storage_value_offset_0_t_uint256_to_t_uint256(_4, _2)
            let expr_12 := _2
            /// @src 0:370:373  "200"
            let expr_17 := 0xc8
            /// @src 0:352:373  "storageSlots[2] = 200"
            let _5 := convert_t_rational_200_by_1_to_t_uint256(expr_17)
            /// @src 0:352:364  "storageSlots"
            let _6_slot := 0x00
            let expr_14_slot := _6_slot
            /// @src 0:365:366  "2"
            let expr_15 := 0x02
            /// @src 0:352:367  "storageSlots[2]"
            let _7 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_2_by_1(expr_14_slot,expr_15)
            /// @src 0:352:373  "storageSlots[2] = 200"
            update_storage_value_offset_0_t_uint256_to_t_uint256(_7, _5)
            let expr_18 := _5
            /// @src 0:401:404  "300"
            let expr_23 := 0x012c
            /// @src 0:383:404  "storageSlots[3] = 300"
            let _8 := convert_t_rational_300_by_1_to_t_uint256(expr_23)
            /// @src 0:383:395  "storageSlots"
            let _9_slot := 0x00
            let expr_20_slot := _9_slot
            /// @src 0:396:397  "3"
            let expr_21 := 0x03
            /// @src 0:383:398  "storageSlots[3]"
            let _10 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_3_by_1(expr_20_slot,expr_21)
            /// @src 0:383:404  "storageSlots[3] = 300"
            update_storage_value_offset_0_t_uint256_to_t_uint256(_10, _8)
            let expr_24 := _8
            /// @src 0:477:489  "storageSlots"
            let _11_slot := 0x00
            let expr_27_slot := _11_slot
            /// @src 0:490:491  "1"
            let expr_28 := 0x01
            /// @src 0:477:492  "storageSlots[1]"
            let _12 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_27_slot,expr_28)
            let _13 := read_from_storage_split_offset_0_t_uint256(_12)
            let expr_29 := _13
            /// @src 0:496:499  "100"
            let expr_30 := 0x64
            /// @src 0:477:499  "storageSlots[1] == 100"
            let expr_31 := eq(cleanup_t_uint256(expr_29), convert_t_rational_100_by_1_to_t_uint256(expr_30))
            /// @src 0:470:500  "assert(storageSlots[1] == 100)"
            assert_helper(expr_31)
            /// @src 0:517:529  "storageSlots"
            let _14_slot := 0x00
            let expr_35_slot := _14_slot
            /// @src 0:530:531  "2"
            let expr_36 := 0x02
            /// @src 0:517:532  "storageSlots[2]"
            let _15 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_2_by_1(expr_35_slot,expr_36)
            let _16 := read_from_storage_split_offset_0_t_uint256(_15)
            let expr_37 := _16
            /// @src 0:536:539  "200"
            let expr_38 := 0xc8
            /// @src 0:517:539  "storageSlots[2] == 200"
            let expr_39 := eq(cleanup_t_uint256(expr_37), convert_t_rational_200_by_1_to_t_uint256(expr_38))
            /// @src 0:510:540  "assert(storageSlots[2] == 200)"
            assert_helper(expr_39)
            /// @src 0:557:569  "storageSlots"
            let _17_slot := 0x00
            let expr_43_slot := _17_slot
            /// @src 0:570:571  "3"
            let expr_44 := 0x03
            /// @src 0:557:572  "storageSlots[3]"
            let _18 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_3_by_1(expr_43_slot,expr_44)
            let _19 := read_from_storage_split_offset_0_t_uint256(_18)
            let expr_45 := _19
            /// @src 0:576:579  "300"
            let expr_46 := 0x012c
            /// @src 0:557:579  "storageSlots[3] == 300"
            let expr_47 := eq(cleanup_t_uint256(expr_45), convert_t_rational_300_by_1_to_t_uint256(expr_46))
            /// @src 0:550:580  "assert(storageSlots[3] == 300)"
            assert_helper(expr_47)

        }
        /// @src 0:57:589  "contract IndirectStorage {..."

    }
    /// @use-src 0:"map.sol"
    object "IndirectStorage_52_deployed" {
        code {
            /// @src 0:57:589  "contract IndirectStorage {..."
            mstore(64, memoryguard(128))

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

        data ".metadata" hex"a2646970667358221220962eb8232ab477aa909ea2f58bee55c36c2b3759ec7258250ca7ff3dcbf9164564736f6c634300081c0033"
    }

}


