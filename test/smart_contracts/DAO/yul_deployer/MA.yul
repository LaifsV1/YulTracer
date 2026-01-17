/// @use-src 1:"ManagedAccount.sol"
object "ManagedAccount_2565" {
    code {
        /// @src 1:1572:2464  "contract ManagedAccount is ManagedAccountInterface{..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1, _2 := copy_arguments_for_constructor_2500_object_ManagedAccount_2565()
        constructor_ManagedAccount_2565(_1, _2)

        let _3 := allocate_unbounded()
        codecopy(_3, dataoffset("ManagedAccount_2565_deployed"), datasize("ManagedAccount_2565_deployed"))

        return(_3, datasize("ManagedAccount_2565_deployed"))

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

        function cleanup_t_bool(value) -> cleaned {
            cleaned := iszero(iszero(value))
        }

        function validator_revert_t_bool(value) {
            if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
        }

        function abi_decode_t_bool_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_bool(value)
        }

        function abi_decode_tuple_t_addresst_bool_fromMemory(headStart, dataEnd) -> value0, value1 {
            if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            {

                let offset := 0

                value0 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 32

                value1 := abi_decode_t_bool_fromMemory(add(headStart, offset), dataEnd)
            }

        }

        function copy_arguments_for_constructor_2500_object_ManagedAccount_2565() -> ret_param_0, ret_param_1 {
            let programSize := datasize("ManagedAccount_2565")
            let argSize := sub(codesize(), programSize)

            let memoryDataOffset := allocate_memory(argSize)
            codecopy(memoryDataOffset, programSize, argSize)

            ret_param_0, ret_param_1 := abi_decode_tuple_t_addresst_bool_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function update_byte_slice_20_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
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

        function prepare_store_t_address(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_0t_address_to_t_address(slot, value_0) {
            let convertedValue_0 := convert_t_address_to_t_address(value_0)
            sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(convertedValue_0)))
        }

        function shift_left_160(value) -> newValue {
            newValue :=

            shl(160, value)

        }

        function update_byte_slice_1_shift_20(value, toInsert) -> result {
            let mask := 0xff0000000000000000000000000000000000000000
            toInsert := shift_left_160(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function convert_t_bool_to_t_bool(value) -> converted {
            converted := cleanup_t_bool(value)
        }

        function prepare_store_t_bool(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_20t_bool_to_t_bool(slot, value_0) {
            let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
            sstore(slot, update_byte_slice_1_shift_20(sload(slot), prepare_store_t_bool(convertedValue_0)))
        }

        /// @ast-id 2500
        /// @src 1:1682:1799  "constructor(address _owner, bool _payOwnerOnly) {..."
        function constructor_ManagedAccount_2565(var__owner_2486, var__payOwnerOnly_2488) {

            /// @src 1:1682:1799  "constructor(address _owner, bool _payOwnerOnly) {..."
            constructor_ManagedAccountInterface_2482()

            /// @src 1:1748:1754  "_owner"
            let _4 := var__owner_2486
            let expr_2492 := _4
            /// @src 1:1740:1754  "owner = _owner"
            update_storage_value_offset_0t_address_to_t_address(0x00, expr_2492)
            let expr_2493 := expr_2492
            /// @src 1:1779:1792  "_payOwnerOnly"
            let _5 := var__payOwnerOnly_2488
            let expr_2496 := _5
            /// @src 1:1764:1792  "payOwnerOnly = _payOwnerOnly"
            update_storage_value_offset_20t_bool_to_t_bool(0x00, expr_2496)
            let expr_2497 := expr_2496

        }
        /// @src 1:1572:2464  "contract ManagedAccount is ManagedAccountInterface{..."

        /// @src 1:840:1569  "abstract contract ManagedAccountInterface {..."
        function constructor_ManagedAccountInterface_2482() {

            /// @src 1:840:1569  "abstract contract ManagedAccountInterface {..."

        }
        /// @src 1:1572:2464  "contract ManagedAccount is ManagedAccountInterface{..."

    }
    /// @use-src 1:"ManagedAccount.sol"
    object "ManagedAccount_2565_deployed" {
        code {
            /// @src 1:1572:2464  "contract ManagedAccount is ManagedAccountInterface{..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x0221038a
                {
                    // payOut(address,uint256)

                    external_fun_payOut_2564()
                }

                case 0x18bdc79a
                {
                    // payOwnerOnly()

                    external_fun_payOwnerOnly_2463()
                }

                case 0x8da5cb5b
                {
                    // owner()

                    external_fun_owner_2461()
                }

                case 0xd2cc718f
                {
                    // accumulatedInput()

                    external_fun_accumulatedInput_2465()
                }

                default {}
            }

            fun__2509() stop()

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

            function external_fun_payOut_2564() {

                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_payOut_2564(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

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

            /// @ast-id 2463
            /// @src 1:1056:1080  "bool public payOwnerOnly"
            function getter_fun_payOwnerOnly_2463() -> ret {

                let slot := 0
                let offset := 20

                ret := read_from_storage_split_dynamic_t_bool(slot, offset)

            }
            /// @src 1:1572:2464  "contract ManagedAccount is ManagedAccountInterface{..."

            function external_fun_payOwnerOnly_2463() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_payOwnerOnly_2463()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_from_storage_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_dynamict_address(slot_value, offset) -> value {
                value := cleanup_from_storage_t_address(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_address(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_address(sload(slot), offset)

            }

            /// @ast-id 2461
            /// @src 1:958:978  "address public owner"
            function getter_fun_owner_2461() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_split_dynamic_t_address(slot, offset)

            }
            /// @src 1:1572:2464  "contract ManagedAccount is ManagedAccountInterface{..."

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_owner_2461() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_owner_2461()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

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

            /// @ast-id 2465
            /// @src 1:1156:1184  "uint public accumulatedInput"
            function getter_fun_accumulatedInput_2465() -> ret {

                let slot := 1
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 1:1572:2464  "contract ManagedAccount is ManagedAccountInterface{..."

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_accumulatedInput_2465() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_accumulatedInput_2465()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function extract_from_storage_value_offset_0t_address(slot_value) -> value {
                value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_address(slot) -> value {
                value := extract_from_storage_value_offset_0t_address(sload(slot))

            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function shift_right_160_unsigned(value) -> newValue {
                newValue :=

                shr(160, value)

            }

            function extract_from_storage_value_offset_20t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_160_unsigned(slot_value))
            }

            function read_from_storage_split_offset_20_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_20t_bool(sload(slot))

            }

            function panic_error_0x01() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x01)
                revert(0, 0x24)
            }

            function assert_helper(condition) {
                if iszero(condition) { panic_error_0x01() }
            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(memPtr) {

            }

            function abi_encode_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, 0)
                store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(pos)
                end := add(pos, 0)
            }

            function abi_encode_tuple_packed_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(pos ) -> end {

                pos := abi_encode_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack( pos)

                end := pos
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

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            /// @ast-id 2564
            /// @src 1:2055:2462  "function payOut(address _recipient, uint _amount) public override payable returns (bool) {..."
            function fun_payOut_2564(var__recipient_2511, var__amount_2513) -> var__2517 {
                /// @src 1:2138:2142  "bool"
                let zero_t_bool_1 := zero_value_for_split_t_bool()
                var__2517 := zero_t_bool_1

                /// @src 1:2163:2173  "msg.sender"
                let expr_2521 := caller()
                /// @src 1:2177:2182  "owner"
                let _2 := read_from_storage_split_offset_0_t_address(0x00)
                let expr_2522 := _2
                /// @src 1:2163:2182  "msg.sender != owner"
                let expr_2523 := iszero(eq(cleanup_t_address(expr_2521), cleanup_t_address(expr_2522)))
                /// @src 1:2163:2199  "msg.sender != owner || msg.value > 0"
                let expr_2528 := expr_2523
                if iszero(expr_2528) {
                    /// @src 1:2186:2195  "msg.value"
                    let expr_2525 := callvalue()
                    /// @src 1:2198:2199  "0"
                    let expr_2526 := 0x00
                    /// @src 1:2186:2199  "msg.value > 0"
                    let expr_2527 := gt(cleanup_t_uint256(expr_2525), convert_t_rational_0_by_1_to_t_uint256(expr_2526))
                    /// @src 1:2163:2199  "msg.sender != owner || msg.value > 0"
                    expr_2528 := expr_2527
                }
                /// @src 1:2163:2240  "msg.sender != owner || msg.value > 0 || (payOwnerOnly && _recipient != owner)"
                let expr_2535 := expr_2528
                if iszero(expr_2535) {
                    /// @src 1:2204:2216  "payOwnerOnly"
                    let _3 := read_from_storage_split_offset_20_t_bool(0x00)
                    let expr_2529 := _3
                    /// @src 1:2204:2239  "payOwnerOnly && _recipient != owner"
                    let expr_2533 := expr_2529
                    if expr_2533 {
                        /// @src 1:2220:2230  "_recipient"
                        let _4 := var__recipient_2511
                        let expr_2530 := _4
                        /// @src 1:2234:2239  "owner"
                        let _5 := read_from_storage_split_offset_0_t_address(0x00)
                        let expr_2531 := _5
                        /// @src 1:2220:2239  "_recipient != owner"
                        let expr_2532 := iszero(eq(cleanup_t_address(expr_2530), cleanup_t_address(expr_2531)))
                        /// @src 1:2204:2239  "payOwnerOnly && _recipient != owner"
                        expr_2533 := expr_2532
                    }
                    /// @src 1:2203:2240  "(payOwnerOnly && _recipient != owner)"
                    let expr_2534 := expr_2533
                    /// @src 1:2163:2240  "msg.sender != owner || msg.value > 0 || (payOwnerOnly && _recipient != owner)"
                    expr_2535 := expr_2534
                }
                /// @src 1:2162:2241  "(msg.sender != owner || msg.value > 0 || (payOwnerOnly && _recipient != owner))"
                let expr_2536 := expr_2535
                /// @src 1:2161:2241  "!(msg.sender != owner || msg.value > 0 || (payOwnerOnly && _recipient != owner))"
                let expr_2537 := cleanup_t_bool(iszero(expr_2536))
                /// @src 1:2154:2242  "assert(!(msg.sender != owner || msg.value > 0 || (payOwnerOnly && _recipient != owner)))"
                assert_helper(expr_2537)
                /// @src 1:2272:2282  "_recipient"
                let _6 := var__recipient_2511
                let expr_2542 := _6
                /// @src 1:2272:2287  "_recipient.call"
                let expr_2543_address := expr_2542
                /// @src 1:2295:2302  "_amount"
                let _7 := var__amount_2513
                let expr_2544 := _7
                /// @src 1:2272:2303  "_recipient.call{value: _amount}"
                let expr_2545_address := expr_2543_address
                let expr_2545_value := expr_2544
                /// @src 1:2272:2307  "_recipient.call{value: _amount}(\"\")"

                let _8 := allocate_unbounded()
                let _9 := sub(abi_encode_tuple_packed_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_8  ), _8)

                let expr_2547_component_1 := call(gas(), expr_2545_address,  expr_2545_value,  _8, _9, 0, 0)
                let expr_2547_component_2_mpos := extract_returndata()
                /// @src 1:2271:2308  "(_recipient.call{value: _amount}(\"\"))"
                let expr_2548_component_1 := expr_2547_component_1
                let expr_2548_component_2_mpos := expr_2547_component_2_mpos
                /// @src 1:2252:2308  "(bool success, ) = (_recipient.call{value: _amount}(\"\"))"
                let var_success_2541 := expr_2548_component_1
                /// @src 1:2322:2329  "success"
                let _10 := var_success_2541
                let expr_2550 := _10
                /// @src 1:2318:2456  "if (success) {..."
                switch expr_2550
                case 0 {
                    /// @src 1:2440:2445  "false"
                    let expr_2559 := 0x00
                    /// @src 1:2433:2445  "return false"
                    var__2517 := expr_2559
                    leave
                    /// @src 1:2318:2456  "if (success) {..."
                }
                default {
                    /// @src 1:2357:2367  "_recipient"
                    let _11 := var__recipient_2511
                    let expr_2552 := _11
                    /// @src 1:2369:2376  "_amount"
                    let _12 := var__amount_2513
                    let expr_2553 := _12
                    /// @src 1:2350:2377  "PayOut(_recipient, _amount)"
                    let _13 := 0x9735b0cb909f3d21d5c16bbcccd272d85fa11446f6d679f6ecb170d2dabfecfc
                    let _14 := convert_t_address_to_t_address(expr_2552)
                    {
                        let _15 := allocate_unbounded()
                        let _16 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_15 , expr_2553)
                        log2(_15, sub(_16, _15) , _13, _14)
                    }/// @src 1:2398:2402  "true"
                    let expr_2556 := 0x01
                    /// @src 1:2391:2402  "return true"
                    var__2517 := expr_2556
                    leave
                    /// @src 1:2318:2456  "if (success) {..."
                }

            }
            /// @src 1:1572:2464  "contract ManagedAccount is ManagedAccountInterface{..."

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))

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

            function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
            }

            /// @ast-id 2509
            /// @src 1:1975:2049  "fallback() external payable {..."
            function fun__2509() {

                /// @src 1:2033:2042  "msg.value"
                let expr_2505 := callvalue()
                /// @src 1:2013:2042  "accumulatedInput += msg.value"
                let _17 := read_from_storage_split_offset_0_t_uint256(0x01)
                let expr_2506 := checked_add_t_uint256(_17, expr_2505)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x01, expr_2506)

            }
            /// @src 1:1572:2464  "contract ManagedAccount is ManagedAccountInterface{..."

        }

        data ".metadata" hex"a2646970667358221220f1ef034fa7aae499516309c42eab3036bfa4afaf03a4480b5c5a97d431860c8e64736f6c63430008180033"
    }

}

