/// @use-src 0:"keccak.sol"
object "Keccak_52" {
    code {
        /// @src 0:57:489  "contract Keccak {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1, _2 := copy_arguments_for_constructor_51_object_Keccak_52()
        constructor_Keccak_52(_1, _2)

        let _3 := allocate_unbounded()
        codecopy(_3, dataoffset("Keccak_52_deployed"), datasize("Keccak_52_deployed"))

        return(_3, datasize("Keccak_52_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        function round_up_to_mul_of_32(value) -> result {
            result := and(add(value, 31), not(31))
        }

        function panic_error_0x41() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x41)
            revert(0, 0x24)
        }

        function finalize_allocation(memPtr, size) {
            let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
            // protect against overflow
            if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
            mstore(64, newFreePtr)
        }

        function allocate_memory(size) -> memPtr {
            memPtr := allocate_unbounded()
            finalize_allocation(memPtr, size)
        }

        function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
            revert(0, 0)
        }

        function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
            revert(0, 0)
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function validator_revert_t_uint256(value) {
            if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
        }

        function abi_decode_t_uint256_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_uint256(value)
        }

        function abi_decode_tuple_t_uint256t_uint256_fromMemory(headStart, dataEnd) -> value0, value1 {
            if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            {

                let offset := 0

                value0 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 32

                value1 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
            }

        }

        function copy_arguments_for_constructor_51_object_Keccak_52() -> ret_param_0, ret_param_1 {
            let programSize := datasize("Keccak_52")
            let argSize := sub(codesize(), programSize)

            let memoryDataOffset := allocate_memory(argSize)
            codecopy(memoryDataOffset, programSize, argSize)

            ret_param_0, ret_param_1 := abi_decode_tuple_t_uint256t_uint256_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
        }

        function cleanup_t_rational_100_by_1(value) -> cleaned {
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

        function leftAlign_t_uint256(value) -> aligned {
            aligned := value
        }

        function abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value, pos) {
            mstore(pos, leftAlign_t_uint256(cleanup_t_uint256(value)))
        }

        function abi_encode_tuple_packed_t_uint256__to_t_uint256__nonPadded_inplace_fromStack(pos , value0) -> end {

            abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value0,  pos)
            pos := add(pos, 32)

            end := pos
        }

        function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
            data := ptr

            data := add(ptr, 0x20)

        }

        function array_length_t_bytes_memory_ptr(value) -> length {

            length := mload(value)

        }

        function shift_right_0_unsigned(value) -> newValue {
            newValue :=

            shr(0, value)

        }

        function convert_t_bytes32_to_t_uint256(value) -> converted {
            converted := convert_t_uint256_to_t_uint256(shift_right_0_unsigned(value))
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

        function panic_error_0x01() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x01)
            revert(0, 0x24)
        }

        function assert_helper(condition) {
            if iszero(condition) { panic_error_0x01() }
        }

        /// @ast-id 51
        /// @src 0:242:487  "constructor(uint256 x, uint256 y) {..."
        function constructor_Keccak_52(var_x_7, var_y_9) {
            print_sigma()
            /// @src 0:242:487  "constructor(uint256 x, uint256 y) {..."

            /// @src 0:334:337  "100"
            let expr_15 := 0x64
            /// @src 0:316:337  "storageSlots[1] = 100"
            let _4 := convert_t_rational_100_by_1_to_t_uint256(expr_15)
            /// @src 0:316:328  "storageSlots"
            let _5_slot := 0x00
            let expr_12_slot := _5_slot
            /// @src 0:329:330  "1"
            let expr_13 := 0x01
            /// @src 0:316:331  "storageSlots[1]"
            let _6 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_12_slot,expr_13)
            /// @src 0:316:337  "storageSlots[1] = 100"
            update_storage_value_offset_0_t_uint256_to_t_uint256(_6, _4)
            let expr_16 := _4
            /// @src 0:396:397  "x"
            let _7 := var_x_7
            let expr_26 := _7
            /// @src 0:379:398  "abi.encodePacked(x)"

            let expr_27_mpos := allocate_unbounded()
            let _8 := add(expr_27_mpos, 0x20)

            let _9 := abi_encode_tuple_packed_t_uint256__to_t_uint256__nonPadded_inplace_fromStack(_8, expr_26)
            mstore(expr_27_mpos, sub(_9, add(expr_27_mpos, 0x20)))
            finalize_allocation(expr_27_mpos, sub(_9, expr_27_mpos))
            /// @src 0:369:399  "keccak256(abi.encodePacked(x))"
            let expr_28 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_27_mpos), array_length_t_bytes_memory_ptr(expr_27_mpos))
            /// @src 0:361:400  "uint256(keccak256(abi.encodePacked(x)))"
            let expr_29 := convert_t_bytes32_to_t_uint256(expr_28)
            /// @src 0:343:355  "storageSlots"
            let _10_slot := 0x00
            let expr_18_slot := _10_slot
            /// @src 0:356:357  "2"
            let expr_19 := 0x02
            /// @src 0:343:358  "storageSlots[2]"
            let _11 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_2_by_1(expr_18_slot,expr_19)
            /// @src 0:343:400  "storageSlots[2] = uint256(keccak256(abi.encodePacked(x)))"
            update_storage_value_offset_0_t_uint256_to_t_uint256(_11, expr_29)
            let expr_30 := expr_29
            /// @src 0:459:460  "y"
            let _12 := var_y_9
            let expr_40 := _12
            /// @src 0:442:461  "abi.encodePacked(y)"

            let expr_41_mpos := allocate_unbounded()
            let _13 := add(expr_41_mpos, 0x20)

            let _14 := abi_encode_tuple_packed_t_uint256__to_t_uint256__nonPadded_inplace_fromStack(_13, expr_40)
            mstore(expr_41_mpos, sub(_14, add(expr_41_mpos, 0x20)))
            finalize_allocation(expr_41_mpos, sub(_14, expr_41_mpos))
            /// @src 0:432:462  "keccak256(abi.encodePacked(y))"
            let expr_42 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_41_mpos), array_length_t_bytes_memory_ptr(expr_41_mpos))
            /// @src 0:424:463  "uint256(keccak256(abi.encodePacked(y)))"
            let expr_43 := convert_t_bytes32_to_t_uint256(expr_42)
            /// @src 0:406:418  "storageSlots"
            let _15_slot := 0x00
            let expr_32_slot := _15_slot
            /// @src 0:419:420  "3"
            let expr_33 := 0x03
            /// @src 0:406:421  "storageSlots[3]"
            let _16 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_3_by_1(expr_32_slot,expr_33)
            /// @src 0:406:463  "storageSlots[3] = uint256(keccak256(abi.encodePacked(y)))"
            update_storage_value_offset_0_t_uint256_to_t_uint256(_16, expr_43)
            let expr_44 := expr_43
            /// @src 0:477:481  "true"
            let expr_47 := 0x01
            /// @src 0:470:482  "assert(true)"
            assert_helper(expr_47)

        }
        /// @src 0:57:489  "contract Keccak {..."

    }
    /// @use-src 0:"keccak.sol"
    object "Keccak_52_deployed" {
        code {
            /// @src 0:57:489  "contract Keccak {..."
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

        data ".metadata" hex"a264697066735822122058cbcf95aa33b9124007995baef3ea2c8c79a4e456d967dc50f632aa6cf1ac5764736f6c634300081c0033"
    }

}


