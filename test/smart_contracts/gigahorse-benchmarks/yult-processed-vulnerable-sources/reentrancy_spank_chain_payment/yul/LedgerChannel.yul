
/// @use-src 0:"src/LedgerChannel.sol"
object "LedgerChannel_3495" {
    code {
        /// @src 0:12117:37526  "contract LedgerChannel {..."
        mstore(64, memoryguard(128))
        let lib_1 := mload(64)
        codecopy(lib_1, dataoffset("ECTools_645"), datasize("ECTools_645"))
        let lib_1_address := create(0, lib_1, datasize("ECTools_645"))
        SETLINKER("ECTools_645", lib_1_address)
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_LedgerChannel_3495()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("LedgerChannel_3495_deployed"), datasize("LedgerChannel_3495_deployed"))

        return(_1, datasize("LedgerChannel_3495_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
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

        function cleanup_t_rational_0_by_1(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function identity(value) -> ret {
            ret := value
        }

        function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
        }

        function prepare_store_t_uint256(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_0_t_rational_0_by_1_to_t_uint256(slot, value_0) {
            let convertedValue_0 := convert_t_rational_0_by_1_to_t_uint256(value_0)
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
        }

        /// @src 0:12117:37526  "contract LedgerChannel {..."
        function constructor_LedgerChannel_3495() {

            /// @src 0:12117:37526  "contract LedgerChannel {..."

            /// @src 0:12278:12279  "0"
            let expr_930 := 0x00
            update_storage_value_offset_0_t_rational_0_by_1_to_t_uint256(0x00, expr_930)

        }
        /// @src 0:12117:37526  "contract LedgerChannel {..."

    }
    /// @use-src 0:"src/LedgerChannel.sol"
    object "LedgerChannel_3495_deployed" {
        code {
            /// @src 0:12117:37526  "contract LedgerChannel {..."
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x002e1d7e
                {
                    // LCOpenTimeout(bytes32)

                    external_fun_LCOpenTimeout_1437()
                }

                case 0x16940125
                {
                    // virtualChannels(bytes32)

                    external_fun_virtualChannels_1116()
                }

                case 0x23866438
                {
                    // joinChannel(bytes32,uint256[2])

                    external_fun_joinChannel_1574()
                }

                case 0x4247a0ba
                {
                    // consensusCloseChannel(bytes32,uint256,uint256[4],string,string)

                    external_fun_consensusCloseChannel_2028()
                }

                case 0x65dd43eb
                {
                    // numChannels()

                    external_fun_numChannels_931()
                }

                case 0x831c2b82
                {
                    // getChannel(bytes32)

                    external_fun_getChannel_3429()
                }

                case 0xa3f4df7e
                {
                    // NAME()

                    external_fun_NAME_925()
                }

                case 0xaeba142c
                {
                    // createChannel(bytes32,address,uint256,address,uint256[2])

                    external_fun_createChannel_1318()
                }

                case 0xaeeec12f
                {
                    // initVCstate(bytes32,bytes32,bytes,address,address,uint256[2],uint256[4],string)

                    external_fun_initVCstate_2515()
                }

                case 0xcb2ec895
                {
                    // deposit(bytes32,address,uint256,bool)

                    external_fun_deposit_1739()
                }

                case 0xce329570
                {
                    // byzantineCloseChannel(bytes32)

                    external_fun_byzantineCloseChannel_3294()
                }

                case 0xd32fc05a
                {
                    // Channels(bytes32)

                    external_fun_Channels_1121()
                }

                case 0xd83866e9
                {
                    // settleVC(bytes32,bytes32,uint256,address,address,uint256[4],string)

                    external_fun_settleVC_2769()
                }

                case 0xe07d39bd
                {
                    // updateLCstate(bytes32,uint256[6],bytes32,string,string)

                    external_fun_updateLCstate_2285()
                }

                case 0xf87c77c0
                {
                    // getVirtualChannel(bytes32)

                    external_fun_getVirtualChannel_3494()
                }

                case 0xfdb04023
                {
                    // closeVirtualChannel(bytes32,bytes32)

                    external_fun_closeVirtualChannel_2981()
                }

                case 0xffa1ad74
                {
                    // VERSION()

                    external_fun_VERSION_928()
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

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_bytes32(value) {
                if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
            }

            function abi_decode_t_bytes32(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bytes32(value)
            }

            function abi_decode_tuple_t_bytes32(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_LCOpenTimeout_1437() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bytes32(4, calldatasize())
                fun_LCOpenTimeout_1437(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function convert_t_bytes32_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(value)
            }

            function mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(slot , key) -> dataSlot {
                mstore(0, convert_t_bytes32_to_t_bytes32(key))
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

            function shift_right_8_unsigned(value) -> newValue {
                newValue :=

                shr(8, value)

            }

            function extract_from_storage_value_offset_1_t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_8_unsigned(slot_value))
            }

            function read_from_storage_split_offset_1_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_1_t_bool(sload(slot))

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

            function cleanup_from_storage_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_0_t_address(slot_value) -> value {
                value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_address(slot) -> value {
                value := extract_from_storage_value_offset_0_t_address(sload(slot))

            }

            function cleanup_from_storage_t_contract$_HumanStandardToken_$922(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_0_t_contract$_HumanStandardToken_$922(slot_value) -> value {
                value := cleanup_from_storage_t_contract$_HumanStandardToken_$922(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_contract$_HumanStandardToken_$922(slot) -> value {
                value := extract_from_storage_value_offset_0_t_contract$_HumanStandardToken_$922(sload(slot))

            }

            /// @ast-id 1116
            /// @src 0:15299:15356  "mapping(bytes32 => VirtualChannel) public virtualChannels"
            function getter_fun_virtualChannels_1116(key_0) -> ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8_address {

                let slot := 1
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(slot, key_0)

                ret_0 := read_from_storage_split_offset_0_t_bool(add(slot, 0))

                ret_1 := read_from_storage_split_offset_1_t_bool(add(slot, 0))

                ret_2 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))

                ret_3 := read_from_storage_split_offset_0_t_address(add(slot, 2))

                ret_4 := read_from_storage_split_offset_0_t_uint256(add(slot, 3))

                ret_5 := read_from_storage_split_offset_0_t_address(add(slot, 4))

                ret_6 := read_from_storage_split_offset_0_t_address(add(slot, 5))

                ret_7 := read_from_storage_split_offset_0_t_address(add(slot, 6))

                ret_8_address := read_from_storage_split_offset_0_t_contract$_HumanStandardToken_$922(add(slot, 13))

            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
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

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_contract$_HumanStandardToken_$922_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_t_contract$_HumanStandardToken_$922_to_t_address_fromStack(value, pos) {
                mstore(pos, convert_t_contract$_HumanStandardToken_$922_to_t_address(value))
            }

            function abi_encode_tuple_t_bool_t_bool_t_uint256_t_address_t_uint256_t_address_t_address_t_address_t_contract$_HumanStandardToken_$922__to_t_bool_t_bool_t_uint256_t_address_t_uint256_t_address_t_address_t_address_t_address__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6, value7, value8) -> tail {
                tail := add(headStart, 288)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bool_to_t_bool_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_address_to_t_address_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

                abi_encode_t_address_to_t_address_fromStack(value5,  add(headStart, 160))

                abi_encode_t_address_to_t_address_fromStack(value6,  add(headStart, 192))

                abi_encode_t_address_to_t_address_fromStack(value7,  add(headStart, 224))

                abi_encode_t_contract$_HumanStandardToken_$922_to_t_address_fromStack(value8,  add(headStart, 256))

            }

            function external_fun_virtualChannels_1116() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bytes32(4, calldatasize())
                let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8 :=  getter_fun_virtualChannels_1116(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool_t_bool_t_uint256_t_address_t_uint256_t_address_t_address_t_address_t_contract$_HumanStandardToken_$922__to_t_bool_t_bool_t_uint256_t_address_t_uint256_t_address_t_address_t_address_t_address__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
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

            function array_allocation_size_t_array$_t_uint256_$2_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

            }

            function revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() {
                revert(0, 0)
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            // uint256[2]
            function abi_decode_available_length_t_array$_t_uint256_$2_memory_ptr(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_uint256_$2_memory_ptr(length))
                let dst := array

                let srcEnd := add(offset, mul(length, 0x20))
                if gt(srcEnd, end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
                {

                    let elementPos := src

                    mstore(dst, abi_decode_t_uint256(elementPos, end))
                    dst := add(dst, 0x20)
                }
            }

            // uint256[2]
            function abi_decode_t_array$_t_uint256_$2_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := 0x02
                array := abi_decode_available_length_t_array$_t_uint256_$2_memory_ptr(offset, length, end)
            }

            function abi_decode_tuple_t_bytes32t_array$_t_uint256_$2_memory_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_array$_t_uint256_$2_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_joinChannel_1574() {

                let param_0, param_1 :=  abi_decode_tuple_t_bytes32t_array$_t_uint256_$2_memory_ptr(4, calldatasize())
                fun_joinChannel_1574(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function array_allocation_size_t_array$_t_uint256_$4_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

            }

            // uint256[4]
            function abi_decode_available_length_t_array$_t_uint256_$4_memory_ptr(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_uint256_$4_memory_ptr(length))
                let dst := array

                let srcEnd := add(offset, mul(length, 0x20))
                if gt(srcEnd, end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
                {

                    let elementPos := src

                    mstore(dst, abi_decode_t_uint256(elementPos, end))
                    dst := add(dst, 0x20)
                }
            }

            // uint256[4]
            function abi_decode_t_array$_t_uint256_$4_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := 0x04
                array := abi_decode_available_length_t_array$_t_uint256_$4_memory_ptr(offset, length, end)
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

            function copy_calldata_to_memory_with_cleanup(src, dst, length) {

                calldatacopy(dst, src, length)
                mstore(add(dst, length), 0)

            }

            function abi_decode_available_length_t_string_memory_ptr(src, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_string_memory_ptr(length))
                mstore(array, length)
                let dst := add(array, 0x20)
                if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
                copy_calldata_to_memory_with_cleanup(src, dst, length)
            }

            // string
            function abi_decode_t_string_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := calldataload(offset)
                array := abi_decode_available_length_t_string_memory_ptr(add(offset, 0x20), length, end)
            }

            function abi_decode_tuple_t_bytes32t_uint256t_array$_t_uint256_$4_memory_ptrt_string_memory_ptrt_string_memory_ptr(headStart, dataEnd) -> value0, value1, value2, value3, value4 {
                if slt(sub(dataEnd, headStart), 256) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_array$_t_uint256_$4_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 192))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value3 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 224))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value4 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_consensusCloseChannel_2028() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3, param_4 :=  abi_decode_tuple_t_bytes32t_uint256t_array$_t_uint256_$4_memory_ptrt_string_memory_ptrt_string_memory_ptr(4, calldatasize())
                fun_consensusCloseChannel_2028(param_0, param_1, param_2, param_3, param_4)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function extract_from_storage_value_dynamict_uint256(slot_value, offset) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_uint256(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_uint256(sload(slot), offset)

            }

            /// @ast-id 931
            /// @src 0:12249:12279  "uint256 public numChannels = 0"
            function getter_fun_numChannels_931() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_numChannels_931() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_numChannels_931()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function array_length_t_array$_t_address_$2_memory_ptr(value) -> length {

                length := 0x02

            }

            function array_storeLengthForEncoding_t_array$_t_address_$2_memory_ptr_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function array_dataslot_t_array$_t_address_$2_memory_ptr(ptr) -> data {
                data := ptr

            }

            function abi_encode_t_address_to_t_address(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encodeUpdatedPos_t_address_to_t_address(value0, pos) -> updatedPos {
                abi_encode_t_address_to_t_address(value0, pos)
                updatedPos := add(pos, 0x20)
            }

            function array_nextElement_t_array$_t_address_$2_memory_ptr(ptr) -> next {
                next := add(ptr, 0x20)
            }

            // address[2] -> address[2]
            function abi_encode_t_array$_t_address_$2_memory_ptr_to_t_array$_t_address_$2_memory_ptr_fromStack(value, pos)  {
                let length := array_length_t_array$_t_address_$2_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_array$_t_address_$2_memory_ptr_fromStack(pos, length)
                let baseRef := array_dataslot_t_array$_t_address_$2_memory_ptr(value)
                let srcPtr := baseRef
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    let elementValue0 := mload(srcPtr)
                    pos := abi_encodeUpdatedPos_t_address_to_t_address(elementValue0, pos)
                    srcPtr := array_nextElement_t_array$_t_address_$2_memory_ptr(srcPtr)
                }

            }

            function array_length_t_array$_t_uint256_$4_memory_ptr(value) -> length {

                length := 0x04

            }

            function array_storeLengthForEncoding_t_array$_t_uint256_$4_memory_ptr_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function array_dataslot_t_array$_t_uint256_$4_memory_ptr(ptr) -> data {
                data := ptr

            }

            function abi_encode_t_uint256_to_t_uint256(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encodeUpdatedPos_t_uint256_to_t_uint256(value0, pos) -> updatedPos {
                abi_encode_t_uint256_to_t_uint256(value0, pos)
                updatedPos := add(pos, 0x20)
            }

            function array_nextElement_t_array$_t_uint256_$4_memory_ptr(ptr) -> next {
                next := add(ptr, 0x20)
            }

            // uint256[4] -> uint256[4]
            function abi_encode_t_array$_t_uint256_$4_memory_ptr_to_t_array$_t_uint256_$4_memory_ptr_fromStack(value, pos)  {
                let length := array_length_t_array$_t_uint256_$4_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_array$_t_uint256_$4_memory_ptr_fromStack(pos, length)
                let baseRef := array_dataslot_t_array$_t_uint256_$4_memory_ptr(value)
                let srcPtr := baseRef
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    let elementValue0 := mload(srcPtr)
                    pos := abi_encodeUpdatedPos_t_uint256_to_t_uint256(elementValue0, pos)
                    srcPtr := array_nextElement_t_array$_t_uint256_$4_memory_ptr(srcPtr)
                }

            }

            function array_length_t_array$_t_uint256_$2_memory_ptr(value) -> length {

                length := 0x02

            }

            function array_storeLengthForEncoding_t_array$_t_uint256_$2_memory_ptr_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function array_dataslot_t_array$_t_uint256_$2_memory_ptr(ptr) -> data {
                data := ptr

            }

            function array_nextElement_t_array$_t_uint256_$2_memory_ptr(ptr) -> next {
                next := add(ptr, 0x20)
            }

            // uint256[2] -> uint256[2]
            function abi_encode_t_array$_t_uint256_$2_memory_ptr_to_t_array$_t_uint256_$2_memory_ptr_fromStack(value, pos)  {
                let length := array_length_t_array$_t_uint256_$2_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_array$_t_uint256_$2_memory_ptr_fromStack(pos, length)
                let baseRef := array_dataslot_t_array$_t_uint256_$2_memory_ptr(value)
                let srcPtr := baseRef
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    let elementValue0 := mload(srcPtr)
                    pos := abi_encodeUpdatedPos_t_uint256_to_t_uint256(elementValue0, pos)
                    srcPtr := array_nextElement_t_array$_t_uint256_$2_memory_ptr(srcPtr)
                }

            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_tuple_t_array$_t_address_$2_memory_ptr_t_array$_t_uint256_$4_memory_ptr_t_array$_t_uint256_$4_memory_ptr_t_array$_t_uint256_$2_memory_ptr_t_uint256_t_uint256_t_bytes32_t_uint256_t_uint256_t_bool_t_bool_t_uint256__to_t_array$_t_address_$2_memory_ptr_t_array$_t_uint256_$4_memory_ptr_t_array$_t_uint256_$4_memory_ptr_t_array$_t_uint256_$2_memory_ptr_t_uint256_t_uint256_t_bytes32_t_uint256_t_uint256_t_bool_t_bool_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6, value7, value8, value9, value10, value11) -> tail {
                tail := add(headStart, 640)

                abi_encode_t_array$_t_address_$2_memory_ptr_to_t_array$_t_address_$2_memory_ptr_fromStack(value0,  add(headStart, 0))

                abi_encode_t_array$_t_uint256_$4_memory_ptr_to_t_array$_t_uint256_$4_memory_ptr_fromStack(value1,  add(headStart, 64))

                abi_encode_t_array$_t_uint256_$4_memory_ptr_to_t_array$_t_uint256_$4_memory_ptr_fromStack(value2,  add(headStart, 192))

                abi_encode_t_array$_t_uint256_$2_memory_ptr_to_t_array$_t_uint256_$2_memory_ptr_fromStack(value3,  add(headStart, 320))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 384))

                abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 416))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value6,  add(headStart, 448))

                abi_encode_t_uint256_to_t_uint256_fromStack(value7,  add(headStart, 480))

                abi_encode_t_uint256_to_t_uint256_fromStack(value8,  add(headStart, 512))

                abi_encode_t_bool_to_t_bool_fromStack(value9,  add(headStart, 544))

                abi_encode_t_bool_to_t_bool_fromStack(value10,  add(headStart, 576))

                abi_encode_t_uint256_to_t_uint256_fromStack(value11,  add(headStart, 608))

            }

            function external_fun_getChannel_3429() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bytes32(4, calldatasize())
                let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11 :=  fun_getChannel_3429(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_array$_t_address_$2_memory_ptr_t_array$_t_uint256_$4_memory_ptr_t_array$_t_uint256_$4_memory_ptr_t_array$_t_uint256_$2_memory_ptr_t_uint256_t_uint256_t_bytes32_t_uint256_t_uint256_t_bool_t_bool_t_uint256__to_t_array$_t_address_$2_memory_ptr_t_array$_t_uint256_$4_memory_ptr_t_array$_t_uint256_$4_memory_ptr_t_array$_t_uint256_$2_memory_ptr_t_uint256_t_uint256_t_bytes32_t_uint256_t_uint256_t_bool_t_bool_t_uint256__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11)
                return(memPos, sub(memEnd, memPos))

            }

            function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_string_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function store_literal_in_memory_a298a9b6ba72f58f81153f3aad7573a8549f91d4b638faaa93aa30f3a59160fe(memPtr) {

                mstore(add(memPtr, 0), "Ledger Channel")

            }

            function copy_literal_to_memory_a298a9b6ba72f58f81153f3aad7573a8549f91d4b638faaa93aa30f3a59160fe() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(14)
                store_literal_in_memory_a298a9b6ba72f58f81153f3aad7573a8549f91d4b638faaa93aa30f3a59160fe(add(memPtr, 32))
            }

            function convert_t_stringliteral_a298a9b6ba72f58f81153f3aad7573a8549f91d4b638faaa93aa30f3a59160fe_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_a298a9b6ba72f58f81153f3aad7573a8549f91d4b638faaa93aa30f3a59160fe()
            }

            /// @src 0:12148:12194  "string public constant NAME = \"Ledger Channel\""
            function constant_NAME_925() -> ret_mpos {
                /// @src 0:12178:12194  "\"Ledger Channel\""
                let _1_mpos := convert_t_stringliteral_a298a9b6ba72f58f81153f3aad7573a8549f91d4b638faaa93aa30f3a59160fe_to_t_string_memory_ptr()

                ret_mpos := _1_mpos
            }

            /// @ast-id 925
            /// @src 0:12148:12194  "string public constant NAME = \"Ledger Channel\""
            function getter_fun_NAME_925() -> ret_0 {
                ret_0 := constant_NAME_925()
            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

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

            function external_fun_NAME_925() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_NAME_925()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function abi_decode_t_address(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_address(value)
            }

            function abi_decode_tuple_t_bytes32t_addresst_uint256t_addresst_array$_t_uint256_$2_memory_ptr(headStart, dataEnd) -> value0, value1, value2, value3, value4 {
                if slt(sub(dataEnd, headStart), 192) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
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

                    value3 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 128

                    value4 := abi_decode_t_array$_t_uint256_$2_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_createChannel_1318() {

                let param_0, param_1, param_2, param_3, param_4 :=  abi_decode_tuple_t_bytes32t_addresst_uint256t_addresst_array$_t_uint256_$2_memory_ptr(4, calldatasize())
                fun_createChannel_1318(param_0, param_1, param_2, param_3, param_4)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function array_allocation_size_t_bytes_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

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

            function abi_decode_tuple_t_bytes32t_bytes32t_bytes_memory_ptrt_addresst_addresst_array$_t_uint256_$2_memory_ptrt_array$_t_uint256_$4_memory_ptrt_string_memory_ptr(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5, value6, value7 {
                if slt(sub(dataEnd, headStart), 384) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 64))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 128

                    value4 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 160

                    value5 := abi_decode_t_array$_t_uint256_$2_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 224

                    value6 := abi_decode_t_array$_t_uint256_$4_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 352))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value7 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_initVCstate_2515() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7 :=  abi_decode_tuple_t_bytes32t_bytes32t_bytes_memory_ptrt_addresst_addresst_array$_t_uint256_$2_memory_ptrt_array$_t_uint256_$4_memory_ptrt_string_memory_ptr(4, calldatasize())
                fun_initVCstate_2515(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function validator_revert_t_bool(value) {
                if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
            }

            function abi_decode_t_bool(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bool(value)
            }

            function abi_decode_tuple_t_bytes32t_addresst_uint256t_bool(headStart, dataEnd) -> value0, value1, value2, value3 {
                if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
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

                    value3 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_deposit_1739() {

                let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_bytes32t_addresst_uint256t_bool(4, calldatasize())
                fun_deposit_1739(param_0, param_1, param_2, param_3)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_byzantineCloseChannel_3294() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bytes32(4, calldatasize())
                fun_byzantineCloseChannel_3294(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(slot , key) -> dataSlot {
                mstore(0, convert_t_bytes32_to_t_bytes32(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function cleanup_from_storage_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_offset_0_t_bytes32(slot_value) -> value {
                value := cleanup_from_storage_t_bytes32(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_bytes32(slot) -> value {
                value := extract_from_storage_value_offset_0_t_bytes32(sload(slot))

            }

            /// @ast-id 1121
            /// @src 0:15363:15406  "mapping(bytes32 => Channel) public Channels"
            function getter_fun_Channels_1121(key_0) -> ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8_address {

                let slot := 2
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(slot, key_0)

                ret_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 12))

                ret_1 := read_from_storage_split_offset_0_t_uint256(add(slot, 13))

                ret_2 := read_from_storage_split_offset_0_t_bytes32(add(slot, 14))

                ret_3 := read_from_storage_split_offset_0_t_uint256(add(slot, 15))

                ret_4 := read_from_storage_split_offset_0_t_uint256(add(slot, 16))

                ret_5 := read_from_storage_split_offset_0_t_bool(add(slot, 17))

                ret_6 := read_from_storage_split_offset_1_t_bool(add(slot, 17))

                ret_7 := read_from_storage_split_offset_0_t_uint256(add(slot, 18))

                ret_8_address := read_from_storage_split_offset_0_t_contract$_HumanStandardToken_$922(add(slot, 19))

            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

            function abi_encode_tuple_t_uint256_t_uint256_t_bytes32_t_uint256_t_uint256_t_bool_t_bool_t_uint256_t_contract$_HumanStandardToken_$922__to_t_uint256_t_uint256_t_bytes32_t_uint256_t_uint256_t_bool_t_bool_t_uint256_t_address__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6, value7, value8) -> tail {
                tail := add(headStart, 288)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

                abi_encode_t_bool_to_t_bool_fromStack(value5,  add(headStart, 160))

                abi_encode_t_bool_to_t_bool_fromStack(value6,  add(headStart, 192))

                abi_encode_t_uint256_to_t_uint256_fromStack(value7,  add(headStart, 224))

                abi_encode_t_contract$_HumanStandardToken_$922_to_t_address_fromStack(value8,  add(headStart, 256))

            }

            function external_fun_Channels_1121() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bytes32(4, calldatasize())
                let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8 :=  getter_fun_Channels_1121(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256_t_uint256_t_bytes32_t_uint256_t_uint256_t_bool_t_bool_t_uint256_t_contract$_HumanStandardToken_$922__to_t_uint256_t_uint256_t_bytes32_t_uint256_t_uint256_t_bool_t_bool_t_uint256_t_address__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_bytes32t_bytes32t_uint256t_addresst_addresst_array$_t_uint256_$4_memory_ptrt_string_memory_ptr(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5, value6 {
                if slt(sub(dataEnd, headStart), 320) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 128

                    value4 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 160

                    value5 := abi_decode_t_array$_t_uint256_$4_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 288))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value6 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_settleVC_2769() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3, param_4, param_5, param_6 :=  abi_decode_tuple_t_bytes32t_bytes32t_uint256t_addresst_addresst_array$_t_uint256_$4_memory_ptrt_string_memory_ptr(4, calldatasize())
                fun_settleVC_2769(param_0, param_1, param_2, param_3, param_4, param_5, param_6)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function array_allocation_size_t_array$_t_uint256_$6_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

            }

            // uint256[6]
            function abi_decode_available_length_t_array$_t_uint256_$6_memory_ptr(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_uint256_$6_memory_ptr(length))
                let dst := array

                let srcEnd := add(offset, mul(length, 0x20))
                if gt(srcEnd, end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
                {

                    let elementPos := src

                    mstore(dst, abi_decode_t_uint256(elementPos, end))
                    dst := add(dst, 0x20)
                }
            }

            // uint256[6]
            function abi_decode_t_array$_t_uint256_$6_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := 0x06
                array := abi_decode_available_length_t_array$_t_uint256_$6_memory_ptr(offset, length, end)
            }

            function abi_decode_tuple_t_bytes32t_array$_t_uint256_$6_memory_ptrt_bytes32t_string_memory_ptrt_string_memory_ptr(headStart, dataEnd) -> value0, value1, value2, value3, value4 {
                if slt(sub(dataEnd, headStart), 320) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_array$_t_uint256_$6_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 224

                    value2 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 256))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value3 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 288))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value4 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_updateLCstate_2285() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3, param_4 :=  abi_decode_tuple_t_bytes32t_array$_t_uint256_$6_memory_ptrt_bytes32t_string_memory_ptrt_string_memory_ptr(4, calldatasize())
                fun_updateLCstate_2285(param_0, param_1, param_2, param_3, param_4)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_tuple_t_bool_t_bool_t_uint256_t_address_t_uint256_t_address_t_address_t_address_t_array$_t_uint256_$2_memory_ptr_t_array$_t_uint256_$2_memory_ptr_t_array$_t_uint256_$2_memory_ptr__to_t_bool_t_bool_t_uint256_t_address_t_uint256_t_address_t_address_t_address_t_array$_t_uint256_$2_memory_ptr_t_array$_t_uint256_$2_memory_ptr_t_array$_t_uint256_$2_memory_ptr__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6, value7, value8, value9, value10) -> tail {
                tail := add(headStart, 448)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bool_to_t_bool_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_address_to_t_address_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

                abi_encode_t_address_to_t_address_fromStack(value5,  add(headStart, 160))

                abi_encode_t_address_to_t_address_fromStack(value6,  add(headStart, 192))

                abi_encode_t_address_to_t_address_fromStack(value7,  add(headStart, 224))

                abi_encode_t_array$_t_uint256_$2_memory_ptr_to_t_array$_t_uint256_$2_memory_ptr_fromStack(value8,  add(headStart, 256))

                abi_encode_t_array$_t_uint256_$2_memory_ptr_to_t_array$_t_uint256_$2_memory_ptr_fromStack(value9,  add(headStart, 320))

                abi_encode_t_array$_t_uint256_$2_memory_ptr_to_t_array$_t_uint256_$2_memory_ptr_fromStack(value10,  add(headStart, 384))

            }

            function external_fun_getVirtualChannel_3494() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bytes32(4, calldatasize())
                let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10 :=  fun_getVirtualChannel_3494(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool_t_bool_t_uint256_t_address_t_uint256_t_address_t_address_t_address_t_array$_t_uint256_$2_memory_ptr_t_array$_t_uint256_$2_memory_ptr_t_array$_t_uint256_$2_memory_ptr__to_t_bool_t_bool_t_uint256_t_address_t_uint256_t_address_t_address_t_address_t_array$_t_uint256_$2_memory_ptr_t_array$_t_uint256_$2_memory_ptr_t_array$_t_uint256_$2_memory_ptr__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_bytes32t_bytes32(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_closeVirtualChannel_2981() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_bytes32t_bytes32(4, calldatasize())
                fun_closeVirtualChannel_2981(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function store_literal_in_memory_ae209a0b48f21c054280f2455d32cf309387644879d9acbd8ffc199163811885(memPtr) {

                mstore(add(memPtr, 0), "0.0.1")

            }

            function copy_literal_to_memory_ae209a0b48f21c054280f2455d32cf309387644879d9acbd8ffc199163811885() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(5)
                store_literal_in_memory_ae209a0b48f21c054280f2455d32cf309387644879d9acbd8ffc199163811885(add(memPtr, 32))
            }

            function convert_t_stringliteral_ae209a0b48f21c054280f2455d32cf309387644879d9acbd8ffc199163811885_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_ae209a0b48f21c054280f2455d32cf309387644879d9acbd8ffc199163811885()
            }

            /// @src 0:12201:12241  "string public constant VERSION = \"0.0.1\""
            function constant_VERSION_928() -> ret_mpos {
                /// @src 0:12234:12241  "\"0.0.1\""
                let _2_mpos := convert_t_stringliteral_ae209a0b48f21c054280f2455d32cf309387644879d9acbd8ffc199163811885_to_t_string_memory_ptr()

                ret_mpos := _2_mpos
            }

            /// @ast-id 928
            /// @src 0:12201:12241  "string public constant VERSION = \"0.0.1\""
            function getter_fun_VERSION_928() -> ret_0 {
                ret_0 := constant_VERSION_928()
            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

            function external_fun_VERSION_928() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_VERSION_928()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
            }

            function array_length_t_array$_t_address_$2_storage(value) -> length {

                length := 0x02

            }

            function array_dataslot_t_array$_t_address_$2_storage(ptr) -> data {
                data := ptr

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

            function storage_array_index_access_t_array$_t_address_$2_storage(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_address_$2_storage(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_address_$2_storage(array)
                slot := add(dataArea, mul(index, 1))
                offset := 0

            }

            function extract_from_storage_value_dynamict_address(slot_value, offset) -> value {
                value := cleanup_from_storage_t_address(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_address(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_address(sload(slot), offset)

            }

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            function array_length_t_array$_t_uint256_$2_storage(value) -> length {

                length := 0x02

            }

            function array_dataslot_t_array$_t_uint256_$2_storage(ptr) -> data {
                data := ptr

            }

            function storage_array_index_access_t_array$_t_uint256_$2_storage(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_uint256_$2_storage(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_uint256_$2_storage(array)
                slot := add(dataArea, mul(index, 1))
                offset := 0

            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_uint160_to_t_address_payable(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_address_payable(value) -> converted {
                converted := convert_t_uint160_to_t_address_payable(value)
            }

            function convert_t_address_payable_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function array_length_t_array$_t_uint256_$4_storage(value) -> length {

                length := 0x04

            }

            function array_dataslot_t_array$_t_uint256_$4_storage(ptr) -> data {
                data := ptr

            }

            function storage_array_index_access_t_array$_t_uint256_$4_storage(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_uint256_$4_storage(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_uint256_$4_storage(array)
                slot := add(dataArea, mul(index, 1))
                offset := 0

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            function revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() {
                revert(0, 0)
            }

            function shift_left_224(value) -> newValue {
                newValue :=

                shl(224, value)

            }

            function abi_decode_t_bool_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_bool(value)
            }

            function abi_decode_tuple_t_bool_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bool_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

            }

            function store_literal_in_memory_ec05e37bcff7fda60da4749488a9e691a8362b1493d4b9355637e1e752070c61(memPtr) {

                mstore(add(memPtr, 0), "CreateChannel: token transfer fa")

                mstore(add(memPtr, 32), "ilure")

            }

            function abi_encode_t_stringliteral_ec05e37bcff7fda60da4749488a9e691a8362b1493d4b9355637e1e752070c61_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 37)
                store_literal_in_memory_ec05e37bcff7fda60da4749488a9e691a8362b1493d4b9355637e1e752070c61(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_ec05e37bcff7fda60da4749488a9e691a8362b1493d4b9355637e1e752070c61__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_ec05e37bcff7fda60da4749488a9e691a8362b1493d4b9355637e1e752070c61_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_ec05e37bcff7fda60da4749488a9e691a8362b1493d4b9355637e1e752070c61(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_ec05e37bcff7fda60da4749488a9e691a8362b1493d4b9355637e1e752070c61__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function abi_encode_t_rational_0_by_1_to_t_uint256_fromStack(value, pos) {
                mstore(pos, convert_t_rational_0_by_1_to_t_uint256(value))
            }

            function abi_encode_tuple_t_rational_0_by_1_t_uint256_t_uint256_t_rational_0_by_1_t_rational_0_by_1__to_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_rational_0_by_1_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_rational_0_by_1_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_rational_0_by_1_to_t_uint256_fromStack(value4,  add(headStart, 128))

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

            function clear_storage_range_t_uint256(start, end) {
                for {} lt(start, end) { start := add(start, 1) }
                {
                    storage_set_to_zero_t_uint256(start, 0)
                }
            }

            function panic_error_0x11() {
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

            function array_convert_length_to_size_t_array$_t_address_$2_storage(length) -> size {
                size := length

                // Number of slots rounded up
                size := div(add(length, sub(1, 1)), 1)

            }
            function clear_storage_array_t_array$_t_address_$2_storage(slot) {

                clear_storage_range_t_uint256(slot, add(slot, array_convert_length_to_size_t_array$_t_address_$2_storage(2)))

            }

            function panic_error_0x00() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x00)
                revert(0, 0x24)
            }

            function storage_set_to_zero_t_array$_t_address_$2_storage(slot, offset) {
                if iszero(eq(offset, 0)) { panic_error_0x00() }
                clear_storage_array_t_array$_t_address_$2_storage(slot)
            }

            function array_convert_length_to_size_t_array$_t_uint256_$4_storage(length) -> size {
                size := length

                // Number of slots rounded up
                size := div(add(length, sub(1, 1)), 1)

            }
            function clear_storage_array_t_array$_t_uint256_$4_storage(slot) {

                clear_storage_range_t_uint256(slot, add(slot, array_convert_length_to_size_t_array$_t_uint256_$4_storage(4)))

            }

            function storage_set_to_zero_t_array$_t_uint256_$4_storage(slot, offset) {
                if iszero(eq(offset, 0)) { panic_error_0x00() }
                clear_storage_array_t_array$_t_uint256_$4_storage(slot)
            }

            function array_convert_length_to_size_t_array$_t_uint256_$2_storage(length) -> size {
                size := length

                // Number of slots rounded up
                size := div(add(length, sub(1, 1)), 1)

            }
            function clear_storage_array_t_array$_t_uint256_$2_storage(slot) {

                clear_storage_range_t_uint256(slot, add(slot, array_convert_length_to_size_t_array$_t_uint256_$2_storage(2)))

            }

            function storage_set_to_zero_t_array$_t_uint256_$2_storage(slot, offset) {
                if iszero(eq(offset, 0)) { panic_error_0x00() }
                clear_storage_array_t_array$_t_uint256_$2_storage(slot)
            }

            function prepare_store_t_bytes32(value) -> ret {
                ret := shift_right_0_unsigned(value)
            }

            function update_storage_value_t_bytes32_to_t_bytes32(slot, offset, value_0) {
                let convertedValue_0 := convert_t_bytes32_to_t_bytes32(value_0)
                sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_bytes32(convertedValue_0)))
            }

            function zero_value_for_split_t_bytes32() -> ret {
                ret := 0
            }

            function storage_set_to_zero_t_bytes32(slot, offset) {
                let zero_0 := zero_value_for_split_t_bytes32()
                update_storage_value_t_bytes32_to_t_bytes32(slot, offset, zero_0)
            }

            function clear_struct_storage_t_struct$_Channel_$1079_storage(slot) {

                storage_set_to_zero_t_array$_t_address_$2_storage(add(slot, 0), 0)

                storage_set_to_zero_t_array$_t_uint256_$4_storage(add(slot, 2), 0)

                storage_set_to_zero_t_array$_t_uint256_$4_storage(add(slot, 6), 0)

                storage_set_to_zero_t_array$_t_uint256_$2_storage(add(slot, 10), 0)

                storage_set_to_zero_t_uint256(add(slot, 12), 0)

                storage_set_to_zero_t_uint256(add(slot, 13), 0)

                storage_set_to_zero_t_bytes32(add(slot, 14), 0)

                storage_set_to_zero_t_uint256(add(slot, 15), 0)

                storage_set_to_zero_t_uint256(add(slot, 16), 0)

                sstore(add(slot, 17), 0)

                storage_set_to_zero_t_uint256(add(slot, 18), 0)

                sstore(add(slot, 19), 0)

            }

            function storage_set_to_zero_t_struct$_Channel_$1079_storage(slot, offset) {
                if iszero(eq(offset, 0)) { panic_error_0x00() }
                clear_struct_storage_t_struct$_Channel_$1079_storage(slot)
            }

            /// @ast-id 1437
            /// @src 0:17356:18271  "function LCOpenTimeout(bytes32 _lcID) public {..."
            function fun_LCOpenTimeout_1437(var__lcID_1320) {

                /// @src 0:17420:17430  "msg.sender"
                let expr_1325 := caller()
                /// @src 0:17434:17442  "Channels"
                let _3_slot := 0x02
                let expr_1326_slot := _3_slot
                /// @src 0:17443:17448  "_lcID"
                let _4 := var__lcID_1320
                let expr_1327 := _4
                /// @src 0:17434:17449  "Channels[_lcID]"
                let _5 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1326_slot,expr_1327)
                let _6_slot := _5
                let expr_1328_slot := _6_slot
                /// @src 0:17434:17464  "Channels[_lcID].partyAddresses"
                let _7 := add(expr_1328_slot, 0)
                let _8_slot := _7
                let expr_1329_slot := _8_slot
                /// @src 0:17465:17466  "0"
                let expr_1330 := 0x00
                /// @src 0:17434:17467  "Channels[_lcID].partyAddresses[0]"

                let _9, _10 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1329_slot, expr_1330)
                let _11 := read_from_storage_split_dynamic_t_address(_9, _10)
                let expr_1331 := _11
                /// @src 0:17420:17467  "msg.sender == Channels[_lcID].partyAddresses[0]"
                let expr_1332 := eq(cleanup_t_address(expr_1325), cleanup_t_address(expr_1331))
                /// @src 0:17420:17502  "msg.sender == Channels[_lcID].partyAddresses[0] && Channels[_lcID].isOpen == false"
                let expr_1339 := expr_1332
                if expr_1339 {
                    /// @src 0:17471:17479  "Channels"
                    let _12_slot := 0x02
                    let expr_1333_slot := _12_slot
                    /// @src 0:17480:17485  "_lcID"
                    let _13 := var__lcID_1320
                    let expr_1334 := _13
                    /// @src 0:17471:17486  "Channels[_lcID]"
                    let _14 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1333_slot,expr_1334)
                    let _15_slot := _14
                    let expr_1335_slot := _15_slot
                    /// @src 0:17471:17493  "Channels[_lcID].isOpen"
                    let _16 := add(expr_1335_slot, 17)
                    let _17 := read_from_storage_split_offset_0_t_bool(_16)
                    let expr_1336 := _17
                    /// @src 0:17497:17502  "false"
                    let expr_1337 := 0x00
                    /// @src 0:17471:17502  "Channels[_lcID].isOpen == false"
                    let expr_1338 := eq(cleanup_t_bool(expr_1336), cleanup_t_bool(expr_1337))
                    /// @src 0:17420:17502  "msg.sender == Channels[_lcID].partyAddresses[0] && Channels[_lcID].isOpen == false"
                    expr_1339 := expr_1338
                }
                /// @src 0:17412:17503  "require(msg.sender == Channels[_lcID].partyAddresses[0] && Channels[_lcID].isOpen == false)"
                require_helper(expr_1339)
                /// @src 0:17522:17537  "block.timestamp"
                let expr_1344 := timestamp()
                /// @src 0:17540:17548  "Channels"
                let _18_slot := 0x02
                let expr_1345_slot := _18_slot
                /// @src 0:17549:17554  "_lcID"
                let _19 := var__lcID_1320
                let expr_1346 := _19
                /// @src 0:17540:17555  "Channels[_lcID]"
                let _20 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1345_slot,expr_1346)
                let _21_slot := _20
                let expr_1347_slot := _21_slot
                /// @src 0:17540:17569  "Channels[_lcID].LCopenTimeout"
                let _22 := add(expr_1347_slot, 15)
                let _23 := read_from_storage_split_offset_0_t_uint256(_22)
                let expr_1348 := _23
                /// @src 0:17522:17569  "block.timestamp > Channels[_lcID].LCopenTimeout"
                let expr_1349 := gt(cleanup_t_uint256(expr_1344), cleanup_t_uint256(expr_1348))
                /// @src 0:17514:17570  "require(block.timestamp > Channels[_lcID].LCopenTimeout)"
                require_helper(expr_1349)
                /// @src 0:17585:17593  "Channels"
                let _24_slot := 0x02
                let expr_1352_slot := _24_slot
                /// @src 0:17594:17599  "_lcID"
                let _25 := var__lcID_1320
                let expr_1353 := _25
                /// @src 0:17585:17600  "Channels[_lcID]"
                let _26 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1352_slot,expr_1353)
                let _27_slot := _26
                let expr_1354_slot := _27_slot
                /// @src 0:17585:17615  "Channels[_lcID].initialDeposit"
                let _28 := add(expr_1354_slot, 10)
                let _29_slot := _28
                let expr_1355_slot := _29_slot
                /// @src 0:17616:17617  "0"
                let expr_1356 := 0x00
                /// @src 0:17585:17618  "Channels[_lcID].initialDeposit[0]"

                let _30, _31 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_1355_slot, expr_1356)
                let _32 := read_from_storage_split_dynamic_t_uint256(_30, _31)
                let expr_1357 := _32
                /// @src 0:17622:17623  "0"
                let expr_1358 := 0x00
                /// @src 0:17585:17623  "Channels[_lcID].initialDeposit[0] != 0"
                let expr_1359 := iszero(eq(cleanup_t_uint256(expr_1357), convert_t_rational_0_by_1_to_t_uint256(expr_1358)))
                /// @src 0:17582:17777  "if(Channels[_lcID].initialDeposit[0] != 0) {..."
                if expr_1359 {
                    /// @src 0:17690:17698  "Channels"
                    let _33_slot := 0x02
                    let expr_1362_slot := _33_slot
                    /// @src 0:17699:17704  "_lcID"
                    let _34 := var__lcID_1320
                    let expr_1363 := _34
                    /// @src 0:17690:17705  "Channels[_lcID]"
                    let _35 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1362_slot,expr_1363)
                    let _36_slot := _35
                    let expr_1364_slot := _36_slot
                    /// @src 0:17690:17720  "Channels[_lcID].partyAddresses"
                    let _37 := add(expr_1364_slot, 0)
                    let _38_slot := _37
                    let expr_1365_slot := _38_slot
                    /// @src 0:17721:17722  "0"
                    let expr_1366 := 0x00
                    /// @src 0:17690:17723  "Channels[_lcID].partyAddresses[0]"

                    let _39, _40 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1365_slot, expr_1366)
                    let _41 := read_from_storage_split_dynamic_t_address(_39, _40)
                    let expr_1367 := _41
                    /// @src 0:17682:17724  "payable(Channels[_lcID].partyAddresses[0])"
                    let expr_1368 := convert_t_address_to_t_address_payable(expr_1367)
                    /// @src 0:17682:17733  "payable(Channels[_lcID].partyAddresses[0]).transfer"
                    let expr_1369_address := convert_t_address_payable_to_t_address(expr_1368)
                    /// @src 0:17734:17742  "Channels"
                    let _42_slot := 0x02
                    let expr_1370_slot := _42_slot
                    /// @src 0:17743:17748  "_lcID"
                    let _43 := var__lcID_1320
                    let expr_1371 := _43
                    /// @src 0:17734:17749  "Channels[_lcID]"
                    let _44 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1370_slot,expr_1371)
                    let _45_slot := _44
                    let expr_1372_slot := _45_slot
                    /// @src 0:17734:17761  "Channels[_lcID].ethBalances"
                    let _46 := add(expr_1372_slot, 2)
                    let _47_slot := _46
                    let expr_1373_slot := _47_slot
                    /// @src 0:17762:17763  "0"
                    let expr_1374 := 0x00
                    /// @src 0:17734:17764  "Channels[_lcID].ethBalances[0]"

                    let _48, _49 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_1373_slot, expr_1374)
                    let _50 := read_from_storage_split_dynamic_t_uint256(_48, _49)
                    let expr_1375 := _50
                    /// @src 0:17682:17765  "payable(Channels[_lcID].partyAddresses[0]).transfer(Channels[_lcID].ethBalances[0])"

                    let _51 := 0
                    if iszero(expr_1375) { _51 := 2300 }

                    let _52 := call(_51, expr_1369_address, expr_1375, 0, 0, 0, 0)

                    if iszero(_52) { revert_forward_1() }

                    /// @src 0:17582:17777  "if(Channels[_lcID].initialDeposit[0] != 0) {..."
                }
                /// @src 0:17790:17798  "Channels"
                let _53_slot := 0x02
                let expr_1380_slot := _53_slot
                /// @src 0:17799:17804  "_lcID"
                let _54 := var__lcID_1320
                let expr_1381 := _54
                /// @src 0:17790:17805  "Channels[_lcID]"
                let _55 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1380_slot,expr_1381)
                let _56_slot := _55
                let expr_1382_slot := _56_slot
                /// @src 0:17790:17820  "Channels[_lcID].initialDeposit"
                let _57 := add(expr_1382_slot, 10)
                let _58_slot := _57
                let expr_1383_slot := _58_slot
                /// @src 0:17821:17822  "1"
                let expr_1384 := 0x01
                /// @src 0:17790:17823  "Channels[_lcID].initialDeposit[1]"

                let _59, _60 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_1383_slot, expr_1384)
                let _61 := read_from_storage_split_dynamic_t_uint256(_59, _60)
                let expr_1385 := _61
                /// @src 0:17827:17828  "0"
                let expr_1386 := 0x00
                /// @src 0:17790:17828  "Channels[_lcID].initialDeposit[1] != 0"
                let expr_1387 := iszero(eq(cleanup_t_uint256(expr_1385), convert_t_rational_0_by_1_to_t_uint256(expr_1386)))
                /// @src 0:17787:18047  "if(Channels[_lcID].initialDeposit[1] != 0) {..."
                if expr_1387 {
                    /// @src 0:17895:17903  "Channels"
                    let _62_slot := 0x02
                    let expr_1389_slot := _62_slot
                    /// @src 0:17904:17909  "_lcID"
                    let _63 := var__lcID_1320
                    let expr_1390 := _63
                    /// @src 0:17895:17910  "Channels[_lcID]"
                    let _64 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1389_slot,expr_1390)
                    let _65_slot := _64
                    let expr_1391_slot := _65_slot
                    /// @src 0:17895:17916  "Channels[_lcID].token"
                    let _66 := add(expr_1391_slot, 19)
                    let _67_address := read_from_storage_split_offset_0_t_contract$_HumanStandardToken_$922(_66)
                    let expr_1392_address := _67_address
                    /// @src 0:17895:17925  "Channels[_lcID].token.transfer"
                    let expr_1393_address := convert_t_contract$_HumanStandardToken_$922_to_t_address(expr_1392_address)
                    let expr_1393_functionSelector := 0xa9059cbb
                    /// @src 0:17926:17934  "Channels"
                    let _68_slot := 0x02
                    let expr_1394_slot := _68_slot
                    /// @src 0:17935:17940  "_lcID"
                    let _69 := var__lcID_1320
                    let expr_1395 := _69
                    /// @src 0:17926:17941  "Channels[_lcID]"
                    let _70 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1394_slot,expr_1395)
                    let _71_slot := _70
                    let expr_1396_slot := _71_slot
                    /// @src 0:17926:17956  "Channels[_lcID].partyAddresses"
                    let _72 := add(expr_1396_slot, 0)
                    let _73_slot := _72
                    let expr_1397_slot := _73_slot
                    /// @src 0:17957:17958  "0"
                    let expr_1398 := 0x00
                    /// @src 0:17926:17959  "Channels[_lcID].partyAddresses[0]"

                    let _74, _75 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1397_slot, expr_1398)
                    let _76 := read_from_storage_split_dynamic_t_address(_74, _75)
                    let expr_1399 := _76
                    /// @src 0:17961:17969  "Channels"
                    let _77_slot := 0x02
                    let expr_1400_slot := _77_slot
                    /// @src 0:17970:17975  "_lcID"
                    let _78 := var__lcID_1320
                    let expr_1401 := _78
                    /// @src 0:17961:17976  "Channels[_lcID]"
                    let _79 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1400_slot,expr_1401)
                    let _80_slot := _79
                    let expr_1402_slot := _80_slot
                    /// @src 0:17961:17990  "Channels[_lcID].erc20Balances"
                    let _81 := add(expr_1402_slot, 6)
                    let _82_slot := _81
                    let expr_1403_slot := _82_slot
                    /// @src 0:17991:17992  "0"
                    let expr_1404 := 0x00
                    /// @src 0:17961:17993  "Channels[_lcID].erc20Balances[0]"

                    let _83, _84 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_1403_slot, expr_1404)
                    let _85 := read_from_storage_split_dynamic_t_uint256(_83, _84)
                    let expr_1405 := _85
                    /// @src 0:17895:17994  "Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[0], Channels[_lcID].erc20Balances[0])"

                    // storage for arguments and returned data
                    let _86 := allocate_unbounded()
                    mstore(_86, shift_left_224(expr_1393_functionSelector))
                    let _87 := abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(add(_86, 4) , expr_1399, expr_1405)

                    let _88 := call(gas(), expr_1393_address,  0,  _86, sub(_87, _86), _86, 32)

                    if iszero(_88) { revert_forward_1() }

                    let expr_1406
                    if _88 {

                        let _89 := 32

                        if gt(_89, returndatasize()) {
                            _89 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_86, _89)

                        // decode return parameters from external try-call into retVars
                        expr_1406 :=  abi_decode_tuple_t_bool_fromMemory(_86, add(_86, _89))
                    }
                    /// @src 0:17887:18035  "require(Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[0], Channels[_lcID].erc20Balances[0]),\"CreateChannel: token transfer failure\")"
                    require_helper_t_stringliteral_ec05e37bcff7fda60da4749488a9e691a8362b1493d4b9355637e1e752070c61(expr_1406)
                    /// @src 0:17787:18047  "if(Channels[_lcID].initialDeposit[1] != 0) {..."
                }
                /// @src 0:18074:18079  "_lcID"
                let _90 := var__lcID_1320
                let expr_1413 := _90
                /// @src 0:18081:18082  "0"
                let expr_1414 := 0x00
                /// @src 0:18084:18092  "Channels"
                let _91_slot := 0x02
                let expr_1415_slot := _91_slot
                /// @src 0:18093:18098  "_lcID"
                let _92 := var__lcID_1320
                let expr_1416 := _92
                /// @src 0:18084:18099  "Channels[_lcID]"
                let _93 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1415_slot,expr_1416)
                let _94_slot := _93
                let expr_1417_slot := _94_slot
                /// @src 0:18084:18111  "Channels[_lcID].ethBalances"
                let _95 := add(expr_1417_slot, 2)
                let _96_slot := _95
                let expr_1418_slot := _96_slot
                /// @src 0:18112:18113  "0"
                let expr_1419 := 0x00
                /// @src 0:18084:18114  "Channels[_lcID].ethBalances[0]"

                let _97, _98 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_1418_slot, expr_1419)
                let _99 := read_from_storage_split_dynamic_t_uint256(_97, _98)
                let expr_1420 := _99
                /// @src 0:18116:18124  "Channels"
                let _100_slot := 0x02
                let expr_1421_slot := _100_slot
                /// @src 0:18125:18130  "_lcID"
                let _101 := var__lcID_1320
                let expr_1422 := _101
                /// @src 0:18116:18131  "Channels[_lcID]"
                let _102 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1421_slot,expr_1422)
                let _103_slot := _102
                let expr_1423_slot := _103_slot
                /// @src 0:18116:18145  "Channels[_lcID].erc20Balances"
                let _104 := add(expr_1423_slot, 6)
                let _105_slot := _104
                let expr_1424_slot := _105_slot
                /// @src 0:18146:18147  "0"
                let expr_1425 := 0x00
                /// @src 0:18116:18148  "Channels[_lcID].erc20Balances[0]"

                let _106, _107 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_1424_slot, expr_1425)
                let _108 := read_from_storage_split_dynamic_t_uint256(_106, _107)
                let expr_1426 := _108
                /// @src 0:18150:18151  "0"
                let expr_1427 := 0x00
                /// @src 0:18153:18154  "0"
                let expr_1428 := 0x00
                /// @src 0:18063:18155  "DidLCClose(_lcID, 0, Channels[_lcID].ethBalances[0], Channels[_lcID].erc20Balances[0], 0, 0)"
                let _109 := 0x3adff1604df08a519c7848023123530b0c9a05bf082395a43c09e02406deea1a
                let _110 := convert_t_bytes32_to_t_bytes32(expr_1413)
                {
                    let _111 := allocate_unbounded()
                    let _112 := abi_encode_tuple_t_rational_0_by_1_t_uint256_t_uint256_t_rational_0_by_1_t_rational_0_by_1__to_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__fromStack(_111 , expr_1414, expr_1420, expr_1426, expr_1427, expr_1428)
                    log2(_111, sub(_112, _111) , _109, _110)
                }/// @src 0:18248:18256  "Channels"
                let _113_slot := 0x02
                let expr_1431_slot := _113_slot
                /// @src 0:18257:18262  "_lcID"
                let _114 := var__lcID_1320
                let expr_1432 := _114
                /// @src 0:18248:18263  "Channels[_lcID]"
                let _115 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1431_slot,expr_1432)
                /// @src 0:18241:18263  "delete Channels[_lcID]"
                storage_set_to_zero_t_struct$_Channel_$1079_storage(_115, 0)

            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

            function memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_uint256_$2_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                addr := add(baseRef, offset)
            }

            function read_from_memoryt_uint256(ptr) -> returnValue {

                let value := cleanup_t_uint256(mload(ptr))

                returnValue :=

                value

            }

            function store_literal_in_memory_0d520d6170829c514e3781e04b67cdee44efe129960db4b6ba85ae3c45f5eed1(memPtr) {

                mstore(add(memPtr, 0), "state balance does not match sen")

                mstore(add(memPtr, 32), "t value")

            }

            function abi_encode_t_stringliteral_0d520d6170829c514e3781e04b67cdee44efe129960db4b6ba85ae3c45f5eed1_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 39)
                store_literal_in_memory_0d520d6170829c514e3781e04b67cdee44efe129960db4b6ba85ae3c45f5eed1(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_0d520d6170829c514e3781e04b67cdee44efe129960db4b6ba85ae3c45f5eed1__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_0d520d6170829c514e3781e04b67cdee44efe129960db4b6ba85ae3c45f5eed1_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_0d520d6170829c514e3781e04b67cdee44efe129960db4b6ba85ae3c45f5eed1(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_0d520d6170829c514e3781e04b67cdee44efe129960db4b6ba85ae3c45f5eed1__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function convert_t_contract$_LedgerChannel_$3495_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_tuple_t_address_t_address_t_uint256__to_t_address_t_address_t_uint256__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

            }

            function store_literal_in_memory_04375097132999fc0af9701f67a0b98c7c23441b56e62d11704e78c14ca462b9(memPtr) {

                mstore(add(memPtr, 0), "joinChannel: token transfer fail")

                mstore(add(memPtr, 32), "ure")

            }

            function abi_encode_t_stringliteral_04375097132999fc0af9701f67a0b98c7c23441b56e62d11704e78c14ca462b9_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 35)
                store_literal_in_memory_04375097132999fc0af9701f67a0b98c7c23441b56e62d11704e78c14ca462b9(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_04375097132999fc0af9701f67a0b98c7c23441b56e62d11704e78c14ca462b9__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_04375097132999fc0af9701f67a0b98c7c23441b56e62d11704e78c14ca462b9_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_04375097132999fc0af9701f67a0b98c7c23441b56e62d11704e78c14ca462b9(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_04375097132999fc0af9701f67a0b98c7c23441b56e62d11704e78c14ca462b9__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

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

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
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

            function abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

            }

            /// @ast-id 1574
            /// @src 0:18278:19270  "function joinChannel(bytes32 _lcID, uint256[2] memory _balances) public payable {..."
            function fun_joinChannel_1574(var__lcID_1439, var__balances_1443_mpos) {

                /// @src 0:18425:18433  "Channels"
                let _116_slot := 0x02
                let expr_1447_slot := _116_slot
                /// @src 0:18434:18439  "_lcID"
                let _117 := var__lcID_1439
                let expr_1448 := _117
                /// @src 0:18425:18440  "Channels[_lcID]"
                let _118 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1447_slot,expr_1448)
                let _119_slot := _118
                let expr_1449_slot := _119_slot
                /// @src 0:18425:18447  "Channels[_lcID].isOpen"
                let _120 := add(expr_1449_slot, 17)
                let _121 := read_from_storage_split_offset_0_t_bool(_120)
                let expr_1450 := _121
                /// @src 0:18451:18456  "false"
                let expr_1451 := 0x00
                /// @src 0:18425:18456  "Channels[_lcID].isOpen == false"
                let expr_1452 := eq(cleanup_t_bool(expr_1450), cleanup_t_bool(expr_1451))
                /// @src 0:18417:18457  "require(Channels[_lcID].isOpen == false)"
                require_helper(expr_1452)
                /// @src 0:18476:18486  "msg.sender"
                let expr_1457 := caller()
                /// @src 0:18490:18498  "Channels"
                let _122_slot := 0x02
                let expr_1458_slot := _122_slot
                /// @src 0:18499:18504  "_lcID"
                let _123 := var__lcID_1439
                let expr_1459 := _123
                /// @src 0:18490:18505  "Channels[_lcID]"
                let _124 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1458_slot,expr_1459)
                let _125_slot := _124
                let expr_1460_slot := _125_slot
                /// @src 0:18490:18520  "Channels[_lcID].partyAddresses"
                let _126 := add(expr_1460_slot, 0)
                let _127_slot := _126
                let expr_1461_slot := _127_slot
                /// @src 0:18521:18522  "1"
                let expr_1462 := 0x01
                /// @src 0:18490:18523  "Channels[_lcID].partyAddresses[1]"

                let _128, _129 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1461_slot, expr_1462)
                let _130 := read_from_storage_split_dynamic_t_address(_128, _129)
                let expr_1463 := _130
                /// @src 0:18476:18523  "msg.sender == Channels[_lcID].partyAddresses[1]"
                let expr_1464 := eq(cleanup_t_address(expr_1457), cleanup_t_address(expr_1463))
                /// @src 0:18468:18524  "require(msg.sender == Channels[_lcID].partyAddresses[1])"
                require_helper(expr_1464)
                /// @src 0:18539:18548  "_balances"
                let _131_mpos := var__balances_1443_mpos
                let expr_1467_mpos := _131_mpos
                /// @src 0:18549:18550  "0"
                let expr_1468 := 0x00
                /// @src 0:18539:18551  "_balances[0]"
                let _132 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1467_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1468)))
                let expr_1469 := _132
                /// @src 0:18555:18556  "0"
                let expr_1470 := 0x00
                /// @src 0:18539:18556  "_balances[0] != 0"
                let expr_1471 := iszero(eq(cleanup_t_uint256(expr_1469), convert_t_rational_0_by_1_to_t_uint256(expr_1470)))
                /// @src 0:18536:18719  "if(_balances[0] != 0) {..."
                if expr_1471 {
                    /// @src 0:18581:18590  "msg.value"
                    let expr_1474 := callvalue()
                    /// @src 0:18594:18603  "_balances"
                    let _133_mpos := var__balances_1443_mpos
                    let expr_1475_mpos := _133_mpos
                    /// @src 0:18604:18605  "0"
                    let expr_1476 := 0x00
                    /// @src 0:18594:18606  "_balances[0]"
                    let _134 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1475_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1476)))
                    let expr_1477 := _134
                    /// @src 0:18581:18606  "msg.value == _balances[0]"
                    let expr_1478 := eq(cleanup_t_uint256(expr_1474), cleanup_t_uint256(expr_1477))
                    /// @src 0:18573:18650  "require(msg.value == _balances[0], \"state balance does not match sent value\")"
                    require_helper_t_stringliteral_0d520d6170829c514e3781e04b67cdee44efe129960db4b6ba85ae3c45f5eed1(expr_1478)
                    /// @src 0:18698:18707  "msg.value"
                    let expr_1489 := callvalue()
                    /// @src 0:18665:18673  "Channels"
                    let _135_slot := 0x02
                    let expr_1482_slot := _135_slot
                    /// @src 0:18674:18679  "_lcID"
                    let _136 := var__lcID_1439
                    let expr_1483 := _136
                    /// @src 0:18665:18680  "Channels[_lcID]"
                    let _137 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1482_slot,expr_1483)
                    let _138_slot := _137
                    let expr_1484_slot := _138_slot
                    /// @src 0:18665:18692  "Channels[_lcID].ethBalances"
                    let _139 := add(expr_1484_slot, 2)
                    let _140_slot := _139
                    let expr_1485_slot := _140_slot
                    /// @src 0:18693:18694  "1"
                    let expr_1486 := 0x01
                    /// @src 0:18665:18695  "Channels[_lcID].ethBalances[1]"

                    let _141, _142 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_1485_slot, expr_1486)
                    /// @src 0:18665:18707  "Channels[_lcID].ethBalances[1] = msg.value"
                    update_storage_value_t_uint256_to_t_uint256(_141, _142, expr_1489)
                    let expr_1490 := expr_1489
                    /// @src 0:18536:18719  "if(_balances[0] != 0) {..."
                }
                /// @src 0:18732:18741  "_balances"
                let _143_mpos := var__balances_1443_mpos
                let expr_1494_mpos := _143_mpos
                /// @src 0:18742:18743  "1"
                let expr_1495 := 0x01
                /// @src 0:18732:18744  "_balances[1]"
                let _144 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1494_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1495)))
                let expr_1496 := _144
                /// @src 0:18748:18749  "0"
                let expr_1497 := 0x00
                /// @src 0:18732:18749  "_balances[1] != 0"
                let expr_1498 := iszero(eq(cleanup_t_uint256(expr_1496), convert_t_rational_0_by_1_to_t_uint256(expr_1497)))
                /// @src 0:18729:18962  "if(_balances[1] != 0) {..."
                if expr_1498 {
                    /// @src 0:18774:18782  "Channels"
                    let _145_slot := 0x02
                    let expr_1500_slot := _145_slot
                    /// @src 0:18783:18788  "_lcID"
                    let _146 := var__lcID_1439
                    let expr_1501 := _146
                    /// @src 0:18774:18789  "Channels[_lcID]"
                    let _147 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1500_slot,expr_1501)
                    let _148_slot := _147
                    let expr_1502_slot := _148_slot
                    /// @src 0:18774:18795  "Channels[_lcID].token"
                    let _149 := add(expr_1502_slot, 19)
                    let _150_address := read_from_storage_split_offset_0_t_contract$_HumanStandardToken_$922(_149)
                    let expr_1503_address := _150_address
                    /// @src 0:18774:18808  "Channels[_lcID].token.transferFrom"
                    let expr_1504_address := convert_t_contract$_HumanStandardToken_$922_to_t_address(expr_1503_address)
                    let expr_1504_functionSelector := 0x23b872dd
                    /// @src 0:18809:18819  "msg.sender"
                    let expr_1506 := caller()
                    /// @src 0:18829:18833  "this"
                    let expr_1509_address := address()
                    /// @src 0:18821:18834  "address(this)"
                    let expr_1510 := convert_t_contract$_LedgerChannel_$3495_to_t_address(expr_1509_address)
                    /// @src 0:18836:18845  "_balances"
                    let _151_mpos := var__balances_1443_mpos
                    let expr_1511_mpos := _151_mpos
                    /// @src 0:18846:18847  "1"
                    let expr_1512 := 0x01
                    /// @src 0:18836:18848  "_balances[1]"
                    let _152 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1511_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1512)))
                    let expr_1513 := _152
                    /// @src 0:18774:18849  "Channels[_lcID].token.transferFrom(msg.sender, address(this), _balances[1])"

                    // storage for arguments and returned data
                    let _153 := allocate_unbounded()
                    mstore(_153, shift_left_224(expr_1504_functionSelector))
                    let _154 := abi_encode_tuple_t_address_t_address_t_uint256__to_t_address_t_address_t_uint256__fromStack(add(_153, 4) , expr_1506, expr_1510, expr_1513)

                    let _155 := call(gas(), expr_1504_address,  0,  _153, sub(_154, _153), _153, 32)

                    if iszero(_155) { revert_forward_1() }

                    let expr_1514
                    if _155 {

                        let _156 := 32

                        if gt(_156, returndatasize()) {
                            _156 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_153, _156)

                        // decode return parameters from external try-call into retVars
                        expr_1514 :=  abi_decode_tuple_t_bool_fromMemory(_153, add(_153, _156))
                    }
                    /// @src 0:18766:18888  "require(Channels[_lcID].token.transferFrom(msg.sender, address(this), _balances[1]),\"joinChannel: token transfer failure\")"
                    require_helper_t_stringliteral_04375097132999fc0af9701f67a0b98c7c23441b56e62d11704e78c14ca462b9(expr_1514)
                    /// @src 0:18938:18947  "_balances"
                    let _157_mpos := var__balances_1443_mpos
                    let expr_1524_mpos := _157_mpos
                    /// @src 0:18948:18949  "1"
                    let expr_1525 := 0x01
                    /// @src 0:18938:18950  "_balances[1]"
                    let _158 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1524_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1525)))
                    let expr_1526 := _158
                    /// @src 0:18903:18911  "Channels"
                    let _159_slot := 0x02
                    let expr_1518_slot := _159_slot
                    /// @src 0:18912:18917  "_lcID"
                    let _160 := var__lcID_1439
                    let expr_1519 := _160
                    /// @src 0:18903:18918  "Channels[_lcID]"
                    let _161 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1518_slot,expr_1519)
                    let _162_slot := _161
                    let expr_1520_slot := _162_slot
                    /// @src 0:18903:18932  "Channels[_lcID].erc20Balances"
                    let _163 := add(expr_1520_slot, 6)
                    let _164_slot := _163
                    let expr_1521_slot := _164_slot
                    /// @src 0:18933:18934  "1"
                    let expr_1522 := 0x01
                    /// @src 0:18903:18935  "Channels[_lcID].erc20Balances[1]"

                    let _165, _166 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_1521_slot, expr_1522)
                    /// @src 0:18903:18950  "Channels[_lcID].erc20Balances[1] = _balances[1]"
                    update_storage_value_t_uint256_to_t_uint256(_165, _166, expr_1526)
                    let expr_1527 := expr_1526
                    /// @src 0:18729:18962  "if(_balances[1] != 0) {..."
                }
                /// @src 0:19008:19017  "_balances"
                let _167_mpos := var__balances_1443_mpos
                let expr_1537_mpos := _167_mpos
                /// @src 0:19018:19019  "0"
                let expr_1538 := 0x00
                /// @src 0:19008:19020  "_balances[0]"
                let _168 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1537_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1538)))
                let expr_1539 := _168
                /// @src 0:18973:18981  "Channels"
                let _169_slot := 0x02
                let expr_1531_slot := _169_slot
                /// @src 0:18982:18987  "_lcID"
                let _170 := var__lcID_1439
                let expr_1532 := _170
                /// @src 0:18973:18988  "Channels[_lcID]"
                let _171 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1531_slot,expr_1532)
                let _172_slot := _171
                let expr_1533_slot := _172_slot
                /// @src 0:18973:19003  "Channels[_lcID].initialDeposit"
                let _173 := add(expr_1533_slot, 10)
                let _174_slot := _173
                let expr_1534_slot := _174_slot
                /// @src 0:19004:19005  "0"
                let expr_1535 := 0x00
                /// @src 0:18973:19006  "Channels[_lcID].initialDeposit[0]"

                let _175, _176 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_1534_slot, expr_1535)
                /// @src 0:18973:19020  "Channels[_lcID].initialDeposit[0]+=_balances[0]"
                let _177 := read_from_storage_split_dynamic_t_uint256(_175, _176)
                let expr_1540 := checked_add_t_uint256(_177, expr_1539)

                update_storage_value_t_uint256_to_t_uint256(_175, _176, expr_1540)
                /// @src 0:19066:19075  "_balances"
                let _178_mpos := var__balances_1443_mpos
                let expr_1548_mpos := _178_mpos
                /// @src 0:19076:19077  "1"
                let expr_1549 := 0x01
                /// @src 0:19066:19078  "_balances[1]"
                let _179 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1548_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1549)))
                let expr_1550 := _179
                /// @src 0:19031:19039  "Channels"
                let _180_slot := 0x02
                let expr_1542_slot := _180_slot
                /// @src 0:19040:19045  "_lcID"
                let _181 := var__lcID_1439
                let expr_1543 := _181
                /// @src 0:19031:19046  "Channels[_lcID]"
                let _182 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1542_slot,expr_1543)
                let _183_slot := _182
                let expr_1544_slot := _183_slot
                /// @src 0:19031:19061  "Channels[_lcID].initialDeposit"
                let _184 := add(expr_1544_slot, 10)
                let _185_slot := _184
                let expr_1545_slot := _185_slot
                /// @src 0:19062:19063  "1"
                let expr_1546 := 0x01
                /// @src 0:19031:19064  "Channels[_lcID].initialDeposit[1]"

                let _186, _187 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_1545_slot, expr_1546)
                /// @src 0:19031:19078  "Channels[_lcID].initialDeposit[1]+=_balances[1]"
                let _188 := read_from_storage_split_dynamic_t_uint256(_186, _187)
                let expr_1551 := checked_add_t_uint256(_188, expr_1550)

                update_storage_value_t_uint256_to_t_uint256(_186, _187, expr_1551)
                /// @src 0:19173:19177  "true"
                let expr_1557 := 0x01
                /// @src 0:19148:19156  "Channels"
                let _189_slot := 0x02
                let expr_1553_slot := _189_slot
                /// @src 0:19157:19162  "_lcID"
                let _190 := var__lcID_1439
                let expr_1554 := _190
                /// @src 0:19148:19163  "Channels[_lcID]"
                let _191 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1553_slot,expr_1554)
                let _192_slot := _191
                let expr_1555_slot := _192_slot
                /// @src 0:19148:19170  "Channels[_lcID].isOpen"
                let _193 := add(expr_1555_slot, 17)
                /// @src 0:19148:19177  "Channels[_lcID].isOpen = true"
                update_storage_value_offset_0_t_bool_to_t_bool(_193, expr_1557)
                let expr_1558 := expr_1557
                /// @src 0:19188:19201  "numChannels++"
                let _195 := read_from_storage_split_offset_0_t_uint256(0x00)
                let _194 := increment_t_uint256(_195)
                update_storage_value_offset_0_t_uint256_to_t_uint256(0x00, _194)
                let expr_1561 := _195
                /// @src 0:19228:19233  "_lcID"
                let _196 := var__lcID_1439
                let expr_1564 := _196
                /// @src 0:19235:19244  "_balances"
                let _197_mpos := var__balances_1443_mpos
                let expr_1565_mpos := _197_mpos
                /// @src 0:19245:19246  "0"
                let expr_1566 := 0x00
                /// @src 0:19235:19247  "_balances[0]"
                let _198 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1565_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1566)))
                let expr_1567 := _198
                /// @src 0:19249:19258  "_balances"
                let _199_mpos := var__balances_1443_mpos
                let expr_1568_mpos := _199_mpos
                /// @src 0:19259:19260  "1"
                let expr_1569 := 0x01
                /// @src 0:19249:19261  "_balances[1]"
                let _200 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1568_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1569)))
                let expr_1570 := _200
                /// @src 0:19218:19262  "DidLCJoin(_lcID, _balances[0], _balances[1])"
                let _201 := 0x594ae021f7ce477644648fbf16215189f3d80a93a772c52f7d6fa9e2050013cb
                let _202 := convert_t_bytes32_to_t_bytes32(expr_1564)
                {
                    let _203 := allocate_unbounded()
                    let _204 := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(_203 , expr_1567, expr_1570)
                    log2(_203, sub(_204, _203) , _201, _202)
                }
            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

            function memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_uint256_$4_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                addr := add(baseRef, offset)
            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            function cleanup_t_rational_3_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_3_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_rational_0_by_1(value)))
            }

            function leftAlign_t_bytes32(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes32(cleanup_t_bytes32(value)))
            }

            function shift_left_248(value) -> newValue {
                newValue :=

                shl(248, value)

            }

            function leftAlign_t_uint8(value) -> aligned {
                aligned := shift_left_248(value)
            }

            function leftAlign_t_bool(value) -> aligned {
                aligned := leftAlign_t_uint8(value)
            }

            function abi_encode_t_bool_to_t_bool_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bool(cleanup_t_bool(value)))
            }

            function leftAlign_t_uint256(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_uint256(cleanup_t_uint256(value)))
            }

            function shift_left_96(value) -> newValue {
                newValue :=

                shl(96, value)

            }

            function leftAlign_t_uint160(value) -> aligned {
                aligned := shift_left_96(value)
            }

            function leftAlign_t_address(value) -> aligned {
                aligned := leftAlign_t_uint160(value)
            }

            function abi_encode_t_address_to_t_address_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_address(cleanup_t_address(value)))
            }

            function abi_encode_tuple_packed_t_bytes32_t_bool_t_uint256_t_uint256_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256_t_uint256__to_t_bytes32_t_bool_t_uint256_t_uint256_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256_t_uint256__nonPadded_inplace_fromStack(pos , value0, value1, value2, value3, value4, value5, value6, value7, value8, value9, value10) -> end {

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 32)

                abi_encode_t_bool_to_t_bool_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 1)

                abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value2,  pos)
                pos := add(pos, 32)

                abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value3,  pos)
                pos := add(pos, 32)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value4,  pos)
                pos := add(pos, 32)

                abi_encode_t_address_to_t_address_nonPadded_inplace_fromStack(value5,  pos)
                pos := add(pos, 20)

                abi_encode_t_address_to_t_address_nonPadded_inplace_fromStack(value6,  pos)
                pos := add(pos, 20)

                abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value7,  pos)
                pos := add(pos, 32)

                abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value8,  pos)
                pos := add(pos, 32)

                abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value9,  pos)
                pos := add(pos, 32)

                abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value10,  pos)
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

            function convert_t_type$_t_contract$_ECTools_$645_$_to_t_address(value) -> converted {
                converted := value
            }

            function abi_decode_t_address_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_address(value)
            }

            function abi_decode_tuple_t_address_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack_library(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack_library(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack_library(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack_library(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_bytes32_t_string_memory_ptr__to_t_bytes32_t_string_memory_ptr__fromStack_library(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_bytes32_to_t_bytes32_fromStack_library(value0,  add(headStart, 0))

                mstore(add(headStart, 32), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack_library(value1,  tail)

            }

            function store_literal_in_memory_af68565ee9bde6a91d1045d64241250b214f23c00f514bb23ef3c6b6ed75a097(memPtr) {

                mstore(add(memPtr, 0), "happyCloseChannel: token transfe")

                mstore(add(memPtr, 32), "r failure")

            }

            function abi_encode_t_stringliteral_af68565ee9bde6a91d1045d64241250b214f23c00f514bb23ef3c6b6ed75a097_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 41)
                store_literal_in_memory_af68565ee9bde6a91d1045d64241250b214f23c00f514bb23ef3c6b6ed75a097(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_af68565ee9bde6a91d1045d64241250b214f23c00f514bb23ef3c6b6ed75a097__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_af68565ee9bde6a91d1045d64241250b214f23c00f514bb23ef3c6b6ed75a097_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_af68565ee9bde6a91d1045d64241250b214f23c00f514bb23ef3c6b6ed75a097(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_af68565ee9bde6a91d1045d64241250b214f23c00f514bb23ef3c6b6ed75a097__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function decrement_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0x00) { panic_error_0x11() }
                ret := sub(value, 1)
            }

            function abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

            }

            /// @ast-id 2028
            /// @src 0:20897:23154  "function consensusCloseChannel(..."
            function fun_consensusCloseChannel_2028(var__lcID_1741, var__sequence_1743, var__balances_1747_mpos, var__sigA_1749_mpos, var__sigI_1751_mpos) {

                /// @src 0:21304:21312  "Channels"
                let _205_slot := 0x02
                let expr_1755_slot := _205_slot
                /// @src 0:21313:21318  "_lcID"
                let _206 := var__lcID_1741
                let expr_1756 := _206
                /// @src 0:21304:21319  "Channels[_lcID]"
                let _207 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1755_slot,expr_1756)
                let _208_slot := _207
                let expr_1757_slot := _208_slot
                /// @src 0:21304:21326  "Channels[_lcID].isOpen"
                let _209 := add(expr_1757_slot, 17)
                let _210 := read_from_storage_split_offset_0_t_bool(_209)
                let expr_1758 := _210
                /// @src 0:21330:21334  "true"
                let expr_1759 := 0x01
                /// @src 0:21304:21334  "Channels[_lcID].isOpen == true"
                let expr_1760 := eq(cleanup_t_bool(expr_1758), cleanup_t_bool(expr_1759))
                /// @src 0:21296:21335  "require(Channels[_lcID].isOpen == true)"
                require_helper(expr_1760)
                /// @src 0:21372:21380  "Channels"
                let _211_slot := 0x02
                let expr_1765_slot := _211_slot
                /// @src 0:21381:21386  "_lcID"
                let _212 := var__lcID_1741
                let expr_1766 := _212
                /// @src 0:21372:21387  "Channels[_lcID]"
                let _213 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1765_slot,expr_1766)
                let _214_slot := _213
                let expr_1767_slot := _214_slot
                /// @src 0:21372:21402  "Channels[_lcID].initialDeposit"
                let _215 := add(expr_1767_slot, 10)
                let _216_slot := _215
                let expr_1768_slot := _216_slot
                /// @src 0:21403:21404  "0"
                let expr_1769 := 0x00
                /// @src 0:21372:21405  "Channels[_lcID].initialDeposit[0]"

                let _217, _218 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_1768_slot, expr_1769)
                let _219 := read_from_storage_split_dynamic_t_uint256(_217, _218)
                let expr_1770 := _219
                /// @src 0:21408:21416  "Channels"
                let _220_slot := 0x02
                let expr_1771_slot := _220_slot
                /// @src 0:21417:21422  "_lcID"
                let _221 := var__lcID_1741
                let expr_1772 := _221
                /// @src 0:21408:21423  "Channels[_lcID]"
                let _222 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1771_slot,expr_1772)
                let _223_slot := _222
                let expr_1773_slot := _223_slot
                /// @src 0:21408:21435  "Channels[_lcID].ethBalances"
                let _224 := add(expr_1773_slot, 2)
                let _225_slot := _224
                let expr_1774_slot := _225_slot
                /// @src 0:21436:21437  "2"
                let expr_1775 := 0x02
                /// @src 0:21408:21438  "Channels[_lcID].ethBalances[2]"

                let _226, _227 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_1774_slot, expr_1775)
                let _228 := read_from_storage_split_dynamic_t_uint256(_226, _227)
                let expr_1776 := _228
                /// @src 0:21372:21438  "Channels[_lcID].initialDeposit[0] + Channels[_lcID].ethBalances[2]"
                let expr_1777 := checked_add_t_uint256(expr_1770, expr_1776)

                /// @src 0:21441:21449  "Channels"
                let _229_slot := 0x02
                let expr_1778_slot := _229_slot
                /// @src 0:21450:21455  "_lcID"
                let _230 := var__lcID_1741
                let expr_1779 := _230
                /// @src 0:21441:21456  "Channels[_lcID]"
                let _231 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1778_slot,expr_1779)
                let _232_slot := _231
                let expr_1780_slot := _232_slot
                /// @src 0:21441:21468  "Channels[_lcID].ethBalances"
                let _233 := add(expr_1780_slot, 2)
                let _234_slot := _233
                let expr_1781_slot := _234_slot
                /// @src 0:21469:21470  "3"
                let expr_1782 := 0x03
                /// @src 0:21441:21471  "Channels[_lcID].ethBalances[3]"

                let _235, _236 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_1781_slot, expr_1782)
                let _237 := read_from_storage_split_dynamic_t_uint256(_235, _236)
                let expr_1783 := _237
                /// @src 0:21372:21471  "Channels[_lcID].initialDeposit[0] + Channels[_lcID].ethBalances[2] + Channels[_lcID].ethBalances[3]"
                let expr_1784 := checked_add_t_uint256(expr_1777, expr_1783)

                /// @src 0:21346:21471  "uint256 totalEthDeposit = Channels[_lcID].initialDeposit[0] + Channels[_lcID].ethBalances[2] + Channels[_lcID].ethBalances[3]"
                let var_totalEthDeposit_1764 := expr_1784
                /// @src 0:21510:21518  "Channels"
                let _238_slot := 0x02
                let expr_1788_slot := _238_slot
                /// @src 0:21519:21524  "_lcID"
                let _239 := var__lcID_1741
                let expr_1789 := _239
                /// @src 0:21510:21525  "Channels[_lcID]"
                let _240 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1788_slot,expr_1789)
                let _241_slot := _240
                let expr_1790_slot := _241_slot
                /// @src 0:21510:21540  "Channels[_lcID].initialDeposit"
                let _242 := add(expr_1790_slot, 10)
                let _243_slot := _242
                let expr_1791_slot := _243_slot
                /// @src 0:21541:21542  "1"
                let expr_1792 := 0x01
                /// @src 0:21510:21543  "Channels[_lcID].initialDeposit[1]"

                let _244, _245 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_1791_slot, expr_1792)
                let _246 := read_from_storage_split_dynamic_t_uint256(_244, _245)
                let expr_1793 := _246
                /// @src 0:21546:21554  "Channels"
                let _247_slot := 0x02
                let expr_1794_slot := _247_slot
                /// @src 0:21555:21560  "_lcID"
                let _248 := var__lcID_1741
                let expr_1795 := _248
                /// @src 0:21546:21561  "Channels[_lcID]"
                let _249 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1794_slot,expr_1795)
                let _250_slot := _249
                let expr_1796_slot := _250_slot
                /// @src 0:21546:21575  "Channels[_lcID].erc20Balances"
                let _251 := add(expr_1796_slot, 6)
                let _252_slot := _251
                let expr_1797_slot := _252_slot
                /// @src 0:21576:21577  "2"
                let expr_1798 := 0x02
                /// @src 0:21546:21578  "Channels[_lcID].erc20Balances[2]"

                let _253, _254 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_1797_slot, expr_1798)
                let _255 := read_from_storage_split_dynamic_t_uint256(_253, _254)
                let expr_1799 := _255
                /// @src 0:21510:21578  "Channels[_lcID].initialDeposit[1] + Channels[_lcID].erc20Balances[2]"
                let expr_1800 := checked_add_t_uint256(expr_1793, expr_1799)

                /// @src 0:21581:21589  "Channels"
                let _256_slot := 0x02
                let expr_1801_slot := _256_slot
                /// @src 0:21590:21595  "_lcID"
                let _257 := var__lcID_1741
                let expr_1802 := _257
                /// @src 0:21581:21596  "Channels[_lcID]"
                let _258 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1801_slot,expr_1802)
                let _259_slot := _258
                let expr_1803_slot := _259_slot
                /// @src 0:21581:21610  "Channels[_lcID].erc20Balances"
                let _260 := add(expr_1803_slot, 6)
                let _261_slot := _260
                let expr_1804_slot := _261_slot
                /// @src 0:21611:21612  "3"
                let expr_1805 := 0x03
                /// @src 0:21581:21613  "Channels[_lcID].erc20Balances[3]"

                let _262, _263 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_1804_slot, expr_1805)
                let _264 := read_from_storage_split_dynamic_t_uint256(_262, _263)
                let expr_1806 := _264
                /// @src 0:21510:21613  "Channels[_lcID].initialDeposit[1] + Channels[_lcID].erc20Balances[2] + Channels[_lcID].erc20Balances[3]"
                let expr_1807 := checked_add_t_uint256(expr_1800, expr_1806)

                /// @src 0:21482:21613  "uint256 totalTokenDeposit = Channels[_lcID].initialDeposit[1] + Channels[_lcID].erc20Balances[2] + Channels[_lcID].erc20Balances[3]"
                let var_totalTokenDeposit_1787 := expr_1807
                /// @src 0:21632:21647  "totalEthDeposit"
                let _265 := var_totalEthDeposit_1764
                let expr_1810 := _265
                /// @src 0:21651:21660  "_balances"
                let _266_mpos := var__balances_1747_mpos
                let expr_1811_mpos := _266_mpos
                /// @src 0:21661:21662  "0"
                let expr_1812 := 0x00
                /// @src 0:21651:21663  "_balances[0]"
                let _267 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_1811_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1812)))
                let expr_1813 := _267
                /// @src 0:21666:21675  "_balances"
                let _268_mpos := var__balances_1747_mpos
                let expr_1814_mpos := _268_mpos
                /// @src 0:21676:21677  "1"
                let expr_1815 := 0x01
                /// @src 0:21666:21678  "_balances[1]"
                let _269 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_1814_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1815)))
                let expr_1816 := _269
                /// @src 0:21651:21678  "_balances[0] + _balances[1]"
                let expr_1817 := checked_add_t_uint256(expr_1813, expr_1816)

                /// @src 0:21632:21678  "totalEthDeposit == _balances[0] + _balances[1]"
                let expr_1818 := eq(cleanup_t_uint256(expr_1810), cleanup_t_uint256(expr_1817))
                /// @src 0:21624:21679  "require(totalEthDeposit == _balances[0] + _balances[1])"
                require_helper(expr_1818)
                /// @src 0:21698:21715  "totalTokenDeposit"
                let _270 := var_totalTokenDeposit_1787
                let expr_1822 := _270
                /// @src 0:21719:21728  "_balances"
                let _271_mpos := var__balances_1747_mpos
                let expr_1823_mpos := _271_mpos
                /// @src 0:21729:21730  "2"
                let expr_1824 := 0x02
                /// @src 0:21719:21731  "_balances[2]"
                let _272 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_1823_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_1824)))
                let expr_1825 := _272
                /// @src 0:21734:21743  "_balances"
                let _273_mpos := var__balances_1747_mpos
                let expr_1826_mpos := _273_mpos
                /// @src 0:21744:21745  "3"
                let expr_1827 := 0x03
                /// @src 0:21734:21746  "_balances[3]"
                let _274 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_1826_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_1827)))
                let expr_1828 := _274
                /// @src 0:21719:21746  "_balances[2] + _balances[3]"
                let expr_1829 := checked_add_t_uint256(expr_1825, expr_1828)

                /// @src 0:21698:21746  "totalTokenDeposit == _balances[2] + _balances[3]"
                let expr_1830 := eq(cleanup_t_uint256(expr_1822), cleanup_t_uint256(expr_1829))
                /// @src 0:21690:21747  "require(totalTokenDeposit == _balances[2] + _balances[3])"
                require_helper(expr_1830)
                /// @src 0:21835:21840  "_lcID"
                let _275 := var__lcID_1741
                let expr_1838 := _275
                /// @src 0:21859:21863  "true"
                let expr_1839 := 0x01
                /// @src 0:21882:21891  "_sequence"
                let _276 := var__sequence_1743
                let expr_1840 := _276
                /// @src 0:21918:21919  "0"
                let expr_1843 := 0x00
                /// @src 0:21910:21920  "uint256(0)"
                let expr_1844 := convert_t_rational_0_by_1_to_t_uint256(expr_1843)
                /// @src 0:21947:21950  "0x0"
                let expr_1847 := 0x00
                /// @src 0:21939:21951  "bytes32(0x0)"
                let expr_1848 := convert_t_rational_0_by_1_to_t_bytes32(expr_1847)
                /// @src 0:21970:21978  "Channels"
                let _277_slot := 0x02
                let expr_1849_slot := _277_slot
                /// @src 0:21979:21984  "_lcID"
                let _278 := var__lcID_1741
                let expr_1850 := _278
                /// @src 0:21970:21985  "Channels[_lcID]"
                let _279 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1849_slot,expr_1850)
                let _280_slot := _279
                let expr_1851_slot := _280_slot
                /// @src 0:21970:22000  "Channels[_lcID].partyAddresses"
                let _281 := add(expr_1851_slot, 0)
                let _282_slot := _281
                let expr_1852_slot := _282_slot
                /// @src 0:22001:22002  "0"
                let expr_1853 := 0x00
                /// @src 0:21970:22003  "Channels[_lcID].partyAddresses[0]"

                let _283, _284 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1852_slot, expr_1853)
                let _285 := read_from_storage_split_dynamic_t_address(_283, _284)
                let expr_1854 := _285
                /// @src 0:22022:22030  "Channels"
                let _286_slot := 0x02
                let expr_1855_slot := _286_slot
                /// @src 0:22031:22036  "_lcID"
                let _287 := var__lcID_1741
                let expr_1856 := _287
                /// @src 0:22022:22037  "Channels[_lcID]"
                let _288 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1855_slot,expr_1856)
                let _289_slot := _288
                let expr_1857_slot := _289_slot
                /// @src 0:22022:22052  "Channels[_lcID].partyAddresses"
                let _290 := add(expr_1857_slot, 0)
                let _291_slot := _290
                let expr_1858_slot := _291_slot
                /// @src 0:22053:22054  "1"
                let expr_1859 := 0x01
                /// @src 0:22022:22055  "Channels[_lcID].partyAddresses[1]"

                let _292, _293 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1858_slot, expr_1859)
                let _294 := read_from_storage_split_dynamic_t_address(_292, _293)
                let expr_1860 := _294
                /// @src 0:22074:22083  "_balances"
                let _295_mpos := var__balances_1747_mpos
                let expr_1861_mpos := _295_mpos
                /// @src 0:22084:22085  "0"
                let expr_1862 := 0x00
                /// @src 0:22074:22086  "_balances[0]"
                let _296 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_1861_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1862)))
                let expr_1863 := _296
                /// @src 0:22105:22114  "_balances"
                let _297_mpos := var__balances_1747_mpos
                let expr_1864_mpos := _297_mpos
                /// @src 0:22115:22116  "1"
                let expr_1865 := 0x01
                /// @src 0:22105:22117  "_balances[1]"
                let _298 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_1864_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1865)))
                let expr_1866 := _298
                /// @src 0:22136:22145  "_balances"
                let _299_mpos := var__balances_1747_mpos
                let expr_1867_mpos := _299_mpos
                /// @src 0:22146:22147  "2"
                let expr_1868 := 0x02
                /// @src 0:22136:22148  "_balances[2]"
                let _300 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_1867_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_1868)))
                let expr_1869 := _300
                /// @src 0:22167:22176  "_balances"
                let _301_mpos := var__balances_1747_mpos
                let expr_1870_mpos := _301_mpos
                /// @src 0:22177:22178  "3"
                let expr_1871 := 0x03
                /// @src 0:22167:22179  "_balances[3]"
                let _302 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_1870_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_1871)))
                let expr_1872 := _302
                /// @src 0:21800:22194  "abi.encodePacked(..."

                let expr_1873_mpos := allocate_unbounded()
                let _303 := add(expr_1873_mpos, 0x20)

                let _304 := abi_encode_tuple_packed_t_bytes32_t_bool_t_uint256_t_uint256_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256_t_uint256__to_t_bytes32_t_bool_t_uint256_t_uint256_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256_t_uint256__nonPadded_inplace_fromStack(_303, expr_1838, expr_1839, expr_1840, expr_1844, expr_1848, expr_1854, expr_1860, expr_1863, expr_1866, expr_1869, expr_1872)
                mstore(expr_1873_mpos, sub(_304, add(expr_1873_mpos, 0x20)))
                finalize_allocation(expr_1873_mpos, sub(_304, expr_1873_mpos))
                /// @src 0:21776:22205  "keccak256(..."
                let expr_1874 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_1873_mpos), array_length_t_bytes_memory_ptr(expr_1873_mpos))
                /// @src 0:21759:22205  "bytes32 _state = keccak256(..."
                let var__state_1834 := expr_1874
                /// @src 0:22225:22233  "Channels"
                let _305_slot := 0x02
                let expr_1877_slot := _305_slot
                /// @src 0:22234:22239  "_lcID"
                let _306 := var__lcID_1741
                let expr_1878 := _306
                /// @src 0:22225:22240  "Channels[_lcID]"
                let _307 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1877_slot,expr_1878)
                let _308_slot := _307
                let expr_1879_slot := _308_slot
                /// @src 0:22225:22255  "Channels[_lcID].partyAddresses"
                let _309 := add(expr_1879_slot, 0)
                let _310_slot := _309
                let expr_1880_slot := _310_slot
                /// @src 0:22256:22257  "0"
                let expr_1881 := 0x00
                /// @src 0:22225:22258  "Channels[_lcID].partyAddresses[0]"

                let _311, _312 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1880_slot, expr_1881)
                let _313 := read_from_storage_split_dynamic_t_address(_311, _312)
                let expr_1882 := _313
                /// @src 0:22262:22269  "ECTools"
                let expr_1883_address := linkersymbol("ECTools_645")
                /// @src 0:22262:22283  "ECTools.recoverSigner"
                let expr_1884_address := convert_t_type$_t_contract$_ECTools_$645_$_to_t_address(expr_1883_address)
                let expr_1884_functionSelector := 0xdca95419
                /// @src 0:22284:22290  "_state"
                let _314 := var__state_1834
                let expr_1885 := _314
                /// @src 0:22292:22297  "_sigA"
                let _315_mpos := var__sigA_1749_mpos
                let expr_1886_mpos := _315_mpos
                /// @src 0:22262:22298  "ECTools.recoverSigner(_state, _sigA)"

                // storage for arguments and returned data
                let _316 := allocate_unbounded()
                mstore(_316, shift_left_224(expr_1884_functionSelector))
                let _317 := abi_encode_tuple_t_bytes32_t_string_memory_ptr__to_t_bytes32_t_string_memory_ptr__fromStack_library(add(_316, 4) , expr_1885, expr_1886_mpos)

                let _318 := delegatecall(gas(), expr_1884_address,  _316, sub(_317, _316), _316, 32)

                if iszero(_318) { revert_forward_1() }

                let expr_1887
                if _318 {

                    let _319 := 32

                    if gt(_319, returndatasize()) {
                        _319 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_316, _319)

                    // decode return parameters from external try-call into retVars
                    expr_1887 :=  abi_decode_tuple_t_address_fromMemory(_316, add(_316, _319))
                }
                /// @src 0:22225:22298  "Channels[_lcID].partyAddresses[0] == ECTools.recoverSigner(_state, _sigA)"
                let expr_1888 := eq(cleanup_t_address(expr_1882), cleanup_t_address(expr_1887))
                /// @src 0:22217:22299  "require(Channels[_lcID].partyAddresses[0] == ECTools.recoverSigner(_state, _sigA))"
                require_helper(expr_1888)
                /// @src 0:22318:22326  "Channels"
                let _320_slot := 0x02
                let expr_1892_slot := _320_slot
                /// @src 0:22327:22332  "_lcID"
                let _321 := var__lcID_1741
                let expr_1893 := _321
                /// @src 0:22318:22333  "Channels[_lcID]"
                let _322 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1892_slot,expr_1893)
                let _323_slot := _322
                let expr_1894_slot := _323_slot
                /// @src 0:22318:22348  "Channels[_lcID].partyAddresses"
                let _324 := add(expr_1894_slot, 0)
                let _325_slot := _324
                let expr_1895_slot := _325_slot
                /// @src 0:22349:22350  "1"
                let expr_1896 := 0x01
                /// @src 0:22318:22351  "Channels[_lcID].partyAddresses[1]"

                let _326, _327 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1895_slot, expr_1896)
                let _328 := read_from_storage_split_dynamic_t_address(_326, _327)
                let expr_1897 := _328
                /// @src 0:22355:22362  "ECTools"
                let expr_1898_address := linkersymbol("ECTools_645")
                /// @src 0:22355:22376  "ECTools.recoverSigner"
                let expr_1899_address := convert_t_type$_t_contract$_ECTools_$645_$_to_t_address(expr_1898_address)
                let expr_1899_functionSelector := 0xdca95419
                /// @src 0:22377:22383  "_state"
                let _329 := var__state_1834
                let expr_1900 := _329
                /// @src 0:22385:22390  "_sigI"
                let _330_mpos := var__sigI_1751_mpos
                let expr_1901_mpos := _330_mpos
                /// @src 0:22355:22391  "ECTools.recoverSigner(_state, _sigI)"

                // storage for arguments and returned data
                let _331 := allocate_unbounded()
                mstore(_331, shift_left_224(expr_1899_functionSelector))
                let _332 := abi_encode_tuple_t_bytes32_t_string_memory_ptr__to_t_bytes32_t_string_memory_ptr__fromStack_library(add(_331, 4) , expr_1900, expr_1901_mpos)

                let _333 := delegatecall(gas(), expr_1899_address,  _331, sub(_332, _331), _331, 32)

                if iszero(_333) { revert_forward_1() }

                let expr_1902
                if _333 {

                    let _334 := 32

                    if gt(_334, returndatasize()) {
                        _334 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_331, _334)

                    // decode return parameters from external try-call into retVars
                    expr_1902 :=  abi_decode_tuple_t_address_fromMemory(_331, add(_331, _334))
                }
                /// @src 0:22318:22391  "Channels[_lcID].partyAddresses[1] == ECTools.recoverSigner(_state, _sigI)"
                let expr_1903 := eq(cleanup_t_address(expr_1897), cleanup_t_address(expr_1902))
                /// @src 0:22310:22392  "require(Channels[_lcID].partyAddresses[1] == ECTools.recoverSigner(_state, _sigI))"
                require_helper(expr_1903)
                /// @src 0:22429:22434  "false"
                let expr_1910 := 0x00
                /// @src 0:22404:22412  "Channels"
                let _335_slot := 0x02
                let expr_1906_slot := _335_slot
                /// @src 0:22413:22418  "_lcID"
                let _336 := var__lcID_1741
                let expr_1907 := _336
                /// @src 0:22404:22419  "Channels[_lcID]"
                let _337 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1906_slot,expr_1907)
                let _338_slot := _337
                let expr_1908_slot := _338_slot
                /// @src 0:22404:22426  "Channels[_lcID].isOpen"
                let _339 := add(expr_1908_slot, 17)
                /// @src 0:22404:22434  "Channels[_lcID].isOpen = false"
                update_storage_value_offset_0_t_bool_to_t_bool(_339, expr_1910)
                let expr_1911 := expr_1910
                /// @src 0:22449:22458  "_balances"
                let _340_mpos := var__balances_1747_mpos
                let expr_1913_mpos := _340_mpos
                /// @src 0:22459:22460  "0"
                let expr_1914 := 0x00
                /// @src 0:22449:22461  "_balances[0]"
                let _341 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_1913_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1914)))
                let expr_1915 := _341
                /// @src 0:22465:22466  "0"
                let expr_1916 := 0x00
                /// @src 0:22449:22466  "_balances[0] != 0"
                let expr_1917 := iszero(eq(cleanup_t_uint256(expr_1915), convert_t_rational_0_by_1_to_t_uint256(expr_1916)))
                /// @src 0:22449:22487  "_balances[0] != 0 || _balances[1] != 0"
                let expr_1923 := expr_1917
                if iszero(expr_1923) {
                    /// @src 0:22470:22479  "_balances"
                    let _342_mpos := var__balances_1747_mpos
                    let expr_1918_mpos := _342_mpos
                    /// @src 0:22480:22481  "1"
                    let expr_1919 := 0x01
                    /// @src 0:22470:22482  "_balances[1]"
                    let _343 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_1918_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1919)))
                    let expr_1920 := _343
                    /// @src 0:22486:22487  "0"
                    let expr_1921 := 0x00
                    /// @src 0:22470:22487  "_balances[1] != 0"
                    let expr_1922 := iszero(eq(cleanup_t_uint256(expr_1920), convert_t_rational_0_by_1_to_t_uint256(expr_1921)))
                    /// @src 0:22449:22487  "_balances[0] != 0 || _balances[1] != 0"
                    expr_1923 := expr_1922
                }
                /// @src 0:22446:22661  "if(_balances[0] != 0 || _balances[1] != 0) {..."
                if expr_1923 {
                    /// @src 0:22512:22520  "Channels"
                    let _344_slot := 0x02
                    let expr_1926_slot := _344_slot
                    /// @src 0:22521:22526  "_lcID"
                    let _345 := var__lcID_1741
                    let expr_1927 := _345
                    /// @src 0:22512:22527  "Channels[_lcID]"
                    let _346 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1926_slot,expr_1927)
                    let _347_slot := _346
                    let expr_1928_slot := _347_slot
                    /// @src 0:22512:22542  "Channels[_lcID].partyAddresses"
                    let _348 := add(expr_1928_slot, 0)
                    let _349_slot := _348
                    let expr_1929_slot := _349_slot
                    /// @src 0:22543:22544  "0"
                    let expr_1930 := 0x00
                    /// @src 0:22512:22545  "Channels[_lcID].partyAddresses[0]"

                    let _350, _351 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1929_slot, expr_1930)
                    let _352 := read_from_storage_split_dynamic_t_address(_350, _351)
                    let expr_1931 := _352
                    /// @src 0:22504:22546  "payable(Channels[_lcID].partyAddresses[0])"
                    let expr_1932 := convert_t_address_to_t_address_payable(expr_1931)
                    /// @src 0:22504:22555  "payable(Channels[_lcID].partyAddresses[0]).transfer"
                    let expr_1933_address := convert_t_address_payable_to_t_address(expr_1932)
                    /// @src 0:22556:22565  "_balances"
                    let _353_mpos := var__balances_1747_mpos
                    let expr_1934_mpos := _353_mpos
                    /// @src 0:22566:22567  "0"
                    let expr_1935 := 0x00
                    /// @src 0:22556:22568  "_balances[0]"
                    let _354 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_1934_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1935)))
                    let expr_1936 := _354
                    /// @src 0:22504:22569  "payable(Channels[_lcID].partyAddresses[0]).transfer(_balances[0])"

                    let _355 := 0
                    if iszero(expr_1936) { _355 := 2300 }

                    let _356 := call(_355, expr_1933_address, expr_1936, 0, 0, 0, 0)

                    if iszero(_356) { revert_forward_1() }

                    /// @src 0:22592:22600  "Channels"
                    let _357_slot := 0x02
                    let expr_1941_slot := _357_slot
                    /// @src 0:22601:22606  "_lcID"
                    let _358 := var__lcID_1741
                    let expr_1942 := _358
                    /// @src 0:22592:22607  "Channels[_lcID]"
                    let _359 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1941_slot,expr_1942)
                    let _360_slot := _359
                    let expr_1943_slot := _360_slot
                    /// @src 0:22592:22622  "Channels[_lcID].partyAddresses"
                    let _361 := add(expr_1943_slot, 0)
                    let _362_slot := _361
                    let expr_1944_slot := _362_slot
                    /// @src 0:22623:22624  "1"
                    let expr_1945 := 0x01
                    /// @src 0:22592:22625  "Channels[_lcID].partyAddresses[1]"

                    let _363, _364 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1944_slot, expr_1945)
                    let _365 := read_from_storage_split_dynamic_t_address(_363, _364)
                    let expr_1946 := _365
                    /// @src 0:22584:22626  "payable(Channels[_lcID].partyAddresses[1])"
                    let expr_1947 := convert_t_address_to_t_address_payable(expr_1946)
                    /// @src 0:22584:22635  "payable(Channels[_lcID].partyAddresses[1]).transfer"
                    let expr_1948_address := convert_t_address_payable_to_t_address(expr_1947)
                    /// @src 0:22636:22645  "_balances"
                    let _366_mpos := var__balances_1747_mpos
                    let expr_1949_mpos := _366_mpos
                    /// @src 0:22646:22647  "1"
                    let expr_1950 := 0x01
                    /// @src 0:22636:22648  "_balances[1]"
                    let _367 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_1949_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1950)))
                    let expr_1951 := _367
                    /// @src 0:22584:22649  "payable(Channels[_lcID].partyAddresses[1]).transfer(_balances[1])"

                    let _368 := 0
                    if iszero(expr_1951) { _368 := 2300 }

                    let _369 := call(_368, expr_1948_address, expr_1951, 0, 0, 0, 0)

                    if iszero(_369) { revert_forward_1() }

                    /// @src 0:22446:22661  "if(_balances[0] != 0 || _balances[1] != 0) {..."
                }
                /// @src 0:22675:22684  "_balances"
                let _370_mpos := var__balances_1747_mpos
                let expr_1956_mpos := _370_mpos
                /// @src 0:22685:22686  "2"
                let expr_1957 := 0x02
                /// @src 0:22675:22687  "_balances[2]"
                let _371 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_1956_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_1957)))
                let expr_1958 := _371
                /// @src 0:22691:22692  "0"
                let expr_1959 := 0x00
                /// @src 0:22675:22692  "_balances[2] != 0"
                let expr_1960 := iszero(eq(cleanup_t_uint256(expr_1958), convert_t_rational_0_by_1_to_t_uint256(expr_1959)))
                /// @src 0:22675:22713  "_balances[2] != 0 || _balances[3] != 0"
                let expr_1966 := expr_1960
                if iszero(expr_1966) {
                    /// @src 0:22696:22705  "_balances"
                    let _372_mpos := var__balances_1747_mpos
                    let expr_1961_mpos := _372_mpos
                    /// @src 0:22706:22707  "3"
                    let expr_1962 := 0x03
                    /// @src 0:22696:22708  "_balances[3]"
                    let _373 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_1961_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_1962)))
                    let expr_1963 := _373
                    /// @src 0:22712:22713  "0"
                    let expr_1964 := 0x00
                    /// @src 0:22696:22713  "_balances[3] != 0"
                    let expr_1965 := iszero(eq(cleanup_t_uint256(expr_1963), convert_t_rational_0_by_1_to_t_uint256(expr_1964)))
                    /// @src 0:22675:22713  "_balances[2] != 0 || _balances[3] != 0"
                    expr_1966 := expr_1965
                }
                /// @src 0:22672:23021  "if(_balances[2] != 0 || _balances[3] != 0) {..."
                if expr_1966 {
                    /// @src 0:22738:22746  "Channels"
                    let _374_slot := 0x02
                    let expr_1968_slot := _374_slot
                    /// @src 0:22747:22752  "_lcID"
                    let _375 := var__lcID_1741
                    let expr_1969 := _375
                    /// @src 0:22738:22753  "Channels[_lcID]"
                    let _376 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1968_slot,expr_1969)
                    let _377_slot := _376
                    let expr_1970_slot := _377_slot
                    /// @src 0:22738:22759  "Channels[_lcID].token"
                    let _378 := add(expr_1970_slot, 19)
                    let _379_address := read_from_storage_split_offset_0_t_contract$_HumanStandardToken_$922(_378)
                    let expr_1971_address := _379_address
                    /// @src 0:22738:22768  "Channels[_lcID].token.transfer"
                    let expr_1972_address := convert_t_contract$_HumanStandardToken_$922_to_t_address(expr_1971_address)
                    let expr_1972_functionSelector := 0xa9059cbb
                    /// @src 0:22769:22777  "Channels"
                    let _380_slot := 0x02
                    let expr_1973_slot := _380_slot
                    /// @src 0:22778:22783  "_lcID"
                    let _381 := var__lcID_1741
                    let expr_1974 := _381
                    /// @src 0:22769:22784  "Channels[_lcID]"
                    let _382 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1973_slot,expr_1974)
                    let _383_slot := _382
                    let expr_1975_slot := _383_slot
                    /// @src 0:22769:22799  "Channels[_lcID].partyAddresses"
                    let _384 := add(expr_1975_slot, 0)
                    let _385_slot := _384
                    let expr_1976_slot := _385_slot
                    /// @src 0:22800:22801  "0"
                    let expr_1977 := 0x00
                    /// @src 0:22769:22802  "Channels[_lcID].partyAddresses[0]"

                    let _386, _387 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1976_slot, expr_1977)
                    let _388 := read_from_storage_split_dynamic_t_address(_386, _387)
                    let expr_1978 := _388
                    /// @src 0:22804:22813  "_balances"
                    let _389_mpos := var__balances_1747_mpos
                    let expr_1979_mpos := _389_mpos
                    /// @src 0:22814:22815  "2"
                    let expr_1980 := 0x02
                    /// @src 0:22804:22816  "_balances[2]"
                    let _390 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_1979_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_1980)))
                    let expr_1981 := _390
                    /// @src 0:22738:22817  "Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[0], _balances[2])"

                    // storage for arguments and returned data
                    let _391 := allocate_unbounded()
                    mstore(_391, shift_left_224(expr_1972_functionSelector))
                    let _392 := abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(add(_391, 4) , expr_1978, expr_1981)

                    let _393 := call(gas(), expr_1972_address,  0,  _391, sub(_392, _391), _391, 32)

                    if iszero(_393) { revert_forward_1() }

                    let expr_1982
                    if _393 {

                        let _394 := 32

                        if gt(_394, returndatasize()) {
                            _394 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_391, _394)

                        // decode return parameters from external try-call into retVars
                        expr_1982 :=  abi_decode_tuple_t_bool_fromMemory(_391, add(_391, _394))
                    }
                    /// @src 0:22730:22862  "require(Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[0], _balances[2]),\"happyCloseChannel: token transfer failure\")"
                    require_helper_t_stringliteral_af68565ee9bde6a91d1045d64241250b214f23c00f514bb23ef3c6b6ed75a097(expr_1982)
                    /// @src 0:22885:22893  "Channels"
                    let _395_slot := 0x02
                    let expr_1987_slot := _395_slot
                    /// @src 0:22894:22899  "_lcID"
                    let _396 := var__lcID_1741
                    let expr_1988 := _396
                    /// @src 0:22885:22900  "Channels[_lcID]"
                    let _397 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1987_slot,expr_1988)
                    let _398_slot := _397
                    let expr_1989_slot := _398_slot
                    /// @src 0:22885:22906  "Channels[_lcID].token"
                    let _399 := add(expr_1989_slot, 19)
                    let _400_address := read_from_storage_split_offset_0_t_contract$_HumanStandardToken_$922(_399)
                    let expr_1990_address := _400_address
                    /// @src 0:22885:22915  "Channels[_lcID].token.transfer"
                    let expr_1991_address := convert_t_contract$_HumanStandardToken_$922_to_t_address(expr_1990_address)
                    let expr_1991_functionSelector := 0xa9059cbb
                    /// @src 0:22916:22924  "Channels"
                    let _401_slot := 0x02
                    let expr_1992_slot := _401_slot
                    /// @src 0:22925:22930  "_lcID"
                    let _402 := var__lcID_1741
                    let expr_1993 := _402
                    /// @src 0:22916:22931  "Channels[_lcID]"
                    let _403 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1992_slot,expr_1993)
                    let _404_slot := _403
                    let expr_1994_slot := _404_slot
                    /// @src 0:22916:22946  "Channels[_lcID].partyAddresses"
                    let _405 := add(expr_1994_slot, 0)
                    let _406_slot := _405
                    let expr_1995_slot := _406_slot
                    /// @src 0:22947:22948  "1"
                    let expr_1996 := 0x01
                    /// @src 0:22916:22949  "Channels[_lcID].partyAddresses[1]"

                    let _407, _408 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1995_slot, expr_1996)
                    let _409 := read_from_storage_split_dynamic_t_address(_407, _408)
                    let expr_1997 := _409
                    /// @src 0:22951:22960  "_balances"
                    let _410_mpos := var__balances_1747_mpos
                    let expr_1998_mpos := _410_mpos
                    /// @src 0:22961:22962  "3"
                    let expr_1999 := 0x03
                    /// @src 0:22951:22963  "_balances[3]"
                    let _411 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_1998_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_1999)))
                    let expr_2000 := _411
                    /// @src 0:22885:22964  "Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[1], _balances[3])"

                    // storage for arguments and returned data
                    let _412 := allocate_unbounded()
                    mstore(_412, shift_left_224(expr_1991_functionSelector))
                    let _413 := abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(add(_412, 4) , expr_1997, expr_2000)

                    let _414 := call(gas(), expr_1991_address,  0,  _412, sub(_413, _412), _412, 32)

                    if iszero(_414) { revert_forward_1() }

                    let expr_2001
                    if _414 {

                        let _415 := 32

                        if gt(_415, returndatasize()) {
                            _415 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_412, _415)

                        // decode return parameters from external try-call into retVars
                        expr_2001 :=  abi_decode_tuple_t_bool_fromMemory(_412, add(_412, _415))
                    }
                    /// @src 0:22877:23009  "require(Channels[_lcID].token.transfer(Channels[_lcID].partyAddresses[1], _balances[3]),\"happyCloseChannel: token transfer failure\")"
                    require_helper_t_stringliteral_af68565ee9bde6a91d1045d64241250b214f23c00f514bb23ef3c6b6ed75a097(expr_2001)
                    /// @src 0:22672:23021  "if(_balances[2] != 0 || _balances[3] != 0) {..."
                }
                /// @src 0:23032:23045  "numChannels--"
                let _417 := read_from_storage_split_offset_0_t_uint256(0x00)
                let _416 := decrement_t_uint256(_417)
                update_storage_value_offset_0_t_uint256_to_t_uint256(0x00, _416)
                let expr_2008 := _417
                /// @src 0:23073:23078  "_lcID"
                let _418 := var__lcID_1741
                let expr_2011 := _418
                /// @src 0:23080:23089  "_sequence"
                let _419 := var__sequence_1743
                let expr_2012 := _419
                /// @src 0:23091:23100  "_balances"
                let _420_mpos := var__balances_1747_mpos
                let expr_2013_mpos := _420_mpos
                /// @src 0:23101:23102  "0"
                let expr_2014 := 0x00
                /// @src 0:23091:23103  "_balances[0]"
                let _421 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2013_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_2014)))
                let expr_2015 := _421
                /// @src 0:23105:23114  "_balances"
                let _422_mpos := var__balances_1747_mpos
                let expr_2016_mpos := _422_mpos
                /// @src 0:23115:23116  "1"
                let expr_2017 := 0x01
                /// @src 0:23105:23117  "_balances[1]"
                let _423 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2016_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_2017)))
                let expr_2018 := _423
                /// @src 0:23119:23128  "_balances"
                let _424_mpos := var__balances_1747_mpos
                let expr_2019_mpos := _424_mpos
                /// @src 0:23129:23130  "2"
                let expr_2020 := 0x02
                /// @src 0:23119:23131  "_balances[2]"
                let _425 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2019_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_2020)))
                let expr_2021 := _425
                /// @src 0:23133:23142  "_balances"
                let _426_mpos := var__balances_1747_mpos
                let expr_2022_mpos := _426_mpos
                /// @src 0:23143:23144  "3"
                let expr_2023 := 0x03
                /// @src 0:23133:23145  "_balances[3]"
                let _427 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2022_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_2023)))
                let expr_2024 := _427
                /// @src 0:23062:23146  "DidLCClose(_lcID, _sequence, _balances[0], _balances[1], _balances[2], _balances[3])"
                let _428 := 0x3adff1604df08a519c7848023123530b0c9a05bf082395a43c09e02406deea1a
                let _429 := convert_t_bytes32_to_t_bytes32(expr_2011)
                {
                    let _430 := allocate_unbounded()
                    let _431 := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__fromStack(_430 , expr_2012, expr_2015, expr_2018, expr_2021, expr_2024)
                    log2(_430, sub(_431, _430) , _428, _429)
                }
            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

            function array_allocation_size_t_array$_t_address_$2_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

            }

            function allocate_memory_array_t_array$_t_address_$2_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_address_$2_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

            }

            function zero_memory_chunk_t_address(dataStart, dataSizeInBytes) {
                calldatacopy(dataStart, calldatasize(), dataSizeInBytes)
            }

            function allocate_and_zero_memory_array_t_array$_t_address_$2_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_address_$2_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_address_$2_memory_ptr(length)

                zero_memory_chunk_t_address(dataStart, dataSize)
            }

            function zero_value_for_split_t_array$_t_address_$2_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_array_t_array$_t_address_$2_memory_ptr(2)
            }

            function allocate_memory_array_t_array$_t_uint256_$4_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_uint256_$4_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

            }

            function zero_memory_chunk_t_uint256(dataStart, dataSizeInBytes) {
                calldatacopy(dataStart, calldatasize(), dataSizeInBytes)
            }

            function allocate_and_zero_memory_array_t_array$_t_uint256_$4_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_uint256_$4_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_uint256_$4_memory_ptr(length)

                zero_memory_chunk_t_uint256(dataStart, dataSize)
            }

            function zero_value_for_split_t_array$_t_uint256_$4_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_array_t_array$_t_uint256_$4_memory_ptr(4)
            }

            function allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_uint256_$2_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

            }

            function allocate_and_zero_memory_array_t_array$_t_uint256_$2_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_uint256_$2_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_uint256_$2_memory_ptr(length)

                zero_memory_chunk_t_uint256(dataStart, dataSize)
            }

            function zero_value_for_split_t_array$_t_uint256_$2_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_array_t_array$_t_uint256_$2_memory_ptr(2)
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function array_storeLengthForEncoding_t_array$_t_address_$2_memory_ptr(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function read_from_storage_offset_0_t_address(slot) -> value {
                value := extract_from_storage_value_offset_0_t_address(sload(slot))

            }

            function array_nextElement_t_array$_t_address_$2_storage(ptr) -> next {
                next := add(ptr, 0x01)
            }

            // address[2] -> address[2]
            function abi_encode_t_array$_t_address_$2_storage_to_t_array$_t_address_$2_memory_ptr(value, pos)  {
                let length := array_length_t_array$_t_address_$2_storage(value)
                pos := array_storeLengthForEncoding_t_array$_t_address_$2_memory_ptr(pos, length)
                let baseRef := array_dataslot_t_array$_t_address_$2_storage(value)
                let srcPtr := baseRef
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    let elementValue0 := read_from_storage_offset_0_t_address(srcPtr)
                    pos := abi_encodeUpdatedPos_t_address_to_t_address(elementValue0, pos)
                    srcPtr := array_nextElement_t_array$_t_address_$2_storage(srcPtr)
                }

            }

            function abi_encodeUpdatedPos_t_array$_t_address_$2_storage_to_t_array$_t_address_$2_memory_ptr(value0, pos) -> updatedPos {
                abi_encode_t_array$_t_address_$2_storage_to_t_array$_t_address_$2_memory_ptr(value0, pos)
                updatedPos := add(pos, 0x40)
            }

            function copy_array_from_storage_to_memory_t_array$_t_address_$2_storage(slot) -> memPtr {
                memPtr := allocate_unbounded()
                let end := abi_encodeUpdatedPos_t_array$_t_address_$2_storage_to_t_array$_t_address_$2_memory_ptr(slot, memPtr)
                finalize_allocation(memPtr, sub(end, memPtr))
            }

            function write_to_memory_t_array$_t_address_$2_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function array_storeLengthForEncoding_t_array$_t_uint256_$4_memory_ptr(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function read_from_storage_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0_t_uint256(sload(slot))

            }

            function array_nextElement_t_array$_t_uint256_$4_storage(ptr) -> next {
                next := add(ptr, 0x01)
            }

            // uint256[4] -> uint256[4]
            function abi_encode_t_array$_t_uint256_$4_storage_to_t_array$_t_uint256_$4_memory_ptr(value, pos)  {
                let length := array_length_t_array$_t_uint256_$4_storage(value)
                pos := array_storeLengthForEncoding_t_array$_t_uint256_$4_memory_ptr(pos, length)
                let baseRef := array_dataslot_t_array$_t_uint256_$4_storage(value)
                let srcPtr := baseRef
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    let elementValue0 := read_from_storage_offset_0_t_uint256(srcPtr)
                    pos := abi_encodeUpdatedPos_t_uint256_to_t_uint256(elementValue0, pos)
                    srcPtr := array_nextElement_t_array$_t_uint256_$4_storage(srcPtr)
                }

            }

            function abi_encodeUpdatedPos_t_array$_t_uint256_$4_storage_to_t_array$_t_uint256_$4_memory_ptr(value0, pos) -> updatedPos {
                abi_encode_t_array$_t_uint256_$4_storage_to_t_array$_t_uint256_$4_memory_ptr(value0, pos)
                updatedPos := add(pos, 0x80)
            }

            function copy_array_from_storage_to_memory_t_array$_t_uint256_$4_storage(slot) -> memPtr {
                memPtr := allocate_unbounded()
                let end := abi_encodeUpdatedPos_t_array$_t_uint256_$4_storage_to_t_array$_t_uint256_$4_memory_ptr(slot, memPtr)
                finalize_allocation(memPtr, sub(end, memPtr))
            }

            function write_to_memory_t_array$_t_uint256_$4_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function array_storeLengthForEncoding_t_array$_t_uint256_$2_memory_ptr(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function array_nextElement_t_array$_t_uint256_$2_storage(ptr) -> next {
                next := add(ptr, 0x01)
            }

            // uint256[2] -> uint256[2]
            function abi_encode_t_array$_t_uint256_$2_storage_to_t_array$_t_uint256_$2_memory_ptr(value, pos)  {
                let length := array_length_t_array$_t_uint256_$2_storage(value)
                pos := array_storeLengthForEncoding_t_array$_t_uint256_$2_memory_ptr(pos, length)
                let baseRef := array_dataslot_t_array$_t_uint256_$2_storage(value)
                let srcPtr := baseRef
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    let elementValue0 := read_from_storage_offset_0_t_uint256(srcPtr)
                    pos := abi_encodeUpdatedPos_t_uint256_to_t_uint256(elementValue0, pos)
                    srcPtr := array_nextElement_t_array$_t_uint256_$2_storage(srcPtr)
                }

            }

            function abi_encodeUpdatedPos_t_array$_t_uint256_$2_storage_to_t_array$_t_uint256_$2_memory_ptr(value0, pos) -> updatedPos {
                abi_encode_t_array$_t_uint256_$2_storage_to_t_array$_t_uint256_$2_memory_ptr(value0, pos)
                updatedPos := add(pos, 0x40)
            }

            function copy_array_from_storage_to_memory_t_array$_t_uint256_$2_storage(slot) -> memPtr {
                memPtr := allocate_unbounded()
                let end := abi_encodeUpdatedPos_t_array$_t_uint256_$2_storage_to_t_array$_t_uint256_$2_memory_ptr(slot, memPtr)
                finalize_allocation(memPtr, sub(end, memPtr))
            }

            function write_to_memory_t_array$_t_uint256_$2_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function write_to_memory_t_uint256(memPtr, value) {
                mstore(memPtr, cleanup_t_uint256(value))
            }

            function write_to_memory_t_bytes32(memPtr, value) {
                mstore(memPtr, cleanup_t_bytes32(value))
            }

            function write_to_memory_t_bool(memPtr, value) {
                mstore(memPtr, cleanup_t_bool(value))
            }

            function cleanup_t_contract$_HumanStandardToken_$922(value) -> cleaned {
                cleaned := cleanup_t_address(value)
            }

            function write_to_memory_t_contract$_HumanStandardToken_$922(memPtr, value) {
                mstore(memPtr, cleanup_t_contract$_HumanStandardToken_$922(value))
            }

            function allocate_memory_struct_t_struct$_Channel_$1079_memory_ptr() -> memPtr {
                memPtr := allocate_memory(416)
            }

            function read_from_storage_reference_type_t_struct$_Channel_$1079_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_Channel_$1079_memory_ptr()

                {
                    let memberValue_0 := copy_array_from_storage_to_memory_t_array$_t_address_$2_storage(add(slot, 0))
                    write_to_memory_t_array$_t_address_$2_memory_ptr(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := copy_array_from_storage_to_memory_t_array$_t_uint256_$4_storage(add(slot, 2))
                    write_to_memory_t_array$_t_uint256_$4_memory_ptr(add(value, 32), memberValue_0)
                }

                {
                    let memberValue_0 := copy_array_from_storage_to_memory_t_array$_t_uint256_$4_storage(add(slot, 6))
                    write_to_memory_t_array$_t_uint256_$4_memory_ptr(add(value, 64), memberValue_0)
                }

                {
                    let memberValue_0 := copy_array_from_storage_to_memory_t_array$_t_uint256_$2_storage(add(slot, 10))
                    write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(value, 96), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 12))
                    write_to_memory_t_uint256(add(value, 128), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 13))
                    write_to_memory_t_uint256(add(value, 160), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_bytes32(add(slot, 14))
                    write_to_memory_t_bytes32(add(value, 192), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 15))
                    write_to_memory_t_uint256(add(value, 224), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 16))
                    write_to_memory_t_uint256(add(value, 256), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_bool(add(slot, 17))
                    write_to_memory_t_bool(add(value, 288), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_1_t_bool(add(slot, 17))
                    write_to_memory_t_bool(add(value, 320), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 18))
                    write_to_memory_t_uint256(add(value, 352), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_contract$_HumanStandardToken_$922(add(slot, 19))
                    write_to_memory_t_contract$_HumanStandardToken_$922(add(value, 384), memberValue_0)
                }

            }

            function convert_t_struct$_Channel_$1079_storage_to_t_struct$_Channel_$1079_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_Channel_$1079_memory_ptr(value)

            }

            function read_from_memoryt_bytes32(ptr) -> returnValue {

                let value := cleanup_t_bytes32(mload(ptr))

                returnValue :=

                value

            }

            function read_from_memoryt_bool(ptr) -> returnValue {

                let value := cleanup_t_bool(mload(ptr))

                returnValue :=

                value

            }

            /// @ast-id 3429
            /// @src 0:35885:36693  "function getChannel(bytes32 id) public view returns (address[2] memory, ..."
            function fun_getChannel_3429(var_id_3360) -> var__3365_mpos, var__3369_mpos, var__3373_mpos, var__3377_mpos, var__3379, var__3381, var__3383, var__3385, var__3387, var__3389, var__3391, var__3393 {
                /// @src 0:35938:35955  "address[2] memory"
                let zero_t_array$_t_address_$2_memory_ptr_432_mpos := zero_value_for_split_t_array$_t_address_$2_memory_ptr()
                var__3365_mpos := zero_t_array$_t_address_$2_memory_ptr_432_mpos
                /// @src 0:35967:35984  "uint256[4] memory"
                let zero_t_array$_t_uint256_$4_memory_ptr_433_mpos := zero_value_for_split_t_array$_t_uint256_$4_memory_ptr()
                var__3369_mpos := zero_t_array$_t_uint256_$4_memory_ptr_433_mpos
                /// @src 0:35996:36013  "uint256[4] memory"
                let zero_t_array$_t_uint256_$4_memory_ptr_434_mpos := zero_value_for_split_t_array$_t_uint256_$4_memory_ptr()
                var__3373_mpos := zero_t_array$_t_uint256_$4_memory_ptr_434_mpos
                /// @src 0:36025:36042  "uint256[2] memory"
                let zero_t_array$_t_uint256_$2_memory_ptr_435_mpos := zero_value_for_split_t_array$_t_uint256_$2_memory_ptr()
                var__3377_mpos := zero_t_array$_t_uint256_$2_memory_ptr_435_mpos
                /// @src 0:36054:36061  "uint256"
                let zero_t_uint256_436 := zero_value_for_split_t_uint256()
                var__3379 := zero_t_uint256_436
                /// @src 0:36073:36080  "uint256"
                let zero_t_uint256_437 := zero_value_for_split_t_uint256()
                var__3381 := zero_t_uint256_437
                /// @src 0:36092:36099  "bytes32"
                let zero_t_bytes32_438 := zero_value_for_split_t_bytes32()
                var__3383 := zero_t_bytes32_438
                /// @src 0:36111:36118  "uint256"
                let zero_t_uint256_439 := zero_value_for_split_t_uint256()
                var__3385 := zero_t_uint256_439
                /// @src 0:36130:36137  "uint256"
                let zero_t_uint256_440 := zero_value_for_split_t_uint256()
                var__3387 := zero_t_uint256_440
                /// @src 0:36149:36153  "bool"
                let zero_t_bool_441 := zero_value_for_split_t_bool()
                var__3389 := zero_t_bool_441
                /// @src 0:36165:36169  "bool"
                let zero_t_bool_442 := zero_value_for_split_t_bool()
                var__3391 := zero_t_bool_442
                /// @src 0:36181:36188  "uint256"
                let zero_t_uint256_443 := zero_value_for_split_t_uint256()
                var__3393 := zero_t_uint256_443

                /// @src 0:36226:36234  "Channels"
                let _444_slot := 0x02
                let expr_3398_slot := _444_slot
                /// @src 0:36235:36237  "id"
                let _445 := var_id_3360
                let expr_3399 := _445
                /// @src 0:36226:36238  "Channels[id]"
                let _446 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_3398_slot,expr_3399)
                let _447_slot := _446
                let expr_3400_slot := _447_slot
                /// @src 0:36201:36238  "Channel memory channel = Channels[id]"
                let var_channel_3397_mpos := convert_t_struct$_Channel_$1079_storage_to_t_struct$_Channel_$1079_memory_ptr(expr_3400_slot)
                /// @src 0:36271:36278  "channel"
                let _448_mpos := var_channel_3397_mpos
                let expr_3402_mpos := _448_mpos
                /// @src 0:36271:36293  "channel.partyAddresses"
                let _449 := add(expr_3402_mpos, 0)
                let _450_mpos := mload(_449)
                let expr_3403_mpos := _450_mpos
                /// @src 0:36256:36685  "(..."
                let expr_3426_component_1_mpos := expr_3403_mpos
                /// @src 0:36308:36315  "channel"
                let _451_mpos := var_channel_3397_mpos
                let expr_3404_mpos := _451_mpos
                /// @src 0:36308:36327  "channel.ethBalances"
                let _452 := add(expr_3404_mpos, 32)
                let _453_mpos := mload(_452)
                let expr_3405_mpos := _453_mpos
                /// @src 0:36256:36685  "(..."
                let expr_3426_component_2_mpos := expr_3405_mpos
                /// @src 0:36342:36349  "channel"
                let _454_mpos := var_channel_3397_mpos
                let expr_3406_mpos := _454_mpos
                /// @src 0:36342:36363  "channel.erc20Balances"
                let _455 := add(expr_3406_mpos, 64)
                let _456_mpos := mload(_455)
                let expr_3407_mpos := _456_mpos
                /// @src 0:36256:36685  "(..."
                let expr_3426_component_3_mpos := expr_3407_mpos
                /// @src 0:36378:36385  "channel"
                let _457_mpos := var_channel_3397_mpos
                let expr_3408_mpos := _457_mpos
                /// @src 0:36378:36400  "channel.initialDeposit"
                let _458 := add(expr_3408_mpos, 96)
                let _459_mpos := mload(_458)
                let expr_3409_mpos := _459_mpos
                /// @src 0:36256:36685  "(..."
                let expr_3426_component_4_mpos := expr_3409_mpos
                /// @src 0:36415:36422  "channel"
                let _460_mpos := var_channel_3397_mpos
                let expr_3410_mpos := _460_mpos
                /// @src 0:36415:36431  "channel.sequence"
                let _461 := add(expr_3410_mpos, 128)
                let _462 := read_from_memoryt_uint256(_461)
                let expr_3411 := _462
                /// @src 0:36256:36685  "(..."
                let expr_3426_component_5 := expr_3411
                /// @src 0:36446:36453  "channel"
                let _463_mpos := var_channel_3397_mpos
                let expr_3412_mpos := _463_mpos
                /// @src 0:36446:36465  "channel.confirmTime"
                let _464 := add(expr_3412_mpos, 160)
                let _465 := read_from_memoryt_uint256(_464)
                let expr_3413 := _465
                /// @src 0:36256:36685  "(..."
                let expr_3426_component_6 := expr_3413
                /// @src 0:36480:36487  "channel"
                let _466_mpos := var_channel_3397_mpos
                let expr_3414_mpos := _466_mpos
                /// @src 0:36480:36498  "channel.VCrootHash"
                let _467 := add(expr_3414_mpos, 192)
                let _468 := read_from_memoryt_bytes32(_467)
                let expr_3415 := _468
                /// @src 0:36256:36685  "(..."
                let expr_3426_component_7 := expr_3415
                /// @src 0:36513:36520  "channel"
                let _469_mpos := var_channel_3397_mpos
                let expr_3416_mpos := _469_mpos
                /// @src 0:36513:36534  "channel.LCopenTimeout"
                let _470 := add(expr_3416_mpos, 224)
                let _471 := read_from_memoryt_uint256(_470)
                let expr_3417 := _471
                /// @src 0:36256:36685  "(..."
                let expr_3426_component_8 := expr_3417
                /// @src 0:36549:36556  "channel"
                let _472_mpos := var_channel_3397_mpos
                let expr_3418_mpos := _472_mpos
                /// @src 0:36549:36572  "channel.updateLCtimeout"
                let _473 := add(expr_3418_mpos, 256)
                let _474 := read_from_memoryt_uint256(_473)
                let expr_3419 := _474
                /// @src 0:36256:36685  "(..."
                let expr_3426_component_9 := expr_3419
                /// @src 0:36587:36594  "channel"
                let _475_mpos := var_channel_3397_mpos
                let expr_3420_mpos := _475_mpos
                /// @src 0:36587:36601  "channel.isOpen"
                let _476 := add(expr_3420_mpos, 288)
                let _477 := read_from_memoryt_bool(_476)
                let expr_3421 := _477
                /// @src 0:36256:36685  "(..."
                let expr_3426_component_10 := expr_3421
                /// @src 0:36616:36623  "channel"
                let _478_mpos := var_channel_3397_mpos
                let expr_3422_mpos := _478_mpos
                /// @src 0:36616:36642  "channel.isUpdateLCSettling"
                let _479 := add(expr_3422_mpos, 320)
                let _480 := read_from_memoryt_bool(_479)
                let expr_3423 := _480
                /// @src 0:36256:36685  "(..."
                let expr_3426_component_11 := expr_3423
                /// @src 0:36657:36664  "channel"
                let _481_mpos := var_channel_3397_mpos
                let expr_3424_mpos := _481_mpos
                /// @src 0:36657:36674  "channel.numOpenVC"
                let _482 := add(expr_3424_mpos, 352)
                let _483 := read_from_memoryt_uint256(_482)
                let expr_3425 := _483
                /// @src 0:36256:36685  "(..."
                let expr_3426_component_12 := expr_3425
                /// @src 0:36249:36685  "return (..."
                var__3365_mpos := expr_3426_component_1_mpos
                var__3369_mpos := expr_3426_component_2_mpos
                var__3373_mpos := expr_3426_component_3_mpos
                var__3377_mpos := expr_3426_component_4_mpos
                var__3379 := expr_3426_component_5
                var__3381 := expr_3426_component_6
                var__3383 := expr_3426_component_7
                var__3385 := expr_3426_component_8
                var__3387 := expr_3426_component_9
                var__3389 := expr_3426_component_10
                var__3391 := expr_3426_component_11
                var__3393 := expr_3426_component_12
                leave

            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function store_literal_in_memory_60374a152bbe60a7b108c9ee1f40c42ab84fab625cf311308a133131c86e4407(memPtr) {

                mstore(add(memPtr, 0), "Channel has already been created")

                mstore(add(memPtr, 32), ".")

            }

            function abi_encode_t_stringliteral_60374a152bbe60a7b108c9ee1f40c42ab84fab625cf311308a133131c86e4407_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 33)
                store_literal_in_memory_60374a152bbe60a7b108c9ee1f40c42ab84fab625cf311308a133131c86e4407(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_60374a152bbe60a7b108c9ee1f40c42ab84fab625cf311308a133131c86e4407__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_60374a152bbe60a7b108c9ee1f40c42ab84fab625cf311308a133131c86e4407_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_60374a152bbe60a7b108c9ee1f40c42ab84fab625cf311308a133131c86e4407(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_60374a152bbe60a7b108c9ee1f40c42ab84fab625cf311308a133131c86e4407__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_bdfa610a2001ca70b551beac9b70ab0e7a6fef491cc60d0bc6a5919df68afe2f(memPtr) {

                mstore(add(memPtr, 0), "No partyI address provided to LC")

                mstore(add(memPtr, 32), " creation")

            }

            function abi_encode_t_stringliteral_bdfa610a2001ca70b551beac9b70ab0e7a6fef491cc60d0bc6a5919df68afe2f_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 41)
                store_literal_in_memory_bdfa610a2001ca70b551beac9b70ab0e7a6fef491cc60d0bc6a5919df68afe2f(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_bdfa610a2001ca70b551beac9b70ab0e7a6fef491cc60d0bc6a5919df68afe2f__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_bdfa610a2001ca70b551beac9b70ab0e7a6fef491cc60d0bc6a5919df68afe2f_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_bdfa610a2001ca70b551beac9b70ab0e7a6fef491cc60d0bc6a5919df68afe2f(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_bdfa610a2001ca70b551beac9b70ab0e7a6fef491cc60d0bc6a5919df68afe2f__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_1fe53f121db27797c6ded2bf7b9678edab00b1a916965a505235d321a5b95e6f(memPtr) {

                mstore(add(memPtr, 0), "Balances cannot be negative")

            }

            function abi_encode_t_stringliteral_1fe53f121db27797c6ded2bf7b9678edab00b1a916965a505235d321a5b95e6f_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 27)
                store_literal_in_memory_1fe53f121db27797c6ded2bf7b9678edab00b1a916965a505235d321a5b95e6f(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_1fe53f121db27797c6ded2bf7b9678edab00b1a916965a505235d321a5b95e6f__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_1fe53f121db27797c6ded2bf7b9678edab00b1a916965a505235d321a5b95e6f_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_1fe53f121db27797c6ded2bf7b9678edab00b1a916965a505235d321a5b95e6f(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_1fe53f121db27797c6ded2bf7b9678edab00b1a916965a505235d321a5b95e6f__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function update_byte_slice_dynamic20(value, shiftBytes, toInsert) -> result {
                let shiftBits := mul(shiftBytes, 8)
                let mask := shift_left_dynamic(shiftBits, 0xffffffffffffffffffffffffffffffffffffffff)
                toInsert := shift_left_dynamic(shiftBits, toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function prepare_store_t_address(value) -> ret {
                ret := value
            }

            function update_storage_value_t_address_to_t_address(slot, offset, value_0) {
                let convertedValue_0 := convert_t_address_to_t_address(value_0)
                sstore(slot, update_byte_slice_dynamic20(sload(slot), offset, prepare_store_t_address(convertedValue_0)))
            }

            function store_literal_in_memory_cd3362fdc44d5e6b08808f2d77e8cc959389f7f0d5051665123502dda37d3680(memPtr) {

                mstore(add(memPtr, 0), "Eth balance does not match sent ")

                mstore(add(memPtr, 32), "value")

            }

            function abi_encode_t_stringliteral_cd3362fdc44d5e6b08808f2d77e8cc959389f7f0d5051665123502dda37d3680_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 37)
                store_literal_in_memory_cd3362fdc44d5e6b08808f2d77e8cc959389f7f0d5051665123502dda37d3680(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_cd3362fdc44d5e6b08808f2d77e8cc959389f7f0d5051665123502dda37d3680__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_cd3362fdc44d5e6b08808f2d77e8cc959389f7f0d5051665123502dda37d3680_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_cd3362fdc44d5e6b08808f2d77e8cc959389f7f0d5051665123502dda37d3680(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_cd3362fdc44d5e6b08808f2d77e8cc959389f7f0d5051665123502dda37d3680__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function convert_t_uint160_to_t_contract$_HumanStandardToken_$922(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_HumanStandardToken_$922(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_HumanStandardToken_$922(value)
            }

            function update_byte_slice_20_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_contract$_HumanStandardToken_$922_to_t_contract$_HumanStandardToken_$922(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_HumanStandardToken_$922(value)
            }

            function prepare_store_t_contract$_HumanStandardToken_$922(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_contract$_HumanStandardToken_$922_to_t_contract$_HumanStandardToken_$922(slot, value_0) {
                let convertedValue_0 := convert_t_contract$_HumanStandardToken_$922_to_t_contract$_HumanStandardToken_$922(value_0)
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_contract$_HumanStandardToken_$922(convertedValue_0)))
            }

            function partial_clear_storage_slot(slot, offset) {
                let mask := shift_right_unsigned_dynamic(mul(8, sub(32, offset)), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                sstore(slot, and(mask, sload(slot)))
            }

            function cleanup_storage_array_end_t_array$_t_uint256_$2_storage(array, len, startIndex) {

                if lt(startIndex, len) {
                    // Size was reduced, clear end of array
                    let oldSlotCount := array_convert_length_to_size_t_array$_t_uint256_$2_storage(len)
                    let newSlotCount := array_convert_length_to_size_t_array$_t_uint256_$2_storage(startIndex)
                    let arrayDataStart := array_dataslot_t_array$_t_uint256_$2_storage(array)
                    let deleteStart := add(arrayDataStart, newSlotCount)
                    let deleteEnd := add(arrayDataStart, oldSlotCount)

                    clear_storage_range_t_uint256(deleteStart, deleteEnd)
                }

            }

            function resize_array_t_array$_t_uint256_$2_storage(array, newLen) {
                if gt(newLen, 18446744073709551616) {
                    panic_error_0x41()
                }

                let oldLen := array_length_t_array$_t_uint256_$2_storage(array)

                cleanup_storage_array_end_t_array$_t_uint256_$2_storage(array, oldLen, newLen)

            }
            function copy_array_to_storage_from_t_array$_t_uint256_$2_memory_ptr_to_t_array$_t_uint256_$2_storage(dst, src) {

                let length := array_length_t_array$_t_uint256_$2_memory_ptr(src)
                // Make sure array length is sane
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }
                resize_array_t_array$_t_uint256_$2_storage(dst, length)

                let srcPtr := array_dataslot_t_array$_t_uint256_$2_memory_ptr(src)
                let dstSlot := array_dataslot_t_array$_t_uint256_$2_storage(dst)

                let fullSlots := div(length, 1)

                for { let i := 0 } lt(i, fullSlots) { i := add(i, 1) } {
                    let dstSlotValue := 0

                    {

                        let stackItem_0 := read_from_memoryt_uint256(srcPtr)

                        let itemValue := prepare_store_t_uint256(stackItem_0)
                        dstSlotValue :=

                        itemValue

                        srcPtr := add(srcPtr, 32)

                    }

                    sstore(add(dstSlot, i), dstSlotValue)
                }

            }

            function update_storage_value_offset_0_t_array$_t_uint256_$2_memory_ptr_to_t_array$_t_uint256_$2_storage(slot, value_0) {

                copy_array_to_storage_from_t_array$_t_uint256_$2_memory_ptr_to_t_array$_t_uint256_$2_storage(slot, value_0)
            }

            function abi_encode_tuple_t_uint256_t_address_t_uint256_t_uint256__to_t_uint256_t_address_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

            }

            /// @ast-id 1318
            /// @src 0:15414:17349  "function createChannel(..."
            function fun_createChannel_1318(var__lcID_1123, var__partyI_1125, var__confirmTime_1127, var__token_1129, var__balances_1133_mpos) {

                /// @src 0:15661:15669  "Channels"
                let _484_slot := 0x02
                let expr_1137_slot := _484_slot
                /// @src 0:15670:15675  "_lcID"
                let _485 := var__lcID_1123
                let expr_1138 := _485
                /// @src 0:15661:15676  "Channels[_lcID]"
                let _486 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1137_slot,expr_1138)
                let _487_slot := _486
                let expr_1139_slot := _487_slot
                /// @src 0:15661:15691  "Channels[_lcID].partyAddresses"
                let _488 := add(expr_1139_slot, 0)
                let _489_slot := _488
                let expr_1140_slot := _489_slot
                /// @src 0:15692:15693  "0"
                let expr_1141 := 0x00
                /// @src 0:15661:15694  "Channels[_lcID].partyAddresses[0]"

                let _490, _491 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1140_slot, expr_1141)
                let _492 := read_from_storage_split_dynamic_t_address(_490, _491)
                let expr_1142 := _492
                /// @src 0:15706:15707  "0"
                let expr_1145 := 0x00
                /// @src 0:15698:15708  "address(0)"
                let expr_1146 := convert_t_rational_0_by_1_to_t_address(expr_1145)
                /// @src 0:15661:15708  "Channels[_lcID].partyAddresses[0] == address(0)"
                let expr_1147 := eq(cleanup_t_address(expr_1142), cleanup_t_address(expr_1146))
                /// @src 0:15653:15746  "require(Channels[_lcID].partyAddresses[0] == address(0), \"Channel has already been created.\")"
                require_helper_t_stringliteral_60374a152bbe60a7b108c9ee1f40c42ab84fab625cf311308a133131c86e4407(expr_1147)
                /// @src 0:15765:15772  "_partyI"
                let _493 := var__partyI_1125
                let expr_1152 := _493
                /// @src 0:15784:15787  "0x0"
                let expr_1155 := 0x00
                /// @src 0:15776:15788  "address(0x0)"
                let expr_1156 := convert_t_rational_0_by_1_to_t_address(expr_1155)
                /// @src 0:15765:15788  "_partyI != address(0x0)"
                let expr_1157 := iszero(eq(cleanup_t_address(expr_1152), cleanup_t_address(expr_1156)))
                /// @src 0:15757:15834  "require(_partyI != address(0x0), \"No partyI address provided to LC creation\")"
                require_helper_t_stringliteral_bdfa610a2001ca70b551beac9b70ab0e7a6fef491cc60d0bc6a5919df68afe2f(expr_1157)
                /// @src 0:15853:15862  "_balances"
                let _494_mpos := var__balances_1133_mpos
                let expr_1162_mpos := _494_mpos
                /// @src 0:15863:15864  "0"
                let expr_1163 := 0x00
                /// @src 0:15853:15865  "_balances[0]"
                let _495 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1162_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1163)))
                let expr_1164 := _495
                /// @src 0:15869:15870  "0"
                let expr_1165 := 0x00
                /// @src 0:15853:15870  "_balances[0] >= 0"
                let expr_1166 := iszero(lt(cleanup_t_uint256(expr_1164), convert_t_rational_0_by_1_to_t_uint256(expr_1165)))
                /// @src 0:15853:15891  "_balances[0] >= 0 && _balances[1] >= 0"
                let expr_1172 := expr_1166
                if expr_1172 {
                    /// @src 0:15874:15883  "_balances"
                    let _496_mpos := var__balances_1133_mpos
                    let expr_1167_mpos := _496_mpos
                    /// @src 0:15884:15885  "1"
                    let expr_1168 := 0x01
                    /// @src 0:15874:15886  "_balances[1]"
                    let _497 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1167_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1168)))
                    let expr_1169 := _497
                    /// @src 0:15890:15891  "0"
                    let expr_1170 := 0x00
                    /// @src 0:15874:15891  "_balances[1] >= 0"
                    let expr_1171 := iszero(lt(cleanup_t_uint256(expr_1169), convert_t_rational_0_by_1_to_t_uint256(expr_1170)))
                    /// @src 0:15853:15891  "_balances[0] >= 0 && _balances[1] >= 0"
                    expr_1172 := expr_1171
                }
                /// @src 0:15845:15923  "require(_balances[0] >= 0 && _balances[1] >= 0, \"Balances cannot be negative\")"
                require_helper_t_stringliteral_1fe53f121db27797c6ded2bf7b9678edab00b1a916965a505235d321a5b95e6f(expr_1172)
                /// @src 0:16190:16200  "msg.sender"
                let expr_1183 := caller()
                /// @src 0:16154:16162  "Channels"
                let _498_slot := 0x02
                let expr_1176_slot := _498_slot
                /// @src 0:16163:16168  "_lcID"
                let _499 := var__lcID_1123
                let expr_1177 := _499
                /// @src 0:16154:16169  "Channels[_lcID]"
                let _500 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1176_slot,expr_1177)
                let _501_slot := _500
                let expr_1178_slot := _501_slot
                /// @src 0:16154:16184  "Channels[_lcID].partyAddresses"
                let _502 := add(expr_1178_slot, 0)
                let _503_slot := _502
                let expr_1179_slot := _503_slot
                /// @src 0:16185:16186  "0"
                let expr_1180 := 0x00
                /// @src 0:16154:16187  "Channels[_lcID].partyAddresses[0]"

                let _504, _505 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1179_slot, expr_1180)
                /// @src 0:16154:16200  "Channels[_lcID].partyAddresses[0] = msg.sender"
                update_storage_value_t_address_to_t_address(_504, _505, expr_1183)
                let expr_1184 := expr_1183
                /// @src 0:16247:16254  "_partyI"
                let _506 := var__partyI_1125
                let expr_1192 := _506
                /// @src 0:16211:16219  "Channels"
                let _507_slot := 0x02
                let expr_1186_slot := _507_slot
                /// @src 0:16220:16225  "_lcID"
                let _508 := var__lcID_1123
                let expr_1187 := _508
                /// @src 0:16211:16226  "Channels[_lcID]"
                let _509 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1186_slot,expr_1187)
                let _510_slot := _509
                let expr_1188_slot := _510_slot
                /// @src 0:16211:16241  "Channels[_lcID].partyAddresses"
                let _511 := add(expr_1188_slot, 0)
                let _512_slot := _511
                let expr_1189_slot := _512_slot
                /// @src 0:16242:16243  "1"
                let expr_1190 := 0x01
                /// @src 0:16211:16244  "Channels[_lcID].partyAddresses[1]"

                let _513, _514 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1189_slot, expr_1190)
                /// @src 0:16211:16254  "Channels[_lcID].partyAddresses[1] = _partyI"
                update_storage_value_t_address_to_t_address(_513, _514, expr_1192)
                let expr_1193 := expr_1192
                /// @src 0:16269:16278  "_balances"
                let _515_mpos := var__balances_1133_mpos
                let expr_1195_mpos := _515_mpos
                /// @src 0:16279:16280  "0"
                let expr_1196 := 0x00
                /// @src 0:16269:16281  "_balances[0]"
                let _516 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1195_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1196)))
                let expr_1197 := _516
                /// @src 0:16285:16286  "0"
                let expr_1198 := 0x00
                /// @src 0:16269:16286  "_balances[0] != 0"
                let expr_1199 := iszero(eq(cleanup_t_uint256(expr_1197), convert_t_rational_0_by_1_to_t_uint256(expr_1198)))
                /// @src 0:16266:16447  "if(_balances[0] != 0) {..."
                if expr_1199 {
                    /// @src 0:16311:16320  "msg.value"
                    let expr_1202 := callvalue()
                    /// @src 0:16324:16333  "_balances"
                    let _517_mpos := var__balances_1133_mpos
                    let expr_1203_mpos := _517_mpos
                    /// @src 0:16334:16335  "0"
                    let expr_1204 := 0x00
                    /// @src 0:16324:16336  "_balances[0]"
                    let _518 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1203_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1204)))
                    let expr_1205 := _518
                    /// @src 0:16311:16336  "msg.value == _balances[0]"
                    let expr_1206 := eq(cleanup_t_uint256(expr_1202), cleanup_t_uint256(expr_1205))
                    /// @src 0:16303:16378  "require(msg.value == _balances[0], \"Eth balance does not match sent value\")"
                    require_helper_t_stringliteral_cd3362fdc44d5e6b08808f2d77e8cc959389f7f0d5051665123502dda37d3680(expr_1206)
                    /// @src 0:16426:16435  "msg.value"
                    let expr_1217 := callvalue()
                    /// @src 0:16393:16401  "Channels"
                    let _519_slot := 0x02
                    let expr_1210_slot := _519_slot
                    /// @src 0:16402:16407  "_lcID"
                    let _520 := var__lcID_1123
                    let expr_1211 := _520
                    /// @src 0:16393:16408  "Channels[_lcID]"
                    let _521 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1210_slot,expr_1211)
                    let _522_slot := _521
                    let expr_1212_slot := _522_slot
                    /// @src 0:16393:16420  "Channels[_lcID].ethBalances"
                    let _523 := add(expr_1212_slot, 2)
                    let _524_slot := _523
                    let expr_1213_slot := _524_slot
                    /// @src 0:16421:16422  "0"
                    let expr_1214 := 0x00
                    /// @src 0:16393:16423  "Channels[_lcID].ethBalances[0]"

                    let _525, _526 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_1213_slot, expr_1214)
                    /// @src 0:16393:16435  "Channels[_lcID].ethBalances[0] = msg.value"
                    update_storage_value_t_uint256_to_t_uint256(_525, _526, expr_1217)
                    let expr_1218 := expr_1217
                    /// @src 0:16266:16447  "if(_balances[0] != 0) {..."
                }
                /// @src 0:16460:16469  "_balances"
                let _527_mpos := var__balances_1133_mpos
                let expr_1222_mpos := _527_mpos
                /// @src 0:16470:16471  "1"
                let expr_1223 := 0x01
                /// @src 0:16460:16472  "_balances[1]"
                let _528 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1222_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1223)))
                let expr_1224 := _528
                /// @src 0:16476:16477  "0"
                let expr_1225 := 0x00
                /// @src 0:16460:16477  "_balances[1] != 0"
                let expr_1226 := iszero(eq(cleanup_t_uint256(expr_1224), convert_t_rational_0_by_1_to_t_uint256(expr_1225)))
                /// @src 0:16457:16757  "if(_balances[1] != 0) {..."
                if expr_1226 {
                    /// @src 0:16537:16543  "_token"
                    let _529 := var__token_1129
                    let expr_1232 := _529
                    /// @src 0:16518:16544  "HumanStandardToken(_token)"
                    let expr_1233_address := convert_t_address_to_t_contract$_HumanStandardToken_$922(expr_1232)
                    /// @src 0:16494:16502  "Channels"
                    let _530_slot := 0x02
                    let expr_1227_slot := _530_slot
                    /// @src 0:16503:16508  "_lcID"
                    let _531 := var__lcID_1123
                    let expr_1228 := _531
                    /// @src 0:16494:16509  "Channels[_lcID]"
                    let _532 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1227_slot,expr_1228)
                    let _533_slot := _532
                    let expr_1229_slot := _533_slot
                    /// @src 0:16494:16515  "Channels[_lcID].token"
                    let _534 := add(expr_1229_slot, 19)
                    /// @src 0:16494:16544  "Channels[_lcID].token = HumanStandardToken(_token)"
                    update_storage_value_offset_0_t_contract$_HumanStandardToken_$922_to_t_contract$_HumanStandardToken_$922(_534, expr_1233_address)
                    let expr_1234_address := expr_1233_address
                    /// @src 0:16567:16575  "Channels"
                    let _535_slot := 0x02
                    let expr_1237_slot := _535_slot
                    /// @src 0:16576:16581  "_lcID"
                    let _536 := var__lcID_1123
                    let expr_1238 := _536
                    /// @src 0:16567:16582  "Channels[_lcID]"
                    let _537 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1237_slot,expr_1238)
                    let _538_slot := _537
                    let expr_1239_slot := _538_slot
                    /// @src 0:16567:16588  "Channels[_lcID].token"
                    let _539 := add(expr_1239_slot, 19)
                    let _540_address := read_from_storage_split_offset_0_t_contract$_HumanStandardToken_$922(_539)
                    let expr_1240_address := _540_address
                    /// @src 0:16567:16601  "Channels[_lcID].token.transferFrom"
                    let expr_1241_address := convert_t_contract$_HumanStandardToken_$922_to_t_address(expr_1240_address)
                    let expr_1241_functionSelector := 0x23b872dd
                    /// @src 0:16602:16612  "msg.sender"
                    let expr_1243 := caller()
                    /// @src 0:16622:16626  "this"
                    let expr_1246_address := address()
                    /// @src 0:16614:16627  "address(this)"
                    let expr_1247 := convert_t_contract$_LedgerChannel_$3495_to_t_address(expr_1246_address)
                    /// @src 0:16629:16638  "_balances"
                    let _541_mpos := var__balances_1133_mpos
                    let expr_1248_mpos := _541_mpos
                    /// @src 0:16639:16640  "1"
                    let expr_1249 := 0x01
                    /// @src 0:16629:16641  "_balances[1]"
                    let _542 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1248_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1249)))
                    let expr_1250 := _542
                    /// @src 0:16567:16642  "Channels[_lcID].token.transferFrom(msg.sender, address(this), _balances[1])"

                    // storage for arguments and returned data
                    let _543 := allocate_unbounded()
                    mstore(_543, shift_left_224(expr_1241_functionSelector))
                    let _544 := abi_encode_tuple_t_address_t_address_t_uint256__to_t_address_t_address_t_uint256__fromStack(add(_543, 4) , expr_1243, expr_1247, expr_1250)

                    let _545 := call(gas(), expr_1241_address,  0,  _543, sub(_544, _543), _543, 32)

                    if iszero(_545) { revert_forward_1() }

                    let expr_1251
                    if _545 {

                        let _546 := 32

                        if gt(_546, returndatasize()) {
                            _546 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_543, _546)

                        // decode return parameters from external try-call into retVars
                        expr_1251 :=  abi_decode_tuple_t_bool_fromMemory(_543, add(_543, _546))
                    }
                    /// @src 0:16559:16683  "require(Channels[_lcID].token.transferFrom(msg.sender, address(this), _balances[1]),\"CreateChannel: token transfer failure\")"
                    require_helper_t_stringliteral_ec05e37bcff7fda60da4749488a9e691a8362b1493d4b9355637e1e752070c61(expr_1251)
                    /// @src 0:16733:16742  "_balances"
                    let _547_mpos := var__balances_1133_mpos
                    let expr_1261_mpos := _547_mpos
                    /// @src 0:16743:16744  "1"
                    let expr_1262 := 0x01
                    /// @src 0:16733:16745  "_balances[1]"
                    let _548 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1261_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1262)))
                    let expr_1263 := _548
                    /// @src 0:16698:16706  "Channels"
                    let _549_slot := 0x02
                    let expr_1255_slot := _549_slot
                    /// @src 0:16707:16712  "_lcID"
                    let _550 := var__lcID_1123
                    let expr_1256 := _550
                    /// @src 0:16698:16713  "Channels[_lcID]"
                    let _551 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1255_slot,expr_1256)
                    let _552_slot := _551
                    let expr_1257_slot := _552_slot
                    /// @src 0:16698:16727  "Channels[_lcID].erc20Balances"
                    let _553 := add(expr_1257_slot, 6)
                    let _554_slot := _553
                    let expr_1258_slot := _554_slot
                    /// @src 0:16728:16729  "0"
                    let expr_1259 := 0x00
                    /// @src 0:16698:16730  "Channels[_lcID].erc20Balances[0]"

                    let _555, _556 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_1258_slot, expr_1259)
                    /// @src 0:16698:16745  "Channels[_lcID].erc20Balances[0] = _balances[1]"
                    update_storage_value_t_uint256_to_t_uint256(_555, _556, expr_1263)
                    let expr_1264 := expr_1263
                    /// @src 0:16457:16757  "if(_balances[1] != 0) {..."
                }
                /// @src 0:16795:16796  "0"
                let expr_1272 := 0x00
                /// @src 0:16768:16796  "Channels[_lcID].sequence = 0"
                let _557 := convert_t_rational_0_by_1_to_t_uint256(expr_1272)
                /// @src 0:16768:16776  "Channels"
                let _558_slot := 0x02
                let expr_1268_slot := _558_slot
                /// @src 0:16777:16782  "_lcID"
                let _559 := var__lcID_1123
                let expr_1269 := _559
                /// @src 0:16768:16783  "Channels[_lcID]"
                let _560 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1268_slot,expr_1269)
                let _561_slot := _560
                let expr_1270_slot := _561_slot
                /// @src 0:16768:16792  "Channels[_lcID].sequence"
                let _562 := add(expr_1270_slot, 12)
                /// @src 0:16768:16796  "Channels[_lcID].sequence = 0"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_562, _557)
                let expr_1273 := _557
                /// @src 0:16837:16849  "_confirmTime"
                let _563 := var__confirmTime_1127
                let expr_1279 := _563
                /// @src 0:16807:16815  "Channels"
                let _564_slot := 0x02
                let expr_1275_slot := _564_slot
                /// @src 0:16816:16821  "_lcID"
                let _565 := var__lcID_1123
                let expr_1276 := _565
                /// @src 0:16807:16822  "Channels[_lcID]"
                let _566 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1275_slot,expr_1276)
                let _567_slot := _566
                let expr_1277_slot := _567_slot
                /// @src 0:16807:16834  "Channels[_lcID].confirmTime"
                let _568 := add(expr_1277_slot, 13)
                /// @src 0:16807:16849  "Channels[_lcID].confirmTime = _confirmTime"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_568, expr_1279)
                let expr_1280 := expr_1279
                /// @src 0:17137:17152  "block.timestamp"
                let expr_1287 := timestamp()
                /// @src 0:17155:17167  "_confirmTime"
                let _569 := var__confirmTime_1127
                let expr_1288 := _569
                /// @src 0:17137:17167  "block.timestamp + _confirmTime"
                let expr_1289 := checked_add_t_uint256(expr_1287, expr_1288)

                /// @src 0:17105:17113  "Channels"
                let _570_slot := 0x02
                let expr_1282_slot := _570_slot
                /// @src 0:17114:17119  "_lcID"
                let _571 := var__lcID_1123
                let expr_1283 := _571
                /// @src 0:17105:17120  "Channels[_lcID]"
                let _572 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1282_slot,expr_1283)
                let _573_slot := _572
                let expr_1284_slot := _573_slot
                /// @src 0:17105:17134  "Channels[_lcID].LCopenTimeout"
                let _574 := add(expr_1284_slot, 15)
                /// @src 0:17105:17167  "Channels[_lcID].LCopenTimeout = block.timestamp + _confirmTime"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_574, expr_1289)
                let expr_1290 := expr_1289
                /// @src 0:17211:17220  "_balances"
                let _575_mpos := var__balances_1133_mpos
                let expr_1296_mpos := _575_mpos
                /// @src 0:17178:17186  "Channels"
                let _576_slot := 0x02
                let expr_1292_slot := _576_slot
                /// @src 0:17187:17192  "_lcID"
                let _577 := var__lcID_1123
                let expr_1293 := _577
                /// @src 0:17178:17193  "Channels[_lcID]"
                let _578 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1292_slot,expr_1293)
                let _579_slot := _578
                let expr_1294_slot := _579_slot
                /// @src 0:17178:17208  "Channels[_lcID].initialDeposit"
                let _580 := add(expr_1294_slot, 10)
                /// @src 0:17178:17220  "Channels[_lcID].initialDeposit = _balances"
                update_storage_value_offset_0_t_array$_t_uint256_$2_memory_ptr_to_t_array$_t_uint256_$2_storage(_580, expr_1296_mpos)
                let _581_slot := _580
                let expr_1297_slot := _581_slot
                /// @src 0:17247:17252  "_lcID"
                let _582 := var__lcID_1123
                let expr_1300 := _582
                /// @src 0:17254:17264  "msg.sender"
                let expr_1302 := caller()
                /// @src 0:17266:17273  "_partyI"
                let _583 := var__partyI_1125
                let expr_1303 := _583
                /// @src 0:17275:17284  "_balances"
                let _584_mpos := var__balances_1133_mpos
                let expr_1304_mpos := _584_mpos
                /// @src 0:17285:17286  "0"
                let expr_1305 := 0x00
                /// @src 0:17275:17287  "_balances[0]"
                let _585 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1304_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1305)))
                let expr_1306 := _585
                /// @src 0:17289:17295  "_token"
                let _586 := var__token_1129
                let expr_1307 := _586
                /// @src 0:17297:17306  "_balances"
                let _587_mpos := var__balances_1133_mpos
                let expr_1308_mpos := _587_mpos
                /// @src 0:17307:17308  "1"
                let expr_1309 := 0x01
                /// @src 0:17297:17309  "_balances[1]"
                let _588 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_1308_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1309)))
                let expr_1310 := _588
                /// @src 0:17311:17319  "Channels"
                let _589_slot := 0x02
                let expr_1311_slot := _589_slot
                /// @src 0:17320:17325  "_lcID"
                let _590 := var__lcID_1123
                let expr_1312 := _590
                /// @src 0:17311:17326  "Channels[_lcID]"
                let _591 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1311_slot,expr_1312)
                let _592_slot := _591
                let expr_1313_slot := _592_slot
                /// @src 0:17311:17340  "Channels[_lcID].LCopenTimeout"
                let _593 := add(expr_1313_slot, 15)
                let _594 := read_from_storage_split_offset_0_t_uint256(_593)
                let expr_1314 := _594
                /// @src 0:17237:17341  "DidLCOpen(_lcID, msg.sender, _partyI, _balances[0], _token, _balances[1], Channels[_lcID].LCopenTimeout)"
                let _595 := 0x8b2098c2098f06a2c213a9f1bca2306b53ebee7e6c0db45275683b087e94db1c
                let _596 := convert_t_bytes32_to_t_bytes32(expr_1300)
                let _597 := convert_t_address_to_t_address(expr_1302)
                let _598 := convert_t_address_to_t_address(expr_1303)
                {
                    let _599 := allocate_unbounded()
                    let _600 := abi_encode_tuple_t_uint256_t_address_t_uint256_t_uint256__to_t_uint256_t_address_t_uint256_t_uint256__fromStack(_599 , expr_1306, expr_1307, expr_1310, expr_1314)
                    log4(_599, sub(_600, _599) , _595, _596, _597, _598)
                }
            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

            function store_literal_in_memory_ecaf47db7ae62b9758d0f34a122dcca365003a89557cb390677a57d4b3d0998f(memPtr) {

                mstore(add(memPtr, 0), "LC is closed.")

            }

            function abi_encode_t_stringliteral_ecaf47db7ae62b9758d0f34a122dcca365003a89557cb390677a57d4b3d0998f_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 13)
                store_literal_in_memory_ecaf47db7ae62b9758d0f34a122dcca365003a89557cb390677a57d4b3d0998f(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_ecaf47db7ae62b9758d0f34a122dcca365003a89557cb390677a57d4b3d0998f__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_ecaf47db7ae62b9758d0f34a122dcca365003a89557cb390677a57d4b3d0998f_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_ecaf47db7ae62b9758d0f34a122dcca365003a89557cb390677a57d4b3d0998f(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_ecaf47db7ae62b9758d0f34a122dcca365003a89557cb390677a57d4b3d0998f__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_2081ccfd8184d971c74bd68fffddbc8315ebe1151f1f918825d5d93525733bad(memPtr) {

                mstore(add(memPtr, 0), "VC is closed.")

            }

            function abi_encode_t_stringliteral_2081ccfd8184d971c74bd68fffddbc8315ebe1151f1f918825d5d93525733bad_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 13)
                store_literal_in_memory_2081ccfd8184d971c74bd68fffddbc8315ebe1151f1f918825d5d93525733bad(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_2081ccfd8184d971c74bd68fffddbc8315ebe1151f1f918825d5d93525733bad__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_2081ccfd8184d971c74bd68fffddbc8315ebe1151f1f918825d5d93525733bad_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_2081ccfd8184d971c74bd68fffddbc8315ebe1151f1f918825d5d93525733bad(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_2081ccfd8184d971c74bd68fffddbc8315ebe1151f1f918825d5d93525733bad__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_d0166f47914752eb44c6b7c48121d9c150c4a5fb58dd0ad2c1f4003c250e996f(memPtr) {

                mstore(add(memPtr, 0), "LC timeout not over.")

            }

            function abi_encode_t_stringliteral_d0166f47914752eb44c6b7c48121d9c150c4a5fb58dd0ad2c1f4003c250e996f_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 20)
                store_literal_in_memory_d0166f47914752eb44c6b7c48121d9c150c4a5fb58dd0ad2c1f4003c250e996f(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_d0166f47914752eb44c6b7c48121d9c150c4a5fb58dd0ad2c1f4003c250e996f__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_d0166f47914752eb44c6b7c48121d9c150c4a5fb58dd0ad2c1f4003c250e996f_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_d0166f47914752eb44c6b7c48121d9c150c4a5fb58dd0ad2c1f4003c250e996f(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_d0166f47914752eb44c6b7c48121d9c150c4a5fb58dd0ad2c1f4003c250e996f__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function abi_encode_tuple_packed_t_bytes32_t_uint256_t_address_t_address_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__to_t_bytes32_t_uint256_t_address_t_address_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__nonPadded_inplace_fromStack(pos , value0, value1, value2, value3, value4, value5, value6, value7, value8, value9) -> end {

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 32)

                abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 32)

                abi_encode_t_address_to_t_address_nonPadded_inplace_fromStack(value2,  pos)
                pos := add(pos, 20)

                abi_encode_t_address_to_t_address_nonPadded_inplace_fromStack(value3,  pos)
                pos := add(pos, 20)

                abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value4,  pos)
                pos := add(pos, 32)

                abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value5,  pos)
                pos := add(pos, 32)

                abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value6,  pos)
                pos := add(pos, 32)

                abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value7,  pos)
                pos := add(pos, 32)

                abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value8,  pos)
                pos := add(pos, 32)

                abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value9,  pos)
                pos := add(pos, 32)

                end := pos
            }

            function update_storage_value_offset_0_t_address_to_t_address(slot, value_0) {
                let convertedValue_0 := convert_t_address_to_t_address(value_0)
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(convertedValue_0)))
            }

            function shift_left_8(value) -> newValue {
                newValue :=

                shl(8, value)

            }

            function update_byte_slice_1_shift_1(value, toInsert) -> result {
                let mask := 65280
                toInsert := shift_left_8(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_1_t_bool_to_t_bool(slot, value_0) {
                let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
                sstore(slot, update_byte_slice_1_shift_1(sload(slot), prepare_store_t_bool(convertedValue_0)))
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

            function abi_encode_tuple_t_bytes_memory_ptr_t_uint256_t_address_t_address_t_uint256_t_uint256__to_t_bytes_memory_ptr_t_uint256_t_address_t_address_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4, value5) -> tail {
                tail := add(headStart, 192)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value0,  tail)

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_address_to_t_address_fromStack(value2,  add(headStart, 64))

                abi_encode_t_address_to_t_address_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

                abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 160))

            }

            /// @ast-id 2515
            /// @src 0:25521:27633  "function initVCstate(..."
            function fun_initVCstate_2515(var__lcID_2287, var__vcID_2289, var__proof_2291_mpos, var__partyA_2293, var__partyB_2295, var__bond_2299_mpos, var__balances_2303_mpos, var_sigA_2305_mpos) {

                /// @src 0:25884:25892  "Channels"
                let _601_slot := 0x02
                let expr_2309_slot := _601_slot
                /// @src 0:25893:25898  "_lcID"
                let _602 := var__lcID_2287
                let expr_2310 := _602
                /// @src 0:25884:25899  "Channels[_lcID]"
                let _603 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2309_slot,expr_2310)
                let _604_slot := _603
                let expr_2311_slot := _604_slot
                /// @src 0:25884:25906  "Channels[_lcID].isOpen"
                let _605 := add(expr_2311_slot, 17)
                let _606 := read_from_storage_split_offset_0_t_bool(_605)
                let expr_2312 := _606
                /// @src 0:25876:25924  "require(Channels[_lcID].isOpen, \"LC is closed.\")"
                require_helper_t_stringliteral_ecaf47db7ae62b9758d0f34a122dcca365003a89557cb390677a57d4b3d0998f(expr_2312)
                /// @src 0:25981:25996  "virtualChannels"
                let _607_slot := 0x01
                let expr_2317_slot := _607_slot
                /// @src 0:25997:26002  "_vcID"
                let _608 := var__vcID_2289
                let expr_2318 := _608
                /// @src 0:25981:26003  "virtualChannels[_vcID]"
                let _609 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2317_slot,expr_2318)
                let _610_slot := _609
                let expr_2319_slot := _610_slot
                /// @src 0:25981:26011  "virtualChannels[_vcID].isClose"
                let _611 := add(expr_2319_slot, 0)
                let _612 := read_from_storage_split_offset_0_t_bool(_611)
                let expr_2320 := _612
                /// @src 0:25980:26011  "!virtualChannels[_vcID].isClose"
                let expr_2321 := cleanup_t_bool(iszero(expr_2320))
                /// @src 0:25972:26029  "require(!virtualChannels[_vcID].isClose, \"VC is closed.\")"
                require_helper_t_stringliteral_2081ccfd8184d971c74bd68fffddbc8315ebe1151f1f918825d5d93525733bad(expr_2321)
                /// @src 0:26149:26157  "Channels"
                let _613_slot := 0x02
                let expr_2326_slot := _613_slot
                /// @src 0:26158:26163  "_lcID"
                let _614 := var__lcID_2287
                let expr_2327 := _614
                /// @src 0:26149:26164  "Channels[_lcID]"
                let _615 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2326_slot,expr_2327)
                let _616_slot := _615
                let expr_2328_slot := _616_slot
                /// @src 0:26149:26180  "Channels[_lcID].updateLCtimeout"
                let _617 := add(expr_2328_slot, 16)
                let _618 := read_from_storage_split_offset_0_t_uint256(_617)
                let expr_2329 := _618
                /// @src 0:26183:26198  "block.timestamp"
                let expr_2331 := timestamp()
                /// @src 0:26149:26198  "Channels[_lcID].updateLCtimeout < block.timestamp"
                let expr_2332 := lt(cleanup_t_uint256(expr_2329), cleanup_t_uint256(expr_2331))
                /// @src 0:26141:26223  "require(Channels[_lcID].updateLCtimeout < block.timestamp, \"LC timeout not over.\")"
                require_helper_t_stringliteral_d0166f47914752eb44c6b7c48121d9c150c4a5fb58dd0ad2c1f4003c250e996f(expr_2332)
                /// @src 0:26294:26309  "virtualChannels"
                let _619_slot := 0x01
                let expr_2337_slot := _619_slot
                /// @src 0:26310:26315  "_vcID"
                let _620 := var__vcID_2289
                let expr_2338 := _620
                /// @src 0:26294:26316  "virtualChannels[_vcID]"
                let _621 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2337_slot,expr_2338)
                let _622_slot := _621
                let expr_2339_slot := _622_slot
                /// @src 0:26294:26332  "virtualChannels[_vcID].updateVCtimeout"
                let _623 := add(expr_2339_slot, 3)
                let _624 := read_from_storage_split_offset_0_t_uint256(_623)
                let expr_2340 := _624
                /// @src 0:26336:26337  "0"
                let expr_2341 := 0x00
                /// @src 0:26294:26337  "virtualChannels[_vcID].updateVCtimeout == 0"
                let expr_2342 := eq(cleanup_t_uint256(expr_2340), convert_t_rational_0_by_1_to_t_uint256(expr_2341))
                /// @src 0:26286:26338  "require(virtualChannels[_vcID].updateVCtimeout == 0)"
                require_helper(expr_2342)
                /// @src 0:26456:26461  "_vcID"
                let _625 := var__vcID_2289
                let expr_2350 := _625
                /// @src 0:26471:26472  "0"
                let expr_2353 := 0x00
                /// @src 0:26463:26473  "uint256(0)"
                let expr_2354 := convert_t_rational_0_by_1_to_t_uint256(expr_2353)
                /// @src 0:26475:26482  "_partyA"
                let _626 := var__partyA_2293
                let expr_2355 := _626
                /// @src 0:26484:26491  "_partyB"
                let _627 := var__partyB_2295
                let expr_2356 := _627
                /// @src 0:26493:26498  "_bond"
                let _628_mpos := var__bond_2299_mpos
                let expr_2357_mpos := _628_mpos
                /// @src 0:26499:26500  "0"
                let expr_2358 := 0x00
                /// @src 0:26493:26501  "_bond[0]"
                let _629 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_2357_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_2358)))
                let expr_2359 := _629
                /// @src 0:26503:26508  "_bond"
                let _630_mpos := var__bond_2299_mpos
                let expr_2360_mpos := _630_mpos
                /// @src 0:26509:26510  "1"
                let expr_2361 := 0x01
                /// @src 0:26503:26511  "_bond[1]"
                let _631 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$2_memory_ptr(expr_2360_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_2361)))
                let expr_2362 := _631
                /// @src 0:26513:26522  "_balances"
                let _632_mpos := var__balances_2303_mpos
                let expr_2363_mpos := _632_mpos
                /// @src 0:26523:26524  "0"
                let expr_2364 := 0x00
                /// @src 0:26513:26525  "_balances[0]"
                let _633 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2363_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_2364)))
                let expr_2365 := _633
                /// @src 0:26527:26536  "_balances"
                let _634_mpos := var__balances_2303_mpos
                let expr_2366_mpos := _634_mpos
                /// @src 0:26537:26538  "1"
                let expr_2367 := 0x01
                /// @src 0:26527:26539  "_balances[1]"
                let _635 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2366_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_2367)))
                let expr_2368 := _635
                /// @src 0:26541:26550  "_balances"
                let _636_mpos := var__balances_2303_mpos
                let expr_2369_mpos := _636_mpos
                /// @src 0:26551:26552  "2"
                let expr_2370 := 0x02
                /// @src 0:26541:26553  "_balances[2]"
                let _637 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2369_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_2370)))
                let expr_2371 := _637
                /// @src 0:26555:26564  "_balances"
                let _638_mpos := var__balances_2303_mpos
                let expr_2372_mpos := _638_mpos
                /// @src 0:26565:26566  "3"
                let expr_2373 := 0x03
                /// @src 0:26555:26567  "_balances[3]"
                let _639 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2372_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_2373)))
                let expr_2374 := _639
                /// @src 0:26439:26568  "abi.encodePacked(_vcID, uint256(0), _partyA, _partyB, _bond[0], _bond[1], _balances[0], _balances[1], _balances[2], _balances[3])"

                let expr_2375_mpos := allocate_unbounded()
                let _640 := add(expr_2375_mpos, 0x20)

                let _641 := abi_encode_tuple_packed_t_bytes32_t_uint256_t_address_t_address_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__to_t_bytes32_t_uint256_t_address_t_address_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__nonPadded_inplace_fromStack(_640, expr_2350, expr_2354, expr_2355, expr_2356, expr_2359, expr_2362, expr_2365, expr_2368, expr_2371, expr_2374)
                mstore(expr_2375_mpos, sub(_641, add(expr_2375_mpos, 0x20)))
                finalize_allocation(expr_2375_mpos, sub(_641, expr_2375_mpos))
                /// @src 0:26415:26579  "keccak256(..."
                let expr_2376 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_2375_mpos), array_length_t_bytes_memory_ptr(expr_2375_mpos))
                /// @src 0:26394:26579  "bytes32 _initState = keccak256(..."
                let var__initState_2346 := expr_2376
                /// @src 0:26673:26680  "_partyA"
                let _642 := var__partyA_2293
                let expr_2379 := _642
                /// @src 0:26684:26691  "ECTools"
                let expr_2380_address := linkersymbol("ECTools_645")
                /// @src 0:26684:26705  "ECTools.recoverSigner"
                let expr_2381_address := convert_t_type$_t_contract$_ECTools_$645_$_to_t_address(expr_2380_address)
                let expr_2381_functionSelector := 0xdca95419
                /// @src 0:26706:26716  "_initState"
                let _643 := var__initState_2346
                let expr_2382 := _643
                /// @src 0:26718:26722  "sigA"
                let _644_mpos := var_sigA_2305_mpos
                let expr_2383_mpos := _644_mpos
                /// @src 0:26684:26723  "ECTools.recoverSigner(_initState, sigA)"

                // storage for arguments and returned data
                let _645 := allocate_unbounded()
                mstore(_645, shift_left_224(expr_2381_functionSelector))
                let _646 := abi_encode_tuple_t_bytes32_t_string_memory_ptr__to_t_bytes32_t_string_memory_ptr__fromStack_library(add(_645, 4) , expr_2382, expr_2383_mpos)

                let _647 := delegatecall(gas(), expr_2381_address,  _645, sub(_646, _645), _645, 32)

                if iszero(_647) { revert_forward_1() }

                let expr_2384
                if _647 {

                    let _648 := 32

                    if gt(_648, returndatasize()) {
                        _648 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_645, _648)

                    // decode return parameters from external try-call into retVars
                    expr_2384 :=  abi_decode_tuple_t_address_fromMemory(_645, add(_645, _648))
                }
                /// @src 0:26673:26723  "_partyA == ECTools.recoverSigner(_initState, sigA)"
                let expr_2385 := eq(cleanup_t_address(expr_2379), cleanup_t_address(expr_2384))
                /// @src 0:26665:26724  "require(_partyA == ECTools.recoverSigner(_initState, sigA))"
                require_helper(expr_2385)
                /// @src 0:26808:26818  "_initState"
                let _649 := var__initState_2346
                let expr_2390 := _649
                /// @src 0:26820:26826  "_proof"
                let _650_mpos := var__proof_2291_mpos
                let expr_2391_mpos := _650_mpos
                /// @src 0:26828:26836  "Channels"
                let _651_slot := 0x02
                let expr_2392_slot := _651_slot
                /// @src 0:26837:26842  "_lcID"
                let _652 := var__lcID_2287
                let expr_2393 := _652
                /// @src 0:26828:26843  "Channels[_lcID]"
                let _653 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2392_slot,expr_2393)
                let _654_slot := _653
                let expr_2394_slot := _654_slot
                /// @src 0:26828:26854  "Channels[_lcID].VCrootHash"
                let _655 := add(expr_2394_slot, 14)
                let _656 := read_from_storage_split_offset_0_t_bytes32(_655)
                let expr_2395 := _656
                /// @src 0:26795:26855  "_isContained(_initState, _proof, Channels[_lcID].VCrootHash)"
                let expr_2396 := fun__isContained_3358(expr_2390, expr_2391_mpos, expr_2395)
                /// @src 0:26859:26863  "true"
                let expr_2397 := 0x01
                /// @src 0:26795:26863  "_isContained(_initState, _proof, Channels[_lcID].VCrootHash) == true"
                let expr_2398 := eq(cleanup_t_bool(expr_2396), cleanup_t_bool(expr_2397))
                /// @src 0:26787:26864  "require(_isContained(_initState, _proof, Channels[_lcID].VCrootHash) == true)"
                require_helper(expr_2398)
                /// @src 0:26908:26915  "_partyA"
                let _657 := var__partyA_2293
                let expr_2405 := _657
                /// @src 0:26876:26891  "virtualChannels"
                let _658_slot := 0x01
                let expr_2401_slot := _658_slot
                /// @src 0:26892:26897  "_vcID"
                let _659 := var__vcID_2289
                let expr_2402 := _659
                /// @src 0:26876:26898  "virtualChannels[_vcID]"
                let _660 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2401_slot,expr_2402)
                let _661_slot := _660
                let expr_2403_slot := _661_slot
                /// @src 0:26876:26905  "virtualChannels[_vcID].partyA"
                let _662 := add(expr_2403_slot, 4)
                /// @src 0:26876:26915  "virtualChannels[_vcID].partyA = _partyA"
                update_storage_value_offset_0_t_address_to_t_address(_662, expr_2405)
                let expr_2406 := expr_2405
                /// @src 0:26978:26985  "_partyB"
                let _663 := var__partyB_2295
                let expr_2412 := _663
                /// @src 0:26946:26961  "virtualChannels"
                let _664_slot := 0x01
                let expr_2408_slot := _664_slot
                /// @src 0:26962:26967  "_vcID"
                let _665 := var__vcID_2289
                let expr_2409 := _665
                /// @src 0:26946:26968  "virtualChannels[_vcID]"
                let _666 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2408_slot,expr_2409)
                let _667_slot := _666
                let expr_2410_slot := _667_slot
                /// @src 0:26946:26975  "virtualChannels[_vcID].partyB"
                let _668 := add(expr_2410_slot, 5)
                /// @src 0:26946:26985  "virtualChannels[_vcID].partyB = _partyB"
                update_storage_value_offset_0_t_address_to_t_address(_668, expr_2412)
                let expr_2413 := expr_2412
                /// @src 0:27058:27059  "0"
                let expr_2421 := 0x00
                /// @src 0:27050:27060  "uint256(0)"
                let expr_2422 := convert_t_rational_0_by_1_to_t_uint256(expr_2421)
                /// @src 0:27016:27031  "virtualChannels"
                let _669_slot := 0x01
                let expr_2415_slot := _669_slot
                /// @src 0:27032:27037  "_vcID"
                let _670 := var__vcID_2289
                let expr_2416 := _670
                /// @src 0:27016:27038  "virtualChannels[_vcID]"
                let _671 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2415_slot,expr_2416)
                let _672_slot := _671
                let expr_2417_slot := _672_slot
                /// @src 0:27016:27047  "virtualChannels[_vcID].sequence"
                let _673 := add(expr_2417_slot, 1)
                /// @src 0:27016:27060  "virtualChannels[_vcID].sequence = uint256(0)"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_673, expr_2422)
                let expr_2423 := expr_2422
                /// @src 0:27111:27120  "_balances"
                let _674_mpos := var__balances_2303_mpos
                let expr_2431_mpos := _674_mpos
                /// @src 0:27121:27122  "0"
                let expr_2432 := 0x00
                /// @src 0:27111:27123  "_balances[0]"
                let _675 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2431_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_2432)))
                let expr_2433 := _675
                /// @src 0:27071:27086  "virtualChannels"
                let _676_slot := 0x01
                let expr_2425_slot := _676_slot
                /// @src 0:27087:27092  "_vcID"
                let _677 := var__vcID_2289
                let expr_2426 := _677
                /// @src 0:27071:27093  "virtualChannels[_vcID]"
                let _678 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2425_slot,expr_2426)
                let _679_slot := _678
                let expr_2427_slot := _679_slot
                /// @src 0:27071:27105  "virtualChannels[_vcID].ethBalances"
                let _680 := add(expr_2427_slot, 7)
                let _681_slot := _680
                let expr_2428_slot := _681_slot
                /// @src 0:27106:27107  "0"
                let expr_2429 := 0x00
                /// @src 0:27071:27108  "virtualChannels[_vcID].ethBalances[0]"

                let _682, _683 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2428_slot, expr_2429)
                /// @src 0:27071:27123  "virtualChannels[_vcID].ethBalances[0] = _balances[0]"
                update_storage_value_t_uint256_to_t_uint256(_682, _683, expr_2433)
                let expr_2434 := expr_2433
                /// @src 0:27174:27183  "_balances"
                let _684_mpos := var__balances_2303_mpos
                let expr_2442_mpos := _684_mpos
                /// @src 0:27184:27185  "1"
                let expr_2443 := 0x01
                /// @src 0:27174:27186  "_balances[1]"
                let _685 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2442_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_2443)))
                let expr_2444 := _685
                /// @src 0:27134:27149  "virtualChannels"
                let _686_slot := 0x01
                let expr_2436_slot := _686_slot
                /// @src 0:27150:27155  "_vcID"
                let _687 := var__vcID_2289
                let expr_2437 := _687
                /// @src 0:27134:27156  "virtualChannels[_vcID]"
                let _688 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2436_slot,expr_2437)
                let _689_slot := _688
                let expr_2438_slot := _689_slot
                /// @src 0:27134:27168  "virtualChannels[_vcID].ethBalances"
                let _690 := add(expr_2438_slot, 7)
                let _691_slot := _690
                let expr_2439_slot := _691_slot
                /// @src 0:27169:27170  "1"
                let expr_2440 := 0x01
                /// @src 0:27134:27171  "virtualChannels[_vcID].ethBalances[1]"

                let _692, _693 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2439_slot, expr_2440)
                /// @src 0:27134:27186  "virtualChannels[_vcID].ethBalances[1] = _balances[1]"
                update_storage_value_t_uint256_to_t_uint256(_692, _693, expr_2444)
                let expr_2445 := expr_2444
                /// @src 0:27239:27248  "_balances"
                let _694_mpos := var__balances_2303_mpos
                let expr_2453_mpos := _694_mpos
                /// @src 0:27249:27250  "2"
                let expr_2454 := 0x02
                /// @src 0:27239:27251  "_balances[2]"
                let _695 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2453_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_2454)))
                let expr_2455 := _695
                /// @src 0:27197:27212  "virtualChannels"
                let _696_slot := 0x01
                let expr_2447_slot := _696_slot
                /// @src 0:27213:27218  "_vcID"
                let _697 := var__vcID_2289
                let expr_2448 := _697
                /// @src 0:27197:27219  "virtualChannels[_vcID]"
                let _698 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2447_slot,expr_2448)
                let _699_slot := _698
                let expr_2449_slot := _699_slot
                /// @src 0:27197:27233  "virtualChannels[_vcID].erc20Balances"
                let _700 := add(expr_2449_slot, 9)
                let _701_slot := _700
                let expr_2450_slot := _701_slot
                /// @src 0:27234:27235  "0"
                let expr_2451 := 0x00
                /// @src 0:27197:27236  "virtualChannels[_vcID].erc20Balances[0]"

                let _702, _703 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2450_slot, expr_2451)
                /// @src 0:27197:27251  "virtualChannels[_vcID].erc20Balances[0] = _balances[2]"
                update_storage_value_t_uint256_to_t_uint256(_702, _703, expr_2455)
                let expr_2456 := expr_2455
                /// @src 0:27304:27313  "_balances"
                let _704_mpos := var__balances_2303_mpos
                let expr_2464_mpos := _704_mpos
                /// @src 0:27314:27315  "3"
                let expr_2465 := 0x03
                /// @src 0:27304:27316  "_balances[3]"
                let _705 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2464_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_2465)))
                let expr_2466 := _705
                /// @src 0:27262:27277  "virtualChannels"
                let _706_slot := 0x01
                let expr_2458_slot := _706_slot
                /// @src 0:27278:27283  "_vcID"
                let _707 := var__vcID_2289
                let expr_2459 := _707
                /// @src 0:27262:27284  "virtualChannels[_vcID]"
                let _708 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2458_slot,expr_2459)
                let _709_slot := _708
                let expr_2460_slot := _709_slot
                /// @src 0:27262:27298  "virtualChannels[_vcID].erc20Balances"
                let _710 := add(expr_2460_slot, 9)
                let _711_slot := _710
                let expr_2461_slot := _711_slot
                /// @src 0:27299:27300  "1"
                let expr_2462 := 0x01
                /// @src 0:27262:27301  "virtualChannels[_vcID].erc20Balances[1]"

                let _712, _713 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2461_slot, expr_2462)
                /// @src 0:27262:27316  "virtualChannels[_vcID].erc20Balances[1] = _balances[3]"
                update_storage_value_t_uint256_to_t_uint256(_712, _713, expr_2466)
                let expr_2467 := expr_2466
                /// @src 0:27357:27362  "_bond"
                let _714_mpos := var__bond_2299_mpos
                let expr_2473_mpos := _714_mpos
                /// @src 0:27327:27342  "virtualChannels"
                let _715_slot := 0x01
                let expr_2469_slot := _715_slot
                /// @src 0:27343:27348  "_vcID"
                let _716 := var__vcID_2289
                let expr_2470 := _716
                /// @src 0:27327:27349  "virtualChannels[_vcID]"
                let _717 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2469_slot,expr_2470)
                let _718_slot := _717
                let expr_2471_slot := _718_slot
                /// @src 0:27327:27354  "virtualChannels[_vcID].bond"
                let _719 := add(expr_2471_slot, 11)
                /// @src 0:27327:27362  "virtualChannels[_vcID].bond = _bond"
                update_storage_value_offset_0_t_array$_t_uint256_$2_memory_ptr_to_t_array$_t_uint256_$2_storage(_719, expr_2473_mpos)
                let _720_slot := _719
                let expr_2474_slot := _720_slot
                /// @src 0:27414:27429  "block.timestamp"
                let expr_2481 := timestamp()
                /// @src 0:27432:27440  "Channels"
                let _721_slot := 0x02
                let expr_2482_slot := _721_slot
                /// @src 0:27441:27446  "_lcID"
                let _722 := var__lcID_2287
                let expr_2483 := _722
                /// @src 0:27432:27447  "Channels[_lcID]"
                let _723 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2482_slot,expr_2483)
                let _724_slot := _723
                let expr_2484_slot := _724_slot
                /// @src 0:27432:27459  "Channels[_lcID].confirmTime"
                let _725 := add(expr_2484_slot, 13)
                let _726 := read_from_storage_split_offset_0_t_uint256(_725)
                let expr_2485 := _726
                /// @src 0:27414:27459  "block.timestamp + Channels[_lcID].confirmTime"
                let expr_2486 := checked_add_t_uint256(expr_2481, expr_2485)

                /// @src 0:27373:27388  "virtualChannels"
                let _727_slot := 0x01
                let expr_2476_slot := _727_slot
                /// @src 0:27389:27394  "_vcID"
                let _728 := var__vcID_2289
                let expr_2477 := _728
                /// @src 0:27373:27395  "virtualChannels[_vcID]"
                let _729 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2476_slot,expr_2477)
                let _730_slot := _729
                let expr_2478_slot := _730_slot
                /// @src 0:27373:27411  "virtualChannels[_vcID].updateVCtimeout"
                let _731 := add(expr_2478_slot, 3)
                /// @src 0:27373:27459  "virtualChannels[_vcID].updateVCtimeout = block.timestamp + Channels[_lcID].confirmTime"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_731, expr_2486)
                let expr_2487 := expr_2486
                /// @src 0:27515:27519  "true"
                let expr_2493 := 0x01
                /// @src 0:27470:27485  "virtualChannels"
                let _732_slot := 0x01
                let expr_2489_slot := _732_slot
                /// @src 0:27486:27491  "_vcID"
                let _733 := var__vcID_2289
                let expr_2490 := _733
                /// @src 0:27470:27492  "virtualChannels[_vcID]"
                let _734 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2489_slot,expr_2490)
                let _735_slot := _734
                let expr_2491_slot := _735_slot
                /// @src 0:27470:27512  "virtualChannels[_vcID].isInSettlementState"
                let _736 := add(expr_2491_slot, 0)
                /// @src 0:27470:27519  "virtualChannels[_vcID].isInSettlementState = true"
                update_storage_value_offset_1_t_bool_to_t_bool(_736, expr_2493)
                let expr_2494 := expr_2493
                /// @src 0:27546:27551  "_lcID"
                let _737 := var__lcID_2287
                let expr_2497 := _737
                /// @src 0:27553:27558  "_vcID"
                let _738 := var__vcID_2289
                let expr_2498 := _738
                /// @src 0:27560:27566  "_proof"
                let _739_mpos := var__proof_2291_mpos
                let expr_2499_mpos := _739_mpos
                /// @src 0:27576:27577  "0"
                let expr_2502 := 0x00
                /// @src 0:27568:27578  "uint256(0)"
                let expr_2503 := convert_t_rational_0_by_1_to_t_uint256(expr_2502)
                /// @src 0:27580:27587  "_partyA"
                let _740 := var__partyA_2293
                let expr_2504 := _740
                /// @src 0:27589:27596  "_partyB"
                let _741 := var__partyB_2295
                let expr_2505 := _741
                /// @src 0:27598:27607  "_balances"
                let _742_mpos := var__balances_2303_mpos
                let expr_2506_mpos := _742_mpos
                /// @src 0:27608:27609  "0"
                let expr_2507 := 0x00
                /// @src 0:27598:27610  "_balances[0]"
                let _743 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2506_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_2507)))
                let expr_2508 := _743
                /// @src 0:27612:27621  "_balances"
                let _744_mpos := var__balances_2303_mpos
                let expr_2509_mpos := _744_mpos
                /// @src 0:27622:27623  "1"
                let expr_2510 := 0x01
                /// @src 0:27612:27624  "_balances[1]"
                let _745 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2509_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_2510)))
                let expr_2511 := _745
                /// @src 0:27536:27625  "DidVCInit(_lcID, _vcID, _proof, uint256(0), _partyA, _partyB, _balances[0], _balances[1])"
                let _746 := 0xcffb5a92cc488e2eed0a946d6ec257262e6d235c83295ebfbf4f11712330ca9a
                let _747 := convert_t_bytes32_to_t_bytes32(expr_2497)
                let _748 := convert_t_bytes32_to_t_bytes32(expr_2498)
                {
                    let _749 := allocate_unbounded()
                    let _750 := abi_encode_tuple_t_bytes_memory_ptr_t_uint256_t_address_t_address_t_uint256_t_uint256__to_t_bytes_memory_ptr_t_uint256_t_address_t_address_t_uint256_t_uint256__fromStack(_749 , expr_2499_mpos, expr_2503, expr_2504, expr_2505, expr_2508, expr_2511)
                    log3(_749, sub(_750, _749) , _746, _747, _748)
                }
            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

            function store_literal_in_memory_4913c979fe57a93bb6933e4dcecb279661ce674982cf3e340d1d590b50df9891(memPtr) {

                mstore(add(memPtr, 0), "Tried adding funds to a closed c")

                mstore(add(memPtr, 32), "hannel")

            }

            function abi_encode_t_stringliteral_4913c979fe57a93bb6933e4dcecb279661ce674982cf3e340d1d590b50df9891_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 38)
                store_literal_in_memory_4913c979fe57a93bb6933e4dcecb279661ce674982cf3e340d1d590b50df9891(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_4913c979fe57a93bb6933e4dcecb279661ce674982cf3e340d1d590b50df9891__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_4913c979fe57a93bb6933e4dcecb279661ce674982cf3e340d1d590b50df9891_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_4913c979fe57a93bb6933e4dcecb279661ce674982cf3e340d1d590b50df9891(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_4913c979fe57a93bb6933e4dcecb279661ce674982cf3e340d1d590b50df9891__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_bd6cf766dd58d8ee8da500088a189b94c3be5e3ba76082ed64a5fa60922f09ad(memPtr) {

                mstore(add(memPtr, 0), "deposit: token transfer failure")

            }

            function abi_encode_t_stringliteral_bd6cf766dd58d8ee8da500088a189b94c3be5e3ba76082ed64a5fa60922f09ad_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 31)
                store_literal_in_memory_bd6cf766dd58d8ee8da500088a189b94c3be5e3ba76082ed64a5fa60922f09ad(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_bd6cf766dd58d8ee8da500088a189b94c3be5e3ba76082ed64a5fa60922f09ad__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_bd6cf766dd58d8ee8da500088a189b94c3be5e3ba76082ed64a5fa60922f09ad_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_bd6cf766dd58d8ee8da500088a189b94c3be5e3ba76082ed64a5fa60922f09ad(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_bd6cf766dd58d8ee8da500088a189b94c3be5e3ba76082ed64a5fa60922f09ad__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function abi_encode_tuple_t_uint256_t_bool__to_t_uint256_t_bool__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bool_to_t_bool_fromStack(value1,  add(headStart, 32))

            }

            /// @ast-id 1739
            /// @src 0:19364:20760  "function deposit(bytes32 _lcID, address recipient, uint256 _balance, bool isToken) public payable {..."
            function fun_deposit_1739(var__lcID_1576, var_recipient_1578, var__balance_1580, var_isToken_1582) {

                /// @src 0:19481:19489  "Channels"
                let _751_slot := 0x02
                let expr_1586_slot := _751_slot
                /// @src 0:19490:19495  "_lcID"
                let _752 := var__lcID_1576
                let expr_1587 := _752
                /// @src 0:19481:19496  "Channels[_lcID]"
                let _753 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1586_slot,expr_1587)
                let _754_slot := _753
                let expr_1588_slot := _754_slot
                /// @src 0:19481:19503  "Channels[_lcID].isOpen"
                let _755 := add(expr_1588_slot, 17)
                let _756 := read_from_storage_split_offset_0_t_bool(_755)
                let expr_1589 := _756
                /// @src 0:19507:19511  "true"
                let expr_1590 := 0x01
                /// @src 0:19481:19511  "Channels[_lcID].isOpen == true"
                let expr_1591 := eq(cleanup_t_bool(expr_1589), cleanup_t_bool(expr_1590))
                /// @src 0:19473:19554  "require(Channels[_lcID].isOpen == true, \"Tried adding funds to a closed channel\")"
                require_helper_t_stringliteral_4913c979fe57a93bb6933e4dcecb279661ce674982cf3e340d1d590b50df9891(expr_1591)
                /// @src 0:19573:19582  "recipient"
                let _757 := var_recipient_1578
                let expr_1596 := _757
                /// @src 0:19586:19594  "Channels"
                let _758_slot := 0x02
                let expr_1597_slot := _758_slot
                /// @src 0:19595:19600  "_lcID"
                let _759 := var__lcID_1576
                let expr_1598 := _759
                /// @src 0:19586:19601  "Channels[_lcID]"
                let _760 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1597_slot,expr_1598)
                let _761_slot := _760
                let expr_1599_slot := _761_slot
                /// @src 0:19586:19616  "Channels[_lcID].partyAddresses"
                let _762 := add(expr_1599_slot, 0)
                let _763_slot := _762
                let expr_1600_slot := _763_slot
                /// @src 0:19617:19618  "0"
                let expr_1601 := 0x00
                /// @src 0:19586:19619  "Channels[_lcID].partyAddresses[0]"

                let _764, _765 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1600_slot, expr_1601)
                let _766 := read_from_storage_split_dynamic_t_address(_764, _765)
                let expr_1602 := _766
                /// @src 0:19573:19619  "recipient == Channels[_lcID].partyAddresses[0]"
                let expr_1603 := eq(cleanup_t_address(expr_1596), cleanup_t_address(expr_1602))
                /// @src 0:19573:19669  "recipient == Channels[_lcID].partyAddresses[0] || recipient == Channels[_lcID].partyAddresses[1]"
                let expr_1612 := expr_1603
                if iszero(expr_1612) {
                    /// @src 0:19623:19632  "recipient"
                    let _767 := var_recipient_1578
                    let expr_1604 := _767
                    /// @src 0:19636:19644  "Channels"
                    let _768_slot := 0x02
                    let expr_1605_slot := _768_slot
                    /// @src 0:19645:19650  "_lcID"
                    let _769 := var__lcID_1576
                    let expr_1606 := _769
                    /// @src 0:19636:19651  "Channels[_lcID]"
                    let _770 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1605_slot,expr_1606)
                    let _771_slot := _770
                    let expr_1607_slot := _771_slot
                    /// @src 0:19636:19666  "Channels[_lcID].partyAddresses"
                    let _772 := add(expr_1607_slot, 0)
                    let _773_slot := _772
                    let expr_1608_slot := _773_slot
                    /// @src 0:19667:19668  "1"
                    let expr_1609 := 0x01
                    /// @src 0:19636:19669  "Channels[_lcID].partyAddresses[1]"

                    let _774, _775 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1608_slot, expr_1609)
                    let _776 := read_from_storage_split_dynamic_t_address(_774, _775)
                    let expr_1610 := _776
                    /// @src 0:19623:19669  "recipient == Channels[_lcID].partyAddresses[1]"
                    let expr_1611 := eq(cleanup_t_address(expr_1604), cleanup_t_address(expr_1610))
                    /// @src 0:19573:19669  "recipient == Channels[_lcID].partyAddresses[0] || recipient == Channels[_lcID].partyAddresses[1]"
                    expr_1612 := expr_1611
                }
                /// @src 0:19565:19670  "require(recipient == Channels[_lcID].partyAddresses[0] || recipient == Channels[_lcID].partyAddresses[1])"
                require_helper(expr_1612)
                /// @src 0:19724:19732  "Channels"
                let _777_slot := 0x02
                let expr_1615_slot := _777_slot
                /// @src 0:19733:19738  "_lcID"
                let _778 := var__lcID_1576
                let expr_1616 := _778
                /// @src 0:19724:19739  "Channels[_lcID]"
                let _779 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1615_slot,expr_1616)
                let _780_slot := _779
                let expr_1617_slot := _780_slot
                /// @src 0:19724:19754  "Channels[_lcID].partyAddresses"
                let _781 := add(expr_1617_slot, 0)
                let _782_slot := _781
                let expr_1618_slot := _782_slot
                /// @src 0:19755:19756  "0"
                let expr_1619 := 0x00
                /// @src 0:19724:19757  "Channels[_lcID].partyAddresses[0]"

                let _783, _784 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1618_slot, expr_1619)
                let _785 := read_from_storage_split_dynamic_t_address(_783, _784)
                let expr_1620 := _785
                /// @src 0:19761:19770  "recipient"
                let _786 := var_recipient_1578
                let expr_1621 := _786
                /// @src 0:19724:19770  "Channels[_lcID].partyAddresses[0] == recipient"
                let expr_1622 := eq(cleanup_t_address(expr_1620), cleanup_t_address(expr_1621))
                /// @src 0:19720:20198  "if (Channels[_lcID].partyAddresses[0] == recipient) {..."
                if expr_1622 {
                    /// @src 0:19790:19797  "isToken"
                    let _787 := var_isToken_1582
                    let expr_1623 := _787
                    /// @src 0:19787:20187  "if(isToken) {..."
                    switch expr_1623
                    case 0 {
                        /// @src 0:20044:20053  "msg.value"
                        let expr_1653 := callvalue()
                        /// @src 0:20057:20065  "_balance"
                        let _788 := var__balance_1580
                        let expr_1654 := _788
                        /// @src 0:20044:20065  "msg.value == _balance"
                        let expr_1655 := eq(cleanup_t_uint256(expr_1653), cleanup_t_uint256(expr_1654))
                        /// @src 0:20036:20109  "require(msg.value == _balance, \"state balance does not match sent value\")"
                        require_helper_t_stringliteral_0d520d6170829c514e3781e04b67cdee44efe129960db4b6ba85ae3c45f5eed1(expr_1655)
                        /// @src 0:20162:20171  "msg.value"
                        let expr_1666 := callvalue()
                        /// @src 0:20128:20136  "Channels"
                        let _789_slot := 0x02
                        let expr_1659_slot := _789_slot
                        /// @src 0:20137:20142  "_lcID"
                        let _790 := var__lcID_1576
                        let expr_1660 := _790
                        /// @src 0:20128:20143  "Channels[_lcID]"
                        let _791 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1659_slot,expr_1660)
                        let _792_slot := _791
                        let expr_1661_slot := _792_slot
                        /// @src 0:20128:20155  "Channels[_lcID].ethBalances"
                        let _793 := add(expr_1661_slot, 2)
                        let _794_slot := _793
                        let expr_1662_slot := _794_slot
                        /// @src 0:20156:20157  "2"
                        let expr_1663 := 0x02
                        /// @src 0:20128:20158  "Channels[_lcID].ethBalances[2]"

                        let _795, _796 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_1662_slot, expr_1663)
                        /// @src 0:20128:20171  "Channels[_lcID].ethBalances[2] += msg.value"
                        let _797 := read_from_storage_split_dynamic_t_uint256(_795, _796)
                        let expr_1667 := checked_add_t_uint256(_797, expr_1666)

                        update_storage_value_t_uint256_to_t_uint256(_795, _796, expr_1667)
                        /// @src 0:19787:20187  "if(isToken) {..."
                    }
                    default {
                        /// @src 0:19826:19834  "Channels"
                        let _798_slot := 0x02
                        let expr_1625_slot := _798_slot
                        /// @src 0:19835:19840  "_lcID"
                        let _799 := var__lcID_1576
                        let expr_1626 := _799
                        /// @src 0:19826:19841  "Channels[_lcID]"
                        let _800 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1625_slot,expr_1626)
                        let _801_slot := _800
                        let expr_1627_slot := _801_slot
                        /// @src 0:19826:19847  "Channels[_lcID].token"
                        let _802 := add(expr_1627_slot, 19)
                        let _803_address := read_from_storage_split_offset_0_t_contract$_HumanStandardToken_$922(_802)
                        let expr_1628_address := _803_address
                        /// @src 0:19826:19860  "Channels[_lcID].token.transferFrom"
                        let expr_1629_address := convert_t_contract$_HumanStandardToken_$922_to_t_address(expr_1628_address)
                        let expr_1629_functionSelector := 0x23b872dd
                        /// @src 0:19861:19871  "msg.sender"
                        let expr_1631 := caller()
                        /// @src 0:19881:19885  "this"
                        let expr_1634_address := address()
                        /// @src 0:19873:19886  "address(this)"
                        let expr_1635 := convert_t_contract$_LedgerChannel_$3495_to_t_address(expr_1634_address)
                        /// @src 0:19888:19896  "_balance"
                        let _804 := var__balance_1580
                        let expr_1636 := _804
                        /// @src 0:19826:19897  "Channels[_lcID].token.transferFrom(msg.sender, address(this), _balance)"

                        // storage for arguments and returned data
                        let _805 := allocate_unbounded()
                        mstore(_805, shift_left_224(expr_1629_functionSelector))
                        let _806 := abi_encode_tuple_t_address_t_address_t_uint256__to_t_address_t_address_t_uint256__fromStack(add(_805, 4) , expr_1631, expr_1635, expr_1636)

                        let _807 := call(gas(), expr_1629_address,  0,  _805, sub(_806, _805), _805, 32)

                        if iszero(_807) { revert_forward_1() }

                        let expr_1637
                        if _807 {

                            let _808 := 32

                            if gt(_808, returndatasize()) {
                                _808 := returndatasize()
                            }

                            // update freeMemoryPointer according to dynamic return size
                            finalize_allocation(_805, _808)

                            // decode return parameters from external try-call into retVars
                            expr_1637 :=  abi_decode_tuple_t_bool_fromMemory(_805, add(_805, _808))
                        }
                        /// @src 0:19818:19932  "require(Channels[_lcID].token.transferFrom(msg.sender, address(this), _balance),\"deposit: token transfer failure\")"
                        require_helper_t_stringliteral_bd6cf766dd58d8ee8da500088a189b94c3be5e3ba76082ed64a5fa60922f09ad(expr_1637)
                        /// @src 0:19987:19995  "_balance"
                        let _809 := var__balance_1580
                        let expr_1647 := _809
                        /// @src 0:19951:19959  "Channels"
                        let _810_slot := 0x02
                        let expr_1641_slot := _810_slot
                        /// @src 0:19960:19965  "_lcID"
                        let _811 := var__lcID_1576
                        let expr_1642 := _811
                        /// @src 0:19951:19966  "Channels[_lcID]"
                        let _812 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1641_slot,expr_1642)
                        let _813_slot := _812
                        let expr_1643_slot := _813_slot
                        /// @src 0:19951:19980  "Channels[_lcID].erc20Balances"
                        let _814 := add(expr_1643_slot, 6)
                        let _815_slot := _814
                        let expr_1644_slot := _815_slot
                        /// @src 0:19981:19982  "2"
                        let expr_1645 := 0x02
                        /// @src 0:19951:19983  "Channels[_lcID].erc20Balances[2]"

                        let _816, _817 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_1644_slot, expr_1645)
                        /// @src 0:19951:19995  "Channels[_lcID].erc20Balances[2] += _balance"
                        let _818 := read_from_storage_split_dynamic_t_uint256(_816, _817)
                        let expr_1648 := checked_add_t_uint256(_818, expr_1647)

                        update_storage_value_t_uint256_to_t_uint256(_816, _817, expr_1648)
                        /// @src 0:19787:20187  "if(isToken) {..."
                    }
                    /// @src 0:19720:20198  "if (Channels[_lcID].partyAddresses[0] == recipient) {..."
                }
                /// @src 0:20213:20221  "Channels"
                let _819_slot := 0x02
                let expr_1673_slot := _819_slot
                /// @src 0:20222:20227  "_lcID"
                let _820 := var__lcID_1576
                let expr_1674 := _820
                /// @src 0:20213:20228  "Channels[_lcID]"
                let _821 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1673_slot,expr_1674)
                let _822_slot := _821
                let expr_1675_slot := _822_slot
                /// @src 0:20213:20243  "Channels[_lcID].partyAddresses"
                let _823 := add(expr_1675_slot, 0)
                let _824_slot := _823
                let expr_1676_slot := _824_slot
                /// @src 0:20244:20245  "1"
                let expr_1677 := 0x01
                /// @src 0:20213:20246  "Channels[_lcID].partyAddresses[1]"

                let _825, _826 := storage_array_index_access_t_array$_t_address_$2_storage(expr_1676_slot, expr_1677)
                let _827 := read_from_storage_split_dynamic_t_address(_825, _826)
                let expr_1678 := _827
                /// @src 0:20250:20259  "recipient"
                let _828 := var_recipient_1578
                let expr_1679 := _828
                /// @src 0:20213:20259  "Channels[_lcID].partyAddresses[1] == recipient"
                let expr_1680 := eq(cleanup_t_address(expr_1678), cleanup_t_address(expr_1679))
                /// @src 0:20209:20687  "if (Channels[_lcID].partyAddresses[1] == recipient) {..."
                if expr_1680 {
                    /// @src 0:20279:20286  "isToken"
                    let _829 := var_isToken_1582
                    let expr_1681 := _829
                    /// @src 0:20276:20676  "if(isToken) {..."
                    switch expr_1681
                    case 0 {
                        /// @src 0:20533:20542  "msg.value"
                        let expr_1711 := callvalue()
                        /// @src 0:20546:20554  "_balance"
                        let _830 := var__balance_1580
                        let expr_1712 := _830
                        /// @src 0:20533:20554  "msg.value == _balance"
                        let expr_1713 := eq(cleanup_t_uint256(expr_1711), cleanup_t_uint256(expr_1712))
                        /// @src 0:20525:20598  "require(msg.value == _balance, \"state balance does not match sent value\")"
                        require_helper_t_stringliteral_0d520d6170829c514e3781e04b67cdee44efe129960db4b6ba85ae3c45f5eed1(expr_1713)
                        /// @src 0:20651:20660  "msg.value"
                        let expr_1724 := callvalue()
                        /// @src 0:20617:20625  "Channels"
                        let _831_slot := 0x02
                        let expr_1717_slot := _831_slot
                        /// @src 0:20626:20631  "_lcID"
                        let _832 := var__lcID_1576
                        let expr_1718 := _832
                        /// @src 0:20617:20632  "Channels[_lcID]"
                        let _833 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1717_slot,expr_1718)
                        let _834_slot := _833
                        let expr_1719_slot := _834_slot
                        /// @src 0:20617:20644  "Channels[_lcID].ethBalances"
                        let _835 := add(expr_1719_slot, 2)
                        let _836_slot := _835
                        let expr_1720_slot := _836_slot
                        /// @src 0:20645:20646  "3"
                        let expr_1721 := 0x03
                        /// @src 0:20617:20647  "Channels[_lcID].ethBalances[3]"

                        let _837, _838 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_1720_slot, expr_1721)
                        /// @src 0:20617:20660  "Channels[_lcID].ethBalances[3] += msg.value"
                        let _839 := read_from_storage_split_dynamic_t_uint256(_837, _838)
                        let expr_1725 := checked_add_t_uint256(_839, expr_1724)

                        update_storage_value_t_uint256_to_t_uint256(_837, _838, expr_1725)
                        /// @src 0:20276:20676  "if(isToken) {..."
                    }
                    default {
                        /// @src 0:20315:20323  "Channels"
                        let _840_slot := 0x02
                        let expr_1683_slot := _840_slot
                        /// @src 0:20324:20329  "_lcID"
                        let _841 := var__lcID_1576
                        let expr_1684 := _841
                        /// @src 0:20315:20330  "Channels[_lcID]"
                        let _842 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1683_slot,expr_1684)
                        let _843_slot := _842
                        let expr_1685_slot := _843_slot
                        /// @src 0:20315:20336  "Channels[_lcID].token"
                        let _844 := add(expr_1685_slot, 19)
                        let _845_address := read_from_storage_split_offset_0_t_contract$_HumanStandardToken_$922(_844)
                        let expr_1686_address := _845_address
                        /// @src 0:20315:20349  "Channels[_lcID].token.transferFrom"
                        let expr_1687_address := convert_t_contract$_HumanStandardToken_$922_to_t_address(expr_1686_address)
                        let expr_1687_functionSelector := 0x23b872dd
                        /// @src 0:20350:20360  "msg.sender"
                        let expr_1689 := caller()
                        /// @src 0:20370:20374  "this"
                        let expr_1692_address := address()
                        /// @src 0:20362:20375  "address(this)"
                        let expr_1693 := convert_t_contract$_LedgerChannel_$3495_to_t_address(expr_1692_address)
                        /// @src 0:20377:20385  "_balance"
                        let _846 := var__balance_1580
                        let expr_1694 := _846
                        /// @src 0:20315:20386  "Channels[_lcID].token.transferFrom(msg.sender, address(this), _balance)"

                        // storage for arguments and returned data
                        let _847 := allocate_unbounded()
                        mstore(_847, shift_left_224(expr_1687_functionSelector))
                        let _848 := abi_encode_tuple_t_address_t_address_t_uint256__to_t_address_t_address_t_uint256__fromStack(add(_847, 4) , expr_1689, expr_1693, expr_1694)

                        let _849 := call(gas(), expr_1687_address,  0,  _847, sub(_848, _847), _847, 32)

                        if iszero(_849) { revert_forward_1() }

                        let expr_1695
                        if _849 {

                            let _850 := 32

                            if gt(_850, returndatasize()) {
                                _850 := returndatasize()
                            }

                            // update freeMemoryPointer according to dynamic return size
                            finalize_allocation(_847, _850)

                            // decode return parameters from external try-call into retVars
                            expr_1695 :=  abi_decode_tuple_t_bool_fromMemory(_847, add(_847, _850))
                        }
                        /// @src 0:20307:20421  "require(Channels[_lcID].token.transferFrom(msg.sender, address(this), _balance),\"deposit: token transfer failure\")"
                        require_helper_t_stringliteral_bd6cf766dd58d8ee8da500088a189b94c3be5e3ba76082ed64a5fa60922f09ad(expr_1695)
                        /// @src 0:20476:20484  "_balance"
                        let _851 := var__balance_1580
                        let expr_1705 := _851
                        /// @src 0:20440:20448  "Channels"
                        let _852_slot := 0x02
                        let expr_1699_slot := _852_slot
                        /// @src 0:20449:20454  "_lcID"
                        let _853 := var__lcID_1576
                        let expr_1700 := _853
                        /// @src 0:20440:20455  "Channels[_lcID]"
                        let _854 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_1699_slot,expr_1700)
                        let _855_slot := _854
                        let expr_1701_slot := _855_slot
                        /// @src 0:20440:20469  "Channels[_lcID].erc20Balances"
                        let _856 := add(expr_1701_slot, 6)
                        let _857_slot := _856
                        let expr_1702_slot := _857_slot
                        /// @src 0:20470:20471  "3"
                        let expr_1703 := 0x03
                        /// @src 0:20440:20472  "Channels[_lcID].erc20Balances[3]"

                        let _858, _859 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_1702_slot, expr_1703)
                        /// @src 0:20440:20484  "Channels[_lcID].erc20Balances[3] += _balance"
                        let _860 := read_from_storage_split_dynamic_t_uint256(_858, _859)
                        let expr_1706 := checked_add_t_uint256(_860, expr_1705)

                        update_storage_value_t_uint256_to_t_uint256(_858, _859, expr_1706)
                        /// @src 0:20276:20676  "if(isToken) {..."
                    }
                    /// @src 0:20209:20687  "if (Channels[_lcID].partyAddresses[1] == recipient) {..."
                }
                /// @src 0:20716:20721  "_lcID"
                let _861 := var__lcID_1576
                let expr_1732 := _861
                /// @src 0:20723:20732  "recipient"
                let _862 := var_recipient_1578
                let expr_1733 := _862
                /// @src 0:20734:20742  "_balance"
                let _863 := var__balance_1580
                let expr_1734 := _863
                /// @src 0:20744:20751  "isToken"
                let _864 := var_isToken_1582
                let expr_1735 := _864
                /// @src 0:20703:20752  "DidLCDeposit(_lcID, recipient, _balance, isToken)"
                let _865 := 0xebe34657eba3f58b3e63b3fa61ba9bc369f2a7bfe3f8769afa92dd6839908c3a
                let _866 := convert_t_bytes32_to_t_bytes32(expr_1732)
                let _867 := convert_t_address_to_t_address(expr_1733)
                {
                    let _868 := allocate_unbounded()
                    let _869 := abi_encode_tuple_t_uint256_t_bool__to_t_uint256_t_bool__fromStack(_868 , expr_1734, expr_1735)
                    log3(_868, sub(_869, _868) , _865, _866, _867)
                }
            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

            function convert_t_struct$_Channel_$1079_storage_to_t_struct$_Channel_$1079_storage_ptr(value) -> converted {
                converted := value
            }

            function store_literal_in_memory_637612534cecc42192249dd614b2aaadceeff0d23596b365f5ff72fe05cbc361(memPtr) {

                mstore(add(memPtr, 0), "Channel is not open")

            }

            function abi_encode_t_stringliteral_637612534cecc42192249dd614b2aaadceeff0d23596b365f5ff72fe05cbc361_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 19)
                store_literal_in_memory_637612534cecc42192249dd614b2aaadceeff0d23596b365f5ff72fe05cbc361(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_637612534cecc42192249dd614b2aaadceeff0d23596b365f5ff72fe05cbc361__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_637612534cecc42192249dd614b2aaadceeff0d23596b365f5ff72fe05cbc361_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_637612534cecc42192249dd614b2aaadceeff0d23596b365f5ff72fe05cbc361(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_637612534cecc42192249dd614b2aaadceeff0d23596b365f5ff72fe05cbc361__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_e32e392055bb37a8aaf7a6121fff68251a32223a8eb13960811126674de124ca(memPtr) {

                mstore(add(memPtr, 0), "LC timeout over.")

            }

            function abi_encode_t_stringliteral_e32e392055bb37a8aaf7a6121fff68251a32223a8eb13960811126674de124ca_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 16)
                store_literal_in_memory_e32e392055bb37a8aaf7a6121fff68251a32223a8eb13960811126674de124ca(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_e32e392055bb37a8aaf7a6121fff68251a32223a8eb13960811126674de124ca__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_e32e392055bb37a8aaf7a6121fff68251a32223a8eb13960811126674de124ca_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_e32e392055bb37a8aaf7a6121fff68251a32223a8eb13960811126674de124ca(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_e32e392055bb37a8aaf7a6121fff68251a32223a8eb13960811126674de124ca__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_e6ba2539700c3d9511f1ce983979896dd02cfaf9ad0d7dc537a16ad485be07e4(memPtr) {

                mstore(add(memPtr, 0), "byzantineCloseChannel: token tra")

                mstore(add(memPtr, 32), "nsfer failure")

            }

            function abi_encode_t_stringliteral_e6ba2539700c3d9511f1ce983979896dd02cfaf9ad0d7dc537a16ad485be07e4_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 45)
                store_literal_in_memory_e6ba2539700c3d9511f1ce983979896dd02cfaf9ad0d7dc537a16ad485be07e4(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_e6ba2539700c3d9511f1ce983979896dd02cfaf9ad0d7dc537a16ad485be07e4__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_e6ba2539700c3d9511f1ce983979896dd02cfaf9ad0d7dc537a16ad485be07e4_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_e6ba2539700c3d9511f1ce983979896dd02cfaf9ad0d7dc537a16ad485be07e4(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_e6ba2539700c3d9511f1ce983979896dd02cfaf9ad0d7dc537a16ad485be07e4__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 3294
            /// @src 0:32570:35285  "function byzantineCloseChannel(bytes32 _lcID) public {..."
            function fun_byzantineCloseChannel_3294(var__lcID_2983) {

                /// @src 0:32660:32668  "Channels"
                let _870_slot := 0x02
                let expr_2989_slot := _870_slot
                /// @src 0:32669:32674  "_lcID"
                let _871 := var__lcID_2983
                let expr_2990 := _871
                /// @src 0:32660:32675  "Channels[_lcID]"
                let _872 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2989_slot,expr_2990)
                let _873_slot := _872
                let expr_2991_slot := _873_slot
                /// @src 0:32634:32675  "Channel storage channel = Channels[_lcID]"
                let var_channel_2988_slot := convert_t_struct$_Channel_$1079_storage_to_t_struct$_Channel_$1079_storage_ptr(expr_2991_slot)
                /// @src 0:32729:32736  "channel"
                let _874_slot := var_channel_2988_slot
                let expr_2994_slot := _874_slot
                /// @src 0:32729:32743  "channel.isOpen"
                let _875 := add(expr_2994_slot, 17)
                let _876 := read_from_storage_split_offset_0_t_bool(_875)
                let expr_2995 := _876
                /// @src 0:32721:32767  "require(channel.isOpen, \"Channel is not open\")"
                require_helper_t_stringliteral_637612534cecc42192249dd614b2aaadceeff0d23596b365f5ff72fe05cbc361(expr_2995)
                /// @src 0:32786:32793  "channel"
                let _877_slot := var_channel_2988_slot
                let expr_3000_slot := _877_slot
                /// @src 0:32786:32812  "channel.isUpdateLCSettling"
                let _878 := add(expr_3000_slot, 17)
                let _879 := read_from_storage_split_offset_1_t_bool(_878)
                let expr_3001 := _879
                /// @src 0:32816:32820  "true"
                let expr_3002 := 0x01
                /// @src 0:32786:32820  "channel.isUpdateLCSettling == true"
                let expr_3003 := eq(cleanup_t_bool(expr_3001), cleanup_t_bool(expr_3002))
                /// @src 0:32778:32821  "require(channel.isUpdateLCSettling == true)"
                require_helper(expr_3003)
                /// @src 0:32840:32847  "channel"
                let _880_slot := var_channel_2988_slot
                let expr_3007_slot := _880_slot
                /// @src 0:32840:32857  "channel.numOpenVC"
                let _881 := add(expr_3007_slot, 18)
                let _882 := read_from_storage_split_offset_0_t_uint256(_881)
                let expr_3008 := _882
                /// @src 0:32861:32862  "0"
                let expr_3009 := 0x00
                /// @src 0:32840:32862  "channel.numOpenVC == 0"
                let expr_3010 := eq(cleanup_t_uint256(expr_3008), convert_t_rational_0_by_1_to_t_uint256(expr_3009))
                /// @src 0:32832:32863  "require(channel.numOpenVC == 0)"
                require_helper(expr_3010)
                /// @src 0:32882:32889  "channel"
                let _883_slot := var_channel_2988_slot
                let expr_3014_slot := _883_slot
                /// @src 0:32882:32905  "channel.updateLCtimeout"
                let _884 := add(expr_3014_slot, 16)
                let _885 := read_from_storage_split_offset_0_t_uint256(_884)
                let expr_3015 := _885
                /// @src 0:32908:32923  "block.timestamp"
                let expr_3017 := timestamp()
                /// @src 0:32882:32923  "channel.updateLCtimeout < block.timestamp"
                let expr_3018 := lt(cleanup_t_uint256(expr_3015), cleanup_t_uint256(expr_3017))
                /// @src 0:32874:32944  "require(channel.updateLCtimeout < block.timestamp, \"LC timeout over.\")"
                require_helper_t_stringliteral_e32e392055bb37a8aaf7a6121fff68251a32223a8eb13960811126674de124ca(expr_3018)
                /// @src 0:33074:33081  "channel"
                let _886_slot := var_channel_2988_slot
                let expr_3024_slot := _886_slot
                /// @src 0:33074:33096  "channel.initialDeposit"
                let _887 := add(expr_3024_slot, 10)
                let _888_slot := _887
                let expr_3025_slot := _888_slot
                /// @src 0:33097:33098  "0"
                let expr_3026 := 0x00
                /// @src 0:33074:33099  "channel.initialDeposit[0]"

                let _889, _890 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_3025_slot, expr_3026)
                let _891 := read_from_storage_split_dynamic_t_uint256(_889, _890)
                let expr_3027 := _891
                /// @src 0:33102:33109  "channel"
                let _892_slot := var_channel_2988_slot
                let expr_3028_slot := _892_slot
                /// @src 0:33102:33121  "channel.ethBalances"
                let _893 := add(expr_3028_slot, 2)
                let _894_slot := _893
                let expr_3029_slot := _894_slot
                /// @src 0:33122:33123  "2"
                let expr_3030 := 0x02
                /// @src 0:33102:33124  "channel.ethBalances[2]"

                let _895, _896 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3029_slot, expr_3030)
                let _897 := read_from_storage_split_dynamic_t_uint256(_895, _896)
                let expr_3031 := _897
                /// @src 0:33074:33124  "channel.initialDeposit[0] + channel.ethBalances[2]"
                let expr_3032 := checked_add_t_uint256(expr_3027, expr_3031)

                /// @src 0:33127:33134  "channel"
                let _898_slot := var_channel_2988_slot
                let expr_3033_slot := _898_slot
                /// @src 0:33127:33146  "channel.ethBalances"
                let _899 := add(expr_3033_slot, 2)
                let _900_slot := _899
                let expr_3034_slot := _900_slot
                /// @src 0:33147:33148  "3"
                let expr_3035 := 0x03
                /// @src 0:33127:33149  "channel.ethBalances[3]"

                let _901, _902 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3034_slot, expr_3035)
                let _903 := read_from_storage_split_dynamic_t_uint256(_901, _902)
                let expr_3036 := _903
                /// @src 0:33074:33149  "channel.initialDeposit[0] + channel.ethBalances[2] + channel.ethBalances[3]"
                let expr_3037 := checked_add_t_uint256(expr_3032, expr_3036)

                /// @src 0:33048:33149  "uint256 totalEthDeposit = channel.initialDeposit[0] + channel.ethBalances[2] + channel.ethBalances[3]"
                let var_totalEthDeposit_3023 := expr_3037
                /// @src 0:33188:33195  "channel"
                let _904_slot := var_channel_2988_slot
                let expr_3041_slot := _904_slot
                /// @src 0:33188:33210  "channel.initialDeposit"
                let _905 := add(expr_3041_slot, 10)
                let _906_slot := _905
                let expr_3042_slot := _906_slot
                /// @src 0:33211:33212  "1"
                let expr_3043 := 0x01
                /// @src 0:33188:33213  "channel.initialDeposit[1]"

                let _907, _908 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_3042_slot, expr_3043)
                let _909 := read_from_storage_split_dynamic_t_uint256(_907, _908)
                let expr_3044 := _909
                /// @src 0:33216:33223  "channel"
                let _910_slot := var_channel_2988_slot
                let expr_3045_slot := _910_slot
                /// @src 0:33216:33237  "channel.erc20Balances"
                let _911 := add(expr_3045_slot, 6)
                let _912_slot := _911
                let expr_3046_slot := _912_slot
                /// @src 0:33238:33239  "2"
                let expr_3047 := 0x02
                /// @src 0:33216:33240  "channel.erc20Balances[2]"

                let _913, _914 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3046_slot, expr_3047)
                let _915 := read_from_storage_split_dynamic_t_uint256(_913, _914)
                let expr_3048 := _915
                /// @src 0:33188:33240  "channel.initialDeposit[1] + channel.erc20Balances[2]"
                let expr_3049 := checked_add_t_uint256(expr_3044, expr_3048)

                /// @src 0:33243:33250  "channel"
                let _916_slot := var_channel_2988_slot
                let expr_3050_slot := _916_slot
                /// @src 0:33243:33264  "channel.erc20Balances"
                let _917 := add(expr_3050_slot, 6)
                let _918_slot := _917
                let expr_3051_slot := _918_slot
                /// @src 0:33265:33266  "3"
                let expr_3052 := 0x03
                /// @src 0:33243:33267  "channel.erc20Balances[3]"

                let _919, _920 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3051_slot, expr_3052)
                let _921 := read_from_storage_split_dynamic_t_uint256(_919, _920)
                let expr_3053 := _921
                /// @src 0:33188:33267  "channel.initialDeposit[1] + channel.erc20Balances[2] + channel.erc20Balances[3]"
                let expr_3054 := checked_add_t_uint256(expr_3049, expr_3053)

                /// @src 0:33160:33267  "uint256 totalTokenDeposit = channel.initialDeposit[1] + channel.erc20Balances[2] + channel.erc20Balances[3]"
                let var_totalTokenDeposit_3040 := expr_3054
                /// @src 0:33319:33326  "channel"
                let _922_slot := var_channel_2988_slot
                let expr_3058_slot := _922_slot
                /// @src 0:33319:33338  "channel.ethBalances"
                let _923 := add(expr_3058_slot, 2)
                let _924_slot := _923
                let expr_3059_slot := _924_slot
                /// @src 0:33339:33340  "0"
                let expr_3060 := 0x00
                /// @src 0:33319:33341  "channel.ethBalances[0]"

                let _925, _926 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3059_slot, expr_3060)
                let _927 := read_from_storage_split_dynamic_t_uint256(_925, _926)
                let expr_3061 := _927
                /// @src 0:33344:33351  "channel"
                let _928_slot := var_channel_2988_slot
                let expr_3062_slot := _928_slot
                /// @src 0:33344:33363  "channel.ethBalances"
                let _929 := add(expr_3062_slot, 2)
                let _930_slot := _929
                let expr_3063_slot := _930_slot
                /// @src 0:33364:33365  "1"
                let expr_3064 := 0x01
                /// @src 0:33344:33366  "channel.ethBalances[1]"

                let _931, _932 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3063_slot, expr_3064)
                let _933 := read_from_storage_split_dynamic_t_uint256(_931, _932)
                let expr_3065 := _933
                /// @src 0:33319:33366  "channel.ethBalances[0] + channel.ethBalances[1]"
                let expr_3066 := checked_add_t_uint256(expr_3061, expr_3065)

                /// @src 0:33279:33366  "uint256 possibleTotalEthBeforeDeposit = channel.ethBalances[0] + channel.ethBalances[1]"
                let var_possibleTotalEthBeforeDeposit_3057 := expr_3066
                /// @src 0:33419:33426  "channel"
                let _934_slot := var_channel_2988_slot
                let expr_3070_slot := _934_slot
                /// @src 0:33419:33440  "channel.erc20Balances"
                let _935 := add(expr_3070_slot, 6)
                let _936_slot := _935
                let expr_3071_slot := _936_slot
                /// @src 0:33441:33442  "0"
                let expr_3072 := 0x00
                /// @src 0:33419:33443  "channel.erc20Balances[0]"

                let _937, _938 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3071_slot, expr_3072)
                let _939 := read_from_storage_split_dynamic_t_uint256(_937, _938)
                let expr_3073 := _939
                /// @src 0:33446:33453  "channel"
                let _940_slot := var_channel_2988_slot
                let expr_3074_slot := _940_slot
                /// @src 0:33446:33467  "channel.erc20Balances"
                let _941 := add(expr_3074_slot, 6)
                let _942_slot := _941
                let expr_3075_slot := _942_slot
                /// @src 0:33468:33469  "1"
                let expr_3076 := 0x01
                /// @src 0:33446:33470  "channel.erc20Balances[1]"

                let _943, _944 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3075_slot, expr_3076)
                let _945 := read_from_storage_split_dynamic_t_uint256(_943, _944)
                let expr_3077 := _945
                /// @src 0:33419:33470  "channel.erc20Balances[0] + channel.erc20Balances[1]"
                let expr_3078 := checked_add_t_uint256(expr_3073, expr_3077)

                /// @src 0:33377:33470  "uint256 possibleTotalTokenBeforeDeposit = channel.erc20Balances[0] + channel.erc20Balances[1]"
                let var_possibleTotalTokenBeforeDeposit_3069 := expr_3078
                /// @src 0:33485:33514  "possibleTotalEthBeforeDeposit"
                let _946 := var_possibleTotalEthBeforeDeposit_3057
                let expr_3080 := _946
                /// @src 0:33517:33532  "totalEthDeposit"
                let _947 := var_totalEthDeposit_3023
                let expr_3081 := _947
                /// @src 0:33485:33532  "possibleTotalEthBeforeDeposit < totalEthDeposit"
                let expr_3082 := lt(cleanup_t_uint256(expr_3080), cleanup_t_uint256(expr_3081))
                /// @src 0:33482:33758  "if(possibleTotalEthBeforeDeposit < totalEthDeposit) {..."
                switch expr_3082
                case 0 {
                    /// @src 0:33697:33726  "possibleTotalEthBeforeDeposit"
                    let _948 := var_possibleTotalEthBeforeDeposit_3057
                    let expr_3107 := _948
                    /// @src 0:33730:33745  "totalEthDeposit"
                    let _949 := var_totalEthDeposit_3023
                    let expr_3108 := _949
                    /// @src 0:33697:33745  "possibleTotalEthBeforeDeposit == totalEthDeposit"
                    let expr_3109 := eq(cleanup_t_uint256(expr_3107), cleanup_t_uint256(expr_3108))
                    /// @src 0:33689:33746  "require(possibleTotalEthBeforeDeposit == totalEthDeposit)"
                    require_helper(expr_3109)
                    /// @src 0:33482:33758  "if(possibleTotalEthBeforeDeposit < totalEthDeposit) {..."
                }
                default {
                    /// @src 0:33573:33580  "channel"
                    let _950_slot := var_channel_2988_slot
                    let expr_3088_slot := _950_slot
                    /// @src 0:33573:33592  "channel.ethBalances"
                    let _951 := add(expr_3088_slot, 2)
                    let _952_slot := _951
                    let expr_3089_slot := _952_slot
                    /// @src 0:33593:33594  "2"
                    let expr_3090 := 0x02
                    /// @src 0:33573:33595  "channel.ethBalances[2]"

                    let _953, _954 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3089_slot, expr_3090)
                    let _955 := read_from_storage_split_dynamic_t_uint256(_953, _954)
                    let expr_3091 := _955
                    /// @src 0:33549:33556  "channel"
                    let _956_slot := var_channel_2988_slot
                    let expr_3083_slot := _956_slot
                    /// @src 0:33549:33568  "channel.ethBalances"
                    let _957 := add(expr_3083_slot, 2)
                    let _958_slot := _957
                    let expr_3086_slot := _958_slot
                    /// @src 0:33569:33570  "0"
                    let expr_3085 := 0x00
                    /// @src 0:33549:33571  "channel.ethBalances[0]"

                    let _959, _960 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3086_slot, expr_3085)
                    /// @src 0:33549:33595  "channel.ethBalances[0]+=channel.ethBalances[2]"
                    let _961 := read_from_storage_split_dynamic_t_uint256(_959, _960)
                    let expr_3092 := checked_add_t_uint256(_961, expr_3091)

                    update_storage_value_t_uint256_to_t_uint256(_959, _960, expr_3092)
                    /// @src 0:33634:33641  "channel"
                    let _962_slot := var_channel_2988_slot
                    let expr_3099_slot := _962_slot
                    /// @src 0:33634:33653  "channel.ethBalances"
                    let _963 := add(expr_3099_slot, 2)
                    let _964_slot := _963
                    let expr_3100_slot := _964_slot
                    /// @src 0:33654:33655  "3"
                    let expr_3101 := 0x03
                    /// @src 0:33634:33656  "channel.ethBalances[3]"

                    let _965, _966 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3100_slot, expr_3101)
                    let _967 := read_from_storage_split_dynamic_t_uint256(_965, _966)
                    let expr_3102 := _967
                    /// @src 0:33610:33617  "channel"
                    let _968_slot := var_channel_2988_slot
                    let expr_3094_slot := _968_slot
                    /// @src 0:33610:33629  "channel.ethBalances"
                    let _969 := add(expr_3094_slot, 2)
                    let _970_slot := _969
                    let expr_3097_slot := _970_slot
                    /// @src 0:33630:33631  "1"
                    let expr_3096 := 0x01
                    /// @src 0:33610:33632  "channel.ethBalances[1]"

                    let _971, _972 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3097_slot, expr_3096)
                    /// @src 0:33610:33656  "channel.ethBalances[1]+=channel.ethBalances[3]"
                    let _973 := read_from_storage_split_dynamic_t_uint256(_971, _972)
                    let expr_3103 := checked_add_t_uint256(_973, expr_3102)

                    update_storage_value_t_uint256_to_t_uint256(_971, _972, expr_3103)
                    /// @src 0:33482:33758  "if(possibleTotalEthBeforeDeposit < totalEthDeposit) {..."
                }
                /// @src 0:33772:33803  "possibleTotalTokenBeforeDeposit"
                let _974 := var_possibleTotalTokenBeforeDeposit_3069
                let expr_3114 := _974
                /// @src 0:33806:33823  "totalTokenDeposit"
                let _975 := var_totalTokenDeposit_3040
                let expr_3115 := _975
                /// @src 0:33772:33823  "possibleTotalTokenBeforeDeposit < totalTokenDeposit"
                let expr_3116 := lt(cleanup_t_uint256(expr_3114), cleanup_t_uint256(expr_3115))
                /// @src 0:33769:34061  "if(possibleTotalTokenBeforeDeposit < totalTokenDeposit) {..."
                switch expr_3116
                case 0 {
                    /// @src 0:33996:34027  "possibleTotalTokenBeforeDeposit"
                    let _976 := var_possibleTotalTokenBeforeDeposit_3069
                    let expr_3141 := _976
                    /// @src 0:34031:34048  "totalTokenDeposit"
                    let _977 := var_totalTokenDeposit_3040
                    let expr_3142 := _977
                    /// @src 0:33996:34048  "possibleTotalTokenBeforeDeposit == totalTokenDeposit"
                    let expr_3143 := eq(cleanup_t_uint256(expr_3141), cleanup_t_uint256(expr_3142))
                    /// @src 0:33988:34049  "require(possibleTotalTokenBeforeDeposit == totalTokenDeposit)"
                    require_helper(expr_3143)
                    /// @src 0:33769:34061  "if(possibleTotalTokenBeforeDeposit < totalTokenDeposit) {..."
                }
                default {
                    /// @src 0:33866:33873  "channel"
                    let _978_slot := var_channel_2988_slot
                    let expr_3122_slot := _978_slot
                    /// @src 0:33866:33887  "channel.erc20Balances"
                    let _979 := add(expr_3122_slot, 6)
                    let _980_slot := _979
                    let expr_3123_slot := _980_slot
                    /// @src 0:33888:33889  "2"
                    let expr_3124 := 0x02
                    /// @src 0:33866:33890  "channel.erc20Balances[2]"

                    let _981, _982 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3123_slot, expr_3124)
                    let _983 := read_from_storage_split_dynamic_t_uint256(_981, _982)
                    let expr_3125 := _983
                    /// @src 0:33840:33847  "channel"
                    let _984_slot := var_channel_2988_slot
                    let expr_3117_slot := _984_slot
                    /// @src 0:33840:33861  "channel.erc20Balances"
                    let _985 := add(expr_3117_slot, 6)
                    let _986_slot := _985
                    let expr_3120_slot := _986_slot
                    /// @src 0:33862:33863  "0"
                    let expr_3119 := 0x00
                    /// @src 0:33840:33864  "channel.erc20Balances[0]"

                    let _987, _988 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3120_slot, expr_3119)
                    /// @src 0:33840:33890  "channel.erc20Balances[0]+=channel.erc20Balances[2]"
                    let _989 := read_from_storage_split_dynamic_t_uint256(_987, _988)
                    let expr_3126 := checked_add_t_uint256(_989, expr_3125)

                    update_storage_value_t_uint256_to_t_uint256(_987, _988, expr_3126)
                    /// @src 0:33931:33938  "channel"
                    let _990_slot := var_channel_2988_slot
                    let expr_3133_slot := _990_slot
                    /// @src 0:33931:33952  "channel.erc20Balances"
                    let _991 := add(expr_3133_slot, 6)
                    let _992_slot := _991
                    let expr_3134_slot := _992_slot
                    /// @src 0:33953:33954  "3"
                    let expr_3135 := 0x03
                    /// @src 0:33931:33955  "channel.erc20Balances[3]"

                    let _993, _994 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3134_slot, expr_3135)
                    let _995 := read_from_storage_split_dynamic_t_uint256(_993, _994)
                    let expr_3136 := _995
                    /// @src 0:33905:33912  "channel"
                    let _996_slot := var_channel_2988_slot
                    let expr_3128_slot := _996_slot
                    /// @src 0:33905:33926  "channel.erc20Balances"
                    let _997 := add(expr_3128_slot, 6)
                    let _998_slot := _997
                    let expr_3131_slot := _998_slot
                    /// @src 0:33927:33928  "1"
                    let expr_3130 := 0x01
                    /// @src 0:33905:33929  "channel.erc20Balances[1]"

                    let _999, _1000 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3131_slot, expr_3130)
                    /// @src 0:33905:33955  "channel.erc20Balances[1]+=channel.erc20Balances[3]"
                    let _1001 := read_from_storage_split_dynamic_t_uint256(_999, _1000)
                    let expr_3137 := checked_add_t_uint256(_1001, expr_3136)

                    update_storage_value_t_uint256_to_t_uint256(_999, _1000, expr_3137)
                    /// @src 0:33769:34061  "if(possibleTotalTokenBeforeDeposit < totalTokenDeposit) {..."
                }
                /// @src 0:34117:34124  "channel"
                let _1002_slot := var_channel_2988_slot
                let expr_3150_slot := _1002_slot
                /// @src 0:34117:34136  "channel.ethBalances"
                let _1003 := add(expr_3150_slot, 2)
                let _1004_slot := _1003
                let expr_3151_slot := _1004_slot
                /// @src 0:34137:34138  "0"
                let expr_3152 := 0x00
                /// @src 0:34117:34139  "channel.ethBalances[0]"

                let _1005, _1006 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3151_slot, expr_3152)
                let _1007 := read_from_storage_split_dynamic_t_uint256(_1005, _1006)
                let expr_3153 := _1007
                /// @src 0:34095:34139  "uint256 ethbalanceA = channel.ethBalances[0]"
                let var_ethbalanceA_3149 := expr_3153
                /// @src 0:34172:34179  "channel"
                let _1008_slot := var_channel_2988_slot
                let expr_3157_slot := _1008_slot
                /// @src 0:34172:34191  "channel.ethBalances"
                let _1009 := add(expr_3157_slot, 2)
                let _1010_slot := _1009
                let expr_3158_slot := _1010_slot
                /// @src 0:34192:34193  "1"
                let expr_3159 := 0x01
                /// @src 0:34172:34194  "channel.ethBalances[1]"

                let _1011, _1012 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3158_slot, expr_3159)
                let _1013 := read_from_storage_split_dynamic_t_uint256(_1011, _1012)
                let expr_3160 := _1013
                /// @src 0:34150:34194  "uint256 ethbalanceI = channel.ethBalances[1]"
                let var_ethbalanceI_3156 := expr_3160
                /// @src 0:34229:34236  "channel"
                let _1014_slot := var_channel_2988_slot
                let expr_3164_slot := _1014_slot
                /// @src 0:34229:34250  "channel.erc20Balances"
                let _1015 := add(expr_3164_slot, 6)
                let _1016_slot := _1015
                let expr_3165_slot := _1016_slot
                /// @src 0:34251:34252  "0"
                let expr_3166 := 0x00
                /// @src 0:34229:34253  "channel.erc20Balances[0]"

                let _1017, _1018 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3165_slot, expr_3166)
                let _1019 := read_from_storage_split_dynamic_t_uint256(_1017, _1018)
                let expr_3167 := _1019
                /// @src 0:34205:34253  "uint256 tokenbalanceA = channel.erc20Balances[0]"
                let var_tokenbalanceA_3163 := expr_3167
                /// @src 0:34288:34295  "channel"
                let _1020_slot := var_channel_2988_slot
                let expr_3171_slot := _1020_slot
                /// @src 0:34288:34309  "channel.erc20Balances"
                let _1021 := add(expr_3171_slot, 6)
                let _1022_slot := _1021
                let expr_3172_slot := _1022_slot
                /// @src 0:34310:34311  "1"
                let expr_3173 := 0x01
                /// @src 0:34288:34312  "channel.erc20Balances[1]"

                let _1023, _1024 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3172_slot, expr_3173)
                let _1025 := read_from_storage_split_dynamic_t_uint256(_1023, _1024)
                let expr_3174 := _1025
                /// @src 0:34264:34312  "uint256 tokenbalanceI = channel.erc20Balances[1]"
                let var_tokenbalanceI_3170 := expr_3174
                /// @src 0:34349:34350  "0"
                let expr_3181 := 0x00
                /// @src 0:34324:34350  "channel.ethBalances[0] = 0"
                let _1026 := convert_t_rational_0_by_1_to_t_uint256(expr_3181)
                /// @src 0:34324:34331  "channel"
                let _1027_slot := var_channel_2988_slot
                let expr_3176_slot := _1027_slot
                /// @src 0:34324:34343  "channel.ethBalances"
                let _1028 := add(expr_3176_slot, 2)
                let _1029_slot := _1028
                let expr_3179_slot := _1029_slot
                /// @src 0:34344:34345  "0"
                let expr_3178 := 0x00
                /// @src 0:34324:34346  "channel.ethBalances[0]"

                let _1030, _1031 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3179_slot, expr_3178)
                /// @src 0:34324:34350  "channel.ethBalances[0] = 0"
                update_storage_value_t_uint256_to_t_uint256(_1030, _1031, _1026)
                let expr_3182 := _1026
                /// @src 0:34386:34387  "0"
                let expr_3189 := 0x00
                /// @src 0:34361:34387  "channel.ethBalances[1] = 0"
                let _1032 := convert_t_rational_0_by_1_to_t_uint256(expr_3189)
                /// @src 0:34361:34368  "channel"
                let _1033_slot := var_channel_2988_slot
                let expr_3184_slot := _1033_slot
                /// @src 0:34361:34380  "channel.ethBalances"
                let _1034 := add(expr_3184_slot, 2)
                let _1035_slot := _1034
                let expr_3187_slot := _1035_slot
                /// @src 0:34381:34382  "1"
                let expr_3186 := 0x01
                /// @src 0:34361:34383  "channel.ethBalances[1]"

                let _1036, _1037 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3187_slot, expr_3186)
                /// @src 0:34361:34387  "channel.ethBalances[1] = 0"
                update_storage_value_t_uint256_to_t_uint256(_1036, _1037, _1032)
                let expr_3190 := _1032
                /// @src 0:34425:34426  "0"
                let expr_3197 := 0x00
                /// @src 0:34398:34426  "channel.erc20Balances[0] = 0"
                let _1038 := convert_t_rational_0_by_1_to_t_uint256(expr_3197)
                /// @src 0:34398:34405  "channel"
                let _1039_slot := var_channel_2988_slot
                let expr_3192_slot := _1039_slot
                /// @src 0:34398:34419  "channel.erc20Balances"
                let _1040 := add(expr_3192_slot, 6)
                let _1041_slot := _1040
                let expr_3195_slot := _1041_slot
                /// @src 0:34420:34421  "0"
                let expr_3194 := 0x00
                /// @src 0:34398:34422  "channel.erc20Balances[0]"

                let _1042, _1043 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3195_slot, expr_3194)
                /// @src 0:34398:34426  "channel.erc20Balances[0] = 0"
                update_storage_value_t_uint256_to_t_uint256(_1042, _1043, _1038)
                let expr_3198 := _1038
                /// @src 0:34464:34465  "0"
                let expr_3205 := 0x00
                /// @src 0:34437:34465  "channel.erc20Balances[1] = 0"
                let _1044 := convert_t_rational_0_by_1_to_t_uint256(expr_3205)
                /// @src 0:34437:34444  "channel"
                let _1045_slot := var_channel_2988_slot
                let expr_3200_slot := _1045_slot
                /// @src 0:34437:34458  "channel.erc20Balances"
                let _1046 := add(expr_3200_slot, 6)
                let _1047_slot := _1046
                let expr_3203_slot := _1047_slot
                /// @src 0:34459:34460  "1"
                let expr_3202 := 0x01
                /// @src 0:34437:34461  "channel.erc20Balances[1]"

                let _1048, _1049 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_3203_slot, expr_3202)
                /// @src 0:34437:34465  "channel.erc20Balances[1] = 0"
                update_storage_value_t_uint256_to_t_uint256(_1048, _1049, _1044)
                let expr_3206 := _1044
                /// @src 0:34480:34491  "ethbalanceA"
                let _1050 := var_ethbalanceA_3149
                let expr_3208 := _1050
                /// @src 0:34495:34496  "0"
                let expr_3209 := 0x00
                /// @src 0:34480:34496  "ethbalanceA != 0"
                let expr_3210 := iszero(eq(cleanup_t_uint256(expr_3208), convert_t_rational_0_by_1_to_t_uint256(expr_3209)))
                /// @src 0:34480:34516  "ethbalanceA != 0 || ethbalanceI != 0"
                let expr_3214 := expr_3210
                if iszero(expr_3214) {
                    /// @src 0:34500:34511  "ethbalanceI"
                    let _1051 := var_ethbalanceI_3156
                    let expr_3211 := _1051
                    /// @src 0:34515:34516  "0"
                    let expr_3212 := 0x00
                    /// @src 0:34500:34516  "ethbalanceI != 0"
                    let expr_3213 := iszero(eq(cleanup_t_uint256(expr_3211), convert_t_rational_0_by_1_to_t_uint256(expr_3212)))
                    /// @src 0:34480:34516  "ethbalanceA != 0 || ethbalanceI != 0"
                    expr_3214 := expr_3213
                }
                /// @src 0:34477:34672  "if(ethbalanceA != 0 || ethbalanceI != 0) {..."
                if expr_3214 {
                    /// @src 0:34541:34548  "channel"
                    let _1052_slot := var_channel_2988_slot
                    let expr_3217_slot := _1052_slot
                    /// @src 0:34541:34563  "channel.partyAddresses"
                    let _1053 := add(expr_3217_slot, 0)
                    let _1054_slot := _1053
                    let expr_3218_slot := _1054_slot
                    /// @src 0:34564:34565  "0"
                    let expr_3219 := 0x00
                    /// @src 0:34541:34566  "channel.partyAddresses[0]"

                    let _1055, _1056 := storage_array_index_access_t_array$_t_address_$2_storage(expr_3218_slot, expr_3219)
                    let _1057 := read_from_storage_split_dynamic_t_address(_1055, _1056)
                    let expr_3220 := _1057
                    /// @src 0:34533:34567  "payable(channel.partyAddresses[0])"
                    let expr_3221 := convert_t_address_to_t_address_payable(expr_3220)
                    /// @src 0:34533:34576  "payable(channel.partyAddresses[0]).transfer"
                    let expr_3222_address := convert_t_address_payable_to_t_address(expr_3221)
                    /// @src 0:34577:34588  "ethbalanceA"
                    let _1058 := var_ethbalanceA_3149
                    let expr_3223 := _1058
                    /// @src 0:34533:34589  "payable(channel.partyAddresses[0]).transfer(ethbalanceA)"

                    let _1059 := 0
                    if iszero(expr_3223) { _1059 := 2300 }

                    let _1060 := call(_1059, expr_3222_address, expr_3223, 0, 0, 0, 0)

                    if iszero(_1060) { revert_forward_1() }

                    /// @src 0:34612:34619  "channel"
                    let _1061_slot := var_channel_2988_slot
                    let expr_3228_slot := _1061_slot
                    /// @src 0:34612:34634  "channel.partyAddresses"
                    let _1062 := add(expr_3228_slot, 0)
                    let _1063_slot := _1062
                    let expr_3229_slot := _1063_slot
                    /// @src 0:34635:34636  "1"
                    let expr_3230 := 0x01
                    /// @src 0:34612:34637  "channel.partyAddresses[1]"

                    let _1064, _1065 := storage_array_index_access_t_array$_t_address_$2_storage(expr_3229_slot, expr_3230)
                    let _1066 := read_from_storage_split_dynamic_t_address(_1064, _1065)
                    let expr_3231 := _1066
                    /// @src 0:34604:34638  "payable(channel.partyAddresses[1])"
                    let expr_3232 := convert_t_address_to_t_address_payable(expr_3231)
                    /// @src 0:34604:34647  "payable(channel.partyAddresses[1]).transfer"
                    let expr_3233_address := convert_t_address_payable_to_t_address(expr_3232)
                    /// @src 0:34648:34659  "ethbalanceI"
                    let _1067 := var_ethbalanceI_3156
                    let expr_3234 := _1067
                    /// @src 0:34604:34660  "payable(channel.partyAddresses[1]).transfer(ethbalanceI)"

                    let _1068 := 0
                    if iszero(expr_3234) { _1068 := 2300 }

                    let _1069 := call(_1068, expr_3233_address, expr_3234, 0, 0, 0, 0)

                    if iszero(_1069) { revert_forward_1() }

                    /// @src 0:34477:34672  "if(ethbalanceA != 0 || ethbalanceI != 0) {..."
                }
                /// @src 0:34686:34699  "tokenbalanceA"
                let _1070 := var_tokenbalanceA_3163
                let expr_3239 := _1070
                /// @src 0:34703:34704  "0"
                let expr_3240 := 0x00
                /// @src 0:34686:34704  "tokenbalanceA != 0"
                let expr_3241 := iszero(eq(cleanup_t_uint256(expr_3239), convert_t_rational_0_by_1_to_t_uint256(expr_3240)))
                /// @src 0:34686:34726  "tokenbalanceA != 0 || tokenbalanceI != 0"
                let expr_3245 := expr_3241
                if iszero(expr_3245) {
                    /// @src 0:34708:34721  "tokenbalanceI"
                    let _1071 := var_tokenbalanceI_3170
                    let expr_3242 := _1071
                    /// @src 0:34725:34726  "0"
                    let expr_3243 := 0x00
                    /// @src 0:34708:34726  "tokenbalanceI != 0"
                    let expr_3244 := iszero(eq(cleanup_t_uint256(expr_3242), convert_t_rational_0_by_1_to_t_uint256(expr_3243)))
                    /// @src 0:34686:34726  "tokenbalanceA != 0 || tokenbalanceI != 0"
                    expr_3245 := expr_3244
                }
                /// @src 0:34683:35112  "if(tokenbalanceA != 0 || tokenbalanceI != 0) {..."
                if expr_3245 {
                    /// @src 0:34769:34776  "channel"
                    let _1072_slot := var_channel_2988_slot
                    let expr_3247_slot := _1072_slot
                    /// @src 0:34769:34782  "channel.token"
                    let _1073 := add(expr_3247_slot, 19)
                    let _1074_address := read_from_storage_split_offset_0_t_contract$_HumanStandardToken_$922(_1073)
                    let expr_3248_address := _1074_address
                    /// @src 0:34769:34791  "channel.token.transfer"
                    let expr_3249_address := convert_t_contract$_HumanStandardToken_$922_to_t_address(expr_3248_address)
                    let expr_3249_functionSelector := 0xa9059cbb
                    /// @src 0:34792:34799  "channel"
                    let _1075_slot := var_channel_2988_slot
                    let expr_3250_slot := _1075_slot
                    /// @src 0:34792:34814  "channel.partyAddresses"
                    let _1076 := add(expr_3250_slot, 0)
                    let _1077_slot := _1076
                    let expr_3251_slot := _1077_slot
                    /// @src 0:34815:34816  "0"
                    let expr_3252 := 0x00
                    /// @src 0:34792:34817  "channel.partyAddresses[0]"

                    let _1078, _1079 := storage_array_index_access_t_array$_t_address_$2_storage(expr_3251_slot, expr_3252)
                    let _1080 := read_from_storage_split_dynamic_t_address(_1078, _1079)
                    let expr_3253 := _1080
                    /// @src 0:34819:34832  "tokenbalanceA"
                    let _1081 := var_tokenbalanceA_3163
                    let expr_3254 := _1081
                    /// @src 0:34769:34833  "channel.token.transfer(channel.partyAddresses[0], tokenbalanceA)"

                    // storage for arguments and returned data
                    let _1082 := allocate_unbounded()
                    mstore(_1082, shift_left_224(expr_3249_functionSelector))
                    let _1083 := abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(add(_1082, 4) , expr_3253, expr_3254)

                    let _1084 := call(gas(), expr_3249_address,  0,  _1082, sub(_1083, _1082), _1082, 32)

                    if iszero(_1084) { revert_forward_1() }

                    let expr_3255
                    if _1084 {

                        let _1085 := 32

                        if gt(_1085, returndatasize()) {
                            _1085 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_1082, _1085)

                        // decode return parameters from external try-call into retVars
                        expr_3255 :=  abi_decode_tuple_t_bool_fromMemory(_1082, add(_1082, _1085))
                    }
                    /// @src 0:34743:34914  "require(..."
                    require_helper_t_stringliteral_e6ba2539700c3d9511f1ce983979896dd02cfaf9ad0d7dc537a16ad485be07e4(expr_3255)
                    /// @src 0:34955:34962  "channel"
                    let _1086_slot := var_channel_2988_slot
                    let expr_3260_slot := _1086_slot
                    /// @src 0:34955:34968  "channel.token"
                    let _1087 := add(expr_3260_slot, 19)
                    let _1088_address := read_from_storage_split_offset_0_t_contract$_HumanStandardToken_$922(_1087)
                    let expr_3261_address := _1088_address
                    /// @src 0:34955:34977  "channel.token.transfer"
                    let expr_3262_address := convert_t_contract$_HumanStandardToken_$922_to_t_address(expr_3261_address)
                    let expr_3262_functionSelector := 0xa9059cbb
                    /// @src 0:34978:34985  "channel"
                    let _1089_slot := var_channel_2988_slot
                    let expr_3263_slot := _1089_slot
                    /// @src 0:34978:35000  "channel.partyAddresses"
                    let _1090 := add(expr_3263_slot, 0)
                    let _1091_slot := _1090
                    let expr_3264_slot := _1091_slot
                    /// @src 0:35001:35002  "1"
                    let expr_3265 := 0x01
                    /// @src 0:34978:35003  "channel.partyAddresses[1]"

                    let _1092, _1093 := storage_array_index_access_t_array$_t_address_$2_storage(expr_3264_slot, expr_3265)
                    let _1094 := read_from_storage_split_dynamic_t_address(_1092, _1093)
                    let expr_3266 := _1094
                    /// @src 0:35005:35018  "tokenbalanceI"
                    let _1095 := var_tokenbalanceI_3170
                    let expr_3267 := _1095
                    /// @src 0:34955:35019  "channel.token.transfer(channel.partyAddresses[1], tokenbalanceI)"

                    // storage for arguments and returned data
                    let _1096 := allocate_unbounded()
                    mstore(_1096, shift_left_224(expr_3262_functionSelector))
                    let _1097 := abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(add(_1096, 4) , expr_3266, expr_3267)

                    let _1098 := call(gas(), expr_3262_address,  0,  _1096, sub(_1097, _1096), _1096, 32)

                    if iszero(_1098) { revert_forward_1() }

                    let expr_3268
                    if _1098 {

                        let _1099 := 32

                        if gt(_1099, returndatasize()) {
                            _1099 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_1096, _1099)

                        // decode return parameters from external try-call into retVars
                        expr_3268 :=  abi_decode_tuple_t_bool_fromMemory(_1096, add(_1096, _1099))
                    }
                    /// @src 0:34929:35100  "require(..."
                    require_helper_t_stringliteral_e6ba2539700c3d9511f1ce983979896dd02cfaf9ad0d7dc537a16ad485be07e4(expr_3268)
                    /// @src 0:34683:35112  "if(tokenbalanceA != 0 || tokenbalanceI != 0) {..."
                }
                /// @src 0:35140:35145  "false"
                let expr_3277 := 0x00
                /// @src 0:35123:35130  "channel"
                let _1100_slot := var_channel_2988_slot
                let expr_3274_slot := _1100_slot
                /// @src 0:35123:35137  "channel.isOpen"
                let _1101 := add(expr_3274_slot, 17)
                /// @src 0:35123:35145  "channel.isOpen = false"
                update_storage_value_offset_0_t_bool_to_t_bool(_1101, expr_3277)
                let expr_3278 := expr_3277
                /// @src 0:35156:35169  "numChannels--"
                let _1103 := read_from_storage_split_offset_0_t_uint256(0x00)
                let _1102 := decrement_t_uint256(_1103)
                update_storage_value_offset_0_t_uint256_to_t_uint256(0x00, _1102)
                let expr_3281 := _1103
                /// @src 0:35197:35202  "_lcID"
                let _1104 := var__lcID_2983
                let expr_3284 := _1104
                /// @src 0:35204:35211  "channel"
                let _1105_slot := var_channel_2988_slot
                let expr_3285_slot := _1105_slot
                /// @src 0:35204:35220  "channel.sequence"
                let _1106 := add(expr_3285_slot, 12)
                let _1107 := read_from_storage_split_offset_0_t_uint256(_1106)
                let expr_3286 := _1107
                /// @src 0:35222:35233  "ethbalanceA"
                let _1108 := var_ethbalanceA_3149
                let expr_3287 := _1108
                /// @src 0:35235:35246  "ethbalanceI"
                let _1109 := var_ethbalanceI_3156
                let expr_3288 := _1109
                /// @src 0:35248:35261  "tokenbalanceA"
                let _1110 := var_tokenbalanceA_3163
                let expr_3289 := _1110
                /// @src 0:35263:35276  "tokenbalanceI"
                let _1111 := var_tokenbalanceI_3170
                let expr_3290 := _1111
                /// @src 0:35186:35277  "DidLCClose(_lcID, channel.sequence, ethbalanceA, ethbalanceI, tokenbalanceA, tokenbalanceI)"
                let _1112 := 0x3adff1604df08a519c7848023123530b0c9a05bf082395a43c09e02406deea1a
                let _1113 := convert_t_bytes32_to_t_bytes32(expr_3284)
                {
                    let _1114 := allocate_unbounded()
                    let _1115 := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__fromStack(_1114 , expr_3286, expr_3287, expr_3288, expr_3289, expr_3290)
                    log2(_1114, sub(_1115, _1114) , _1112, _1113)
                }
            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

            function store_literal_in_memory_f8d68a8b76e6819f06eafef5e7b539ff5f3d1c9dac0cebb377861a45833d3d94(memPtr) {

                mstore(add(memPtr, 0), "VC sequence is higher than updat")

                mstore(add(memPtr, 32), "e sequence.")

            }

            function abi_encode_t_stringliteral_f8d68a8b76e6819f06eafef5e7b539ff5f3d1c9dac0cebb377861a45833d3d94_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 43)
                store_literal_in_memory_f8d68a8b76e6819f06eafef5e7b539ff5f3d1c9dac0cebb377861a45833d3d94(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_f8d68a8b76e6819f06eafef5e7b539ff5f3d1c9dac0cebb377861a45833d3d94__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_f8d68a8b76e6819f06eafef5e7b539ff5f3d1c9dac0cebb377861a45833d3d94_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_f8d68a8b76e6819f06eafef5e7b539ff5f3d1c9dac0cebb377861a45833d3d94(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_f8d68a8b76e6819f06eafef5e7b539ff5f3d1c9dac0cebb377861a45833d3d94__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_d19ee4af32287d90c8166531b0a53014fe02be6a22973fb32bbe978a69d0aec1(memPtr) {

                mstore(add(memPtr, 0), "State updates may only increase ")

                mstore(add(memPtr, 32), "recipient balance.")

            }

            function abi_encode_t_stringliteral_d19ee4af32287d90c8166531b0a53014fe02be6a22973fb32bbe978a69d0aec1_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 50)
                store_literal_in_memory_d19ee4af32287d90c8166531b0a53014fe02be6a22973fb32bbe978a69d0aec1(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_d19ee4af32287d90c8166531b0a53014fe02be6a22973fb32bbe978a69d0aec1__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_d19ee4af32287d90c8166531b0a53014fe02be6a22973fb32bbe978a69d0aec1_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_d19ee4af32287d90c8166531b0a53014fe02be6a22973fb32bbe978a69d0aec1(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_d19ee4af32287d90c8166531b0a53014fe02be6a22973fb32bbe978a69d0aec1__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_c4e5939e06aaa1791531dcef31bc3ca4a6500ac70b0127fc37513a8c01fb0f69(memPtr) {

                mstore(add(memPtr, 0), "Incorrect balances for bonded am")

                mstore(add(memPtr, 32), "ount")

            }

            function abi_encode_t_stringliteral_c4e5939e06aaa1791531dcef31bc3ca4a6500ac70b0127fc37513a8c01fb0f69_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 36)
                store_literal_in_memory_c4e5939e06aaa1791531dcef31bc3ca4a6500ac70b0127fc37513a8c01fb0f69(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_c4e5939e06aaa1791531dcef31bc3ca4a6500ac70b0127fc37513a8c01fb0f69__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_c4e5939e06aaa1791531dcef31bc3ca4a6500ac70b0127fc37513a8c01fb0f69_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_c4e5939e06aaa1791531dcef31bc3ca4a6500ac70b0127fc37513a8c01fb0f69(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_c4e5939e06aaa1791531dcef31bc3ca4a6500ac70b0127fc37513a8c01fb0f69__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_address_t_uint256__to_t_uint256_t_uint256_t_uint256_t_address_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_address_to_t_address_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

            }

            /// @ast-id 2769
            /// @src 0:27837:30657  "function settleVC(..."
            function fun_settleVC_2769(var__lcID_2517, var__vcID_2519, var_updateSeq_2521, var__partyA_2523, var__partyB_2525, var_updateBal_2529_mpos, var_sigA_2531_mpos) {

                /// @src 0:28165:28173  "Channels"
                let _1116_slot := 0x02
                let expr_2535_slot := _1116_slot
                /// @src 0:28174:28179  "_lcID"
                let _1117 := var__lcID_2517
                let expr_2536 := _1117
                /// @src 0:28165:28180  "Channels[_lcID]"
                let _1118 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2535_slot,expr_2536)
                let _1119_slot := _1118
                let expr_2537_slot := _1119_slot
                /// @src 0:28165:28187  "Channels[_lcID].isOpen"
                let _1120 := add(expr_2537_slot, 17)
                let _1121 := read_from_storage_split_offset_0_t_bool(_1120)
                let expr_2538 := _1121
                /// @src 0:28157:28205  "require(Channels[_lcID].isOpen, \"LC is closed.\")"
                require_helper_t_stringliteral_ecaf47db7ae62b9758d0f34a122dcca365003a89557cb390677a57d4b3d0998f(expr_2538)
                /// @src 0:28262:28277  "virtualChannels"
                let _1122_slot := 0x01
                let expr_2543_slot := _1122_slot
                /// @src 0:28278:28283  "_vcID"
                let _1123 := var__vcID_2519
                let expr_2544 := _1123
                /// @src 0:28262:28284  "virtualChannels[_vcID]"
                let _1124 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2543_slot,expr_2544)
                let _1125_slot := _1124
                let expr_2545_slot := _1125_slot
                /// @src 0:28262:28292  "virtualChannels[_vcID].isClose"
                let _1126 := add(expr_2545_slot, 0)
                let _1127 := read_from_storage_split_offset_0_t_bool(_1126)
                let expr_2546 := _1127
                /// @src 0:28261:28292  "!virtualChannels[_vcID].isClose"
                let expr_2547 := cleanup_t_bool(iszero(expr_2546))
                /// @src 0:28253:28310  "require(!virtualChannels[_vcID].isClose, \"VC is closed.\")"
                require_helper_t_stringliteral_2081ccfd8184d971c74bd68fffddbc8315ebe1151f1f918825d5d93525733bad(expr_2547)
                /// @src 0:28329:28344  "virtualChannels"
                let _1128_slot := 0x01
                let expr_2552_slot := _1128_slot
                /// @src 0:28345:28350  "_vcID"
                let _1129 := var__vcID_2519
                let expr_2553 := _1129
                /// @src 0:28329:28351  "virtualChannels[_vcID]"
                let _1130 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2552_slot,expr_2553)
                let _1131_slot := _1130
                let expr_2554_slot := _1131_slot
                /// @src 0:28329:28360  "virtualChannels[_vcID].sequence"
                let _1132 := add(expr_2554_slot, 1)
                let _1133 := read_from_storage_split_offset_0_t_uint256(_1132)
                let expr_2555 := _1133
                /// @src 0:28363:28372  "updateSeq"
                let _1134 := var_updateSeq_2521
                let expr_2556 := _1134
                /// @src 0:28329:28372  "virtualChannels[_vcID].sequence < updateSeq"
                let expr_2557 := lt(cleanup_t_uint256(expr_2555), cleanup_t_uint256(expr_2556))
                /// @src 0:28321:28420  "require(virtualChannels[_vcID].sequence < updateSeq, \"VC sequence is higher than update sequence.\")"
                require_helper_t_stringliteral_f8d68a8b76e6819f06eafef5e7b539ff5f3d1c9dac0cebb377861a45833d3d94(expr_2557)
                /// @src 0:28453:28468  "virtualChannels"
                let _1135_slot := 0x01
                let expr_2562_slot := _1135_slot
                /// @src 0:28469:28474  "_vcID"
                let _1136 := var__vcID_2519
                let expr_2563 := _1136
                /// @src 0:28453:28475  "virtualChannels[_vcID]"
                let _1137 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2562_slot,expr_2563)
                let _1138_slot := _1137
                let expr_2564_slot := _1138_slot
                /// @src 0:28453:28487  "virtualChannels[_vcID].ethBalances"
                let _1139 := add(expr_2564_slot, 7)
                let _1140_slot := _1139
                let expr_2565_slot := _1140_slot
                /// @src 0:28488:28489  "1"
                let expr_2566 := 0x01
                /// @src 0:28453:28490  "virtualChannels[_vcID].ethBalances[1]"

                let _1141, _1142 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2565_slot, expr_2566)
                let _1143 := read_from_storage_split_dynamic_t_uint256(_1141, _1142)
                let expr_2567 := _1143
                /// @src 0:28493:28502  "updateBal"
                let _1144_mpos := var_updateBal_2529_mpos
                let expr_2568_mpos := _1144_mpos
                /// @src 0:28503:28504  "1"
                let expr_2569 := 0x01
                /// @src 0:28493:28505  "updateBal[1]"
                let _1145 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2568_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_2569)))
                let expr_2570 := _1145
                /// @src 0:28453:28505  "virtualChannels[_vcID].ethBalances[1] < updateBal[1]"
                let expr_2571 := lt(cleanup_t_uint256(expr_2567), cleanup_t_uint256(expr_2570))
                /// @src 0:28453:28563  "virtualChannels[_vcID].ethBalances[1] < updateBal[1] && virtualChannels[_vcID].erc20Balances[1] < updateBal[3]"
                let expr_2582 := expr_2571
                if expr_2582 {
                    /// @src 0:28509:28524  "virtualChannels"
                    let _1146_slot := 0x01
                    let expr_2572_slot := _1146_slot
                    /// @src 0:28525:28530  "_vcID"
                    let _1147 := var__vcID_2519
                    let expr_2573 := _1147
                    /// @src 0:28509:28531  "virtualChannels[_vcID]"
                    let _1148 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2572_slot,expr_2573)
                    let _1149_slot := _1148
                    let expr_2574_slot := _1149_slot
                    /// @src 0:28509:28545  "virtualChannels[_vcID].erc20Balances"
                    let _1150 := add(expr_2574_slot, 9)
                    let _1151_slot := _1150
                    let expr_2575_slot := _1151_slot
                    /// @src 0:28546:28547  "1"
                    let expr_2576 := 0x01
                    /// @src 0:28509:28548  "virtualChannels[_vcID].erc20Balances[1]"

                    let _1152, _1153 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2575_slot, expr_2576)
                    let _1154 := read_from_storage_split_dynamic_t_uint256(_1152, _1153)
                    let expr_2577 := _1154
                    /// @src 0:28551:28560  "updateBal"
                    let _1155_mpos := var_updateBal_2529_mpos
                    let expr_2578_mpos := _1155_mpos
                    /// @src 0:28561:28562  "3"
                    let expr_2579 := 0x03
                    /// @src 0:28551:28563  "updateBal[3]"
                    let _1156 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2578_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_2579)))
                    let expr_2580 := _1156
                    /// @src 0:28509:28563  "virtualChannels[_vcID].erc20Balances[1] < updateBal[3]"
                    let expr_2581 := lt(cleanup_t_uint256(expr_2577), cleanup_t_uint256(expr_2580))
                    /// @src 0:28453:28563  "virtualChannels[_vcID].ethBalances[1] < updateBal[1] && virtualChannels[_vcID].erc20Balances[1] < updateBal[3]"
                    expr_2582 := expr_2581
                }
                /// @src 0:28431:28641  "require(..."
                require_helper_t_stringliteral_d19ee4af32287d90c8166531b0a53014fe02be6a22973fb32bbe978a69d0aec1(expr_2582)
                /// @src 0:28674:28689  "virtualChannels"
                let _1157_slot := 0x01
                let expr_2587_slot := _1157_slot
                /// @src 0:28690:28695  "_vcID"
                let _1158 := var__vcID_2519
                let expr_2588 := _1158
                /// @src 0:28674:28696  "virtualChannels[_vcID]"
                let _1159 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2587_slot,expr_2588)
                let _1160_slot := _1159
                let expr_2589_slot := _1160_slot
                /// @src 0:28674:28701  "virtualChannels[_vcID].bond"
                let _1161 := add(expr_2589_slot, 11)
                let _1162_slot := _1161
                let expr_2590_slot := _1162_slot
                /// @src 0:28702:28703  "0"
                let expr_2591 := 0x00
                /// @src 0:28674:28704  "virtualChannels[_vcID].bond[0]"

                let _1163, _1164 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2590_slot, expr_2591)
                let _1165 := read_from_storage_split_dynamic_t_uint256(_1163, _1164)
                let expr_2592 := _1165
                /// @src 0:28708:28717  "updateBal"
                let _1166_mpos := var_updateBal_2529_mpos
                let expr_2593_mpos := _1166_mpos
                /// @src 0:28718:28719  "0"
                let expr_2594 := 0x00
                /// @src 0:28708:28720  "updateBal[0]"
                let _1167 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2593_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_2594)))
                let expr_2595 := _1167
                /// @src 0:28723:28732  "updateBal"
                let _1168_mpos := var_updateBal_2529_mpos
                let expr_2596_mpos := _1168_mpos
                /// @src 0:28733:28734  "1"
                let expr_2597 := 0x01
                /// @src 0:28723:28735  "updateBal[1]"
                let _1169 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2596_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_2597)))
                let expr_2598 := _1169
                /// @src 0:28708:28735  "updateBal[0] + updateBal[1]"
                let expr_2599 := checked_add_t_uint256(expr_2595, expr_2598)

                /// @src 0:28674:28735  "virtualChannels[_vcID].bond[0] == updateBal[0] + updateBal[1]"
                let expr_2600 := eq(cleanup_t_uint256(expr_2592), cleanup_t_uint256(expr_2599))
                /// @src 0:28674:28813  "virtualChannels[_vcID].bond[0] == updateBal[0] + updateBal[1] &&..."
                let expr_2615 := expr_2600
                if expr_2615 {
                    /// @src 0:28752:28767  "virtualChannels"
                    let _1170_slot := 0x01
                    let expr_2601_slot := _1170_slot
                    /// @src 0:28768:28773  "_vcID"
                    let _1171 := var__vcID_2519
                    let expr_2602 := _1171
                    /// @src 0:28752:28774  "virtualChannels[_vcID]"
                    let _1172 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2601_slot,expr_2602)
                    let _1173_slot := _1172
                    let expr_2603_slot := _1173_slot
                    /// @src 0:28752:28779  "virtualChannels[_vcID].bond"
                    let _1174 := add(expr_2603_slot, 11)
                    let _1175_slot := _1174
                    let expr_2604_slot := _1175_slot
                    /// @src 0:28780:28781  "1"
                    let expr_2605 := 0x01
                    /// @src 0:28752:28782  "virtualChannels[_vcID].bond[1]"

                    let _1176, _1177 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2604_slot, expr_2605)
                    let _1178 := read_from_storage_split_dynamic_t_uint256(_1176, _1177)
                    let expr_2606 := _1178
                    /// @src 0:28786:28795  "updateBal"
                    let _1179_mpos := var_updateBal_2529_mpos
                    let expr_2607_mpos := _1179_mpos
                    /// @src 0:28796:28797  "2"
                    let expr_2608 := 0x02
                    /// @src 0:28786:28798  "updateBal[2]"
                    let _1180 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2607_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_2608)))
                    let expr_2609 := _1180
                    /// @src 0:28801:28810  "updateBal"
                    let _1181_mpos := var_updateBal_2529_mpos
                    let expr_2610_mpos := _1181_mpos
                    /// @src 0:28811:28812  "3"
                    let expr_2611 := 0x03
                    /// @src 0:28801:28813  "updateBal[3]"
                    let _1182 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2610_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_2611)))
                    let expr_2612 := _1182
                    /// @src 0:28786:28813  "updateBal[2] + updateBal[3]"
                    let expr_2613 := checked_add_t_uint256(expr_2609, expr_2612)

                    /// @src 0:28752:28813  "virtualChannels[_vcID].bond[1] == updateBal[2] + updateBal[3]"
                    let expr_2614 := eq(cleanup_t_uint256(expr_2606), cleanup_t_uint256(expr_2613))
                    /// @src 0:28674:28813  "virtualChannels[_vcID].bond[0] == updateBal[0] + updateBal[1] &&..."
                    expr_2615 := expr_2614
                }
                /// @src 0:28652:28867  "require(..."
                require_helper_t_stringliteral_c4e5939e06aaa1791531dcef31bc3ca4a6500ac70b0127fc37513a8c01fb0f69(expr_2615)
                /// @src 0:29273:29281  "Channels"
                let _1183_slot := 0x02
                let expr_2620_slot := _1183_slot
                /// @src 0:29282:29287  "_lcID"
                let _1184 := var__lcID_2517
                let expr_2621 := _1184
                /// @src 0:29273:29288  "Channels[_lcID]"
                let _1185 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2620_slot,expr_2621)
                let _1186_slot := _1185
                let expr_2622_slot := _1186_slot
                /// @src 0:29273:29304  "Channels[_lcID].updateLCtimeout"
                let _1187 := add(expr_2622_slot, 16)
                let _1188 := read_from_storage_split_offset_0_t_uint256(_1187)
                let expr_2623 := _1188
                /// @src 0:29307:29322  "block.timestamp"
                let expr_2625 := timestamp()
                /// @src 0:29273:29322  "Channels[_lcID].updateLCtimeout < block.timestamp"
                let expr_2626 := lt(cleanup_t_uint256(expr_2623), cleanup_t_uint256(expr_2625))
                /// @src 0:29265:29323  "require(Channels[_lcID].updateLCtimeout < block.timestamp)"
                require_helper(expr_2626)
                /// @src 0:29433:29438  "_vcID"
                let _1189 := var__vcID_2519
                let expr_2634 := _1189
                /// @src 0:29457:29466  "updateSeq"
                let _1190 := var_updateSeq_2521
                let expr_2635 := _1190
                /// @src 0:29485:29492  "_partyA"
                let _1191 := var__partyA_2523
                let expr_2636 := _1191
                /// @src 0:29511:29518  "_partyB"
                let _1192 := var__partyB_2525
                let expr_2637 := _1192
                /// @src 0:29537:29552  "virtualChannels"
                let _1193_slot := 0x01
                let expr_2638_slot := _1193_slot
                /// @src 0:29553:29558  "_vcID"
                let _1194 := var__vcID_2519
                let expr_2639 := _1194
                /// @src 0:29537:29559  "virtualChannels[_vcID]"
                let _1195 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2638_slot,expr_2639)
                let _1196_slot := _1195
                let expr_2640_slot := _1196_slot
                /// @src 0:29537:29564  "virtualChannels[_vcID].bond"
                let _1197 := add(expr_2640_slot, 11)
                let _1198_slot := _1197
                let expr_2641_slot := _1198_slot
                /// @src 0:29565:29566  "0"
                let expr_2642 := 0x00
                /// @src 0:29537:29567  "virtualChannels[_vcID].bond[0]"

                let _1199, _1200 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2641_slot, expr_2642)
                let _1201 := read_from_storage_split_dynamic_t_uint256(_1199, _1200)
                let expr_2643 := _1201
                /// @src 0:29586:29601  "virtualChannels"
                let _1202_slot := 0x01
                let expr_2644_slot := _1202_slot
                /// @src 0:29602:29607  "_vcID"
                let _1203 := var__vcID_2519
                let expr_2645 := _1203
                /// @src 0:29586:29608  "virtualChannels[_vcID]"
                let _1204 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2644_slot,expr_2645)
                let _1205_slot := _1204
                let expr_2646_slot := _1205_slot
                /// @src 0:29586:29613  "virtualChannels[_vcID].bond"
                let _1206 := add(expr_2646_slot, 11)
                let _1207_slot := _1206
                let expr_2647_slot := _1207_slot
                /// @src 0:29614:29615  "1"
                let expr_2648 := 0x01
                /// @src 0:29586:29616  "virtualChannels[_vcID].bond[1]"

                let _1208, _1209 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2647_slot, expr_2648)
                let _1210 := read_from_storage_split_dynamic_t_uint256(_1208, _1209)
                let expr_2649 := _1210
                /// @src 0:29635:29644  "updateBal"
                let _1211_mpos := var_updateBal_2529_mpos
                let expr_2650_mpos := _1211_mpos
                /// @src 0:29645:29646  "0"
                let expr_2651 := 0x00
                /// @src 0:29635:29647  "updateBal[0]"
                let _1212 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2650_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_2651)))
                let expr_2652 := _1212
                /// @src 0:29666:29675  "updateBal"
                let _1213_mpos := var_updateBal_2529_mpos
                let expr_2653_mpos := _1213_mpos
                /// @src 0:29676:29677  "1"
                let expr_2654 := 0x01
                /// @src 0:29666:29678  "updateBal[1]"
                let _1214 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2653_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_2654)))
                let expr_2655 := _1214
                /// @src 0:29697:29706  "updateBal"
                let _1215_mpos := var_updateBal_2529_mpos
                let expr_2656_mpos := _1215_mpos
                /// @src 0:29707:29708  "2"
                let expr_2657 := 0x02
                /// @src 0:29697:29709  "updateBal[2]"
                let _1216 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2656_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_2657)))
                let expr_2658 := _1216
                /// @src 0:29728:29737  "updateBal"
                let _1217_mpos := var_updateBal_2529_mpos
                let expr_2659_mpos := _1217_mpos
                /// @src 0:29738:29739  "3"
                let expr_2660 := 0x03
                /// @src 0:29728:29740  "updateBal[3]"
                let _1218 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2659_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_2660)))
                let expr_2661 := _1218
                /// @src 0:29398:29755  "abi.encodePacked(..."

                let expr_2662_mpos := allocate_unbounded()
                let _1219 := add(expr_2662_mpos, 0x20)

                let _1220 := abi_encode_tuple_packed_t_bytes32_t_uint256_t_address_t_address_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__to_t_bytes32_t_uint256_t_address_t_address_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__nonPadded_inplace_fromStack(_1219, expr_2634, expr_2635, expr_2636, expr_2637, expr_2643, expr_2649, expr_2652, expr_2655, expr_2658, expr_2661)
                mstore(expr_2662_mpos, sub(_1220, add(expr_2662_mpos, 0x20)))
                finalize_allocation(expr_2662_mpos, sub(_1220, expr_2662_mpos))
                /// @src 0:29374:29766  "keccak256(..."
                let expr_2663 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_2662_mpos), array_length_t_bytes_memory_ptr(expr_2662_mpos))
                /// @src 0:29351:29766  "bytes32 _updateState = keccak256(..."
                let var__updateState_2630 := expr_2663
                /// @src 0:29853:29868  "virtualChannels"
                let _1221_slot := 0x01
                let expr_2666_slot := _1221_slot
                /// @src 0:29869:29874  "_vcID"
                let _1222 := var__vcID_2519
                let expr_2667 := _1222
                /// @src 0:29853:29875  "virtualChannels[_vcID]"
                let _1223 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2666_slot,expr_2667)
                let _1224_slot := _1223
                let expr_2668_slot := _1224_slot
                /// @src 0:29853:29882  "virtualChannels[_vcID].partyA"
                let _1225 := add(expr_2668_slot, 4)
                let _1226 := read_from_storage_split_offset_0_t_address(_1225)
                let expr_2669 := _1226
                /// @src 0:29886:29893  "ECTools"
                let expr_2670_address := linkersymbol("ECTools_645")
                /// @src 0:29886:29907  "ECTools.recoverSigner"
                let expr_2671_address := convert_t_type$_t_contract$_ECTools_$645_$_to_t_address(expr_2670_address)
                let expr_2671_functionSelector := 0xdca95419
                /// @src 0:29908:29920  "_updateState"
                let _1227 := var__updateState_2630
                let expr_2672 := _1227
                /// @src 0:29922:29926  "sigA"
                let _1228_mpos := var_sigA_2531_mpos
                let expr_2673_mpos := _1228_mpos
                /// @src 0:29886:29927  "ECTools.recoverSigner(_updateState, sigA)"

                // storage for arguments and returned data
                let _1229 := allocate_unbounded()
                mstore(_1229, shift_left_224(expr_2671_functionSelector))
                let _1230 := abi_encode_tuple_t_bytes32_t_string_memory_ptr__to_t_bytes32_t_string_memory_ptr__fromStack_library(add(_1229, 4) , expr_2672, expr_2673_mpos)

                let _1231 := delegatecall(gas(), expr_2671_address,  _1229, sub(_1230, _1229), _1229, 32)

                if iszero(_1231) { revert_forward_1() }

                let expr_2674
                if _1231 {

                    let _1232 := 32

                    if gt(_1232, returndatasize()) {
                        _1232 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_1229, _1232)

                    // decode return parameters from external try-call into retVars
                    expr_2674 :=  abi_decode_tuple_t_address_fromMemory(_1229, add(_1229, _1232))
                }
                /// @src 0:29853:29927  "virtualChannels[_vcID].partyA == ECTools.recoverSigner(_updateState, sigA)"
                let expr_2675 := eq(cleanup_t_address(expr_2669), cleanup_t_address(expr_2674))
                /// @src 0:29845:29928  "require(virtualChannels[_vcID].partyA == ECTools.recoverSigner(_updateState, sigA))"
                require_helper(expr_2675)
                /// @src 0:30071:30081  "msg.sender"
                let expr_2683 := caller()
                /// @src 0:30035:30050  "virtualChannels"
                let _1233_slot := 0x01
                let expr_2678_slot := _1233_slot
                /// @src 0:30051:30056  "_vcID"
                let _1234 := var__vcID_2519
                let expr_2679 := _1234
                /// @src 0:30035:30057  "virtualChannels[_vcID]"
                let _1235 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2678_slot,expr_2679)
                let _1236_slot := _1235
                let expr_2680_slot := _1236_slot
                /// @src 0:30035:30068  "virtualChannels[_vcID].challenger"
                let _1237 := add(expr_2680_slot, 2)
                /// @src 0:30035:30081  "virtualChannels[_vcID].challenger = msg.sender"
                update_storage_value_offset_0_t_address_to_t_address(_1237, expr_2683)
                let expr_2684 := expr_2683
                /// @src 0:30126:30135  "updateSeq"
                let _1238 := var_updateSeq_2521
                let expr_2690 := _1238
                /// @src 0:30092:30107  "virtualChannels"
                let _1239_slot := 0x01
                let expr_2686_slot := _1239_slot
                /// @src 0:30108:30113  "_vcID"
                let _1240 := var__vcID_2519
                let expr_2687 := _1240
                /// @src 0:30092:30114  "virtualChannels[_vcID]"
                let _1241 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2686_slot,expr_2687)
                let _1242_slot := _1241
                let expr_2688_slot := _1242_slot
                /// @src 0:30092:30123  "virtualChannels[_vcID].sequence"
                let _1243 := add(expr_2688_slot, 1)
                /// @src 0:30092:30135  "virtualChannels[_vcID].sequence = updateSeq"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_1243, expr_2690)
                let expr_2691 := expr_2690
                /// @src 0:30213:30222  "updateBal"
                let _1244_mpos := var_updateBal_2529_mpos
                let expr_2699_mpos := _1244_mpos
                /// @src 0:30223:30224  "0"
                let expr_2700 := 0x00
                /// @src 0:30213:30225  "updateBal[0]"
                let _1245 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2699_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_2700)))
                let expr_2701 := _1245
                /// @src 0:30173:30188  "virtualChannels"
                let _1246_slot := 0x01
                let expr_2693_slot := _1246_slot
                /// @src 0:30189:30194  "_vcID"
                let _1247 := var__vcID_2519
                let expr_2694 := _1247
                /// @src 0:30173:30195  "virtualChannels[_vcID]"
                let _1248 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2693_slot,expr_2694)
                let _1249_slot := _1248
                let expr_2695_slot := _1249_slot
                /// @src 0:30173:30207  "virtualChannels[_vcID].ethBalances"
                let _1250 := add(expr_2695_slot, 7)
                let _1251_slot := _1250
                let expr_2696_slot := _1251_slot
                /// @src 0:30208:30209  "0"
                let expr_2697 := 0x00
                /// @src 0:30173:30210  "virtualChannels[_vcID].ethBalances[0]"

                let _1252, _1253 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2696_slot, expr_2697)
                /// @src 0:30173:30225  "virtualChannels[_vcID].ethBalances[0] = updateBal[0]"
                update_storage_value_t_uint256_to_t_uint256(_1252, _1253, expr_2701)
                let expr_2702 := expr_2701
                /// @src 0:30276:30285  "updateBal"
                let _1254_mpos := var_updateBal_2529_mpos
                let expr_2710_mpos := _1254_mpos
                /// @src 0:30286:30287  "1"
                let expr_2711 := 0x01
                /// @src 0:30276:30288  "updateBal[1]"
                let _1255 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2710_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_2711)))
                let expr_2712 := _1255
                /// @src 0:30236:30251  "virtualChannels"
                let _1256_slot := 0x01
                let expr_2704_slot := _1256_slot
                /// @src 0:30252:30257  "_vcID"
                let _1257 := var__vcID_2519
                let expr_2705 := _1257
                /// @src 0:30236:30258  "virtualChannels[_vcID]"
                let _1258 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2704_slot,expr_2705)
                let _1259_slot := _1258
                let expr_2706_slot := _1259_slot
                /// @src 0:30236:30270  "virtualChannels[_vcID].ethBalances"
                let _1260 := add(expr_2706_slot, 7)
                let _1261_slot := _1260
                let expr_2707_slot := _1261_slot
                /// @src 0:30271:30272  "1"
                let expr_2708 := 0x01
                /// @src 0:30236:30273  "virtualChannels[_vcID].ethBalances[1]"

                let _1262, _1263 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2707_slot, expr_2708)
                /// @src 0:30236:30288  "virtualChannels[_vcID].ethBalances[1] = updateBal[1]"
                update_storage_value_t_uint256_to_t_uint256(_1262, _1263, expr_2712)
                let expr_2713 := expr_2712
                /// @src 0:30341:30350  "updateBal"
                let _1264_mpos := var_updateBal_2529_mpos
                let expr_2721_mpos := _1264_mpos
                /// @src 0:30351:30352  "2"
                let expr_2722 := 0x02
                /// @src 0:30341:30353  "updateBal[2]"
                let _1265 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2721_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_2722)))
                let expr_2723 := _1265
                /// @src 0:30299:30314  "virtualChannels"
                let _1266_slot := 0x01
                let expr_2715_slot := _1266_slot
                /// @src 0:30315:30320  "_vcID"
                let _1267 := var__vcID_2519
                let expr_2716 := _1267
                /// @src 0:30299:30321  "virtualChannels[_vcID]"
                let _1268 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2715_slot,expr_2716)
                let _1269_slot := _1268
                let expr_2717_slot := _1269_slot
                /// @src 0:30299:30335  "virtualChannels[_vcID].erc20Balances"
                let _1270 := add(expr_2717_slot, 9)
                let _1271_slot := _1270
                let expr_2718_slot := _1271_slot
                /// @src 0:30336:30337  "0"
                let expr_2719 := 0x00
                /// @src 0:30299:30338  "virtualChannels[_vcID].erc20Balances[0]"

                let _1272, _1273 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2718_slot, expr_2719)
                /// @src 0:30299:30353  "virtualChannels[_vcID].erc20Balances[0] = updateBal[2]"
                update_storage_value_t_uint256_to_t_uint256(_1272, _1273, expr_2723)
                let expr_2724 := expr_2723
                /// @src 0:30406:30415  "updateBal"
                let _1274_mpos := var_updateBal_2529_mpos
                let expr_2732_mpos := _1274_mpos
                /// @src 0:30416:30417  "3"
                let expr_2733 := 0x03
                /// @src 0:30406:30418  "updateBal[3]"
                let _1275 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2732_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_2733)))
                let expr_2734 := _1275
                /// @src 0:30364:30379  "virtualChannels"
                let _1276_slot := 0x01
                let expr_2726_slot := _1276_slot
                /// @src 0:30380:30385  "_vcID"
                let _1277 := var__vcID_2519
                let expr_2727 := _1277
                /// @src 0:30364:30386  "virtualChannels[_vcID]"
                let _1278 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2726_slot,expr_2727)
                let _1279_slot := _1278
                let expr_2728_slot := _1279_slot
                /// @src 0:30364:30400  "virtualChannels[_vcID].erc20Balances"
                let _1280 := add(expr_2728_slot, 9)
                let _1281_slot := _1280
                let expr_2729_slot := _1281_slot
                /// @src 0:30401:30402  "1"
                let expr_2730 := 0x01
                /// @src 0:30364:30403  "virtualChannels[_vcID].erc20Balances[1]"

                let _1282, _1283 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2729_slot, expr_2730)
                /// @src 0:30364:30418  "virtualChannels[_vcID].erc20Balances[1] = updateBal[3]"
                update_storage_value_t_uint256_to_t_uint256(_1282, _1283, expr_2734)
                let expr_2735 := expr_2734
                /// @src 0:30471:30486  "block.timestamp"
                let expr_2742 := timestamp()
                /// @src 0:30489:30497  "Channels"
                let _1284_slot := 0x02
                let expr_2743_slot := _1284_slot
                /// @src 0:30498:30503  "_lcID"
                let _1285 := var__lcID_2517
                let expr_2744 := _1285
                /// @src 0:30489:30504  "Channels[_lcID]"
                let _1286 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2743_slot,expr_2744)
                let _1287_slot := _1286
                let expr_2745_slot := _1287_slot
                /// @src 0:30489:30516  "Channels[_lcID].confirmTime"
                let _1288 := add(expr_2745_slot, 13)
                let _1289 := read_from_storage_split_offset_0_t_uint256(_1288)
                let expr_2746 := _1289
                /// @src 0:30471:30516  "block.timestamp + Channels[_lcID].confirmTime"
                let expr_2747 := checked_add_t_uint256(expr_2742, expr_2746)

                /// @src 0:30430:30445  "virtualChannels"
                let _1290_slot := 0x01
                let expr_2737_slot := _1290_slot
                /// @src 0:30446:30451  "_vcID"
                let _1291 := var__vcID_2519
                let expr_2738 := _1291
                /// @src 0:30430:30452  "virtualChannels[_vcID]"
                let _1292 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2737_slot,expr_2738)
                let _1293_slot := _1292
                let expr_2739_slot := _1293_slot
                /// @src 0:30430:30468  "virtualChannels[_vcID].updateVCtimeout"
                let _1294 := add(expr_2739_slot, 3)
                /// @src 0:30430:30516  "virtualChannels[_vcID].updateVCtimeout = block.timestamp + Channels[_lcID].confirmTime"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_1294, expr_2747)
                let expr_2748 := expr_2747
                /// @src 0:30545:30550  "_lcID"
                let _1295 := var__lcID_2517
                let expr_2751 := _1295
                /// @src 0:30552:30557  "_vcID"
                let _1296 := var__vcID_2519
                let expr_2752 := _1296
                /// @src 0:30559:30568  "updateSeq"
                let _1297 := var_updateSeq_2521
                let expr_2753 := _1297
                /// @src 0:30570:30579  "updateBal"
                let _1298_mpos := var_updateBal_2529_mpos
                let expr_2754_mpos := _1298_mpos
                /// @src 0:30580:30581  "0"
                let expr_2755 := 0x00
                /// @src 0:30570:30582  "updateBal[0]"
                let _1299 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2754_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_2755)))
                let expr_2756 := _1299
                /// @src 0:30584:30593  "updateBal"
                let _1300_mpos := var_updateBal_2529_mpos
                let expr_2757_mpos := _1300_mpos
                /// @src 0:30594:30595  "1"
                let expr_2758 := 0x01
                /// @src 0:30584:30596  "updateBal[1]"
                let _1301 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$4_memory_ptr(expr_2757_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_2758)))
                let expr_2759 := _1301
                /// @src 0:30598:30608  "msg.sender"
                let expr_2761 := caller()
                /// @src 0:30610:30625  "virtualChannels"
                let _1302_slot := 0x01
                let expr_2762_slot := _1302_slot
                /// @src 0:30626:30631  "_vcID"
                let _1303 := var__vcID_2519
                let expr_2763 := _1303
                /// @src 0:30610:30632  "virtualChannels[_vcID]"
                let _1304 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2762_slot,expr_2763)
                let _1305_slot := _1304
                let expr_2764_slot := _1305_slot
                /// @src 0:30610:30648  "virtualChannels[_vcID].updateVCtimeout"
                let _1306 := add(expr_2764_slot, 3)
                let _1307 := read_from_storage_split_offset_0_t_uint256(_1306)
                let expr_2765 := _1307
                /// @src 0:30533:30649  "DidVCSettle(_lcID, _vcID, updateSeq, updateBal[0], updateBal[1], msg.sender, virtualChannels[_vcID].updateVCtimeout)"
                let _1308 := 0x1bfe1ed988e2858b674914f8271b4e1d1175facec158ae6deaf2de8845a4777d
                let _1309 := convert_t_bytes32_to_t_bytes32(expr_2751)
                let _1310 := convert_t_bytes32_to_t_bytes32(expr_2752)
                {
                    let _1311 := allocate_unbounded()
                    let _1312 := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_address_t_uint256__to_t_uint256_t_uint256_t_uint256_t_address_t_uint256__fromStack(_1311 , expr_2753, expr_2756, expr_2759, expr_2761, expr_2765)
                    log3(_1311, sub(_1312, _1311) , _1308, _1309, _1310)
                }
            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

            function array_length_t_array$_t_uint256_$6_memory_ptr(value) -> length {

                length := 0x06

            }

            function memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_uint256_$6_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                addr := add(baseRef, offset)
            }

            function cleanup_t_rational_4_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4_by_1(value)))
            }

            function cleanup_t_rational_5_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_5_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_5_by_1(value)))
            }

            function update_storage_value_offset_0_t_bytes32_to_t_bytes32(slot, value_0) {
                let convertedValue_0 := convert_t_bytes32_to_t_bytes32(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_bytes32(convertedValue_0)))
            }

            function abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_bytes32_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_bytes32_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6, value7) -> tail {
                tail := add(headStart, 256)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

                abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 160))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value6,  add(headStart, 192))

                abi_encode_t_uint256_to_t_uint256_fromStack(value7,  add(headStart, 224))

            }

            /// @ast-id 2285
            /// @src 0:23190:25448  "function updateLCstate(..."
            function fun_updateLCstate_2285(var__lcID_2030, var_updateParams_2034_mpos, var__VCroot_2036, var__sigA_2038_mpos, var__sigI_2040_mpos) {

                /// @src 0:23510:23518  "Channels"
                let _1313_slot := 0x02
                let expr_2046_slot := _1313_slot
                /// @src 0:23519:23524  "_lcID"
                let _1314 := var__lcID_2030
                let expr_2047 := _1314
                /// @src 0:23510:23525  "Channels[_lcID]"
                let _1315 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2046_slot,expr_2047)
                let _1316_slot := _1315
                let expr_2048_slot := _1316_slot
                /// @src 0:23484:23525  "Channel storage channel = Channels[_lcID]"
                let var_channel_2045_slot := convert_t_struct$_Channel_$1079_storage_to_t_struct$_Channel_$1079_storage_ptr(expr_2048_slot)
                /// @src 0:23544:23551  "channel"
                let _1317_slot := var_channel_2045_slot
                let expr_2051_slot := _1317_slot
                /// @src 0:23544:23558  "channel.isOpen"
                let _1318 := add(expr_2051_slot, 17)
                let _1319 := read_from_storage_split_offset_0_t_bool(_1318)
                let expr_2052 := _1319
                /// @src 0:23536:23559  "require(channel.isOpen)"
                require_helper(expr_2052)
                /// @src 0:23578:23585  "channel"
                let _1320_slot := var_channel_2045_slot
                let expr_2056_slot := _1320_slot
                /// @src 0:23578:23594  "channel.sequence"
                let _1321 := add(expr_2056_slot, 12)
                let _1322 := read_from_storage_split_offset_0_t_uint256(_1321)
                let expr_2057 := _1322
                /// @src 0:23597:23609  "updateParams"
                let _1323_mpos := var_updateParams_2034_mpos
                let expr_2058_mpos := _1323_mpos
                /// @src 0:23610:23611  "0"
                let expr_2059 := 0x00
                /// @src 0:23597:23612  "updateParams[0]"
                let _1324 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2058_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_2059)))
                let expr_2060 := _1324
                /// @src 0:23578:23612  "channel.sequence < updateParams[0]"
                let expr_2061 := lt(cleanup_t_uint256(expr_2057), cleanup_t_uint256(expr_2060))
                /// @src 0:23570:23613  "require(channel.sequence < updateParams[0])"
                require_helper(expr_2061)
                /// @src 0:23664:23671  "channel"
                let _1325_slot := var_channel_2045_slot
                let expr_2065_slot := _1325_slot
                /// @src 0:23664:23683  "channel.ethBalances"
                let _1326 := add(expr_2065_slot, 2)
                let _1327_slot := _1326
                let expr_2066_slot := _1327_slot
                /// @src 0:23684:23685  "0"
                let expr_2067 := 0x00
                /// @src 0:23664:23686  "channel.ethBalances[0]"

                let _1328, _1329 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_2066_slot, expr_2067)
                let _1330 := read_from_storage_split_dynamic_t_uint256(_1328, _1329)
                let expr_2068 := _1330
                /// @src 0:23689:23696  "channel"
                let _1331_slot := var_channel_2045_slot
                let expr_2069_slot := _1331_slot
                /// @src 0:23689:23708  "channel.ethBalances"
                let _1332 := add(expr_2069_slot, 2)
                let _1333_slot := _1332
                let expr_2070_slot := _1333_slot
                /// @src 0:23709:23710  "1"
                let expr_2071 := 0x01
                /// @src 0:23689:23711  "channel.ethBalances[1]"

                let _1334, _1335 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_2070_slot, expr_2071)
                let _1336 := read_from_storage_split_dynamic_t_uint256(_1334, _1335)
                let expr_2072 := _1336
                /// @src 0:23664:23711  "channel.ethBalances[0] + channel.ethBalances[1]"
                let expr_2073 := checked_add_t_uint256(expr_2068, expr_2072)

                /// @src 0:23715:23727  "updateParams"
                let _1337_mpos := var_updateParams_2034_mpos
                let expr_2074_mpos := _1337_mpos
                /// @src 0:23728:23729  "2"
                let expr_2075 := 0x02
                /// @src 0:23715:23730  "updateParams[2]"
                let _1338 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2074_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_2075)))
                let expr_2076 := _1338
                /// @src 0:23733:23745  "updateParams"
                let _1339_mpos := var_updateParams_2034_mpos
                let expr_2077_mpos := _1339_mpos
                /// @src 0:23746:23747  "3"
                let expr_2078 := 0x03
                /// @src 0:23733:23748  "updateParams[3]"
                let _1340 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2077_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_2078)))
                let expr_2079 := _1340
                /// @src 0:23715:23748  "updateParams[2] + updateParams[3]"
                let expr_2080 := checked_add_t_uint256(expr_2076, expr_2079)

                /// @src 0:23664:23748  "channel.ethBalances[0] + channel.ethBalances[1] >= updateParams[2] + updateParams[3]"
                let expr_2081 := iszero(lt(cleanup_t_uint256(expr_2073), cleanup_t_uint256(expr_2080)))
                /// @src 0:23656:23749  "require(channel.ethBalances[0] + channel.ethBalances[1] >= updateParams[2] + updateParams[3])"
                require_helper(expr_2081)
                /// @src 0:23768:23775  "channel"
                let _1341_slot := var_channel_2045_slot
                let expr_2085_slot := _1341_slot
                /// @src 0:23768:23789  "channel.erc20Balances"
                let _1342 := add(expr_2085_slot, 6)
                let _1343_slot := _1342
                let expr_2086_slot := _1343_slot
                /// @src 0:23790:23791  "0"
                let expr_2087 := 0x00
                /// @src 0:23768:23792  "channel.erc20Balances[0]"

                let _1344, _1345 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_2086_slot, expr_2087)
                let _1346 := read_from_storage_split_dynamic_t_uint256(_1344, _1345)
                let expr_2088 := _1346
                /// @src 0:23795:23802  "channel"
                let _1347_slot := var_channel_2045_slot
                let expr_2089_slot := _1347_slot
                /// @src 0:23795:23816  "channel.erc20Balances"
                let _1348 := add(expr_2089_slot, 6)
                let _1349_slot := _1348
                let expr_2090_slot := _1349_slot
                /// @src 0:23817:23818  "1"
                let expr_2091 := 0x01
                /// @src 0:23795:23819  "channel.erc20Balances[1]"

                let _1350, _1351 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_2090_slot, expr_2091)
                let _1352 := read_from_storage_split_dynamic_t_uint256(_1350, _1351)
                let expr_2092 := _1352
                /// @src 0:23768:23819  "channel.erc20Balances[0] + channel.erc20Balances[1]"
                let expr_2093 := checked_add_t_uint256(expr_2088, expr_2092)

                /// @src 0:23823:23835  "updateParams"
                let _1353_mpos := var_updateParams_2034_mpos
                let expr_2094_mpos := _1353_mpos
                /// @src 0:23836:23837  "4"
                let expr_2095 := 0x04
                /// @src 0:23823:23838  "updateParams[4]"
                let _1354 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2094_mpos, convert_t_rational_4_by_1_to_t_uint256(expr_2095)))
                let expr_2096 := _1354
                /// @src 0:23841:23853  "updateParams"
                let _1355_mpos := var_updateParams_2034_mpos
                let expr_2097_mpos := _1355_mpos
                /// @src 0:23854:23855  "5"
                let expr_2098 := 0x05
                /// @src 0:23841:23856  "updateParams[5]"
                let _1356 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2097_mpos, convert_t_rational_5_by_1_to_t_uint256(expr_2098)))
                let expr_2099 := _1356
                /// @src 0:23823:23856  "updateParams[4] + updateParams[5]"
                let expr_2100 := checked_add_t_uint256(expr_2096, expr_2099)

                /// @src 0:23768:23856  "channel.erc20Balances[0] + channel.erc20Balances[1] >= updateParams[4] + updateParams[5]"
                let expr_2101 := iszero(lt(cleanup_t_uint256(expr_2093), cleanup_t_uint256(expr_2100)))
                /// @src 0:23760:23857  "require(channel.erc20Balances[0] + channel.erc20Balances[1] >= updateParams[4] + updateParams[5])"
                require_helper(expr_2101)
                /// @src 0:23872:23879  "channel"
                let _1357_slot := var_channel_2045_slot
                let expr_2104_slot := _1357_slot
                /// @src 0:23872:23898  "channel.isUpdateLCSettling"
                let _1358 := add(expr_2104_slot, 17)
                let _1359 := read_from_storage_split_offset_1_t_bool(_1358)
                let expr_2105 := _1359
                /// @src 0:23902:23906  "true"
                let expr_2106 := 0x01
                /// @src 0:23872:23906  "channel.isUpdateLCSettling == true"
                let expr_2107 := eq(cleanup_t_bool(expr_2105), cleanup_t_bool(expr_2106))
                /// @src 0:23869:23985  "if(channel.isUpdateLCSettling == true) {..."
                if expr_2107 {
                    /// @src 0:23931:23938  "channel"
                    let _1360_slot := var_channel_2045_slot
                    let expr_2109_slot := _1360_slot
                    /// @src 0:23931:23954  "channel.updateLCtimeout"
                    let _1361 := add(expr_2109_slot, 16)
                    let _1362 := read_from_storage_split_offset_0_t_uint256(_1361)
                    let expr_2110 := _1362
                    /// @src 0:23957:23972  "block.timestamp"
                    let expr_2112 := timestamp()
                    /// @src 0:23931:23972  "channel.updateLCtimeout > block.timestamp"
                    let expr_2113 := gt(cleanup_t_uint256(expr_2110), cleanup_t_uint256(expr_2112))
                    /// @src 0:23923:23973  "require(channel.updateLCtimeout > block.timestamp)"
                    require_helper(expr_2113)
                    /// @src 0:23869:23985  "if(channel.isUpdateLCSettling == true) {..."
                }
                /// @src 0:24072:24077  "_lcID"
                let _1363 := var__lcID_2030
                let expr_2123 := _1363
                /// @src 0:24096:24101  "false"
                let expr_2124 := 0x00
                /// @src 0:24120:24132  "updateParams"
                let _1364_mpos := var_updateParams_2034_mpos
                let expr_2125_mpos := _1364_mpos
                /// @src 0:24133:24134  "0"
                let expr_2126 := 0x00
                /// @src 0:24120:24135  "updateParams[0]"
                let _1365 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2125_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_2126)))
                let expr_2127 := _1365
                /// @src 0:24154:24166  "updateParams"
                let _1366_mpos := var_updateParams_2034_mpos
                let expr_2128_mpos := _1366_mpos
                /// @src 0:24167:24168  "1"
                let expr_2129 := 0x01
                /// @src 0:24154:24169  "updateParams[1]"
                let _1367 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2128_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_2129)))
                let expr_2130 := _1367
                /// @src 0:24188:24195  "_VCroot"
                let _1368 := var__VCroot_2036
                let expr_2131 := _1368
                /// @src 0:24214:24221  "channel"
                let _1369_slot := var_channel_2045_slot
                let expr_2132_slot := _1369_slot
                /// @src 0:24214:24236  "channel.partyAddresses"
                let _1370 := add(expr_2132_slot, 0)
                let _1371_slot := _1370
                let expr_2133_slot := _1371_slot
                /// @src 0:24237:24238  "0"
                let expr_2134 := 0x00
                /// @src 0:24214:24239  "channel.partyAddresses[0]"

                let _1372, _1373 := storage_array_index_access_t_array$_t_address_$2_storage(expr_2133_slot, expr_2134)
                let _1374 := read_from_storage_split_dynamic_t_address(_1372, _1373)
                let expr_2135 := _1374
                /// @src 0:24258:24265  "channel"
                let _1375_slot := var_channel_2045_slot
                let expr_2136_slot := _1375_slot
                /// @src 0:24258:24280  "channel.partyAddresses"
                let _1376 := add(expr_2136_slot, 0)
                let _1377_slot := _1376
                let expr_2137_slot := _1377_slot
                /// @src 0:24281:24282  "1"
                let expr_2138 := 0x01
                /// @src 0:24258:24283  "channel.partyAddresses[1]"

                let _1378, _1379 := storage_array_index_access_t_array$_t_address_$2_storage(expr_2137_slot, expr_2138)
                let _1380 := read_from_storage_split_dynamic_t_address(_1378, _1379)
                let expr_2139 := _1380
                /// @src 0:24302:24314  "updateParams"
                let _1381_mpos := var_updateParams_2034_mpos
                let expr_2140_mpos := _1381_mpos
                /// @src 0:24315:24316  "2"
                let expr_2141 := 0x02
                /// @src 0:24302:24317  "updateParams[2]"
                let _1382 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2140_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_2141)))
                let expr_2142 := _1382
                /// @src 0:24336:24348  "updateParams"
                let _1383_mpos := var_updateParams_2034_mpos
                let expr_2143_mpos := _1383_mpos
                /// @src 0:24349:24350  "3"
                let expr_2144 := 0x03
                /// @src 0:24336:24351  "updateParams[3]"
                let _1384 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2143_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_2144)))
                let expr_2145 := _1384
                /// @src 0:24370:24382  "updateParams"
                let _1385_mpos := var_updateParams_2034_mpos
                let expr_2146_mpos := _1385_mpos
                /// @src 0:24383:24384  "4"
                let expr_2147 := 0x04
                /// @src 0:24370:24385  "updateParams[4]"
                let _1386 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2146_mpos, convert_t_rational_4_by_1_to_t_uint256(expr_2147)))
                let expr_2148 := _1386
                /// @src 0:24404:24416  "updateParams"
                let _1387_mpos := var_updateParams_2034_mpos
                let expr_2149_mpos := _1387_mpos
                /// @src 0:24417:24418  "5"
                let expr_2150 := 0x05
                /// @src 0:24404:24419  "updateParams[5]"
                let _1388 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2149_mpos, convert_t_rational_5_by_1_to_t_uint256(expr_2150)))
                let expr_2151 := _1388
                /// @src 0:24037:24434  "abi.encodePacked(..."

                let expr_2152_mpos := allocate_unbounded()
                let _1389 := add(expr_2152_mpos, 0x20)

                let _1390 := abi_encode_tuple_packed_t_bytes32_t_bool_t_uint256_t_uint256_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256_t_uint256__to_t_bytes32_t_bool_t_uint256_t_uint256_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256_t_uint256__nonPadded_inplace_fromStack(_1389, expr_2123, expr_2124, expr_2127, expr_2130, expr_2131, expr_2135, expr_2139, expr_2142, expr_2145, expr_2148, expr_2151)
                mstore(expr_2152_mpos, sub(_1390, add(expr_2152_mpos, 0x20)))
                finalize_allocation(expr_2152_mpos, sub(_1390, expr_2152_mpos))
                /// @src 0:24013:24445  "keccak256(..."
                let expr_2153 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_2152_mpos), array_length_t_bytes_memory_ptr(expr_2152_mpos))
                /// @src 0:23996:24445  "bytes32 _state = keccak256(..."
                let var__state_2119 := expr_2153
                /// @src 0:24465:24472  "channel"
                let _1391_slot := var_channel_2045_slot
                let expr_2156_slot := _1391_slot
                /// @src 0:24465:24487  "channel.partyAddresses"
                let _1392 := add(expr_2156_slot, 0)
                let _1393_slot := _1392
                let expr_2157_slot := _1393_slot
                /// @src 0:24488:24489  "0"
                let expr_2158 := 0x00
                /// @src 0:24465:24490  "channel.partyAddresses[0]"

                let _1394, _1395 := storage_array_index_access_t_array$_t_address_$2_storage(expr_2157_slot, expr_2158)
                let _1396 := read_from_storage_split_dynamic_t_address(_1394, _1395)
                let expr_2159 := _1396
                /// @src 0:24494:24501  "ECTools"
                let expr_2160_address := linkersymbol("ECTools_645")
                /// @src 0:24494:24515  "ECTools.recoverSigner"
                let expr_2161_address := convert_t_type$_t_contract$_ECTools_$645_$_to_t_address(expr_2160_address)
                let expr_2161_functionSelector := 0xdca95419
                /// @src 0:24516:24522  "_state"
                let _1397 := var__state_2119
                let expr_2162 := _1397
                /// @src 0:24524:24529  "_sigA"
                let _1398_mpos := var__sigA_2038_mpos
                let expr_2163_mpos := _1398_mpos
                /// @src 0:24494:24530  "ECTools.recoverSigner(_state, _sigA)"

                // storage for arguments and returned data
                let _1399 := allocate_unbounded()
                mstore(_1399, shift_left_224(expr_2161_functionSelector))
                let _1400 := abi_encode_tuple_t_bytes32_t_string_memory_ptr__to_t_bytes32_t_string_memory_ptr__fromStack_library(add(_1399, 4) , expr_2162, expr_2163_mpos)

                let _1401 := delegatecall(gas(), expr_2161_address,  _1399, sub(_1400, _1399), _1399, 32)

                if iszero(_1401) { revert_forward_1() }

                let expr_2164
                if _1401 {

                    let _1402 := 32

                    if gt(_1402, returndatasize()) {
                        _1402 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_1399, _1402)

                    // decode return parameters from external try-call into retVars
                    expr_2164 :=  abi_decode_tuple_t_address_fromMemory(_1399, add(_1399, _1402))
                }
                /// @src 0:24465:24530  "channel.partyAddresses[0] == ECTools.recoverSigner(_state, _sigA)"
                let expr_2165 := eq(cleanup_t_address(expr_2159), cleanup_t_address(expr_2164))
                /// @src 0:24457:24531  "require(channel.partyAddresses[0] == ECTools.recoverSigner(_state, _sigA))"
                require_helper(expr_2165)
                /// @src 0:24550:24557  "channel"
                let _1403_slot := var_channel_2045_slot
                let expr_2169_slot := _1403_slot
                /// @src 0:24550:24572  "channel.partyAddresses"
                let _1404 := add(expr_2169_slot, 0)
                let _1405_slot := _1404
                let expr_2170_slot := _1405_slot
                /// @src 0:24573:24574  "1"
                let expr_2171 := 0x01
                /// @src 0:24550:24575  "channel.partyAddresses[1]"

                let _1406, _1407 := storage_array_index_access_t_array$_t_address_$2_storage(expr_2170_slot, expr_2171)
                let _1408 := read_from_storage_split_dynamic_t_address(_1406, _1407)
                let expr_2172 := _1408
                /// @src 0:24579:24586  "ECTools"
                let expr_2173_address := linkersymbol("ECTools_645")
                /// @src 0:24579:24600  "ECTools.recoverSigner"
                let expr_2174_address := convert_t_type$_t_contract$_ECTools_$645_$_to_t_address(expr_2173_address)
                let expr_2174_functionSelector := 0xdca95419
                /// @src 0:24601:24607  "_state"
                let _1409 := var__state_2119
                let expr_2175 := _1409
                /// @src 0:24609:24614  "_sigI"
                let _1410_mpos := var__sigI_2040_mpos
                let expr_2176_mpos := _1410_mpos
                /// @src 0:24579:24615  "ECTools.recoverSigner(_state, _sigI)"

                // storage for arguments and returned data
                let _1411 := allocate_unbounded()
                mstore(_1411, shift_left_224(expr_2174_functionSelector))
                let _1412 := abi_encode_tuple_t_bytes32_t_string_memory_ptr__to_t_bytes32_t_string_memory_ptr__fromStack_library(add(_1411, 4) , expr_2175, expr_2176_mpos)

                let _1413 := delegatecall(gas(), expr_2174_address,  _1411, sub(_1412, _1411), _1411, 32)

                if iszero(_1413) { revert_forward_1() }

                let expr_2177
                if _1413 {

                    let _1414 := 32

                    if gt(_1414, returndatasize()) {
                        _1414 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_1411, _1414)

                    // decode return parameters from external try-call into retVars
                    expr_2177 :=  abi_decode_tuple_t_address_fromMemory(_1411, add(_1411, _1414))
                }
                /// @src 0:24550:24615  "channel.partyAddresses[1] == ECTools.recoverSigner(_state, _sigI)"
                let expr_2178 := eq(cleanup_t_address(expr_2172), cleanup_t_address(expr_2177))
                /// @src 0:24542:24616  "require(channel.partyAddresses[1] == ECTools.recoverSigner(_state, _sigI))"
                require_helper(expr_2178)
                /// @src 0:24675:24687  "updateParams"
                let _1415_mpos := var_updateParams_2034_mpos
                let expr_2184_mpos := _1415_mpos
                /// @src 0:24688:24689  "0"
                let expr_2185 := 0x00
                /// @src 0:24675:24690  "updateParams[0]"
                let _1416 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2184_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_2185)))
                let expr_2186 := _1416
                /// @src 0:24656:24663  "channel"
                let _1417_slot := var_channel_2045_slot
                let expr_2181_slot := _1417_slot
                /// @src 0:24656:24672  "channel.sequence"
                let _1418 := add(expr_2181_slot, 12)
                /// @src 0:24656:24690  "channel.sequence = updateParams[0]"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_1418, expr_2186)
                let expr_2187 := expr_2186
                /// @src 0:24721:24733  "updateParams"
                let _1419_mpos := var_updateParams_2034_mpos
                let expr_2192_mpos := _1419_mpos
                /// @src 0:24734:24735  "1"
                let expr_2193 := 0x01
                /// @src 0:24721:24736  "updateParams[1]"
                let _1420 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2192_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_2193)))
                let expr_2194 := _1420
                /// @src 0:24701:24708  "channel"
                let _1421_slot := var_channel_2045_slot
                let expr_2189_slot := _1421_slot
                /// @src 0:24701:24718  "channel.numOpenVC"
                let _1422 := add(expr_2189_slot, 18)
                /// @src 0:24701:24736  "channel.numOpenVC = updateParams[1]"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_1422, expr_2194)
                let expr_2195 := expr_2194
                /// @src 0:24772:24784  "updateParams"
                let _1423_mpos := var_updateParams_2034_mpos
                let expr_2202_mpos := _1423_mpos
                /// @src 0:24785:24786  "2"
                let expr_2203 := 0x02
                /// @src 0:24772:24787  "updateParams[2]"
                let _1424 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2202_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_2203)))
                let expr_2204 := _1424
                /// @src 0:24747:24754  "channel"
                let _1425_slot := var_channel_2045_slot
                let expr_2197_slot := _1425_slot
                /// @src 0:24747:24766  "channel.ethBalances"
                let _1426 := add(expr_2197_slot, 2)
                let _1427_slot := _1426
                let expr_2200_slot := _1427_slot
                /// @src 0:24767:24768  "0"
                let expr_2199 := 0x00
                /// @src 0:24747:24769  "channel.ethBalances[0]"

                let _1428, _1429 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_2200_slot, expr_2199)
                /// @src 0:24747:24787  "channel.ethBalances[0] = updateParams[2]"
                update_storage_value_t_uint256_to_t_uint256(_1428, _1429, expr_2204)
                let expr_2205 := expr_2204
                /// @src 0:24823:24835  "updateParams"
                let _1430_mpos := var_updateParams_2034_mpos
                let expr_2212_mpos := _1430_mpos
                /// @src 0:24836:24837  "3"
                let expr_2213 := 0x03
                /// @src 0:24823:24838  "updateParams[3]"
                let _1431 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2212_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_2213)))
                let expr_2214 := _1431
                /// @src 0:24798:24805  "channel"
                let _1432_slot := var_channel_2045_slot
                let expr_2207_slot := _1432_slot
                /// @src 0:24798:24817  "channel.ethBalances"
                let _1433 := add(expr_2207_slot, 2)
                let _1434_slot := _1433
                let expr_2210_slot := _1434_slot
                /// @src 0:24818:24819  "1"
                let expr_2209 := 0x01
                /// @src 0:24798:24820  "channel.ethBalances[1]"

                let _1435, _1436 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_2210_slot, expr_2209)
                /// @src 0:24798:24838  "channel.ethBalances[1] = updateParams[3]"
                update_storage_value_t_uint256_to_t_uint256(_1435, _1436, expr_2214)
                let expr_2215 := expr_2214
                /// @src 0:24876:24888  "updateParams"
                let _1437_mpos := var_updateParams_2034_mpos
                let expr_2222_mpos := _1437_mpos
                /// @src 0:24889:24890  "4"
                let expr_2223 := 0x04
                /// @src 0:24876:24891  "updateParams[4]"
                let _1438 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2222_mpos, convert_t_rational_4_by_1_to_t_uint256(expr_2223)))
                let expr_2224 := _1438
                /// @src 0:24849:24856  "channel"
                let _1439_slot := var_channel_2045_slot
                let expr_2217_slot := _1439_slot
                /// @src 0:24849:24870  "channel.erc20Balances"
                let _1440 := add(expr_2217_slot, 6)
                let _1441_slot := _1440
                let expr_2220_slot := _1441_slot
                /// @src 0:24871:24872  "0"
                let expr_2219 := 0x00
                /// @src 0:24849:24873  "channel.erc20Balances[0]"

                let _1442, _1443 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_2220_slot, expr_2219)
                /// @src 0:24849:24891  "channel.erc20Balances[0] = updateParams[4]"
                update_storage_value_t_uint256_to_t_uint256(_1442, _1443, expr_2224)
                let expr_2225 := expr_2224
                /// @src 0:24929:24941  "updateParams"
                let _1444_mpos := var_updateParams_2034_mpos
                let expr_2232_mpos := _1444_mpos
                /// @src 0:24942:24943  "5"
                let expr_2233 := 0x05
                /// @src 0:24929:24944  "updateParams[5]"
                let _1445 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2232_mpos, convert_t_rational_5_by_1_to_t_uint256(expr_2233)))
                let expr_2234 := _1445
                /// @src 0:24902:24909  "channel"
                let _1446_slot := var_channel_2045_slot
                let expr_2227_slot := _1446_slot
                /// @src 0:24902:24923  "channel.erc20Balances"
                let _1447 := add(expr_2227_slot, 6)
                let _1448_slot := _1447
                let expr_2230_slot := _1448_slot
                /// @src 0:24924:24925  "1"
                let expr_2229 := 0x01
                /// @src 0:24902:24926  "channel.erc20Balances[1]"

                let _1449, _1450 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_2230_slot, expr_2229)
                /// @src 0:24902:24944  "channel.erc20Balances[1] = updateParams[5]"
                update_storage_value_t_uint256_to_t_uint256(_1449, _1450, expr_2234)
                let expr_2235 := expr_2234
                /// @src 0:24976:24983  "_VCroot"
                let _1451 := var__VCroot_2036
                let expr_2240 := _1451
                /// @src 0:24955:24962  "channel"
                let _1452_slot := var_channel_2045_slot
                let expr_2237_slot := _1452_slot
                /// @src 0:24955:24973  "channel.VCrootHash"
                let _1453 := add(expr_2237_slot, 14)
                /// @src 0:24955:24983  "channel.VCrootHash = _VCroot"
                update_storage_value_offset_0_t_bytes32_to_t_bytes32(_1453, expr_2240)
                let expr_2241 := expr_2240
                /// @src 0:25023:25027  "true"
                let expr_2246 := 0x01
                /// @src 0:24994:25001  "channel"
                let _1454_slot := var_channel_2045_slot
                let expr_2243_slot := _1454_slot
                /// @src 0:24994:25020  "channel.isUpdateLCSettling"
                let _1455 := add(expr_2243_slot, 17)
                /// @src 0:24994:25027  "channel.isUpdateLCSettling = true"
                update_storage_value_offset_1_t_bool_to_t_bool(_1455, expr_2246)
                let expr_2247 := expr_2246
                /// @src 0:25064:25079  "block.timestamp"
                let expr_2253 := timestamp()
                /// @src 0:25082:25089  "channel"
                let _1456_slot := var_channel_2045_slot
                let expr_2254_slot := _1456_slot
                /// @src 0:25082:25101  "channel.confirmTime"
                let _1457 := add(expr_2254_slot, 13)
                let _1458 := read_from_storage_split_offset_0_t_uint256(_1457)
                let expr_2255 := _1458
                /// @src 0:25064:25101  "block.timestamp + channel.confirmTime"
                let expr_2256 := checked_add_t_uint256(expr_2253, expr_2255)

                /// @src 0:25038:25045  "channel"
                let _1459_slot := var_channel_2045_slot
                let expr_2249_slot := _1459_slot
                /// @src 0:25038:25061  "channel.updateLCtimeout"
                let _1460 := add(expr_2249_slot, 16)
                /// @src 0:25038:25101  "channel.updateLCtimeout = block.timestamp + channel.confirmTime"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_1460, expr_2256)
                let expr_2257 := expr_2256
                /// @src 0:25184:25189  "_lcID"
                let _1461 := var__lcID_2030
                let expr_2260 := _1461
                /// @src 0:25204:25216  "updateParams"
                let _1462_mpos := var_updateParams_2034_mpos
                let expr_2261_mpos := _1462_mpos
                /// @src 0:25217:25218  "0"
                let expr_2262 := 0x00
                /// @src 0:25204:25219  "updateParams[0]"
                let _1463 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2261_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_2262)))
                let expr_2263 := _1463
                /// @src 0:25234:25246  "updateParams"
                let _1464_mpos := var_updateParams_2034_mpos
                let expr_2264_mpos := _1464_mpos
                /// @src 0:25247:25248  "1"
                let expr_2265 := 0x01
                /// @src 0:25234:25249  "updateParams[1]"
                let _1465 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2264_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_2265)))
                let expr_2266 := _1465
                /// @src 0:25264:25276  "updateParams"
                let _1466_mpos := var_updateParams_2034_mpos
                let expr_2267_mpos := _1466_mpos
                /// @src 0:25277:25278  "2"
                let expr_2268 := 0x02
                /// @src 0:25264:25279  "updateParams[2]"
                let _1467 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2267_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_2268)))
                let expr_2269 := _1467
                /// @src 0:25294:25306  "updateParams"
                let _1468_mpos := var_updateParams_2034_mpos
                let expr_2270_mpos := _1468_mpos
                /// @src 0:25307:25308  "3"
                let expr_2271 := 0x03
                /// @src 0:25294:25309  "updateParams[3]"
                let _1469 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2270_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_2271)))
                let expr_2272 := _1469
                /// @src 0:25324:25336  "updateParams"
                let _1470_mpos := var_updateParams_2034_mpos
                let expr_2273_mpos := _1470_mpos
                /// @src 0:25337:25338  "4"
                let expr_2274 := 0x04
                /// @src 0:25324:25339  "updateParams[4]"
                let _1471 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2273_mpos, convert_t_rational_4_by_1_to_t_uint256(expr_2274)))
                let expr_2275 := _1471
                /// @src 0:25354:25366  "updateParams"
                let _1472_mpos := var_updateParams_2034_mpos
                let expr_2276_mpos := _1472_mpos
                /// @src 0:25367:25368  "5"
                let expr_2277 := 0x05
                /// @src 0:25354:25369  "updateParams[5]"
                let _1473 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$6_memory_ptr(expr_2276_mpos, convert_t_rational_5_by_1_to_t_uint256(expr_2277)))
                let expr_2278 := _1473
                /// @src 0:25384:25391  "_VCroot"
                let _1474 := var__VCroot_2036
                let expr_2279 := _1474
                /// @src 0:25406:25413  "channel"
                let _1475_slot := var_channel_2045_slot
                let expr_2280_slot := _1475_slot
                /// @src 0:25406:25429  "channel.updateLCtimeout"
                let _1476 := add(expr_2280_slot, 16)
                let _1477 := read_from_storage_split_offset_0_t_uint256(_1476)
                let expr_2281 := _1477
                /// @src 0:25152:25440  "DidLCUpdateState (..."
                let _1478 := 0x73cea087c6e027c6aa279ce9ec540d1c2e359a3dda4aaf0a8d28577bb26af2c3
                let _1479 := convert_t_bytes32_to_t_bytes32(expr_2260)
                {
                    let _1480 := allocate_unbounded()
                    let _1481 := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_bytes32_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_bytes32_t_uint256__fromStack(_1480 , expr_2263, expr_2266, expr_2269, expr_2272, expr_2275, expr_2278, expr_2279, expr_2281)
                    log2(_1480, sub(_1481, _1480) , _1478, _1479)
                }
            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            function write_to_memory_t_address(memPtr, value) {
                mstore(memPtr, cleanup_t_address(value))
            }

            function allocate_memory_struct_t_struct$_VirtualChannel_$1111_memory_ptr() -> memPtr {
                memPtr := allocate_memory(384)
            }

            function read_from_storage_reference_type_t_struct$_VirtualChannel_$1111_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_VirtualChannel_$1111_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_bool(add(slot, 0))
                    write_to_memory_t_bool(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_1_t_bool(add(slot, 0))
                    write_to_memory_t_bool(add(value, 32), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))
                    write_to_memory_t_uint256(add(value, 64), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_address(add(slot, 2))
                    write_to_memory_t_address(add(value, 96), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 3))
                    write_to_memory_t_uint256(add(value, 128), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_address(add(slot, 4))
                    write_to_memory_t_address(add(value, 160), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_address(add(slot, 5))
                    write_to_memory_t_address(add(value, 192), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_address(add(slot, 6))
                    write_to_memory_t_address(add(value, 224), memberValue_0)
                }

                {
                    let memberValue_0 := copy_array_from_storage_to_memory_t_array$_t_uint256_$2_storage(add(slot, 7))
                    write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(value, 256), memberValue_0)
                }

                {
                    let memberValue_0 := copy_array_from_storage_to_memory_t_array$_t_uint256_$2_storage(add(slot, 9))
                    write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(value, 288), memberValue_0)
                }

                {
                    let memberValue_0 := copy_array_from_storage_to_memory_t_array$_t_uint256_$2_storage(add(slot, 11))
                    write_to_memory_t_array$_t_uint256_$2_memory_ptr(add(value, 320), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_contract$_HumanStandardToken_$922(add(slot, 13))
                    write_to_memory_t_contract$_HumanStandardToken_$922(add(value, 352), memberValue_0)
                }

            }

            function convert_t_struct$_VirtualChannel_$1111_storage_to_t_struct$_VirtualChannel_$1111_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_VirtualChannel_$1111_memory_ptr(value)

            }

            function read_from_memoryt_address(ptr) -> returnValue {

                let value := cleanup_t_address(mload(ptr))

                returnValue :=

                value

            }

            /// @ast-id 3494
            /// @src 0:36700:37523  "function getVirtualChannel(bytes32 id) public view returns (bool, ..."
            function fun_getVirtualChannel_3494(var_id_3431) -> var__3434, var__3436, var__3438, var__3440, var__3442, var__3444, var__3446, var__3448, var__3452_mpos, var__3456_mpos, var__3460_mpos {
                /// @src 0:36760:36764  "bool"
                let zero_t_bool_1482 := zero_value_for_split_t_bool()
                var__3434 := zero_t_bool_1482
                /// @src 0:36776:36780  "bool"
                let zero_t_bool_1483 := zero_value_for_split_t_bool()
                var__3436 := zero_t_bool_1483
                /// @src 0:36792:36799  "uint256"
                let zero_t_uint256_1484 := zero_value_for_split_t_uint256()
                var__3438 := zero_t_uint256_1484
                /// @src 0:36811:36818  "address"
                let zero_t_address_1485 := zero_value_for_split_t_address()
                var__3440 := zero_t_address_1485
                /// @src 0:36830:36837  "uint256"
                let zero_t_uint256_1486 := zero_value_for_split_t_uint256()
                var__3442 := zero_t_uint256_1486
                /// @src 0:36849:36856  "address"
                let zero_t_address_1487 := zero_value_for_split_t_address()
                var__3444 := zero_t_address_1487
                /// @src 0:36868:36875  "address"
                let zero_t_address_1488 := zero_value_for_split_t_address()
                var__3446 := zero_t_address_1488
                /// @src 0:36887:36894  "address"
                let zero_t_address_1489 := zero_value_for_split_t_address()
                var__3448 := zero_t_address_1489
                /// @src 0:36906:36923  "uint256[2] memory"
                let zero_t_array$_t_uint256_$2_memory_ptr_1490_mpos := zero_value_for_split_t_array$_t_uint256_$2_memory_ptr()
                var__3452_mpos := zero_t_array$_t_uint256_$2_memory_ptr_1490_mpos
                /// @src 0:36935:36952  "uint256[2] memory"
                let zero_t_array$_t_uint256_$2_memory_ptr_1491_mpos := zero_value_for_split_t_array$_t_uint256_$2_memory_ptr()
                var__3456_mpos := zero_t_array$_t_uint256_$2_memory_ptr_1491_mpos
                /// @src 0:36964:36981  "uint256[2] memory"
                let zero_t_array$_t_uint256_$2_memory_ptr_1492_mpos := zero_value_for_split_t_array$_t_uint256_$2_memory_ptr()
                var__3460_mpos := zero_t_array$_t_uint256_$2_memory_ptr_1492_mpos

                /// @src 0:37033:37048  "virtualChannels"
                let _1493_slot := 0x01
                let expr_3465_slot := _1493_slot
                /// @src 0:37049:37051  "id"
                let _1494 := var_id_3431
                let expr_3466 := _1494
                /// @src 0:37033:37052  "virtualChannels[id]"
                let _1495 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_3465_slot,expr_3466)
                let _1496_slot := _1495
                let expr_3467_slot := _1496_slot
                /// @src 0:36994:37052  "VirtualChannel memory virtualChannel = virtualChannels[id]"
                let var_virtualChannel_3464_mpos := convert_t_struct$_VirtualChannel_$1111_storage_to_t_struct$_VirtualChannel_$1111_memory_ptr(expr_3467_slot)
                /// @src 0:37084:37098  "virtualChannel"
                let _1497_mpos := var_virtualChannel_3464_mpos
                let expr_3469_mpos := _1497_mpos
                /// @src 0:37084:37106  "virtualChannel.isClose"
                let _1498 := add(expr_3469_mpos, 0)
                let _1499 := read_from_memoryt_bool(_1498)
                let expr_3470 := _1499
                /// @src 0:37069:37515  "(..."
                let expr_3491_component_1 := expr_3470
                /// @src 0:37121:37135  "virtualChannel"
                let _1500_mpos := var_virtualChannel_3464_mpos
                let expr_3471_mpos := _1500_mpos
                /// @src 0:37121:37155  "virtualChannel.isInSettlementState"
                let _1501 := add(expr_3471_mpos, 32)
                let _1502 := read_from_memoryt_bool(_1501)
                let expr_3472 := _1502
                /// @src 0:37069:37515  "(..."
                let expr_3491_component_2 := expr_3472
                /// @src 0:37170:37184  "virtualChannel"
                let _1503_mpos := var_virtualChannel_3464_mpos
                let expr_3473_mpos := _1503_mpos
                /// @src 0:37170:37193  "virtualChannel.sequence"
                let _1504 := add(expr_3473_mpos, 64)
                let _1505 := read_from_memoryt_uint256(_1504)
                let expr_3474 := _1505
                /// @src 0:37069:37515  "(..."
                let expr_3491_component_3 := expr_3474
                /// @src 0:37208:37222  "virtualChannel"
                let _1506_mpos := var_virtualChannel_3464_mpos
                let expr_3475_mpos := _1506_mpos
                /// @src 0:37208:37233  "virtualChannel.challenger"
                let _1507 := add(expr_3475_mpos, 96)
                let _1508 := read_from_memoryt_address(_1507)
                let expr_3476 := _1508
                /// @src 0:37069:37515  "(..."
                let expr_3491_component_4 := expr_3476
                /// @src 0:37248:37262  "virtualChannel"
                let _1509_mpos := var_virtualChannel_3464_mpos
                let expr_3477_mpos := _1509_mpos
                /// @src 0:37248:37278  "virtualChannel.updateVCtimeout"
                let _1510 := add(expr_3477_mpos, 128)
                let _1511 := read_from_memoryt_uint256(_1510)
                let expr_3478 := _1511
                /// @src 0:37069:37515  "(..."
                let expr_3491_component_5 := expr_3478
                /// @src 0:37293:37307  "virtualChannel"
                let _1512_mpos := var_virtualChannel_3464_mpos
                let expr_3479_mpos := _1512_mpos
                /// @src 0:37293:37314  "virtualChannel.partyA"
                let _1513 := add(expr_3479_mpos, 160)
                let _1514 := read_from_memoryt_address(_1513)
                let expr_3480 := _1514
                /// @src 0:37069:37515  "(..."
                let expr_3491_component_6 := expr_3480
                /// @src 0:37329:37343  "virtualChannel"
                let _1515_mpos := var_virtualChannel_3464_mpos
                let expr_3481_mpos := _1515_mpos
                /// @src 0:37329:37350  "virtualChannel.partyB"
                let _1516 := add(expr_3481_mpos, 192)
                let _1517 := read_from_memoryt_address(_1516)
                let expr_3482 := _1517
                /// @src 0:37069:37515  "(..."
                let expr_3491_component_7 := expr_3482
                /// @src 0:37365:37379  "virtualChannel"
                let _1518_mpos := var_virtualChannel_3464_mpos
                let expr_3483_mpos := _1518_mpos
                /// @src 0:37365:37386  "virtualChannel.partyI"
                let _1519 := add(expr_3483_mpos, 224)
                let _1520 := read_from_memoryt_address(_1519)
                let expr_3484 := _1520
                /// @src 0:37069:37515  "(..."
                let expr_3491_component_8 := expr_3484
                /// @src 0:37401:37415  "virtualChannel"
                let _1521_mpos := var_virtualChannel_3464_mpos
                let expr_3485_mpos := _1521_mpos
                /// @src 0:37401:37427  "virtualChannel.ethBalances"
                let _1522 := add(expr_3485_mpos, 256)
                let _1523_mpos := mload(_1522)
                let expr_3486_mpos := _1523_mpos
                /// @src 0:37069:37515  "(..."
                let expr_3491_component_9_mpos := expr_3486_mpos
                /// @src 0:37442:37456  "virtualChannel"
                let _1524_mpos := var_virtualChannel_3464_mpos
                let expr_3487_mpos := _1524_mpos
                /// @src 0:37442:37470  "virtualChannel.erc20Balances"
                let _1525 := add(expr_3487_mpos, 288)
                let _1526_mpos := mload(_1525)
                let expr_3488_mpos := _1526_mpos
                /// @src 0:37069:37515  "(..."
                let expr_3491_component_10_mpos := expr_3488_mpos
                /// @src 0:37485:37499  "virtualChannel"
                let _1527_mpos := var_virtualChannel_3464_mpos
                let expr_3489_mpos := _1527_mpos
                /// @src 0:37485:37504  "virtualChannel.bond"
                let _1528 := add(expr_3489_mpos, 320)
                let _1529_mpos := mload(_1528)
                let expr_3490_mpos := _1529_mpos
                /// @src 0:37069:37515  "(..."
                let expr_3491_component_11_mpos := expr_3490_mpos
                /// @src 0:37063:37515  "return(..."
                var__3434 := expr_3491_component_1
                var__3436 := expr_3491_component_2
                var__3438 := expr_3491_component_3
                var__3440 := expr_3491_component_4
                var__3442 := expr_3491_component_5
                var__3444 := expr_3491_component_6
                var__3446 := expr_3491_component_7
                var__3448 := expr_3491_component_8
                var__3452_mpos := expr_3491_component_9_mpos
                var__3456_mpos := expr_3491_component_10_mpos
                var__3460_mpos := expr_3491_component_11_mpos
                leave

            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

            function store_literal_in_memory_1dbd1cadf5b44674bde320c6b6d0a7e90a5bea972daf5ddfc188ad7b32dc8964(memPtr) {

                mstore(add(memPtr, 0), "VC is not in settlement state.")

            }

            function abi_encode_t_stringliteral_1dbd1cadf5b44674bde320c6b6d0a7e90a5bea972daf5ddfc188ad7b32dc8964_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 30)
                store_literal_in_memory_1dbd1cadf5b44674bde320c6b6d0a7e90a5bea972daf5ddfc188ad7b32dc8964(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_1dbd1cadf5b44674bde320c6b6d0a7e90a5bea972daf5ddfc188ad7b32dc8964__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_1dbd1cadf5b44674bde320c6b6d0a7e90a5bea972daf5ddfc188ad7b32dc8964_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_1dbd1cadf5b44674bde320c6b6d0a7e90a5bea972daf5ddfc188ad7b32dc8964(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_1dbd1cadf5b44674bde320c6b6d0a7e90a5bea972daf5ddfc188ad7b32dc8964__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_fb2ea576758b978bbb9b59de8216ae2a4b1b5accb8a4d38827c7650af0a3ca28(memPtr) {

                mstore(add(memPtr, 0), "Update vc timeout has not elapse")

                mstore(add(memPtr, 32), "d.")

            }

            function abi_encode_t_stringliteral_fb2ea576758b978bbb9b59de8216ae2a4b1b5accb8a4d38827c7650af0a3ca28_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 34)
                store_literal_in_memory_fb2ea576758b978bbb9b59de8216ae2a4b1b5accb8a4d38827c7650af0a3ca28(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_fb2ea576758b978bbb9b59de8216ae2a4b1b5accb8a4d38827c7650af0a3ca28__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_fb2ea576758b978bbb9b59de8216ae2a4b1b5accb8a4d38827c7650af0a3ca28_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_fb2ea576758b978bbb9b59de8216ae2a4b1b5accb8a4d38827c7650af0a3ca28(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_fb2ea576758b978bbb9b59de8216ae2a4b1b5accb8a4d38827c7650af0a3ca28__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_92b6305a825c5cfd0f7dc3d21a4cf46f7eeda1d0363ce0a53e580846f28304ac(memPtr) {

                mstore(add(memPtr, 0), "VC is already closed")

            }

            function abi_encode_t_stringliteral_92b6305a825c5cfd0f7dc3d21a4cf46f7eeda1d0363ce0a53e580846f28304ac_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 20)
                store_literal_in_memory_92b6305a825c5cfd0f7dc3d21a4cf46f7eeda1d0363ce0a53e580846f28304ac(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_92b6305a825c5cfd0f7dc3d21a4cf46f7eeda1d0363ce0a53e580846f28304ac__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_92b6305a825c5cfd0f7dc3d21a4cf46f7eeda1d0363ce0a53e580846f28304ac_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_92b6305a825c5cfd0f7dc3d21a4cf46f7eeda1d0363ce0a53e580846f28304ac(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_92b6305a825c5cfd0f7dc3d21a4cf46f7eeda1d0363ce0a53e580846f28304ac__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 2981
            /// @src 0:30664:32467  "function closeVirtualChannel(bytes32 _lcID, bytes32 _vcID) public {..."
            function fun_closeVirtualChannel_2981(var__lcID_2771, var__vcID_2773) {

                /// @src 0:30804:30812  "Channels"
                let _1530_slot := 0x02
                let expr_2777_slot := _1530_slot
                /// @src 0:30813:30818  "_lcID"
                let _1531 := var__lcID_2771
                let expr_2778 := _1531
                /// @src 0:30804:30819  "Channels[_lcID]"
                let _1532 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2777_slot,expr_2778)
                let _1533_slot := _1532
                let expr_2779_slot := _1533_slot
                /// @src 0:30804:30826  "Channels[_lcID].isOpen"
                let _1534 := add(expr_2779_slot, 17)
                let _1535 := read_from_storage_split_offset_0_t_bool(_1534)
                let expr_2780 := _1535
                /// @src 0:30796:30844  "require(Channels[_lcID].isOpen, \"LC is closed.\")"
                require_helper_t_stringliteral_ecaf47db7ae62b9758d0f34a122dcca365003a89557cb390677a57d4b3d0998f(expr_2780)
                /// @src 0:30863:30878  "virtualChannels"
                let _1536_slot := 0x01
                let expr_2785_slot := _1536_slot
                /// @src 0:30879:30884  "_vcID"
                let _1537 := var__vcID_2773
                let expr_2786 := _1537
                /// @src 0:30863:30885  "virtualChannels[_vcID]"
                let _1538 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2785_slot,expr_2786)
                let _1539_slot := _1538
                let expr_2787_slot := _1539_slot
                /// @src 0:30863:30905  "virtualChannels[_vcID].isInSettlementState"
                let _1540 := add(expr_2787_slot, 0)
                let _1541 := read_from_storage_split_offset_1_t_bool(_1540)
                let expr_2788 := _1541
                /// @src 0:30855:30940  "require(virtualChannels[_vcID].isInSettlementState, \"VC is not in settlement state.\")"
                require_helper_t_stringliteral_1dbd1cadf5b44674bde320c6b6d0a7e90a5bea972daf5ddfc188ad7b32dc8964(expr_2788)
                /// @src 0:30959:30974  "virtualChannels"
                let _1542_slot := 0x01
                let expr_2793_slot := _1542_slot
                /// @src 0:30975:30980  "_vcID"
                let _1543 := var__vcID_2773
                let expr_2794 := _1543
                /// @src 0:30959:30981  "virtualChannels[_vcID]"
                let _1544 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2793_slot,expr_2794)
                let _1545_slot := _1544
                let expr_2795_slot := _1545_slot
                /// @src 0:30959:30997  "virtualChannels[_vcID].updateVCtimeout"
                let _1546 := add(expr_2795_slot, 3)
                let _1547 := read_from_storage_split_offset_0_t_uint256(_1546)
                let expr_2796 := _1547
                /// @src 0:31000:31015  "block.timestamp"
                let expr_2798 := timestamp()
                /// @src 0:30959:31015  "virtualChannels[_vcID].updateVCtimeout < block.timestamp"
                let expr_2799 := lt(cleanup_t_uint256(expr_2796), cleanup_t_uint256(expr_2798))
                /// @src 0:30951:31054  "require(virtualChannels[_vcID].updateVCtimeout < block.timestamp, \"Update vc timeout has not elapsed.\")"
                require_helper_t_stringliteral_fb2ea576758b978bbb9b59de8216ae2a4b1b5accb8a4d38827c7650af0a3ca28(expr_2799)
                /// @src 0:31074:31089  "virtualChannels"
                let _1548_slot := 0x01
                let expr_2804_slot := _1548_slot
                /// @src 0:31090:31095  "_vcID"
                let _1549 := var__vcID_2773
                let expr_2805 := _1549
                /// @src 0:31074:31096  "virtualChannels[_vcID]"
                let _1550 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2804_slot,expr_2805)
                let _1551_slot := _1550
                let expr_2806_slot := _1551_slot
                /// @src 0:31074:31104  "virtualChannels[_vcID].isClose"
                let _1552 := add(expr_2806_slot, 0)
                let _1553 := read_from_storage_split_offset_0_t_bool(_1552)
                let expr_2807 := _1553
                /// @src 0:31073:31104  "!virtualChannels[_vcID].isClose"
                let expr_2808 := cleanup_t_bool(iszero(expr_2807))
                /// @src 0:31065:31129  "require(!virtualChannels[_vcID].isClose, \"VC is already closed\")"
                require_helper_t_stringliteral_92b6305a825c5cfd0f7dc3d21a4cf46f7eeda1d0363ce0a53e580846f28304ac(expr_2808)
                /// @src 0:31208:31216  "Channels"
                let _1554_slot := 0x02
                let expr_2812_slot := _1554_slot
                /// @src 0:31217:31222  "_lcID"
                let _1555 := var__lcID_2771
                let expr_2813 := _1555
                /// @src 0:31208:31223  "Channels[_lcID]"
                let _1556 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2812_slot,expr_2813)
                let _1557_slot := _1556
                let expr_2814_slot := _1557_slot
                /// @src 0:31208:31233  "Channels[_lcID].numOpenVC"
                let _1558 := add(expr_2814_slot, 18)
                /// @src 0:31208:31235  "Channels[_lcID].numOpenVC--"
                let _1560 := read_from_storage_split_offset_0_t_uint256(_1558)
                let _1559 := decrement_t_uint256(_1560)
                update_storage_value_offset_0_t_uint256_to_t_uint256(_1558, _1559)
                let expr_2816 := _1560
                /// @src 0:31306:31310  "true"
                let expr_2822 := 0x01
                /// @src 0:31273:31288  "virtualChannels"
                let _1561_slot := 0x01
                let expr_2818_slot := _1561_slot
                /// @src 0:31289:31294  "_vcID"
                let _1562 := var__vcID_2773
                let expr_2819 := _1562
                /// @src 0:31273:31295  "virtualChannels[_vcID]"
                let _1563 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2818_slot,expr_2819)
                let _1564_slot := _1563
                let expr_2820_slot := _1564_slot
                /// @src 0:31273:31303  "virtualChannels[_vcID].isClose"
                let _1565 := add(expr_2820_slot, 0)
                /// @src 0:31273:31310  "virtualChannels[_vcID].isClose = true"
                update_storage_value_offset_0_t_bool_to_t_bool(_1565, expr_2822)
                let expr_2823 := expr_2822
                /// @src 0:31461:31476  "virtualChannels"
                let _1566_slot := 0x01
                let expr_2825_slot := _1566_slot
                /// @src 0:31477:31482  "_vcID"
                let _1567 := var__vcID_2773
                let expr_2826 := _1567
                /// @src 0:31461:31483  "virtualChannels[_vcID]"
                let _1568 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2825_slot,expr_2826)
                let _1569_slot := _1568
                let expr_2827_slot := _1569_slot
                /// @src 0:31461:31490  "virtualChannels[_vcID].partyA"
                let _1570 := add(expr_2827_slot, 4)
                let _1571 := read_from_storage_split_offset_0_t_address(_1570)
                let expr_2828 := _1571
                /// @src 0:31494:31502  "Channels"
                let _1572_slot := 0x02
                let expr_2829_slot := _1572_slot
                /// @src 0:31503:31508  "_lcID"
                let _1573 := var__lcID_2771
                let expr_2830 := _1573
                /// @src 0:31494:31509  "Channels[_lcID]"
                let _1574 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2829_slot,expr_2830)
                let _1575_slot := _1574
                let expr_2831_slot := _1575_slot
                /// @src 0:31494:31524  "Channels[_lcID].partyAddresses"
                let _1576 := add(expr_2831_slot, 0)
                let _1577_slot := _1576
                let expr_2832_slot := _1577_slot
                /// @src 0:31525:31526  "0"
                let expr_2833 := 0x00
                /// @src 0:31494:31527  "Channels[_lcID].partyAddresses[0]"

                let _1578, _1579 := storage_array_index_access_t_array$_t_address_$2_storage(expr_2832_slot, expr_2833)
                let _1580 := read_from_storage_split_dynamic_t_address(_1578, _1579)
                let expr_2834 := _1580
                /// @src 0:31461:31527  "virtualChannels[_vcID].partyA == Channels[_lcID].partyAddresses[0]"
                let expr_2835 := eq(cleanup_t_address(expr_2828), cleanup_t_address(expr_2834))
                /// @src 0:31458:32337  "if(virtualChannels[_vcID].partyA == Channels[_lcID].partyAddresses[0]) {..."
                switch expr_2835
                case 0 {
                    /// @src 0:31904:31919  "virtualChannels"
                    let _1581_slot := 0x01
                    let expr_2893_slot := _1581_slot
                    /// @src 0:31920:31925  "_vcID"
                    let _1582 := var__vcID_2773
                    let expr_2894 := _1582
                    /// @src 0:31904:31926  "virtualChannels[_vcID]"
                    let _1583 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2893_slot,expr_2894)
                    let _1584_slot := _1583
                    let expr_2895_slot := _1584_slot
                    /// @src 0:31904:31933  "virtualChannels[_vcID].partyB"
                    let _1585 := add(expr_2895_slot, 5)
                    let _1586 := read_from_storage_split_offset_0_t_address(_1585)
                    let expr_2896 := _1586
                    /// @src 0:31937:31945  "Channels"
                    let _1587_slot := 0x02
                    let expr_2897_slot := _1587_slot
                    /// @src 0:31946:31951  "_lcID"
                    let _1588 := var__lcID_2771
                    let expr_2898 := _1588
                    /// @src 0:31937:31952  "Channels[_lcID]"
                    let _1589 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2897_slot,expr_2898)
                    let _1590_slot := _1589
                    let expr_2899_slot := _1590_slot
                    /// @src 0:31937:31967  "Channels[_lcID].partyAddresses"
                    let _1591 := add(expr_2899_slot, 0)
                    let _1592_slot := _1591
                    let expr_2900_slot := _1592_slot
                    /// @src 0:31968:31969  "0"
                    let expr_2901 := 0x00
                    /// @src 0:31937:31970  "Channels[_lcID].partyAddresses[0]"

                    let _1593, _1594 := storage_array_index_access_t_array$_t_address_$2_storage(expr_2900_slot, expr_2901)
                    let _1595 := read_from_storage_split_dynamic_t_address(_1593, _1594)
                    let expr_2902 := _1595
                    /// @src 0:31904:31970  "virtualChannels[_vcID].partyB == Channels[_lcID].partyAddresses[0]"
                    let expr_2903 := eq(cleanup_t_address(expr_2896), cleanup_t_address(expr_2902))
                    /// @src 0:31900:32337  "if (virtualChannels[_vcID].partyB == Channels[_lcID].partyAddresses[0]) {..."
                    if expr_2903 {
                        /// @src 0:32021:32036  "virtualChannels"
                        let _1596_slot := 0x01
                        let expr_2910_slot := _1596_slot
                        /// @src 0:32037:32042  "_vcID"
                        let _1597 := var__vcID_2773
                        let expr_2911 := _1597
                        /// @src 0:32021:32043  "virtualChannels[_vcID]"
                        let _1598 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2910_slot,expr_2911)
                        let _1599_slot := _1598
                        let expr_2912_slot := _1599_slot
                        /// @src 0:32021:32055  "virtualChannels[_vcID].ethBalances"
                        let _1600 := add(expr_2912_slot, 7)
                        let _1601_slot := _1600
                        let expr_2913_slot := _1601_slot
                        /// @src 0:32056:32057  "1"
                        let expr_2914 := 0x01
                        /// @src 0:32021:32058  "virtualChannels[_vcID].ethBalances[1]"

                        let _1602, _1603 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2913_slot, expr_2914)
                        let _1604 := read_from_storage_split_dynamic_t_uint256(_1602, _1603)
                        let expr_2915 := _1604
                        /// @src 0:31987:31995  "Channels"
                        let _1605_slot := 0x02
                        let expr_2904_slot := _1605_slot
                        /// @src 0:31996:32001  "_lcID"
                        let _1606 := var__lcID_2771
                        let expr_2905 := _1606
                        /// @src 0:31987:32002  "Channels[_lcID]"
                        let _1607 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2904_slot,expr_2905)
                        let _1608_slot := _1607
                        let expr_2906_slot := _1608_slot
                        /// @src 0:31987:32014  "Channels[_lcID].ethBalances"
                        let _1609 := add(expr_2906_slot, 2)
                        let _1610_slot := _1609
                        let expr_2907_slot := _1610_slot
                        /// @src 0:32015:32016  "0"
                        let expr_2908 := 0x00
                        /// @src 0:31987:32017  "Channels[_lcID].ethBalances[0]"

                        let _1611, _1612 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_2907_slot, expr_2908)
                        /// @src 0:31987:32058  "Channels[_lcID].ethBalances[0] += virtualChannels[_vcID].ethBalances[1]"
                        let _1613 := read_from_storage_split_dynamic_t_uint256(_1611, _1612)
                        let expr_2916 := checked_add_t_uint256(_1613, expr_2915)

                        update_storage_value_t_uint256_to_t_uint256(_1611, _1612, expr_2916)
                        /// @src 0:32107:32122  "virtualChannels"
                        let _1614_slot := 0x01
                        let expr_2924_slot := _1614_slot
                        /// @src 0:32123:32128  "_vcID"
                        let _1615 := var__vcID_2773
                        let expr_2925 := _1615
                        /// @src 0:32107:32129  "virtualChannels[_vcID]"
                        let _1616 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2924_slot,expr_2925)
                        let _1617_slot := _1616
                        let expr_2926_slot := _1617_slot
                        /// @src 0:32107:32141  "virtualChannels[_vcID].ethBalances"
                        let _1618 := add(expr_2926_slot, 7)
                        let _1619_slot := _1618
                        let expr_2927_slot := _1619_slot
                        /// @src 0:32142:32143  "0"
                        let expr_2928 := 0x00
                        /// @src 0:32107:32144  "virtualChannels[_vcID].ethBalances[0]"

                        let _1620, _1621 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2927_slot, expr_2928)
                        let _1622 := read_from_storage_split_dynamic_t_uint256(_1620, _1621)
                        let expr_2929 := _1622
                        /// @src 0:32073:32081  "Channels"
                        let _1623_slot := 0x02
                        let expr_2918_slot := _1623_slot
                        /// @src 0:32082:32087  "_lcID"
                        let _1624 := var__lcID_2771
                        let expr_2919 := _1624
                        /// @src 0:32073:32088  "Channels[_lcID]"
                        let _1625 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2918_slot,expr_2919)
                        let _1626_slot := _1625
                        let expr_2920_slot := _1626_slot
                        /// @src 0:32073:32100  "Channels[_lcID].ethBalances"
                        let _1627 := add(expr_2920_slot, 2)
                        let _1628_slot := _1627
                        let expr_2921_slot := _1628_slot
                        /// @src 0:32101:32102  "1"
                        let expr_2922 := 0x01
                        /// @src 0:32073:32103  "Channels[_lcID].ethBalances[1]"

                        let _1629, _1630 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_2921_slot, expr_2922)
                        /// @src 0:32073:32144  "Channels[_lcID].ethBalances[1] += virtualChannels[_vcID].ethBalances[0]"
                        let _1631 := read_from_storage_split_dynamic_t_uint256(_1629, _1630)
                        let expr_2930 := checked_add_t_uint256(_1631, expr_2929)

                        update_storage_value_t_uint256_to_t_uint256(_1629, _1630, expr_2930)
                        /// @src 0:32196:32211  "virtualChannels"
                        let _1632_slot := 0x01
                        let expr_2938_slot := _1632_slot
                        /// @src 0:32212:32217  "_vcID"
                        let _1633 := var__vcID_2773
                        let expr_2939 := _1633
                        /// @src 0:32196:32218  "virtualChannels[_vcID]"
                        let _1634 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2938_slot,expr_2939)
                        let _1635_slot := _1634
                        let expr_2940_slot := _1635_slot
                        /// @src 0:32196:32232  "virtualChannels[_vcID].erc20Balances"
                        let _1636 := add(expr_2940_slot, 9)
                        let _1637_slot := _1636
                        let expr_2941_slot := _1637_slot
                        /// @src 0:32233:32234  "1"
                        let expr_2942 := 0x01
                        /// @src 0:32196:32235  "virtualChannels[_vcID].erc20Balances[1]"

                        let _1638, _1639 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2941_slot, expr_2942)
                        let _1640 := read_from_storage_split_dynamic_t_uint256(_1638, _1639)
                        let expr_2943 := _1640
                        /// @src 0:32160:32168  "Channels"
                        let _1641_slot := 0x02
                        let expr_2932_slot := _1641_slot
                        /// @src 0:32169:32174  "_lcID"
                        let _1642 := var__lcID_2771
                        let expr_2933 := _1642
                        /// @src 0:32160:32175  "Channels[_lcID]"
                        let _1643 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2932_slot,expr_2933)
                        let _1644_slot := _1643
                        let expr_2934_slot := _1644_slot
                        /// @src 0:32160:32189  "Channels[_lcID].erc20Balances"
                        let _1645 := add(expr_2934_slot, 6)
                        let _1646_slot := _1645
                        let expr_2935_slot := _1646_slot
                        /// @src 0:32190:32191  "0"
                        let expr_2936 := 0x00
                        /// @src 0:32160:32192  "Channels[_lcID].erc20Balances[0]"

                        let _1647, _1648 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_2935_slot, expr_2936)
                        /// @src 0:32160:32235  "Channels[_lcID].erc20Balances[0] += virtualChannels[_vcID].erc20Balances[1]"
                        let _1649 := read_from_storage_split_dynamic_t_uint256(_1647, _1648)
                        let expr_2944 := checked_add_t_uint256(_1649, expr_2943)

                        update_storage_value_t_uint256_to_t_uint256(_1647, _1648, expr_2944)
                        /// @src 0:32286:32301  "virtualChannels"
                        let _1650_slot := 0x01
                        let expr_2952_slot := _1650_slot
                        /// @src 0:32302:32307  "_vcID"
                        let _1651 := var__vcID_2773
                        let expr_2953 := _1651
                        /// @src 0:32286:32308  "virtualChannels[_vcID]"
                        let _1652 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2952_slot,expr_2953)
                        let _1653_slot := _1652
                        let expr_2954_slot := _1653_slot
                        /// @src 0:32286:32322  "virtualChannels[_vcID].erc20Balances"
                        let _1654 := add(expr_2954_slot, 9)
                        let _1655_slot := _1654
                        let expr_2955_slot := _1655_slot
                        /// @src 0:32323:32324  "0"
                        let expr_2956 := 0x00
                        /// @src 0:32286:32325  "virtualChannels[_vcID].erc20Balances[0]"

                        let _1656, _1657 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2955_slot, expr_2956)
                        let _1658 := read_from_storage_split_dynamic_t_uint256(_1656, _1657)
                        let expr_2957 := _1658
                        /// @src 0:32250:32258  "Channels"
                        let _1659_slot := 0x02
                        let expr_2946_slot := _1659_slot
                        /// @src 0:32259:32264  "_lcID"
                        let _1660 := var__lcID_2771
                        let expr_2947 := _1660
                        /// @src 0:32250:32265  "Channels[_lcID]"
                        let _1661 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2946_slot,expr_2947)
                        let _1662_slot := _1661
                        let expr_2948_slot := _1662_slot
                        /// @src 0:32250:32279  "Channels[_lcID].erc20Balances"
                        let _1663 := add(expr_2948_slot, 6)
                        let _1664_slot := _1663
                        let expr_2949_slot := _1664_slot
                        /// @src 0:32280:32281  "1"
                        let expr_2950 := 0x01
                        /// @src 0:32250:32282  "Channels[_lcID].erc20Balances[1]"

                        let _1665, _1666 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_2949_slot, expr_2950)
                        /// @src 0:32250:32325  "Channels[_lcID].erc20Balances[1] += virtualChannels[_vcID].erc20Balances[0]"
                        let _1667 := read_from_storage_split_dynamic_t_uint256(_1665, _1666)
                        let expr_2958 := checked_add_t_uint256(_1667, expr_2957)

                        update_storage_value_t_uint256_to_t_uint256(_1665, _1666, expr_2958)
                        /// @src 0:31900:32337  "if (virtualChannels[_vcID].partyB == Channels[_lcID].partyAddresses[0]) {..."
                    }
                    /// @src 0:31458:32337  "if(virtualChannels[_vcID].partyA == Channels[_lcID].partyAddresses[0]) {..."
                }
                default {
                    /// @src 0:31578:31593  "virtualChannels"
                    let _1668_slot := 0x01
                    let expr_2842_slot := _1668_slot
                    /// @src 0:31594:31599  "_vcID"
                    let _1669 := var__vcID_2773
                    let expr_2843 := _1669
                    /// @src 0:31578:31600  "virtualChannels[_vcID]"
                    let _1670 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2842_slot,expr_2843)
                    let _1671_slot := _1670
                    let expr_2844_slot := _1671_slot
                    /// @src 0:31578:31612  "virtualChannels[_vcID].ethBalances"
                    let _1672 := add(expr_2844_slot, 7)
                    let _1673_slot := _1672
                    let expr_2845_slot := _1673_slot
                    /// @src 0:31613:31614  "0"
                    let expr_2846 := 0x00
                    /// @src 0:31578:31615  "virtualChannels[_vcID].ethBalances[0]"

                    let _1674, _1675 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2845_slot, expr_2846)
                    let _1676 := read_from_storage_split_dynamic_t_uint256(_1674, _1675)
                    let expr_2847 := _1676
                    /// @src 0:31544:31552  "Channels"
                    let _1677_slot := 0x02
                    let expr_2836_slot := _1677_slot
                    /// @src 0:31553:31558  "_lcID"
                    let _1678 := var__lcID_2771
                    let expr_2837 := _1678
                    /// @src 0:31544:31559  "Channels[_lcID]"
                    let _1679 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2836_slot,expr_2837)
                    let _1680_slot := _1679
                    let expr_2838_slot := _1680_slot
                    /// @src 0:31544:31571  "Channels[_lcID].ethBalances"
                    let _1681 := add(expr_2838_slot, 2)
                    let _1682_slot := _1681
                    let expr_2839_slot := _1682_slot
                    /// @src 0:31572:31573  "0"
                    let expr_2840 := 0x00
                    /// @src 0:31544:31574  "Channels[_lcID].ethBalances[0]"

                    let _1683, _1684 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_2839_slot, expr_2840)
                    /// @src 0:31544:31615  "Channels[_lcID].ethBalances[0] += virtualChannels[_vcID].ethBalances[0]"
                    let _1685 := read_from_storage_split_dynamic_t_uint256(_1683, _1684)
                    let expr_2848 := checked_add_t_uint256(_1685, expr_2847)

                    update_storage_value_t_uint256_to_t_uint256(_1683, _1684, expr_2848)
                    /// @src 0:31664:31679  "virtualChannels"
                    let _1686_slot := 0x01
                    let expr_2856_slot := _1686_slot
                    /// @src 0:31680:31685  "_vcID"
                    let _1687 := var__vcID_2773
                    let expr_2857 := _1687
                    /// @src 0:31664:31686  "virtualChannels[_vcID]"
                    let _1688 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2856_slot,expr_2857)
                    let _1689_slot := _1688
                    let expr_2858_slot := _1689_slot
                    /// @src 0:31664:31698  "virtualChannels[_vcID].ethBalances"
                    let _1690 := add(expr_2858_slot, 7)
                    let _1691_slot := _1690
                    let expr_2859_slot := _1691_slot
                    /// @src 0:31699:31700  "1"
                    let expr_2860 := 0x01
                    /// @src 0:31664:31701  "virtualChannels[_vcID].ethBalances[1]"

                    let _1692, _1693 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2859_slot, expr_2860)
                    let _1694 := read_from_storage_split_dynamic_t_uint256(_1692, _1693)
                    let expr_2861 := _1694
                    /// @src 0:31630:31638  "Channels"
                    let _1695_slot := 0x02
                    let expr_2850_slot := _1695_slot
                    /// @src 0:31639:31644  "_lcID"
                    let _1696 := var__lcID_2771
                    let expr_2851 := _1696
                    /// @src 0:31630:31645  "Channels[_lcID]"
                    let _1697 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2850_slot,expr_2851)
                    let _1698_slot := _1697
                    let expr_2852_slot := _1698_slot
                    /// @src 0:31630:31657  "Channels[_lcID].ethBalances"
                    let _1699 := add(expr_2852_slot, 2)
                    let _1700_slot := _1699
                    let expr_2853_slot := _1700_slot
                    /// @src 0:31658:31659  "1"
                    let expr_2854 := 0x01
                    /// @src 0:31630:31660  "Channels[_lcID].ethBalances[1]"

                    let _1701, _1702 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_2853_slot, expr_2854)
                    /// @src 0:31630:31701  "Channels[_lcID].ethBalances[1] += virtualChannels[_vcID].ethBalances[1]"
                    let _1703 := read_from_storage_split_dynamic_t_uint256(_1701, _1702)
                    let expr_2862 := checked_add_t_uint256(_1703, expr_2861)

                    update_storage_value_t_uint256_to_t_uint256(_1701, _1702, expr_2862)
                    /// @src 0:31753:31768  "virtualChannels"
                    let _1704_slot := 0x01
                    let expr_2870_slot := _1704_slot
                    /// @src 0:31769:31774  "_vcID"
                    let _1705 := var__vcID_2773
                    let expr_2871 := _1705
                    /// @src 0:31753:31775  "virtualChannels[_vcID]"
                    let _1706 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2870_slot,expr_2871)
                    let _1707_slot := _1706
                    let expr_2872_slot := _1707_slot
                    /// @src 0:31753:31789  "virtualChannels[_vcID].erc20Balances"
                    let _1708 := add(expr_2872_slot, 9)
                    let _1709_slot := _1708
                    let expr_2873_slot := _1709_slot
                    /// @src 0:31790:31791  "0"
                    let expr_2874 := 0x00
                    /// @src 0:31753:31792  "virtualChannels[_vcID].erc20Balances[0]"

                    let _1710, _1711 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2873_slot, expr_2874)
                    let _1712 := read_from_storage_split_dynamic_t_uint256(_1710, _1711)
                    let expr_2875 := _1712
                    /// @src 0:31717:31725  "Channels"
                    let _1713_slot := 0x02
                    let expr_2864_slot := _1713_slot
                    /// @src 0:31726:31731  "_lcID"
                    let _1714 := var__lcID_2771
                    let expr_2865 := _1714
                    /// @src 0:31717:31732  "Channels[_lcID]"
                    let _1715 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2864_slot,expr_2865)
                    let _1716_slot := _1715
                    let expr_2866_slot := _1716_slot
                    /// @src 0:31717:31746  "Channels[_lcID].erc20Balances"
                    let _1717 := add(expr_2866_slot, 6)
                    let _1718_slot := _1717
                    let expr_2867_slot := _1718_slot
                    /// @src 0:31747:31748  "0"
                    let expr_2868 := 0x00
                    /// @src 0:31717:31749  "Channels[_lcID].erc20Balances[0]"

                    let _1719, _1720 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_2867_slot, expr_2868)
                    /// @src 0:31717:31792  "Channels[_lcID].erc20Balances[0] += virtualChannels[_vcID].erc20Balances[0]"
                    let _1721 := read_from_storage_split_dynamic_t_uint256(_1719, _1720)
                    let expr_2876 := checked_add_t_uint256(_1721, expr_2875)

                    update_storage_value_t_uint256_to_t_uint256(_1719, _1720, expr_2876)
                    /// @src 0:31843:31858  "virtualChannels"
                    let _1722_slot := 0x01
                    let expr_2884_slot := _1722_slot
                    /// @src 0:31859:31864  "_vcID"
                    let _1723 := var__vcID_2773
                    let expr_2885 := _1723
                    /// @src 0:31843:31865  "virtualChannels[_vcID]"
                    let _1724 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2884_slot,expr_2885)
                    let _1725_slot := _1724
                    let expr_2886_slot := _1725_slot
                    /// @src 0:31843:31879  "virtualChannels[_vcID].erc20Balances"
                    let _1726 := add(expr_2886_slot, 9)
                    let _1727_slot := _1726
                    let expr_2887_slot := _1727_slot
                    /// @src 0:31880:31881  "1"
                    let expr_2888 := 0x01
                    /// @src 0:31843:31882  "virtualChannels[_vcID].erc20Balances[1]"

                    let _1728, _1729 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2887_slot, expr_2888)
                    let _1730 := read_from_storage_split_dynamic_t_uint256(_1728, _1729)
                    let expr_2889 := _1730
                    /// @src 0:31807:31815  "Channels"
                    let _1731_slot := 0x02
                    let expr_2878_slot := _1731_slot
                    /// @src 0:31816:31821  "_lcID"
                    let _1732 := var__lcID_2771
                    let expr_2879 := _1732
                    /// @src 0:31807:31822  "Channels[_lcID]"
                    let _1733 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_Channel_$1079_storage_$_of_t_bytes32(expr_2878_slot,expr_2879)
                    let _1734_slot := _1733
                    let expr_2880_slot := _1734_slot
                    /// @src 0:31807:31836  "Channels[_lcID].erc20Balances"
                    let _1735 := add(expr_2880_slot, 6)
                    let _1736_slot := _1735
                    let expr_2881_slot := _1736_slot
                    /// @src 0:31837:31838  "1"
                    let expr_2882 := 0x01
                    /// @src 0:31807:31839  "Channels[_lcID].erc20Balances[1]"

                    let _1737, _1738 := storage_array_index_access_t_array$_t_uint256_$4_storage(expr_2881_slot, expr_2882)
                    /// @src 0:31807:31882  "Channels[_lcID].erc20Balances[1] += virtualChannels[_vcID].erc20Balances[1]"
                    let _1739 := read_from_storage_split_dynamic_t_uint256(_1737, _1738)
                    let expr_2890 := checked_add_t_uint256(_1739, expr_2889)

                    update_storage_value_t_uint256_to_t_uint256(_1737, _1738, expr_2890)
                    /// @src 0:31458:32337  "if(virtualChannels[_vcID].partyA == Channels[_lcID].partyAddresses[0]) {..."
                }
                /// @src 0:32364:32369  "_lcID"
                let _1740 := var__lcID_2771
                let expr_2964 := _1740
                /// @src 0:32371:32376  "_vcID"
                let _1741 := var__vcID_2773
                let expr_2965 := _1741
                /// @src 0:32378:32393  "virtualChannels"
                let _1742_slot := 0x01
                let expr_2966_slot := _1742_slot
                /// @src 0:32394:32399  "_vcID"
                let _1743 := var__vcID_2773
                let expr_2967 := _1743
                /// @src 0:32378:32400  "virtualChannels[_vcID]"
                let _1744 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2966_slot,expr_2967)
                let _1745_slot := _1744
                let expr_2968_slot := _1745_slot
                /// @src 0:32378:32414  "virtualChannels[_vcID].erc20Balances"
                let _1746 := add(expr_2968_slot, 9)
                let _1747_slot := _1746
                let expr_2969_slot := _1747_slot
                /// @src 0:32415:32416  "0"
                let expr_2970 := 0x00
                /// @src 0:32378:32417  "virtualChannels[_vcID].erc20Balances[0]"

                let _1748, _1749 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2969_slot, expr_2970)
                let _1750 := read_from_storage_split_dynamic_t_uint256(_1748, _1749)
                let expr_2971 := _1750
                /// @src 0:32419:32434  "virtualChannels"
                let _1751_slot := 0x01
                let expr_2972_slot := _1751_slot
                /// @src 0:32435:32440  "_vcID"
                let _1752 := var__vcID_2773
                let expr_2973 := _1752
                /// @src 0:32419:32441  "virtualChannels[_vcID]"
                let _1753 := mapping_index_access_t_mapping$_t_bytes32_$_t_struct$_VirtualChannel_$1111_storage_$_of_t_bytes32(expr_2972_slot,expr_2973)
                let _1754_slot := _1753
                let expr_2974_slot := _1754_slot
                /// @src 0:32419:32455  "virtualChannels[_vcID].erc20Balances"
                let _1755 := add(expr_2974_slot, 9)
                let _1756_slot := _1755
                let expr_2975_slot := _1756_slot
                /// @src 0:32456:32457  "1"
                let expr_2976 := 0x01
                /// @src 0:32419:32458  "virtualChannels[_vcID].erc20Balances[1]"

                let _1757, _1758 := storage_array_index_access_t_array$_t_uint256_$2_storage(expr_2975_slot, expr_2976)
                let _1759 := read_from_storage_split_dynamic_t_uint256(_1757, _1758)
                let expr_2977 := _1759
                /// @src 0:32353:32459  "DidVCClose(_lcID, _vcID, virtualChannels[_vcID].erc20Balances[0], virtualChannels[_vcID].erc20Balances[1])"
                let _1760 := 0x6ffd15c8707cc55ead84f4bd6e1a07360d2a825d7dacb1456403604948e7ebbf
                let _1761 := convert_t_bytes32_to_t_bytes32(expr_2964)
                let _1762 := convert_t_bytes32_to_t_bytes32(expr_2965)
                {
                    let _1763 := allocate_unbounded()
                    let _1764 := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(_1763 , expr_2971, expr_2977)
                    log3(_1763, sub(_1764, _1763) , _1760, _1761, _1762)
                }
            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

            function cleanup_t_rational_64_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_64_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_64_by_1(value)))
            }

            function cleanup_t_rational_32_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_32_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_32_by_1(value)))
            }

            function abi_encode_tuple_packed_t_bytes32_t_bytes32__to_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(pos , value0, value1) -> end {

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 32)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 32)

                end := pos
            }

            /// @ast-id 3358
            /// @src 0:35292:35856  "function _isContained(bytes32 _hash, bytes memory _proof, bytes32 _root) internal pure returns (bool) {..."
            function fun__isContained_3358(var__hash_3296, var__proof_3298_mpos, var__root_3300) -> var__3303 {
                /// @src 0:35388:35392  "bool"
                let zero_t_bool_1765 := zero_value_for_split_t_bool()
                var__3303 := zero_t_bool_1765

                /// @src 0:35422:35427  "_hash"
                let _1766 := var__hash_3296
                let expr_3307 := _1766
                /// @src 0:35405:35427  "bytes32 cursor = _hash"
                let var_cursor_3306 := expr_3307
                /// @src 0:35438:35455  "bytes32 proofElem"
                let var_proofElem_3310
                let zero_t_bytes32_1767 := zero_value_for_split_t_bytes32()
                var_proofElem_3310 := zero_t_bytes32_1767
                /// @src 0:35467:35815  "for (uint256 i = 64; i <= _proof.length; i += 32) {..."
                for {
                    /// @src 0:35484:35486  "64"
                    let expr_3314 := 0x40
                    /// @src 0:35472:35486  "uint256 i = 64"
                    let var_i_3313 := convert_t_rational_64_by_1_to_t_uint256(expr_3314)
                    } 1 {
                    /// @src 0:35513:35515  "32"
                    let expr_3321 := 0x20
                    /// @src 0:35508:35515  "i += 32"
                    let _1768 := convert_t_rational_32_by_1_to_t_uint256(expr_3321)
                    let _1769 := var_i_3313
                    let expr_3322 := checked_add_t_uint256(_1769, _1768)

                    var_i_3313 := expr_3322
                }
                {
                    /// @src 0:35488:35489  "i"
                    let _1770 := var_i_3313
                    let expr_3316 := _1770
                    /// @src 0:35493:35499  "_proof"
                    let _1771_mpos := var__proof_3298_mpos
                    let expr_3317_mpos := _1771_mpos
                    /// @src 0:35493:35506  "_proof.length"
                    let expr_3318 := array_length_t_bytes_memory_ptr(expr_3317_mpos)
                    /// @src 0:35488:35506  "i <= _proof.length"
                    let expr_3319 := iszero(gt(cleanup_t_uint256(expr_3316), cleanup_t_uint256(expr_3318)))
                    if iszero(expr_3319) { break }
                    /// @src 0:35532:35579  "assembly { proofElem := mload(add(_proof, i)) }"
                    {
                        var_proofElem_3310 := mload(add(var__proof_3298_mpos, var_i_3313))
                    }
                    /// @src 0:35598:35604  "cursor"
                    let _1772 := var_cursor_3306
                    let expr_3325 := _1772
                    /// @src 0:35607:35616  "proofElem"
                    let _1773 := var_proofElem_3310
                    let expr_3326 := _1773
                    /// @src 0:35598:35616  "cursor < proofElem"
                    let expr_3327 := lt(cleanup_t_bytes32(expr_3325), cleanup_t_bytes32(expr_3326))
                    /// @src 0:35594:35804  "if (cursor < proofElem) {..."
                    switch expr_3327
                    case 0 {
                        /// @src 0:35769:35778  "proofElem"
                        let _1774 := var_proofElem_3310
                        let expr_3343 := _1774
                        /// @src 0:35780:35786  "cursor"
                        let _1775 := var_cursor_3306
                        let expr_3344 := _1775
                        /// @src 0:35752:35787  "abi.encodePacked(proofElem, cursor)"

                        let expr_3345_mpos := allocate_unbounded()
                        let _1776 := add(expr_3345_mpos, 0x20)

                        let _1777 := abi_encode_tuple_packed_t_bytes32_t_bytes32__to_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(_1776, expr_3343, expr_3344)
                        mstore(expr_3345_mpos, sub(_1777, add(expr_3345_mpos, 0x20)))
                        finalize_allocation(expr_3345_mpos, sub(_1777, expr_3345_mpos))
                        /// @src 0:35742:35788  "keccak256(abi.encodePacked(proofElem, cursor))"
                        let expr_3346 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_3345_mpos), array_length_t_bytes_memory_ptr(expr_3345_mpos))
                        /// @src 0:35733:35788  "cursor = keccak256(abi.encodePacked(proofElem, cursor))"
                        var_cursor_3306 := expr_3346
                        let expr_3347 := expr_3346
                        /// @src 0:35594:35804  "if (cursor < proofElem) {..."
                    }
                    default {
                        /// @src 0:35673:35679  "cursor"
                        let _1778 := var_cursor_3306
                        let expr_3332 := _1778
                        /// @src 0:35681:35690  "proofElem"
                        let _1779 := var_proofElem_3310
                        let expr_3333 := _1779
                        /// @src 0:35656:35691  "abi.encodePacked(cursor, proofElem)"

                        let expr_3334_mpos := allocate_unbounded()
                        let _1780 := add(expr_3334_mpos, 0x20)

                        let _1781 := abi_encode_tuple_packed_t_bytes32_t_bytes32__to_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(_1780, expr_3332, expr_3333)
                        mstore(expr_3334_mpos, sub(_1781, add(expr_3334_mpos, 0x20)))
                        finalize_allocation(expr_3334_mpos, sub(_1781, expr_3334_mpos))
                        /// @src 0:35646:35692  "keccak256(abi.encodePacked(cursor, proofElem))"
                        let expr_3335 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_3334_mpos), array_length_t_bytes_memory_ptr(expr_3334_mpos))
                        /// @src 0:35637:35692  "cursor = keccak256(abi.encodePacked(cursor, proofElem))"
                        var_cursor_3306 := expr_3335
                        let expr_3336 := expr_3335
                        /// @src 0:35594:35804  "if (cursor < proofElem) {..."
                    }
                }
                /// @src 0:35833:35839  "cursor"
                let _1782 := var_cursor_3306
                let expr_3353 := _1782
                /// @src 0:35843:35848  "_root"
                let _1783 := var__root_3300
                let expr_3354 := _1783
                /// @src 0:35833:35848  "cursor == _root"
                let expr_3355 := eq(cleanup_t_bytes32(expr_3353), cleanup_t_bytes32(expr_3354))
                /// @src 0:35826:35848  "return cursor == _root"
                var__3303 := expr_3355
                leave

            }
            /// @src 0:12117:37526  "contract LedgerChannel {..."

        }

        data ".metadata" hex"a26469706673582212206fc859f72baa46f3381f597b6e978a0d798d4b3fd7fec7bef433d08d2574e18064736f6c634300081e0033"
    }


/// @use-src 0:"src/LedgerChannel.sol"
object "ECTools_645" {
    code {
        /// @src 0:2827:7488  "library ECTools {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("ECTools_645_deployed"), datasize("ECTools_645_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("ECTools_645_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:2827:7488  "library ECTools {..."
        function constructor_ECTools_645() {

            /// @src 0:2827:7488  "library ECTools {..."

        }
        /// @src 0:2827:7488  "library ECTools {..."

    }
    /// @use-src 0:"src/LedgerChannel.sol"
    object "ECTools_645_deployed" {
        code {
            /// @src 0:2827:7488  "library ECTools {..."
            mstore(64, 128)

            let called_via_delegatecall := iszero(eq(loadimmutable("library_deploy_address"), address()))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x1052506f
                {
                    // isSignedBy(bytes32,string,address)

                    external_fun_isSignedBy_193()
                }

                case 0x1445f713
                {
                    // hexstrToBytes(string)

                    external_fun_hexstrToBytes_299()
                }

                case 0x1dcd9b55
                {
                    // substring(string,uint256,uint256)

                    external_fun_substring_644()
                }

                case 0x38b025b2
                {
                    // parseInt16Char(string)

                    external_fun_parseInt16Char_435()
                }

                case 0x886d3db9
                {
                    // uintToBytes32(uint256)

                    external_fun_uintToBytes32_451()
                }

                case 0xdae21454
                {
                    // toEthereumSignedMessage(string)

                    external_fun_toEthereumSignedMessage_488()
                }

                case 0xdca95419
                {
                    // recoverSigner(bytes32,string)

                    external_fun_recoverSigner_165()
                }

                case 0xe9395679
                {
                    // uintToString(uint256)

                    external_fun_uintToString_570()
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

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_bytes32(value) {
                if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
            }

            function abi_decode_t_bytes32(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bytes32(value)
            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() {
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

            function copy_calldata_to_memory_with_cleanup(src, dst, length) {

                calldatacopy(dst, src, length)
                mstore(add(dst, length), 0)

            }

            function abi_decode_available_length_t_string_memory_ptr(src, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_string_memory_ptr(length))
                mstore(array, length)
                let dst := add(array, 0x20)
                if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
                copy_calldata_to_memory_with_cleanup(src, dst, length)
            }

            // string
            function abi_decode_t_string_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := calldataload(offset)
                array := abi_decode_available_length_t_string_memory_ptr(add(offset, 0x20), length, end)
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

            function abi_decode_tuple_t_bytes32t_string_memory_ptrt_address(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value1 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function abi_encode_t_bool_to_t_bool_fromStack_library(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_tuple_t_bool__to_t_bool__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bool_to_t_bool_fromStack_library(value0,  add(headStart, 0))

            }

            function external_fun_isSignedBy_193() {

                let param_0, param_1, param_2 :=  abi_decode_tuple_t_bytes32t_string_memory_ptrt_address(4, calldatasize())
                let ret_0 :=  fun_isSignedBy_193(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_string_memory_ptr(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack_library(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function copy_memory_to_memory_with_cleanup(src, dst, length) {

                mcopy(dst, src, length)
                mstore(add(dst, length), 0)

            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack_library(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack_library(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack_library(value0,  tail)

            }

            function external_fun_hexstrToBytes_299() {

                let param_0 :=  abi_decode_tuple_t_string_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_hexstrToBytes_299(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack_library(memPos , ret_0)
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

            function abi_decode_tuple_t_string_memory_ptrt_uint256t_uint256(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack_library(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack_library(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack_library(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack_library(value0,  tail)

            }

            function external_fun_substring_644() {

                let param_0, param_1, param_2 :=  abi_decode_tuple_t_string_memory_ptrt_uint256t_uint256(4, calldatasize())
                let ret_0 :=  fun_substring_644(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack_library(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

            }

            function external_fun_parseInt16Char_435() {

                let param_0 :=  abi_decode_tuple_t_string_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_parseInt16Char_435(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_uintToBytes32_451() {

                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_uintToBytes32_451(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack_library(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bytes32_to_t_bytes32_fromStack_library(value0,  add(headStart, 0))

            }

            function external_fun_toEthereumSignedMessage_488() {

                let param_0 :=  abi_decode_tuple_t_string_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_toEthereumSignedMessage_488(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_bytes32t_string_memory_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value1 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_address_to_t_address_fromStack_library(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_address__to_t_address__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack_library(value0,  add(headStart, 0))

            }

            function external_fun_recoverSigner_165() {

                let param_0, param_1 :=  abi_decode_tuple_t_bytes32t_string_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_recoverSigner_165(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_uintToString_570() {

                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_uintToString_570(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            /// @ast-id 193
            /// @src 0:3933:4143  "function isSignedBy(bytes32 _hashedMsg, string memory _sig, address _addr) public pure returns (bool) {..."
            function fun_isSignedBy_193(var__hashedMsg_167, var__sig_169_mpos, var__addr_171) -> var__174 {
                /// @src 0:4029:4033  "bool"
                let zero_t_bool_1 := zero_value_for_split_t_bool()
                var__174 := zero_t_bool_1

                /// @src 0:4054:4059  "_addr"
                let _2 := var__addr_171
                let expr_177 := _2
                /// @src 0:4071:4074  "0x0"
                let expr_180 := 0x00
                /// @src 0:4063:4075  "address(0x0)"
                let expr_181 := convert_t_rational_0_by_1_to_t_address(expr_180)
                /// @src 0:4054:4075  "_addr != address(0x0)"
                let expr_182 := iszero(eq(cleanup_t_address(expr_177), cleanup_t_address(expr_181)))
                /// @src 0:4046:4076  "require(_addr != address(0x0))"
                require_helper(expr_182)
                /// @src 0:4095:4100  "_addr"
                let _3 := var__addr_171
                let expr_185 := _3
                /// @src 0:4118:4128  "_hashedMsg"
                let _4 := var__hashedMsg_167
                let expr_187 := _4
                /// @src 0:4130:4134  "_sig"
                let _5_mpos := var__sig_169_mpos
                let expr_188_mpos := _5_mpos
                /// @src 0:4104:4135  "recoverSigner(_hashedMsg, _sig)"
                let expr_189 := fun_recoverSigner_165(expr_187, expr_188_mpos)
                /// @src 0:4095:4135  "_addr == recoverSigner(_hashedMsg, _sig)"
                let expr_190 := eq(cleanup_t_address(expr_185), cleanup_t_address(expr_189))
                /// @src 0:4088:4135  "return _addr == recoverSigner(_hashedMsg, _sig)"
                var__174 := expr_190
                leave

            }
            /// @src 0:2827:7488  "library ECTools {..."

            function zero_value_for_split_t_bytes_memory_ptr() -> ret {
                ret := 96
            }

            function convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(value) -> converted  {
                converted := value

            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            function panic_error_0x12() {
}

            function mod_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }
                r := mod(x, y)
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function panic_error_0x11() {
}

            function checked_div_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }

                r := div(x, y)
            }

            function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_string_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_memory_chunk_t_bytes1(dataStart, dataSizeInBytes) {
                calldatacopy(dataStart, calldatasize(), dataSizeInBytes)
            }

            function allocate_and_zero_memory_array_t_string_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_string_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_bytes1(dataStart, dataSize)
            }

            function zero_value_for_split_t_string_memory_ptr() -> ret {
                ret := 96
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function cleanup_t_rational_16_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_16_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_16_by_1(value)))
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

            function cleanup_t_rational_31_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_31_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_31_by_1(value)))
            }

            function cleanup_t_bytes1(value) -> cleaned {
                cleaned := and(value, 0xff00000000000000000000000000000000000000000000000000000000000000)
            }

            function read_from_memoryt_bytes1(ptr) -> returnValue {

                let value := cleanup_t_bytes1(mload(ptr))

                returnValue :=

                value

            }

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            /// @ast-id 299
            /// @src 0:4194:4790  "function hexstrToBytes(string memory _hexstr) public pure returns (bytes memory) {..."
            function fun_hexstrToBytes_299(var__hexstr_195_mpos) -> var__198_mpos {
                /// @src 0:4261:4273  "bytes memory"
                let zero_t_bytes_memory_ptr_6_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var__198_mpos := zero_t_bytes_memory_ptr_6_mpos

                /// @src 0:4306:4313  "_hexstr"
                let _7_mpos := var__hexstr_195_mpos
                let expr_204_mpos := _7_mpos
                /// @src 0:4300:4314  "bytes(_hexstr)"
                let expr_205_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_204_mpos)
                /// @src 0:4300:4321  "bytes(_hexstr).length"
                let expr_206 := array_length_t_bytes_memory_ptr(expr_205_mpos)
                /// @src 0:4286:4321  "uint256 len = bytes(_hexstr).length"
                let var_len_201 := expr_206
                /// @src 0:4340:4343  "len"
                let _8 := var_len_201
                let expr_209 := _8
                /// @src 0:4346:4347  "2"
                let expr_210 := 0x02
                /// @src 0:4340:4347  "len % 2"
                let expr_211 := mod_t_uint256(expr_209, convert_t_rational_2_by_1_to_t_uint256(expr_210))

                /// @src 0:4351:4352  "0"
                let expr_212 := 0x00
                /// @src 0:4340:4352  "len % 2 == 0"
                let expr_213 := eq(cleanup_t_uint256(expr_211), convert_t_rational_0_by_1_to_t_uint256(expr_212))
                /// @src 0:4332:4353  "require(len % 2 == 0)"
                require_helper(expr_213)
                /// @src 0:4402:4405  "len"
                let _9 := var_len_201
                let expr_222 := _9
                /// @src 0:4408:4409  "2"
                let expr_223 := 0x02
                /// @src 0:4402:4409  "len / 2"
                let expr_224 := checked_div_t_uint256(expr_222, convert_t_rational_2_by_1_to_t_uint256(expr_223))

                /// @src 0:4391:4410  "new string(len / 2)"
                let expr_225_mpos := allocate_and_zero_memory_array_t_string_memory_ptr(expr_224)
                /// @src 0:4385:4411  "bytes(new string(len / 2))"
                let expr_226_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_225_mpos)
                /// @src 0:4365:4411  "bytes memory bstr = bytes(new string(len / 2))"
                let var_bstr_217_mpos := expr_226_mpos
                /// @src 0:4434:4435  "0"
                let expr_230 := 0x00
                /// @src 0:4422:4435  "uint256 k = 0"
                let var_k_229 := convert_t_rational_0_by_1_to_t_uint256(expr_230)
                /// @src 0:4446:4461  "string memory s"
                let var_s_233_mpos
                let zero_t_string_memory_ptr_10_mpos := zero_value_for_split_t_string_memory_ptr()
                var_s_233_mpos := zero_t_string_memory_ptr_10_mpos
                /// @src 0:4472:4487  "string memory r"
                let var_r_236_mpos
                let zero_t_string_memory_ptr_11_mpos := zero_value_for_split_t_string_memory_ptr()
                var_r_236_mpos := zero_t_string_memory_ptr_11_mpos
                /// @src 0:4498:4761  "for (uint256 i = 0; i < len; i += 2) {..."
                for {
                    /// @src 0:4515:4516  "0"
                    let expr_240 := 0x00
                    /// @src 0:4503:4516  "uint256 i = 0"
                    let var_i_239 := convert_t_rational_0_by_1_to_t_uint256(expr_240)
                    } 1 {
                    /// @src 0:4532:4533  "2"
                    let expr_246 := 0x02
                    /// @src 0:4527:4533  "i += 2"
                    let _12 := convert_t_rational_2_by_1_to_t_uint256(expr_246)
                    let _13 := var_i_239
                    let expr_247 := checked_add_t_uint256(_13, _12)

                    var_i_239 := expr_247
                }
                {
                    /// @src 0:4518:4519  "i"
                    let _14 := var_i_239
                    let expr_242 := _14
                    /// @src 0:4522:4525  "len"
                    let _15 := var_len_201
                    let expr_243 := _15
                    /// @src 0:4518:4525  "i < len"
                    let expr_244 := lt(cleanup_t_uint256(expr_242), cleanup_t_uint256(expr_243))
                    if iszero(expr_244) { break }
                    /// @src 0:4564:4571  "_hexstr"
                    let _16_mpos := var__hexstr_195_mpos
                    let expr_251_mpos := _16_mpos
                    /// @src 0:4573:4574  "i"
                    let _17 := var_i_239
                    let expr_252 := _17
                    /// @src 0:4576:4577  "i"
                    let _18 := var_i_239
                    let expr_253 := _18
                    /// @src 0:4580:4581  "1"
                    let expr_254 := 0x01
                    /// @src 0:4576:4581  "i + 1"
                    let expr_255 := checked_add_t_uint256(expr_253, convert_t_rational_1_by_1_to_t_uint256(expr_254))

                    /// @src 0:4554:4582  "substring(_hexstr, i, i + 1)"
                    let expr_256_mpos := fun_substring_644(expr_251_mpos, expr_252, expr_255)
                    /// @src 0:4550:4582  "s = substring(_hexstr, i, i + 1)"
                    var_s_233_mpos := expr_256_mpos
                    let _19_mpos := var_s_233_mpos
                    let expr_257_mpos := _19_mpos
                    /// @src 0:4611:4618  "_hexstr"
                    let _20_mpos := var__hexstr_195_mpos
                    let expr_261_mpos := _20_mpos
                    /// @src 0:4620:4621  "i"
                    let _21 := var_i_239
                    let expr_262 := _21
                    /// @src 0:4624:4625  "1"
                    let expr_263 := 0x01
                    /// @src 0:4620:4625  "i + 1"
                    let expr_264 := checked_add_t_uint256(expr_262, convert_t_rational_1_by_1_to_t_uint256(expr_263))

                    /// @src 0:4627:4628  "i"
                    let _22 := var_i_239
                    let expr_265 := _22
                    /// @src 0:4631:4632  "2"
                    let expr_266 := 0x02
                    /// @src 0:4627:4632  "i + 2"
                    let expr_267 := checked_add_t_uint256(expr_265, convert_t_rational_2_by_1_to_t_uint256(expr_266))

                    /// @src 0:4601:4633  "substring(_hexstr, i + 1, i + 2)"
                    let expr_268_mpos := fun_substring_644(expr_261_mpos, expr_264, expr_267)
                    /// @src 0:4597:4633  "r = substring(_hexstr, i + 1, i + 2)"
                    var_r_236_mpos := expr_268_mpos
                    let _23_mpos := var_r_236_mpos
                    let expr_269_mpos := _23_mpos
                    /// @src 0:4675:4676  "s"
                    let _24_mpos := var_s_233_mpos
                    let expr_274_mpos := _24_mpos
                    /// @src 0:4660:4677  "parseInt16Char(s)"
                    let expr_275 := fun_parseInt16Char_435(expr_274_mpos)
                    /// @src 0:4680:4682  "16"
                    let expr_276 := 0x10
                    /// @src 0:4660:4682  "parseInt16Char(s) * 16"
                    let expr_277 := checked_mul_t_uint256(expr_275, convert_t_rational_16_by_1_to_t_uint256(expr_276))

                    /// @src 0:4700:4701  "r"
                    let _25_mpos := var_r_236_mpos
                    let expr_279_mpos := _25_mpos
                    /// @src 0:4685:4702  "parseInt16Char(r)"
                    let expr_280 := fun_parseInt16Char_435(expr_279_mpos)
                    /// @src 0:4660:4702  "parseInt16Char(s) * 16 + parseInt16Char(r)"
                    let expr_281 := checked_add_t_uint256(expr_277, expr_280)

                    /// @src 0:4648:4702  "uint256 p = parseInt16Char(s) * 16 + parseInt16Char(r)"
                    let var_p_272 := expr_281
                    /// @src 0:4743:4744  "p"
                    let _26 := var_p_272
                    let expr_288 := _26
                    /// @src 0:4729:4745  "uintToBytes32(p)"
                    let expr_289_mpos := fun_uintToBytes32_451(expr_288)
                    /// @src 0:4746:4748  "31"
                    let expr_290 := 0x1f
                    /// @src 0:4729:4749  "uintToBytes32(p)[31]"
                    let _27 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_289_mpos, convert_t_rational_31_by_1_to_t_uint256(expr_290)))
                    let expr_291 := _27
                    /// @src 0:4717:4721  "bstr"
                    let _28_mpos := var_bstr_217_mpos
                    let expr_283_mpos := _28_mpos
                    /// @src 0:4722:4725  "k++"
                    let _30 := var_k_229
                    let _29 := increment_t_uint256(_30)
                    var_k_229 := _29
                    let expr_285 := _30
                    /// @src 0:4717:4749  "bstr[k++] = uintToBytes32(p)[31]"
                    let _31 := expr_291
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_283_mpos, expr_285), byte(0, _31))
                    let expr_292 := expr_291
                }
                /// @src 0:4778:4782  "bstr"
                let _32_mpos := var_bstr_217_mpos
                let expr_296_mpos := _32_mpos
                /// @src 0:4771:4782  "return bstr"
                var__198_mpos := expr_296_mpos
                leave

            }
            /// @src 0:2827:7488  "library ECTools {..."

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            function array_allocation_size_t_bytes_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_bytes_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function allocate_and_zero_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_bytes_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_bytes_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_bytes1(dataStart, dataSize)
            }

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            function convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(value) -> converted  {
                converted := value

            }

            /// @ast-id 644
            /// @src 0:6964:7485  "function substring(string memory _str, uint256 _startIndex, uint256 _endIndex) public pure returns (string memory) {..."
            function fun_substring_644(var__str_572_mpos, var__startIndex_574, var__endIndex_576) -> var__579_mpos {
                /// @src 0:7064:7077  "string memory"
                let zero_t_string_memory_ptr_33_mpos := zero_value_for_split_t_string_memory_ptr()
                var__579_mpos := zero_t_string_memory_ptr_33_mpos

                /// @src 0:7120:7124  "_str"
                let _34_mpos := var__str_572_mpos
                let expr_585_mpos := _34_mpos
                /// @src 0:7114:7125  "bytes(_str)"
                let expr_586_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_585_mpos)
                /// @src 0:7090:7125  "bytes memory strBytes = bytes(_str)"
                let var_strBytes_582_mpos := expr_586_mpos
                /// @src 0:7144:7155  "_startIndex"
                let _35 := var__startIndex_574
                let expr_589 := _35
                /// @src 0:7159:7168  "_endIndex"
                let _36 := var__endIndex_576
                let expr_590 := _36
                /// @src 0:7144:7168  "_startIndex <= _endIndex"
                let expr_591 := iszero(gt(cleanup_t_uint256(expr_589), cleanup_t_uint256(expr_590)))
                /// @src 0:7136:7169  "require(_startIndex <= _endIndex)"
                require_helper(expr_591)
                /// @src 0:7188:7199  "_startIndex"
                let _37 := var__startIndex_574
                let expr_595 := _37
                /// @src 0:7203:7204  "0"
                let expr_596 := 0x00
                /// @src 0:7188:7204  "_startIndex >= 0"
                let expr_597 := iszero(lt(cleanup_t_uint256(expr_595), convert_t_rational_0_by_1_to_t_uint256(expr_596)))
                /// @src 0:7180:7205  "require(_startIndex >= 0)"
                require_helper(expr_597)
                /// @src 0:7224:7233  "_endIndex"
                let _38 := var__endIndex_576
                let expr_601 := _38
                /// @src 0:7237:7245  "strBytes"
                let _39_mpos := var_strBytes_582_mpos
                let expr_602_mpos := _39_mpos
                /// @src 0:7237:7252  "strBytes.length"
                let expr_603 := array_length_t_bytes_memory_ptr(expr_602_mpos)
                /// @src 0:7224:7252  "_endIndex <= strBytes.length"
                let expr_604 := iszero(gt(cleanup_t_uint256(expr_601), cleanup_t_uint256(expr_603)))
                /// @src 0:7216:7253  "require(_endIndex <= strBytes.length)"
                require_helper(expr_604)
                /// @src 0:7297:7306  "_endIndex"
                let _40 := var__endIndex_576
                let expr_611 := _40
                /// @src 0:7309:7320  "_startIndex"
                let _41 := var__startIndex_574
                let expr_612 := _41
                /// @src 0:7297:7320  "_endIndex - _startIndex"
                let expr_613 := checked_sub_t_uint256(expr_611, expr_612)

                /// @src 0:7287:7321  "new bytes(_endIndex - _startIndex)"
                let expr_614_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(expr_613)
                /// @src 0:7265:7321  "bytes memory result = new bytes(_endIndex - _startIndex)"
                let var_result_608_mpos := expr_614_mpos
                /// @src 0:7332:7446  "for (uint256 i = _startIndex; i < _endIndex; i++) {..."
                for {
                    /// @src 0:7349:7360  "_startIndex"
                    let _42 := var__startIndex_574
                    let expr_618 := _42
                    /// @src 0:7337:7360  "uint256 i = _startIndex"
                    let var_i_617 := expr_618
                    } 1 {
                    /// @src 0:7377:7380  "i++"
                    let _44 := var_i_617
                    let _43 := increment_wrapping_t_uint256(_44)
                    var_i_617 := _43
                    let expr_624 := _44
                }
                {
                    /// @src 0:7362:7363  "i"
                    let _45 := var_i_617
                    let expr_620 := _45
                    /// @src 0:7366:7375  "_endIndex"
                    let _46 := var__endIndex_576
                    let expr_621 := _46
                    /// @src 0:7362:7375  "i < _endIndex"
                    let expr_622 := lt(cleanup_t_uint256(expr_620), cleanup_t_uint256(expr_621))
                    if iszero(expr_622) { break }
                    /// @src 0:7423:7431  "strBytes"
                    let _47_mpos := var_strBytes_582_mpos
                    let expr_631_mpos := _47_mpos
                    /// @src 0:7432:7433  "i"
                    let _48 := var_i_617
                    let expr_632 := _48
                    /// @src 0:7423:7434  "strBytes[i]"
                    let _49 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_631_mpos, expr_632))
                    let expr_633 := _49
                    /// @src 0:7397:7403  "result"
                    let _50_mpos := var_result_608_mpos
                    let expr_626_mpos := _50_mpos
                    /// @src 0:7404:7405  "i"
                    let _51 := var_i_617
                    let expr_627 := _51
                    /// @src 0:7408:7419  "_startIndex"
                    let _52 := var__startIndex_574
                    let expr_628 := _52
                    /// @src 0:7404:7419  "i - _startIndex"
                    let expr_629 := checked_sub_t_uint256(expr_627, expr_628)

                    /// @src 0:7397:7434  "result[i - _startIndex] = strBytes[i]"
                    let _53 := expr_633
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_626_mpos, expr_629), byte(0, _53))
                    let expr_634 := expr_633
                }
                /// @src 0:7470:7476  "result"
                let _54_mpos := var_result_608_mpos
                let expr_640_mpos := _54_mpos
                /// @src 0:7463:7477  "string(result)"
                let expr_641_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_640_mpos)
                /// @src 0:7456:7477  "return string(result)"
                var__579_mpos := expr_641_mpos
                leave

            }
            /// @src 0:2827:7488  "library ECTools {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function cleanup_t_rational_48_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function convert_t_rational_48_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_48_by_1(value)))
            }

            function shift_left_248(value) -> newValue {
                newValue :=

                shl(248, value)

            }

            function convert_t_uint8_to_t_bytes1(value) -> converted {
                converted := cleanup_t_bytes1(shift_left_248(cleanup_t_uint8(value)))
            }

            function cleanup_t_rational_57_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_57_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_57_by_1(value)))
            }

            function cleanup_t_rational_65_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_65_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_65_by_1(value)))
            }

            function cleanup_t_rational_70_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_70_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_70_by_1(value)))
            }

            function cleanup_t_rational_97_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_97_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_97_by_1(value)))
            }

            function cleanup_t_rational_102_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_102_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_102_by_1(value)))
            }

            function shift_right_248_unsigned(value) -> newValue {
                newValue :=

                shr(248, value)

            }

            function convert_t_uint8_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_uint8(value)))
            }

            function convert_t_bytes1_to_t_uint8(value) -> converted {
                converted := convert_t_uint8_to_t_uint8(shift_right_248_unsigned(value))
            }

            function convert_t_uint8_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint8(value)))
            }

            function cleanup_t_rational_87_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_87_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_87_by_1(value)))
            }

            function cleanup_t_rational_55_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_55_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_55_by_1(value)))
            }

            function convert_t_rational_48_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_48_by_1(value)))
            }

            /// @ast-id 435
            /// @src 0:4881:5532  "function parseInt16Char(string memory _char) public pure returns (uint256) {..."
            function fun_parseInt16Char_435(var__char_301_mpos) -> var__304 {
                /// @src 0:4947:4954  "uint256"
                let zero_t_uint256_55 := zero_value_for_split_t_uint256()
                var__304 := zero_t_uint256_55

                /// @src 0:4996:5001  "_char"
                let _56_mpos := var__char_301_mpos
                let expr_310_mpos := _56_mpos
                /// @src 0:4990:5002  "bytes(_char)"
                let expr_311_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_310_mpos)
                /// @src 0:4967:5002  "bytes memory bresult = bytes(_char)"
                let var_bresult_307_mpos := expr_311_mpos
                /// @src 0:5053:5060  "bresult"
                let _57_mpos := var_bresult_307_mpos
                let expr_313_mpos := _57_mpos
                /// @src 0:5061:5062  "0"
                let expr_314 := 0x00
                /// @src 0:5053:5063  "bresult[0]"
                let _58 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_313_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_314)))
                let expr_315 := _58
                /// @src 0:5080:5082  "48"
                let expr_320 := 0x30
                /// @src 0:5074:5083  "uint8(48)"
                let expr_321 := convert_t_rational_48_by_1_to_t_uint8(expr_320)
                /// @src 0:5067:5084  "bytes1(uint8(48))"
                let expr_322 := convert_t_uint8_to_t_bytes1(expr_321)
                /// @src 0:5053:5084  "bresult[0] >= bytes1(uint8(48))"
                let expr_323 := iszero(lt(cleanup_t_bytes1(expr_315), cleanup_t_bytes1(expr_322)))
                /// @src 0:5052:5085  "(bresult[0] >= bytes1(uint8(48)))"
                let expr_324 := expr_323
                /// @src 0:5052:5122  "(bresult[0] >= bytes1(uint8(48))) && (bresult[0] <= bytes1(uint8(57)))"
                let expr_337 := expr_324
                if expr_337 {
                    /// @src 0:5090:5097  "bresult"
                    let _59_mpos := var_bresult_307_mpos
                    let expr_325_mpos := _59_mpos
                    /// @src 0:5098:5099  "0"
                    let expr_326 := 0x00
                    /// @src 0:5090:5100  "bresult[0]"
                    let _60 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_325_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_326)))
                    let expr_327 := _60
                    /// @src 0:5117:5119  "57"
                    let expr_332 := 0x39
                    /// @src 0:5111:5120  "uint8(57)"
                    let expr_333 := convert_t_rational_57_by_1_to_t_uint8(expr_332)
                    /// @src 0:5104:5121  "bytes1(uint8(57))"
                    let expr_334 := convert_t_uint8_to_t_bytes1(expr_333)
                    /// @src 0:5090:5121  "bresult[0] <= bytes1(uint8(57))"
                    let expr_335 := iszero(gt(cleanup_t_bytes1(expr_327), cleanup_t_bytes1(expr_334)))
                    /// @src 0:5089:5122  "(bresult[0] <= bytes1(uint8(57)))"
                    let expr_336 := expr_335
                    /// @src 0:5052:5122  "(bresult[0] >= bytes1(uint8(48))) && (bresult[0] <= bytes1(uint8(57)))"
                    expr_337 := expr_336
                }
                /// @src 0:5048:5525  "if ((bresult[0] >= bytes1(uint8(48))) && (bresult[0] <= bytes1(uint8(57)))) {..."
                switch expr_337
                case 0 {
                    /// @src 0:5200:5207  "bresult"
                    let _61_mpos := var_bresult_307_mpos
                    let expr_351_mpos := _61_mpos
                    /// @src 0:5208:5209  "0"
                    let expr_352 := 0x00
                    /// @src 0:5200:5210  "bresult[0]"
                    let _62 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_351_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_352)))
                    let expr_353 := _62
                    /// @src 0:5227:5229  "65"
                    let expr_358 := 0x41
                    /// @src 0:5221:5230  "uint8(65)"
                    let expr_359 := convert_t_rational_65_by_1_to_t_uint8(expr_358)
                    /// @src 0:5214:5231  "bytes1(uint8(65))"
                    let expr_360 := convert_t_uint8_to_t_bytes1(expr_359)
                    /// @src 0:5200:5231  "bresult[0] >= bytes1(uint8(65))"
                    let expr_361 := iszero(lt(cleanup_t_bytes1(expr_353), cleanup_t_bytes1(expr_360)))
                    /// @src 0:5199:5232  "(bresult[0] >= bytes1(uint8(65)))"
                    let expr_362 := expr_361
                    /// @src 0:5199:5269  "(bresult[0] >= bytes1(uint8(65))) && (bresult[0] <= bytes1(uint8(70)))"
                    let expr_375 := expr_362
                    if expr_375 {
                        /// @src 0:5237:5244  "bresult"
                        let _63_mpos := var_bresult_307_mpos
                        let expr_363_mpos := _63_mpos
                        /// @src 0:5245:5246  "0"
                        let expr_364 := 0x00
                        /// @src 0:5237:5247  "bresult[0]"
                        let _64 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_363_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_364)))
                        let expr_365 := _64
                        /// @src 0:5264:5266  "70"
                        let expr_370 := 0x46
                        /// @src 0:5258:5267  "uint8(70)"
                        let expr_371 := convert_t_rational_70_by_1_to_t_uint8(expr_370)
                        /// @src 0:5251:5268  "bytes1(uint8(70))"
                        let expr_372 := convert_t_uint8_to_t_bytes1(expr_371)
                        /// @src 0:5237:5268  "bresult[0] <= bytes1(uint8(70))"
                        let expr_373 := iszero(gt(cleanup_t_bytes1(expr_365), cleanup_t_bytes1(expr_372)))
                        /// @src 0:5236:5269  "(bresult[0] <= bytes1(uint8(70)))"
                        let expr_374 := expr_373
                        /// @src 0:5199:5269  "(bresult[0] >= bytes1(uint8(65))) && (bresult[0] <= bytes1(uint8(70)))"
                        expr_375 := expr_374
                    }
                    /// @src 0:5195:5525  "if ((bresult[0] >= bytes1(uint8(65))) && (bresult[0] <= bytes1(uint8(70)))) {..."
                    switch expr_375
                    case 0 {
                        /// @src 0:5347:5354  "bresult"
                        let _65_mpos := var_bresult_307_mpos
                        let expr_389_mpos := _65_mpos
                        /// @src 0:5355:5356  "0"
                        let expr_390 := 0x00
                        /// @src 0:5347:5357  "bresult[0]"
                        let _66 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_389_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_390)))
                        let expr_391 := _66
                        /// @src 0:5374:5376  "97"
                        let expr_396 := 0x61
                        /// @src 0:5368:5377  "uint8(97)"
                        let expr_397 := convert_t_rational_97_by_1_to_t_uint8(expr_396)
                        /// @src 0:5361:5378  "bytes1(uint8(97))"
                        let expr_398 := convert_t_uint8_to_t_bytes1(expr_397)
                        /// @src 0:5347:5378  "bresult[0] >= bytes1(uint8(97))"
                        let expr_399 := iszero(lt(cleanup_t_bytes1(expr_391), cleanup_t_bytes1(expr_398)))
                        /// @src 0:5346:5379  "(bresult[0] >= bytes1(uint8(97)))"
                        let expr_400 := expr_399
                        /// @src 0:5346:5417  "(bresult[0] >= bytes1(uint8(97))) && (bresult[0] <= bytes1(uint8(102)))"
                        let expr_413 := expr_400
                        if expr_413 {
                            /// @src 0:5384:5391  "bresult"
                            let _67_mpos := var_bresult_307_mpos
                            let expr_401_mpos := _67_mpos
                            /// @src 0:5392:5393  "0"
                            let expr_402 := 0x00
                            /// @src 0:5384:5394  "bresult[0]"
                            let _68 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_401_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_402)))
                            let expr_403 := _68
                            /// @src 0:5411:5414  "102"
                            let expr_408 := 0x66
                            /// @src 0:5405:5415  "uint8(102)"
                            let expr_409 := convert_t_rational_102_by_1_to_t_uint8(expr_408)
                            /// @src 0:5398:5416  "bytes1(uint8(102))"
                            let expr_410 := convert_t_uint8_to_t_bytes1(expr_409)
                            /// @src 0:5384:5416  "bresult[0] <= bytes1(uint8(102))"
                            let expr_411 := iszero(gt(cleanup_t_bytes1(expr_403), cleanup_t_bytes1(expr_410)))
                            /// @src 0:5383:5417  "(bresult[0] <= bytes1(uint8(102)))"
                            let expr_412 := expr_411
                            /// @src 0:5346:5417  "(bresult[0] >= bytes1(uint8(97))) && (bresult[0] <= bytes1(uint8(102)))"
                            expr_413 := expr_412
                        }
                        /// @src 0:5342:5525  "if ((bresult[0] >= bytes1(uint8(97))) && (bresult[0] <= bytes1(uint8(102)))) {..."
                        switch expr_413
                        case 0 {
                            /// @src 0:5505:5513  "revert()"
                            revert(0, 0)
                            /// @src 0:5342:5525  "if ((bresult[0] >= bytes1(uint8(97))) && (bresult[0] <= bytes1(uint8(102)))) {..."
                        }
                        default {
                            /// @src 0:5455:5462  "bresult"
                            let _69_mpos := var_bresult_307_mpos
                            let expr_418_mpos := _69_mpos
                            /// @src 0:5463:5464  "0"
                            let expr_419 := 0x00
                            /// @src 0:5455:5465  "bresult[0]"
                            let _70 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_418_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_419)))
                            let expr_420 := _70
                            /// @src 0:5449:5466  "uint8(bresult[0])"
                            let expr_421 := convert_t_bytes1_to_t_uint8(expr_420)
                            /// @src 0:5441:5467  "uint256(uint8(bresult[0]))"
                            let expr_422 := convert_t_uint8_to_t_uint256(expr_421)
                            /// @src 0:5470:5472  "87"
                            let expr_423 := 0x57
                            /// @src 0:5441:5472  "uint256(uint8(bresult[0])) - 87"
                            let expr_424 := checked_sub_t_uint256(expr_422, convert_t_rational_87_by_1_to_t_uint256(expr_423))

                            /// @src 0:5434:5472  "return uint256(uint8(bresult[0])) - 87"
                            var__304 := expr_424
                            leave
                            /// @src 0:5342:5525  "if ((bresult[0] >= bytes1(uint8(97))) && (bresult[0] <= bytes1(uint8(102)))) {..."
                        }
                        /// @src 0:5195:5525  "if ((bresult[0] >= bytes1(uint8(65))) && (bresult[0] <= bytes1(uint8(70)))) {..."
                    }
                    default {
                        /// @src 0:5307:5314  "bresult"
                        let _71_mpos := var_bresult_307_mpos
                        let expr_380_mpos := _71_mpos
                        /// @src 0:5315:5316  "0"
                        let expr_381 := 0x00
                        /// @src 0:5307:5317  "bresult[0]"
                        let _72 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_380_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_381)))
                        let expr_382 := _72
                        /// @src 0:5301:5318  "uint8(bresult[0])"
                        let expr_383 := convert_t_bytes1_to_t_uint8(expr_382)
                        /// @src 0:5293:5319  "uint256(uint8(bresult[0]))"
                        let expr_384 := convert_t_uint8_to_t_uint256(expr_383)
                        /// @src 0:5322:5324  "55"
                        let expr_385 := 0x37
                        /// @src 0:5293:5324  "uint256(uint8(bresult[0])) - 55"
                        let expr_386 := checked_sub_t_uint256(expr_384, convert_t_rational_55_by_1_to_t_uint256(expr_385))

                        /// @src 0:5286:5324  "return uint256(uint8(bresult[0])) - 55"
                        var__304 := expr_386
                        leave
                        /// @src 0:5195:5525  "if ((bresult[0] >= bytes1(uint8(65))) && (bresult[0] <= bytes1(uint8(70)))) {..."
                    }
                    /// @src 0:5048:5525  "if ((bresult[0] >= bytes1(uint8(48))) && (bresult[0] <= bytes1(uint8(57)))) {..."
                }
                default {
                    /// @src 0:5160:5167  "bresult"
                    let _73_mpos := var_bresult_307_mpos
                    let expr_342_mpos := _73_mpos
                    /// @src 0:5168:5169  "0"
                    let expr_343 := 0x00
                    /// @src 0:5160:5170  "bresult[0]"
                    let _74 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_342_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_343)))
                    let expr_344 := _74
                    /// @src 0:5154:5171  "uint8(bresult[0])"
                    let expr_345 := convert_t_bytes1_to_t_uint8(expr_344)
                    /// @src 0:5146:5172  "uint256(uint8(bresult[0]))"
                    let expr_346 := convert_t_uint8_to_t_uint256(expr_345)
                    /// @src 0:5175:5177  "48"
                    let expr_347 := 0x30
                    /// @src 0:5146:5177  "uint256(uint8(bresult[0])) - 48"
                    let expr_348 := checked_sub_t_uint256(expr_346, convert_t_rational_48_by_1_to_t_uint256(expr_347))

                    /// @src 0:5139:5177  "return uint256(uint8(bresult[0])) - 48"
                    var__304 := expr_348
                    leave
                    /// @src 0:5048:5525  "if ((bresult[0] >= bytes1(uint8(48))) && (bresult[0] <= bytes1(uint8(57)))) {..."
                }

            }
            /// @src 0:2827:7488  "library ECTools {..."

            function cleanup_t_rational_32_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_32_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_32_by_1(value)))
            }

            /// @ast-id 451
            /// @src 0:5696:5853  "function uintToBytes32(uint256 _uint) public pure returns (bytes memory b) {..."
            function fun_uintToBytes32_451(var__uint_437) -> var_b_440_mpos {
                /// @src 0:5755:5769  "bytes memory b"
                let zero_t_bytes_memory_ptr_75_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var_b_440_mpos := zero_t_bytes_memory_ptr_75_mpos

                /// @src 0:5796:5798  "32"
                let expr_445 := 0x20
                /// @src 0:5786:5799  "new bytes(32)"
                let _76 := convert_t_rational_32_by_1_to_t_uint256(expr_445)
                let expr_446_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(_76)
                /// @src 0:5782:5799  "b = new bytes(32)"
                var_b_440_mpos := expr_446_mpos
                let _77_mpos := var_b_440_mpos
                let expr_447_mpos := _77_mpos
                /// @src 0:5810:5846  "assembly {mstore(add(b, 32), _uint)}"
                {
                    mstore(add(var_b_440_mpos, 32), var__uint_437)
                }

            }
            /// @src 0:2827:7488  "library ECTools {..."

            function zero_value_for_split_t_bytes32() -> ret {
                ret := 0
            }

            function store_literal_in_memory_9af2d9c228f6cfddaa6d1e5b94e0bce4ab16bd9a472a2b7fbfd74ebff4c720b4(memPtr) {

                mstore(add(memPtr, 0), 0x19457468657265756d205369676e6564204d6573736167653a0a000000000000)

            }

            function copy_literal_to_memory_9af2d9c228f6cfddaa6d1e5b94e0bce4ab16bd9a472a2b7fbfd74ebff4c720b4() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(26)
                store_literal_in_memory_9af2d9c228f6cfddaa6d1e5b94e0bce4ab16bd9a472a2b7fbfd74ebff4c720b4(add(memPtr, 32))
            }

            function convert_t_stringliteral_9af2d9c228f6cfddaa6d1e5b94e0bce4ab16bd9a472a2b7fbfd74ebff4c720b4_to_t_bytes_memory_ptr() -> converted {
                converted := copy_literal_to_memory_9af2d9c228f6cfddaa6d1e5b94e0bce4ab16bd9a472a2b7fbfd74ebff4c720b4()
            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, length)
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

            function abi_encode_tuple_packed_t_bytes_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__to_t_bytes_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                pos := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                end := pos
            }

            function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            /// @ast-id 488
            /// @src 0:5987:6291  "function toEthereumSignedMessage(string memory _msg) public pure returns (bytes32) {..."
            function fun_toEthereumSignedMessage_488(var__msg_453_mpos) -> var__456 {
                /// @src 0:6061:6068  "bytes32"
                let zero_t_bytes32_78 := zero_value_for_split_t_bytes32()
                var__456 := zero_t_bytes32_78

                /// @src 0:6101:6105  "_msg"
                let _79_mpos := var__msg_453_mpos
                let expr_462_mpos := _79_mpos
                /// @src 0:6095:6106  "bytes(_msg)"
                let expr_463_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_462_mpos)
                /// @src 0:6095:6113  "bytes(_msg).length"
                let expr_464 := array_length_t_bytes_memory_ptr(expr_463_mpos)
                /// @src 0:6081:6113  "uint256 len = bytes(_msg).length"
                let var_len_459 := expr_464
                /// @src 0:6132:6135  "len"
                let _80 := var_len_459
                let expr_467 := _80
                /// @src 0:6138:6139  "0"
                let expr_468 := 0x00
                /// @src 0:6132:6139  "len > 0"
                let expr_469 := gt(cleanup_t_uint256(expr_467), convert_t_rational_0_by_1_to_t_uint256(expr_468))
                /// @src 0:6124:6140  "require(len > 0)"
                require_helper(expr_469)
                /// @src 0:6151:6205  "bytes memory prefix = \"\\x19Ethereum Signed Message:\\n\""
                let var_prefix_473_mpos := convert_t_stringliteral_9af2d9c228f6cfddaa6d1e5b94e0bce4ab16bd9a472a2b7fbfd74ebff4c720b4_to_t_bytes_memory_ptr()
                /// @src 0:6250:6256  "prefix"
                let _81_mpos := var_prefix_473_mpos
                let expr_479_mpos := _81_mpos
                /// @src 0:6271:6274  "len"
                let _82 := var_len_459
                let expr_481 := _82
                /// @src 0:6258:6275  "uintToString(len)"
                let expr_482_mpos := fun_uintToString_570(expr_481)
                /// @src 0:6277:6281  "_msg"
                let _83_mpos := var__msg_453_mpos
                let expr_483_mpos := _83_mpos
                /// @src 0:6233:6282  "abi.encodePacked(prefix, uintToString(len), _msg)"

                let expr_484_mpos := allocate_unbounded()
                let _84 := add(expr_484_mpos, 0x20)

                let _85 := abi_encode_tuple_packed_t_bytes_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__to_t_bytes_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_84, expr_479_mpos, expr_482_mpos, expr_483_mpos)
                mstore(expr_484_mpos, sub(_85, add(expr_484_mpos, 0x20)))
                finalize_allocation(expr_484_mpos, sub(_85, expr_484_mpos))
                /// @src 0:6223:6283  "keccak256(abi.encodePacked(prefix, uintToString(len), _msg))"
                let expr_485 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_484_mpos), array_length_t_bytes_memory_ptr(expr_484_mpos))
                /// @src 0:6216:6283  "return keccak256(abi.encodePacked(prefix, uintToString(len), _msg))"
                var__456 := expr_485
                leave

            }
            /// @src 0:2827:7488  "library ECTools {..."

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function convert_t_rational_0_by_1_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_rational_0_by_1(value)))
            }

            function store_literal_in_memory_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73(memPtr) {

                mstore(add(memPtr, 0), 0x19457468657265756d205369676e6564204d6573736167653a0a333200000000)

            }

            function copy_literal_to_memory_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(28)
                store_literal_in_memory_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73(add(memPtr, 32))
            }

            function convert_t_stringliteral_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73_to_t_bytes_memory_ptr() -> converted {
                converted := copy_literal_to_memory_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73()
            }

            function leftAlign_t_bytes32(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes32(cleanup_t_bytes32(value)))
            }

            function abi_encode_tuple_packed_t_bytes_memory_ptr_t_bytes32__to_t_bytes_memory_ptr_t_bytes32__nonPadded_inplace_fromStack(pos , value0, value1) -> end {

                pos := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 32)

                end := pos
            }

            function cleanup_t_rational_132_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_132_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_132_by_1(value)))
            }

            function zero_value_for_split_t_uint8() -> ret {
                ret := 0
            }

            function cleanup_t_rational_27_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_27_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_27_by_1(value)))
            }

            function checked_add_t_uint8(x, y) -> sum {
                x := cleanup_t_uint8(x)
                y := cleanup_t_uint8(y)
                sum := add(x, y)

                if gt(sum, 0xff) { panic_error_0x11() }

            }

            function cleanup_t_rational_28_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_28_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_28_by_1(value)))
            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_t_uint8_to_t_uint8_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
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

            /// @ast-id 165
            /// @src 0:2990:3865  "function recoverSigner(bytes32 _hashedMsg, string memory _sig) public pure returns (address) {..."
            function fun_recoverSigner_165(var__hashedMsg_73, var__sig_75_mpos) -> var__78 {
                /// @src 0:3074:3081  "address"
                let zero_t_address_86 := zero_value_for_split_t_address()
                var__78 := zero_t_address_86

                /// @src 0:3102:3112  "_hashedMsg"
                let _87 := var__hashedMsg_73
                let expr_81 := _87
                /// @src 0:3116:3120  "0x00"
                let expr_82 := 0x00
                /// @src 0:3102:3120  "_hashedMsg != 0x00"
                let expr_83 := iszero(eq(cleanup_t_bytes32(expr_81), convert_t_rational_0_by_1_to_t_bytes32(expr_82)))
                /// @src 0:3094:3121  "require(_hashedMsg != 0x00)"
                require_helper(expr_83)
                /// @src 0:3168:3224  "bytes memory prefix = \"\\x19Ethereum Signed Message:\\n32\""
                let var_prefix_87_mpos := convert_t_stringliteral_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73_to_t_bytes_memory_ptr()
                /// @src 0:3285:3291  "prefix"
                let _88_mpos := var_prefix_87_mpos
                let expr_95_mpos := _88_mpos
                /// @src 0:3293:3303  "_hashedMsg"
                let _89 := var__hashedMsg_73
                let expr_96 := _89
                /// @src 0:3268:3304  "abi.encodePacked(prefix, _hashedMsg)"

                let expr_97_mpos := allocate_unbounded()
                let _90 := add(expr_97_mpos, 0x20)

                let _91 := abi_encode_tuple_packed_t_bytes_memory_ptr_t_bytes32__to_t_bytes_memory_ptr_t_bytes32__nonPadded_inplace_fromStack(_90, expr_95_mpos, expr_96)
                mstore(expr_97_mpos, sub(_91, add(expr_97_mpos, 0x20)))
                finalize_allocation(expr_97_mpos, sub(_91, expr_97_mpos))
                /// @src 0:3258:3305  "keccak256(abi.encodePacked(prefix, _hashedMsg))"
                let expr_98 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_97_mpos), array_length_t_bytes_memory_ptr(expr_97_mpos))
                /// @src 0:3235:3305  "bytes32 prefixedHash = keccak256(abi.encodePacked(prefix, _hashedMsg))"
                let var_prefixedHash_91 := expr_98
                /// @src 0:3327:3331  "_sig"
                let _92_mpos := var__sig_75_mpos
                let expr_102_mpos := _92_mpos
                /// @src 0:3321:3332  "bytes(_sig)"
                let expr_103_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_102_mpos)
                /// @src 0:3321:3339  "bytes(_sig).length"
                let expr_104 := array_length_t_bytes_memory_ptr(expr_103_mpos)
                /// @src 0:3343:3346  "132"
                let expr_105 := 0x84
                /// @src 0:3321:3346  "bytes(_sig).length != 132"
                let expr_106 := iszero(eq(cleanup_t_uint256(expr_104), convert_t_rational_132_by_1_to_t_uint256(expr_105)))
                /// @src 0:3317:3394  "if (bytes(_sig).length != 132) {..."
                if expr_106 {
                    /// @src 0:3378:3381  "0x0"
                    let expr_109 := 0x00
                    /// @src 0:3370:3382  "address(0x0)"
                    let expr_110 := convert_t_rational_0_by_1_to_t_address(expr_109)
                    /// @src 0:3363:3382  "return address(0x0)"
                    var__78 := expr_110
                    leave
                    /// @src 0:3317:3394  "if (bytes(_sig).length != 132) {..."
                }
                /// @src 0:3404:3413  "bytes32 r"
                let var_r_115
                let zero_t_bytes32_93 := zero_value_for_split_t_bytes32()
                var_r_115 := zero_t_bytes32_93
                /// @src 0:3424:3433  "bytes32 s"
                let var_s_118
                let zero_t_bytes32_94 := zero_value_for_split_t_bytes32()
                var_s_118 := zero_t_bytes32_94
                /// @src 0:3444:3451  "uint8 v"
                let var_v_121
                let zero_t_uint8_95 := zero_value_for_split_t_uint8()
                var_v_121 := zero_t_uint8_95
                /// @src 0:3505:3509  "_sig"
                let _96_mpos := var__sig_75_mpos
                let expr_127_mpos := _96_mpos
                /// @src 0:3511:3512  "2"
                let expr_128 := 0x02
                /// @src 0:3514:3517  "132"
                let expr_129 := 0x84
                /// @src 0:3495:3518  "substring(_sig, 2, 132)"
                let _97 := convert_t_rational_2_by_1_to_t_uint256(expr_128)
                let _98 := convert_t_rational_132_by_1_to_t_uint256(expr_129)
                let expr_130_mpos := fun_substring_644(expr_127_mpos, _97, _98)
                /// @src 0:3481:3519  "hexstrToBytes(substring(_sig, 2, 132))"
                let expr_131_mpos := fun_hexstrToBytes_299(expr_130_mpos)
                /// @src 0:3462:3519  "bytes memory sig = hexstrToBytes(substring(_sig, 2, 132))"
                let var_sig_124_mpos := expr_131_mpos
                /// @src 0:3530:3674  "assembly {..."
                {
                    var_r_115 := mload(add(var_sig_124_mpos, 32))
                    var_s_118 := mload(add(var_sig_124_mpos, 64))
                    var_v_121 := byte(0, mload(add(var_sig_124_mpos, 96)))
                }
                /// @src 0:3688:3689  "v"
                let _99 := var_v_121
                let expr_134 := _99
                /// @src 0:3692:3694  "27"
                let expr_135 := 0x1b
                /// @src 0:3688:3694  "v < 27"
                let expr_136 := lt(cleanup_t_uint8(expr_134), convert_t_rational_27_by_1_to_t_uint8(expr_135))
                /// @src 0:3684:3730  "if (v < 27) {..."
                if expr_136 {
                    /// @src 0:3716:3718  "27"
                    let expr_138 := 0x1b
                    /// @src 0:3711:3718  "v += 27"
                    let _100 := convert_t_rational_27_by_1_to_t_uint8(expr_138)
                    let _101 := var_v_121
                    let expr_139 := checked_add_t_uint8(_101, _100)

                    var_v_121 := expr_139
                    /// @src 0:3684:3730  "if (v < 27) {..."
                }
                /// @src 0:3744:3745  "v"
                let _102 := var_v_121
                let expr_143 := _102
                /// @src 0:3748:3750  "27"
                let expr_144 := 0x1b
                /// @src 0:3744:3750  "v < 27"
                let expr_145 := lt(cleanup_t_uint8(expr_143), convert_t_rational_27_by_1_to_t_uint8(expr_144))
                /// @src 0:3744:3760  "v < 27 || v > 28"
                let expr_149 := expr_145
                if iszero(expr_149) {
                    /// @src 0:3754:3755  "v"
                    let _103 := var_v_121
                    let expr_146 := _103
                    /// @src 0:3758:3760  "28"
                    let expr_147 := 0x1c
                    /// @src 0:3754:3760  "v > 28"
                    let expr_148 := gt(cleanup_t_uint8(expr_146), convert_t_rational_28_by_1_to_t_uint8(expr_147))
                    /// @src 0:3744:3760  "v < 27 || v > 28"
                    expr_149 := expr_148
                }
                /// @src 0:3740:3808  "if (v < 27 || v > 28) {..."
                if expr_149 {
                    /// @src 0:3792:3795  "0x0"
                    let expr_152 := 0x00
                    /// @src 0:3784:3796  "address(0x0)"
                    let expr_153 := convert_t_rational_0_by_1_to_t_address(expr_152)
                    /// @src 0:3777:3796  "return address(0x0)"
                    var__78 := expr_153
                    leave
                    /// @src 0:3740:3808  "if (v < 27 || v > 28) {..."
                }
                /// @src 0:3835:3847  "prefixedHash"
                let _104 := var_prefixedHash_91
                let expr_158 := _104
                /// @src 0:3849:3850  "v"
                let _105 := var_v_121
                let expr_159 := _105
                /// @src 0:3852:3853  "r"
                let _106 := var_r_115
                let expr_160 := _106
                /// @src 0:3855:3856  "s"
                let _107 := var_s_118
                let expr_161 := _107
                /// @src 0:3825:3857  "ecrecover(prefixedHash, v, r, s)"

                let _108 := allocate_unbounded()
                let _109 := abi_encode_tuple_t_bytes32_t_uint8_t_bytes32_t_bytes32__to_t_bytes32_t_uint8_t_bytes32_t_bytes32__fromStack(_108 , expr_158, expr_159, expr_160, expr_161)

                mstore(0, 0)

                let _110 := staticcall(gas(), 1 , _108, sub(_109, _108), 0, 32)

                if iszero(_110) { revert_forward_1() }

                let expr_162 := shift_left_0(mload(0))
                /// @src 0:3818:3857  "return ecrecover(prefixedHash, v, r, s)"
                var__78 := expr_162
                leave

            }
            /// @src 0:2827:7488  "library ECTools {..."

            function cleanup_t_rational_10_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10_by_1(value)))
            }

            function convert_t_uint256_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_uint256(value)))
            }

            function decrement_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0x00) { panic_error_0x11() }
                ret := sub(value, 1)
            }

            /// @ast-id 570
            /// @src 0:6342:6834  "function uintToString(uint256 _uint) public pure returns (string memory str) {..."
            function fun_uintToString_570(var__uint_490) -> var_str_493_mpos {
                /// @src 0:6400:6417  "string memory str"
                let zero_t_string_memory_ptr_111_mpos := zero_value_for_split_t_string_memory_ptr()
                var_str_493_mpos := zero_t_string_memory_ptr_111_mpos

                /// @src 0:6444:6445  "0"
                let expr_497 := 0x00
                /// @src 0:6430:6445  "uint256 len = 0"
                let var_len_496 := convert_t_rational_0_by_1_to_t_uint256(expr_497)
                /// @src 0:6468:6473  "_uint"
                let _112 := var__uint_490
                let expr_501 := _112
                /// @src 0:6476:6477  "0"
                let expr_502 := 0x00
                /// @src 0:6468:6477  "_uint + 0"
                let expr_503 := checked_add_t_uint256(expr_501, convert_t_rational_0_by_1_to_t_uint256(expr_502))

                /// @src 0:6456:6477  "uint256 m = _uint + 0"
                let var_m_500 := expr_503
                /// @src 0:6488:6557  "while (m != 0) {..."
                for {
                    } 1 {
                }
                {
                    /// @src 0:6495:6496  "m"
                    let _113 := var_m_500
                    let expr_505 := _113
                    /// @src 0:6500:6501  "0"
                    let expr_506 := 0x00
                    /// @src 0:6495:6501  "m != 0"
                    let expr_507 := iszero(eq(cleanup_t_uint256(expr_505), convert_t_rational_0_by_1_to_t_uint256(expr_506)))
                    if iszero(expr_507) { break }
                    /// @src 0:6518:6523  "len++"
                    let _115 := var_len_496
                    let _114 := increment_t_uint256(_115)
                    var_len_496 := _114
                    let expr_509 := _115
                    /// @src 0:6543:6545  "10"
                    let expr_512 := 0x0a
                    /// @src 0:6538:6545  "m /= 10"
                    let _116 := convert_t_rational_10_by_1_to_t_uint256(expr_512)
                    let _117 := var_m_500
                    let expr_513 := checked_div_t_uint256(_117, _116)

                    var_m_500 := expr_513
                }
                /// @src 0:6594:6597  "len"
                let _118 := var_len_496
                let expr_521 := _118
                /// @src 0:6584:6598  "new bytes(len)"
                let expr_522_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(expr_521)
                /// @src 0:6567:6598  "bytes memory b = new bytes(len)"
                let var_b_518_mpos := expr_522_mpos
                /// @src 0:6621:6624  "len"
                let _119 := var_len_496
                let expr_526 := _119
                /// @src 0:6627:6628  "1"
                let expr_527 := 0x01
                /// @src 0:6621:6628  "len - 1"
                let expr_528 := checked_sub_t_uint256(expr_526, convert_t_rational_1_by_1_to_t_uint256(expr_527))

                /// @src 0:6609:6628  "uint256 i = len - 1"
                let var_i_525 := expr_528
                /// @src 0:6639:6801  "while (_uint != 0) {..."
                for {
                    } 1 {
                }
                {
                    /// @src 0:6646:6651  "_uint"
                    let _120 := var__uint_490
                    let expr_530 := _120
                    /// @src 0:6655:6656  "0"
                    let expr_531 := 0x00
                    /// @src 0:6646:6656  "_uint != 0"
                    let expr_532 := iszero(eq(cleanup_t_uint256(expr_530), convert_t_rational_0_by_1_to_t_uint256(expr_531)))
                    if iszero(expr_532) { break }
                    /// @src 0:6693:6698  "_uint"
                    let _121 := var__uint_490
                    let expr_535 := _121
                    /// @src 0:6701:6703  "10"
                    let expr_536 := 0x0a
                    /// @src 0:6693:6703  "_uint % 10"
                    let expr_537 := mod_t_uint256(expr_535, convert_t_rational_10_by_1_to_t_uint256(expr_536))

                    /// @src 0:6673:6703  "uint256 remainder = _uint % 10"
                    let var_remainder_534 := expr_537
                    /// @src 0:6726:6731  "_uint"
                    let _122 := var__uint_490
                    let expr_540 := _122
                    /// @src 0:6734:6736  "10"
                    let expr_541 := 0x0a
                    /// @src 0:6726:6736  "_uint / 10"
                    let expr_542 := checked_div_t_uint256(expr_540, convert_t_rational_10_by_1_to_t_uint256(expr_541))

                    /// @src 0:6718:6736  "_uint = _uint / 10"
                    var__uint_490 := expr_542
                    let expr_543 := expr_542
                    /// @src 0:6773:6775  "48"
                    let expr_553 := 0x30
                    /// @src 0:6778:6787  "remainder"
                    let _123 := var_remainder_534
                    let expr_554 := _123
                    /// @src 0:6773:6787  "48 + remainder"
                    let expr_555 := checked_add_t_uint256(convert_t_rational_48_by_1_to_t_uint256(expr_553), expr_554)

                    /// @src 0:6767:6788  "uint8(48 + remainder)"
                    let expr_556 := convert_t_uint256_to_t_uint8(expr_555)
                    /// @src 0:6760:6789  "bytes1(uint8(48 + remainder))"
                    let expr_557 := convert_t_uint8_to_t_bytes1(expr_556)
                    /// @src 0:6751:6752  "b"
                    let _124_mpos := var_b_518_mpos
                    let expr_545_mpos := _124_mpos
                    /// @src 0:6753:6756  "i--"
                    let _126 := var_i_525
                    let _125 := decrement_t_uint256(_126)
                    var_i_525 := _125
                    let expr_547 := _126
                    /// @src 0:6751:6789  "b[i--] = bytes1(uint8(48 + remainder))"
                    let _127 := expr_557
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_545_mpos, expr_547), byte(0, _127))
                    let expr_558 := expr_557
                }
                /// @src 0:6824:6825  "b"
                let _128_mpos := var_b_518_mpos
                let expr_565_mpos := _128_mpos
                /// @src 0:6817:6826  "string(b)"
                let expr_566_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_565_mpos)
                /// @src 0:6811:6826  "str = string(b)"
                var_str_493_mpos := expr_566_mpos
                let _129_mpos := var_str_493_mpos
                let expr_567_mpos := _129_mpos

            }
            /// @src 0:2827:7488  "library ECTools {..."

        }

        data ".metadata" hex"a26469706673582212200280c049f2a2f1519281b75e036b4725af5693dbd0c57e498128d06d7820df6f64736f6c634300081e0033"
    }

}

}
