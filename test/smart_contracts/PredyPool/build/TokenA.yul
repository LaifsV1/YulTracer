
/// @use-src 0:"AERC20.sol", 2:"Yult.sol", 32:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/math/SafeMath.sol", 34:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/token/ERC20/ERC20.sol", 35:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/token/ERC20/IERC20.sol", 42:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/Context.sol", 49:"src/DeployerExploration.sol"
object "TokenA_55" {
    code {
        /// @src 49:1308:1433  "contract TokenA is AERC20 {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_TokenA_55()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("TokenA_55_deployed"), datasize("TokenA_55_deployed"))

        return(_1, datasize("TokenA_55_deployed"))

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

        function store_literal_in_memory_18c40d09d3be00e8c0eafe4f0ffbd938b1824b54b7ac8efe521dcc1be43de891(memPtr) {

            mstore(add(memPtr, 0), "TokenA")

        }

        function copy_literal_to_memory_18c40d09d3be00e8c0eafe4f0ffbd938b1824b54b7ac8efe521dcc1be43de891() -> memPtr {
            memPtr := allocate_memory_array_t_string_memory_ptr(6)
            store_literal_in_memory_18c40d09d3be00e8c0eafe4f0ffbd938b1824b54b7ac8efe521dcc1be43de891(add(memPtr, 32))
        }

        function convert_t_stringliteral_18c40d09d3be00e8c0eafe4f0ffbd938b1824b54b7ac8efe521dcc1be43de891_to_t_string_memory_ptr() -> converted {
            converted := copy_literal_to_memory_18c40d09d3be00e8c0eafe4f0ffbd938b1824b54b7ac8efe521dcc1be43de891()
        }

        function store_literal_in_memory_2487c49f05a4d0607f1ae07d97f7fbcb949677c47340370a6a8901d76e6d7481(memPtr) {

            mstore(add(memPtr, 0), "TKA")

        }

        function copy_literal_to_memory_2487c49f05a4d0607f1ae07d97f7fbcb949677c47340370a6a8901d76e6d7481() -> memPtr {
            memPtr := allocate_memory_array_t_string_memory_ptr(3)
            store_literal_in_memory_2487c49f05a4d0607f1ae07d97f7fbcb949677c47340370a6a8901d76e6d7481(add(memPtr, 32))
        }

        function convert_t_stringliteral_2487c49f05a4d0607f1ae07d97f7fbcb949677c47340370a6a8901d76e6d7481_to_t_string_memory_ptr() -> converted {
            converted := copy_literal_to_memory_2487c49f05a4d0607f1ae07d97f7fbcb949677c47340370a6a8901d76e6d7481()
        }

        function cleanup_t_rational_10_by_1(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function identity(value) -> ret {
            ret := value
        }

        function convert_t_rational_10_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_10_by_1(value)))
        }

        function cleanup_t_uint8(value) -> cleaned {
            cleaned := and(value, 0xff)
        }

        function panic_error_0x11() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x11)
            revert(0, 0x24)
        }

        function checked_exp_t_rational_10_by_1_t_uint8(exponent) -> power {
            exponent := cleanup_t_uint8(exponent)

            if gt(exponent, 77) { panic_error_0x11() }

            power := exp(10, exponent)
        }

        function cleanup_t_rational_1000_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_1000_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_1000_by_1(value)))
        }

        function checked_mul_t_uint256(x, y) -> product {
            x := cleanup_t_uint256(x)
            y := cleanup_t_uint256(y)
            let product_raw := mul(x, y)
            product := cleanup_t_uint256(product_raw)

            // overflow, if x != 0 and y != product/x
            if iszero(
                or(
                    iszero(x),
                    eq(y, div(product, x))
                )
            ) { panic_error_0x11() }

        }

        /// @ast-id 54
        /// @src 49:1338:1431  "constructor() AERC20(\"TokenA\", \"TKA\") {..."
        function constructor_TokenA_55() {
            /// @src 49:1359:1367  "\"TokenA\""
            let _2_mpos := convert_t_stringliteral_18c40d09d3be00e8c0eafe4f0ffbd938b1824b54b7ac8efe521dcc1be43de891_to_t_string_memory_ptr()
            /// @src 49:1369:1374  "\"TKA\""
            let _3_mpos := convert_t_stringliteral_2487c49f05a4d0607f1ae07d97f7fbcb949677c47340370a6a8901d76e6d7481_to_t_string_memory_ptr()

            /// @src 49:1338:1431  "constructor() AERC20(\"TokenA\", \"TKA\") {..."
            constructor_AERC20_344(_2_mpos, _3_mpos)

            /// @src 49:1388:1398  "msg.sender"
            let expr_43 := caller()
            /// @src 49:1400:1404  "1000"
            let expr_44 := 0x03e8
            /// @src 49:1408:1410  "10"
            let expr_45 := 0x0a
            /// @src 49:1414:1424  "decimals()"
            let expr_47 := fun_decimals_1460()
            /// @src 49:1408:1424  "10 ** decimals()"
            let _4 := convert_t_rational_10_by_1_to_t_uint256(expr_45)
            let expr_48 := checked_exp_t_rational_10_by_1_t_uint8(expr_47)
            /// @src 49:1407:1425  "(10 ** decimals())"
            let expr_49 := expr_48
            /// @src 49:1400:1425  "1000 * (10 ** decimals())"
            let expr_50 := checked_mul_t_uint256(convert_t_rational_1000_by_1_to_t_uint256(expr_44), expr_49)

            fun__mint_1760(expr_43, expr_50)

        }
        /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

        /// @ast-id 293
        /// @src 0:342:418  "constructor(string memory name, string memory symbol) ERC20(name, symbol) {}"
        function constructor_AERC20_344(var_name_283_mpos, var_symbol_285_mpos) {
            /// @src 0:402:406  "name"
            let _5_mpos := var_name_283_mpos
            let expr_288_mpos := _5_mpos
            let _6_mpos := expr_288_mpos
            /// @src 0:408:414  "symbol"
            let _7_mpos := var_symbol_285_mpos
            let expr_289_mpos := _7_mpos
            let _8_mpos := expr_289_mpos

            /// @src 0:342:418  "constructor(string memory name, string memory symbol) ERC20(name, symbol) {}"
            constructor_ERC20_1884(_6_mpos, _8_mpos)

        }
        /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

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

        function cleanup_t_rational_18_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_18_by_1_to_t_uint8(value) -> converted {
            converted := cleanup_t_uint8(identity(cleanup_t_rational_18_by_1(value)))
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

        /// @ast-id 1433
        /// @src 34:1987:2125  "constructor (string memory name_, string memory symbol_) {..."
        function constructor_ERC20_1884(var_name__1415_mpos, var_symbol__1417_mpos) {

            /// @src 34:1987:2125  "constructor (string memory name_, string memory symbol_) {..."
            constructor_IERC20_1962()

            /// @src 34:2062:2067  "name_"
            let _9_mpos := var_name__1415_mpos
            let expr_1421_mpos := _9_mpos
            /// @src 34:2054:2067  "_name = name_"
            update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(0x03, expr_1421_mpos)
            let _10_slot := 0x03
            let expr_1422_slot := _10_slot
            /// @src 34:2087:2094  "symbol_"
            let _11_mpos := var_symbol__1417_mpos
            let expr_1425_mpos := _11_mpos
            /// @src 34:2077:2094  "_symbol = symbol_"
            update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(0x04, expr_1425_mpos)
            let _12_slot := 0x04
            let expr_1426_slot := _12_slot
            /// @src 34:2116:2118  "18"
            let expr_1429 := 0x12
            /// @src 34:2104:2118  "_decimals = 18"
            let _13 := convert_t_rational_18_by_1_to_t_uint8(expr_1429)
            update_storage_value_offset_0_t_uint8_to_t_uint8(0x05, _13)
            let expr_1430 := _13

        }
        /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

        /// @src 35:166:2732  "interface IERC20 {..."
        function constructor_IERC20_1962() {

            /// @src 35:166:2732  "interface IERC20 {..."
            constructor_Context_6014()

        }
        /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

        /// @src 42:603:986  "abstract contract Context {..."
        function constructor_Context_6014() {

            /// @src 42:603:986  "abstract contract Context {..."

        }
        /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

        function zero_value_for_split_t_uint8() -> ret {
            ret := 0
        }

        function shift_right_0_unsigned(value) -> newValue {
            newValue :=

            shr(0, value)

        }

        function cleanup_from_storage_t_uint8(value) -> cleaned {
            cleaned := and(value, 0xff)
        }

        function extract_from_storage_value_offset_0_t_uint8(slot_value) -> value {
            value := cleanup_from_storage_t_uint8(shift_right_0_unsigned(slot_value))
        }

        function read_from_storage_split_offset_0_t_uint8(slot) -> value {
            value := extract_from_storage_value_offset_0_t_uint8(sload(slot))

        }

        /// @ast-id 1460
        /// @src 34:3108:3197  "function decimals() public view virtual returns (uint8) {..."
        function fun_decimals_1460() -> var__1455 {
            /// @src 34:3157:3162  "uint8"
            let zero_t_uint8_14 := zero_value_for_split_t_uint8()
            var__1455 := zero_t_uint8_14

            /// @src 34:3181:3190  "_decimals"
            let _15 := read_from_storage_split_offset_0_t_uint8(0x05)
            let expr_1457 := _15
            /// @src 34:3174:3190  "return _decimals"
            var__1455 := expr_1457
            leave

        }
        /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

        function cleanup_t_rational_0_by_1(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
        }

        function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
        }

        function convert_t_rational_0_by_1_to_t_address(value) -> converted {
            converted := convert_t_rational_0_by_1_to_t_uint160(value)
        }

        function cleanup_t_address(value) -> cleaned {
            cleaned := cleanup_t_uint160(value)
        }

        function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
            mstore(pos, length)
            updated_pos := add(pos, 0x20)
        }

        function store_literal_in_memory_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e(memPtr) {

            mstore(add(memPtr, 0), "ERC20: mint to the zero address")

        }

        function abi_encode_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e_to_t_string_memory_ptr_fromStack(pos) -> end {
            pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 31)
            store_literal_in_memory_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e(pos)
            end := add(pos, 32)
        }

        function abi_encode_tuple_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
            tail := add(headStart, 32)

            mstore(add(headStart, 0), sub(tail, headStart))
            tail := abi_encode_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e_to_t_string_memory_ptr_fromStack( tail)

        }

        function require_helper_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e(condition ) {
            if iszero(condition)
            {

                let memPtr := allocate_unbounded()

                mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                let end := abi_encode_tuple_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                revert(memPtr, sub(end, memPtr))
            }
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

        function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
            mstore(pos, cleanup_t_uint256(value))
        }

        function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
            tail := add(headStart, 32)

            abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

        }

        /// @ast-id 1760
        /// @src 34:7854:8224  "function _mint(address account, uint256 amount) internal virtual {..."
        function fun__mint_1760(var_account_1708, var_amount_1710) {

            /// @src 34:7937:7944  "account"
            let _16 := var_account_1708
            let expr_1714 := _16
            /// @src 34:7956:7957  "0"
            let expr_1717 := 0x00
            /// @src 34:7948:7958  "address(0)"
            let expr_1718 := convert_t_rational_0_by_1_to_t_address(expr_1717)
            /// @src 34:7937:7958  "account != address(0)"
            let expr_1719 := iszero(eq(cleanup_t_address(expr_1714), cleanup_t_address(expr_1718)))
            /// @src 34:7929:7994  "require(account != address(0), \"ERC20: mint to the zero address\")"
            require_helper_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e(expr_1719)
            /// @src 34:8034:8035  "0"
            let expr_1726 := 0x00
            /// @src 34:8026:8036  "address(0)"
            let expr_1727 := convert_t_rational_0_by_1_to_t_address(expr_1726)
            /// @src 34:8038:8045  "account"
            let _17 := var_account_1708
            let expr_1728 := _17
            /// @src 34:8047:8053  "amount"
            let _18 := var_amount_1710
            let expr_1729 := _18
            fun__beforeTokenTransfer_343(expr_1727, expr_1728, expr_1729)
            /// @src 34:8080:8092  "_totalSupply"
            let _19 := read_from_storage_split_offset_0_t_uint256(0x02)
            let expr_1733 := _19
            /// @src 34:8080:8096  "_totalSupply.add"
            let expr_1734_self := expr_1733
            /// @src 34:8097:8103  "amount"
            let _20 := var_amount_1710
            let expr_1735 := _20
            /// @src 34:8080:8104  "_totalSupply.add(amount)"
            let expr_1736 := fun_add_5815(expr_1734_self, expr_1735)
            /// @src 34:8065:8104  "_totalSupply = _totalSupply.add(amount)"
            update_storage_value_offset_0_t_uint256_to_t_uint256(0x02, expr_1736)
            let expr_1737 := expr_1736
            /// @src 34:8135:8144  "_balances"
            let _21_slot := 0x00
            let expr_1742_slot := _21_slot
            /// @src 34:8145:8152  "account"
            let _22 := var_account_1708
            let expr_1743 := _22
            /// @src 34:8135:8153  "_balances[account]"
            let _23 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1742_slot,expr_1743)
            let _24 := read_from_storage_split_offset_0_t_uint256(_23)
            let expr_1744 := _24
            /// @src 34:8135:8157  "_balances[account].add"
            let expr_1745_self := expr_1744
            /// @src 34:8158:8164  "amount"
            let _25 := var_amount_1710
            let expr_1746 := _25
            /// @src 34:8135:8165  "_balances[account].add(amount)"
            let expr_1747 := fun_add_5815(expr_1745_self, expr_1746)
            /// @src 34:8114:8123  "_balances"
            let _26_slot := 0x00
            let expr_1739_slot := _26_slot
            /// @src 34:8124:8131  "account"
            let _27 := var_account_1708
            let expr_1740 := _27
            /// @src 34:8114:8132  "_balances[account]"
            let _28 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1739_slot,expr_1740)
            /// @src 34:8114:8165  "_balances[account] = _balances[account].add(amount)"
            update_storage_value_offset_0_t_uint256_to_t_uint256(_28, expr_1747)
            let expr_1748 := expr_1747
            /// @src 34:8197:8198  "0"
            let expr_1753 := 0x00
            /// @src 34:8189:8199  "address(0)"
            let expr_1754 := convert_t_rational_0_by_1_to_t_address(expr_1753)
            /// @src 34:8201:8208  "account"
            let _29 := var_account_1708
            let expr_1755 := _29
            /// @src 34:8210:8216  "amount"
            let _30 := var_amount_1710
            let expr_1756 := _30
            /// @src 34:8180:8217  "Transfer(address(0), account, amount)"
            let _31 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
            let _32 := convert_t_address_to_t_address(expr_1754)
            let _33 := convert_t_address_to_t_address(expr_1755)
            {
                let _34 := allocate_unbounded()
                let _35 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_34 , expr_1756)
                log3(_34, sub(_35, _34) , _31, _32, _33)
            }
        }
        /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

        function mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(slot , key) -> dataSlot {
            mstore(0, convert_t_address_to_t_address(key))
            mstore(0x20, slot)
            dataSlot := keccak256(0, 0x40)
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

        function cleanup_t_bool(value) -> cleaned {
            cleaned := iszero(iszero(value))
        }

        /// @ast-id 343
        /// @src 0:600:875  "function _beforeTokenTransfer(address from, address to, uint256 amount) internal override virtual {..."
        function fun__beforeTokenTransfer_343(var_from_309, var_to_311, var_amount_313) {

            /// @src 0:704:711  "YultLib"
            let expr_317_address := linkersymbol("Yult.sol:YultLib")
            /// @src 0:728:732  "from"
            let _36 := var_from_309
            let expr_320 := _36
            /// @src 0:744:745  "0"
            let expr_323 := 0x00
            /// @src 0:736:746  "address(0)"
            let expr_324 := convert_t_rational_0_by_1_to_t_address(expr_323)
            /// @src 0:728:746  "from == address(0)"
            let expr_325 := eq(cleanup_t_address(expr_320), cleanup_t_address(expr_324))
            /// @src 0:727:747  "(from == address(0))"
            let expr_326 := expr_325
            /// @src 0:727:811  "(from == address(0)) || ..."
            let expr_332 := expr_326
            if iszero(expr_332) {
                /// @src 0:781:806  "criticalTransferAddresses"
                let _37_slot := 0x06
                let expr_327_slot := _37_slot
                /// @src 0:807:809  "to"
                let _38 := var_to_311
                let expr_328 := _38
                /// @src 0:781:810  "criticalTransferAddresses[to]"
                let _39 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_327_slot,expr_328)
                let _40 := read_from_storage_split_offset_0_t_bool(_39)
                let expr_329 := _40
                /// @src 0:780:810  "!criticalTransferAddresses[to]"
                let expr_330 := cleanup_t_bool(iszero(expr_329))
                /// @src 0:779:811  "(!criticalTransferAddresses[to])"
                let expr_331 := expr_330
                /// @src 0:727:811  "(from == address(0)) || ..."
                expr_332 := expr_331
            }
            /// @src 0:727:869  "(from == address(0)) || ..."
            let expr_339 := expr_332
            if iszero(expr_339) {
                /// @src 0:853:857  "from"
                let _41 := var_from_309
                let expr_334 := _41
                /// @src 0:843:858  "balanceOf(from)"
                let expr_335 := fun_balanceOf_1484(expr_334)
                /// @src 0:862:868  "amount"
                let _42 := var_amount_313
                let expr_336 := _42
                /// @src 0:843:868  "balanceOf(from) >= amount"
                let expr_337 := iszero(lt(cleanup_t_uint256(expr_335), cleanup_t_uint256(expr_336)))
                /// @src 0:842:869  "(balanceOf(from) >= amount)"
                let expr_338 := expr_337
                /// @src 0:727:869  "(from == address(0)) || ..."
                expr_339 := expr_338
            }
            fun___yult__assert_750(expr_339)

        }
        /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

        function checked_add_t_uint256(x, y) -> sum {
            x := cleanup_t_uint256(x)
            y := cleanup_t_uint256(y)
            sum := add(x, y)

            if gt(x, sum) { panic_error_0x11() }

        }

        function store_literal_in_memory_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a(memPtr) {

            mstore(add(memPtr, 0), "SafeMath: addition overflow")

        }

        function abi_encode_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a_to_t_string_memory_ptr_fromStack(pos) -> end {
            pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 27)
            store_literal_in_memory_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a(pos)
            end := add(pos, 32)
        }

        function abi_encode_tuple_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
            tail := add(headStart, 32)

            mstore(add(headStart, 0), sub(tail, headStart))
            tail := abi_encode_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a_to_t_string_memory_ptr_fromStack( tail)

        }

        function require_helper_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a(condition ) {
            if iszero(condition)
            {

                let memPtr := allocate_unbounded()

                mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                let end := abi_encode_tuple_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                revert(memPtr, sub(end, memPtr))
            }
        }

        /// @ast-id 5815
        /// @src 32:2719:2894  "function add(uint256 a, uint256 b) internal pure returns (uint256) {..."
        function fun_add_5815(var_a_5792, var_b_5794) -> var__5797 {
            /// @src 32:2777:2784  "uint256"
            let zero_t_uint256_43 := zero_value_for_split_t_uint256()
            var__5797 := zero_t_uint256_43

            /// @src 32:2808:2809  "a"
            let _44 := var_a_5792
            let expr_5801 := _44
            /// @src 32:2812:2813  "b"
            let _45 := var_b_5794
            let expr_5802 := _45
            /// @src 32:2808:2813  "a + b"
            let expr_5803 := checked_add_t_uint256(expr_5801, expr_5802)

            /// @src 32:2796:2813  "uint256 c = a + b"
            let var_c_5800 := expr_5803
            /// @src 32:2831:2832  "c"
            let _46 := var_c_5800
            let expr_5806 := _46
            /// @src 32:2836:2837  "a"
            let _47 := var_a_5792
            let expr_5807 := _47
            /// @src 32:2831:2837  "c >= a"
            let expr_5808 := iszero(lt(cleanup_t_uint256(expr_5806), cleanup_t_uint256(expr_5807)))
            /// @src 32:2823:2869  "require(c >= a, \"SafeMath: addition overflow\")"
            require_helper_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a(expr_5808)
            /// @src 32:2886:2887  "c"
            let _48 := var_c_5800
            let expr_5812 := _48
            /// @src 32:2879:2887  "return c"
            var__5797 := expr_5812
            leave

        }
        /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

        /// @ast-id 1484
        /// @src 34:3421:3546  "function balanceOf(address account) public view virtual override returns (uint256) {..."
        function fun_balanceOf_1484(var_account_1473) -> var__1477 {
            /// @src 34:3495:3502  "uint256"
            let zero_t_uint256_49 := zero_value_for_split_t_uint256()
            var__1477 := zero_t_uint256_49

            /// @src 34:3521:3530  "_balances"
            let _50_slot := 0x00
            let expr_1479_slot := _50_slot
            /// @src 34:3531:3538  "account"
            let _51 := var_account_1473
            let expr_1480 := _51
            /// @src 34:3521:3539  "_balances[account]"
            let _52 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1479_slot,expr_1480)
            let _53 := read_from_storage_split_offset_0_t_uint256(_52)
            let expr_1481 := _53
            /// @src 34:3514:3539  "return _balances[account]"
            var__1477 := expr_1481
            leave

        }
        /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

        /// @ast-id 750
        /// @src 2:1312:1358  "function __yult__assert(bool) pure internal {}"
        function fun___yult__assert_750(var__746) {

        }
        /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

    }
    /// @use-src 0:"AERC20.sol", 2:"Yult.sol", 32:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/math/SafeMath.sol", 34:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/token/ERC20/ERC20.sol", 42:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/Context.sol", 49:"src/DeployerExploration.sol"
    object "TokenA_55_deployed" {
        code {
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x06fdde03
                {
                    // name()

                    external_fun_name_1442()
                }

                case 0x095ea7b3
                {
                    // approve(address,uint256)

                    external_fun_approve_1544()
                }

                case 0x18160ddd
                {
                    // totalSupply()

                    external_fun_totalSupply_1470()
                }

                case 0x23b872dd
                {
                    // transferFrom(address,address,uint256)

                    external_fun_transferFrom_1582()
                }

                case 0x313ce567
                {
                    // decimals()

                    external_fun_decimals_1460()
                }

                case 0x39509351
                {
                    // increaseAllowance(address,uint256)

                    external_fun_increaseAllowance_1610()
                }

                case 0x53ae5e0c
                {
                    // criticalTransferAddresses(address)

                    external_fun_criticalTransferAddresses_281()
                }

                case 0x70a08231
                {
                    // balanceOf(address)

                    external_fun_balanceOf_1484()
                }

                case 0x95d89b41
                {
                    // symbol()

                    external_fun_symbol_1451()
                }

                case 0xa457c2d7
                {
                    // decreaseAllowance(address,uint256)

                    external_fun_decreaseAllowance_1639()
                }

                case 0xa9059cbb
                {
                    // transfer(address,uint256)

                    external_fun_transfer_1505()
                }

                case 0xc8e37e61
                {
                    // setCriticalTransferAddress(address,bool)

                    external_fun_setCriticalTransferAddress_307()
                }

                case 0xdd62ed3e
                {
                    // allowance(address,address)

                    external_fun_allowance_1523()
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

            function external_fun_name_1442() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_name_1442()
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

            function external_fun_approve_1544() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_approve_1544(param_0, param_1)
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

            function external_fun_totalSupply_1470() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_totalSupply_1470()
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

            function external_fun_transferFrom_1582() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_transferFrom_1582(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

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

            function external_fun_decimals_1460() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_decimals_1460()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_increaseAllowance_1610() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_increaseAllowance_1610(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
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

            function mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function cleanup_from_storage_t_bool(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function extract_from_storage_value_dynamict_bool(slot_value, offset) -> value {
                value := cleanup_from_storage_t_bool(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_bool(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_bool(sload(slot), offset)

            }

            /// @ast-id 281
            /// @src 0:280:337  "mapping(address => bool) public criticalTransferAddresses"
            function getter_fun_criticalTransferAddresses_281(key_0) -> ret {

                let slot := 6
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(slot, key_0)

                ret := read_from_storage_split_dynamic_t_bool(slot, offset)

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            function external_fun_criticalTransferAddresses_281() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  getter_fun_criticalTransferAddresses_281(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_balanceOf_1484() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  fun_balanceOf_1484(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_symbol_1451() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_symbol_1451()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_decreaseAllowance_1639() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_decreaseAllowance_1639(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_transfer_1505() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_transfer_1505(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
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

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_setCriticalTransferAddress_307() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_bool(4, calldatasize())
                fun_setCriticalTransferAddress_307(param_0, param_1)
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

            function external_fun_allowance_1523() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_address(4, calldatasize())
                let ret_0 :=  fun_allowance_1523(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

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

            function convert_array_t_string_storage_to_t_string_memory_ptr(value) -> converted  {

                // Copy the array to a free position in memory
                converted :=

                copy_array_from_storage_to_memory_t_string_storage(value)

            }

            /// @ast-id 1442
            /// @src 34:2190:2279  "function name() public view virtual returns (string memory) {..."
            function fun_name_1442() -> var__1437_mpos {
                /// @src 34:2235:2248  "string memory"
                let zero_t_string_memory_ptr_1_mpos := zero_value_for_split_t_string_memory_ptr()
                var__1437_mpos := zero_t_string_memory_ptr_1_mpos

                /// @src 34:2267:2272  "_name"
                let _2_slot := 0x03
                let expr_1439_slot := _2_slot
                /// @src 34:2260:2272  "return _name"
                var__1437_mpos := convert_array_t_string_storage_to_t_string_memory_ptr(expr_1439_slot)
                leave

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function convert_t_address_payable_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            /// @ast-id 1544
            /// @src 34:4266:4432  "function approve(address spender, uint256 amount) public virtual override returns (bool) {..."
            function fun_approve_1544(var_spender_1526, var_amount_1528) -> var__1532 {
                /// @src 34:4349:4353  "bool"
                let zero_t_bool_3 := zero_value_for_split_t_bool()
                var__1532 := zero_t_bool_3

                /// @src 34:4374:4386  "_msgSender()"
                let expr_1536 := fun__msgSender_6002()
                /// @src 34:4388:4395  "spender"
                let _4 := var_spender_1526
                let expr_1537 := _4
                /// @src 34:4397:4403  "amount"
                let _5 := var_amount_1528
                let expr_1538 := _5
                /// @src 34:4365:4404  "_approve(_msgSender(), spender, amount)"
                let _6 := convert_t_address_payable_to_t_address(expr_1536)
                fun__approve_1861(_6, expr_1537, expr_1538)
                /// @src 34:4421:4425  "true"
                let expr_1541 := 0x01
                /// @src 34:4414:4425  "return true"
                var__1532 := expr_1541
                leave

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
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

            /// @ast-id 1470
            /// @src 34:3257:3363  "function totalSupply() public view virtual override returns (uint256) {..."
            function fun_totalSupply_1470() -> var__1465 {
                /// @src 34:3318:3325  "uint256"
                let zero_t_uint256_7 := zero_value_for_split_t_uint256()
                var__1465 := zero_t_uint256_7

                /// @src 34:3344:3356  "_totalSupply"
                let _8 := read_from_storage_split_offset_0_t_uint256(0x02)
                let expr_1467 := _8
                /// @src 34:3337:3356  "return _totalSupply"
                var__1465 := expr_1467
                leave

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(slot , key) -> dataSlot {
                mstore(0, convert_t_address_payable_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function allocate_memory(size) -> memPtr {
                memPtr := allocate_unbounded()
                finalize_allocation(memPtr, size)
            }

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

            function store_literal_in_memory_974d1b4421da69cc60b481194f0dad36a5bb4e23da810da7a7fb30cdba178330(memPtr) {

                mstore(add(memPtr, 0), "ERC20: transfer amount exceeds a")

                mstore(add(memPtr, 32), "llowance")

            }

            function copy_literal_to_memory_974d1b4421da69cc60b481194f0dad36a5bb4e23da810da7a7fb30cdba178330() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(40)
                store_literal_in_memory_974d1b4421da69cc60b481194f0dad36a5bb4e23da810da7a7fb30cdba178330(add(memPtr, 32))
            }

            function convert_t_stringliteral_974d1b4421da69cc60b481194f0dad36a5bb4e23da810da7a7fb30cdba178330_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_974d1b4421da69cc60b481194f0dad36a5bb4e23da810da7a7fb30cdba178330()
            }

            /// @ast-id 1582
            /// @src 34:4899:5216  "function transferFrom(address sender, address recipient, uint256 amount) public virtual override returns (bool) {..."
            function fun_transferFrom_1582(var_sender_1547, var_recipient_1549, var_amount_1551) -> var__1555 {
                /// @src 34:5005:5009  "bool"
                let zero_t_bool_9 := zero_value_for_split_t_bool()
                var__1555 := zero_t_bool_9

                /// @src 34:5031:5037  "sender"
                let _10 := var_sender_1547
                let expr_1558 := _10
                /// @src 34:5039:5048  "recipient"
                let _11 := var_recipient_1549
                let expr_1559 := _11
                /// @src 34:5050:5056  "amount"
                let _12 := var_amount_1551
                let expr_1560 := _12
                fun__transfer_1705(expr_1558, expr_1559, expr_1560)
                /// @src 34:5076:5082  "sender"
                let _13 := var_sender_1547
                let expr_1564 := _13
                /// @src 34:5084:5096  "_msgSender()"
                let expr_1566 := fun__msgSender_6002()
                /// @src 34:5098:5109  "_allowances"
                let _14_slot := 0x01
                let expr_1567_slot := _14_slot
                /// @src 34:5110:5116  "sender"
                let _15 := var_sender_1547
                let expr_1568 := _15
                /// @src 34:5098:5117  "_allowances[sender]"
                let _16 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_1567_slot,expr_1568)
                let _17_slot := _16
                let expr_1569_slot := _17_slot
                /// @src 34:5118:5130  "_msgSender()"
                let expr_1571 := fun__msgSender_6002()
                /// @src 34:5098:5131  "_allowances[sender][_msgSender()]"
                let _18 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_1569_slot,expr_1571)
                let _19 := read_from_storage_split_offset_0_t_uint256(_18)
                let expr_1572 := _19
                /// @src 34:5098:5135  "_allowances[sender][_msgSender()].sub"
                let expr_1573_self := expr_1572
                /// @src 34:5136:5142  "amount"
                let _20 := var_amount_1551
                let expr_1574 := _20
                /// @src 34:5098:5187  "_allowances[sender][_msgSender()].sub(amount, \"ERC20: transfer amount exceeds allowance\")"
                let _21_mpos := convert_t_stringliteral_974d1b4421da69cc60b481194f0dad36a5bb4e23da810da7a7fb30cdba178330_to_t_string_memory_ptr()
                let expr_1576 := fun_sub_5939(expr_1573_self, expr_1574, _21_mpos)
                /// @src 34:5067:5188  "_approve(sender, _msgSender(), _allowances[sender][_msgSender()].sub(amount, \"ERC20: transfer amount exceeds allowance\"))"
                let _22 := convert_t_address_payable_to_t_address(expr_1566)
                fun__approve_1861(expr_1564, _22, expr_1576)
                /// @src 34:5205:5209  "true"
                let expr_1579 := 0x01
                /// @src 34:5198:5209  "return true"
                var__1555 := expr_1579
                leave

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            function zero_value_for_split_t_uint8() -> ret {
                ret := 0
            }

            function cleanup_from_storage_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function extract_from_storage_value_offset_0_t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_0_t_uint8(sload(slot))

            }

            /// @ast-id 1460
            /// @src 34:3108:3197  "function decimals() public view virtual returns (uint8) {..."
            function fun_decimals_1460() -> var__1455 {
                /// @src 34:3157:3162  "uint8"
                let zero_t_uint8_23 := zero_value_for_split_t_uint8()
                var__1455 := zero_t_uint8_23

                /// @src 34:3181:3190  "_decimals"
                let _24 := read_from_storage_split_offset_0_t_uint8(0x05)
                let expr_1457 := _24
                /// @src 34:3174:3190  "return _decimals"
                var__1455 := expr_1457
                leave

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address_payable(slot , key) -> dataSlot {
                mstore(0, convert_t_address_payable_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @ast-id 1610
            /// @src 34:5611:5826  "function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {..."
            function fun_increaseAllowance_1610(var_spender_1585, var_addedValue_1587) -> var__1590 {
                /// @src 34:5699:5703  "bool"
                let zero_t_bool_25 := zero_value_for_split_t_bool()
                var__1590 := zero_t_bool_25

                /// @src 34:5724:5736  "_msgSender()"
                let expr_1594 := fun__msgSender_6002()
                /// @src 34:5738:5745  "spender"
                let _26 := var_spender_1585
                let expr_1595 := _26
                /// @src 34:5747:5758  "_allowances"
                let _27_slot := 0x01
                let expr_1596_slot := _27_slot
                /// @src 34:5759:5771  "_msgSender()"
                let expr_1598 := fun__msgSender_6002()
                /// @src 34:5747:5772  "_allowances[_msgSender()]"
                let _28 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address_payable(expr_1596_slot,expr_1598)
                let _29_slot := _28
                let expr_1599_slot := _29_slot
                /// @src 34:5773:5780  "spender"
                let _30 := var_spender_1585
                let expr_1600 := _30
                /// @src 34:5747:5781  "_allowances[_msgSender()][spender]"
                let _31 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1599_slot,expr_1600)
                let _32 := read_from_storage_split_offset_0_t_uint256(_31)
                let expr_1601 := _32
                /// @src 34:5747:5785  "_allowances[_msgSender()][spender].add"
                let expr_1602_self := expr_1601
                /// @src 34:5786:5796  "addedValue"
                let _33 := var_addedValue_1587
                let expr_1603 := _33
                /// @src 34:5747:5797  "_allowances[_msgSender()][spender].add(addedValue)"
                let expr_1604 := fun_add_5815(expr_1602_self, expr_1603)
                /// @src 34:5715:5798  "_approve(_msgSender(), spender, _allowances[_msgSender()][spender].add(addedValue))"
                let _34 := convert_t_address_payable_to_t_address(expr_1594)
                fun__approve_1861(_34, expr_1595, expr_1604)
                /// @src 34:5815:5819  "true"
                let expr_1607 := 0x01
                /// @src 34:5808:5819  "return true"
                var__1590 := expr_1607
                leave

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            /// @ast-id 1484
            /// @src 34:3421:3546  "function balanceOf(address account) public view virtual override returns (uint256) {..."
            function fun_balanceOf_1484(var_account_1473) -> var__1477 {
                /// @src 34:3495:3502  "uint256"
                let zero_t_uint256_35 := zero_value_for_split_t_uint256()
                var__1477 := zero_t_uint256_35

                /// @src 34:3521:3530  "_balances"
                let _36_slot := 0x00
                let expr_1479_slot := _36_slot
                /// @src 34:3531:3538  "account"
                let _37 := var_account_1473
                let expr_1480 := _37
                /// @src 34:3521:3539  "_balances[account]"
                let _38 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1479_slot,expr_1480)
                let _39 := read_from_storage_split_offset_0_t_uint256(_38)
                let expr_1481 := _39
                /// @src 34:3514:3539  "return _balances[account]"
                var__1477 := expr_1481
                leave

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            /// @ast-id 1451
            /// @src 34:2392:2485  "function symbol() public view virtual returns (string memory) {..."
            function fun_symbol_1451() -> var__1446_mpos {
                /// @src 34:2439:2452  "string memory"
                let zero_t_string_memory_ptr_40_mpos := zero_value_for_split_t_string_memory_ptr()
                var__1446_mpos := zero_t_string_memory_ptr_40_mpos

                /// @src 34:2471:2478  "_symbol"
                let _41_slot := 0x04
                let expr_1448_slot := _41_slot
                /// @src 34:2464:2478  "return _symbol"
                var__1446_mpos := convert_array_t_string_storage_to_t_string_memory_ptr(expr_1448_slot)
                leave

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            function store_literal_in_memory_f8b476f7d28209d77d4a4ac1fe36b9f8259aa1bb6bddfa6e89de7e51615cf8a8(memPtr) {

                mstore(add(memPtr, 0), "ERC20: decreased allowance below")

                mstore(add(memPtr, 32), " zero")

            }

            function copy_literal_to_memory_f8b476f7d28209d77d4a4ac1fe36b9f8259aa1bb6bddfa6e89de7e51615cf8a8() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(37)
                store_literal_in_memory_f8b476f7d28209d77d4a4ac1fe36b9f8259aa1bb6bddfa6e89de7e51615cf8a8(add(memPtr, 32))
            }

            function convert_t_stringliteral_f8b476f7d28209d77d4a4ac1fe36b9f8259aa1bb6bddfa6e89de7e51615cf8a8_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_f8b476f7d28209d77d4a4ac1fe36b9f8259aa1bb6bddfa6e89de7e51615cf8a8()
            }

            /// @ast-id 1639
            /// @src 34:6313:6579  "function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {..."
            function fun_decreaseAllowance_1639(var_spender_1613, var_subtractedValue_1615) -> var__1618 {
                /// @src 34:6406:6410  "bool"
                let zero_t_bool_42 := zero_value_for_split_t_bool()
                var__1618 := zero_t_bool_42

                /// @src 34:6431:6443  "_msgSender()"
                let expr_1622 := fun__msgSender_6002()
                /// @src 34:6445:6452  "spender"
                let _43 := var_spender_1613
                let expr_1623 := _43
                /// @src 34:6454:6465  "_allowances"
                let _44_slot := 0x01
                let expr_1624_slot := _44_slot
                /// @src 34:6466:6478  "_msgSender()"
                let expr_1626 := fun__msgSender_6002()
                /// @src 34:6454:6479  "_allowances[_msgSender()]"
                let _45 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address_payable(expr_1624_slot,expr_1626)
                let _46_slot := _45
                let expr_1627_slot := _46_slot
                /// @src 34:6480:6487  "spender"
                let _47 := var_spender_1613
                let expr_1628 := _47
                /// @src 34:6454:6488  "_allowances[_msgSender()][spender]"
                let _48 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1627_slot,expr_1628)
                let _49 := read_from_storage_split_offset_0_t_uint256(_48)
                let expr_1629 := _49
                /// @src 34:6454:6492  "_allowances[_msgSender()][spender].sub"
                let expr_1630_self := expr_1629
                /// @src 34:6493:6508  "subtractedValue"
                let _50 := var_subtractedValue_1615
                let expr_1631 := _50
                /// @src 34:6454:6550  "_allowances[_msgSender()][spender].sub(subtractedValue, \"ERC20: decreased allowance below zero\")"
                let _51_mpos := convert_t_stringliteral_f8b476f7d28209d77d4a4ac1fe36b9f8259aa1bb6bddfa6e89de7e51615cf8a8_to_t_string_memory_ptr()
                let expr_1633 := fun_sub_5939(expr_1630_self, expr_1631, _51_mpos)
                /// @src 34:6422:6551  "_approve(_msgSender(), spender, _allowances[_msgSender()][spender].sub(subtractedValue, \"ERC20: decreased allowance below zero\"))"
                let _52 := convert_t_address_payable_to_t_address(expr_1622)
                fun__approve_1861(_52, expr_1623, expr_1633)
                /// @src 34:6568:6572  "true"
                let expr_1636 := 0x01
                /// @src 34:6561:6572  "return true"
                var__1618 := expr_1636
                leave

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            /// @ast-id 1505
            /// @src 34:3749:3921  "function transfer(address recipient, uint256 amount) public virtual override returns (bool) {..."
            function fun_transfer_1505(var_recipient_1487, var_amount_1489) -> var__1493 {
                /// @src 34:3835:3839  "bool"
                let zero_t_bool_53 := zero_value_for_split_t_bool()
                var__1493 := zero_t_bool_53

                /// @src 34:3861:3873  "_msgSender()"
                let expr_1497 := fun__msgSender_6002()
                /// @src 34:3875:3884  "recipient"
                let _54 := var_recipient_1487
                let expr_1498 := _54
                /// @src 34:3886:3892  "amount"
                let _55 := var_amount_1489
                let expr_1499 := _55
                /// @src 34:3851:3893  "_transfer(_msgSender(), recipient, amount)"
                let _56 := convert_t_address_payable_to_t_address(expr_1497)
                fun__transfer_1705(_56, expr_1498, expr_1499)
                /// @src 34:3910:3914  "true"
                let expr_1502 := 0x01
                /// @src 34:3903:3914  "return true"
                var__1493 := expr_1502
                leave

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

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

            /// @ast-id 307
            /// @src 0:422:553  "function setCriticalTransferAddress(address addr, bool isCritical) external {..."
            function fun_setCriticalTransferAddress_307(var_addr_295, var_isCritical_297) {

                /// @src 0:538:548  "isCritical"
                let _57 := var_isCritical_297
                let expr_303 := _57
                /// @src 0:504:529  "criticalTransferAddresses"
                let _58_slot := 0x06
                let expr_300_slot := _58_slot
                /// @src 0:530:534  "addr"
                let _59 := var_addr_295
                let expr_301 := _59
                /// @src 0:504:535  "criticalTransferAddresses[addr]"
                let _60 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_300_slot,expr_301)
                /// @src 0:504:548  "criticalTransferAddresses[addr] = isCritical"
                update_storage_value_offset_0_t_bool_to_t_bool(_60, expr_303)
                let expr_304 := expr_303

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            /// @ast-id 1523
            /// @src 34:3979:4128  "function allowance(address owner, address spender) public view virtual override returns (uint256) {..."
            function fun_allowance_1523(var_owner_1508, var_spender_1510) -> var__1514 {
                /// @src 34:4068:4075  "uint256"
                let zero_t_uint256_61 := zero_value_for_split_t_uint256()
                var__1514 := zero_t_uint256_61

                /// @src 34:4094:4105  "_allowances"
                let _62_slot := 0x01
                let expr_1516_slot := _62_slot
                /// @src 34:4106:4111  "owner"
                let _63 := var_owner_1508
                let expr_1517 := _63
                /// @src 34:4094:4112  "_allowances[owner]"
                let _64 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_1516_slot,expr_1517)
                let _65_slot := _64
                let expr_1518_slot := _65_slot
                /// @src 34:4113:4120  "spender"
                let _66 := var_spender_1510
                let expr_1519 := _66
                /// @src 34:4094:4121  "_allowances[owner][spender]"
                let _67 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1518_slot,expr_1519)
                let _68 := read_from_storage_split_offset_0_t_uint256(_67)
                let expr_1520 := _68
                /// @src 34:4087:4121  "return _allowances[owner][spender]"
                var__1514 := expr_1520
                leave

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

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
                let zero_t_address_payable_69 := zero_value_for_split_t_address_payable()
                var__5993 := zero_t_address_payable_69

                /// @src 42:730:740  "msg.sender"
                let expr_5998 := caller()
                /// @src 42:722:741  "payable(msg.sender)"
                let expr_5999 := convert_t_address_to_t_address_payable(expr_5998)
                /// @src 42:715:741  "return payable(msg.sender)"
                var__5993 := expr_5999
                leave

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function store_literal_in_memory_c953f4879035ed60e766b34720f656aab5c697b141d924c283124ecedb91c208(memPtr) {

                mstore(add(memPtr, 0), "ERC20: approve from the zero add")

                mstore(add(memPtr, 32), "ress")

            }

            function abi_encode_t_stringliteral_c953f4879035ed60e766b34720f656aab5c697b141d924c283124ecedb91c208_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 36)
                store_literal_in_memory_c953f4879035ed60e766b34720f656aab5c697b141d924c283124ecedb91c208(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_c953f4879035ed60e766b34720f656aab5c697b141d924c283124ecedb91c208__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_c953f4879035ed60e766b34720f656aab5c697b141d924c283124ecedb91c208_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_c953f4879035ed60e766b34720f656aab5c697b141d924c283124ecedb91c208(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_c953f4879035ed60e766b34720f656aab5c697b141d924c283124ecedb91c208__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_24883cc5fe64ace9d0df1893501ecb93c77180f0ff69cca79affb3c316dc8029(memPtr) {

                mstore(add(memPtr, 0), "ERC20: approve to the zero addre")

                mstore(add(memPtr, 32), "ss")

            }

            function abi_encode_t_stringliteral_24883cc5fe64ace9d0df1893501ecb93c77180f0ff69cca79affb3c316dc8029_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 34)
                store_literal_in_memory_24883cc5fe64ace9d0df1893501ecb93c77180f0ff69cca79affb3c316dc8029(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_24883cc5fe64ace9d0df1893501ecb93c77180f0ff69cca79affb3c316dc8029__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_24883cc5fe64ace9d0df1893501ecb93c77180f0ff69cca79affb3c316dc8029_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_24883cc5fe64ace9d0df1893501ecb93c77180f0ff69cca79affb3c316dc8029(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_24883cc5fe64ace9d0df1893501ecb93c77180f0ff69cca79affb3c316dc8029__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
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

            /// @ast-id 1861
            /// @src 34:9377:9717  "function _approve(address owner, address spender, uint256 amount) internal virtual {..."
            function fun__approve_1861(var_owner_1819, var_spender_1821, var_amount_1823) {

                /// @src 34:9478:9483  "owner"
                let _70 := var_owner_1819
                let expr_1827 := _70
                /// @src 34:9495:9496  "0"
                let expr_1830 := 0x00
                /// @src 34:9487:9497  "address(0)"
                let expr_1831 := convert_t_rational_0_by_1_to_t_address(expr_1830)
                /// @src 34:9478:9497  "owner != address(0)"
                let expr_1832 := iszero(eq(cleanup_t_address(expr_1827), cleanup_t_address(expr_1831)))
                /// @src 34:9470:9538  "require(owner != address(0), \"ERC20: approve from the zero address\")"
                require_helper_t_stringliteral_c953f4879035ed60e766b34720f656aab5c697b141d924c283124ecedb91c208(expr_1832)
                /// @src 34:9556:9563  "spender"
                let _71 := var_spender_1821
                let expr_1837 := _71
                /// @src 34:9575:9576  "0"
                let expr_1840 := 0x00
                /// @src 34:9567:9577  "address(0)"
                let expr_1841 := convert_t_rational_0_by_1_to_t_address(expr_1840)
                /// @src 34:9556:9577  "spender != address(0)"
                let expr_1842 := iszero(eq(cleanup_t_address(expr_1837), cleanup_t_address(expr_1841)))
                /// @src 34:9548:9616  "require(spender != address(0), \"ERC20: approve to the zero address\")"
                require_helper_t_stringliteral_24883cc5fe64ace9d0df1893501ecb93c77180f0ff69cca79affb3c316dc8029(expr_1842)
                /// @src 34:9657:9663  "amount"
                let _72 := var_amount_1823
                let expr_1851 := _72
                /// @src 34:9627:9638  "_allowances"
                let _73_slot := 0x01
                let expr_1846_slot := _73_slot
                /// @src 34:9639:9644  "owner"
                let _74 := var_owner_1819
                let expr_1847 := _74
                /// @src 34:9627:9645  "_allowances[owner]"
                let _75 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_1846_slot,expr_1847)
                let _76_slot := _75
                let expr_1849_slot := _76_slot
                /// @src 34:9646:9653  "spender"
                let _77 := var_spender_1821
                let expr_1848 := _77
                /// @src 34:9627:9654  "_allowances[owner][spender]"
                let _78 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1849_slot,expr_1848)
                /// @src 34:9627:9663  "_allowances[owner][spender] = amount"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_78, expr_1851)
                let expr_1852 := expr_1851
                /// @src 34:9687:9692  "owner"
                let _79 := var_owner_1819
                let expr_1855 := _79
                /// @src 34:9694:9701  "spender"
                let _80 := var_spender_1821
                let expr_1856 := _80
                /// @src 34:9703:9709  "amount"
                let _81 := var_amount_1823
                let expr_1857 := _81
                /// @src 34:9678:9710  "Approval(owner, spender, amount)"
                let _82 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                let _83 := convert_t_address_to_t_address(expr_1855)
                let _84 := convert_t_address_to_t_address(expr_1856)
                {
                    let _85 := allocate_unbounded()
                    let _86 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_85 , expr_1857)
                    log3(_85, sub(_86, _85) , _82, _83, _84)
                }
            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            function store_literal_in_memory_baecc556b46f4ed0f2b4cb599d60785ac8563dd2dc0a5bf12edea1c39e5e1fea(memPtr) {

                mstore(add(memPtr, 0), "ERC20: transfer from the zero ad")

                mstore(add(memPtr, 32), "dress")

            }

            function abi_encode_t_stringliteral_baecc556b46f4ed0f2b4cb599d60785ac8563dd2dc0a5bf12edea1c39e5e1fea_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 37)
                store_literal_in_memory_baecc556b46f4ed0f2b4cb599d60785ac8563dd2dc0a5bf12edea1c39e5e1fea(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_baecc556b46f4ed0f2b4cb599d60785ac8563dd2dc0a5bf12edea1c39e5e1fea__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_baecc556b46f4ed0f2b4cb599d60785ac8563dd2dc0a5bf12edea1c39e5e1fea_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_baecc556b46f4ed0f2b4cb599d60785ac8563dd2dc0a5bf12edea1c39e5e1fea(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_baecc556b46f4ed0f2b4cb599d60785ac8563dd2dc0a5bf12edea1c39e5e1fea__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_0557e210f7a69a685100a7e4e3d0a7024c546085cee28910fd17d0b081d9516f(memPtr) {

                mstore(add(memPtr, 0), "ERC20: transfer to the zero addr")

                mstore(add(memPtr, 32), "ess")

            }

            function abi_encode_t_stringliteral_0557e210f7a69a685100a7e4e3d0a7024c546085cee28910fd17d0b081d9516f_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 35)
                store_literal_in_memory_0557e210f7a69a685100a7e4e3d0a7024c546085cee28910fd17d0b081d9516f(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_0557e210f7a69a685100a7e4e3d0a7024c546085cee28910fd17d0b081d9516f__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_0557e210f7a69a685100a7e4e3d0a7024c546085cee28910fd17d0b081d9516f_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_0557e210f7a69a685100a7e4e3d0a7024c546085cee28910fd17d0b081d9516f(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_0557e210f7a69a685100a7e4e3d0a7024c546085cee28910fd17d0b081d9516f__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_4107e8a8b9e94bf8ff83080ddec1c0bffe897ebc2241b89d44f66b3d274088b6(memPtr) {

                mstore(add(memPtr, 0), "ERC20: transfer amount exceeds b")

                mstore(add(memPtr, 32), "alance")

            }

            function copy_literal_to_memory_4107e8a8b9e94bf8ff83080ddec1c0bffe897ebc2241b89d44f66b3d274088b6() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(38)
                store_literal_in_memory_4107e8a8b9e94bf8ff83080ddec1c0bffe897ebc2241b89d44f66b3d274088b6(add(memPtr, 32))
            }

            function convert_t_stringliteral_4107e8a8b9e94bf8ff83080ddec1c0bffe897ebc2241b89d44f66b3d274088b6_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_4107e8a8b9e94bf8ff83080ddec1c0bffe897ebc2241b89d44f66b3d274088b6()
            }

            /// @ast-id 1705
            /// @src 34:7053:7583  "function _transfer(address sender, address recipient, uint256 amount) internal virtual {..."
            function fun__transfer_1705(var_sender_1642, var_recipient_1644, var_amount_1646) {

                /// @src 34:7158:7164  "sender"
                let _87 := var_sender_1642
                let expr_1650 := _87
                /// @src 34:7176:7177  "0"
                let expr_1653 := 0x00
                /// @src 34:7168:7178  "address(0)"
                let expr_1654 := convert_t_rational_0_by_1_to_t_address(expr_1653)
                /// @src 34:7158:7178  "sender != address(0)"
                let expr_1655 := iszero(eq(cleanup_t_address(expr_1650), cleanup_t_address(expr_1654)))
                /// @src 34:7150:7220  "require(sender != address(0), \"ERC20: transfer from the zero address\")"
                require_helper_t_stringliteral_baecc556b46f4ed0f2b4cb599d60785ac8563dd2dc0a5bf12edea1c39e5e1fea(expr_1655)
                /// @src 34:7238:7247  "recipient"
                let _88 := var_recipient_1644
                let expr_1660 := _88
                /// @src 34:7259:7260  "0"
                let expr_1663 := 0x00
                /// @src 34:7251:7261  "address(0)"
                let expr_1664 := convert_t_rational_0_by_1_to_t_address(expr_1663)
                /// @src 34:7238:7261  "recipient != address(0)"
                let expr_1665 := iszero(eq(cleanup_t_address(expr_1660), cleanup_t_address(expr_1664)))
                /// @src 34:7230:7301  "require(recipient != address(0), \"ERC20: transfer to the zero address\")"
                require_helper_t_stringliteral_0557e210f7a69a685100a7e4e3d0a7024c546085cee28910fd17d0b081d9516f(expr_1665)
                /// @src 34:7333:7339  "sender"
                let _89 := var_sender_1642
                let expr_1670 := _89
                /// @src 34:7341:7350  "recipient"
                let _90 := var_recipient_1644
                let expr_1671 := _90
                /// @src 34:7352:7358  "amount"
                let _91 := var_amount_1646
                let expr_1672 := _91
                fun__beforeTokenTransfer_343(expr_1670, expr_1671, expr_1672)
                /// @src 34:7390:7399  "_balances"
                let _92_slot := 0x00
                let expr_1678_slot := _92_slot
                /// @src 34:7400:7406  "sender"
                let _93 := var_sender_1642
                let expr_1679 := _93
                /// @src 34:7390:7407  "_balances[sender]"
                let _94 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1678_slot,expr_1679)
                let _95 := read_from_storage_split_offset_0_t_uint256(_94)
                let expr_1680 := _95
                /// @src 34:7390:7411  "_balances[sender].sub"
                let expr_1681_self := expr_1680
                /// @src 34:7412:7418  "amount"
                let _96 := var_amount_1646
                let expr_1682 := _96
                /// @src 34:7390:7461  "_balances[sender].sub(amount, \"ERC20: transfer amount exceeds balance\")"
                let _97_mpos := convert_t_stringliteral_4107e8a8b9e94bf8ff83080ddec1c0bffe897ebc2241b89d44f66b3d274088b6_to_t_string_memory_ptr()
                let expr_1684 := fun_sub_5939(expr_1681_self, expr_1682, _97_mpos)
                /// @src 34:7370:7379  "_balances"
                let _98_slot := 0x00
                let expr_1675_slot := _98_slot
                /// @src 34:7380:7386  "sender"
                let _99 := var_sender_1642
                let expr_1676 := _99
                /// @src 34:7370:7387  "_balances[sender]"
                let _100 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1675_slot,expr_1676)
                /// @src 34:7370:7461  "_balances[sender] = _balances[sender].sub(amount, \"ERC20: transfer amount exceeds balance\")"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_100, expr_1684)
                let expr_1685 := expr_1684
                /// @src 34:7494:7503  "_balances"
                let _101_slot := 0x00
                let expr_1690_slot := _101_slot
                /// @src 34:7504:7513  "recipient"
                let _102 := var_recipient_1644
                let expr_1691 := _102
                /// @src 34:7494:7514  "_balances[recipient]"
                let _103 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1690_slot,expr_1691)
                let _104 := read_from_storage_split_offset_0_t_uint256(_103)
                let expr_1692 := _104
                /// @src 34:7494:7518  "_balances[recipient].add"
                let expr_1693_self := expr_1692
                /// @src 34:7519:7525  "amount"
                let _105 := var_amount_1646
                let expr_1694 := _105
                /// @src 34:7494:7526  "_balances[recipient].add(amount)"
                let expr_1695 := fun_add_5815(expr_1693_self, expr_1694)
                /// @src 34:7471:7480  "_balances"
                let _106_slot := 0x00
                let expr_1687_slot := _106_slot
                /// @src 34:7481:7490  "recipient"
                let _107 := var_recipient_1644
                let expr_1688 := _107
                /// @src 34:7471:7491  "_balances[recipient]"
                let _108 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1687_slot,expr_1688)
                /// @src 34:7471:7526  "_balances[recipient] = _balances[recipient].add(amount)"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_108, expr_1695)
                let expr_1696 := expr_1695
                /// @src 34:7550:7556  "sender"
                let _109 := var_sender_1642
                let expr_1699 := _109
                /// @src 34:7558:7567  "recipient"
                let _110 := var_recipient_1644
                let expr_1700 := _110
                /// @src 34:7569:7575  "amount"
                let _111 := var_amount_1646
                let expr_1701 := _111
                /// @src 34:7541:7576  "Transfer(sender, recipient, amount)"
                let _112 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _113 := convert_t_address_to_t_address(expr_1699)
                let _114 := convert_t_address_to_t_address(expr_1700)
                {
                    let _115 := allocate_unbounded()
                    let _116 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_115 , expr_1701)
                    log3(_115, sub(_116, _115) , _112, _113, _114)
                }
            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            function require_helper_t_string_memory_ptr(condition , expr_5931_mpos) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(add(memPtr, 4) , expr_5931_mpos)
                    revert(memPtr, sub(end, memPtr))
                }
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

            /// @ast-id 5939
            /// @src 32:5461:5624  "function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {..."
            function fun_sub_5939(var_a_5918, var_b_5920, var_errorMessage_5922_mpos) -> var__5925 {
                /// @src 32:5547:5554  "uint256"
                let zero_t_uint256_117 := zero_value_for_split_t_uint256()
                var__5925 := zero_t_uint256_117

                /// @src 32:5574:5575  "b"
                let _118 := var_b_5920
                let expr_5928 := _118
                /// @src 32:5579:5580  "a"
                let _119 := var_a_5918
                let expr_5929 := _119
                /// @src 32:5574:5580  "b <= a"
                let expr_5930 := iszero(gt(cleanup_t_uint256(expr_5928), cleanup_t_uint256(expr_5929)))
                /// @src 32:5582:5594  "errorMessage"
                let _120_mpos := var_errorMessage_5922_mpos
                let expr_5931_mpos := _120_mpos
                /// @src 32:5566:5595  "require(b <= a, errorMessage)"
                require_helper_t_string_memory_ptr(expr_5930, expr_5931_mpos)
                /// @src 32:5612:5613  "a"
                let _121 := var_a_5918
                let expr_5934 := _121
                /// @src 32:5616:5617  "b"
                let _122 := var_b_5920
                let expr_5935 := _122
                /// @src 32:5612:5617  "a - b"
                let expr_5936 := checked_sub_t_uint256(expr_5934, expr_5935)

                /// @src 32:5605:5617  "return a - b"
                var__5925 := expr_5936
                leave

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            function store_literal_in_memory_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a(memPtr) {

                mstore(add(memPtr, 0), "SafeMath: addition overflow")

            }

            function abi_encode_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 27)
                store_literal_in_memory_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 5815
            /// @src 32:2719:2894  "function add(uint256 a, uint256 b) internal pure returns (uint256) {..."
            function fun_add_5815(var_a_5792, var_b_5794) -> var__5797 {
                /// @src 32:2777:2784  "uint256"
                let zero_t_uint256_123 := zero_value_for_split_t_uint256()
                var__5797 := zero_t_uint256_123

                /// @src 32:2808:2809  "a"
                let _124 := var_a_5792
                let expr_5801 := _124
                /// @src 32:2812:2813  "b"
                let _125 := var_b_5794
                let expr_5802 := _125
                /// @src 32:2808:2813  "a + b"
                let expr_5803 := checked_add_t_uint256(expr_5801, expr_5802)

                /// @src 32:2796:2813  "uint256 c = a + b"
                let var_c_5800 := expr_5803
                /// @src 32:2831:2832  "c"
                let _126 := var_c_5800
                let expr_5806 := _126
                /// @src 32:2836:2837  "a"
                let _127 := var_a_5792
                let expr_5807 := _127
                /// @src 32:2831:2837  "c >= a"
                let expr_5808 := iszero(lt(cleanup_t_uint256(expr_5806), cleanup_t_uint256(expr_5807)))
                /// @src 32:2823:2869  "require(c >= a, \"SafeMath: addition overflow\")"
                require_helper_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a(expr_5808)
                /// @src 32:2886:2887  "c"
                let _128 := var_c_5800
                let expr_5812 := _128
                /// @src 32:2879:2887  "return c"
                var__5797 := expr_5812
                leave

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            function extract_from_storage_value_offset_0_t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_0_t_bool(sload(slot))

            }

            /// @ast-id 343
            /// @src 0:600:875  "function _beforeTokenTransfer(address from, address to, uint256 amount) internal override virtual {..."
            function fun__beforeTokenTransfer_343(var_from_309, var_to_311, var_amount_313) {

                /// @src 0:704:711  "YultLib"
                let expr_317_address := linkersymbol("Yult.sol:YultLib")
                /// @src 0:728:732  "from"
                let _129 := var_from_309
                let expr_320 := _129
                /// @src 0:744:745  "0"
                let expr_323 := 0x00
                /// @src 0:736:746  "address(0)"
                let expr_324 := convert_t_rational_0_by_1_to_t_address(expr_323)
                /// @src 0:728:746  "from == address(0)"
                let expr_325 := eq(cleanup_t_address(expr_320), cleanup_t_address(expr_324))
                /// @src 0:727:747  "(from == address(0))"
                let expr_326 := expr_325
                /// @src 0:727:811  "(from == address(0)) || ..."
                let expr_332 := expr_326
                if iszero(expr_332) {
                    /// @src 0:781:806  "criticalTransferAddresses"
                    let _130_slot := 0x06
                    let expr_327_slot := _130_slot
                    /// @src 0:807:809  "to"
                    let _131 := var_to_311
                    let expr_328 := _131
                    /// @src 0:781:810  "criticalTransferAddresses[to]"
                    let _132 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_327_slot,expr_328)
                    let _133 := read_from_storage_split_offset_0_t_bool(_132)
                    let expr_329 := _133
                    /// @src 0:780:810  "!criticalTransferAddresses[to]"
                    let expr_330 := cleanup_t_bool(iszero(expr_329))
                    /// @src 0:779:811  "(!criticalTransferAddresses[to])"
                    let expr_331 := expr_330
                    /// @src 0:727:811  "(from == address(0)) || ..."
                    expr_332 := expr_331
                }
                /// @src 0:727:869  "(from == address(0)) || ..."
                let expr_339 := expr_332
                if iszero(expr_339) {
                    /// @src 0:853:857  "from"
                    let _134 := var_from_309
                    let expr_334 := _134
                    /// @src 0:843:858  "balanceOf(from)"
                    let expr_335 := fun_balanceOf_1484(expr_334)
                    /// @src 0:862:868  "amount"
                    let _135 := var_amount_313
                    let expr_336 := _135
                    /// @src 0:843:868  "balanceOf(from) >= amount"
                    let expr_337 := iszero(lt(cleanup_t_uint256(expr_335), cleanup_t_uint256(expr_336)))
                    /// @src 0:842:869  "(balanceOf(from) >= amount)"
                    let expr_338 := expr_337
                    /// @src 0:727:869  "(from == address(0)) || ..."
                    expr_339 := expr_338
                }
                fun___yult__assert_750(expr_339)

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

            /// @ast-id 750
            /// @src 2:1312:1358  "function __yult__assert(bool) pure internal {}"
            function fun___yult__assert_750(var__746) {

            }
            /// @src 49:1308:1433  "contract TokenA is AERC20 {..."

        }

        data ".metadata" hex"a264697066735822122062b1f4217e9c929a02ed489ce75113dc0330dfa56597232d5947d5b99e59435364736f6c634300081e0033"
    }

}

