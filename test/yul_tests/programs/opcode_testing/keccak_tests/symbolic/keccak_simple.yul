/// @use-src 0:"keccak_simple.sol"
object "Keccak_32" {
    code {
        /// @src 0:57:396  "contract Keccak {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := copy_arguments_for_constructor_31_object_Keccak_32()
        constructor_Keccak_32(_1)

        let _2 := allocate_unbounded()
        codecopy(_2, dataoffset("Keccak_32_deployed"), datasize("Keccak_32_deployed"))

        return(_2, datasize("Keccak_32_deployed"))

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

        function abi_decode_tuple_t_uint256_fromMemory(headStart, dataEnd) -> value0 {
            if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            {

                let offset := 0

                value0 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
            }

        }

        function copy_arguments_for_constructor_31_object_Keccak_32() -> ret_param_0 {
            let programSize := datasize("Keccak_32")
            let argSize := sub(codesize(), programSize)

            let memoryDataOffset := allocate_memory(argSize)
            codecopy(memoryDataOffset, programSize, argSize)

            ret_param_0 := abi_decode_tuple_t_uint256_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
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

        /// @ast-id 31
        /// @src 0:242:394  "constructor(uint256 x) {..."
        function constructor_Keccak_32(var_x_7) {

            /// @src 0:242:394  "constructor(uint256 x) {..."

            /// @src 0:323:326  "100"
            let expr_13 := 0x64
            /// @src 0:305:326  "storageSlots[1] = 100"
            let _3 := convert_t_rational_100_by_1_to_t_uint256(expr_13)
            /// @src 0:305:317  "storageSlots"
            let _4_slot := 0x00
            let expr_10_slot := _4_slot
            /// @src 0:318:319  "1"
            let expr_11 := 0x01
            /// @src 0:305:320  "storageSlots[1]"
            let _5 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_10_slot,expr_11)
            /// @src 0:305:326  "storageSlots[1] = 100"
            update_storage_value_offset_0_t_uint256_to_t_uint256(_5, _3)
            let expr_14 := _3
            /// @src 0:385:386  "x"
            let _6 := var_x_7
            let expr_24 := _6
            /// @src 0:368:387  "abi.encodePacked(x)"

            let expr_25_mpos := allocate_unbounded()
            let _7 := add(expr_25_mpos, 0x20)

            let _8 := abi_encode_tuple_packed_t_uint256__to_t_uint256__nonPadded_inplace_fromStack(_7, expr_24)
            mstore(expr_25_mpos, sub(_8, add(expr_25_mpos, 0x20)))
            finalize_allocation(expr_25_mpos, sub(_8, expr_25_mpos))
            /// @src 0:358:388  "keccak256(abi.encodePacked(x))"
            print(array_dataslot_t_bytes_memory_ptr(expr_25_mpos))
            print(array_length_t_bytes_memory_ptr(expr_25_mpos))
            print_mem()
            print_z3()
            let expr_26 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_25_mpos), array_length_t_bytes_memory_ptr(expr_25_mpos))
            /// @src 0:350:389  "uint256(keccak256(abi.encodePacked(x)))"
            let expr_27 := convert_t_bytes32_to_t_uint256(expr_26)
            /// @src 0:332:344  "storageSlots"
            let _9_slot := 0x00
            let expr_16_slot := _9_slot
            /// @src 0:345:346  "2"
            let expr_17 := 0x02
            /// @src 0:332:347  "storageSlots[2]"
            let _10 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_2_by_1(expr_16_slot,expr_17)
            
            /// @src 0:332:389  "storageSlots[2] = uint256(keccak256(abi.encodePacked(x)))"
            update_storage_value_offset_0_t_uint256_to_t_uint256(_10, expr_27)
            let expr_28 := expr_27

        }
        /// @src 0:57:396  "contract Keccak {..."

    }
    /// @use-src 0:"keccak_simple.sol"
    object "Keccak_32_deployed" {
        code {
            /// @src 0:57:396  "contract Keccak {..."
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

        data ".metadata" hex"a26469706673582212200ec0d2bc7a73399614335f0012be211d55baa165823f37de5510103fac6a068164736f6c634300081c0033"
    }

}


