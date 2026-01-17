
/// @use-src 11:"lib/solmate/src/tokens/ERC20.sol", 55:"src/interfaces/ISupplyToken.sol", 80:"src/tokenization/SupplyToken.sol"
object "SupplyToken_33073" {
    code {
        /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."
        mstore(64, memoryguard(256))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1, _2, _3, _4 := copy_arguments_for_constructor_33040_object_SupplyToken_33073()
        constructor_SupplyToken_33073(_1, _2, _3, _4)

        let _5 := allocate_unbounded()
        codecopy(_5, dataoffset("SupplyToken_33073_deployed"), datasize("SupplyToken_33073_deployed"))

        setimmutable(_5, "12942", mload(128))

        setimmutable(_5, "12956", mload(160))

        setimmutable(_5, "12958", mload(192))

        setimmutable(_5, "33007", mload(224))

        return(_5, datasize("SupplyToken_33073_deployed"))

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

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
        }

        function cleanup_t_address(value) -> cleaned {
            cleaned := cleanup_t_uint160(value)
        }

        function validator_revert_t_address(value) {
            if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
        }

        function abi_decode_t_address_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_address(value)
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

        function abi_decode_tuple_t_addresst_string_memory_ptrt_string_memory_ptrt_uint8_fromMemory(headStart, dataEnd) -> value0, value1, value2, value3 {
            if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            {

                let offset := 0

                value0 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := mload(add(headStart, 32))
                if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                value1 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := mload(add(headStart, 64))
                if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                value2 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 96

                value3 := abi_decode_t_uint8_fromMemory(add(headStart, offset), dataEnd)
            }

        }

        function copy_arguments_for_constructor_33040_object_SupplyToken_33073() -> ret_param_0, ret_param_1, ret_param_2, ret_param_3 {

            let programSize := datasize("SupplyToken_33073")
            let argSize := sub(codesize(), programSize)

            let memoryDataOffset := allocate_memory(argSize)
            codecopy(memoryDataOffset, programSize, argSize)

            ret_param_0, ret_param_1, ret_param_2, ret_param_3 := abi_decode_tuple_t_addresst_string_memory_ptrt_string_memory_ptrt_uint8_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
        }

        /// @ast-id 33040
        /// @src 80:368:549  "constructor(address controller, string memory _name, string memory _symbol, uint8 __decimals)..."
        function constructor_SupplyToken_33073(var_controller_33021, var__name_33023_mpos, var__symbol_33025_mpos, var___decimals_33027) {
            /// @src 80:476:481  "_name"
            let _6_mpos := var__name_33023_mpos
            let expr_33030_mpos := _6_mpos
            let _7_mpos := expr_33030_mpos
            /// @src 80:483:490  "_symbol"
            let _8_mpos := var__symbol_33025_mpos
            let expr_33031_mpos := _8_mpos
            let _9_mpos := expr_33031_mpos
            /// @src 80:492:502  "__decimals"
            let _10 := var___decimals_33027
            let expr_33032 := _10
            let _11 := expr_33032

            /// @src 80:368:549  "constructor(address controller, string memory _name, string memory _symbol, uint8 __decimals)..."
            constructor_ISupplyToken_2184(_7_mpos, _9_mpos, _11)

            /// @src 80:532:542  "controller"
            let _12 := var_controller_33021
            let expr_33036 := _12
            /// @src 80:518:542  "_controller = controller"
            let _13 := expr_33036
            mstore(224, _13)
            let expr_33037 := expr_33036

        }
        /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

        /// @src 55:63:211  "interface ISupplyToken {..."
        function constructor_ISupplyToken_2184(_7_mpos, _9_mpos, _11) {

            /// @src 55:63:211  "interface ISupplyToken {..."
            constructor_ERC20_13305(_7_mpos, _9_mpos, _11)

        }
        /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

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

        /// @ast-id 12994
        /// @src 11:1981:2273  "constructor(..."
        function constructor_ERC20_13305(var__name_12964_mpos, var__symbol_12966_mpos, var__decimals_12968) {

            /// @src 11:1981:2273  "constructor(..."

            /// @src 11:2101:2106  "_name"
            let _14_mpos := var__name_12964_mpos
            let expr_12972_mpos := _14_mpos
            /// @src 11:2094:2106  "name = _name"
            update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(0x00, expr_12972_mpos)
            let _15_slot := 0x00
            let expr_12973_slot := _15_slot
            /// @src 11:2125:2132  "_symbol"
            let _16_mpos := var__symbol_12966_mpos
            let expr_12976_mpos := _16_mpos
            /// @src 11:2116:2132  "symbol = _symbol"
            update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(0x01, expr_12976_mpos)
            let _17_slot := 0x01
            let expr_12977_slot := _17_slot
            /// @src 11:2153:2162  "_decimals"
            let _18 := var__decimals_12968
            let expr_12980 := _18
            /// @src 11:2142:2162  "decimals = _decimals"
            let _19 := expr_12980
            mstore(128, _19)
            let expr_12981 := expr_12980
            /// @src 11:2192:2205  "block.chainid"
            let expr_12985 := chainid()
            /// @src 11:2173:2205  "INITIAL_CHAIN_ID = block.chainid"
            let _20 := expr_12985
            mstore(160, _20)
            let expr_12986 := expr_12985
            /// @src 11:2242:2266  "computeDomainSeparator()"
            let expr_12990 := fun_computeDomainSeparator_13248()
            /// @src 11:2215:2266  "INITIAL_DOMAIN_SEPARATOR = computeDomainSeparator()"
            let _21 := expr_12990
            mstore(192, _21)
            let expr_12991 := expr_12990

        }
        /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

        function zero_value_for_split_t_bytes32() -> ret {
            ret := 0
        }

        function convert_array_t_string_storage_to_t_bytes_storage_ptr(value) -> converted  {
            converted := value

        }

        function array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length) -> updated_pos {
            mstore(pos, length)
            updated_pos := add(pos, 0x20)
        }

        function array_dataslot_t_bytes_storage_ptr(ptr) -> data {
            data := ptr

            mstore(0, ptr)
            data := keccak256(0, 0x20)

        }

        // bytes -> bytes
        function abi_encode_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value, pos) -> ret {
            let slotValue := sload(value)
            let length := extract_byte_array_length(slotValue)
            pos := array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length)
            switch and(slotValue, 1)
            case 0 {
                // short byte array
                mstore(pos, and(slotValue, not(0xff)))
                ret := add(pos, mul(0x20, iszero(iszero(length))))
            }
            case 1 {
                // long byte array
                let dataPos := array_dataslot_t_bytes_storage_ptr(value)
                let i := 0
                for { } lt(i, length) { i := add(i, 0x20) } {
                    mstore(add(pos, i), sload(dataPos))
                    dataPos := add(dataPos, 1)
                }
                ret := add(pos, i)
            }
        }

        function abi_encodeUpdatedPos_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value0, pos) -> updatedPos {
            updatedPos := abi_encode_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value0, pos)
        }

        function copy_array_from_storage_to_memory_t_bytes_storage_ptr(slot) -> memPtr {
            memPtr := allocate_unbounded()
            let end := abi_encodeUpdatedPos_t_bytes_storage_ptr_to_t_bytes_memory_ptr(slot, memPtr)
            finalize_allocation(memPtr, sub(end, memPtr))
        }

        function convert_array_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value) -> converted  {

            // Copy the array to a free position in memory
            converted :=

            copy_array_from_storage_to_memory_t_bytes_storage_ptr(value)

        }

        function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
            data := ptr

            data := add(ptr, 0x20)

        }

        function array_length_t_bytes_memory_ptr(value) -> length {

            length := mload(value)

        }

        function convert_t_uint160_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
        }

        function convert_t_uint160_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_uint160(value)
        }

        function convert_t_contract$_ERC20_$13305_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_address(value)
        }

        function cleanup_t_bytes32(value) -> cleaned {
            cleaned := value
        }

        function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
            mstore(pos, cleanup_t_bytes32(value))
        }

        function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
            mstore(pos, cleanup_t_uint256(value))
        }

        function abi_encode_t_address_to_t_address_fromStack(value, pos) {
            mstore(pos, cleanup_t_address(value))
        }

        function abi_encode_tuple_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__to_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
            tail := add(headStart, 160)

            abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

            abi_encode_t_bytes32_to_t_bytes32_fromStack(value1,  add(headStart, 32))

            abi_encode_t_bytes32_to_t_bytes32_fromStack(value2,  add(headStart, 64))

            abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

            abi_encode_t_address_to_t_address_fromStack(value4,  add(headStart, 128))

        }

        /// @ast-id 13248
        /// @src 11:5510:5956  "function computeDomainSeparator() internal view virtual returns (bytes32) {..."
        function fun_computeDomainSeparator_13248() -> var__13221 {
            /// @src 11:5575:5582  "bytes32"
            let zero_t_bytes32_22 := zero_value_for_split_t_bytes32()
            var__13221 := zero_t_bytes32_22

            /// @src 11:5672:5767  "keccak256(\"EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)\")"
            let expr_13228 := 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
            /// @src 11:5805:5809  "name"
            let _23_slot := 0x00
            let expr_13232_slot := _23_slot
            /// @src 11:5799:5810  "bytes(name)"
            let expr_13233_slot := convert_array_t_string_storage_to_t_bytes_storage_ptr(expr_13232_slot)
            /// @src 11:5789:5811  "keccak256(bytes(name))"
            let _24_mpos := convert_array_t_bytes_storage_ptr_to_t_bytes_memory_ptr(expr_13233_slot)
            let expr_13234 := keccak256(array_dataslot_t_bytes_memory_ptr(_24_mpos), array_length_t_bytes_memory_ptr(_24_mpos))
            /// @src 11:5833:5847  "keccak256(\"1\")"
            let expr_13237 := 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6
            /// @src 11:5869:5882  "block.chainid"
            let expr_13239 := chainid()
            /// @src 11:5912:5916  "this"
            let expr_13242_address := address()
            /// @src 11:5904:5917  "address(this)"
            let expr_13243 := convert_t_contract$_ERC20_$13305_to_t_address(expr_13242_address)
            /// @src 11:5640:5935  "abi.encode(..."

            let expr_13244_mpos := allocate_unbounded()
            let _25 := add(expr_13244_mpos, 0x20)

            let _26 := abi_encode_tuple_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__to_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__fromStack(_25, expr_13228, expr_13234, expr_13237, expr_13239, expr_13243)
            mstore(expr_13244_mpos, sub(_26, add(expr_13244_mpos, 0x20)))
            finalize_allocation(expr_13244_mpos, sub(_26, expr_13244_mpos))
            /// @src 11:5613:5949  "keccak256(..."
            let expr_13245 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_13244_mpos), array_length_t_bytes_memory_ptr(expr_13244_mpos))
            /// @src 11:5594:5949  "return..."
            var__13221 := expr_13245
            leave

        }
        /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

    }
    /// @use-src 11:"lib/solmate/src/tokens/ERC20.sol", 80:"src/tokenization/SupplyToken.sol"
    object "SupplyToken_33073_deployed" {
        code {
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x06fdde03
                {
                    // name()

                    external_fun_name_12938()
                }

                case 0x095ea7b3
                {
                    // approve(address,uint256)

                    external_fun_approve_13022()
                }

                case 0x18160ddd
                {
                    // totalSupply()

                    external_fun_totalSupply_12944()
                }

                case 0x23b872dd
                {
                    // transferFrom(address,address,uint256)

                    external_fun_transferFrom_13116()
                }

                case 0x313ce567
                {
                    // decimals()

                    external_fun_decimals_12942()
                }

                case 0x3644e515
                {
                    // DOMAIN_SEPARATOR()

                    external_fun_DOMAIN_SEPARATOR_13218()
                }

                case 0x40c10f19
                {
                    // mint(address,uint256)

                    external_fun_mint_33056()
                }

                case 0x70a08231
                {
                    // balanceOf(address)

                    external_fun_balanceOf_12948()
                }

                case 0x7ecebe00
                {
                    // nonces(address)

                    external_fun_nonces_12962()
                }

                case 0x95d89b41
                {
                    // symbol()

                    external_fun_symbol_12940()
                }

                case 0x9dc29fac
                {
                    // burn(address,uint256)

                    external_fun_burn_33072()
                }

                case 0xa9059cbb
                {
                    // transfer(address,uint256)

                    external_fun_transfer_13055()
                }

                case 0xd505accf
                {
                    // permit(address,address,uint256,uint256,uint8,bytes32,bytes32)

                    external_fun_permit_13203()
                }

                case 0xdd62ed3e
                {
                    // allowance(address,address)

                    external_fun_allowance_12954()
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

            /// @ast-id 12938
            /// @src 11:1031:1049  "string public name"
            function getter_fun_name_12938() -> ret_mpos {

                let slot := 0
                let offset := 0

                ret_mpos := read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset)

            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

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

            function external_fun_name_12938() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_name_12938()
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

            function external_fun_approve_13022() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_approve_13022(param_0, param_1)
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

            /// @ast-id 12944
            /// @src 11:1304:1330  "uint256 public totalSupply"
            function getter_fun_totalSupply_12944() -> ret {

                let slot := 2
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_totalSupply_12944() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_totalSupply_12944()
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

            function external_fun_transferFrom_13116() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_transferFrom_13116(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 12942
            /// @src 11:1083:1114  "uint8 public immutable decimals"
            function getter_fun_decimals_12942() -> rval {

                rval := loadimmutable("12942")

            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

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

            function external_fun_decimals_12942() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_decimals_12942()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_DOMAIN_SEPARATOR_13218() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_DOMAIN_SEPARATOR_13218()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_mint_33056() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                fun_mint_33056(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
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

            /// @ast-id 12948
            /// @src 11:1337:1381  "mapping(address => uint256) public balanceOf"
            function getter_fun_balanceOf_12948(key_0) -> ret {

                let slot := 3
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            function external_fun_balanceOf_12948() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  getter_fun_balanceOf_12948(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 12962
            /// @src 11:1751:1792  "mapping(address => uint256) public nonces"
            function getter_fun_nonces_12962(key_0) -> ret {

                let slot := 5
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            function external_fun_nonces_12962() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  getter_fun_nonces_12962(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 12940
            /// @src 11:1056:1076  "string public symbol"
            function getter_fun_symbol_12940() -> ret_mpos {

                let slot := 1
                let offset := 0

                ret_mpos := read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset)

            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            function external_fun_symbol_12940() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_symbol_12940()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_burn_33072() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                fun_burn_33072(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_transfer_13055() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_transfer_13055(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function validator_revert_t_uint8(value) {
                if iszero(eq(value, cleanup_t_uint8(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint8(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint8(value)
            }

            function validator_revert_t_bytes32(value) {
                if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
            }

            function abi_decode_t_bytes32(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bytes32(value)
            }

            function abi_decode_tuple_t_addresst_addresst_uint256t_uint256t_uint8t_bytes32t_bytes32(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5, value6 {
                if slt(sub(dataEnd, headStart), 224) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

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

                    let offset := 96

                    value3 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 128

                    value4 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 160

                    value5 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 192

                    value6 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_permit_13203() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3, param_4, param_5, param_6 :=  abi_decode_tuple_t_addresst_addresst_uint256t_uint256t_uint8t_bytes32t_bytes32(4, calldatasize())
                fun_permit_13203(param_0, param_1, param_2, param_3, param_4, param_5, param_6)
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

            /// @ast-id 12954
            /// @src 11:1388:1452  "mapping(address => mapping(address => uint256)) public allowance"
            function getter_fun_allowance_12954(key_0, key_1) -> ret {

                let slot := 4
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot, key_0)

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_1)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            function external_fun_allowance_12954() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_address(4, calldatasize())
                let ret_0 :=  getter_fun_allowance_12954(param_0, param_1)
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

            /// @ast-id 13022
            /// @src 11:2461:2672  "function approve(address spender, uint256 amount) public virtual returns (bool) {..."
            function fun_approve_13022(var_spender_12996, var_amount_12998) -> var__13001 {
                /// @src 11:2535:2539  "bool"
                let zero_t_bool_1 := zero_value_for_split_t_bool()
                var__13001 := zero_t_bool_1

                /// @src 11:2584:2590  "amount"
                let _2 := var_amount_12998
                let expr_13009 := _2
                /// @src 11:2551:2560  "allowance"
                let _3_slot := 0x04
                let expr_13003_slot := _3_slot
                /// @src 11:2561:2571  "msg.sender"
                let expr_13005 := caller()
                /// @src 11:2551:2572  "allowance[msg.sender]"
                let _4 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_13003_slot,expr_13005)
                let _5_slot := _4
                let expr_13007_slot := _5_slot
                /// @src 11:2573:2580  "spender"
                let _6 := var_spender_12996
                let expr_13006 := _6
                /// @src 11:2551:2581  "allowance[msg.sender][spender]"
                let _7 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13007_slot,expr_13006)
                /// @src 11:2551:2590  "allowance[msg.sender][spender] = amount"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_7, expr_13009)
                let expr_13010 := expr_13009
                /// @src 11:2615:2625  "msg.sender"
                let expr_13014 := caller()
                /// @src 11:2627:2634  "spender"
                let _8 := var_spender_12996
                let expr_13015 := _8
                /// @src 11:2636:2642  "amount"
                let _9 := var_amount_12998
                let expr_13016 := _9
                /// @src 11:2606:2643  "Approval(msg.sender, spender, amount)"
                let _10 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                let _11 := convert_t_address_to_t_address(expr_13014)
                let _12 := convert_t_address_to_t_address(expr_13015)
                {
                    let _13 := allocate_unbounded()
                    let _14 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_13 , expr_13016)
                    log3(_13, sub(_14, _13) , _10, _11, _12)
                }/// @src 11:2661:2665  "true"
                let expr_13019 := 0x01
                /// @src 11:2654:2665  "return true"
                var__13001 := expr_13019
                leave

            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

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

            function wrapping_add_t_uint256(x, y) -> sum {
                sum := cleanup_t_uint256(add(x, y))
            }

            /// @ast-id 13116
            /// @src 11:3057:3649  "function transferFrom(..."
            function fun_transferFrom_13116(var_from_13057, var_to_13059, var_amount_13061) -> var__13064 {
                /// @src 11:3175:3179  "bool"
                let zero_t_bool_15 := zero_value_for_split_t_bool()
                var__13064 := zero_t_bool_15

                /// @src 11:3209:3218  "allowance"
                let _16_slot := 0x04
                let expr_13068_slot := _16_slot
                /// @src 11:3219:3223  "from"
                let _17 := var_from_13057
                let expr_13069 := _17
                /// @src 11:3209:3224  "allowance[from]"
                let _18 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_13068_slot,expr_13069)
                let _19_slot := _18
                let expr_13070_slot := _19_slot
                /// @src 11:3225:3235  "msg.sender"
                let expr_13072 := caller()
                /// @src 11:3209:3236  "allowance[from][msg.sender]"
                let _20 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13070_slot,expr_13072)
                let _21 := read_from_storage_split_offset_0_t_uint256(_20)
                let expr_13073 := _21
                /// @src 11:3191:3236  "uint256 allowed = allowance[from][msg.sender]"
                let var_allowed_13067 := expr_13073
                /// @src 11:3287:3294  "allowed"
                let _22 := var_allowed_13067
                let expr_13075 := _22
                /// @src 11:3298:3315  "type(uint256).max"
                let expr_13080 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                /// @src 11:3287:3315  "allowed != type(uint256).max"
                let expr_13081 := iszero(eq(cleanup_t_uint256(expr_13075), cleanup_t_uint256(expr_13080)))
                /// @src 11:3283:3363  "if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount"
                if expr_13081 {
                    /// @src 11:3347:3354  "allowed"
                    let _23 := var_allowed_13067
                    let expr_13088 := _23
                    /// @src 11:3357:3363  "amount"
                    let _24 := var_amount_13061
                    let expr_13089 := _24
                    /// @src 11:3347:3363  "allowed - amount"
                    let expr_13090 := checked_sub_t_uint256(expr_13088, expr_13089)

                    /// @src 11:3317:3326  "allowance"
                    let _25_slot := 0x04
                    let expr_13082_slot := _25_slot
                    /// @src 11:3327:3331  "from"
                    let _26 := var_from_13057
                    let expr_13083 := _26
                    /// @src 11:3317:3332  "allowance[from]"
                    let _27 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_13082_slot,expr_13083)
                    let _28_slot := _27
                    let expr_13086_slot := _28_slot
                    /// @src 11:3333:3343  "msg.sender"
                    let expr_13085 := caller()
                    /// @src 11:3317:3344  "allowance[from][msg.sender]"
                    let _29 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13086_slot,expr_13085)
                    /// @src 11:3317:3363  "allowance[from][msg.sender] = allowed - amount"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_29, expr_13090)
                    let expr_13091 := expr_13090
                    /// @src 11:3283:3363  "if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount"
                }
                /// @src 11:3393:3399  "amount"
                let _30 := var_amount_13061
                let expr_13097 := _30
                /// @src 11:3374:3383  "balanceOf"
                let _31_slot := 0x03
                let expr_13094_slot := _31_slot
                /// @src 11:3384:3388  "from"
                let _32 := var_from_13057
                let expr_13095 := _32
                /// @src 11:3374:3389  "balanceOf[from]"
                let _33 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13094_slot,expr_13095)
                /// @src 11:3374:3399  "balanceOf[from] -= amount"
                let _34 := read_from_storage_split_offset_0_t_uint256(_33)
                let expr_13098 := checked_sub_t_uint256(_34, expr_13097)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_33, expr_13098)
                /// @src 11:3562:3568  "amount"
                let _35 := var_amount_13061
                let expr_13103 := _35
                /// @src 11:3545:3554  "balanceOf"
                let _36_slot := 0x03
                let expr_13100_slot := _36_slot
                /// @src 11:3555:3557  "to"
                let _37 := var_to_13059
                let expr_13101 := _37
                /// @src 11:3545:3558  "balanceOf[to]"
                let _38 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13100_slot,expr_13101)
                /// @src 11:3545:3568  "balanceOf[to] += amount"
                let _39 := read_from_storage_split_offset_0_t_uint256(_38)
                let expr_13104 := wrapping_add_t_uint256(_39, expr_13103)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_38, expr_13104)
                /// @src 11:3603:3607  "from"
                let _40 := var_from_13057
                let expr_13108 := _40
                /// @src 11:3609:3611  "to"
                let _41 := var_to_13059
                let expr_13109 := _41
                /// @src 11:3613:3619  "amount"
                let _42 := var_amount_13061
                let expr_13110 := _42
                /// @src 11:3594:3620  "Transfer(from, to, amount)"
                let _43 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _44 := convert_t_address_to_t_address(expr_13108)
                let _45 := convert_t_address_to_t_address(expr_13109)
                {
                    let _46 := allocate_unbounded()
                    let _47 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_46 , expr_13110)
                    log3(_46, sub(_47, _46) , _43, _44, _45)
                }/// @src 11:3638:3642  "true"
                let expr_13113 := 0x01
                /// @src 11:3631:3642  "return true"
                var__13064 := expr_13113
                leave

            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            function zero_value_for_split_t_bytes32() -> ret {
                ret := 0
            }

            /// @ast-id 13218
            /// @src 11:5327:5504  "function DOMAIN_SEPARATOR() public view virtual returns (bytes32) {..."
            function fun_DOMAIN_SEPARATOR_13218() -> var__13206 {
                /// @src 11:5384:5391  "bytes32"
                let zero_t_bytes32_48 := zero_value_for_split_t_bytes32()
                var__13206 := zero_t_bytes32_48

                /// @src 11:5410:5423  "block.chainid"
                let expr_13209 := chainid()
                /// @src 11:5427:5443  "INITIAL_CHAIN_ID"
                let _49 := loadimmutable("12956")
                let expr_13210 := _49
                /// @src 11:5410:5443  "block.chainid == INITIAL_CHAIN_ID"
                let expr_13211 := eq(cleanup_t_uint256(expr_13209), cleanup_t_uint256(expr_13210))
                /// @src 11:5410:5497  "block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator()"
                let expr_13215
                switch expr_13211
                case 0 {
                    /// @src 11:5473:5497  "computeDomainSeparator()"
                    let expr_13214 := fun_computeDomainSeparator_13248()
                    /// @src 11:5410:5497  "block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator()"
                    expr_13215 := expr_13214
                }
                default {
                    /// @src 11:5446:5470  "INITIAL_DOMAIN_SEPARATOR"
                    let _50 := loadimmutable("12958")
                    let expr_13212 := _50
                    /// @src 11:5410:5497  "block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator()"
                    expr_13215 := expr_13212
                }
                /// @src 11:5403:5497  "return block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator()"
                var__13206 := expr_13215
                leave

            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            function store_literal_in_memory_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3(memPtr) {

                mstore(add(memPtr, 0), "ST0")

            }

            function abi_encode_t_stringliteral_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 3)
                store_literal_in_memory_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 33019
            /// @src 80:267:362  "modifier onlyController() {..."
            function modifier_onlyController_33048(var_account_33042, var_amount_33044) {

                /// @src 80:311:322  "_controller"
                let _51 := loadimmutable("33007")
                let expr_33010 := _51
                /// @src 80:326:336  "msg.sender"
                let expr_33012 := caller()
                /// @src 80:311:336  "_controller == msg.sender"
                let expr_33013 := eq(cleanup_t_address(expr_33010), cleanup_t_address(expr_33012))
                /// @src 80:303:344  "require(_controller == msg.sender, \"ST0\")"
                require_helper_t_stringliteral_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3(expr_33013)
                /// @src 80:354:355  "_"
                fun_mint_33056_inner(var_account_33042, var_amount_33044)

            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            /// @src 80:555:682  "function mint(address account, uint256 amount) external virtual override onlyController {..."
            function fun_mint_33056_inner(var_account_33042, var_amount_33044) {

                /// @src 80:659:666  "account"
                let _52 := var_account_33042
                let expr_33051 := _52
                /// @src 80:668:674  "amount"
                let _53 := var_amount_33044
                let expr_33052 := _53
                fun__mint_13276(expr_33051, expr_33052)

            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            /// @ast-id 33056
            /// @src 80:555:682  "function mint(address account, uint256 amount) external virtual override onlyController {..."
            function fun_mint_33056(var_account_33042, var_amount_33044) {

                modifier_onlyController_33048(var_account_33042, var_amount_33044)
            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            /// @ast-id 33019
            /// @src 80:267:362  "modifier onlyController() {..."
            function modifier_onlyController_33064(var_account_33058, var_amount_33060) {

                /// @src 80:311:322  "_controller"
                let _54 := loadimmutable("33007")
                let expr_33010 := _54
                /// @src 80:326:336  "msg.sender"
                let expr_33012 := caller()
                /// @src 80:311:336  "_controller == msg.sender"
                let expr_33013 := eq(cleanup_t_address(expr_33010), cleanup_t_address(expr_33012))
                /// @src 80:303:344  "require(_controller == msg.sender, \"ST0\")"
                require_helper_t_stringliteral_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3(expr_33013)
                /// @src 80:354:355  "_"
                fun_burn_33072_inner(var_account_33058, var_amount_33060)

            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            /// @src 80:688:815  "function burn(address account, uint256 amount) external virtual override onlyController {..."
            function fun_burn_33072_inner(var_account_33058, var_amount_33060) {

                /// @src 80:792:799  "account"
                let _55 := var_account_33058
                let expr_33067 := _55
                /// @src 80:801:807  "amount"
                let _56 := var_amount_33060
                let expr_33068 := _56
                fun__burn_13304(expr_33067, expr_33068)

            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            /// @ast-id 33072
            /// @src 80:688:815  "function burn(address account, uint256 amount) external virtual override onlyController {..."
            function fun_burn_33072(var_account_33058, var_amount_33060) {

                modifier_onlyController_33064(var_account_33058, var_amount_33060)
            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            /// @ast-id 13055
            /// @src 11:2678:3051  "function transfer(address to, uint256 amount) public virtual returns (bool) {..."
            function fun_transfer_13055(var_to_13024, var_amount_13026) -> var__13029 {
                /// @src 11:2748:2752  "bool"
                let zero_t_bool_57 := zero_value_for_split_t_bool()
                var__13029 := zero_t_bool_57

                /// @src 11:2789:2795  "amount"
                let _58 := var_amount_13026
                let expr_13035 := _58
                /// @src 11:2764:2773  "balanceOf"
                let _59_slot := 0x03
                let expr_13031_slot := _59_slot
                /// @src 11:2774:2784  "msg.sender"
                let expr_13033 := caller()
                /// @src 11:2764:2785  "balanceOf[msg.sender]"
                let _60 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13031_slot,expr_13033)
                /// @src 11:2764:2795  "balanceOf[msg.sender] -= amount"
                let _61 := read_from_storage_split_offset_0_t_uint256(_60)
                let expr_13036 := checked_sub_t_uint256(_61, expr_13035)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_60, expr_13036)
                /// @src 11:2958:2964  "amount"
                let _62 := var_amount_13026
                let expr_13041 := _62
                /// @src 11:2941:2950  "balanceOf"
                let _63_slot := 0x03
                let expr_13038_slot := _63_slot
                /// @src 11:2951:2953  "to"
                let _64 := var_to_13024
                let expr_13039 := _64
                /// @src 11:2941:2954  "balanceOf[to]"
                let _65 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13038_slot,expr_13039)
                /// @src 11:2941:2964  "balanceOf[to] += amount"
                let _66 := read_from_storage_split_offset_0_t_uint256(_65)
                let expr_13042 := wrapping_add_t_uint256(_66, expr_13041)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_65, expr_13042)
                /// @src 11:2999:3009  "msg.sender"
                let expr_13047 := caller()
                /// @src 11:3011:3013  "to"
                let _67 := var_to_13024
                let expr_13048 := _67
                /// @src 11:3015:3021  "amount"
                let _68 := var_amount_13026
                let expr_13049 := _68
                /// @src 11:2990:3022  "Transfer(msg.sender, to, amount)"
                let _69 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _70 := convert_t_address_to_t_address(expr_13047)
                let _71 := convert_t_address_to_t_address(expr_13048)
                {
                    let _72 := allocate_unbounded()
                    let _73 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_72 , expr_13049)
                    log3(_72, sub(_73, _72) , _69, _70, _71)
                }/// @src 11:3040:3044  "true"
                let expr_13052 := 0x01
                /// @src 11:3033:3044  "return true"
                var__13029 := expr_13052
                leave

            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            function store_literal_in_memory_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e(memPtr) {

                mstore(add(memPtr, 0), "PERMIT_DEADLINE_EXPIRED")

            }

            function abi_encode_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 23)
                store_literal_in_memory_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256__to_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4, value5) -> tail {
                tail := add(headStart, 192)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_address_to_t_address_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

                abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 160))

            }

            function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function store_literal_in_memory_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541(memPtr) {

                mstore(add(memPtr, 0), 0x1901000000000000000000000000000000000000000000000000000000000000)

            }

            function abi_encode_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 2)
                store_literal_in_memory_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541(pos)
                end := add(pos, 2)
            }

            function leftAlign_t_bytes32(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes32(cleanup_t_bytes32(value)))
            }

            function abi_encode_tuple_packed_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_t_bytes32_t_bytes32__to_t_string_memory_ptr_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(pos , value0, value1) -> end {

                pos := abi_encode_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 32)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 32)

                end := pos
            }

            function abi_encode_tuple_t_bytes32_t_uint8_t_bytes32_t_bytes32__to_t_bytes32_t_uint8_t_bytes32_t_bytes32__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint8_to_t_uint8_fromStack(value1,  add(headStart, 32))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value2,  add(headStart, 64))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value3,  add(headStart, 96))

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function store_literal_in_memory_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c(memPtr) {

                mstore(add(memPtr, 0), "INVALID_SIGNER")

            }

            function abi_encode_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 14)
                store_literal_in_memory_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 13203
            /// @src 11:3838:5321  "function permit(..."
            function fun_permit_13203(var_owner_13118, var_spender_13120, var_value_13122, var_deadline_13124, var_v_13126, var_r_13128, var_s_13130) {

                /// @src 11:4045:4053  "deadline"
                let _74 := var_deadline_13124
                let expr_13134 := _74
                /// @src 11:4057:4072  "block.timestamp"
                let expr_13136 := timestamp()
                /// @src 11:4045:4072  "deadline >= block.timestamp"
                let expr_13137 := iszero(lt(cleanup_t_uint256(expr_13134), cleanup_t_uint256(expr_13136)))
                /// @src 11:4037:4100  "require(deadline >= block.timestamp, \"PERMIT_DEADLINE_EXPIRED\")"
                require_helper_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e(expr_13137)
                /// @src 11:4428:4446  "DOMAIN_SEPARATOR()"
                let expr_13149 := fun_DOMAIN_SEPARATOR_13218()
                /// @src 11:4555:4720  "keccak256(..."
                let expr_13155 := 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9
                /// @src 11:4754:4759  "owner"
                let _75 := var_owner_13118
                let expr_13156 := _75
                /// @src 11:4793:4800  "spender"
                let _76 := var_spender_13120
                let expr_13157 := _76
                /// @src 11:4834:4839  "value"
                let _77 := var_value_13122
                let expr_13158 := _77
                /// @src 11:4873:4879  "nonces"
                let _78_slot := 0x05
                let expr_13159_slot := _78_slot
                /// @src 11:4880:4885  "owner"
                let _79 := var_owner_13118
                let expr_13160 := _79
                /// @src 11:4873:4886  "nonces[owner]"
                let _80 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13159_slot,expr_13160)
                /// @src 11:4873:4888  "nonces[owner]++"
                let _82 := read_from_storage_split_offset_0_t_uint256(_80)
                let _81 := increment_wrapping_t_uint256(_82)
                update_storage_value_offset_0_t_uint256_to_t_uint256(_80, _81)
                let expr_13162 := _82
                /// @src 11:4922:4930  "deadline"
                let _83 := var_deadline_13124
                let expr_13163 := _83
                /// @src 11:4511:4960  "abi.encode(..."

                let expr_13164_mpos := allocate_unbounded()
                let _84 := add(expr_13164_mpos, 0x20)

                let _85 := abi_encode_tuple_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256__to_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256__fromStack(_84, expr_13155, expr_13156, expr_13157, expr_13158, expr_13162, expr_13163)
                mstore(expr_13164_mpos, sub(_85, add(expr_13164_mpos, 0x20)))
                finalize_allocation(expr_13164_mpos, sub(_85, expr_13164_mpos))
                /// @src 11:4472:4986  "keccak256(..."
                let expr_13165 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_13164_mpos), array_length_t_bytes_memory_ptr(expr_13164_mpos))
                /// @src 11:4350:5008  "abi.encodePacked(..."

                let expr_13166_mpos := allocate_unbounded()
                let _86 := add(expr_13166_mpos, 0x20)

                let _87 := abi_encode_tuple_packed_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_t_bytes32_t_bytes32__to_t_string_memory_ptr_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(_86, expr_13149, expr_13165)
                mstore(expr_13166_mpos, sub(_87, add(expr_13166_mpos, 0x20)))
                finalize_allocation(expr_13166_mpos, sub(_87, expr_13166_mpos))
                /// @src 11:4319:5026  "keccak256(..."
                let expr_13167 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_13166_mpos), array_length_t_bytes_memory_ptr(expr_13166_mpos))
                /// @src 11:5044:5045  "v"
                let _88 := var_v_13126
                let expr_13168 := _88
                /// @src 11:5063:5064  "r"
                let _89 := var_r_13128
                let expr_13169 := _89
                /// @src 11:5082:5083  "s"
                let _90 := var_s_13130
                let expr_13170 := _90
                /// @src 11:4292:5097  "ecrecover(..."

                let _91 := allocate_unbounded()
                let _92 := abi_encode_tuple_t_bytes32_t_uint8_t_bytes32_t_bytes32__to_t_bytes32_t_uint8_t_bytes32_t_bytes32__fromStack(_91 , expr_13167, expr_13168, expr_13169, expr_13170)

                mstore(0, 0)

                let _93 := staticcall(gas(), 1 , _91, sub(_92, _91), 0, 32)

                if iszero(_93) { revert_forward_1() }

                let expr_13171 := shift_left_0(mload(0))
                /// @src 11:4265:5097  "address recoveredAddress = ecrecover(..."
                let var_recoveredAddress_13142 := expr_13171
                /// @src 11:5120:5136  "recoveredAddress"
                let _94 := var_recoveredAddress_13142
                let expr_13174 := _94
                /// @src 11:5148:5149  "0"
                let expr_13177 := 0x00
                /// @src 11:5140:5150  "address(0)"
                let expr_13178 := convert_t_rational_0_by_1_to_t_address(expr_13177)
                /// @src 11:5120:5150  "recoveredAddress != address(0)"
                let expr_13179 := iszero(eq(cleanup_t_address(expr_13174), cleanup_t_address(expr_13178)))
                /// @src 11:5120:5179  "recoveredAddress != address(0) && recoveredAddress == owner"
                let expr_13183 := expr_13179
                if expr_13183 {
                    /// @src 11:5154:5170  "recoveredAddress"
                    let _95 := var_recoveredAddress_13142
                    let expr_13180 := _95
                    /// @src 11:5174:5179  "owner"
                    let _96 := var_owner_13118
                    let expr_13181 := _96
                    /// @src 11:5154:5179  "recoveredAddress == owner"
                    let expr_13182 := eq(cleanup_t_address(expr_13180), cleanup_t_address(expr_13181))
                    /// @src 11:5120:5179  "recoveredAddress != address(0) && recoveredAddress == owner"
                    expr_13183 := expr_13182
                }
                /// @src 11:5112:5198  "require(recoveredAddress != address(0) && recoveredAddress == owner, \"INVALID_SIGNER\")"
                require_helper_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c(expr_13183)
                /// @src 11:5252:5257  "value"
                let _97 := var_value_13122
                let expr_13192 := _97
                /// @src 11:5213:5222  "allowance"
                let _98_slot := 0x04
                let expr_13187_slot := _98_slot
                /// @src 11:5223:5239  "recoveredAddress"
                let _99 := var_recoveredAddress_13142
                let expr_13188 := _99
                /// @src 11:5213:5240  "allowance[recoveredAddress]"
                let _100 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_13187_slot,expr_13188)
                let _101_slot := _100
                let expr_13190_slot := _101_slot
                /// @src 11:5241:5248  "spender"
                let _102 := var_spender_13120
                let expr_13189 := _102
                /// @src 11:5213:5249  "allowance[recoveredAddress][spender]"
                let _103 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13190_slot,expr_13189)
                /// @src 11:5213:5257  "allowance[recoveredAddress][spender] = value"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_103, expr_13192)
                let expr_13193 := expr_13192
                /// @src 11:5292:5297  "owner"
                let _104 := var_owner_13118
                let expr_13197 := _104
                /// @src 11:5299:5306  "spender"
                let _105 := var_spender_13120
                let expr_13198 := _105
                /// @src 11:5308:5313  "value"
                let _106 := var_value_13122
                let expr_13199 := _106
                /// @src 11:5283:5314  "Approval(owner, spender, value)"
                let _107 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                let _108 := convert_t_address_to_t_address(expr_13197)
                let _109 := convert_t_address_to_t_address(expr_13198)
                {
                    let _110 := allocate_unbounded()
                    let _111 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_110 , expr_13199)
                    log3(_110, sub(_111, _110) , _107, _108, _109)
                }
            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            function convert_array_t_string_storage_to_t_bytes_storage_ptr(value) -> converted  {
                converted := value

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_dataslot_t_bytes_storage_ptr(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            // bytes -> bytes
            function abi_encode_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value, pos) -> ret {
                let slotValue := sload(value)
                let length := extract_byte_array_length(slotValue)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length)
                switch and(slotValue, 1)
                case 0 {
                    // short byte array
                    mstore(pos, and(slotValue, not(0xff)))
                    ret := add(pos, mul(0x20, iszero(iszero(length))))
                }
                case 1 {
                    // long byte array
                    let dataPos := array_dataslot_t_bytes_storage_ptr(value)
                    let i := 0
                    for { } lt(i, length) { i := add(i, 0x20) } {
                        mstore(add(pos, i), sload(dataPos))
                        dataPos := add(dataPos, 1)
                    }
                    ret := add(pos, i)
                }
            }

            function abi_encodeUpdatedPos_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value0, pos) -> updatedPos {
                updatedPos := abi_encode_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value0, pos)
            }

            function copy_array_from_storage_to_memory_t_bytes_storage_ptr(slot) -> memPtr {
                memPtr := allocate_unbounded()
                let end := abi_encodeUpdatedPos_t_bytes_storage_ptr_to_t_bytes_memory_ptr(slot, memPtr)
                finalize_allocation(memPtr, sub(end, memPtr))
            }

            function convert_array_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value) -> converted  {

                // Copy the array to a free position in memory
                converted :=

                copy_array_from_storage_to_memory_t_bytes_storage_ptr(value)

            }

            function convert_t_contract$_ERC20_$13305_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_tuple_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__to_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value1,  add(headStart, 32))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_address_to_t_address_fromStack(value4,  add(headStart, 128))

            }

            /// @ast-id 13248
            /// @src 11:5510:5956  "function computeDomainSeparator() internal view virtual returns (bytes32) {..."
            function fun_computeDomainSeparator_13248() -> var__13221 {
                /// @src 11:5575:5582  "bytes32"
                let zero_t_bytes32_112 := zero_value_for_split_t_bytes32()
                var__13221 := zero_t_bytes32_112

                /// @src 11:5672:5767  "keccak256(\"EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)\")"
                let expr_13228 := 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
                /// @src 11:5805:5809  "name"
                let _113_slot := 0x00
                let expr_13232_slot := _113_slot
                /// @src 11:5799:5810  "bytes(name)"
                let expr_13233_slot := convert_array_t_string_storage_to_t_bytes_storage_ptr(expr_13232_slot)
                /// @src 11:5789:5811  "keccak256(bytes(name))"
                let _114_mpos := convert_array_t_bytes_storage_ptr_to_t_bytes_memory_ptr(expr_13233_slot)
                let expr_13234 := keccak256(array_dataslot_t_bytes_memory_ptr(_114_mpos), array_length_t_bytes_memory_ptr(_114_mpos))
                /// @src 11:5833:5847  "keccak256(\"1\")"
                let expr_13237 := 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6
                /// @src 11:5869:5882  "block.chainid"
                let expr_13239 := chainid()
                /// @src 11:5912:5916  "this"
                let expr_13242_address := address()
                /// @src 11:5904:5917  "address(this)"
                let expr_13243 := convert_t_contract$_ERC20_$13305_to_t_address(expr_13242_address)
                /// @src 11:5640:5935  "abi.encode(..."

                let expr_13244_mpos := allocate_unbounded()
                let _115 := add(expr_13244_mpos, 0x20)

                let _116 := abi_encode_tuple_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__to_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__fromStack(_115, expr_13228, expr_13234, expr_13237, expr_13239, expr_13243)
                mstore(expr_13244_mpos, sub(_116, add(expr_13244_mpos, 0x20)))
                finalize_allocation(expr_13244_mpos, sub(_116, expr_13244_mpos))
                /// @src 11:5613:5949  "keccak256(..."
                let expr_13245 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_13244_mpos), array_length_t_bytes_memory_ptr(expr_13244_mpos))
                /// @src 11:5594:5949  "return..."
                var__13221 := expr_13245
                leave

            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            /// @ast-id 13276
            /// @src 11:6150:6475  "function _mint(address to, uint256 amount) internal virtual {..."
            function fun__mint_13276(var_to_13250, var_amount_13252) {

                /// @src 11:6235:6241  "amount"
                let _117 := var_amount_13252
                let expr_13256 := _117
                /// @src 11:6220:6241  "totalSupply += amount"
                let _118 := read_from_storage_split_offset_0_t_uint256(0x02)
                let expr_13257 := checked_add_t_uint256(_118, expr_13256)

                update_storage_value_offset_0_t_uint256_to_t_uint256(0x02, expr_13257)
                /// @src 11:6404:6410  "amount"
                let _119 := var_amount_13252
                let expr_13262 := _119
                /// @src 11:6387:6396  "balanceOf"
                let _120_slot := 0x03
                let expr_13259_slot := _120_slot
                /// @src 11:6397:6399  "to"
                let _121 := var_to_13250
                let expr_13260 := _121
                /// @src 11:6387:6400  "balanceOf[to]"
                let _122 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13259_slot,expr_13260)
                /// @src 11:6387:6410  "balanceOf[to] += amount"
                let _123 := read_from_storage_split_offset_0_t_uint256(_122)
                let expr_13263 := wrapping_add_t_uint256(_123, expr_13262)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_122, expr_13263)
                /// @src 11:6453:6454  "0"
                let expr_13269 := 0x00
                /// @src 11:6445:6455  "address(0)"
                let expr_13270 := convert_t_rational_0_by_1_to_t_address(expr_13269)
                /// @src 11:6457:6459  "to"
                let _124 := var_to_13250
                let expr_13271 := _124
                /// @src 11:6461:6467  "amount"
                let _125 := var_amount_13252
                let expr_13272 := _125
                /// @src 11:6436:6468  "Transfer(address(0), to, amount)"
                let _126 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _127 := convert_t_address_to_t_address(expr_13270)
                let _128 := convert_t_address_to_t_address(expr_13271)
                {
                    let _129 := allocate_unbounded()
                    let _130 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_129 , expr_13272)
                    log3(_129, sub(_130, _129) , _126, _127, _128)
                }
            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            function wrapping_sub_t_uint256(x, y) -> diff {
                diff := cleanup_t_uint256(sub(x, y))
            }

            /// @ast-id 13304
            /// @src 11:6481:6809  "function _burn(address from, uint256 amount) internal virtual {..."
            function fun__burn_13304(var_from_13278, var_amount_13280) {

                /// @src 11:6572:6578  "amount"
                let _131 := var_amount_13280
                let expr_13286 := _131
                /// @src 11:6553:6562  "balanceOf"
                let _132_slot := 0x03
                let expr_13283_slot := _132_slot
                /// @src 11:6563:6567  "from"
                let _133 := var_from_13278
                let expr_13284 := _133
                /// @src 11:6553:6568  "balanceOf[from]"
                let _134 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13283_slot,expr_13284)
                /// @src 11:6553:6578  "balanceOf[from] -= amount"
                let _135 := read_from_storage_split_offset_0_t_uint256(_134)
                let expr_13287 := checked_sub_t_uint256(_135, expr_13286)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_134, expr_13287)
                /// @src 11:6736:6742  "amount"
                let _136 := var_amount_13280
                let expr_13290 := _136
                /// @src 11:6721:6742  "totalSupply -= amount"
                let _137 := read_from_storage_split_offset_0_t_uint256(0x02)
                let expr_13291 := wrapping_sub_t_uint256(_137, expr_13290)

                update_storage_value_offset_0_t_uint256_to_t_uint256(0x02, expr_13291)
                /// @src 11:6777:6781  "from"
                let _138 := var_from_13278
                let expr_13295 := _138
                /// @src 11:6791:6792  "0"
                let expr_13298 := 0x00
                /// @src 11:6783:6793  "address(0)"
                let expr_13299 := convert_t_rational_0_by_1_to_t_address(expr_13298)
                /// @src 11:6795:6801  "amount"
                let _139 := var_amount_13280
                let expr_13300 := _139
                /// @src 11:6768:6802  "Transfer(from, address(0), amount)"
                let _140 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _141 := convert_t_address_to_t_address(expr_13295)
                let _142 := convert_t_address_to_t_address(expr_13299)
                {
                    let _143 := allocate_unbounded()
                    let _144 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_143 , expr_13300)
                    log3(_143, sub(_144, _143) , _140, _141, _142)
                }
            }
            /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

        }

        data ".metadata" hex"a264697066735822122049263d7103ce3197bde66580cfa3ad56d15e1d6d29a9ee7f14d4e9eba2b6b71c64736f6c634300081e0033"
    }

}

