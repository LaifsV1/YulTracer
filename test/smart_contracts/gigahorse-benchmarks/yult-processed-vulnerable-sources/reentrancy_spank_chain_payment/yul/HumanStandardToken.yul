
/// @use-src 0:"src/LedgerChannel.sol"
object "HumanStandardToken_922" {
    code {
        /// @src 0:9423:12114  "contract HumanStandardToken is StandardToken {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1, _2, _3, _4 := copy_arguments_for_constructor_864_object_HumanStandardToken_922()
        constructor_HumanStandardToken_922(_1, _2, _3, _4)

        let _5 := allocate_unbounded()
        codecopy(_5, dataoffset("HumanStandardToken_922_deployed"), datasize("HumanStandardToken_922_deployed"))

        return(_5, datasize("HumanStandardToken_922_deployed"))

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

        function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
            revert(0, 0)
        }

        function revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() {
            revert(0, 0)
        }

        function array_allocation_size_t_string_memory_ptr(length) -> size {
            // Make sure we can allocate memory without overflow
            if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

            size := round_up_to_mul_of_32(length)

            // add length slot
            size := add(size, 0x20)

        }

        function copy_memory_to_memory_with_cleanup(src, dst, length) {

            mcopy(dst, src, length)
            mstore(add(dst, length), 0)

        }

        function abi_decode_available_length_t_string_memory_ptr_fromMemory(src, length, end) -> array {
            array := allocate_memory(array_allocation_size_t_string_memory_ptr(length))
            mstore(array, length)
            let dst := add(array, 0x20)
            if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
            copy_memory_to_memory_with_cleanup(src, dst, length)
        }

        // string
        function abi_decode_t_string_memory_ptr_fromMemory(offset, end) -> array {
            if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
            let length := mload(offset)
            array := abi_decode_available_length_t_string_memory_ptr_fromMemory(add(offset, 0x20), length, end)
        }

        function cleanup_t_uint8(value) -> cleaned {
            cleaned := and(value, 0xff)
        }

        function validator_revert_t_uint8(value) {
            if iszero(eq(value, cleanup_t_uint8(value))) { revert(0, 0) }
        }

        function abi_decode_t_uint8_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_uint8(value)
        }

        function abi_decode_tuple_t_uint256t_string_memory_ptrt_uint8t_string_memory_ptr_fromMemory(headStart, dataEnd) -> value0, value1, value2, value3 {
            if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            {

                let offset := 0

                value0 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := mload(add(headStart, 32))
                if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                value1 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 64

                value2 := abi_decode_t_uint8_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := mload(add(headStart, 96))
                if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                value3 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
            }

        }

        function copy_arguments_for_constructor_864_object_HumanStandardToken_922() -> ret_param_0, ret_param_1, ret_param_2, ret_param_3 {

            let programSize := datasize("HumanStandardToken_922")
            let argSize := sub(codesize(), programSize)

            let memoryDataOffset := allocate_memory(argSize)
            codecopy(memoryDataOffset, programSize, argSize)

            ret_param_0, ret_param_1, ret_param_2, ret_param_3 := abi_decode_tuple_t_uint256t_string_memory_ptrt_uint8t_string_memory_ptr_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
        }

        function panic_error_0x00() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x00)
            revert(0, 0x24)
        }

        function panic_error_0x22() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x22)
            revert(0, 0x24)
        }

        function extract_byte_array_length(data) -> length {
            length := div(data, 2)
            let outOfPlaceEncoding := and(data, 1)
            if iszero(outOfPlaceEncoding) {
                length := and(length, 0x7f)
            }

            if eq(outOfPlaceEncoding, lt(length, 32)) {
                panic_error_0x22()
            }
        }

        function array_dataslot_t_bytes_storage_ptr(ptr) -> data {
            data := ptr

            mstore(0, ptr)
            data := keccak256(0, 0x20)

        }

        function divide_by_32_ceil(value) -> result {
            result := div(add(value, 31), 32)
        }

        function shift_left_dynamic(bits, value) -> newValue {
            newValue :=

            shl(bits, value)

        }

        function update_byte_slice_dynamic32(value, shiftBytes, toInsert) -> result {
            let shiftBits := mul(shiftBytes, 8)
            let mask := shift_left_dynamic(shiftBits, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
            toInsert := shift_left_dynamic(shiftBits, toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function identity(value) -> ret {
            ret := value
        }

        function convert_t_uint256_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
        }

        function prepare_store_t_uint256(value) -> ret {
            ret := value
        }

        function update_storage_value_t_uint256_to_t_uint256(slot, offset, value_0) {
            let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
            sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_uint256(convertedValue_0)))
        }

        function zero_value_for_split_t_uint256() -> ret {
            ret := 0
        }

        function storage_set_to_zero_t_uint256(slot, offset) {
            let zero_0 := zero_value_for_split_t_uint256()
            update_storage_value_t_uint256_to_t_uint256(slot, offset, zero_0)
        }

        function clear_storage_range_t_bytes1(start, end) {
            for {} lt(start, end) { start := add(start, 1) }
            {
                storage_set_to_zero_t_uint256(start, 0)
            }
        }

        function clean_up_bytearray_end_slots_t_bytes_storage_ptr(array, len, startIndex) {

            if gt(len, 31) {
                let dataArea := array_dataslot_t_bytes_storage_ptr(array)
                let deleteStart := add(dataArea, divide_by_32_ceil(startIndex))
                // If we are clearing array to be short byte array, we want to clear only data starting from array data area.
                if lt(startIndex, 32) { deleteStart := dataArea }
                clear_storage_range_t_bytes1(deleteStart, add(dataArea, divide_by_32_ceil(len)))
            }

        }

        function copy_literal_to_storage_d6d58ef494a91661d08cde370ab3ac80b175fdf7fb2bea79e75e8276633326a2(slot) {

            let oldLen := extract_byte_array_length(sload(slot))
            clean_up_bytearray_end_slots_t_bytes_storage_ptr(slot, oldLen, 4)
            sstore(slot, add("H0.1", 8))

        }

        function update_storage_value_offset_0_t_stringliteral_d6d58ef494a91661d08cde370ab3ac80b175fdf7fb2bea79e75e8276633326a2_to_t_string_storage(slot) {

            copy_literal_to_storage_d6d58ef494a91661d08cde370ab3ac80b175fdf7fb2bea79e75e8276633326a2(slot)
        }

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
        }

        function convert_t_uint160_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
        }

        function convert_t_uint160_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_uint160(value)
        }

        function convert_t_address_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_address(value)
        }

        function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
            mstore(0, convert_t_address_to_t_address(key))
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

        function update_storage_value_offset_0_t_uint256_to_t_uint256(slot, value_0) {
            let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
        }

        function array_length_t_string_memory_ptr(value) -> length {

            length := mload(value)

        }

        function array_dataslot_t_string_storage(ptr) -> data {
            data := ptr

            mstore(0, ptr)
            data := keccak256(0, 0x20)

        }

        function clean_up_bytearray_end_slots_t_string_storage(array, len, startIndex) {

            if gt(len, 31) {
                let dataArea := array_dataslot_t_string_storage(array)
                let deleteStart := add(dataArea, divide_by_32_ceil(startIndex))
                // If we are clearing array to be short byte array, we want to clear only data starting from array data area.
                if lt(startIndex, 32) { deleteStart := dataArea }
                clear_storage_range_t_bytes1(deleteStart, add(dataArea, divide_by_32_ceil(len)))
            }

        }

        function shift_right_unsigned_dynamic(bits, value) -> newValue {
            newValue :=

            shr(bits, value)

        }

        function mask_bytes_dynamic(data, bytes) -> result {
            let mask := not(shift_right_unsigned_dynamic(mul(8, bytes), not(0)))
            result := and(data, mask)
        }
        function extract_used_part_and_set_length_of_short_byte_array(data, len) -> used {
            // we want to save only elements that are part of the array after resizing
            // others should be set to zero
            data := mask_bytes_dynamic(data, len)
            used := or(data, mul(2, len))
        }
        function copy_byte_array_to_storage_from_t_string_memory_ptr_to_t_string_storage(slot, src) {

            let newLen := array_length_t_string_memory_ptr(src)
            // Make sure array length is sane
            if gt(newLen, 0xffffffffffffffff) { panic_error_0x41() }

            let oldLen := extract_byte_array_length(sload(slot))

            // potentially truncate data
            clean_up_bytearray_end_slots_t_string_storage(slot, oldLen, newLen)

            let srcOffset := 0

            srcOffset := 0x20

            switch gt(newLen, 31)
            case 1 {
                let loopEnd := and(newLen, not(0x1f))

                let dstPtr := array_dataslot_t_string_storage(slot)
                let i := 0
                for { } lt(i, loopEnd) { i := add(i, 0x20) } {
                    sstore(dstPtr, mload(add(src, srcOffset)))
                    dstPtr := add(dstPtr, 1)
                    srcOffset := add(srcOffset, 32)
                }
                if lt(loopEnd, newLen) {
                    let lastValue := mload(add(src, srcOffset))
                    sstore(dstPtr, mask_bytes_dynamic(lastValue, and(newLen, 0x1f)))
                }
                sstore(slot, add(mul(newLen, 2), 1))
            }
            default {
                let value := 0
                if newLen {
                    value := mload(add(src, srcOffset))
                }
                sstore(slot, extract_used_part_and_set_length_of_short_byte_array(value, newLen))
            }
        }

        function update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(slot, value_0) {

            copy_byte_array_to_storage_from_t_string_memory_ptr_to_t_string_storage(slot, value_0)
        }

        function update_byte_slice_1_shift_0(value, toInsert) -> result {
            let mask := 255
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function convert_t_uint8_to_t_uint8(value) -> converted {
            converted := cleanup_t_uint8(identity(cleanup_t_uint8(value)))
        }

        function prepare_store_t_uint8(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_0_t_uint8_to_t_uint8(slot, value_0) {
            let convertedValue_0 := convert_t_uint8_to_t_uint8(value_0)
            sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_uint8(convertedValue_0)))
        }

        /// @ast-id 864
        /// @src 0:10248:10912  "constructor(..."
        function constructor_HumanStandardToken_922(var__initialAmount_831, var__tokenName_833_mpos, var__decimalUnits_835, var__tokenSymbol_837_mpos) {

            /// @src 0:10248:10912  "constructor(..."
            constructor_StandardToken_818()
            /// @src 0:10169:10175  "'H0.1'"
            update_storage_value_offset_0_t_stringliteral_d6d58ef494a91661d08cde370ab3ac80b175fdf7fb2bea79e75e8276633326a2_to_t_string_storage(0x06)

            /// @src 0:10447:10461  "_initialAmount"
            let _6 := var__initialAmount_831
            let expr_844 := _6
            /// @src 0:10424:10432  "balances"
            let _7_slot := 0x01
            let expr_840_slot := _7_slot
            /// @src 0:10433:10443  "msg.sender"
            let expr_842 := caller()
            /// @src 0:10424:10444  "balances[msg.sender]"
            let _8 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_840_slot,expr_842)
            /// @src 0:10424:10461  "balances[msg.sender] = _initialAmount"
            update_storage_value_offset_0_t_uint256_to_t_uint256(_8, expr_844)
            let expr_845 := expr_844
            /// @src 0:10539:10553  "_initialAmount"
            let _9 := var__initialAmount_831
            let expr_848 := _9
            /// @src 0:10525:10553  "totalSupply = _initialAmount"
            update_storage_value_offset_0_t_uint256_to_t_uint256(0x00, expr_848)
            let expr_849 := expr_848
            /// @src 0:10617:10627  "_tokenName"
            let _10_mpos := var__tokenName_833_mpos
            let expr_852_mpos := _10_mpos
            /// @src 0:10610:10627  "name = _tokenName"
            update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(0x03, expr_852_mpos)
            let _11_slot := 0x03
            let expr_853_slot := _11_slot
            /// @src 0:10720:10733  "_decimalUnits"
            let _12 := var__decimalUnits_835
            let expr_856 := _12
            /// @src 0:10709:10733  "decimals = _decimalUnits"
            update_storage_value_offset_0_t_uint8_to_t_uint8(0x04, expr_856)
            let expr_857 := expr_856
            /// @src 0:10823:10835  "_tokenSymbol"
            let _13_mpos := var__tokenSymbol_837_mpos
            let expr_860_mpos := _13_mpos
            /// @src 0:10814:10835  "symbol = _tokenSymbol"
            update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(0x05, expr_860_mpos)
            let _14_slot := 0x05
            let expr_861_slot := _14_slot

        }
        /// @src 0:9423:12114  "contract HumanStandardToken is StandardToken {..."

        /// @src 0:7490:9420  "contract StandardToken is Token {..."
        function constructor_StandardToken_818() {

            /// @src 0:7490:9420  "contract StandardToken is Token {..."
            constructor_Token_71()

        }
        /// @src 0:9423:12114  "contract HumanStandardToken is StandardToken {..."

        /// @src 0:431:2824  "abstract contract Token {..."
        function constructor_Token_71() {

            /// @src 0:431:2824  "abstract contract Token {..."

        }
        /// @src 0:9423:12114  "contract HumanStandardToken is StandardToken {..."

    }
    /// @use-src 0:"src/LedgerChannel.sol"
    object "HumanStandardToken_922_deployed" {
        code {
            /// @src 0:9423:12114  "contract HumanStandardToken is StandardToken {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x06fdde03
                {
                    // name()

                    external_fun_name_822()
                }

                case 0x095ea7b3
                {
                    // approve(address,uint256)

                    external_fun_approve_790()
                }

                case 0x18160ddd
                {
                    // totalSupply()

                    external_fun_totalSupply_4()
                }

                case 0x23b872dd
                {
                    // transferFrom(address,address,uint256)

                    external_fun_transferFrom_748()
                }

                case 0x313ce567
                {
                    // decimals()

                    external_fun_decimals_824()
                }

                case 0x54fd4d50
                {
                    // version()

                    external_fun_version_829()
                }

                case 0x70a08231
                {
                    // balanceOf(address)

                    external_fun_balanceOf_761()
                }

                case 0x95d89b41
                {
                    // symbol()

                    external_fun_symbol_826()
                }

                case 0xa9059cbb
                {
                    // transfer(address,uint256)

                    external_fun_transfer_689()
                }

                case 0xcae9ca51
                {
                    // approveAndCall(address,uint256,bytes)

                    external_fun_approveAndCall_921()
                }

                case 0xdd62ed3e
                {
                    // allowance(address,address)

                    external_fun_allowance_807()
                }

                default {}
            }

            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function panic_error_0x00() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x00)
                revert(0, 0x24)
            }

            function panic_error_0x22() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x22)
                revert(0, 0x24)
            }

            function extract_byte_array_length(data) -> length {
                length := div(data, 2)
                let outOfPlaceEncoding := and(data, 1)
                if iszero(outOfPlaceEncoding) {
                    length := and(length, 0x7f)
                }

                if eq(outOfPlaceEncoding, lt(length, 32)) {
                    panic_error_0x22()
                }
            }

            function array_storeLengthForEncoding_t_string_memory_ptr(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_dataslot_t_string_storage(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            // string -> string
            function abi_encode_t_string_storage_to_t_string_memory_ptr(value, pos) -> ret {
                let slotValue := sload(value)
                let length := extract_byte_array_length(slotValue)
                pos := array_storeLengthForEncoding_t_string_memory_ptr(pos, length)
                switch and(slotValue, 1)
                case 0 {
                    // short byte array
                    mstore(pos, and(slotValue, not(0xff)))
                    ret := add(pos, mul(0x20, iszero(iszero(length))))
                }
                case 1 {
                    // long byte array
                    let dataPos := array_dataslot_t_string_storage(value)
                    let i := 0
                    for { } lt(i, length) { i := add(i, 0x20) } {
                        mstore(add(pos, i), sload(dataPos))
                        dataPos := add(dataPos, 1)
                    }
                    ret := add(pos, i)
                }
            }

            function abi_encodeUpdatedPos_t_string_storage_to_t_string_memory_ptr(value0, pos) -> updatedPos {
                updatedPos := abi_encode_t_string_storage_to_t_string_memory_ptr(value0, pos)
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

            function copy_array_from_storage_to_memory_t_string_storage(slot) -> memPtr {
                memPtr := allocate_unbounded()
                let end := abi_encodeUpdatedPos_t_string_storage_to_t_string_memory_ptr(slot, memPtr)
                finalize_allocation(memPtr, sub(end, memPtr))
            }

            function read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset) -> value {
                if gt(offset, 0) { panic_error_0x00() }
                value := copy_array_from_storage_to_memory_t_string_storage(slot)
            }

            /// @ast-id 822
            /// @src 0:9811:9829  "string public name"
            function getter_fun_name_822() -> ret_mpos {

                let slot := 3
                let offset := 0

                ret_mpos := read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset)

            }
            /// @src 0:9423:12114  "contract HumanStandardToken is StandardToken {..."

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function copy_memory_to_memory_with_cleanup(src, dst, length) {

                mcopy(dst, src, length)
                mstore(add(dst, length), 0)

            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value0,  tail)

            }

            function external_fun_name_822() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_name_822()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function abi_decode_t_address(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_address(value)
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_t_addresst_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_tuple_t_bool__to_t_bool__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_approve_790() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_approve_790(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_dynamict_uint256(slot_value, offset) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_uint256(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_uint256(sload(slot), offset)

            }

            /// @ast-id 4
            /// @src 0:937:963  "uint256 public totalSupply"
            function getter_fun_totalSupply_4() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 0:9423:12114  "contract HumanStandardToken is StandardToken {..."

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_totalSupply_4() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_totalSupply_4()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_addresst_uint256(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_transferFrom_748() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_transferFrom_748(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_from_storage_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function extract_from_storage_value_dynamict_uint8(slot_value, offset) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_uint8(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_uint8(sload(slot), offset)

            }

            /// @ast-id 824
            /// @src 0:9883:9904  "uint8 public decimals"
            function getter_fun_decimals_824() -> ret {

                let slot := 4
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint8(slot, offset)

            }
            /// @src 0:9423:12114  "contract HumanStandardToken is StandardToken {..."

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function abi_encode_t_uint8_to_t_uint8_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
            }

            function abi_encode_tuple_t_uint8__to_t_uint8__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint8_to_t_uint8_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_decimals_824() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_decimals_824()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 829
            /// @src 0:10145:10175  "string public version = 'H0.1'"
            function getter_fun_version_829() -> ret_mpos {

                let slot := 6
                let offset := 0

                ret_mpos := read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset)

            }
            /// @src 0:9423:12114  "contract HumanStandardToken is StandardToken {..."

            function external_fun_version_829() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_version_829()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_balanceOf_761() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  fun_balanceOf_761(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 826
            /// @src 0:10078:10098  "string public symbol"
            function getter_fun_symbol_826() -> ret_mpos {

                let slot := 5
                let offset := 0

                ret_mpos := read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset)

            }
            /// @src 0:9423:12114  "contract HumanStandardToken is StandardToken {..."

            function external_fun_symbol_826() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_symbol_826()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_transfer_689() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_transfer_689(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() {
                revert(0, 0)
            }

            function allocate_memory(size) -> memPtr {
                memPtr := allocate_unbounded()
                finalize_allocation(memPtr, size)
            }

            function array_allocation_size_t_bytes_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function copy_calldata_to_memory_with_cleanup(src, dst, length) {

                calldatacopy(dst, src, length)
                mstore(add(dst, length), 0)

            }

            function abi_decode_available_length_t_bytes_memory_ptr(src, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_bytes_memory_ptr(length))
                mstore(array, length)
                let dst := add(array, 0x20)
                if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
                copy_calldata_to_memory_with_cleanup(src, dst, length)
            }

            // bytes
            function abi_decode_t_bytes_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := calldataload(offset)
                array := abi_decode_available_length_t_bytes_memory_ptr(add(offset, 0x20), length, end)
            }

            function abi_decode_tuple_t_addresst_uint256t_bytes_memory_ptr(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 64))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_approveAndCall_921() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_uint256t_bytes_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_approveAndCall_921(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_address(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_allowance_807() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_address(4, calldatasize())
                let ret_0 :=  fun_allowance_807(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
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

            /// @ast-id 790
            /// @src 0:8927:9150  "function approve(address _spender, uint256 _value) override public returns (bool success) {..."
            function fun_approve_790(var__spender_763, var__value_765) -> var_success_769 {
                /// @src 0:9003:9015  "bool success"
                let zero_t_bool_1 := zero_value_for_split_t_bool()
                var_success_769 := zero_t_bool_1

                /// @src 0:9060:9066  "_value"
                let _2 := var__value_765
                let expr_777 := _2
                /// @src 0:9028:9035  "allowed"
                let _3_slot := 0x02
                let expr_771_slot := _3_slot
                /// @src 0:9036:9046  "msg.sender"
                let expr_773 := caller()
                /// @src 0:9028:9047  "allowed[msg.sender]"
                let _4 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_771_slot,expr_773)
                let _5_slot := _4
                let expr_775_slot := _5_slot
                /// @src 0:9048:9056  "_spender"
                let _6 := var__spender_763
                let expr_774 := _6
                /// @src 0:9028:9057  "allowed[msg.sender][_spender]"
                let _7 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_775_slot,expr_774)
                /// @src 0:9028:9066  "allowed[msg.sender][_spender] = _value"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_7, expr_777)
                let expr_778 := expr_777
                /// @src 0:9091:9101  "msg.sender"
                let expr_782 := caller()
                /// @src 0:9103:9111  "_spender"
                let _8 := var__spender_763
                let expr_783 := _8
                /// @src 0:9113:9119  "_value"
                let _9 := var__value_765
                let expr_784 := _9
                /// @src 0:9082:9120  "Approval(msg.sender, _spender, _value)"
                let _10 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                let _11 := convert_t_address_to_t_address(expr_782)
                let _12 := convert_t_address_to_t_address(expr_783)
                {
                    let _13 := allocate_unbounded()
                    let _14 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_13 , expr_784)
                    log3(_13, sub(_14, _13) , _10, _11, _12)
                }/// @src 0:9138:9142  "true"
                let expr_787 := 0x01
                /// @src 0:9131:9142  "return true"
                var_success_769 := expr_787
                leave

            }
            /// @src 0:9423:12114  "contract HumanStandardToken is StandardToken {..."

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function extract_from_storage_value_offset_0_t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0_t_uint256(sload(slot))

            }

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            /// @ast-id 748
            /// @src 0:8169:8789  "function transferFrom(address _from, address _to, uint256 _value) override public returns (bool success) {..."
            function fun_transferFrom_748(var__from_691, var__to_693, var__value_695) -> var_success_699 {
                /// @src 0:8260:8272  "bool success"
                let zero_t_bool_15 := zero_value_for_split_t_bool()
                var_success_699 := zero_t_bool_15

                /// @src 0:8532:8540  "balances"
                let _16_slot := 0x01
                let expr_702_slot := _16_slot
                /// @src 0:8541:8546  "_from"
                let _17 := var__from_691
                let expr_703 := _17
                /// @src 0:8532:8547  "balances[_from]"
                let _18 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_702_slot,expr_703)
                let _19 := read_from_storage_split_offset_0_t_uint256(_18)
                let expr_704 := _19
                /// @src 0:8551:8557  "_value"
                let _20 := var__value_695
                let expr_705 := _20
                /// @src 0:8532:8557  "balances[_from] >= _value"
                let expr_706 := iszero(lt(cleanup_t_uint256(expr_704), cleanup_t_uint256(expr_705)))
                /// @src 0:8532:8597  "balances[_from] >= _value && allowed[_from][msg.sender] >= _value"
                let expr_715 := expr_706
                if expr_715 {
                    /// @src 0:8561:8568  "allowed"
                    let _21_slot := 0x02
                    let expr_707_slot := _21_slot
                    /// @src 0:8569:8574  "_from"
                    let _22 := var__from_691
                    let expr_708 := _22
                    /// @src 0:8561:8575  "allowed[_from]"
                    let _23 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_707_slot,expr_708)
                    let _24_slot := _23
                    let expr_709_slot := _24_slot
                    /// @src 0:8576:8586  "msg.sender"
                    let expr_711 := caller()
                    /// @src 0:8561:8587  "allowed[_from][msg.sender]"
                    let _25 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_709_slot,expr_711)
                    let _26 := read_from_storage_split_offset_0_t_uint256(_25)
                    let expr_712 := _26
                    /// @src 0:8591:8597  "_value"
                    let _27 := var__value_695
                    let expr_713 := _27
                    /// @src 0:8561:8597  "allowed[_from][msg.sender] >= _value"
                    let expr_714 := iszero(lt(cleanup_t_uint256(expr_712), cleanup_t_uint256(expr_713)))
                    /// @src 0:8532:8597  "balances[_from] >= _value && allowed[_from][msg.sender] >= _value"
                    expr_715 := expr_714
                }
                /// @src 0:8524:8598  "require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value)"
                require_helper(expr_715)
                /// @src 0:8626:8632  "_value"
                let _28 := var__value_695
                let expr_721 := _28
                /// @src 0:8609:8617  "balances"
                let _29_slot := 0x01
                let expr_718_slot := _29_slot
                /// @src 0:8618:8621  "_to"
                let _30 := var__to_693
                let expr_719 := _30
                /// @src 0:8609:8622  "balances[_to]"
                let _31 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_718_slot,expr_719)
                /// @src 0:8609:8632  "balances[_to] += _value"
                let _32 := read_from_storage_split_offset_0_t_uint256(_31)
                let expr_722 := checked_add_t_uint256(_32, expr_721)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_31, expr_722)
                /// @src 0:8662:8668  "_value"
                let _33 := var__value_695
                let expr_727 := _33
                /// @src 0:8643:8651  "balances"
                let _34_slot := 0x01
                let expr_724_slot := _34_slot
                /// @src 0:8652:8657  "_from"
                let _35 := var__from_691
                let expr_725 := _35
                /// @src 0:8643:8658  "balances[_from]"
                let _36 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_724_slot,expr_725)
                /// @src 0:8643:8668  "balances[_from] -= _value"
                let _37 := read_from_storage_split_offset_0_t_uint256(_36)
                let expr_728 := checked_sub_t_uint256(_37, expr_727)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_36, expr_728)
                /// @src 0:8709:8715  "_value"
                let _38 := var__value_695
                let expr_736 := _38
                /// @src 0:8679:8686  "allowed"
                let _39_slot := 0x02
                let expr_730_slot := _39_slot
                /// @src 0:8687:8692  "_from"
                let _40 := var__from_691
                let expr_731 := _40
                /// @src 0:8679:8693  "allowed[_from]"
                let _41 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_730_slot,expr_731)
                let _42_slot := _41
                let expr_734_slot := _42_slot
                /// @src 0:8694:8704  "msg.sender"
                let expr_733 := caller()
                /// @src 0:8679:8705  "allowed[_from][msg.sender]"
                let _43 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_734_slot,expr_733)
                /// @src 0:8679:8715  "allowed[_from][msg.sender] -= _value"
                let _44 := read_from_storage_split_offset_0_t_uint256(_43)
                let expr_737 := checked_sub_t_uint256(_44, expr_736)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_43, expr_737)
                /// @src 0:8740:8745  "_from"
                let _45 := var__from_691
                let expr_740 := _45
                /// @src 0:8747:8750  "_to"
                let _46 := var__to_693
                let expr_741 := _46
                /// @src 0:8752:8758  "_value"
                let _47 := var__value_695
                let expr_742 := _47
                /// @src 0:8731:8759  "Transfer(_from, _to, _value)"
                let _48 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _49 := convert_t_address_to_t_address(expr_740)
                let _50 := convert_t_address_to_t_address(expr_741)
                {
                    let _51 := allocate_unbounded()
                    let _52 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_51 , expr_742)
                    log3(_51, sub(_52, _51) , _48, _49, _50)
                }/// @src 0:8777:8781  "true"
                let expr_745 := 0x01
                /// @src 0:8770:8781  "return true"
                var_success_699 := expr_745
                leave

            }
            /// @src 0:9423:12114  "contract HumanStandardToken is StandardToken {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            /// @ast-id 761
            /// @src 0:8796:8920  "function balanceOf(address _owner) override public view returns (uint256 balance) {..."
            function fun_balanceOf_761(var__owner_750) -> var_balance_754 {
                /// @src 0:8861:8876  "uint256 balance"
                let zero_t_uint256_53 := zero_value_for_split_t_uint256()
                var_balance_754 := zero_t_uint256_53

                /// @src 0:8896:8904  "balances"
                let _54_slot := 0x01
                let expr_756_slot := _54_slot
                /// @src 0:8905:8911  "_owner"
                let _55 := var__owner_750
                let expr_757 := _55
                /// @src 0:8896:8912  "balances[_owner]"
                let _56 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_756_slot,expr_757)
                let _57 := read_from_storage_split_offset_0_t_uint256(_56)
                let expr_758 := _57
                /// @src 0:8889:8912  "return balances[_owner]"
                var_balance_754 := expr_758
                leave

            }
            /// @src 0:9423:12114  "contract HumanStandardToken is StandardToken {..."

            /// @ast-id 689
            /// @src 0:7530:8162  "function transfer(address _to, uint256 _value) override public returns (bool success) {..."
            function fun_transfer_689(var__to_649, var__value_651) -> var_success_655 {
                /// @src 0:7602:7614  "bool success"
                let zero_t_bool_58 := zero_value_for_split_t_bool()
                var_success_655 := zero_t_bool_58

                /// @src 0:7977:7985  "balances"
                let _59_slot := 0x01
                let expr_658_slot := _59_slot
                /// @src 0:7986:7996  "msg.sender"
                let expr_660 := caller()
                /// @src 0:7977:7997  "balances[msg.sender]"
                let _60 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_658_slot,expr_660)
                let _61 := read_from_storage_split_offset_0_t_uint256(_60)
                let expr_661 := _61
                /// @src 0:8001:8007  "_value"
                let _62 := var__value_651
                let expr_662 := _62
                /// @src 0:7977:8007  "balances[msg.sender] >= _value"
                let expr_663 := iszero(lt(cleanup_t_uint256(expr_661), cleanup_t_uint256(expr_662)))
                /// @src 0:7969:8008  "require(balances[msg.sender] >= _value)"
                require_helper(expr_663)
                /// @src 0:8043:8049  "_value"
                let _63 := var__value_651
                let expr_670 := _63
                /// @src 0:8019:8027  "balances"
                let _64_slot := 0x01
                let expr_666_slot := _64_slot
                /// @src 0:8028:8038  "msg.sender"
                let expr_668 := caller()
                /// @src 0:8019:8039  "balances[msg.sender]"
                let _65 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_666_slot,expr_668)
                /// @src 0:8019:8049  "balances[msg.sender] -= _value"
                let _66 := read_from_storage_split_offset_0_t_uint256(_65)
                let expr_671 := checked_sub_t_uint256(_66, expr_670)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_65, expr_671)
                /// @src 0:8077:8083  "_value"
                let _67 := var__value_651
                let expr_676 := _67
                /// @src 0:8060:8068  "balances"
                let _68_slot := 0x01
                let expr_673_slot := _68_slot
                /// @src 0:8069:8072  "_to"
                let _69 := var__to_649
                let expr_674 := _69
                /// @src 0:8060:8073  "balances[_to]"
                let _70 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_673_slot,expr_674)
                /// @src 0:8060:8083  "balances[_to] += _value"
                let _71 := read_from_storage_split_offset_0_t_uint256(_70)
                let expr_677 := checked_add_t_uint256(_71, expr_676)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_70, expr_677)
                /// @src 0:8108:8118  "msg.sender"
                let expr_681 := caller()
                /// @src 0:8120:8123  "_to"
                let _72 := var__to_649
                let expr_682 := _72
                /// @src 0:8125:8131  "_value"
                let _73 := var__value_651
                let expr_683 := _73
                /// @src 0:8099:8132  "Transfer(msg.sender, _to, _value)"
                let _74 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _75 := convert_t_address_to_t_address(expr_681)
                let _76 := convert_t_address_to_t_address(expr_682)
                {
                    let _77 := allocate_unbounded()
                    let _78 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_77 , expr_683)
                    log3(_77, sub(_78, _77) , _74, _75, _76)
                }/// @src 0:8150:8154  "true"
                let expr_686 := 0x01
                /// @src 0:8143:8154  "return true"
                var_success_655 := expr_686
                leave

            }
            /// @src 0:9423:12114  "contract HumanStandardToken is StandardToken {..."

            function convert_t_contract$_HumanStandardToken_$922_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_address_t_uint256_t_address_t_bytes_memory_ptr__to_t_address_t_uint256_t_address_t_bytes_memory_ptr__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_address_to_t_address_fromStack(value2,  add(headStart, 64))

                mstore(add(headStart, 96), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value3,  tail)

            }

            function allocate_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_bytes_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_value_for_split_t_bytes_memory_ptr() -> ret {
                ret := 96
            }

            function extract_returndata() -> data {

                switch returndatasize()
                case 0 {
                    data := zero_value_for_split_t_bytes_memory_ptr()
                }
                default {
                    data := allocate_memory_array_t_bytes_memory_ptr(returndatasize())
                    returndatacopy(add(data, 0x20), 0, returndatasize())
                }

            }

            function store_literal_in_memory_9535ff8b43530d97a69c728502360a469f7b0c9e54a2c30f7032075cd35e8fd2(memPtr) {

                mstore(add(memPtr, 0), "receiveApproval failed")

            }

            function abi_encode_t_stringliteral_9535ff8b43530d97a69c728502360a469f7b0c9e54a2c30f7032075cd35e8fd2_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 22)
                store_literal_in_memory_9535ff8b43530d97a69c728502360a469f7b0c9e54a2c30f7032075cd35e8fd2(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_9535ff8b43530d97a69c728502360a469f7b0c9e54a2c30f7032075cd35e8fd2__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_9535ff8b43530d97a69c728502360a469f7b0c9e54a2c30f7032075cd35e8fd2_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_9535ff8b43530d97a69c728502360a469f7b0c9e54a2c30f7032075cd35e8fd2(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_9535ff8b43530d97a69c728502360a469f7b0c9e54a2c30f7032075cd35e8fd2__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 921
            /// @src 0:10977:12111  "function approveAndCall(address _spender, uint256 _value, bytes memory _extraData) public returns (bool success) {..."
            function fun_approveAndCall_921(var__spender_866, var__value_868, var__extraData_870_mpos) -> var_success_873 {
                /// @src 0:11076:11088  "bool success"
                let zero_t_bool_79 := zero_value_for_split_t_bool()
                var_success_873 := zero_t_bool_79

                /// @src 0:11133:11139  "_value"
                let _80 := var__value_868
                let expr_881 := _80
                /// @src 0:11101:11108  "allowed"
                let _81_slot := 0x02
                let expr_875_slot := _81_slot
                /// @src 0:11109:11119  "msg.sender"
                let expr_877 := caller()
                /// @src 0:11101:11120  "allowed[msg.sender]"
                let _82 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_875_slot,expr_877)
                let _83_slot := _82
                let expr_879_slot := _83_slot
                /// @src 0:11121:11129  "_spender"
                let _84 := var__spender_866
                let expr_878 := _84
                /// @src 0:11101:11130  "allowed[msg.sender][_spender]"
                let _85 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_879_slot,expr_878)
                /// @src 0:11101:11139  "allowed[msg.sender][_spender] = _value"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_85, expr_881)
                let expr_882 := expr_881
                /// @src 0:11164:11174  "msg.sender"
                let expr_886 := caller()
                /// @src 0:11176:11184  "_spender"
                let _86 := var__spender_866
                let expr_887 := _86
                /// @src 0:11186:11192  "_value"
                let _87 := var__value_868
                let expr_888 := _87
                /// @src 0:11155:11193  "Approval(msg.sender, _spender, _value)"
                let _88 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                let _89 := convert_t_address_to_t_address(expr_886)
                let _90 := convert_t_address_to_t_address(expr_887)
                {
                    let _91 := allocate_unbounded()
                    let _92 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_91 , expr_888)
                    log3(_91, sub(_92, _91) , _88, _89, _90)
                }/// @src 0:11900:11910  "msg.sender"
                let expr_897 := caller()
                /// @src 0:11923:11929  "_value"
                let _93 := var__value_868
                let expr_898 := _93
                /// @src 0:11950:11954  "this"
                let expr_901_address := address()
                /// @src 0:11942:11955  "address(this)"
                let expr_902 := convert_t_contract$_HumanStandardToken_$922_to_t_address(expr_901_address)
                /// @src 0:11968:11978  "_extraData"
                let _94_mpos := var__extraData_870_mpos
                let expr_903_mpos := _94_mpos
                /// @src 0:11803:11989  "abi.encodeWithSignature(..."

                let expr_904_mpos := allocate_unbounded()
                let _95 := add(expr_904_mpos, 0x20)

                mstore(_95, 0x8f4ffcb100000000000000000000000000000000000000000000000000000000)
                _95 := add(_95, 4)

                let _96 := abi_encode_tuple_t_address_t_uint256_t_address_t_bytes_memory_ptr__to_t_address_t_uint256_t_address_t_bytes_memory_ptr__fromStack(_95, expr_897, expr_898, expr_902, expr_903_mpos)
                mstore(expr_904_mpos, sub(_96, add(expr_904_mpos, 0x20)))
                finalize_allocation(expr_904_mpos, sub(_96, expr_904_mpos))
                /// @src 0:11781:11989  "(bytes memory data) = abi.encodeWithSignature(..."
                let var_data_892_mpos := expr_904_mpos
                /// @src 0:12014:12022  "_spender"
                let _97 := var__spender_866
                let expr_908 := _97
                /// @src 0:12014:12027  "_spender.call"
                let expr_909_address := expr_908
                /// @src 0:12028:12032  "data"
                let _98_mpos := var_data_892_mpos
                let expr_910_mpos := _98_mpos
                /// @src 0:12014:12033  "_spender.call(data)"

                let _99 := add(expr_910_mpos, 0x20)
                let _100 := mload(expr_910_mpos)

                let expr_911_component_1 := call(gas(), expr_909_address,  0,  _99, _100, 0, 0)

                let expr_911_component_2_mpos := extract_returndata()
                /// @src 0:12000:12033  "(bool ok, ) = _spender.call(data)"
                let var_ok_907 := expr_911_component_1
                /// @src 0:12052:12054  "ok"
                let _101 := var_ok_907
                let expr_914 := _101
                /// @src 0:12044:12081  "require(ok, \"receiveApproval failed\")"
                require_helper_t_stringliteral_9535ff8b43530d97a69c728502360a469f7b0c9e54a2c30f7032075cd35e8fd2(expr_914)
                /// @src 0:12099:12103  "true"
                let expr_918 := 0x01
                /// @src 0:12092:12103  "return true"
                var_success_873 := expr_918
                leave

            }
            /// @src 0:9423:12114  "contract HumanStandardToken is StandardToken {..."

            /// @ast-id 807
            /// @src 0:9157:9308  "function allowance(address _owner, address _spender) override public view returns (uint256 remaining) {..."
            function fun_allowance_807(var__owner_792, var__spender_794) -> var_remaining_798 {
                /// @src 0:9240:9257  "uint256 remaining"
                let zero_t_uint256_102 := zero_value_for_split_t_uint256()
                var_remaining_798 := zero_t_uint256_102

                /// @src 0:9275:9282  "allowed"
                let _103_slot := 0x02
                let expr_800_slot := _103_slot
                /// @src 0:9283:9289  "_owner"
                let _104 := var__owner_792
                let expr_801 := _104
                /// @src 0:9275:9290  "allowed[_owner]"
                let _105 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_800_slot,expr_801)
                let _106_slot := _105
                let expr_802_slot := _106_slot
                /// @src 0:9291:9299  "_spender"
                let _107 := var__spender_794
                let expr_803 := _107
                /// @src 0:9275:9300  "allowed[_owner][_spender]"
                let _108 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_802_slot,expr_803)
                let _109 := read_from_storage_split_offset_0_t_uint256(_108)
                let expr_804 := _109
                /// @src 0:9268:9300  "return allowed[_owner][_spender]"
                var_remaining_798 := expr_804
                leave

            }
            /// @src 0:9423:12114  "contract HumanStandardToken is StandardToken {..."

        }

        data ".metadata" hex"a26469706673582212207b59cc7eb40701e228b6596f38ec25f0d3a6992c60e7c126c57947d01cc01b1364736f6c634300081e0033"
    }

}

