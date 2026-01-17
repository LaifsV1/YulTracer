
/// @use-src 68:"src/libraries/Trade.sol"
object "Trade_34396" {
    code {
        /// @src 68:814:5932  "library Trade {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Trade_34396_deployed"), datasize("Trade_34396_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("Trade_34396_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 68:814:5932  "library Trade {..."
        function constructor_Trade_34396() {

            /// @src 68:814:5932  "library Trade {..."

        }
        /// @src 68:814:5932  "library Trade {..."

    }
    /// @use-src 10:"lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol", 12:"lib/solmate/src/utils/FixedPointMathLib.sol", 13:"lib/solmate/src/utils/SafeCastLib.sol", 25:"lib/v3-core/contracts/libraries/FixedPoint96.sol", 26:"lib/v3-core/contracts/libraries/FullMath.sol", 27:"lib/v3-core/contracts/libraries/TickMath.sol", 57:"src/libraries/Constants.sol", 60:"src/libraries/PairLib.sol", 61:"src/libraries/Perp.sol", 62:"src/libraries/PerpFee.sol", 65:"src/libraries/Reallocation.sol", 66:"src/libraries/ScaledAsset.sol", 68:"src/libraries/Trade.sol", 69:"src/libraries/UniHelper.sol", 78:"src/libraries/math/LPMath.sol", 79:"src/libraries/math/Math.sol", 81:"src/types/GlobalData.sol"
    object "Trade_34396_deployed" {
        code {
            /// @src 68:814:5932  "library Trade {..."
            mstore(64, memoryguard(128))

            let called_via_delegatecall := iszero(eq(loadimmutable("library_deploy_address"), address()))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x95629036
                {
                    // trade(GlobalDataLibrary.GlobalData storage,IPredyPool.TradeParams,bytes)
                    if iszero(called_via_delegatecall) { revert_error_fb00381150b0555b0bf83aa2d95ae5599abd614bfe490c66e084fe1f454f48e2() }
                    external_fun_trade_34129()
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

            function revert_error_fb00381150b0555b0bf83aa2d95ae5599abd614bfe490c66e084fe1f454f48e2() {
                revert(0, 0)
            }

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function cleanup_t_struct$_GlobalData_$19302_storage_ptr(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_struct$_GlobalData_$19302_storage_ptr(value) {
                if iszero(eq(value, cleanup_t_struct$_GlobalData_$19302_storage_ptr(value))) { revert(0, 0) }
            }

            function abi_decode_t_struct$_GlobalData_$19302_storage_ptr(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_struct$_GlobalData_$19302_storage_ptr(value)
            }

            function revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() {
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

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() {
                revert(0, 0)
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

            function abi_decode_tuple_t_struct$_GlobalData_$19302_storage_ptrt_struct$_TradeParams_$2018_memory_ptrt_bytes_memory_ptr(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_GlobalData_$19302_storage_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value1 := abi_decode_t_struct$_TradeParams_$2018_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 64))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_int256_to_t_int256_library(value, pos) {
                mstore(pos, cleanup_t_int256(value))
            }

            // struct IPredyPool.Payoff -> struct IPredyPool.Payoff
            function abi_encode_t_struct$_Payoff_$2047_memory_ptr_to_t_struct$_Payoff_$2047_memory_ptr_library(value, pos)  {
                let tail := add(pos, 0xc0)

                {
                    // perpEntryUpdate

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_int256_to_t_int256_library(memberValue0, add(pos, 0x00))
                }

                {
                    // sqrtEntryUpdate

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_int256_to_t_int256_library(memberValue0, add(pos, 0x20))
                }

                {
                    // sqrtRebalanceEntryUpdateUnderlying

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_int256_to_t_int256_library(memberValue0, add(pos, 0x40))
                }

                {
                    // sqrtRebalanceEntryUpdateStable

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_int256_to_t_int256_library(memberValue0, add(pos, 0x60))
                }

                {
                    // perpPayoff

                    let memberValue0 := mload(add(value, 0x80))
                    abi_encode_t_int256_to_t_int256_library(memberValue0, add(pos, 0x80))
                }

                {
                    // sqrtPayoff

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_int256_to_t_int256_library(memberValue0, add(pos, 0xa0))
                }

            }

            function abi_encode_t_uint256_to_t_uint256_library(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            // struct IPredyPool.TradeResult -> struct IPredyPool.TradeResult
            function abi_encode_t_struct$_TradeResult_$2034_memory_ptr_to_t_struct$_TradeResult_$2034_memory_ptr_fromStack_library(value, pos)  {
                let tail := add(pos, 0x0180)

                {
                    // payoff

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_struct$_Payoff_$2047_memory_ptr_to_t_struct$_Payoff_$2047_memory_ptr_library(memberValue0, add(pos, 0x00))
                }

                {
                    // vaultId

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_uint256_to_t_uint256_library(memberValue0, add(pos, 0xc0))
                }

                {
                    // fee

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_int256_to_t_int256_library(memberValue0, add(pos, 0xe0))
                }

                {
                    // minMargin

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_int256_to_t_int256_library(memberValue0, add(pos, 0x0100))
                }

                {
                    // averagePrice

                    let memberValue0 := mload(add(value, 0x80))
                    abi_encode_t_int256_to_t_int256_library(memberValue0, add(pos, 0x0120))
                }

                {
                    // sqrtTwap

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_uint256_to_t_uint256_library(memberValue0, add(pos, 0x0140))
                }

                {
                    // sqrtPrice

                    let memberValue0 := mload(add(value, 0xc0))
                    abi_encode_t_uint256_to_t_uint256_library(memberValue0, add(pos, 0x0160))
                }

            }

            function abi_encode_tuple_t_struct$_TradeResult_$2034_memory_ptr__to_t_struct$_TradeResult_$2034_memory_ptr__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 384)

                abi_encode_t_struct$_TradeResult_$2034_memory_ptr_to_t_struct$_TradeResult_$2034_memory_ptr_fromStack_library(value0,  add(headStart, 0))

            }

            function external_fun_trade_34129() {

                let param_0, param_1, param_2 :=  abi_decode_tuple_t_struct$_GlobalData_$19302_storage_ptrt_struct$_TradeParams_$2018_memory_ptrt_bytes_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_trade_34129(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_struct$_TradeResult_$2034_memory_ptr__to_t_struct$_TradeResult_$2034_memory_ptr__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function allocate_memory_struct_t_struct$_TradeResult_$2034_memory_ptr() -> memPtr {
                memPtr := allocate_memory(224)
            }

            function allocate_memory_struct_t_struct$_Payoff_$2047_memory_ptr() -> memPtr {
                memPtr := allocate_memory(192)
            }

            function zero_value_for_t_int256() -> ret {
                ret := 0
            }

            function allocate_and_zero_memory_struct_t_struct$_Payoff_$2047_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_Payoff_$2047_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

            }

            function zero_value_for_t_struct$_Payoff_$2047_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_Payoff_$2047_memory_ptr()
            }

            function zero_value_for_t_uint256() -> ret {
                ret := 0
            }

            function allocate_and_zero_memory_struct_t_struct$_TradeResult_$2034_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_TradeResult_$2034_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_struct$_Payoff_$2047_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_TradeResult_$2034_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_TradeResult_$2034_memory_ptr()
            }

            function read_from_memoryt_uint256(ptr) -> returnValue {

                let value := cleanup_t_uint256(mload(ptr))

                returnValue :=

                value

            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_storage_ptr(value) -> converted {
                converted := value
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Vault_$6116_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function convert_t_struct$_UserStatus_$13665_storage_to_t_struct$_UserStatus_$13665_storage_ptr(value) -> converted {
                converted := value
            }

            function shift_right_160_unsigned(value) -> newValue {
                newValue :=

                shr(160, value)

            }

            function cleanup_from_storage_t_bool(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function extract_from_storage_value_offset_20_t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_160_unsigned(slot_value))
            }

            function read_from_storage_split_offset_20_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_20_t_bool(sload(slot))

            }

            function read_from_memoryt_int256(ptr) -> returnValue {

                let value := cleanup_t_int256(mload(ptr))

                returnValue :=

                value

            }

            function convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(value) -> converted {
                converted := value
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

            function write_to_memory_t_uint256(memPtr, value) {
                mstore(memPtr, cleanup_t_uint256(value))
            }

            function cleanup_from_storage_t_int24(value) -> cleaned {
                cleaned := signextend(2, value)
            }

            function extract_from_storage_value_offset_0_t_int24(slot_value) -> value {
                value := cleanup_from_storage_t_int24(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_int24(slot) -> value {
                value := extract_from_storage_value_offset_0_t_int24(sload(slot))

            }

            function cleanup_t_int24(value) -> cleaned {
                cleaned := signextend(2, value)
            }

            function write_to_memory_t_int24(memPtr, value) {
                mstore(memPtr, cleanup_t_int24(value))
            }

            function shift_right_24_unsigned(value) -> newValue {
                newValue :=

                shr(24, value)

            }

            function extract_from_storage_value_offset_3_t_int24(slot_value) -> value {
                value := cleanup_from_storage_t_int24(shift_right_24_unsigned(slot_value))
            }

            function read_from_storage_split_offset_3_t_int24(slot) -> value {
                value := extract_from_storage_value_offset_3_t_int24(sload(slot))

            }

            function shift_right_48_unsigned(value) -> newValue {
                newValue :=

                shr(48, value)

            }

            function cleanup_from_storage_t_uint64(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffff)
            }

            function extract_from_storage_value_offset_6_t_uint64(slot_value) -> value {
                value := cleanup_from_storage_t_uint64(shift_right_48_unsigned(slot_value))
            }

            function read_from_storage_split_offset_6_t_uint64(slot) -> value {
                value := extract_from_storage_value_offset_6_t_uint64(sload(slot))

            }

            function cleanup_t_uint64(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffff)
            }

            function write_to_memory_t_uint64(memPtr, value) {
                mstore(memPtr, cleanup_t_uint64(value))
            }

            function cleanup_from_storage_t_int256(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_offset_0_t_int256(slot_value) -> value {
                value := cleanup_from_storage_t_int256(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_int256(slot) -> value {
                value := extract_from_storage_value_offset_0_t_int256(sload(slot))

            }

            function write_to_memory_t_int256(memPtr, value) {
                mstore(memPtr, cleanup_t_int256(value))
            }

            function allocate_memory_struct_t_struct$_PositionStatus_$13584_memory_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function read_from_storage_reference_type_t_struct$_PositionStatus_$13584_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_PositionStatus_$13584_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_int256(add(slot, 0))
                    write_to_memory_t_int256(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_int256(add(slot, 1))
                    write_to_memory_t_int256(add(value, 32), memberValue_0)
                }

            }

            function write_to_memory_t_struct$_PositionStatus_$13584_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function allocate_memory_struct_t_struct$_SqrtPositionStatus_$13597_memory_ptr() -> memPtr {
                memPtr := allocate_memory(192)
            }

            function read_from_storage_reference_type_t_struct$_SqrtPositionStatus_$13597_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_SqrtPositionStatus_$13597_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_int256(add(slot, 0))
                    write_to_memory_t_int256(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_int256(add(slot, 1))
                    write_to_memory_t_int256(add(value, 32), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_int256(add(slot, 2))
                    write_to_memory_t_int256(add(value, 64), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_int256(add(slot, 3))
                    write_to_memory_t_int256(add(value, 96), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 4))
                    write_to_memory_t_uint256(add(value, 128), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 5))
                    write_to_memory_t_uint256(add(value, 160), memberValue_0)
                }

            }

            function write_to_memory_t_struct$_SqrtPositionStatus_$13597_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function allocate_memory_struct_t_struct$_UserStatus_$30939_memory_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function read_from_storage_reference_type_t_struct$_UserStatus_$30939_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_UserStatus_$30939_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_int256(add(slot, 0))
                    write_to_memory_t_int256(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))
                    write_to_memory_t_uint256(add(value, 32), memberValue_0)
                }

            }

            function write_to_memory_t_struct$_UserStatus_$30939_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function allocate_memory_struct_t_struct$_UserStatus_$13665_memory_ptr() -> memPtr {
                memPtr := allocate_memory(256)
            }

            function read_from_storage_reference_type_t_struct$_UserStatus_$13665_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_UserStatus_$13665_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 0))
                    write_to_memory_t_uint256(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_int24(add(slot, 1))
                    write_to_memory_t_int24(add(value, 32), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_3_t_int24(add(slot, 1))
                    write_to_memory_t_int24(add(value, 64), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_6_t_uint64(add(slot, 1))
                    write_to_memory_t_uint64(add(value, 96), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_reference_type_t_struct$_PositionStatus_$13584_memory_ptr(add(slot, 2))
                    write_to_memory_t_struct$_PositionStatus_$13584_memory_ptr(add(value, 128), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_reference_type_t_struct$_SqrtPositionStatus_$13597_memory_ptr(add(slot, 4))
                    write_to_memory_t_struct$_SqrtPositionStatus_$13597_memory_ptr(add(value, 160), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_reference_type_t_struct$_UserStatus_$30939_memory_ptr(add(slot, 10))
                    write_to_memory_t_struct$_UserStatus_$30939_memory_ptr(add(value, 192), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_reference_type_t_struct$_UserStatus_$30939_memory_ptr(add(slot, 12))
                    write_to_memory_t_struct$_UserStatus_$30939_memory_ptr(add(value, 224), memberValue_0)
                }

            }

            function convert_t_struct$_UserStatus_$13665_storage_ptr_to_t_struct$_UserStatus_$13665_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_UserStatus_$13665_memory_ptr(value)

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

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function negate_t_int256(value) -> ret {
                value := cleanup_t_int256(value)
                if eq(value, 0x8000000000000000000000000000000000000000000000000000000000000000) { panic_error_0x11() }
                ret := sub(0, value)
            }

            function allocate_memory_struct_t_struct$_SwapStableResult_$33967_storage_ptr() -> memPtr {
                memPtr := allocate_memory(128)
            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function allocate_memory_struct_t_struct$_UpdatePerpParams_$13602_storage_ptr() -> memPtr {
                memPtr := allocate_memory(64)
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

            function allocate_memory_struct_t_struct$_UpdateSqrtPerpParams_$13607_storage_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            /// @ast-id 34129
            /// @src 68:1194:3048  "function trade(..."
            function fun_trade_34129(var_globalData_33982_slot, var_tradeParams_33985_mpos, var_settlementData_33987_mpos) -> var_tradeResult_33991_mpos {
                /// @src 68:1378:1419  "IPredyPool.TradeResult memory tradeResult"
                let zero_t_struct$_TradeResult_$2034_memory_ptr_1_mpos := zero_value_for_split_t_struct$_TradeResult_$2034_memory_ptr()
                var_tradeResult_33991_mpos := zero_t_struct$_TradeResult_$2034_memory_ptr_1_mpos

                /// @src 68:1472:1482  "globalData"
                let _2_slot := var_globalData_33982_slot
                let expr_33998_slot := _2_slot
                /// @src 68:1472:1488  "globalData.pairs"
                let _3 := add(expr_33998_slot, 3)
                let _4_slot := _3
                let expr_33999_slot := _4_slot
                /// @src 68:1489:1500  "tradeParams"
                let _5_mpos := var_tradeParams_33985_mpos
                let expr_34000_mpos := _5_mpos
                /// @src 68:1489:1507  "tradeParams.pairId"
                let _6 := add(expr_34000_mpos, 0)
                let _7 := read_from_memoryt_uint256(_6)
                let expr_34001 := _7
                /// @src 68:1472:1508  "globalData.pairs[tradeParams.pairId]"
                let _8 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_33999_slot,expr_34001)
                let _9_slot := _8
                let expr_34002_slot := _9_slot
                /// @src 68:1431:1508  "DataType.PairStatus storage pairStatus = globalData.pairs[tradeParams.pairId]"
                let var_pairStatus_33997_slot := convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_storage_ptr(expr_34002_slot)
                /// @src 68:1557:1567  "globalData"
                let _10_slot := var_globalData_33982_slot
                let expr_34009_slot := _10_slot
                /// @src 68:1557:1574  "globalData.vaults"
                let _11 := add(expr_34009_slot, 5)
                let _12_slot := _11
                let expr_34010_slot := _12_slot
                /// @src 68:1575:1586  "tradeParams"
                let _13_mpos := var_tradeParams_33985_mpos
                let expr_34011_mpos := _13_mpos
                /// @src 68:1575:1594  "tradeParams.vaultId"
                let _14 := add(expr_34011_mpos, 32)
                let _15 := read_from_memoryt_uint256(_14)
                let expr_34012 := _15
                /// @src 68:1557:1595  "globalData.vaults[tradeParams.vaultId]"
                let _16 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Vault_$6116_storage_$_of_t_uint256(expr_34010_slot,expr_34012)
                let _17_slot := _16
                let expr_34013_slot := _17_slot
                /// @src 68:1557:1608  "globalData.vaults[tradeParams.vaultId].openPosition"
                let _18 := add(expr_34013_slot, 5)
                let _19_slot := _18
                let expr_34014_slot := _19_slot
                /// @src 68:1518:1608  "Perp.UserStatus storage openPosition = globalData.vaults[tradeParams.vaultId].openPosition"
                let var_openPosition_34008_slot := convert_t_struct$_UserStatus_$13665_storage_to_t_struct$_UserStatus_$13665_storage_ptr(expr_34014_slot)
                /// @src 68:1734:1744  "pairStatus"
                let _20_slot := var_pairStatus_33997_slot
                let expr_34022_slot := _20_slot
                /// @src 68:1746:1756  "globalData"
                let _21_slot := var_globalData_33982_slot
                let expr_34023_slot := _21_slot
                /// @src 68:1746:1780  "globalData.rebalanceFeeGrowthCache"
                let _22 := add(expr_34023_slot, 4)
                let _23_slot := _22
                let expr_34024_slot := _23_slot
                /// @src 68:1782:1794  "openPosition"
                let _24_slot := var_openPosition_34008_slot
                let expr_34025_slot := _24_slot
                /// @src 68:1710:1795  "settleUserBalanceAndFee(pairStatus, globalData.rebalanceFeeGrowthCache, openPosition)"
                let expr_34026_mpos := fun_settleUserBalanceAndFee_34395(expr_34022_slot, expr_34024_slot, expr_34025_slot)
                /// @src 68:1658:1795  "DataType.FeeAmount memory realizedFee =..."
                let var_realizedFee_34020_mpos := expr_34026_mpos
                /// @src 68:1913:1917  "Perp"
                let expr_34032_address := linkersymbol("src/libraries/Perp.sol:Perp")
                /// @src 68:1954:1964  "pairStatus"
                let _25_slot := var_pairStatus_33997_slot
                let expr_34034_slot := _25_slot
                /// @src 68:1954:1980  "pairStatus.sqrtAssetStatus"
                let _26 := add(expr_34034_slot, 33)
                let _27_slot := _26
                let expr_34035_slot := _27_slot
                /// @src 68:1982:1992  "pairStatus"
                let _28_slot := var_pairStatus_33997_slot
                let expr_34036_slot := _28_slot
                /// @src 68:1982:2004  "pairStatus.isQuoteZero"
                let _29 := add(expr_34036_slot, 50)
                let _30 := read_from_storage_split_offset_20_t_bool(_29)
                let expr_34037 := _30
                /// @src 68:2006:2018  "openPosition"
                let _31_slot := var_openPosition_34008_slot
                let expr_34038_slot := _31_slot
                /// @src 68:2020:2031  "tradeParams"
                let _32_mpos := var_tradeParams_33985_mpos
                let expr_34039_mpos := _32_mpos
                /// @src 68:2020:2047  "tradeParams.tradeAmountSqrt"
                let _33 := add(expr_34039_mpos, 96)
                let _34 := read_from_memoryt_int256(_33)
                let expr_34040 := _34
                /// @src 68:1913:2057  "Perp.computeRequiredAmounts(..."
                let _35_slot := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(expr_34035_slot)
                let _36_mpos := convert_t_struct$_UserStatus_$13665_storage_ptr_to_t_struct$_UserStatus_$13665_memory_ptr(expr_34038_slot)
                let expr_34041_component_1, expr_34041_component_2 := fun_computeRequiredAmounts_14650(_35_slot, expr_34037, _36_mpos, expr_34040)
                /// @src 68:1850:2057  "(int256 underlyingAmountForSqrt, int256 stableAmountForSqrt) = Perp.computeRequiredAmounts(..."
                let var_underlyingAmountForSqrt_34029 := expr_34041_component_1
                let var_stableAmountForSqrt_34031 := expr_34041_component_2
                /// @src 68:2105:2115  "pairStatus"
                let _37_slot := var_pairStatus_33997_slot
                let expr_34047_slot := _37_slot
                /// @src 68:2105:2131  "pairStatus.sqrtAssetStatus"
                let _38 := add(expr_34047_slot, 33)
                let _39_slot := _38
                let expr_34048_slot := _39_slot
                /// @src 68:2105:2143  "pairStatus.sqrtAssetStatus.uniswapPool"
                let _40 := add(expr_34048_slot, 0)
                let _41 := read_from_storage_split_offset_0_t_address(_40)
                let expr_34049 := _41
                /// @src 68:2145:2155  "pairStatus"
                let _42_slot := var_pairStatus_33997_slot
                let expr_34050_slot := _42_slot
                /// @src 68:2145:2167  "pairStatus.isQuoteZero"
                let _43 := add(expr_34050_slot, 50)
                let _44 := read_from_storage_split_offset_20_t_bool(_43)
                let expr_34051 := _44
                /// @src 68:2092:2168  "getSqrtPrice(pairStatus.sqrtAssetStatus.uniswapPool, pairStatus.isQuoteZero)"
                let expr_34052 := fun_getSqrtPrice_34264(expr_34049, expr_34051)
                /// @src 68:2068:2079  "tradeResult"
                let _45_mpos := var_tradeResult_33991_mpos
                let expr_34043_mpos := _45_mpos
                /// @src 68:2068:2089  "tradeResult.sqrtPrice"
                let _46 := add(expr_34043_mpos, 192)
                /// @src 68:2068:2168  "tradeResult.sqrtPrice = getSqrtPrice(pairStatus.sqrtAssetStatus.uniswapPool, pairStatus.isQuoteZero)"
                let _47 := expr_34052
                write_to_memory_t_uint256(_46, _47)
                let expr_34053 := expr_34052
                /// @src 68:2258:2268  "globalData"
                let _48_slot := var_globalData_33982_slot
                let expr_34059_slot := _48_slot
                /// @src 68:2282:2293  "tradeParams"
                let _49_mpos := var_tradeParams_33985_mpos
                let expr_34060_mpos := _49_mpos
                /// @src 68:2282:2300  "tradeParams.pairId"
                let _50 := add(expr_34060_mpos, 0)
                let _51 := read_from_memoryt_uint256(_50)
                let expr_34061 := _51
                /// @src 68:2332:2343  "tradeParams"
                let _52_mpos := var_tradeParams_33985_mpos
                let expr_34063_mpos := _52_mpos
                /// @src 68:2332:2355  "tradeParams.tradeAmount"
                let _53 := add(expr_34063_mpos, 64)
                let _54 := read_from_memoryt_int256(_53)
                let expr_34064 := _54
                /// @src 68:2331:2355  "-tradeParams.tradeAmount"
                let expr_34065 := negate_t_int256(expr_34064)
                /// @src 68:2357:2380  "underlyingAmountForSqrt"
                let _55 := var_underlyingAmountForSqrt_34029
                let expr_34066 := _55
                /// @src 68:2382:2393  "realizedFee"
                let _56_mpos := var_realizedFee_34020_mpos
                let expr_34067_mpos := _56_mpos
                /// @src 68:2382:2407  "realizedFee.feeAmountBase"
                let _57 := add(expr_34067_mpos, 0)
                let _58 := read_from_memoryt_int256(_57)
                let expr_34068 := _58
                /// @src 68:2409:2410  "0"
                let expr_34069 := 0x00
                /// @src 68:2314:2411  "SwapStableResult(-tradeParams.tradeAmount, underlyingAmountForSqrt, realizedFee.feeAmountBase, 0)"
                let expr_34070_mpos := allocate_memory_struct_t_struct$_SwapStableResult_$33967_storage_ptr()
                write_to_memory_t_int256(add(expr_34070_mpos, 0), expr_34065)
                write_to_memory_t_int256(add(expr_34070_mpos, 32), expr_34066)
                write_to_memory_t_int256(add(expr_34070_mpos, 64), expr_34068)
                let _59 := convert_t_rational_0_by_1_to_t_int256(expr_34069)
                write_to_memory_t_int256(add(expr_34070_mpos, 96), _59)
                /// @src 68:2425:2439  "settlementData"
                let _60_mpos := var_settlementData_33987_mpos
                let expr_34071_mpos := _60_mpos
                /// @src 68:2453:2464  "tradeResult"
                let _61_mpos := var_tradeResult_33991_mpos
                let expr_34072_mpos := _61_mpos
                /// @src 68:2453:2474  "tradeResult.sqrtPrice"
                let _62 := add(expr_34072_mpos, 192)
                let _63 := read_from_memoryt_uint256(_62)
                let expr_34073 := _63
                /// @src 68:2488:2499  "tradeParams"
                let _64_mpos := var_tradeParams_33985_mpos
                let expr_34074_mpos := _64_mpos
                /// @src 68:2488:2507  "tradeParams.vaultId"
                let _65 := add(expr_34074_mpos, 32)
                let _66 := read_from_memoryt_uint256(_65)
                let expr_34075 := _66
                /// @src 68:2240:2517  "swap(..."
                let expr_34076_mpos := fun_swap_34245(expr_34059_slot, expr_34061, expr_34070_mpos, expr_34071_mpos, expr_34073, expr_34075)
                /// @src 68:2203:2517  "SwapStableResult memory swapResult = swap(..."
                let var_swapResult_34057_mpos := expr_34076_mpos
                /// @src 68:2555:2565  "swapResult"
                let _67_mpos := var_swapResult_34057_mpos
                let expr_34081_mpos := _67_mpos
                /// @src 68:2555:2578  "swapResult.averagePrice"
                let _68 := add(expr_34081_mpos, 96)
                let _69 := read_from_memoryt_int256(_68)
                let expr_34082 := _69
                /// @src 68:2528:2539  "tradeResult"
                let _70_mpos := var_tradeResult_33991_mpos
                let expr_34078_mpos := _70_mpos
                /// @src 68:2528:2552  "tradeResult.averagePrice"
                let _71 := add(expr_34078_mpos, 128)
                /// @src 68:2528:2578  "tradeResult.averagePrice = swapResult.averagePrice"
                let _72 := expr_34082
                write_to_memory_t_int256(_71, _72)
                let expr_34083 := expr_34082
                /// @src 68:2639:2643  "Perp"
                let expr_34088_address := linkersymbol("src/libraries/Perp.sol:Perp")
                /// @src 68:2672:2682  "pairStatus"
                let _73_slot := var_pairStatus_33997_slot
                let expr_34090_slot := _73_slot
                /// @src 68:2696:2708  "openPosition"
                let _74_slot := var_openPosition_34008_slot
                let expr_34091_slot := _74_slot
                /// @src 68:2722:2726  "Perp"
                let expr_34092_address := linkersymbol("src/libraries/Perp.sol:Perp")
                /// @src 68:2744:2755  "tradeParams"
                let _75_mpos := var_tradeParams_33985_mpos
                let expr_34094_mpos := _75_mpos
                /// @src 68:2744:2767  "tradeParams.tradeAmount"
                let _76 := add(expr_34094_mpos, 64)
                let _77 := read_from_memoryt_int256(_76)
                let expr_34095 := _77
                /// @src 68:2769:2779  "swapResult"
                let _78_mpos := var_swapResult_34057_mpos
                let expr_34096_mpos := _78_mpos
                /// @src 68:2769:2790  "swapResult.amountPerp"
                let _79 := add(expr_34096_mpos, 0)
                let _80 := read_from_memoryt_int256(_79)
                let expr_34097 := _80
                /// @src 68:2722:2791  "Perp.UpdatePerpParams(tradeParams.tradeAmount, swapResult.amountPerp)"
                let expr_34098_mpos := allocate_memory_struct_t_struct$_UpdatePerpParams_$13602_storage_ptr()
                write_to_memory_t_int256(add(expr_34098_mpos, 0), expr_34095)
                write_to_memory_t_int256(add(expr_34098_mpos, 32), expr_34097)
                /// @src 68:2805:2809  "Perp"
                let expr_34099_address := linkersymbol("src/libraries/Perp.sol:Perp")
                /// @src 68:2831:2842  "tradeParams"
                let _81_mpos := var_tradeParams_33985_mpos
                let expr_34101_mpos := _81_mpos
                /// @src 68:2831:2858  "tradeParams.tradeAmountSqrt"
                let _82 := add(expr_34101_mpos, 96)
                let _83 := read_from_memoryt_int256(_82)
                let expr_34102 := _83
                /// @src 68:2860:2870  "swapResult"
                let _84_mpos := var_swapResult_34057_mpos
                let expr_34103_mpos := _84_mpos
                /// @src 68:2860:2885  "swapResult.amountSqrtPerp"
                let _85 := add(expr_34103_mpos, 32)
                let _86 := read_from_memoryt_int256(_85)
                let expr_34104 := _86
                /// @src 68:2888:2907  "stableAmountForSqrt"
                let _87 := var_stableAmountForSqrt_34031
                let expr_34105 := _87
                /// @src 68:2860:2907  "swapResult.amountSqrtPerp + stableAmountForSqrt"
                let expr_34106 := checked_add_t_int256(expr_34104, expr_34105)

                /// @src 68:2805:2908  "Perp.UpdateSqrtPerpParams(tradeParams.tradeAmountSqrt, swapResult.amountSqrtPerp + stableAmountForSqrt)"
                let expr_34107_mpos := allocate_memory_struct_t_struct$_UpdateSqrtPerpParams_$13607_storage_ptr()
                write_to_memory_t_int256(add(expr_34107_mpos, 0), expr_34102)
                write_to_memory_t_int256(add(expr_34107_mpos, 32), expr_34106)
                /// @src 68:2639:2918  "Perp.updatePosition(..."
                let expr_34108_mpos := fun_updatePosition_14826(expr_34090_slot, expr_34091_slot, expr_34098_mpos, expr_34107_mpos)
                /// @src 68:2618:2629  "tradeResult"
                let _88_mpos := var_tradeResult_33991_mpos
                let expr_34085_mpos := _88_mpos
                /// @src 68:2618:2636  "tradeResult.payoff"
                let _89 := add(expr_34085_mpos, 0)
                /// @src 68:2618:2918  "tradeResult.payoff = Perp.updatePosition(..."
                mstore(_89, expr_34108_mpos)
                let _90_mpos := mload(_89)
                let expr_34109_mpos := _90_mpos
                /// @src 68:2947:2958  "realizedFee"
                let _91_mpos := var_realizedFee_34020_mpos
                let expr_34114_mpos := _91_mpos
                /// @src 68:2947:2973  "realizedFee.feeAmountQuote"
                let _92 := add(expr_34114_mpos, 32)
                let _93 := read_from_memoryt_int256(_92)
                let expr_34115 := _93
                /// @src 68:2976:2986  "swapResult"
                let _94_mpos := var_swapResult_34057_mpos
                let expr_34116_mpos := _94_mpos
                /// @src 68:2976:2990  "swapResult.fee"
                let _95 := add(expr_34116_mpos, 64)
                let _96 := read_from_memoryt_int256(_95)
                let expr_34117 := _96
                /// @src 68:2947:2990  "realizedFee.feeAmountQuote + swapResult.fee"
                let expr_34118 := checked_add_t_int256(expr_34115, expr_34117)

                /// @src 68:2929:2940  "tradeResult"
                let _97_mpos := var_tradeResult_33991_mpos
                let expr_34111_mpos := _97_mpos
                /// @src 68:2929:2944  "tradeResult.fee"
                let _98 := add(expr_34111_mpos, 64)
                /// @src 68:2929:2990  "tradeResult.fee = realizedFee.feeAmountQuote + swapResult.fee"
                let _99 := expr_34118
                write_to_memory_t_int256(_98, _99)
                let expr_34119 := expr_34118
                /// @src 68:3022:3033  "tradeParams"
                let _100_mpos := var_tradeParams_33985_mpos
                let expr_34124_mpos := _100_mpos
                /// @src 68:3022:3041  "tradeParams.vaultId"
                let _101 := add(expr_34124_mpos, 32)
                let _102 := read_from_memoryt_uint256(_101)
                let expr_34125 := _102
                /// @src 68:3000:3011  "tradeResult"
                let _103_mpos := var_tradeResult_33991_mpos
                let expr_34121_mpos := _103_mpos
                /// @src 68:3000:3019  "tradeResult.vaultId"
                let _104 := add(expr_34121_mpos, 32)
                /// @src 68:3000:3041  "tradeResult.vaultId = tradeParams.vaultId"
                let _105 := expr_34125
                write_to_memory_t_uint256(_104, _105)
                let expr_34126 := expr_34125

            }
            /// @src 68:814:5932  "library Trade {..."

            function allocate_memory_struct_t_struct$_FeeAmount_$6126_memory_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function allocate_and_zero_memory_struct_t_struct$_FeeAmount_$6126_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_FeeAmount_$6126_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_FeeAmount_$6126_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_FeeAmount_$6126_memory_ptr()
            }

            /// @ast-id 34395
            /// @src 68:5484:5930  "function settleUserBalanceAndFee(..."
            function fun_settleUserBalanceAndFee_34395(var__pairStatus_34364_slot, var_rebalanceFeeGrowthCache_34369_slot, var__userStatus_34372_slot) -> var_realizedFee_34376_mpos {
                /// @src 68:5729:5766  "DataType.FeeAmount memory realizedFee"
                let zero_t_struct$_FeeAmount_$6126_memory_ptr_106_mpos := zero_value_for_split_t_struct$_FeeAmount_$6126_memory_ptr()
                var_realizedFee_34376_mpos := zero_t_struct$_FeeAmount_$6126_memory_ptr_106_mpos

                /// @src 68:5792:5799  "PerpFee"
                let expr_34379_address := linkersymbol("src/libraries/PerpFee.sol:PerpFee")
                /// @src 68:5814:5825  "_pairStatus"
                let _107_slot := var__pairStatus_34364_slot
                let expr_34381_slot := _107_slot
                /// @src 68:5827:5850  "rebalanceFeeGrowthCache"
                let _108_slot := var_rebalanceFeeGrowthCache_34369_slot
                let expr_34382_slot := _108_slot
                /// @src 68:5852:5863  "_userStatus"
                let _109_slot := var__userStatus_34372_slot
                let expr_34383_slot := _109_slot
                /// @src 68:5792:5864  "PerpFee.settleUserFee(_pairStatus, rebalanceFeeGrowthCache, _userStatus)"
                let expr_34384_mpos := fun_settleUserFee_33462(expr_34381_slot, expr_34382_slot, expr_34383_slot)
                /// @src 68:5778:5864  "realizedFee = PerpFee.settleUserFee(_pairStatus, rebalanceFeeGrowthCache, _userStatus)"
                var_realizedFee_34376_mpos := expr_34384_mpos
                let _110_mpos := var_realizedFee_34376_mpos
                let expr_34385_mpos := _110_mpos
                /// @src 68:5875:5879  "Perp"
                let expr_34387_address := linkersymbol("src/libraries/Perp.sol:Perp")
                /// @src 68:5898:5909  "_pairStatus"
                let _111_slot := var__pairStatus_34364_slot
                let expr_34390_slot := _111_slot
                /// @src 68:5911:5922  "_userStatus"
                let _112_slot := var__userStatus_34372_slot
                let expr_34391_slot := _112_slot
                fun_settleUserBalance_14322(expr_34390_slot, expr_34391_slot)

            }
            /// @src 68:814:5932  "library Trade {..."

            function zero_value_for_split_t_int256() -> ret {
                ret := 0
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function write_to_memory_t_address(memPtr, value) {
                mstore(memPtr, cleanup_t_address(value))
            }

            function extract_from_storage_value_offset_20_t_int24(slot_value) -> value {
                value := cleanup_from_storage_t_int24(shift_right_160_unsigned(slot_value))
            }

            function read_from_storage_split_offset_20_t_int24(slot) -> value {
                value := extract_from_storage_value_offset_20_t_int24(sload(slot))

            }

            function shift_right_184_unsigned(value) -> newValue {
                newValue :=

                shr(184, value)

            }

            function extract_from_storage_value_offset_23_t_int24(slot_value) -> value {
                value := cleanup_from_storage_t_int24(shift_right_184_unsigned(slot_value))
            }

            function read_from_storage_split_offset_23_t_int24(slot) -> value {
                value := extract_from_storage_value_offset_23_t_int24(sload(slot))

            }

            function extract_from_storage_value_offset_0_t_uint64(slot_value) -> value {
                value := cleanup_from_storage_t_uint64(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint64(slot) -> value {
                value := extract_from_storage_value_offset_0_t_uint64(sload(slot))

            }

            function allocate_memory_struct_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr() -> memPtr {
                memPtr := allocate_memory(544)
            }

            function read_from_storage_reference_type_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_address(add(slot, 0))
                    write_to_memory_t_address(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_20_t_int24(add(slot, 0))
                    write_to_memory_t_int24(add(value, 32), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_23_t_int24(add(slot, 0))
                    write_to_memory_t_int24(add(value, 64), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint64(add(slot, 1))
                    write_to_memory_t_uint64(add(value, 96), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 2))
                    write_to_memory_t_uint256(add(value, 128), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 3))
                    write_to_memory_t_uint256(add(value, 160), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 4))
                    write_to_memory_t_uint256(add(value, 192), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 5))
                    write_to_memory_t_uint256(add(value, 224), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 6))
                    write_to_memory_t_uint256(add(value, 256), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 7))
                    write_to_memory_t_uint256(add(value, 288), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 8))
                    write_to_memory_t_uint256(add(value, 320), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 9))
                    write_to_memory_t_uint256(add(value, 352), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 10))
                    write_to_memory_t_uint256(add(value, 384), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_reference_type_t_struct$_UserStatus_$30939_memory_ptr(add(slot, 11))
                    write_to_memory_t_struct$_UserStatus_$30939_memory_ptr(add(value, 416), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_reference_type_t_struct$_UserStatus_$30939_memory_ptr(add(slot, 13))
                    write_to_memory_t_struct$_UserStatus_$30939_memory_ptr(add(value, 448), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_int256(add(slot, 15))
                    write_to_memory_t_int256(add(value, 480), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_int256(add(slot, 16))
                    write_to_memory_t_int256(add(value, 512), memberValue_0)
                }

            }

            function convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(value)

            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function convert_t_int256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_int256(value)))
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

            /// @ast-id 14650
            /// @src 61:15197:16851  "function computeRequiredAmounts(..."
            function fun_computeRequiredAmounts_14650(var__sqrtAssetStatus_14522_slot, var__isQuoteZero_14524, var__userStatus_14527_mpos, var__tradeSqrtAmount_14529) -> var_requiredAmountUnderlying_14532, var_requiredAmountStable_14534 {
                /// @src 61:15406:15437  "int256 requiredAmountUnderlying"
                let zero_t_int256_113 := zero_value_for_split_t_int256()
                var_requiredAmountUnderlying_14532 := zero_t_int256_113
                /// @src 61:15439:15466  "int256 requiredAmountStable"
                let zero_t_int256_114 := zero_value_for_split_t_int256()
                var_requiredAmountStable_14534 := zero_t_int256_114

                /// @src 61:15482:15498  "_tradeSqrtAmount"
                let _115 := var__tradeSqrtAmount_14529
                let expr_14536 := _115
                /// @src 61:15502:15503  "0"
                let expr_14537 := 0x00
                /// @src 61:15482:15503  "_tradeSqrtAmount == 0"
                let expr_14538 := eq(cleanup_t_int256(expr_14536), convert_t_rational_0_by_1_to_t_int256(expr_14537))
                /// @src 61:15478:15543  "if (_tradeSqrtAmount == 0) {..."
                if expr_14538 {
                    /// @src 61:15527:15528  "0"
                    let expr_14539 := 0x00
                    /// @src 61:15526:15532  "(0, 0)"
                    let expr_14541_component_1 := expr_14539
                    /// @src 61:15530:15531  "0"
                    let expr_14540 := 0x00
                    /// @src 61:15526:15532  "(0, 0)"
                    let expr_14541_component_2 := expr_14540
                    /// @src 61:15519:15532  "return (0, 0)"
                    var_requiredAmountUnderlying_14532 := convert_t_rational_0_by_1_to_t_int256(expr_14541_component_1)
                    var_requiredAmountStable_14534 := convert_t_rational_0_by_1_to_t_int256(expr_14541_component_2)
                    leave
                    /// @src 61:15478:15543  "if (_tradeSqrtAmount == 0) {..."
                }
                /// @src 61:15558:15570  "Reallocation"
                let expr_14545_address := linkersymbol("src/libraries/Reallocation.sol:Reallocation")
                /// @src 61:15581:15597  "_sqrtAssetStatus"
                let _116_slot := var__sqrtAssetStatus_14522_slot
                let expr_14547_slot := _116_slot
                /// @src 61:15558:15598  "Reallocation.isInRange(_sqrtAssetStatus)"
                let _117_mpos := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(expr_14547_slot)
                let expr_14548 := fun_isInRange_30631(_117_mpos)
                /// @src 61:15557:15598  "!Reallocation.isInRange(_sqrtAssetStatus)"
                let expr_14549 := cleanup_t_bool(iszero(expr_14548))
                /// @src 61:15553:15649  "if (!Reallocation.isInRange(_sqrtAssetStatus)) {..."
                if expr_14549 {
                    /// @src 61:15621:15638  "OutOfRangeError()"
                    {

                        let _119 := 0

                        mstore(_119, 0xf8309d2e00000000000000000000000000000000000000000000000000000000)
                        let _118 := abi_encode_tuple__to__fromStack(add(_119, 4) )
                        revert(_119, sub(_118, _119))
                    }/// @src 61:15553:15649  "if (!Reallocation.isInRange(_sqrtAssetStatus)) {..."
                }
                /// @src 61:15659:15681  "int256 requiredAmount0"
                let var_requiredAmount0_14556
                let zero_t_int256_120 := zero_value_for_split_t_int256()
                var_requiredAmount0_14556 := zero_t_int256_120
                /// @src 61:15691:15713  "int256 requiredAmount1"
                let var_requiredAmount1_14559
                let zero_t_int256_121 := zero_value_for_split_t_int256()
                var_requiredAmount1_14559 := zero_t_int256_121
                /// @src 61:15728:15744  "_tradeSqrtAmount"
                let _122 := var__tradeSqrtAmount_14529
                let expr_14561 := _122
                /// @src 61:15747:15748  "0"
                let expr_14562 := 0x00
                /// @src 61:15728:15748  "_tradeSqrtAmount > 0"
                let expr_14563 := sgt(cleanup_t_int256(expr_14561), convert_t_rational_0_by_1_to_t_int256(expr_14562))
                /// @src 61:15724:16266  "if (_tradeSqrtAmount > 0) {..."
                switch expr_14563
                case 0 {
                    /// @src 61:16128:16144  "_tradeSqrtAmount"
                    let _123 := var__tradeSqrtAmount_14529
                    let expr_14588 := _123
                    /// @src 61:16147:16148  "0"
                    let expr_14589 := 0x00
                    /// @src 61:16128:16148  "_tradeSqrtAmount < 0"
                    let expr_14590 := slt(cleanup_t_int256(expr_14588), convert_t_rational_0_by_1_to_t_int256(expr_14589))
                    /// @src 61:16124:16266  "if (_tradeSqrtAmount < 0) {..."
                    if expr_14590 {
                        /// @src 61:16210:16226  "_sqrtAssetStatus"
                        let _124_slot := var__sqrtAssetStatus_14522_slot
                        let expr_14595_slot := _124_slot
                        /// @src 61:16237:16253  "_tradeSqrtAmount"
                        let _125 := var__tradeSqrtAmount_14529
                        let expr_14598 := _125
                        /// @src 61:16236:16253  "-_tradeSqrtAmount"
                        let expr_14599 := negate_t_int256(expr_14598)
                        /// @src 61:16228:16254  "uint256(-_tradeSqrtAmount)"
                        let expr_14600 := convert_t_int256_to_t_uint256(expr_14599)
                        /// @src 61:16201:16255  "decrease(_sqrtAssetStatus, uint256(-_tradeSqrtAmount))"
                        let _126_mpos := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(expr_14595_slot)
                        let expr_14601_component_1, expr_14601_component_2 := fun_decrease_15520(_126_mpos, expr_14600)
                        /// @src 61:16164:16255  "(requiredAmount0, requiredAmount1) = decrease(_sqrtAssetStatus, uint256(-_tradeSqrtAmount))"
                        var_requiredAmount1_14559 := expr_14601_component_2
                        var_requiredAmount0_14556 := expr_14601_component_1
                        /// @src 61:16124:16266  "if (_tradeSqrtAmount < 0) {..."
                    }
                    /// @src 61:15724:16266  "if (_tradeSqrtAmount > 0) {..."
                }
                default {
                    /// @src 61:15810:15826  "_sqrtAssetStatus"
                    let _127_slot := var__sqrtAssetStatus_14522_slot
                    let expr_14568_slot := _127_slot
                    /// @src 61:15836:15852  "_tradeSqrtAmount"
                    let _128 := var__tradeSqrtAmount_14529
                    let expr_14571 := _128
                    /// @src 61:15828:15853  "uint256(_tradeSqrtAmount)"
                    let expr_14572 := convert_t_int256_to_t_uint256(expr_14571)
                    /// @src 61:15801:15854  "increase(_sqrtAssetStatus, uint256(_tradeSqrtAmount))"
                    let _129_mpos := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(expr_14568_slot)
                    let expr_14573_component_1, expr_14573_component_2 := fun_increase_15438(_129_mpos, expr_14572)
                    /// @src 61:15764:15854  "(requiredAmount0, requiredAmount1) = increase(_sqrtAssetStatus, uint256(_tradeSqrtAmount))"
                    var_requiredAmount1_14559 := expr_14573_component_2
                    var_requiredAmount0_14556 := expr_14573_component_1
                    /// @src 61:15873:15889  "_sqrtAssetStatus"
                    let _130_slot := var__sqrtAssetStatus_14522_slot
                    let expr_14576_slot := _130_slot
                    /// @src 61:15873:15901  "_sqrtAssetStatus.totalAmount"
                    let _131 := add(expr_14576_slot, 2)
                    let _132 := read_from_storage_split_offset_0_t_uint256(_131)
                    let expr_14577 := _132
                    /// @src 61:15905:15921  "_sqrtAssetStatus"
                    let _133_slot := var__sqrtAssetStatus_14522_slot
                    let expr_14578_slot := _133_slot
                    /// @src 61:15905:15936  "_sqrtAssetStatus.borrowedAmount"
                    let _134 := add(expr_14578_slot, 3)
                    let _135 := read_from_storage_split_offset_0_t_uint256(_134)
                    let expr_14579 := _135
                    /// @src 61:15873:15936  "_sqrtAssetStatus.totalAmount == _sqrtAssetStatus.borrowedAmount"
                    let expr_14580 := eq(cleanup_t_uint256(expr_14577), cleanup_t_uint256(expr_14579))
                    /// @src 61:15869:16108  "if (_sqrtAssetStatus.totalAmount == _sqrtAssetStatus.borrowedAmount) {..."
                    if expr_14580 {
                        /// @src 61:16076:16092  "_sqrtAssetStatus"
                        let _136_slot := var__sqrtAssetStatus_14522_slot
                        let expr_14582_slot := _136_slot
                        fun_saveLastFeeGrowth_14518(expr_14582_slot)
                        /// @src 61:15869:16108  "if (_sqrtAssetStatus.totalAmount == _sqrtAssetStatus.borrowedAmount) {..."
                    }
                    /// @src 61:15724:16266  "if (_tradeSqrtAmount > 0) {..."
                }
                /// @src 61:16280:16292  "_isQuoteZero"
                let _137 := var__isQuoteZero_14524
                let expr_14607 := _137
                /// @src 61:16276:16538  "if (_isQuoteZero) {..."
                switch expr_14607
                case 0 {
                    /// @src 61:16456:16471  "requiredAmount1"
                    let _138 := var_requiredAmount1_14559
                    let expr_14618 := _138
                    /// @src 61:16433:16471  "requiredAmountStable = requiredAmount1"
                    var_requiredAmountStable_14534 := expr_14618
                    let expr_14619 := expr_14618
                    /// @src 61:16512:16527  "requiredAmount0"
                    let _139 := var_requiredAmount0_14556
                    let expr_14622 := _139
                    /// @src 61:16485:16527  "requiredAmountUnderlying = requiredAmount0"
                    var_requiredAmountUnderlying_14532 := expr_14622
                    let expr_14623 := expr_14622
                    /// @src 61:16276:16538  "if (_isQuoteZero) {..."
                }
                default {
                    /// @src 61:16331:16346  "requiredAmount0"
                    let _140 := var_requiredAmount0_14556
                    let expr_14609 := _140
                    /// @src 61:16308:16346  "requiredAmountStable = requiredAmount0"
                    var_requiredAmountStable_14534 := expr_14609
                    let expr_14610 := expr_14609
                    /// @src 61:16387:16402  "requiredAmount1"
                    let _141 := var_requiredAmount1_14559
                    let expr_14613 := _141
                    /// @src 61:16360:16402  "requiredAmountUnderlying = requiredAmount1"
                    var_requiredAmountUnderlying_14532 := expr_14613
                    let expr_14614 := expr_14613
                    /// @src 61:16276:16538  "if (_isQuoteZero) {..."
                }
                /// @src 61:16634:16645  "_userStatus"
                let _142_mpos := var__userStatus_14527_mpos
                let expr_14632_mpos := _142_mpos
                /// @src 61:16647:16663  "_sqrtAssetStatus"
                let _143_slot := var__sqrtAssetStatus_14522_slot
                let expr_14633_slot := _143_slot
                /// @src 61:16647:16673  "_sqrtAssetStatus.tickLower"
                let _144 := add(expr_14633_slot, 0)
                let _145 := read_from_storage_split_offset_20_t_int24(_144)
                let expr_14634 := _145
                /// @src 61:16675:16691  "_sqrtAssetStatus"
                let _146_slot := var__sqrtAssetStatus_14522_slot
                let expr_14635_slot := _146_slot
                /// @src 61:16675:16701  "_sqrtAssetStatus.tickUpper"
                let _147 := add(expr_14635_slot, 0)
                let _148 := read_from_storage_split_offset_23_t_int24(_147)
                let expr_14636 := _148
                /// @src 61:16703:16719  "_tradeSqrtAmount"
                let _149 := var__tradeSqrtAmount_14529
                let expr_14637 := _149
                /// @src 61:16721:16733  "_isQuoteZero"
                let _150 := var__isQuoteZero_14524
                let expr_14638 := _150
                /// @src 61:16597:16743  "calculateSqrtPerpOffset(..."
                let expr_14639_component_1, expr_14639_component_2 := fun_calculateSqrtPerpOffset_15677(expr_14632_mpos, expr_14634, expr_14636, expr_14637, expr_14638)
                /// @src 61:16548:16743  "(int256 offsetUnderlying, int256 offsetStable) = calculateSqrtPerpOffset(..."
                let var_offsetUnderlying_14628 := expr_14639_component_1
                let var_offsetStable_14630 := expr_14639_component_2
                /// @src 61:16782:16798  "offsetUnderlying"
                let _151 := var_offsetUnderlying_14628
                let expr_14642 := _151
                /// @src 61:16754:16798  "requiredAmountUnderlying -= offsetUnderlying"
                let _152 := var_requiredAmountUnderlying_14532
                let expr_14643 := checked_sub_t_int256(_152, expr_14642)

                var_requiredAmountUnderlying_14532 := expr_14643
                /// @src 61:16832:16844  "offsetStable"
                let _153 := var_offsetStable_14630
                let expr_14646 := _153
                /// @src 61:16808:16844  "requiredAmountStable -= offsetStable"
                let _154 := var_requiredAmountStable_14534
                let expr_14647 := checked_sub_t_int256(_154, expr_14646)

                var_requiredAmountStable_14534 := expr_14647

            }
            /// @src 68:814:5932  "library Trade {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function convert_t_uint160_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint160(value)))
            }

            /// @ast-id 34264
            /// @src 68:4341:4561  "function getSqrtPrice(address uniswapPoolAddress, bool isQuoteZero) internal view returns (uint256 sqrtPriceX96) {..."
            function fun_getSqrtPrice_34264(var_uniswapPoolAddress_34247, var_isQuoteZero_34249) -> var_sqrtPriceX96_34252 {
                /// @src 68:4432:4452  "uint256 sqrtPriceX96"
                let zero_t_uint256_155 := zero_value_for_split_t_uint256()
                var_sqrtPriceX96_34252 := zero_t_uint256_155

                /// @src 68:4471:4480  "UniHelper"
                let expr_34254_address := linkersymbol("src/libraries/UniHelper.sol:UniHelper")
                /// @src 68:4498:4507  "UniHelper"
                let expr_34256_address := linkersymbol("src/libraries/UniHelper.sol:UniHelper")
                /// @src 68:4521:4539  "uniswapPoolAddress"
                let _156 := var_uniswapPoolAddress_34247
                let expr_34258 := _156
                /// @src 68:4498:4540  "UniHelper.getSqrtPrice(uniswapPoolAddress)"
                let expr_34259 := fun_getSqrtPrice_16495(expr_34258)
                /// @src 68:4542:4553  "isQuoteZero"
                let _157 := var_isQuoteZero_34249
                let expr_34260 := _157
                /// @src 68:4471:4554  "UniHelper.convertSqrtPrice(UniHelper.getSqrtPrice(uniswapPoolAddress), isQuoteZero)"
                let expr_34261 := fun_convertSqrtPrice_16543(expr_34259, expr_34260)
                /// @src 68:4464:4554  "return UniHelper.convertSqrtPrice(UniHelper.getSqrtPrice(uniswapPoolAddress), isQuoteZero)"
                var_sqrtPriceX96_34252 := convert_t_uint160_to_t_uint256(expr_34261)
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            function allocate_memory_struct_t_struct$_SwapStableResult_$33967_memory_ptr() -> memPtr {
                memPtr := allocate_memory(128)
            }

            function allocate_and_zero_memory_struct_t_struct$_SwapStableResult_$33967_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_SwapStableResult_$33967_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_SwapStableResult_$33967_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_SwapStableResult_$33967_memory_ptr()
            }

            function cleanup_t_rational_1000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000000000000000000_by_1(value)))
            }

            function convert_t_rational_1000000000000000000_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_1000000000000000000_by_1(value)))
            }

            function checked_mul_t_int256(x, y) -> product {
                x := cleanup_t_int256(x)
                y := cleanup_t_int256(y)
                let product_raw := mul(x, y)
                product := cleanup_t_int256(product_raw)

                // special case
                if and(slt(x, 0), eq(y, 0x8000000000000000000000000000000000000000000000000000000000000000)) { panic_error_0x11() }

                // overflow, if x != 0 and y != product/x
                if iszero(
                    or(
                        iszero(x),
                        eq(y, sdiv(product, x))
                    )
                ) { panic_error_0x11() }

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_t_int256_to_t_int256_fromStack(value, pos) {
                mstore(pos, cleanup_t_int256(value))
            }

            function abi_encode_tuple_t_uint256_t_uint256_t_address_t_int256_t_int256__to_t_uint256_t_uint256_t_address_t_int256_t_int256__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_address_to_t_address_fromStack(value2,  add(headStart, 64))

                abi_encode_t_int256_to_t_int256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_int256_to_t_int256_fromStack(value4,  add(headStart, 128))

            }

            /// @ast-id 34245
            /// @src 68:3054:4335  "function swap(..."
            function fun_swap_34245(var_globalData_34132_slot, var_pairId_34134, var_swapParams_34137_mpos, var_settlementData_34139_mpos, var_sqrtPrice_34141, var_vaultId_34143) -> var__34147_mpos {
                /// @src 68:3306:3329  "SwapStableResult memory"
                let zero_t_struct$_SwapStableResult_$33967_memory_ptr_158_mpos := zero_value_for_split_t_struct$_SwapStableResult_$33967_memory_ptr()
                var__34147_mpos := zero_t_struct$_SwapStableResult_$33967_memory_ptr_158_mpos

                /// @src 68:3366:3376  "swapParams"
                let _159_mpos := var_swapParams_34137_mpos
                let expr_34151_mpos := _159_mpos
                /// @src 68:3366:3387  "swapParams.amountPerp"
                let _160 := add(expr_34151_mpos, 0)
                let _161 := read_from_memoryt_int256(_160)
                let expr_34152 := _161
                /// @src 68:3390:3400  "swapParams"
                let _162_mpos := var_swapParams_34137_mpos
                let expr_34153_mpos := _162_mpos
                /// @src 68:3390:3415  "swapParams.amountSqrtPerp"
                let _163 := add(expr_34153_mpos, 32)
                let _164 := read_from_memoryt_int256(_163)
                let expr_34154 := _164
                /// @src 68:3366:3415  "swapParams.amountPerp + swapParams.amountSqrtPerp"
                let expr_34155 := checked_add_t_int256(expr_34152, expr_34154)

                /// @src 68:3418:3428  "swapParams"
                let _165_mpos := var_swapParams_34137_mpos
                let expr_34156_mpos := _165_mpos
                /// @src 68:3418:3432  "swapParams.fee"
                let _166 := add(expr_34156_mpos, 64)
                let _167 := read_from_memoryt_int256(_166)
                let expr_34157 := _167
                /// @src 68:3366:3432  "swapParams.amountPerp + swapParams.amountSqrtPerp + swapParams.fee"
                let expr_34158 := checked_add_t_int256(expr_34155, expr_34157)

                /// @src 68:3341:3432  "int256 totalBaseAmount = swapParams.amountPerp + swapParams.amountSqrtPerp + swapParams.fee"
                let var_totalBaseAmount_34150 := expr_34158
                /// @src 68:3447:3462  "totalBaseAmount"
                let _168 := var_totalBaseAmount_34150
                let expr_34160 := _168
                /// @src 68:3466:3467  "0"
                let expr_34161 := 0x00
                /// @src 68:3447:3467  "totalBaseAmount == 0"
                let expr_34162 := eq(cleanup_t_int256(expr_34160), convert_t_rational_0_by_1_to_t_int256(expr_34161))
                /// @src 68:3443:3641  "if (totalBaseAmount == 0) {..."
                if expr_34162 {
                    /// @src 68:3527:3536  "sqrtPrice"
                    let _169 := var_sqrtPrice_34141
                    let expr_34166 := _169
                    /// @src 68:3538:3542  "1e18"
                    let expr_34167 := 0x0de0b6b3a7640000
                    /// @src 68:3505:3543  "calculateStableAmount(sqrtPrice, 1e18)"
                    let _170 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_34167)
                    let expr_34168 := fun_calculateStableAmount_34292(expr_34166, _170)
                    /// @src 68:3505:3552  "calculateStableAmount(sqrtPrice, 1e18).toInt256"
                    let expr_34169_self := expr_34168
                    /// @src 68:3505:3554  "calculateStableAmount(sqrtPrice, 1e18).toInt256()"
                    let expr_34170 := fun_toInt256_28969(expr_34169_self)
                    /// @src 68:3483:3554  "int256 amountStable = calculateStableAmount(sqrtPrice, 1e18).toInt256()"
                    let var_amountStable_34164 := expr_34170
                    /// @src 68:3588:3598  "swapParams"
                    let _171_mpos := var_swapParams_34137_mpos
                    let expr_34173_mpos := _171_mpos
                    /// @src 68:3607:3611  "1e18"
                    let expr_34176 := 0x0de0b6b3a7640000
                    /// @src 68:3600:3612  "int256(1e18)"
                    let expr_34177 := convert_t_rational_1000000000000000000_by_1_to_t_int256(expr_34176)
                    /// @src 68:3614:3626  "amountStable"
                    let _172 := var_amountStable_34164
                    let expr_34178 := _172
                    /// @src 68:3628:3629  "0"
                    let expr_34179 := 0x00
                    /// @src 68:3576:3630  "divToStable(swapParams, int256(1e18), amountStable, 0)"
                    let _173 := convert_t_rational_0_by_1_to_t_int256(expr_34179)
                    let expr_34180_mpos := fun_divToStable_34361(expr_34173_mpos, expr_34177, expr_34178, _173)
                    /// @src 68:3569:3630  "return divToStable(swapParams, int256(1e18), amountStable, 0)"
                    var__34147_mpos := expr_34180_mpos
                    leave
                    /// @src 68:3443:3641  "if (totalBaseAmount == 0) {..."
                }
                /// @src 68:3651:3661  "globalData"
                let _174_slot := var_globalData_34132_slot
                let expr_34184_slot := _174_slot
                /// @src 68:3651:3676  "globalData.initializeLock"
                let expr_34186_self_slot := expr_34184_slot
                /// @src 68:3677:3683  "pairId"
                let _175 := var_pairId_34134
                let expr_34187 := _175
                fun_initializeLock_19435(expr_34186_self_slot, expr_34187)
                /// @src 68:3695:3705  "globalData"
                let _176_slot := var_globalData_34132_slot
                let expr_34190_slot := _176_slot
                /// @src 68:3695:3728  "globalData.callSettlementCallback"
                let expr_34192_self_slot := expr_34190_slot
                /// @src 68:3729:3743  "settlementData"
                let _177_mpos := var_settlementData_34139_mpos
                let expr_34193_mpos := _177_mpos
                /// @src 68:3745:3760  "totalBaseAmount"
                let _178 := var_totalBaseAmount_34150
                let expr_34194 := _178
                fun_callSettlementCallback_19473(expr_34192_self_slot, expr_34193_mpos, expr_34194)
                /// @src 68:3828:3838  "globalData"
                let _179_slot := var_globalData_34132_slot
                let expr_34201_slot := _179_slot
                /// @src 68:3828:3851  "globalData.finalizeLock"
                let expr_34202_self_slot := expr_34201_slot
                /// @src 68:3828:3853  "globalData.finalizeLock()"
                let expr_34203_component_1, expr_34203_component_2 := fun_finalizeLock_19503(expr_34202_self_slot)
                /// @src 68:3772:3853  "(int256 settledQuoteAmount, int256 settledBaseAmount) = globalData.finalizeLock()"
                let var_settledQuoteAmount_34198 := expr_34203_component_1
                let var_settledBaseAmount_34200 := expr_34203_component_2
                /// @src 68:3868:3885  "settledBaseAmount"
                let _180 := var_settledBaseAmount_34200
                let expr_34205 := _180
                /// @src 68:3890:3905  "totalBaseAmount"
                let _181 := var_totalBaseAmount_34150
                let expr_34206 := _181
                /// @src 68:3889:3905  "-totalBaseAmount"
                let expr_34207 := negate_t_int256(expr_34206)
                /// @src 68:3868:3905  "settledBaseAmount != -totalBaseAmount"
                let expr_34208 := iszero(eq(cleanup_t_int256(expr_34205), cleanup_t_int256(expr_34207)))
                /// @src 68:3864:3971  "if (settledBaseAmount != -totalBaseAmount) {..."
                if expr_34208 {
                    /// @src 68:3928:3960  "IPredyPool.BaseTokenNotSettled()"
                    {

                        let _183 := 0

                        mstore(_183, 0x4f7f358c00000000000000000000000000000000000000000000000000000000)
                        let _182 := abi_encode_tuple__to__fromStack(add(_183, 4) )
                        revert(_183, sub(_182, _183))
                    }/// @src 68:3864:3971  "if (settledBaseAmount != -totalBaseAmount) {..."
                }
                /// @src 68:4032:4050  "settledQuoteAmount"
                let _184 := var_settledQuoteAmount_34198
                let expr_34216 := _184
                /// @src 68:4053:4068  "totalBaseAmount"
                let _185 := var_totalBaseAmount_34150
                let expr_34217 := _185
                /// @src 68:4032:4068  "settledQuoteAmount * totalBaseAmount"
                let expr_34218 := checked_mul_t_int256(expr_34216, expr_34217)

                /// @src 68:4072:4073  "0"
                let expr_34219 := 0x00
                /// @src 68:4032:4073  "settledQuoteAmount * totalBaseAmount <= 0"
                let expr_34220 := iszero(sgt(cleanup_t_int256(expr_34218), convert_t_rational_0_by_1_to_t_int256(expr_34219)))
                /// @src 68:4028:4140  "if (settledQuoteAmount * totalBaseAmount <= 0) {..."
                if expr_34220 {
                    /// @src 68:4096:4129  "IPredyPool.QuoteTokenNotSettled()"
                    {

                        let _187 := 0

                        mstore(_187, 0x888ce9cd00000000000000000000000000000000000000000000000000000000)
                        let _186 := abi_encode_tuple__to__fromStack(add(_187, 4) )
                        revert(_187, sub(_186, _187))
                    }/// @src 68:4028:4140  "if (settledQuoteAmount * totalBaseAmount <= 0) {..."
                }
                /// @src 68:4163:4169  "pairId"
                let _188 := var_pairId_34134
                let expr_34229 := _188
                /// @src 68:4171:4178  "vaultId"
                let _189 := var_vaultId_34143
                let expr_34230 := _189
                /// @src 68:4180:4190  "msg.sender"
                let expr_34232 := caller()
                /// @src 68:4192:4210  "settledQuoteAmount"
                let _190 := var_settledQuoteAmount_34198
                let expr_34233 := _190
                /// @src 68:4212:4229  "settledBaseAmount"
                let _191 := var_settledBaseAmount_34200
                let expr_34234 := _191
                /// @src 68:4155:4230  "Swapped(pairId, vaultId, msg.sender, settledQuoteAmount, settledBaseAmount)"
                let _192 := 0x974e7ecd50b9987a9535bc125c160e96f90b54c65d3b82a6fedb5bd73974e4ab
                {
                    let _193 := allocate_unbounded()
                    let _194 := abi_encode_tuple_t_uint256_t_uint256_t_address_t_int256_t_int256__to_t_uint256_t_uint256_t_address_t_int256_t_int256__fromStack(_193 , expr_34229, expr_34230, expr_34232, expr_34233, expr_34234)
                    log1(_193, sub(_194, _193) , _192)
                }/// @src 68:4260:4270  "swapParams"
                let _195_mpos := var_swapParams_34137_mpos
                let expr_34238_mpos := _195_mpos
                /// @src 68:4272:4287  "totalBaseAmount"
                let _196 := var_totalBaseAmount_34150
                let expr_34239 := _196
                /// @src 68:4289:4307  "settledQuoteAmount"
                let _197 := var_settledQuoteAmount_34198
                let expr_34240 := _197
                /// @src 68:4309:4327  "settledQuoteAmount"
                let _198 := var_settledQuoteAmount_34198
                let expr_34241 := _198
                /// @src 68:4248:4328  "divToStable(swapParams, totalBaseAmount, settledQuoteAmount, settledQuoteAmount)"
                let expr_34242_mpos := fun_divToStable_34361(expr_34238_mpos, expr_34239, expr_34240, expr_34241)
                /// @src 68:4241:4328  "return divToStable(swapParams, totalBaseAmount, settledQuoteAmount, settledQuoteAmount)"
                var__34147_mpos := expr_34242_mpos
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            function zero_value_for_split_t_struct$_Payoff_$2047_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_Payoff_$2047_memory_ptr()
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

            function convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(value) -> converted {
                converted := value
            }

            function convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(value) -> converted {
                converted := value
            }

            /// @ast-id 14826
            /// @src 61:16857:19098  "function updatePosition(..."
            function fun_updatePosition_14826(var__pairStatus_14653_slot, var__userStatus_14656_slot, var__updatePerpParams_14659_mpos, var__updateSqrtPerpParams_14662_mpos) -> var_payoff_14666_mpos {
                /// @src 61:17104:17135  "IPredyPool.Payoff memory payoff"
                let zero_t_struct$_Payoff_$2047_memory_ptr_199_mpos := zero_value_for_split_t_struct$_Payoff_$2047_memory_ptr()
                var_payoff_14666_mpos := zero_t_struct$_Payoff_$2047_memory_ptr_199_mpos

                /// @src 61:17221:17232  "_userStatus"
                let _200_slot := var__userStatus_14656_slot
                let expr_14675_slot := _200_slot
                /// @src 61:17221:17237  "_userStatus.perp"
                let _201 := add(expr_14675_slot, 2)
                let _202_slot := _201
                let expr_14676_slot := _202_slot
                /// @src 61:17221:17244  "_userStatus.perp.amount"
                let _203 := add(expr_14676_slot, 0)
                let _204 := read_from_storage_split_offset_0_t_int256(_203)
                let expr_14677 := _204
                /// @src 61:17258:17269  "_userStatus"
                let _205_slot := var__userStatus_14656_slot
                let expr_14678_slot := _205_slot
                /// @src 61:17258:17274  "_userStatus.perp"
                let _206 := add(expr_14678_slot, 2)
                let _207_slot := _206
                let expr_14679_slot := _207_slot
                /// @src 61:17258:17285  "_userStatus.perp.entryValue"
                let _208 := add(expr_14679_slot, 1)
                let _209 := read_from_storage_split_offset_0_t_int256(_208)
                let expr_14680 := _209
                /// @src 61:17299:17316  "_updatePerpParams"
                let _210_mpos := var__updatePerpParams_14659_mpos
                let expr_14681_mpos := _210_mpos
                /// @src 61:17299:17328  "_updatePerpParams.tradeAmount"
                let _211 := add(expr_14681_mpos, 0)
                let _212 := read_from_memoryt_int256(_211)
                let expr_14682 := _212
                /// @src 61:17342:17359  "_updatePerpParams"
                let _213_mpos := var__updatePerpParams_14659_mpos
                let expr_14683_mpos := _213_mpos
                /// @src 61:17342:17372  "_updatePerpParams.stableAmount"
                let _214 := add(expr_14683_mpos, 32)
                let _215 := read_from_memoryt_int256(_214)
                let expr_14684 := _215
                /// @src 61:17193:17382  "calculateEntry(..."
                let expr_14685_component_1, expr_14685_component_2 := fun_calculateEntry_15386(expr_14677, expr_14680, expr_14682, expr_14684)
                /// @src 61:17148:17154  "payoff"
                let _216_mpos := var_payoff_14666_mpos
                let expr_14668_mpos := _216_mpos
                /// @src 61:17148:17170  "payoff.perpEntryUpdate"
                let _217 := add(expr_14668_mpos, 0)
                /// @src 61:17172:17178  "payoff"
                let _218_mpos := var_payoff_14666_mpos
                let expr_14671_mpos := _218_mpos
                /// @src 61:17172:17189  "payoff.perpPayoff"
                let _219 := add(expr_14671_mpos, 128)
                /// @src 61:17147:17382  "(payoff.perpEntryUpdate, payoff.perpPayoff) = calculateEntry(..."
                let _220 := expr_14685_component_2
                write_to_memory_t_int256(_219, _220)
                let _221 := expr_14685_component_1
                write_to_memory_t_int256(_217, _221)
                /// @src 61:17515:17526  "_userStatus"
                let _222_slot := var__userStatus_14656_slot
                let expr_14695_slot := _222_slot
                /// @src 61:17540:17551  "_pairStatus"
                let _223_slot := var__pairStatus_14653_slot
                let expr_14696_slot := _223_slot
                /// @src 61:17540:17567  "_pairStatus.sqrtAssetStatus"
                let _224 := add(expr_14696_slot, 33)
                let _225_slot := _224
                let expr_14697_slot := _225_slot
                /// @src 61:17540:17577  "_pairStatus.sqrtAssetStatus.tickLower"
                let _226 := add(expr_14697_slot, 0)
                let _227 := read_from_storage_split_offset_20_t_int24(_226)
                let expr_14698 := _227
                /// @src 61:17591:17602  "_pairStatus"
                let _228_slot := var__pairStatus_14653_slot
                let expr_14699_slot := _228_slot
                /// @src 61:17591:17618  "_pairStatus.sqrtAssetStatus"
                let _229 := add(expr_14699_slot, 33)
                let _230_slot := _229
                let expr_14700_slot := _230_slot
                /// @src 61:17591:17628  "_pairStatus.sqrtAssetStatus.tickUpper"
                let _231 := add(expr_14700_slot, 0)
                let _232 := read_from_storage_split_offset_23_t_int24(_231)
                let expr_14701 := _232
                /// @src 61:17642:17663  "_updateSqrtPerpParams"
                let _233_mpos := var__updateSqrtPerpParams_14662_mpos
                let expr_14702_mpos := _233_mpos
                /// @src 61:17642:17679  "_updateSqrtPerpParams.tradeSqrtAmount"
                let _234 := add(expr_14702_mpos, 0)
                let _235 := read_from_memoryt_int256(_234)
                let expr_14703 := _235
                /// @src 61:17693:17704  "_pairStatus"
                let _236_slot := var__pairStatus_14653_slot
                let expr_14704_slot := _236_slot
                /// @src 61:17693:17716  "_pairStatus.isQuoteZero"
                let _237 := add(expr_14704_slot, 50)
                let _238 := read_from_storage_split_offset_20_t_bool(_237)
                let expr_14705 := _238
                /// @src 61:17478:17726  "calculateSqrtPerpOffset(..."
                let _239_mpos := convert_t_struct$_UserStatus_$13665_storage_ptr_to_t_struct$_UserStatus_$13665_memory_ptr(expr_14695_slot)
                let expr_14706_component_1, expr_14706_component_2 := fun_calculateSqrtPerpOffset_15677(_239_mpos, expr_14698, expr_14701, expr_14703, expr_14705)
                /// @src 61:17394:17400  "payoff"
                let _240_mpos := var_payoff_14666_mpos
                let expr_14688_mpos := _240_mpos
                /// @src 61:17394:17435  "payoff.sqrtRebalanceEntryUpdateUnderlying"
                let _241 := add(expr_14688_mpos, 64)
                /// @src 61:17437:17443  "payoff"
                let _242_mpos := var_payoff_14666_mpos
                let expr_14691_mpos := _242_mpos
                /// @src 61:17437:17474  "payoff.sqrtRebalanceEntryUpdateStable"
                let _243 := add(expr_14691_mpos, 96)
                /// @src 61:17393:17726  "(payoff.sqrtRebalanceEntryUpdateUnderlying, payoff.sqrtRebalanceEntryUpdateStable) = calculateSqrtPerpOffset(..."
                let _244 := expr_14706_component_2
                write_to_memory_t_int256(_243, _244)
                let _245 := expr_14706_component_1
                write_to_memory_t_int256(_241, _245)
                /// @src 61:17811:17822  "_userStatus"
                let _246_slot := var__userStatus_14656_slot
                let expr_14716_slot := _246_slot
                /// @src 61:17811:17831  "_userStatus.sqrtPerp"
                let _247 := add(expr_14716_slot, 4)
                let _248_slot := _247
                let expr_14717_slot := _248_slot
                /// @src 61:17811:17838  "_userStatus.sqrtPerp.amount"
                let _249 := add(expr_14717_slot, 0)
                let _250 := read_from_storage_split_offset_0_t_int256(_249)
                let expr_14718 := _250
                /// @src 61:17852:17863  "_userStatus"
                let _251_slot := var__userStatus_14656_slot
                let expr_14719_slot := _251_slot
                /// @src 61:17852:17872  "_userStatus.sqrtPerp"
                let _252 := add(expr_14719_slot, 4)
                let _253_slot := _252
                let expr_14720_slot := _253_slot
                /// @src 61:17852:17883  "_userStatus.sqrtPerp.entryValue"
                let _254 := add(expr_14720_slot, 1)
                let _255 := read_from_storage_split_offset_0_t_int256(_254)
                let expr_14721 := _255
                /// @src 61:17897:17918  "_updateSqrtPerpParams"
                let _256_mpos := var__updateSqrtPerpParams_14662_mpos
                let expr_14722_mpos := _256_mpos
                /// @src 61:17897:17934  "_updateSqrtPerpParams.tradeSqrtAmount"
                let _257 := add(expr_14722_mpos, 0)
                let _258 := read_from_memoryt_int256(_257)
                let expr_14723 := _258
                /// @src 61:17948:17969  "_updateSqrtPerpParams"
                let _259_mpos := var__updateSqrtPerpParams_14662_mpos
                let expr_14724_mpos := _259_mpos
                /// @src 61:17948:17982  "_updateSqrtPerpParams.stableAmount"
                let _260 := add(expr_14724_mpos, 32)
                let _261 := read_from_memoryt_int256(_260)
                let expr_14725 := _261
                /// @src 61:17783:17992  "calculateEntry(..."
                let expr_14726_component_1, expr_14726_component_2 := fun_calculateEntry_15386(expr_14718, expr_14721, expr_14723, expr_14725)
                /// @src 61:17738:17744  "payoff"
                let _262_mpos := var_payoff_14666_mpos
                let expr_14709_mpos := _262_mpos
                /// @src 61:17738:17760  "payoff.sqrtEntryUpdate"
                let _263 := add(expr_14709_mpos, 32)
                /// @src 61:17762:17768  "payoff"
                let _264_mpos := var_payoff_14666_mpos
                let expr_14712_mpos := _264_mpos
                /// @src 61:17762:17779  "payoff.sqrtPayoff"
                let _265 := add(expr_14712_mpos, 160)
                /// @src 61:17737:17992  "(payoff.sqrtEntryUpdate, payoff.sqrtPayoff) = calculateEntry(..."
                let _266 := expr_14726_component_2
                write_to_memory_t_int256(_265, _266)
                let _267 := expr_14726_component_1
                write_to_memory_t_int256(_263, _267)
                /// @src 61:18030:18047  "_updatePerpParams"
                let _268_mpos := var__updatePerpParams_14659_mpos
                let expr_14734_mpos := _268_mpos
                /// @src 61:18030:18059  "_updatePerpParams.tradeAmount"
                let _269 := add(expr_14734_mpos, 0)
                let _270 := read_from_memoryt_int256(_269)
                let expr_14735 := _270
                /// @src 61:18003:18014  "_userStatus"
                let _271_slot := var__userStatus_14656_slot
                let expr_14729_slot := _271_slot
                /// @src 61:18003:18019  "_userStatus.perp"
                let _272 := add(expr_14729_slot, 2)
                let _273_slot := _272
                let expr_14732_slot := _273_slot
                /// @src 61:18003:18026  "_userStatus.perp.amount"
                let _274 := add(expr_14732_slot, 0)
                /// @src 61:18003:18059  "_userStatus.perp.amount += _updatePerpParams.tradeAmount"
                let _275 := read_from_storage_split_offset_0_t_int256(_274)
                let expr_14736 := checked_add_t_int256(_275, expr_14735)

                update_storage_value_offset_0_t_int256_to_t_int256(_274, expr_14736)
                /// @src 61:18131:18137  "payoff"
                let _276_mpos := var_payoff_14666_mpos
                let expr_14743_mpos := _276_mpos
                /// @src 61:18131:18153  "payoff.perpEntryUpdate"
                let _277 := add(expr_14743_mpos, 0)
                let _278 := read_from_memoryt_int256(_277)
                let expr_14744 := _278
                /// @src 61:18100:18111  "_userStatus"
                let _279_slot := var__userStatus_14656_slot
                let expr_14738_slot := _279_slot
                /// @src 61:18100:18116  "_userStatus.perp"
                let _280 := add(expr_14738_slot, 2)
                let _281_slot := _280
                let expr_14741_slot := _281_slot
                /// @src 61:18100:18127  "_userStatus.perp.entryValue"
                let _282 := add(expr_14741_slot, 1)
                /// @src 61:18100:18153  "_userStatus.perp.entryValue += payoff.perpEntryUpdate"
                let _283 := read_from_storage_split_offset_0_t_int256(_282)
                let expr_14745 := checked_add_t_int256(_283, expr_14744)

                update_storage_value_offset_0_t_int256_to_t_int256(_282, expr_14745)
                /// @src 61:18198:18204  "payoff"
                let _284_mpos := var_payoff_14666_mpos
                let expr_14752_mpos := _284_mpos
                /// @src 61:18198:18220  "payoff.sqrtEntryUpdate"
                let _285 := add(expr_14752_mpos, 32)
                let _286 := read_from_memoryt_int256(_285)
                let expr_14753 := _286
                /// @src 61:18163:18174  "_userStatus"
                let _287_slot := var__userStatus_14656_slot
                let expr_14747_slot := _287_slot
                /// @src 61:18163:18183  "_userStatus.sqrtPerp"
                let _288 := add(expr_14747_slot, 4)
                let _289_slot := _288
                let expr_14750_slot := _289_slot
                /// @src 61:18163:18194  "_userStatus.sqrtPerp.entryValue"
                let _290 := add(expr_14750_slot, 1)
                /// @src 61:18163:18220  "_userStatus.sqrtPerp.entryValue += payoff.sqrtEntryUpdate"
                let _291 := read_from_storage_split_offset_0_t_int256(_290)
                let expr_14754 := checked_add_t_int256(_291, expr_14753)

                update_storage_value_offset_0_t_int256_to_t_int256(_290, expr_14754)
                /// @src 61:18279:18285  "payoff"
                let _292_mpos := var_payoff_14666_mpos
                let expr_14761_mpos := _292_mpos
                /// @src 61:18279:18316  "payoff.sqrtRebalanceEntryUpdateStable"
                let _293 := add(expr_14761_mpos, 96)
                let _294 := read_from_memoryt_int256(_293)
                let expr_14762 := _294
                /// @src 61:18230:18241  "_userStatus"
                let _295_slot := var__userStatus_14656_slot
                let expr_14756_slot := _295_slot
                /// @src 61:18230:18250  "_userStatus.sqrtPerp"
                let _296 := add(expr_14756_slot, 4)
                let _297_slot := _296
                let expr_14759_slot := _297_slot
                /// @src 61:18230:18275  "_userStatus.sqrtPerp.quoteRebalanceEntryValue"
                let _298 := add(expr_14759_slot, 2)
                /// @src 61:18230:18316  "_userStatus.sqrtPerp.quoteRebalanceEntryValue += payoff.sqrtRebalanceEntryUpdateStable"
                let _299 := read_from_storage_split_offset_0_t_int256(_298)
                let expr_14763 := checked_add_t_int256(_299, expr_14762)

                update_storage_value_offset_0_t_int256_to_t_int256(_298, expr_14763)
                /// @src 61:18374:18380  "payoff"
                let _300_mpos := var_payoff_14666_mpos
                let expr_14770_mpos := _300_mpos
                /// @src 61:18374:18415  "payoff.sqrtRebalanceEntryUpdateUnderlying"
                let _301 := add(expr_14770_mpos, 64)
                let _302 := read_from_memoryt_int256(_301)
                let expr_14771 := _302
                /// @src 61:18326:18337  "_userStatus"
                let _303_slot := var__userStatus_14656_slot
                let expr_14765_slot := _303_slot
                /// @src 61:18326:18346  "_userStatus.sqrtPerp"
                let _304 := add(expr_14765_slot, 4)
                let _305_slot := _304
                let expr_14768_slot := _305_slot
                /// @src 61:18326:18370  "_userStatus.sqrtPerp.baseRebalanceEntryValue"
                let _306 := add(expr_14768_slot, 3)
                /// @src 61:18326:18415  "_userStatus.sqrtPerp.baseRebalanceEntryValue += payoff.sqrtRebalanceEntryUpdateUnderlying"
                let _307 := read_from_storage_split_offset_0_t_int256(_306)
                let expr_14772 := checked_add_t_int256(_307, expr_14771)

                update_storage_value_offset_0_t_int256_to_t_int256(_306, expr_14772)
                /// @src 61:18490:18501  "_pairStatus"
                let _308_slot := var__pairStatus_14653_slot
                let expr_14775_slot := _308_slot
                /// @src 61:18490:18504  "_pairStatus.id"
                let _309 := add(expr_14775_slot, 0)
                let _310 := read_from_storage_split_offset_0_t_uint256(_309)
                let expr_14776 := _310
                /// @src 61:18506:18517  "_pairStatus"
                let _311_slot := var__pairStatus_14653_slot
                let expr_14777_slot := _311_slot
                /// @src 61:18506:18533  "_pairStatus.sqrtAssetStatus"
                let _312 := add(expr_14777_slot, 33)
                let _313_slot := _312
                let expr_14778_slot := _313_slot
                /// @src 61:18535:18546  "_userStatus"
                let _314_slot := var__userStatus_14656_slot
                let expr_14779_slot := _314_slot
                /// @src 61:18548:18569  "_updateSqrtPerpParams"
                let _315_mpos := var__updateSqrtPerpParams_14662_mpos
                let expr_14780_mpos := _315_mpos
                /// @src 61:18548:18585  "_updateSqrtPerpParams.tradeSqrtAmount"
                let _316 := add(expr_14780_mpos, 0)
                let _317 := read_from_memoryt_int256(_316)
                let expr_14781 := _317
                /// @src 61:18458:18595  "updateSqrtPosition(..."
                let _318_slot := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(expr_14778_slot)
                fun_updateSqrtPosition_15040(expr_14776, _318_slot, expr_14779_slot, expr_14781)
                /// @src 61:18606:18617  "_pairStatus"
                let _319_slot := var__pairStatus_14653_slot
                let expr_14784_slot := _319_slot
                /// @src 61:18606:18626  "_pairStatus.basePool"
                let _320 := add(expr_14784_slot, 17)
                let _321_slot := _320
                let expr_14788_slot := _321_slot
                /// @src 61:18606:18638  "_pairStatus.basePool.tokenStatus"
                let _322 := add(expr_14788_slot, 2)
                let _323_slot := _322
                let expr_14789_slot := _323_slot
                /// @src 61:18606:18653  "_pairStatus.basePool.tokenStatus.updatePosition"
                let expr_14790_self_slot := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(expr_14789_slot)
                /// @src 61:18667:18678  "_userStatus"
                let _324_slot := var__userStatus_14656_slot
                let expr_14791_slot := _324_slot
                /// @src 61:18667:18691  "_userStatus.basePosition"
                let _325 := add(expr_14791_slot, 10)
                let _326_slot := _325
                let expr_14792_slot := _326_slot
                /// @src 61:18705:18722  "_updatePerpParams"
                let _327_mpos := var__updatePerpParams_14659_mpos
                let expr_14793_mpos := _327_mpos
                /// @src 61:18705:18734  "_updatePerpParams.tradeAmount"
                let _328 := add(expr_14793_mpos, 0)
                let _329 := read_from_memoryt_int256(_328)
                let expr_14794 := _329
                /// @src 61:18737:18743  "payoff"
                let _330_mpos := var_payoff_14666_mpos
                let expr_14795_mpos := _330_mpos
                /// @src 61:18737:18778  "payoff.sqrtRebalanceEntryUpdateUnderlying"
                let _331 := add(expr_14795_mpos, 64)
                let _332 := read_from_memoryt_int256(_331)
                let expr_14796 := _332
                /// @src 61:18705:18778  "_updatePerpParams.tradeAmount + payoff.sqrtRebalanceEntryUpdateUnderlying"
                let expr_14797 := checked_add_t_int256(expr_14794, expr_14796)

                /// @src 61:18792:18803  "_pairStatus"
                let _333_slot := var__pairStatus_14653_slot
                let expr_14798_slot := _333_slot
                /// @src 61:18792:18806  "_pairStatus.id"
                let _334 := add(expr_14798_slot, 0)
                let _335 := read_from_storage_split_offset_0_t_uint256(_334)
                let expr_14799 := _335
                /// @src 61:18820:18825  "false"
                let expr_14800 := 0x00
                /// @src 61:18606:18835  "_pairStatus.basePool.tokenStatus.updatePosition(..."
                let _336_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_14792_slot)
                fun_updatePosition_31326(expr_14790_self_slot, _336_slot, expr_14797, expr_14799, expr_14800)
                /// @src 61:18846:18857  "_pairStatus"
                let _337_slot := var__pairStatus_14653_slot
                let expr_14803_slot := _337_slot
                /// @src 61:18846:18867  "_pairStatus.quotePool"
                let _338 := add(expr_14803_slot, 3)
                let _339_slot := _338
                let expr_14807_slot := _339_slot
                /// @src 61:18846:18879  "_pairStatus.quotePool.tokenStatus"
                let _340 := add(expr_14807_slot, 2)
                let _341_slot := _340
                let expr_14808_slot := _341_slot
                /// @src 61:18846:18894  "_pairStatus.quotePool.tokenStatus.updatePosition"
                let expr_14809_self_slot := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(expr_14808_slot)
                /// @src 61:18908:18919  "_userStatus"
                let _342_slot := var__userStatus_14656_slot
                let expr_14810_slot := _342_slot
                /// @src 61:18908:18934  "_userStatus.stablePosition"
                let _343 := add(expr_14810_slot, 12)
                let _344_slot := _343
                let expr_14811_slot := _344_slot
                /// @src 61:18948:18954  "payoff"
                let _345_mpos := var_payoff_14666_mpos
                let expr_14812_mpos := _345_mpos
                /// @src 61:18948:18970  "payoff.perpEntryUpdate"
                let _346 := add(expr_14812_mpos, 0)
                let _347 := read_from_memoryt_int256(_346)
                let expr_14813 := _347
                /// @src 61:18973:18979  "payoff"
                let _348_mpos := var_payoff_14666_mpos
                let expr_14814_mpos := _348_mpos
                /// @src 61:18973:18995  "payoff.sqrtEntryUpdate"
                let _349 := add(expr_14814_mpos, 32)
                let _350 := read_from_memoryt_int256(_349)
                let expr_14815 := _350
                /// @src 61:18948:18995  "payoff.perpEntryUpdate + payoff.sqrtEntryUpdate"
                let expr_14816 := checked_add_t_int256(expr_14813, expr_14815)

                /// @src 61:18998:19004  "payoff"
                let _351_mpos := var_payoff_14666_mpos
                let expr_14817_mpos := _351_mpos
                /// @src 61:18998:19035  "payoff.sqrtRebalanceEntryUpdateStable"
                let _352 := add(expr_14817_mpos, 96)
                let _353 := read_from_memoryt_int256(_352)
                let expr_14818 := _353
                /// @src 61:18948:19035  "payoff.perpEntryUpdate + payoff.sqrtEntryUpdate + payoff.sqrtRebalanceEntryUpdateStable"
                let expr_14819 := checked_add_t_int256(expr_14816, expr_14818)

                /// @src 61:19049:19060  "_pairStatus"
                let _354_slot := var__pairStatus_14653_slot
                let expr_14820_slot := _354_slot
                /// @src 61:19049:19063  "_pairStatus.id"
                let _355 := add(expr_14820_slot, 0)
                let _356 := read_from_storage_split_offset_0_t_uint256(_355)
                let expr_14821 := _356
                /// @src 61:19077:19081  "true"
                let expr_14822 := 0x01
                /// @src 61:18846:19091  "_pairStatus.quotePool.tokenStatus.updatePosition(..."
                let _357_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_14811_slot)
                fun_updatePosition_31326(expr_14809_self_slot, _357_slot, expr_14819, expr_14821, expr_14822)

            }
            /// @src 68:814:5932  "library Trade {..."

            function allocate_memory_struct_t_struct$_AssetStatus_$30934_memory_ptr() -> memPtr {
                memPtr := allocate_memory(192)
            }

            function read_from_storage_reference_type_t_struct$_AssetStatus_$30934_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_AssetStatus_$30934_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 0))
                    write_to_memory_t_uint256(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))
                    write_to_memory_t_uint256(add(value, 32), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 2))
                    write_to_memory_t_uint256(add(value, 64), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 3))
                    write_to_memory_t_uint256(add(value, 96), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 4))
                    write_to_memory_t_uint256(add(value, 128), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 5))
                    write_to_memory_t_uint256(add(value, 160), memberValue_0)
                }

            }

            function convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_AssetStatus_$30934_memory_ptr(value)

            }

            function write_to_memory_t_struct$_AssetStatus_$30934_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function allocate_memory_struct_t_struct$_IRMParams_$13447_memory_ptr() -> memPtr {
                memPtr := allocate_memory(128)
            }

            function read_from_storage_reference_type_t_struct$_IRMParams_$13447_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_IRMParams_$13447_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 0))
                    write_to_memory_t_uint256(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))
                    write_to_memory_t_uint256(add(value, 32), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 2))
                    write_to_memory_t_uint256(add(value, 64), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 3))
                    write_to_memory_t_uint256(add(value, 96), memberValue_0)
                }

            }

            function write_to_memory_t_struct$_IRMParams_$13447_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function allocate_memory_struct_t_struct$_AssetPoolStatus_$13566_memory_ptr() -> memPtr {
                memPtr := allocate_memory(192)
            }

            function read_from_storage_reference_type_t_struct$_AssetPoolStatus_$13566_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_AssetPoolStatus_$13566_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_address(add(slot, 0))
                    write_to_memory_t_address(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_address(add(slot, 1))
                    write_to_memory_t_address(add(value, 32), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_reference_type_t_struct$_AssetStatus_$30934_memory_ptr(add(slot, 2))
                    write_to_memory_t_struct$_AssetStatus_$30934_memory_ptr(add(value, 64), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_reference_type_t_struct$_IRMParams_$13447_memory_ptr(add(slot, 8))
                    write_to_memory_t_struct$_IRMParams_$13447_memory_ptr(add(value, 96), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 12))
                    write_to_memory_t_uint256(add(value, 128), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 13))
                    write_to_memory_t_uint256(add(value, 160), memberValue_0)
                }

            }

            function write_to_memory_t_struct$_AssetPoolStatus_$13566_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function cleanup_from_storage_t_uint128(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_0_t_uint128(slot_value) -> value {
                value := cleanup_from_storage_t_uint128(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint128(slot) -> value {
                value := extract_from_storage_value_offset_0_t_uint128(sload(slot))

            }

            function cleanup_t_uint128(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffff)
            }

            function write_to_memory_t_uint128(memPtr, value) {
                mstore(memPtr, cleanup_t_uint128(value))
            }

            function shift_right_128_unsigned(value) -> newValue {
                newValue :=

                shr(128, value)

            }

            function extract_from_storage_value_offset_16_t_uint128(slot_value) -> value {
                value := cleanup_from_storage_t_uint128(shift_right_128_unsigned(slot_value))
            }

            function read_from_storage_split_offset_16_t_uint128(slot) -> value {
                value := extract_from_storage_value_offset_16_t_uint128(sload(slot))

            }

            function shift_right_112_unsigned(value) -> newValue {
                newValue :=

                shr(112, value)

            }

            function extract_from_storage_value_offset_14_t_uint64(slot_value) -> value {
                value := cleanup_from_storage_t_uint64(shift_right_112_unsigned(slot_value))
            }

            function read_from_storage_split_offset_14_t_uint64(slot) -> value {
                value := extract_from_storage_value_offset_14_t_uint64(sload(slot))

            }

            function allocate_memory_struct_t_struct$_AssetRiskParams_$13579_memory_ptr() -> memPtr {
                memPtr := allocate_memory(192)
            }

            function read_from_storage_reference_type_t_struct$_AssetRiskParams_$13579_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_AssetRiskParams_$13579_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint128(add(slot, 0))
                    write_to_memory_t_uint128(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_16_t_uint128(add(slot, 0))
                    write_to_memory_t_uint128(add(value, 32), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_int24(add(slot, 1))
                    write_to_memory_t_int24(add(value, 64), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_3_t_int24(add(slot, 1))
                    write_to_memory_t_int24(add(value, 96), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_6_t_uint64(add(slot, 1))
                    write_to_memory_t_uint64(add(value, 128), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_14_t_uint64(add(slot, 1))
                    write_to_memory_t_uint64(add(value, 160), memberValue_0)
                }

            }

            function write_to_memory_t_struct$_AssetRiskParams_$13579_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function write_to_memory_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function write_to_memory_t_bool(memPtr, value) {
                mstore(memPtr, cleanup_t_bool(value))
            }

            function shift_right_168_unsigned(value) -> newValue {
                newValue :=

                shr(168, value)

            }

            function extract_from_storage_value_offset_21_t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_168_unsigned(slot_value))
            }

            function read_from_storage_split_offset_21_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_21_t_bool(sload(slot))

            }

            function shift_right_176_unsigned(value) -> newValue {
                newValue :=

                shr(176, value)

            }

            function cleanup_from_storage_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function extract_from_storage_value_offset_22_t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_176_unsigned(slot_value))
            }

            function read_from_storage_split_offset_22_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_22_t_uint8(sload(slot))

            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function write_to_memory_t_uint8(memPtr, value) {
                mstore(memPtr, cleanup_t_uint8(value))
            }

            function allocate_memory_struct_t_struct$_PairStatus_$6102_memory_ptr() -> memPtr {
                memPtr := allocate_memory(384)
            }

            function read_from_storage_reference_type_t_struct$_PairStatus_$6102_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_PairStatus_$6102_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 0))
                    write_to_memory_t_uint256(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_address(add(slot, 1))
                    write_to_memory_t_address(add(value, 32), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_address(add(slot, 2))
                    write_to_memory_t_address(add(value, 64), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_reference_type_t_struct$_AssetPoolStatus_$13566_memory_ptr(add(slot, 3))
                    write_to_memory_t_struct$_AssetPoolStatus_$13566_memory_ptr(add(value, 96), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_reference_type_t_struct$_AssetPoolStatus_$13566_memory_ptr(add(slot, 17))
                    write_to_memory_t_struct$_AssetPoolStatus_$13566_memory_ptr(add(value, 128), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_reference_type_t_struct$_AssetRiskParams_$13579_memory_ptr(add(slot, 31))
                    write_to_memory_t_struct$_AssetRiskParams_$13579_memory_ptr(add(value, 160), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_reference_type_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(add(slot, 33))
                    write_to_memory_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(add(value, 192), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_address(add(slot, 50))
                    write_to_memory_t_address(add(value, 224), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_20_t_bool(add(slot, 50))
                    write_to_memory_t_bool(add(value, 256), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_21_t_bool(add(slot, 50))
                    write_to_memory_t_bool(add(value, 288), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_22_t_uint8(add(slot, 50))
                    write_to_memory_t_uint8(add(value, 320), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 51))
                    write_to_memory_t_uint256(add(value, 352), memberValue_0)
                }

            }

            function convert_t_struct$_PairStatus_$6102_storage_ptr_to_t_struct$_PairStatus_$6102_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_PairStatus_$6102_memory_ptr(value)

            }

            function convert_t_struct$_SqrtPositionStatus_$13597_storage_to_t_struct$_SqrtPositionStatus_$13597_storage_ptr(value) -> converted {
                converted := value
            }

            function allocate_memory_struct_t_struct$_FeeAmount_$6126_storage_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            /// @ast-id 33462
            /// @src 62:1561:2641  "function settleUserFee(..."
            function fun_settleUserFee_33462(var_assetStatus_33386_slot, var_rebalanceFeeGrowthCache_33391_slot, var_userStatus_33394_slot) -> var__33398_mpos {
                /// @src 62:1795:1820  "DataType.FeeAmount memory"
                let zero_t_struct$_FeeAmount_$6126_memory_ptr_358_mpos := zero_value_for_split_t_struct$_FeeAmount_$6126_memory_ptr()
                var__33398_mpos := zero_t_struct$_FeeAmount_$6126_memory_ptr_358_mpos

                /// @src 62:1893:1904  "assetStatus"
                let _359_slot := var_assetStatus_33386_slot
                let expr_33402_slot := _359_slot
                /// @src 62:1893:1913  "assetStatus.basePool"
                let _360 := add(expr_33402_slot, 17)
                let _361_slot := _360
                let expr_33403_slot := _361_slot
                /// @src 62:1893:1925  "assetStatus.basePool.tokenStatus"
                let _362 := add(expr_33403_slot, 2)
                let _363_slot := _362
                let expr_33404_slot := _363_slot
                /// @src 62:1893:1939  "assetStatus.basePool.tokenStatus.settleUserFee"
                let expr_33405_self_mpos := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_33404_slot)
                /// @src 62:1940:1950  "userStatus"
                let _364_slot := var_userStatus_33394_slot
                let expr_33406_slot := _364_slot
                /// @src 62:1940:1963  "userStatus.basePosition"
                let _365 := add(expr_33406_slot, 10)
                let _366_slot := _365
                let expr_33407_slot := _366_slot
                /// @src 62:1893:1964  "assetStatus.basePool.tokenStatus.settleUserFee(userStatus.basePosition)"
                let _367_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_33407_slot)
                let expr_33408 := fun_settleUserFee_31406(expr_33405_self_mpos, _367_slot)
                /// @src 62:1865:1964  "int256 totalFeeUnderlying = assetStatus.basePool.tokenStatus.settleUserFee(userStatus.basePosition)"
                let var_totalFeeUnderlying_33401 := expr_33408
                /// @src 62:1998:2009  "assetStatus"
                let _368_slot := var_assetStatus_33386_slot
                let expr_33412_slot := _368_slot
                /// @src 62:1998:2019  "assetStatus.quotePool"
                let _369 := add(expr_33412_slot, 3)
                let _370_slot := _369
                let expr_33413_slot := _370_slot
                /// @src 62:1998:2031  "assetStatus.quotePool.tokenStatus"
                let _371 := add(expr_33413_slot, 2)
                let _372_slot := _371
                let expr_33414_slot := _372_slot
                /// @src 62:1998:2045  "assetStatus.quotePool.tokenStatus.settleUserFee"
                let expr_33415_self_mpos := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_33414_slot)
                /// @src 62:2046:2056  "userStatus"
                let _373_slot := var_userStatus_33394_slot
                let expr_33416_slot := _373_slot
                /// @src 62:2046:2071  "userStatus.stablePosition"
                let _374 := add(expr_33416_slot, 12)
                let _375_slot := _374
                let expr_33417_slot := _375_slot
                /// @src 62:1998:2072  "assetStatus.quotePool.tokenStatus.settleUserFee(userStatus.stablePosition)"
                let _376_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_33417_slot)
                let expr_33418 := fun_settleUserFee_31406(expr_33415_self_mpos, _376_slot)
                /// @src 62:1974:2072  "int256 totalFeeStable = assetStatus.quotePool.tokenStatus.settleUserFee(userStatus.stablePosition)"
                let var_totalFeeStable_33411 := expr_33418
                /// @src 62:2220:2231  "assetStatus"
                let _377_slot := var_assetStatus_33386_slot
                let expr_33425_slot := _377_slot
                /// @src 62:2220:2234  "assetStatus.id"
                let _378 := add(expr_33425_slot, 0)
                let _379 := read_from_storage_split_offset_0_t_uint256(_378)
                let expr_33426 := _379
                /// @src 62:2236:2247  "assetStatus"
                let _380_slot := var_assetStatus_33386_slot
                let expr_33427_slot := _380_slot
                /// @src 62:2236:2263  "assetStatus.sqrtAssetStatus"
                let _381 := add(expr_33427_slot, 33)
                let _382_slot := _381
                let expr_33428_slot := _382_slot
                /// @src 62:2265:2288  "rebalanceFeeGrowthCache"
                let _383_slot := var_rebalanceFeeGrowthCache_33391_slot
                let expr_33429_slot := _383_slot
                /// @src 62:2290:2300  "userStatus"
                let _384_slot := var_userStatus_33394_slot
                let expr_33430_slot := _384_slot
                /// @src 62:2196:2301  "settleRebalanceInterest(assetStatus.id, assetStatus.sqrtAssetStatus, rebalanceFeeGrowthCache, userStatus)"
                let _385_slot := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(expr_33428_slot)
                let expr_33431_component_1, expr_33431_component_2 := fun_settleRebalanceInterest_33798(expr_33426, _385_slot, expr_33429_slot, expr_33430_slot)
                /// @src 62:2120:2301  "(int256 rebalanceInterestBase, int256 rebalanceInterestQuote) =..."
                let var_rebalanceInterestBase_33421 := expr_33431_component_1
                let var_rebalanceInterestQuote_33423 := expr_33431_component_2
                /// @src 62:2397:2408  "assetStatus"
                let _386_slot := var_assetStatus_33386_slot
                let expr_33438_slot := _386_slot
                /// @src 62:2410:2420  "userStatus"
                let _387_slot := var_userStatus_33394_slot
                let expr_33439_slot := _387_slot
                /// @src 62:2410:2429  "userStatus.sqrtPerp"
                let _388 := add(expr_33439_slot, 4)
                let _389_slot := _388
                let expr_33440_slot := _389_slot
                /// @src 62:2383:2430  "settlePremium(assetStatus, userStatus.sqrtPerp)"
                let _390_mpos := convert_t_struct$_PairStatus_$6102_storage_ptr_to_t_struct$_PairStatus_$6102_memory_ptr(expr_33438_slot)
                let _391_slot := convert_t_struct$_SqrtPositionStatus_$13597_storage_to_t_struct$_SqrtPositionStatus_$13597_storage_ptr(expr_33440_slot)
                let expr_33441_component_1, expr_33441_component_2 := fun_settlePremium_33645(_390_mpos, _391_slot)
                /// @src 62:2340:2430  "(int256 feeUnderlying, int256 feeStable) = settlePremium(assetStatus, userStatus.sqrtPerp)"
                let var_feeUnderlying_33434 := expr_33441_component_1
                let var_feeStable_33436 := expr_33441_component_2
                /// @src 62:2459:2468  "feeStable"
                let _392 := var_feeStable_33436
                let expr_33444 := _392
                /// @src 62:2471:2493  "rebalanceInterestQuote"
                let _393 := var_rebalanceInterestQuote_33423
                let expr_33445 := _393
                /// @src 62:2459:2493  "feeStable + rebalanceInterestQuote"
                let expr_33446 := checked_add_t_int256(expr_33444, expr_33445)

                /// @src 62:2441:2493  "totalFeeStable += feeStable + rebalanceInterestQuote"
                let _394 := var_totalFeeStable_33411
                let expr_33447 := checked_add_t_int256(_394, expr_33446)

                var_totalFeeStable_33411 := expr_33447
                /// @src 62:2525:2538  "feeUnderlying"
                let _395 := var_feeUnderlying_33434
                let expr_33450 := _395
                /// @src 62:2541:2562  "rebalanceInterestBase"
                let _396 := var_rebalanceInterestBase_33421
                let expr_33451 := _396
                /// @src 62:2525:2562  "feeUnderlying + rebalanceInterestBase"
                let expr_33452 := checked_add_t_int256(expr_33450, expr_33451)

                /// @src 62:2503:2562  "totalFeeUnderlying += feeUnderlying + rebalanceInterestBase"
                let _397 := var_totalFeeUnderlying_33401
                let expr_33453 := checked_add_t_int256(_397, expr_33452)

                var_totalFeeUnderlying_33401 := expr_33453
                /// @src 62:2580:2588  "DataType"
                let expr_33455_address := linkersymbol("src/libraries/DataType.sol:DataType")
                /// @src 62:2599:2617  "totalFeeUnderlying"
                let _398 := var_totalFeeUnderlying_33401
                let expr_33457 := _398
                /// @src 62:2619:2633  "totalFeeStable"
                let _399 := var_totalFeeStable_33411
                let expr_33458 := _399
                /// @src 62:2580:2634  "DataType.FeeAmount(totalFeeUnderlying, totalFeeStable)"
                let expr_33459_mpos := allocate_memory_struct_t_struct$_FeeAmount_$6126_storage_ptr()
                write_to_memory_t_int256(add(expr_33459_mpos, 0), expr_33457)
                write_to_memory_t_int256(add(expr_33459_mpos, 32), expr_33458)
                /// @src 62:2573:2634  "return DataType.FeeAmount(totalFeeUnderlying, totalFeeStable)"
                var__33398_mpos := expr_33459_mpos
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 14322
            /// @src 61:11765:13009  "function settleUserBalance(DataType.PairStatus storage _pairStatus, UserStatus storage _userStatus) internal {..."
            function fun_settleUserBalance_14322(var__pairStatus_14213_slot, var__userStatus_14216_slot) {

                /// @src 61:11980:11991  "_pairStatus"
                let _400_slot := var__pairStatus_14213_slot
                let expr_14224_slot := _400_slot
                /// @src 61:11980:12007  "_pairStatus.sqrtAssetStatus"
                let _401 := add(expr_14224_slot, 33)
                let _402_slot := _401
                let expr_14225_slot := _402_slot
                /// @src 61:12009:12020  "_userStatus"
                let _403_slot := var__userStatus_14216_slot
                let expr_14226_slot := _403_slot
                /// @src 61:12022:12033  "_pairStatus"
                let _404_slot := var__pairStatus_14213_slot
                let expr_14227_slot := _404_slot
                /// @src 61:12022:12045  "_pairStatus.isQuoteZero"
                let _405 := add(expr_14227_slot, 50)
                let _406 := read_from_storage_split_offset_20_t_bool(_405)
                let expr_14228 := _406
                /// @src 61:11959:12046  "updateRebalanceEntry(_pairStatus.sqrtAssetStatus, _userStatus, _pairStatus.isQuoteZero)"
                let _407_slot := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(expr_14225_slot)
                let expr_14229_component_1, expr_14229_component_2 := fun_updateRebalanceEntry_15291(_407_slot, expr_14226_slot, expr_14228)
                /// @src 61:11884:12046  "(int256 deltaPositionUnderlying, int256 deltaPositionStable) =..."
                let var_deltaPositionUnderlying_14220 := expr_14229_component_1
                let var_deltaPositionStable_14222 := expr_14229_component_2
                /// @src 61:12061:12084  "deltaPositionUnderlying"
                let _408 := var_deltaPositionUnderlying_14220
                let expr_14231 := _408
                /// @src 61:12088:12089  "0"
                let expr_14232 := 0x00
                /// @src 61:12061:12089  "deltaPositionUnderlying == 0"
                let expr_14233 := eq(cleanup_t_int256(expr_14231), convert_t_rational_0_by_1_to_t_int256(expr_14232))
                /// @src 61:12061:12117  "deltaPositionUnderlying == 0 && deltaPositionStable == 0"
                let expr_14237 := expr_14233
                if expr_14237 {
                    /// @src 61:12093:12112  "deltaPositionStable"
                    let _409 := var_deltaPositionStable_14222
                    let expr_14234 := _409
                    /// @src 61:12116:12117  "0"
                    let expr_14235 := 0x00
                    /// @src 61:12093:12117  "deltaPositionStable == 0"
                    let expr_14236 := eq(cleanup_t_int256(expr_14234), convert_t_rational_0_by_1_to_t_int256(expr_14235))
                    /// @src 61:12061:12117  "deltaPositionUnderlying == 0 && deltaPositionStable == 0"
                    expr_14237 := expr_14236
                }
                /// @src 61:12057:12150  "if (deltaPositionUnderlying == 0 && deltaPositionStable == 0) {..."
                if expr_14237 {
                    /// @src 61:12133:12140  "return;"
                    leave
                    /// @src 61:12057:12150  "if (deltaPositionUnderlying == 0 && deltaPositionStable == 0) {..."
                }
                /// @src 61:12208:12231  "deltaPositionUnderlying"
                let _410 := var_deltaPositionUnderlying_14220
                let expr_14246 := _410
                /// @src 61:12160:12171  "_userStatus"
                let _411_slot := var__userStatus_14216_slot
                let expr_14241_slot := _411_slot
                /// @src 61:12160:12180  "_userStatus.sqrtPerp"
                let _412 := add(expr_14241_slot, 4)
                let _413_slot := _412
                let expr_14244_slot := _413_slot
                /// @src 61:12160:12204  "_userStatus.sqrtPerp.baseRebalanceEntryValue"
                let _414 := add(expr_14244_slot, 3)
                /// @src 61:12160:12231  "_userStatus.sqrtPerp.baseRebalanceEntryValue += deltaPositionUnderlying"
                let _415 := read_from_storage_split_offset_0_t_int256(_414)
                let expr_14247 := checked_add_t_int256(_415, expr_14246)

                update_storage_value_offset_0_t_int256_to_t_int256(_414, expr_14247)
                /// @src 61:12290:12309  "deltaPositionStable"
                let _416 := var_deltaPositionStable_14222
                let expr_14254 := _416
                /// @src 61:12241:12252  "_userStatus"
                let _417_slot := var__userStatus_14216_slot
                let expr_14249_slot := _417_slot
                /// @src 61:12241:12261  "_userStatus.sqrtPerp"
                let _418 := add(expr_14249_slot, 4)
                let _419_slot := _418
                let expr_14252_slot := _419_slot
                /// @src 61:12241:12286  "_userStatus.sqrtPerp.quoteRebalanceEntryValue"
                let _420 := add(expr_14252_slot, 2)
                /// @src 61:12241:12309  "_userStatus.sqrtPerp.quoteRebalanceEntryValue += deltaPositionStable"
                let _421 := read_from_storage_split_offset_0_t_int256(_420)
                let expr_14255 := checked_add_t_int256(_421, expr_14254)

                update_storage_value_offset_0_t_int256_to_t_int256(_420, expr_14255)
                /// @src 61:12352:12363  "_pairStatus"
                let _422_slot := var__pairStatus_14213_slot
                let expr_14257_slot := _422_slot
                /// @src 61:12352:12372  "_pairStatus.basePool"
                let _423 := add(expr_14257_slot, 17)
                let _424_slot := _423
                let expr_14261_slot := _424_slot
                /// @src 61:12352:12384  "_pairStatus.basePool.tokenStatus"
                let _425 := add(expr_14261_slot, 2)
                let _426_slot := _425
                let expr_14262_slot := _426_slot
                /// @src 61:12352:12399  "_pairStatus.basePool.tokenStatus.updatePosition"
                let expr_14263_self_slot := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(expr_14262_slot)
                /// @src 61:12413:12424  "_pairStatus"
                let _427_slot := var__pairStatus_14213_slot
                let expr_14264_slot := _427_slot
                /// @src 61:12413:12440  "_pairStatus.sqrtAssetStatus"
                let _428 := add(expr_14264_slot, 33)
                let _429_slot := _428
                let expr_14265_slot := _429_slot
                /// @src 61:12413:12462  "_pairStatus.sqrtAssetStatus.rebalancePositionBase"
                let _430 := add(expr_14265_slot, 11)
                let _431_slot := _430
                let expr_14266_slot := _431_slot
                /// @src 61:12465:12488  "deltaPositionUnderlying"
                let _432 := var_deltaPositionUnderlying_14220
                let expr_14267 := _432
                /// @src 61:12464:12488  "-deltaPositionUnderlying"
                let expr_14268 := negate_t_int256(expr_14267)
                /// @src 61:12490:12501  "_pairStatus"
                let _433_slot := var__pairStatus_14213_slot
                let expr_14269_slot := _433_slot
                /// @src 61:12490:12504  "_pairStatus.id"
                let _434 := add(expr_14269_slot, 0)
                let _435 := read_from_storage_split_offset_0_t_uint256(_434)
                let expr_14270 := _435
                /// @src 61:12506:12511  "false"
                let expr_14271 := 0x00
                /// @src 61:12352:12521  "_pairStatus.basePool.tokenStatus.updatePosition(..."
                let _436_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_14266_slot)
                fun_updatePosition_31326(expr_14263_self_slot, _436_slot, expr_14268, expr_14270, expr_14271)
                /// @src 61:12531:12542  "_pairStatus"
                let _437_slot := var__pairStatus_14213_slot
                let expr_14274_slot := _437_slot
                /// @src 61:12531:12552  "_pairStatus.quotePool"
                let _438 := add(expr_14274_slot, 3)
                let _439_slot := _438
                let expr_14278_slot := _439_slot
                /// @src 61:12531:12564  "_pairStatus.quotePool.tokenStatus"
                let _440 := add(expr_14278_slot, 2)
                let _441_slot := _440
                let expr_14279_slot := _441_slot
                /// @src 61:12531:12579  "_pairStatus.quotePool.tokenStatus.updatePosition"
                let expr_14280_self_slot := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(expr_14279_slot)
                /// @src 61:12593:12604  "_pairStatus"
                let _442_slot := var__pairStatus_14213_slot
                let expr_14281_slot := _442_slot
                /// @src 61:12593:12620  "_pairStatus.sqrtAssetStatus"
                let _443 := add(expr_14281_slot, 33)
                let _444_slot := _443
                let expr_14282_slot := _444_slot
                /// @src 61:12593:12643  "_pairStatus.sqrtAssetStatus.rebalancePositionQuote"
                let _445 := add(expr_14282_slot, 13)
                let _446_slot := _445
                let expr_14283_slot := _446_slot
                /// @src 61:12646:12665  "deltaPositionStable"
                let _447 := var_deltaPositionStable_14222
                let expr_14284 := _447
                /// @src 61:12645:12665  "-deltaPositionStable"
                let expr_14285 := negate_t_int256(expr_14284)
                /// @src 61:12667:12678  "_pairStatus"
                let _448_slot := var__pairStatus_14213_slot
                let expr_14286_slot := _448_slot
                /// @src 61:12667:12681  "_pairStatus.id"
                let _449 := add(expr_14286_slot, 0)
                let _450 := read_from_storage_split_offset_0_t_uint256(_449)
                let expr_14287 := _450
                /// @src 61:12683:12687  "true"
                let expr_14288 := 0x01
                /// @src 61:12531:12697  "_pairStatus.quotePool.tokenStatus.updatePosition(..."
                let _451_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_14283_slot)
                fun_updatePosition_31326(expr_14280_self_slot, _451_slot, expr_14285, expr_14287, expr_14288)
                /// @src 61:12708:12719  "_pairStatus"
                let _452_slot := var__pairStatus_14213_slot
                let expr_14291_slot := _452_slot
                /// @src 61:12708:12728  "_pairStatus.basePool"
                let _453 := add(expr_14291_slot, 17)
                let _454_slot := _453
                let expr_14295_slot := _454_slot
                /// @src 61:12708:12740  "_pairStatus.basePool.tokenStatus"
                let _455 := add(expr_14295_slot, 2)
                let _456_slot := _455
                let expr_14296_slot := _456_slot
                /// @src 61:12708:12755  "_pairStatus.basePool.tokenStatus.updatePosition"
                let expr_14297_self_slot := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(expr_14296_slot)
                /// @src 61:12769:12780  "_userStatus"
                let _457_slot := var__userStatus_14216_slot
                let expr_14298_slot := _457_slot
                /// @src 61:12769:12793  "_userStatus.basePosition"
                let _458 := add(expr_14298_slot, 10)
                let _459_slot := _458
                let expr_14299_slot := _459_slot
                /// @src 61:12795:12818  "deltaPositionUnderlying"
                let _460 := var_deltaPositionUnderlying_14220
                let expr_14300 := _460
                /// @src 61:12820:12831  "_pairStatus"
                let _461_slot := var__pairStatus_14213_slot
                let expr_14301_slot := _461_slot
                /// @src 61:12820:12834  "_pairStatus.id"
                let _462 := add(expr_14301_slot, 0)
                let _463 := read_from_storage_split_offset_0_t_uint256(_462)
                let expr_14302 := _463
                /// @src 61:12836:12841  "false"
                let expr_14303 := 0x00
                /// @src 61:12708:12851  "_pairStatus.basePool.tokenStatus.updatePosition(..."
                let _464_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_14299_slot)
                fun_updatePosition_31326(expr_14297_self_slot, _464_slot, expr_14300, expr_14302, expr_14303)
                /// @src 61:12861:12872  "_pairStatus"
                let _465_slot := var__pairStatus_14213_slot
                let expr_14306_slot := _465_slot
                /// @src 61:12861:12882  "_pairStatus.quotePool"
                let _466 := add(expr_14306_slot, 3)
                let _467_slot := _466
                let expr_14310_slot := _467_slot
                /// @src 61:12861:12894  "_pairStatus.quotePool.tokenStatus"
                let _468 := add(expr_14310_slot, 2)
                let _469_slot := _468
                let expr_14311_slot := _469_slot
                /// @src 61:12861:12909  "_pairStatus.quotePool.tokenStatus.updatePosition"
                let expr_14312_self_slot := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(expr_14311_slot)
                /// @src 61:12923:12934  "_userStatus"
                let _470_slot := var__userStatus_14216_slot
                let expr_14313_slot := _470_slot
                /// @src 61:12923:12949  "_userStatus.stablePosition"
                let _471 := add(expr_14313_slot, 12)
                let _472_slot := _471
                let expr_14314_slot := _472_slot
                /// @src 61:12951:12970  "deltaPositionStable"
                let _473 := var_deltaPositionStable_14222
                let expr_14315 := _473
                /// @src 61:12972:12983  "_pairStatus"
                let _474_slot := var__pairStatus_14213_slot
                let expr_14316_slot := _474_slot
                /// @src 61:12972:12986  "_pairStatus.id"
                let _475 := add(expr_14316_slot, 0)
                let _476 := read_from_storage_split_offset_0_t_uint256(_475)
                let expr_14317 := _476
                /// @src 61:12988:12992  "true"
                let expr_14318 := 0x01
                /// @src 61:12861:13002  "_pairStatus.quotePool.tokenStatus.updatePosition(..."
                let _477_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_14314_slot)
                fun_updatePosition_31326(expr_14312_self_slot, _477_slot, expr_14315, expr_14317, expr_14318)

            }
            /// @src 68:814:5932  "library Trade {..."

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function read_from_memoryt_address(ptr) -> returnValue {

                let value := cleanup_t_address(mload(ptr))

                returnValue :=

                value

            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_contract$_IUniswapV3Pool_$13422(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IUniswapV3Pool_$13422(value)
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() {
                revert(0, 0)
            }

            function shift_left_224(value) -> newValue {
                newValue :=

                shl(224, value)

            }

            function validator_revert_t_uint160(value) {
                if iszero(eq(value, cleanup_t_uint160(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint160_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint160(value)
            }

            function validator_revert_t_int24(value) {
                if iszero(eq(value, cleanup_t_int24(value))) { revert(0, 0) }
            }

            function abi_decode_t_int24_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_int24(value)
            }

            function cleanup_t_uint16(value) -> cleaned {
                cleaned := and(value, 0xffff)
            }

            function validator_revert_t_uint16(value) {
                if iszero(eq(value, cleanup_t_uint16(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint16_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint16(value)
            }

            function validator_revert_t_uint8(value) {
                if iszero(eq(value, cleanup_t_uint8(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint8_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint8(value)
            }

            function validator_revert_t_bool(value) {
                if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
            }

            function abi_decode_t_bool_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_bool(value)
            }

            function abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5, value6 {
                if slt(sub(dataEnd, headStart), 224) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint160_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_int24_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint16_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_uint16_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 128

                    value4 := abi_decode_t_uint16_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 160

                    value5 := abi_decode_t_uint8_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 192

                    value6 := abi_decode_t_bool_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            /// @ast-id 30631
            /// @src 65:3527:3779  "function isInRange(Perp.SqrtPerpAssetStatus memory sqrtAssetStatus) internal view returns (bool) {..."
            function fun_isInRange_30631(var_sqrtAssetStatus_30611_mpos) -> var__30614 {
                /// @src 65:3618:3622  "bool"
                let zero_t_bool_478 := zero_value_for_split_t_bool()
                var__30614 := zero_t_bool_478

                /// @src 65:3678:3693  "sqrtAssetStatus"
                let _479_mpos := var_sqrtAssetStatus_30611_mpos
                let expr_30619_mpos := _479_mpos
                /// @src 65:3678:3705  "sqrtAssetStatus.uniswapPool"
                let _480 := add(expr_30619_mpos, 0)
                let _481 := read_from_memoryt_address(_480)
                let expr_30620 := _481
                /// @src 65:3663:3706  "IUniswapV3Pool(sqrtAssetStatus.uniswapPool)"
                let expr_30621_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_30620)
                /// @src 65:3663:3712  "IUniswapV3Pool(sqrtAssetStatus.uniswapPool).slot0"
                let expr_30622_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_30621_address)
                let expr_30622_functionSelector := 0x3850c7bd
                /// @src 65:3663:3714  "IUniswapV3Pool(sqrtAssetStatus.uniswapPool).slot0()"

                // storage for arguments and returned data
                let _482 := allocate_unbounded()
                mstore(_482, shift_left_224(expr_30622_functionSelector))
                let _483 := abi_encode_tuple__to__fromStack(add(_482, 4) )

                let _484 := staticcall(gas(), expr_30622_address,  _482, sub(_483, _482), _482, 224)

                if iszero(_484) { revert_forward_1() }

                let expr_30623_component_1, expr_30623_component_2, expr_30623_component_3, expr_30623_component_4, expr_30623_component_5, expr_30623_component_6, expr_30623_component_7
                if _484 {

                    let _485 := 224

                    if gt(_485, returndatasize()) {
                        _485 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_482, _485)

                    // decode return parameters from external try-call into retVars
                    expr_30623_component_1, expr_30623_component_2, expr_30623_component_3, expr_30623_component_4, expr_30623_component_5, expr_30623_component_6, expr_30623_component_7 :=  abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(_482, add(_482, _485))
                }
                /// @src 65:3634:3714  "(, int24 currentTick,,,,,) = IUniswapV3Pool(sqrtAssetStatus.uniswapPool).slot0()"
                let var_currentTick_30617 := expr_30623_component_2
                /// @src 65:3743:3758  "sqrtAssetStatus"
                let _486_mpos := var_sqrtAssetStatus_30611_mpos
                let expr_30626_mpos := _486_mpos
                /// @src 65:3760:3771  "currentTick"
                let _487 := var_currentTick_30617
                let expr_30627 := _487
                /// @src 65:3732:3772  "_isInRange(sqrtAssetStatus, currentTick)"
                let expr_30628 := fun__isInRange_30653(expr_30626_mpos, expr_30627)
                /// @src 65:3725:3772  "return _isInRange(sqrtAssetStatus, currentTick)"
                var__30614 := expr_30628
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            function read_from_memoryt_int24(ptr) -> returnValue {

                let value := cleanup_t_int24(mload(ptr))

                returnValue :=

                value

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

            function abi_encode_t_int24_to_t_int24_fromStack(value, pos) {
                mstore(pos, cleanup_t_int24(value))
            }

            function abi_encode_t_uint128_to_t_uint128_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint128(value))
            }

            function abi_encode_tuple_t_int24_t_int24_t_uint128__to_t_int24_t_int24_t_uint128__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_int24_to_t_int24_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int24_to_t_int24_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint128_to_t_uint128_fromStack(value2,  add(headStart, 64))

            }

            function convert_t_contract$_Perp_$15783_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function validator_revert_t_uint128(value) {
                if iszero(eq(value, cleanup_t_uint128(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint128_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint128(value)
            }

            function abi_decode_tuple_t_uint128t_uint128_fromMemory(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint128_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint128_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple_t_address_t_int24_t_int24_t_uint128_t_uint128__to_t_address_t_int24_t_int24_t_uint128_t_uint128__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int24_to_t_int24_fromStack(value1,  add(headStart, 32))

                abi_encode_t_int24_to_t_int24_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint128_to_t_uint128_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint128_to_t_uint128_fromStack(value4,  add(headStart, 128))

            }

            /// @ast-id 15520
            /// @src 61:26037:26885  "function decrease(SqrtPerpAssetStatus memory _assetStatus, uint256 _liquidityAmount)..."
            function fun_decrease_15520(var__assetStatus_15441_mpos, var__liquidityAmount_15443) -> var_receivedAmount0_15446, var_receivedAmount1_15448 {
                /// @src 61:26156:26178  "int256 receivedAmount0"
                let zero_t_int256_488 := zero_value_for_split_t_int256()
                var_receivedAmount0_15446 := zero_t_int256_488
                /// @src 61:26180:26202  "int256 receivedAmount1"
                let zero_t_int256_489 := zero_value_for_split_t_int256()
                var_receivedAmount1_15448 := zero_t_int256_489

                /// @src 61:26222:26234  "_assetStatus"
                let _490_mpos := var__assetStatus_15441_mpos
                let expr_15450_mpos := _490_mpos
                /// @src 61:26222:26246  "_assetStatus.totalAmount"
                let _491 := add(expr_15450_mpos, 128)
                let _492 := read_from_memoryt_uint256(_491)
                let expr_15451 := _492
                /// @src 61:26249:26261  "_assetStatus"
                let _493_mpos := var__assetStatus_15441_mpos
                let expr_15452_mpos := _493_mpos
                /// @src 61:26249:26276  "_assetStatus.borrowedAmount"
                let _494 := add(expr_15452_mpos, 160)
                let _495 := read_from_memoryt_uint256(_494)
                let expr_15453 := _495
                /// @src 61:26222:26276  "_assetStatus.totalAmount - _assetStatus.borrowedAmount"
                let expr_15454 := checked_sub_t_uint256(expr_15451, expr_15453)

                /// @src 61:26279:26295  "_liquidityAmount"
                let _496 := var__liquidityAmount_15443
                let expr_15455 := _496
                /// @src 61:26222:26295  "_assetStatus.totalAmount - _assetStatus.borrowedAmount < _liquidityAmount"
                let expr_15456 := lt(cleanup_t_uint256(expr_15454), cleanup_t_uint256(expr_15455))
                /// @src 61:26218:26351  "if (_assetStatus.totalAmount - _assetStatus.borrowedAmount < _liquidityAmount) {..."
                if expr_15456 {
                    /// @src 61:26318:26340  "NoCFMMLiquidityError()"
                    {

                        let _498 := 0

                        mstore(_498, 0xff1f7ff900000000000000000000000000000000000000000000000000000000)
                        let _497 := abi_encode_tuple__to__fromStack(add(_498, 4) )
                        revert(_498, sub(_497, _498))
                    }/// @src 61:26218:26351  "if (_assetStatus.totalAmount - _assetStatus.borrowedAmount < _liquidityAmount) {..."
                }
                /// @src 61:26413:26425  "_assetStatus"
                let _499_mpos := var__assetStatus_15441_mpos
                let expr_15467_mpos := _499_mpos
                /// @src 61:26413:26437  "_assetStatus.uniswapPool"
                let _500 := add(expr_15467_mpos, 0)
                let _501 := read_from_memoryt_address(_500)
                let expr_15468 := _501
                /// @src 61:26398:26438  "IUniswapV3Pool(_assetStatus.uniswapPool)"
                let expr_15469_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_15468)
                /// @src 61:26398:26443  "IUniswapV3Pool(_assetStatus.uniswapPool).burn"
                let expr_15470_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_15469_address)
                let expr_15470_functionSelector := 0xa34123a7
                /// @src 61:26457:26469  "_assetStatus"
                let _502_mpos := var__assetStatus_15441_mpos
                let expr_15471_mpos := _502_mpos
                /// @src 61:26457:26479  "_assetStatus.tickLower"
                let _503 := add(expr_15471_mpos, 32)
                let _504 := read_from_memoryt_int24(_503)
                let expr_15472 := _504
                /// @src 61:26481:26493  "_assetStatus"
                let _505_mpos := var__assetStatus_15441_mpos
                let expr_15473_mpos := _505_mpos
                /// @src 61:26481:26503  "_assetStatus.tickUpper"
                let _506 := add(expr_15473_mpos, 64)
                let _507 := read_from_memoryt_int24(_506)
                let expr_15474 := _507
                /// @src 61:26505:26521  "_liquidityAmount"
                let _508 := var__liquidityAmount_15443
                let expr_15475 := _508
                /// @src 61:26505:26535  "_liquidityAmount.safeCastTo128"
                let expr_15476_self := expr_15475
                /// @src 61:26505:26537  "_liquidityAmount.safeCastTo128()"
                let expr_15477 := fun_safeCastTo128_29341(expr_15476_self)
                /// @src 61:26398:26547  "IUniswapV3Pool(_assetStatus.uniswapPool).burn(..."

                // storage for arguments and returned data
                let _509 := allocate_unbounded()
                mstore(_509, shift_left_224(expr_15470_functionSelector))
                let _510 := abi_encode_tuple_t_int24_t_int24_t_uint128__to_t_int24_t_int24_t_uint128__fromStack(add(_509, 4) , expr_15472, expr_15474, expr_15477)

                let _511 := call(gas(), expr_15470_address,  0,  _509, sub(_510, _509), _509, 64)

                if iszero(_511) { revert_forward_1() }

                let expr_15478_component_1, expr_15478_component_2
                if _511 {

                    let _512 := 64

                    if gt(_512, returndatasize()) {
                        _512 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_509, _512)

                    // decode return parameters from external try-call into retVars
                    expr_15478_component_1, expr_15478_component_2 :=  abi_decode_tuple_t_uint256t_uint256_fromMemory(_509, add(_509, _512))
                }
                /// @src 61:26361:26547  "(uint256 amount0, uint256 amount1) = IUniswapV3Pool(_assetStatus.uniswapPool).burn(..."
                let var_amount0_15463 := expr_15478_component_1
                let var_amount1_15465 := expr_15478_component_2
                /// @src 61:26613:26625  "_assetStatus"
                let _513_mpos := var__assetStatus_15441_mpos
                let expr_15481_mpos := _513_mpos
                /// @src 61:26613:26637  "_assetStatus.uniswapPool"
                let _514 := add(expr_15481_mpos, 0)
                let _515 := read_from_memoryt_address(_514)
                let expr_15482 := _515
                /// @src 61:26598:26638  "IUniswapV3Pool(_assetStatus.uniswapPool)"
                let expr_15483_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_15482)
                /// @src 61:26598:26646  "IUniswapV3Pool(_assetStatus.uniswapPool).collect"
                let expr_15484_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_15483_address)
                let expr_15484_functionSelector := 0x4f1eb3d8
                /// @src 61:26668:26672  "this"
                let expr_15487_address := address()
                /// @src 61:26660:26673  "address(this)"
                let expr_15488 := convert_t_contract$_Perp_$15783_to_t_address(expr_15487_address)
                /// @src 61:26675:26687  "_assetStatus"
                let _516_mpos := var__assetStatus_15441_mpos
                let expr_15489_mpos := _516_mpos
                /// @src 61:26675:26697  "_assetStatus.tickLower"
                let _517 := add(expr_15489_mpos, 32)
                let _518 := read_from_memoryt_int24(_517)
                let expr_15490 := _518
                /// @src 61:26699:26711  "_assetStatus"
                let _519_mpos := var__assetStatus_15441_mpos
                let expr_15491_mpos := _519_mpos
                /// @src 61:26699:26721  "_assetStatus.tickUpper"
                let _520 := add(expr_15491_mpos, 64)
                let _521 := read_from_memoryt_int24(_520)
                let expr_15492 := _521
                /// @src 61:26723:26740  "type(uint128).max"
                let expr_15497 := 0xffffffffffffffffffffffffffffffff
                /// @src 61:26742:26759  "type(uint128).max"
                let expr_15502 := 0xffffffffffffffffffffffffffffffff
                /// @src 61:26598:26769  "IUniswapV3Pool(_assetStatus.uniswapPool).collect(..."

                // storage for arguments and returned data
                let _522 := allocate_unbounded()
                mstore(_522, shift_left_224(expr_15484_functionSelector))
                let _523 := abi_encode_tuple_t_address_t_int24_t_int24_t_uint128_t_uint128__to_t_address_t_int24_t_int24_t_uint128_t_uint128__fromStack(add(_522, 4) , expr_15488, expr_15490, expr_15492, expr_15497, expr_15502)

                let _524 := call(gas(), expr_15484_address,  0,  _522, sub(_523, _522), _522, 64)

                if iszero(_524) { revert_forward_1() }

                let expr_15503_component_1, expr_15503_component_2
                if _524 {

                    let _525 := 64

                    if gt(_525, returndatasize()) {
                        _525 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_522, _525)

                    // decode return parameters from external try-call into retVars
                    expr_15503_component_1, expr_15503_component_2 :=  abi_decode_tuple_t_uint128t_uint128_fromMemory(_522, add(_522, _525))
                }
                /// @src 61:26798:26806  "SafeCast"
                let expr_15506_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                /// @src 61:26816:26823  "amount0"
                let _526 := var_amount0_15463
                let expr_15508 := _526
                /// @src 61:26798:26824  "SafeCast.toInt256(amount0)"
                let expr_15509 := fun_toInt256_28969(expr_15508)
                /// @src 61:26780:26824  "receivedAmount0 = SafeCast.toInt256(amount0)"
                var_receivedAmount0_15446 := expr_15509
                let expr_15510 := expr_15509
                /// @src 61:26852:26860  "SafeCast"
                let expr_15513_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                /// @src 61:26870:26877  "amount1"
                let _527 := var_amount1_15465
                let expr_15515 := _527
                /// @src 61:26852:26878  "SafeCast.toInt256(amount1)"
                let expr_15516 := fun_toInt256_28969(expr_15515)
                /// @src 61:26834:26878  "receivedAmount1 = SafeCast.toInt256(amount1)"
                var_receivedAmount1_15448 := expr_15516
                let expr_15517 := expr_15516

            }
            /// @src 68:814:5932  "library Trade {..."

            function array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(memPtr) {

            }

            function abi_encode_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, 0)
                store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(pos)
                end := add(pos, 0)
            }

            function abi_encode_tuple_t_address_t_int24_t_int24_t_uint128_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_address_t_int24_t_int24_t_uint128_t_bytes_memory_ptr__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int24_to_t_int24_fromStack(value1,  add(headStart, 32))

                abi_encode_t_int24_to_t_int24_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint128_to_t_uint128_fromStack(value3,  add(headStart, 96))

                mstore(add(headStart, 128), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr_fromStack( tail)

            }

            /// @ast-id 15438
            /// @src 61:25527:26031  "function increase(SqrtPerpAssetStatus memory _assetStatus, uint256 _liquidityAmount)..."
            function fun_increase_15438(var__assetStatus_15389_mpos, var__liquidityAmount_15391) -> var_requiredAmount0_15394, var_requiredAmount1_15396 {
                /// @src 61:25646:25668  "int256 requiredAmount0"
                let zero_t_int256_528 := zero_value_for_split_t_int256()
                var_requiredAmount0_15394 := zero_t_int256_528
                /// @src 61:25670:25692  "int256 requiredAmount1"
                let zero_t_int256_529 := zero_value_for_split_t_int256()
                var_requiredAmount1_15396 := zero_t_int256_529

                /// @src 61:25760:25772  "_assetStatus"
                let _530_mpos := var__assetStatus_15389_mpos
                let expr_15403_mpos := _530_mpos
                /// @src 61:25760:25784  "_assetStatus.uniswapPool"
                let _531 := add(expr_15403_mpos, 0)
                let _532 := read_from_memoryt_address(_531)
                let expr_15404 := _532
                /// @src 61:25745:25785  "IUniswapV3Pool(_assetStatus.uniswapPool)"
                let expr_15405_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_15404)
                /// @src 61:25745:25790  "IUniswapV3Pool(_assetStatus.uniswapPool).mint"
                let expr_15406_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_15405_address)
                let expr_15406_functionSelector := 0x3c8a7d8d
                /// @src 61:25812:25816  "this"
                let expr_15409_address := address()
                /// @src 61:25804:25817  "address(this)"
                let expr_15410 := convert_t_contract$_Perp_$15783_to_t_address(expr_15409_address)
                /// @src 61:25819:25831  "_assetStatus"
                let _533_mpos := var__assetStatus_15389_mpos
                let expr_15411_mpos := _533_mpos
                /// @src 61:25819:25841  "_assetStatus.tickLower"
                let _534 := add(expr_15411_mpos, 32)
                let _535 := read_from_memoryt_int24(_534)
                let expr_15412 := _535
                /// @src 61:25843:25855  "_assetStatus"
                let _536_mpos := var__assetStatus_15389_mpos
                let expr_15413_mpos := _536_mpos
                /// @src 61:25843:25865  "_assetStatus.tickUpper"
                let _537 := add(expr_15413_mpos, 64)
                let _538 := read_from_memoryt_int24(_537)
                let expr_15414 := _538
                /// @src 61:25867:25883  "_liquidityAmount"
                let _539 := var__liquidityAmount_15391
                let expr_15415 := _539
                /// @src 61:25867:25897  "_liquidityAmount.safeCastTo128"
                let expr_15416_self := expr_15415
                /// @src 61:25867:25899  "_liquidityAmount.safeCastTo128()"
                let expr_15417 := fun_safeCastTo128_29341(expr_15416_self)
                /// @src 61:25745:25913  "IUniswapV3Pool(_assetStatus.uniswapPool).mint(..."

                // storage for arguments and returned data
                let _540 := allocate_unbounded()
                mstore(_540, shift_left_224(expr_15406_functionSelector))
                let _541 := abi_encode_tuple_t_address_t_int24_t_int24_t_uint128_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_address_t_int24_t_int24_t_uint128_t_bytes_memory_ptr__fromStack(add(_540, 4) , expr_15410, expr_15412, expr_15414, expr_15417)

                let _542 := call(gas(), expr_15406_address,  0,  _540, sub(_541, _540), _540, 64)

                if iszero(_542) { revert_forward_1() }

                let expr_15419_component_1, expr_15419_component_2
                if _542 {

                    let _543 := 64

                    if gt(_543, returndatasize()) {
                        _543 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_540, _543)

                    // decode return parameters from external try-call into retVars
                    expr_15419_component_1, expr_15419_component_2 :=  abi_decode_tuple_t_uint256t_uint256_fromMemory(_540, add(_540, _543))
                }
                /// @src 61:25708:25913  "(uint256 amount0, uint256 amount1) = IUniswapV3Pool(_assetStatus.uniswapPool).mint(..."
                let var_amount0_15399 := expr_15419_component_1
                let var_amount1_15401 := expr_15419_component_2
                /// @src 61:25943:25951  "SafeCast"
                let expr_15422_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                /// @src 61:25961:25968  "amount0"
                let _544 := var_amount0_15399
                let expr_15424 := _544
                /// @src 61:25943:25969  "SafeCast.toInt256(amount0)"
                let expr_15425 := fun_toInt256_28969(expr_15424)
                /// @src 61:25942:25969  "-SafeCast.toInt256(amount0)"
                let expr_15426 := negate_t_int256(expr_15425)
                /// @src 61:25924:25969  "requiredAmount0 = -SafeCast.toInt256(amount0)"
                var_requiredAmount0_15394 := expr_15426
                let expr_15427 := expr_15426
                /// @src 61:25998:26006  "SafeCast"
                let expr_15430_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                /// @src 61:26016:26023  "amount1"
                let _545 := var_amount1_15401
                let expr_15432 := _545
                /// @src 61:25998:26024  "SafeCast.toInt256(amount1)"
                let expr_15433 := fun_toInt256_28969(expr_15432)
                /// @src 61:25997:26024  "-SafeCast.toInt256(amount1)"
                let expr_15434 := negate_t_int256(expr_15433)
                /// @src 61:25979:26024  "requiredAmount1 = -SafeCast.toInt256(amount1)"
                var_requiredAmount1_15396 := expr_15434
                let expr_15435 := expr_15434

            }
            /// @src 68:814:5932  "library Trade {..."

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_uint256_to_t_uint256(slot, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
            }

            /// @ast-id 14518
            /// @src 61:14670:15063  "function saveLastFeeGrowth(SqrtPerpAssetStatus storage _assetStatus) internal {..."
            function fun_saveLastFeeGrowth_14518(var__assetStatus_14488_slot) {

                /// @src 61:14833:14842  "UniHelper"
                let expr_14495_address := linkersymbol("src/libraries/UniHelper.sol:UniHelper")
                /// @src 61:14862:14874  "_assetStatus"
                let _546_slot := var__assetStatus_14488_slot
                let expr_14497_slot := _546_slot
                /// @src 61:14862:14886  "_assetStatus.uniswapPool"
                let _547 := add(expr_14497_slot, 0)
                let _548 := read_from_storage_split_offset_0_t_address(_547)
                let expr_14498 := _548
                /// @src 61:14888:14900  "_assetStatus"
                let _549_slot := var__assetStatus_14488_slot
                let expr_14499_slot := _549_slot
                /// @src 61:14888:14910  "_assetStatus.tickLower"
                let _550 := add(expr_14499_slot, 0)
                let _551 := read_from_storage_split_offset_20_t_int24(_550)
                let expr_14500 := _551
                /// @src 61:14912:14924  "_assetStatus"
                let _552_slot := var__assetStatus_14488_slot
                let expr_14501_slot := _552_slot
                /// @src 61:14912:14934  "_assetStatus.tickUpper"
                let _553 := add(expr_14501_slot, 0)
                let _554 := read_from_storage_split_offset_23_t_int24(_553)
                let expr_14502 := _554
                /// @src 61:14833:14935  "UniHelper.getFeeGrowthInside(_assetStatus.uniswapPool, _assetStatus.tickLower, _assetStatus.tickUpper)"
                let expr_14503_component_1, expr_14503_component_2 := fun_getFeeGrowthInside_16941(expr_14498, expr_14500, expr_14502)
                /// @src 61:14758:14935  "(uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) =..."
                let var_feeGrowthInside0X128_14492 := expr_14503_component_1
                let var_feeGrowthInside1X128_14494 := expr_14503_component_2
                /// @src 61:14976:14996  "feeGrowthInside0X128"
                let _555 := var_feeGrowthInside0X128_14492
                let expr_14508 := _555
                /// @src 61:14946:14958  "_assetStatus"
                let _556_slot := var__assetStatus_14488_slot
                let expr_14505_slot := _556_slot
                /// @src 61:14946:14973  "_assetStatus.lastFee0Growth"
                let _557 := add(expr_14505_slot, 5)
                /// @src 61:14946:14996  "_assetStatus.lastFee0Growth = feeGrowthInside0X128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_557, expr_14508)
                let expr_14509 := expr_14508
                /// @src 61:15036:15056  "feeGrowthInside1X128"
                let _558 := var_feeGrowthInside1X128_14494
                let expr_14514 := _558
                /// @src 61:15006:15018  "_assetStatus"
                let _559_slot := var__assetStatus_14488_slot
                let expr_14511_slot := _559_slot
                /// @src 61:15006:15033  "_assetStatus.lastFee1Growth"
                let _560 := add(expr_14511_slot, 6)
                /// @src 61:15006:15056  "_assetStatus.lastFee1Growth = feeGrowthInside1X128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_560, expr_14514)
                let expr_14515 := expr_14514

            }
            /// @src 68:814:5932  "library Trade {..."

            function panic_error_0x12() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x12)
                revert(0, 0x24)
            }

            function checked_div_t_int256(x, y) -> r {
                x := cleanup_t_int256(x)
                y := cleanup_t_int256(y)
                if iszero(y) { panic_error_0x12() }

                // overflow for minVal / -1
                if and(
                    eq(x, 0x8000000000000000000000000000000000000000000000000000000000000000),
                    eq(y, sub(0, 1))
                ) { panic_error_0x11() }

                r := sdiv(x, y)
            }

            /// @ast-id 15677
            /// @src 61:27021:28731  "function calculateSqrtPerpOffset(..."
            function fun_calculateSqrtPerpOffset_15677(var__userStatus_15524_mpos, var__tickLower_15526, var__tickUpper_15528, var__tradeSqrtAmount_15530, var__isQuoteZero_15532) -> var_offsetUnderlying_15535, var_offsetStable_15537 {
                /// @src 61:27234:27257  "int256 offsetUnderlying"
                let zero_t_int256_561 := zero_value_for_split_t_int256()
                var_offsetUnderlying_15535 := zero_t_int256_561
                /// @src 61:27259:27278  "int256 offsetStable"
                let zero_t_int256_562 := zero_value_for_split_t_int256()
                var_offsetStable_15537 := zero_t_int256_562

                /// @src 61:27290:27307  "int256 openAmount"
                let var_openAmount_15540
                let zero_t_int256_563 := zero_value_for_split_t_int256()
                var_openAmount_15540 := zero_t_int256_563
                /// @src 61:27317:27335  "int256 closeAmount"
                let var_closeAmount_15543
                let zero_t_int256_564 := zero_value_for_split_t_int256()
                var_closeAmount_15543 := zero_t_int256_564
                /// @src 61:27350:27361  "_userStatus"
                let _565_mpos := var__userStatus_15524_mpos
                let expr_15545_mpos := _565_mpos
                /// @src 61:27350:27370  "_userStatus.sqrtPerp"
                let _566 := add(expr_15545_mpos, 160)
                let _567_mpos := mload(_566)
                let expr_15546_mpos := _567_mpos
                /// @src 61:27350:27377  "_userStatus.sqrtPerp.amount"
                let _568 := add(expr_15546_mpos, 0)
                let _569 := read_from_memoryt_int256(_568)
                let expr_15547 := _569
                /// @src 61:27380:27396  "_tradeSqrtAmount"
                let _570 := var__tradeSqrtAmount_15530
                let expr_15548 := _570
                /// @src 61:27350:27396  "_userStatus.sqrtPerp.amount * _tradeSqrtAmount"
                let expr_15549 := checked_mul_t_int256(expr_15547, expr_15548)

                /// @src 61:27400:27401  "0"
                let expr_15550 := 0x00
                /// @src 61:27350:27401  "_userStatus.sqrtPerp.amount * _tradeSqrtAmount >= 0"
                let expr_15551 := iszero(slt(cleanup_t_int256(expr_15549), convert_t_rational_0_by_1_to_t_int256(expr_15550)))
                /// @src 61:27346:27773  "if (_userStatus.sqrtPerp.amount * _tradeSqrtAmount >= 0) {..."
                switch expr_15551
                case 0 {
                    /// @src 61:27481:27492  "_userStatus"
                    let _571_mpos := var__userStatus_15524_mpos
                    let expr_15557_mpos := _571_mpos
                    /// @src 61:27481:27501  "_userStatus.sqrtPerp"
                    let _572 := add(expr_15557_mpos, 160)
                    let _573_mpos := mload(_572)
                    let expr_15558_mpos := _573_mpos
                    /// @src 61:27481:27508  "_userStatus.sqrtPerp.amount"
                    let _574 := add(expr_15558_mpos, 0)
                    let _575 := read_from_memoryt_int256(_574)
                    let expr_15559 := _575
                    /// @src 61:27481:27512  "_userStatus.sqrtPerp.amount.abs"
                    let expr_15560_self := expr_15559
                    /// @src 61:27481:27514  "_userStatus.sqrtPerp.amount.abs()"
                    let expr_15561 := fun_abs_32143(expr_15560_self)
                    /// @src 61:27518:27534  "_tradeSqrtAmount"
                    let _576 := var__tradeSqrtAmount_15530
                    let expr_15562 := _576
                    /// @src 61:27518:27538  "_tradeSqrtAmount.abs"
                    let expr_15563_self := expr_15562
                    /// @src 61:27518:27540  "_tradeSqrtAmount.abs()"
                    let expr_15564 := fun_abs_32143(expr_15563_self)
                    /// @src 61:27481:27540  "_userStatus.sqrtPerp.amount.abs() >= _tradeSqrtAmount.abs()"
                    let expr_15565 := iszero(lt(cleanup_t_uint256(expr_15561), cleanup_t_uint256(expr_15564)))
                    /// @src 61:27477:27763  "if (_userStatus.sqrtPerp.amount.abs() >= _tradeSqrtAmount.abs()) {..."
                    switch expr_15565
                    case 0 {
                        /// @src 61:27642:27653  "_userStatus"
                        let _577_mpos := var__userStatus_15524_mpos
                        let expr_15572_mpos := _577_mpos
                        /// @src 61:27642:27662  "_userStatus.sqrtPerp"
                        let _578 := add(expr_15572_mpos, 160)
                        let _579_mpos := mload(_578)
                        let expr_15573_mpos := _579_mpos
                        /// @src 61:27642:27669  "_userStatus.sqrtPerp.amount"
                        let _580 := add(expr_15573_mpos, 0)
                        let _581 := read_from_memoryt_int256(_580)
                        let expr_15574 := _581
                        /// @src 61:27672:27688  "_tradeSqrtAmount"
                        let _582 := var__tradeSqrtAmount_15530
                        let expr_15575 := _582
                        /// @src 61:27642:27688  "_userStatus.sqrtPerp.amount + _tradeSqrtAmount"
                        let expr_15576 := checked_add_t_int256(expr_15574, expr_15575)

                        /// @src 61:27629:27688  "openAmount = _userStatus.sqrtPerp.amount + _tradeSqrtAmount"
                        var_openAmount_15540 := expr_15576
                        let expr_15577 := expr_15576
                        /// @src 61:27721:27732  "_userStatus"
                        let _583_mpos := var__userStatus_15524_mpos
                        let expr_15580_mpos := _583_mpos
                        /// @src 61:27721:27741  "_userStatus.sqrtPerp"
                        let _584 := add(expr_15580_mpos, 160)
                        let _585_mpos := mload(_584)
                        let expr_15581_mpos := _585_mpos
                        /// @src 61:27721:27748  "_userStatus.sqrtPerp.amount"
                        let _586 := add(expr_15581_mpos, 0)
                        let _587 := read_from_memoryt_int256(_586)
                        let expr_15582 := _587
                        /// @src 61:27720:27748  "-_userStatus.sqrtPerp.amount"
                        let expr_15583 := negate_t_int256(expr_15582)
                        /// @src 61:27706:27748  "closeAmount = -_userStatus.sqrtPerp.amount"
                        var_closeAmount_15543 := expr_15583
                        let expr_15584 := expr_15583
                        /// @src 61:27477:27763  "if (_userStatus.sqrtPerp.amount.abs() >= _tradeSqrtAmount.abs()) {..."
                    }
                    default {
                        /// @src 61:27574:27590  "_tradeSqrtAmount"
                        let _588 := var__tradeSqrtAmount_15530
                        let expr_15567 := _588
                        /// @src 61:27560:27590  "closeAmount = _tradeSqrtAmount"
                        var_closeAmount_15543 := expr_15567
                        let expr_15568 := expr_15567
                        /// @src 61:27477:27763  "if (_userStatus.sqrtPerp.amount.abs() >= _tradeSqrtAmount.abs()) {..."
                    }
                    /// @src 61:27346:27773  "if (_userStatus.sqrtPerp.amount * _tradeSqrtAmount >= 0) {..."
                }
                default {
                    /// @src 61:27430:27446  "_tradeSqrtAmount"
                    let _589 := var__tradeSqrtAmount_15530
                    let expr_15553 := _589
                    /// @src 61:27417:27446  "openAmount = _tradeSqrtAmount"
                    var_openAmount_15540 := expr_15553
                    let expr_15554 := expr_15553
                    /// @src 61:27346:27773  "if (_userStatus.sqrtPerp.amount * _tradeSqrtAmount >= 0) {..."
                }
                /// @src 61:27787:27797  "openAmount"
                let _590 := var_openAmount_15540
                let expr_15590 := _590
                /// @src 61:27801:27802  "0"
                let expr_15591 := 0x00
                /// @src 61:27787:27802  "openAmount != 0"
                let expr_15592 := iszero(eq(cleanup_t_int256(expr_15590), convert_t_rational_0_by_1_to_t_int256(expr_15591)))
                /// @src 61:27783:28441  "if (openAmount != 0) {..."
                if expr_15592 {
                    /// @src 61:27864:27870  "LPMath"
                    let expr_15594_address := linkersymbol("src/libraries/math/LPMath.sol:LPMath")
                    /// @src 61:27902:27912  "_tickUpper"
                    let _591 := var__tickUpper_15528
                    let expr_15596 := _591
                    /// @src 61:27914:27924  "openAmount"
                    let _592 := var_openAmount_15540
                    let expr_15597 := _592
                    /// @src 61:27914:27928  "openAmount.abs"
                    let expr_15598_self := expr_15597
                    /// @src 61:27914:27930  "openAmount.abs()"
                    let expr_15599 := fun_abs_32143(expr_15598_self)
                    /// @src 61:27932:27942  "openAmount"
                    let _593 := var_openAmount_15540
                    let expr_15600 := _593
                    /// @src 61:27945:27946  "0"
                    let expr_15601 := 0x00
                    /// @src 61:27932:27946  "openAmount < 0"
                    let expr_15602 := slt(cleanup_t_int256(expr_15600), convert_t_rational_0_by_1_to_t_int256(expr_15601))
                    /// @src 61:27864:27947  "LPMath.calculateAmount0OffsetWithTick(_tickUpper, openAmount.abs(), openAmount < 0)"
                    let expr_15603 := fun_calculateAmount0OffsetWithTick_32020(expr_15596, expr_15599, expr_15602)
                    /// @src 61:27845:27947  "offsetUnderlying = LPMath.calculateAmount0OffsetWithTick(_tickUpper, openAmount.abs(), openAmount < 0)"
                    var_offsetUnderlying_15535 := expr_15603
                    let expr_15604 := expr_15603
                    /// @src 61:28004:28010  "LPMath"
                    let expr_15607_address := linkersymbol("src/libraries/math/LPMath.sol:LPMath")
                    /// @src 61:28042:28052  "_tickLower"
                    let _594 := var__tickLower_15526
                    let expr_15609 := _594
                    /// @src 61:28054:28064  "openAmount"
                    let _595 := var_openAmount_15540
                    let expr_15610 := _595
                    /// @src 61:28054:28068  "openAmount.abs"
                    let expr_15611_self := expr_15610
                    /// @src 61:28054:28070  "openAmount.abs()"
                    let expr_15612 := fun_abs_32143(expr_15611_self)
                    /// @src 61:28072:28082  "openAmount"
                    let _596 := var_openAmount_15540
                    let expr_15613 := _596
                    /// @src 61:28085:28086  "0"
                    let expr_15614 := 0x00
                    /// @src 61:28072:28086  "openAmount < 0"
                    let expr_15615 := slt(cleanup_t_int256(expr_15613), convert_t_rational_0_by_1_to_t_int256(expr_15614))
                    /// @src 61:28004:28087  "LPMath.calculateAmount1OffsetWithTick(_tickLower, openAmount.abs(), openAmount < 0)"
                    let expr_15616 := fun_calculateAmount1OffsetWithTick_32078(expr_15609, expr_15612, expr_15615)
                    /// @src 61:27989:28087  "offsetStable = LPMath.calculateAmount1OffsetWithTick(_tickLower, openAmount.abs(), openAmount < 0)"
                    var_offsetStable_15537 := expr_15616
                    let expr_15617 := expr_15616
                    /// @src 61:28106:28116  "openAmount"
                    let _597 := var_openAmount_15540
                    let expr_15619 := _597
                    /// @src 61:28119:28120  "0"
                    let expr_15620 := 0x00
                    /// @src 61:28106:28120  "openAmount < 0"
                    let expr_15621 := slt(cleanup_t_int256(expr_15619), convert_t_rational_0_by_1_to_t_int256(expr_15620))
                    /// @src 61:28102:28237  "if (openAmount < 0) {..."
                    if expr_15621 {
                        /// @src 61:28160:28176  "offsetUnderlying"
                        let _598 := var_offsetUnderlying_15535
                        let expr_15623 := _598
                        /// @src 61:28159:28176  "-offsetUnderlying"
                        let expr_15624 := negate_t_int256(expr_15623)
                        /// @src 61:28140:28176  "offsetUnderlying = -offsetUnderlying"
                        var_offsetUnderlying_15535 := expr_15624
                        let expr_15625 := expr_15624
                        /// @src 61:28210:28222  "offsetStable"
                        let _599 := var_offsetStable_15537
                        let expr_15628 := _599
                        /// @src 61:28209:28222  "-offsetStable"
                        let expr_15629 := negate_t_int256(expr_15628)
                        /// @src 61:28194:28222  "offsetStable = -offsetStable"
                        var_offsetStable_15537 := expr_15629
                        let expr_15630 := expr_15629
                        /// @src 61:28102:28237  "if (openAmount < 0) {..."
                    }
                    /// @src 61:28255:28267  "_isQuoteZero"
                    let _600 := var__isQuoteZero_15532
                    let expr_15634 := _600
                    /// @src 61:28251:28431  "if (_isQuoteZero) {..."
                    if expr_15634 {
                        /// @src 61:28385:28397  "offsetStable"
                        let _601 := var_offsetStable_15537
                        let expr_15638 := _601
                        /// @src 61:28384:28416  "(offsetStable, offsetUnderlying)"
                        let expr_15640_component_1 := expr_15638
                        /// @src 61:28399:28415  "offsetUnderlying"
                        let _602 := var_offsetUnderlying_15535
                        let expr_15639 := _602
                        /// @src 61:28384:28416  "(offsetStable, offsetUnderlying)"
                        let expr_15640_component_2 := expr_15639
                        /// @src 61:28349:28416  "(offsetUnderlying, offsetStable) = (offsetStable, offsetUnderlying)"
                        var_offsetStable_15537 := expr_15640_component_2
                        var_offsetUnderlying_15535 := expr_15640_component_1
                        /// @src 61:28251:28431  "if (_isQuoteZero) {..."
                    }
                    /// @src 61:27783:28441  "if (openAmount != 0) {..."
                }
                /// @src 61:28455:28466  "closeAmount"
                let _603 := var_closeAmount_15543
                let expr_15647 := _603
                /// @src 61:28470:28471  "0"
                let expr_15648 := 0x00
                /// @src 61:28455:28471  "closeAmount != 0"
                let expr_15649 := iszero(eq(cleanup_t_int256(expr_15647), convert_t_rational_0_by_1_to_t_int256(expr_15648)))
                /// @src 61:28451:28725  "if (closeAmount != 0) {..."
                if expr_15649 {
                    /// @src 61:28503:28514  "closeAmount"
                    let _604 := var_closeAmount_15543
                    let expr_15651 := _604
                    /// @src 61:28517:28528  "_userStatus"
                    let _605_mpos := var__userStatus_15524_mpos
                    let expr_15652_mpos := _605_mpos
                    /// @src 61:28517:28537  "_userStatus.sqrtPerp"
                    let _606 := add(expr_15652_mpos, 160)
                    let _607_mpos := mload(_606)
                    let expr_15653_mpos := _607_mpos
                    /// @src 61:28517:28562  "_userStatus.sqrtPerp.quoteRebalanceEntryValue"
                    let _608 := add(expr_15653_mpos, 64)
                    let _609 := read_from_memoryt_int256(_608)
                    let expr_15654 := _609
                    /// @src 61:28503:28562  "closeAmount * _userStatus.sqrtPerp.quoteRebalanceEntryValue"
                    let expr_15655 := checked_mul_t_int256(expr_15651, expr_15654)

                    /// @src 61:28565:28576  "_userStatus"
                    let _610_mpos := var__userStatus_15524_mpos
                    let expr_15656_mpos := _610_mpos
                    /// @src 61:28565:28585  "_userStatus.sqrtPerp"
                    let _611 := add(expr_15656_mpos, 160)
                    let _612_mpos := mload(_611)
                    let expr_15657_mpos := _612_mpos
                    /// @src 61:28565:28592  "_userStatus.sqrtPerp.amount"
                    let _613 := add(expr_15657_mpos, 0)
                    let _614 := read_from_memoryt_int256(_613)
                    let expr_15658 := _614
                    /// @src 61:28503:28592  "closeAmount * _userStatus.sqrtPerp.quoteRebalanceEntryValue / _userStatus.sqrtPerp.amount"
                    let expr_15659 := checked_div_t_int256(expr_15655, expr_15658)

                    /// @src 61:28487:28592  "offsetStable += closeAmount * _userStatus.sqrtPerp.quoteRebalanceEntryValue / _userStatus.sqrtPerp.amount"
                    let _615 := var_offsetStable_15537
                    let expr_15660 := checked_add_t_int256(_615, expr_15659)

                    var_offsetStable_15537 := expr_15660
                    /// @src 61:28626:28637  "closeAmount"
                    let _616 := var_closeAmount_15543
                    let expr_15663 := _616
                    /// @src 61:28640:28651  "_userStatus"
                    let _617_mpos := var__userStatus_15524_mpos
                    let expr_15664_mpos := _617_mpos
                    /// @src 61:28640:28660  "_userStatus.sqrtPerp"
                    let _618 := add(expr_15664_mpos, 160)
                    let _619_mpos := mload(_618)
                    let expr_15665_mpos := _619_mpos
                    /// @src 61:28640:28684  "_userStatus.sqrtPerp.baseRebalanceEntryValue"
                    let _620 := add(expr_15665_mpos, 96)
                    let _621 := read_from_memoryt_int256(_620)
                    let expr_15666 := _621
                    /// @src 61:28626:28684  "closeAmount * _userStatus.sqrtPerp.baseRebalanceEntryValue"
                    let expr_15667 := checked_mul_t_int256(expr_15663, expr_15666)

                    /// @src 61:28687:28698  "_userStatus"
                    let _622_mpos := var__userStatus_15524_mpos
                    let expr_15668_mpos := _622_mpos
                    /// @src 61:28687:28707  "_userStatus.sqrtPerp"
                    let _623 := add(expr_15668_mpos, 160)
                    let _624_mpos := mload(_623)
                    let expr_15669_mpos := _624_mpos
                    /// @src 61:28687:28714  "_userStatus.sqrtPerp.amount"
                    let _625 := add(expr_15669_mpos, 0)
                    let _626 := read_from_memoryt_int256(_625)
                    let expr_15670 := _626
                    /// @src 61:28626:28714  "closeAmount * _userStatus.sqrtPerp.baseRebalanceEntryValue / _userStatus.sqrtPerp.amount"
                    let expr_15671 := checked_div_t_int256(expr_15667, expr_15670)

                    /// @src 61:28606:28714  "offsetUnderlying += closeAmount * _userStatus.sqrtPerp.baseRebalanceEntryValue / _userStatus.sqrtPerp.amount"
                    let _627 := var_offsetUnderlying_15535
                    let expr_15672 := checked_add_t_int256(_627, expr_15671)

                    var_offsetUnderlying_15535 := expr_15672
                    /// @src 61:28451:28725  "if (closeAmount != 0) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            function zero_value_for_split_t_uint160() -> ret {
                ret := 0
            }

            /// @ast-id 16495
            /// @src 69:402:573  "function getSqrtPrice(address uniswapPoolAddress) internal view returns (uint160 sqrtPrice) {..."
            function fun_getSqrtPrice_16495(var_uniswapPoolAddress_16480) -> var_sqrtPrice_16483 {
                /// @src 69:475:492  "uint160 sqrtPrice"
                let zero_t_uint160_628 := zero_value_for_split_t_uint160()
                var_sqrtPrice_16483 := zero_t_uint160_628

                /// @src 69:539:557  "uniswapPoolAddress"
                let _629 := var_uniswapPoolAddress_16480
                let expr_16488 := _629
                /// @src 69:524:558  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16489_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16488)
                /// @src 69:524:564  "IUniswapV3Pool(uniswapPoolAddress).slot0"
                let expr_16490_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16489_address)
                let expr_16490_functionSelector := 0x3850c7bd
                /// @src 69:524:566  "IUniswapV3Pool(uniswapPoolAddress).slot0()"

                // storage for arguments and returned data
                let _630 := allocate_unbounded()
                mstore(_630, shift_left_224(expr_16490_functionSelector))
                let _631 := abi_encode_tuple__to__fromStack(add(_630, 4) )

                let _632 := staticcall(gas(), expr_16490_address,  _630, sub(_631, _630), _630, 224)

                if iszero(_632) { revert_forward_1() }

                let expr_16491_component_1, expr_16491_component_2, expr_16491_component_3, expr_16491_component_4, expr_16491_component_5, expr_16491_component_6, expr_16491_component_7
                if _632 {

                    let _633 := 224

                    if gt(_633, returndatasize()) {
                        _633 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_630, _633)

                    // decode return parameters from external try-call into retVars
                    expr_16491_component_1, expr_16491_component_2, expr_16491_component_3, expr_16491_component_4, expr_16491_component_5, expr_16491_component_6, expr_16491_component_7 :=  abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(_630, add(_630, _633))
                }
                /// @src 69:504:566  "(sqrtPrice,,,,,,) = IUniswapV3Pool(uniswapPoolAddress).slot0()"
                var_sqrtPrice_16483 := expr_16491_component_1

            }
            /// @src 68:814:5932  "library Trade {..."

            function cleanup_t_rational_79228162514264337593543950336_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_79228162514264337593543950336_by_1(value)))
            }

            /// @src 57:590:649  "uint256 internal constant Q96 = 0x1000000000000000000000000"
            function constant_Q96_30297() -> ret {
                /// @src 57:622:649  "0x1000000000000000000000000"
                let expr_30296 := 0x01000000000000000000000000
                let _637 := convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(expr_30296)

                ret := _637
            }

            function cleanup_t_rational_96_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_96_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_96_by_1(value)))
            }

            /// @src 57:545:584  "uint8 internal constant RESOLUTION = 96"
            function constant_RESOLUTION_30294() -> ret {
                /// @src 57:582:584  "96"
                let expr_30293 := 0x60
                let _638 := convert_t_rational_96_by_1_to_t_uint8(expr_30293)

                ret := _638
            }

            function shift_left_dynamic(bits, value) -> newValue {
                newValue :=

                shl(bits, value)

            }

            function shift_left_t_uint256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint256(shift_left_dynamic(bits, cleanup_t_uint256(value)))
            }

            function checked_div_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }

                r := div(x, y)
            }

            function convert_t_uint256_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint256(value)))
            }

            /// @ast-id 16543
            /// @src 69:904:1180  "function convertSqrtPrice(uint160 sqrtPriceX96, bool isQuoteZero) internal pure returns (uint160) {..."
            function fun_convertSqrtPrice_16543(var_sqrtPriceX96_16517, var_isQuoteZero_16519) -> var__16522 {
                /// @src 69:993:1000  "uint160"
                let zero_t_uint160_634 := zero_value_for_split_t_uint160()
                var__16522 := zero_t_uint160_634

                /// @src 69:1016:1027  "isQuoteZero"
                let _635 := var_isQuoteZero_16519
                let expr_16524 := _635
                /// @src 69:1012:1174  "if (isQuoteZero) {..."
                switch expr_16524
                case 0 {
                    /// @src 69:1151:1163  "sqrtPriceX96"
                    let _636 := var_sqrtPriceX96_16517
                    let expr_16538 := _636
                    /// @src 69:1144:1163  "return sqrtPriceX96"
                    var__16522 := expr_16538
                    leave
                    /// @src 69:1012:1174  "if (isQuoteZero) {..."
                }
                default {
                    /// @src 69:1059:1068  "Constants"
                    let expr_16527_address := linkersymbol("src/libraries/Constants.sol:Constants")
                    /// @src 69:1059:1072  "Constants.Q96"
                    let expr_16528 := constant_Q96_30297()
                    /// @src 69:1076:1085  "Constants"
                    let expr_16529_address := linkersymbol("src/libraries/Constants.sol:Constants")
                    /// @src 69:1076:1096  "Constants.RESOLUTION"
                    let expr_16530 := constant_RESOLUTION_30294()
                    /// @src 69:1059:1096  "Constants.Q96 << Constants.RESOLUTION"
                    let expr_16531 :=
                    shift_left_t_uint256_t_uint8(expr_16528, expr_16530)

                    /// @src 69:1058:1097  "(Constants.Q96 << Constants.RESOLUTION)"
                    let expr_16532 := expr_16531
                    /// @src 69:1100:1112  "sqrtPriceX96"
                    let _639 := var_sqrtPriceX96_16517
                    let expr_16533 := _639
                    /// @src 69:1058:1112  "(Constants.Q96 << Constants.RESOLUTION) / sqrtPriceX96"
                    let expr_16534 := checked_div_t_uint256(expr_16532, convert_t_uint160_to_t_uint256(expr_16533))

                    /// @src 69:1050:1113  "uint160((Constants.Q96 << Constants.RESOLUTION) / sqrtPriceX96)"
                    let expr_16535 := convert_t_uint256_to_t_uint160(expr_16534)
                    /// @src 69:1043:1113  "return uint160((Constants.Q96 << Constants.RESOLUTION) / sqrtPriceX96)"
                    var__16522 := expr_16535
                    leave
                    /// @src 69:1012:1174  "if (isQuoteZero) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

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

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function shift_right_t_uint256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint256(shift_right_unsigned_dynamic(bits, cleanup_t_uint256(value)))
            }

            /// @ast-id 34292
            /// @src 68:4567:4844  "function calculateStableAmount(uint256 currentSqrtPrice, uint256 baseAmount) internal pure returns (uint256) {..."
            function fun_calculateStableAmount_34292(var_currentSqrtPrice_34266, var_baseAmount_34268) -> var__34271 {
                /// @src 68:4667:4674  "uint256"
                let zero_t_uint256_640 := zero_value_for_split_t_uint256()
                var__34271 := zero_t_uint256_640

                /// @src 68:4709:4725  "currentSqrtPrice"
                let _641 := var_currentSqrtPrice_34266
                let expr_34275 := _641
                /// @src 68:4728:4738  "baseAmount"
                let _642 := var_baseAmount_34268
                let expr_34276 := _642
                /// @src 68:4709:4738  "currentSqrtPrice * baseAmount"
                let expr_34277 := checked_mul_t_uint256(expr_34275, expr_34276)

                /// @src 68:4708:4739  "(currentSqrtPrice * baseAmount)"
                let expr_34278 := expr_34277
                /// @src 68:4743:4752  "Constants"
                let expr_34279_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 68:4743:4763  "Constants.RESOLUTION"
                let expr_34280 := constant_RESOLUTION_30294()
                /// @src 68:4708:4763  "(currentSqrtPrice * baseAmount) >> Constants.RESOLUTION"
                let expr_34281 :=
                shift_right_t_uint256_t_uint8(expr_34278, expr_34280)

                /// @src 68:4686:4763  "uint256 quoteAmount = (currentSqrtPrice * baseAmount) >> Constants.RESOLUTION"
                let var_quoteAmount_34274 := expr_34281
                /// @src 68:4782:4793  "quoteAmount"
                let _643 := var_quoteAmount_34274
                let expr_34283 := _643
                /// @src 68:4796:4812  "currentSqrtPrice"
                let _644 := var_currentSqrtPrice_34266
                let expr_34284 := _644
                /// @src 68:4782:4812  "quoteAmount * currentSqrtPrice"
                let expr_34285 := checked_mul_t_uint256(expr_34283, expr_34284)

                /// @src 68:4781:4813  "(quoteAmount * currentSqrtPrice)"
                let expr_34286 := expr_34285
                /// @src 68:4817:4826  "Constants"
                let expr_34287_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 68:4817:4837  "Constants.RESOLUTION"
                let expr_34288 := constant_RESOLUTION_30294()
                /// @src 68:4781:4837  "(quoteAmount * currentSqrtPrice) >> Constants.RESOLUTION"
                let expr_34289 :=
                shift_right_t_uint256_t_uint8(expr_34286, expr_34288)

                /// @src 68:4774:4837  "return (quoteAmount * currentSqrtPrice) >> Constants.RESOLUTION"
                var__34271 := expr_34289
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function store_literal_in_memory_d70dcf21692b3c91b4c5fbb89ed57f464aa42efbe5b0ea96c4acb7c080144227(memPtr) {

                mstore(add(memPtr, 0), "SafeCast: value doesn't fit in a")

                mstore(add(memPtr, 32), "n int256")

            }

            function abi_encode_t_stringliteral_d70dcf21692b3c91b4c5fbb89ed57f464aa42efbe5b0ea96c4acb7c080144227_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 40)
                store_literal_in_memory_d70dcf21692b3c91b4c5fbb89ed57f464aa42efbe5b0ea96c4acb7c080144227(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_d70dcf21692b3c91b4c5fbb89ed57f464aa42efbe5b0ea96c4acb7c080144227__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_d70dcf21692b3c91b4c5fbb89ed57f464aa42efbe5b0ea96c4acb7c080144227_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_d70dcf21692b3c91b4c5fbb89ed57f464aa42efbe5b0ea96c4acb7c080144227(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_d70dcf21692b3c91b4c5fbb89ed57f464aa42efbe5b0ea96c4acb7c080144227__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function convert_t_uint256_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_uint256(value)))
            }

            /// @ast-id 28969
            /// @src 10:34781:35078  "function toInt256(uint256 value) internal pure returns (int256) {..."
            function fun_toInt256_28969(var_value_28944) -> var__28947 {
                /// @src 10:34837:34843  "int256"
                let zero_t_int256_645 := zero_value_for_split_t_int256()
                var__28947 := zero_t_int256_645

                /// @src 10:34962:34967  "value"
                let _646 := var_value_28944
                let expr_28950 := _646
                /// @src 10:34979:34995  "type(int256).max"
                let expr_28957 := 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                /// @src 10:34971:34996  "uint256(type(int256).max)"
                let expr_28958 := convert_t_int256_to_t_uint256(expr_28957)
                /// @src 10:34962:34996  "value <= uint256(type(int256).max)"
                let expr_28959 := iszero(gt(cleanup_t_uint256(expr_28950), cleanup_t_uint256(expr_28958)))
                /// @src 10:34954:35041  "require(value <= uint256(type(int256).max), \"SafeCast: value doesn't fit in an int256\")"
                require_helper_t_stringliteral_d70dcf21692b3c91b4c5fbb89ed57f464aa42efbe5b0ea96c4acb7c080144227(expr_28959)
                /// @src 10:35065:35070  "value"
                let _647 := var_value_28944
                let expr_28965 := _647
                /// @src 10:35058:35071  "int256(value)"
                let expr_28966 := convert_t_uint256_to_t_int256(expr_28965)
                /// @src 10:35051:35071  "return int256(value)"
                var__28947 := expr_28966
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 34361
            /// @src 68:4850:5478  "function divToStable(..."
            function fun_divToStable_34361(var_swapParams_34295_mpos, var_amountUnderlying_34297, var_amountStable_34299, var_totalAmountStable_34301) -> var_swapResult_34305_mpos {
                /// @src 68:5040:5074  "SwapStableResult memory swapResult"
                let zero_t_struct$_SwapStableResult_$33967_memory_ptr_648_mpos := zero_value_for_split_t_struct$_SwapStableResult_$33967_memory_ptr()
                var_swapResult_34305_mpos := zero_t_struct$_SwapStableResult_$33967_memory_ptr_648_mpos

                /// @src 68:5110:5122  "amountStable"
                let _649 := var_amountStable_34299
                let expr_34310 := _649
                /// @src 68:5125:5135  "swapParams"
                let _650_mpos := var_swapParams_34295_mpos
                let expr_34311_mpos := _650_mpos
                /// @src 68:5125:5146  "swapParams.amountPerp"
                let _651 := add(expr_34311_mpos, 0)
                let _652 := read_from_memoryt_int256(_651)
                let expr_34312 := _652
                /// @src 68:5110:5146  "amountStable * swapParams.amountPerp"
                let expr_34313 := checked_mul_t_int256(expr_34310, expr_34312)

                /// @src 68:5149:5165  "amountUnderlying"
                let _653 := var_amountUnderlying_34297
                let expr_34314 := _653
                /// @src 68:5110:5165  "amountStable * swapParams.amountPerp / amountUnderlying"
                let expr_34315 := checked_div_t_int256(expr_34313, expr_34314)

                /// @src 68:5086:5096  "swapResult"
                let _654_mpos := var_swapResult_34305_mpos
                let expr_34307_mpos := _654_mpos
                /// @src 68:5086:5107  "swapResult.amountPerp"
                let _655 := add(expr_34307_mpos, 0)
                /// @src 68:5086:5165  "swapResult.amountPerp = amountStable * swapParams.amountPerp / amountUnderlying"
                let _656 := expr_34315
                write_to_memory_t_int256(_655, _656)
                let expr_34316 := expr_34315
                /// @src 68:5203:5215  "amountStable"
                let _657 := var_amountStable_34299
                let expr_34321 := _657
                /// @src 68:5218:5228  "swapParams"
                let _658_mpos := var_swapParams_34295_mpos
                let expr_34322_mpos := _658_mpos
                /// @src 68:5218:5243  "swapParams.amountSqrtPerp"
                let _659 := add(expr_34322_mpos, 32)
                let _660 := read_from_memoryt_int256(_659)
                let expr_34323 := _660
                /// @src 68:5203:5243  "amountStable * swapParams.amountSqrtPerp"
                let expr_34324 := checked_mul_t_int256(expr_34321, expr_34323)

                /// @src 68:5246:5262  "amountUnderlying"
                let _661 := var_amountUnderlying_34297
                let expr_34325 := _661
                /// @src 68:5203:5262  "amountStable * swapParams.amountSqrtPerp / amountUnderlying"
                let expr_34326 := checked_div_t_int256(expr_34324, expr_34325)

                /// @src 68:5175:5185  "swapResult"
                let _662_mpos := var_swapResult_34305_mpos
                let expr_34318_mpos := _662_mpos
                /// @src 68:5175:5200  "swapResult.amountSqrtPerp"
                let _663 := add(expr_34318_mpos, 32)
                /// @src 68:5175:5262  "swapResult.amountSqrtPerp = amountStable * swapParams.amountSqrtPerp / amountUnderlying"
                let _664 := expr_34326
                write_to_memory_t_int256(_663, _664)
                let expr_34327 := expr_34326
                /// @src 68:5289:5306  "totalAmountStable"
                let _665 := var_totalAmountStable_34301
                let expr_34332 := _665
                /// @src 68:5309:5319  "swapResult"
                let _666_mpos := var_swapResult_34305_mpos
                let expr_34333_mpos := _666_mpos
                /// @src 68:5309:5330  "swapResult.amountPerp"
                let _667 := add(expr_34333_mpos, 0)
                let _668 := read_from_memoryt_int256(_667)
                let expr_34334 := _668
                /// @src 68:5289:5330  "totalAmountStable - swapResult.amountPerp"
                let expr_34335 := checked_sub_t_int256(expr_34332, expr_34334)

                /// @src 68:5333:5343  "swapResult"
                let _669_mpos := var_swapResult_34305_mpos
                let expr_34336_mpos := _669_mpos
                /// @src 68:5333:5358  "swapResult.amountSqrtPerp"
                let _670 := add(expr_34336_mpos, 32)
                let _671 := read_from_memoryt_int256(_670)
                let expr_34337 := _671
                /// @src 68:5289:5358  "totalAmountStable - swapResult.amountPerp - swapResult.amountSqrtPerp"
                let expr_34338 := checked_sub_t_int256(expr_34335, expr_34337)

                /// @src 68:5272:5282  "swapResult"
                let _672_mpos := var_swapResult_34305_mpos
                let expr_34329_mpos := _672_mpos
                /// @src 68:5272:5286  "swapResult.fee"
                let _673 := add(expr_34329_mpos, 64)
                /// @src 68:5272:5358  "swapResult.fee = totalAmountStable - swapResult.amountPerp - swapResult.amountSqrtPerp"
                let _674 := expr_34338
                write_to_memory_t_int256(_673, _674)
                let expr_34339 := expr_34338
                /// @src 68:5395:5407  "amountStable"
                let _675 := var_amountStable_34299
                let expr_34344 := _675
                /// @src 68:5417:5426  "Constants"
                let expr_34347_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 68:5417:5430  "Constants.Q96"
                let expr_34348 := constant_Q96_30297()
                /// @src 68:5410:5431  "int256(Constants.Q96)"
                let expr_34349 := convert_t_uint256_to_t_int256(expr_34348)
                /// @src 68:5395:5431  "amountStable * int256(Constants.Q96)"
                let expr_34350 := checked_mul_t_int256(expr_34344, expr_34349)

                /// @src 68:5434:5438  "Math"
                let expr_34351_address := linkersymbol("src/libraries/math/Math.sol:Math")
                /// @src 68:5443:5459  "amountUnderlying"
                let _676 := var_amountUnderlying_34297
                let expr_34353 := _676
                /// @src 68:5434:5460  "Math.abs(amountUnderlying)"
                let expr_34354 := fun_abs_32143(expr_34353)
                /// @src 68:5434:5469  "Math.abs(amountUnderlying).toInt256"
                let expr_34355_self := expr_34354
                /// @src 68:5434:5471  "Math.abs(amountUnderlying).toInt256()"
                let expr_34356 := fun_toInt256_28969(expr_34355_self)
                /// @src 68:5395:5471  "amountStable * int256(Constants.Q96) / Math.abs(amountUnderlying).toInt256()"
                let expr_34357 := checked_div_t_int256(expr_34350, expr_34356)

                /// @src 68:5369:5379  "swapResult"
                let _677_mpos := var_swapResult_34305_mpos
                let expr_34341_mpos := _677_mpos
                /// @src 68:5369:5392  "swapResult.averagePrice"
                let _678 := add(expr_34341_mpos, 96)
                /// @src 68:5369:5471  "swapResult.averagePrice = amountStable * int256(Constants.Q96) / Math.abs(amountUnderlying).toInt256()"
                let _679 := expr_34357
                write_to_memory_t_int256(_678, _679)
                let expr_34358 := expr_34357

            }
            /// @src 68:814:5932  "library Trade {..."

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function convert_t_uint160_to_t_contract$_ERC20_$13305(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_ERC20_$13305(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_ERC20_$13305(value)
            }

            function convert_t_contract$_ERC20_$13305_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_contract$_GlobalDataLibrary_$19653_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_decode_tuple_t_uint256_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                }

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

            /// @ast-id 19435
            /// @src 81:1363:1929  "function initializeLock(GlobalDataLibrary.GlobalData storage globalData, uint256 pairId) internal {..."
            function fun_initializeLock_19435(var_globalData_19352_slot, var_pairId_19354) {

                /// @src 81:1475:1485  "globalData"
                let _680_slot := var_globalData_19352_slot
                let expr_19357_slot := _680_slot
                /// @src 81:1475:1494  "globalData.lockData"
                let _681 := add(expr_19357_slot, 6)
                let _682_slot := _681
                let expr_19358_slot := _682_slot
                /// @src 81:1475:1501  "globalData.lockData.locker"
                let _683 := add(expr_19358_slot, 0)
                let _684 := read_from_storage_split_offset_0_t_address(_683)
                let expr_19359 := _684
                /// @src 81:1513:1514  "0"
                let expr_19362 := 0x00
                /// @src 81:1505:1515  "address(0)"
                let expr_19363 := convert_t_rational_0_by_1_to_t_address(expr_19362)
                /// @src 81:1475:1515  "globalData.lockData.locker != address(0)"
                let expr_19364 := iszero(eq(cleanup_t_address(expr_19359), cleanup_t_address(expr_19363)))
                /// @src 81:1471:1596  "if (globalData.lockData.locker != address(0)) {..."
                if expr_19364 {
                    /// @src 81:1558:1568  "globalData"
                    let _685_slot := var_globalData_19352_slot
                    let expr_19368_slot := _685_slot
                    /// @src 81:1558:1577  "globalData.lockData"
                    let _686 := add(expr_19368_slot, 6)
                    let _687_slot := _686
                    let expr_19369_slot := _687_slot
                    /// @src 81:1558:1584  "globalData.lockData.locker"
                    let _688 := add(expr_19369_slot, 0)
                    let _689 := read_from_storage_split_offset_0_t_address(_688)
                    let expr_19370 := _689
                    /// @src 81:1538:1585  "IPredyPool.LockedBy(globalData.lockData.locker)"
                    {

                        let _691 := 0

                        mstore(_691, 0x4f4b04cc00000000000000000000000000000000000000000000000000000000)
                        let _690 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_691, 4) , expr_19370)
                        revert(_691, sub(_690, _691))
                    }/// @src 81:1471:1596  "if (globalData.lockData.locker != address(0)) {..."
                }
                /// @src 81:1647:1657  "globalData"
                let _692_slot := var_globalData_19352_slot
                let expr_19381_slot := _692_slot
                /// @src 81:1647:1663  "globalData.pairs"
                let _693 := add(expr_19381_slot, 3)
                let _694_slot := _693
                let expr_19382_slot := _694_slot
                /// @src 81:1664:1670  "pairId"
                let _695 := var_pairId_19354
                let expr_19383 := _695
                /// @src 81:1647:1671  "globalData.pairs[pairId]"
                let _696 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_19382_slot,expr_19383)
                let _697_slot := _696
                let expr_19384_slot := _697_slot
                /// @src 81:1647:1681  "globalData.pairs[pairId].quotePool"
                let _698 := add(expr_19384_slot, 3)
                let _699_slot := _698
                let expr_19385_slot := _699_slot
                /// @src 81:1647:1687  "globalData.pairs[pairId].quotePool.token"
                let _700 := add(expr_19385_slot, 0)
                let _701 := read_from_storage_split_offset_0_t_address(_700)
                let expr_19386 := _701
                /// @src 81:1641:1688  "ERC20(globalData.pairs[pairId].quotePool.token)"
                let expr_19387_address := convert_t_address_to_t_contract$_ERC20_$13305(expr_19386)
                /// @src 81:1641:1698  "ERC20(globalData.pairs[pairId].quotePool.token).balanceOf"
                let expr_19388_address := convert_t_contract$_ERC20_$13305_to_t_address(expr_19387_address)
                let expr_19388_functionSelector := 0x70a08231
                /// @src 81:1707:1711  "this"
                let expr_19391_address := address()
                /// @src 81:1699:1712  "address(this)"
                let expr_19392 := convert_t_contract$_GlobalDataLibrary_$19653_to_t_address(expr_19391_address)
                /// @src 81:1641:1713  "ERC20(globalData.pairs[pairId].quotePool.token).balanceOf(address(this))"

                // storage for arguments and returned data
                let _702 := allocate_unbounded()
                mstore(_702, shift_left_224(expr_19388_functionSelector))
                let _703 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_702, 4) , expr_19392)

                let _704 := staticcall(gas(), expr_19388_address,  _702, sub(_703, _702), _702, 32)

                if iszero(_704) { revert_forward_1() }

                let expr_19393
                if _704 {

                    let _705 := 32

                    if gt(_705, returndatasize()) {
                        _705 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_702, _705)

                    // decode return parameters from external try-call into retVars
                    expr_19393 :=  abi_decode_tuple_t_uint256_fromMemory(_702, add(_702, _705))
                }
                /// @src 81:1606:1616  "globalData"
                let _706_slot := var_globalData_19352_slot
                let expr_19375_slot := _706_slot
                /// @src 81:1606:1625  "globalData.lockData"
                let _707 := add(expr_19375_slot, 6)
                let _708_slot := _707
                let expr_19378_slot := _708_slot
                /// @src 81:1606:1638  "globalData.lockData.quoteReserve"
                let _709 := add(expr_19378_slot, 1)
                /// @src 81:1606:1713  "globalData.lockData.quoteReserve = ERC20(globalData.pairs[pairId].quotePool.token).balanceOf(address(this))"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_709, expr_19393)
                let expr_19394 := expr_19393
                /// @src 81:1763:1773  "globalData"
                let _710_slot := var_globalData_19352_slot
                let expr_19402_slot := _710_slot
                /// @src 81:1763:1779  "globalData.pairs"
                let _711 := add(expr_19402_slot, 3)
                let _712_slot := _711
                let expr_19403_slot := _712_slot
                /// @src 81:1780:1786  "pairId"
                let _713 := var_pairId_19354
                let expr_19404 := _713
                /// @src 81:1763:1787  "globalData.pairs[pairId]"
                let _714 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_19403_slot,expr_19404)
                let _715_slot := _714
                let expr_19405_slot := _715_slot
                /// @src 81:1763:1796  "globalData.pairs[pairId].basePool"
                let _716 := add(expr_19405_slot, 17)
                let _717_slot := _716
                let expr_19406_slot := _717_slot
                /// @src 81:1763:1802  "globalData.pairs[pairId].basePool.token"
                let _718 := add(expr_19406_slot, 0)
                let _719 := read_from_storage_split_offset_0_t_address(_718)
                let expr_19407 := _719
                /// @src 81:1757:1803  "ERC20(globalData.pairs[pairId].basePool.token)"
                let expr_19408_address := convert_t_address_to_t_contract$_ERC20_$13305(expr_19407)
                /// @src 81:1757:1813  "ERC20(globalData.pairs[pairId].basePool.token).balanceOf"
                let expr_19409_address := convert_t_contract$_ERC20_$13305_to_t_address(expr_19408_address)
                let expr_19409_functionSelector := 0x70a08231
                /// @src 81:1822:1826  "this"
                let expr_19412_address := address()
                /// @src 81:1814:1827  "address(this)"
                let expr_19413 := convert_t_contract$_GlobalDataLibrary_$19653_to_t_address(expr_19412_address)
                /// @src 81:1757:1828  "ERC20(globalData.pairs[pairId].basePool.token).balanceOf(address(this))"

                // storage for arguments and returned data
                let _720 := allocate_unbounded()
                mstore(_720, shift_left_224(expr_19409_functionSelector))
                let _721 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_720, 4) , expr_19413)

                let _722 := staticcall(gas(), expr_19409_address,  _720, sub(_721, _720), _720, 32)

                if iszero(_722) { revert_forward_1() }

                let expr_19414
                if _722 {

                    let _723 := 32

                    if gt(_723, returndatasize()) {
                        _723 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_720, _723)

                    // decode return parameters from external try-call into retVars
                    expr_19414 :=  abi_decode_tuple_t_uint256_fromMemory(_720, add(_720, _723))
                }
                /// @src 81:1723:1733  "globalData"
                let _724_slot := var_globalData_19352_slot
                let expr_19396_slot := _724_slot
                /// @src 81:1723:1742  "globalData.lockData"
                let _725 := add(expr_19396_slot, 6)
                let _726_slot := _725
                let expr_19399_slot := _726_slot
                /// @src 81:1723:1754  "globalData.lockData.baseReserve"
                let _727 := add(expr_19399_slot, 2)
                /// @src 81:1723:1828  "globalData.lockData.baseReserve = ERC20(globalData.pairs[pairId].basePool.token).balanceOf(address(this))"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_727, expr_19414)
                let expr_19415 := expr_19414
                /// @src 81:1867:1877  "msg.sender"
                let expr_19423 := caller()
                /// @src 81:1838:1848  "globalData"
                let _728_slot := var_globalData_19352_slot
                let expr_19417_slot := _728_slot
                /// @src 81:1838:1857  "globalData.lockData"
                let _729 := add(expr_19417_slot, 6)
                let _730_slot := _729
                let expr_19420_slot := _730_slot
                /// @src 81:1838:1864  "globalData.lockData.locker"
                let _731 := add(expr_19420_slot, 0)
                /// @src 81:1838:1877  "globalData.lockData.locker = msg.sender"
                update_storage_value_offset_0_t_address_to_t_address(_731, expr_19423)
                let expr_19424 := expr_19423
                /// @src 81:1916:1922  "pairId"
                let _732 := var_pairId_19354
                let expr_19431 := _732
                /// @src 81:1887:1897  "globalData"
                let _733_slot := var_globalData_19352_slot
                let expr_19426_slot := _733_slot
                /// @src 81:1887:1906  "globalData.lockData"
                let _734 := add(expr_19426_slot, 6)
                let _735_slot := _734
                let expr_19429_slot := _735_slot
                /// @src 81:1887:1913  "globalData.lockData.pairId"
                let _736 := add(expr_19429_slot, 3)
                /// @src 81:1887:1922  "globalData.lockData.pairId = pairId"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_736, expr_19431)
                let expr_19432 := expr_19431

            }
            /// @src 68:814:5932  "library Trade {..."

            function convert_t_uint160_to_t_contract$_IHooks_$4158(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IHooks_$4158(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IHooks_$4158(value)
            }

            function convert_t_contract$_IHooks_$4158_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_decode_tuple__fromMemory(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

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

            /// @ast-id 19473
            /// @src 81:1935:2395  "function callSettlementCallback(..."
            function fun_callSettlementCallback_19473(var_globalData_19438_slot, var_settlementData_19440_mpos, var_deltaBaseAmount_19442) {

                /// @src 81:2135:2145  "globalData"
                let _737_slot := var_globalData_19438_slot
                let expr_19447_slot := _737_slot
                /// @src 81:2135:2154  "globalData.lockData"
                let _738 := add(expr_19447_slot, 6)
                let _739_slot := _738
                let expr_19448_slot := _739_slot
                /// @src 81:2135:2161  "globalData.lockData.pairId"
                let _740 := add(expr_19448_slot, 3)
                let _741 := read_from_storage_split_offset_0_t_uint256(_740)
                let expr_19449 := _741
                /// @src 81:2118:2161  "uint256 pairId = globalData.lockData.pairId"
                let var_pairId_19446 := expr_19449
                /// @src 81:2179:2189  "msg.sender"
                let expr_19453 := caller()
                /// @src 81:2172:2190  "IHooks(msg.sender)"
                let expr_19454_address := convert_t_address_to_t_contract$_IHooks_$4158(expr_19453)
                /// @src 81:2172:2214  "IHooks(msg.sender).predySettlementCallback"
                let expr_19455_address := convert_t_contract$_IHooks_$4158_to_t_address(expr_19454_address)
                let expr_19455_functionSelector := 0x085090d6
                /// @src 81:2228:2238  "globalData"
                let _742_slot := var_globalData_19438_slot
                let expr_19456_slot := _742_slot
                /// @src 81:2228:2244  "globalData.pairs"
                let _743 := add(expr_19456_slot, 3)
                let _744_slot := _743
                let expr_19457_slot := _744_slot
                /// @src 81:2245:2251  "pairId"
                let _745 := var_pairId_19446
                let expr_19458 := _745
                /// @src 81:2228:2252  "globalData.pairs[pairId]"
                let _746 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_19457_slot,expr_19458)
                let _747_slot := _746
                let expr_19459_slot := _747_slot
                /// @src 81:2228:2262  "globalData.pairs[pairId].quotePool"
                let _748 := add(expr_19459_slot, 3)
                let _749_slot := _748
                let expr_19460_slot := _749_slot
                /// @src 81:2228:2268  "globalData.pairs[pairId].quotePool.token"
                let _750 := add(expr_19460_slot, 0)
                let _751 := read_from_storage_split_offset_0_t_address(_750)
                let expr_19461 := _751
                /// @src 81:2282:2292  "globalData"
                let _752_slot := var_globalData_19438_slot
                let expr_19462_slot := _752_slot
                /// @src 81:2282:2298  "globalData.pairs"
                let _753 := add(expr_19462_slot, 3)
                let _754_slot := _753
                let expr_19463_slot := _754_slot
                /// @src 81:2299:2305  "pairId"
                let _755 := var_pairId_19446
                let expr_19464 := _755
                /// @src 81:2282:2306  "globalData.pairs[pairId]"
                let _756 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_19463_slot,expr_19464)
                let _757_slot := _756
                let expr_19465_slot := _757_slot
                /// @src 81:2282:2315  "globalData.pairs[pairId].basePool"
                let _758 := add(expr_19465_slot, 17)
                let _759_slot := _758
                let expr_19466_slot := _759_slot
                /// @src 81:2282:2321  "globalData.pairs[pairId].basePool.token"
                let _760 := add(expr_19466_slot, 0)
                let _761 := read_from_storage_split_offset_0_t_address(_760)
                let expr_19467 := _761
                /// @src 81:2335:2349  "settlementData"
                let _762_mpos := var_settlementData_19440_mpos
                let expr_19468_mpos := _762_mpos
                /// @src 81:2363:2378  "deltaBaseAmount"
                let _763 := var_deltaBaseAmount_19442
                let expr_19469 := _763
                /// @src 81:2172:2388  "IHooks(msg.sender).predySettlementCallback(..."

                if iszero(extcodesize(expr_19455_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _764 := allocate_unbounded()
                mstore(_764, shift_left_224(expr_19455_functionSelector))
                let _765 := abi_encode_tuple_t_address_t_address_t_bytes_memory_ptr_t_int256__to_t_address_t_address_t_bytes_memory_ptr_t_int256__fromStack(add(_764, 4) , expr_19461, expr_19467, expr_19468_mpos, expr_19469)

                let _766 := call(gas(), expr_19455_address,  0,  _764, sub(_765, _764), _764, 0)

                if iszero(_766) { revert_forward_1() }

                if _766 {

                    let _767 := 0

                    if gt(_767, returndatasize()) {
                        _767 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_764, _767)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_764, add(_764, _767))
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            function update_byte_slice_dynamic32(value, shiftBytes, toInsert) -> result {
                let shiftBits := mul(shiftBytes, 8)
                let mask := shift_left_dynamic(shiftBits, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                toInsert := shift_left_dynamic(shiftBits, toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_t_uint256_to_t_uint256(slot, offset, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_uint256(convertedValue_0)))
            }

            function storage_set_to_zero_t_uint256(slot, offset) {
                let zero_0 := zero_value_for_split_t_uint256()
                update_storage_value_t_uint256_to_t_uint256(slot, offset, zero_0)
            }

            function clear_struct_storage_t_struct$_LockData_$34431_storage(slot) {

                sstore(add(slot, 0), 0)

                storage_set_to_zero_t_uint256(add(slot, 1), 0)

                storage_set_to_zero_t_uint256(add(slot, 2), 0)

                storage_set_to_zero_t_uint256(add(slot, 3), 0)

            }

            function panic_error_0x00() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x00)
                revert(0, 0x24)
            }

            function storage_set_to_zero_t_struct$_LockData_$34431_storage(slot, offset) {
                if iszero(eq(offset, 0)) { panic_error_0x00() }
                clear_struct_storage_t_struct$_LockData_$34431_storage(slot)
            }

            /// @ast-id 19503
            /// @src 81:2432:2712  "function finalizeLock(GlobalDataLibrary.GlobalData storage globalData)..."
            function fun_finalizeLock_19503(var_globalData_19477_slot) -> var_paidQuote_19480, var_paidBase_19482 {
                /// @src 81:2537:2553  "int256 paidQuote"
                let zero_t_int256_768 := zero_value_for_split_t_int256()
                var_paidQuote_19480 := zero_t_int256_768
                /// @src 81:2555:2570  "int256 paidBase"
                let zero_t_int256_769 := zero_value_for_split_t_int256()
                var_paidBase_19482 := zero_t_int256_769

                /// @src 81:2605:2615  "globalData"
                let _770_slot := var_globalData_19477_slot
                let expr_19486_slot := _770_slot
                /// @src 81:2617:2621  "true"
                let expr_19487 := 0x01
                /// @src 81:2598:2622  "settle(globalData, true)"
                let expr_19488 := fun_settle_19652(expr_19486_slot, expr_19487)
                /// @src 81:2586:2622  "paidQuote = settle(globalData, true)"
                var_paidQuote_19480 := expr_19488
                let expr_19489 := expr_19488
                /// @src 81:2650:2660  "globalData"
                let _771_slot := var_globalData_19477_slot
                let expr_19493_slot := _771_slot
                /// @src 81:2662:2667  "false"
                let expr_19494 := 0x00
                /// @src 81:2643:2668  "settle(globalData, false)"
                let expr_19495 := fun_settle_19652(expr_19493_slot, expr_19494)
                /// @src 81:2632:2668  "paidBase = settle(globalData, false)"
                var_paidBase_19482 := expr_19495
                let expr_19496 := expr_19495
                /// @src 81:2686:2696  "globalData"
                let _772_slot := var_globalData_19477_slot
                let expr_19498_slot := _772_slot
                /// @src 81:2686:2705  "globalData.lockData"
                let _773 := add(expr_19498_slot, 6)
                /// @src 81:2679:2705  "delete globalData.lockData"
                storage_set_to_zero_t_struct$_LockData_$34431_storage(_773, 0)

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 15386
            /// @src 61:24388:25495  "function calculateEntry(int256 _positionAmount, int256 _entryValue, int256 _tradeAmount, int256 _valueUpdate)..."
            function fun_calculateEntry_15386(var__positionAmount_15293, var__entryValue_15295, var__tradeAmount_15297, var__valueUpdate_15299) -> var_deltaEntry_15302, var_payoff_15304 {
                /// @src 61:24545:24562  "int256 deltaEntry"
                let zero_t_int256_774 := zero_value_for_split_t_int256()
                var_deltaEntry_15302 := zero_t_int256_774
                /// @src 61:24564:24577  "int256 payoff"
                let zero_t_int256_775 := zero_value_for_split_t_int256()
                var_payoff_15304 := zero_t_int256_775

                /// @src 61:24597:24609  "_tradeAmount"
                let _776 := var__tradeAmount_15297
                let expr_15306 := _776
                /// @src 61:24613:24614  "0"
                let expr_15307 := 0x00
                /// @src 61:24597:24614  "_tradeAmount == 0"
                let expr_15308 := eq(cleanup_t_int256(expr_15306), convert_t_rational_0_by_1_to_t_int256(expr_15307))
                /// @src 61:24593:24654  "if (_tradeAmount == 0) {..."
                if expr_15308 {
                    /// @src 61:24638:24639  "0"
                    let expr_15309 := 0x00
                    /// @src 61:24637:24643  "(0, 0)"
                    let expr_15311_component_1 := expr_15309
                    /// @src 61:24641:24642  "0"
                    let expr_15310 := 0x00
                    /// @src 61:24637:24643  "(0, 0)"
                    let expr_15311_component_2 := expr_15310
                    /// @src 61:24630:24643  "return (0, 0)"
                    var_deltaEntry_15302 := convert_t_rational_0_by_1_to_t_int256(expr_15311_component_1)
                    var_payoff_15304 := convert_t_rational_0_by_1_to_t_int256(expr_15311_component_2)
                    leave
                    /// @src 61:24593:24654  "if (_tradeAmount == 0) {..."
                }
                /// @src 61:24668:24683  "_positionAmount"
                let _777 := var__positionAmount_15293
                let expr_15315 := _777
                /// @src 61:24686:24698  "_tradeAmount"
                let _778 := var__tradeAmount_15297
                let expr_15316 := _778
                /// @src 61:24668:24698  "_positionAmount * _tradeAmount"
                let expr_15317 := checked_mul_t_int256(expr_15315, expr_15316)

                /// @src 61:24702:24703  "0"
                let expr_15318 := 0x00
                /// @src 61:24668:24703  "_positionAmount * _tradeAmount >= 0"
                let expr_15319 := iszero(slt(cleanup_t_int256(expr_15317), convert_t_rational_0_by_1_to_t_int256(expr_15318)))
                /// @src 61:24664:25489  "if (_positionAmount * _tradeAmount >= 0) {..."
                switch expr_15319
                case 0 {
                    /// @src 61:24808:24823  "_positionAmount"
                    let _779 := var__positionAmount_15293
                    let expr_15325 := _779
                    /// @src 61:24808:24827  "_positionAmount.abs"
                    let expr_15326_self := expr_15325
                    /// @src 61:24808:24829  "_positionAmount.abs()"
                    let expr_15327 := fun_abs_32143(expr_15326_self)
                    /// @src 61:24833:24845  "_tradeAmount"
                    let _780 := var__tradeAmount_15297
                    let expr_15328 := _780
                    /// @src 61:24833:24849  "_tradeAmount.abs"
                    let expr_15329_self := expr_15328
                    /// @src 61:24833:24851  "_tradeAmount.abs()"
                    let expr_15330 := fun_abs_32143(expr_15329_self)
                    /// @src 61:24808:24851  "_positionAmount.abs() >= _tradeAmount.abs()"
                    let expr_15331 := iszero(lt(cleanup_t_uint256(expr_15327), cleanup_t_uint256(expr_15330)))
                    /// @src 61:24804:25479  "if (_positionAmount.abs() >= _tradeAmount.abs()) {..."
                    switch expr_15331
                    case 0 {
                        /// @src 61:25201:25212  "_entryValue"
                        let _781 := var__entryValue_15295
                        let expr_15353 := _781
                        /// @src 61:25200:25212  "-_entryValue"
                        let expr_15354 := negate_t_int256(expr_15353)
                        /// @src 61:25173:25212  "int256 closeStableAmount = -_entryValue"
                        let var_closeStableAmount_15352 := expr_15354
                        /// @src 61:25256:25268  "_valueUpdate"
                        let _782 := var__valueUpdate_15299
                        let expr_15358 := _782
                        /// @src 61:25272:25287  "_positionAmount"
                        let _783 := var__positionAmount_15293
                        let expr_15359 := _783
                        /// @src 61:25290:25302  "_tradeAmount"
                        let _784 := var__tradeAmount_15297
                        let expr_15360 := _784
                        /// @src 61:25272:25302  "_positionAmount + _tradeAmount"
                        let expr_15361 := checked_add_t_int256(expr_15359, expr_15360)

                        /// @src 61:25271:25303  "(_positionAmount + _tradeAmount)"
                        let expr_15362 := expr_15361
                        /// @src 61:25256:25303  "_valueUpdate * (_positionAmount + _tradeAmount)"
                        let expr_15363 := checked_mul_t_int256(expr_15358, expr_15362)

                        /// @src 61:25306:25318  "_tradeAmount"
                        let _785 := var__tradeAmount_15297
                        let expr_15364 := _785
                        /// @src 61:25256:25318  "_valueUpdate * (_positionAmount + _tradeAmount) / _tradeAmount"
                        let expr_15365 := checked_div_t_int256(expr_15363, expr_15364)

                        /// @src 61:25230:25318  "int256 openStableAmount = _valueUpdate * (_positionAmount + _tradeAmount) / _tradeAmount"
                        let var_openStableAmount_15357 := expr_15365
                        /// @src 61:25350:25367  "closeStableAmount"
                        let _786 := var_closeStableAmount_15352
                        let expr_15368 := _786
                        /// @src 61:25370:25386  "openStableAmount"
                        let _787 := var_openStableAmount_15357
                        let expr_15369 := _787
                        /// @src 61:25350:25386  "closeStableAmount + openStableAmount"
                        let expr_15370 := checked_add_t_int256(expr_15368, expr_15369)

                        /// @src 61:25337:25386  "deltaEntry = closeStableAmount + openStableAmount"
                        var_deltaEntry_15302 := expr_15370
                        let expr_15371 := expr_15370
                        /// @src 61:25413:25425  "_valueUpdate"
                        let _788 := var__valueUpdate_15299
                        let expr_15374 := _788
                        /// @src 61:25428:25445  "closeStableAmount"
                        let _789 := var_closeStableAmount_15352
                        let expr_15375 := _789
                        /// @src 61:25413:25445  "_valueUpdate - closeStableAmount"
                        let expr_15376 := checked_sub_t_int256(expr_15374, expr_15375)

                        /// @src 61:25448:25464  "openStableAmount"
                        let _790 := var_openStableAmount_15357
                        let expr_15377 := _790
                        /// @src 61:25413:25464  "_valueUpdate - closeStableAmount - openStableAmount"
                        let expr_15378 := checked_sub_t_int256(expr_15376, expr_15377)

                        /// @src 61:25404:25464  "payoff = _valueUpdate - closeStableAmount - openStableAmount"
                        var_payoff_15304 := expr_15378
                        let expr_15379 := expr_15378
                        /// @src 61:24804:25479  "if (_positionAmount.abs() >= _tradeAmount.abs()) {..."
                    }
                    default {
                        /// @src 61:24933:24944  "_entryValue"
                        let _791 := var__entryValue_15295
                        let expr_15334 := _791
                        /// @src 61:24947:24959  "_tradeAmount"
                        let _792 := var__tradeAmount_15297
                        let expr_15335 := _792
                        /// @src 61:24933:24959  "_entryValue * _tradeAmount"
                        let expr_15336 := checked_mul_t_int256(expr_15334, expr_15335)

                        /// @src 61:24962:24977  "_positionAmount"
                        let _793 := var__positionAmount_15293
                        let expr_15337 := _793
                        /// @src 61:24933:24977  "_entryValue * _tradeAmount / _positionAmount"
                        let expr_15338 := checked_div_t_int256(expr_15336, expr_15337)

                        /// @src 61:24906:24977  "int256 closeStableAmount = _entryValue * _tradeAmount / _positionAmount"
                        let var_closeStableAmount_15333 := expr_15338
                        /// @src 61:25009:25026  "closeStableAmount"
                        let _794 := var_closeStableAmount_15333
                        let expr_15341 := _794
                        /// @src 61:24996:25026  "deltaEntry = closeStableAmount"
                        var_deltaEntry_15302 := expr_15341
                        let expr_15342 := expr_15341
                        /// @src 61:25053:25065  "_valueUpdate"
                        let _795 := var__valueUpdate_15299
                        let expr_15345 := _795
                        /// @src 61:25068:25085  "closeStableAmount"
                        let _796 := var_closeStableAmount_15333
                        let expr_15346 := _796
                        /// @src 61:25053:25085  "_valueUpdate - closeStableAmount"
                        let expr_15347 := checked_sub_t_int256(expr_15345, expr_15346)

                        /// @src 61:25044:25085  "payoff = _valueUpdate - closeStableAmount"
                        var_payoff_15304 := expr_15347
                        let expr_15348 := expr_15347
                        /// @src 61:24804:25479  "if (_positionAmount.abs() >= _tradeAmount.abs()) {..."
                    }
                    /// @src 61:24664:25489  "if (_positionAmount * _tradeAmount >= 0) {..."
                }
                default {
                    /// @src 61:24761:24773  "_valueUpdate"
                    let _797 := var__valueUpdate_15299
                    let expr_15321 := _797
                    /// @src 61:24748:24773  "deltaEntry = _valueUpdate"
                    var_deltaEntry_15302 := expr_15321
                    let expr_15322 := expr_15321
                    /// @src 61:24664:25489  "if (_positionAmount * _tradeAmount >= 0) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            function abi_encode_tuple_t_int256_t_int256__to_t_int256_t_int256__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_int256_to_t_int256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int256_to_t_int256_fromStack(value1,  add(headStart, 32))

            }

            /// @ast-id 15040
            /// @src 61:19104:21124  "function updateSqrtPosition(..."
            function fun_updateSqrtPosition_15040(var__pairId_14828, var__assetStatus_14831_slot, var__userStatus_14834_slot, var__amount_14836) {

                /// @src 61:19296:19313  "int256 openAmount"
                let var_openAmount_14840
                let zero_t_int256_798 := zero_value_for_split_t_int256()
                var_openAmount_14840 := zero_t_int256_798
                /// @src 61:19323:19341  "int256 closeAmount"
                let var_closeAmount_14843
                let zero_t_int256_799 := zero_value_for_split_t_int256()
                var_closeAmount_14843 := zero_t_int256_799
                /// @src 61:19356:19367  "_userStatus"
                let _800_slot := var__userStatus_14834_slot
                let expr_14845_slot := _800_slot
                /// @src 61:19356:19376  "_userStatus.sqrtPerp"
                let _801 := add(expr_14845_slot, 4)
                let _802_slot := _801
                let expr_14846_slot := _802_slot
                /// @src 61:19356:19383  "_userStatus.sqrtPerp.amount"
                let _803 := add(expr_14846_slot, 0)
                let _804 := read_from_storage_split_offset_0_t_int256(_803)
                let expr_14847 := _804
                /// @src 61:19386:19393  "_amount"
                let _805 := var__amount_14836
                let expr_14848 := _805
                /// @src 61:19356:19393  "_userStatus.sqrtPerp.amount * _amount"
                let expr_14849 := checked_mul_t_int256(expr_14847, expr_14848)

                /// @src 61:19397:19398  "0"
                let expr_14850 := 0x00
                /// @src 61:19356:19398  "_userStatus.sqrtPerp.amount * _amount >= 0"
                let expr_14851 := iszero(slt(cleanup_t_int256(expr_14849), convert_t_rational_0_by_1_to_t_int256(expr_14850)))
                /// @src 61:19352:19734  "if (_userStatus.sqrtPerp.amount * _amount >= 0) {..."
                switch expr_14851
                case 0 {
                    /// @src 61:19469:19480  "_userStatus"
                    let _806_slot := var__userStatus_14834_slot
                    let expr_14857_slot := _806_slot
                    /// @src 61:19469:19489  "_userStatus.sqrtPerp"
                    let _807 := add(expr_14857_slot, 4)
                    let _808_slot := _807
                    let expr_14858_slot := _808_slot
                    /// @src 61:19469:19496  "_userStatus.sqrtPerp.amount"
                    let _809 := add(expr_14858_slot, 0)
                    let _810 := read_from_storage_split_offset_0_t_int256(_809)
                    let expr_14859 := _810
                    /// @src 61:19469:19500  "_userStatus.sqrtPerp.amount.abs"
                    let expr_14860_self := expr_14859
                    /// @src 61:19469:19502  "_userStatus.sqrtPerp.amount.abs()"
                    let expr_14861 := fun_abs_32143(expr_14860_self)
                    /// @src 61:19506:19513  "_amount"
                    let _811 := var__amount_14836
                    let expr_14862 := _811
                    /// @src 61:19506:19517  "_amount.abs"
                    let expr_14863_self := expr_14862
                    /// @src 61:19506:19519  "_amount.abs()"
                    let expr_14864 := fun_abs_32143(expr_14863_self)
                    /// @src 61:19469:19519  "_userStatus.sqrtPerp.amount.abs() >= _amount.abs()"
                    let expr_14865 := iszero(lt(cleanup_t_uint256(expr_14861), cleanup_t_uint256(expr_14864)))
                    /// @src 61:19465:19724  "if (_userStatus.sqrtPerp.amount.abs() >= _amount.abs()) {..."
                    switch expr_14865
                    case 0 {
                        /// @src 61:19612:19623  "_userStatus"
                        let _812_slot := var__userStatus_14834_slot
                        let expr_14872_slot := _812_slot
                        /// @src 61:19612:19632  "_userStatus.sqrtPerp"
                        let _813 := add(expr_14872_slot, 4)
                        let _814_slot := _813
                        let expr_14873_slot := _814_slot
                        /// @src 61:19612:19639  "_userStatus.sqrtPerp.amount"
                        let _815 := add(expr_14873_slot, 0)
                        let _816 := read_from_storage_split_offset_0_t_int256(_815)
                        let expr_14874 := _816
                        /// @src 61:19642:19649  "_amount"
                        let _817 := var__amount_14836
                        let expr_14875 := _817
                        /// @src 61:19612:19649  "_userStatus.sqrtPerp.amount + _amount"
                        let expr_14876 := checked_add_t_int256(expr_14874, expr_14875)

                        /// @src 61:19599:19649  "openAmount = _userStatus.sqrtPerp.amount + _amount"
                        var_openAmount_14840 := expr_14876
                        let expr_14877 := expr_14876
                        /// @src 61:19682:19693  "_userStatus"
                        let _818_slot := var__userStatus_14834_slot
                        let expr_14880_slot := _818_slot
                        /// @src 61:19682:19702  "_userStatus.sqrtPerp"
                        let _819 := add(expr_14880_slot, 4)
                        let _820_slot := _819
                        let expr_14881_slot := _820_slot
                        /// @src 61:19682:19709  "_userStatus.sqrtPerp.amount"
                        let _821 := add(expr_14881_slot, 0)
                        let _822 := read_from_storage_split_offset_0_t_int256(_821)
                        let expr_14882 := _822
                        /// @src 61:19681:19709  "-_userStatus.sqrtPerp.amount"
                        let expr_14883 := negate_t_int256(expr_14882)
                        /// @src 61:19667:19709  "closeAmount = -_userStatus.sqrtPerp.amount"
                        var_closeAmount_14843 := expr_14883
                        let expr_14884 := expr_14883
                        /// @src 61:19465:19724  "if (_userStatus.sqrtPerp.amount.abs() >= _amount.abs()) {..."
                    }
                    default {
                        /// @src 61:19553:19560  "_amount"
                        let _823 := var__amount_14836
                        let expr_14867 := _823
                        /// @src 61:19539:19560  "closeAmount = _amount"
                        var_closeAmount_14843 := expr_14867
                        let expr_14868 := expr_14867
                        /// @src 61:19465:19724  "if (_userStatus.sqrtPerp.amount.abs() >= _amount.abs()) {..."
                    }
                    /// @src 61:19352:19734  "if (_userStatus.sqrtPerp.amount * _amount >= 0) {..."
                }
                default {
                    /// @src 61:19427:19434  "_amount"
                    let _824 := var__amount_14836
                    let expr_14853 := _824
                    /// @src 61:19414:19434  "openAmount = _amount"
                    var_openAmount_14840 := expr_14853
                    let expr_14854 := expr_14853
                    /// @src 61:19352:19734  "if (_userStatus.sqrtPerp.amount * _amount >= 0) {..."
                }
                /// @src 61:19748:19760  "_assetStatus"
                let _825_slot := var__assetStatus_14831_slot
                let expr_14890_slot := _825_slot
                /// @src 61:19748:19772  "_assetStatus.totalAmount"
                let _826 := add(expr_14890_slot, 2)
                let _827 := read_from_storage_split_offset_0_t_uint256(_826)
                let expr_14891 := _827
                /// @src 61:19776:19788  "_assetStatus"
                let _828_slot := var__assetStatus_14831_slot
                let expr_14892_slot := _828_slot
                /// @src 61:19776:19803  "_assetStatus.borrowedAmount"
                let _829 := add(expr_14892_slot, 3)
                let _830 := read_from_storage_split_offset_0_t_uint256(_829)
                let expr_14893 := _830
                /// @src 61:19748:19803  "_assetStatus.totalAmount == _assetStatus.borrowedAmount"
                let expr_14894 := eq(cleanup_t_uint256(expr_14891), cleanup_t_uint256(expr_14893))
                /// @src 61:19744:19959  "if (_assetStatus.totalAmount == _assetStatus.borrowedAmount) {..."
                if expr_14894 {
                    /// @src 61:19935:19947  "_assetStatus"
                    let _831_slot := var__assetStatus_14831_slot
                    let expr_14896_slot := _831_slot
                    fun_saveLastFeeGrowth_14518(expr_14896_slot)
                    /// @src 61:19744:19959  "if (_assetStatus.totalAmount == _assetStatus.borrowedAmount) {..."
                }
                /// @src 61:19973:19984  "closeAmount"
                let _832 := var_closeAmount_14843
                let expr_14901 := _832
                /// @src 61:19987:19988  "0"
                let expr_14902 := 0x00
                /// @src 61:19973:19988  "closeAmount > 0"
                let expr_14903 := sgt(cleanup_t_int256(expr_14901), convert_t_rational_0_by_1_to_t_int256(expr_14902))
                /// @src 61:19969:20320  "if (closeAmount > 0) {..."
                switch expr_14903
                case 0 {
                    /// @src 61:20076:20087  "closeAmount"
                    let _833 := var_closeAmount_14843
                    let expr_14914 := _833
                    /// @src 61:20090:20091  "0"
                    let expr_14915 := 0x00
                    /// @src 61:20076:20091  "closeAmount < 0"
                    let expr_14916 := slt(cleanup_t_int256(expr_14914), convert_t_rational_0_by_1_to_t_int256(expr_14915))
                    /// @src 61:20072:20320  "if (closeAmount < 0) {..."
                    if expr_14916 {
                        /// @src 61:20134:20146  "_assetStatus"
                        let _834_slot := var__assetStatus_14831_slot
                        let expr_14918_slot := _834_slot
                        /// @src 61:20148:20152  "true"
                        let expr_14919 := 0x01
                        /// @src 61:20111:20153  "getAvailableSqrtAmount(_assetStatus, true)"
                        let _835_mpos := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(expr_14918_slot)
                        let expr_14920 := fun_getAvailableSqrtAmount_15094(_835_mpos, expr_14919)
                        /// @src 61:20165:20176  "closeAmount"
                        let _836 := var_closeAmount_14843
                        let expr_14923 := _836
                        /// @src 61:20164:20176  "-closeAmount"
                        let expr_14924 := negate_t_int256(expr_14923)
                        /// @src 61:20156:20177  "uint256(-closeAmount)"
                        let expr_14925 := convert_t_int256_to_t_uint256(expr_14924)
                        /// @src 61:20111:20177  "getAvailableSqrtAmount(_assetStatus, true) < uint256(-closeAmount)"
                        let expr_14926 := lt(cleanup_t_uint256(expr_14920), cleanup_t_uint256(expr_14925))
                        /// @src 61:20107:20247  "if (getAvailableSqrtAmount(_assetStatus, true) < uint256(-closeAmount)) {..."
                        if expr_14926 {
                            /// @src 61:20204:20232  "SqrtAssetCanNotCoverBorrow()"
                            {

                                let _838 := 0

                                mstore(_838, 0x61d0d84d00000000000000000000000000000000000000000000000000000000)
                                let _837 := abi_encode_tuple__to__fromStack(add(_838, 4) )
                                revert(_838, sub(_837, _838))
                            }/// @src 61:20107:20247  "if (getAvailableSqrtAmount(_assetStatus, true) < uint256(-closeAmount)) {..."
                        }
                        /// @src 61:20297:20308  "closeAmount"
                        let _839 := var_closeAmount_14843
                        let expr_14937 := _839
                        /// @src 61:20296:20308  "-closeAmount"
                        let expr_14938 := negate_t_int256(expr_14937)
                        /// @src 61:20288:20309  "uint256(-closeAmount)"
                        let expr_14939 := convert_t_int256_to_t_uint256(expr_14938)
                        /// @src 61:20260:20272  "_assetStatus"
                        let _840_slot := var__assetStatus_14831_slot
                        let expr_14932_slot := _840_slot
                        /// @src 61:20260:20284  "_assetStatus.totalAmount"
                        let _841 := add(expr_14932_slot, 2)
                        /// @src 61:20260:20309  "_assetStatus.totalAmount -= uint256(-closeAmount)"
                        let _842 := read_from_storage_split_offset_0_t_uint256(_841)
                        let expr_14940 := checked_sub_t_uint256(_842, expr_14939)

                        update_storage_value_offset_0_t_uint256_to_t_uint256(_841, expr_14940)
                        /// @src 61:20072:20320  "if (closeAmount < 0) {..."
                    }
                    /// @src 61:19969:20320  "if (closeAmount > 0) {..."
                }
                default {
                    /// @src 61:20043:20054  "closeAmount"
                    let _843 := var_closeAmount_14843
                    let expr_14909 := _843
                    /// @src 61:20035:20055  "uint256(closeAmount)"
                    let expr_14910 := convert_t_int256_to_t_uint256(expr_14909)
                    /// @src 61:20004:20016  "_assetStatus"
                    let _844_slot := var__assetStatus_14831_slot
                    let expr_14904_slot := _844_slot
                    /// @src 61:20004:20031  "_assetStatus.borrowedAmount"
                    let _845 := add(expr_14904_slot, 3)
                    /// @src 61:20004:20055  "_assetStatus.borrowedAmount -= uint256(closeAmount)"
                    let _846 := read_from_storage_split_offset_0_t_uint256(_845)
                    let expr_14911 := checked_sub_t_uint256(_846, expr_14910)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(_845, expr_14911)
                    /// @src 61:19969:20320  "if (closeAmount > 0) {..."
                }
                /// @src 61:20334:20344  "openAmount"
                let _847 := var_openAmount_14840
                let expr_14945 := _847
                /// @src 61:20347:20348  "0"
                let expr_14946 := 0x00
                /// @src 61:20334:20348  "openAmount > 0"
                let expr_14947 := sgt(cleanup_t_int256(expr_14945), convert_t_rational_0_by_1_to_t_int256(expr_14946))
                /// @src 61:20330:21000  "if (openAmount > 0) {..."
                switch expr_14947
                case 0 {
                    /// @src 61:20583:20593  "openAmount"
                    let _848 := var_openAmount_14840
                    let expr_14976 := _848
                    /// @src 61:20596:20597  "0"
                    let expr_14977 := 0x00
                    /// @src 61:20583:20597  "openAmount < 0"
                    let expr_14978 := slt(cleanup_t_int256(expr_14976), convert_t_rational_0_by_1_to_t_int256(expr_14977))
                    /// @src 61:20579:21000  "if (openAmount < 0) {..."
                    if expr_14978 {
                        /// @src 61:20640:20652  "_assetStatus"
                        let _849_slot := var__assetStatus_14831_slot
                        let expr_14980_slot := _849_slot
                        /// @src 61:20654:20659  "false"
                        let expr_14981 := 0x00
                        /// @src 61:20617:20660  "getAvailableSqrtAmount(_assetStatus, false)"
                        let _850_mpos := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(expr_14980_slot)
                        let expr_14982 := fun_getAvailableSqrtAmount_15094(_850_mpos, expr_14981)
                        /// @src 61:20672:20682  "openAmount"
                        let _851 := var_openAmount_14840
                        let expr_14985 := _851
                        /// @src 61:20671:20682  "-openAmount"
                        let expr_14986 := negate_t_int256(expr_14985)
                        /// @src 61:20663:20683  "uint256(-openAmount)"
                        let expr_14987 := convert_t_int256_to_t_uint256(expr_14986)
                        /// @src 61:20617:20683  "getAvailableSqrtAmount(_assetStatus, false) < uint256(-openAmount)"
                        let expr_14988 := lt(cleanup_t_uint256(expr_14982), cleanup_t_uint256(expr_14987))
                        /// @src 61:20613:20753  "if (getAvailableSqrtAmount(_assetStatus, false) < uint256(-openAmount)) {..."
                        if expr_14988 {
                            /// @src 61:20710:20738  "SqrtAssetCanNotCoverBorrow()"
                            {

                                let _853 := 0

                                mstore(_853, 0x61d0d84d00000000000000000000000000000000000000000000000000000000)
                                let _852 := abi_encode_tuple__to__fromStack(add(_853, 4) )
                                revert(_853, sub(_852, _853))
                            }/// @src 61:20613:20753  "if (getAvailableSqrtAmount(_assetStatus, false) < uint256(-openAmount)) {..."
                        }
                        /// @src 61:20807:20817  "openAmount"
                        let _854 := var_openAmount_14840
                        let expr_14999 := _854
                        /// @src 61:20806:20817  "-openAmount"
                        let expr_15000 := negate_t_int256(expr_14999)
                        /// @src 61:20798:20818  "uint256(-openAmount)"
                        let expr_15001 := convert_t_int256_to_t_uint256(expr_15000)
                        /// @src 61:20767:20779  "_assetStatus"
                        let _855_slot := var__assetStatus_14831_slot
                        let expr_14994_slot := _855_slot
                        /// @src 61:20767:20794  "_assetStatus.borrowedAmount"
                        let _856 := add(expr_14994_slot, 3)
                        /// @src 61:20767:20818  "_assetStatus.borrowedAmount += uint256(-openAmount)"
                        let _857 := read_from_storage_split_offset_0_t_uint256(_856)
                        let expr_15002 := checked_add_t_uint256(_857, expr_15001)

                        update_storage_value_offset_0_t_uint256_to_t_uint256(_856, expr_15002)
                        /// @src 61:20871:20883  "_assetStatus"
                        let _858_slot := var__assetStatus_14831_slot
                        let expr_15009_slot := _858_slot
                        /// @src 61:20871:20904  "_assetStatus.borrowPremium0Growth"
                        let _859 := add(expr_15009_slot, 7)
                        let _860 := read_from_storage_split_offset_0_t_uint256(_859)
                        let expr_15010 := _860
                        /// @src 61:20833:20844  "_userStatus"
                        let _861_slot := var__userStatus_14834_slot
                        let expr_15004_slot := _861_slot
                        /// @src 61:20833:20853  "_userStatus.sqrtPerp"
                        let _862 := add(expr_15004_slot, 4)
                        let _863_slot := _862
                        let expr_15007_slot := _863_slot
                        /// @src 61:20833:20868  "_userStatus.sqrtPerp.entryTradeFee0"
                        let _864 := add(expr_15007_slot, 4)
                        /// @src 61:20833:20904  "_userStatus.sqrtPerp.entryTradeFee0 = _assetStatus.borrowPremium0Growth"
                        update_storage_value_offset_0_t_uint256_to_t_uint256(_864, expr_15010)
                        let expr_15011 := expr_15010
                        /// @src 61:20956:20968  "_assetStatus"
                        let _865_slot := var__assetStatus_14831_slot
                        let expr_15018_slot := _865_slot
                        /// @src 61:20956:20989  "_assetStatus.borrowPremium1Growth"
                        let _866 := add(expr_15018_slot, 8)
                        let _867 := read_from_storage_split_offset_0_t_uint256(_866)
                        let expr_15019 := _867
                        /// @src 61:20918:20929  "_userStatus"
                        let _868_slot := var__userStatus_14834_slot
                        let expr_15013_slot := _868_slot
                        /// @src 61:20918:20938  "_userStatus.sqrtPerp"
                        let _869 := add(expr_15013_slot, 4)
                        let _870_slot := _869
                        let expr_15016_slot := _870_slot
                        /// @src 61:20918:20953  "_userStatus.sqrtPerp.entryTradeFee1"
                        let _871 := add(expr_15016_slot, 5)
                        /// @src 61:20918:20989  "_userStatus.sqrtPerp.entryTradeFee1 = _assetStatus.borrowPremium1Growth"
                        update_storage_value_offset_0_t_uint256_to_t_uint256(_871, expr_15019)
                        let expr_15020 := expr_15019
                        /// @src 61:20579:21000  "if (openAmount < 0) {..."
                    }
                    /// @src 61:20330:21000  "if (openAmount > 0) {..."
                }
                default {
                    /// @src 61:20400:20410  "openAmount"
                    let _872 := var_openAmount_14840
                    let expr_14953 := _872
                    /// @src 61:20392:20411  "uint256(openAmount)"
                    let expr_14954 := convert_t_int256_to_t_uint256(expr_14953)
                    /// @src 61:20364:20376  "_assetStatus"
                    let _873_slot := var__assetStatus_14831_slot
                    let expr_14948_slot := _873_slot
                    /// @src 61:20364:20388  "_assetStatus.totalAmount"
                    let _874 := add(expr_14948_slot, 2)
                    /// @src 61:20364:20411  "_assetStatus.totalAmount += uint256(openAmount)"
                    let _875 := read_from_storage_split_offset_0_t_uint256(_874)
                    let expr_14955 := checked_add_t_uint256(_875, expr_14954)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(_874, expr_14955)
                    /// @src 61:20464:20476  "_assetStatus"
                    let _876_slot := var__assetStatus_14831_slot
                    let expr_14962_slot := _876_slot
                    /// @src 61:20464:20487  "_assetStatus.fee0Growth"
                    let _877 := add(expr_14962_slot, 9)
                    let _878 := read_from_storage_split_offset_0_t_uint256(_877)
                    let expr_14963 := _878
                    /// @src 61:20426:20437  "_userStatus"
                    let _879_slot := var__userStatus_14834_slot
                    let expr_14957_slot := _879_slot
                    /// @src 61:20426:20446  "_userStatus.sqrtPerp"
                    let _880 := add(expr_14957_slot, 4)
                    let _881_slot := _880
                    let expr_14960_slot := _881_slot
                    /// @src 61:20426:20461  "_userStatus.sqrtPerp.entryTradeFee0"
                    let _882 := add(expr_14960_slot, 4)
                    /// @src 61:20426:20487  "_userStatus.sqrtPerp.entryTradeFee0 = _assetStatus.fee0Growth"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_882, expr_14963)
                    let expr_14964 := expr_14963
                    /// @src 61:20539:20551  "_assetStatus"
                    let _883_slot := var__assetStatus_14831_slot
                    let expr_14971_slot := _883_slot
                    /// @src 61:20539:20562  "_assetStatus.fee1Growth"
                    let _884 := add(expr_14971_slot, 10)
                    let _885 := read_from_storage_split_offset_0_t_uint256(_884)
                    let expr_14972 := _885
                    /// @src 61:20501:20512  "_userStatus"
                    let _886_slot := var__userStatus_14834_slot
                    let expr_14966_slot := _886_slot
                    /// @src 61:20501:20521  "_userStatus.sqrtPerp"
                    let _887 := add(expr_14966_slot, 4)
                    let _888_slot := _887
                    let expr_14969_slot := _888_slot
                    /// @src 61:20501:20536  "_userStatus.sqrtPerp.entryTradeFee1"
                    let _889 := add(expr_14969_slot, 5)
                    /// @src 61:20501:20562  "_userStatus.sqrtPerp.entryTradeFee1 = _assetStatus.fee1Growth"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_889, expr_14972)
                    let expr_14973 := expr_14972
                    /// @src 61:20330:21000  "if (openAmount > 0) {..."
                }
                /// @src 61:21041:21048  "_amount"
                let _890 := var__amount_14836
                let expr_15030 := _890
                /// @src 61:21010:21021  "_userStatus"
                let _891_slot := var__userStatus_14834_slot
                let expr_15025_slot := _891_slot
                /// @src 61:21010:21030  "_userStatus.sqrtPerp"
                let _892 := add(expr_15025_slot, 4)
                let _893_slot := _892
                let expr_15028_slot := _893_slot
                /// @src 61:21010:21037  "_userStatus.sqrtPerp.amount"
                let _894 := add(expr_15028_slot, 0)
                /// @src 61:21010:21048  "_userStatus.sqrtPerp.amount += _amount"
                let _895 := read_from_storage_split_offset_0_t_int256(_894)
                let expr_15031 := checked_add_t_int256(_895, expr_15030)

                update_storage_value_offset_0_t_int256_to_t_int256(_894, expr_15031)
                /// @src 61:21084:21091  "_pairId"
                let _896 := var__pairId_14828
                let expr_15034 := _896
                /// @src 61:21093:21103  "openAmount"
                let _897 := var_openAmount_14840
                let expr_15035 := _897
                /// @src 61:21105:21116  "closeAmount"
                let _898 := var_closeAmount_14843
                let expr_15036 := _898
                /// @src 61:21064:21117  "SqrtPositionUpdated(_pairId, openAmount, closeAmount)"
                let _899 := 0xd6b5c308a56f1f33cb6d586d7f76c5e6fbf851f46dc71f0910aec5855b2c885c
                let _900 := convert_t_uint256_to_t_uint256(expr_15034)
                {
                    let _901 := allocate_unbounded()
                    let _902 := abi_encode_tuple_t_int256_t_int256__to_t_int256_t_int256__fromStack(_901 , expr_15035, expr_15036)
                    log2(_901, sub(_902, _901) , _899, _900)
                }
            }
            /// @src 68:814:5932  "library Trade {..."

            function store_literal_in_memory_589608beb3b756e6393b620b3e875b071cf25732f0ed93d9d8e6a0f9b43cc3ea(memPtr) {

                mstore(add(memPtr, 0), "S2")

            }

            function abi_encode_t_stringliteral_589608beb3b756e6393b620b3e875b071cf25732f0ed93d9d8e6a0f9b43cc3ea_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_589608beb3b756e6393b620b3e875b071cf25732f0ed93d9d8e6a0f9b43cc3ea(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_589608beb3b756e6393b620b3e875b071cf25732f0ed93d9d8e6a0f9b43cc3ea__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_589608beb3b756e6393b620b3e875b071cf25732f0ed93d9d8e6a0f9b43cc3ea_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_589608beb3b756e6393b620b3e875b071cf25732f0ed93d9d8e6a0f9b43cc3ea(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_589608beb3b756e6393b620b3e875b071cf25732f0ed93d9d8e6a0f9b43cc3ea__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_AssetStatus_$30934_memory_ptr(value)

            }

            function store_literal_in_memory_ee59f4ed6369731f984a173139e4b68cb3b2efb80cd22d9b1bbfa6e0a94af1c1(memPtr) {

                mstore(add(memPtr, 0), "S0")

            }

            function abi_encode_t_stringliteral_ee59f4ed6369731f984a173139e4b68cb3b2efb80cd22d9b1bbfa6e0a94af1c1_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_ee59f4ed6369731f984a173139e4b68cb3b2efb80cd22d9b1bbfa6e0a94af1c1(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_ee59f4ed6369731f984a173139e4b68cb3b2efb80cd22d9b1bbfa6e0a94af1c1__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_ee59f4ed6369731f984a173139e4b68cb3b2efb80cd22d9b1bbfa6e0a94af1c1_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_ee59f4ed6369731f984a173139e4b68cb3b2efb80cd22d9b1bbfa6e0a94af1c1(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_ee59f4ed6369731f984a173139e4b68cb3b2efb80cd22d9b1bbfa6e0a94af1c1__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_tuple_t_bool_t_int256_t_int256__to_t_bool_t_int256_t_int256__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int256_to_t_int256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_int256_to_t_int256_fromStack(value2,  add(headStart, 64))

            }

            /// @ast-id 31326
            /// @src 66:2422:4357  "function updatePosition(..."
            function fun_updatePosition_31326(var_tokenStatus_31126_slot, var_userStatus_31129_slot, var__amount_31131, var__pairId_31133, var__isStable_31135) {

                /// @src 66:2719:2729  "userStatus"
                let _903_slot := var_userStatus_31129_slot
                let expr_31138_slot := _903_slot
                /// @src 66:2719:2744  "userStatus.positionAmount"
                let _904 := add(expr_31138_slot, 0)
                let _905 := read_from_storage_split_offset_0_t_int256(_904)
                let expr_31139 := _905
                /// @src 66:2747:2748  "0"
                let expr_31140 := 0x00
                /// @src 66:2719:2748  "userStatus.positionAmount > 0"
                let expr_31141 := sgt(cleanup_t_int256(expr_31139), convert_t_rational_0_by_1_to_t_int256(expr_31140))
                /// @src 66:2715:2972  "if (userStatus.positionAmount > 0) {..."
                switch expr_31141
                case 0 {
                    /// @src 66:2851:2861  "userStatus"
                    let _906_slot := var_userStatus_31129_slot
                    let expr_31152_slot := _906_slot
                    /// @src 66:2851:2876  "userStatus.positionAmount"
                    let _907 := add(expr_31152_slot, 0)
                    let _908 := read_from_storage_split_offset_0_t_int256(_907)
                    let expr_31153 := _908
                    /// @src 66:2879:2880  "0"
                    let expr_31154 := 0x00
                    /// @src 66:2851:2880  "userStatus.positionAmount < 0"
                    let expr_31155 := slt(cleanup_t_int256(expr_31153), convert_t_rational_0_by_1_to_t_int256(expr_31154))
                    /// @src 66:2847:2972  "if (userStatus.positionAmount < 0) {..."
                    if expr_31155 {
                        /// @src 66:2904:2914  "userStatus"
                        let _909_slot := var_userStatus_31129_slot
                        let expr_31157_slot := _909_slot
                        /// @src 66:2904:2928  "userStatus.lastFeeGrowth"
                        let _910 := add(expr_31157_slot, 1)
                        let _911 := read_from_storage_split_offset_0_t_uint256(_910)
                        let expr_31158 := _911
                        /// @src 66:2932:2943  "tokenStatus"
                        let _912_slot := var_tokenStatus_31126_slot
                        let expr_31159_slot := _912_slot
                        /// @src 66:2932:2954  "tokenStatus.debtGrowth"
                        let _913 := add(expr_31159_slot, 5)
                        let _914 := read_from_storage_split_offset_0_t_uint256(_913)
                        let expr_31160 := _914
                        /// @src 66:2904:2954  "userStatus.lastFeeGrowth == tokenStatus.debtGrowth"
                        let expr_31161 := eq(cleanup_t_uint256(expr_31158), cleanup_t_uint256(expr_31160))
                        /// @src 66:2896:2961  "require(userStatus.lastFeeGrowth == tokenStatus.debtGrowth, \"S2\")"
                        require_helper_t_stringliteral_589608beb3b756e6393b620b3e875b071cf25732f0ed93d9d8e6a0f9b43cc3ea(expr_31161)
                        /// @src 66:2847:2972  "if (userStatus.positionAmount < 0) {..."
                    }
                    /// @src 66:2715:2972  "if (userStatus.positionAmount > 0) {..."
                }
                default {
                    /// @src 66:2772:2782  "userStatus"
                    let _915_slot := var_userStatus_31129_slot
                    let expr_31143_slot := _915_slot
                    /// @src 66:2772:2796  "userStatus.lastFeeGrowth"
                    let _916 := add(expr_31143_slot, 1)
                    let _917 := read_from_storage_split_offset_0_t_uint256(_916)
                    let expr_31144 := _917
                    /// @src 66:2800:2811  "tokenStatus"
                    let _918_slot := var_tokenStatus_31126_slot
                    let expr_31145_slot := _918_slot
                    /// @src 66:2800:2823  "tokenStatus.assetGrowth"
                    let _919 := add(expr_31145_slot, 4)
                    let _920 := read_from_storage_split_offset_0_t_uint256(_919)
                    let expr_31146 := _920
                    /// @src 66:2772:2823  "userStatus.lastFeeGrowth == tokenStatus.assetGrowth"
                    let expr_31147 := eq(cleanup_t_uint256(expr_31144), cleanup_t_uint256(expr_31146))
                    /// @src 66:2764:2830  "require(userStatus.lastFeeGrowth == tokenStatus.assetGrowth, \"S2\")"
                    require_helper_t_stringliteral_589608beb3b756e6393b620b3e875b071cf25732f0ed93d9d8e6a0f9b43cc3ea(expr_31147)
                    /// @src 66:2715:2972  "if (userStatus.positionAmount > 0) {..."
                }
                /// @src 66:2982:2999  "int256 openAmount"
                let var_openAmount_31169
                let zero_t_int256_921 := zero_value_for_split_t_int256()
                var_openAmount_31169 := zero_t_int256_921
                /// @src 66:3009:3027  "int256 closeAmount"
                let var_closeAmount_31172
                let zero_t_int256_922 := zero_value_for_split_t_int256()
                var_closeAmount_31172 := zero_t_int256_922
                /// @src 66:3053:3063  "userStatus"
                let _923_slot := var_userStatus_31129_slot
                let expr_31175_slot := _923_slot
                /// @src 66:3053:3078  "userStatus.positionAmount"
                let _924 := add(expr_31175_slot, 0)
                let _925 := read_from_storage_split_offset_0_t_int256(_924)
                let expr_31176 := _925
                /// @src 66:3080:3087  "_amount"
                let _926 := var__amount_31131
                let expr_31177 := _926
                /// @src 66:3042:3088  "isSameSign(userStatus.positionAmount, _amount)"
                let expr_31178 := fun_isSameSign_31123(expr_31176, expr_31177)
                /// @src 66:3038:3418  "if (isSameSign(userStatus.positionAmount, _amount)) {..."
                switch expr_31178
                case 0 {
                    /// @src 66:3159:3169  "userStatus"
                    let _927_slot := var_userStatus_31129_slot
                    let expr_31184_slot := _927_slot
                    /// @src 66:3159:3184  "userStatus.positionAmount"
                    let _928 := add(expr_31184_slot, 0)
                    let _929 := read_from_storage_split_offset_0_t_int256(_928)
                    let expr_31185 := _929
                    /// @src 66:3159:3188  "userStatus.positionAmount.abs"
                    let expr_31186_self := expr_31185
                    /// @src 66:3159:3190  "userStatus.positionAmount.abs()"
                    let expr_31187 := fun_abs_32143(expr_31186_self)
                    /// @src 66:3194:3201  "_amount"
                    let _930 := var__amount_31131
                    let expr_31188 := _930
                    /// @src 66:3194:3205  "_amount.abs"
                    let expr_31189_self := expr_31188
                    /// @src 66:3194:3207  "_amount.abs()"
                    let expr_31190 := fun_abs_32143(expr_31189_self)
                    /// @src 66:3159:3207  "userStatus.positionAmount.abs() >= _amount.abs()"
                    let expr_31191 := iszero(lt(cleanup_t_uint256(expr_31187), cleanup_t_uint256(expr_31190)))
                    /// @src 66:3155:3408  "if (userStatus.positionAmount.abs() >= _amount.abs()) {..."
                    switch expr_31191
                    case 0 {
                        /// @src 66:3300:3310  "userStatus"
                        let _931_slot := var_userStatus_31129_slot
                        let expr_31198_slot := _931_slot
                        /// @src 66:3300:3325  "userStatus.positionAmount"
                        let _932 := add(expr_31198_slot, 0)
                        let _933 := read_from_storage_split_offset_0_t_int256(_932)
                        let expr_31199 := _933
                        /// @src 66:3328:3335  "_amount"
                        let _934 := var__amount_31131
                        let expr_31200 := _934
                        /// @src 66:3300:3335  "userStatus.positionAmount + _amount"
                        let expr_31201 := checked_add_t_int256(expr_31199, expr_31200)

                        /// @src 66:3287:3335  "openAmount = userStatus.positionAmount + _amount"
                        var_openAmount_31169 := expr_31201
                        let expr_31202 := expr_31201
                        /// @src 66:3368:3378  "userStatus"
                        let _935_slot := var_userStatus_31129_slot
                        let expr_31205_slot := _935_slot
                        /// @src 66:3368:3393  "userStatus.positionAmount"
                        let _936 := add(expr_31205_slot, 0)
                        let _937 := read_from_storage_split_offset_0_t_int256(_936)
                        let expr_31206 := _937
                        /// @src 66:3367:3393  "-userStatus.positionAmount"
                        let expr_31207 := negate_t_int256(expr_31206)
                        /// @src 66:3353:3393  "closeAmount = -userStatus.positionAmount"
                        var_closeAmount_31172 := expr_31207
                        let expr_31208 := expr_31207
                        /// @src 66:3155:3408  "if (userStatus.positionAmount.abs() >= _amount.abs()) {..."
                    }
                    default {
                        /// @src 66:3241:3248  "_amount"
                        let _938 := var__amount_31131
                        let expr_31193 := _938
                        /// @src 66:3227:3248  "closeAmount = _amount"
                        var_closeAmount_31172 := expr_31193
                        let expr_31194 := expr_31193
                        /// @src 66:3155:3408  "if (userStatus.positionAmount.abs() >= _amount.abs()) {..."
                    }
                    /// @src 66:3038:3418  "if (isSameSign(userStatus.positionAmount, _amount)) {..."
                }
                default {
                    /// @src 66:3117:3124  "_amount"
                    let _939 := var__amount_31131
                    let expr_31180 := _939
                    /// @src 66:3104:3124  "openAmount = _amount"
                    var_openAmount_31169 := expr_31180
                    let expr_31181 := expr_31180
                    /// @src 66:3038:3418  "if (isSameSign(userStatus.positionAmount, _amount)) {..."
                }
                /// @src 66:3432:3443  "closeAmount"
                let _940 := var_closeAmount_31172
                let expr_31214 := _940
                /// @src 66:3446:3447  "0"
                let expr_31215 := 0x00
                /// @src 66:3432:3447  "closeAmount > 0"
                let expr_31216 := sgt(cleanup_t_int256(expr_31214), convert_t_rational_0_by_1_to_t_int256(expr_31215))
                /// @src 66:3428:3778  "if (closeAmount > 0) {..."
                switch expr_31216
                case 0 {
                    /// @src 66:3539:3550  "closeAmount"
                    let _941 := var_closeAmount_31172
                    let expr_31227 := _941
                    /// @src 66:3553:3554  "0"
                    let expr_31228 := 0x00
                    /// @src 66:3539:3554  "closeAmount < 0"
                    let expr_31229 := slt(cleanup_t_int256(expr_31227), convert_t_rational_0_by_1_to_t_int256(expr_31228))
                    /// @src 66:3535:3778  "if (closeAmount < 0) {..."
                    if expr_31229 {
                        /// @src 66:3651:3662  "tokenStatus"
                        let _942_slot := var_tokenStatus_31126_slot
                        let expr_31232_slot := _942_slot
                        /// @src 66:3623:3663  "getAvailableCollateralValue(tokenStatus)"
                        let _943_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31232_slot)
                        let expr_31233 := fun_getAvailableCollateralValue_31623(_943_mpos)
                        /// @src 66:3676:3687  "closeAmount"
                        let _944 := var_closeAmount_31172
                        let expr_31236 := _944
                        /// @src 66:3675:3687  "-closeAmount"
                        let expr_31237 := negate_t_int256(expr_31236)
                        /// @src 66:3667:3688  "uint256(-closeAmount)"
                        let expr_31238 := convert_t_int256_to_t_uint256(expr_31237)
                        /// @src 66:3623:3688  "getAvailableCollateralValue(tokenStatus) >= uint256(-closeAmount)"
                        let expr_31239 := iszero(lt(cleanup_t_uint256(expr_31233), cleanup_t_uint256(expr_31238)))
                        /// @src 66:3615:3695  "require(getAvailableCollateralValue(tokenStatus) >= uint256(-closeAmount), \"S0\")"
                        require_helper_t_stringliteral_ee59f4ed6369731f984a173139e4b68cb3b2efb80cd22d9b1bbfa6e0a94af1c1(expr_31239)
                        /// @src 66:3755:3766  "closeAmount"
                        let _945 := var_closeAmount_31172
                        let expr_31248 := _945
                        /// @src 66:3754:3766  "-closeAmount"
                        let expr_31249 := negate_t_int256(expr_31248)
                        /// @src 66:3746:3767  "uint256(-closeAmount)"
                        let expr_31250 := convert_t_int256_to_t_uint256(expr_31249)
                        /// @src 66:3710:3721  "tokenStatus"
                        let _946_slot := var_tokenStatus_31126_slot
                        let expr_31243_slot := _946_slot
                        /// @src 66:3710:3742  "tokenStatus.totalNormalDeposited"
                        let _947 := add(expr_31243_slot, 1)
                        /// @src 66:3710:3767  "tokenStatus.totalNormalDeposited -= uint256(-closeAmount)"
                        let _948 := read_from_storage_split_offset_0_t_uint256(_947)
                        let expr_31251 := checked_sub_t_uint256(_948, expr_31250)

                        update_storage_value_offset_0_t_uint256_to_t_uint256(_947, expr_31251)
                        /// @src 66:3535:3778  "if (closeAmount < 0) {..."
                    }
                    /// @src 66:3428:3778  "if (closeAmount > 0) {..."
                }
                default {
                    /// @src 66:3506:3517  "closeAmount"
                    let _949 := var_closeAmount_31172
                    let expr_31222 := _949
                    /// @src 66:3498:3518  "uint256(closeAmount)"
                    let expr_31223 := convert_t_int256_to_t_uint256(expr_31222)
                    /// @src 66:3463:3474  "tokenStatus"
                    let _950_slot := var_tokenStatus_31126_slot
                    let expr_31217_slot := _950_slot
                    /// @src 66:3463:3494  "tokenStatus.totalNormalBorrowed"
                    let _951 := add(expr_31217_slot, 2)
                    /// @src 66:3463:3518  "tokenStatus.totalNormalBorrowed -= uint256(closeAmount)"
                    let _952 := read_from_storage_split_offset_0_t_uint256(_951)
                    let expr_31224 := checked_sub_t_uint256(_952, expr_31223)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(_951, expr_31224)
                    /// @src 66:3428:3778  "if (closeAmount > 0) {..."
                }
                /// @src 66:3792:3802  "openAmount"
                let _953 := var_openAmount_31169
                let expr_31256 := _953
                /// @src 66:3805:3806  "0"
                let expr_31257 := 0x00
                /// @src 66:3792:3806  "openAmount > 0"
                let expr_31258 := sgt(cleanup_t_int256(expr_31256), convert_t_rational_0_by_1_to_t_int256(expr_31257))
                /// @src 66:3788:4217  "if (openAmount > 0) {..."
                switch expr_31258
                case 0 {
                    /// @src 66:3963:3973  "openAmount"
                    let _954 := var_openAmount_31169
                    let expr_31276 := _954
                    /// @src 66:3976:3977  "0"
                    let expr_31277 := 0x00
                    /// @src 66:3963:3977  "openAmount < 0"
                    let expr_31278 := slt(cleanup_t_int256(expr_31276), convert_t_rational_0_by_1_to_t_int256(expr_31277))
                    /// @src 66:3959:4217  "if (openAmount < 0) {..."
                    if expr_31278 {
                        /// @src 66:4029:4040  "tokenStatus"
                        let _955_slot := var_tokenStatus_31126_slot
                        let expr_31281_slot := _955_slot
                        /// @src 66:4001:4041  "getAvailableCollateralValue(tokenStatus)"
                        let _956_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31281_slot)
                        let expr_31282 := fun_getAvailableCollateralValue_31623(_956_mpos)
                        /// @src 66:4054:4064  "openAmount"
                        let _957 := var_openAmount_31169
                        let expr_31285 := _957
                        /// @src 66:4053:4064  "-openAmount"
                        let expr_31286 := negate_t_int256(expr_31285)
                        /// @src 66:4045:4065  "uint256(-openAmount)"
                        let expr_31287 := convert_t_int256_to_t_uint256(expr_31286)
                        /// @src 66:4001:4065  "getAvailableCollateralValue(tokenStatus) >= uint256(-openAmount)"
                        let expr_31288 := iszero(lt(cleanup_t_uint256(expr_31282), cleanup_t_uint256(expr_31287)))
                        /// @src 66:3993:4072  "require(getAvailableCollateralValue(tokenStatus) >= uint256(-openAmount), \"S0\")"
                        require_helper_t_stringliteral_ee59f4ed6369731f984a173139e4b68cb3b2efb80cd22d9b1bbfa6e0a94af1c1(expr_31288)
                        /// @src 66:4131:4141  "openAmount"
                        let _958 := var_openAmount_31169
                        let expr_31297 := _958
                        /// @src 66:4130:4141  "-openAmount"
                        let expr_31298 := negate_t_int256(expr_31297)
                        /// @src 66:4122:4142  "uint256(-openAmount)"
                        let expr_31299 := convert_t_int256_to_t_uint256(expr_31298)
                        /// @src 66:4087:4098  "tokenStatus"
                        let _959_slot := var_tokenStatus_31126_slot
                        let expr_31292_slot := _959_slot
                        /// @src 66:4087:4118  "tokenStatus.totalNormalBorrowed"
                        let _960 := add(expr_31292_slot, 2)
                        /// @src 66:4087:4142  "tokenStatus.totalNormalBorrowed += uint256(-openAmount)"
                        let _961 := read_from_storage_split_offset_0_t_uint256(_960)
                        let expr_31300 := checked_add_t_uint256(_961, expr_31299)

                        update_storage_value_offset_0_t_uint256_to_t_uint256(_960, expr_31300)
                        /// @src 66:4184:4195  "tokenStatus"
                        let _962_slot := var_tokenStatus_31126_slot
                        let expr_31305_slot := _962_slot
                        /// @src 66:4184:4206  "tokenStatus.debtGrowth"
                        let _963 := add(expr_31305_slot, 5)
                        let _964 := read_from_storage_split_offset_0_t_uint256(_963)
                        let expr_31306 := _964
                        /// @src 66:4157:4167  "userStatus"
                        let _965_slot := var_userStatus_31129_slot
                        let expr_31302_slot := _965_slot
                        /// @src 66:4157:4181  "userStatus.lastFeeGrowth"
                        let _966 := add(expr_31302_slot, 1)
                        /// @src 66:4157:4206  "userStatus.lastFeeGrowth = tokenStatus.debtGrowth"
                        update_storage_value_offset_0_t_uint256_to_t_uint256(_966, expr_31306)
                        let expr_31307 := expr_31306
                        /// @src 66:3959:4217  "if (openAmount < 0) {..."
                    }
                    /// @src 66:3788:4217  "if (openAmount > 0) {..."
                }
                default {
                    /// @src 66:3866:3876  "openAmount"
                    let _967 := var_openAmount_31169
                    let expr_31264 := _967
                    /// @src 66:3858:3877  "uint256(openAmount)"
                    let expr_31265 := convert_t_int256_to_t_uint256(expr_31264)
                    /// @src 66:3822:3833  "tokenStatus"
                    let _968_slot := var_tokenStatus_31126_slot
                    let expr_31259_slot := _968_slot
                    /// @src 66:3822:3854  "tokenStatus.totalNormalDeposited"
                    let _969 := add(expr_31259_slot, 1)
                    /// @src 66:3822:3877  "tokenStatus.totalNormalDeposited += uint256(openAmount)"
                    let _970 := read_from_storage_split_offset_0_t_uint256(_969)
                    let expr_31266 := checked_add_t_uint256(_970, expr_31265)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(_969, expr_31266)
                    /// @src 66:3919:3930  "tokenStatus"
                    let _971_slot := var_tokenStatus_31126_slot
                    let expr_31271_slot := _971_slot
                    /// @src 66:3919:3942  "tokenStatus.assetGrowth"
                    let _972 := add(expr_31271_slot, 4)
                    let _973 := read_from_storage_split_offset_0_t_uint256(_972)
                    let expr_31272 := _973
                    /// @src 66:3892:3902  "userStatus"
                    let _974_slot := var_userStatus_31129_slot
                    let expr_31268_slot := _974_slot
                    /// @src 66:3892:3916  "userStatus.lastFeeGrowth"
                    let _975 := add(expr_31268_slot, 1)
                    /// @src 66:3892:3942  "userStatus.lastFeeGrowth = tokenStatus.assetGrowth"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_975, expr_31272)
                    let expr_31273 := expr_31272
                    /// @src 66:3788:4217  "if (openAmount > 0) {..."
                }
                /// @src 66:4256:4263  "_amount"
                let _976 := var__amount_31131
                let expr_31315 := _976
                /// @src 66:4227:4237  "userStatus"
                let _977_slot := var_userStatus_31129_slot
                let expr_31312_slot := _977_slot
                /// @src 66:4227:4252  "userStatus.positionAmount"
                let _978 := add(expr_31312_slot, 0)
                /// @src 66:4227:4263  "userStatus.positionAmount += _amount"
                let _979 := read_from_storage_split_offset_0_t_int256(_978)
                let expr_31316 := checked_add_t_int256(_979, expr_31315)

                update_storage_value_offset_0_t_int256_to_t_int256(_978, expr_31316)
                /// @src 66:4306:4313  "_pairId"
                let _980 := var__pairId_31133
                let expr_31319 := _980
                /// @src 66:4315:4324  "_isStable"
                let _981 := var__isStable_31135
                let expr_31320 := _981
                /// @src 66:4326:4336  "openAmount"
                let _982 := var_openAmount_31169
                let expr_31321 := _982
                /// @src 66:4338:4349  "closeAmount"
                let _983 := var_closeAmount_31172
                let expr_31322 := _983
                /// @src 66:4279:4350  "ScaledAssetPositionUpdated(_pairId, _isStable, openAmount, closeAmount)"
                let _984 := 0xfdb6fb8e49892b73d8187dbef8b7b09543994120ac9d5bf868f3d6baba1dba0d
                let _985 := convert_t_uint256_to_t_uint256(expr_31319)
                {
                    let _986 := allocate_unbounded()
                    let _987 := abi_encode_tuple_t_bool_t_int256_t_int256__to_t_bool_t_int256_t_int256__fromStack(_986 , expr_31320, expr_31321, expr_31322)
                    log2(_986, sub(_987, _986) , _984, _985)
                }
            }
            /// @src 68:814:5932  "library Trade {..."

            function convert_t_struct$_UserStatus_$30939_storage_ptr_to_t_struct$_UserStatus_$30939_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_UserStatus_$30939_memory_ptr(value)

            }

            /// @ast-id 31406
            /// @src 66:4790:5237  "function settleUserFee(ScaledAsset.AssetStatus memory _assetStatus, ScaledAsset.UserStatus storage _userStatus)..."
            function fun_settleUserFee_31406(var__assetStatus_31369_mpos, var__userStatus_31372_slot) -> var_interestFee_31375 {
                /// @src 66:4936:4954  "int256 interestFee"
                let zero_t_int256_988 := zero_value_for_split_t_int256()
                var_interestFee_31375 := zero_t_int256_988

                /// @src 66:4999:5011  "_assetStatus"
                let _989_mpos := var__assetStatus_31369_mpos
                let expr_31379_mpos := _989_mpos
                /// @src 66:5013:5024  "_userStatus"
                let _990_slot := var__userStatus_31372_slot
                let expr_31380_slot := _990_slot
                /// @src 66:4984:5025  "computeUserFee(_assetStatus, _userStatus)"
                let _991_mpos := convert_t_struct$_UserStatus_$30939_storage_ptr_to_t_struct$_UserStatus_$30939_memory_ptr(expr_31380_slot)
                let expr_31381 := fun_computeUserFee_31366(expr_31379_mpos, _991_mpos)
                /// @src 66:4970:5025  "interestFee = computeUserFee(_assetStatus, _userStatus)"
                var_interestFee_31375 := expr_31381
                let expr_31382 := expr_31381
                /// @src 66:5040:5051  "_userStatus"
                let _992_slot := var__userStatus_31372_slot
                let expr_31384_slot := _992_slot
                /// @src 66:5040:5066  "_userStatus.positionAmount"
                let _993 := add(expr_31384_slot, 0)
                let _994 := read_from_storage_split_offset_0_t_int256(_993)
                let expr_31385 := _994
                /// @src 66:5069:5070  "0"
                let expr_31386 := 0x00
                /// @src 66:5040:5070  "_userStatus.positionAmount > 0"
                let expr_31387 := sgt(cleanup_t_int256(expr_31385), convert_t_rational_0_by_1_to_t_int256(expr_31386))
                /// @src 66:5036:5231  "if (_userStatus.positionAmount > 0) {..."
                switch expr_31387
                case 0 {
                    /// @src 66:5197:5209  "_assetStatus"
                    let _995_mpos := var__assetStatus_31369_mpos
                    let expr_31399_mpos := _995_mpos
                    /// @src 66:5197:5220  "_assetStatus.debtGrowth"
                    let _996 := add(expr_31399_mpos, 160)
                    let _997 := read_from_memoryt_uint256(_996)
                    let expr_31400 := _997
                    /// @src 66:5169:5180  "_userStatus"
                    let _998_slot := var__userStatus_31372_slot
                    let expr_31396_slot := _998_slot
                    /// @src 66:5169:5194  "_userStatus.lastFeeGrowth"
                    let _999 := add(expr_31396_slot, 1)
                    /// @src 66:5169:5220  "_userStatus.lastFeeGrowth = _assetStatus.debtGrowth"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_999, expr_31400)
                    let expr_31401 := expr_31400
                    /// @src 66:5036:5231  "if (_userStatus.positionAmount > 0) {..."
                }
                default {
                    /// @src 66:5114:5126  "_assetStatus"
                    let _1000_mpos := var__assetStatus_31369_mpos
                    let expr_31391_mpos := _1000_mpos
                    /// @src 66:5114:5138  "_assetStatus.assetGrowth"
                    let _1001 := add(expr_31391_mpos, 128)
                    let _1002 := read_from_memoryt_uint256(_1001)
                    let expr_31392 := _1002
                    /// @src 66:5086:5097  "_userStatus"
                    let _1003_slot := var__userStatus_31372_slot
                    let expr_31388_slot := _1003_slot
                    /// @src 66:5086:5111  "_userStatus.lastFeeGrowth"
                    let _1004 := add(expr_31388_slot, 1)
                    /// @src 66:5086:5138  "_userStatus.lastFeeGrowth = _assetStatus.assetGrowth"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_1004, expr_31392)
                    let expr_31393 := expr_31392
                    /// @src 66:5036:5231  "if (_userStatus.positionAmount > 0) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            function shift_left_48(value) -> newValue {
                newValue :=

                shl(48, value)

            }

            function update_byte_slice_8_shift_6(value, toInsert) -> result {
                let mask := 0xffffffffffffffff000000000000
                toInsert := shift_left_48(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint64_to_t_uint64(value) -> converted {
                converted := cleanup_t_uint64(identity(cleanup_t_uint64(value)))
            }

            function prepare_store_t_uint64(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_6_t_uint64_to_t_uint64(slot, value_0) {
                let convertedValue_0 := convert_t_uint64_to_t_uint64(value_0)
                sstore(slot, update_byte_slice_8_shift_6(sload(slot), prepare_store_t_uint64(convertedValue_0)))
            }

            /// @ast-id 33798
            /// @src 62:5893:6825  "function settleRebalanceInterest(..."
            function fun_settleRebalanceInterest_33798(var_pairId_33733, var_assetStatus_33736_slot, var_rebalanceFeeGrowthCache_33741_slot, var_userStatus_33744_slot) -> var_rebalanceInterestBase_33747, var_rebalanceInterestQuote_33749 {
                /// @src 62:6166:6194  "int256 rebalanceInterestBase"
                let zero_t_int256_1005 := zero_value_for_split_t_int256()
                var_rebalanceInterestBase_33747 := zero_t_int256_1005
                /// @src 62:6196:6225  "int256 rebalanceInterestQuote"
                let zero_t_int256_1006 := zero_value_for_split_t_int256()
                var_rebalanceInterestQuote_33749 := zero_t_int256_1006

                /// @src 62:6241:6251  "userStatus"
                let _1007_slot := var_userStatus_33744_slot
                let expr_33751_slot := _1007_slot
                /// @src 62:6241:6260  "userStatus.sqrtPerp"
                let _1008 := add(expr_33751_slot, 4)
                let _1009_slot := _1008
                let expr_33752_slot := _1009_slot
                /// @src 62:6241:6267  "userStatus.sqrtPerp.amount"
                let _1010 := add(expr_33752_slot, 0)
                let _1011 := read_from_storage_split_offset_0_t_int256(_1010)
                let expr_33753 := _1011
                /// @src 62:6271:6272  "0"
                let expr_33754 := 0x00
                /// @src 62:6241:6272  "userStatus.sqrtPerp.amount != 0"
                let expr_33755 := iszero(eq(cleanup_t_int256(expr_33753), convert_t_rational_0_by_1_to_t_int256(expr_33754)))
                /// @src 62:6241:6330  "userStatus.sqrtPerp.amount != 0 && userStatus.lastNumRebalance < assetStatus.numRebalance"
                let expr_33761 := expr_33755
                if expr_33761 {
                    /// @src 62:6276:6286  "userStatus"
                    let _1012_slot := var_userStatus_33744_slot
                    let expr_33756_slot := _1012_slot
                    /// @src 62:6276:6303  "userStatus.lastNumRebalance"
                    let _1013 := add(expr_33756_slot, 1)
                    let _1014 := read_from_storage_split_offset_6_t_uint64(_1013)
                    let expr_33757 := _1014
                    /// @src 62:6306:6317  "assetStatus"
                    let _1015_slot := var_assetStatus_33736_slot
                    let expr_33758_slot := _1015_slot
                    /// @src 62:6306:6330  "assetStatus.numRebalance"
                    let _1016 := add(expr_33758_slot, 1)
                    let _1017 := read_from_storage_split_offset_0_t_uint64(_1016)
                    let expr_33759 := _1017
                    /// @src 62:6276:6330  "userStatus.lastNumRebalance < assetStatus.numRebalance"
                    let expr_33760 := lt(cleanup_t_uint64(expr_33757), cleanup_t_uint64(expr_33759))
                    /// @src 62:6241:6330  "userStatus.sqrtPerp.amount != 0 && userStatus.lastNumRebalance < assetStatus.numRebalance"
                    expr_33761 := expr_33760
                }
                /// @src 62:6237:6658  "if (userStatus.sqrtPerp.amount != 0 && userStatus.lastNumRebalance < assetStatus.numRebalance) {..."
                if expr_33761 {
                    /// @src 62:6437:6443  "pairId"
                    let _1018 := var_pairId_33733
                    let expr_33766 := _1018
                    /// @src 62:6445:6456  "assetStatus"
                    let _1019_slot := var_assetStatus_33736_slot
                    let expr_33767_slot := _1019_slot
                    /// @src 62:6458:6481  "rebalanceFeeGrowthCache"
                    let _1020_slot := var_rebalanceFeeGrowthCache_33741_slot
                    let expr_33768_slot := _1020_slot
                    /// @src 62:6483:6493  "userStatus"
                    let _1021_slot := var_userStatus_33744_slot
                    let expr_33769_slot := _1021_slot
                    /// @src 62:6412:6494  "computeRebalanceInterest(pairId, assetStatus, rebalanceFeeGrowthCache, userStatus)"
                    let _1022_mpos := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(expr_33767_slot)
                    let _1023_mpos := convert_t_struct$_UserStatus_$13665_storage_ptr_to_t_struct$_UserStatus_$13665_memory_ptr(expr_33769_slot)
                    let expr_33770_component_1, expr_33770_component_2 := fun_computeRebalanceInterest_33730(expr_33766, _1022_mpos, expr_33768_slot, _1023_mpos)
                    /// @src 62:6346:6494  "(rebalanceInterestBase, rebalanceInterestQuote) =..."
                    var_rebalanceInterestQuote_33749 := expr_33770_component_2
                    var_rebalanceInterestBase_33747 := expr_33770_component_1
                    /// @src 62:6535:6539  "Math"
                    let expr_33775_address := linkersymbol("src/libraries/math/Math.sol:Math")
                    /// @src 62:6544:6554  "userStatus"
                    let _1024_slot := var_userStatus_33744_slot
                    let expr_33777_slot := _1024_slot
                    /// @src 62:6544:6563  "userStatus.sqrtPerp"
                    let _1025 := add(expr_33777_slot, 4)
                    let _1026_slot := _1025
                    let expr_33778_slot := _1026_slot
                    /// @src 62:6544:6570  "userStatus.sqrtPerp.amount"
                    let _1027 := add(expr_33778_slot, 0)
                    let _1028 := read_from_storage_split_offset_0_t_int256(_1027)
                    let expr_33779 := _1028
                    /// @src 62:6535:6571  "Math.abs(userStatus.sqrtPerp.amount)"
                    let expr_33780 := fun_abs_32143(expr_33779)
                    /// @src 62:6509:6571  "uint256 rebalanceAmount = Math.abs(userStatus.sqrtPerp.amount)"
                    let var_rebalanceAmount_33774 := expr_33780
                    /// @src 62:6632:6647  "rebalanceAmount"
                    let _1029 := var_rebalanceAmount_33774
                    let expr_33785 := _1029
                    /// @src 62:6586:6597  "assetStatus"
                    let _1030_slot := var_assetStatus_33736_slot
                    let expr_33782_slot := _1030_slot
                    /// @src 62:6586:6628  "assetStatus.lastRebalanceTotalSquartAmount"
                    let _1031 := add(expr_33782_slot, 4)
                    /// @src 62:6586:6647  "assetStatus.lastRebalanceTotalSquartAmount -= rebalanceAmount"
                    let _1032 := read_from_storage_split_offset_0_t_uint256(_1031)
                    let expr_33786 := checked_sub_t_uint256(_1032, expr_33785)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(_1031, expr_33786)
                    /// @src 62:6237:6658  "if (userStatus.sqrtPerp.amount != 0 && userStatus.lastNumRebalance < assetStatus.numRebalance) {..."
                }
                /// @src 62:6794:6805  "assetStatus"
                let _1033_slot := var_assetStatus_33736_slot
                let expr_33793_slot := _1033_slot
                /// @src 62:6794:6818  "assetStatus.numRebalance"
                let _1034 := add(expr_33793_slot, 1)
                let _1035 := read_from_storage_split_offset_0_t_uint64(_1034)
                let expr_33794 := _1035
                /// @src 62:6764:6774  "userStatus"
                let _1036_slot := var_userStatus_33744_slot
                let expr_33790_slot := _1036_slot
                /// @src 62:6764:6791  "userStatus.lastNumRebalance"
                let _1037 := add(expr_33790_slot, 1)
                /// @src 62:6764:6818  "userStatus.lastNumRebalance = assetStatus.numRebalance"
                update_storage_value_offset_6_t_uint64_to_t_uint64(_1037, expr_33794)
                let expr_33795 := expr_33794

            }
            /// @src 68:814:5932  "library Trade {..."

            function convert_t_struct$_SqrtPositionStatus_$13597_storage_ptr_to_t_struct$_SqrtPositionStatus_$13597_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_SqrtPositionStatus_$13597_memory_ptr(value)

            }

            /// @ast-id 33645
            /// @src 62:3894:4604  "function settlePremium(DataType.PairStatus memory baseAssetStatus, Perp.SqrtPositionStatus storage sqrtPerp)..."
            function fun_settlePremium_33645(var_baseAssetStatus_33581_mpos, var_sqrtPerp_33584_slot) -> var_feeUnderlying_33587, var_feeStable_33589 {
                /// @src 62:4037:4057  "int256 feeUnderlying"
                let zero_t_int256_1038 := zero_value_for_split_t_int256()
                var_feeUnderlying_33587 := zero_t_int256_1038
                /// @src 62:4059:4075  "int256 feeStable"
                let zero_t_int256_1039 := zero_value_for_split_t_int256()
                var_feeStable_33589 := zero_t_int256_1039

                /// @src 62:4135:4150  "baseAssetStatus"
                let _1040_mpos := var_baseAssetStatus_33581_mpos
                let expr_33595_mpos := _1040_mpos
                /// @src 62:4152:4160  "sqrtPerp"
                let _1041_slot := var_sqrtPerp_33584_slot
                let expr_33596_slot := _1041_slot
                /// @src 62:4120:4161  "computePremium(baseAssetStatus, sqrtPerp)"
                let _1042_mpos := convert_t_struct$_SqrtPositionStatus_$13597_storage_ptr_to_t_struct$_SqrtPositionStatus_$13597_memory_ptr(expr_33596_slot)
                let expr_33597_component_1, expr_33597_component_2 := fun_computePremium_33578(expr_33595_mpos, _1042_mpos)
                /// @src 62:4091:4161  "(feeUnderlying, feeStable) = computePremium(baseAssetStatus, sqrtPerp)"
                var_feeStable_33589 := expr_33597_component_2
                var_feeUnderlying_33587 := expr_33597_component_1
                /// @src 62:4176:4184  "sqrtPerp"
                let _1043_slot := var_sqrtPerp_33584_slot
                let expr_33600_slot := _1043_slot
                /// @src 62:4176:4191  "sqrtPerp.amount"
                let _1044 := add(expr_33600_slot, 0)
                let _1045 := read_from_storage_split_offset_0_t_int256(_1044)
                let expr_33601 := _1045
                /// @src 62:4194:4195  "0"
                let expr_33602 := 0x00
                /// @src 62:4176:4195  "sqrtPerp.amount > 0"
                let expr_33603 := sgt(cleanup_t_int256(expr_33601), convert_t_rational_0_by_1_to_t_int256(expr_33602))
                /// @src 62:4172:4598  "if (sqrtPerp.amount > 0) {..."
                switch expr_33603
                case 0 {
                    /// @src 62:4382:4390  "sqrtPerp"
                    let _1046_slot := var_sqrtPerp_33584_slot
                    let expr_33621_slot := _1046_slot
                    /// @src 62:4382:4397  "sqrtPerp.amount"
                    let _1047 := add(expr_33621_slot, 0)
                    let _1048 := read_from_storage_split_offset_0_t_int256(_1047)
                    let expr_33622 := _1048
                    /// @src 62:4400:4401  "0"
                    let expr_33623 := 0x00
                    /// @src 62:4382:4401  "sqrtPerp.amount < 0"
                    let expr_33624 := slt(cleanup_t_int256(expr_33622), convert_t_rational_0_by_1_to_t_int256(expr_33623))
                    /// @src 62:4378:4598  "if (sqrtPerp.amount < 0) {..."
                    if expr_33624 {
                        /// @src 62:4443:4458  "baseAssetStatus"
                        let _1049_mpos := var_baseAssetStatus_33581_mpos
                        let expr_33628_mpos := _1049_mpos
                        /// @src 62:4443:4474  "baseAssetStatus.sqrtAssetStatus"
                        let _1050 := add(expr_33628_mpos, 192)
                        let _1051_mpos := mload(_1050)
                        let expr_33629_mpos := _1051_mpos
                        /// @src 62:4443:4495  "baseAssetStatus.sqrtAssetStatus.borrowPremium0Growth"
                        let _1052 := add(expr_33629_mpos, 288)
                        let _1053 := read_from_memoryt_uint256(_1052)
                        let expr_33630 := _1053
                        /// @src 62:4417:4425  "sqrtPerp"
                        let _1054_slot := var_sqrtPerp_33584_slot
                        let expr_33625_slot := _1054_slot
                        /// @src 62:4417:4440  "sqrtPerp.entryTradeFee0"
                        let _1055 := add(expr_33625_slot, 4)
                        /// @src 62:4417:4495  "sqrtPerp.entryTradeFee0 = baseAssetStatus.sqrtAssetStatus.borrowPremium0Growth"
                        update_storage_value_offset_0_t_uint256_to_t_uint256(_1055, expr_33630)
                        let expr_33631 := expr_33630
                        /// @src 62:4535:4550  "baseAssetStatus"
                        let _1056_mpos := var_baseAssetStatus_33581_mpos
                        let expr_33636_mpos := _1056_mpos
                        /// @src 62:4535:4566  "baseAssetStatus.sqrtAssetStatus"
                        let _1057 := add(expr_33636_mpos, 192)
                        let _1058_mpos := mload(_1057)
                        let expr_33637_mpos := _1058_mpos
                        /// @src 62:4535:4587  "baseAssetStatus.sqrtAssetStatus.borrowPremium1Growth"
                        let _1059 := add(expr_33637_mpos, 320)
                        let _1060 := read_from_memoryt_uint256(_1059)
                        let expr_33638 := _1060
                        /// @src 62:4509:4517  "sqrtPerp"
                        let _1061_slot := var_sqrtPerp_33584_slot
                        let expr_33633_slot := _1061_slot
                        /// @src 62:4509:4532  "sqrtPerp.entryTradeFee1"
                        let _1062 := add(expr_33633_slot, 5)
                        /// @src 62:4509:4587  "sqrtPerp.entryTradeFee1 = baseAssetStatus.sqrtAssetStatus.borrowPremium1Growth"
                        update_storage_value_offset_0_t_uint256_to_t_uint256(_1062, expr_33638)
                        let expr_33639 := expr_33638
                        /// @src 62:4378:4598  "if (sqrtPerp.amount < 0) {..."
                    }
                    /// @src 62:4172:4598  "if (sqrtPerp.amount > 0) {..."
                }
                default {
                    /// @src 62:4237:4252  "baseAssetStatus"
                    let _1063_mpos := var_baseAssetStatus_33581_mpos
                    let expr_33607_mpos := _1063_mpos
                    /// @src 62:4237:4268  "baseAssetStatus.sqrtAssetStatus"
                    let _1064 := add(expr_33607_mpos, 192)
                    let _1065_mpos := mload(_1064)
                    let expr_33608_mpos := _1065_mpos
                    /// @src 62:4237:4279  "baseAssetStatus.sqrtAssetStatus.fee0Growth"
                    let _1066 := add(expr_33608_mpos, 352)
                    let _1067 := read_from_memoryt_uint256(_1066)
                    let expr_33609 := _1067
                    /// @src 62:4211:4219  "sqrtPerp"
                    let _1068_slot := var_sqrtPerp_33584_slot
                    let expr_33604_slot := _1068_slot
                    /// @src 62:4211:4234  "sqrtPerp.entryTradeFee0"
                    let _1069 := add(expr_33604_slot, 4)
                    /// @src 62:4211:4279  "sqrtPerp.entryTradeFee0 = baseAssetStatus.sqrtAssetStatus.fee0Growth"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_1069, expr_33609)
                    let expr_33610 := expr_33609
                    /// @src 62:4319:4334  "baseAssetStatus"
                    let _1070_mpos := var_baseAssetStatus_33581_mpos
                    let expr_33615_mpos := _1070_mpos
                    /// @src 62:4319:4350  "baseAssetStatus.sqrtAssetStatus"
                    let _1071 := add(expr_33615_mpos, 192)
                    let _1072_mpos := mload(_1071)
                    let expr_33616_mpos := _1072_mpos
                    /// @src 62:4319:4361  "baseAssetStatus.sqrtAssetStatus.fee1Growth"
                    let _1073 := add(expr_33616_mpos, 384)
                    let _1074 := read_from_memoryt_uint256(_1073)
                    let expr_33617 := _1074
                    /// @src 62:4293:4301  "sqrtPerp"
                    let _1075_slot := var_sqrtPerp_33584_slot
                    let expr_33612_slot := _1075_slot
                    /// @src 62:4293:4316  "sqrtPerp.entryTradeFee1"
                    let _1076 := add(expr_33612_slot, 5)
                    /// @src 62:4293:4361  "sqrtPerp.entryTradeFee1 = baseAssetStatus.sqrtAssetStatus.fee1Growth"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_1076, expr_33617)
                    let expr_33618 := expr_33617
                    /// @src 62:4172:4598  "if (sqrtPerp.amount > 0) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            function update_byte_slice_3_shift_0(value, toInsert) -> result {
                let mask := 16777215
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_int24_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_int24(value)))
            }

            function prepare_store_t_int24(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_int24_to_t_int24(slot, value_0) {
                let convertedValue_0 := convert_t_int24_to_t_int24(value_0)
                sstore(slot, update_byte_slice_3_shift_0(sload(slot), prepare_store_t_int24(convertedValue_0)))
            }

            function shift_left_24(value) -> newValue {
                newValue :=

                shl(24, value)

            }

            function update_byte_slice_3_shift_3(value, toInsert) -> result {
                let mask := 0xffffff000000
                toInsert := shift_left_24(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_3_t_int24_to_t_int24(slot, value_0) {
                let convertedValue_0 := convert_t_int24_to_t_int24(value_0)
                sstore(slot, update_byte_slice_3_shift_3(sload(slot), prepare_store_t_int24(convertedValue_0)))
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            /// @ast-id 15291
            /// @src 61:22200:24382  "function updateRebalanceEntry(..."
            function fun_updateRebalanceEntry_15291(var__assetStatus_15134_slot, var__userStatus_15137_slot, var__isQuoteZero_15139) -> var_rebalancePositionUpdateUnderlying_15142, var_rebalancePositionUpdateStable_15144 {
                /// @src 61:22371:22411  "int256 rebalancePositionUpdateUnderlying"
                let zero_t_int256_1077 := zero_value_for_split_t_int256()
                var_rebalancePositionUpdateUnderlying_15142 := zero_t_int256_1077
                /// @src 61:22413:22449  "int256 rebalancePositionUpdateStable"
                let zero_t_int256_1078 := zero_value_for_split_t_int256()
                var_rebalancePositionUpdateStable_15144 := zero_t_int256_1078

                /// @src 61:22616:22627  "_userStatus"
                let _1079_slot := var__userStatus_15137_slot
                let expr_15146_slot := _1079_slot
                /// @src 61:22616:22636  "_userStatus.sqrtPerp"
                let _1080 := add(expr_15146_slot, 4)
                let _1081_slot := _1080
                let expr_15147_slot := _1081_slot
                /// @src 61:22616:22643  "_userStatus.sqrtPerp.amount"
                let _1082 := add(expr_15147_slot, 0)
                let _1083 := read_from_storage_split_offset_0_t_int256(_1082)
                let expr_15148 := _1083
                /// @src 61:22647:22648  "0"
                let expr_15149 := 0x00
                /// @src 61:22616:22648  "_userStatus.sqrtPerp.amount == 0"
                let expr_15150 := eq(cleanup_t_int256(expr_15148), convert_t_rational_0_by_1_to_t_int256(expr_15149))
                /// @src 61:22612:22835  "if (_userStatus.sqrtPerp.amount == 0) {..."
                if expr_15150 {
                    /// @src 61:22701:22713  "_assetStatus"
                    let _1084_slot := var__assetStatus_15134_slot
                    let expr_15154_slot := _1084_slot
                    /// @src 61:22701:22723  "_assetStatus.tickLower"
                    let _1085 := add(expr_15154_slot, 0)
                    let _1086 := read_from_storage_split_offset_20_t_int24(_1085)
                    let expr_15155 := _1086
                    /// @src 61:22664:22675  "_userStatus"
                    let _1087_slot := var__userStatus_15137_slot
                    let expr_15151_slot := _1087_slot
                    /// @src 61:22664:22698  "_userStatus.rebalanceLastTickLower"
                    let _1088 := add(expr_15151_slot, 1)
                    /// @src 61:22664:22723  "_userStatus.rebalanceLastTickLower = _assetStatus.tickLower"
                    update_storage_value_offset_0_t_int24_to_t_int24(_1088, expr_15155)
                    let expr_15156 := expr_15155
                    /// @src 61:22774:22786  "_assetStatus"
                    let _1089_slot := var__assetStatus_15134_slot
                    let expr_15161_slot := _1089_slot
                    /// @src 61:22774:22796  "_assetStatus.tickUpper"
                    let _1090 := add(expr_15161_slot, 0)
                    let _1091 := read_from_storage_split_offset_23_t_int24(_1090)
                    let expr_15162 := _1091
                    /// @src 61:22737:22748  "_userStatus"
                    let _1092_slot := var__userStatus_15137_slot
                    let expr_15158_slot := _1092_slot
                    /// @src 61:22737:22771  "_userStatus.rebalanceLastTickUpper"
                    let _1093 := add(expr_15158_slot, 1)
                    /// @src 61:22737:22796  "_userStatus.rebalanceLastTickUpper = _assetStatus.tickUpper"
                    update_storage_value_offset_3_t_int24_to_t_int24(_1093, expr_15162)
                    let expr_15163 := expr_15162
                    /// @src 61:22819:22820  "0"
                    let expr_15165 := 0x00
                    /// @src 61:22818:22824  "(0, 0)"
                    let expr_15167_component_1 := expr_15165
                    /// @src 61:22822:22823  "0"
                    let expr_15166 := 0x00
                    /// @src 61:22818:22824  "(0, 0)"
                    let expr_15167_component_2 := expr_15166
                    /// @src 61:22811:22824  "return (0, 0)"
                    var_rebalancePositionUpdateUnderlying_15142 := convert_t_rational_0_by_1_to_t_int256(expr_15167_component_1)
                    var_rebalancePositionUpdateStable_15144 := convert_t_rational_0_by_1_to_t_int256(expr_15167_component_2)
                    leave
                    /// @src 61:22612:22835  "if (_userStatus.sqrtPerp.amount == 0) {..."
                }
                /// @src 61:22849:22861  "_assetStatus"
                let _1094_slot := var__assetStatus_15134_slot
                let expr_15171_slot := _1094_slot
                /// @src 61:22849:22892  "_assetStatus.lastRebalanceTotalSquartAmount"
                let _1095 := add(expr_15171_slot, 4)
                let _1096 := read_from_storage_split_offset_0_t_uint256(_1095)
                let expr_15172 := _1096
                /// @src 61:22896:22897  "0"
                let expr_15173 := 0x00
                /// @src 61:22849:22897  "_assetStatus.lastRebalanceTotalSquartAmount == 0"
                let expr_15174 := eq(cleanup_t_uint256(expr_15172), convert_t_rational_0_by_1_to_t_uint256(expr_15173))
                /// @src 61:22845:23253  "if (_assetStatus.lastRebalanceTotalSquartAmount == 0) {..."
                if expr_15174 {
                    /// @src 61:23006:23018  "_assetStatus"
                    let _1097_slot := var__assetStatus_15134_slot
                    let expr_15178_slot := _1097_slot
                    /// @src 61:23006:23028  "_assetStatus.tickLower"
                    let _1098 := add(expr_15178_slot, 0)
                    let _1099 := read_from_storage_split_offset_20_t_int24(_1098)
                    let expr_15179 := _1099
                    /// @src 61:22969:22980  "_userStatus"
                    let _1100_slot := var__userStatus_15137_slot
                    let expr_15175_slot := _1100_slot
                    /// @src 61:22969:23003  "_userStatus.rebalanceLastTickLower"
                    let _1101 := add(expr_15175_slot, 1)
                    /// @src 61:22969:23028  "_userStatus.rebalanceLastTickLower = _assetStatus.tickLower"
                    update_storage_value_offset_0_t_int24_to_t_int24(_1101, expr_15179)
                    let expr_15180 := expr_15179
                    /// @src 61:23079:23091  "_assetStatus"
                    let _1102_slot := var__assetStatus_15134_slot
                    let expr_15185_slot := _1102_slot
                    /// @src 61:23079:23101  "_assetStatus.tickUpper"
                    let _1103 := add(expr_15185_slot, 0)
                    let _1104 := read_from_storage_split_offset_23_t_int24(_1103)
                    let expr_15186 := _1104
                    /// @src 61:23042:23053  "_userStatus"
                    let _1105_slot := var__userStatus_15137_slot
                    let expr_15182_slot := _1105_slot
                    /// @src 61:23042:23076  "_userStatus.rebalanceLastTickUpper"
                    let _1106 := add(expr_15182_slot, 1)
                    /// @src 61:23042:23101  "_userStatus.rebalanceLastTickUpper = _assetStatus.tickUpper"
                    update_storage_value_offset_3_t_int24_to_t_int24(_1106, expr_15186)
                    let expr_15187 := expr_15186
                    /// @src 61:23140:23152  "_assetStatus"
                    let _1107_slot := var__assetStatus_15134_slot
                    let expr_15189_slot := _1107_slot
                    /// @src 61:23140:23174  "_assetStatus.rebalancePositionBase"
                    let _1108 := add(expr_15189_slot, 11)
                    let _1109_slot := _1108
                    let expr_15190_slot := _1109_slot
                    /// @src 61:23140:23189  "_assetStatus.rebalancePositionBase.positionAmount"
                    let _1110 := add(expr_15190_slot, 0)
                    let _1111 := read_from_storage_split_offset_0_t_int256(_1110)
                    let expr_15191 := _1111
                    /// @src 61:23139:23242  "(_assetStatus.rebalancePositionBase.positionAmount, _assetStatus.rebalancePositionQuote.positionAmount)"
                    let expr_15195_component_1 := expr_15191
                    /// @src 61:23191:23203  "_assetStatus"
                    let _1112_slot := var__assetStatus_15134_slot
                    let expr_15192_slot := _1112_slot
                    /// @src 61:23191:23226  "_assetStatus.rebalancePositionQuote"
                    let _1113 := add(expr_15192_slot, 13)
                    let _1114_slot := _1113
                    let expr_15193_slot := _1114_slot
                    /// @src 61:23191:23241  "_assetStatus.rebalancePositionQuote.positionAmount"
                    let _1115 := add(expr_15193_slot, 0)
                    let _1116 := read_from_storage_split_offset_0_t_int256(_1115)
                    let expr_15194 := _1116
                    /// @src 61:23139:23242  "(_assetStatus.rebalancePositionBase.positionAmount, _assetStatus.rebalancePositionQuote.positionAmount)"
                    let expr_15195_component_2 := expr_15194
                    /// @src 61:23116:23242  "return..."
                    var_rebalancePositionUpdateUnderlying_15142 := expr_15195_component_1
                    var_rebalancePositionUpdateStable_15144 := expr_15195_component_2
                    leave
                    /// @src 61:22845:23253  "if (_assetStatus.lastRebalanceTotalSquartAmount == 0) {..."
                }
                /// @src 61:23287:23293  "LPMath"
                let expr_15201_address := linkersymbol("src/libraries/math/LPMath.sol:LPMath")
                /// @src 61:23345:23357  "_assetStatus"
                let _1117_slot := var__assetStatus_15134_slot
                let expr_15203_slot := _1117_slot
                /// @src 61:23345:23367  "_assetStatus.tickUpper"
                let _1118 := add(expr_15203_slot, 0)
                let _1119 := read_from_storage_split_offset_23_t_int24(_1118)
                let expr_15204 := _1119
                /// @src 61:23381:23392  "_userStatus"
                let _1120_slot := var__userStatus_15137_slot
                let expr_15205_slot := _1120_slot
                /// @src 61:23381:23415  "_userStatus.rebalanceLastTickUpper"
                let _1121 := add(expr_15205_slot, 1)
                let _1122 := read_from_storage_split_offset_3_t_int24(_1121)
                let expr_15206 := _1122
                /// @src 61:23429:23440  "_userStatus"
                let _1123_slot := var__userStatus_15137_slot
                let expr_15207_slot := _1123_slot
                /// @src 61:23429:23449  "_userStatus.sqrtPerp"
                let _1124 := add(expr_15207_slot, 4)
                let _1125_slot := _1124
                let expr_15208_slot := _1125_slot
                /// @src 61:23429:23456  "_userStatus.sqrtPerp.amount"
                let _1126 := add(expr_15208_slot, 0)
                let _1127 := read_from_storage_split_offset_0_t_int256(_1126)
                let expr_15209 := _1127
                /// @src 61:23429:23460  "_userStatus.sqrtPerp.amount.abs"
                let expr_15210_self := expr_15209
                /// @src 61:23429:23462  "_userStatus.sqrtPerp.amount.abs()"
                let expr_15211 := fun_abs_32143(expr_15210_self)
                /// @src 61:23476:23487  "_userStatus"
                let _1128_slot := var__userStatus_15137_slot
                let expr_15212_slot := _1128_slot
                /// @src 61:23476:23496  "_userStatus.sqrtPerp"
                let _1129 := add(expr_15212_slot, 4)
                let _1130_slot := _1129
                let expr_15213_slot := _1130_slot
                /// @src 61:23476:23503  "_userStatus.sqrtPerp.amount"
                let _1131 := add(expr_15213_slot, 0)
                let _1132 := read_from_storage_split_offset_0_t_int256(_1131)
                let expr_15214 := _1132
                /// @src 61:23506:23507  "0"
                let expr_15215 := 0x00
                /// @src 61:23476:23507  "_userStatus.sqrtPerp.amount < 0"
                let expr_15216 := slt(cleanup_t_int256(expr_15214), convert_t_rational_0_by_1_to_t_int256(expr_15215))
                /// @src 61:23287:23517  "LPMath.calculateAmount0ForLiquidityWithTicks(..."
                let expr_15217 := fun_calculateAmount0ForLiquidityWithTicks_31702(expr_15204, expr_15206, expr_15211, expr_15216)
                /// @src 61:23263:23517  "int256 deltaPosition0 = LPMath.calculateAmount0ForLiquidityWithTicks(..."
                let var_deltaPosition0_15200 := expr_15217
                /// @src 61:23552:23558  "LPMath"
                let expr_15221_address := linkersymbol("src/libraries/math/LPMath.sol:LPMath")
                /// @src 61:23610:23622  "_assetStatus"
                let _1133_slot := var__assetStatus_15134_slot
                let expr_15223_slot := _1133_slot
                /// @src 61:23610:23632  "_assetStatus.tickLower"
                let _1134 := add(expr_15223_slot, 0)
                let _1135 := read_from_storage_split_offset_20_t_int24(_1134)
                let expr_15224 := _1135
                /// @src 61:23646:23657  "_userStatus"
                let _1136_slot := var__userStatus_15137_slot
                let expr_15225_slot := _1136_slot
                /// @src 61:23646:23680  "_userStatus.rebalanceLastTickLower"
                let _1137 := add(expr_15225_slot, 1)
                let _1138 := read_from_storage_split_offset_0_t_int24(_1137)
                let expr_15226 := _1138
                /// @src 61:23694:23705  "_userStatus"
                let _1139_slot := var__userStatus_15137_slot
                let expr_15227_slot := _1139_slot
                /// @src 61:23694:23714  "_userStatus.sqrtPerp"
                let _1140 := add(expr_15227_slot, 4)
                let _1141_slot := _1140
                let expr_15228_slot := _1141_slot
                /// @src 61:23694:23721  "_userStatus.sqrtPerp.amount"
                let _1142 := add(expr_15228_slot, 0)
                let _1143 := read_from_storage_split_offset_0_t_int256(_1142)
                let expr_15229 := _1143
                /// @src 61:23694:23725  "_userStatus.sqrtPerp.amount.abs"
                let expr_15230_self := expr_15229
                /// @src 61:23694:23727  "_userStatus.sqrtPerp.amount.abs()"
                let expr_15231 := fun_abs_32143(expr_15230_self)
                /// @src 61:23741:23752  "_userStatus"
                let _1144_slot := var__userStatus_15137_slot
                let expr_15232_slot := _1144_slot
                /// @src 61:23741:23761  "_userStatus.sqrtPerp"
                let _1145 := add(expr_15232_slot, 4)
                let _1146_slot := _1145
                let expr_15233_slot := _1146_slot
                /// @src 61:23741:23768  "_userStatus.sqrtPerp.amount"
                let _1147 := add(expr_15233_slot, 0)
                let _1148 := read_from_storage_split_offset_0_t_int256(_1147)
                let expr_15234 := _1148
                /// @src 61:23771:23772  "0"
                let expr_15235 := 0x00
                /// @src 61:23741:23772  "_userStatus.sqrtPerp.amount < 0"
                let expr_15236 := slt(cleanup_t_int256(expr_15234), convert_t_rational_0_by_1_to_t_int256(expr_15235))
                /// @src 61:23552:23782  "LPMath.calculateAmount1ForLiquidityWithTicks(..."
                let expr_15237 := fun_calculateAmount1ForLiquidityWithTicks_31729(expr_15224, expr_15226, expr_15231, expr_15236)
                /// @src 61:23528:23782  "int256 deltaPosition1 = LPMath.calculateAmount1ForLiquidityWithTicks(..."
                let var_deltaPosition1_15220 := expr_15237
                /// @src 61:23830:23842  "_assetStatus"
                let _1149_slot := var__assetStatus_15134_slot
                let expr_15242_slot := _1149_slot
                /// @src 61:23830:23852  "_assetStatus.tickLower"
                let _1150 := add(expr_15242_slot, 0)
                let _1151 := read_from_storage_split_offset_20_t_int24(_1150)
                let expr_15243 := _1151
                /// @src 61:23793:23804  "_userStatus"
                let _1152_slot := var__userStatus_15137_slot
                let expr_15239_slot := _1152_slot
                /// @src 61:23793:23827  "_userStatus.rebalanceLastTickLower"
                let _1153 := add(expr_15239_slot, 1)
                /// @src 61:23793:23852  "_userStatus.rebalanceLastTickLower = _assetStatus.tickLower"
                update_storage_value_offset_0_t_int24_to_t_int24(_1153, expr_15243)
                let expr_15244 := expr_15243
                /// @src 61:23899:23911  "_assetStatus"
                let _1154_slot := var__assetStatus_15134_slot
                let expr_15249_slot := _1154_slot
                /// @src 61:23899:23921  "_assetStatus.tickUpper"
                let _1155 := add(expr_15249_slot, 0)
                let _1156 := read_from_storage_split_offset_23_t_int24(_1155)
                let expr_15250 := _1156
                /// @src 61:23862:23873  "_userStatus"
                let _1157_slot := var__userStatus_15137_slot
                let expr_15246_slot := _1157_slot
                /// @src 61:23862:23896  "_userStatus.rebalanceLastTickUpper"
                let _1158 := add(expr_15246_slot, 1)
                /// @src 61:23862:23921  "_userStatus.rebalanceLastTickUpper = _assetStatus.tickUpper"
                update_storage_value_offset_3_t_int24_to_t_int24(_1158, expr_15250)
                let expr_15251 := expr_15250
                /// @src 61:23936:23947  "_userStatus"
                let _1159_slot := var__userStatus_15137_slot
                let expr_15253_slot := _1159_slot
                /// @src 61:23936:23956  "_userStatus.sqrtPerp"
                let _1160 := add(expr_15253_slot, 4)
                let _1161_slot := _1160
                let expr_15254_slot := _1161_slot
                /// @src 61:23936:23963  "_userStatus.sqrtPerp.amount"
                let _1162 := add(expr_15254_slot, 0)
                let _1163 := read_from_storage_split_offset_0_t_int256(_1162)
                let expr_15255 := _1163
                /// @src 61:23966:23967  "0"
                let expr_15256 := 0x00
                /// @src 61:23936:23967  "_userStatus.sqrtPerp.amount < 0"
                let expr_15257 := slt(cleanup_t_int256(expr_15255), convert_t_rational_0_by_1_to_t_int256(expr_15256))
                /// @src 61:23932:24072  "if (_userStatus.sqrtPerp.amount < 0) {..."
                if expr_15257 {
                    /// @src 61:24001:24015  "deltaPosition0"
                    let _1164 := var_deltaPosition0_15200
                    let expr_15259 := _1164
                    /// @src 61:24000:24015  "-deltaPosition0"
                    let expr_15260 := negate_t_int256(expr_15259)
                    /// @src 61:23983:24015  "deltaPosition0 = -deltaPosition0"
                    var_deltaPosition0_15200 := expr_15260
                    let expr_15261 := expr_15260
                    /// @src 61:24047:24061  "deltaPosition1"
                    let _1165 := var_deltaPosition1_15220
                    let expr_15264 := _1165
                    /// @src 61:24046:24061  "-deltaPosition1"
                    let expr_15265 := negate_t_int256(expr_15264)
                    /// @src 61:24029:24061  "deltaPosition1 = -deltaPosition1"
                    var_deltaPosition1_15220 := expr_15265
                    let expr_15266 := expr_15265
                    /// @src 61:23932:24072  "if (_userStatus.sqrtPerp.amount < 0) {..."
                }
                /// @src 61:24086:24098  "_isQuoteZero"
                let _1166 := var__isQuoteZero_15139
                let expr_15270 := _1166
                /// @src 61:24082:24376  "if (_isQuoteZero) {..."
                switch expr_15270
                case 0 {
                    /// @src 61:24291:24305  "deltaPosition0"
                    let _1167 := var_deltaPosition0_15200
                    let expr_15281 := _1167
                    /// @src 61:24255:24305  "rebalancePositionUpdateUnderlying = deltaPosition0"
                    var_rebalancePositionUpdateUnderlying_15142 := expr_15281
                    let expr_15282 := expr_15281
                    /// @src 61:24351:24365  "deltaPosition1"
                    let _1168 := var_deltaPosition1_15220
                    let expr_15285 := _1168
                    /// @src 61:24319:24365  "rebalancePositionUpdateStable = deltaPosition1"
                    var_rebalancePositionUpdateStable_15144 := expr_15285
                    let expr_15286 := expr_15285
                    /// @src 61:24082:24376  "if (_isQuoteZero) {..."
                }
                default {
                    /// @src 61:24150:24164  "deltaPosition1"
                    let _1169 := var_deltaPosition1_15220
                    let expr_15272 := _1169
                    /// @src 61:24114:24164  "rebalancePositionUpdateUnderlying = deltaPosition1"
                    var_rebalancePositionUpdateUnderlying_15142 := expr_15272
                    let expr_15273 := expr_15272
                    /// @src 61:24210:24224  "deltaPosition0"
                    let _1170 := var_deltaPosition0_15200
                    let expr_15276 := _1170
                    /// @src 61:24178:24224  "rebalancePositionUpdateStable = deltaPosition0"
                    var_rebalancePositionUpdateStable_15144 := expr_15276
                    let expr_15277 := expr_15276
                    /// @src 61:24082:24376  "if (_isQuoteZero) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 30653
            /// @src 65:3785:4039  "function _isInRange(Perp.SqrtPerpAssetStatus memory sqrtAssetStatus, int24 currentTick)..."
            function fun__isInRange_30653(var_sqrtAssetStatus_30634_mpos, var_currentTick_30636) -> var__30639 {
                /// @src 65:3920:3924  "bool"
                let zero_t_bool_1171 := zero_value_for_split_t_bool()
                var__30639 := zero_t_bool_1171

                /// @src 65:3948:3963  "sqrtAssetStatus"
                let _1172_mpos := var_sqrtAssetStatus_30634_mpos
                let expr_30641_mpos := _1172_mpos
                /// @src 65:3948:3973  "sqrtAssetStatus.tickLower"
                let _1173 := add(expr_30641_mpos, 32)
                let _1174 := read_from_memoryt_int24(_1173)
                let expr_30642 := _1174
                /// @src 65:3977:3988  "currentTick"
                let _1175 := var_currentTick_30636
                let expr_30643 := _1175
                /// @src 65:3948:3988  "sqrtAssetStatus.tickLower <= currentTick"
                let expr_30644 := iszero(sgt(cleanup_t_int24(expr_30642), cleanup_t_int24(expr_30643)))
                /// @src 65:3948:4031  "sqrtAssetStatus.tickLower <= currentTick && currentTick < sqrtAssetStatus.tickUpper"
                let expr_30649 := expr_30644
                if expr_30649 {
                    /// @src 65:3992:4003  "currentTick"
                    let _1176 := var_currentTick_30636
                    let expr_30645 := _1176
                    /// @src 65:4006:4021  "sqrtAssetStatus"
                    let _1177_mpos := var_sqrtAssetStatus_30634_mpos
                    let expr_30646_mpos := _1177_mpos
                    /// @src 65:4006:4031  "sqrtAssetStatus.tickUpper"
                    let _1178 := add(expr_30646_mpos, 64)
                    let _1179 := read_from_memoryt_int24(_1178)
                    let expr_30647 := _1179
                    /// @src 65:3992:4031  "currentTick < sqrtAssetStatus.tickUpper"
                    let expr_30648 := slt(cleanup_t_int24(expr_30645), cleanup_t_int24(expr_30647))
                    /// @src 65:3948:4031  "sqrtAssetStatus.tickLower <= currentTick && currentTick < sqrtAssetStatus.tickUpper"
                    expr_30649 := expr_30648
                }
                /// @src 65:3947:4032  "(sqrtAssetStatus.tickLower <= currentTick && currentTick < sqrtAssetStatus.tickUpper)"
                let expr_30650 := expr_30649
                /// @src 65:3940:4032  "return (sqrtAssetStatus.tickLower <= currentTick && currentTick < sqrtAssetStatus.tickUpper)"
                var__30639 := expr_30650
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            function zero_value_for_split_t_uint128() -> ret {
                ret := 0
            }

            function cleanup_t_rational_340282366920938463463374607431768211456_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938463463374607431768211456_by_1(value)))
            }

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            function convert_t_uint256_to_t_uint128(value) -> converted {
                converted := cleanup_t_uint128(identity(cleanup_t_uint256(value)))
            }

            /// @ast-id 29341
            /// @src 13:2468:2599  "function safeCastTo128(uint256 x) internal pure returns (uint128 y) {..."
            function fun_safeCastTo128_29341(var_x_29320) -> var_y_29323 {
                /// @src 13:2525:2534  "uint128 y"
                let zero_t_uint128_1180 := zero_value_for_split_t_uint128()
                var_y_29323 := zero_t_uint128_1180

                /// @src 13:2554:2555  "x"
                let _1181 := var_x_29320
                let expr_29326 := _1181
                /// @src 13:2558:2566  "1 << 128"
                let expr_29329 := 0x0100000000000000000000000000000000
                /// @src 13:2554:2566  "x < 1 << 128"
                let expr_29330 := lt(cleanup_t_uint256(expr_29326), convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(expr_29329))
                /// @src 13:2546:2567  "require(x < 1 << 128)"
                require_helper(expr_29330)
                /// @src 13:2590:2591  "x"
                let _1182 := var_x_29320
                let expr_29336 := _1182
                /// @src 13:2582:2592  "uint128(x)"
                let expr_29337 := convert_t_uint256_to_t_uint128(expr_29336)
                /// @src 13:2578:2592  "y = uint128(x)"
                var_y_29323 := expr_29337
                let expr_29338 := expr_29337

            }
            /// @src 68:814:5932  "library Trade {..."

            function cleanup_t_int128(value) -> cleaned {
                cleaned := signextend(15, value)
            }

            function validator_revert_t_int128(value) {
                if iszero(eq(value, cleanup_t_int128(value))) { revert(0, 0) }
            }

            function abi_decode_t_int128_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_int128(value)
            }

            function cleanup_t_int56(value) -> cleaned {
                cleaned := signextend(6, value)
            }

            function validator_revert_t_int56(value) {
                if iszero(eq(value, cleanup_t_int56(value))) { revert(0, 0) }
            }

            function abi_decode_t_int56_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_int56(value)
            }

            function cleanup_t_uint32(value) -> cleaned {
                cleaned := and(value, 0xffffffff)
            }

            function validator_revert_t_uint32(value) {
                if iszero(eq(value, cleanup_t_uint32(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint32_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint32(value)
            }

            function abi_decode_tuple_t_uint128t_int128t_uint256t_uint256t_int56t_uint160t_uint32t_bool_fromMemory(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5, value6, value7 {
                if slt(sub(dataEnd, headStart), 256) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint128_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_int128_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 128

                    value4 := abi_decode_t_int56_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 160

                    value5 := abi_decode_t_uint160_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 192

                    value6 := abi_decode_t_uint32_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 224

                    value7 := abi_decode_t_bool_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple_t_int24__to_t_int24__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_int24_to_t_int24_fromStack(value0,  add(headStart, 0))

            }

            function wrapping_sub_t_uint256(x, y) -> diff {
                diff := cleanup_t_uint256(sub(x, y))
            }

            /// @ast-id 16941
            /// @src 69:3452:5644  "function getFeeGrowthInside(address uniswapPoolAddress, int24 tickLower, int24 tickUpper)..."
            function fun_getFeeGrowthInside_16941(var_uniswapPoolAddress_16800, var_tickLower_16802, var_tickUpper_16804) -> var_feeGrowthInside0X128_16807, var_feeGrowthInside1X128_16809 {
                /// @src 69:3589:3617  "uint256 feeGrowthInside0X128"
                let zero_t_uint256_1183 := zero_value_for_split_t_uint256()
                var_feeGrowthInside0X128_16807 := zero_t_uint256_1183
                /// @src 69:3619:3647  "uint256 feeGrowthInside1X128"
                let zero_t_uint256_1184 := zero_value_for_split_t_uint256()
                var_feeGrowthInside1X128_16809 := zero_t_uint256_1184

                /// @src 69:3707:3725  "uniswapPoolAddress"
                let _1185 := var_uniswapPoolAddress_16800
                let expr_16814 := _1185
                /// @src 69:3692:3726  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16815_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16814)
                /// @src 69:3692:3732  "IUniswapV3Pool(uniswapPoolAddress).slot0"
                let expr_16816_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16815_address)
                let expr_16816_functionSelector := 0x3850c7bd
                /// @src 69:3692:3734  "IUniswapV3Pool(uniswapPoolAddress).slot0()"

                // storage for arguments and returned data
                let _1186 := allocate_unbounded()
                mstore(_1186, shift_left_224(expr_16816_functionSelector))
                let _1187 := abi_encode_tuple__to__fromStack(add(_1186, 4) )

                let _1188 := staticcall(gas(), expr_16816_address,  _1186, sub(_1187, _1186), _1186, 224)

                if iszero(_1188) { revert_forward_1() }

                let expr_16817_component_1, expr_16817_component_2, expr_16817_component_3, expr_16817_component_4, expr_16817_component_5, expr_16817_component_6, expr_16817_component_7
                if _1188 {

                    let _1189 := 224

                    if gt(_1189, returndatasize()) {
                        _1189 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_1186, _1189)

                    // decode return parameters from external try-call into retVars
                    expr_16817_component_1, expr_16817_component_2, expr_16817_component_3, expr_16817_component_4, expr_16817_component_5, expr_16817_component_6, expr_16817_component_7 :=  abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(_1186, add(_1186, _1189))
                }
                /// @src 69:3663:3734  "(, int24 tickCurrent,,,,,) = IUniswapV3Pool(uniswapPoolAddress).slot0()"
                let var_tickCurrent_16812 := expr_16817_component_2
                /// @src 69:3791:3809  "uniswapPoolAddress"
                let _1190 := var_uniswapPoolAddress_16800
                let expr_16822 := _1190
                /// @src 69:3776:3810  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16823_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16822)
                /// @src 69:3776:3831  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal0X128"
                let expr_16824_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16823_address)
                let expr_16824_functionSelector := 0xf3058399
                /// @src 69:3776:3833  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal0X128()"

                // storage for arguments and returned data
                let _1191 := allocate_unbounded()
                mstore(_1191, shift_left_224(expr_16824_functionSelector))
                let _1192 := abi_encode_tuple__to__fromStack(add(_1191, 4) )

                let _1193 := staticcall(gas(), expr_16824_address,  _1191, sub(_1192, _1191), _1191, 32)

                if iszero(_1193) { revert_forward_1() }

                let expr_16825
                if _1193 {

                    let _1194 := 32

                    if gt(_1194, returndatasize()) {
                        _1194 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_1191, _1194)

                    // decode return parameters from external try-call into retVars
                    expr_16825 :=  abi_decode_tuple_t_uint256_fromMemory(_1191, add(_1191, _1194))
                }
                /// @src 69:3745:3833  "uint256 feeGrowthGlobal0X128 = IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal0X128()"
                let var_feeGrowthGlobal0X128_16820 := expr_16825
                /// @src 69:3889:3907  "uniswapPoolAddress"
                let _1195 := var_uniswapPoolAddress_16800
                let expr_16830 := _1195
                /// @src 69:3874:3908  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16831_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16830)
                /// @src 69:3874:3929  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal1X128"
                let expr_16832_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16831_address)
                let expr_16832_functionSelector := 0x46141319
                /// @src 69:3874:3931  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal1X128()"

                // storage for arguments and returned data
                let _1196 := allocate_unbounded()
                mstore(_1196, shift_left_224(expr_16832_functionSelector))
                let _1197 := abi_encode_tuple__to__fromStack(add(_1196, 4) )

                let _1198 := staticcall(gas(), expr_16832_address,  _1196, sub(_1197, _1196), _1196, 32)

                if iszero(_1198) { revert_forward_1() }

                let expr_16833
                if _1198 {

                    let _1199 := 32

                    if gt(_1199, returndatasize()) {
                        _1199 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_1196, _1199)

                    // decode return parameters from external try-call into retVars
                    expr_16833 :=  abi_decode_tuple_t_uint256_fromMemory(_1196, add(_1196, _1199))
                }
                /// @src 69:3843:3931  "uint256 feeGrowthGlobal1X128 = IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal1X128()"
                let var_feeGrowthGlobal1X128_16828 := expr_16833
                /// @src 69:3980:4007  "uint256 feeGrowthBelow0X128"
                let var_feeGrowthBelow0X128_16836
                let zero_t_uint256_1200 := zero_value_for_split_t_uint256()
                var_feeGrowthBelow0X128_16836 := zero_t_uint256_1200
                /// @src 69:4017:4044  "uint256 feeGrowthBelow1X128"
                let var_feeGrowthBelow1X128_16839
                let zero_t_uint256_1201 := zero_value_for_split_t_uint256()
                var_feeGrowthBelow1X128_16839 := zero_t_uint256_1201
                /// @src 69:4214:4232  "uniswapPoolAddress"
                let _1202 := var_uniswapPoolAddress_16800
                let expr_16846 := _1202
                /// @src 69:4199:4233  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16847_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16846)
                /// @src 69:4199:4239  "IUniswapV3Pool(uniswapPoolAddress).ticks"
                let expr_16848_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16847_address)
                let expr_16848_functionSelector := 0xf30dba93
                /// @src 69:4240:4249  "tickLower"
                let _1203 := var_tickLower_16802
                let expr_16849 := _1203
                /// @src 69:4199:4250  "IUniswapV3Pool(uniswapPoolAddress).ticks(tickLower)"

                // storage for arguments and returned data
                let _1204 := allocate_unbounded()
                mstore(_1204, shift_left_224(expr_16848_functionSelector))
                let _1205 := abi_encode_tuple_t_int24__to_t_int24__fromStack(add(_1204, 4) , expr_16849)

                let _1206 := staticcall(gas(), expr_16848_address,  _1204, sub(_1205, _1204), _1204, 256)

                if iszero(_1206) { revert_forward_1() }

                let expr_16850_component_1, expr_16850_component_2, expr_16850_component_3, expr_16850_component_4, expr_16850_component_5, expr_16850_component_6, expr_16850_component_7, expr_16850_component_8
                if _1206 {

                    let _1207 := 256

                    if gt(_1207, returndatasize()) {
                        _1207 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_1204, _1207)

                    // decode return parameters from external try-call into retVars
                    expr_16850_component_1, expr_16850_component_2, expr_16850_component_3, expr_16850_component_4, expr_16850_component_5, expr_16850_component_6, expr_16850_component_7, expr_16850_component_8 :=  abi_decode_tuple_t_uint128t_int128t_uint256t_uint256t_int56t_uint160t_uint32t_bool_fromMemory(_1204, add(_1204, _1207))
                }
                /// @src 69:4097:4250  "(,, uint256 lowerFeeGrowthOutside0X128, uint256 lowerFeeGrowthOutside1X128,,,,) =..."
                let var_lowerFeeGrowthOutside0X128_16842 := expr_16850_component_3
                let var_lowerFeeGrowthOutside1X128_16844 := expr_16850_component_4
                /// @src 69:4273:4284  "tickCurrent"
                let _1208 := var_tickCurrent_16812
                let expr_16852 := _1208
                /// @src 69:4288:4297  "tickLower"
                let _1209 := var_tickLower_16802
                let expr_16853 := _1209
                /// @src 69:4273:4297  "tickCurrent >= tickLower"
                let expr_16854 := iszero(slt(cleanup_t_int24(expr_16852), cleanup_t_int24(expr_16853)))
                /// @src 69:4269:4669  "if (tickCurrent >= tickLower) {..."
                switch expr_16854
                case 0 {
                    /// @src 69:4508:4528  "feeGrowthGlobal0X128"
                    let _1210 := var_feeGrowthGlobal0X128_16820
                    let expr_16865 := _1210
                    /// @src 69:4531:4557  "lowerFeeGrowthOutside0X128"
                    let _1211 := var_lowerFeeGrowthOutside0X128_16842
                    let expr_16866 := _1211
                    /// @src 69:4508:4557  "feeGrowthGlobal0X128 - lowerFeeGrowthOutside0X128"
                    let expr_16867 := wrapping_sub_t_uint256(expr_16865, expr_16866)

                    /// @src 69:4486:4557  "feeGrowthBelow0X128 = feeGrowthGlobal0X128 - lowerFeeGrowthOutside0X128"
                    var_feeGrowthBelow0X128_16836 := expr_16867
                    let expr_16868 := expr_16867
                    /// @src 69:4601:4621  "feeGrowthGlobal1X128"
                    let _1212 := var_feeGrowthGlobal1X128_16828
                    let expr_16871 := _1212
                    /// @src 69:4624:4650  "lowerFeeGrowthOutside1X128"
                    let _1213 := var_lowerFeeGrowthOutside1X128_16844
                    let expr_16872 := _1213
                    /// @src 69:4601:4650  "feeGrowthGlobal1X128 - lowerFeeGrowthOutside1X128"
                    let expr_16873 := wrapping_sub_t_uint256(expr_16871, expr_16872)

                    /// @src 69:4579:4650  "feeGrowthBelow1X128 = feeGrowthGlobal1X128 - lowerFeeGrowthOutside1X128"
                    var_feeGrowthBelow1X128_16839 := expr_16873
                    let expr_16874 := expr_16873
                    /// @src 69:4269:4669  "if (tickCurrent >= tickLower) {..."
                }
                default {
                    /// @src 69:4343:4369  "lowerFeeGrowthOutside0X128"
                    let _1214 := var_lowerFeeGrowthOutside0X128_16842
                    let expr_16856 := _1214
                    /// @src 69:4321:4369  "feeGrowthBelow0X128 = lowerFeeGrowthOutside0X128"
                    var_feeGrowthBelow0X128_16836 := expr_16856
                    let expr_16857 := expr_16856
                    /// @src 69:4413:4439  "lowerFeeGrowthOutside1X128"
                    let _1215 := var_lowerFeeGrowthOutside1X128_16844
                    let expr_16860 := _1215
                    /// @src 69:4391:4439  "feeGrowthBelow1X128 = lowerFeeGrowthOutside1X128"
                    var_feeGrowthBelow1X128_16839 := expr_16860
                    let expr_16861 := expr_16860
                    /// @src 69:4269:4669  "if (tickCurrent >= tickLower) {..."
                }
                /// @src 69:4739:4766  "uint256 feeGrowthAbove0X128"
                let var_feeGrowthAbove0X128_16880
                let zero_t_uint256_1216 := zero_value_for_split_t_uint256()
                var_feeGrowthAbove0X128_16880 := zero_t_uint256_1216
                /// @src 69:4780:4807  "uint256 feeGrowthAbove1X128"
                let var_feeGrowthAbove1X128_16883
                let zero_t_uint256_1217 := zero_value_for_split_t_uint256()
                var_feeGrowthAbove1X128_16883 := zero_t_uint256_1217
                /// @src 69:4957:4975  "uniswapPoolAddress"
                let _1218 := var_uniswapPoolAddress_16800
                let expr_16890 := _1218
                /// @src 69:4942:4976  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16891_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16890)
                /// @src 69:4942:4982  "IUniswapV3Pool(uniswapPoolAddress).ticks"
                let expr_16892_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16891_address)
                let expr_16892_functionSelector := 0xf30dba93
                /// @src 69:4983:4992  "tickUpper"
                let _1219 := var_tickUpper_16804
                let expr_16893 := _1219
                /// @src 69:4942:4993  "IUniswapV3Pool(uniswapPoolAddress).ticks(tickUpper)"

                // storage for arguments and returned data
                let _1220 := allocate_unbounded()
                mstore(_1220, shift_left_224(expr_16892_functionSelector))
                let _1221 := abi_encode_tuple_t_int24__to_t_int24__fromStack(add(_1220, 4) , expr_16893)

                let _1222 := staticcall(gas(), expr_16892_address,  _1220, sub(_1221, _1220), _1220, 256)

                if iszero(_1222) { revert_forward_1() }

                let expr_16894_component_1, expr_16894_component_2, expr_16894_component_3, expr_16894_component_4, expr_16894_component_5, expr_16894_component_6, expr_16894_component_7, expr_16894_component_8
                if _1222 {

                    let _1223 := 256

                    if gt(_1223, returndatasize()) {
                        _1223 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_1220, _1223)

                    // decode return parameters from external try-call into retVars
                    expr_16894_component_1, expr_16894_component_2, expr_16894_component_3, expr_16894_component_4, expr_16894_component_5, expr_16894_component_6, expr_16894_component_7, expr_16894_component_8 :=  abi_decode_tuple_t_uint128t_int128t_uint256t_uint256t_int56t_uint160t_uint32t_bool_fromMemory(_1220, add(_1220, _1223))
                }
                /// @src 69:4840:4993  "(,, uint256 upperFeeGrowthOutside0X128, uint256 upperFeeGrowthOutside1X128,,,,) =..."
                let var_upperFeeGrowthOutside0X128_16886 := expr_16894_component_3
                let var_upperFeeGrowthOutside1X128_16888 := expr_16894_component_4
                /// @src 69:5016:5027  "tickCurrent"
                let _1224 := var_tickCurrent_16812
                let expr_16896 := _1224
                /// @src 69:5030:5039  "tickUpper"
                let _1225 := var_tickUpper_16804
                let expr_16897 := _1225
                /// @src 69:5016:5039  "tickCurrent < tickUpper"
                let expr_16898 := slt(cleanup_t_int24(expr_16896), cleanup_t_int24(expr_16897))
                /// @src 69:5012:5411  "if (tickCurrent < tickUpper) {..."
                switch expr_16898
                case 0 {
                    /// @src 69:5250:5270  "feeGrowthGlobal0X128"
                    let _1226 := var_feeGrowthGlobal0X128_16820
                    let expr_16909 := _1226
                    /// @src 69:5273:5299  "upperFeeGrowthOutside0X128"
                    let _1227 := var_upperFeeGrowthOutside0X128_16886
                    let expr_16910 := _1227
                    /// @src 69:5250:5299  "feeGrowthGlobal0X128 - upperFeeGrowthOutside0X128"
                    let expr_16911 := wrapping_sub_t_uint256(expr_16909, expr_16910)

                    /// @src 69:5228:5299  "feeGrowthAbove0X128 = feeGrowthGlobal0X128 - upperFeeGrowthOutside0X128"
                    var_feeGrowthAbove0X128_16880 := expr_16911
                    let expr_16912 := expr_16911
                    /// @src 69:5343:5363  "feeGrowthGlobal1X128"
                    let _1228 := var_feeGrowthGlobal1X128_16828
                    let expr_16915 := _1228
                    /// @src 69:5366:5392  "upperFeeGrowthOutside1X128"
                    let _1229 := var_upperFeeGrowthOutside1X128_16888
                    let expr_16916 := _1229
                    /// @src 69:5343:5392  "feeGrowthGlobal1X128 - upperFeeGrowthOutside1X128"
                    let expr_16917 := wrapping_sub_t_uint256(expr_16915, expr_16916)

                    /// @src 69:5321:5392  "feeGrowthAbove1X128 = feeGrowthGlobal1X128 - upperFeeGrowthOutside1X128"
                    var_feeGrowthAbove1X128_16883 := expr_16917
                    let expr_16918 := expr_16917
                    /// @src 69:5012:5411  "if (tickCurrent < tickUpper) {..."
                }
                default {
                    /// @src 69:5085:5111  "upperFeeGrowthOutside0X128"
                    let _1230 := var_upperFeeGrowthOutside0X128_16886
                    let expr_16900 := _1230
                    /// @src 69:5063:5111  "feeGrowthAbove0X128 = upperFeeGrowthOutside0X128"
                    var_feeGrowthAbove0X128_16880 := expr_16900
                    let expr_16901 := expr_16900
                    /// @src 69:5155:5181  "upperFeeGrowthOutside1X128"
                    let _1231 := var_upperFeeGrowthOutside1X128_16888
                    let expr_16904 := _1231
                    /// @src 69:5133:5181  "feeGrowthAbove1X128 = upperFeeGrowthOutside1X128"
                    var_feeGrowthAbove1X128_16883 := expr_16904
                    let expr_16905 := expr_16904
                    /// @src 69:5012:5411  "if (tickCurrent < tickUpper) {..."
                }
                /// @src 69:5462:5482  "feeGrowthGlobal0X128"
                let _1232 := var_feeGrowthGlobal0X128_16820
                let expr_16924 := _1232
                /// @src 69:5485:5504  "feeGrowthBelow0X128"
                let _1233 := var_feeGrowthBelow0X128_16836
                let expr_16925 := _1233
                /// @src 69:5462:5504  "feeGrowthGlobal0X128 - feeGrowthBelow0X128"
                let expr_16926 := wrapping_sub_t_uint256(expr_16924, expr_16925)

                /// @src 69:5507:5526  "feeGrowthAbove0X128"
                let _1234 := var_feeGrowthAbove0X128_16880
                let expr_16927 := _1234
                /// @src 69:5462:5526  "feeGrowthGlobal0X128 - feeGrowthBelow0X128 - feeGrowthAbove0X128"
                let expr_16928 := wrapping_sub_t_uint256(expr_16926, expr_16927)

                /// @src 69:5439:5526  "feeGrowthInside0X128 = feeGrowthGlobal0X128 - feeGrowthBelow0X128 - feeGrowthAbove0X128"
                var_feeGrowthInside0X128_16807 := expr_16928
                let expr_16929 := expr_16928
                /// @src 69:5563:5583  "feeGrowthGlobal1X128"
                let _1235 := var_feeGrowthGlobal1X128_16828
                let expr_16932 := _1235
                /// @src 69:5586:5605  "feeGrowthBelow1X128"
                let _1236 := var_feeGrowthBelow1X128_16839
                let expr_16933 := _1236
                /// @src 69:5563:5605  "feeGrowthGlobal1X128 - feeGrowthBelow1X128"
                let expr_16934 := wrapping_sub_t_uint256(expr_16932, expr_16933)

                /// @src 69:5608:5627  "feeGrowthAbove1X128"
                let _1237 := var_feeGrowthAbove1X128_16883
                let expr_16935 := _1237
                /// @src 69:5563:5627  "feeGrowthGlobal1X128 - feeGrowthBelow1X128 - feeGrowthAbove1X128"
                let expr_16936 := wrapping_sub_t_uint256(expr_16934, expr_16935)

                /// @src 69:5540:5627  "feeGrowthInside1X128 = feeGrowthGlobal1X128 - feeGrowthBelow1X128 - feeGrowthAbove1X128"
                var_feeGrowthInside1X128_16809 := expr_16936
                let expr_16937 := expr_16936

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 32143
            /// @src 79:381:484  "function abs(int256 x) internal pure returns (uint256) {..."
            function fun_abs_32143(var_x_32126) -> var__32129 {
                /// @src 79:427:434  "uint256"
                let zero_t_uint256_1238 := zero_value_for_split_t_uint256()
                var__32129 := zero_t_uint256_1238

                /// @src 79:461:462  "x"
                let _1239 := var_x_32126
                let expr_32133 := _1239
                /// @src 79:466:467  "0"
                let expr_32134 := 0x00
                /// @src 79:461:467  "x >= 0"
                let expr_32135 := iszero(slt(cleanup_t_int256(expr_32133), convert_t_rational_0_by_1_to_t_int256(expr_32134)))
                /// @src 79:461:476  "x >= 0 ? x : -x"
                let expr_32139
                switch expr_32135
                case 0 {
                    /// @src 79:475:476  "x"
                    let _1240 := var_x_32126
                    let expr_32137 := _1240
                    /// @src 79:474:476  "-x"
                    let expr_32138 := negate_t_int256(expr_32137)
                    /// @src 79:461:476  "x >= 0 ? x : -x"
                    expr_32139 := expr_32138
                }
                default {
                    /// @src 79:470:471  "x"
                    let _1241 := var_x_32126
                    let expr_32136 := _1241
                    /// @src 79:461:476  "x >= 0 ? x : -x"
                    expr_32139 := expr_32136
                }
                /// @src 79:453:477  "uint256(x >= 0 ? x : -x)"
                let expr_32140 := convert_t_int256_to_t_uint256(expr_32139)
                /// @src 79:446:477  "return uint256(x >= 0 ? x : -x)"
                var__32129 := expr_32140
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 32020
            /// @src 78:3449:3731  "function calculateAmount0OffsetWithTick(int24 upper, uint256 liquidityAmount, bool isRoundUp)..."
            function fun_calculateAmount0OffsetWithTick_32020(var_upper_31998, var_liquidityAmount_32000, var_isRoundUp_32002) -> var__32005 {
                /// @src 78:3590:3596  "int256"
                let zero_t_int256_1242 := zero_value_for_split_t_int256()
                var__32005 := zero_t_int256_1242

                /// @src 78:3619:3627  "SafeCast"
                let expr_32007_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                /// @src 78:3660:3668  "TickMath"
                let expr_32010_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                /// @src 78:3688:3693  "upper"
                let _1243 := var_upper_31998
                let expr_32012 := _1243
                /// @src 78:3660:3694  "TickMath.getSqrtRatioAtTick(upper)"
                let expr_32013 := fun_getSqrtRatioAtTick_30100(expr_32012)
                /// @src 78:3696:3711  "liquidityAmount"
                let _1244 := var_liquidityAmount_32000
                let expr_32014 := _1244
                /// @src 78:3713:3722  "isRoundUp"
                let _1245 := var_isRoundUp_32002
                let expr_32015 := _1245
                /// @src 78:3637:3723  "calculateAmount0Offset(TickMath.getSqrtRatioAtTick(upper), liquidityAmount, isRoundUp)"
                let expr_32016 := fun_calculateAmount0Offset_32053(expr_32013, expr_32014, expr_32015)
                /// @src 78:3619:3724  "SafeCast.toInt256(calculateAmount0Offset(TickMath.getSqrtRatioAtTick(upper), liquidityAmount, isRoundUp))"
                let expr_32017 := fun_toInt256_28969(expr_32016)
                /// @src 78:3612:3724  "return SafeCast.toInt256(calculateAmount0Offset(TickMath.getSqrtRatioAtTick(upper), liquidityAmount, isRoundUp))"
                var__32005 := expr_32017
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 32078
            /// @src 78:4245:4527  "function calculateAmount1OffsetWithTick(int24 lower, uint256 liquidityAmount, bool isRoundUp)..."
            function fun_calculateAmount1OffsetWithTick_32078(var_lower_32056, var_liquidityAmount_32058, var_isRoundUp_32060) -> var__32063 {
                /// @src 78:4386:4392  "int256"
                let zero_t_int256_1246 := zero_value_for_split_t_int256()
                var__32063 := zero_t_int256_1246

                /// @src 78:4415:4423  "SafeCast"
                let expr_32065_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                /// @src 78:4456:4464  "TickMath"
                let expr_32068_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                /// @src 78:4484:4489  "lower"
                let _1247 := var_lower_32056
                let expr_32070 := _1247
                /// @src 78:4456:4490  "TickMath.getSqrtRatioAtTick(lower)"
                let expr_32071 := fun_getSqrtRatioAtTick_30100(expr_32070)
                /// @src 78:4492:4507  "liquidityAmount"
                let _1248 := var_liquidityAmount_32058
                let expr_32072 := _1248
                /// @src 78:4509:4518  "isRoundUp"
                let _1249 := var_isRoundUp_32060
                let expr_32073 := _1249
                /// @src 78:4433:4519  "calculateAmount1Offset(TickMath.getSqrtRatioAtTick(lower), liquidityAmount, isRoundUp)"
                let expr_32074 := fun_calculateAmount1Offset_32111(expr_32071, expr_32072, expr_32073)
                /// @src 78:4415:4520  "SafeCast.toInt256(calculateAmount1Offset(TickMath.getSqrtRatioAtTick(lower), liquidityAmount, isRoundUp))"
                let expr_32075 := fun_toInt256_28969(expr_32074)
                /// @src 78:4408:4520  "return SafeCast.toInt256(calculateAmount1Offset(TickMath.getSqrtRatioAtTick(lower), liquidityAmount, isRoundUp))"
                var__32063 := expr_32075
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            /// @ast-id 19652
            /// @src 81:3191:4061  "function settle(GlobalDataLibrary.GlobalData storage globalData, bool isQuoteAsset)..."
            function fun_settle_19652(var_globalData_19558_slot, var_isQuoteAsset_19560) -> var_paid_19563 {
                /// @src 81:3309:3320  "int256 paid"
                let zero_t_int256_1250 := zero_value_for_split_t_int256()
                var_paid_19563 := zero_t_int256_1250

                /// @src 81:3336:3352  "address currency"
                let var_currency_19566
                let zero_t_address_1251 := zero_value_for_split_t_address()
                var_currency_19566 := zero_t_address_1251
                /// @src 81:3362:3384  "uint256 reservesBefore"
                let var_reservesBefore_19569
                let zero_t_uint256_1252 := zero_value_for_split_t_uint256()
                var_reservesBefore_19569 := zero_t_uint256_1252
                /// @src 81:3399:3411  "isQuoteAsset"
                let _1253 := var_isQuoteAsset_19560
                let expr_19571 := _1253
                /// @src 81:3395:3735  "if (isQuoteAsset) {..."
                switch expr_19571
                case 0 {
                    /// @src 81:3603:3613  "globalData"
                    let _1254_slot := var_globalData_19558_slot
                    let expr_19591_slot := _1254_slot
                    /// @src 81:3603:3619  "globalData.pairs"
                    let _1255 := add(expr_19591_slot, 3)
                    let _1256_slot := _1255
                    let expr_19592_slot := _1256_slot
                    /// @src 81:3620:3630  "globalData"
                    let _1257_slot := var_globalData_19558_slot
                    let expr_19593_slot := _1257_slot
                    /// @src 81:3620:3639  "globalData.lockData"
                    let _1258 := add(expr_19593_slot, 6)
                    let _1259_slot := _1258
                    let expr_19594_slot := _1259_slot
                    /// @src 81:3620:3646  "globalData.lockData.pairId"
                    let _1260 := add(expr_19594_slot, 3)
                    let _1261 := read_from_storage_split_offset_0_t_uint256(_1260)
                    let expr_19595 := _1261
                    /// @src 81:3603:3647  "globalData.pairs[globalData.lockData.pairId]"
                    let _1262 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_19592_slot,expr_19595)
                    let _1263_slot := _1262
                    let expr_19596_slot := _1263_slot
                    /// @src 81:3603:3656  "globalData.pairs[globalData.lockData.pairId].basePool"
                    let _1264 := add(expr_19596_slot, 17)
                    let _1265_slot := _1264
                    let expr_19597_slot := _1265_slot
                    /// @src 81:3603:3662  "globalData.pairs[globalData.lockData.pairId].basePool.token"
                    let _1266 := add(expr_19597_slot, 0)
                    let _1267 := read_from_storage_split_offset_0_t_address(_1266)
                    let expr_19598 := _1267
                    /// @src 81:3592:3662  "currency = globalData.pairs[globalData.lockData.pairId].basePool.token"
                    var_currency_19566 := expr_19598
                    let expr_19599 := expr_19598
                    /// @src 81:3693:3703  "globalData"
                    let _1268_slot := var_globalData_19558_slot
                    let expr_19602_slot := _1268_slot
                    /// @src 81:3693:3712  "globalData.lockData"
                    let _1269 := add(expr_19602_slot, 6)
                    let _1270_slot := _1269
                    let expr_19603_slot := _1270_slot
                    /// @src 81:3693:3724  "globalData.lockData.baseReserve"
                    let _1271 := add(expr_19603_slot, 2)
                    let _1272 := read_from_storage_split_offset_0_t_uint256(_1271)
                    let expr_19604 := _1272
                    /// @src 81:3676:3724  "reservesBefore = globalData.lockData.baseReserve"
                    var_reservesBefore_19569 := expr_19604
                    let expr_19605 := expr_19604
                    /// @src 81:3395:3735  "if (isQuoteAsset) {..."
                }
                default {
                    /// @src 81:3438:3448  "globalData"
                    let _1273_slot := var_globalData_19558_slot
                    let expr_19573_slot := _1273_slot
                    /// @src 81:3438:3454  "globalData.pairs"
                    let _1274 := add(expr_19573_slot, 3)
                    let _1275_slot := _1274
                    let expr_19574_slot := _1275_slot
                    /// @src 81:3455:3465  "globalData"
                    let _1276_slot := var_globalData_19558_slot
                    let expr_19575_slot := _1276_slot
                    /// @src 81:3455:3474  "globalData.lockData"
                    let _1277 := add(expr_19575_slot, 6)
                    let _1278_slot := _1277
                    let expr_19576_slot := _1278_slot
                    /// @src 81:3455:3481  "globalData.lockData.pairId"
                    let _1279 := add(expr_19576_slot, 3)
                    let _1280 := read_from_storage_split_offset_0_t_uint256(_1279)
                    let expr_19577 := _1280
                    /// @src 81:3438:3482  "globalData.pairs[globalData.lockData.pairId]"
                    let _1281 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_19574_slot,expr_19577)
                    let _1282_slot := _1281
                    let expr_19578_slot := _1282_slot
                    /// @src 81:3438:3492  "globalData.pairs[globalData.lockData.pairId].quotePool"
                    let _1283 := add(expr_19578_slot, 3)
                    let _1284_slot := _1283
                    let expr_19579_slot := _1284_slot
                    /// @src 81:3438:3498  "globalData.pairs[globalData.lockData.pairId].quotePool.token"
                    let _1285 := add(expr_19579_slot, 0)
                    let _1286 := read_from_storage_split_offset_0_t_address(_1285)
                    let expr_19580 := _1286
                    /// @src 81:3427:3498  "currency = globalData.pairs[globalData.lockData.pairId].quotePool.token"
                    var_currency_19566 := expr_19580
                    let expr_19581 := expr_19580
                    /// @src 81:3529:3539  "globalData"
                    let _1287_slot := var_globalData_19558_slot
                    let expr_19584_slot := _1287_slot
                    /// @src 81:3529:3548  "globalData.lockData"
                    let _1288 := add(expr_19584_slot, 6)
                    let _1289_slot := _1288
                    let expr_19585_slot := _1289_slot
                    /// @src 81:3529:3561  "globalData.lockData.quoteReserve"
                    let _1290 := add(expr_19585_slot, 1)
                    let _1291 := read_from_storage_split_offset_0_t_uint256(_1290)
                    let expr_19586 := _1291
                    /// @src 81:3512:3561  "reservesBefore = globalData.lockData.quoteReserve"
                    var_reservesBefore_19569 := expr_19586
                    let expr_19587 := expr_19586
                    /// @src 81:3395:3735  "if (isQuoteAsset) {..."
                }
                /// @src 81:3774:3782  "currency"
                let _1292 := var_currency_19566
                let expr_19612 := _1292
                /// @src 81:3768:3783  "ERC20(currency)"
                let expr_19613_address := convert_t_address_to_t_contract$_ERC20_$13305(expr_19612)
                /// @src 81:3768:3793  "ERC20(currency).balanceOf"
                let expr_19614_address := convert_t_contract$_ERC20_$13305_to_t_address(expr_19613_address)
                let expr_19614_functionSelector := 0x70a08231
                /// @src 81:3802:3806  "this"
                let expr_19617_address := address()
                /// @src 81:3794:3807  "address(this)"
                let expr_19618 := convert_t_contract$_GlobalDataLibrary_$19653_to_t_address(expr_19617_address)
                /// @src 81:3768:3808  "ERC20(currency).balanceOf(address(this))"

                // storage for arguments and returned data
                let _1293 := allocate_unbounded()
                mstore(_1293, shift_left_224(expr_19614_functionSelector))
                let _1294 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_1293, 4) , expr_19618)

                let _1295 := staticcall(gas(), expr_19614_address,  _1293, sub(_1294, _1293), _1293, 32)

                if iszero(_1295) { revert_forward_1() }

                let expr_19619
                if _1295 {

                    let _1296 := 32

                    if gt(_1296, returndatasize()) {
                        _1296 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_1293, _1296)

                    // decode return parameters from external try-call into retVars
                    expr_19619 :=  abi_decode_tuple_t_uint256_fromMemory(_1293, add(_1293, _1296))
                }
                /// @src 81:3745:3808  "uint256 reserveAfter = ERC20(currency).balanceOf(address(this))"
                let var_reserveAfter_19610 := expr_19619
                /// @src 81:3823:3835  "isQuoteAsset"
                let _1297 := var_isQuoteAsset_19560
                let expr_19621 := _1297
                /// @src 81:3819:3986  "if (isQuoteAsset) {..."
                switch expr_19621
                case 0 {
                    /// @src 81:3963:3975  "reserveAfter"
                    let _1298 := var_reserveAfter_19610
                    let expr_19636 := _1298
                    /// @src 81:3929:3939  "globalData"
                    let _1299_slot := var_globalData_19558_slot
                    let expr_19631_slot := _1299_slot
                    /// @src 81:3929:3948  "globalData.lockData"
                    let _1300 := add(expr_19631_slot, 6)
                    let _1301_slot := _1300
                    let expr_19634_slot := _1301_slot
                    /// @src 81:3929:3960  "globalData.lockData.baseReserve"
                    let _1302 := add(expr_19634_slot, 2)
                    /// @src 81:3929:3975  "globalData.lockData.baseReserve = reserveAfter"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_1302, expr_19636)
                    let expr_19637 := expr_19636
                    /// @src 81:3819:3986  "if (isQuoteAsset) {..."
                }
                default {
                    /// @src 81:3886:3898  "reserveAfter"
                    let _1303 := var_reserveAfter_19610
                    let expr_19627 := _1303
                    /// @src 81:3851:3861  "globalData"
                    let _1304_slot := var_globalData_19558_slot
                    let expr_19622_slot := _1304_slot
                    /// @src 81:3851:3870  "globalData.lockData"
                    let _1305 := add(expr_19622_slot, 6)
                    let _1306_slot := _1305
                    let expr_19625_slot := _1306_slot
                    /// @src 81:3851:3883  "globalData.lockData.quoteReserve"
                    let _1307 := add(expr_19625_slot, 1)
                    /// @src 81:3851:3898  "globalData.lockData.quoteReserve = reserveAfter"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_1307, expr_19627)
                    let expr_19628 := expr_19627
                    /// @src 81:3819:3986  "if (isQuoteAsset) {..."
                }
                /// @src 81:4003:4015  "reserveAfter"
                let _1308 := var_reserveAfter_19610
                let expr_19642 := _1308
                /// @src 81:4003:4024  "reserveAfter.toInt256"
                let expr_19643_self := expr_19642
                /// @src 81:4003:4026  "reserveAfter.toInt256()"
                let expr_19644 := fun_toInt256_28969(expr_19643_self)
                /// @src 81:4029:4043  "reservesBefore"
                let _1309 := var_reservesBefore_19569
                let expr_19645 := _1309
                /// @src 81:4029:4052  "reservesBefore.toInt256"
                let expr_19646_self := expr_19645
                /// @src 81:4029:4054  "reservesBefore.toInt256()"
                let expr_19647 := fun_toInt256_28969(expr_19646_self)
                /// @src 81:4003:4054  "reserveAfter.toInt256() - reservesBefore.toInt256()"
                let expr_19648 := checked_sub_t_int256(expr_19644, expr_19647)

                /// @src 81:3996:4054  "paid = reserveAfter.toInt256() - reservesBefore.toInt256()"
                var_paid_19563 := expr_19648
                let expr_19649 := expr_19648

            }
            /// @src 68:814:5932  "library Trade {..."

            function cleanup_t_rational_50_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_50_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_50_by_1(value)))
            }

            function cleanup_t_rational_100_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_100_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_100_by_1(value)))
            }

            /// @src 57:336:381  "uint256 internal constant MIN_LIQUIDITY = 100"
            function constant_MIN_LIQUIDITY_30285() -> ret {
                /// @src 57:378:381  "100"
                let expr_30284 := 0x64
                let _1314 := convert_t_rational_100_by_1_to_t_uint256(expr_30284)

                ret := _1314
            }

            /// @ast-id 15094
            /// @src 61:21239:21800  "function getAvailableSqrtAmount(SqrtPerpAssetStatus memory _assetStatus, bool _isWithdraw)..."
            function fun_getAvailableSqrtAmount_15094(var__assetStatus_15044_mpos, var__isWithdraw_15046) -> var__15049 {
                /// @src 61:21377:21384  "uint256"
                let zero_t_uint256_1310 := zero_value_for_split_t_uint256()
                var__15049 := zero_t_uint256_1310

                /// @src 61:21417:21421  "Math"
                let expr_15053_address := linkersymbol("src/libraries/math/Math.sol:Math")
                /// @src 61:21426:21438  "_assetStatus"
                let _1311_mpos := var__assetStatus_15044_mpos
                let expr_15055_mpos := _1311_mpos
                /// @src 61:21426:21450  "_assetStatus.totalAmount"
                let _1312 := add(expr_15055_mpos, 128)
                let _1313 := read_from_memoryt_uint256(_1312)
                let expr_15056 := _1313
                /// @src 61:21453:21455  "50"
                let expr_15057 := 0x32
                /// @src 61:21426:21455  "_assetStatus.totalAmount / 50"
                let expr_15058 := checked_div_t_uint256(expr_15056, convert_t_rational_50_by_1_to_t_uint256(expr_15057))

                /// @src 61:21457:21466  "Constants"
                let expr_15059_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 61:21457:21480  "Constants.MIN_LIQUIDITY"
                let expr_15060 := constant_MIN_LIQUIDITY_30285()
                /// @src 61:21417:21481  "Math.max(_assetStatus.totalAmount / 50, Constants.MIN_LIQUIDITY)"
                let expr_15061 := fun_max_32160(expr_15058, expr_15060)
                /// @src 61:21400:21481  "uint256 buffer = Math.max(_assetStatus.totalAmount / 50, Constants.MIN_LIQUIDITY)"
                let var_buffer_15052 := expr_15061
                /// @src 61:21511:21523  "_assetStatus"
                let _1315_mpos := var__assetStatus_15044_mpos
                let expr_15065_mpos := _1315_mpos
                /// @src 61:21511:21535  "_assetStatus.totalAmount"
                let _1316 := add(expr_15065_mpos, 128)
                let _1317 := read_from_memoryt_uint256(_1316)
                let expr_15066 := _1317
                /// @src 61:21538:21550  "_assetStatus"
                let _1318_mpos := var__assetStatus_15044_mpos
                let expr_15067_mpos := _1318_mpos
                /// @src 61:21538:21565  "_assetStatus.borrowedAmount"
                let _1319 := add(expr_15067_mpos, 160)
                let _1320 := read_from_memoryt_uint256(_1319)
                let expr_15068 := _1320
                /// @src 61:21511:21565  "_assetStatus.totalAmount - _assetStatus.borrowedAmount"
                let expr_15069 := checked_sub_t_uint256(expr_15066, expr_15068)

                /// @src 61:21491:21565  "uint256 available = _assetStatus.totalAmount - _assetStatus.borrowedAmount"
                let var_available_15064 := expr_15069
                /// @src 61:21580:21591  "_isWithdraw"
                let _1321 := var__isWithdraw_15046
                let expr_15071 := _1321
                /// @src 61:21580:21627  "_isWithdraw && _assetStatus.borrowedAmount == 0"
                let expr_15076 := expr_15071
                if expr_15076 {
                    /// @src 61:21595:21607  "_assetStatus"
                    let _1322_mpos := var__assetStatus_15044_mpos
                    let expr_15072_mpos := _1322_mpos
                    /// @src 61:21595:21622  "_assetStatus.borrowedAmount"
                    let _1323 := add(expr_15072_mpos, 160)
                    let _1324 := read_from_memoryt_uint256(_1323)
                    let expr_15073 := _1324
                    /// @src 61:21626:21627  "0"
                    let expr_15074 := 0x00
                    /// @src 61:21595:21627  "_assetStatus.borrowedAmount == 0"
                    let expr_15075 := eq(cleanup_t_uint256(expr_15073), convert_t_rational_0_by_1_to_t_uint256(expr_15074))
                    /// @src 61:21580:21627  "_isWithdraw && _assetStatus.borrowedAmount == 0"
                    expr_15076 := expr_15075
                }
                /// @src 61:21576:21670  "if (_isWithdraw && _assetStatus.borrowedAmount == 0) {..."
                if expr_15076 {
                    /// @src 61:21650:21659  "available"
                    let _1325 := var_available_15064
                    let expr_15077 := _1325
                    /// @src 61:21643:21659  "return available"
                    var__15049 := expr_15077
                    leave
                    /// @src 61:21576:21670  "if (_isWithdraw && _assetStatus.borrowedAmount == 0) {..."
                }
                /// @src 61:21684:21693  "available"
                let _1326 := var_available_15064
                let expr_15081 := _1326
                /// @src 61:21697:21703  "buffer"
                let _1327 := var_buffer_15052
                let expr_15082 := _1327
                /// @src 61:21684:21703  "available >= buffer"
                let expr_15083 := iszero(lt(cleanup_t_uint256(expr_15081), cleanup_t_uint256(expr_15082)))
                /// @src 61:21680:21794  "if (available >= buffer) {..."
                switch expr_15083
                case 0 {
                    /// @src 61:21782:21783  "0"
                    let expr_15089 := 0x00
                    /// @src 61:21775:21783  "return 0"
                    var__15049 := convert_t_rational_0_by_1_to_t_uint256(expr_15089)
                    leave
                    /// @src 61:21680:21794  "if (available >= buffer) {..."
                }
                default {
                    /// @src 61:21726:21735  "available"
                    let _1328 := var_available_15064
                    let expr_15084 := _1328
                    /// @src 61:21738:21744  "buffer"
                    let _1329 := var_buffer_15052
                    let expr_15085 := _1329
                    /// @src 61:21726:21744  "available - buffer"
                    let expr_15086 := checked_sub_t_uint256(expr_15084, expr_15085)

                    /// @src 61:21719:21744  "return available - buffer"
                    var__15049 := expr_15086
                    leave
                    /// @src 61:21680:21794  "if (available >= buffer) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 31123
            /// @src 66:2285:2416  "function isSameSign(int256 a, int256 b) internal pure returns (bool) {..."
            function fun_isSameSign_31123(var_a_31097, var_b_31099) -> var__31102 {
                /// @src 66:2348:2352  "bool"
                let zero_t_bool_1330 := zero_value_for_split_t_bool()
                var__31102 := zero_t_bool_1330

                /// @src 66:2372:2373  "a"
                let _1331 := var_a_31097
                let expr_31104 := _1331
                /// @src 66:2377:2378  "0"
                let expr_31105 := 0x00
                /// @src 66:2372:2378  "a >= 0"
                let expr_31106 := iszero(slt(cleanup_t_int256(expr_31104), convert_t_rational_0_by_1_to_t_int256(expr_31105)))
                /// @src 66:2372:2388  "a >= 0 && b >= 0"
                let expr_31110 := expr_31106
                if expr_31110 {
                    /// @src 66:2382:2383  "b"
                    let _1332 := var_b_31099
                    let expr_31107 := _1332
                    /// @src 66:2387:2388  "0"
                    let expr_31108 := 0x00
                    /// @src 66:2382:2388  "b >= 0"
                    let expr_31109 := iszero(slt(cleanup_t_int256(expr_31107), convert_t_rational_0_by_1_to_t_int256(expr_31108)))
                    /// @src 66:2372:2388  "a >= 0 && b >= 0"
                    expr_31110 := expr_31109
                }
                /// @src 66:2371:2389  "(a >= 0 && b >= 0)"
                let expr_31111 := expr_31110
                /// @src 66:2371:2409  "(a >= 0 && b >= 0) || (a < 0 && b < 0)"
                let expr_31120 := expr_31111
                if iszero(expr_31120) {
                    /// @src 66:2394:2395  "a"
                    let _1333 := var_a_31097
                    let expr_31112 := _1333
                    /// @src 66:2398:2399  "0"
                    let expr_31113 := 0x00
                    /// @src 66:2394:2399  "a < 0"
                    let expr_31114 := slt(cleanup_t_int256(expr_31112), convert_t_rational_0_by_1_to_t_int256(expr_31113))
                    /// @src 66:2394:2408  "a < 0 && b < 0"
                    let expr_31118 := expr_31114
                    if expr_31118 {
                        /// @src 66:2403:2404  "b"
                        let _1334 := var_b_31099
                        let expr_31115 := _1334
                        /// @src 66:2407:2408  "0"
                        let expr_31116 := 0x00
                        /// @src 66:2403:2408  "b < 0"
                        let expr_31117 := slt(cleanup_t_int256(expr_31115), convert_t_rational_0_by_1_to_t_int256(expr_31116))
                        /// @src 66:2394:2408  "a < 0 && b < 0"
                        expr_31118 := expr_31117
                    }
                    /// @src 66:2393:2409  "(a < 0 && b < 0)"
                    let expr_31119 := expr_31118
                    /// @src 66:2371:2409  "(a >= 0 && b >= 0) || (a < 0 && b < 0)"
                    expr_31120 := expr_31119
                }
                /// @src 66:2364:2409  "return (a >= 0 && b >= 0) || (a < 0 && b < 0)"
                var__31102 := expr_31120
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 31623
            /// @src 66:7723:7914  "function getAvailableCollateralValue(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getAvailableCollateralValue_31623(var_tokenState_31609_mpos) -> var__31612 {
                /// @src 66:7814:7821  "uint256"
                let zero_t_uint256_1335 := zero_value_for_split_t_uint256()
                var__31612 := zero_t_uint256_1335

                /// @src 66:7864:7874  "tokenState"
                let _1336_mpos := var_tokenState_31609_mpos
                let expr_31615_mpos := _1336_mpos
                /// @src 66:7840:7875  "getTotalCollateralValue(tokenState)"
                let expr_31616 := fun_getTotalCollateralValue_31594(expr_31615_mpos)
                /// @src 66:7896:7906  "tokenState"
                let _1337_mpos := var_tokenState_31609_mpos
                let expr_31618_mpos := _1337_mpos
                /// @src 66:7878:7907  "getTotalDebtValue(tokenState)"
                let expr_31619 := fun_getTotalDebtValue_31606(expr_31618_mpos)
                /// @src 66:7840:7907  "getTotalCollateralValue(tokenState) - getTotalDebtValue(tokenState)"
                let expr_31620 := checked_sub_t_uint256(expr_31616, expr_31619)

                /// @src 66:7833:7907  "return getTotalCollateralValue(tokenState) - getTotalDebtValue(tokenState)"
                var__31612 := expr_31620
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 31366
            /// @src 66:4363:4784  "function computeUserFee(ScaledAsset.AssetStatus memory _assetStatus, ScaledAsset.UserStatus memory _userStatus)..."
            function fun_computeUserFee_31366(var__assetStatus_31329_mpos, var__userStatus_31332_mpos) -> var_interestFee_31335 {
                /// @src 66:4522:4540  "int256 interestFee"
                let zero_t_int256_1338 := zero_value_for_split_t_int256()
                var_interestFee_31335 := zero_t_int256_1338

                /// @src 66:4560:4571  "_userStatus"
                let _1339_mpos := var__userStatus_31332_mpos
                let expr_31337_mpos := _1339_mpos
                /// @src 66:4560:4586  "_userStatus.positionAmount"
                let _1340 := add(expr_31337_mpos, 0)
                let _1341 := read_from_memoryt_int256(_1340)
                let expr_31338 := _1341
                /// @src 66:4589:4590  "0"
                let expr_31339 := 0x00
                /// @src 66:4560:4590  "_userStatus.positionAmount > 0"
                let expr_31340 := sgt(cleanup_t_int256(expr_31338), convert_t_rational_0_by_1_to_t_int256(expr_31339))
                /// @src 66:4556:4778  "if (_userStatus.positionAmount > 0) {..."
                switch expr_31340
                case 0 {
                    /// @src 66:4729:4741  "_assetStatus"
                    let _1342_mpos := var__assetStatus_31329_mpos
                    let expr_31354_mpos := _1342_mpos
                    /// @src 66:4743:4754  "_userStatus"
                    let _1343_mpos := var__userStatus_31332_mpos
                    let expr_31355_mpos := _1343_mpos
                    /// @src 66:4718:4755  "getDebtFee(_assetStatus, _userStatus)"
                    let expr_31356 := fun_getDebtFee_31479(expr_31354_mpos, expr_31355_mpos)
                    /// @src 66:4717:4756  "(getDebtFee(_assetStatus, _userStatus))"
                    let expr_31357 := expr_31356
                    /// @src 66:4717:4765  "(getDebtFee(_assetStatus, _userStatus)).toInt256"
                    let expr_31358_self := expr_31357
                    /// @src 66:4717:4767  "(getDebtFee(_assetStatus, _userStatus)).toInt256()"
                    let expr_31359 := fun_toInt256_28969(expr_31358_self)
                    /// @src 66:4716:4767  "-(getDebtFee(_assetStatus, _userStatus)).toInt256()"
                    let expr_31360 := negate_t_int256(expr_31359)
                    /// @src 66:4702:4767  "interestFee = -(getDebtFee(_assetStatus, _userStatus)).toInt256()"
                    var_interestFee_31335 := expr_31360
                    let expr_31361 := expr_31360
                    /// @src 66:4556:4778  "if (_userStatus.positionAmount > 0) {..."
                }
                default {
                    /// @src 66:4633:4645  "_assetStatus"
                    let _1344_mpos := var__assetStatus_31329_mpos
                    let expr_31343_mpos := _1344_mpos
                    /// @src 66:4647:4658  "_userStatus"
                    let _1345_mpos := var__userStatus_31332_mpos
                    let expr_31344_mpos := _1345_mpos
                    /// @src 66:4621:4659  "getAssetFee(_assetStatus, _userStatus)"
                    let expr_31345 := fun_getAssetFee_31442(expr_31343_mpos, expr_31344_mpos)
                    /// @src 66:4620:4660  "(getAssetFee(_assetStatus, _userStatus))"
                    let expr_31346 := expr_31345
                    /// @src 66:4620:4669  "(getAssetFee(_assetStatus, _userStatus)).toInt256"
                    let expr_31347_self := expr_31346
                    /// @src 66:4620:4671  "(getAssetFee(_assetStatus, _userStatus)).toInt256()"
                    let expr_31348 := fun_toInt256_28969(expr_31347_self)
                    /// @src 66:4606:4671  "interestFee = (getAssetFee(_assetStatus, _userStatus)).toInt256()"
                    var_interestFee_31335 := expr_31348
                    let expr_31349 := expr_31348
                    /// @src 66:4556:4778  "if (_userStatus.positionAmount > 0) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            function read_from_memoryt_uint64(ptr) -> returnValue {

                let value := cleanup_t_uint64(mload(ptr))

                returnValue :=

                value

            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_RebalanceFeeGrowthCache_$6121_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @src 57:87:123  "uint256 internal constant ONE = 1e18"
            function constant_ONE_30273() -> ret {
                /// @src 57:119:123  "1e18"
                let expr_30272 := 0x0de0b6b3a7640000
                let _1378 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_30272)

                ret := _1378
            }

            /// @ast-id 33730
            /// @src 62:4681:5817  "function computeRebalanceInterest(..."
            function fun_computeRebalanceInterest_33730(var_pairId_33648, var_assetStatus_33651_mpos, var_rebalanceFeeGrowthCache_33656_slot, var_userStatus_33659_mpos) -> var_rebalanceInterestBase_33662, var_rebalanceInterestQuote_33664 {
                /// @src 62:4958:4986  "int256 rebalanceInterestBase"
                let zero_t_int256_1346 := zero_value_for_split_t_int256()
                var_rebalanceInterestBase_33662 := zero_t_int256_1346
                /// @src 62:4988:5017  "int256 rebalanceInterestQuote"
                let zero_t_int256_1347 := zero_value_for_split_t_int256()
                var_rebalanceInterestQuote_33664 := zero_t_int256_1347

                /// @src 62:5033:5043  "userStatus"
                let _1348_mpos := var_userStatus_33659_mpos
                let expr_33666_mpos := _1348_mpos
                /// @src 62:5033:5052  "userStatus.sqrtPerp"
                let _1349 := add(expr_33666_mpos, 160)
                let _1350_mpos := mload(_1349)
                let expr_33667_mpos := _1350_mpos
                /// @src 62:5033:5059  "userStatus.sqrtPerp.amount"
                let _1351 := add(expr_33667_mpos, 0)
                let _1352 := read_from_memoryt_int256(_1351)
                let expr_33668 := _1352
                /// @src 62:5063:5064  "0"
                let expr_33669 := 0x00
                /// @src 62:5033:5064  "userStatus.sqrtPerp.amount != 0"
                let expr_33670 := iszero(eq(cleanup_t_int256(expr_33668), convert_t_rational_0_by_1_to_t_int256(expr_33669)))
                /// @src 62:5033:5122  "userStatus.sqrtPerp.amount != 0 && userStatus.lastNumRebalance < assetStatus.numRebalance"
                let expr_33676 := expr_33670
                if expr_33676 {
                    /// @src 62:5068:5078  "userStatus"
                    let _1353_mpos := var_userStatus_33659_mpos
                    let expr_33671_mpos := _1353_mpos
                    /// @src 62:5068:5095  "userStatus.lastNumRebalance"
                    let _1354 := add(expr_33671_mpos, 96)
                    let _1355 := read_from_memoryt_uint64(_1354)
                    let expr_33672 := _1355
                    /// @src 62:5098:5109  "assetStatus"
                    let _1356_mpos := var_assetStatus_33651_mpos
                    let expr_33673_mpos := _1356_mpos
                    /// @src 62:5098:5122  "assetStatus.numRebalance"
                    let _1357 := add(expr_33673_mpos, 96)
                    let _1358 := read_from_memoryt_uint64(_1357)
                    let expr_33674 := _1358
                    /// @src 62:5068:5122  "userStatus.lastNumRebalance < assetStatus.numRebalance"
                    let expr_33675 := lt(cleanup_t_uint64(expr_33672), cleanup_t_uint64(expr_33674))
                    /// @src 62:5033:5122  "userStatus.sqrtPerp.amount != 0 && userStatus.lastNumRebalance < assetStatus.numRebalance"
                    expr_33676 := expr_33675
                }
                /// @src 62:5029:5811  "if (userStatus.sqrtPerp.amount != 0 && userStatus.lastNumRebalance < assetStatus.numRebalance) {..."
                if expr_33676 {
                    /// @src 62:5160:5167  "PairLib"
                    let expr_33679_address := linkersymbol("src/libraries/PairLib.sol:PairLib")
                    /// @src 62:5188:5194  "pairId"
                    let _1359 := var_pairId_33648
                    let expr_33681 := _1359
                    /// @src 62:5196:5206  "userStatus"
                    let _1360_mpos := var_userStatus_33659_mpos
                    let expr_33682_mpos := _1360_mpos
                    /// @src 62:5196:5223  "userStatus.lastNumRebalance"
                    let _1361 := add(expr_33682_mpos, 96)
                    let _1362 := read_from_memoryt_uint64(_1361)
                    let expr_33683 := _1362
                    /// @src 62:5160:5224  "PairLib.getRebalanceCacheId(pairId, userStatus.lastNumRebalance)"
                    let expr_33684 := fun_getRebalanceCacheId_34418(expr_33681, expr_33683)
                    /// @src 62:5138:5224  "uint256 rebalanceId = PairLib.getRebalanceCacheId(pairId, userStatus.lastNumRebalance)"
                    let var_rebalanceId_33678 := expr_33684
                    /// @src 62:5265:5269  "Math"
                    let expr_33688_address := linkersymbol("src/libraries/math/Math.sol:Math")
                    /// @src 62:5274:5284  "userStatus"
                    let _1363_mpos := var_userStatus_33659_mpos
                    let expr_33690_mpos := _1363_mpos
                    /// @src 62:5274:5293  "userStatus.sqrtPerp"
                    let _1364 := add(expr_33690_mpos, 160)
                    let _1365_mpos := mload(_1364)
                    let expr_33691_mpos := _1365_mpos
                    /// @src 62:5274:5300  "userStatus.sqrtPerp.amount"
                    let _1366 := add(expr_33691_mpos, 0)
                    let _1367 := read_from_memoryt_int256(_1366)
                    let expr_33692 := _1367
                    /// @src 62:5265:5301  "Math.abs(userStatus.sqrtPerp.amount)"
                    let expr_33693 := fun_abs_32143(expr_33692)
                    /// @src 62:5239:5301  "uint256 rebalanceAmount = Math.abs(userStatus.sqrtPerp.amount)"
                    let var_rebalanceAmount_33687 := expr_33693
                    /// @src 62:5340:5344  "Math"
                    let expr_33696_address := linkersymbol("src/libraries/math/Math.sol:Math")
                    /// @src 62:5379:5390  "assetStatus"
                    let _1368_mpos := var_assetStatus_33651_mpos
                    let expr_33698_mpos := _1368_mpos
                    /// @src 62:5379:5418  "assetStatus.rebalanceInterestGrowthBase"
                    let _1369 := add(expr_33698_mpos, 480)
                    let _1370 := read_from_memoryt_int256(_1369)
                    let expr_33699 := _1370
                    /// @src 62:5421:5444  "rebalanceFeeGrowthCache"
                    let _1371_slot := var_rebalanceFeeGrowthCache_33656_slot
                    let expr_33700_slot := _1371_slot
                    /// @src 62:5445:5456  "rebalanceId"
                    let _1372 := var_rebalanceId_33678
                    let expr_33701 := _1372
                    /// @src 62:5421:5457  "rebalanceFeeGrowthCache[rebalanceId]"
                    let _1373 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_RebalanceFeeGrowthCache_$6121_storage_$_of_t_uint256(expr_33700_slot,expr_33701)
                    let _1374_slot := _1373
                    let expr_33702_slot := _1374_slot
                    /// @src 62:5421:5474  "rebalanceFeeGrowthCache[rebalanceId].underlyingGrowth"
                    let _1375 := add(expr_33702_slot, 1)
                    let _1376 := read_from_storage_split_offset_0_t_int256(_1375)
                    let expr_33703 := _1376
                    /// @src 62:5379:5474  "assetStatus.rebalanceInterestGrowthBase - rebalanceFeeGrowthCache[rebalanceId].underlyingGrowth"
                    let expr_33704 := checked_sub_t_int256(expr_33699, expr_33703)

                    /// @src 62:5492:5507  "rebalanceAmount"
                    let _1377 := var_rebalanceAmount_33687
                    let expr_33705 := _1377
                    /// @src 62:5525:5534  "Constants"
                    let expr_33706_address := linkersymbol("src/libraries/Constants.sol:Constants")
                    /// @src 62:5525:5538  "Constants.ONE"
                    let expr_33707 := constant_ONE_30273()
                    /// @src 62:5340:5552  "Math.mulDivDownInt256(..."
                    let expr_33708 := fun_mulDivDownInt256_32330(expr_33704, expr_33705, expr_33707)
                    /// @src 62:5316:5552  "rebalanceInterestBase = Math.mulDivDownInt256(..."
                    var_rebalanceInterestBase_33662 := expr_33708
                    let expr_33709 := expr_33708
                    /// @src 62:5591:5595  "Math"
                    let expr_33712_address := linkersymbol("src/libraries/math/Math.sol:Math")
                    /// @src 62:5630:5641  "assetStatus"
                    let _1379_mpos := var_assetStatus_33651_mpos
                    let expr_33714_mpos := _1379_mpos
                    /// @src 62:5630:5670  "assetStatus.rebalanceInterestGrowthQuote"
                    let _1380 := add(expr_33714_mpos, 512)
                    let _1381 := read_from_memoryt_int256(_1380)
                    let expr_33715 := _1381
                    /// @src 62:5673:5696  "rebalanceFeeGrowthCache"
                    let _1382_slot := var_rebalanceFeeGrowthCache_33656_slot
                    let expr_33716_slot := _1382_slot
                    /// @src 62:5697:5708  "rebalanceId"
                    let _1383 := var_rebalanceId_33678
                    let expr_33717 := _1383
                    /// @src 62:5673:5709  "rebalanceFeeGrowthCache[rebalanceId]"
                    let _1384 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_RebalanceFeeGrowthCache_$6121_storage_$_of_t_uint256(expr_33716_slot,expr_33717)
                    let _1385_slot := _1384
                    let expr_33718_slot := _1385_slot
                    /// @src 62:5673:5722  "rebalanceFeeGrowthCache[rebalanceId].stableGrowth"
                    let _1386 := add(expr_33718_slot, 0)
                    let _1387 := read_from_storage_split_offset_0_t_int256(_1386)
                    let expr_33719 := _1387
                    /// @src 62:5630:5722  "assetStatus.rebalanceInterestGrowthQuote - rebalanceFeeGrowthCache[rebalanceId].stableGrowth"
                    let expr_33720 := checked_sub_t_int256(expr_33715, expr_33719)

                    /// @src 62:5740:5755  "rebalanceAmount"
                    let _1388 := var_rebalanceAmount_33687
                    let expr_33721 := _1388
                    /// @src 62:5773:5782  "Constants"
                    let expr_33722_address := linkersymbol("src/libraries/Constants.sol:Constants")
                    /// @src 62:5773:5786  "Constants.ONE"
                    let expr_33723 := constant_ONE_30273()
                    /// @src 62:5591:5800  "Math.mulDivDownInt256(..."
                    let expr_33724 := fun_mulDivDownInt256_32330(expr_33720, expr_33721, expr_33723)
                    /// @src 62:5566:5800  "rebalanceInterestQuote = Math.mulDivDownInt256(..."
                    var_rebalanceInterestQuote_33664 := expr_33724
                    let expr_33725 := expr_33724
                    /// @src 62:5029:5811  "if (userStatus.sqrtPerp.amount != 0 && userStatus.lastNumRebalance < assetStatus.numRebalance) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @src 57:655:723  "uint256 internal constant Q128 = 0x100000000000000000000000000000000"
            function constant_Q128_30300() -> ret {
                /// @src 57:688:723  "0x100000000000000000000000000000000"
                let expr_30299 := 0x0100000000000000000000000000000000
                let _1437 := convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(expr_30299)

                ret := _1437
            }

            function read_from_memoryt_bool(ptr) -> returnValue {

                let value := cleanup_t_bool(mload(ptr))

                returnValue :=

                value

            }

            /// @ast-id 33578
            /// @src 62:2677:3888  "function computePremium(DataType.PairStatus memory baseAssetStatus, Perp.SqrtPositionStatus memory sqrtPerp)..."
            function fun_computePremium_33578(var_baseAssetStatus_33465_mpos, var_sqrtPerp_33468_mpos) -> var_feeUnderlying_33471, var_feeStable_33473 {
                /// @src 62:2833:2853  "int256 feeUnderlying"
                let zero_t_int256_1389 := zero_value_for_split_t_int256()
                var_feeUnderlying_33471 := zero_t_int256_1389
                /// @src 62:2855:2871  "int256 feeStable"
                let zero_t_int256_1390 := zero_value_for_split_t_int256()
                var_feeStable_33473 := zero_t_int256_1390

                /// @src 62:2887:2906  "uint256 growthDiff0"
                let var_growthDiff0_33476
                let zero_t_uint256_1391 := zero_value_for_split_t_uint256()
                var_growthDiff0_33476 := zero_t_uint256_1391
                /// @src 62:2916:2935  "uint256 growthDiff1"
                let var_growthDiff1_33479
                let zero_t_uint256_1392 := zero_value_for_split_t_uint256()
                var_growthDiff1_33479 := zero_t_uint256_1392
                /// @src 62:2950:2958  "sqrtPerp"
                let _1393_mpos := var_sqrtPerp_33468_mpos
                let expr_33481_mpos := _1393_mpos
                /// @src 62:2950:2965  "sqrtPerp.amount"
                let _1394 := add(expr_33481_mpos, 0)
                let _1395 := read_from_memoryt_int256(_1394)
                let expr_33482 := _1395
                /// @src 62:2968:2969  "0"
                let expr_33483 := 0x00
                /// @src 62:2950:2969  "sqrtPerp.amount > 0"
                let expr_33484 := sgt(cleanup_t_int256(expr_33482), convert_t_rational_0_by_1_to_t_int256(expr_33483))
                /// @src 62:2946:3492  "if (sqrtPerp.amount > 0) {..."
                switch expr_33484
                case 0 {
                    /// @src 62:3184:3192  "sqrtPerp"
                    let _1396_mpos := var_sqrtPerp_33468_mpos
                    let expr_33504_mpos := _1396_mpos
                    /// @src 62:3184:3199  "sqrtPerp.amount"
                    let _1397 := add(expr_33504_mpos, 0)
                    let _1398 := read_from_memoryt_int256(_1397)
                    let expr_33505 := _1398
                    /// @src 62:3202:3203  "0"
                    let expr_33506 := 0x00
                    /// @src 62:3184:3203  "sqrtPerp.amount < 0"
                    let expr_33507 := slt(cleanup_t_int256(expr_33505), convert_t_rational_0_by_1_to_t_int256(expr_33506))
                    /// @src 62:3180:3492  "if (sqrtPerp.amount < 0) {..."
                    switch expr_33507
                    case 0 {
                        /// @src 62:3456:3469  "feeUnderlying"
                        let _1399 := var_feeUnderlying_33471
                        let expr_33527 := _1399
                        /// @src 62:3455:3481  "(feeUnderlying, feeStable)"
                        let expr_33529_component_1 := expr_33527
                        /// @src 62:3471:3480  "feeStable"
                        let _1400 := var_feeStable_33473
                        let expr_33528 := _1400
                        /// @src 62:3455:3481  "(feeUnderlying, feeStable)"
                        let expr_33529_component_2 := expr_33528
                        /// @src 62:3448:3481  "return (feeUnderlying, feeStable)"
                        var_feeUnderlying_33471 := expr_33529_component_1
                        var_feeStable_33473 := expr_33529_component_2
                        leave
                        /// @src 62:3180:3492  "if (sqrtPerp.amount < 0) {..."
                    }
                    default {
                        /// @src 62:3233:3248  "baseAssetStatus"
                        let _1401_mpos := var_baseAssetStatus_33465_mpos
                        let expr_33509_mpos := _1401_mpos
                        /// @src 62:3233:3264  "baseAssetStatus.sqrtAssetStatus"
                        let _1402 := add(expr_33509_mpos, 192)
                        let _1403_mpos := mload(_1402)
                        let expr_33510_mpos := _1403_mpos
                        /// @src 62:3233:3285  "baseAssetStatus.sqrtAssetStatus.borrowPremium0Growth"
                        let _1404 := add(expr_33510_mpos, 288)
                        let _1405 := read_from_memoryt_uint256(_1404)
                        let expr_33511 := _1405
                        /// @src 62:3288:3296  "sqrtPerp"
                        let _1406_mpos := var_sqrtPerp_33468_mpos
                        let expr_33512_mpos := _1406_mpos
                        /// @src 62:3288:3311  "sqrtPerp.entryTradeFee0"
                        let _1407 := add(expr_33512_mpos, 128)
                        let _1408 := read_from_memoryt_uint256(_1407)
                        let expr_33513 := _1408
                        /// @src 62:3233:3311  "baseAssetStatus.sqrtAssetStatus.borrowPremium0Growth - sqrtPerp.entryTradeFee0"
                        let expr_33514 := checked_sub_t_uint256(expr_33511, expr_33513)

                        /// @src 62:3219:3311  "growthDiff0 = baseAssetStatus.sqrtAssetStatus.borrowPremium0Growth - sqrtPerp.entryTradeFee0"
                        var_growthDiff0_33476 := expr_33514
                        let expr_33515 := expr_33514
                        /// @src 62:3339:3354  "baseAssetStatus"
                        let _1409_mpos := var_baseAssetStatus_33465_mpos
                        let expr_33518_mpos := _1409_mpos
                        /// @src 62:3339:3370  "baseAssetStatus.sqrtAssetStatus"
                        let _1410 := add(expr_33518_mpos, 192)
                        let _1411_mpos := mload(_1410)
                        let expr_33519_mpos := _1411_mpos
                        /// @src 62:3339:3391  "baseAssetStatus.sqrtAssetStatus.borrowPremium1Growth"
                        let _1412 := add(expr_33519_mpos, 320)
                        let _1413 := read_from_memoryt_uint256(_1412)
                        let expr_33520 := _1413
                        /// @src 62:3394:3402  "sqrtPerp"
                        let _1414_mpos := var_sqrtPerp_33468_mpos
                        let expr_33521_mpos := _1414_mpos
                        /// @src 62:3394:3417  "sqrtPerp.entryTradeFee1"
                        let _1415 := add(expr_33521_mpos, 160)
                        let _1416 := read_from_memoryt_uint256(_1415)
                        let expr_33522 := _1416
                        /// @src 62:3339:3417  "baseAssetStatus.sqrtAssetStatus.borrowPremium1Growth - sqrtPerp.entryTradeFee1"
                        let expr_33523 := checked_sub_t_uint256(expr_33520, expr_33522)

                        /// @src 62:3325:3417  "growthDiff1 = baseAssetStatus.sqrtAssetStatus.borrowPremium1Growth - sqrtPerp.entryTradeFee1"
                        var_growthDiff1_33479 := expr_33523
                        let expr_33524 := expr_33523
                        /// @src 62:3180:3492  "if (sqrtPerp.amount < 0) {..."
                    }
                    /// @src 62:2946:3492  "if (sqrtPerp.amount > 0) {..."
                }
                default {
                    /// @src 62:2999:3014  "baseAssetStatus"
                    let _1417_mpos := var_baseAssetStatus_33465_mpos
                    let expr_33486_mpos := _1417_mpos
                    /// @src 62:2999:3030  "baseAssetStatus.sqrtAssetStatus"
                    let _1418 := add(expr_33486_mpos, 192)
                    let _1419_mpos := mload(_1418)
                    let expr_33487_mpos := _1419_mpos
                    /// @src 62:2999:3041  "baseAssetStatus.sqrtAssetStatus.fee0Growth"
                    let _1420 := add(expr_33487_mpos, 352)
                    let _1421 := read_from_memoryt_uint256(_1420)
                    let expr_33488 := _1421
                    /// @src 62:3044:3052  "sqrtPerp"
                    let _1422_mpos := var_sqrtPerp_33468_mpos
                    let expr_33489_mpos := _1422_mpos
                    /// @src 62:3044:3067  "sqrtPerp.entryTradeFee0"
                    let _1423 := add(expr_33489_mpos, 128)
                    let _1424 := read_from_memoryt_uint256(_1423)
                    let expr_33490 := _1424
                    /// @src 62:2999:3067  "baseAssetStatus.sqrtAssetStatus.fee0Growth - sqrtPerp.entryTradeFee0"
                    let expr_33491 := checked_sub_t_uint256(expr_33488, expr_33490)

                    /// @src 62:2985:3067  "growthDiff0 = baseAssetStatus.sqrtAssetStatus.fee0Growth - sqrtPerp.entryTradeFee0"
                    var_growthDiff0_33476 := expr_33491
                    let expr_33492 := expr_33491
                    /// @src 62:3095:3110  "baseAssetStatus"
                    let _1425_mpos := var_baseAssetStatus_33465_mpos
                    let expr_33495_mpos := _1425_mpos
                    /// @src 62:3095:3126  "baseAssetStatus.sqrtAssetStatus"
                    let _1426 := add(expr_33495_mpos, 192)
                    let _1427_mpos := mload(_1426)
                    let expr_33496_mpos := _1427_mpos
                    /// @src 62:3095:3137  "baseAssetStatus.sqrtAssetStatus.fee1Growth"
                    let _1428 := add(expr_33496_mpos, 384)
                    let _1429 := read_from_memoryt_uint256(_1428)
                    let expr_33497 := _1429
                    /// @src 62:3140:3148  "sqrtPerp"
                    let _1430_mpos := var_sqrtPerp_33468_mpos
                    let expr_33498_mpos := _1430_mpos
                    /// @src 62:3140:3163  "sqrtPerp.entryTradeFee1"
                    let _1431 := add(expr_33498_mpos, 160)
                    let _1432 := read_from_memoryt_uint256(_1431)
                    let expr_33499 := _1432
                    /// @src 62:3095:3163  "baseAssetStatus.sqrtAssetStatus.fee1Growth - sqrtPerp.entryTradeFee1"
                    let expr_33500 := checked_sub_t_uint256(expr_33497, expr_33499)

                    /// @src 62:3081:3163  "growthDiff1 = baseAssetStatus.sqrtAssetStatus.fee1Growth - sqrtPerp.entryTradeFee1"
                    var_growthDiff1_33479 := expr_33500
                    let expr_33501 := expr_33500
                    /// @src 62:2946:3492  "if (sqrtPerp.amount > 0) {..."
                }
                /// @src 62:3516:3520  "Math"
                let expr_33536_address := linkersymbol("src/libraries/math/Math.sol:Math")
                /// @src 62:3542:3550  "sqrtPerp"
                let _1433_mpos := var_sqrtPerp_33468_mpos
                let expr_33538_mpos := _1433_mpos
                /// @src 62:3542:3557  "sqrtPerp.amount"
                let _1434 := add(expr_33538_mpos, 0)
                let _1435 := read_from_memoryt_int256(_1434)
                let expr_33539 := _1435
                /// @src 62:3559:3570  "growthDiff0"
                let _1436 := var_growthDiff0_33476
                let expr_33540 := _1436
                /// @src 62:3572:3581  "Constants"
                let expr_33541_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 62:3572:3586  "Constants.Q128"
                let expr_33542 := constant_Q128_30300()
                /// @src 62:3516:3587  "Math.fullMulDivDownInt256(sqrtPerp.amount, growthDiff0, Constants.Q128)"
                let expr_33543 := fun_fullMulDivDownInt256_32279(expr_33539, expr_33540, expr_33542)
                /// @src 62:3502:3587  "int256 fee0 = Math.fullMulDivDownInt256(sqrtPerp.amount, growthDiff0, Constants.Q128)"
                let var_fee0_33535 := expr_33543
                /// @src 62:3611:3615  "Math"
                let expr_33547_address := linkersymbol("src/libraries/math/Math.sol:Math")
                /// @src 62:3637:3645  "sqrtPerp"
                let _1438_mpos := var_sqrtPerp_33468_mpos
                let expr_33549_mpos := _1438_mpos
                /// @src 62:3637:3652  "sqrtPerp.amount"
                let _1439 := add(expr_33549_mpos, 0)
                let _1440 := read_from_memoryt_int256(_1439)
                let expr_33550 := _1440
                /// @src 62:3654:3665  "growthDiff1"
                let _1441 := var_growthDiff1_33479
                let expr_33551 := _1441
                /// @src 62:3667:3676  "Constants"
                let expr_33552_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 62:3667:3681  "Constants.Q128"
                let expr_33553 := constant_Q128_30300()
                /// @src 62:3611:3682  "Math.fullMulDivDownInt256(sqrtPerp.amount, growthDiff1, Constants.Q128)"
                let expr_33554 := fun_fullMulDivDownInt256_32279(expr_33550, expr_33551, expr_33553)
                /// @src 62:3597:3682  "int256 fee1 = Math.fullMulDivDownInt256(sqrtPerp.amount, growthDiff1, Constants.Q128)"
                let var_fee1_33546 := expr_33554
                /// @src 62:3697:3712  "baseAssetStatus"
                let _1442_mpos := var_baseAssetStatus_33465_mpos
                let expr_33556_mpos := _1442_mpos
                /// @src 62:3697:3724  "baseAssetStatus.isQuoteZero"
                let _1443 := add(expr_33556_mpos, 256)
                let _1444 := read_from_memoryt_bool(_1443)
                let expr_33557 := _1444
                /// @src 62:3693:3882  "if (baseAssetStatus.isQuoteZero) {..."
                switch expr_33557
                case 0 {
                    /// @src 62:3837:3841  "fee0"
                    let _1445 := var_fee0_33535
                    let expr_33568 := _1445
                    /// @src 62:3821:3841  "feeUnderlying = fee0"
                    var_feeUnderlying_33471 := expr_33568
                    let expr_33569 := expr_33568
                    /// @src 62:3867:3871  "fee1"
                    let _1446 := var_fee1_33546
                    let expr_33572 := _1446
                    /// @src 62:3855:3871  "feeStable = fee1"
                    var_feeStable_33473 := expr_33572
                    let expr_33573 := expr_33572
                    /// @src 62:3693:3882  "if (baseAssetStatus.isQuoteZero) {..."
                }
                default {
                    /// @src 62:3752:3756  "fee0"
                    let _1447 := var_fee0_33535
                    let expr_33559 := _1447
                    /// @src 62:3740:3756  "feeStable = fee0"
                    var_feeStable_33473 := expr_33559
                    let expr_33560 := expr_33559
                    /// @src 62:3786:3790  "fee1"
                    let _1448 := var_fee1_33546
                    let expr_33563 := _1448
                    /// @src 62:3770:3790  "feeUnderlying = fee1"
                    var_feeUnderlying_33471 := expr_33563
                    let expr_33564 := expr_33563
                    /// @src 62:3693:3882  "if (baseAssetStatus.isQuoteZero) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 31702
            /// @src 78:325:672  "function calculateAmount0ForLiquidityWithTicks(int24 tickA, int24 tickB, uint256 liquidityAmount, bool isRoundUp)..."
            function fun_calculateAmount0ForLiquidityWithTicks_31702(var_tickA_31677, var_tickB_31679, var_liquidityAmount_31681, var_isRoundUp_31683) -> var__31686 {
                /// @src 78:486:492  "int256"
                let zero_t_int256_1449 := zero_value_for_split_t_int256()
                var__31686 := zero_t_int256_1449

                /// @src 78:557:565  "TickMath"
                let expr_31689_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                /// @src 78:585:590  "tickA"
                let _1450 := var_tickA_31677
                let expr_31691 := _1450
                /// @src 78:557:591  "TickMath.getSqrtRatioAtTick(tickA)"
                let expr_31692 := fun_getSqrtRatioAtTick_30100(expr_31691)
                /// @src 78:593:601  "TickMath"
                let expr_31693_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                /// @src 78:621:626  "tickB"
                let _1451 := var_tickB_31679
                let expr_31695 := _1451
                /// @src 78:593:627  "TickMath.getSqrtRatioAtTick(tickB)"
                let expr_31696 := fun_getSqrtRatioAtTick_30100(expr_31695)
                /// @src 78:629:644  "liquidityAmount"
                let _1452 := var_liquidityAmount_31681
                let expr_31697 := _1452
                /// @src 78:646:655  "isRoundUp"
                let _1453 := var_isRoundUp_31683
                let expr_31698 := _1453
                /// @src 78:515:665  "calculateAmount0ForLiquidity(..."
                let expr_31699 := fun_calculateAmount0ForLiquidity_31864(expr_31692, expr_31696, expr_31697, expr_31698)
                /// @src 78:508:665  "return calculateAmount0ForLiquidity(..."
                var__31686 := expr_31699
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 31729
            /// @src 78:678:1025  "function calculateAmount1ForLiquidityWithTicks(int24 tickA, int24 tickB, uint256 liquidityAmount, bool isRoundUp)..."
            function fun_calculateAmount1ForLiquidityWithTicks_31729(var_tickA_31704, var_tickB_31706, var_liquidityAmount_31708, var_isRoundUp_31710) -> var__31713 {
                /// @src 78:839:845  "int256"
                let zero_t_int256_1454 := zero_value_for_split_t_int256()
                var__31713 := zero_t_int256_1454

                /// @src 78:910:918  "TickMath"
                let expr_31716_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                /// @src 78:938:943  "tickA"
                let _1455 := var_tickA_31704
                let expr_31718 := _1455
                /// @src 78:910:944  "TickMath.getSqrtRatioAtTick(tickA)"
                let expr_31719 := fun_getSqrtRatioAtTick_30100(expr_31718)
                /// @src 78:946:954  "TickMath"
                let expr_31720_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                /// @src 78:974:979  "tickB"
                let _1456 := var_tickB_31706
                let expr_31722 := _1456
                /// @src 78:946:980  "TickMath.getSqrtRatioAtTick(tickB)"
                let expr_31723 := fun_getSqrtRatioAtTick_30100(expr_31722)
                /// @src 78:982:997  "liquidityAmount"
                let _1457 := var_liquidityAmount_31708
                let expr_31724 := _1457
                /// @src 78:999:1008  "isRoundUp"
                let _1458 := var_isRoundUp_31710
                let expr_31725 := _1458
                /// @src 78:868:1018  "calculateAmount1ForLiquidity(..."
                let expr_31726 := fun_calculateAmount1ForLiquidity_31995(expr_31719, expr_31723, expr_31724, expr_31725)
                /// @src 78:861:1018  "return calculateAmount1ForLiquidity(..."
                var__31713 := expr_31726
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            function convert_t_rational_0_by_1_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_int24_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_int24(value)))
            }

            function negate_wrapping_t_int256(value) -> ret {
                ret := cleanup_t_int256(sub(0, value))
            }

            function cleanup_t_rational_minus_887272_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_minus_887272_by_1_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_rational_minus_887272_by_1(value)))
            }

            /// @src 27:472:514  "int24 internal constant MIN_TICK = -887272"
            function constant_MIN_TICK_29709() -> ret {
                /// @src 27:507:514  "-887272"
                let expr_29708 := 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffff27618
                let _1464 := convert_t_rational_minus_887272_by_1_to_t_int24(expr_29708)

                ret := _1464
            }

            function negate_wrapping_t_int24(value) -> ret {
                ret := cleanup_t_int24(sub(0, value))
            }

            /// @src 27:632:676  "int24 internal constant MAX_TICK = -MIN_TICK"
            function constant_MAX_TICK_29714() -> ret {
                /// @src 27:668:676  "MIN_TICK"
                let expr_29712 := constant_MIN_TICK_29709()
                /// @src 27:667:676  "-MIN_TICK"
                let expr_29713 := negate_wrapping_t_int24(expr_29712)
                let _1465 := expr_29713

                ret := _1465
            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function cleanup_t_uint136(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffff)
            }

            function convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint136(value) -> converted {
                converted := cleanup_t_uint136(identity(cleanup_t_rational_340282366920938463463374607431768211456_by_1(value)))
            }

            function cleanup_t_rational_340265354078544963557816517032075149313_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340265354078544963557816517032075149313_by_1_to_t_uint136(value) -> converted {
                converted := cleanup_t_uint136(identity(cleanup_t_rational_340265354078544963557816517032075149313_by_1(value)))
            }

            function convert_t_uint136_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint136(value)))
            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            function cleanup_t_rational_340248342086729790484326174814286782778_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340248342086729790484326174814286782778_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340248342086729790484326174814286782778_by_1(value)))
            }

            function wrapping_mul_t_uint256(x, y) -> product {
                product := cleanup_t_uint256(mul(x, y))
            }

            function cleanup_t_rational_128_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_128_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_128_by_1(value)))
            }

            function cleanup_t_rational_4_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4_by_1(value)))
            }

            function cleanup_t_rational_340214320654664324051920982716015181260_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340214320654664324051920982716015181260_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340214320654664324051920982716015181260_by_1(value)))
            }

            function cleanup_t_rational_8_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_8_by_1(value)))
            }

            function cleanup_t_rational_340146287995602323631171512101879684304_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340146287995602323631171512101879684304_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340146287995602323631171512101879684304_by_1(value)))
            }

            function cleanup_t_rational_16_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_16_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_16_by_1(value)))
            }

            function cleanup_t_rational_340010263488231146823593991679159461444_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340010263488231146823593991679159461444_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340010263488231146823593991679159461444_by_1(value)))
            }

            function cleanup_t_rational_32_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_32_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_32_by_1(value)))
            }

            function cleanup_t_rational_339738377640345403697157401104375502016_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_339738377640345403697157401104375502016_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_339738377640345403697157401104375502016_by_1(value)))
            }

            function cleanup_t_rational_64_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_64_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_64_by_1(value)))
            }

            function cleanup_t_rational_339195258003219555707034227454543997025_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_339195258003219555707034227454543997025_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_339195258003219555707034227454543997025_by_1(value)))
            }

            function convert_t_rational_128_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_128_by_1(value)))
            }

            function cleanup_t_rational_338111622100601834656805679988414885971_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_338111622100601834656805679988414885971_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_338111622100601834656805679988414885971_by_1(value)))
            }

            function cleanup_t_rational_256_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_256_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_256_by_1(value)))
            }

            function cleanup_t_rational_335954724994790223023589805789778977700_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_335954724994790223023589805789778977700_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_335954724994790223023589805789778977700_by_1(value)))
            }

            function cleanup_t_rational_512_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_512_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_512_by_1(value)))
            }

            function cleanup_t_rational_331682121138379247127172139078559817300_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_331682121138379247127172139078559817300_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_331682121138379247127172139078559817300_by_1(value)))
            }

            function cleanup_t_rational_1024_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1024_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1024_by_1(value)))
            }

            function cleanup_t_rational_323299236684853023288211250268160618739_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_323299236684853023288211250268160618739_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_323299236684853023288211250268160618739_by_1(value)))
            }

            function cleanup_t_rational_2048_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2048_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2048_by_1(value)))
            }

            function cleanup_t_rational_307163716377032989948697243942600083929_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_307163716377032989948697243942600083929_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_307163716377032989948697243942600083929_by_1(value)))
            }

            function cleanup_t_rational_4096_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4096_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4096_by_1(value)))
            }

            function cleanup_t_rational_277268403626896220162999269216087595045_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_277268403626896220162999269216087595045_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_277268403626896220162999269216087595045_by_1(value)))
            }

            function cleanup_t_rational_8192_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8192_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_8192_by_1(value)))
            }

            function cleanup_t_rational_225923453940442621947126027127485391333_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_225923453940442621947126027127485391333_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_225923453940442621947126027127485391333_by_1(value)))
            }

            function cleanup_t_rational_16384_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_16384_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_16384_by_1(value)))
            }

            function cleanup_t_rational_149997214084966997727330242082538205943_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_149997214084966997727330242082538205943_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_149997214084966997727330242082538205943_by_1(value)))
            }

            function cleanup_t_rational_32768_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_32768_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_32768_by_1(value)))
            }

            function cleanup_t_rational_66119101136024775622716233608466517926_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_66119101136024775622716233608466517926_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_66119101136024775622716233608466517926_by_1(value)))
            }

            function cleanup_t_rational_65536_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_65536_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_65536_by_1(value)))
            }

            function cleanup_t_rational_12847376061809297530290974190478138313_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_12847376061809297530290974190478138313_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_12847376061809297530290974190478138313_by_1(value)))
            }

            function cleanup_t_rational_131072_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_131072_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_131072_by_1(value)))
            }

            function cleanup_t_rational_485053260817066172746253684029974020_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_485053260817066172746253684029974020_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_485053260817066172746253684029974020_by_1(value)))
            }

            function cleanup_t_rational_262144_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_262144_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_262144_by_1(value)))
            }

            function cleanup_t_rational_691415978906521570653435304214168_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_691415978906521570653435304214168_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_691415978906521570653435304214168_by_1(value)))
            }

            function cleanup_t_rational_524288_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_524288_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_524288_by_1(value)))
            }

            function cleanup_t_rational_1404880482679654955896180642_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1404880482679654955896180642_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1404880482679654955896180642_by_1(value)))
            }

            function wrapping_div_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }
                r := div(x, y)
            }

            function convert_t_rational_32_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_32_by_1(value)))
            }

            function cleanup_t_rational_4294967296_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4294967296_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4294967296_by_1(value)))
            }

            function mod_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }
                r := mod(x, y)
            }

            function convert_t_rational_1_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_1_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_uint8_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint8(value)))
            }

            function wrapping_add_t_uint256(x, y) -> sum {
                sum := cleanup_t_uint256(add(x, y))
            }

            /// @ast-id 30100
            /// @src 27:1385:4144  "function getSqrtRatioAtTick(int24 tick) internal pure returns (uint160 sqrtPriceX96) {..."
            function fun_getSqrtRatioAtTick_30100(var_tick_29725) -> var_sqrtPriceX96_29728 {
                /// @src 27:1448:1468  "uint160 sqrtPriceX96"
                let zero_t_uint160_1459 := zero_value_for_split_t_uint160()
                var_sqrtPriceX96_29728 := zero_t_uint160_1459

                /// @src 27:1522:1526  "tick"
                let _1460 := var_tick_29725
                let expr_29732 := _1460
                /// @src 27:1529:1530  "0"
                let expr_29733 := 0x00
                /// @src 27:1522:1530  "tick < 0"
                let expr_29734 := slt(cleanup_t_int24(expr_29732), convert_t_rational_0_by_1_to_t_int24(expr_29733))
                /// @src 27:1522:1579  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                let expr_29750
                switch expr_29734
                case 0 {
                    /// @src 27:1573:1577  "tick"
                    let _1461 := var_tick_29725
                    let expr_29747 := _1461
                    /// @src 27:1566:1578  "int256(tick)"
                    let expr_29748 := convert_t_int24_to_t_int256(expr_29747)
                    /// @src 27:1558:1579  "uint256(int256(tick))"
                    let expr_29749 := convert_t_int256_to_t_uint256(expr_29748)
                    /// @src 27:1522:1579  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                    expr_29750 := expr_29749
                }
                default {
                    /// @src 27:1549:1553  "tick"
                    let _1462 := var_tick_29725
                    let expr_29739 := _1462
                    /// @src 27:1542:1554  "int256(tick)"
                    let expr_29740 := convert_t_int24_to_t_int256(expr_29739)
                    /// @src 27:1541:1554  "-int256(tick)"
                    let expr_29741 := negate_wrapping_t_int256(expr_29740)
                    /// @src 27:1533:1555  "uint256(-int256(tick))"
                    let expr_29742 := convert_t_int256_to_t_uint256(expr_29741)
                    /// @src 27:1522:1579  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                    expr_29750 := expr_29742
                }
                /// @src 27:1504:1579  "uint256 absTick = tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                let var_absTick_29731 := expr_29750
                /// @src 27:1597:1604  "absTick"
                let _1463 := var_absTick_29731
                let expr_29752 := _1463
                /// @src 27:1622:1630  "MAX_TICK"
                let expr_29757 := constant_MAX_TICK_29714()
                /// @src 27:1615:1631  "int256(MAX_TICK)"
                let expr_29758 := convert_t_int24_to_t_int256(expr_29757)
                /// @src 27:1607:1632  "uint256(int256(MAX_TICK))"
                let expr_29759 := convert_t_int256_to_t_uint256(expr_29758)
                /// @src 27:1597:1632  "absTick > uint256(int256(MAX_TICK))"
                let expr_29760 := gt(cleanup_t_uint256(expr_29752), cleanup_t_uint256(expr_29759))
                /// @src 27:1593:1644  "if (absTick > uint256(int256(MAX_TICK))) revert T()"
                if expr_29760 {
                    /// @src 27:1641:1644  "T()"
                    {

                        let _1467 := 0

                        mstore(_1467, 0x2bc80f3a00000000000000000000000000000000000000000000000000000000)
                        let _1466 := abi_encode_tuple__to__fromStack(add(_1467, 4) )
                        revert(_1467, sub(_1466, _1467))
                    }/// @src 27:1593:1644  "if (absTick > uint256(int256(MAX_TICK))) revert T()"
                }
                /// @src 27:1675:1682  "absTick"
                let _1468 := var_absTick_29731
                let expr_29767 := _1468
                /// @src 27:1685:1688  "0x1"
                let expr_29768 := 0x01
                /// @src 27:1675:1688  "absTick & 0x1"
                let expr_29769 := and(expr_29767, convert_t_rational_1_by_1_to_t_uint256(expr_29768))

                /// @src 27:1692:1693  "0"
                let expr_29770 := 0x00
                /// @src 27:1675:1693  "absTick & 0x1 != 0"
                let expr_29771 := iszero(eq(cleanup_t_uint256(expr_29769), convert_t_rational_0_by_1_to_t_uint256(expr_29770)))
                /// @src 27:1675:1800  "absTick & 0x1 != 0..."
                let expr_29774
                switch expr_29771
                case 0 {
                    /// @src 27:1765:1800  "0x100000000000000000000000000000000"
                    let expr_29773 := 0x0100000000000000000000000000000000
                    /// @src 27:1675:1800  "absTick & 0x1 != 0..."
                    expr_29774 := convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint136(expr_29773)
                }
                default {
                    /// @src 27:1712:1746  "0xfffcb933bd6fad37aa2d162d1a594001"
                    let expr_29772 := 0xfffcb933bd6fad37aa2d162d1a594001
                    /// @src 27:1675:1800  "absTick & 0x1 != 0..."
                    expr_29774 := convert_t_rational_340265354078544963557816517032075149313_by_1_to_t_uint136(expr_29772)
                }
                /// @src 27:1659:1800  "uint256 ratio = absTick & 0x1 != 0..."
                let var_ratio_29766 := convert_t_uint136_to_t_uint256(expr_29774)
                /// @src 27:1818:1825  "absTick"
                let _1469 := var_absTick_29731
                let expr_29776 := _1469
                /// @src 27:1828:1831  "0x2"
                let expr_29777 := 0x02
                /// @src 27:1818:1831  "absTick & 0x2"
                let expr_29778 := and(expr_29776, convert_t_rational_2_by_1_to_t_uint256(expr_29777))

                /// @src 27:1835:1836  "0"
                let expr_29779 := 0x00
                /// @src 27:1818:1836  "absTick & 0x2 != 0"
                let expr_29780 := iszero(eq(cleanup_t_uint256(expr_29778), convert_t_rational_0_by_1_to_t_uint256(expr_29779)))
                /// @src 27:1814:1897  "if (absTick & 0x2 != 0) ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                if expr_29780 {
                    /// @src 27:1847:1852  "ratio"
                    let _1470 := var_ratio_29766
                    let expr_29782 := _1470
                    /// @src 27:1855:1889  "0xfff97272373d413259a46990580e213a"
                    let expr_29783 := 0xfff97272373d413259a46990580e213a
                    /// @src 27:1847:1889  "ratio * 0xfff97272373d413259a46990580e213a"
                    let expr_29784 := wrapping_mul_t_uint256(expr_29782, convert_t_rational_340248342086729790484326174814286782778_by_1_to_t_uint256(expr_29783))

                    /// @src 27:1846:1890  "(ratio * 0xfff97272373d413259a46990580e213a)"
                    let expr_29785 := expr_29784
                    /// @src 27:1894:1897  "128"
                    let expr_29786 := 0x80
                    /// @src 27:1846:1897  "(ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                    let _1471 := convert_t_rational_128_by_1_to_t_uint8(expr_29786)
                    let expr_29787 :=
                    shift_right_t_uint256_t_uint8(expr_29785, _1471)

                    /// @src 27:1838:1897  "ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                    var_ratio_29766 := expr_29787
                    let expr_29788 := expr_29787
                    /// @src 27:1814:1897  "if (absTick & 0x2 != 0) ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                }
                /// @src 27:1915:1922  "absTick"
                let _1472 := var_absTick_29731
                let expr_29791 := _1472
                /// @src 27:1925:1928  "0x4"
                let expr_29792 := 0x04
                /// @src 27:1915:1928  "absTick & 0x4"
                let expr_29793 := and(expr_29791, convert_t_rational_4_by_1_to_t_uint256(expr_29792))

                /// @src 27:1932:1933  "0"
                let expr_29794 := 0x00
                /// @src 27:1915:1933  "absTick & 0x4 != 0"
                let expr_29795 := iszero(eq(cleanup_t_uint256(expr_29793), convert_t_rational_0_by_1_to_t_uint256(expr_29794)))
                /// @src 27:1911:1994  "if (absTick & 0x4 != 0) ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                if expr_29795 {
                    /// @src 27:1944:1949  "ratio"
                    let _1473 := var_ratio_29766
                    let expr_29797 := _1473
                    /// @src 27:1952:1986  "0xfff2e50f5f656932ef12357cf3c7fdcc"
                    let expr_29798 := 0xfff2e50f5f656932ef12357cf3c7fdcc
                    /// @src 27:1944:1986  "ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc"
                    let expr_29799 := wrapping_mul_t_uint256(expr_29797, convert_t_rational_340214320654664324051920982716015181260_by_1_to_t_uint256(expr_29798))

                    /// @src 27:1943:1987  "(ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc)"
                    let expr_29800 := expr_29799
                    /// @src 27:1991:1994  "128"
                    let expr_29801 := 0x80
                    /// @src 27:1943:1994  "(ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                    let _1474 := convert_t_rational_128_by_1_to_t_uint8(expr_29801)
                    let expr_29802 :=
                    shift_right_t_uint256_t_uint8(expr_29800, _1474)

                    /// @src 27:1935:1994  "ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                    var_ratio_29766 := expr_29802
                    let expr_29803 := expr_29802
                    /// @src 27:1911:1994  "if (absTick & 0x4 != 0) ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                }
                /// @src 27:2012:2019  "absTick"
                let _1475 := var_absTick_29731
                let expr_29806 := _1475
                /// @src 27:2022:2025  "0x8"
                let expr_29807 := 0x08
                /// @src 27:2012:2025  "absTick & 0x8"
                let expr_29808 := and(expr_29806, convert_t_rational_8_by_1_to_t_uint256(expr_29807))

                /// @src 27:2029:2030  "0"
                let expr_29809 := 0x00
                /// @src 27:2012:2030  "absTick & 0x8 != 0"
                let expr_29810 := iszero(eq(cleanup_t_uint256(expr_29808), convert_t_rational_0_by_1_to_t_uint256(expr_29809)))
                /// @src 27:2008:2091  "if (absTick & 0x8 != 0) ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                if expr_29810 {
                    /// @src 27:2041:2046  "ratio"
                    let _1476 := var_ratio_29766
                    let expr_29812 := _1476
                    /// @src 27:2049:2083  "0xffe5caca7e10e4e61c3624eaa0941cd0"
                    let expr_29813 := 0xffe5caca7e10e4e61c3624eaa0941cd0
                    /// @src 27:2041:2083  "ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0"
                    let expr_29814 := wrapping_mul_t_uint256(expr_29812, convert_t_rational_340146287995602323631171512101879684304_by_1_to_t_uint256(expr_29813))

                    /// @src 27:2040:2084  "(ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0)"
                    let expr_29815 := expr_29814
                    /// @src 27:2088:2091  "128"
                    let expr_29816 := 0x80
                    /// @src 27:2040:2091  "(ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                    let _1477 := convert_t_rational_128_by_1_to_t_uint8(expr_29816)
                    let expr_29817 :=
                    shift_right_t_uint256_t_uint8(expr_29815, _1477)

                    /// @src 27:2032:2091  "ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                    var_ratio_29766 := expr_29817
                    let expr_29818 := expr_29817
                    /// @src 27:2008:2091  "if (absTick & 0x8 != 0) ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                }
                /// @src 27:2109:2116  "absTick"
                let _1478 := var_absTick_29731
                let expr_29821 := _1478
                /// @src 27:2119:2123  "0x10"
                let expr_29822 := 0x10
                /// @src 27:2109:2123  "absTick & 0x10"
                let expr_29823 := and(expr_29821, convert_t_rational_16_by_1_to_t_uint256(expr_29822))

                /// @src 27:2127:2128  "0"
                let expr_29824 := 0x00
                /// @src 27:2109:2128  "absTick & 0x10 != 0"
                let expr_29825 := iszero(eq(cleanup_t_uint256(expr_29823), convert_t_rational_0_by_1_to_t_uint256(expr_29824)))
                /// @src 27:2105:2189  "if (absTick & 0x10 != 0) ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                if expr_29825 {
                    /// @src 27:2139:2144  "ratio"
                    let _1479 := var_ratio_29766
                    let expr_29827 := _1479
                    /// @src 27:2147:2181  "0xffcb9843d60f6159c9db58835c926644"
                    let expr_29828 := 0xffcb9843d60f6159c9db58835c926644
                    /// @src 27:2139:2181  "ratio * 0xffcb9843d60f6159c9db58835c926644"
                    let expr_29829 := wrapping_mul_t_uint256(expr_29827, convert_t_rational_340010263488231146823593991679159461444_by_1_to_t_uint256(expr_29828))

                    /// @src 27:2138:2182  "(ratio * 0xffcb9843d60f6159c9db58835c926644)"
                    let expr_29830 := expr_29829
                    /// @src 27:2186:2189  "128"
                    let expr_29831 := 0x80
                    /// @src 27:2138:2189  "(ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                    let _1480 := convert_t_rational_128_by_1_to_t_uint8(expr_29831)
                    let expr_29832 :=
                    shift_right_t_uint256_t_uint8(expr_29830, _1480)

                    /// @src 27:2130:2189  "ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                    var_ratio_29766 := expr_29832
                    let expr_29833 := expr_29832
                    /// @src 27:2105:2189  "if (absTick & 0x10 != 0) ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                }
                /// @src 27:2207:2214  "absTick"
                let _1481 := var_absTick_29731
                let expr_29836 := _1481
                /// @src 27:2217:2221  "0x20"
                let expr_29837 := 0x20
                /// @src 27:2207:2221  "absTick & 0x20"
                let expr_29838 := and(expr_29836, convert_t_rational_32_by_1_to_t_uint256(expr_29837))

                /// @src 27:2225:2226  "0"
                let expr_29839 := 0x00
                /// @src 27:2207:2226  "absTick & 0x20 != 0"
                let expr_29840 := iszero(eq(cleanup_t_uint256(expr_29838), convert_t_rational_0_by_1_to_t_uint256(expr_29839)))
                /// @src 27:2203:2287  "if (absTick & 0x20 != 0) ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                if expr_29840 {
                    /// @src 27:2237:2242  "ratio"
                    let _1482 := var_ratio_29766
                    let expr_29842 := _1482
                    /// @src 27:2245:2279  "0xff973b41fa98c081472e6896dfb254c0"
                    let expr_29843 := 0xff973b41fa98c081472e6896dfb254c0
                    /// @src 27:2237:2279  "ratio * 0xff973b41fa98c081472e6896dfb254c0"
                    let expr_29844 := wrapping_mul_t_uint256(expr_29842, convert_t_rational_339738377640345403697157401104375502016_by_1_to_t_uint256(expr_29843))

                    /// @src 27:2236:2280  "(ratio * 0xff973b41fa98c081472e6896dfb254c0)"
                    let expr_29845 := expr_29844
                    /// @src 27:2284:2287  "128"
                    let expr_29846 := 0x80
                    /// @src 27:2236:2287  "(ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                    let _1483 := convert_t_rational_128_by_1_to_t_uint8(expr_29846)
                    let expr_29847 :=
                    shift_right_t_uint256_t_uint8(expr_29845, _1483)

                    /// @src 27:2228:2287  "ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                    var_ratio_29766 := expr_29847
                    let expr_29848 := expr_29847
                    /// @src 27:2203:2287  "if (absTick & 0x20 != 0) ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                }
                /// @src 27:2305:2312  "absTick"
                let _1484 := var_absTick_29731
                let expr_29851 := _1484
                /// @src 27:2315:2319  "0x40"
                let expr_29852 := 0x40
                /// @src 27:2305:2319  "absTick & 0x40"
                let expr_29853 := and(expr_29851, convert_t_rational_64_by_1_to_t_uint256(expr_29852))

                /// @src 27:2323:2324  "0"
                let expr_29854 := 0x00
                /// @src 27:2305:2324  "absTick & 0x40 != 0"
                let expr_29855 := iszero(eq(cleanup_t_uint256(expr_29853), convert_t_rational_0_by_1_to_t_uint256(expr_29854)))
                /// @src 27:2301:2385  "if (absTick & 0x40 != 0) ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                if expr_29855 {
                    /// @src 27:2335:2340  "ratio"
                    let _1485 := var_ratio_29766
                    let expr_29857 := _1485
                    /// @src 27:2343:2377  "0xff2ea16466c96a3843ec78b326b52861"
                    let expr_29858 := 0xff2ea16466c96a3843ec78b326b52861
                    /// @src 27:2335:2377  "ratio * 0xff2ea16466c96a3843ec78b326b52861"
                    let expr_29859 := wrapping_mul_t_uint256(expr_29857, convert_t_rational_339195258003219555707034227454543997025_by_1_to_t_uint256(expr_29858))

                    /// @src 27:2334:2378  "(ratio * 0xff2ea16466c96a3843ec78b326b52861)"
                    let expr_29860 := expr_29859
                    /// @src 27:2382:2385  "128"
                    let expr_29861 := 0x80
                    /// @src 27:2334:2385  "(ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                    let _1486 := convert_t_rational_128_by_1_to_t_uint8(expr_29861)
                    let expr_29862 :=
                    shift_right_t_uint256_t_uint8(expr_29860, _1486)

                    /// @src 27:2326:2385  "ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                    var_ratio_29766 := expr_29862
                    let expr_29863 := expr_29862
                    /// @src 27:2301:2385  "if (absTick & 0x40 != 0) ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                }
                /// @src 27:2403:2410  "absTick"
                let _1487 := var_absTick_29731
                let expr_29866 := _1487
                /// @src 27:2413:2417  "0x80"
                let expr_29867 := 0x80
                /// @src 27:2403:2417  "absTick & 0x80"
                let expr_29868 := and(expr_29866, convert_t_rational_128_by_1_to_t_uint256(expr_29867))

                /// @src 27:2421:2422  "0"
                let expr_29869 := 0x00
                /// @src 27:2403:2422  "absTick & 0x80 != 0"
                let expr_29870 := iszero(eq(cleanup_t_uint256(expr_29868), convert_t_rational_0_by_1_to_t_uint256(expr_29869)))
                /// @src 27:2399:2483  "if (absTick & 0x80 != 0) ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                if expr_29870 {
                    /// @src 27:2433:2438  "ratio"
                    let _1488 := var_ratio_29766
                    let expr_29872 := _1488
                    /// @src 27:2441:2475  "0xfe5dee046a99a2a811c461f1969c3053"
                    let expr_29873 := 0xfe5dee046a99a2a811c461f1969c3053
                    /// @src 27:2433:2475  "ratio * 0xfe5dee046a99a2a811c461f1969c3053"
                    let expr_29874 := wrapping_mul_t_uint256(expr_29872, convert_t_rational_338111622100601834656805679988414885971_by_1_to_t_uint256(expr_29873))

                    /// @src 27:2432:2476  "(ratio * 0xfe5dee046a99a2a811c461f1969c3053)"
                    let expr_29875 := expr_29874
                    /// @src 27:2480:2483  "128"
                    let expr_29876 := 0x80
                    /// @src 27:2432:2483  "(ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                    let _1489 := convert_t_rational_128_by_1_to_t_uint8(expr_29876)
                    let expr_29877 :=
                    shift_right_t_uint256_t_uint8(expr_29875, _1489)

                    /// @src 27:2424:2483  "ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                    var_ratio_29766 := expr_29877
                    let expr_29878 := expr_29877
                    /// @src 27:2399:2483  "if (absTick & 0x80 != 0) ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                }
                /// @src 27:2501:2508  "absTick"
                let _1490 := var_absTick_29731
                let expr_29881 := _1490
                /// @src 27:2511:2516  "0x100"
                let expr_29882 := 0x0100
                /// @src 27:2501:2516  "absTick & 0x100"
                let expr_29883 := and(expr_29881, convert_t_rational_256_by_1_to_t_uint256(expr_29882))

                /// @src 27:2520:2521  "0"
                let expr_29884 := 0x00
                /// @src 27:2501:2521  "absTick & 0x100 != 0"
                let expr_29885 := iszero(eq(cleanup_t_uint256(expr_29883), convert_t_rational_0_by_1_to_t_uint256(expr_29884)))
                /// @src 27:2497:2582  "if (absTick & 0x100 != 0) ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                if expr_29885 {
                    /// @src 27:2532:2537  "ratio"
                    let _1491 := var_ratio_29766
                    let expr_29887 := _1491
                    /// @src 27:2540:2574  "0xfcbe86c7900a88aedcffc83b479aa3a4"
                    let expr_29888 := 0xfcbe86c7900a88aedcffc83b479aa3a4
                    /// @src 27:2532:2574  "ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4"
                    let expr_29889 := wrapping_mul_t_uint256(expr_29887, convert_t_rational_335954724994790223023589805789778977700_by_1_to_t_uint256(expr_29888))

                    /// @src 27:2531:2575  "(ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4)"
                    let expr_29890 := expr_29889
                    /// @src 27:2579:2582  "128"
                    let expr_29891 := 0x80
                    /// @src 27:2531:2582  "(ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                    let _1492 := convert_t_rational_128_by_1_to_t_uint8(expr_29891)
                    let expr_29892 :=
                    shift_right_t_uint256_t_uint8(expr_29890, _1492)

                    /// @src 27:2523:2582  "ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                    var_ratio_29766 := expr_29892
                    let expr_29893 := expr_29892
                    /// @src 27:2497:2582  "if (absTick & 0x100 != 0) ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                }
                /// @src 27:2600:2607  "absTick"
                let _1493 := var_absTick_29731
                let expr_29896 := _1493
                /// @src 27:2610:2615  "0x200"
                let expr_29897 := 0x0200
                /// @src 27:2600:2615  "absTick & 0x200"
                let expr_29898 := and(expr_29896, convert_t_rational_512_by_1_to_t_uint256(expr_29897))

                /// @src 27:2619:2620  "0"
                let expr_29899 := 0x00
                /// @src 27:2600:2620  "absTick & 0x200 != 0"
                let expr_29900 := iszero(eq(cleanup_t_uint256(expr_29898), convert_t_rational_0_by_1_to_t_uint256(expr_29899)))
                /// @src 27:2596:2681  "if (absTick & 0x200 != 0) ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                if expr_29900 {
                    /// @src 27:2631:2636  "ratio"
                    let _1494 := var_ratio_29766
                    let expr_29902 := _1494
                    /// @src 27:2639:2673  "0xf987a7253ac413176f2b074cf7815e54"
                    let expr_29903 := 0xf987a7253ac413176f2b074cf7815e54
                    /// @src 27:2631:2673  "ratio * 0xf987a7253ac413176f2b074cf7815e54"
                    let expr_29904 := wrapping_mul_t_uint256(expr_29902, convert_t_rational_331682121138379247127172139078559817300_by_1_to_t_uint256(expr_29903))

                    /// @src 27:2630:2674  "(ratio * 0xf987a7253ac413176f2b074cf7815e54)"
                    let expr_29905 := expr_29904
                    /// @src 27:2678:2681  "128"
                    let expr_29906 := 0x80
                    /// @src 27:2630:2681  "(ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                    let _1495 := convert_t_rational_128_by_1_to_t_uint8(expr_29906)
                    let expr_29907 :=
                    shift_right_t_uint256_t_uint8(expr_29905, _1495)

                    /// @src 27:2622:2681  "ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                    var_ratio_29766 := expr_29907
                    let expr_29908 := expr_29907
                    /// @src 27:2596:2681  "if (absTick & 0x200 != 0) ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                }
                /// @src 27:2699:2706  "absTick"
                let _1496 := var_absTick_29731
                let expr_29911 := _1496
                /// @src 27:2709:2714  "0x400"
                let expr_29912 := 0x0400
                /// @src 27:2699:2714  "absTick & 0x400"
                let expr_29913 := and(expr_29911, convert_t_rational_1024_by_1_to_t_uint256(expr_29912))

                /// @src 27:2718:2719  "0"
                let expr_29914 := 0x00
                /// @src 27:2699:2719  "absTick & 0x400 != 0"
                let expr_29915 := iszero(eq(cleanup_t_uint256(expr_29913), convert_t_rational_0_by_1_to_t_uint256(expr_29914)))
                /// @src 27:2695:2780  "if (absTick & 0x400 != 0) ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                if expr_29915 {
                    /// @src 27:2730:2735  "ratio"
                    let _1497 := var_ratio_29766
                    let expr_29917 := _1497
                    /// @src 27:2738:2772  "0xf3392b0822b70005940c7a398e4b70f3"
                    let expr_29918 := 0xf3392b0822b70005940c7a398e4b70f3
                    /// @src 27:2730:2772  "ratio * 0xf3392b0822b70005940c7a398e4b70f3"
                    let expr_29919 := wrapping_mul_t_uint256(expr_29917, convert_t_rational_323299236684853023288211250268160618739_by_1_to_t_uint256(expr_29918))

                    /// @src 27:2729:2773  "(ratio * 0xf3392b0822b70005940c7a398e4b70f3)"
                    let expr_29920 := expr_29919
                    /// @src 27:2777:2780  "128"
                    let expr_29921 := 0x80
                    /// @src 27:2729:2780  "(ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                    let _1498 := convert_t_rational_128_by_1_to_t_uint8(expr_29921)
                    let expr_29922 :=
                    shift_right_t_uint256_t_uint8(expr_29920, _1498)

                    /// @src 27:2721:2780  "ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                    var_ratio_29766 := expr_29922
                    let expr_29923 := expr_29922
                    /// @src 27:2695:2780  "if (absTick & 0x400 != 0) ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                }
                /// @src 27:2798:2805  "absTick"
                let _1499 := var_absTick_29731
                let expr_29926 := _1499
                /// @src 27:2808:2813  "0x800"
                let expr_29927 := 0x0800
                /// @src 27:2798:2813  "absTick & 0x800"
                let expr_29928 := and(expr_29926, convert_t_rational_2048_by_1_to_t_uint256(expr_29927))

                /// @src 27:2817:2818  "0"
                let expr_29929 := 0x00
                /// @src 27:2798:2818  "absTick & 0x800 != 0"
                let expr_29930 := iszero(eq(cleanup_t_uint256(expr_29928), convert_t_rational_0_by_1_to_t_uint256(expr_29929)))
                /// @src 27:2794:2879  "if (absTick & 0x800 != 0) ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                if expr_29930 {
                    /// @src 27:2829:2834  "ratio"
                    let _1500 := var_ratio_29766
                    let expr_29932 := _1500
                    /// @src 27:2837:2871  "0xe7159475a2c29b7443b29c7fa6e889d9"
                    let expr_29933 := 0xe7159475a2c29b7443b29c7fa6e889d9
                    /// @src 27:2829:2871  "ratio * 0xe7159475a2c29b7443b29c7fa6e889d9"
                    let expr_29934 := wrapping_mul_t_uint256(expr_29932, convert_t_rational_307163716377032989948697243942600083929_by_1_to_t_uint256(expr_29933))

                    /// @src 27:2828:2872  "(ratio * 0xe7159475a2c29b7443b29c7fa6e889d9)"
                    let expr_29935 := expr_29934
                    /// @src 27:2876:2879  "128"
                    let expr_29936 := 0x80
                    /// @src 27:2828:2879  "(ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                    let _1501 := convert_t_rational_128_by_1_to_t_uint8(expr_29936)
                    let expr_29937 :=
                    shift_right_t_uint256_t_uint8(expr_29935, _1501)

                    /// @src 27:2820:2879  "ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                    var_ratio_29766 := expr_29937
                    let expr_29938 := expr_29937
                    /// @src 27:2794:2879  "if (absTick & 0x800 != 0) ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                }
                /// @src 27:2897:2904  "absTick"
                let _1502 := var_absTick_29731
                let expr_29941 := _1502
                /// @src 27:2907:2913  "0x1000"
                let expr_29942 := 0x1000
                /// @src 27:2897:2913  "absTick & 0x1000"
                let expr_29943 := and(expr_29941, convert_t_rational_4096_by_1_to_t_uint256(expr_29942))

                /// @src 27:2917:2918  "0"
                let expr_29944 := 0x00
                /// @src 27:2897:2918  "absTick & 0x1000 != 0"
                let expr_29945 := iszero(eq(cleanup_t_uint256(expr_29943), convert_t_rational_0_by_1_to_t_uint256(expr_29944)))
                /// @src 27:2893:2979  "if (absTick & 0x1000 != 0) ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                if expr_29945 {
                    /// @src 27:2929:2934  "ratio"
                    let _1503 := var_ratio_29766
                    let expr_29947 := _1503
                    /// @src 27:2937:2971  "0xd097f3bdfd2022b8845ad8f792aa5825"
                    let expr_29948 := 0xd097f3bdfd2022b8845ad8f792aa5825
                    /// @src 27:2929:2971  "ratio * 0xd097f3bdfd2022b8845ad8f792aa5825"
                    let expr_29949 := wrapping_mul_t_uint256(expr_29947, convert_t_rational_277268403626896220162999269216087595045_by_1_to_t_uint256(expr_29948))

                    /// @src 27:2928:2972  "(ratio * 0xd097f3bdfd2022b8845ad8f792aa5825)"
                    let expr_29950 := expr_29949
                    /// @src 27:2976:2979  "128"
                    let expr_29951 := 0x80
                    /// @src 27:2928:2979  "(ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                    let _1504 := convert_t_rational_128_by_1_to_t_uint8(expr_29951)
                    let expr_29952 :=
                    shift_right_t_uint256_t_uint8(expr_29950, _1504)

                    /// @src 27:2920:2979  "ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                    var_ratio_29766 := expr_29952
                    let expr_29953 := expr_29952
                    /// @src 27:2893:2979  "if (absTick & 0x1000 != 0) ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                }
                /// @src 27:2997:3004  "absTick"
                let _1505 := var_absTick_29731
                let expr_29956 := _1505
                /// @src 27:3007:3013  "0x2000"
                let expr_29957 := 0x2000
                /// @src 27:2997:3013  "absTick & 0x2000"
                let expr_29958 := and(expr_29956, convert_t_rational_8192_by_1_to_t_uint256(expr_29957))

                /// @src 27:3017:3018  "0"
                let expr_29959 := 0x00
                /// @src 27:2997:3018  "absTick & 0x2000 != 0"
                let expr_29960 := iszero(eq(cleanup_t_uint256(expr_29958), convert_t_rational_0_by_1_to_t_uint256(expr_29959)))
                /// @src 27:2993:3079  "if (absTick & 0x2000 != 0) ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                if expr_29960 {
                    /// @src 27:3029:3034  "ratio"
                    let _1506 := var_ratio_29766
                    let expr_29962 := _1506
                    /// @src 27:3037:3071  "0xa9f746462d870fdf8a65dc1f90e061e5"
                    let expr_29963 := 0xa9f746462d870fdf8a65dc1f90e061e5
                    /// @src 27:3029:3071  "ratio * 0xa9f746462d870fdf8a65dc1f90e061e5"
                    let expr_29964 := wrapping_mul_t_uint256(expr_29962, convert_t_rational_225923453940442621947126027127485391333_by_1_to_t_uint256(expr_29963))

                    /// @src 27:3028:3072  "(ratio * 0xa9f746462d870fdf8a65dc1f90e061e5)"
                    let expr_29965 := expr_29964
                    /// @src 27:3076:3079  "128"
                    let expr_29966 := 0x80
                    /// @src 27:3028:3079  "(ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                    let _1507 := convert_t_rational_128_by_1_to_t_uint8(expr_29966)
                    let expr_29967 :=
                    shift_right_t_uint256_t_uint8(expr_29965, _1507)

                    /// @src 27:3020:3079  "ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                    var_ratio_29766 := expr_29967
                    let expr_29968 := expr_29967
                    /// @src 27:2993:3079  "if (absTick & 0x2000 != 0) ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                }
                /// @src 27:3097:3104  "absTick"
                let _1508 := var_absTick_29731
                let expr_29971 := _1508
                /// @src 27:3107:3113  "0x4000"
                let expr_29972 := 0x4000
                /// @src 27:3097:3113  "absTick & 0x4000"
                let expr_29973 := and(expr_29971, convert_t_rational_16384_by_1_to_t_uint256(expr_29972))

                /// @src 27:3117:3118  "0"
                let expr_29974 := 0x00
                /// @src 27:3097:3118  "absTick & 0x4000 != 0"
                let expr_29975 := iszero(eq(cleanup_t_uint256(expr_29973), convert_t_rational_0_by_1_to_t_uint256(expr_29974)))
                /// @src 27:3093:3179  "if (absTick & 0x4000 != 0) ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                if expr_29975 {
                    /// @src 27:3129:3134  "ratio"
                    let _1509 := var_ratio_29766
                    let expr_29977 := _1509
                    /// @src 27:3137:3171  "0x70d869a156d2a1b890bb3df62baf32f7"
                    let expr_29978 := 0x70d869a156d2a1b890bb3df62baf32f7
                    /// @src 27:3129:3171  "ratio * 0x70d869a156d2a1b890bb3df62baf32f7"
                    let expr_29979 := wrapping_mul_t_uint256(expr_29977, convert_t_rational_149997214084966997727330242082538205943_by_1_to_t_uint256(expr_29978))

                    /// @src 27:3128:3172  "(ratio * 0x70d869a156d2a1b890bb3df62baf32f7)"
                    let expr_29980 := expr_29979
                    /// @src 27:3176:3179  "128"
                    let expr_29981 := 0x80
                    /// @src 27:3128:3179  "(ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                    let _1510 := convert_t_rational_128_by_1_to_t_uint8(expr_29981)
                    let expr_29982 :=
                    shift_right_t_uint256_t_uint8(expr_29980, _1510)

                    /// @src 27:3120:3179  "ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                    var_ratio_29766 := expr_29982
                    let expr_29983 := expr_29982
                    /// @src 27:3093:3179  "if (absTick & 0x4000 != 0) ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                }
                /// @src 27:3197:3204  "absTick"
                let _1511 := var_absTick_29731
                let expr_29986 := _1511
                /// @src 27:3207:3213  "0x8000"
                let expr_29987 := 0x8000
                /// @src 27:3197:3213  "absTick & 0x8000"
                let expr_29988 := and(expr_29986, convert_t_rational_32768_by_1_to_t_uint256(expr_29987))

                /// @src 27:3217:3218  "0"
                let expr_29989 := 0x00
                /// @src 27:3197:3218  "absTick & 0x8000 != 0"
                let expr_29990 := iszero(eq(cleanup_t_uint256(expr_29988), convert_t_rational_0_by_1_to_t_uint256(expr_29989)))
                /// @src 27:3193:3279  "if (absTick & 0x8000 != 0) ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                if expr_29990 {
                    /// @src 27:3229:3234  "ratio"
                    let _1512 := var_ratio_29766
                    let expr_29992 := _1512
                    /// @src 27:3237:3271  "0x31be135f97d08fd981231505542fcfa6"
                    let expr_29993 := 0x31be135f97d08fd981231505542fcfa6
                    /// @src 27:3229:3271  "ratio * 0x31be135f97d08fd981231505542fcfa6"
                    let expr_29994 := wrapping_mul_t_uint256(expr_29992, convert_t_rational_66119101136024775622716233608466517926_by_1_to_t_uint256(expr_29993))

                    /// @src 27:3228:3272  "(ratio * 0x31be135f97d08fd981231505542fcfa6)"
                    let expr_29995 := expr_29994
                    /// @src 27:3276:3279  "128"
                    let expr_29996 := 0x80
                    /// @src 27:3228:3279  "(ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                    let _1513 := convert_t_rational_128_by_1_to_t_uint8(expr_29996)
                    let expr_29997 :=
                    shift_right_t_uint256_t_uint8(expr_29995, _1513)

                    /// @src 27:3220:3279  "ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                    var_ratio_29766 := expr_29997
                    let expr_29998 := expr_29997
                    /// @src 27:3193:3279  "if (absTick & 0x8000 != 0) ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                }
                /// @src 27:3297:3304  "absTick"
                let _1514 := var_absTick_29731
                let expr_30001 := _1514
                /// @src 27:3307:3314  "0x10000"
                let expr_30002 := 0x010000
                /// @src 27:3297:3314  "absTick & 0x10000"
                let expr_30003 := and(expr_30001, convert_t_rational_65536_by_1_to_t_uint256(expr_30002))

                /// @src 27:3318:3319  "0"
                let expr_30004 := 0x00
                /// @src 27:3297:3319  "absTick & 0x10000 != 0"
                let expr_30005 := iszero(eq(cleanup_t_uint256(expr_30003), convert_t_rational_0_by_1_to_t_uint256(expr_30004)))
                /// @src 27:3293:3379  "if (absTick & 0x10000 != 0) ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                if expr_30005 {
                    /// @src 27:3330:3335  "ratio"
                    let _1515 := var_ratio_29766
                    let expr_30007 := _1515
                    /// @src 27:3338:3371  "0x9aa508b5b7a84e1c677de54f3e99bc9"
                    let expr_30008 := 0x09aa508b5b7a84e1c677de54f3e99bc9
                    /// @src 27:3330:3371  "ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9"
                    let expr_30009 := wrapping_mul_t_uint256(expr_30007, convert_t_rational_12847376061809297530290974190478138313_by_1_to_t_uint256(expr_30008))

                    /// @src 27:3329:3372  "(ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9)"
                    let expr_30010 := expr_30009
                    /// @src 27:3376:3379  "128"
                    let expr_30011 := 0x80
                    /// @src 27:3329:3379  "(ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                    let _1516 := convert_t_rational_128_by_1_to_t_uint8(expr_30011)
                    let expr_30012 :=
                    shift_right_t_uint256_t_uint8(expr_30010, _1516)

                    /// @src 27:3321:3379  "ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                    var_ratio_29766 := expr_30012
                    let expr_30013 := expr_30012
                    /// @src 27:3293:3379  "if (absTick & 0x10000 != 0) ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                }
                /// @src 27:3397:3404  "absTick"
                let _1517 := var_absTick_29731
                let expr_30016 := _1517
                /// @src 27:3407:3414  "0x20000"
                let expr_30017 := 0x020000
                /// @src 27:3397:3414  "absTick & 0x20000"
                let expr_30018 := and(expr_30016, convert_t_rational_131072_by_1_to_t_uint256(expr_30017))

                /// @src 27:3418:3419  "0"
                let expr_30019 := 0x00
                /// @src 27:3397:3419  "absTick & 0x20000 != 0"
                let expr_30020 := iszero(eq(cleanup_t_uint256(expr_30018), convert_t_rational_0_by_1_to_t_uint256(expr_30019)))
                /// @src 27:3393:3478  "if (absTick & 0x20000 != 0) ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                if expr_30020 {
                    /// @src 27:3430:3435  "ratio"
                    let _1518 := var_ratio_29766
                    let expr_30022 := _1518
                    /// @src 27:3438:3470  "0x5d6af8dedb81196699c329225ee604"
                    let expr_30023 := 0x5d6af8dedb81196699c329225ee604
                    /// @src 27:3430:3470  "ratio * 0x5d6af8dedb81196699c329225ee604"
                    let expr_30024 := wrapping_mul_t_uint256(expr_30022, convert_t_rational_485053260817066172746253684029974020_by_1_to_t_uint256(expr_30023))

                    /// @src 27:3429:3471  "(ratio * 0x5d6af8dedb81196699c329225ee604)"
                    let expr_30025 := expr_30024
                    /// @src 27:3475:3478  "128"
                    let expr_30026 := 0x80
                    /// @src 27:3429:3478  "(ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                    let _1519 := convert_t_rational_128_by_1_to_t_uint8(expr_30026)
                    let expr_30027 :=
                    shift_right_t_uint256_t_uint8(expr_30025, _1519)

                    /// @src 27:3421:3478  "ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                    var_ratio_29766 := expr_30027
                    let expr_30028 := expr_30027
                    /// @src 27:3393:3478  "if (absTick & 0x20000 != 0) ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                }
                /// @src 27:3496:3503  "absTick"
                let _1520 := var_absTick_29731
                let expr_30031 := _1520
                /// @src 27:3506:3513  "0x40000"
                let expr_30032 := 0x040000
                /// @src 27:3496:3513  "absTick & 0x40000"
                let expr_30033 := and(expr_30031, convert_t_rational_262144_by_1_to_t_uint256(expr_30032))

                /// @src 27:3517:3518  "0"
                let expr_30034 := 0x00
                /// @src 27:3496:3518  "absTick & 0x40000 != 0"
                let expr_30035 := iszero(eq(cleanup_t_uint256(expr_30033), convert_t_rational_0_by_1_to_t_uint256(expr_30034)))
                /// @src 27:3492:3575  "if (absTick & 0x40000 != 0) ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                if expr_30035 {
                    /// @src 27:3529:3534  "ratio"
                    let _1521 := var_ratio_29766
                    let expr_30037 := _1521
                    /// @src 27:3537:3567  "0x2216e584f5fa1ea926041bedfe98"
                    let expr_30038 := 0x2216e584f5fa1ea926041bedfe98
                    /// @src 27:3529:3567  "ratio * 0x2216e584f5fa1ea926041bedfe98"
                    let expr_30039 := wrapping_mul_t_uint256(expr_30037, convert_t_rational_691415978906521570653435304214168_by_1_to_t_uint256(expr_30038))

                    /// @src 27:3528:3568  "(ratio * 0x2216e584f5fa1ea926041bedfe98)"
                    let expr_30040 := expr_30039
                    /// @src 27:3572:3575  "128"
                    let expr_30041 := 0x80
                    /// @src 27:3528:3575  "(ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                    let _1522 := convert_t_rational_128_by_1_to_t_uint8(expr_30041)
                    let expr_30042 :=
                    shift_right_t_uint256_t_uint8(expr_30040, _1522)

                    /// @src 27:3520:3575  "ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                    var_ratio_29766 := expr_30042
                    let expr_30043 := expr_30042
                    /// @src 27:3492:3575  "if (absTick & 0x40000 != 0) ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                }
                /// @src 27:3593:3600  "absTick"
                let _1523 := var_absTick_29731
                let expr_30046 := _1523
                /// @src 27:3603:3610  "0x80000"
                let expr_30047 := 0x080000
                /// @src 27:3593:3610  "absTick & 0x80000"
                let expr_30048 := and(expr_30046, convert_t_rational_524288_by_1_to_t_uint256(expr_30047))

                /// @src 27:3614:3615  "0"
                let expr_30049 := 0x00
                /// @src 27:3593:3615  "absTick & 0x80000 != 0"
                let expr_30050 := iszero(eq(cleanup_t_uint256(expr_30048), convert_t_rational_0_by_1_to_t_uint256(expr_30049)))
                /// @src 27:3589:3667  "if (absTick & 0x80000 != 0) ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                if expr_30050 {
                    /// @src 27:3626:3631  "ratio"
                    let _1524 := var_ratio_29766
                    let expr_30052 := _1524
                    /// @src 27:3634:3659  "0x48a170391f7dc42444e8fa2"
                    let expr_30053 := 0x048a170391f7dc42444e8fa2
                    /// @src 27:3626:3659  "ratio * 0x48a170391f7dc42444e8fa2"
                    let expr_30054 := wrapping_mul_t_uint256(expr_30052, convert_t_rational_1404880482679654955896180642_by_1_to_t_uint256(expr_30053))

                    /// @src 27:3625:3660  "(ratio * 0x48a170391f7dc42444e8fa2)"
                    let expr_30055 := expr_30054
                    /// @src 27:3664:3667  "128"
                    let expr_30056 := 0x80
                    /// @src 27:3625:3667  "(ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                    let _1525 := convert_t_rational_128_by_1_to_t_uint8(expr_30056)
                    let expr_30057 :=
                    shift_right_t_uint256_t_uint8(expr_30055, _1525)

                    /// @src 27:3617:3667  "ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                    var_ratio_29766 := expr_30057
                    let expr_30058 := expr_30057
                    /// @src 27:3589:3667  "if (absTick & 0x80000 != 0) ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                }
                /// @src 27:3686:3690  "tick"
                let _1526 := var_tick_29725
                let expr_30061 := _1526
                /// @src 27:3693:3694  "0"
                let expr_30062 := 0x00
                /// @src 27:3686:3694  "tick > 0"
                let expr_30063 := sgt(cleanup_t_int24(expr_30061), convert_t_rational_0_by_1_to_t_int24(expr_30062))
                /// @src 27:3682:3729  "if (tick > 0) ratio = type(uint256).max / ratio"
                if expr_30063 {
                    /// @src 27:3704:3721  "type(uint256).max"
                    let expr_30069 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 27:3724:3729  "ratio"
                    let _1527 := var_ratio_29766
                    let expr_30070 := _1527
                    /// @src 27:3704:3729  "type(uint256).max / ratio"
                    let expr_30071 := wrapping_div_t_uint256(expr_30069, expr_30070)

                    /// @src 27:3696:3729  "ratio = type(uint256).max / ratio"
                    var_ratio_29766 := expr_30071
                    let expr_30072 := expr_30071
                    /// @src 27:3682:3729  "if (tick > 0) ratio = type(uint256).max / ratio"
                }
                /// @src 27:4079:4084  "ratio"
                let _1528 := var_ratio_29766
                let expr_30078 := _1528
                /// @src 27:4088:4090  "32"
                let expr_30079 := 0x20
                /// @src 27:4079:4090  "ratio >> 32"
                let _1529 := convert_t_rational_32_by_1_to_t_uint8(expr_30079)
                let expr_30080 :=
                shift_right_t_uint256_t_uint8(expr_30078, _1529)

                /// @src 27:4078:4091  "(ratio >> 32)"
                let expr_30081 := expr_30080
                /// @src 27:4095:4100  "ratio"
                let _1530 := var_ratio_29766
                let expr_30082 := _1530
                /// @src 27:4104:4111  "1 << 32"
                let expr_30085 := 0x0100000000
                /// @src 27:4103:4112  "(1 << 32)"
                let expr_30086 := expr_30085
                /// @src 27:4095:4112  "ratio % (1 << 32)"
                let expr_30087 := mod_t_uint256(expr_30082, convert_t_rational_4294967296_by_1_to_t_uint256(expr_30086))

                /// @src 27:4116:4117  "0"
                let expr_30088 := 0x00
                /// @src 27:4095:4117  "ratio % (1 << 32) == 0"
                let expr_30089 := eq(cleanup_t_uint256(expr_30087), convert_t_rational_0_by_1_to_t_uint256(expr_30088))
                /// @src 27:4095:4125  "ratio % (1 << 32) == 0 ? 0 : 1"
                let expr_30092
                switch expr_30089
                case 0 {
                    /// @src 27:4124:4125  "1"
                    let expr_30091 := 0x01
                    /// @src 27:4095:4125  "ratio % (1 << 32) == 0 ? 0 : 1"
                    expr_30092 := convert_t_rational_1_by_1_to_t_uint8(expr_30091)
                }
                default {
                    /// @src 27:4120:4121  "0"
                    let expr_30090 := 0x00
                    /// @src 27:4095:4125  "ratio % (1 << 32) == 0 ? 0 : 1"
                    expr_30092 := convert_t_rational_0_by_1_to_t_uint8(expr_30090)
                }
                /// @src 27:4094:4126  "(ratio % (1 << 32) == 0 ? 0 : 1)"
                let expr_30093 := expr_30092
                /// @src 27:4078:4126  "(ratio >> 32) + (ratio % (1 << 32) == 0 ? 0 : 1)"
                let expr_30094 := wrapping_add_t_uint256(expr_30081, convert_t_uint8_to_t_uint256(expr_30093))

                /// @src 27:4070:4127  "uint160((ratio >> 32) + (ratio % (1 << 32) == 0 ? 0 : 1))"
                let expr_30095 := convert_t_uint256_to_t_uint160(expr_30094)
                /// @src 27:4055:4127  "sqrtPriceX96 = uint160((ratio >> 32) + (ratio % (1 << 32) == 0 ? 0 : 1))"
                var_sqrtPriceX96_29728 := expr_30095
                let expr_30096 := expr_30095

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @src 25:317:376  "uint256 internal constant Q96 = 0x1000000000000000000000000"
            function constant_Q96_29696() -> ret {
                /// @src 25:349:376  "0x1000000000000000000000000"
                let expr_29695 := 0x01000000000000000000000000
                let _1534 := convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(expr_29695)

                ret := _1534
            }

            /// @ast-id 32053
            /// @src 78:3793:4178  "function calculateAmount0Offset(uint160 sqrtRatio, uint256 liquidityAmount, bool isRoundUp)..."
            function fun_calculateAmount0Offset_32053(var_sqrtRatio_32023, var_liquidityAmount_32025, var_isRoundUp_32027) -> var__32030 {
                /// @src 78:3932:3939  "uint256"
                let zero_t_uint256_1531 := zero_value_for_split_t_uint256()
                var__32030 := zero_t_uint256_1531

                /// @src 78:3959:3968  "isRoundUp"
                let _1532 := var_isRoundUp_32027
                let expr_32032 := _1532
                /// @src 78:3955:4172  "if (isRoundUp) {..."
                switch expr_32032
                case 0 {
                    /// @src 78:4100:4108  "FullMath"
                    let expr_32042_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:4116:4131  "liquidityAmount"
                    let _1533 := var_liquidityAmount_32025
                    let expr_32044 := _1533
                    /// @src 78:4133:4145  "FixedPoint96"
                    let expr_32045_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:4133:4149  "FixedPoint96.Q96"
                    let expr_32046 := constant_Q96_29696()
                    /// @src 78:4151:4160  "sqrtRatio"
                    let _1535 := var_sqrtRatio_32023
                    let expr_32047 := _1535
                    /// @src 78:4100:4161  "FullMath.mulDiv(liquidityAmount, FixedPoint96.Q96, sqrtRatio)"
                    let _1536 := convert_t_uint160_to_t_uint256(expr_32047)
                    let expr_32048 := fun_mulDiv_32512(expr_32044, expr_32046, _1536)
                    /// @src 78:4093:4161  "return FullMath.mulDiv(liquidityAmount, FixedPoint96.Q96, sqrtRatio)"
                    var__32030 := expr_32048
                    leave
                    /// @src 78:3955:4172  "if (isRoundUp) {..."
                }
                default {
                    /// @src 78:3991:3999  "FullMath"
                    let expr_32033_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:4017:4032  "liquidityAmount"
                    let _1537 := var_liquidityAmount_32025
                    let expr_32035 := _1537
                    /// @src 78:4034:4046  "FixedPoint96"
                    let expr_32036_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:4034:4050  "FixedPoint96.Q96"
                    let expr_32037 := constant_Q96_29696()
                    /// @src 78:4052:4061  "sqrtRatio"
                    let _1538 := var_sqrtRatio_32023
                    let expr_32038 := _1538
                    /// @src 78:3991:4062  "FullMath.mulDivRoundingUp(liquidityAmount, FixedPoint96.Q96, sqrtRatio)"
                    let _1539 := convert_t_uint160_to_t_uint256(expr_32038)
                    let expr_32039 := fun_mulDivRoundingUp_32556(expr_32035, expr_32037, _1539)
                    /// @src 78:3984:4062  "return FullMath.mulDivRoundingUp(liquidityAmount, FixedPoint96.Q96, sqrtRatio)"
                    var__32030 := expr_32039
                    leave
                    /// @src 78:3955:4172  "if (isRoundUp) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 32111
            /// @src 78:4589:4974  "function calculateAmount1Offset(uint160 sqrtRatio, uint256 liquidityAmount, bool isRoundUp)..."
            function fun_calculateAmount1Offset_32111(var_sqrtRatio_32081, var_liquidityAmount_32083, var_isRoundUp_32085) -> var__32088 {
                /// @src 78:4728:4735  "uint256"
                let zero_t_uint256_1540 := zero_value_for_split_t_uint256()
                var__32088 := zero_t_uint256_1540

                /// @src 78:4755:4764  "isRoundUp"
                let _1541 := var_isRoundUp_32085
                let expr_32090 := _1541
                /// @src 78:4751:4968  "if (isRoundUp) {..."
                switch expr_32090
                case 0 {
                    /// @src 78:4896:4904  "FullMath"
                    let expr_32100_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:4912:4927  "liquidityAmount"
                    let _1542 := var_liquidityAmount_32083
                    let expr_32102 := _1542
                    /// @src 78:4929:4938  "sqrtRatio"
                    let _1543 := var_sqrtRatio_32081
                    let expr_32103 := _1543
                    /// @src 78:4940:4952  "FixedPoint96"
                    let expr_32104_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:4940:4956  "FixedPoint96.Q96"
                    let expr_32105 := constant_Q96_29696()
                    /// @src 78:4896:4957  "FullMath.mulDiv(liquidityAmount, sqrtRatio, FixedPoint96.Q96)"
                    let _1544 := convert_t_uint160_to_t_uint256(expr_32103)
                    let expr_32106 := fun_mulDiv_32512(expr_32102, _1544, expr_32105)
                    /// @src 78:4889:4957  "return FullMath.mulDiv(liquidityAmount, sqrtRatio, FixedPoint96.Q96)"
                    var__32088 := expr_32106
                    leave
                    /// @src 78:4751:4968  "if (isRoundUp) {..."
                }
                default {
                    /// @src 78:4787:4795  "FullMath"
                    let expr_32091_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:4813:4828  "liquidityAmount"
                    let _1545 := var_liquidityAmount_32083
                    let expr_32093 := _1545
                    /// @src 78:4830:4839  "sqrtRatio"
                    let _1546 := var_sqrtRatio_32081
                    let expr_32094 := _1546
                    /// @src 78:4841:4853  "FixedPoint96"
                    let expr_32095_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:4841:4857  "FixedPoint96.Q96"
                    let expr_32096 := constant_Q96_29696()
                    /// @src 78:4787:4858  "FullMath.mulDivRoundingUp(liquidityAmount, sqrtRatio, FixedPoint96.Q96)"
                    let _1547 := convert_t_uint160_to_t_uint256(expr_32094)
                    let expr_32097 := fun_mulDivRoundingUp_32556(expr_32093, _1547, expr_32096)
                    /// @src 78:4780:4858  "return FullMath.mulDivRoundingUp(liquidityAmount, sqrtRatio, FixedPoint96.Q96)"
                    var__32088 := expr_32097
                    leave
                    /// @src 78:4751:4968  "if (isRoundUp) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 32160
            /// @src 79:490:594  "function max(uint256 a, uint256 b) internal pure returns (uint256) {..."
            function fun_max_32160(var_a_32145, var_b_32147) -> var__32150 {
                /// @src 79:548:555  "uint256"
                let zero_t_uint256_1548 := zero_value_for_split_t_uint256()
                var__32150 := zero_t_uint256_1548

                /// @src 79:574:575  "a"
                let _1549 := var_a_32145
                let expr_32152 := _1549
                /// @src 79:578:579  "b"
                let _1550 := var_b_32147
                let expr_32153 := _1550
                /// @src 79:574:579  "a > b"
                let expr_32154 := gt(cleanup_t_uint256(expr_32152), cleanup_t_uint256(expr_32153))
                /// @src 79:574:587  "a > b ? a : b"
                let expr_32157
                switch expr_32154
                case 0 {
                    /// @src 79:586:587  "b"
                    let _1551 := var_b_32147
                    let expr_32156 := _1551
                    /// @src 79:574:587  "a > b ? a : b"
                    expr_32157 := expr_32156
                }
                default {
                    /// @src 79:582:583  "a"
                    let _1552 := var_a_32145
                    let expr_32155 := _1552
                    /// @src 79:574:587  "a > b ? a : b"
                    expr_32157 := expr_32155
                }
                /// @src 79:567:587  "return a > b ? a : b"
                var__32150 := expr_32157
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 31594
            /// @src 66:7299:7567  "function getTotalCollateralValue(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getTotalCollateralValue_31594(var_tokenState_31575_mpos) -> var__31578 {
                /// @src 66:7386:7393  "uint256"
                let zero_t_uint256_1553 := zero_value_for_split_t_uint256()
                var__31578 := zero_t_uint256_1553

                /// @src 66:7412:7429  "FixedPointMathLib"
                let expr_31580_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:7441:7451  "tokenState"
                let _1554_mpos := var_tokenState_31575_mpos
                let expr_31582_mpos := _1554_mpos
                /// @src 66:7441:7474  "tokenState.totalCompoundDeposited"
                let _1555 := add(expr_31582_mpos, 0)
                let _1556 := read_from_memoryt_uint256(_1555)
                let expr_31583 := _1556
                /// @src 66:7476:7486  "tokenState"
                let _1557_mpos := var_tokenState_31575_mpos
                let expr_31584_mpos := _1557_mpos
                /// @src 66:7476:7498  "tokenState.assetScaler"
                let _1558 := add(expr_31584_mpos, 96)
                let _1559 := read_from_memoryt_uint256(_1558)
                let expr_31585 := _1559
                /// @src 66:7500:7509  "Constants"
                let expr_31586_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:7500:7513  "Constants.ONE"
                let expr_31587 := constant_ONE_30273()
                /// @src 66:7412:7514  "FixedPointMathLib.mulDivDown(tokenState.totalCompoundDeposited, tokenState.assetScaler, Constants.ONE)"
                let expr_31588 := fun_mulDivDown_36976(expr_31583, expr_31585, expr_31587)
                /// @src 66:7529:7539  "tokenState"
                let _1560_mpos := var_tokenState_31575_mpos
                let expr_31589_mpos := _1560_mpos
                /// @src 66:7529:7560  "tokenState.totalNormalDeposited"
                let _1561 := add(expr_31589_mpos, 32)
                let _1562 := read_from_memoryt_uint256(_1561)
                let expr_31590 := _1562
                /// @src 66:7412:7560  "FixedPointMathLib.mulDivDown(tokenState.totalCompoundDeposited, tokenState.assetScaler, Constants.ONE)..."
                let expr_31591 := checked_add_t_uint256(expr_31588, expr_31590)

                /// @src 66:7405:7560  "return FixedPointMathLib.mulDivDown(tokenState.totalCompoundDeposited, tokenState.assetScaler, Constants.ONE)..."
                var__31578 := expr_31591
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 31606
            /// @src 66:7573:7717  "function getTotalDebtValue(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getTotalDebtValue_31606(var_tokenState_31597_mpos) -> var__31600 {
                /// @src 66:7654:7661  "uint256"
                let zero_t_uint256_1563 := zero_value_for_split_t_uint256()
                var__31600 := zero_t_uint256_1563

                /// @src 66:7680:7690  "tokenState"
                let _1564_mpos := var_tokenState_31597_mpos
                let expr_31602_mpos := _1564_mpos
                /// @src 66:7680:7710  "tokenState.totalNormalBorrowed"
                let _1565 := add(expr_31602_mpos, 64)
                let _1566 := read_from_memoryt_uint256(_1565)
                let expr_31603 := _1566
                /// @src 66:7673:7710  "return tokenState.totalNormalBorrowed"
                var__31600 := expr_31603
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            function store_literal_in_memory_cee6c1efda892dff24010eb4ec902cfd76c2d6ece4afb7a0868714ea3799fe91(memPtr) {

                mstore(add(memPtr, 0), "S1")

            }

            function abi_encode_t_stringliteral_cee6c1efda892dff24010eb4ec902cfd76c2d6ece4afb7a0868714ea3799fe91_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_cee6c1efda892dff24010eb4ec902cfd76c2d6ece4afb7a0868714ea3799fe91(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_cee6c1efda892dff24010eb4ec902cfd76c2d6ece4afb7a0868714ea3799fe91__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_cee6c1efda892dff24010eb4ec902cfd76c2d6ece4afb7a0868714ea3799fe91_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_cee6c1efda892dff24010eb4ec902cfd76c2d6ece4afb7a0868714ea3799fe91(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_cee6c1efda892dff24010eb4ec902cfd76c2d6ece4afb7a0868714ea3799fe91__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 31479
            /// @src 66:5685:6118  "function getDebtFee(AssetStatus memory tokenState, UserStatus memory accountState)..."
            function fun_getDebtFee_31479(var_tokenState_31445_mpos, var_accountState_31448_mpos) -> var__31451 {
                /// @src 66:5815:5822  "uint256"
                let zero_t_uint256_1567 := zero_value_for_split_t_uint256()
                var__31451 := zero_t_uint256_1567

                /// @src 66:5846:5858  "accountState"
                let _1568_mpos := var_accountState_31448_mpos
                let expr_31454_mpos := _1568_mpos
                /// @src 66:5846:5873  "accountState.positionAmount"
                let _1569 := add(expr_31454_mpos, 0)
                let _1570 := read_from_memoryt_int256(_1569)
                let expr_31455 := _1570
                /// @src 66:5877:5878  "0"
                let expr_31456 := 0x00
                /// @src 66:5846:5878  "accountState.positionAmount <= 0"
                let expr_31457 := iszero(sgt(cleanup_t_int256(expr_31455), convert_t_rational_0_by_1_to_t_int256(expr_31456)))
                /// @src 66:5838:5885  "require(accountState.positionAmount <= 0, \"S1\")"
                require_helper_t_stringliteral_cee6c1efda892dff24010eb4ec902cfd76c2d6ece4afb7a0868714ea3799fe91(expr_31457)
                /// @src 66:5903:5920  "FixedPointMathLib"
                let expr_31461_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:5943:5953  "tokenState"
                let _1571_mpos := var_tokenState_31445_mpos
                let expr_31463_mpos := _1571_mpos
                /// @src 66:5943:5964  "tokenState.debtGrowth"
                let _1572 := add(expr_31463_mpos, 160)
                let _1573 := read_from_memoryt_uint256(_1572)
                let expr_31464 := _1573
                /// @src 66:5967:5979  "accountState"
                let _1574_mpos := var_accountState_31448_mpos
                let expr_31465_mpos := _1574_mpos
                /// @src 66:5967:5993  "accountState.lastFeeGrowth"
                let _1575 := add(expr_31465_mpos, 32)
                let _1576 := read_from_memoryt_uint256(_1575)
                let expr_31466 := _1576
                /// @src 66:5943:5993  "tokenState.debtGrowth - accountState.lastFeeGrowth"
                let expr_31467 := checked_sub_t_uint256(expr_31464, expr_31466)

                /// @src 66:6046:6058  "accountState"
                let _1577_mpos := var_accountState_31448_mpos
                let expr_31470_mpos := _1577_mpos
                /// @src 66:6046:6073  "accountState.positionAmount"
                let _1578 := add(expr_31470_mpos, 0)
                let _1579 := read_from_memoryt_int256(_1578)
                let expr_31471 := _1579
                /// @src 66:6045:6073  "-accountState.positionAmount"
                let expr_31472 := negate_t_int256(expr_31471)
                /// @src 66:6037:6074  "uint256(-accountState.positionAmount)"
                let expr_31473 := convert_t_int256_to_t_uint256(expr_31472)
                /// @src 66:6088:6097  "Constants"
                let expr_31474_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:6088:6101  "Constants.ONE"
                let expr_31475 := constant_ONE_30273()
                /// @src 66:5903:6111  "FixedPointMathLib.mulDivUp(..."
                let expr_31476 := fun_mulDivUp_36989(expr_31467, expr_31473, expr_31475)
                /// @src 66:5896:6111  "return FixedPointMathLib.mulDivUp(..."
                var__31451 := expr_31476
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 31442
            /// @src 66:5243:5679  "function getAssetFee(AssetStatus memory tokenState, UserStatus memory accountState)..."
            function fun_getAssetFee_31442(var_tokenState_31409_mpos, var_accountState_31412_mpos) -> var__31415 {
                /// @src 66:5374:5381  "uint256"
                let zero_t_uint256_1580 := zero_value_for_split_t_uint256()
                var__31415 := zero_t_uint256_1580

                /// @src 66:5405:5417  "accountState"
                let _1581_mpos := var_accountState_31412_mpos
                let expr_31418_mpos := _1581_mpos
                /// @src 66:5405:5432  "accountState.positionAmount"
                let _1582 := add(expr_31418_mpos, 0)
                let _1583 := read_from_memoryt_int256(_1582)
                let expr_31419 := _1583
                /// @src 66:5436:5437  "0"
                let expr_31420 := 0x00
                /// @src 66:5405:5437  "accountState.positionAmount >= 0"
                let expr_31421 := iszero(slt(cleanup_t_int256(expr_31419), convert_t_rational_0_by_1_to_t_int256(expr_31420)))
                /// @src 66:5397:5444  "require(accountState.positionAmount >= 0, \"S1\")"
                require_helper_t_stringliteral_cee6c1efda892dff24010eb4ec902cfd76c2d6ece4afb7a0868714ea3799fe91(expr_31421)
                /// @src 66:5462:5479  "FixedPointMathLib"
                let expr_31425_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:5504:5514  "tokenState"
                let _1584_mpos := var_tokenState_31409_mpos
                let expr_31427_mpos := _1584_mpos
                /// @src 66:5504:5526  "tokenState.assetGrowth"
                let _1585 := add(expr_31427_mpos, 128)
                let _1586 := read_from_memoryt_uint256(_1585)
                let expr_31428 := _1586
                /// @src 66:5529:5541  "accountState"
                let _1587_mpos := var_accountState_31412_mpos
                let expr_31429_mpos := _1587_mpos
                /// @src 66:5529:5555  "accountState.lastFeeGrowth"
                let _1588 := add(expr_31429_mpos, 32)
                let _1589 := read_from_memoryt_uint256(_1588)
                let expr_31430 := _1589
                /// @src 66:5504:5555  "tokenState.assetGrowth - accountState.lastFeeGrowth"
                let expr_31431 := checked_sub_t_uint256(expr_31428, expr_31430)

                /// @src 66:5607:5619  "accountState"
                let _1590_mpos := var_accountState_31412_mpos
                let expr_31434_mpos := _1590_mpos
                /// @src 66:5607:5634  "accountState.positionAmount"
                let _1591 := add(expr_31434_mpos, 0)
                let _1592 := read_from_memoryt_int256(_1591)
                let expr_31435 := _1592
                /// @src 66:5599:5635  "uint256(accountState.positionAmount)"
                let expr_31436 := convert_t_int256_to_t_uint256(expr_31435)
                /// @src 66:5649:5658  "Constants"
                let expr_31437_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:5649:5662  "Constants.ONE"
                let expr_31438 := constant_ONE_30273()
                /// @src 66:5462:5672  "FixedPointMathLib.mulDivDown(..."
                let expr_31439 := fun_mulDivDown_36976(expr_31431, expr_31436, expr_31438)
                /// @src 66:5455:5672  "return FixedPointMathLib.mulDivDown(..."
                var__31415 := expr_31439
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            function convert_t_uint64_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint64(value)))
            }

            /// @ast-id 34418
            /// @src 60:85:245  "function getRebalanceCacheId(uint256 pairId, uint64 rebalanceId) internal pure returns (uint256) {..."
            function fun_getRebalanceCacheId_34418(var_pairId_34400, var_rebalanceId_34402) -> var__34405 {
                /// @src 60:173:180  "uint256"
                let zero_t_uint256_1593 := zero_value_for_split_t_uint256()
                var__34405 := zero_t_uint256_1593

                /// @src 60:199:205  "pairId"
                let _1594 := var_pairId_34400
                let expr_34407 := _1594
                /// @src 60:208:224  "type(uint64).max"
                let expr_34412 := 0xffffffffffffffff
                /// @src 60:199:224  "pairId * type(uint64).max"
                let expr_34413 := checked_mul_t_uint256(expr_34407, convert_t_uint64_to_t_uint256(expr_34412))

                /// @src 60:227:238  "rebalanceId"
                let _1595 := var_rebalanceId_34402
                let expr_34414 := _1595
                /// @src 60:199:238  "pairId * type(uint64).max + rebalanceId"
                let expr_34415 := checked_add_t_uint256(expr_34413, convert_t_uint64_to_t_uint256(expr_34414))

                /// @src 60:192:238  "return pairId * type(uint64).max + rebalanceId"
                var__34405 := expr_34415
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 32330
            /// @src 79:1390:1741  "function mulDivDownInt256(int256 x, uint256 y, uint256 z) internal pure returns (int256) {..."
            function fun_mulDivDownInt256_32330(var_x_32281, var_y_32283, var_z_32285) -> var__32288 {
                /// @src 79:1471:1477  "int256"
                let zero_t_int256_1596 := zero_value_for_split_t_int256()
                var__32288 := zero_t_int256_1596

                /// @src 79:1493:1494  "x"
                let _1597 := var_x_32281
                let expr_32290 := _1597
                /// @src 79:1498:1499  "0"
                let expr_32291 := 0x00
                /// @src 79:1493:1499  "x == 0"
                let expr_32292 := eq(cleanup_t_int256(expr_32290), convert_t_rational_0_by_1_to_t_int256(expr_32291))
                /// @src 79:1489:1735  "if (x == 0) {..."
                switch expr_32292
                case 0 {
                    /// @src 79:1544:1545  "x"
                    let _1598 := var_x_32281
                    let expr_32296 := _1598
                    /// @src 79:1548:1549  "0"
                    let expr_32297 := 0x00
                    /// @src 79:1544:1549  "x > 0"
                    let expr_32298 := sgt(cleanup_t_int256(expr_32296), convert_t_rational_0_by_1_to_t_int256(expr_32297))
                    /// @src 79:1540:1735  "if (x > 0) {..."
                    switch expr_32298
                    case 0 {
                        /// @src 79:1668:1685  "FixedPointMathLib"
                        let expr_32312_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                        /// @src 79:1704:1705  "x"
                        let _1599 := var_x_32281
                        let expr_32316 := _1599
                        /// @src 79:1703:1705  "-x"
                        let expr_32317 := negate_t_int256(expr_32316)
                        /// @src 79:1695:1706  "uint256(-x)"
                        let expr_32318 := convert_t_int256_to_t_uint256(expr_32317)
                        /// @src 79:1708:1709  "y"
                        let _1600 := var_y_32283
                        let expr_32319 := _1600
                        /// @src 79:1711:1712  "z"
                        let _1601 := var_z_32285
                        let expr_32320 := _1601
                        /// @src 79:1668:1713  "FixedPointMathLib.mulDivUp(uint256(-x), y, z)"
                        let expr_32321 := fun_mulDivUp_36989(expr_32318, expr_32319, expr_32320)
                        /// @src 79:1668:1722  "FixedPointMathLib.mulDivUp(uint256(-x), y, z).toInt256"
                        let expr_32322_self := expr_32321
                        /// @src 79:1668:1724  "FixedPointMathLib.mulDivUp(uint256(-x), y, z).toInt256()"
                        let expr_32323 := fun_toInt256_28969(expr_32322_self)
                        /// @src 79:1667:1724  "-FixedPointMathLib.mulDivUp(uint256(-x), y, z).toInt256()"
                        let expr_32324 := negate_t_int256(expr_32323)
                        /// @src 79:1660:1724  "return -FixedPointMathLib.mulDivUp(uint256(-x), y, z).toInt256()"
                        var__32288 := expr_32324
                        leave
                        /// @src 79:1540:1735  "if (x > 0) {..."
                    }
                    default {
                        /// @src 79:1572:1589  "FixedPointMathLib"
                        let expr_32299_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                        /// @src 79:1609:1610  "x"
                        let _1602 := var_x_32281
                        let expr_32303 := _1602
                        /// @src 79:1601:1611  "uint256(x)"
                        let expr_32304 := convert_t_int256_to_t_uint256(expr_32303)
                        /// @src 79:1613:1614  "y"
                        let _1603 := var_y_32283
                        let expr_32305 := _1603
                        /// @src 79:1616:1617  "z"
                        let _1604 := var_z_32285
                        let expr_32306 := _1604
                        /// @src 79:1572:1618  "FixedPointMathLib.mulDivDown(uint256(x), y, z)"
                        let expr_32307 := fun_mulDivDown_36976(expr_32304, expr_32305, expr_32306)
                        /// @src 79:1572:1627  "FixedPointMathLib.mulDivDown(uint256(x), y, z).toInt256"
                        let expr_32308_self := expr_32307
                        /// @src 79:1572:1629  "FixedPointMathLib.mulDivDown(uint256(x), y, z).toInt256()"
                        let expr_32309 := fun_toInt256_28969(expr_32308_self)
                        /// @src 79:1565:1629  "return FixedPointMathLib.mulDivDown(uint256(x), y, z).toInt256()"
                        var__32288 := expr_32309
                        leave
                        /// @src 79:1540:1735  "if (x > 0) {..."
                    }
                    /// @src 79:1489:1735  "if (x == 0) {..."
                }
                default {
                    /// @src 79:1522:1523  "0"
                    let expr_32293 := 0x00
                    /// @src 79:1515:1523  "return 0"
                    var__32288 := convert_t_rational_0_by_1_to_t_int256(expr_32293)
                    leave
                    /// @src 79:1489:1735  "if (x == 0) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 32279
            /// @src 79:1043:1384  "function fullMulDivDownInt256(int256 x, uint256 y, uint256 z) internal pure returns (int256) {..."
            function fun_fullMulDivDownInt256_32279(var_x_32230, var_y_32232, var_z_32234) -> var__32237 {
                /// @src 79:1128:1134  "int256"
                let zero_t_int256_1605 := zero_value_for_split_t_int256()
                var__32237 := zero_t_int256_1605

                /// @src 79:1150:1151  "x"
                let _1606 := var_x_32230
                let expr_32239 := _1606
                /// @src 79:1155:1156  "0"
                let expr_32240 := 0x00
                /// @src 79:1150:1156  "x == 0"
                let expr_32241 := eq(cleanup_t_int256(expr_32239), convert_t_rational_0_by_1_to_t_int256(expr_32240))
                /// @src 79:1146:1378  "if (x == 0) {..."
                switch expr_32241
                case 0 {
                    /// @src 79:1201:1202  "x"
                    let _1607 := var_x_32230
                    let expr_32245 := _1607
                    /// @src 79:1205:1206  "0"
                    let expr_32246 := 0x00
                    /// @src 79:1201:1206  "x > 0"
                    let expr_32247 := sgt(cleanup_t_int256(expr_32245), convert_t_rational_0_by_1_to_t_int256(expr_32246))
                    /// @src 79:1197:1378  "if (x > 0) {..."
                    switch expr_32247
                    case 0 {
                        /// @src 79:1312:1320  "FullMath"
                        let expr_32261_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                        /// @src 79:1347:1348  "x"
                        let _1608 := var_x_32230
                        let expr_32265 := _1608
                        /// @src 79:1346:1348  "-x"
                        let expr_32266 := negate_t_int256(expr_32265)
                        /// @src 79:1338:1349  "uint256(-x)"
                        let expr_32267 := convert_t_int256_to_t_uint256(expr_32266)
                        /// @src 79:1351:1352  "y"
                        let _1609 := var_y_32232
                        let expr_32268 := _1609
                        /// @src 79:1354:1355  "z"
                        let _1610 := var_z_32234
                        let expr_32269 := _1610
                        /// @src 79:1312:1356  "FullMath.mulDivRoundingUp(uint256(-x), y, z)"
                        let expr_32270 := fun_mulDivRoundingUp_32556(expr_32267, expr_32268, expr_32269)
                        /// @src 79:1312:1365  "FullMath.mulDivRoundingUp(uint256(-x), y, z).toInt256"
                        let expr_32271_self := expr_32270
                        /// @src 79:1312:1367  "FullMath.mulDivRoundingUp(uint256(-x), y, z).toInt256()"
                        let expr_32272 := fun_toInt256_28969(expr_32271_self)
                        /// @src 79:1311:1367  "-FullMath.mulDivRoundingUp(uint256(-x), y, z).toInt256()"
                        let expr_32273 := negate_t_int256(expr_32272)
                        /// @src 79:1304:1367  "return -FullMath.mulDivRoundingUp(uint256(-x), y, z).toInt256()"
                        var__32237 := expr_32273
                        leave
                        /// @src 79:1197:1378  "if (x > 0) {..."
                    }
                    default {
                        /// @src 79:1229:1237  "FullMath"
                        let expr_32248_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                        /// @src 79:1253:1254  "x"
                        let _1611 := var_x_32230
                        let expr_32252 := _1611
                        /// @src 79:1245:1255  "uint256(x)"
                        let expr_32253 := convert_t_int256_to_t_uint256(expr_32252)
                        /// @src 79:1257:1258  "y"
                        let _1612 := var_y_32232
                        let expr_32254 := _1612
                        /// @src 79:1260:1261  "z"
                        let _1613 := var_z_32234
                        let expr_32255 := _1613
                        /// @src 79:1229:1262  "FullMath.mulDiv(uint256(x), y, z)"
                        let expr_32256 := fun_mulDiv_32512(expr_32253, expr_32254, expr_32255)
                        /// @src 79:1229:1271  "FullMath.mulDiv(uint256(x), y, z).toInt256"
                        let expr_32257_self := expr_32256
                        /// @src 79:1229:1273  "FullMath.mulDiv(uint256(x), y, z).toInt256()"
                        let expr_32258 := fun_toInt256_28969(expr_32257_self)
                        /// @src 79:1222:1273  "return FullMath.mulDiv(uint256(x), y, z).toInt256()"
                        var__32237 := expr_32258
                        leave
                        /// @src 79:1197:1378  "if (x > 0) {..."
                    }
                    /// @src 79:1146:1378  "if (x == 0) {..."
                }
                default {
                    /// @src 79:1179:1180  "0"
                    let expr_32242 := 0x00
                    /// @src 79:1172:1180  "return 0"
                    var__32237 := convert_t_rational_0_by_1_to_t_int256(expr_32242)
                    leave
                    /// @src 79:1146:1378  "if (x == 0) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 31864
            /// @src 78:1031:2214  "function calculateAmount0ForLiquidity(..."
            function fun_calculateAmount0ForLiquidity_31864(var_sqrtRatioA_31731, var_sqrtRatioB_31733, var_liquidityAmount_31735, var_isRoundUp_31737) -> var__31740 {
                /// @src 78:1211:1217  "int256"
                let zero_t_int256_1614 := zero_value_for_split_t_int256()
                var__31740 := zero_t_int256_1614

                /// @src 78:1233:1248  "liquidityAmount"
                let _1615 := var_liquidityAmount_31735
                let expr_31742 := _1615
                /// @src 78:1252:1253  "0"
                let expr_31743 := 0x00
                /// @src 78:1233:1253  "liquidityAmount == 0"
                let expr_31744 := eq(cleanup_t_uint256(expr_31742), convert_t_rational_0_by_1_to_t_uint256(expr_31743))
                /// @src 78:1233:1281  "liquidityAmount == 0 || sqrtRatioA == sqrtRatioB"
                let expr_31748 := expr_31744
                if iszero(expr_31748) {
                    /// @src 78:1257:1267  "sqrtRatioA"
                    let _1616 := var_sqrtRatioA_31731
                    let expr_31745 := _1616
                    /// @src 78:1271:1281  "sqrtRatioB"
                    let _1617 := var_sqrtRatioB_31733
                    let expr_31746 := _1617
                    /// @src 78:1257:1281  "sqrtRatioA == sqrtRatioB"
                    let expr_31747 := eq(cleanup_t_uint160(expr_31745), cleanup_t_uint160(expr_31746))
                    /// @src 78:1233:1281  "liquidityAmount == 0 || sqrtRatioA == sqrtRatioB"
                    expr_31748 := expr_31747
                }
                /// @src 78:1229:1316  "if (liquidityAmount == 0 || sqrtRatioA == sqrtRatioB) {..."
                if expr_31748 {
                    /// @src 78:1304:1305  "0"
                    let expr_31749 := 0x00
                    /// @src 78:1297:1305  "return 0"
                    var__31740 := convert_t_rational_0_by_1_to_t_int256(expr_31749)
                    leave
                    /// @src 78:1229:1316  "if (liquidityAmount == 0 || sqrtRatioA == sqrtRatioB) {..."
                }
                /// @src 78:1340:1350  "sqrtRatioA"
                let _1618 := var_sqrtRatioA_31731
                let expr_31755 := _1618
                /// @src 78:1353:1363  "sqrtRatioB"
                let _1619 := var_sqrtRatioB_31733
                let expr_31756 := _1619
                /// @src 78:1340:1363  "sqrtRatioA > sqrtRatioB"
                let expr_31757 := gt(cleanup_t_uint160(expr_31755), cleanup_t_uint160(expr_31756))
                /// @src 78:1326:1363  "bool swaped = sqrtRatioA > sqrtRatioB"
                let var_swaped_31754 := expr_31757
                /// @src 78:1378:1388  "sqrtRatioA"
                let _1620 := var_sqrtRatioA_31731
                let expr_31759 := _1620
                /// @src 78:1391:1401  "sqrtRatioB"
                let _1621 := var_sqrtRatioB_31733
                let expr_31760 := _1621
                /// @src 78:1378:1401  "sqrtRatioA > sqrtRatioB"
                let expr_31761 := gt(cleanup_t_uint160(expr_31759), cleanup_t_uint160(expr_31760))
                /// @src 78:1374:1454  "if (sqrtRatioA > sqrtRatioB) (sqrtRatioA, sqrtRatioB) = (sqrtRatioB, sqrtRatioA)"
                if expr_31761 {
                    /// @src 78:1431:1441  "sqrtRatioB"
                    let _1622 := var_sqrtRatioB_31733
                    let expr_31765 := _1622
                    /// @src 78:1430:1454  "(sqrtRatioB, sqrtRatioA)"
                    let expr_31767_component_1 := expr_31765
                    /// @src 78:1443:1453  "sqrtRatioA"
                    let _1623 := var_sqrtRatioA_31731
                    let expr_31766 := _1623
                    /// @src 78:1430:1454  "(sqrtRatioB, sqrtRatioA)"
                    let expr_31767_component_2 := expr_31766
                    /// @src 78:1403:1454  "(sqrtRatioA, sqrtRatioB) = (sqrtRatioB, sqrtRatioA)"
                    var_sqrtRatioB_31733 := expr_31767_component_2
                    var_sqrtRatioA_31731 := expr_31767_component_1
                    /// @src 78:1374:1454  "if (sqrtRatioA > sqrtRatioB) (sqrtRatioA, sqrtRatioB) = (sqrtRatioB, sqrtRatioA)"
                }
                /// @src 78:1465:1473  "int256 r"
                let var_r_31772
                let zero_t_int256_1624 := zero_value_for_split_t_int256()
                var_r_31772 := zero_t_int256_1624
                /// @src 78:1502:1508  "swaped"
                let _1625 := var_swaped_31754
                let expr_31776 := _1625
                /// @src 78:1502:1533  "swaped ? !isRoundUp : isRoundUp"
                let expr_31780
                switch expr_31776
                case 0 {
                    /// @src 78:1524:1533  "isRoundUp"
                    let _1626 := var_isRoundUp_31737
                    let expr_31779 := _1626
                    /// @src 78:1502:1533  "swaped ? !isRoundUp : isRoundUp"
                    expr_31780 := expr_31779
                }
                default {
                    /// @src 78:1512:1521  "isRoundUp"
                    let _1627 := var_isRoundUp_31737
                    let expr_31777 := _1627
                    /// @src 78:1511:1521  "!isRoundUp"
                    let expr_31778 := cleanup_t_bool(iszero(expr_31777))
                    /// @src 78:1502:1533  "swaped ? !isRoundUp : isRoundUp"
                    expr_31780 := expr_31778
                }
                /// @src 78:1484:1533  "bool _isRoundUp = swaped ? !isRoundUp : isRoundUp"
                let var__isRoundUp_31775 := expr_31780
                /// @src 78:1563:1578  "liquidityAmount"
                let _1628 := var_liquidityAmount_31735
                let expr_31784 := _1628
                /// @src 78:1543:1578  "uint256 numerator = liquidityAmount"
                let var_numerator_31783 := expr_31784
                /// @src 78:1593:1603  "_isRoundUp"
                let _1629 := var__isRoundUp_31775
                let expr_31786 := _1629
                /// @src 78:1589:2113  "if (_isRoundUp) {..."
                switch expr_31786
                case 0 {
                    /// @src 78:1889:1897  "FullMath"
                    let expr_31822_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:1905:1914  "numerator"
                    let _1630 := var_numerator_31783
                    let expr_31824 := _1630
                    /// @src 78:1916:1928  "FixedPoint96"
                    let expr_31825_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:1916:1932  "FixedPoint96.Q96"
                    let expr_31826 := constant_Q96_29696()
                    /// @src 78:1934:1944  "sqrtRatioA"
                    let _1631 := var_sqrtRatioA_31731
                    let expr_31827 := _1631
                    /// @src 78:1889:1945  "FullMath.mulDiv(numerator, FixedPoint96.Q96, sqrtRatioA)"
                    let _1632 := convert_t_uint160_to_t_uint256(expr_31827)
                    let expr_31828 := fun_mulDiv_32512(expr_31824, expr_31826, _1632)
                    /// @src 78:1876:1945  "uint256 r0 = FullMath.mulDiv(numerator, FixedPoint96.Q96, sqrtRatioA)"
                    let var_r0_31821 := expr_31828
                    /// @src 78:1972:1980  "FullMath"
                    let expr_31832_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:1998:2007  "numerator"
                    let _1633 := var_numerator_31783
                    let expr_31834 := _1633
                    /// @src 78:2009:2021  "FixedPoint96"
                    let expr_31835_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:2009:2025  "FixedPoint96.Q96"
                    let expr_31836 := constant_Q96_29696()
                    /// @src 78:2027:2037  "sqrtRatioB"
                    let _1634 := var_sqrtRatioB_31733
                    let expr_31837 := _1634
                    /// @src 78:1972:2038  "FullMath.mulDivRoundingUp(numerator, FixedPoint96.Q96, sqrtRatioB)"
                    let _1635 := convert_t_uint160_to_t_uint256(expr_31837)
                    let expr_31838 := fun_mulDivRoundingUp_32556(expr_31834, expr_31836, _1635)
                    /// @src 78:1959:2038  "uint256 r1 = FullMath.mulDivRoundingUp(numerator, FixedPoint96.Q96, sqrtRatioB)"
                    let var_r1_31831 := expr_31838
                    /// @src 78:2057:2065  "SafeCast"
                    let expr_31841_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                    /// @src 78:2075:2077  "r0"
                    let _1636 := var_r0_31821
                    let expr_31843 := _1636
                    /// @src 78:2057:2078  "SafeCast.toInt256(r0)"
                    let expr_31844 := fun_toInt256_28969(expr_31843)
                    /// @src 78:2081:2089  "SafeCast"
                    let expr_31845_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                    /// @src 78:2099:2101  "r1"
                    let _1637 := var_r1_31831
                    let expr_31847 := _1637
                    /// @src 78:2081:2102  "SafeCast.toInt256(r1)"
                    let expr_31848 := fun_toInt256_28969(expr_31847)
                    /// @src 78:2057:2102  "SafeCast.toInt256(r0) - SafeCast.toInt256(r1)"
                    let expr_31849 := checked_sub_t_int256(expr_31844, expr_31848)

                    /// @src 78:2053:2102  "r = SafeCast.toInt256(r0) - SafeCast.toInt256(r1)"
                    var_r_31772 := expr_31849
                    let expr_31850 := expr_31849
                    /// @src 78:1589:2113  "if (_isRoundUp) {..."
                }
                default {
                    /// @src 78:1632:1640  "FullMath"
                    let expr_31789_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:1658:1667  "numerator"
                    let _1638 := var_numerator_31783
                    let expr_31791 := _1638
                    /// @src 78:1669:1681  "FixedPoint96"
                    let expr_31792_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:1669:1685  "FixedPoint96.Q96"
                    let expr_31793 := constant_Q96_29696()
                    /// @src 78:1687:1697  "sqrtRatioA"
                    let _1639 := var_sqrtRatioA_31731
                    let expr_31794 := _1639
                    /// @src 78:1632:1698  "FullMath.mulDivRoundingUp(numerator, FixedPoint96.Q96, sqrtRatioA)"
                    let _1640 := convert_t_uint160_to_t_uint256(expr_31794)
                    let expr_31795 := fun_mulDivRoundingUp_32556(expr_31791, expr_31793, _1640)
                    /// @src 78:1619:1698  "uint256 r0 = FullMath.mulDivRoundingUp(numerator, FixedPoint96.Q96, sqrtRatioA)"
                    let var_r0_31788 := expr_31795
                    /// @src 78:1725:1733  "FullMath"
                    let expr_31799_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:1741:1750  "numerator"
                    let _1641 := var_numerator_31783
                    let expr_31801 := _1641
                    /// @src 78:1752:1764  "FixedPoint96"
                    let expr_31802_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:1752:1768  "FixedPoint96.Q96"
                    let expr_31803 := constant_Q96_29696()
                    /// @src 78:1770:1780  "sqrtRatioB"
                    let _1642 := var_sqrtRatioB_31733
                    let expr_31804 := _1642
                    /// @src 78:1725:1781  "FullMath.mulDiv(numerator, FixedPoint96.Q96, sqrtRatioB)"
                    let _1643 := convert_t_uint160_to_t_uint256(expr_31804)
                    let expr_31805 := fun_mulDiv_32512(expr_31801, expr_31803, _1643)
                    /// @src 78:1712:1781  "uint256 r1 = FullMath.mulDiv(numerator, FixedPoint96.Q96, sqrtRatioB)"
                    let var_r1_31798 := expr_31805
                    /// @src 78:1800:1808  "SafeCast"
                    let expr_31808_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                    /// @src 78:1818:1820  "r0"
                    let _1644 := var_r0_31788
                    let expr_31810 := _1644
                    /// @src 78:1800:1821  "SafeCast.toInt256(r0)"
                    let expr_31811 := fun_toInt256_28969(expr_31810)
                    /// @src 78:1824:1832  "SafeCast"
                    let expr_31812_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                    /// @src 78:1842:1844  "r1"
                    let _1645 := var_r1_31798
                    let expr_31814 := _1645
                    /// @src 78:1824:1845  "SafeCast.toInt256(r1)"
                    let expr_31815 := fun_toInt256_28969(expr_31814)
                    /// @src 78:1800:1845  "SafeCast.toInt256(r0) - SafeCast.toInt256(r1)"
                    let expr_31816 := checked_sub_t_int256(expr_31811, expr_31815)

                    /// @src 78:1796:1845  "r = SafeCast.toInt256(r0) - SafeCast.toInt256(r1)"
                    var_r_31772 := expr_31816
                    let expr_31817 := expr_31816
                    /// @src 78:1589:2113  "if (_isRoundUp) {..."
                }
                /// @src 78:2127:2133  "swaped"
                let _1646 := var_swaped_31754
                let expr_31854 := _1646
                /// @src 78:2123:2208  "if (swaped) {..."
                switch expr_31854
                case 0 {
                    /// @src 78:2196:2197  "r"
                    let _1647 := var_r_31772
                    let expr_31859 := _1647
                    /// @src 78:2189:2197  "return r"
                    var__31740 := expr_31859
                    leave
                    /// @src 78:2123:2208  "if (swaped) {..."
                }
                default {
                    /// @src 78:2157:2158  "r"
                    let _1648 := var_r_31772
                    let expr_31855 := _1648
                    /// @src 78:2156:2158  "-r"
                    let expr_31856 := negate_t_int256(expr_31855)
                    /// @src 78:2149:2158  "return -r"
                    var__31740 := expr_31856
                    leave
                    /// @src 78:2123:2208  "if (swaped) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 31995
            /// @src 78:2220:3382  "function calculateAmount1ForLiquidity(..."
            function fun_calculateAmount1ForLiquidity_31995(var_sqrtRatioA_31866, var_sqrtRatioB_31868, var_liquidityAmount_31870, var_isRoundUp_31872) -> var__31875 {
                /// @src 78:2400:2406  "int256"
                let zero_t_int256_1649 := zero_value_for_split_t_int256()
                var__31875 := zero_t_int256_1649

                /// @src 78:2422:2437  "liquidityAmount"
                let _1650 := var_liquidityAmount_31870
                let expr_31877 := _1650
                /// @src 78:2441:2442  "0"
                let expr_31878 := 0x00
                /// @src 78:2422:2442  "liquidityAmount == 0"
                let expr_31879 := eq(cleanup_t_uint256(expr_31877), convert_t_rational_0_by_1_to_t_uint256(expr_31878))
                /// @src 78:2422:2470  "liquidityAmount == 0 || sqrtRatioA == sqrtRatioB"
                let expr_31883 := expr_31879
                if iszero(expr_31883) {
                    /// @src 78:2446:2456  "sqrtRatioA"
                    let _1651 := var_sqrtRatioA_31866
                    let expr_31880 := _1651
                    /// @src 78:2460:2470  "sqrtRatioB"
                    let _1652 := var_sqrtRatioB_31868
                    let expr_31881 := _1652
                    /// @src 78:2446:2470  "sqrtRatioA == sqrtRatioB"
                    let expr_31882 := eq(cleanup_t_uint160(expr_31880), cleanup_t_uint160(expr_31881))
                    /// @src 78:2422:2470  "liquidityAmount == 0 || sqrtRatioA == sqrtRatioB"
                    expr_31883 := expr_31882
                }
                /// @src 78:2418:2505  "if (liquidityAmount == 0 || sqrtRatioA == sqrtRatioB) {..."
                if expr_31883 {
                    /// @src 78:2493:2494  "0"
                    let expr_31884 := 0x00
                    /// @src 78:2486:2494  "return 0"
                    var__31875 := convert_t_rational_0_by_1_to_t_int256(expr_31884)
                    leave
                    /// @src 78:2418:2505  "if (liquidityAmount == 0 || sqrtRatioA == sqrtRatioB) {..."
                }
                /// @src 78:2529:2539  "sqrtRatioA"
                let _1653 := var_sqrtRatioA_31866
                let expr_31890 := _1653
                /// @src 78:2542:2552  "sqrtRatioB"
                let _1654 := var_sqrtRatioB_31868
                let expr_31891 := _1654
                /// @src 78:2529:2552  "sqrtRatioA < sqrtRatioB"
                let expr_31892 := lt(cleanup_t_uint160(expr_31890), cleanup_t_uint160(expr_31891))
                /// @src 78:2515:2552  "bool swaped = sqrtRatioA < sqrtRatioB"
                let var_swaped_31889 := expr_31892
                /// @src 78:2567:2577  "sqrtRatioA"
                let _1655 := var_sqrtRatioA_31866
                let expr_31894 := _1655
                /// @src 78:2580:2590  "sqrtRatioB"
                let _1656 := var_sqrtRatioB_31868
                let expr_31895 := _1656
                /// @src 78:2567:2590  "sqrtRatioA < sqrtRatioB"
                let expr_31896 := lt(cleanup_t_uint160(expr_31894), cleanup_t_uint160(expr_31895))
                /// @src 78:2563:2643  "if (sqrtRatioA < sqrtRatioB) (sqrtRatioA, sqrtRatioB) = (sqrtRatioB, sqrtRatioA)"
                if expr_31896 {
                    /// @src 78:2620:2630  "sqrtRatioB"
                    let _1657 := var_sqrtRatioB_31868
                    let expr_31900 := _1657
                    /// @src 78:2619:2643  "(sqrtRatioB, sqrtRatioA)"
                    let expr_31902_component_1 := expr_31900
                    /// @src 78:2632:2642  "sqrtRatioA"
                    let _1658 := var_sqrtRatioA_31866
                    let expr_31901 := _1658
                    /// @src 78:2619:2643  "(sqrtRatioB, sqrtRatioA)"
                    let expr_31902_component_2 := expr_31901
                    /// @src 78:2592:2643  "(sqrtRatioA, sqrtRatioB) = (sqrtRatioB, sqrtRatioA)"
                    var_sqrtRatioB_31868 := expr_31902_component_2
                    var_sqrtRatioA_31866 := expr_31902_component_1
                    /// @src 78:2563:2643  "if (sqrtRatioA < sqrtRatioB) (sqrtRatioA, sqrtRatioB) = (sqrtRatioB, sqrtRatioA)"
                }
                /// @src 78:2654:2662  "int256 r"
                let var_r_31907
                let zero_t_int256_1659 := zero_value_for_split_t_int256()
                var_r_31907 := zero_t_int256_1659
                /// @src 78:2691:2697  "swaped"
                let _1660 := var_swaped_31889
                let expr_31911 := _1660
                /// @src 78:2691:2722  "swaped ? !isRoundUp : isRoundUp"
                let expr_31915
                switch expr_31911
                case 0 {
                    /// @src 78:2713:2722  "isRoundUp"
                    let _1661 := var_isRoundUp_31872
                    let expr_31914 := _1661
                    /// @src 78:2691:2722  "swaped ? !isRoundUp : isRoundUp"
                    expr_31915 := expr_31914
                }
                default {
                    /// @src 78:2701:2710  "isRoundUp"
                    let _1662 := var_isRoundUp_31872
                    let expr_31912 := _1662
                    /// @src 78:2700:2710  "!isRoundUp"
                    let expr_31913 := cleanup_t_bool(iszero(expr_31912))
                    /// @src 78:2691:2722  "swaped ? !isRoundUp : isRoundUp"
                    expr_31915 := expr_31913
                }
                /// @src 78:2673:2722  "bool _isRoundUp = swaped ? !isRoundUp : isRoundUp"
                let var__isRoundUp_31910 := expr_31915
                /// @src 78:2737:2747  "_isRoundUp"
                let _1663 := var__isRoundUp_31910
                let expr_31917 := _1663
                /// @src 78:2733:3281  "if (_isRoundUp) {..."
                switch expr_31917
                case 0 {
                    /// @src 78:3045:3053  "FullMath"
                    let expr_31953_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:3061:3076  "liquidityAmount"
                    let _1664 := var_liquidityAmount_31870
                    let expr_31955 := _1664
                    /// @src 78:3078:3088  "sqrtRatioA"
                    let _1665 := var_sqrtRatioA_31866
                    let expr_31956 := _1665
                    /// @src 78:3090:3102  "FixedPoint96"
                    let expr_31957_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:3090:3106  "FixedPoint96.Q96"
                    let expr_31958 := constant_Q96_29696()
                    /// @src 78:3045:3107  "FullMath.mulDiv(liquidityAmount, sqrtRatioA, FixedPoint96.Q96)"
                    let _1666 := convert_t_uint160_to_t_uint256(expr_31956)
                    let expr_31959 := fun_mulDiv_32512(expr_31955, _1666, expr_31958)
                    /// @src 78:3032:3107  "uint256 r0 = FullMath.mulDiv(liquidityAmount, sqrtRatioA, FixedPoint96.Q96)"
                    let var_r0_31952 := expr_31959
                    /// @src 78:3134:3142  "FullMath"
                    let expr_31963_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:3160:3175  "liquidityAmount"
                    let _1667 := var_liquidityAmount_31870
                    let expr_31965 := _1667
                    /// @src 78:3177:3187  "sqrtRatioB"
                    let _1668 := var_sqrtRatioB_31868
                    let expr_31966 := _1668
                    /// @src 78:3189:3201  "FixedPoint96"
                    let expr_31967_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:3189:3205  "FixedPoint96.Q96"
                    let expr_31968 := constant_Q96_29696()
                    /// @src 78:3134:3206  "FullMath.mulDivRoundingUp(liquidityAmount, sqrtRatioB, FixedPoint96.Q96)"
                    let _1669 := convert_t_uint160_to_t_uint256(expr_31966)
                    let expr_31969 := fun_mulDivRoundingUp_32556(expr_31965, _1669, expr_31968)
                    /// @src 78:3121:3206  "uint256 r1 = FullMath.mulDivRoundingUp(liquidityAmount, sqrtRatioB, FixedPoint96.Q96)"
                    let var_r1_31962 := expr_31969
                    /// @src 78:3225:3233  "SafeCast"
                    let expr_31972_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                    /// @src 78:3243:3245  "r0"
                    let _1670 := var_r0_31952
                    let expr_31974 := _1670
                    /// @src 78:3225:3246  "SafeCast.toInt256(r0)"
                    let expr_31975 := fun_toInt256_28969(expr_31974)
                    /// @src 78:3249:3257  "SafeCast"
                    let expr_31976_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                    /// @src 78:3267:3269  "r1"
                    let _1671 := var_r1_31962
                    let expr_31978 := _1671
                    /// @src 78:3249:3270  "SafeCast.toInt256(r1)"
                    let expr_31979 := fun_toInt256_28969(expr_31978)
                    /// @src 78:3225:3270  "SafeCast.toInt256(r0) - SafeCast.toInt256(r1)"
                    let expr_31980 := checked_sub_t_int256(expr_31975, expr_31979)

                    /// @src 78:3221:3270  "r = SafeCast.toInt256(r0) - SafeCast.toInt256(r1)"
                    var_r_31907 := expr_31980
                    let expr_31981 := expr_31980
                    /// @src 78:2733:3281  "if (_isRoundUp) {..."
                }
                default {
                    /// @src 78:2776:2784  "FullMath"
                    let expr_31920_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:2802:2817  "liquidityAmount"
                    let _1672 := var_liquidityAmount_31870
                    let expr_31922 := _1672
                    /// @src 78:2819:2829  "sqrtRatioA"
                    let _1673 := var_sqrtRatioA_31866
                    let expr_31923 := _1673
                    /// @src 78:2831:2843  "FixedPoint96"
                    let expr_31924_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:2831:2847  "FixedPoint96.Q96"
                    let expr_31925 := constant_Q96_29696()
                    /// @src 78:2776:2848  "FullMath.mulDivRoundingUp(liquidityAmount, sqrtRatioA, FixedPoint96.Q96)"
                    let _1674 := convert_t_uint160_to_t_uint256(expr_31923)
                    let expr_31926 := fun_mulDivRoundingUp_32556(expr_31922, _1674, expr_31925)
                    /// @src 78:2763:2848  "uint256 r0 = FullMath.mulDivRoundingUp(liquidityAmount, sqrtRatioA, FixedPoint96.Q96)"
                    let var_r0_31919 := expr_31926
                    /// @src 78:2875:2883  "FullMath"
                    let expr_31930_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:2891:2906  "liquidityAmount"
                    let _1675 := var_liquidityAmount_31870
                    let expr_31932 := _1675
                    /// @src 78:2908:2918  "sqrtRatioB"
                    let _1676 := var_sqrtRatioB_31868
                    let expr_31933 := _1676
                    /// @src 78:2920:2932  "FixedPoint96"
                    let expr_31934_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:2920:2936  "FixedPoint96.Q96"
                    let expr_31935 := constant_Q96_29696()
                    /// @src 78:2875:2937  "FullMath.mulDiv(liquidityAmount, sqrtRatioB, FixedPoint96.Q96)"
                    let _1677 := convert_t_uint160_to_t_uint256(expr_31933)
                    let expr_31936 := fun_mulDiv_32512(expr_31932, _1677, expr_31935)
                    /// @src 78:2862:2937  "uint256 r1 = FullMath.mulDiv(liquidityAmount, sqrtRatioB, FixedPoint96.Q96)"
                    let var_r1_31929 := expr_31936
                    /// @src 78:2956:2964  "SafeCast"
                    let expr_31939_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                    /// @src 78:2974:2976  "r0"
                    let _1678 := var_r0_31919
                    let expr_31941 := _1678
                    /// @src 78:2956:2977  "SafeCast.toInt256(r0)"
                    let expr_31942 := fun_toInt256_28969(expr_31941)
                    /// @src 78:2980:2988  "SafeCast"
                    let expr_31943_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                    /// @src 78:2998:3000  "r1"
                    let _1679 := var_r1_31929
                    let expr_31945 := _1679
                    /// @src 78:2980:3001  "SafeCast.toInt256(r1)"
                    let expr_31946 := fun_toInt256_28969(expr_31945)
                    /// @src 78:2956:3001  "SafeCast.toInt256(r0) - SafeCast.toInt256(r1)"
                    let expr_31947 := checked_sub_t_int256(expr_31942, expr_31946)

                    /// @src 78:2952:3001  "r = SafeCast.toInt256(r0) - SafeCast.toInt256(r1)"
                    var_r_31907 := expr_31947
                    let expr_31948 := expr_31947
                    /// @src 78:2733:3281  "if (_isRoundUp) {..."
                }
                /// @src 78:3295:3301  "swaped"
                let _1680 := var_swaped_31889
                let expr_31985 := _1680
                /// @src 78:3291:3376  "if (swaped) {..."
                switch expr_31985
                case 0 {
                    /// @src 78:3364:3365  "r"
                    let _1681 := var_r_31907
                    let expr_31990 := _1681
                    /// @src 78:3357:3365  "return r"
                    var__31875 := expr_31990
                    leave
                    /// @src 78:3291:3376  "if (swaped) {..."
                }
                default {
                    /// @src 78:3325:3326  "r"
                    let _1682 := var_r_31907
                    let expr_31986 := _1682
                    /// @src 78:3324:3326  "-r"
                    let expr_31987 := negate_t_int256(expr_31986)
                    /// @src 78:3317:3326  "return -r"
                    var__31875 := expr_31987
                    leave
                    /// @src 78:3291:3376  "if (swaped) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            function cleanup_t_rational_3_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_3_by_1(value)))
            }

            /// @ast-id 32512
            /// @src 26:741:4868  "function mulDiv(..."
            function fun_mulDiv_32512(var_a_32386, var_b_32388, var_denominator_32390) -> var_result_32393 {
                /// @src 26:853:867  "uint256 result"
                let zero_t_uint256_1683 := zero_value_for_split_t_uint256()
                var_result_32393 := zero_t_uint256_1683

                /// @src 26:1226:1239  "uint256 prod0"
                let var_prod0_32396
                let zero_t_uint256_1684 := zero_value_for_split_t_uint256()
                var_prod0_32396 := zero_t_uint256_1684
                /// @src 26:1298:1311  "uint256 prod1"
                let var_prod1_32399
                let zero_t_uint256_1685 := zero_value_for_split_t_uint256()
                var_prod1_32399 := zero_t_uint256_1685
                /// @src 26:1369:1535  "assembly {..."
                {
                    let usr$mm := mulmod(var_a_32386, var_b_32388, not(0))
                    var_prod0_32396 := mul(var_a_32386, var_b_32388)
                    var_prod1_32399 := sub(sub(usr$mm, var_prod0_32396), lt(usr$mm, var_prod0_32396))
                }
                /// @src 26:1615:1620  "prod1"
                let _1686 := var_prod1_32399
                let expr_32402 := _1686
                /// @src 26:1624:1625  "0"
                let expr_32403 := 0x00
                /// @src 26:1615:1625  "prod1 == 0"
                let expr_32404 := eq(cleanup_t_uint256(expr_32402), convert_t_rational_0_by_1_to_t_uint256(expr_32403))
                /// @src 26:1611:1814  "if (prod1 == 0) {..."
                if expr_32404 {
                    /// @src 26:1653:1664  "denominator"
                    let _1687 := var_denominator_32390
                    let expr_32406 := _1687
                    /// @src 26:1667:1668  "0"
                    let expr_32407 := 0x00
                    /// @src 26:1653:1668  "denominator > 0"
                    let expr_32408 := gt(cleanup_t_uint256(expr_32406), convert_t_rational_0_by_1_to_t_uint256(expr_32407))
                    /// @src 26:1645:1669  "require(denominator > 0)"
                    require_helper(expr_32408)
                    /// @src 26:1687:1769  "assembly {..."
                    {
                        var_result_32393 := div(var_prod0_32396, var_denominator_32390)
                    }
                    /// @src 26:1793:1799  "result"
                    let _1688 := var_result_32393
                    let expr_32412 := _1688
                    /// @src 26:1786:1799  "return result"
                    var_result_32393 := expr_32412
                    leave
                    /// @src 26:1611:1814  "if (prod1 == 0) {..."
                }
                /// @src 26:1939:1950  "denominator"
                let _1689 := var_denominator_32390
                let expr_32417 := _1689
                /// @src 26:1953:1958  "prod1"
                let _1690 := var_prod1_32399
                let expr_32418 := _1690
                /// @src 26:1939:1958  "denominator > prod1"
                let expr_32419 := gt(cleanup_t_uint256(expr_32417), cleanup_t_uint256(expr_32418))
                /// @src 26:1931:1959  "require(denominator > prod1)"
                require_helper(expr_32419)
                /// @src 26:2260:2277  "uint256 remainder"
                let var_remainder_32423
                let zero_t_uint256_1691 := zero_value_for_split_t_uint256()
                var_remainder_32423 := zero_t_uint256_1691
                /// @src 26:2291:2370  "assembly {..."
                {
                    var_remainder_32423 := mulmod(var_a_32386, var_b_32388, var_denominator_32390)
                }
                /// @src 26:2442:2571  "assembly {..."
                {
                    var_prod1_32399 := sub(var_prod1_32399, gt(var_remainder_32423, var_prod0_32396))
                    var_prod0_32396 := sub(var_prod0_32396, var_remainder_32423)
                }
                /// @src 26:2752:2753  "0"
                let expr_32429 := 0x00
                /// @src 26:2756:2767  "denominator"
                let _1692 := var_denominator_32390
                let expr_32430 := _1692
                /// @src 26:2752:2767  "0 - denominator"
                let expr_32431 := wrapping_sub_t_uint256(convert_t_rational_0_by_1_to_t_uint256(expr_32429), expr_32430)

                /// @src 26:2751:2768  "(0 - denominator)"
                let expr_32432 := expr_32431
                /// @src 26:2771:2782  "denominator"
                let _1693 := var_denominator_32390
                let expr_32433 := _1693
                /// @src 26:2751:2782  "(0 - denominator) & denominator"
                let expr_32434 := and(expr_32432, expr_32433)

                /// @src 26:2736:2782  "uint256 twos = (0 - denominator) & denominator"
                let var_twos_32428 := expr_32434
                /// @src 26:2846:2924  "assembly {..."
                {
                    var_denominator_32390 := div(var_denominator_32390, var_twos_32428)
                }
                /// @src 26:2996:3062  "assembly {..."
                {
                    var_prod0_32396 := div(var_prod0_32396, var_twos_32428)
                }
                /// @src 26:3257:3337  "assembly {..."
                {
                    var_twos_32428 := add(div(sub(0, var_twos_32428), var_twos_32428), 1)
                }
                /// @src 26:3359:3364  "prod1"
                let _1694 := var_prod1_32399
                let expr_32440 := _1694
                /// @src 26:3367:3371  "twos"
                let _1695 := var_twos_32428
                let expr_32441 := _1695
                /// @src 26:3359:3371  "prod1 * twos"
                let expr_32442 := wrapping_mul_t_uint256(expr_32440, expr_32441)

                /// @src 26:3350:3371  "prod0 |= prod1 * twos"
                let _1696 := var_prod0_32396
                let expr_32443 := or(_1696, expr_32442)

                var_prod0_32396 := expr_32443
                /// @src 26:3744:3745  "3"
                let expr_32447 := 0x03
                /// @src 26:3748:3759  "denominator"
                let _1697 := var_denominator_32390
                let expr_32448 := _1697
                /// @src 26:3744:3759  "3 * denominator"
                let expr_32449 := wrapping_mul_t_uint256(convert_t_rational_3_by_1_to_t_uint256(expr_32447), expr_32448)

                /// @src 26:3743:3760  "(3 * denominator)"
                let expr_32450 := expr_32449
                /// @src 26:3763:3764  "2"
                let expr_32451 := 0x02
                /// @src 26:3743:3764  "(3 * denominator) ^ 2"
                let expr_32452 := xor(expr_32450, convert_t_rational_2_by_1_to_t_uint256(expr_32451))

                /// @src 26:3729:3764  "uint256 inv = (3 * denominator) ^ 2"
                let var_inv_32446 := expr_32452
                /// @src 26:4002:4003  "2"
                let expr_32455 := 0x02
                /// @src 26:4006:4017  "denominator"
                let _1698 := var_denominator_32390
                let expr_32456 := _1698
                /// @src 26:4020:4023  "inv"
                let _1699 := var_inv_32446
                let expr_32457 := _1699
                /// @src 26:4006:4023  "denominator * inv"
                let expr_32458 := wrapping_mul_t_uint256(expr_32456, expr_32457)

                /// @src 26:4002:4023  "2 - denominator * inv"
                let expr_32459 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32455), expr_32458)

                /// @src 26:3995:4023  "inv *= 2 - denominator * inv"
                let _1700 := var_inv_32446
                let expr_32460 := wrapping_mul_t_uint256(_1700, expr_32459)

                var_inv_32446 := expr_32460
                /// @src 26:4064:4065  "2"
                let expr_32463 := 0x02
                /// @src 26:4068:4079  "denominator"
                let _1701 := var_denominator_32390
                let expr_32464 := _1701
                /// @src 26:4082:4085  "inv"
                let _1702 := var_inv_32446
                let expr_32465 := _1702
                /// @src 26:4068:4085  "denominator * inv"
                let expr_32466 := wrapping_mul_t_uint256(expr_32464, expr_32465)

                /// @src 26:4064:4085  "2 - denominator * inv"
                let expr_32467 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32463), expr_32466)

                /// @src 26:4057:4085  "inv *= 2 - denominator * inv"
                let _1703 := var_inv_32446
                let expr_32468 := wrapping_mul_t_uint256(_1703, expr_32467)

                var_inv_32446 := expr_32468
                /// @src 26:4127:4128  "2"
                let expr_32471 := 0x02
                /// @src 26:4131:4142  "denominator"
                let _1704 := var_denominator_32390
                let expr_32472 := _1704
                /// @src 26:4145:4148  "inv"
                let _1705 := var_inv_32446
                let expr_32473 := _1705
                /// @src 26:4131:4148  "denominator * inv"
                let expr_32474 := wrapping_mul_t_uint256(expr_32472, expr_32473)

                /// @src 26:4127:4148  "2 - denominator * inv"
                let expr_32475 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32471), expr_32474)

                /// @src 26:4120:4148  "inv *= 2 - denominator * inv"
                let _1706 := var_inv_32446
                let expr_32476 := wrapping_mul_t_uint256(_1706, expr_32475)

                var_inv_32446 := expr_32476
                /// @src 26:4190:4191  "2"
                let expr_32479 := 0x02
                /// @src 26:4194:4205  "denominator"
                let _1707 := var_denominator_32390
                let expr_32480 := _1707
                /// @src 26:4208:4211  "inv"
                let _1708 := var_inv_32446
                let expr_32481 := _1708
                /// @src 26:4194:4211  "denominator * inv"
                let expr_32482 := wrapping_mul_t_uint256(expr_32480, expr_32481)

                /// @src 26:4190:4211  "2 - denominator * inv"
                let expr_32483 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32479), expr_32482)

                /// @src 26:4183:4211  "inv *= 2 - denominator * inv"
                let _1709 := var_inv_32446
                let expr_32484 := wrapping_mul_t_uint256(_1709, expr_32483)

                var_inv_32446 := expr_32484
                /// @src 26:4253:4254  "2"
                let expr_32487 := 0x02
                /// @src 26:4257:4268  "denominator"
                let _1710 := var_denominator_32390
                let expr_32488 := _1710
                /// @src 26:4271:4274  "inv"
                let _1711 := var_inv_32446
                let expr_32489 := _1711
                /// @src 26:4257:4274  "denominator * inv"
                let expr_32490 := wrapping_mul_t_uint256(expr_32488, expr_32489)

                /// @src 26:4253:4274  "2 - denominator * inv"
                let expr_32491 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32487), expr_32490)

                /// @src 26:4246:4274  "inv *= 2 - denominator * inv"
                let _1712 := var_inv_32446
                let expr_32492 := wrapping_mul_t_uint256(_1712, expr_32491)

                var_inv_32446 := expr_32492
                /// @src 26:4317:4318  "2"
                let expr_32495 := 0x02
                /// @src 26:4321:4332  "denominator"
                let _1713 := var_denominator_32390
                let expr_32496 := _1713
                /// @src 26:4335:4338  "inv"
                let _1714 := var_inv_32446
                let expr_32497 := _1714
                /// @src 26:4321:4338  "denominator * inv"
                let expr_32498 := wrapping_mul_t_uint256(expr_32496, expr_32497)

                /// @src 26:4317:4338  "2 - denominator * inv"
                let expr_32499 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32495), expr_32498)

                /// @src 26:4310:4338  "inv *= 2 - denominator * inv"
                let _1715 := var_inv_32446
                let expr_32500 := wrapping_mul_t_uint256(_1715, expr_32499)

                var_inv_32446 := expr_32500
                /// @src 26:4813:4818  "prod0"
                let _1716 := var_prod0_32396
                let expr_32503 := _1716
                /// @src 26:4821:4824  "inv"
                let _1717 := var_inv_32446
                let expr_32504 := _1717
                /// @src 26:4813:4824  "prod0 * inv"
                let expr_32505 := wrapping_mul_t_uint256(expr_32503, expr_32504)

                /// @src 26:4804:4824  "result = prod0 * inv"
                var_result_32393 := expr_32505
                let expr_32506 := expr_32505
                /// @src 26:4845:4851  "result"
                let _1718 := var_result_32393
                let expr_32508 := _1718
                /// @src 26:4838:4851  "return result"
                var_result_32393 := expr_32508
                leave

            }
            /// @src 68:814:5932  "library Trade {..."

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            /// @ast-id 32556
            /// @src 26:5150:5515  "function mulDivRoundingUp(..."
            function fun_mulDivRoundingUp_32556(var_a_32515, var_b_32517, var_denominator_32519) -> var_result_32522 {
                /// @src 26:5272:5286  "uint256 result"
                let zero_t_uint256_1719 := zero_value_for_split_t_uint256()
                var_result_32522 := zero_t_uint256_1719

                /// @src 26:5338:5339  "a"
                let _1720 := var_a_32515
                let expr_32526 := _1720
                /// @src 26:5341:5342  "b"
                let _1721 := var_b_32517
                let expr_32527 := _1721
                /// @src 26:5344:5355  "denominator"
                let _1722 := var_denominator_32519
                let expr_32528 := _1722
                /// @src 26:5331:5356  "mulDiv(a, b, denominator)"
                let expr_32529 := fun_mulDiv_32512(expr_32526, expr_32527, expr_32528)
                /// @src 26:5322:5356  "result = mulDiv(a, b, denominator)"
                var_result_32522 := expr_32529
                let expr_32530 := expr_32529
                /// @src 26:5381:5382  "a"
                let _1723 := var_a_32515
                let expr_32533 := _1723
                /// @src 26:5384:5385  "b"
                let _1724 := var_b_32517
                let expr_32534 := _1724
                /// @src 26:5387:5398  "denominator"
                let _1725 := var_denominator_32519
                let expr_32535 := _1725
                /// @src 26:5374:5399  "mulmod(a, b, denominator)"
                let _1726 := expr_32535
                if iszero(_1726) { panic_error_0x12() }
                let expr_32536 := mulmod(expr_32533, expr_32534, _1726)
                /// @src 26:5402:5403  "0"
                let expr_32537 := 0x00
                /// @src 26:5374:5403  "mulmod(a, b, denominator) > 0"
                let expr_32538 := gt(cleanup_t_uint256(expr_32536), convert_t_rational_0_by_1_to_t_uint256(expr_32537))
                /// @src 26:5370:5499  "if (mulmod(a, b, denominator) > 0) {..."
                if expr_32538 {
                    /// @src 26:5431:5437  "result"
                    let _1727 := var_result_32522
                    let expr_32540 := _1727
                    /// @src 26:5440:5457  "type(uint256).max"
                    let expr_32545 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 26:5431:5457  "result < type(uint256).max"
                    let expr_32546 := lt(cleanup_t_uint256(expr_32540), cleanup_t_uint256(expr_32545))
                    /// @src 26:5423:5458  "require(result < type(uint256).max)"
                    require_helper(expr_32546)
                    /// @src 26:5476:5484  "result++"
                    let _1729 := var_result_32522
                    let _1728 := increment_wrapping_t_uint256(_1729)
                    var_result_32522 := _1728
                    let expr_32550 := _1729
                    /// @src 26:5370:5499  "if (mulmod(a, b, denominator) > 0) {..."
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 36976
            /// @src 12:1564:2090  "function mulDivDown(..."
            function fun_mulDivDown_36976(var_x_36965, var_y_36967, var_denominator_36969) -> var_z_36972 {
                /// @src 12:1680:1689  "uint256 z"
                let zero_t_uint256_1730 := zero_value_for_split_t_uint256()
                var_z_36972 := zero_t_uint256_1730

                /// @src 12:1744:2084  "assembly {..."
                {
                    if iszero(mul(var_denominator_36969, iszero(mul(var_y_36967, gt(var_x_36965, div(115792089237316195423570985008687907853269984665640564039457584007913129639935, var_y_36967)))))) { revert(0, 0) }
                    var_z_36972 := div(mul(var_x_36965, var_y_36967), var_denominator_36969)
                }

            }
            /// @src 68:814:5932  "library Trade {..."

            /// @ast-id 36989
            /// @src 12:2096:2768  "function mulDivUp(..."
            function fun_mulDivUp_36989(var_x_36978, var_y_36980, var_denominator_36982) -> var_z_36985 {
                /// @src 12:2210:2219  "uint256 z"
                let zero_t_uint256_1731 := zero_value_for_split_t_uint256()
                var_z_36985 := zero_t_uint256_1731

                /// @src 12:2274:2762  "assembly {..."
                {
                    if iszero(mul(var_denominator_36982, iszero(mul(var_y_36980, gt(var_x_36978, div(115792089237316195423570985008687907853269984665640564039457584007913129639935, var_y_36980)))))) { revert(0, 0) }
                    var_z_36985 := add(gt(mod(mul(var_x_36978, var_y_36980), var_denominator_36982), 0), div(mul(var_x_36978, var_y_36980), var_denominator_36982))
                }

            }
            /// @src 68:814:5932  "library Trade {..."

        }

        data ".metadata" hex"a26469706673582212201040e2ccd36b956111586f45f144132f345721a4e4bb1f3099f04c298d5e8edb64736f6c634300081e0033"
    }

}

