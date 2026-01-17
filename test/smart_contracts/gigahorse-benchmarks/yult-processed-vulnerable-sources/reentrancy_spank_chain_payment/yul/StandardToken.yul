
/// @use-src 0:"src/LedgerChannel.sol"
object "StandardToken_818" {
    code {
        /// @src 0:7490:9420  "contract StandardToken is Token {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_StandardToken_818()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("StandardToken_818_deployed"), datasize("StandardToken_818_deployed"))

        return(_1, datasize("StandardToken_818_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:7490:9420  "contract StandardToken is Token {..."
        function constructor_StandardToken_818() {

            /// @src 0:7490:9420  "contract StandardToken is Token {..."
            constructor_Token_71()

        }
        /// @src 0:7490:9420  "contract StandardToken is Token {..."

        /// @src 0:431:2824  "abstract contract Token {..."
        function constructor_Token_71() {

            /// @src 0:431:2824  "abstract contract Token {..."

        }
        /// @src 0:7490:9420  "contract StandardToken is Token {..."

    }
    /// @use-src 0:"src/LedgerChannel.sol"
    object "StandardToken_818_deployed" {
        code {
            /// @src 0:7490:9420  "contract StandardToken is Token {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

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

                case 0x70a08231
                {
                    // balanceOf(address)

                    external_fun_balanceOf_761()
                }

                case 0xa9059cbb
                {
                    // transfer(address,uint256)

                    external_fun_transfer_689()
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

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

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
            /// @src 0:7490:9420  "contract StandardToken is Token {..."

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

            function external_fun_transfer_689() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_transfer_689(param_0, param_1)
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
            /// @src 0:7490:9420  "contract StandardToken is Token {..."

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
            /// @src 0:7490:9420  "contract StandardToken is Token {..."

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
            /// @src 0:7490:9420  "contract StandardToken is Token {..."

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
            /// @src 0:7490:9420  "contract StandardToken is Token {..."

            /// @ast-id 807
            /// @src 0:9157:9308  "function allowance(address _owner, address _spender) override public view returns (uint256 remaining) {..."
            function fun_allowance_807(var__owner_792, var__spender_794) -> var_remaining_798 {
                /// @src 0:9240:9257  "uint256 remaining"
                let zero_t_uint256_79 := zero_value_for_split_t_uint256()
                var_remaining_798 := zero_t_uint256_79

                /// @src 0:9275:9282  "allowed"
                let _80_slot := 0x02
                let expr_800_slot := _80_slot
                /// @src 0:9283:9289  "_owner"
                let _81 := var__owner_792
                let expr_801 := _81
                /// @src 0:9275:9290  "allowed[_owner]"
                let _82 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_800_slot,expr_801)
                let _83_slot := _82
                let expr_802_slot := _83_slot
                /// @src 0:9291:9299  "_spender"
                let _84 := var__spender_794
                let expr_803 := _84
                /// @src 0:9275:9300  "allowed[_owner][_spender]"
                let _85 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_802_slot,expr_803)
                let _86 := read_from_storage_split_offset_0_t_uint256(_85)
                let expr_804 := _86
                /// @src 0:9268:9300  "return allowed[_owner][_spender]"
                var_remaining_798 := expr_804
                leave

            }
            /// @src 0:7490:9420  "contract StandardToken is Token {..."

        }

        data ".metadata" hex"a264697066735822122073658bea03948a76cabef10af9968f2199a687ae97d54c93198131eb4737333164736f6c634300081e0033"
    }

}

