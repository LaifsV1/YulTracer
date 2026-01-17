
/// @use-src 1:"PredyParticipant.sol", 52:"src/interfaces/IHooks.sol"
object "PredyParticipant_697" {
    code {
        /// @src 1:342:3462  "contract PredyParticipant is IHooks {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1, _2, _3, _4 := copy_arguments_for_constructor_423_object_PredyParticipant_697()
        constructor_PredyParticipant_697(_1, _2, _3, _4)

        let _5 := allocate_unbounded()
        codecopy(_5, dataoffset("PredyParticipant_697_deployed"), datasize("PredyParticipant_697_deployed"))

        return(_5, datasize("PredyParticipant_697_deployed"))

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

        function cleanup_t_contract$_AERC20_$344(value) -> cleaned {
            cleaned := cleanup_t_address(value)
        }

        function validator_revert_t_contract$_AERC20_$344(value) {
            if iszero(eq(value, cleanup_t_contract$_AERC20_$344(value))) { revert(0, 0) }
        }

        function abi_decode_t_contract$_AERC20_$344_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_contract$_AERC20_$344(value)
        }

        function cleanup_t_uint24(value) -> cleaned {
            cleaned := and(value, 0xffffff)
        }

        function validator_revert_t_uint24(value) {
            if iszero(eq(value, cleanup_t_uint24(value))) { revert(0, 0) }
        }

        function abi_decode_t_uint24_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_uint24(value)
        }

        function cleanup_t_contract$___Yult__Toolbox_$1132(value) -> cleaned {
            cleaned := cleanup_t_address(value)
        }

        function validator_revert_t_contract$___Yult__Toolbox_$1132(value) {
            if iszero(eq(value, cleanup_t_contract$___Yult__Toolbox_$1132(value))) { revert(0, 0) }
        }

        function abi_decode_t_contract$___Yult__Toolbox_$1132_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_contract$___Yult__Toolbox_$1132(value)
        }

        function abi_decode_tuple_t_contract$_AERC20_$344t_contract$_AERC20_$344t_uint24t_contract$___Yult__Toolbox_$1132_fromMemory(headStart, dataEnd) -> value0, value1, value2, value3 {
            if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            {

                let offset := 0

                value0 := abi_decode_t_contract$_AERC20_$344_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 32

                value1 := abi_decode_t_contract$_AERC20_$344_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 64

                value2 := abi_decode_t_uint24_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 96

                value3 := abi_decode_t_contract$___Yult__Toolbox_$1132_fromMemory(add(headStart, offset), dataEnd)
            }

        }

        function copy_arguments_for_constructor_423_object_PredyParticipant_697() -> ret_param_0, ret_param_1, ret_param_2, ret_param_3 {

            let programSize := datasize("PredyParticipant_697")
            let argSize := sub(codesize(), programSize)

            let memoryDataOffset := allocate_memory(argSize)
            codecopy(memoryDataOffset, programSize, argSize)

            ret_param_0, ret_param_1, ret_param_2, ret_param_3 := abi_decode_tuple_t_contract$_AERC20_$344t_contract$_AERC20_$344t_uint24t_contract$___Yult__Toolbox_$1132_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
        }

        function shift_left_160(value) -> newValue {
            newValue :=

            shl(160, value)

        }

        function update_byte_slice_3_shift_20(value, toInsert) -> result {
            let mask := 0xffffff0000000000000000000000000000000000000000
            toInsert := shift_left_160(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function cleanup_t_rational_0_by_1(value) -> cleaned {
            cleaned := value
        }

        function identity(value) -> ret {
            ret := value
        }

        function convert_t_rational_0_by_1_to_t_uint24(value) -> converted {
            converted := cleanup_t_uint24(identity(cleanup_t_rational_0_by_1(value)))
        }

        function prepare_store_t_uint24(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_20_t_rational_0_by_1_to_t_uint24(slot, value_0) {
            let convertedValue_0 := convert_t_rational_0_by_1_to_t_uint24(value_0)
            sstore(slot, update_byte_slice_3_shift_20(sload(slot), prepare_store_t_uint24(convertedValue_0)))
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

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
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

        function cleanup_t_rational_1000000000000000000_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_1000000000000000000_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_rational_1000000000000000000_by_1(value)))
        }

        function update_storage_value_offset_0_t_rational_1000000000000000000_by_1_to_t_uint256(slot, value_0) {
            let convertedValue_0 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(value_0)
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
        }

        function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
        }

        function convert_t_rational_0_by_1_to_t_address(value) -> converted {
            converted := convert_t_rational_0_by_1_to_t_uint160(value)
        }

        function update_byte_slice_20_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
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

        function update_storage_value_offset_0_t_address_to_t_address(slot, value_0) {
            let convertedValue_0 := convert_t_address_to_t_address(value_0)
            sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(convertedValue_0)))
        }

        function convert_t_uint160_to_t_contract$_AERC20_$344(value) -> converted {
            converted := convert_t_uint160_to_t_uint160(value)
        }

        function convert_t_contract$_AERC20_$344_to_t_contract$_AERC20_$344(value) -> converted {
            converted := convert_t_uint160_to_t_contract$_AERC20_$344(value)
        }

        function prepare_store_t_contract$_AERC20_$344(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_0_t_contract$_AERC20_$344_to_t_contract$_AERC20_$344(slot, value_0) {
            let convertedValue_0 := convert_t_contract$_AERC20_$344_to_t_contract$_AERC20_$344(value_0)
            sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_contract$_AERC20_$344(convertedValue_0)))
        }

        function convert_t_uint160_to_t_contract$___Yult__Toolbox_$1132(value) -> converted {
            converted := convert_t_uint160_to_t_uint160(value)
        }

        function convert_t_contract$___Yult__Toolbox_$1132_to_t_contract$___Yult__Toolbox_$1132(value) -> converted {
            converted := convert_t_uint160_to_t_contract$___Yult__Toolbox_$1132(value)
        }

        function prepare_store_t_contract$___Yult__Toolbox_$1132(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_0_t_contract$___Yult__Toolbox_$1132_to_t_contract$___Yult__Toolbox_$1132(slot, value_0) {
            let convertedValue_0 := convert_t_contract$___Yult__Toolbox_$1132_to_t_contract$___Yult__Toolbox_$1132(value_0)
            sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_contract$___Yult__Toolbox_$1132(convertedValue_0)))
        }

        function convert_t_uint24_to_t_uint24(value) -> converted {
            converted := cleanup_t_uint24(identity(cleanup_t_uint24(value)))
        }

        function update_storage_value_offset_20_t_uint24_to_t_uint24(slot, value_0) {
            let convertedValue_0 := convert_t_uint24_to_t_uint24(value_0)
            sstore(slot, update_byte_slice_3_shift_20(sload(slot), prepare_store_t_uint24(convertedValue_0)))
        }

        /// @ast-id 423
        /// @src 1:688:873  "constructor (AERC20 _tokenA, AERC20 _tokenB, uint24 _poolFee, __Yult__Toolbox _toolbox) {..."
        function constructor_PredyParticipant_697(var__tokenA_395_address, var__tokenB_398_address, var__poolFee_400, var__toolbox_403_address) {

            /// @src 1:688:873  "constructor (AERC20 _tokenA, AERC20 _tokenB, uint24 _poolFee, __Yult__Toolbox _toolbox) {..."
            constructor_IHooks_4158()
            /// @src 1:477:478  "0"
            let expr_370 := 0x00
            update_storage_value_offset_20_t_rational_0_by_1_to_t_uint24(0x02, expr_370)
            /// @src 1:501:502  "0"
            let expr_373 := 0x00
            update_storage_value_offset_0_t_rational_0_by_1_to_t_uint256(0x03, expr_373)
            /// @src 1:632:646  "1 * (10 ** 18)"
            let expr_385 := 0x0de0b6b3a7640000
            update_storage_value_offset_0_t_rational_1000000000000000000_by_1_to_t_uint256(0x05, expr_385)
            /// @src 1:680:681  "0"
            let expr_390 := 0x00
            /// @src 1:672:682  "address(0)"
            let expr_391 := convert_t_rational_0_by_1_to_t_address(expr_390)
            update_storage_value_offset_0_t_address_to_t_address(0x06, expr_391)

            /// @src 1:791:798  "_tokenA"
            let _6_address := var__tokenA_395_address
            let expr_407_address := _6_address
            /// @src 1:782:798  "tokenA = _tokenA"
            update_storage_value_offset_0_t_contract$_AERC20_$344_to_t_contract$_AERC20_$344(0x00, expr_407_address)
            let expr_408_address := expr_407_address
            /// @src 1:813:820  "_tokenB"
            let _7_address := var__tokenB_398_address
            let expr_411_address := _7_address
            /// @src 1:804:820  "tokenB = _tokenB"
            update_storage_value_offset_0_t_contract$_AERC20_$344_to_t_contract$_AERC20_$344(0x01, expr_411_address)
            let expr_412_address := expr_411_address
            /// @src 1:836:844  "_toolbox"
            let _8_address := var__toolbox_403_address
            let expr_415_address := _8_address
            /// @src 1:826:844  "toolbox = _toolbox"
            update_storage_value_offset_0_t_contract$___Yult__Toolbox_$1132_to_t_contract$___Yult__Toolbox_$1132(0x02, expr_415_address)
            let expr_416_address := expr_415_address
            /// @src 1:860:868  "_poolFee"
            let _9 := var__poolFee_400
            let expr_419 := _9
            /// @src 1:850:868  "poolFee = _poolFee"
            update_storage_value_offset_20_t_uint24_to_t_uint24(0x02, expr_419)
            let expr_420 := expr_419

        }
        /// @src 1:342:3462  "contract PredyParticipant is IHooks {..."

        /// @src 52:93:446  "interface IHooks {..."
        function constructor_IHooks_4158() {

            /// @src 52:93:446  "interface IHooks {..."

        }
        /// @src 1:342:3462  "contract PredyParticipant is IHooks {..."

    }
    /// @use-src 1:"PredyParticipant.sol"
    object "PredyParticipant_697_deployed" {
        code {
            /// @src 1:342:3462  "contract PredyParticipant is IHooks {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x085090d6
                {
                    // predySettlementCallback(address,address,bytes,int256)

                    external_fun_predySettlementCallback_678()
                }

                case 0x1f0ba6c9
                {
                    // trade()

                    external_fun_trade_656()
                }

                case 0x7c1d940b
                {
                    // myPredyBalance(bool)

                    external_fun_myPredyBalance_378()
                }

                case 0x944b560b
                {
                    // predyTradeAfterCallback((uint256,uint256,int256,int256,bytes),((int256,int256,int256,int256,int256,int256),uint256,int256,int256,int256,uint256,uint256))

                    external_fun_predyTradeAfterCallback_696()
                }

                case 0xa38f1eb3
                {
                    // withdrawLiquidity(bool)

                    external_fun_withdrawLiquidity_587()
                }

                case 0xacb9f007
                {
                    // take(bool)

                    external_fun_take_635()
                }

                case 0xcf8954a4
                {
                    // createPredyPool()

                    external_fun_createPredyPool_452()
                }

                case 0xe854bf37
                {
                    // supplyLiquidity(bool)

                    external_fun_supplyLiquidity_516()
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

            function cleanup_t_int256(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_int256(value) {
                if iszero(eq(value, cleanup_t_int256(value))) { revert(0, 0) }
            }

            function abi_decode_t_int256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_int256(value)
            }

            function abi_decode_tuple_t_addresst_addresst_bytes_memory_ptrt_int256(headStart, dataEnd) -> value0, value1, value2, value3 {
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

                    let offset := calldataload(add(headStart, 64))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_int256(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_predySettlementCallback_678() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_addresst_addresst_bytes_memory_ptrt_int256(4, calldatasize())
                fun_predySettlementCallback_678(param_0, param_1, param_2, param_3)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function external_fun_trade_656() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_trade_656()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function validator_revert_t_bool(value) {
                if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
            }

            function abi_decode_t_bool(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bool(value)
            }

            function abi_decode_tuple_t_bool(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                }

            }

            function convert_t_bool_to_t_bool(value) -> converted {
                converted := cleanup_t_bool(value)
            }

            function mapping_index_access_t_mapping$_t_bool_$_t_int256_$_of_t_bool(slot , key) -> dataSlot {
                mstore(0, convert_t_bool_to_t_bool(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function cleanup_from_storage_t_int256(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_dynamict_int256(slot_value, offset) -> value {
                value := cleanup_from_storage_t_int256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_int256(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_int256(sload(slot), offset)

            }

            /// @ast-id 378
            /// @src 1:506:551  "mapping(bool => int256) public myPredyBalance"
            function getter_fun_myPredyBalance_378(key_0) -> ret {

                let slot := 4
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_bool_$_t_int256_$_of_t_bool(slot, key_0)

                ret := read_from_storage_split_dynamic_t_int256(slot, offset)

            }
            /// @src 1:342:3462  "contract PredyParticipant is IHooks {..."

            function abi_encode_t_int256_to_t_int256_fromStack(value, pos) {
                mstore(pos, cleanup_t_int256(value))
            }

            function abi_encode_tuple_t_int256__to_t_int256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_int256_to_t_int256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_myPredyBalance_378() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bool(4, calldatasize())
                let ret_0 :=  getter_fun_myPredyBalance_378(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_int256__to_t_int256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() {
                revert(0, 0)
            }

            function revert_error_5e8f644817bc4960744f35c15999b6eff64ae702f94b1c46297cfd4e1aec2421() {
                revert(0, 0)
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

            // struct IPredyPool.TradeParams
            function abi_decode_t_struct$_TradeParams_$2018_memory_ptr(headStart, end) -> value {
                if slt(sub(end, headStart), 0xa0) { revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() }
                value := allocate_memory(0xa0)

                {
                    // pairId

                    let offset := 0

                    mstore(add(value, 0x00), abi_decode_t_uint256(add(headStart, offset), end))

                }

                {
                    // vaultId

                    let offset := 32

                    mstore(add(value, 0x20), abi_decode_t_uint256(add(headStart, offset), end))

                }

                {
                    // tradeAmount

                    let offset := 64

                    mstore(add(value, 0x40), abi_decode_t_int256(add(headStart, offset), end))

                }

                {
                    // tradeAmountSqrt

                    let offset := 96

                    mstore(add(value, 0x60), abi_decode_t_int256(add(headStart, offset), end))

                }

                {
                    // extraData

                    let offset := calldataload(add(headStart, 128))
                    if gt(offset, 0xffffffffffffffff) { revert_error_5e8f644817bc4960744f35c15999b6eff64ae702f94b1c46297cfd4e1aec2421() }

                    mstore(add(value, 0x80), abi_decode_t_bytes_memory_ptr(add(headStart, offset), end))

                }

            }

            // struct IPredyPool.Payoff
            function abi_decode_t_struct$_Payoff_$2047_memory_ptr(headStart, end) -> value {
                if slt(sub(end, headStart), 0xc0) { revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() }
                value := allocate_memory(0xc0)

                {
                    // perpEntryUpdate

                    let offset := 0

                    mstore(add(value, 0x00), abi_decode_t_int256(add(headStart, offset), end))

                }

                {
                    // sqrtEntryUpdate

                    let offset := 32

                    mstore(add(value, 0x20), abi_decode_t_int256(add(headStart, offset), end))

                }

                {
                    // sqrtRebalanceEntryUpdateUnderlying

                    let offset := 64

                    mstore(add(value, 0x40), abi_decode_t_int256(add(headStart, offset), end))

                }

                {
                    // sqrtRebalanceEntryUpdateStable

                    let offset := 96

                    mstore(add(value, 0x60), abi_decode_t_int256(add(headStart, offset), end))

                }

                {
                    // perpPayoff

                    let offset := 128

                    mstore(add(value, 0x80), abi_decode_t_int256(add(headStart, offset), end))

                }

                {
                    // sqrtPayoff

                    let offset := 160

                    mstore(add(value, 0xa0), abi_decode_t_int256(add(headStart, offset), end))

                }

            }

            // struct IPredyPool.TradeResult
            function abi_decode_t_struct$_TradeResult_$2034_memory_ptr(headStart, end) -> value {
                if slt(sub(end, headStart), 0x0180) { revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() }
                value := allocate_memory(0xe0)

                {
                    // payoff

                    let offset := 0

                    mstore(add(value, 0x00), abi_decode_t_struct$_Payoff_$2047_memory_ptr(add(headStart, offset), end))

                }

                {
                    // vaultId

                    let offset := 192

                    mstore(add(value, 0x20), abi_decode_t_uint256(add(headStart, offset), end))

                }

                {
                    // fee

                    let offset := 224

                    mstore(add(value, 0x40), abi_decode_t_int256(add(headStart, offset), end))

                }

                {
                    // minMargin

                    let offset := 256

                    mstore(add(value, 0x60), abi_decode_t_int256(add(headStart, offset), end))

                }

                {
                    // averagePrice

                    let offset := 288

                    mstore(add(value, 0x80), abi_decode_t_int256(add(headStart, offset), end))

                }

                {
                    // sqrtTwap

                    let offset := 320

                    mstore(add(value, 0xa0), abi_decode_t_uint256(add(headStart, offset), end))

                }

                {
                    // sqrtPrice

                    let offset := 352

                    mstore(add(value, 0xc0), abi_decode_t_uint256(add(headStart, offset), end))

                }

            }

            function abi_decode_tuple_t_struct$_TradeParams_$2018_memory_ptrt_struct$_TradeResult_$2034_memory_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 416) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_struct$_TradeParams_$2018_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_struct$_TradeResult_$2034_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_predyTradeAfterCallback_696() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_struct$_TradeParams_$2018_memory_ptrt_struct$_TradeResult_$2034_memory_ptr(4, calldatasize())
                fun_predyTradeAfterCallback_696(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_withdrawLiquidity_587() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bool(4, calldatasize())
                fun_withdrawLiquidity_587(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_take_635() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bool(4, calldatasize())
                fun_take_635(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_createPredyPool_452() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_createPredyPool_452()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_supplyLiquidity_516() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bool(4, calldatasize())
                fun_supplyLiquidity_516(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

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

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_contract$_IHooks_$4158(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IHooks_$4158(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IHooks_$4158(value)
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_contract$_IHooks_$4158_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() {
                revert(0, 0)
            }

            function shift_left_224(value) -> newValue {
                newValue :=

                shl(224, value)

            }

            function abi_decode_tuple__fromMemory(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

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

            function copy_memory_to_memory_with_cleanup(src, dst, length) {

                mcopy(dst, src, length)
                mstore(add(dst, length), 0)

            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_address_t_address_t_bytes_memory_ptr_t_int256__to_t_address_t_address_t_bytes_memory_ptr_t_int256__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                mstore(add(headStart, 64), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value2,  tail)

                abi_encode_t_int256_to_t_int256_fromStack(value3,  add(headStart, 96))

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            /// @ast-id 678
            /// @src 1:2981:3236  "function predySettlementCallback(..."
            function fun_predySettlementCallback_678(var_quoteToken_658, var_baseToken_660, var_settlementData_662_mpos, var_baseAmountDelta_664) {

                /// @src 1:3140:3150  "controller"
                let _1 := read_from_storage_split_offset_0_t_address(0x06)
                let expr_668 := _1
                /// @src 1:3133:3151  "IHooks(controller)"
                let expr_669_address := convert_t_address_to_t_contract$_IHooks_$4158(expr_668)
                /// @src 1:3133:3175  "IHooks(controller).predySettlementCallback"
                let expr_670_address := convert_t_contract$_IHooks_$4158_to_t_address(expr_669_address)
                let expr_670_functionSelector := 0x085090d6
                /// @src 1:3176:3186  "quoteToken"
                let _2 := var_quoteToken_658
                let expr_671 := _2
                /// @src 1:3188:3197  "baseToken"
                let _3 := var_baseToken_660
                let expr_672 := _3
                /// @src 1:3199:3213  "settlementData"
                let _4_mpos := var_settlementData_662_mpos
                let expr_673_mpos := _4_mpos
                /// @src 1:3215:3230  "baseAmountDelta"
                let _5 := var_baseAmountDelta_664
                let expr_674 := _5
                /// @src 1:3133:3231  "IHooks(controller).predySettlementCallback(quoteToken, baseToken, settlementData, baseAmountDelta)"

                if iszero(extcodesize(expr_670_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _6 := allocate_unbounded()
                mstore(_6, shift_left_224(expr_670_functionSelector))
                let _7 := abi_encode_tuple_t_address_t_address_t_bytes_memory_ptr_t_int256__to_t_address_t_address_t_bytes_memory_ptr_t_int256__fromStack(add(_6, 4) , expr_671, expr_672, expr_673_mpos, expr_674)

                let _8 := call(gas(), expr_670_address,  0,  _6, sub(_7, _6), _6, 0)

                if iszero(_8) { revert_forward_1() }

                if _8 {

                    let _9 := 0

                    if gt(_9, returndatasize()) {
                        _9 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_6, _9)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_6, add(_6, _9))
                }

            }
            /// @src 1:342:3462  "contract PredyParticipant is IHooks {..."

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_offset_0_t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0_t_uint256(sload(slot))

            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
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

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function prepare_store_t_address(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_address_to_t_address(slot, value_0) {
                let convertedValue_0 := convert_t_address_to_t_address(value_0)
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(convertedValue_0)))
            }

            function cleanup_from_storage_t_contract$___Yult__Toolbox_$1132(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_0_t_contract$___Yult__Toolbox_$1132(slot_value) -> value {
                value := cleanup_from_storage_t_contract$___Yult__Toolbox_$1132(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_contract$___Yult__Toolbox_$1132(slot) -> value {
                value := extract_from_storage_value_offset_0_t_contract$___Yult__Toolbox_$1132(sload(slot))

            }

            function convert_t_contract$___Yult__Toolbox_$1132_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            /// @ast-id 656
            /// @src 1:2854:2977  "function trade() external {..."
            function fun_trade_656() {

                /// @src 1:2894:2905  "predyPoolId"
                let _10 := read_from_storage_split_offset_0_t_uint256(0x03)
                let expr_639 := _10
                /// @src 1:2909:2910  "0"
                let expr_640 := 0x00
                /// @src 1:2894:2910  "predyPoolId != 0"
                let expr_641 := iszero(eq(cleanup_t_uint256(expr_639), convert_t_rational_0_by_1_to_t_uint256(expr_640)))
                /// @src 1:2886:2911  "require(predyPoolId != 0)"
                require_helper(expr_641)
                /// @src 1:2930:2940  "msg.sender"
                let expr_646 := caller()
                /// @src 1:2917:2940  "controller = msg.sender"
                update_storage_value_offset_0_t_address_to_t_address(0x06, expr_646)
                let expr_647 := expr_646
                /// @src 1:2946:2953  "toolbox"
                let _11_address := read_from_storage_split_offset_0_t_contract$___Yult__Toolbox_$1132(0x02)
                let expr_649_address := _11_address
                /// @src 1:2946:2959  "toolbox.trade"
                let expr_651_address := convert_t_contract$___Yult__Toolbox_$1132_to_t_address(expr_649_address)
                let expr_651_functionSelector := 0xdf1dd826
                /// @src 1:2960:2971  "predyPoolId"
                let _12 := read_from_storage_split_offset_0_t_uint256(0x03)
                let expr_652 := _12
                /// @src 1:2946:2972  "toolbox.trade(predyPoolId)"

                if iszero(extcodesize(expr_651_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _13 := allocate_unbounded()
                mstore(_13, shift_left_224(expr_651_functionSelector))
                let _14 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_13, 4) , expr_652)

                let _15 := call(gas(), expr_651_address,  0,  _13, sub(_14, _13), _13, 0)

                if iszero(_15) { revert_forward_1() }

                if _15 {

                    let _16 := 0

                    if gt(_16, returndatasize()) {
                        _16 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_13, _16)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_13, add(_13, _16))
                }

            }
            /// @src 1:342:3462  "contract PredyParticipant is IHooks {..."

            function abi_encode_t_uint256_to_t_uint256(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_t_int256_to_t_int256(value, pos) {
                mstore(pos, cleanup_t_int256(value))
            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            // struct IPredyPool.TradeParams -> struct IPredyPool.TradeParams
            function abi_encode_t_struct$_TradeParams_$2018_memory_ptr_to_t_struct$_TradeParams_$2018_memory_ptr_fromStack(value, pos)  -> end  {
                let tail := add(pos, 0xa0)

                {
                    // pairId

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x00))
                }

                {
                    // vaultId

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x20))
                }

                {
                    // tradeAmount

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x40))
                }

                {
                    // tradeAmountSqrt

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x60))
                }

                {
                    // extraData

                    let memberValue0 := mload(add(value, 0x80))

                    mstore(add(pos, 0x80), sub(tail, pos))
                    tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr(memberValue0, tail)

                }

                end := tail
            }

            // struct IPredyPool.Payoff -> struct IPredyPool.Payoff
            function abi_encode_t_struct$_Payoff_$2047_memory_ptr_to_t_struct$_Payoff_$2047_memory_ptr(value, pos)  {
                let tail := add(pos, 0xc0)

                {
                    // perpEntryUpdate

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x00))
                }

                {
                    // sqrtEntryUpdate

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x20))
                }

                {
                    // sqrtRebalanceEntryUpdateUnderlying

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x40))
                }

                {
                    // sqrtRebalanceEntryUpdateStable

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x60))
                }

                {
                    // perpPayoff

                    let memberValue0 := mload(add(value, 0x80))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x80))
                }

                {
                    // sqrtPayoff

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0xa0))
                }

            }

            // struct IPredyPool.TradeResult -> struct IPredyPool.TradeResult
            function abi_encode_t_struct$_TradeResult_$2034_memory_ptr_to_t_struct$_TradeResult_$2034_memory_ptr_fromStack(value, pos)  {
                let tail := add(pos, 0x0180)

                {
                    // payoff

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_struct$_Payoff_$2047_memory_ptr_to_t_struct$_Payoff_$2047_memory_ptr(memberValue0, add(pos, 0x00))
                }

                {
                    // vaultId

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0xc0))
                }

                {
                    // fee

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0xe0))
                }

                {
                    // minMargin

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x0100))
                }

                {
                    // averagePrice

                    let memberValue0 := mload(add(value, 0x80))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x0120))
                }

                {
                    // sqrtTwap

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x0140))
                }

                {
                    // sqrtPrice

                    let memberValue0 := mload(add(value, 0xc0))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x0160))
                }

            }

            function abi_encode_tuple_t_struct$_TradeParams_$2018_memory_ptr_t_struct$_TradeResult_$2034_memory_ptr__to_t_struct$_TradeParams_$2018_memory_ptr_t_struct$_TradeResult_$2034_memory_ptr__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 416)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_struct$_TradeParams_$2018_memory_ptr_to_t_struct$_TradeParams_$2018_memory_ptr_fromStack(value0,  tail)

                abi_encode_t_struct$_TradeResult_$2034_memory_ptr_to_t_struct$_TradeResult_$2034_memory_ptr_fromStack(value1,  add(headStart, 32))

            }

            /// @ast-id 696
            /// @src 1:3240:3459  "function predyTradeAfterCallback(..."
            function fun_predyTradeAfterCallback_696(var_tradeParams_681_mpos, var_tradeResult_684_mpos) {

                /// @src 1:3393:3403  "controller"
                let _17 := read_from_storage_split_offset_0_t_address(0x06)
                let expr_688 := _17
                /// @src 1:3386:3404  "IHooks(controller)"
                let expr_689_address := convert_t_address_to_t_contract$_IHooks_$4158(expr_688)
                /// @src 1:3386:3428  "IHooks(controller).predyTradeAfterCallback"
                let expr_690_address := convert_t_contract$_IHooks_$4158_to_t_address(expr_689_address)
                let expr_690_functionSelector := 0x944b560b
                /// @src 1:3429:3440  "tradeParams"
                let _18_mpos := var_tradeParams_681_mpos
                let expr_691_mpos := _18_mpos
                /// @src 1:3442:3453  "tradeResult"
                let _19_mpos := var_tradeResult_684_mpos
                let expr_692_mpos := _19_mpos
                /// @src 1:3386:3454  "IHooks(controller).predyTradeAfterCallback(tradeParams, tradeResult)"

                if iszero(extcodesize(expr_690_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _20 := allocate_unbounded()
                mstore(_20, shift_left_224(expr_690_functionSelector))
                let _21 := abi_encode_tuple_t_struct$_TradeParams_$2018_memory_ptr_t_struct$_TradeResult_$2034_memory_ptr__to_t_struct$_TradeParams_$2018_memory_ptr_t_struct$_TradeResult_$2034_memory_ptr__fromStack(add(_20, 4) , expr_691_mpos, expr_692_mpos)

                let _22 := call(gas(), expr_690_address,  0,  _20, sub(_21, _20), _20, 0)

                if iszero(_22) { revert_forward_1() }

                if _22 {

                    let _23 := 0

                    if gt(_23, returndatasize()) {
                        _23 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_20, _23)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_20, add(_20, _23))
                }

            }
            /// @src 1:342:3462  "contract PredyParticipant is IHooks {..."

            function cleanup_from_storage_t_contract$_AERC20_$344(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_0_t_contract$_AERC20_$344(slot_value) -> value {
                value := cleanup_from_storage_t_contract$_AERC20_$344(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_contract$_AERC20_$344(slot) -> value {
                value := extract_from_storage_value_offset_0_t_contract$_AERC20_$344(sload(slot))

            }

            function extract_from_storage_value_offset_0_t_int256(slot_value) -> value {
                value := cleanup_from_storage_t_int256(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_int256(slot) -> value {
                value := extract_from_storage_value_offset_0_t_int256(sload(slot))

            }

            function convert_t_uint256_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_uint256(value)))
            }

            function convert_t_contract$_AERC20_$344_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_contract$_PredyParticipant_$697_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_tuple_t_address_t_bool__to_t_address_t_bool__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bool_to_t_bool_fromStack(value1,  add(headStart, 32))

            }

            function cleanup_t_contract$_PredyPool_$5095(value) -> cleaned {
                cleaned := cleanup_t_address(value)
            }

            function validator_revert_t_contract$_PredyPool_$5095(value) {
                if iszero(eq(value, cleanup_t_contract$_PredyPool_$5095(value))) { revert(0, 0) }
            }

            function abi_decode_t_contract$_PredyPool_$5095_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_contract$_PredyPool_$5095(value)
            }

            function abi_decode_tuple_t_contract$_PredyPool_$5095_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_contract$_PredyPool_$5095_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function convert_t_contract$_PredyPool_$5095_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_decode_t_uint256_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_t_uint256t_uint256_fromMemory(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple_t_uint256_t_bool_t_uint256__to_t_uint256_t_bool_t_uint256__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bool_to_t_bool_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function checked_sub_t_int256(x, y) -> diff {
                x := cleanup_t_int256(x)
                y := cleanup_t_int256(y)
                diff := sub(x, y)

                // underflow, if y >= 0 and diff > x
                // overflow, if y < 0 and diff < x
                if or(
                    and(iszero(slt(y, 0)), sgt(diff, x)),
                    and(slt(y, 0), slt(diff, x))
                ) { panic_error_0x11() }

            }

            function update_byte_slice_32_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_int256_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_int256(value)))
            }

            function prepare_store_t_int256(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_int256_to_t_int256(slot, value_0) {
                let convertedValue_0 := convert_t_int256_to_t_int256(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_int256(convertedValue_0)))
            }

            /// @ast-id 587
            /// @src 1:1758:2522  "function withdrawLiquidity(bool toQuoteAsset) external {..."
            function fun_withdrawLiquidity_587(var_toQuoteAsset_518) {

                /// @src 1:1881:1892  "predyPoolId"
                let _24 := read_from_storage_split_offset_0_t_uint256(0x03)
                let expr_522 := _24
                /// @src 1:1896:1897  "0"
                let expr_523 := 0x00
                /// @src 1:1881:1897  "predyPoolId != 0"
                let expr_524 := iszero(eq(cleanup_t_uint256(expr_522), convert_t_rational_0_by_1_to_t_uint256(expr_523)))
                /// @src 1:1873:1898  "require(predyPoolId != 0)"
                require_helper(expr_524)
                /// @src 1:1921:1933  "toQuoteAsset"
                let _25 := var_toQuoteAsset_518
                let expr_530 := _25
                /// @src 1:1921:1949  "toQuoteAsset? tokenA: tokenB"
                let expr_533_address
                switch expr_530
                case 0 {
                    /// @src 1:1943:1949  "tokenB"
                    let _26_address := read_from_storage_split_offset_0_t_contract$_AERC20_$344(0x01)
                    let expr_532_address := _26_address
                    /// @src 1:1921:1949  "toQuoteAsset? tokenA: tokenB"
                    expr_533_address := expr_532_address
                }
                default {
                    /// @src 1:1935:1941  "tokenA"
                    let _27_address := read_from_storage_split_offset_0_t_contract$_AERC20_$344(0x00)
                    let expr_531_address := _27_address
                    /// @src 1:1921:1949  "toQuoteAsset? tokenA: tokenB"
                    expr_533_address := expr_531_address
                }
                /// @src 1:1920:1950  "(toQuoteAsset? tokenA: tokenB)"
                let expr_534_address := expr_533_address
                /// @src 1:1905:1950  "AERC20 token = (toQuoteAsset? tokenA: tokenB)"
                let var_token_529_address := expr_534_address
                /// @src 1:2167:2181  "myPredyBalance"
                let _28_slot := 0x04
                let expr_537_slot := _28_slot
                /// @src 1:2182:2194  "toQuoteAsset"
                let _29 := var_toQuoteAsset_518
                let expr_538 := _29
                /// @src 1:2167:2195  "myPredyBalance[toQuoteAsset]"
                let _30 := mapping_index_access_t_mapping$_t_bool_$_t_int256_$_of_t_bool(expr_537_slot,expr_538)
                let _31 := read_from_storage_split_offset_0_t_int256(_30)
                let expr_539 := _31
                /// @src 1:2203:2216  "amountQuantum"
                let _32 := read_from_storage_split_offset_0_t_uint256(0x05)
                let expr_542 := _32
                /// @src 1:2199:2217  "int(amountQuantum)"
                let expr_543 := convert_t_uint256_to_t_int256(expr_542)
                /// @src 1:2167:2217  "myPredyBalance[toQuoteAsset] >= int(amountQuantum)"
                let expr_544 := iszero(slt(cleanup_t_int256(expr_539), cleanup_t_int256(expr_543)))
                /// @src 1:2159:2218  "require(myPredyBalance[toQuoteAsset] >= int(amountQuantum))"
                require_helper(expr_544)
                /// @src 1:2269:2274  "token"
                let _33_address := var_token_529_address
                let expr_547_address := _33_address
                /// @src 1:2269:2301  "token.setCriticalTransferAddress"
                let expr_549_address := convert_t_contract$_AERC20_$344_to_t_address(expr_547_address)
                let expr_549_functionSelector := 0xc8e37e61
                /// @src 1:2310:2314  "this"
                let expr_552_address := address()
                /// @src 1:2302:2315  "address(this)"
                let expr_553 := convert_t_contract$_PredyParticipant_$697_to_t_address(expr_552_address)
                /// @src 1:2317:2321  "true"
                let expr_554 := 0x01
                /// @src 1:2269:2322  "token.setCriticalTransferAddress(address(this), true)"

                if iszero(extcodesize(expr_549_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _34 := allocate_unbounded()
                mstore(_34, shift_left_224(expr_549_functionSelector))
                let _35 := abi_encode_tuple_t_address_t_bool__to_t_address_t_bool__fromStack(add(_34, 4) , expr_553, expr_554)

                let _36 := call(gas(), expr_549_address,  0,  _34, sub(_35, _34), _34, 0)

                if iszero(_36) { revert_forward_1() }

                if _36 {

                    let _37 := 0

                    if gt(_37, returndatasize()) {
                        _37 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_34, _37)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_34, add(_34, _37))
                }
                /// @src 1:2329:2336  "toolbox"
                let _38_address := read_from_storage_split_offset_0_t_contract$___Yult__Toolbox_$1132(0x02)
                let expr_557_address := _38_address
                /// @src 1:2329:2346  "toolbox.predyPool"
                let expr_559_address := convert_t_contract$___Yult__Toolbox_$1132_to_t_address(expr_557_address)
                let expr_559_functionSelector := 0x53ddec63
                /// @src 1:2329:2348  "toolbox.predyPool()"

                // storage for arguments and returned data
                let _39 := allocate_unbounded()
                mstore(_39, shift_left_224(expr_559_functionSelector))
                let _40 := abi_encode_tuple__to__fromStack(add(_39, 4) )

                let _41 := staticcall(gas(), expr_559_address,  _39, sub(_40, _39), _39, 32)

                if iszero(_41) { revert_forward_1() }

                let expr_560_address
                if _41 {

                    let _42 := 32

                    if gt(_42, returndatasize()) {
                        _42 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_39, _42)

                    // decode return parameters from external try-call into retVars
                    expr_560_address :=  abi_decode_tuple_t_contract$_PredyPool_$5095_fromMemory(_39, add(_39, _42))
                }
                /// @src 1:2329:2357  "toolbox.predyPool().withdraw"
                let expr_561_address := convert_t_contract$_PredyPool_$5095_to_t_address(expr_560_address)
                let expr_561_functionSelector := 0x7f223b4c
                /// @src 1:2358:2369  "predyPoolId"
                let _43 := read_from_storage_split_offset_0_t_uint256(0x03)
                let expr_562 := _43
                /// @src 1:2371:2383  "toQuoteAsset"
                let _44 := var_toQuoteAsset_518
                let expr_563 := _44
                /// @src 1:2385:2398  "amountQuantum"
                let _45 := read_from_storage_split_offset_0_t_uint256(0x05)
                let expr_564 := _45
                /// @src 1:2329:2399  "toolbox.predyPool().withdraw(predyPoolId, toQuoteAsset, amountQuantum)"

                // storage for arguments and returned data
                let _46 := allocate_unbounded()
                mstore(_46, shift_left_224(expr_561_functionSelector))
                let _47 := abi_encode_tuple_t_uint256_t_bool_t_uint256__to_t_uint256_t_bool_t_uint256__fromStack(add(_46, 4) , expr_562, expr_563, expr_564)

                let _48 := call(gas(), expr_561_address,  0,  _46, sub(_47, _46), _46, 64)

                if iszero(_48) { revert_forward_1() }

                let expr_565_component_1, expr_565_component_2
                if _48 {

                    let _49 := 64

                    if gt(_49, returndatasize()) {
                        _49 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_46, _49)

                    // decode return parameters from external try-call into retVars
                    expr_565_component_1, expr_565_component_2 :=  abi_decode_tuple_t_uint256t_uint256_fromMemory(_46, add(_46, _49))
                }
                /// @src 1:2405:2410  "token"
                let _50_address := var_token_529_address
                let expr_567_address := _50_address
                /// @src 1:2405:2437  "token.setCriticalTransferAddress"
                let expr_569_address := convert_t_contract$_AERC20_$344_to_t_address(expr_567_address)
                let expr_569_functionSelector := 0xc8e37e61
                /// @src 1:2446:2450  "this"
                let expr_572_address := address()
                /// @src 1:2438:2451  "address(this)"
                let expr_573 := convert_t_contract$_PredyParticipant_$697_to_t_address(expr_572_address)
                /// @src 1:2453:2458  "false"
                let expr_574 := 0x00
                /// @src 1:2405:2459  "token.setCriticalTransferAddress(address(this), false)"

                if iszero(extcodesize(expr_569_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _51 := allocate_unbounded()
                mstore(_51, shift_left_224(expr_569_functionSelector))
                let _52 := abi_encode_tuple_t_address_t_bool__to_t_address_t_bool__fromStack(add(_51, 4) , expr_573, expr_574)

                let _53 := call(gas(), expr_569_address,  0,  _51, sub(_52, _51), _51, 0)

                if iszero(_53) { revert_forward_1() }

                if _53 {

                    let _54 := 0

                    if gt(_54, returndatasize()) {
                        _54 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_51, _54)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_51, add(_51, _54))
                }
                /// @src 1:2503:2516  "amountQuantum"
                let _55 := read_from_storage_split_offset_0_t_uint256(0x05)
                let expr_582 := _55
                /// @src 1:2499:2517  "int(amountQuantum)"
                let expr_583 := convert_t_uint256_to_t_int256(expr_582)
                /// @src 1:2467:2481  "myPredyBalance"
                let _56_slot := 0x04
                let expr_577_slot := _56_slot
                /// @src 1:2482:2494  "toQuoteAsset"
                let _57 := var_toQuoteAsset_518
                let expr_578 := _57
                /// @src 1:2467:2495  "myPredyBalance[toQuoteAsset]"
                let _58 := mapping_index_access_t_mapping$_t_bool_$_t_int256_$_of_t_bool(expr_577_slot,expr_578)
                /// @src 1:2467:2517  "myPredyBalance[toQuoteAsset] -= int(amountQuantum)"
                let _59 := read_from_storage_split_offset_0_t_int256(_58)
                let expr_584 := checked_sub_t_int256(_59, expr_583)

                update_storage_value_offset_0_t_int256_to_t_int256(_58, expr_584)

            }
            /// @src 1:342:3462  "contract PredyParticipant is IHooks {..."

            function abi_decode_tuple_t_uint256_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_bool_t_address_t_uint256__to_t_bool_t_address_t_uint256__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

            }

            /// @ast-id 635
            /// @src 1:2526:2850  "function take(bool toQuoteAsset) external {..."
            function fun_take_635(var_toQuoteAsset_589) {

                /// @src 1:2582:2593  "predyPoolId"
                let _60 := read_from_storage_split_offset_0_t_uint256(0x03)
                let expr_593 := _60
                /// @src 1:2596:2597  "0"
                let expr_594 := 0x00
                /// @src 1:2582:2597  "predyPoolId > 0"
                let expr_595 := gt(cleanup_t_uint256(expr_593), convert_t_rational_0_by_1_to_t_uint256(expr_594))
                /// @src 1:2574:2598  "require(predyPoolId > 0)"
                require_helper(expr_595)
                /// @src 1:2621:2633  "toQuoteAsset"
                let _61 := var_toQuoteAsset_589
                let expr_601 := _61
                /// @src 1:2621:2649  "toQuoteAsset? tokenA: tokenB"
                let expr_604_address
                switch expr_601
                case 0 {
                    /// @src 1:2643:2649  "tokenB"
                    let _62_address := read_from_storage_split_offset_0_t_contract$_AERC20_$344(0x01)
                    let expr_603_address := _62_address
                    /// @src 1:2621:2649  "toQuoteAsset? tokenA: tokenB"
                    expr_604_address := expr_603_address
                }
                default {
                    /// @src 1:2635:2641  "tokenA"
                    let _63_address := read_from_storage_split_offset_0_t_contract$_AERC20_$344(0x00)
                    let expr_602_address := _63_address
                    /// @src 1:2621:2649  "toQuoteAsset? tokenA: tokenB"
                    expr_604_address := expr_602_address
                }
                /// @src 1:2620:2650  "(toQuoteAsset? tokenA: tokenB)"
                let expr_605_address := expr_604_address
                /// @src 1:2605:2650  "AERC20 token = (toQuoteAsset? tokenA: tokenB)"
                let var_token_600_address := expr_605_address
                /// @src 1:2708:2713  "token"
                let _64_address := var_token_600_address
                let expr_608_address := _64_address
                /// @src 1:2708:2723  "token.balanceOf"
                let expr_609_address := convert_t_contract$_AERC20_$344_to_t_address(expr_608_address)
                let expr_609_functionSelector := 0x70a08231
                /// @src 1:2732:2739  "toolbox"
                let _65_address := read_from_storage_split_offset_0_t_contract$___Yult__Toolbox_$1132(0x02)
                let expr_612_address := _65_address
                /// @src 1:2732:2749  "toolbox.predyPool"
                let expr_613_address := convert_t_contract$___Yult__Toolbox_$1132_to_t_address(expr_612_address)
                let expr_613_functionSelector := 0x53ddec63
                /// @src 1:2732:2751  "toolbox.predyPool()"

                // storage for arguments and returned data
                let _66 := allocate_unbounded()
                mstore(_66, shift_left_224(expr_613_functionSelector))
                let _67 := abi_encode_tuple__to__fromStack(add(_66, 4) )

                let _68 := staticcall(gas(), expr_613_address,  _66, sub(_67, _66), _66, 32)

                if iszero(_68) { revert_forward_1() }

                let expr_614_address
                if _68 {

                    let _69 := 32

                    if gt(_69, returndatasize()) {
                        _69 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_66, _69)

                    // decode return parameters from external try-call into retVars
                    expr_614_address :=  abi_decode_tuple_t_contract$_PredyPool_$5095_fromMemory(_66, add(_66, _69))
                }
                /// @src 1:2724:2752  "address(toolbox.predyPool())"
                let expr_615 := convert_t_contract$_PredyPool_$5095_to_t_address(expr_614_address)
                /// @src 1:2708:2753  "token.balanceOf(address(toolbox.predyPool()))"

                // storage for arguments and returned data
                let _70 := allocate_unbounded()
                mstore(_70, shift_left_224(expr_609_functionSelector))
                let _71 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_70, 4) , expr_615)

                let _72 := staticcall(gas(), expr_609_address,  _70, sub(_71, _70), _70, 32)

                if iszero(_72) { revert_forward_1() }

                let expr_616
                if _72 {

                    let _73 := 32

                    if gt(_73, returndatasize()) {
                        _73 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_70, _73)

                    // decode return parameters from external try-call into retVars
                    expr_616 :=  abi_decode_tuple_t_uint256_fromMemory(_70, add(_70, _73))
                }
                /// @src 1:2757:2770  "amountQuantum"
                let _74 := read_from_storage_split_offset_0_t_uint256(0x05)
                let expr_617 := _74
                /// @src 1:2708:2770  "token.balanceOf(address(toolbox.predyPool())) >= amountQuantum"
                let expr_618 := iszero(lt(cleanup_t_uint256(expr_616), cleanup_t_uint256(expr_617)))
                /// @src 1:2699:2771  "require (token.balanceOf(address(toolbox.predyPool())) >= amountQuantum)"
                require_helper(expr_618)
                /// @src 1:2777:2784  "toolbox"
                let _75_address := read_from_storage_split_offset_0_t_contract$___Yult__Toolbox_$1132(0x02)
                let expr_621_address := _75_address
                /// @src 1:2777:2794  "toolbox.predyPool"
                let expr_623_address := convert_t_contract$___Yult__Toolbox_$1132_to_t_address(expr_621_address)
                let expr_623_functionSelector := 0x53ddec63
                /// @src 1:2777:2796  "toolbox.predyPool()"

                // storage for arguments and returned data
                let _76 := allocate_unbounded()
                mstore(_76, shift_left_224(expr_623_functionSelector))
                let _77 := abi_encode_tuple__to__fromStack(add(_76, 4) )

                let _78 := staticcall(gas(), expr_623_address,  _76, sub(_77, _76), _76, 32)

                if iszero(_78) { revert_forward_1() }

                let expr_624_address
                if _78 {

                    let _79 := 32

                    if gt(_79, returndatasize()) {
                        _79 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_76, _79)

                    // decode return parameters from external try-call into retVars
                    expr_624_address :=  abi_decode_tuple_t_contract$_PredyPool_$5095_fromMemory(_76, add(_76, _79))
                }
                /// @src 1:2777:2801  "toolbox.predyPool().take"
                let expr_625_address := convert_t_contract$_PredyPool_$5095_to_t_address(expr_624_address)
                let expr_625_functionSelector := 0xc6b6d340
                /// @src 1:2802:2814  "toQuoteAsset"
                let _80 := var_toQuoteAsset_589
                let expr_626 := _80
                /// @src 1:2824:2828  "this"
                let expr_629_address := address()
                /// @src 1:2816:2829  "address(this)"
                let expr_630 := convert_t_contract$_PredyParticipant_$697_to_t_address(expr_629_address)
                /// @src 1:2831:2844  "amountQuantum"
                let _81 := read_from_storage_split_offset_0_t_uint256(0x05)
                let expr_631 := _81
                /// @src 1:2777:2845  "toolbox.predyPool().take(toQuoteAsset, address(this), amountQuantum)"

                if iszero(extcodesize(expr_625_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _82 := allocate_unbounded()
                mstore(_82, shift_left_224(expr_625_functionSelector))
                let _83 := abi_encode_tuple_t_bool_t_address_t_uint256__to_t_bool_t_address_t_uint256__fromStack(add(_82, 4) , expr_626, expr_630, expr_631)

                let _84 := call(gas(), expr_625_address,  0,  _82, sub(_83, _82), _82, 0)

                if iszero(_84) { revert_forward_1() }

                if _84 {

                    let _85 := 0

                    if gt(_85, returndatasize()) {
                        _85 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_82, _85)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_82, add(_82, _85))
                }

            }
            /// @src 1:342:3462  "contract PredyParticipant is IHooks {..."

            function shift_right_160_unsigned(value) -> newValue {
                newValue :=

                shr(160, value)

            }

            function cleanup_from_storage_t_uint24(value) -> cleaned {
                cleaned := and(value, 0xffffff)
            }

            function extract_from_storage_value_offset_20_t_uint24(slot_value) -> value {
                value := cleanup_from_storage_t_uint24(shift_right_160_unsigned(slot_value))
            }

            function read_from_storage_split_offset_20_t_uint24(slot) -> value {
                value := extract_from_storage_value_offset_20_t_uint24(sload(slot))

            }

            function cleanup_t_contract$_IUniswapV3Pool_$2481(value) -> cleaned {
                cleaned := cleanup_t_address(value)
            }

            function validator_revert_t_contract$_IUniswapV3Pool_$2481(value) {
                if iszero(eq(value, cleanup_t_contract$_IUniswapV3Pool_$2481(value))) { revert(0, 0) }
            }

            function abi_decode_t_contract$_IUniswapV3Pool_$2481_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_contract$_IUniswapV3Pool_$2481(value)
            }

            function abi_decode_tuple_t_contract$_IUniswapV3Pool_$2481_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_contract$_IUniswapV3Pool_$2481_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_contract$_AERC20_$344_to_t_address_fromStack(value, pos) {
                mstore(pos, convert_t_contract$_AERC20_$344_to_t_address(value))
            }

            function cleanup_t_uint24(value) -> cleaned {
                cleaned := and(value, 0xffffff)
            }

            function abi_encode_t_uint24_to_t_uint24_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint24(value))
            }

            function abi_encode_tuple_t_contract$_AERC20_$344_t_contract$_AERC20_$344_t_uint24_t_uint256_t_uint256__to_t_address_t_address_t_uint24_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_contract$_AERC20_$344_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_contract$_AERC20_$344_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint24_to_t_uint24_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

            }

            function convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_t_contract$_IUniswapV3Pool_$2481_to_t_address_fromStack(value, pos) {
                mstore(pos, convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(value))
            }

            function abi_encode_tuple_t_contract$_IUniswapV3Pool_$2481__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_contract$_IUniswapV3Pool_$2481_to_t_address_fromStack(value0,  add(headStart, 0))

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

            /// @ast-id 452
            /// @src 1:877:1163  "function createPredyPool() public {..."
            function fun_createPredyPool_452() {

                /// @src 1:977:988  "predyPoolId"
                let _86 := read_from_storage_split_offset_0_t_uint256(0x03)
                let expr_427 := _86
                /// @src 1:992:993  "0"
                let expr_428 := 0x00
                /// @src 1:977:993  "predyPoolId == 0"
                let expr_429 := eq(cleanup_t_uint256(expr_427), convert_t_rational_0_by_1_to_t_uint256(expr_428))
                /// @src 1:969:994  "require(predyPoolId == 0)"
                require_helper(expr_429)
                /// @src 1:1023:1030  "toolbox"
                let _87_address := read_from_storage_split_offset_0_t_contract$___Yult__Toolbox_$1132(0x02)
                let expr_435_address := _87_address
                /// @src 1:1023:1050  "toolbox.createUniswapV3Pool"
                let expr_436_address := convert_t_contract$___Yult__Toolbox_$1132_to_t_address(expr_435_address)
                let expr_436_functionSelector := 0x66fa8bfa
                /// @src 1:1051:1057  "tokenA"
                let _88_address := read_from_storage_split_offset_0_t_contract$_AERC20_$344(0x00)
                let expr_437_address := _88_address
                /// @src 1:1059:1065  "tokenB"
                let _89_address := read_from_storage_split_offset_0_t_contract$_AERC20_$344(0x01)
                let expr_438_address := _89_address
                /// @src 1:1067:1074  "poolFee"
                let _90 := read_from_storage_split_offset_20_t_uint24(0x02)
                let expr_439 := _90
                /// @src 1:1076:1089  "amountQuantum"
                let _91 := read_from_storage_split_offset_0_t_uint256(0x05)
                let expr_440 := _91
                /// @src 1:1091:1104  "amountQuantum"
                let _92 := read_from_storage_split_offset_0_t_uint256(0x05)
                let expr_441 := _92
                /// @src 1:1023:1105  "toolbox.createUniswapV3Pool(tokenA, tokenB, poolFee, amountQuantum, amountQuantum)"

                // storage for arguments and returned data
                let _93 := allocate_unbounded()
                mstore(_93, shift_left_224(expr_436_functionSelector))
                let _94 := abi_encode_tuple_t_contract$_AERC20_$344_t_contract$_AERC20_$344_t_uint24_t_uint256_t_uint256__to_t_address_t_address_t_uint24_t_uint256_t_uint256__fromStack(add(_93, 4) , expr_437_address, expr_438_address, expr_439, expr_440, expr_441)

                let _95 := call(gas(), expr_436_address,  0,  _93, sub(_94, _93), _93, 32)

                if iszero(_95) { revert_forward_1() }

                let expr_442_address
                if _95 {

                    let _96 := 32

                    if gt(_96, returndatasize()) {
                        _96 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_93, _96)

                    // decode return parameters from external try-call into retVars
                    expr_442_address :=  abi_decode_tuple_t_contract$_IUniswapV3Pool_$2481_fromMemory(_93, add(_93, _96))
                }
                /// @src 1:1001:1105  "IUniswapV3Pool pool = toolbox.createUniswapV3Pool(tokenA, tokenB, poolFee, amountQuantum, amountQuantum)"
                let var_pool_434_address := expr_442_address
                /// @src 1:1125:1132  "toolbox"
                let _97_address := read_from_storage_split_offset_0_t_contract$___Yult__Toolbox_$1132(0x02)
                let expr_445_address := _97_address
                /// @src 1:1125:1152  "toolbox.registerPredyPoolLP"
                let expr_446_address := convert_t_contract$___Yult__Toolbox_$1132_to_t_address(expr_445_address)
                let expr_446_functionSelector := 0x5c810209
                /// @src 1:1153:1157  "pool"
                let _98_address := var_pool_434_address
                let expr_447_address := _98_address
                /// @src 1:1125:1158  "toolbox.registerPredyPoolLP(pool)"

                // storage for arguments and returned data
                let _99 := allocate_unbounded()
                mstore(_99, shift_left_224(expr_446_functionSelector))
                let _100 := abi_encode_tuple_t_contract$_IUniswapV3Pool_$2481__to_t_address__fromStack(add(_99, 4) , expr_447_address)

                let _101 := call(gas(), expr_446_address,  0,  _99, sub(_100, _99), _99, 32)

                if iszero(_101) { revert_forward_1() }

                let expr_448
                if _101 {

                    let _102 := 32

                    if gt(_102, returndatasize()) {
                        _102 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_99, _102)

                    // decode return parameters from external try-call into retVars
                    expr_448 :=  abi_decode_tuple_t_uint256_fromMemory(_99, add(_99, _102))
                }
                /// @src 1:1111:1158  "predyPoolId = toolbox.registerPredyPoolLP(pool)"
                update_storage_value_offset_0_t_uint256_to_t_uint256(0x03, expr_448)
                let expr_449 := expr_448

            }
            /// @src 1:342:3462  "contract PredyParticipant is IHooks {..."

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

            function checked_add_t_int256(x, y) -> sum {
                x := cleanup_t_int256(x)
                y := cleanup_t_int256(y)
                sum := add(x, y)

                // overflow, if x >= 0 and sum < y
                // underflow, if x < 0 and sum >= y
                if or(
                    and(iszero(slt(x, 0)), slt(sum, y)),
                    and(slt(x, 0), iszero(slt(sum, y)))
                ) { panic_error_0x11() }

            }

            /// @ast-id 516
            /// @src 1:1167:1754  "function supplyLiquidity(bool toQuoteAsset) external {..."
            function fun_supplyLiquidity_516(var_toQuoteAsset_454) {

                /// @src 1:1288:1299  "predyPoolId"
                let _103 := read_from_storage_split_offset_0_t_uint256(0x03)
                let expr_458 := _103
                /// @src 1:1302:1303  "0"
                let expr_459 := 0x00
                /// @src 1:1288:1303  "predyPoolId > 0"
                let expr_460 := gt(cleanup_t_uint256(expr_458), convert_t_rational_0_by_1_to_t_uint256(expr_459))
                /// @src 1:1280:1304  "require(predyPoolId > 0)"
                require_helper(expr_460)
                /// @src 1:1327:1339  "toQuoteAsset"
                let _104 := var_toQuoteAsset_454
                let expr_466 := _104
                /// @src 1:1327:1355  "toQuoteAsset? tokenA: tokenB"
                let expr_469_address
                switch expr_466
                case 0 {
                    /// @src 1:1349:1355  "tokenB"
                    let _105_address := read_from_storage_split_offset_0_t_contract$_AERC20_$344(0x01)
                    let expr_468_address := _105_address
                    /// @src 1:1327:1355  "toQuoteAsset? tokenA: tokenB"
                    expr_469_address := expr_468_address
                }
                default {
                    /// @src 1:1341:1347  "tokenA"
                    let _106_address := read_from_storage_split_offset_0_t_contract$_AERC20_$344(0x00)
                    let expr_467_address := _106_address
                    /// @src 1:1327:1355  "toQuoteAsset? tokenA: tokenB"
                    expr_469_address := expr_467_address
                }
                /// @src 1:1326:1356  "(toQuoteAsset? tokenA: tokenB)"
                let expr_470_address := expr_469_address
                /// @src 1:1311:1356  "AERC20 token = (toQuoteAsset? tokenA: tokenB)"
                let var_token_465_address := expr_470_address
                /// @src 1:1434:1439  "token"
                let _107_address := var_token_465_address
                let expr_473_address := _107_address
                /// @src 1:1434:1449  "token.balanceOf"
                let expr_474_address := convert_t_contract$_AERC20_$344_to_t_address(expr_473_address)
                let expr_474_functionSelector := 0x70a08231
                /// @src 1:1458:1462  "this"
                let expr_477_address := address()
                /// @src 1:1450:1463  "address(this)"
                let expr_478 := convert_t_contract$_PredyParticipant_$697_to_t_address(expr_477_address)
                /// @src 1:1434:1464  "token.balanceOf(address(this))"

                // storage for arguments and returned data
                let _108 := allocate_unbounded()
                mstore(_108, shift_left_224(expr_474_functionSelector))
                let _109 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_108, 4) , expr_478)

                let _110 := staticcall(gas(), expr_474_address,  _108, sub(_109, _108), _108, 32)

                if iszero(_110) { revert_forward_1() }

                let expr_479
                if _110 {

                    let _111 := 32

                    if gt(_111, returndatasize()) {
                        _111 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_108, _111)

                    // decode return parameters from external try-call into retVars
                    expr_479 :=  abi_decode_tuple_t_uint256_fromMemory(_108, add(_108, _111))
                }
                /// @src 1:1468:1481  "amountQuantum"
                let _112 := read_from_storage_split_offset_0_t_uint256(0x05)
                let expr_480 := _112
                /// @src 1:1434:1481  "token.balanceOf(address(this)) >= amountQuantum"
                let expr_481 := iszero(lt(cleanup_t_uint256(expr_479), cleanup_t_uint256(expr_480)))
                /// @src 1:1425:1482  "require (token.balanceOf(address(this)) >= amountQuantum)"
                require_helper(expr_481)
                /// @src 1:1526:1531  "token"
                let _113_address := var_token_465_address
                let expr_484_address := _113_address
                /// @src 1:1526:1539  "token.approve"
                let expr_486_address := convert_t_contract$_AERC20_$344_to_t_address(expr_484_address)
                let expr_486_functionSelector := 0x095ea7b3
                /// @src 1:1548:1555  "toolbox"
                let _114_address := read_from_storage_split_offset_0_t_contract$___Yult__Toolbox_$1132(0x02)
                let expr_489_address := _114_address
                /// @src 1:1548:1565  "toolbox.predyPool"
                let expr_490_address := convert_t_contract$___Yult__Toolbox_$1132_to_t_address(expr_489_address)
                let expr_490_functionSelector := 0x53ddec63
                /// @src 1:1548:1567  "toolbox.predyPool()"

                // storage for arguments and returned data
                let _115 := allocate_unbounded()
                mstore(_115, shift_left_224(expr_490_functionSelector))
                let _116 := abi_encode_tuple__to__fromStack(add(_115, 4) )

                let _117 := staticcall(gas(), expr_490_address,  _115, sub(_116, _115), _115, 32)

                if iszero(_117) { revert_forward_1() }

                let expr_491_address
                if _117 {

                    let _118 := 32

                    if gt(_118, returndatasize()) {
                        _118 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_115, _118)

                    // decode return parameters from external try-call into retVars
                    expr_491_address :=  abi_decode_tuple_t_contract$_PredyPool_$5095_fromMemory(_115, add(_115, _118))
                }
                /// @src 1:1540:1568  "address(toolbox.predyPool())"
                let expr_492 := convert_t_contract$_PredyPool_$5095_to_t_address(expr_491_address)
                /// @src 1:1570:1583  "amountQuantum"
                let _119 := read_from_storage_split_offset_0_t_uint256(0x05)
                let expr_493 := _119
                /// @src 1:1526:1584  "token.approve(address(toolbox.predyPool()), amountQuantum)"

                // storage for arguments and returned data
                let _120 := allocate_unbounded()
                mstore(_120, shift_left_224(expr_486_functionSelector))
                let _121 := abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(add(_120, 4) , expr_492, expr_493)

                let _122 := call(gas(), expr_486_address,  0,  _120, sub(_121, _120), _120, 32)

                if iszero(_122) { revert_forward_1() }

                let expr_494
                if _122 {

                    let _123 := 32

                    if gt(_123, returndatasize()) {
                        _123 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_120, _123)

                    // decode return parameters from external try-call into retVars
                    expr_494 :=  abi_decode_tuple_t_bool_fromMemory(_120, add(_120, _123))
                }
                /// @src 1:1590:1597  "toolbox"
                let _124_address := read_from_storage_split_offset_0_t_contract$___Yult__Toolbox_$1132(0x02)
                let expr_496_address := _124_address
                /// @src 1:1590:1607  "toolbox.predyPool"
                let expr_498_address := convert_t_contract$___Yult__Toolbox_$1132_to_t_address(expr_496_address)
                let expr_498_functionSelector := 0x53ddec63
                /// @src 1:1590:1609  "toolbox.predyPool()"

                // storage for arguments and returned data
                let _125 := allocate_unbounded()
                mstore(_125, shift_left_224(expr_498_functionSelector))
                let _126 := abi_encode_tuple__to__fromStack(add(_125, 4) )

                let _127 := staticcall(gas(), expr_498_address,  _125, sub(_126, _125), _125, 32)

                if iszero(_127) { revert_forward_1() }

                let expr_499_address
                if _127 {

                    let _128 := 32

                    if gt(_128, returndatasize()) {
                        _128 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_125, _128)

                    // decode return parameters from external try-call into retVars
                    expr_499_address :=  abi_decode_tuple_t_contract$_PredyPool_$5095_fromMemory(_125, add(_125, _128))
                }
                /// @src 1:1590:1616  "toolbox.predyPool().supply"
                let expr_500_address := convert_t_contract$_PredyPool_$5095_to_t_address(expr_499_address)
                let expr_500_functionSelector := 0xdb9d4a19
                /// @src 1:1617:1628  "predyPoolId"
                let _129 := read_from_storage_split_offset_0_t_uint256(0x03)
                let expr_501 := _129
                /// @src 1:1630:1642  "toQuoteAsset"
                let _130 := var_toQuoteAsset_454
                let expr_502 := _130
                /// @src 1:1644:1657  "amountQuantum"
                let _131 := read_from_storage_split_offset_0_t_uint256(0x05)
                let expr_503 := _131
                /// @src 1:1590:1658  "toolbox.predyPool().supply(predyPoolId, toQuoteAsset, amountQuantum)"

                // storage for arguments and returned data
                let _132 := allocate_unbounded()
                mstore(_132, shift_left_224(expr_500_functionSelector))
                let _133 := abi_encode_tuple_t_uint256_t_bool_t_uint256__to_t_uint256_t_bool_t_uint256__fromStack(add(_132, 4) , expr_501, expr_502, expr_503)

                let _134 := call(gas(), expr_500_address,  0,  _132, sub(_133, _132), _132, 32)

                if iszero(_134) { revert_forward_1() }

                let expr_504
                if _134 {

                    let _135 := 32

                    if gt(_135, returndatasize()) {
                        _135 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_132, _135)

                    // decode return parameters from external try-call into retVars
                    expr_504 :=  abi_decode_tuple_t_uint256_fromMemory(_132, add(_132, _135))
                }
                /// @src 1:1735:1748  "amountQuantum"
                let _136 := read_from_storage_split_offset_0_t_uint256(0x05)
                let expr_511 := _136
                /// @src 1:1731:1749  "int(amountQuantum)"
                let expr_512 := convert_t_uint256_to_t_int256(expr_511)
                /// @src 1:1699:1713  "myPredyBalance"
                let _137_slot := 0x04
                let expr_506_slot := _137_slot
                /// @src 1:1714:1726  "toQuoteAsset"
                let _138 := var_toQuoteAsset_454
                let expr_507 := _138
                /// @src 1:1699:1727  "myPredyBalance[toQuoteAsset]"
                let _139 := mapping_index_access_t_mapping$_t_bool_$_t_int256_$_of_t_bool(expr_506_slot,expr_507)
                /// @src 1:1699:1749  "myPredyBalance[toQuoteAsset] += int(amountQuantum)"
                let _140 := read_from_storage_split_offset_0_t_int256(_139)
                let expr_513 := checked_add_t_int256(_140, expr_512)

                update_storage_value_offset_0_t_int256_to_t_int256(_139, expr_513)

            }
            /// @src 1:342:3462  "contract PredyParticipant is IHooks {..."

        }

        data ".metadata" hex"a26469706673582212207e9ee7e07a91ce8e90de3ccc1a8d96729d645445aef521a9c56ff3923bc9f89764736f6c634300081e0033"
    }

}

