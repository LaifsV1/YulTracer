
/// @use-src 0:"src/Reentrance.sol"
object "Reentrance_69" {
    code {
        /// @src 0:191:749  "contract Reentrance {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_Reentrance_69()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Reentrance_69_deployed"), datasize("Reentrance_69_deployed"))

        return(_1, datasize("Reentrance_69_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:191:749  "contract Reentrance {..."
        function constructor_Reentrance_69() {

            /// @src 0:191:749  "contract Reentrance {..."

        }
        /// @src 0:191:749  "contract Reentrance {..."

    }
    /// @use-src 0:"src/Reentrance.sol"
    object "Reentrance_69_deployed" {
        code {
            /// @src 0:191:749  "contract Reentrance {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x00362a95
                {
                    // donate(address)

                    external_fun_donate_18()
                }

                case 0x27e235e3
                {
                    // balances(address)

                    external_fun_balances_5()
                }

                case 0x2e1a7d4d
                {
                    // withdraw(uint256)

                    external_fun_withdraw_64()
                }

                case 0x70a08231
                {
                    // balanceOf(address)

                    external_fun_balanceOf_30()
                }

                default {}
            }
            if iszero(calldatasize()) { fun__68() stop() }
            revert_error_d228b4ceac16d8e91d6dc7ca8d4a5394f524b2e550555324088cb23b86b87b98()

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

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_donate_18() {

                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                fun_donate_18(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
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

            /// @ast-id 5
            /// @src 0:216:259  "mapping(address => uint256) public balances"
            function getter_fun_balances_5(key_0) -> ret {

                let slot := 0
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 0:191:749  "contract Reentrance {..."

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_balances_5() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  getter_fun_balances_5(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

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

            function external_fun_withdraw_64() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                fun_withdraw_64(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_balanceOf_30() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  fun_balanceOf_30(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_d228b4ceac16d8e91d6dc7ca8d4a5394f524b2e550555324088cb23b86b87b98() {
                revert(0, 0)
            }

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

            function update_storage_value_offset_0_t_uint256_to_t_uint256(slot, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
            }

            /// @ast-id 18
            /// @src 0:264:345  "function donate(address _to) public payable {..."
            function fun_donate_18(var__to_7) {

                /// @src 0:331:340  "msg.value"
                let expr_14 := callvalue()
                /// @src 0:314:322  "balances"
                let _1_slot := 0x00
                let expr_10_slot := _1_slot
                /// @src 0:323:326  "_to"
                let _2 := var__to_7
                let expr_11 := _2
                /// @src 0:314:327  "balances[_to]"
                let _3 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_10_slot,expr_11)
                /// @src 0:314:340  "balances[_to] += msg.value"
                let _4 := read_from_storage_split_offset_0_t_uint256(_3)
                let expr_15 := checked_add_t_uint256(_4, expr_14)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_3, expr_15)

            }
            /// @src 0:191:749  "contract Reentrance {..."

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

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            /// @ast-id 64
            /// @src 0:456:712  "function withdraw(uint256 _amount) public {..."
            function fun_withdraw_64(var__amount_32) {

                /// @src 0:507:515  "balances"
                let _5_slot := 0x00
                let expr_35_slot := _5_slot
                /// @src 0:516:526  "msg.sender"
                let expr_37 := caller()
                /// @src 0:507:527  "balances[msg.sender]"
                let _6 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_35_slot,expr_37)
                let _7 := read_from_storage_split_offset_0_t_uint256(_6)
                let expr_38 := _7
                /// @src 0:531:538  "_amount"
                let _8 := var__amount_32
                let expr_39 := _8
                /// @src 0:507:538  "balances[msg.sender] >= _amount"
                let expr_40 := iszero(lt(cleanup_t_uint256(expr_38), cleanup_t_uint256(expr_39)))
                /// @src 0:504:708  "if(balances[msg.sender] >= _amount) {..."
                if expr_40 {
                    /// @src 0:599:609  "msg.sender"
                    let expr_44 := caller()
                    /// @src 0:599:614  "msg.sender.call"
                    let expr_45_address := expr_44
                    /// @src 0:622:629  "_amount"
                    let _9 := var__amount_32
                    let expr_46 := _9
                    /// @src 0:599:630  "msg.sender.call{value: _amount}"
                    let expr_47_address := expr_45_address
                    let expr_47_value := expr_46
                    /// @src 0:599:634  "msg.sender.call{value: _amount}(\"\")"

                    let _10 := allocate_unbounded()
                    let _11 := sub(abi_encode_tuple_packed_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_10  ), _10)

                    let expr_49_component_1 := call(gas(), expr_47_address,  expr_47_value,  _10, _11, 0, 0)

                    let expr_49_component_2_mpos := extract_returndata()
                    /// @src 0:583:634  "(bool sent, ) = msg.sender.call{value: _amount}(\"\")"
                    let var_sent_42 := expr_49_component_1
                    /// @src 0:646:650  "sent"
                    let _12 := var_sent_42
                    let expr_51 := _12
                    /// @src 0:642:702  "if (sent) {..."
                    if expr_51 {
                        /// @src 0:686:693  "_amount"
                        let _13 := var__amount_32
                        let expr_56 := _13
                        /// @src 0:662:670  "balances"
                        let _14_slot := 0x00
                        let expr_52_slot := _14_slot
                        /// @src 0:671:681  "msg.sender"
                        let expr_54 := caller()
                        /// @src 0:662:682  "balances[msg.sender]"
                        let _15 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_52_slot,expr_54)
                        /// @src 0:662:693  "balances[msg.sender] -= _amount"
                        let _16 := read_from_storage_split_offset_0_t_uint256(_15)
                        let expr_57 := checked_sub_t_uint256(_16, expr_56)

                        update_storage_value_offset_0_t_uint256_to_t_uint256(_15, expr_57)
                        /// @src 0:642:702  "if (sent) {..."
                    }
                    /// @src 0:504:708  "if(balances[msg.sender] >= _amount) {..."
                }

            }
            /// @src 0:191:749  "contract Reentrance {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            /// @ast-id 30
            /// @src 0:349:452  "function balanceOf(address _who) public view returns (uint256 balance) {..."
            function fun_balanceOf_30(var__who_20) -> var_balance_23 {
                /// @src 0:403:418  "uint256 balance"
                let zero_t_uint256_17 := zero_value_for_split_t_uint256()
                var_balance_23 := zero_t_uint256_17

                /// @src 0:433:441  "balances"
                let _18_slot := 0x00
                let expr_25_slot := _18_slot
                /// @src 0:442:446  "_who"
                let _19 := var__who_20
                let expr_26 := _19
                /// @src 0:433:447  "balances[_who]"
                let _20 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_25_slot,expr_26)
                let _21 := read_from_storage_split_offset_0_t_uint256(_20)
                let expr_27 := _21
                /// @src 0:426:447  "return balances[_who]"
                var_balance_23 := expr_27
                leave

            }
            /// @src 0:191:749  "contract Reentrance {..."

            /// @ast-id 68
            /// @src 0:716:747  "receive() external payable {..."
            function fun__68() {

            }
            /// @src 0:191:749  "contract Reentrance {..."

        }

        data ".metadata" hex"a2646970667358221220dc4597889ac0b93364f046aef57754eb45d4a521304b68139e094f5fc23b96d864736f6c634300081e0033"
    }

}

