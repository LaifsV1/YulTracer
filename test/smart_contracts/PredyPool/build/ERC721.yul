
/// @use-src 30:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/introspection/ERC165.sol", 31:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/introspection/IERC165.sol", 36:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/token/ERC721/ERC721.sol", 37:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/token/ERC721/IERC721.sol", 38:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/token/ERC721/IERC721Enumerable.sol", 39:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/token/ERC721/IERC721Metadata.sol", 42:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/Context.sol"
object "ERC721_23491" {
    code {
        /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1, _2 := copy_arguments_for_constructor_22653_object_ERC721_23491()
        constructor_ERC721_23491(_1, _2)

        let _3 := allocate_unbounded()
        codecopy(_3, dataoffset("ERC721_23491_deployed"), datasize("ERC721_23491_deployed"))

        return(_3, datasize("ERC721_23491_deployed"))

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

        function abi_decode_tuple_t_string_memory_ptrt_string_memory_ptr_fromMemory(headStart, dataEnd) -> value0, value1 {
            if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            {

                let offset := mload(add(headStart, 0))
                if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                value0 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := mload(add(headStart, 32))
                if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                value1 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
            }

        }

        function copy_arguments_for_constructor_22653_object_ERC721_23491() -> ret_param_0, ret_param_1 {

            let programSize := datasize("ERC721_23491")
            let argSize := sub(codesize(), programSize)

            let memoryDataOffset := allocate_memory(argSize)
            codecopy(memoryDataOffset, programSize, argSize)

            ret_param_0, ret_param_1 := abi_decode_tuple_t_string_memory_ptrt_string_memory_ptr_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
        }

        function panic_error_0x00() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x00)
            revert(0, 0x24)
        }

        function array_length_t_string_memory_ptr(value) -> length {

            length := mload(value)

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

        function array_dataslot_t_string_storage(ptr) -> data {
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

        function cleanup_t_rational_2158778573_by_1(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_bytes4(value) -> cleaned {
            cleaned := and(value, 0xffffffff00000000000000000000000000000000000000000000000000000000)
        }

        function shift_left_224(value) -> newValue {
            newValue :=

            shl(224, value)

        }

        function convert_t_rational_2158778573_by_1_to_t_bytes4(value) -> converted {
            converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_2158778573_by_1(value)))
        }

        /// @src 36:2724:2781  "bytes4 private constant _INTERFACE_ID_ERC721 = 0x80ac58cd"
        function constant__INTERFACE_ID_ERC721_22618() -> ret {
            /// @src 36:2771:2781  "0x80ac58cd"
            let expr_22617 := 0x80ac58cd
            let _8 := convert_t_rational_2158778573_by_1_to_t_bytes4(expr_22617)

            ret := _8
        }

        function cleanup_t_rational_1532892063_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_1532892063_by_1_to_t_bytes4(value) -> converted {
            converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_1532892063_by_1(value)))
        }

        /// @src 36:3047:3113  "bytes4 private constant _INTERFACE_ID_ERC721_METADATA = 0x5b5e139f"
        function constant__INTERFACE_ID_ERC721_METADATA_22621() -> ret {
            /// @src 36:3103:3113  "0x5b5e139f"
            let expr_22620 := 0x5b5e139f
            let _9 := convert_t_rational_1532892063_by_1_to_t_bytes4(expr_22620)

            ret := _9
        }

        function cleanup_t_rational_2014223715_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_2014223715_by_1_to_t_bytes4(value) -> converted {
            converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_2014223715_by_1(value)))
        }

        /// @src 36:3418:3486  "bytes4 private constant _INTERFACE_ID_ERC721_ENUMERABLE = 0x780e9d63"
        function constant__INTERFACE_ID_ERC721_ENUMERABLE_22624() -> ret {
            /// @src 36:3476:3486  "0x780e9d63"
            let expr_22623 := 0x780e9d63
            let _10 := convert_t_rational_2014223715_by_1_to_t_bytes4(expr_22623)

            ret := _10
        }

        /// @ast-id 22653
        /// @src 36:3606:3968  "constructor (string memory name_, string memory symbol_) {..."
        function constructor_ERC721_23491(var_name__22627_mpos, var_symbol__22629_mpos) {

            /// @src 36:3606:3968  "constructor (string memory name_, string memory symbol_) {..."
            constructor_IERC721Enumerable_12540()

            /// @src 36:3681:3686  "name_"
            let _4_mpos := var_name__22627_mpos
            let expr_22633_mpos := _4_mpos
            /// @src 36:3673:3686  "_name = name_"
            update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(0x06, expr_22633_mpos)
            let _5_slot := 0x06
            let expr_22634_slot := _5_slot
            /// @src 36:3706:3713  "symbol_"
            let _6_mpos := var_symbol__22629_mpos
            let expr_22637_mpos := _6_mpos
            /// @src 36:3696:3713  "_symbol = symbol_"
            update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(0x07, expr_22637_mpos)
            let _7_slot := 0x07
            let expr_22638_slot := _7_slot
            /// @src 36:3820:3840  "_INTERFACE_ID_ERC721"
            let expr_22641 := constant__INTERFACE_ID_ERC721_22618()
            fun__registerInterface_34514(expr_22641)
            /// @src 36:3870:3899  "_INTERFACE_ID_ERC721_METADATA"
            let expr_22645 := constant__INTERFACE_ID_ERC721_METADATA_22621()
            fun__registerInterface_34514(expr_22645)
            /// @src 36:3929:3960  "_INTERFACE_ID_ERC721_ENUMERABLE"
            let expr_22649 := constant__INTERFACE_ID_ERC721_ENUMERABLE_22624()
            fun__registerInterface_34514(expr_22649)

        }
        /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

        /// @src 38:257:972  "interface IERC721Enumerable is IERC721 {..."
        function constructor_IERC721Enumerable_12540() {

            /// @src 38:257:972  "interface IERC721Enumerable is IERC721 {..."
            constructor_IERC721Metadata_12567()

        }
        /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

        /// @src 39:254:718  "interface IERC721Metadata is IERC721 {..."
        function constructor_IERC721Metadata_12567() {

            /// @src 39:254:718  "interface IERC721Metadata is IERC721 {..."
            constructor_IERC721_26651()

        }
        /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

        /// @src 37:206:4620  "interface IERC721 is IERC165 {..."
        function constructor_IERC721_26651() {

            /// @src 37:206:4620  "interface IERC721 is IERC165 {..."
            constructor_ERC165_34515()

        }
        /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

        function cleanup_t_rational_33540519_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_33540519_by_1_to_t_bytes4(value) -> converted {
            converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_33540519_by_1(value)))
        }

        /// @src 30:417:474  "bytes4 private constant _INTERFACE_ID_ERC165 = 0x01ffc9a7"
        function constant__INTERFACE_ID_ERC165_34467() -> ret {
            /// @src 30:464:474  "0x01ffc9a7"
            let expr_34466 := 0x01ffc9a7
            let _11 := convert_t_rational_33540519_by_1_to_t_bytes4(expr_34466)

            ret := _11
        }

        /// @ast-id 34480
        /// @src 30:627:835  "constructor () {..."
        function constructor_ERC165_34515() {

            /// @src 30:627:835  "constructor () {..."
            constructor_IERC165_36886()

            /// @src 30:807:827  "_INTERFACE_ID_ERC165"
            let expr_34476 := constant__INTERFACE_ID_ERC165_34467()
            fun__registerInterface_34514(expr_34476)

        }
        /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

        /// @src 31:375:822  "interface IERC165 {..."
        function constructor_IERC165_36886() {

            /// @src 31:375:822  "interface IERC165 {..."
            constructor_Context_6014()

        }
        /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

        /// @src 42:603:986  "abstract contract Context {..."
        function constructor_Context_6014() {

            /// @src 42:603:986  "abstract contract Context {..."

        }
        /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

        function cleanup_t_rational_4294967295_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_4294967295_by_1_to_t_bytes4(value) -> converted {
            converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_4294967295_by_1(value)))
        }

        function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
            mstore(pos, length)
            updated_pos := add(pos, 0x20)
        }

        function store_literal_in_memory_282912c0dfceceb28d77d0333f496b83948f9ba5b3154358a8b140b849289dee(memPtr) {

            mstore(add(memPtr, 0), "ERC165: invalid interface id")

        }

        function abi_encode_t_stringliteral_282912c0dfceceb28d77d0333f496b83948f9ba5b3154358a8b140b849289dee_to_t_string_memory_ptr_fromStack(pos) -> end {
            pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 28)
            store_literal_in_memory_282912c0dfceceb28d77d0333f496b83948f9ba5b3154358a8b140b849289dee(pos)
            end := add(pos, 32)
        }

        function abi_encode_tuple_t_stringliteral_282912c0dfceceb28d77d0333f496b83948f9ba5b3154358a8b140b849289dee__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
            tail := add(headStart, 32)

            mstore(add(headStart, 0), sub(tail, headStart))
            tail := abi_encode_t_stringliteral_282912c0dfceceb28d77d0333f496b83948f9ba5b3154358a8b140b849289dee_to_t_string_memory_ptr_fromStack( tail)

        }

        function require_helper_t_stringliteral_282912c0dfceceb28d77d0333f496b83948f9ba5b3154358a8b140b849289dee(condition ) {
            if iszero(condition)
            {

                let memPtr := allocate_unbounded()

                mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                let end := abi_encode_tuple_t_stringliteral_282912c0dfceceb28d77d0333f496b83948f9ba5b3154358a8b140b849289dee__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                revert(memPtr, sub(end, memPtr))
            }
        }

        function convert_t_bytes4_to_t_bytes4(value) -> converted {
            converted := cleanup_t_bytes4(value)
        }

        function mapping_index_access_t_mapping$_t_bytes4_$_t_bool_$_of_t_bytes4(slot , key) -> dataSlot {
            mstore(0, convert_t_bytes4_to_t_bytes4(key))
            mstore(0x20, slot)
            dataSlot := keccak256(0, 0x40)
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

        function cleanup_t_bool(value) -> cleaned {
            cleaned := iszero(iszero(value))
        }

        function convert_t_bool_to_t_bool(value) -> converted {
            converted := cleanup_t_bool(value)
        }

        function prepare_store_t_bool(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_0_t_bool_to_t_bool(slot, value_0) {
            let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
            sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_bool(convertedValue_0)))
        }

        /// @ast-id 34514
        /// @src 30:1527:1725  "function _registerInterface(bytes4 interfaceId) internal virtual {..."
        function fun__registerInterface_34514(var_interfaceId_34497) {

            /// @src 30:1610:1621  "interfaceId"
            let _12 := var_interfaceId_34497
            let expr_34501 := _12
            /// @src 30:1625:1635  "0xffffffff"
            let expr_34502 := 0xffffffff
            /// @src 30:1610:1635  "interfaceId != 0xffffffff"
            let expr_34503 := iszero(eq(cleanup_t_bytes4(expr_34501), convert_t_rational_4294967295_by_1_to_t_bytes4(expr_34502)))
            /// @src 30:1602:1668  "require(interfaceId != 0xffffffff, \"ERC165: invalid interface id\")"
            require_helper_t_stringliteral_282912c0dfceceb28d77d0333f496b83948f9ba5b3154358a8b140b849289dee(expr_34503)
            /// @src 30:1714:1718  "true"
            let expr_34510 := 0x01
            /// @src 30:1678:1698  "_supportedInterfaces"
            let _13_slot := 0x00
            let expr_34507_slot := _13_slot
            /// @src 30:1699:1710  "interfaceId"
            let _14 := var_interfaceId_34497
            let expr_34508 := _14
            /// @src 30:1678:1711  "_supportedInterfaces[interfaceId]"
            let _15 := mapping_index_access_t_mapping$_t_bytes4_$_t_bool_$_of_t_bytes4(expr_34507_slot,expr_34508)
            /// @src 30:1678:1718  "_supportedInterfaces[interfaceId] = true"
            update_storage_value_offset_0_t_bool_to_t_bool(_15, expr_34510)
            let expr_34511 := expr_34510

        }
        /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

    }
    /// @use-src 30:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/introspection/ERC165.sol", 36:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/token/ERC721/ERC721.sol", 41:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/Address.sol", 42:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/Context.sol", 43:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/EnumerableMap.sol", 44:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/EnumerableSet.sol", 45:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/Strings.sol"
    object "ERC721_23491_deployed" {
        code {
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x01ffc9a7
                {
                    // supportsInterface(bytes4)

                    external_fun_supportsInterface_34494()
                }

                case 0x06fdde03
                {
                    // name()

                    external_fun_name_22705()
                }

                case 0x081812fc
                {
                    // getApproved(uint256)

                    external_fun_getApproved_22907()
                }

                case 0x095ea7b3
                {
                    // approve(address,uint256)

                    external_fun_approve_22886()
                }

                case 0x18160ddd
                {
                    // totalSupply()

                    external_fun_totalSupply_22823()
                }

                case 0x23b872dd
                {
                    // transferFrom(address,address,uint256)

                    external_fun_transferFrom_22986()
                }

                case 0x2f745c59
                {
                    // tokenOfOwnerByIndex(address,uint256)

                    external_fun_tokenOfOwnerByIndex_22811()
                }

                case 0x42842e0e
                {
                    // safeTransferFrom(address,address,uint256)

                    external_fun_safeTransferFrom_23005()
                }

                case 0x4f6ccce7
                {
                    // tokenByIndex(uint256)

                    external_fun_tokenByIndex_22842()
                }

                case 0x6352211e
                {
                    // ownerOf(uint256)

                    external_fun_ownerOf_22695()
                }

                case 0x6c0360eb
                {
                    // baseURI()

                    external_fun_baseURI_22792()
                }

                case 0x70a08231
                {
                    // balanceOf(address)

                    external_fun_balanceOf_22679()
                }

                case 0x95d89b41
                {
                    // symbol()

                    external_fun_symbol_22715()
                }

                case 0xa22cb465
                {
                    // setApprovalForAll(address,bool)

                    external_fun_setApprovalForAll_22941()
                }

                case 0xb88d4fde
                {
                    // safeTransferFrom(address,address,uint256,bytes)

                    external_fun_safeTransferFrom_23035()
                }

                case 0xc87b56dd
                {
                    // tokenURI(uint256)

                    external_fun_tokenURI_22783()
                }

                case 0xe985e9c5
                {
                    // isApprovedForAll(address,address)

                    external_fun_isApprovedForAll_22959()
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

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function cleanup_t_bytes4(value) -> cleaned {
                cleaned := and(value, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            }

            function validator_revert_t_bytes4(value) {
                if iszero(eq(value, cleanup_t_bytes4(value))) { revert(0, 0) }
            }

            function abi_decode_t_bytes4(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bytes4(value)
            }

            function abi_decode_tuple_t_bytes4(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes4(add(headStart, offset), dataEnd)
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

            function external_fun_supportsInterface_34494() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bytes4(4, calldatasize())
                let ret_0 :=  fun_supportsInterface_34494(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

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

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
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

            function external_fun_name_22705() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_name_22705()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

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

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_getApproved_22907() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_getApproved_22907(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function abi_decode_t_address(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_address(value)
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

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_approve_22886() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                fun_approve_22886(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_totalSupply_22823() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_totalSupply_22823()
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

            function external_fun_transferFrom_22986() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                fun_transferFrom_22986(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_tokenOfOwnerByIndex_22811() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_tokenOfOwnerByIndex_22811(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_safeTransferFrom_23005() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                fun_safeTransferFrom_23005(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_tokenByIndex_22842() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_tokenByIndex_22842(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_ownerOf_22695() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_ownerOf_22695(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_baseURI_22792() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_baseURI_22792()
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

            function external_fun_balanceOf_22679() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  fun_balanceOf_22679(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_symbol_22715() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_symbol_22715()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function validator_revert_t_bool(value) {
                if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
            }

            function abi_decode_t_bool(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bool(value)
            }

            function abi_decode_tuple_t_addresst_bool(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_setApprovalForAll_22941() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_bool(4, calldatasize())
                fun_setApprovalForAll_22941(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() {
                revert(0, 0)
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

            function abi_decode_tuple_t_addresst_addresst_uint256t_bytes_memory_ptr(headStart, dataEnd) -> value0, value1, value2, value3 {
                if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

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

                {

                    let offset := calldataload(add(headStart, 96))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value3 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_safeTransferFrom_23035() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_addresst_addresst_uint256t_bytes_memory_ptr(4, calldatasize())
                fun_safeTransferFrom_23035(param_0, param_1, param_2, param_3)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_tokenURI_22783() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_tokenURI_22783(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
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

            function external_fun_isApprovedForAll_22959() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_address(4, calldatasize())
                let ret_0 :=  fun_isApprovedForAll_22959(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function convert_t_bytes4_to_t_bytes4(value) -> converted {
                converted := cleanup_t_bytes4(value)
            }

            function mapping_index_access_t_mapping$_t_bytes4_$_t_bool_$_of_t_bytes4(slot , key) -> dataSlot {
                mstore(0, convert_t_bytes4_to_t_bytes4(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function cleanup_from_storage_t_bool(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function extract_from_storage_value_offset_0_t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_0_t_bool(sload(slot))

            }

            /// @ast-id 34494
            /// @src 30:985:1133  "function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {..."
            function fun_supportsInterface_34494(var_interfaceId_34483) -> var__34487 {
                /// @src 30:1070:1074  "bool"
                let zero_t_bool_1 := zero_value_for_split_t_bool()
                var__34487 := zero_t_bool_1

                /// @src 30:1093:1113  "_supportedInterfaces"
                let _2_slot := 0x00
                let expr_34489_slot := _2_slot
                /// @src 30:1114:1125  "interfaceId"
                let _3 := var_interfaceId_34483
                let expr_34490 := _3
                /// @src 30:1093:1126  "_supportedInterfaces[interfaceId]"
                let _4 := mapping_index_access_t_mapping$_t_bytes4_$_t_bool_$_of_t_bytes4(expr_34489_slot,expr_34490)
                let _5 := read_from_storage_split_offset_0_t_bool(_4)
                let expr_34491 := _5
                /// @src 30:1086:1126  "return _supportedInterfaces[interfaceId]"
                var__34487 := expr_34491
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function zero_value_for_split_t_string_memory_ptr() -> ret {
                ret := 96
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

            function copy_array_from_storage_to_memory_t_string_storage(slot) -> memPtr {
                memPtr := allocate_unbounded()
                let end := abi_encodeUpdatedPos_t_string_storage_to_t_string_memory_ptr(slot, memPtr)
                finalize_allocation(memPtr, sub(end, memPtr))
            }

            function convert_array_t_string_storage_to_t_string_memory_ptr(value) -> converted  {

                // Copy the array to a free position in memory
                converted :=

                copy_array_from_storage_to_memory_t_string_storage(value)

            }

            /// @ast-id 22705
            /// @src 36:4539:4637  "function name() public view virtual override returns (string memory) {..."
            function fun_name_22705() -> var__22700_mpos {
                /// @src 36:4593:4606  "string memory"
                let zero_t_string_memory_ptr_6_mpos := zero_value_for_split_t_string_memory_ptr()
                var__22700_mpos := zero_t_string_memory_ptr_6_mpos

                /// @src 36:4625:4630  "_name"
                let _7_slot := 0x06
                let expr_22702_slot := _7_slot
                /// @src 36:4618:4630  "return _name"
                var__22700_mpos := convert_array_t_string_storage_to_t_string_memory_ptr(expr_22702_slot)
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            function store_literal_in_memory_9291e0f44949204f2e9b40e6be090924979d6047b2365868f4e9f027722eb89d(memPtr) {

                mstore(add(memPtr, 0), "ERC721: approved query for nonex")

                mstore(add(memPtr, 32), "istent token")

            }

            function abi_encode_t_stringliteral_9291e0f44949204f2e9b40e6be090924979d6047b2365868f4e9f027722eb89d_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 44)
                store_literal_in_memory_9291e0f44949204f2e9b40e6be090924979d6047b2365868f4e9f027722eb89d(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_9291e0f44949204f2e9b40e6be090924979d6047b2365868f4e9f027722eb89d__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_9291e0f44949204f2e9b40e6be090924979d6047b2365868f4e9f027722eb89d_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_9291e0f44949204f2e9b40e6be090924979d6047b2365868f4e9f027722eb89d(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_9291e0f44949204f2e9b40e6be090924979d6047b2365868f4e9f027722eb89d__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function cleanup_from_storage_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_0_t_address(slot_value) -> value {
                value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_address(slot) -> value {
                value := extract_from_storage_value_offset_0_t_address(sload(slot))

            }

            /// @ast-id 22907
            /// @src 36:7244:7461  "function getApproved(uint256 tokenId) public view virtual override returns (address) {..."
            function fun_getApproved_22907(var_tokenId_22889) -> var__22893 {
                /// @src 36:7320:7327  "address"
                let zero_t_address_8 := zero_value_for_split_t_address()
                var__22893 := zero_t_address_8

                /// @src 36:7355:7362  "tokenId"
                let _9 := var_tokenId_22889
                let expr_22897 := _9
                /// @src 36:7347:7363  "_exists(tokenId)"
                let expr_22898 := fun__exists_23078(expr_22897)
                /// @src 36:7339:7412  "require(_exists(tokenId), \"ERC721: approved query for nonexistent token\")"
                require_helper_t_stringliteral_9291e0f44949204f2e9b40e6be090924979d6047b2365868f4e9f027722eb89d(expr_22898)
                /// @src 36:7430:7445  "_tokenApprovals"
                let _10_slot := 0x04
                let expr_22902_slot := _10_slot
                /// @src 36:7446:7453  "tokenId"
                let _11 := var_tokenId_22889
                let expr_22903 := _11
                /// @src 36:7430:7454  "_tokenApprovals[tokenId]"
                let _12 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_22902_slot,expr_22903)
                let _13 := read_from_storage_split_offset_0_t_address(_12)
                let expr_22904 := _13
                /// @src 36:7423:7454  "return _tokenApprovals[tokenId]"
                var__22893 := expr_22904
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function store_literal_in_memory_b51b4875eede07862961e8f9365c6749f5fe55c6ee5d7a9e42b6912ad0b15942(memPtr) {

                mstore(add(memPtr, 0), "ERC721: approval to current owne")

                mstore(add(memPtr, 32), "r")

            }

            function abi_encode_t_stringliteral_b51b4875eede07862961e8f9365c6749f5fe55c6ee5d7a9e42b6912ad0b15942_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 33)
                store_literal_in_memory_b51b4875eede07862961e8f9365c6749f5fe55c6ee5d7a9e42b6912ad0b15942(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_b51b4875eede07862961e8f9365c6749f5fe55c6ee5d7a9e42b6912ad0b15942__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_b51b4875eede07862961e8f9365c6749f5fe55c6ee5d7a9e42b6912ad0b15942_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_b51b4875eede07862961e8f9365c6749f5fe55c6ee5d7a9e42b6912ad0b15942(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_b51b4875eede07862961e8f9365c6749f5fe55c6ee5d7a9e42b6912ad0b15942__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_payable_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function store_literal_in_memory_6d83cef3e0cb19b8320a9c5feb26b56bbb08f152a8e61b12eca3302d8d68b23d(memPtr) {

                mstore(add(memPtr, 0), "ERC721: approve caller is not ow")

                mstore(add(memPtr, 32), "ner nor approved for all")

            }

            function abi_encode_t_stringliteral_6d83cef3e0cb19b8320a9c5feb26b56bbb08f152a8e61b12eca3302d8d68b23d_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 56)
                store_literal_in_memory_6d83cef3e0cb19b8320a9c5feb26b56bbb08f152a8e61b12eca3302d8d68b23d(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_6d83cef3e0cb19b8320a9c5feb26b56bbb08f152a8e61b12eca3302d8d68b23d__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_6d83cef3e0cb19b8320a9c5feb26b56bbb08f152a8e61b12eca3302d8d68b23d_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_6d83cef3e0cb19b8320a9c5feb26b56bbb08f152a8e61b12eca3302d8d68b23d(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_6d83cef3e0cb19b8320a9c5feb26b56bbb08f152a8e61b12eca3302d8d68b23d__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 22886
            /// @src 36:6788:7183  "function approve(address to, uint256 tokenId) public virtual override {..."
            function fun_approve_22886(var_to_22845, var_tokenId_22847) {

                /// @src 36:6899:6906  "tokenId"
                let _14 := var_tokenId_22847
                let expr_22855 := _14
                /// @src 36:6884:6907  "ERC721.ownerOf(tokenId)"
                let expr_22856 := fun_ownerOf_22695(expr_22855)
                /// @src 36:6868:6907  "address owner = ERC721.ownerOf(tokenId)"
                let var_owner_22852 := expr_22856
                /// @src 36:6925:6927  "to"
                let _15 := var_to_22845
                let expr_22859 := _15
                /// @src 36:6931:6936  "owner"
                let _16 := var_owner_22852
                let expr_22860 := _16
                /// @src 36:6925:6936  "to != owner"
                let expr_22861 := iszero(eq(cleanup_t_address(expr_22859), cleanup_t_address(expr_22860)))
                /// @src 36:6917:6974  "require(to != owner, \"ERC721: approval to current owner\")"
                require_helper_t_stringliteral_b51b4875eede07862961e8f9365c6749f5fe55c6ee5d7a9e42b6912ad0b15942(expr_22861)
                /// @src 36:6993:7005  "_msgSender()"
                let expr_22867 := fun__msgSender_6002()
                /// @src 36:7009:7014  "owner"
                let _17 := var_owner_22852
                let expr_22868 := _17
                /// @src 36:6993:7014  "_msgSender() == owner"
                let expr_22869 := eq(convert_t_address_payable_to_t_address(expr_22867), cleanup_t_address(expr_22868))
                /// @src 36:6993:7062  "_msgSender() == owner || ERC721.isApprovedForAll(owner, _msgSender())"
                let expr_22876 := expr_22869
                if iszero(expr_22876) {
                    /// @src 36:7042:7047  "owner"
                    let _18 := var_owner_22852
                    let expr_22872 := _18
                    /// @src 36:7049:7061  "_msgSender()"
                    let expr_22874 := fun__msgSender_6002()
                    /// @src 36:7018:7062  "ERC721.isApprovedForAll(owner, _msgSender())"
                    let _19 := convert_t_address_payable_to_t_address(expr_22874)
                    let expr_22875 := fun_isApprovedForAll_22959(expr_22872, _19)
                    /// @src 36:6993:7062  "_msgSender() == owner || ERC721.isApprovedForAll(owner, _msgSender())"
                    expr_22876 := expr_22875
                }
                /// @src 36:6985:7144  "require(_msgSender() == owner || ERC721.isApprovedForAll(owner, _msgSender()),..."
                require_helper_t_stringliteral_6d83cef3e0cb19b8320a9c5feb26b56bbb08f152a8e61b12eca3302d8d68b23d(expr_22876)
                /// @src 36:7164:7166  "to"
                let _20 := var_to_22845
                let expr_22881 := _20
                /// @src 36:7168:7175  "tokenId"
                let _21 := var_tokenId_22847
                let expr_22882 := _21
                fun__approve_23479(expr_22881, expr_22882)

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function convert_t_struct$_UintToAddressMap_$34879_storage_to_t_struct$_UintToAddressMap_$34879_storage_ptr(value) -> converted {
                converted := value
            }

            /// @ast-id 22823
            /// @src 36:6282:6490  "function totalSupply() public view virtual override returns (uint256) {..."
            function fun_totalSupply_22823() -> var__22816 {
                /// @src 36:6343:6350  "uint256"
                let zero_t_uint256_22 := zero_value_for_split_t_uint256()
                var__22816 := zero_t_uint256_22

                /// @src 36:6462:6474  "_tokenOwners"
                let _23_slot := 0x02
                let expr_22818_slot := _23_slot
                /// @src 36:6462:6481  "_tokenOwners.length"
                let expr_22819_self_slot := convert_t_struct$_UintToAddressMap_$34879_storage_to_t_struct$_UintToAddressMap_$34879_storage_ptr(expr_22818_slot)
                /// @src 36:6462:6483  "_tokenOwners.length()"
                let expr_22820 := fun_length_34969(expr_22819_self_slot)
                /// @src 36:6455:6483  "return _tokenOwners.length()"
                var__22816 := expr_22820
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function store_literal_in_memory_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2(memPtr) {

                mstore(add(memPtr, 0), "ERC721: transfer caller is not o")

                mstore(add(memPtr, 32), "wner nor approved")

            }

            function abi_encode_t_stringliteral_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 49)
                store_literal_in_memory_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 22986
            /// @src 36:8108:8408  "function transferFrom(address from, address to, uint256 tokenId) public virtual override {..."
            function fun_transferFrom_22986(var_from_22962, var_to_22964, var_tokenId_22966) {

                /// @src 36:8286:8298  "_msgSender()"
                let expr_22973 := fun__msgSender_6002()
                /// @src 36:8300:8307  "tokenId"
                let _24 := var_tokenId_22966
                let expr_22974 := _24
                /// @src 36:8267:8308  "_isApprovedOrOwner(_msgSender(), tokenId)"
                let _25 := convert_t_address_payable_to_t_address(expr_22973)
                let expr_22975 := fun__isApprovedOrOwner_23120(_25, expr_22974)
                /// @src 36:8259:8362  "require(_isApprovedOrOwner(_msgSender(), tokenId), \"ERC721: transfer caller is not owner nor approved\")"
                require_helper_t_stringliteral_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2(expr_22975)
                /// @src 36:8383:8387  "from"
                let _26 := var_from_22962
                let expr_22980 := _26
                /// @src 36:8389:8391  "to"
                let _27 := var_to_22964
                let expr_22981 := _27
                /// @src 36:8393:8400  "tokenId"
                let _28 := var_tokenId_22966
                let expr_22982 := _28
                fun__transfer_23364(expr_22980, expr_22981, expr_22982)

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_struct$_UintSet_$35528_storage_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function convert_t_struct$_UintSet_$35528_storage_to_t_struct$_UintSet_$35528_storage_ptr(value) -> converted {
                converted := value
            }

            /// @ast-id 22811
            /// @src 36:6051:6211  "function tokenOfOwnerByIndex(address owner, uint256 index) public view virtual override returns (uint256) {..."
            function fun_tokenOfOwnerByIndex_22811(var_owner_22795, var_index_22797) -> var__22801 {
                /// @src 36:6148:6155  "uint256"
                let zero_t_uint256_29 := zero_value_for_split_t_uint256()
                var__22801 := zero_t_uint256_29

                /// @src 36:6174:6187  "_holderTokens"
                let _30_slot := 0x01
                let expr_22803_slot := _30_slot
                /// @src 36:6188:6193  "owner"
                let _31 := var_owner_22795
                let expr_22804 := _31
                /// @src 36:6174:6194  "_holderTokens[owner]"
                let _32 := mapping_index_access_t_mapping$_t_address_$_t_struct$_UintSet_$35528_storage_$_of_t_address(expr_22803_slot,expr_22804)
                let _33_slot := _32
                let expr_22805_slot := _33_slot
                /// @src 36:6174:6197  "_holderTokens[owner].at"
                let expr_22806_self_slot := convert_t_struct$_UintSet_$35528_storage_to_t_struct$_UintSet_$35528_storage_ptr(expr_22805_slot)
                /// @src 36:6198:6203  "index"
                let _34 := var_index_22797
                let expr_22807 := _34
                /// @src 36:6174:6204  "_holderTokens[owner].at(index)"
                let expr_22808 := fun_at_35627(expr_22806_self_slot, expr_22807)
                /// @src 36:6167:6204  "return _holderTokens[owner].at(index)"
                var__22801 := expr_22808
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function array_allocation_size_t_string_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_string_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(memPtr) {

            }

            function copy_literal_to_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(0)
                store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(add(memPtr, 32))
            }

            function convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr() -> converted {
                converted := copy_literal_to_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470()
            }

            /// @ast-id 23005
            /// @src 36:8474:8623  "function safeTransferFrom(address from, address to, uint256 tokenId) public virtual override {..."
            function fun_safeTransferFrom_23005(var_from_22989, var_to_22991, var_tokenId_22993) {

                /// @src 36:8594:8598  "from"
                let _35 := var_from_22989
                let expr_22998 := _35
                /// @src 36:8600:8602  "to"
                let _36 := var_to_22991
                let expr_22999 := _36
                /// @src 36:8604:8611  "tokenId"
                let _37 := var_tokenId_22993
                let expr_23000 := _37
                /// @src 36:8577:8616  "safeTransferFrom(from, to, tokenId, \"\")"
                let _38_mpos := convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr()
                fun_safeTransferFrom_23035(expr_22998, expr_22999, expr_23000, _38_mpos)

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            /// @ast-id 22842
            /// @src 36:6562:6731  "function tokenByIndex(uint256 index) public view virtual override returns (uint256) {..."
            function fun_tokenByIndex_22842(var_index_22826) -> var__22830 {
                /// @src 36:6637:6644  "uint256"
                let zero_t_uint256_39 := zero_value_for_split_t_uint256()
                var__22830 := zero_t_uint256_39

                /// @src 36:6678:6690  "_tokenOwners"
                let _40_slot := 0x02
                let expr_22834_slot := _40_slot
                /// @src 36:6678:6693  "_tokenOwners.at"
                let expr_22835_self_slot := convert_t_struct$_UintToAddressMap_$34879_storage_to_t_struct$_UintToAddressMap_$34879_storage_ptr(expr_22834_slot)
                /// @src 36:6694:6699  "index"
                let _41 := var_index_22826
                let expr_22836 := _41
                /// @src 36:6678:6700  "_tokenOwners.at(index)"
                let expr_22837_component_1, expr_22837_component_2 := fun_at_35009(expr_22835_self_slot, expr_22836)
                /// @src 36:6656:6700  "(uint256 tokenId, ) = _tokenOwners.at(index)"
                let var_tokenId_22833 := expr_22837_component_1
                /// @src 36:6717:6724  "tokenId"
                let _42 := var_tokenId_22833
                let expr_22839 := _42
                /// @src 36:6710:6724  "return tokenId"
                var__22830 := expr_22839
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function store_literal_in_memory_7481f3df2a424c0755a1ad2356614e9a5a358d461ea2eae1f89cb21cbad00397(memPtr) {

                mstore(add(memPtr, 0), "ERC721: owner query for nonexist")

                mstore(add(memPtr, 32), "ent token")

            }

            function copy_literal_to_memory_7481f3df2a424c0755a1ad2356614e9a5a358d461ea2eae1f89cb21cbad00397() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(41)
                store_literal_in_memory_7481f3df2a424c0755a1ad2356614e9a5a358d461ea2eae1f89cb21cbad00397(add(memPtr, 32))
            }

            function convert_t_stringliteral_7481f3df2a424c0755a1ad2356614e9a5a358d461ea2eae1f89cb21cbad00397_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_7481f3df2a424c0755a1ad2356614e9a5a358d461ea2eae1f89cb21cbad00397()
            }

            /// @ast-id 22695
            /// @src 36:4302:4477  "function ownerOf(uint256 tokenId) public view virtual override returns (address) {..."
            function fun_ownerOf_22695(var_tokenId_22682) -> var__22686 {
                /// @src 36:4374:4381  "address"
                let zero_t_address_43 := zero_value_for_split_t_address()
                var__22686 := zero_t_address_43

                /// @src 36:4400:4412  "_tokenOwners"
                let _44_slot := 0x02
                let expr_22688_slot := _44_slot
                /// @src 36:4400:4416  "_tokenOwners.get"
                let expr_22689_self_slot := convert_t_struct$_UintToAddressMap_$34879_storage_to_t_struct$_UintToAddressMap_$34879_storage_ptr(expr_22688_slot)
                /// @src 36:4417:4424  "tokenId"
                let _45 := var_tokenId_22682
                let expr_22690 := _45
                /// @src 36:4400:4470  "_tokenOwners.get(tokenId, \"ERC721: owner query for nonexistent token\")"
                let _46_mpos := convert_t_stringliteral_7481f3df2a424c0755a1ad2356614e9a5a358d461ea2eae1f89cb21cbad00397_to_t_string_memory_ptr()
                let expr_22692 := fun_get_35112(expr_22689_self_slot, expr_22690, _46_mpos)
                /// @src 36:4393:4470  "return _tokenOwners.get(tokenId, \"ERC721: owner query for nonexistent token\")"
                var__22686 := expr_22692
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            /// @ast-id 22792
            /// @src 36:5877:5972  "function baseURI() public view virtual returns (string memory) {..."
            function fun_baseURI_22792() -> var__22787_mpos {
                /// @src 36:5925:5938  "string memory"
                let zero_t_string_memory_ptr_47_mpos := zero_value_for_split_t_string_memory_ptr()
                var__22787_mpos := zero_t_string_memory_ptr_47_mpos

                /// @src 36:5957:5965  "_baseURI"
                let _48_slot := 0x09
                let expr_22789_slot := _48_slot
                /// @src 36:5950:5965  "return _baseURI"
                var__22787_mpos := convert_array_t_string_storage_to_t_string_memory_ptr(expr_22789_slot)
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function store_literal_in_memory_7395d4d3901c50cdfcab223d072f9aa36241df5d883e62cbf147ee1b05a9e6ba(memPtr) {

                mstore(add(memPtr, 0), "ERC721: balance query for the ze")

                mstore(add(memPtr, 32), "ro address")

            }

            function abi_encode_t_stringliteral_7395d4d3901c50cdfcab223d072f9aa36241df5d883e62cbf147ee1b05a9e6ba_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 42)
                store_literal_in_memory_7395d4d3901c50cdfcab223d072f9aa36241df5d883e62cbf147ee1b05a9e6ba(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_7395d4d3901c50cdfcab223d072f9aa36241df5d883e62cbf147ee1b05a9e6ba__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_7395d4d3901c50cdfcab223d072f9aa36241df5d883e62cbf147ee1b05a9e6ba_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_7395d4d3901c50cdfcab223d072f9aa36241df5d883e62cbf147ee1b05a9e6ba(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_7395d4d3901c50cdfcab223d072f9aa36241df5d883e62cbf147ee1b05a9e6ba__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 22679
            /// @src 36:4027:4245  "function balanceOf(address owner) public view virtual override returns (uint256) {..."
            function fun_balanceOf_22679(var_owner_22656) -> var__22660 {
                /// @src 36:4099:4106  "uint256"
                let zero_t_uint256_49 := zero_value_for_split_t_uint256()
                var__22660 := zero_t_uint256_49

                /// @src 36:4126:4131  "owner"
                let _50 := var_owner_22656
                let expr_22663 := _50
                /// @src 36:4143:4144  "0"
                let expr_22666 := 0x00
                /// @src 36:4135:4145  "address(0)"
                let expr_22667 := convert_t_rational_0_by_1_to_t_address(expr_22666)
                /// @src 36:4126:4145  "owner != address(0)"
                let expr_22668 := iszero(eq(cleanup_t_address(expr_22663), cleanup_t_address(expr_22667)))
                /// @src 36:4118:4192  "require(owner != address(0), \"ERC721: balance query for the zero address\")"
                require_helper_t_stringliteral_7395d4d3901c50cdfcab223d072f9aa36241df5d883e62cbf147ee1b05a9e6ba(expr_22668)
                /// @src 36:4209:4222  "_holderTokens"
                let _51_slot := 0x01
                let expr_22672_slot := _51_slot
                /// @src 36:4223:4228  "owner"
                let _52 := var_owner_22656
                let expr_22673 := _52
                /// @src 36:4209:4229  "_holderTokens[owner]"
                let _53 := mapping_index_access_t_mapping$_t_address_$_t_struct$_UintSet_$35528_storage_$_of_t_address(expr_22672_slot,expr_22673)
                let _54_slot := _53
                let expr_22674_slot := _54_slot
                /// @src 36:4209:4236  "_holderTokens[owner].length"
                let expr_22675_self_slot := convert_t_struct$_UintSet_$35528_storage_to_t_struct$_UintSet_$35528_storage_ptr(expr_22674_slot)
                /// @src 36:4209:4238  "_holderTokens[owner].length()"
                let expr_22676 := fun_length_35606(expr_22675_self_slot)
                /// @src 36:4202:4238  "return _holderTokens[owner].length()"
                var__22660 := expr_22676
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            /// @ast-id 22715
            /// @src 36:4701:4803  "function symbol() public view virtual override returns (string memory) {..."
            function fun_symbol_22715() -> var__22710_mpos {
                /// @src 36:4757:4770  "string memory"
                let zero_t_string_memory_ptr_55_mpos := zero_value_for_split_t_string_memory_ptr()
                var__22710_mpos := zero_t_string_memory_ptr_55_mpos

                /// @src 36:4789:4796  "_symbol"
                let _56_slot := 0x07
                let expr_22712_slot := _56_slot
                /// @src 36:4782:4796  "return _symbol"
                var__22710_mpos := convert_array_t_string_storage_to_t_string_memory_ptr(expr_22712_slot)
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function store_literal_in_memory_45fe4329685be5ecd250fd0e6a25aea0ea4d0e30fb6a73c118b95749e6d70d05(memPtr) {

                mstore(add(memPtr, 0), "ERC721: approve to caller")

            }

            function abi_encode_t_stringliteral_45fe4329685be5ecd250fd0e6a25aea0ea4d0e30fb6a73c118b95749e6d70d05_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 25)
                store_literal_in_memory_45fe4329685be5ecd250fd0e6a25aea0ea4d0e30fb6a73c118b95749e6d70d05(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_45fe4329685be5ecd250fd0e6a25aea0ea4d0e30fb6a73c118b95749e6d70d05__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_45fe4329685be5ecd250fd0e6a25aea0ea4d0e30fb6a73c118b95749e6d70d05_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_45fe4329685be5ecd250fd0e6a25aea0ea4d0e30fb6a73c118b95749e6d70d05(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_45fe4329685be5ecd250fd0e6a25aea0ea4d0e30fb6a73c118b95749e6d70d05__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_bool_$_$_of_t_address_payable(slot , key) -> dataSlot {
                mstore(0, convert_t_address_payable_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
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

            function convert_t_bool_to_t_bool(value) -> converted {
                converted := cleanup_t_bool(value)
            }

            function prepare_store_t_bool(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_bool_to_t_bool(slot, value_0) {
                let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
                sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_bool(convertedValue_0)))
            }

            /// @ast-id 22941
            /// @src 36:7528:7818  "function setApprovalForAll(address operator, bool approved) public virtual override {..."
            function fun_setApprovalForAll_22941(var_operator_22910, var_approved_22912) {

                /// @src 36:7630:7638  "operator"
                let _57 := var_operator_22910
                let expr_22917 := _57
                /// @src 36:7642:7654  "_msgSender()"
                let expr_22919 := fun__msgSender_6002()
                /// @src 36:7630:7654  "operator != _msgSender()"
                let expr_22920 := iszero(eq(cleanup_t_address(expr_22917), convert_t_address_payable_to_t_address(expr_22919)))
                /// @src 36:7622:7684  "require(operator != _msgSender(), \"ERC721: approve to caller\")"
                require_helper_t_stringliteral_45fe4329685be5ecd250fd0e6a25aea0ea4d0e30fb6a73c118b95749e6d70d05(expr_22920)
                /// @src 36:7740:7748  "approved"
                let _58 := var_approved_22912
                let expr_22930 := _58
                /// @src 36:7695:7713  "_operatorApprovals"
                let _59_slot := 0x05
                let expr_22924_slot := _59_slot
                /// @src 36:7714:7726  "_msgSender()"
                let expr_22926 := fun__msgSender_6002()
                /// @src 36:7695:7727  "_operatorApprovals[_msgSender()]"
                let _60 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_bool_$_$_of_t_address_payable(expr_22924_slot,expr_22926)
                let _61_slot := _60
                let expr_22928_slot := _61_slot
                /// @src 36:7728:7736  "operator"
                let _62 := var_operator_22910
                let expr_22927 := _62
                /// @src 36:7695:7737  "_operatorApprovals[_msgSender()][operator]"
                let _63 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_22928_slot,expr_22927)
                /// @src 36:7695:7748  "_operatorApprovals[_msgSender()][operator] = approved"
                update_storage_value_offset_0_t_bool_to_t_bool(_63, expr_22930)
                let expr_22931 := expr_22930
                /// @src 36:7778:7790  "_msgSender()"
                let expr_22935 := fun__msgSender_6002()
                /// @src 36:7792:7800  "operator"
                let _64 := var_operator_22910
                let expr_22936 := _64
                /// @src 36:7802:7810  "approved"
                let _65 := var_approved_22912
                let expr_22937 := _65
                /// @src 36:7763:7811  "ApprovalForAll(_msgSender(), operator, approved)"
                let _66 := 0x17307eab39ab6107e8899845ad3d59bd9653f200f220920489ca2b5937696c31
                let _67 := convert_t_address_payable_to_t_address(expr_22935)
                let _68 := convert_t_address_to_t_address(expr_22936)
                {
                    let _69 := allocate_unbounded()
                    let _70 := abi_encode_tuple_t_bool__to_t_bool__fromStack(_69 , expr_22937)
                    log3(_69, sub(_70, _69) , _66, _67, _68)
                }
            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            /// @ast-id 23035
            /// @src 36:8689:8971  "function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory _data) public virtual override {..."
            function fun_safeTransferFrom_23035(var_from_23008, var_to_23010, var_tokenId_23012, var__data_23014_mpos) {

                /// @src 36:8839:8851  "_msgSender()"
                let expr_23021 := fun__msgSender_6002()
                /// @src 36:8853:8860  "tokenId"
                let _71 := var_tokenId_23012
                let expr_23022 := _71
                /// @src 36:8820:8861  "_isApprovedOrOwner(_msgSender(), tokenId)"
                let _72 := convert_t_address_payable_to_t_address(expr_23021)
                let expr_23023 := fun__isApprovedOrOwner_23120(_72, expr_23022)
                /// @src 36:8812:8915  "require(_isApprovedOrOwner(_msgSender(), tokenId), \"ERC721: transfer caller is not owner nor approved\")"
                require_helper_t_stringliteral_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2(expr_23023)
                /// @src 36:8939:8943  "from"
                let _73 := var_from_23008
                let expr_23028 := _73
                /// @src 36:8945:8947  "to"
                let _74 := var_to_23010
                let expr_23029 := _74
                /// @src 36:8949:8956  "tokenId"
                let _75 := var_tokenId_23012
                let expr_23030 := _75
                /// @src 36:8958:8963  "_data"
                let _76_mpos := var__data_23014_mpos
                let expr_23031_mpos := _76_mpos
                fun__safeTransfer_23064(expr_23028, expr_23029, expr_23030, expr_23031_mpos)

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function store_literal_in_memory_a2d45c0fba603d40d82d590051761ca952d1ab9d78cca6d0d464d7b6e961a9cb(memPtr) {

                mstore(add(memPtr, 0), "ERC721Metadata: URI query for no")

                mstore(add(memPtr, 32), "nexistent token")

            }

            function abi_encode_t_stringliteral_a2d45c0fba603d40d82d590051761ca952d1ab9d78cca6d0d464d7b6e961a9cb_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 47)
                store_literal_in_memory_a2d45c0fba603d40d82d590051761ca952d1ab9d78cca6d0d464d7b6e961a9cb(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_a2d45c0fba603d40d82d590051761ca952d1ab9d78cca6d0d464d7b6e961a9cb__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_a2d45c0fba603d40d82d590051761ca952d1ab9d78cca6d0d464d7b6e961a9cb_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_a2d45c0fba603d40d82d590051761ca952d1ab9d78cca6d0d464d7b6e961a9cb(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_a2d45c0fba603d40d82d590051761ca952d1ab9d78cca6d0d464d7b6e961a9cb__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_string_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(value) -> converted  {
                converted := value

            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, length)
            }

            function abi_encode_tuple_packed_t_string_memory_ptr_t_string_memory_ptr__to_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1) -> end {

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                end := pos
            }

            function convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(value) -> converted  {
                converted := value

            }

            /// @ast-id 22783
            /// @src 36:4869:5645  "function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {..."
            function fun_tokenURI_22783(var_tokenId_22718) -> var__22722_mpos {
                /// @src 36:4942:4955  "string memory"
                let zero_t_string_memory_ptr_77_mpos := zero_value_for_split_t_string_memory_ptr()
                var__22722_mpos := zero_t_string_memory_ptr_77_mpos

                /// @src 36:4983:4990  "tokenId"
                let _78 := var_tokenId_22718
                let expr_22726 := _78
                /// @src 36:4975:4991  "_exists(tokenId)"
                let expr_22727 := fun__exists_23078(expr_22726)
                /// @src 36:4967:5043  "require(_exists(tokenId), \"ERC721Metadata: URI query for nonexistent token\")"
                require_helper_t_stringliteral_a2d45c0fba603d40d82d590051761ca952d1ab9d78cca6d0d464d7b6e961a9cb(expr_22727)
                /// @src 36:5080:5090  "_tokenURIs"
                let _79_slot := 0x08
                let expr_22733_slot := _79_slot
                /// @src 36:5091:5098  "tokenId"
                let _80 := var_tokenId_22718
                let expr_22734 := _80
                /// @src 36:5080:5099  "_tokenURIs[tokenId]"
                let _81 := mapping_index_access_t_mapping$_t_uint256_$_t_string_storage_$_of_t_uint256(expr_22733_slot,expr_22734)
                let _82_slot := _81
                let expr_22735_slot := _82_slot
                /// @src 36:5054:5099  "string memory _tokenURI = _tokenURIs[tokenId]"
                let var__tokenURI_22732_mpos := convert_array_t_string_storage_to_t_string_memory_ptr(expr_22735_slot)
                /// @src 36:5130:5139  "baseURI()"
                let expr_22740_mpos := fun_baseURI_22792()
                /// @src 36:5109:5139  "string memory base = baseURI()"
                let var_base_22738_mpos := expr_22740_mpos
                /// @src 36:5218:5222  "base"
                let _83_mpos := var_base_22738_mpos
                let expr_22744_mpos := _83_mpos
                /// @src 36:5212:5223  "bytes(base)"
                let expr_22745_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_22744_mpos)
                /// @src 36:5212:5230  "bytes(base).length"
                let expr_22746 := array_length_t_bytes_memory_ptr(expr_22745_mpos)
                /// @src 36:5234:5235  "0"
                let expr_22747 := 0x00
                /// @src 36:5212:5235  "bytes(base).length == 0"
                let expr_22748 := eq(cleanup_t_uint256(expr_22746), convert_t_rational_0_by_1_to_t_uint256(expr_22747))
                /// @src 36:5208:5278  "if (bytes(base).length == 0) {..."
                if expr_22748 {
                    /// @src 36:5258:5267  "_tokenURI"
                    let _84_mpos := var__tokenURI_22732_mpos
                    let expr_22749_mpos := _84_mpos
                    /// @src 36:5251:5267  "return _tokenURI"
                    var__22722_mpos := expr_22749_mpos
                    leave
                    /// @src 36:5208:5278  "if (bytes(base).length == 0) {..."
                }
                /// @src 36:5386:5395  "_tokenURI"
                let _85_mpos := var__tokenURI_22732_mpos
                let expr_22755_mpos := _85_mpos
                /// @src 36:5380:5396  "bytes(_tokenURI)"
                let expr_22756_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_22755_mpos)
                /// @src 36:5380:5403  "bytes(_tokenURI).length"
                let expr_22757 := array_length_t_bytes_memory_ptr(expr_22756_mpos)
                /// @src 36:5406:5407  "0"
                let expr_22758 := 0x00
                /// @src 36:5380:5407  "bytes(_tokenURI).length > 0"
                let expr_22759 := gt(cleanup_t_uint256(expr_22757), convert_t_rational_0_by_1_to_t_uint256(expr_22758))
                /// @src 36:5376:5482  "if (bytes(_tokenURI).length > 0) {..."
                if expr_22759 {
                    /// @src 36:5454:5458  "base"
                    let _86_mpos := var_base_22738_mpos
                    let expr_22764_mpos := _86_mpos
                    /// @src 36:5460:5469  "_tokenURI"
                    let _87_mpos := var__tokenURI_22732_mpos
                    let expr_22765_mpos := _87_mpos
                    /// @src 36:5437:5470  "abi.encodePacked(base, _tokenURI)"

                    let expr_22766_mpos := allocate_unbounded()
                    let _88 := add(expr_22766_mpos, 0x20)

                    let _89 := abi_encode_tuple_packed_t_string_memory_ptr_t_string_memory_ptr__to_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_88, expr_22764_mpos, expr_22765_mpos)
                    mstore(expr_22766_mpos, sub(_89, add(expr_22766_mpos, 0x20)))
                    finalize_allocation(expr_22766_mpos, sub(_89, expr_22766_mpos))
                    /// @src 36:5430:5471  "string(abi.encodePacked(base, _tokenURI))"
                    let expr_22767_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_22766_mpos)
                    /// @src 36:5423:5471  "return string(abi.encodePacked(base, _tokenURI))"
                    var__22722_mpos := expr_22767_mpos
                    leave
                    /// @src 36:5376:5482  "if (bytes(_tokenURI).length > 0) {..."
                }
                /// @src 36:5612:5616  "base"
                let _90_mpos := var_base_22738_mpos
                let expr_22775_mpos := _90_mpos
                /// @src 36:5618:5625  "tokenId"
                let _91 := var_tokenId_22718
                let expr_22776 := _91
                /// @src 36:5618:5634  "tokenId.toString"
                let expr_22777_self := expr_22776
                /// @src 36:5618:5636  "tokenId.toString()"
                let expr_22778_mpos := fun_toString_35714(expr_22777_self)
                /// @src 36:5595:5637  "abi.encodePacked(base, tokenId.toString())"

                let expr_22779_mpos := allocate_unbounded()
                let _92 := add(expr_22779_mpos, 0x20)

                let _93 := abi_encode_tuple_packed_t_string_memory_ptr_t_string_memory_ptr__to_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_92, expr_22775_mpos, expr_22778_mpos)
                mstore(expr_22779_mpos, sub(_93, add(expr_22779_mpos, 0x20)))
                finalize_allocation(expr_22779_mpos, sub(_93, expr_22779_mpos))
                /// @src 36:5588:5638  "string(abi.encodePacked(base, tokenId.toString()))"
                let expr_22780_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_22779_mpos)
                /// @src 36:5581:5638  "return string(abi.encodePacked(base, tokenId.toString()))"
                var__22722_mpos := expr_22780_mpos
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_bool_$_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @ast-id 22959
            /// @src 36:7884:8046  "function isApprovedForAll(address owner, address operator) public view virtual override returns (bool) {..."
            function fun_isApprovedForAll_22959(var_owner_22944, var_operator_22946) -> var__22950 {
                /// @src 36:7981:7985  "bool"
                let zero_t_bool_94 := zero_value_for_split_t_bool()
                var__22950 := zero_t_bool_94

                /// @src 36:8004:8022  "_operatorApprovals"
                let _95_slot := 0x05
                let expr_22952_slot := _95_slot
                /// @src 36:8023:8028  "owner"
                let _96 := var_owner_22944
                let expr_22953 := _96
                /// @src 36:8004:8029  "_operatorApprovals[owner]"
                let _97 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_bool_$_$_of_t_address(expr_22952_slot,expr_22953)
                let _98_slot := _97
                let expr_22954_slot := _98_slot
                /// @src 36:8030:8038  "operator"
                let _99 := var_operator_22946
                let expr_22955 := _99
                /// @src 36:8004:8039  "_operatorApprovals[owner][operator]"
                let _100 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_22954_slot,expr_22955)
                let _101 := read_from_storage_split_offset_0_t_bool(_100)
                let expr_22956 := _101
                /// @src 36:7997:8039  "return _operatorApprovals[owner][operator]"
                var__22950 := expr_22956
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            /// @ast-id 23078
            /// @src 36:10405:10530  "function _exists(uint256 tokenId) internal view virtual returns (bool) {..."
            function fun__exists_23078(var_tokenId_23067) -> var__23070 {
                /// @src 36:10470:10474  "bool"
                let zero_t_bool_102 := zero_value_for_split_t_bool()
                var__23070 := zero_t_bool_102

                /// @src 36:10493:10505  "_tokenOwners"
                let _103_slot := 0x02
                let expr_23072_slot := _103_slot
                /// @src 36:10493:10514  "_tokenOwners.contains"
                let expr_23073_self_slot := convert_t_struct$_UintToAddressMap_$34879_storage_to_t_struct$_UintToAddressMap_$34879_storage_ptr(expr_23072_slot)
                /// @src 36:10515:10522  "tokenId"
                let _104 := var_tokenId_23067
                let expr_23074 := _104
                /// @src 36:10493:10523  "_tokenOwners.contains(tokenId)"
                let expr_23075 := fun_contains_34954(expr_23073_self_slot, expr_23074)
                /// @src 36:10486:10523  "return _tokenOwners.contains(tokenId)"
                var__23070 := expr_23075
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function zero_value_for_split_t_address_payable() -> ret {
                ret := 0
            }

            function convert_t_uint160_to_t_address_payable(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_address_payable(value) -> converted {
                converted := convert_t_uint160_to_t_address_payable(value)
            }

            /// @ast-id 6002
            /// @src 42:635:748  "function _msgSender() internal view virtual returns (address payable) {..."
            function fun__msgSender_6002() -> var__5993 {
                /// @src 42:688:703  "address payable"
                let zero_t_address_payable_105 := zero_value_for_split_t_address_payable()
                var__5993 := zero_t_address_payable_105

                /// @src 42:730:740  "msg.sender"
                let expr_5998 := caller()
                /// @src 42:722:741  "payable(msg.sender)"
                let expr_5999 := convert_t_address_to_t_address_payable(expr_5998)
                /// @src 42:715:741  "return payable(msg.sender)"
                var__5993 := expr_5999
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function update_byte_slice_20_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function prepare_store_t_address(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_address_to_t_address(slot, value_0) {
                let convertedValue_0 := convert_t_address_to_t_address(value_0)
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(convertedValue_0)))
            }

            /// @ast-id 23479
            /// @src 36:16247:16436  "function _approve(address to, uint256 tokenId) internal virtual {..."
            function fun__approve_23479(var_to_23458, var_tokenId_23460) {

                /// @src 36:16348:16350  "to"
                let _106 := var_to_23458
                let expr_23466 := _106
                /// @src 36:16321:16336  "_tokenApprovals"
                let _107_slot := 0x04
                let expr_23463_slot := _107_slot
                /// @src 36:16337:16344  "tokenId"
                let _108 := var_tokenId_23460
                let expr_23464 := _108
                /// @src 36:16321:16345  "_tokenApprovals[tokenId]"
                let _109 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_23463_slot,expr_23464)
                /// @src 36:16321:16350  "_tokenApprovals[tokenId] = to"
                update_storage_value_offset_0_t_address_to_t_address(_109, expr_23466)
                let expr_23467 := expr_23466
                /// @src 36:16389:16396  "tokenId"
                let _110 := var_tokenId_23460
                let expr_23472 := _110
                /// @src 36:16374:16397  "ERC721.ownerOf(tokenId)"
                let expr_23473 := fun_ownerOf_22695(expr_23472)
                /// @src 36:16399:16401  "to"
                let _111 := var_to_23458
                let expr_23474 := _111
                /// @src 36:16403:16410  "tokenId"
                let _112 := var_tokenId_23460
                let expr_23475 := _112
                /// @src 36:16365:16411  "Approval(ERC721.ownerOf(tokenId), to, tokenId)"
                let _113 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                let _114 := convert_t_address_to_t_address(expr_23473)
                let _115 := convert_t_address_to_t_address(expr_23474)
                let _116 := convert_t_uint256_to_t_uint256(expr_23475)
                {
                    let _117 := allocate_unbounded()
                    let _118 := abi_encode_tuple__to__fromStack(_117 )
                    log4(_117, sub(_118, _117) , _113, _114, _115, _116)
                }
            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function convert_t_struct$_Map_$34550_storage_to_t_struct$_Map_$34550_storage_ptr(value) -> converted {
                converted := value
            }

            /// @ast-id 34969
            /// @src 43:7849:7970  "function length(UintToAddressMap storage map) internal view returns (uint256) {..."
            function fun_length_34969(var_map_34958_slot) -> var__34961 {
                /// @src 43:7918:7925  "uint256"
                let zero_t_uint256_119 := zero_value_for_split_t_uint256()
                var__34961 := zero_t_uint256_119

                /// @src 43:7952:7955  "map"
                let _120_slot := var_map_34958_slot
                let expr_34964_slot := _120_slot
                /// @src 43:7952:7962  "map._inner"
                let _121 := add(expr_34964_slot, 0)
                let _122_slot := _121
                let expr_34965_slot := _122_slot
                /// @src 43:7944:7963  "_length(map._inner)"
                let _123_slot := convert_t_struct$_Map_$34550_storage_to_t_struct$_Map_$34550_storage_ptr(expr_34965_slot)
                let expr_34966 := fun__length_34729(_123_slot)
                /// @src 43:7937:7963  "return _length(map._inner)"
                var__34961 := expr_34966
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function store_literal_in_memory_5797d1ccb08b83980dd0c07ea40d8f6a64d35fff736a19bdd17522954cb0899c(memPtr) {

                mstore(add(memPtr, 0), "ERC721: operator query for nonex")

                mstore(add(memPtr, 32), "istent token")

            }

            function abi_encode_t_stringliteral_5797d1ccb08b83980dd0c07ea40d8f6a64d35fff736a19bdd17522954cb0899c_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 44)
                store_literal_in_memory_5797d1ccb08b83980dd0c07ea40d8f6a64d35fff736a19bdd17522954cb0899c(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_5797d1ccb08b83980dd0c07ea40d8f6a64d35fff736a19bdd17522954cb0899c__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_5797d1ccb08b83980dd0c07ea40d8f6a64d35fff736a19bdd17522954cb0899c_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_5797d1ccb08b83980dd0c07ea40d8f6a64d35fff736a19bdd17522954cb0899c(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_5797d1ccb08b83980dd0c07ea40d8f6a64d35fff736a19bdd17522954cb0899c__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 23120
            /// @src 36:10688:11039  "function _isApprovedOrOwner(address spender, uint256 tokenId) internal view virtual returns (bool) {..."
            function fun__isApprovedOrOwner_23120(var_spender_23081, var_tokenId_23083) -> var__23086 {
                /// @src 36:10781:10785  "bool"
                let zero_t_bool_124 := zero_value_for_split_t_bool()
                var__23086 := zero_t_bool_124

                /// @src 36:10813:10820  "tokenId"
                let _125 := var_tokenId_23083
                let expr_23090 := _125
                /// @src 36:10805:10821  "_exists(tokenId)"
                let expr_23091 := fun__exists_23078(expr_23090)
                /// @src 36:10797:10870  "require(_exists(tokenId), \"ERC721: operator query for nonexistent token\")"
                require_helper_t_stringliteral_5797d1ccb08b83980dd0c07ea40d8f6a64d35fff736a19bdd17522954cb0899c(expr_23091)
                /// @src 36:10911:10918  "tokenId"
                let _126 := var_tokenId_23083
                let expr_23099 := _126
                /// @src 36:10896:10919  "ERC721.ownerOf(tokenId)"
                let expr_23100 := fun_ownerOf_22695(expr_23099)
                /// @src 36:10880:10919  "address owner = ERC721.ownerOf(tokenId)"
                let var_owner_23096 := expr_23100
                /// @src 36:10937:10944  "spender"
                let _127 := var_spender_23081
                let expr_23102 := _127
                /// @src 36:10948:10953  "owner"
                let _128 := var_owner_23096
                let expr_23103 := _128
                /// @src 36:10937:10953  "spender == owner"
                let expr_23104 := eq(cleanup_t_address(expr_23102), cleanup_t_address(expr_23103))
                /// @src 36:10937:10988  "spender == owner || getApproved(tokenId) == spender"
                let expr_23110 := expr_23104
                if iszero(expr_23110) {
                    /// @src 36:10969:10976  "tokenId"
                    let _129 := var_tokenId_23083
                    let expr_23106 := _129
                    /// @src 36:10957:10977  "getApproved(tokenId)"
                    let expr_23107 := fun_getApproved_22907(expr_23106)
                    /// @src 36:10981:10988  "spender"
                    let _130 := var_spender_23081
                    let expr_23108 := _130
                    /// @src 36:10957:10988  "getApproved(tokenId) == spender"
                    let expr_23109 := eq(cleanup_t_address(expr_23107), cleanup_t_address(expr_23108))
                    /// @src 36:10937:10988  "spender == owner || getApproved(tokenId) == spender"
                    expr_23110 := expr_23109
                }
                /// @src 36:10937:11031  "spender == owner || getApproved(tokenId) == spender || ERC721.isApprovedForAll(owner, spender)"
                let expr_23116 := expr_23110
                if iszero(expr_23116) {
                    /// @src 36:11016:11021  "owner"
                    let _131 := var_owner_23096
                    let expr_23113 := _131
                    /// @src 36:11023:11030  "spender"
                    let _132 := var_spender_23081
                    let expr_23114 := _132
                    /// @src 36:10992:11031  "ERC721.isApprovedForAll(owner, spender)"
                    let expr_23115 := fun_isApprovedForAll_22959(expr_23113, expr_23114)
                    /// @src 36:10937:11031  "spender == owner || getApproved(tokenId) == spender || ERC721.isApprovedForAll(owner, spender)"
                    expr_23116 := expr_23115
                }
                /// @src 36:10936:11032  "(spender == owner || getApproved(tokenId) == spender || ERC721.isApprovedForAll(owner, spender))"
                let expr_23117 := expr_23116
                /// @src 36:10929:11032  "return (spender == owner || getApproved(tokenId) == spender || ERC721.isApprovedForAll(owner, spender))"
                var__23086 := expr_23117
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function store_literal_in_memory_a01073130a885d6c1c1af6ac75fc3b1c4f9403c235362962bbf528e2bd87d950(memPtr) {

                mstore(add(memPtr, 0), "ERC721: transfer of token that i")

                mstore(add(memPtr, 32), "s not own")

            }

            function abi_encode_t_stringliteral_a01073130a885d6c1c1af6ac75fc3b1c4f9403c235362962bbf528e2bd87d950_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 41)
                store_literal_in_memory_a01073130a885d6c1c1af6ac75fc3b1c4f9403c235362962bbf528e2bd87d950(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_a01073130a885d6c1c1af6ac75fc3b1c4f9403c235362962bbf528e2bd87d950__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_a01073130a885d6c1c1af6ac75fc3b1c4f9403c235362962bbf528e2bd87d950_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_a01073130a885d6c1c1af6ac75fc3b1c4f9403c235362962bbf528e2bd87d950(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_a01073130a885d6c1c1af6ac75fc3b1c4f9403c235362962bbf528e2bd87d950__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_455fea98ea03c32d7dd1a6f1426917d80529bf47b3ccbde74e7206e889e709f4(memPtr) {

                mstore(add(memPtr, 0), "ERC721: transfer to the zero add")

                mstore(add(memPtr, 32), "ress")

            }

            function abi_encode_t_stringliteral_455fea98ea03c32d7dd1a6f1426917d80529bf47b3ccbde74e7206e889e709f4_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 36)
                store_literal_in_memory_455fea98ea03c32d7dd1a6f1426917d80529bf47b3ccbde74e7206e889e709f4(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_455fea98ea03c32d7dd1a6f1426917d80529bf47b3ccbde74e7206e889e709f4__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_455fea98ea03c32d7dd1a6f1426917d80529bf47b3ccbde74e7206e889e709f4_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_455fea98ea03c32d7dd1a6f1426917d80529bf47b3ccbde74e7206e889e709f4(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_455fea98ea03c32d7dd1a6f1426917d80529bf47b3ccbde74e7206e889e709f4__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 23364
            /// @src 36:13729:14313  "function _transfer(address from, address to, uint256 tokenId) internal virtual {..."
            function fun__transfer_23364(var_from_23295, var_to_23297, var_tokenId_23299) {

                /// @src 36:13841:13848  "tokenId"
                let _133 := var_tokenId_23299
                let expr_23305 := _133
                /// @src 36:13826:13849  "ERC721.ownerOf(tokenId)"
                let expr_23306 := fun_ownerOf_22695(expr_23305)
                /// @src 36:13853:13857  "from"
                let _134 := var_from_23295
                let expr_23307 := _134
                /// @src 36:13826:13857  "ERC721.ownerOf(tokenId) == from"
                let expr_23308 := eq(cleanup_t_address(expr_23306), cleanup_t_address(expr_23307))
                /// @src 36:13818:13903  "require(ERC721.ownerOf(tokenId) == from, \"ERC721: transfer of token that is not own\")"
                require_helper_t_stringliteral_a01073130a885d6c1c1af6ac75fc3b1c4f9403c235362962bbf528e2bd87d950(expr_23308)
                /// @src 36:13939:13941  "to"
                let _135 := var_to_23297
                let expr_23313 := _135
                /// @src 36:13953:13954  "0"
                let expr_23316 := 0x00
                /// @src 36:13945:13955  "address(0)"
                let expr_23317 := convert_t_rational_0_by_1_to_t_address(expr_23316)
                /// @src 36:13939:13955  "to != address(0)"
                let expr_23318 := iszero(eq(cleanup_t_address(expr_23313), cleanup_t_address(expr_23317)))
                /// @src 36:13931:13996  "require(to != address(0), \"ERC721: transfer to the zero address\")"
                require_helper_t_stringliteral_455fea98ea03c32d7dd1a6f1426917d80529bf47b3ccbde74e7206e889e709f4(expr_23318)
                /// @src 36:14028:14032  "from"
                let _136 := var_from_23295
                let expr_23323 := _136
                /// @src 36:14034:14036  "to"
                let _137 := var_to_23297
                let expr_23324 := _137
                /// @src 36:14038:14045  "tokenId"
                let _138 := var_tokenId_23299
                let expr_23325 := _138
                fun__beforeTokenTransfer_23490(expr_23323, expr_23324, expr_23325)
                /// @src 36:14125:14126  "0"
                let expr_23331 := 0x00
                /// @src 36:14117:14127  "address(0)"
                let expr_23332 := convert_t_rational_0_by_1_to_t_address(expr_23331)
                /// @src 36:14129:14136  "tokenId"
                let _139 := var_tokenId_23299
                let expr_23333 := _139
                fun__approve_23479(expr_23332, expr_23333)
                /// @src 36:14148:14161  "_holderTokens"
                let _140_slot := 0x01
                let expr_23336_slot := _140_slot
                /// @src 36:14162:14166  "from"
                let _141 := var_from_23295
                let expr_23337 := _141
                /// @src 36:14148:14167  "_holderTokens[from]"
                let _142 := mapping_index_access_t_mapping$_t_address_$_t_struct$_UintSet_$35528_storage_$_of_t_address(expr_23336_slot,expr_23337)
                let _143_slot := _142
                let expr_23338_slot := _143_slot
                /// @src 36:14148:14174  "_holderTokens[from].remove"
                let expr_23339_self_slot := convert_t_struct$_UintSet_$35528_storage_to_t_struct$_UintSet_$35528_storage_ptr(expr_23338_slot)
                /// @src 36:14175:14182  "tokenId"
                let _144 := var_tokenId_23299
                let expr_23340 := _144
                /// @src 36:14148:14183  "_holderTokens[from].remove(tokenId)"
                let expr_23341 := fun_remove_35570(expr_23339_self_slot, expr_23340)
                /// @src 36:14193:14206  "_holderTokens"
                let _145_slot := 0x01
                let expr_23343_slot := _145_slot
                /// @src 36:14207:14209  "to"
                let _146 := var_to_23297
                let expr_23344 := _146
                /// @src 36:14193:14210  "_holderTokens[to]"
                let _147 := mapping_index_access_t_mapping$_t_address_$_t_struct$_UintSet_$35528_storage_$_of_t_address(expr_23343_slot,expr_23344)
                let _148_slot := _147
                let expr_23345_slot := _148_slot
                /// @src 36:14193:14214  "_holderTokens[to].add"
                let expr_23346_self_slot := convert_t_struct$_UintSet_$35528_storage_to_t_struct$_UintSet_$35528_storage_ptr(expr_23345_slot)
                /// @src 36:14215:14222  "tokenId"
                let _149 := var_tokenId_23299
                let expr_23347 := _149
                /// @src 36:14193:14223  "_holderTokens[to].add(tokenId)"
                let expr_23348 := fun_add_35549(expr_23346_self_slot, expr_23347)
                /// @src 36:14234:14246  "_tokenOwners"
                let _150_slot := 0x02
                let expr_23350_slot := _150_slot
                /// @src 36:14234:14250  "_tokenOwners.set"
                let expr_23352_self_slot := convert_t_struct$_UintToAddressMap_$34879_storage_to_t_struct$_UintToAddressMap_$34879_storage_ptr(expr_23350_slot)
                /// @src 36:14251:14258  "tokenId"
                let _151 := var_tokenId_23299
                let expr_23353 := _151
                /// @src 36:14260:14262  "to"
                let _152 := var_to_23297
                let expr_23354 := _152
                /// @src 36:14234:14263  "_tokenOwners.set(tokenId, to)"
                let expr_23355 := fun_set_34912(expr_23352_self_slot, expr_23353, expr_23354)
                /// @src 36:14288:14292  "from"
                let _153 := var_from_23295
                let expr_23358 := _153
                /// @src 36:14294:14296  "to"
                let _154 := var_to_23297
                let expr_23359 := _154
                /// @src 36:14298:14305  "tokenId"
                let _155 := var_tokenId_23299
                let expr_23360 := _155
                /// @src 36:14279:14306  "Transfer(from, to, tokenId)"
                let _156 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _157 := convert_t_address_to_t_address(expr_23358)
                let _158 := convert_t_address_to_t_address(expr_23359)
                let _159 := convert_t_uint256_to_t_uint256(expr_23360)
                {
                    let _160 := allocate_unbounded()
                    let _161 := abi_encode_tuple__to__fromStack(_160 )
                    log4(_160, sub(_161, _160) , _156, _157, _158, _159)
                }
            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function convert_t_struct$_Set_$35124_storage_to_t_struct$_Set_$35124_storage_ptr(value) -> converted {
                converted := value
            }

            function convert_t_bytes32_to_t_uint256(value) -> converted {
                converted := convert_t_uint256_to_t_uint256(shift_right_0_unsigned(value))
            }

            /// @ast-id 35627
            /// @src 44:9279:9414  "function at(UintSet storage set, uint256 index) internal view returns (uint256) {..."
            function fun_at_35627(var_set_35610_slot, var_index_35612) -> var__35615 {
                /// @src 44:9350:9357  "uint256"
                let zero_t_uint256_162 := zero_value_for_split_t_uint256()
                var__35615 := zero_t_uint256_162

                /// @src 44:9388:9391  "set"
                let _163_slot := var_set_35610_slot
                let expr_35620_slot := _163_slot
                /// @src 44:9388:9398  "set._inner"
                let _164 := add(expr_35620_slot, 0)
                let _165_slot := _164
                let expr_35621_slot := _165_slot
                /// @src 44:9400:9405  "index"
                let _166 := var_index_35612
                let expr_35622 := _166
                /// @src 44:9384:9406  "_at(set._inner, index)"
                let _167_slot := convert_t_struct$_Set_$35124_storage_to_t_struct$_Set_$35124_storage_ptr(expr_35621_slot)
                let expr_35623 := fun__at_35306(_167_slot, expr_35622)
                /// @src 44:9376:9407  "uint256(_at(set._inner, index))"
                let expr_35624 := convert_t_bytes32_to_t_uint256(expr_35623)
                /// @src 44:9369:9407  "return uint256(_at(set._inner, index))"
                var__35615 := expr_35624
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function convert_t_uint256_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint256(value)))
            }

            /// @ast-id 35009
            /// @src 43:8298:8531  "function at(UintToAddressMap storage map, uint256 index) internal view returns (uint256, address) {..."
            function fun_at_35009(var_map_34973_slot, var_index_34975) -> var__34978, var__34980 {
                /// @src 43:8378:8385  "uint256"
                let zero_t_uint256_168 := zero_value_for_split_t_uint256()
                var__34978 := zero_t_uint256_168
                /// @src 43:8387:8394  "address"
                let zero_t_address_169 := zero_value_for_split_t_address()
                var__34980 := zero_t_address_169

                /// @src 43:8441:8444  "map"
                let _170_slot := var_map_34973_slot
                let expr_34987_slot := _170_slot
                /// @src 43:8441:8451  "map._inner"
                let _171 := add(expr_34987_slot, 0)
                let _172_slot := _171
                let expr_34988_slot := _172_slot
                /// @src 43:8453:8458  "index"
                let _173 := var_index_34975
                let expr_34989 := _173
                /// @src 43:8437:8459  "_at(map._inner, index)"
                let _174_slot := convert_t_struct$_Map_$34550_storage_to_t_struct$_Map_$34550_storage_ptr(expr_34988_slot)
                let expr_34990_component_1, expr_34990_component_2 := fun__at_34766(_174_slot, expr_34989)
                /// @src 43:8406:8459  "(bytes32 key, bytes32 value) = _at(map._inner, index)"
                let var_key_34983 := expr_34990_component_1
                let var_value_34985 := expr_34990_component_2
                /// @src 43:8485:8488  "key"
                let _175 := var_key_34983
                let expr_34994 := _175
                /// @src 43:8477:8489  "uint256(key)"
                let expr_34995 := convert_t_bytes32_to_t_uint256(expr_34994)
                /// @src 43:8476:8524  "(uint256(key), address(uint160(uint256(value))))"
                let expr_35006_component_1 := expr_34995
                /// @src 43:8515:8520  "value"
                let _176 := var_value_34985
                let expr_35002 := _176
                /// @src 43:8507:8521  "uint256(value)"
                let expr_35003 := convert_t_bytes32_to_t_uint256(expr_35002)
                /// @src 43:8499:8522  "uint160(uint256(value))"
                let expr_35004 := convert_t_uint256_to_t_uint160(expr_35003)
                /// @src 43:8491:8523  "address(uint160(uint256(value)))"
                let expr_35005 := convert_t_uint160_to_t_address(expr_35004)
                /// @src 43:8476:8524  "(uint256(key), address(uint160(uint256(value))))"
                let expr_35006_component_2 := expr_35005
                /// @src 43:8469:8524  "return (uint256(key), address(uint160(uint256(value))))"
                var__34978 := expr_35006_component_1
                var__34980 := expr_35006_component_2
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function convert_t_uint256_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_uint256(value)))
            }

            /// @ast-id 35112
            /// @src 43:9551:9762  "function get(UintToAddressMap storage map, uint256 key, string memory errorMessage) internal view returns (address) {..."
            function fun_get_35112(var_map_35083_slot, var_key_35085, var_errorMessage_35087_mpos) -> var__35090 {
                /// @src 43:9658:9665  "address"
                let zero_t_address_177 := zero_value_for_split_t_address()
                var__35090 := zero_t_address_177

                /// @src 43:9713:9716  "map"
                let _178_slot := var_map_35083_slot
                let expr_35099_slot := _178_slot
                /// @src 43:9713:9723  "map._inner"
                let _179 := add(expr_35099_slot, 0)
                let _180_slot := _179
                let expr_35100_slot := _180_slot
                /// @src 43:9733:9736  "key"
                let _181 := var_key_35085
                let expr_35103 := _181
                /// @src 43:9725:9737  "bytes32(key)"
                let expr_35104 := convert_t_uint256_to_t_bytes32(expr_35103)
                /// @src 43:9739:9751  "errorMessage"
                let _182_mpos := var_errorMessage_35087_mpos
                let expr_35105_mpos := _182_mpos
                /// @src 43:9708:9752  "_get(map._inner, bytes32(key), errorMessage)"
                let _183_slot := convert_t_struct$_Map_$34550_storage_to_t_struct$_Map_$34550_storage_ptr(expr_35100_slot)
                let expr_35106 := fun__get_34875(_183_slot, expr_35104, expr_35105_mpos)
                /// @src 43:9700:9753  "uint256(_get(map._inner, bytes32(key), errorMessage))"
                let expr_35107 := convert_t_bytes32_to_t_uint256(expr_35106)
                /// @src 43:9692:9754  "uint160(uint256(_get(map._inner, bytes32(key), errorMessage)))"
                let expr_35108 := convert_t_uint256_to_t_uint160(expr_35107)
                /// @src 43:9684:9755  "address(uint160(uint256(_get(map._inner, bytes32(key), errorMessage))))"
                let expr_35109 := convert_t_uint160_to_t_address(expr_35108)
                /// @src 43:9677:9755  "return address(uint160(uint256(_get(map._inner, bytes32(key), errorMessage))))"
                var__35090 := expr_35109
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            /// @ast-id 35606
            /// @src 44:8835:8947  "function length(UintSet storage set) internal view returns (uint256) {..."
            function fun_length_35606(var_set_35595_slot) -> var__35598 {
                /// @src 44:8895:8902  "uint256"
                let zero_t_uint256_184 := zero_value_for_split_t_uint256()
                var__35598 := zero_t_uint256_184

                /// @src 44:8929:8932  "set"
                let _185_slot := var_set_35595_slot
                let expr_35601_slot := _185_slot
                /// @src 44:8929:8939  "set._inner"
                let _186 := add(expr_35601_slot, 0)
                let _187_slot := _186
                let expr_35602_slot := _187_slot
                /// @src 44:8921:8940  "_length(set._inner)"
                let _188_slot := convert_t_struct$_Set_$35124_storage_to_t_struct$_Set_$35124_storage_ptr(expr_35602_slot)
                let expr_35603 := fun__length_35280(_188_slot)
                /// @src 44:8914:8940  "return _length(set._inner)"
                var__35598 := expr_35603
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function store_literal_in_memory_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e(memPtr) {

                mstore(add(memPtr, 0), "ERC721: transfer to non ERC721Re")

                mstore(add(memPtr, 32), "ceiver implementer")

            }

            function abi_encode_t_stringliteral_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 50)
                store_literal_in_memory_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 23064
            /// @src 36:9833:10102  "function _safeTransfer(address from, address to, uint256 tokenId, bytes memory _data) internal virtual {..."
            function fun__safeTransfer_23064(var_from_23038, var_to_23040, var_tokenId_23042, var__data_23044_mpos) {

                /// @src 36:9956:9960  "from"
                let _189 := var_from_23038
                let expr_23048 := _189
                /// @src 36:9962:9964  "to"
                let _190 := var_to_23040
                let expr_23049 := _190
                /// @src 36:9966:9973  "tokenId"
                let _191 := var_tokenId_23042
                let expr_23050 := _191
                fun__transfer_23364(expr_23048, expr_23049, expr_23050)
                /// @src 36:10015:10019  "from"
                let _192 := var_from_23038
                let expr_23055 := _192
                /// @src 36:10021:10023  "to"
                let _193 := var_to_23040
                let expr_23056 := _193
                /// @src 36:10025:10032  "tokenId"
                let _194 := var_tokenId_23042
                let expr_23057 := _194
                /// @src 36:10034:10039  "_data"
                let _195_mpos := var__data_23044_mpos
                let expr_23058_mpos := _195_mpos
                /// @src 36:9992:10040  "_checkOnERC721Received(from, to, tokenId, _data)"
                let expr_23059 := fun__checkOnERC721Received_23455(expr_23055, expr_23056, expr_23057, expr_23058_mpos)
                /// @src 36:9984:10095  "require(_checkOnERC721Received(from, to, tokenId, _data), \"ERC721: transfer to non ERC721Receiver implementer\")"
                require_helper_t_stringliteral_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e(expr_23059)

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function store_literal_in_memory_044852b2a670ade5407e78fb2863c51de9fcb96542a07186fe3aeda6bb8a116d(memPtr) {

                mstore(add(memPtr, 0), "0")

            }

            function copy_literal_to_memory_044852b2a670ade5407e78fb2863c51de9fcb96542a07186fe3aeda6bb8a116d() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(1)
                store_literal_in_memory_044852b2a670ade5407e78fb2863c51de9fcb96542a07186fe3aeda6bb8a116d(add(memPtr, 32))
            }

            function convert_t_stringliteral_044852b2a670ade5407e78fb2863c51de9fcb96542a07186fe3aeda6bb8a116d_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_044852b2a670ade5407e78fb2863c51de9fcb96542a07186fe3aeda6bb8a116d()
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            function cleanup_t_rational_10_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10_by_1(value)))
            }

            function panic_error_0x12() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x12)
                revert(0, 0x24)
            }

            function checked_div_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }

                r := div(x, y)
            }

            function allocate_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_bytes_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_memory_chunk_t_bytes1(dataStart, dataSizeInBytes) {
                calldatacopy(dataStart, calldatasize(), dataSizeInBytes)
            }

            function allocate_and_zero_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_bytes_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_bytes_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_bytes1(dataStart, dataSize)
            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            function mod_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }
                r := mod(x, y)
            }

            function cleanup_t_rational_48_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_48_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_48_by_1(value)))
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function convert_t_uint256_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_uint256(value)))
            }

            function cleanup_t_bytes1(value) -> cleaned {
                cleaned := and(value, 0xff00000000000000000000000000000000000000000000000000000000000000)
            }

            function shift_left_248(value) -> newValue {
                newValue :=

                shl(248, value)

            }

            function convert_t_uint8_to_t_bytes1(value) -> converted {
                converted := cleanup_t_bytes1(shift_left_248(cleanup_t_uint8(value)))
            }

            function decrement_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0x00) { panic_error_0x11() }
                ret := sub(value, 1)
            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
            }

            function memory_array_index_access_t_bytes_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_bytes_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 1)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            /// @ast-id 35714
            /// @src 45:239:964  "function toString(uint256 value) internal pure returns (string memory) {..."
            function fun_toString_35714(var_value_35634) -> var__35637_mpos {
                /// @src 45:295:308  "string memory"
                let zero_t_string_memory_ptr_196_mpos := zero_value_for_split_t_string_memory_ptr()
                var__35637_mpos := zero_t_string_memory_ptr_196_mpos

                /// @src 45:512:517  "value"
                let _197 := var_value_35634
                let expr_35639 := _197
                /// @src 45:521:522  "0"
                let expr_35640 := 0x00
                /// @src 45:512:522  "value == 0"
                let expr_35641 := eq(cleanup_t_uint256(expr_35639), convert_t_rational_0_by_1_to_t_uint256(expr_35640))
                /// @src 45:508:559  "if (value == 0) {..."
                if expr_35641 {
                    /// @src 45:538:548  "return \"0\""
                    var__35637_mpos := convert_t_stringliteral_044852b2a670ade5407e78fb2863c51de9fcb96542a07186fe3aeda6bb8a116d_to_t_string_memory_ptr()
                    leave
                    /// @src 45:508:559  "if (value == 0) {..."
                }
                /// @src 45:583:588  "value"
                let _198 := var_value_35634
                let expr_35648 := _198
                /// @src 45:568:588  "uint256 temp = value"
                let var_temp_35647 := expr_35648
                /// @src 45:598:612  "uint256 digits"
                let var_digits_35651
                let zero_t_uint256_199 := zero_value_for_split_t_uint256()
                var_digits_35651 := zero_t_uint256_199
                /// @src 45:622:697  "while (temp != 0) {..."
                for {
                    } 1 {
                }
                {
                    /// @src 45:629:633  "temp"
                    let _200 := var_temp_35647
                    let expr_35653 := _200
                    /// @src 45:637:638  "0"
                    let expr_35654 := 0x00
                    /// @src 45:629:638  "temp != 0"
                    let expr_35655 := iszero(eq(cleanup_t_uint256(expr_35653), convert_t_rational_0_by_1_to_t_uint256(expr_35654)))
                    if iszero(expr_35655) { break }
                    /// @src 45:654:662  "digits++"
                    let _202 := var_digits_35651
                    let _201 := increment_t_uint256(_202)
                    var_digits_35651 := _201
                    let expr_35657 := _202
                    /// @src 45:684:686  "10"
                    let expr_35660 := 0x0a
                    /// @src 45:676:686  "temp /= 10"
                    let _203 := convert_t_rational_10_by_1_to_t_uint256(expr_35660)
                    let _204 := var_temp_35647
                    let expr_35661 := checked_div_t_uint256(_204, _203)

                    var_temp_35647 := expr_35661
                }
                /// @src 45:738:744  "digits"
                let _205 := var_digits_35651
                let expr_35669 := _205
                /// @src 45:728:745  "new bytes(digits)"
                let expr_35670_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(expr_35669)
                /// @src 45:706:745  "bytes memory buffer = new bytes(digits)"
                let var_buffer_35666_mpos := expr_35670_mpos
                /// @src 45:771:777  "digits"
                let _206 := var_digits_35651
                let expr_35674 := _206
                /// @src 45:780:781  "1"
                let expr_35675 := 0x01
                /// @src 45:771:781  "digits - 1"
                let expr_35676 := checked_sub_t_uint256(expr_35674, convert_t_rational_1_by_1_to_t_uint256(expr_35675))

                /// @src 45:755:781  "uint256 index = digits - 1"
                let var_index_35673 := expr_35676
                /// @src 45:798:803  "value"
                let _207 := var_value_35634
                let expr_35679 := _207
                /// @src 45:791:803  "temp = value"
                var_temp_35647 := expr_35679
                let expr_35680 := expr_35679
                /// @src 45:813:927  "while (temp != 0) {..."
                for {
                    } 1 {
                }
                {
                    /// @src 45:820:824  "temp"
                    let _208 := var_temp_35647
                    let expr_35682 := _208
                    /// @src 45:828:829  "0"
                    let expr_35683 := 0x00
                    /// @src 45:820:829  "temp != 0"
                    let expr_35684 := iszero(eq(cleanup_t_uint256(expr_35682), convert_t_rational_0_by_1_to_t_uint256(expr_35683)))
                    if iszero(expr_35684) { break }
                    /// @src 45:876:878  "48"
                    let expr_35693 := 0x30
                    /// @src 45:881:885  "temp"
                    let _209 := var_temp_35647
                    let expr_35694 := _209
                    /// @src 45:888:890  "10"
                    let expr_35695 := 0x0a
                    /// @src 45:881:890  "temp % 10"
                    let expr_35696 := mod_t_uint256(expr_35694, convert_t_rational_10_by_1_to_t_uint256(expr_35695))

                    /// @src 45:876:890  "48 + temp % 10"
                    let expr_35697 := checked_add_t_uint256(convert_t_rational_48_by_1_to_t_uint256(expr_35693), expr_35696)

                    /// @src 45:870:891  "uint8(48 + temp % 10)"
                    let expr_35698 := convert_t_uint256_to_t_uint8(expr_35697)
                    /// @src 45:863:892  "bytes1(uint8(48 + temp % 10))"
                    let expr_35699 := convert_t_uint8_to_t_bytes1(expr_35698)
                    /// @src 45:845:851  "buffer"
                    let _210_mpos := var_buffer_35666_mpos
                    let expr_35685_mpos := _210_mpos
                    /// @src 45:852:859  "index--"
                    let _212 := var_index_35673
                    let _211 := decrement_t_uint256(_212)
                    var_index_35673 := _211
                    let expr_35687 := _212
                    /// @src 45:845:892  "buffer[index--] = bytes1(uint8(48 + temp % 10))"
                    let _213 := expr_35699
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_35685_mpos, expr_35687), byte(0, _213))
                    let expr_35700 := expr_35699
                    /// @src 45:914:916  "10"
                    let expr_35703 := 0x0a
                    /// @src 45:906:916  "temp /= 10"
                    let _214 := convert_t_rational_10_by_1_to_t_uint256(expr_35703)
                    let _215 := var_temp_35647
                    let expr_35704 := checked_div_t_uint256(_215, _214)

                    var_temp_35647 := expr_35704
                }
                /// @src 45:950:956  "buffer"
                let _216_mpos := var_buffer_35666_mpos
                let expr_35710_mpos := _216_mpos
                /// @src 45:943:957  "string(buffer)"
                let expr_35711_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_35710_mpos)
                /// @src 45:936:957  "return string(buffer)"
                var__35637_mpos := expr_35711_mpos
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            /// @ast-id 34954
            /// @src 43:7617:7766  "function contains(UintToAddressMap storage map, uint256 key) internal view returns (bool) {..."
            function fun_contains_34954(var_map_34937_slot, var_key_34939) -> var__34942 {
                /// @src 43:7701:7705  "bool"
                let zero_t_bool_217 := zero_value_for_split_t_bool()
                var__34942 := zero_t_bool_217

                /// @src 43:7734:7737  "map"
                let _218_slot := var_map_34937_slot
                let expr_34945_slot := _218_slot
                /// @src 43:7734:7744  "map._inner"
                let _219 := add(expr_34945_slot, 0)
                let _220_slot := _219
                let expr_34946_slot := _220_slot
                /// @src 43:7754:7757  "key"
                let _221 := var_key_34939
                let expr_34949 := _221
                /// @src 43:7746:7758  "bytes32(key)"
                let expr_34950 := convert_t_uint256_to_t_bytes32(expr_34949)
                /// @src 43:7724:7759  "_contains(map._inner, bytes32(key))"
                let _222_slot := convert_t_struct$_Map_$34550_storage_to_t_struct$_Map_$34550_storage_ptr(expr_34946_slot)
                let expr_34951 := fun__contains_34715(_222_slot, expr_34950)
                /// @src 43:7717:7759  "return _contains(map._inner, bytes32(key))"
                var__34942 := expr_34951
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function array_length_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(value) -> length {

                length := sload(value)

            }

            /// @ast-id 34729
            /// @src 43:4520:4628  "function _length(Map storage map) private view returns (uint256) {..."
            function fun__length_34729(var_map_34719_slot) -> var__34722 {
                /// @src 43:4576:4583  "uint256"
                let zero_t_uint256_223 := zero_value_for_split_t_uint256()
                var__34722 := zero_t_uint256_223

                /// @src 43:4602:4605  "map"
                let _224_slot := var_map_34719_slot
                let expr_34724_slot := _224_slot
                /// @src 43:4602:4614  "map._entries"
                let _225 := add(expr_34724_slot, 0)
                let _226_slot := _225
                let expr_34725_slot := _226_slot
                /// @src 43:4602:4621  "map._entries.length"
                let expr_34726 := array_length_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(expr_34725_slot)
                /// @src 43:4595:4621  "return map._entries.length"
                var__34722 := expr_34726
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            /// @ast-id 23490
            /// @src 36:17032:17125  "function _beforeTokenTransfer(address from, address to, uint256 tokenId) internal virtual { }"
            function fun__beforeTokenTransfer_23490(var_from_23482, var_to_23484, var_tokenId_23486) {

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            /// @ast-id 35570
            /// @src 44:8394:8529  "function remove(UintSet storage set, uint256 value) internal returns (bool) {..."
            function fun_remove_35570(var_set_35553_slot, var_value_35555) -> var__35558 {
                /// @src 44:8464:8468  "bool"
                let zero_t_bool_227 := zero_value_for_split_t_bool()
                var__35558 := zero_t_bool_227

                /// @src 44:8495:8498  "set"
                let _228_slot := var_set_35553_slot
                let expr_35561_slot := _228_slot
                /// @src 44:8495:8505  "set._inner"
                let _229 := add(expr_35561_slot, 0)
                let _230_slot := _229
                let expr_35562_slot := _230_slot
                /// @src 44:8515:8520  "value"
                let _231 := var_value_35555
                let expr_35565 := _231
                /// @src 44:8507:8521  "bytes32(value)"
                let expr_35566 := convert_t_uint256_to_t_bytes32(expr_35565)
                /// @src 44:8487:8522  "_remove(set._inner, bytes32(value))"
                let _232_slot := convert_t_struct$_Set_$35124_storage_to_t_struct$_Set_$35124_storage_ptr(expr_35562_slot)
                let expr_35567 := fun__remove_35247(_232_slot, expr_35566)
                /// @src 44:8480:8522  "return _remove(set._inner, bytes32(value))"
                var__35558 := expr_35567
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            /// @ast-id 35549
            /// @src 44:8097:8226  "function add(UintSet storage set, uint256 value) internal returns (bool) {..."
            function fun_add_35549(var_set_35532_slot, var_value_35534) -> var__35537 {
                /// @src 44:8164:8168  "bool"
                let zero_t_bool_233 := zero_value_for_split_t_bool()
                var__35537 := zero_t_bool_233

                /// @src 44:8192:8195  "set"
                let _234_slot := var_set_35532_slot
                let expr_35540_slot := _234_slot
                /// @src 44:8192:8202  "set._inner"
                let _235 := add(expr_35540_slot, 0)
                let _236_slot := _235
                let expr_35541_slot := _236_slot
                /// @src 44:8212:8217  "value"
                let _237 := var_value_35534
                let expr_35544 := _237
                /// @src 44:8204:8218  "bytes32(value)"
                let expr_35545 := convert_t_uint256_to_t_bytes32(expr_35544)
                /// @src 44:8187:8219  "_add(set._inner, bytes32(value))"
                let _238_slot := convert_t_struct$_Set_$35124_storage_to_t_struct$_Set_$35124_storage_ptr(expr_35541_slot)
                let expr_35546 := fun__add_35166(_238_slot, expr_35545)
                /// @src 44:8180:8219  "return _add(set._inner, bytes32(value))"
                var__35537 := expr_35546
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function convert_t_address_to_t_uint160(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_uint160_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint160(value)))
            }

            /// @ast-id 34912
            /// @src 43:7056:7239  "function set(UintToAddressMap storage map, uint256 key, address value) internal returns (bool) {..."
            function fun_set_34912(var_map_34883_slot, var_key_34885, var_value_34887) -> var__34890 {
                /// @src 43:7145:7149  "bool"
                let zero_t_bool_239 := zero_value_for_split_t_bool()
                var__34890 := zero_t_bool_239

                /// @src 43:7173:7176  "map"
                let _240_slot := var_map_34883_slot
                let expr_34893_slot := _240_slot
                /// @src 43:7173:7183  "map._inner"
                let _241 := add(expr_34893_slot, 0)
                let _242_slot := _241
                let expr_34894_slot := _242_slot
                /// @src 43:7193:7196  "key"
                let _243 := var_key_34885
                let expr_34897 := _243
                /// @src 43:7185:7197  "bytes32(key)"
                let expr_34898 := convert_t_uint256_to_t_bytes32(expr_34897)
                /// @src 43:7223:7228  "value"
                let _244 := var_value_34887
                let expr_34905 := _244
                /// @src 43:7215:7229  "uint160(value)"
                let expr_34906 := convert_t_address_to_t_uint160(expr_34905)
                /// @src 43:7207:7230  "uint256(uint160(value))"
                let expr_34907 := convert_t_uint160_to_t_uint256(expr_34906)
                /// @src 43:7199:7231  "bytes32(uint256(uint160(value)))"
                let expr_34908 := convert_t_uint256_to_t_bytes32(expr_34907)
                /// @src 43:7168:7232  "_set(map._inner, bytes32(key), bytes32(uint256(uint160(value))))"
                let _245_slot := convert_t_struct$_Map_$34550_storage_to_t_struct$_Map_$34550_storage_ptr(expr_34894_slot)
                let expr_34909 := fun__set_34613(_245_slot, expr_34898, expr_34908)
                /// @src 43:7161:7232  "return _set(map._inner, bytes32(key), bytes32(uint256(uint160(value))))"
                var__34890 := expr_34909
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function zero_value_for_split_t_bytes32() -> ret {
                ret := 0
            }

            function array_length_t_array$_t_bytes32_$dyn_storage(value) -> length {

                length := sload(value)

            }

            function store_literal_in_memory_045d6834e6193a687012a3ad777f612279e549b6945364d9d2324f48610d3cbb(memPtr) {

                mstore(add(memPtr, 0), "EnumerableSet: index out of boun")

                mstore(add(memPtr, 32), "ds")

            }

            function abi_encode_t_stringliteral_045d6834e6193a687012a3ad777f612279e549b6945364d9d2324f48610d3cbb_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 34)
                store_literal_in_memory_045d6834e6193a687012a3ad777f612279e549b6945364d9d2324f48610d3cbb(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_045d6834e6193a687012a3ad777f612279e549b6945364d9d2324f48610d3cbb__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_045d6834e6193a687012a3ad777f612279e549b6945364d9d2324f48610d3cbb_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_045d6834e6193a687012a3ad777f612279e549b6945364d9d2324f48610d3cbb(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_045d6834e6193a687012a3ad777f612279e549b6945364d9d2324f48610d3cbb__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function array_dataslot_t_array$_t_bytes32_$dyn_storage(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function array_dataslot_t_bytes_storage_ptr(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function long_byte_array_index_access_no_checks(array, index) -> slot, offset {

                offset := sub(31, mod(index, 0x20))
                let dataArea := array_dataslot_t_bytes_storage_ptr(array)
                slot := add(dataArea, div(index, 0x20))

            }

            function storage_array_index_access_t_array$_t_bytes32_$dyn_storage(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_bytes32_$dyn_storage(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_bytes32_$dyn_storage(array)
                slot := add(dataArea, mul(index, 1))
                offset := 0

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function cleanup_from_storage_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_dynamict_bytes32(slot_value, offset) -> value {
                value := cleanup_from_storage_t_bytes32(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_bytes32(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_bytes32(sload(slot), offset)

            }

            /// @ast-id 35306
            /// @src 44:4481:4682  "function _at(Set storage set, uint256 index) private view returns (bytes32) {..."
            function fun__at_35306(var_set_35284_slot, var_index_35286) -> var__35289 {
                /// @src 44:4548:4555  "bytes32"
                let zero_t_bytes32_246 := zero_value_for_split_t_bytes32()
                var__35289 := zero_t_bytes32_246

                /// @src 44:4575:4578  "set"
                let _247_slot := var_set_35284_slot
                let expr_35292_slot := _247_slot
                /// @src 44:4575:4586  "set._values"
                let _248 := add(expr_35292_slot, 0)
                let _249_slot := _248
                let expr_35293_slot := _249_slot
                /// @src 44:4575:4593  "set._values.length"
                let expr_35294 := array_length_t_array$_t_bytes32_$dyn_storage(expr_35293_slot)
                /// @src 44:4596:4601  "index"
                let _250 := var_index_35286
                let expr_35295 := _250
                /// @src 44:4575:4601  "set._values.length > index"
                let expr_35296 := gt(cleanup_t_uint256(expr_35294), cleanup_t_uint256(expr_35295))
                /// @src 44:4567:4640  "require(set._values.length > index, \"EnumerableSet: index out of bounds\")"
                require_helper_t_stringliteral_045d6834e6193a687012a3ad777f612279e549b6945364d9d2324f48610d3cbb(expr_35296)
                /// @src 44:4657:4660  "set"
                let _251_slot := var_set_35284_slot
                let expr_35300_slot := _251_slot
                /// @src 44:4657:4668  "set._values"
                let _252 := add(expr_35300_slot, 0)
                let _253_slot := _252
                let expr_35301_slot := _253_slot
                /// @src 44:4669:4674  "index"
                let _254 := var_index_35286
                let expr_35302 := _254
                /// @src 44:4657:4675  "set._values[index]"

                let _255, _256 := storage_array_index_access_t_array$_t_bytes32_$dyn_storage(expr_35301_slot, expr_35302)
                let _257 := read_from_storage_split_dynamic_t_bytes32(_255, _256)
                let expr_35303 := _257
                /// @src 44:4650:4675  "return set._values[index]"
                var__35289 := expr_35303
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function store_literal_in_memory_86631030b9066a18616a068fc09fce83d18af4765cb1d2166fa475228f4db155(memPtr) {

                mstore(add(memPtr, 0), "EnumerableMap: index out of boun")

                mstore(add(memPtr, 32), "ds")

            }

            function abi_encode_t_stringliteral_86631030b9066a18616a068fc09fce83d18af4765cb1d2166fa475228f4db155_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 34)
                store_literal_in_memory_86631030b9066a18616a068fc09fce83d18af4765cb1d2166fa475228f4db155(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_86631030b9066a18616a068fc09fce83d18af4765cb1d2166fa475228f4db155__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_86631030b9066a18616a068fc09fce83d18af4765cb1d2166fa475228f4db155_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_86631030b9066a18616a068fc09fce83d18af4765cb1d2166fa475228f4db155(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_86631030b9066a18616a068fc09fce83d18af4765cb1d2166fa475228f4db155__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function array_dataslot_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function storage_array_index_access_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(array)
                slot := add(dataArea, mul(index, 2))
                offset := 0

            }

            function convert_t_struct$_MapEntry_$34541_storage_to_t_struct$_MapEntry_$34541_storage_ptr(value) -> converted {
                converted := value
            }

            function extract_from_storage_value_offset_0_t_bytes32(slot_value) -> value {
                value := cleanup_from_storage_t_bytes32(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_bytes32(slot) -> value {
                value := extract_from_storage_value_offset_0_t_bytes32(sload(slot))

            }

            /// @ast-id 34766
            /// @src 43:4971:5245  "function _at(Map storage map, uint256 index) private view returns (bytes32, bytes32) {..."
            function fun__at_34766(var_map_34733_slot, var_index_34735) -> var__34738, var__34740 {
                /// @src 43:5038:5045  "bytes32"
                let zero_t_bytes32_258 := zero_value_for_split_t_bytes32()
                var__34738 := zero_t_bytes32_258
                /// @src 43:5047:5054  "bytes32"
                let zero_t_bytes32_259 := zero_value_for_split_t_bytes32()
                var__34740 := zero_t_bytes32_259

                /// @src 43:5074:5077  "map"
                let _260_slot := var_map_34733_slot
                let expr_34743_slot := _260_slot
                /// @src 43:5074:5086  "map._entries"
                let _261 := add(expr_34743_slot, 0)
                let _262_slot := _261
                let expr_34744_slot := _262_slot
                /// @src 43:5074:5093  "map._entries.length"
                let expr_34745 := array_length_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(expr_34744_slot)
                /// @src 43:5096:5101  "index"
                let _263 := var_index_34735
                let expr_34746 := _263
                /// @src 43:5074:5101  "map._entries.length > index"
                let expr_34747 := gt(cleanup_t_uint256(expr_34745), cleanup_t_uint256(expr_34746))
                /// @src 43:5066:5140  "require(map._entries.length > index, \"EnumerableMap: index out of bounds\")"
                require_helper_t_stringliteral_86631030b9066a18616a068fc09fce83d18af4765cb1d2166fa475228f4db155(expr_34747)
                /// @src 43:5176:5179  "map"
                let _264_slot := var_map_34733_slot
                let expr_34754_slot := _264_slot
                /// @src 43:5176:5188  "map._entries"
                let _265 := add(expr_34754_slot, 0)
                let _266_slot := _265
                let expr_34755_slot := _266_slot
                /// @src 43:5189:5194  "index"
                let _267 := var_index_34735
                let expr_34756 := _267
                /// @src 43:5176:5195  "map._entries[index]"

                let _268, _269 := storage_array_index_access_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(expr_34755_slot, expr_34756)
                let _270_slot := _268
                let expr_34757_slot := _270_slot
                /// @src 43:5151:5195  "MapEntry storage entry = map._entries[index]"
                let var_entry_34753_slot := convert_t_struct$_MapEntry_$34541_storage_to_t_struct$_MapEntry_$34541_storage_ptr(expr_34757_slot)
                /// @src 43:5213:5218  "entry"
                let _271_slot := var_entry_34753_slot
                let expr_34759_slot := _271_slot
                /// @src 43:5213:5223  "entry._key"
                let _272 := add(expr_34759_slot, 0)
                let _273 := read_from_storage_split_offset_0_t_bytes32(_272)
                let expr_34760 := _273
                /// @src 43:5212:5238  "(entry._key, entry._value)"
                let expr_34763_component_1 := expr_34760
                /// @src 43:5225:5230  "entry"
                let _274_slot := var_entry_34753_slot
                let expr_34761_slot := _274_slot
                /// @src 43:5225:5237  "entry._value"
                let _275 := add(expr_34761_slot, 1)
                let _276 := read_from_storage_split_offset_0_t_bytes32(_275)
                let expr_34762 := _276
                /// @src 43:5212:5238  "(entry._key, entry._value)"
                let expr_34763_component_2 := expr_34762
                /// @src 43:5205:5238  "return (entry._key, entry._value)"
                var__34738 := expr_34763_component_1
                var__34740 := expr_34763_component_2
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function convert_t_bytes32_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(value)
            }

            function mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(slot , key) -> dataSlot {
                mstore(0, convert_t_bytes32_to_t_bytes32(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
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

            function require_helper_t_string_memory_ptr(condition , expr_34863_mpos) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(add(memPtr, 4) , expr_34863_mpos)
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 34875
            /// @src 43:6432:6747  "function _get(Map storage map, bytes32 key, string memory errorMessage) private view returns (bytes32) {..."
            function fun__get_34875(var_map_34843_slot, var_key_34845, var_errorMessage_34847_mpos) -> var__34850 {
                /// @src 43:6526:6533  "bytes32"
                let zero_t_bytes32_277 := zero_value_for_split_t_bytes32()
                var__34850 := zero_t_bytes32_277

                /// @src 43:6564:6567  "map"
                let _278_slot := var_map_34843_slot
                let expr_34854_slot := _278_slot
                /// @src 43:6564:6576  "map._indexes"
                let _279 := add(expr_34854_slot, 1)
                let _280_slot := _279
                let expr_34855_slot := _280_slot
                /// @src 43:6577:6580  "key"
                let _281 := var_key_34845
                let expr_34856 := _281
                /// @src 43:6564:6581  "map._indexes[key]"
                let _282 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_34855_slot,expr_34856)
                let _283 := read_from_storage_split_offset_0_t_uint256(_282)
                let expr_34857 := _283
                /// @src 43:6545:6581  "uint256 keyIndex = map._indexes[key]"
                let var_keyIndex_34853 := expr_34857
                /// @src 43:6599:6607  "keyIndex"
                let _284 := var_keyIndex_34853
                let expr_34860 := _284
                /// @src 43:6611:6612  "0"
                let expr_34861 := 0x00
                /// @src 43:6599:6612  "keyIndex != 0"
                let expr_34862 := iszero(eq(cleanup_t_uint256(expr_34860), convert_t_rational_0_by_1_to_t_uint256(expr_34861)))
                /// @src 43:6614:6626  "errorMessage"
                let _285_mpos := var_errorMessage_34847_mpos
                let expr_34863_mpos := _285_mpos
                /// @src 43:6591:6627  "require(keyIndex != 0, errorMessage)"
                require_helper_t_string_memory_ptr(expr_34862, expr_34863_mpos)
                /// @src 43:6680:6683  "map"
                let _286_slot := var_map_34843_slot
                let expr_34866_slot := _286_slot
                /// @src 43:6680:6692  "map._entries"
                let _287 := add(expr_34866_slot, 0)
                let _288_slot := _287
                let expr_34867_slot := _288_slot
                /// @src 43:6693:6701  "keyIndex"
                let _289 := var_keyIndex_34853
                let expr_34868 := _289
                /// @src 43:6704:6705  "1"
                let expr_34869 := 0x01
                /// @src 43:6693:6705  "keyIndex - 1"
                let expr_34870 := checked_sub_t_uint256(expr_34868, convert_t_rational_1_by_1_to_t_uint256(expr_34869))

                /// @src 43:6680:6706  "map._entries[keyIndex - 1]"

                let _290, _291 := storage_array_index_access_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(expr_34867_slot, expr_34870)
                let _292_slot := _290
                let expr_34871_slot := _292_slot
                /// @src 43:6680:6713  "map._entries[keyIndex - 1]._value"
                let _293 := add(expr_34871_slot, 1)
                let _294 := read_from_storage_split_offset_0_t_bytes32(_293)
                let expr_34872 := _294
                /// @src 43:6673:6713  "return map._entries[keyIndex - 1]._value"
                var__34850 := expr_34872
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            /// @ast-id 35280
            /// @src 44:4042:4149  "function _length(Set storage set) private view returns (uint256) {..."
            function fun__length_35280(var_set_35270_slot) -> var__35273 {
                /// @src 44:4098:4105  "uint256"
                let zero_t_uint256_295 := zero_value_for_split_t_uint256()
                var__35273 := zero_t_uint256_295

                /// @src 44:4124:4127  "set"
                let _296_slot := var_set_35270_slot
                let expr_35275_slot := _296_slot
                /// @src 44:4124:4135  "set._values"
                let _297 := add(expr_35275_slot, 0)
                let _298_slot := _297
                let expr_35276_slot := _298_slot
                /// @src 44:4124:4142  "set._values.length"
                let expr_35277 := array_length_t_array$_t_bytes32_$dyn_storage(expr_35276_slot)
                /// @src 44:4117:4142  "return set._values.length"
                var__35273 := expr_35277
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function convert_t_uint160_to_t_contract$_IERC721Receiver_$34533(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IERC721Receiver_$34533(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IERC721Receiver_$34533(value)
            }

            function convert_t_contract$_IERC721Receiver_$34533_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function cleanup_t_uint32(value) -> cleaned {
                cleaned := and(value, 0xffffffff)
            }

            function shift_left_224(value) -> newValue {
                newValue :=

                shl(224, value)

            }

            function convert_t_uint32_to_t_bytes4(value) -> converted {
                converted := cleanup_t_bytes4(shift_left_224(cleanup_t_uint32(value)))
            }

            function cleanup_t_address_payable(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function abi_encode_t_address_payable_to_t_address_payable_fromStack(value, pos) {
                mstore(pos, cleanup_t_address_payable(value))
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

            function abi_encode_tuple_t_address_payable_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_payable_t_address_t_uint256_t_bytes_memory_ptr__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_address_payable_to_t_address_payable_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                mstore(add(headStart, 96), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value3,  tail)

            }

            function copy_literal_to_memory_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(50)
                store_literal_in_memory_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e(add(memPtr, 32))
            }

            function convert_t_stringliteral_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e()
            }

            function abi_decode_t_bytes4_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_bytes4(value)
            }

            function abi_decode_tuple_t_bytes4_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes4_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function cleanup_t_rational_353073666_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_353073666_by_1_to_t_bytes4(value) -> converted {
                converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_353073666_by_1(value)))
            }

            /// @src 36:1064:1117  "bytes4 private constant _ERC721_RECEIVED = 0x150b7a02"
            function constant__ERC721_RECEIVED_22587() -> ret {
                /// @src 36:1107:1117  "0x150b7a02"
                let expr_22586 := 0x150b7a02
                let _311 := convert_t_rational_353073666_by_1_to_t_bytes4(expr_22586)

                ret := _311
            }

            /// @ast-id 23455
            /// @src 36:15546:16135  "function _checkOnERC721Received(address from, address to, uint256 tokenId, bytes memory _data)..."
            function fun__checkOnERC721Received_23455(var_from_23400, var_to_23402, var_tokenId_23404, var__data_23406_mpos) -> var__23409 {
                /// @src 36:15666:15670  "bool"
                let zero_t_bool_299 := zero_value_for_split_t_bool()
                var__23409 := zero_t_bool_299

                /// @src 36:15691:15693  "to"
                let _300 := var_to_23402
                let expr_23411 := _300
                /// @src 36:15691:15704  "to.isContract"
                let expr_23412_self := expr_23411
                /// @src 36:15691:15706  "to.isContract()"
                let expr_23413 := fun_isContract_23511(expr_23412_self)
                /// @src 36:15690:15706  "!to.isContract()"
                let expr_23414 := cleanup_t_bool(iszero(expr_23413))
                /// @src 36:15686:15744  "if (!to.isContract()) {..."
                if expr_23414 {
                    /// @src 36:15729:15733  "true"
                    let expr_23415 := 0x01
                    /// @src 36:15722:15733  "return true"
                    var__23409 := expr_23415
                    leave
                    /// @src 36:15686:15744  "if (!to.isContract()) {..."
                }
                /// @src 36:15779:15781  "to"
                let _301 := var_to_23402
                let expr_23421 := _301
                /// @src 36:15779:15794  "to.functionCall"
                let expr_23422_self := expr_23421
                /// @src 36:15847:15849  "to"
                let _302 := var_to_23402
                let expr_23426 := _302
                /// @src 36:15831:15850  "IERC721Receiver(to)"
                let expr_23427_address := convert_t_address_to_t_contract$_IERC721Receiver_$34533(expr_23426)
                /// @src 36:15831:15867  "IERC721Receiver(to).onERC721Received"
                let expr_23428_address := convert_t_contract$_IERC721Receiver_$34533_to_t_address(expr_23427_address)
                let expr_23428_functionSelector := 0x150b7a02
                /// @src 36:15831:15876  "IERC721Receiver(to).onERC721Received.selector"
                let expr_23429 := convert_t_uint32_to_t_bytes4(expr_23428_functionSelector)
                /// @src 36:15890:15902  "_msgSender()"
                let expr_23431 := fun__msgSender_6002()
                /// @src 36:15916:15920  "from"
                let _303 := var_from_23400
                let expr_23432 := _303
                /// @src 36:15934:15941  "tokenId"
                let _304 := var_tokenId_23404
                let expr_23433 := _304
                /// @src 36:15955:15960  "_data"
                let _305_mpos := var__data_23406_mpos
                let expr_23434_mpos := _305_mpos
                /// @src 36:15795:15970  "abi.encodeWithSelector(..."

                let expr_23435_mpos := allocate_unbounded()
                let _306 := add(expr_23435_mpos, 0x20)

                mstore(_306, expr_23429)
                _306 := add(_306, 4)

                let _307 := abi_encode_tuple_t_address_payable_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_payable_t_address_t_uint256_t_bytes_memory_ptr__fromStack(_306, expr_23431, expr_23432, expr_23433, expr_23434_mpos)
                mstore(expr_23435_mpos, sub(_307, add(expr_23435_mpos, 0x20)))
                finalize_allocation(expr_23435_mpos, sub(_307, expr_23435_mpos))
                /// @src 36:15779:16025  "to.functionCall(abi.encodeWithSelector(..."
                let _308_mpos := convert_t_stringliteral_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e_to_t_string_memory_ptr()
                let expr_23437_mpos := fun_functionCall_23582(expr_23422_self, expr_23435_mpos, _308_mpos)
                /// @src 36:15753:16025  "bytes memory returndata = to.functionCall(abi.encodeWithSelector(..."
                let var_returndata_23420_mpos := expr_23437_mpos
                /// @src 36:16062:16072  "returndata"
                let _309_mpos := var_returndata_23420_mpos
                let expr_23443_mpos := _309_mpos
                /// @src 36:16051:16083  "abi.decode(returndata, (bytes4))"

                let expr_23447 :=  abi_decode_tuple_t_bytes4_fromMemory(add(expr_23443_mpos, 32), add(add(expr_23443_mpos, 32), array_length_t_bytes_memory_ptr(expr_23443_mpos)))
                /// @src 36:16035:16083  "bytes4 retval = abi.decode(returndata, (bytes4))"
                let var_retval_23440 := expr_23447
                /// @src 36:16101:16107  "retval"
                let _310 := var_retval_23440
                let expr_23449 := _310
                /// @src 36:16111:16127  "_ERC721_RECEIVED"
                let expr_23450 := constant__ERC721_RECEIVED_22587()
                /// @src 36:16101:16127  "retval == _ERC721_RECEIVED"
                let expr_23451 := eq(cleanup_t_bytes4(expr_23449), cleanup_t_bytes4(expr_23450))
                /// @src 36:16100:16128  "(retval == _ERC721_RECEIVED)"
                let expr_23452 := expr_23451
                /// @src 36:16093:16128  "return (retval == _ERC721_RECEIVED)"
                var__23409 := expr_23452
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            /// @ast-id 34715
            /// @src 43:4307:4430  "function _contains(Map storage map, bytes32 key) private view returns (bool) {..."
            function fun__contains_34715(var_map_34700_slot, var_key_34702) -> var__34705 {
                /// @src 43:4378:4382  "bool"
                let zero_t_bool_312 := zero_value_for_split_t_bool()
                var__34705 := zero_t_bool_312

                /// @src 43:4401:4404  "map"
                let _313_slot := var_map_34700_slot
                let expr_34707_slot := _313_slot
                /// @src 43:4401:4413  "map._indexes"
                let _314 := add(expr_34707_slot, 1)
                let _315_slot := _314
                let expr_34708_slot := _315_slot
                /// @src 43:4414:4417  "key"
                let _316 := var_key_34702
                let expr_34709 := _316
                /// @src 43:4401:4418  "map._indexes[key]"
                let _317 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_34708_slot,expr_34709)
                let _318 := read_from_storage_split_offset_0_t_uint256(_317)
                let expr_34710 := _318
                /// @src 43:4422:4423  "0"
                let expr_34711 := 0x00
                /// @src 43:4401:4423  "map._indexes[key] != 0"
                let expr_34712 := iszero(eq(cleanup_t_uint256(expr_34710), convert_t_rational_0_by_1_to_t_uint256(expr_34711)))
                /// @src 43:4394:4423  "return map._indexes[key] != 0"
                var__34705 := expr_34712
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

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

            function prepare_store_t_bytes32(value) -> ret {
                ret := shift_right_0_unsigned(value)
            }

            function update_storage_value_t_bytes32_to_t_bytes32(slot, offset, value_0) {
                let convertedValue_0 := convert_t_bytes32_to_t_bytes32(value_0)
                sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_bytes32(convertedValue_0)))
            }

            function update_byte_slice_32_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_uint256_to_t_uint256(slot, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
            }

            function convert_array_t_array$_t_bytes32_$dyn_storage_to_t_array$_t_bytes32_$dyn_storage_ptr(value) -> converted  {
                converted := value

            }

            function panic_error_0x31() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x31)
                revert(0, 0x24)
            }

            function array_length_t_array$_t_bytes32_$dyn_storage_ptr(value) -> length {

                length := sload(value)

            }

            function array_dataslot_t_array$_t_bytes32_$dyn_storage_ptr(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function storage_array_index_access_t_array$_t_bytes32_$dyn_storage_ptr(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_bytes32_$dyn_storage_ptr(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_bytes32_$dyn_storage_ptr(array)
                slot := add(dataArea, mul(index, 1))
                offset := 0

            }

            function storage_set_to_zero_t_bytes32(slot, offset) {
                let zero_0 := zero_value_for_split_t_bytes32()
                update_storage_value_t_bytes32_to_t_bytes32(slot, offset, zero_0)
            }

            function array_pop_t_array$_t_bytes32_$dyn_storage_ptr(array) {
                let oldLen := array_length_t_array$_t_bytes32_$dyn_storage_ptr(array)
                if iszero(oldLen) { panic_error_0x31() }
                let newLen := sub(oldLen, 1)
                let slot, offset := storage_array_index_access_t_array$_t_bytes32_$dyn_storage_ptr(array, newLen)
                storage_set_to_zero_t_bytes32(slot, offset)
                sstore(array, newLen)
            }
            function update_storage_value_t_uint256_to_t_uint256(slot, offset, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_uint256(convertedValue_0)))
            }

            function storage_set_to_zero_t_uint256(slot, offset) {
                let zero_0 := zero_value_for_split_t_uint256()
                update_storage_value_t_uint256_to_t_uint256(slot, offset, zero_0)
            }

            /// @ast-id 35247
            /// @src 44:2241:3753  "function _remove(Set storage set, bytes32 value) private returns (bool) {..."
            function fun__remove_35247(var_set_35170_slot, var_value_35172) -> var__35175 {
                /// @src 44:2307:2311  "bool"
                let zero_t_bool_319 := zero_value_for_split_t_bool()
                var__35175 := zero_t_bool_319

                /// @src 44:2444:2447  "set"
                let _320_slot := var_set_35170_slot
                let expr_35179_slot := _320_slot
                /// @src 44:2444:2456  "set._indexes"
                let _321 := add(expr_35179_slot, 1)
                let _322_slot := _321
                let expr_35180_slot := _322_slot
                /// @src 44:2457:2462  "value"
                let _323 := var_value_35172
                let expr_35181 := _323
                /// @src 44:2444:2463  "set._indexes[value]"
                let _324 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_35180_slot,expr_35181)
                let _325 := read_from_storage_split_offset_0_t_uint256(_324)
                let expr_35182 := _325
                /// @src 44:2423:2463  "uint256 valueIndex = set._indexes[value]"
                let var_valueIndex_35178 := expr_35182
                /// @src 44:2478:2488  "valueIndex"
                let _326 := var_valueIndex_35178
                let expr_35184 := _326
                /// @src 44:2492:2493  "0"
                let expr_35185 := 0x00
                /// @src 44:2478:2493  "valueIndex != 0"
                let expr_35186 := iszero(eq(cleanup_t_uint256(expr_35184), convert_t_rational_0_by_1_to_t_uint256(expr_35185)))
                /// @src 44:2474:3747  "if (valueIndex != 0) { // Equivalent to contains(set, value)..."
                switch expr_35186
                case 0 {
                    /// @src 44:3731:3736  "false"
                    let expr_35242 := 0x00
                    /// @src 44:3724:3736  "return false"
                    var__35175 := expr_35242
                    leave
                    /// @src 44:2474:3747  "if (valueIndex != 0) { // Equivalent to contains(set, value)..."
                }
                default {
                    /// @src 44:2859:2869  "valueIndex"
                    let _327 := var_valueIndex_35178
                    let expr_35189 := _327
                    /// @src 44:2872:2873  "1"
                    let expr_35190 := 0x01
                    /// @src 44:2859:2873  "valueIndex - 1"
                    let expr_35191 := checked_sub_t_uint256(expr_35189, convert_t_rational_1_by_1_to_t_uint256(expr_35190))

                    /// @src 44:2835:2873  "uint256 toDeleteIndex = valueIndex - 1"
                    let var_toDeleteIndex_35188 := expr_35191
                    /// @src 44:2907:2910  "set"
                    let _328_slot := var_set_35170_slot
                    let expr_35195_slot := _328_slot
                    /// @src 44:2907:2918  "set._values"
                    let _329 := add(expr_35195_slot, 0)
                    let _330_slot := _329
                    let expr_35196_slot := _330_slot
                    /// @src 44:2907:2925  "set._values.length"
                    let expr_35197 := array_length_t_array$_t_bytes32_$dyn_storage(expr_35196_slot)
                    /// @src 44:2928:2929  "1"
                    let expr_35198 := 0x01
                    /// @src 44:2907:2929  "set._values.length - 1"
                    let expr_35199 := checked_sub_t_uint256(expr_35197, convert_t_rational_1_by_1_to_t_uint256(expr_35198))

                    /// @src 44:2887:2929  "uint256 lastIndex = set._values.length - 1"
                    let var_lastIndex_35194 := expr_35199
                    /// @src 44:3189:3192  "set"
                    let _331_slot := var_set_35170_slot
                    let expr_35203_slot := _331_slot
                    /// @src 44:3189:3200  "set._values"
                    let _332 := add(expr_35203_slot, 0)
                    let _333_slot := _332
                    let expr_35204_slot := _333_slot
                    /// @src 44:3201:3210  "lastIndex"
                    let _334 := var_lastIndex_35194
                    let expr_35205 := _334
                    /// @src 44:3189:3211  "set._values[lastIndex]"

                    let _335, _336 := storage_array_index_access_t_array$_t_bytes32_$dyn_storage(expr_35204_slot, expr_35205)
                    let _337 := read_from_storage_split_dynamic_t_bytes32(_335, _336)
                    let expr_35206 := _337
                    /// @src 44:3169:3211  "bytes32 lastvalue = set._values[lastIndex]"
                    let var_lastvalue_35202 := expr_35206
                    /// @src 44:3332:3341  "lastvalue"
                    let _338 := var_lastvalue_35202
                    let expr_35213 := _338
                    /// @src 44:3303:3306  "set"
                    let _339_slot := var_set_35170_slot
                    let expr_35208_slot := _339_slot
                    /// @src 44:3303:3314  "set._values"
                    let _340 := add(expr_35208_slot, 0)
                    let _341_slot := _340
                    let expr_35211_slot := _341_slot
                    /// @src 44:3315:3328  "toDeleteIndex"
                    let _342 := var_toDeleteIndex_35188
                    let expr_35210 := _342
                    /// @src 44:3303:3329  "set._values[toDeleteIndex]"

                    let _343, _344 := storage_array_index_access_t_array$_t_bytes32_$dyn_storage(expr_35211_slot, expr_35210)
                    /// @src 44:3303:3341  "set._values[toDeleteIndex] = lastvalue"
                    update_storage_value_t_bytes32_to_t_bytes32(_343, _344, expr_35213)
                    let expr_35214 := expr_35213
                    /// @src 44:3433:3446  "toDeleteIndex"
                    let _345 := var_toDeleteIndex_35188
                    let expr_35221 := _345
                    /// @src 44:3449:3450  "1"
                    let expr_35222 := 0x01
                    /// @src 44:3433:3450  "toDeleteIndex + 1"
                    let expr_35223 := checked_add_t_uint256(expr_35221, convert_t_rational_1_by_1_to_t_uint256(expr_35222))

                    /// @src 44:3407:3410  "set"
                    let _346_slot := var_set_35170_slot
                    let expr_35216_slot := _346_slot
                    /// @src 44:3407:3419  "set._indexes"
                    let _347 := add(expr_35216_slot, 1)
                    let _348_slot := _347
                    let expr_35219_slot := _348_slot
                    /// @src 44:3420:3429  "lastvalue"
                    let _349 := var_lastvalue_35202
                    let expr_35218 := _349
                    /// @src 44:3407:3430  "set._indexes[lastvalue]"
                    let _350 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_35219_slot,expr_35218)
                    /// @src 44:3407:3450  "set._indexes[lastvalue] = toDeleteIndex + 1"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_350, expr_35223)
                    let expr_35224 := expr_35223
                    /// @src 44:3556:3559  "set"
                    let _351_slot := var_set_35170_slot
                    let expr_35226_slot := _351_slot
                    /// @src 44:3556:3567  "set._values"
                    let _352 := add(expr_35226_slot, 0)
                    let _353_slot := _352
                    let expr_35229_slot := _353_slot
                    /// @src 44:3556:3571  "set._values.pop"
                    let expr_35230_self_slot := convert_array_t_array$_t_bytes32_$dyn_storage_to_t_array$_t_bytes32_$dyn_storage_ptr(expr_35229_slot)
                    array_pop_t_array$_t_bytes32_$dyn_storage_ptr(expr_35230_self_slot)
                    /// @src 44:3648:3651  "set"
                    let _354_slot := var_set_35170_slot
                    let expr_35233_slot := _354_slot
                    /// @src 44:3648:3660  "set._indexes"
                    let _355 := add(expr_35233_slot, 1)
                    let _356_slot := _355
                    let expr_35234_slot := _356_slot
                    /// @src 44:3661:3666  "value"
                    let _357 := var_value_35172
                    let expr_35235 := _357
                    /// @src 44:3648:3667  "set._indexes[value]"
                    let _358 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_35234_slot,expr_35235)
                    /// @src 44:3641:3667  "delete set._indexes[value]"
                    storage_set_to_zero_t_uint256(_358, 0)
                    /// @src 44:3689:3693  "true"
                    let expr_35239 := 0x01
                    /// @src 44:3682:3693  "return true"
                    var__35175 := expr_35239
                    leave
                    /// @src 44:2474:3747  "if (valueIndex != 0) { // Equivalent to contains(set, value)..."
                }

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function array_push_from_t_bytes32_to_t_array$_t_bytes32_$dyn_storage_ptr(array , value0) {

                let oldLen := sload(array)
                if iszero(lt(oldLen, 18446744073709551616)) { panic_error_0x41() }
                sstore(array, add(oldLen, 1))
                let slot, offset := storage_array_index_access_t_array$_t_bytes32_$dyn_storage_ptr(array, oldLen)
                update_storage_value_t_bytes32_to_t_bytes32(slot, offset , value0)

            }
            /// @ast-id 35166
            /// @src 44:1669:2073  "function _add(Set storage set, bytes32 value) private returns (bool) {..."
            function fun__add_35166(var_set_35128_slot, var_value_35130) -> var__35133 {
                /// @src 44:1732:1736  "bool"
                let zero_t_bool_359 := zero_value_for_split_t_bool()
                var__35133 := zero_t_bool_359

                /// @src 44:1763:1766  "set"
                let _360_slot := var_set_35128_slot
                let expr_35136_slot := _360_slot
                /// @src 44:1768:1773  "value"
                let _361 := var_value_35130
                let expr_35137 := _361
                /// @src 44:1753:1774  "_contains(set, value)"
                let expr_35138 := fun__contains_35266(expr_35136_slot, expr_35137)
                /// @src 44:1752:1774  "!_contains(set, value)"
                let expr_35139 := cleanup_t_bool(iszero(expr_35138))
                /// @src 44:1748:2067  "if (!_contains(set, value)) {..."
                switch expr_35139
                case 0 {
                    /// @src 44:2051:2056  "false"
                    let expr_35161 := 0x00
                    /// @src 44:2044:2056  "return false"
                    var__35133 := expr_35161
                    leave
                    /// @src 44:1748:2067  "if (!_contains(set, value)) {..."
                }
                default {
                    /// @src 44:1790:1793  "set"
                    let _362_slot := var_set_35128_slot
                    let expr_35140_slot := _362_slot
                    /// @src 44:1790:1801  "set._values"
                    let _363 := add(expr_35140_slot, 0)
                    let _364_slot := _363
                    let expr_35143_slot := _364_slot
                    /// @src 44:1790:1806  "set._values.push"
                    let expr_35144_self_slot := convert_array_t_array$_t_bytes32_$dyn_storage_to_t_array$_t_bytes32_$dyn_storage_ptr(expr_35143_slot)
                    /// @src 44:1807:1812  "value"
                    let _365 := var_value_35130
                    let expr_35145 := _365
                    /// @src 44:1790:1813  "set._values.push(value)"
                    array_push_from_t_bytes32_to_t_array$_t_bytes32_$dyn_storage_ptr(expr_35144_self_slot, expr_35145)
                    /// @src 44:1970:1973  "set"
                    let _366_slot := var_set_35128_slot
                    let expr_35153_slot := _366_slot
                    /// @src 44:1970:1981  "set._values"
                    let _367 := add(expr_35153_slot, 0)
                    let _368_slot := _367
                    let expr_35154_slot := _368_slot
                    /// @src 44:1970:1988  "set._values.length"
                    let expr_35155 := array_length_t_array$_t_bytes32_$dyn_storage(expr_35154_slot)
                    /// @src 44:1948:1951  "set"
                    let _369_slot := var_set_35128_slot
                    let expr_35148_slot := _369_slot
                    /// @src 44:1948:1960  "set._indexes"
                    let _370 := add(expr_35148_slot, 1)
                    let _371_slot := _370
                    let expr_35151_slot := _371_slot
                    /// @src 44:1961:1966  "value"
                    let _372 := var_value_35130
                    let expr_35150 := _372
                    /// @src 44:1948:1967  "set._indexes[value]"
                    let _373 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_35151_slot,expr_35150)
                    /// @src 44:1948:1988  "set._indexes[value] = set._values.length"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_373, expr_35155)
                    let expr_35156 := expr_35155
                    /// @src 44:2009:2013  "true"
                    let expr_35158 := 0x01
                    /// @src 44:2002:2013  "return true"
                    var__35133 := expr_35158
                    leave
                    /// @src 44:1748:2067  "if (!_contains(set, value)) {..."
                }

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function update_storage_value_offset_0_t_bytes32_to_t_bytes32(slot, value_0) {
                let convertedValue_0 := convert_t_bytes32_to_t_bytes32(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_bytes32(convertedValue_0)))
            }

            function convert_array_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_to_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(value) -> converted  {
                converted := value

            }

            function allocate_memory_struct_t_struct$_MapEntry_$34541_storage_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function write_to_memory_t_bytes32(memPtr, value) {
                mstore(memPtr, cleanup_t_bytes32(value))
            }

            function array_dataslot_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function array_length_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(value) -> length {

                length := sload(value)

            }

            function storage_array_index_access_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(array)
                slot := add(dataArea, mul(index, 2))
                offset := 0

            }

            function panic_error_0x00() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x00)
                revert(0, 0x24)
            }

            function read_from_memoryt_bytes32(ptr) -> returnValue {

                let value := cleanup_t_bytes32(mload(ptr))

                returnValue :=

                value

            }

            function copy_struct_to_storage_from_t_struct$_MapEntry_$34541_memory_ptr_to_t_struct$_MapEntry_$34541_storage(slot, value) {

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 0)

                    let memberValue_0 := read_from_memoryt_bytes32(memberSrcPtr)

                    update_storage_value_offset_0_t_bytes32_to_t_bytes32(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 32)

                    let memberValue_0 := read_from_memoryt_bytes32(memberSrcPtr)

                    update_storage_value_offset_0_t_bytes32_to_t_bytes32(memberSlot, memberValue_0)

                }

            }

            function update_storage_value_t_struct$_MapEntry_$34541_memory_ptr_to_t_struct$_MapEntry_$34541_storage(slot, offset, value_0) {
                if offset { panic_error_0x00() }
                copy_struct_to_storage_from_t_struct$_MapEntry_$34541_memory_ptr_to_t_struct$_MapEntry_$34541_storage(slot, value_0)
            }

            function array_push_from_t_struct$_MapEntry_$34541_memory_ptr_to_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(array , value0) {

                let oldLen := sload(array)
                if iszero(lt(oldLen, 18446744073709551616)) { panic_error_0x41() }
                sstore(array, add(oldLen, 1))
                let slot, offset := storage_array_index_access_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(array, oldLen)
                update_storage_value_t_struct$_MapEntry_$34541_memory_ptr_to_t_struct$_MapEntry_$34541_storage(slot, offset , value0)

            }
            /// @ast-id 34613
            /// @src 43:1865:2543  "function _set(Map storage map, bytes32 key, bytes32 value) private returns (bool) {..."
            function fun__set_34613(var_map_34554_slot, var_key_34556, var_value_34558) -> var__34561 {
                /// @src 43:1941:1945  "bool"
                let zero_t_bool_374 := zero_value_for_split_t_bool()
                var__34561 := zero_t_bool_374

                /// @src 43:2074:2077  "map"
                let _375_slot := var_map_34554_slot
                let expr_34565_slot := _375_slot
                /// @src 43:2074:2086  "map._indexes"
                let _376 := add(expr_34565_slot, 1)
                let _377_slot := _376
                let expr_34566_slot := _377_slot
                /// @src 43:2087:2090  "key"
                let _378 := var_key_34556
                let expr_34567 := _378
                /// @src 43:2074:2091  "map._indexes[key]"
                let _379 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_34566_slot,expr_34567)
                let _380 := read_from_storage_split_offset_0_t_uint256(_379)
                let expr_34568 := _380
                /// @src 43:2055:2091  "uint256 keyIndex = map._indexes[key]"
                let var_keyIndex_34564 := expr_34568
                /// @src 43:2106:2114  "keyIndex"
                let _381 := var_keyIndex_34564
                let expr_34570 := _381
                /// @src 43:2118:2119  "0"
                let expr_34571 := 0x00
                /// @src 43:2106:2119  "keyIndex == 0"
                let expr_34572 := eq(cleanup_t_uint256(expr_34570), convert_t_rational_0_by_1_to_t_uint256(expr_34571))
                /// @src 43:2102:2537  "if (keyIndex == 0) { // Equivalent to !contains(map, key)..."
                switch expr_34572
                case 0 {
                    /// @src 43:2495:2500  "value"
                    let _382 := var_value_34558
                    let expr_34605 := _382
                    /// @src 43:2459:2462  "map"
                    let _383_slot := var_map_34554_slot
                    let expr_34597_slot := _383_slot
                    /// @src 43:2459:2471  "map._entries"
                    let _384 := add(expr_34597_slot, 0)
                    let _385_slot := _384
                    let expr_34602_slot := _385_slot
                    /// @src 43:2472:2480  "keyIndex"
                    let _386 := var_keyIndex_34564
                    let expr_34599 := _386
                    /// @src 43:2483:2484  "1"
                    let expr_34600 := 0x01
                    /// @src 43:2472:2484  "keyIndex - 1"
                    let expr_34601 := checked_sub_t_uint256(expr_34599, convert_t_rational_1_by_1_to_t_uint256(expr_34600))

                    /// @src 43:2459:2485  "map._entries[keyIndex - 1]"

                    let _387, _388 := storage_array_index_access_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(expr_34602_slot, expr_34601)
                    let _389_slot := _387
                    let expr_34603_slot := _389_slot
                    /// @src 43:2459:2492  "map._entries[keyIndex - 1]._value"
                    let _390 := add(expr_34603_slot, 1)
                    /// @src 43:2459:2500  "map._entries[keyIndex - 1]._value = value"
                    update_storage_value_offset_0_t_bytes32_to_t_bytes32(_390, expr_34605)
                    let expr_34606 := expr_34605
                    /// @src 43:2521:2526  "false"
                    let expr_34608 := 0x00
                    /// @src 43:2514:2526  "return false"
                    var__34561 := expr_34608
                    leave
                    /// @src 43:2102:2537  "if (keyIndex == 0) { // Equivalent to !contains(map, key)..."
                }
                default {
                    /// @src 43:2172:2175  "map"
                    let _391_slot := var_map_34554_slot
                    let expr_34573_slot := _391_slot
                    /// @src 43:2172:2184  "map._entries"
                    let _392 := add(expr_34573_slot, 0)
                    let _393_slot := _392
                    let expr_34576_slot := _393_slot
                    /// @src 43:2172:2189  "map._entries.push"
                    let expr_34577_self_slot := convert_array_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_to_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(expr_34576_slot)
                    /// @src 43:2207:2210  "key"
                    let _394 := var_key_34556
                    let expr_34579 := _394
                    /// @src 43:2220:2225  "value"
                    let _395 := var_value_34558
                    let expr_34580 := _395
                    /// @src 43:2190:2228  "MapEntry({ _key: key, _value: value })"
                    let expr_34581_mpos := allocate_memory_struct_t_struct$_MapEntry_$34541_storage_ptr()
                    write_to_memory_t_bytes32(add(expr_34581_mpos, 0), expr_34579)
                    write_to_memory_t_bytes32(add(expr_34581_mpos, 32), expr_34580)
                    /// @src 43:2172:2229  "map._entries.push(MapEntry({ _key: key, _value: value }))"
                    array_push_from_t_struct$_MapEntry_$34541_memory_ptr_to_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(expr_34577_self_slot, expr_34581_mpos)
                    /// @src 43:2384:2387  "map"
                    let _396_slot := var_map_34554_slot
                    let expr_34589_slot := _396_slot
                    /// @src 43:2384:2396  "map._entries"
                    let _397 := add(expr_34589_slot, 0)
                    let _398_slot := _397
                    let expr_34590_slot := _398_slot
                    /// @src 43:2384:2403  "map._entries.length"
                    let expr_34591 := array_length_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(expr_34590_slot)
                    /// @src 43:2364:2367  "map"
                    let _399_slot := var_map_34554_slot
                    let expr_34584_slot := _399_slot
                    /// @src 43:2364:2376  "map._indexes"
                    let _400 := add(expr_34584_slot, 1)
                    let _401_slot := _400
                    let expr_34587_slot := _401_slot
                    /// @src 43:2377:2380  "key"
                    let _402 := var_key_34556
                    let expr_34586 := _402
                    /// @src 43:2364:2381  "map._indexes[key]"
                    let _403 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_34587_slot,expr_34586)
                    /// @src 43:2364:2403  "map._indexes[key] = map._entries.length"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_403, expr_34591)
                    let expr_34592 := expr_34591
                    /// @src 43:2424:2428  "true"
                    let expr_34594 := 0x01
                    /// @src 43:2417:2428  "return true"
                    var__34561 := expr_34594
                    leave
                    /// @src 43:2102:2537  "if (keyIndex == 0) { // Equivalent to !contains(map, key)..."
                }

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            /// @ast-id 23511
            /// @src 41:755:1168  "function isContract(address account) internal view returns (bool) {..."
            function fun_isContract_23511(var_account_23497) -> var__23500 {
                /// @src 41:815:819  "bool"
                let zero_t_bool_404 := zero_value_for_split_t_bool()
                var__23500 := zero_t_bool_404

                /// @src 41:1018:1030  "uint256 size"
                let var_size_23503
                let zero_t_uint256_405 := zero_value_for_split_t_uint256()
                var_size_23503 := zero_t_uint256_405
                /// @src 41:1096:1137  "assembly { size := extcodesize(account) }"
                {
                    var_size_23503 := extcodesize(var_account_23497)
                }
                /// @src 41:1153:1157  "size"
                let _406 := var_size_23503
                let expr_23506 := _406
                /// @src 41:1160:1161  "0"
                let expr_23507 := 0x00
                /// @src 41:1153:1161  "size > 0"
                let expr_23508 := gt(cleanup_t_uint256(expr_23506), convert_t_rational_0_by_1_to_t_uint256(expr_23507))
                /// @src 41:1146:1161  "return size > 0"
                var__23500 := expr_23508
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function zero_value_for_split_t_bytes_memory_ptr() -> ret {
                ret := 96
            }

            /// @ast-id 23582
            /// @src 41:3610:3803  "function functionCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {..."
            function fun_functionCall_23582(var_target_23565, var_data_23567_mpos, var_errorMessage_23569_mpos) -> var__23572_mpos {
                /// @src 41:3713:3725  "bytes memory"
                let zero_t_bytes_memory_ptr_407_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var__23572_mpos := zero_t_bytes_memory_ptr_407_mpos

                /// @src 41:3766:3772  "target"
                let _408 := var_target_23565
                let expr_23575 := _408
                /// @src 41:3774:3778  "data"
                let _409_mpos := var_data_23567_mpos
                let expr_23576_mpos := _409_mpos
                /// @src 41:3780:3781  "0"
                let expr_23577 := 0x00
                /// @src 41:3783:3795  "errorMessage"
                let _410_mpos := var_errorMessage_23569_mpos
                let expr_23578_mpos := _410_mpos
                /// @src 41:3744:3796  "functionCallWithValue(target, data, 0, errorMessage)"
                let _411 := convert_t_rational_0_by_1_to_t_uint256(expr_23577)
                let expr_23579_mpos := fun_functionCallWithValue_23652(expr_23575, expr_23576_mpos, _411, expr_23578_mpos)
                /// @src 41:3737:3796  "return functionCallWithValue(target, data, 0, errorMessage)"
                var__23572_mpos := expr_23579_mpos
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            /// @ast-id 35266
            /// @src 44:3834:3961  "function _contains(Set storage set, bytes32 value) private view returns (bool) {..."
            function fun__contains_35266(var_set_35251_slot, var_value_35253) -> var__35256 {
                /// @src 44:3907:3911  "bool"
                let zero_t_bool_412 := zero_value_for_split_t_bool()
                var__35256 := zero_t_bool_412

                /// @src 44:3930:3933  "set"
                let _413_slot := var_set_35251_slot
                let expr_35258_slot := _413_slot
                /// @src 44:3930:3942  "set._indexes"
                let _414 := add(expr_35258_slot, 1)
                let _415_slot := _414
                let expr_35259_slot := _415_slot
                /// @src 44:3943:3948  "value"
                let _416 := var_value_35253
                let expr_35260 := _416
                /// @src 44:3930:3949  "set._indexes[value]"
                let _417 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_35259_slot,expr_35260)
                let _418 := read_from_storage_split_offset_0_t_uint256(_417)
                let expr_35261 := _418
                /// @src 44:3953:3954  "0"
                let expr_35262 := 0x00
                /// @src 44:3930:3954  "set._indexes[value] != 0"
                let expr_35263 := iszero(eq(cleanup_t_uint256(expr_35261), convert_t_rational_0_by_1_to_t_uint256(expr_35262)))
                /// @src 44:3923:3954  "return set._indexes[value] != 0"
                var__35256 := expr_35263
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            function convert_t_contract$_Address_$23787_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function store_literal_in_memory_565f1a77334fc4792800921178c71e4521acffab18ff9e7885b49377ee80ab4c(memPtr) {

                mstore(add(memPtr, 0), "Address: insufficient balance fo")

                mstore(add(memPtr, 32), "r call")

            }

            function abi_encode_t_stringliteral_565f1a77334fc4792800921178c71e4521acffab18ff9e7885b49377ee80ab4c_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 38)
                store_literal_in_memory_565f1a77334fc4792800921178c71e4521acffab18ff9e7885b49377ee80ab4c(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_565f1a77334fc4792800921178c71e4521acffab18ff9e7885b49377ee80ab4c__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_565f1a77334fc4792800921178c71e4521acffab18ff9e7885b49377ee80ab4c_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_565f1a77334fc4792800921178c71e4521acffab18ff9e7885b49377ee80ab4c(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_565f1a77334fc4792800921178c71e4521acffab18ff9e7885b49377ee80ab4c__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_cc2e4e38850b7c0a3e942cfed89b71c77302df25bcb2ec297a0c4ff9ff6b90ad(memPtr) {

                mstore(add(memPtr, 0), "Address: call to non-contract")

            }

            function abi_encode_t_stringliteral_cc2e4e38850b7c0a3e942cfed89b71c77302df25bcb2ec297a0c4ff9ff6b90ad_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 29)
                store_literal_in_memory_cc2e4e38850b7c0a3e942cfed89b71c77302df25bcb2ec297a0c4ff9ff6b90ad(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_cc2e4e38850b7c0a3e942cfed89b71c77302df25bcb2ec297a0c4ff9ff6b90ad__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_cc2e4e38850b7c0a3e942cfed89b71c77302df25bcb2ec297a0c4ff9ff6b90ad_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_cc2e4e38850b7c0a3e942cfed89b71c77302df25bcb2ec297a0c4ff9ff6b90ad(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_cc2e4e38850b7c0a3e942cfed89b71c77302df25bcb2ec297a0c4ff9ff6b90ad__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
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

            /// @ast-id 23652
            /// @src 41:4637:5160  "function functionCallWithValue(address target, bytes memory data, uint256 value, string memory errorMessage) internal returns (bytes memory) {..."
            function fun_functionCallWithValue_23652(var_target_23605, var_data_23607_mpos, var_value_23609, var_errorMessage_23611_mpos) -> var__23614_mpos {
                /// @src 41:4764:4776  "bytes memory"
                let zero_t_bytes_memory_ptr_419_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var__23614_mpos := zero_t_bytes_memory_ptr_419_mpos

                /// @src 41:4804:4808  "this"
                let expr_23619_address := address()
                /// @src 41:4796:4809  "address(this)"
                let expr_23620 := convert_t_contract$_Address_$23787_to_t_address(expr_23619_address)
                /// @src 41:4796:4817  "address(this).balance"
                let expr_23621 := balance(expr_23620)
                /// @src 41:4821:4826  "value"
                let _420 := var_value_23609
                let expr_23622 := _420
                /// @src 41:4796:4826  "address(this).balance >= value"
                let expr_23623 := iszero(lt(cleanup_t_uint256(expr_23621), cleanup_t_uint256(expr_23622)))
                /// @src 41:4788:4869  "require(address(this).balance >= value, \"Address: insufficient balance for call\")"
                require_helper_t_stringliteral_565f1a77334fc4792800921178c71e4521acffab18ff9e7885b49377ee80ab4c(expr_23623)
                /// @src 41:4898:4904  "target"
                let _421 := var_target_23605
                let expr_23629 := _421
                /// @src 41:4887:4905  "isContract(target)"
                let expr_23630 := fun_isContract_23511(expr_23629)
                /// @src 41:4879:4939  "require(isContract(target), \"Address: call to non-contract\")"
                require_helper_t_stringliteral_cc2e4e38850b7c0a3e942cfed89b71c77302df25bcb2ec297a0c4ff9ff6b90ad(expr_23630)
                /// @src 41:5051:5057  "target"
                let _422 := var_target_23605
                let expr_23638 := _422
                /// @src 41:5051:5062  "target.call"
                let expr_23639_address := expr_23638
                /// @src 41:5071:5076  "value"
                let _423 := var_value_23609
                let expr_23640 := _423
                /// @src 41:5051:5078  "target.call{ value: value }"
                let expr_23641_address := expr_23639_address
                let expr_23641_value := expr_23640
                /// @src 41:5079:5083  "data"
                let _424_mpos := var_data_23607_mpos
                let expr_23642_mpos := _424_mpos
                /// @src 41:5051:5084  "target.call{ value: value }(data)"

                let _425 := add(expr_23642_mpos, 0x20)
                let _426 := mload(expr_23642_mpos)

                let expr_23643_component_1 := call(gas(), expr_23641_address,  expr_23641_value,  _425, _426, 0, 0)

                let expr_23643_component_2_mpos := extract_returndata()
                /// @src 41:5009:5084  "(bool success, bytes memory returndata) = target.call{ value: value }(data)"
                let var_success_23635 := expr_23643_component_1
                let var_returndata_23637_mpos := expr_23643_component_2_mpos
                /// @src 41:5119:5126  "success"
                let _427 := var_success_23635
                let expr_23646 := _427
                /// @src 41:5128:5138  "returndata"
                let _428_mpos := var_returndata_23637_mpos
                let expr_23647_mpos := _428_mpos
                /// @src 41:5140:5152  "errorMessage"
                let _429_mpos := var_errorMessage_23611_mpos
                let expr_23648_mpos := _429_mpos
                /// @src 41:5101:5153  "_verifyCallResult(success, returndata, errorMessage)"
                let expr_23649_mpos := fun__verifyCallResult_23786(expr_23646, expr_23647_mpos, expr_23648_mpos)
                /// @src 41:5094:5153  "return _verifyCallResult(success, returndata, errorMessage)"
                var__23614_mpos := expr_23649_mpos
                leave

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

            /// @ast-id 23786
            /// @src 41:7120:7845  "function _verifyCallResult(bool success, bytes memory returndata, string memory errorMessage) private pure returns(bytes memory) {..."
            function fun__verifyCallResult_23786(var_success_23758, var_returndata_23760_mpos, var_errorMessage_23762_mpos) -> var__23765_mpos {
                /// @src 41:7235:7247  "bytes memory"
                let zero_t_bytes_memory_ptr_430_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var__23765_mpos := zero_t_bytes_memory_ptr_430_mpos

                /// @src 41:7263:7270  "success"
                let _431 := var_success_23758
                let expr_23767 := _431
                /// @src 41:7259:7839  "if (success) {..."
                switch expr_23767
                case 0 {
                    /// @src 41:7404:7414  "returndata"
                    let _432_mpos := var_returndata_23760_mpos
                    let expr_23771_mpos := _432_mpos
                    /// @src 41:7404:7421  "returndata.length"
                    let expr_23772 := array_length_t_bytes_memory_ptr(expr_23771_mpos)
                    /// @src 41:7424:7425  "0"
                    let expr_23773 := 0x00
                    /// @src 41:7404:7425  "returndata.length > 0"
                    let expr_23774 := gt(cleanup_t_uint256(expr_23772), convert_t_rational_0_by_1_to_t_uint256(expr_23773))
                    /// @src 41:7400:7829  "if (returndata.length > 0) {..."
                    switch expr_23774
                    case 0 {
                        /// @src 41:7801:7813  "errorMessage"
                        let _433_mpos := var_errorMessage_23762_mpos
                        let expr_23778_mpos := _433_mpos
                        /// @src 41:7794:7814  "revert(errorMessage)"
                        {

                            let _435 := allocate_unbounded()

                            mstore(_435, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                            let _434 := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(add(_435, 4) , expr_23778_mpos)
                            revert(_435, sub(_434, _435))
                        }/// @src 41:7400:7829  "if (returndata.length > 0) {..."
                    }
                    default {
                        /// @src 41:7602:7756  "assembly {..."
                        {
                            let usr$returndata_size := mload(var_returndata_23760_mpos)
                            revert(add(32, var_returndata_23760_mpos), usr$returndata_size)
                        }
                        /// @src 41:7400:7829  "if (returndata.length > 0) {..."
                    }
                    /// @src 41:7259:7839  "if (success) {..."
                }
                default {
                    /// @src 41:7293:7303  "returndata"
                    let _436_mpos := var_returndata_23760_mpos
                    let expr_23768_mpos := _436_mpos
                    /// @src 41:7286:7303  "return returndata"
                    var__23765_mpos := expr_23768_mpos
                    leave
                    /// @src 41:7259:7839  "if (success) {..."
                }

            }
            /// @src 36:600:17127  "contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Enumerable {..."

        }

        data ".metadata" hex"a2646970667358221220539404639b19df96af3a3047087d68a83d6a81e5a6937dd733d329d2f1bd2b4764736f6c634300081e0033"
    }

}

