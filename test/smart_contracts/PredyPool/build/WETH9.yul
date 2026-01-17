
/// @use-src 4:"canonical-weth-1.4.0/contracts/WETH9.sol"
object "WETH9_1381" {
    code {
        /// @src 4:794:2620  "contract WETH9 {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_WETH9_1381()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("WETH9_1381_deployed"), datasize("WETH9_1381_deployed"))

        return(_1, datasize("WETH9_1381_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
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

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
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

        function copy_literal_to_storage_00cd3d46df44f2cbb950cf84eb2e92aa2ddd23195b1a009173ea59a063357ed3(slot) {

            let oldLen := extract_byte_array_length(sload(slot))
            clean_up_bytearray_end_slots_t_bytes_storage_ptr(slot, oldLen, 13)
            sstore(slot, add("Wrapped Ether", 26))

        }

        function update_storage_value_offset_0_t_stringliteral_00cd3d46df44f2cbb950cf84eb2e92aa2ddd23195b1a009173ea59a063357ed3_to_t_string_storage(slot) {

            copy_literal_to_storage_00cd3d46df44f2cbb950cf84eb2e92aa2ddd23195b1a009173ea59a063357ed3(slot)
        }

        function copy_literal_to_storage_0f8a193ff464434486c0daf7db2a895884365d2bc84ba47a68fcf89c1b14b5b8(slot) {

            let oldLen := extract_byte_array_length(sload(slot))
            clean_up_bytearray_end_slots_t_bytes_storage_ptr(slot, oldLen, 4)
            sstore(slot, add("WETH", 8))

        }

        function update_storage_value_offset_0_t_stringliteral_0f8a193ff464434486c0daf7db2a895884365d2bc84ba47a68fcf89c1b14b5b8_to_t_string_storage(slot) {

            copy_literal_to_storage_0f8a193ff464434486c0daf7db2a895884365d2bc84ba47a68fcf89c1b14b5b8(slot)
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function update_byte_slice_1_shift_0(value, toInsert) -> result {
            let mask := 255
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function cleanup_t_rational_18_by_1(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_uint8(value) -> cleaned {
            cleaned := and(value, 0xff)
        }

        function convert_t_rational_18_by_1_to_t_uint8(value) -> converted {
            converted := cleanup_t_uint8(identity(cleanup_t_rational_18_by_1(value)))
        }

        function prepare_store_t_uint8(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_0_t_rational_18_by_1_to_t_uint8(slot, value_0) {
            let convertedValue_0 := convert_t_rational_18_by_1_to_t_uint8(value_0)
            sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_uint8(convertedValue_0)))
        }

        /// @src 4:794:2620  "contract WETH9 {..."
        function constructor_WETH9_1381() {

            /// @src 4:794:2620  "contract WETH9 {..."

            /// @src 4:840:855  "\"Wrapped Ether\""
            update_storage_value_offset_0_t_stringliteral_00cd3d46df44f2cbb950cf84eb2e92aa2ddd23195b1a009173ea59a063357ed3_to_t_string_storage(0x00)
            /// @src 4:886:892  "\"WETH\""
            update_storage_value_offset_0_t_stringliteral_0f8a193ff464434486c0daf7db2a895884365d2bc84ba47a68fcf89c1b14b5b8_to_t_string_storage(0x01)
            /// @src 4:923:925  "18"
            let expr_1142 := 0x12
            update_storage_value_offset_0_t_rational_18_by_1_to_t_uint8(0x02, expr_1142)

        }
        /// @src 4:794:2620  "contract WETH9 {..."

    }
    /// @use-src 4:"canonical-weth-1.4.0/contracts/WETH9.sol"
    object "WETH9_1381_deployed" {
        code {
            /// @src 4:794:2620  "contract WETH9 {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x06fdde03
                {
                    // name()

                    external_fun_name_1137()
                }

                case 0x095ea7b3
                {
                    // approve(address,uint256)

                    external_fun_approve_1284()
                }

                case 0x18160ddd
                {
                    // totalSupply()

                    external_fun_totalSupply_1256()
                }

                case 0x23b872dd
                {
                    // transferFrom(address,address,uint256)

                    external_fun_transferFrom_1380()
                }

                case 0x2e1a7d4d
                {
                    // withdraw(uint256)

                    external_fun_withdraw_1244()
                }

                case 0x313ce567
                {
                    // decimals()

                    external_fun_decimals_1143()
                }

                case 0x70a08231
                {
                    // balanceOf(address)

                    external_fun_balanceOf_1175()
                }

                case 0x95d89b41
                {
                    // symbol()

                    external_fun_symbol_1140()
                }

                case 0xa9059cbb
                {
                    // transfer(address,uint256)

                    external_fun_transfer_1301()
                }

                case 0xd0e30db0
                {
                    // deposit()

                    external_fun_deposit_1207()
                }

                case 0xdd62ed3e
                {
                    // allowance(address,address)

                    external_fun_allowance_1181()
                }

                default {}
            }
            if iszero(calldatasize()) { fun__1188() stop() }
            revert_error_d228b4ceac16d8e91d6dc7ca8d4a5394f524b2e550555324088cb23b86b87b98()

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

            /// @ast-id 1137
            /// @src 4:815:855  "string public name     = \"Wrapped Ether\""
            function getter_fun_name_1137() -> ret_mpos {

                let slot := 0
                let offset := 0

                ret_mpos := read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset)

            }
            /// @src 4:794:2620  "contract WETH9 {..."

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

            function external_fun_name_1137() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_name_1137()
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

            function external_fun_approve_1284() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_approve_1284(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_totalSupply_1256() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_totalSupply_1256()
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

            function external_fun_transferFrom_1380() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_transferFrom_1380(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_withdraw_1244() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                fun_withdraw_1244(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

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

            /// @ast-id 1143
            /// @src 4:898:925  "uint8  public decimals = 18"
            function getter_fun_decimals_1143() -> ret {

                let slot := 2
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint8(slot, offset)

            }
            /// @src 4:794:2620  "contract WETH9 {..."

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

            function external_fun_decimals_1143() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_decimals_1143()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

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

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
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

            /// @ast-id 1175
            /// @src 4:1184:1249  "mapping (address => uint)                       public  balanceOf"
            function getter_fun_balanceOf_1175(key_0) -> ret {

                let slot := 3
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 4:794:2620  "contract WETH9 {..."

            function external_fun_balanceOf_1175() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  getter_fun_balanceOf_1175(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 1140
            /// @src 4:861:892  "string public symbol   = \"WETH\""
            function getter_fun_symbol_1140() -> ret_mpos {

                let slot := 1
                let offset := 0

                ret_mpos := read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset)

            }
            /// @src 4:794:2620  "contract WETH9 {..."

            function external_fun_symbol_1140() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_symbol_1140()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_transfer_1301() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_transfer_1301(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_deposit_1207() {

                abi_decode_tuple_(4, calldatasize())
                fun_deposit_1207()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
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

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @ast-id 1181
            /// @src 4:1255:1320  "mapping (address => mapping (address => uint))  public  allowance"
            function getter_fun_allowance_1181(key_0, key_1) -> ret {

                let slot := 4
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot, key_0)

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_1)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 4:794:2620  "contract WETH9 {..."

            function external_fun_allowance_1181() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_address(4, calldatasize())
                let ret_0 :=  getter_fun_allowance_1181(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_d228b4ceac16d8e91d6dc7ca8d4a5394f524b2e550555324088cb23b86b87b98() {
                revert(0, 0)
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
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

            /// @ast-id 1284
            /// @src 4:1839:2016  "function approve(address guy, uint wad) public returns (bool) {..."
            function fun_approve_1284(var_guy_1258, var_wad_1260) -> var__1263 {
                /// @src 4:1895:1899  "bool"
                let zero_t_bool_1 := zero_value_for_split_t_bool()
                var__1263 := zero_t_bool_1

                /// @src 4:1940:1943  "wad"
                let _2 := var_wad_1260
                let expr_1271 := _2
                /// @src 4:1911:1920  "allowance"
                let _3_slot := 0x04
                let expr_1265_slot := _3_slot
                /// @src 4:1921:1931  "msg.sender"
                let expr_1267 := caller()
                /// @src 4:1911:1932  "allowance[msg.sender]"
                let _4 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_1265_slot,expr_1267)
                let _5_slot := _4
                let expr_1269_slot := _5_slot
                /// @src 4:1933:1936  "guy"
                let _6 := var_guy_1258
                let expr_1268 := _6
                /// @src 4:1911:1937  "allowance[msg.sender][guy]"
                let _7 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1269_slot,expr_1268)
                /// @src 4:1911:1943  "allowance[msg.sender][guy] = wad"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_7, expr_1271)
                let expr_1272 := expr_1271
                /// @src 4:1967:1977  "msg.sender"
                let expr_1276 := caller()
                /// @src 4:1979:1982  "guy"
                let _8 := var_guy_1258
                let expr_1277 := _8
                /// @src 4:1984:1987  "wad"
                let _9 := var_wad_1260
                let expr_1278 := _9
                /// @src 4:1958:1988  "Approval(msg.sender, guy, wad)"
                let _10 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                let _11 := convert_t_address_to_t_address(expr_1276)
                let _12 := convert_t_address_to_t_address(expr_1277)
                {
                    let _13 := allocate_unbounded()
                    let _14 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_13 , expr_1278)
                    log3(_13, sub(_14, _13) , _10, _11, _12)
                }/// @src 4:2005:2009  "true"
                let expr_1281 := 0x01
                /// @src 4:1998:2009  "return true"
                var__1263 := expr_1281
                leave

            }
            /// @src 4:794:2620  "contract WETH9 {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function convert_t_contract$_WETH9_$1381_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            /// @ast-id 1256
            /// @src 4:1738:1833  "function totalSupply() public view returns (uint) {..."
            function fun_totalSupply_1256() -> var__1247 {
                /// @src 4:1782:1786  "uint"
                let zero_t_uint256_15 := zero_value_for_split_t_uint256()
                var__1247 := zero_t_uint256_15

                /// @src 4:1813:1817  "this"
                let expr_1251_address := address()
                /// @src 4:1805:1818  "address(this)"
                let expr_1252 := convert_t_contract$_WETH9_$1381_to_t_address(expr_1251_address)
                /// @src 4:1805:1826  "address(this).balance"
                let expr_1253 := balance(expr_1252)
                /// @src 4:1798:1826  "return address(this).balance"
                var__1247 := expr_1253
                leave

            }
            /// @src 4:794:2620  "contract WETH9 {..."

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

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            /// @ast-id 1380
            /// @src 4:2149:2618  "function transferFrom(address src, address dst, uint wad)..."
            function fun_transferFrom_1380(var_src_1303, var_dst_1305, var_wad_1307) -> var__1310 {
                /// @src 4:2239:2243  "bool"
                let zero_t_bool_16 := zero_value_for_split_t_bool()
                var__1310 := zero_t_bool_16

                /// @src 4:2267:2276  "balanceOf"
                let _17_slot := 0x03
                let expr_1313_slot := _17_slot
                /// @src 4:2277:2280  "src"
                let _18 := var_src_1303
                let expr_1314 := _18
                /// @src 4:2267:2281  "balanceOf[src]"
                let _19 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1313_slot,expr_1314)
                let _20 := read_from_storage_split_offset_0_t_uint256(_19)
                let expr_1315 := _20
                /// @src 4:2285:2288  "wad"
                let _21 := var_wad_1307
                let expr_1316 := _21
                /// @src 4:2267:2288  "balanceOf[src] >= wad"
                let expr_1317 := iszero(lt(cleanup_t_uint256(expr_1315), cleanup_t_uint256(expr_1316)))
                /// @src 4:2259:2289  "require(balanceOf[src] >= wad)"
                require_helper(expr_1317)
                /// @src 4:2304:2307  "src"
                let _22 := var_src_1303
                let expr_1320 := _22
                /// @src 4:2311:2321  "msg.sender"
                let expr_1322 := caller()
                /// @src 4:2304:2321  "src != msg.sender"
                let expr_1323 := iszero(eq(cleanup_t_address(expr_1320), cleanup_t_address(expr_1322)))
                /// @src 4:2304:2372  "src != msg.sender && allowance[src][msg.sender] != type(uint256).max"
                let expr_1336 := expr_1323
                if expr_1336 {
                    /// @src 4:2325:2334  "allowance"
                    let _23_slot := 0x04
                    let expr_1324_slot := _23_slot
                    /// @src 4:2335:2338  "src"
                    let _24 := var_src_1303
                    let expr_1325 := _24
                    /// @src 4:2325:2339  "allowance[src]"
                    let _25 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_1324_slot,expr_1325)
                    let _26_slot := _25
                    let expr_1326_slot := _26_slot
                    /// @src 4:2340:2350  "msg.sender"
                    let expr_1328 := caller()
                    /// @src 4:2325:2351  "allowance[src][msg.sender]"
                    let _27 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1326_slot,expr_1328)
                    let _28 := read_from_storage_split_offset_0_t_uint256(_27)
                    let expr_1329 := _28
                    /// @src 4:2355:2372  "type(uint256).max"
                    let expr_1334 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 4:2325:2372  "allowance[src][msg.sender] != type(uint256).max"
                    let expr_1335 := iszero(eq(cleanup_t_uint256(expr_1329), cleanup_t_uint256(expr_1334)))
                    /// @src 4:2304:2372  "src != msg.sender && allowance[src][msg.sender] != type(uint256).max"
                    expr_1336 := expr_1335
                }
                /// @src 4:2300:2488  "if (src != msg.sender && allowance[src][msg.sender] != type(uint256).max) {..."
                if expr_1336 {
                    /// @src 4:2396:2405  "allowance"
                    let _29_slot := 0x04
                    let expr_1338_slot := _29_slot
                    /// @src 4:2406:2409  "src"
                    let _30 := var_src_1303
                    let expr_1339 := _30
                    /// @src 4:2396:2410  "allowance[src]"
                    let _31 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_1338_slot,expr_1339)
                    let _32_slot := _31
                    let expr_1340_slot := _32_slot
                    /// @src 4:2411:2421  "msg.sender"
                    let expr_1342 := caller()
                    /// @src 4:2396:2422  "allowance[src][msg.sender]"
                    let _33 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1340_slot,expr_1342)
                    let _34 := read_from_storage_split_offset_0_t_uint256(_33)
                    let expr_1343 := _34
                    /// @src 4:2426:2429  "wad"
                    let _35 := var_wad_1307
                    let expr_1344 := _35
                    /// @src 4:2396:2429  "allowance[src][msg.sender] >= wad"
                    let expr_1345 := iszero(lt(cleanup_t_uint256(expr_1343), cleanup_t_uint256(expr_1344)))
                    /// @src 4:2388:2430  "require(allowance[src][msg.sender] >= wad)"
                    require_helper(expr_1345)
                    /// @src 4:2474:2477  "wad"
                    let _36 := var_wad_1307
                    let expr_1354 := _36
                    /// @src 4:2444:2453  "allowance"
                    let _37_slot := 0x04
                    let expr_1348_slot := _37_slot
                    /// @src 4:2454:2457  "src"
                    let _38 := var_src_1303
                    let expr_1349 := _38
                    /// @src 4:2444:2458  "allowance[src]"
                    let _39 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_1348_slot,expr_1349)
                    let _40_slot := _39
                    let expr_1352_slot := _40_slot
                    /// @src 4:2459:2469  "msg.sender"
                    let expr_1351 := caller()
                    /// @src 4:2444:2470  "allowance[src][msg.sender]"
                    let _41 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1352_slot,expr_1351)
                    /// @src 4:2444:2477  "allowance[src][msg.sender] -= wad"
                    let _42 := read_from_storage_split_offset_0_t_uint256(_41)
                    let expr_1355 := checked_sub_t_uint256(_42, expr_1354)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(_41, expr_1355)
                    /// @src 4:2300:2488  "if (src != msg.sender && allowance[src][msg.sender] != type(uint256).max) {..."
                }
                /// @src 4:2516:2519  "wad"
                let _43 := var_wad_1307
                let expr_1362 := _43
                /// @src 4:2498:2507  "balanceOf"
                let _44_slot := 0x03
                let expr_1359_slot := _44_slot
                /// @src 4:2508:2511  "src"
                let _45 := var_src_1303
                let expr_1360 := _45
                /// @src 4:2498:2512  "balanceOf[src]"
                let _46 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1359_slot,expr_1360)
                /// @src 4:2498:2519  "balanceOf[src] -= wad"
                let _47 := read_from_storage_split_offset_0_t_uint256(_46)
                let expr_1363 := checked_sub_t_uint256(_47, expr_1362)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_46, expr_1363)
                /// @src 4:2547:2550  "wad"
                let _48 := var_wad_1307
                let expr_1368 := _48
                /// @src 4:2529:2538  "balanceOf"
                let _49_slot := 0x03
                let expr_1365_slot := _49_slot
                /// @src 4:2539:2542  "dst"
                let _50 := var_dst_1305
                let expr_1366 := _50
                /// @src 4:2529:2543  "balanceOf[dst]"
                let _51 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1365_slot,expr_1366)
                /// @src 4:2529:2550  "balanceOf[dst] += wad"
                let _52 := read_from_storage_split_offset_0_t_uint256(_51)
                let expr_1369 := checked_add_t_uint256(_52, expr_1368)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_51, expr_1369)
                /// @src 4:2575:2578  "src"
                let _53 := var_src_1303
                let expr_1372 := _53
                /// @src 4:2580:2583  "dst"
                let _54 := var_dst_1305
                let expr_1373 := _54
                /// @src 4:2585:2588  "wad"
                let _55 := var_wad_1307
                let expr_1374 := _55
                /// @src 4:2566:2589  "Transfer(src, dst, wad)"
                let _56 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _57 := convert_t_address_to_t_address(expr_1372)
                let _58 := convert_t_address_to_t_address(expr_1373)
                {
                    let _59 := allocate_unbounded()
                    let _60 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_59 , expr_1374)
                    log3(_59, sub(_60, _59) , _56, _57, _58)
                }/// @src 4:2607:2611  "true"
                let expr_1377 := 0x01
                /// @src 4:2600:2611  "return true"
                var__1310 := expr_1377
                leave

            }
            /// @src 4:794:2620  "contract WETH9 {..."

            function convert_t_uint160_to_t_address_payable(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_address_payable(value) -> converted {
                converted := convert_t_uint160_to_t_address_payable(value)
            }

            function convert_t_address_payable_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            /// @ast-id 1244
            /// @src 4:1520:1732  "function withdraw(uint wad) public {..."
            function fun_withdraw_1244(var_wad_1209) {

                /// @src 4:1573:1582  "balanceOf"
                let _61_slot := 0x03
                let expr_1213_slot := _61_slot
                /// @src 4:1583:1593  "msg.sender"
                let expr_1215 := caller()
                /// @src 4:1573:1594  "balanceOf[msg.sender]"
                let _62 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1213_slot,expr_1215)
                let _63 := read_from_storage_split_offset_0_t_uint256(_62)
                let expr_1216 := _63
                /// @src 4:1598:1601  "wad"
                let _64 := var_wad_1209
                let expr_1217 := _64
                /// @src 4:1573:1601  "balanceOf[msg.sender] >= wad"
                let expr_1218 := iszero(lt(cleanup_t_uint256(expr_1216), cleanup_t_uint256(expr_1217)))
                /// @src 4:1565:1602  "require(balanceOf[msg.sender] >= wad)"
                require_helper(expr_1218)
                /// @src 4:1637:1640  "wad"
                let _65 := var_wad_1209
                let expr_1225 := _65
                /// @src 4:1612:1621  "balanceOf"
                let _66_slot := 0x03
                let expr_1221_slot := _66_slot
                /// @src 4:1622:1632  "msg.sender"
                let expr_1223 := caller()
                /// @src 4:1612:1633  "balanceOf[msg.sender]"
                let _67 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1221_slot,expr_1223)
                /// @src 4:1612:1640  "balanceOf[msg.sender] -= wad"
                let _68 := read_from_storage_split_offset_0_t_uint256(_67)
                let expr_1226 := checked_sub_t_uint256(_68, expr_1225)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_67, expr_1226)
                /// @src 4:1658:1668  "msg.sender"
                let expr_1231 := caller()
                /// @src 4:1650:1669  "payable(msg.sender)"
                let expr_1232 := convert_t_address_to_t_address_payable(expr_1231)
                /// @src 4:1650:1678  "payable(msg.sender).transfer"
                let expr_1233_address := convert_t_address_payable_to_t_address(expr_1232)
                /// @src 4:1679:1682  "wad"
                let _69 := var_wad_1209
                let expr_1234 := _69
                /// @src 4:1650:1683  "payable(msg.sender).transfer(wad)"

                let _70 := 0
                if iszero(expr_1234) { _70 := 2300 }

                let _71 := call(_70, expr_1233_address, expr_1234, 0, 0, 0, 0)

                if iszero(_71) { revert_forward_1() }

                /// @src 4:1709:1719  "msg.sender"
                let expr_1239 := caller()
                /// @src 4:1721:1724  "wad"
                let _72 := var_wad_1209
                let expr_1240 := _72
                /// @src 4:1698:1725  "Withdrawal(msg.sender, wad)"
                let _73 := 0x7fcf532c15f0a6db0bd6d0e038bea71d30d808c7d98cb3bf7268a95bf5081b65
                let _74 := convert_t_address_to_t_address(expr_1239)
                {
                    let _75 := allocate_unbounded()
                    let _76 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_75 , expr_1240)
                    log2(_75, sub(_76, _75) , _73, _74)
                }
            }
            /// @src 4:794:2620  "contract WETH9 {..."

            /// @ast-id 1301
            /// @src 4:2022:2143  "function transfer(address dst, uint wad) public returns (bool) {..."
            function fun_transfer_1301(var_dst_1286, var_wad_1288) -> var__1291 {
                /// @src 4:2079:2083  "bool"
                let zero_t_bool_77 := zero_value_for_split_t_bool()
                var__1291 := zero_t_bool_77

                /// @src 4:2115:2125  "msg.sender"
                let expr_1295 := caller()
                /// @src 4:2127:2130  "dst"
                let _78 := var_dst_1286
                let expr_1296 := _78
                /// @src 4:2132:2135  "wad"
                let _79 := var_wad_1288
                let expr_1297 := _79
                /// @src 4:2102:2136  "transferFrom(msg.sender, dst, wad)"
                let expr_1298 := fun_transferFrom_1380(expr_1295, expr_1296, expr_1297)
                /// @src 4:2095:2136  "return transferFrom(msg.sender, dst, wad)"
                var__1291 := expr_1298
                leave

            }
            /// @src 4:794:2620  "contract WETH9 {..."

            /// @ast-id 1207
            /// @src 4:1385:1515  "function deposit() public payable {..."
            function fun_deposit_1207() {

                /// @src 4:1454:1463  "msg.value"
                let expr_1196 := callvalue()
                /// @src 4:1429:1438  "balanceOf"
                let _80_slot := 0x03
                let expr_1191_slot := _80_slot
                /// @src 4:1439:1449  "msg.sender"
                let expr_1193 := caller()
                /// @src 4:1429:1450  "balanceOf[msg.sender]"
                let _81 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1191_slot,expr_1193)
                /// @src 4:1429:1463  "balanceOf[msg.sender] += msg.value"
                let _82 := read_from_storage_split_offset_0_t_uint256(_81)
                let expr_1197 := checked_add_t_uint256(_82, expr_1196)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_81, expr_1197)
                /// @src 4:1486:1496  "msg.sender"
                let expr_1201 := caller()
                /// @src 4:1498:1507  "msg.value"
                let expr_1203 := callvalue()
                /// @src 4:1478:1508  "Deposit(msg.sender, msg.value)"
                let _83 := 0xe1fffcc4923d04b559f4d29a8bfc6cda04eb5b0d3c460751c2402c5c5cc9109c
                let _84 := convert_t_address_to_t_address(expr_1201)
                {
                    let _85 := allocate_unbounded()
                    let _86 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_85 , expr_1203)
                    log2(_85, sub(_86, _85) , _83, _84)
                }
            }
            /// @src 4:794:2620  "contract WETH9 {..."

            /// @ast-id 1188
            /// @src 4:1327:1380  "receive() external payable {..."
            function fun__1188() {

                fun_deposit_1207()

            }
            /// @src 4:794:2620  "contract WETH9 {..."

        }

        data ".metadata" hex"a2646970667358221220a78f76ee59611c435991f29d34cbea50ca031b5d1024c869217a0bea2d4fbe0064736f6c634300081e0033"
    }

}

