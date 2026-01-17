
/// @use-src 74:"src/libraries/logic/ReallocationLogic.sol"
object "ReallocationLogic_18704" {
    code {
        /// @src 74:553:3377  "library ReallocationLogic {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("ReallocationLogic_18704_deployed"), datasize("ReallocationLogic_18704_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("ReallocationLogic_18704_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 74:553:3377  "library ReallocationLogic {..."
        function constructor_ReallocationLogic_18704() {

            /// @src 74:553:3377  "library ReallocationLogic {..."

        }
        /// @src 74:553:3377  "library ReallocationLogic {..."

    }
    /// @use-src 10:"lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol", 12:"lib/solmate/src/utils/FixedPointMathLib.sol", 14:"lib/solmate/src/utils/SafeTransferLib.sol", 25:"lib/v3-core/contracts/libraries/FixedPoint96.sol", 26:"lib/v3-core/contracts/libraries/FullMath.sol", 27:"lib/v3-core/contracts/libraries/TickMath.sol", 28:"lib/v3-periphery/contracts/libraries/PositionKey.sol", 56:"src/libraries/ApplyInterestLib.sol", 57:"src/libraries/Constants.sol", 59:"src/libraries/InterestRateModel.sol", 60:"src/libraries/PairLib.sol", 61:"src/libraries/Perp.sol", 64:"src/libraries/PremiumCurveModel.sol", 65:"src/libraries/Reallocation.sol", 66:"src/libraries/ScaledAsset.sol", 69:"src/libraries/UniHelper.sol", 74:"src/libraries/logic/ReallocationLogic.sol", 78:"src/libraries/math/LPMath.sol", 79:"src/libraries/math/Math.sol", 81:"src/types/GlobalData.sol"
    object "ReallocationLogic_18704_deployed" {
        code {
            /// @src 74:553:3377  "library ReallocationLogic {..."
            mstore(64, memoryguard(128))

            let called_via_delegatecall := iszero(eq(loadimmutable("library_deploy_address"), address()))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x4d869ace
                {
                    // reallocate(GlobalDataLibrary.GlobalData storage,uint256,bytes)
                    if iszero(called_via_delegatecall) { revert_error_fb00381150b0555b0bf83aa2d95ae5599abd614bfe490c66e084fe1f454f48e2() }
                    external_fun_reallocate_18703()
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

            function abi_decode_tuple_t_struct$_GlobalData_$19302_storage_ptrt_uint256t_bytes_memory_ptr(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_GlobalData_$19302_storage_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 64))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
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

            function external_fun_reallocate_18703() {

                let param_0, param_1, param_2 :=  abi_decode_tuple_t_struct$_GlobalData_$19302_storage_ptrt_uint256t_bytes_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_reallocate_18703(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack_library(memPos , ret_0)
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

            function cleanup_from_storage_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_0_t_address(slot_value) -> value {
                value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_address(slot) -> value {
                value := extract_from_storage_value_offset_0_t_address(sload(slot))

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

            function shift_right_160_unsigned(value) -> newValue {
                newValue :=

                shr(160, value)

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

            function cleanup_from_storage_t_int256(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_offset_0_t_int256(slot_value) -> value {
                value := cleanup_from_storage_t_int256(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_int256(slot) -> value {
                value := extract_from_storage_value_offset_0_t_int256(sload(slot))

            }

            function cleanup_t_int256(value) -> cleaned {
                cleaned := value
            }

            function write_to_memory_t_int256(memPtr, value) {
                mstore(memPtr, cleanup_t_int256(value))
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

            function write_to_memory_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
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

            function convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(value) -> converted {
                converted := value
            }

            function zero_value_for_split_t_int256() -> ret {
                ret := 0
            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
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

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_contract$_ERC20_$13305(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_ERC20_$13305(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_ERC20_$13305(value)
            }

            function convert_t_int256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_int256(value)))
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_t_int24_to_t_int24_fromStack(value, pos) {
                mstore(pos, cleanup_t_int24(value))
            }

            function abi_encode_t_int256_to_t_int256_fromStack(value, pos) {
                mstore(pos, cleanup_t_int256(value))
            }

            function abi_encode_tuple_t_bool_t_int24_t_int24_t_int256_t_int256__to_t_bool_t_int24_t_int24_t_int256_t_int256__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int24_to_t_int24_fromStack(value1,  add(headStart, 32))

                abi_encode_t_int24_to_t_int24_fromStack(value2,  add(headStart, 64))

                abi_encode_t_int256_to_t_int256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_int256_to_t_int256_fromStack(value4,  add(headStart, 128))

            }

            function allocate_memory_struct_t_struct$_RebalanceFeeGrowthCache_$6121_storage_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_RebalanceFeeGrowthCache_$6121_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function panic_error_0x00() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x00)
                revert(0, 0x24)
            }

            function read_from_memoryt_int256(ptr) -> returnValue {

                let value := cleanup_t_int256(mload(ptr))

                returnValue :=

                value

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

            function copy_struct_to_storage_from_t_struct$_RebalanceFeeGrowthCache_$6121_memory_ptr_to_t_struct$_RebalanceFeeGrowthCache_$6121_storage(slot, value) {

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 0)

                    let memberValue_0 := read_from_memoryt_int256(memberSrcPtr)

                    update_storage_value_offset_0_t_int256_to_t_int256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 32)

                    let memberValue_0 := read_from_memoryt_int256(memberSrcPtr)

                    update_storage_value_offset_0_t_int256_to_t_int256(memberSlot, memberValue_0)

                }

            }

            function update_storage_value_offset_0_t_struct$_RebalanceFeeGrowthCache_$6121_memory_ptr_to_t_struct$_RebalanceFeeGrowthCache_$6121_storage(slot, value_0) {

                copy_struct_to_storage_from_t_struct$_RebalanceFeeGrowthCache_$6121_memory_ptr_to_t_struct$_RebalanceFeeGrowthCache_$6121_storage(slot, value_0)
            }

            /// @ast-id 18703
            /// @src 74:898:3375  "function reallocate(GlobalDataLibrary.GlobalData storage globalData, uint256 pairId, bytes memory settlementData)..."
            function fun_reallocate_18703(var_globalData_18520_slot, var_pairId_18522, var_settlementData_18524_mpos) -> var_isRangeChanged_18527 {
                /// @src 74:1046:1065  "bool isRangeChanged"
                let zero_t_bool_1 := zero_value_for_split_t_bool()
                var_isRangeChanged_18527 := zero_t_bool_1

                /// @src 74:1115:1125  "globalData"
                let _2_slot := var_globalData_18520_slot
                let expr_18529_slot := _2_slot
                /// @src 74:1115:1134  "globalData.validate"
                let expr_18531_self_slot := expr_18529_slot
                /// @src 74:1135:1141  "pairId"
                let _3 := var_pairId_18522
                let expr_18532 := _3
                fun_validate_19348(expr_18531_self_slot, expr_18532)
                /// @src 74:1206:1222  "ApplyInterestLib"
                let expr_18535_address := linkersymbol("src/libraries/ApplyInterestLib.sol:ApplyInterestLib")
                /// @src 74:1245:1255  "globalData"
                let _4_slot := var_globalData_18520_slot
                let expr_18538_slot := _4_slot
                /// @src 74:1245:1261  "globalData.pairs"
                let _5 := add(expr_18538_slot, 3)
                let _6_slot := _5
                let expr_18539_slot := _6_slot
                /// @src 74:1263:1269  "pairId"
                let _7 := var_pairId_18522
                let expr_18540 := _7
                fun_applyInterestForToken_33178(expr_18539_slot, expr_18540)
                /// @src 74:1322:1332  "globalData"
                let _8_slot := var_globalData_18520_slot
                let expr_18548_slot := _8_slot
                /// @src 74:1322:1338  "globalData.pairs"
                let _9 := add(expr_18548_slot, 3)
                let _10_slot := _9
                let expr_18549_slot := _10_slot
                /// @src 74:1339:1345  "pairId"
                let _11 := var_pairId_18522
                let expr_18550 := _11
                /// @src 74:1322:1346  "globalData.pairs[pairId]"
                let _12 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_18549_slot,expr_18550)
                let _13_slot := _12
                let expr_18551_slot := _13_slot
                /// @src 74:1281:1346  "DataType.PairStatus storage pairStatus = globalData.pairs[pairId]"
                let var_pairStatus_18547_slot := convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_storage_ptr(expr_18551_slot)
                /// @src 74:1448:1452  "Perp"
                let expr_18553_address := linkersymbol("src/libraries/Perp.sol:Perp")
                /// @src 74:1483:1493  "pairStatus"
                let _14_slot := var_pairStatus_18547_slot
                let expr_18556_slot := _14_slot
                /// @src 74:1495:1505  "pairStatus"
                let _15_slot := var_pairStatus_18547_slot
                let expr_18557_slot := _15_slot
                /// @src 74:1495:1521  "pairStatus.sqrtAssetStatus"
                let _16 := add(expr_18557_slot, 33)
                let _17_slot := _16
                let expr_18558_slot := _17_slot
                /// @src 74:1448:1522  "Perp.updateRebalanceInterestGrowth(pairStatus, pairStatus.sqrtAssetStatus)"
                let _18_mpos := convert_t_struct$_PairStatus_$6102_storage_ptr_to_t_struct$_PairStatus_$6102_memory_ptr(expr_18556_slot)
                let _19_slot := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(expr_18558_slot)
                fun_updateRebalanceInterestGrowth_13815(_18_mpos, _19_slot)
                /// @src 74:1533:1556  "bool relocationOccurred"
                let var_relocationOccurred_18562
                let zero_t_bool_20 := zero_value_for_split_t_bool()
                var_relocationOccurred_18562 := zero_t_bool_20
                /// @src 74:1581:1605  "int256 deltaPositionBase"
                let var_deltaPositionBase_18565
                let zero_t_int256_21 := zero_value_for_split_t_int256()
                var_deltaPositionBase_18565 := zero_t_int256_21
                /// @src 74:1619:1644  "int256 deltaPositionQuote"
                let var_deltaPositionQuote_18568
                let zero_t_int256_22 := zero_value_for_split_t_int256()
                var_deltaPositionQuote_18568 := zero_t_int256_22
                /// @src 74:1753:1757  "Perp"
                let expr_18575_address := linkersymbol("src/libraries/Perp.sol:Perp")
                /// @src 74:1769:1779  "pairStatus"
                let _23_slot := var_pairStatus_18547_slot
                let expr_18577_slot := _23_slot
                /// @src 74:1781:1791  "pairStatus"
                let _24_slot := var_pairStatus_18547_slot
                let expr_18578_slot := _24_slot
                /// @src 74:1781:1807  "pairStatus.sqrtAssetStatus"
                let _25 := add(expr_18578_slot, 33)
                let _26_slot := _25
                let expr_18579_slot := _26_slot
                /// @src 74:1753:1808  "Perp.reallocate(pairStatus, pairStatus.sqrtAssetStatus)"
                let _27_slot := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(expr_18579_slot)
                let expr_18580_component_1, expr_18580_component_2, expr_18580_component_3, expr_18580_component_4 := fun_reallocate_13989(expr_18577_slot, _27_slot)
                /// @src 74:1659:1808  "(relocationOccurred, isRangeChanged, deltaPositionBase, deltaPositionQuote) =..."
                var_deltaPositionQuote_18568 := expr_18580_component_4
                var_deltaPositionBase_18565 := expr_18580_component_3
                var_isRangeChanged_18527 := expr_18580_component_2
                var_relocationOccurred_18562 := expr_18580_component_1
                /// @src 74:1827:1844  "deltaPositionBase"
                let _28 := var_deltaPositionBase_18565
                let expr_18583 := _28
                /// @src 74:1848:1849  "0"
                let expr_18584 := 0x00
                /// @src 74:1827:1849  "deltaPositionBase != 0"
                let expr_18585 := iszero(eq(cleanup_t_int256(expr_18583), convert_t_rational_0_by_1_to_t_int256(expr_18584)))
                /// @src 74:1823:2613  "if (deltaPositionBase != 0) {..."
                if expr_18585 {
                    /// @src 74:1869:1879  "globalData"
                    let _29_slot := var_globalData_18520_slot
                    let expr_18586_slot := _29_slot
                    /// @src 74:1869:1894  "globalData.initializeLock"
                    let expr_18588_self_slot := expr_18586_slot
                    /// @src 74:1895:1901  "pairId"
                    let _30 := var_pairId_18522
                    let expr_18589 := _30
                    fun_initializeLock_19435(expr_18588_self_slot, expr_18589)
                    /// @src 74:1921:1931  "globalData"
                    let _31_slot := var_globalData_18520_slot
                    let expr_18592_slot := _31_slot
                    /// @src 74:1921:1954  "globalData.callSettlementCallback"
                    let expr_18594_self_slot := expr_18592_slot
                    /// @src 74:1955:1969  "settlementData"
                    let _32_mpos := var_settlementData_18524_mpos
                    let expr_18595_mpos := _32_mpos
                    /// @src 74:1971:1988  "deltaPositionBase"
                    let _33 := var_deltaPositionBase_18565
                    let expr_18596 := _33
                    fun_callSettlementCallback_19473(expr_18594_self_slot, expr_18595_mpos, expr_18596)
                    /// @src 74:2064:2074  "globalData"
                    let _34_slot := var_globalData_18520_slot
                    let expr_18603_slot := _34_slot
                    /// @src 74:2064:2087  "globalData.finalizeLock"
                    let expr_18604_self_slot := expr_18603_slot
                    /// @src 74:2064:2089  "globalData.finalizeLock()"
                    let expr_18605_component_1, expr_18605_component_2 := fun_finalizeLock_19503(expr_18604_self_slot)
                    /// @src 74:2008:2089  "(int256 settledQuoteAmount, int256 settledBaseAmount) = globalData.finalizeLock()"
                    let var_settledQuoteAmount_18600 := expr_18605_component_1
                    let var_settledBaseAmount_18602 := expr_18605_component_2
                    /// @src 74:2130:2148  "settledQuoteAmount"
                    let _35 := var_settledQuoteAmount_18600
                    let expr_18609 := _35
                    /// @src 74:2151:2169  "deltaPositionQuote"
                    let _36 := var_deltaPositionQuote_18568
                    let expr_18610 := _36
                    /// @src 74:2130:2169  "settledQuoteAmount + deltaPositionQuote"
                    let expr_18611 := checked_add_t_int256(expr_18609, expr_18610)

                    /// @src 74:2108:2169  "int256 exceedsQuote = settledQuoteAmount + deltaPositionQuote"
                    let var_exceedsQuote_18608 := expr_18611
                    /// @src 74:2192:2204  "exceedsQuote"
                    let _37 := var_exceedsQuote_18608
                    let expr_18613 := _37
                    /// @src 74:2207:2208  "0"
                    let expr_18614 := 0x00
                    /// @src 74:2192:2208  "exceedsQuote < 0"
                    let expr_18615 := slt(cleanup_t_int256(expr_18613), convert_t_rational_0_by_1_to_t_int256(expr_18614))
                    /// @src 74:2188:2291  "if (exceedsQuote < 0) {..."
                    if expr_18615 {
                        /// @src 74:2239:2272  "IPredyPool.QuoteTokenNotSettled()"
                        {

                            let _39 := 0

                            mstore(_39, 0x888ce9cd00000000000000000000000000000000000000000000000000000000)
                            let _38 := abi_encode_tuple__to__fromStack(add(_39, 4) )
                            revert(_39, sub(_38, _39))
                        }/// @src 74:2188:2291  "if (exceedsQuote < 0) {..."
                    }
                    /// @src 74:2313:2330  "settledBaseAmount"
                    let _40 := var_settledBaseAmount_18602
                    let expr_18623 := _40
                    /// @src 74:2333:2350  "deltaPositionBase"
                    let _41 := var_deltaPositionBase_18565
                    let expr_18624 := _41
                    /// @src 74:2313:2350  "settledBaseAmount + deltaPositionBase"
                    let expr_18625 := checked_add_t_int256(expr_18623, expr_18624)

                    /// @src 74:2354:2355  "0"
                    let expr_18626 := 0x00
                    /// @src 74:2313:2355  "settledBaseAmount + deltaPositionBase != 0"
                    let expr_18627 := iszero(eq(cleanup_t_int256(expr_18625), convert_t_rational_0_by_1_to_t_int256(expr_18626)))
                    /// @src 74:2309:2437  "if (settledBaseAmount + deltaPositionBase != 0) {..."
                    if expr_18627 {
                        /// @src 74:2386:2418  "IPredyPool.BaseTokenNotSettled()"
                        {

                            let _43 := 0

                            mstore(_43, 0x4f7f358c00000000000000000000000000000000000000000000000000000000)
                            let _42 := abi_encode_tuple__to__fromStack(add(_43, 4) )
                            revert(_43, sub(_42, _43))
                        }/// @src 74:2309:2437  "if (settledBaseAmount + deltaPositionBase != 0) {..."
                    }
                    /// @src 74:2459:2471  "exceedsQuote"
                    let _44 := var_exceedsQuote_18608
                    let expr_18635 := _44
                    /// @src 74:2474:2475  "0"
                    let expr_18636 := 0x00
                    /// @src 74:2459:2475  "exceedsQuote > 0"
                    let expr_18637 := sgt(cleanup_t_int256(expr_18635), convert_t_rational_0_by_1_to_t_int256(expr_18636))
                    /// @src 74:2455:2599  "if (exceedsQuote > 0) {..."
                    if expr_18637 {
                        /// @src 74:2505:2515  "pairStatus"
                        let _45_slot := var_pairStatus_18547_slot
                        let expr_18639_slot := _45_slot
                        /// @src 74:2505:2525  "pairStatus.quotePool"
                        let _46 := add(expr_18639_slot, 3)
                        let _47_slot := _46
                        let expr_18640_slot := _47_slot
                        /// @src 74:2505:2531  "pairStatus.quotePool.token"
                        let _48 := add(expr_18640_slot, 0)
                        let _49 := read_from_storage_split_offset_0_t_address(_48)
                        let expr_18641 := _49
                        /// @src 74:2499:2532  "ERC20(pairStatus.quotePool.token)"
                        let expr_18642_address := convert_t_address_to_t_contract$_ERC20_$13305(expr_18641)
                        /// @src 74:2499:2545  "ERC20(pairStatus.quotePool.token).safeTransfer"
                        let expr_18643_self_address := expr_18642_address
                        /// @src 74:2546:2556  "msg.sender"
                        let expr_18645 := caller()
                        /// @src 74:2566:2578  "exceedsQuote"
                        let _50 := var_exceedsQuote_18608
                        let expr_18648 := _50
                        /// @src 74:2558:2579  "uint256(exceedsQuote)"
                        let expr_18649 := convert_t_int256_to_t_uint256(expr_18648)
                        fun_safeTransfer_13369(expr_18643_self_address, expr_18645, expr_18649)
                        /// @src 74:2455:2599  "if (exceedsQuote > 0) {..."
                    }
                    /// @src 74:1823:2613  "if (deltaPositionBase != 0) {..."
                }
                /// @src 74:2660:2666  "pairId"
                let _51 := var_pairId_18522
                let expr_18657 := _51
                /// @src 74:2684:2702  "relocationOccurred"
                let _52 := var_relocationOccurred_18562
                let expr_18658 := _52
                /// @src 74:2720:2730  "pairStatus"
                let _53_slot := var_pairStatus_18547_slot
                let expr_18659_slot := _53_slot
                /// @src 74:2720:2746  "pairStatus.sqrtAssetStatus"
                let _54 := add(expr_18659_slot, 33)
                let _55_slot := _54
                let expr_18660_slot := _55_slot
                /// @src 74:2720:2756  "pairStatus.sqrtAssetStatus.tickLower"
                let _56 := add(expr_18660_slot, 0)
                let _57 := read_from_storage_split_offset_20_t_int24(_56)
                let expr_18661 := _57
                /// @src 74:2774:2784  "pairStatus"
                let _58_slot := var_pairStatus_18547_slot
                let expr_18662_slot := _58_slot
                /// @src 74:2774:2800  "pairStatus.sqrtAssetStatus"
                let _59 := add(expr_18662_slot, 33)
                let _60_slot := _59
                let expr_18663_slot := _60_slot
                /// @src 74:2774:2810  "pairStatus.sqrtAssetStatus.tickUpper"
                let _61 := add(expr_18663_slot, 0)
                let _62 := read_from_storage_split_offset_23_t_int24(_61)
                let expr_18664 := _62
                /// @src 74:2828:2845  "deltaPositionBase"
                let _63 := var_deltaPositionBase_18565
                let expr_18665 := _63
                /// @src 74:2863:2881  "deltaPositionQuote"
                let _64 := var_deltaPositionQuote_18568
                let expr_18666 := _64
                /// @src 74:2632:2895  "Rebalanced(..."
                let _65 := 0x83500d107cccf2b70f13e00e5e3f90366eb7ca3477444851eac3d6ec9d8eea16
                let _66 := convert_t_uint256_to_t_uint256(expr_18657)
                {
                    let _67 := allocate_unbounded()
                    let _68 := abi_encode_tuple_t_bool_t_int24_t_int24_t_int256_t_int256__to_t_bool_t_int24_t_int24_t_int256_t_int256__fromStack(_67 , expr_18658, expr_18661, expr_18664, expr_18665, expr_18666)
                    log2(_67, sub(_68, _67) , _65, _66)
                }/// @src 74:2920:2938  "relocationOccurred"
                let _69 := var_relocationOccurred_18562
                let expr_18670 := _69
                /// @src 74:2916:3369  "if (relocationOccurred) {..."
                if expr_18670 {
                    /// @src 74:3099:3107  "DataType"
                    let expr_18682_address := linkersymbol("src/libraries/DataType.sol:DataType")
                    /// @src 74:3149:3159  "pairStatus"
                    let _70_slot := var_pairStatus_18547_slot
                    let expr_18684_slot := _70_slot
                    /// @src 74:3149:3175  "pairStatus.sqrtAssetStatus"
                    let _71 := add(expr_18684_slot, 33)
                    let _72_slot := _71
                    let expr_18685_slot := _72_slot
                    /// @src 74:3149:3204  "pairStatus.sqrtAssetStatus.rebalanceInterestGrowthQuote"
                    let _73 := add(expr_18685_slot, 16)
                    let _74 := read_from_storage_split_offset_0_t_int256(_73)
                    let expr_18686 := _74
                    /// @src 74:3222:3232  "pairStatus"
                    let _75_slot := var_pairStatus_18547_slot
                    let expr_18687_slot := _75_slot
                    /// @src 74:3222:3248  "pairStatus.sqrtAssetStatus"
                    let _76 := add(expr_18687_slot, 33)
                    let _77_slot := _76
                    let expr_18688_slot := _77_slot
                    /// @src 74:3222:3276  "pairStatus.sqrtAssetStatus.rebalanceInterestGrowthBase"
                    let _78 := add(expr_18688_slot, 15)
                    let _79 := read_from_storage_split_offset_0_t_int256(_78)
                    let expr_18689 := _79
                    /// @src 74:3099:3290  "DataType.RebalanceFeeGrowthCache(..."
                    let expr_18690_mpos := allocate_memory_struct_t_struct$_RebalanceFeeGrowthCache_$6121_storage_ptr()
                    write_to_memory_t_int256(add(expr_18690_mpos, 0), expr_18686)
                    write_to_memory_t_int256(add(expr_18690_mpos, 32), expr_18689)
                    /// @src 74:2954:2964  "globalData"
                    let _80_slot := var_globalData_18520_slot
                    let expr_18671_slot := _80_slot
                    /// @src 74:2954:2988  "globalData.rebalanceFeeGrowthCache"
                    let _81 := add(expr_18671_slot, 4)
                    let _82_slot := _81
                    let expr_18680_slot := _82_slot
                    /// @src 74:2989:2996  "PairLib"
                    let expr_18673_address := linkersymbol("src/libraries/PairLib.sol:PairLib")
                    /// @src 74:3034:3040  "pairId"
                    let _83 := var_pairId_18522
                    let expr_18675 := _83
                    /// @src 74:3042:3052  "pairStatus"
                    let _84_slot := var_pairStatus_18547_slot
                    let expr_18676_slot := _84_slot
                    /// @src 74:3042:3068  "pairStatus.sqrtAssetStatus"
                    let _85 := add(expr_18676_slot, 33)
                    let _86_slot := _85
                    let expr_18677_slot := _86_slot
                    /// @src 74:3042:3081  "pairStatus.sqrtAssetStatus.numRebalance"
                    let _87 := add(expr_18677_slot, 1)
                    let _88 := read_from_storage_split_offset_0_t_uint64(_87)
                    let expr_18678 := _88
                    /// @src 74:2989:3095  "PairLib.getRebalanceCacheId(..."
                    let expr_18679 := fun_getRebalanceCacheId_34418(expr_18675, expr_18678)
                    /// @src 74:2954:3096  "globalData.rebalanceFeeGrowthCache[PairLib.getRebalanceCacheId(..."
                    let _89 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_RebalanceFeeGrowthCache_$6121_storage_$_of_t_uint256(expr_18680_slot,expr_18679)
                    /// @src 74:2954:3290  "globalData.rebalanceFeeGrowthCache[PairLib.getRebalanceCacheId(..."
                    update_storage_value_offset_0_t_struct$_RebalanceFeeGrowthCache_$6121_memory_ptr_to_t_struct$_RebalanceFeeGrowthCache_$6121_storage(_89, expr_18690_mpos)
                    let _90_slot := _89
                    let expr_18691_slot := _90_slot
                    /// @src 74:3305:3309  "Perp"
                    let expr_18693_address := linkersymbol("src/libraries/Perp.sol:Perp")
                    /// @src 74:3331:3341  "pairStatus"
                    let _91_slot := var_pairStatus_18547_slot
                    let expr_18696_slot := _91_slot
                    /// @src 74:3331:3357  "pairStatus.sqrtAssetStatus"
                    let _92 := add(expr_18696_slot, 33)
                    let _93_slot := _92
                    let expr_18697_slot := _93_slot
                    /// @src 74:3305:3358  "Perp.finalizeReallocation(pairStatus.sqrtAssetStatus)"
                    let _94_slot := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(expr_18697_slot)
                    fun_finalizeReallocation_15782(_94_slot)
                    /// @src 74:2916:3369  "if (relocationOccurred) {..."
                }

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            /// @ast-id 19348
            /// @src 81:1104:1303  "function validate(GlobalDataLibrary.GlobalData storage globalData, uint256 pairId) internal view {..."
            function fun_validate_19348(var_globalData_19328_slot, var_pairId_19330) {

                /// @src 81:1215:1221  "pairId"
                let _95 := var_pairId_19330
                let expr_19333 := _95
                /// @src 81:1225:1226  "0"
                let expr_19334 := 0x00
                /// @src 81:1215:1226  "pairId <= 0"
                let expr_19335 := iszero(gt(cleanup_t_uint256(expr_19333), convert_t_rational_0_by_1_to_t_uint256(expr_19334)))
                /// @src 81:1215:1261  "pairId <= 0 || globalData.pairsCount <= pairId"
                let expr_19340 := expr_19335
                if iszero(expr_19340) {
                    /// @src 81:1230:1240  "globalData"
                    let _96_slot := var_globalData_19328_slot
                    let expr_19336_slot := _96_slot
                    /// @src 81:1230:1251  "globalData.pairsCount"
                    let _97 := add(expr_19336_slot, 0)
                    let _98 := read_from_storage_split_offset_0_t_uint256(_97)
                    let expr_19337 := _98
                    /// @src 81:1255:1261  "pairId"
                    let _99 := var_pairId_19330
                    let expr_19338 := _99
                    /// @src 81:1230:1261  "globalData.pairsCount <= pairId"
                    let expr_19339 := iszero(gt(cleanup_t_uint256(expr_19337), cleanup_t_uint256(expr_19338)))
                    /// @src 81:1215:1261  "pairId <= 0 || globalData.pairsCount <= pairId"
                    expr_19340 := expr_19339
                }
                /// @src 81:1211:1296  "if (pairId <= 0 || globalData.pairsCount <= pairId) revert IPredyPool.InvalidPairId()"
                if expr_19340 {
                    /// @src 81:1270:1296  "IPredyPool.InvalidPairId()"
                    {

                        let _101 := 0

                        mstore(_101, 0xa8c399e500000000000000000000000000000000000000000000000000000000)
                        let _100 := abi_encode_tuple__to__fromStack(add(_101, 4) )
                        revert(_101, sub(_100, _101))
                    }/// @src 81:1211:1296  "if (pairId <= 0 || globalData.pairsCount <= pairId) revert IPredyPool.InvalidPairId()"
                }

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(value) -> converted {
                converted := value
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_uint256_to_t_uint256(slot, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
            }

            /// @ast-id 33178
            /// @src 56:607:1615  "function applyInterestForToken(mapping(uint256 => DataType.PairStatus) storage pairs, uint256 pairId) internal {..."
            function fun_applyInterestForToken_33178(var_pairs_33103_slot, var_pairId_33105) {

                /// @src 56:769:774  "pairs"
                let _102_slot := var_pairs_33103_slot
                let expr_33113_slot := _102_slot
                /// @src 56:775:781  "pairId"
                let _103 := var_pairId_33105
                let expr_33114 := _103
                /// @src 56:769:782  "pairs[pairId]"
                let _104 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_33113_slot,expr_33114)
                let _105_slot := _104
                let expr_33115_slot := _105_slot
                /// @src 56:728:782  "DataType.PairStatus storage pairStatus = pairs[pairId]"
                let var_pairStatus_33112_slot := convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_storage_ptr(expr_33115_slot)
                /// @src 56:793:797  "Perp"
                let expr_33117_address := linkersymbol("src/libraries/Perp.sol:Perp")
                /// @src 56:824:830  "pairId"
                let _106 := var_pairId_33105
                let expr_33120 := _106
                /// @src 56:832:842  "pairStatus"
                let _107_slot := var_pairStatus_33112_slot
                let expr_33121_slot := _107_slot
                /// @src 56:832:858  "pairStatus.sqrtAssetStatus"
                let _108 := add(expr_33121_slot, 33)
                let _109_slot := _108
                let expr_33122_slot := _109_slot
                /// @src 56:793:859  "Perp.updateFeeAndPremiumGrowth(pairId, pairStatus.sqrtAssetStatus)"
                let _110_slot := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(expr_33122_slot)
                fun_updateFeeAndPremiumGrowth_14485(expr_33120, _110_slot)
                /// @src 56:947:957  "pairStatus"
                let _111_slot := var_pairStatus_33112_slot
                let expr_33125_slot := _111_slot
                /// @src 56:947:977  "pairStatus.lastUpdateTimestamp"
                let _112 := add(expr_33125_slot, 51)
                let _113 := read_from_storage_split_offset_0_t_uint256(_112)
                let expr_33126 := _113
                /// @src 56:981:996  "block.timestamp"
                let expr_33128 := timestamp()
                /// @src 56:947:996  "pairStatus.lastUpdateTimestamp >= block.timestamp"
                let expr_33129 := iszero(lt(cleanup_t_uint256(expr_33126), cleanup_t_uint256(expr_33128)))
                /// @src 56:943:1029  "if (pairStatus.lastUpdateTimestamp >= block.timestamp) {..."
                if expr_33129 {
                    /// @src 56:1012:1019  "return;"
                    leave
                    /// @src 56:943:1029  "if (pairStatus.lastUpdateTimestamp >= block.timestamp) {..."
                }
                /// @src 56:1107:1117  "pairStatus"
                let _114_slot := var_pairStatus_33112_slot
                let expr_33136_slot := _114_slot
                /// @src 56:1107:1127  "pairStatus.quotePool"
                let _115 := add(expr_33136_slot, 3)
                let _116_slot := _115
                let expr_33137_slot := _116_slot
                /// @src 56:1129:1139  "pairStatus"
                let _117_slot := var_pairStatus_33112_slot
                let expr_33138_slot := _117_slot
                /// @src 56:1129:1159  "pairStatus.lastUpdateTimestamp"
                let _118 := add(expr_33138_slot, 51)
                let _119 := read_from_storage_split_offset_0_t_uint256(_118)
                let expr_33139 := _119
                /// @src 56:1161:1171  "pairStatus"
                let _120_slot := var_pairStatus_33112_slot
                let expr_33140_slot := _120_slot
                /// @src 56:1161:1180  "pairStatus.feeRatio"
                let _121 := add(expr_33140_slot, 50)
                let _122 := read_from_storage_split_offset_22_t_uint8(_121)
                let expr_33141 := _122
                /// @src 56:1080:1181  "applyInterestForPoolStatus(pairStatus.quotePool, pairStatus.lastUpdateTimestamp, pairStatus.feeRatio)"
                let _123_slot := convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(expr_33137_slot)
                let expr_33142 := fun_applyInterestForPoolStatus_33255(_123_slot, expr_33139, expr_33141)
                /// @src 56:1039:1181  "uint256 interestRateStable =..."
                let var_interestRateStable_33134 := expr_33142
                /// @src 56:1264:1274  "pairStatus"
                let _124_slot := var_pairStatus_33112_slot
                let expr_33147_slot := _124_slot
                /// @src 56:1264:1283  "pairStatus.basePool"
                let _125 := add(expr_33147_slot, 17)
                let _126_slot := _125
                let expr_33148_slot := _126_slot
                /// @src 56:1285:1295  "pairStatus"
                let _127_slot := var_pairStatus_33112_slot
                let expr_33149_slot := _127_slot
                /// @src 56:1285:1315  "pairStatus.lastUpdateTimestamp"
                let _128 := add(expr_33149_slot, 51)
                let _129 := read_from_storage_split_offset_0_t_uint256(_128)
                let expr_33150 := _129
                /// @src 56:1317:1327  "pairStatus"
                let _130_slot := var_pairStatus_33112_slot
                let expr_33151_slot := _130_slot
                /// @src 56:1317:1336  "pairStatus.feeRatio"
                let _131 := add(expr_33151_slot, 50)
                let _132 := read_from_storage_split_offset_22_t_uint8(_131)
                let expr_33152 := _132
                /// @src 56:1237:1337  "applyInterestForPoolStatus(pairStatus.basePool, pairStatus.lastUpdateTimestamp, pairStatus.feeRatio)"
                let _133_slot := convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(expr_33148_slot)
                let expr_33153 := fun_applyInterestForPoolStatus_33255(_133_slot, expr_33150, expr_33152)
                /// @src 56:1192:1337  "uint256 interestRateUnderlying =..."
                let var_interestRateUnderlying_33145 := expr_33153
                /// @src 56:1421:1436  "block.timestamp"
                let expr_33159 := timestamp()
                /// @src 56:1388:1398  "pairStatus"
                let _134_slot := var_pairStatus_33112_slot
                let expr_33155_slot := _134_slot
                /// @src 56:1388:1418  "pairStatus.lastUpdateTimestamp"
                let _135 := add(expr_33155_slot, 51)
                /// @src 56:1388:1436  "pairStatus.lastUpdateTimestamp = block.timestamp"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_135, expr_33159)
                let expr_33160 := expr_33159
                /// @src 56:1451:1469  "interestRateStable"
                let _136 := var_interestRateStable_33134
                let expr_33162 := _136
                /// @src 56:1472:1473  "0"
                let expr_33163 := 0x00
                /// @src 56:1451:1473  "interestRateStable > 0"
                let expr_33164 := gt(cleanup_t_uint256(expr_33162), convert_t_rational_0_by_1_to_t_uint256(expr_33163))
                /// @src 56:1451:1503  "interestRateStable > 0 || interestRateUnderlying > 0"
                let expr_33168 := expr_33164
                if iszero(expr_33168) {
                    /// @src 56:1477:1499  "interestRateUnderlying"
                    let _137 := var_interestRateUnderlying_33145
                    let expr_33165 := _137
                    /// @src 56:1502:1503  "0"
                    let expr_33166 := 0x00
                    /// @src 56:1477:1503  "interestRateUnderlying > 0"
                    let expr_33167 := gt(cleanup_t_uint256(expr_33165), convert_t_rational_0_by_1_to_t_uint256(expr_33166))
                    /// @src 56:1451:1503  "interestRateStable > 0 || interestRateUnderlying > 0"
                    expr_33168 := expr_33167
                }
                /// @src 56:1447:1609  "if (interestRateStable > 0 || interestRateUnderlying > 0) {..."
                if expr_33168 {
                    /// @src 56:1543:1553  "pairStatus"
                    let _138_slot := var_pairStatus_33112_slot
                    let expr_33170_slot := _138_slot
                    /// @src 56:1555:1573  "interestRateStable"
                    let _139 := var_interestRateStable_33134
                    let expr_33171 := _139
                    /// @src 56:1575:1597  "interestRateUnderlying"
                    let _140 := var_interestRateUnderlying_33145
                    let expr_33172 := _140
                    /// @src 56:1519:1598  "emitInterestGrowthEvent(pairStatus, interestRateStable, interestRateUnderlying)"
                    let _141_mpos := convert_t_struct$_PairStatus_$6102_storage_ptr_to_t_struct$_PairStatus_$6102_memory_ptr(expr_33170_slot)
                    fun_emitInterestGrowthEvent_33279(_141_mpos, expr_33171, expr_33172)
                    /// @src 56:1447:1609  "if (interestRateStable > 0 || interestRateUnderlying > 0) {..."
                }

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(value) -> converted {
                converted := value
            }

            function cleanup_t_rational_1000000000000000000_by_1(value) -> cleaned {
                cleaned := value
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

            function convert_t_uint256_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_uint256(value)))
            }

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

            /// @ast-id 13815
            /// @src 61:4568:5393  "function updateRebalanceInterestGrowth(..."
            function fun_updateRebalanceInterestGrowth_13815(var__pairStatus_13762_mpos, var__sqrtAssetStatus_13765_slot) {

                /// @src 61:4833:4849  "_sqrtAssetStatus"
                let _142_slot := var__sqrtAssetStatus_13765_slot
                let expr_13768_slot := _142_slot
                /// @src 61:4833:4880  "_sqrtAssetStatus.lastRebalanceTotalSquartAmount"
                let _143 := add(expr_13768_slot, 4)
                let _144 := read_from_storage_split_offset_0_t_uint256(_143)
                let expr_13769 := _144
                /// @src 61:4883:4884  "0"
                let expr_13770 := 0x00
                /// @src 61:4833:4884  "_sqrtAssetStatus.lastRebalanceTotalSquartAmount > 0"
                let expr_13771 := gt(cleanup_t_uint256(expr_13769), convert_t_rational_0_by_1_to_t_uint256(expr_13770))
                /// @src 61:4829:5387  "if (_sqrtAssetStatus.lastRebalanceTotalSquartAmount > 0) {..."
                if expr_13771 {
                    /// @src 61:4948:4959  "_pairStatus"
                    let _145_mpos := var__pairStatus_13762_mpos
                    let expr_13775_mpos := _145_mpos
                    /// @src 61:4948:4968  "_pairStatus.basePool"
                    let _146 := add(expr_13775_mpos, 128)
                    let _147_mpos := mload(_146)
                    let expr_13776_mpos := _147_mpos
                    /// @src 61:4948:4980  "_pairStatus.basePool.tokenStatus"
                    let _148 := add(expr_13776_mpos, 64)
                    let _149_mpos := mload(_148)
                    let expr_13777_mpos := _149_mpos
                    /// @src 61:4948:4994  "_pairStatus.basePool.tokenStatus.settleUserFee"
                    let expr_13778_self_mpos := expr_13777_mpos
                    /// @src 61:5012:5028  "_sqrtAssetStatus"
                    let _150_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13779_slot := _150_slot
                    /// @src 61:5012:5050  "_sqrtAssetStatus.rebalancePositionBase"
                    let _151 := add(expr_13779_slot, 11)
                    let _152_slot := _151
                    let expr_13780_slot := _152_slot
                    /// @src 61:4948:5064  "_pairStatus.basePool.tokenStatus.settleUserFee(..."
                    let _153_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_13780_slot)
                    let expr_13781 := fun_settleUserFee_31406(expr_13778_self_mpos, _153_slot)
                    /// @src 61:5067:5071  "1e18"
                    let expr_13782 := 0x0de0b6b3a7640000
                    /// @src 61:4948:5071  "_pairStatus.basePool.tokenStatus.settleUserFee(..."
                    let expr_13783 := checked_mul_t_int256(expr_13781, convert_t_rational_1000000000000000000_by_1_to_t_int256(expr_13782))

                    /// @src 61:5081:5097  "_sqrtAssetStatus"
                    let _154_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13786_slot := _154_slot
                    /// @src 61:5081:5128  "_sqrtAssetStatus.lastRebalanceTotalSquartAmount"
                    let _155 := add(expr_13786_slot, 4)
                    let _156 := read_from_storage_split_offset_0_t_uint256(_155)
                    let expr_13787 := _156
                    /// @src 61:5074:5129  "int256(_sqrtAssetStatus.lastRebalanceTotalSquartAmount)"
                    let expr_13788 := convert_t_uint256_to_t_int256(expr_13787)
                    /// @src 61:4948:5129  "_pairStatus.basePool.tokenStatus.settleUserFee(..."
                    let expr_13789 := checked_div_t_int256(expr_13783, expr_13788)

                    /// @src 61:4900:4916  "_sqrtAssetStatus"
                    let _157_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13772_slot := _157_slot
                    /// @src 61:4900:4944  "_sqrtAssetStatus.rebalanceInterestGrowthBase"
                    let _158 := add(expr_13772_slot, 15)
                    /// @src 61:4900:5129  "_sqrtAssetStatus.rebalanceInterestGrowthBase += _pairStatus.basePool.tokenStatus.settleUserFee(..."
                    let _159 := read_from_storage_split_offset_0_t_int256(_158)
                    let expr_13790 := checked_add_t_int256(_159, expr_13789)

                    update_storage_value_offset_0_t_int256_to_t_int256(_158, expr_13790)
                    /// @src 61:5193:5204  "_pairStatus"
                    let _160_mpos := var__pairStatus_13762_mpos
                    let expr_13795_mpos := _160_mpos
                    /// @src 61:5193:5214  "_pairStatus.quotePool"
                    let _161 := add(expr_13795_mpos, 96)
                    let _162_mpos := mload(_161)
                    let expr_13796_mpos := _162_mpos
                    /// @src 61:5193:5226  "_pairStatus.quotePool.tokenStatus"
                    let _163 := add(expr_13796_mpos, 64)
                    let _164_mpos := mload(_163)
                    let expr_13797_mpos := _164_mpos
                    /// @src 61:5193:5240  "_pairStatus.quotePool.tokenStatus.settleUserFee"
                    let expr_13798_self_mpos := expr_13797_mpos
                    /// @src 61:5258:5274  "_sqrtAssetStatus"
                    let _165_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13799_slot := _165_slot
                    /// @src 61:5258:5297  "_sqrtAssetStatus.rebalancePositionQuote"
                    let _166 := add(expr_13799_slot, 13)
                    let _167_slot := _166
                    let expr_13800_slot := _167_slot
                    /// @src 61:5193:5311  "_pairStatus.quotePool.tokenStatus.settleUserFee(..."
                    let _168_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_13800_slot)
                    let expr_13801 := fun_settleUserFee_31406(expr_13798_self_mpos, _168_slot)
                    /// @src 61:5314:5318  "1e18"
                    let expr_13802 := 0x0de0b6b3a7640000
                    /// @src 61:5193:5318  "_pairStatus.quotePool.tokenStatus.settleUserFee(..."
                    let expr_13803 := checked_mul_t_int256(expr_13801, convert_t_rational_1000000000000000000_by_1_to_t_int256(expr_13802))

                    /// @src 61:5328:5344  "_sqrtAssetStatus"
                    let _169_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13806_slot := _169_slot
                    /// @src 61:5328:5375  "_sqrtAssetStatus.lastRebalanceTotalSquartAmount"
                    let _170 := add(expr_13806_slot, 4)
                    let _171 := read_from_storage_split_offset_0_t_uint256(_170)
                    let expr_13807 := _171
                    /// @src 61:5321:5376  "int256(_sqrtAssetStatus.lastRebalanceTotalSquartAmount)"
                    let expr_13808 := convert_t_uint256_to_t_int256(expr_13807)
                    /// @src 61:5193:5376  "_pairStatus.quotePool.tokenStatus.settleUserFee(..."
                    let expr_13809 := checked_div_t_int256(expr_13803, expr_13808)

                    /// @src 61:5144:5160  "_sqrtAssetStatus"
                    let _172_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13792_slot := _172_slot
                    /// @src 61:5144:5189  "_sqrtAssetStatus.rebalanceInterestGrowthQuote"
                    let _173 := add(expr_13792_slot, 16)
                    /// @src 61:5144:5376  "_sqrtAssetStatus.rebalanceInterestGrowthQuote += _pairStatus.quotePool.tokenStatus.settleUserFee(..."
                    let _174 := read_from_storage_split_offset_0_t_int256(_173)
                    let expr_13810 := checked_add_t_int256(_174, expr_13809)

                    update_storage_value_offset_0_t_int256_to_t_int256(_173, expr_13810)
                    /// @src 61:4829:5387  "if (_sqrtAssetStatus.lastRebalanceTotalSquartAmount > 0) {..."
                }

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

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

            function checked_add_t_int24(x, y) -> sum {
                x := cleanup_t_int24(x)
                y := cleanup_t_int24(y)
                sum := add(x, y)

                if or(
                    sgt(sum, 0x7fffff),
                    slt(sum, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff800000)
                ) { panic_error_0x11() }

            }

            function checked_sub_t_int24(x, y) -> diff {
                x := cleanup_t_int24(x)
                y := cleanup_t_int24(y)
                diff := sub(x, y)

                if or(
                    slt(diff, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff800000),
                    sgt(diff, 0x7fffff)
                ) { panic_error_0x11() }

            }

            function convert_t_contract$_Perp_$15783_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_rational_0_by_1_to_t_uint128(value) -> converted {
                converted := cleanup_t_uint128(identity(cleanup_t_rational_0_by_1(value)))
            }

            function shift_left_184(value) -> newValue {
                newValue :=

                shl(184, value)

            }

            function update_byte_slice_3_shift_23(value, toInsert) -> result {
                let mask := 0xffffff0000000000000000000000000000000000000000000000
                toInsert := shift_left_184(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_int24_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_int24(value)))
            }

            function prepare_store_t_int24(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_23_t_int24_to_t_int24(slot, value_0) {
                let convertedValue_0 := convert_t_int24_to_t_int24(value_0)
                sstore(slot, update_byte_slice_3_shift_23(sload(slot), prepare_store_t_int24(convertedValue_0)))
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

            function update_storage_value_offset_20_t_int24_to_t_int24(slot, value_0) {
                let convertedValue_0 := convert_t_int24_to_t_int24(value_0)
                sstore(slot, update_byte_slice_3_shift_20(sload(slot), prepare_store_t_int24(convertedValue_0)))
            }

            function zero_value_for_split_t_int24() -> ret {
                ret := 0
            }

            /// @ast-id 13989
            /// @src 61:6264:8590  "function reallocate(..."
            function fun_reallocate_13989(var__assetStatusUnderlying_13819_slot, var__sqrtAssetStatus_13822_slot) -> var__13825, var__13827, var_deltaPositionBase_13829, var_deltaPositionQuote_13831 {
                /// @src 61:6422:6426  "bool"
                let zero_t_bool_175 := zero_value_for_split_t_bool()
                var__13825 := zero_t_bool_175
                /// @src 61:6428:6432  "bool"
                let zero_t_bool_176 := zero_value_for_split_t_bool()
                var__13827 := zero_t_bool_176
                /// @src 61:6434:6458  "int256 deltaPositionBase"
                let zero_t_int256_177 := zero_value_for_split_t_int256()
                var_deltaPositionBase_13829 := zero_t_int256_177
                /// @src 61:6460:6485  "int256 deltaPositionQuote"
                let zero_t_int256_178 := zero_value_for_split_t_int256()
                var_deltaPositionQuote_13831 := zero_t_int256_178

                /// @src 61:6565:6581  "_sqrtAssetStatus"
                let _179_slot := var__sqrtAssetStatus_13822_slot
                let expr_13838_slot := _179_slot
                /// @src 61:6565:6593  "_sqrtAssetStatus.uniswapPool"
                let _180 := add(expr_13838_slot, 0)
                let _181 := read_from_storage_split_offset_0_t_address(_180)
                let expr_13839 := _181
                /// @src 61:6550:6594  "IUniswapV3Pool(_sqrtAssetStatus.uniswapPool)"
                let expr_13840_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_13839)
                /// @src 61:6550:6600  "IUniswapV3Pool(_sqrtAssetStatus.uniswapPool).slot0"
                let expr_13841_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_13840_address)
                let expr_13841_functionSelector := 0x3850c7bd
                /// @src 61:6550:6602  "IUniswapV3Pool(_sqrtAssetStatus.uniswapPool).slot0()"

                // storage for arguments and returned data
                let _182 := allocate_unbounded()
                mstore(_182, shift_left_224(expr_13841_functionSelector))
                let _183 := abi_encode_tuple__to__fromStack(add(_182, 4) )

                let _184 := staticcall(gas(), expr_13841_address,  _182, sub(_183, _182), _182, 224)

                if iszero(_184) { revert_forward_1() }

                let expr_13842_component_1, expr_13842_component_2, expr_13842_component_3, expr_13842_component_4, expr_13842_component_5, expr_13842_component_6, expr_13842_component_7
                if _184 {

                    let _185 := 224

                    if gt(_185, returndatasize()) {
                        _185 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_182, _185)

                    // decode return parameters from external try-call into retVars
                    expr_13842_component_1, expr_13842_component_2, expr_13842_component_3, expr_13842_component_4, expr_13842_component_5, expr_13842_component_6, expr_13842_component_7 :=  abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(_182, add(_182, _185))
                }
                /// @src 61:6497:6602  "(uint160 currentSqrtPrice, int24 currentTick,,,,,) = IUniswapV3Pool(_sqrtAssetStatus.uniswapPool).slot0()"
                let var_currentSqrtPrice_13834 := expr_13842_component_1
                let var_currentTick_13836 := expr_13842_component_2
                /// @src 61:6707:6723  "_sqrtAssetStatus"
                let _186_slot := var__sqrtAssetStatus_13822_slot
                let expr_13844_slot := _186_slot
                /// @src 61:6707:6733  "_sqrtAssetStatus.tickLower"
                let _187 := add(expr_13844_slot, 0)
                let _188 := read_from_storage_split_offset_20_t_int24(_187)
                let expr_13845 := _188
                /// @src 61:6736:6758  "_assetStatusUnderlying"
                let _189_slot := var__assetStatusUnderlying_13819_slot
                let expr_13846_slot := _189_slot
                /// @src 61:6736:6769  "_assetStatusUnderlying.riskParams"
                let _190 := add(expr_13846_slot, 31)
                let _191_slot := _190
                let expr_13847_slot := _191_slot
                /// @src 61:6736:6788  "_assetStatusUnderlying.riskParams.rebalanceThreshold"
                let _192 := add(expr_13847_slot, 1)
                let _193 := read_from_storage_split_offset_3_t_int24(_192)
                let expr_13848 := _193
                /// @src 61:6707:6788  "_sqrtAssetStatus.tickLower + _assetStatusUnderlying.riskParams.rebalanceThreshold"
                let expr_13849 := checked_add_t_int24(expr_13845, expr_13848)

                /// @src 61:6791:6802  "currentTick"
                let _194 := var_currentTick_13836
                let expr_13850 := _194
                /// @src 61:6707:6802  "_sqrtAssetStatus.tickLower + _assetStatusUnderlying.riskParams.rebalanceThreshold < currentTick"
                let expr_13851 := slt(cleanup_t_int24(expr_13849), cleanup_t_int24(expr_13850))
                /// @src 61:6707:6917  "_sqrtAssetStatus.tickLower + _assetStatusUnderlying.riskParams.rebalanceThreshold < currentTick..."
                let expr_13860 := expr_13851
                if expr_13860 {
                    /// @src 61:6822:6833  "currentTick"
                    let _195 := var_currentTick_13836
                    let expr_13852 := _195
                    /// @src 61:6836:6852  "_sqrtAssetStatus"
                    let _196_slot := var__sqrtAssetStatus_13822_slot
                    let expr_13853_slot := _196_slot
                    /// @src 61:6836:6862  "_sqrtAssetStatus.tickUpper"
                    let _197 := add(expr_13853_slot, 0)
                    let _198 := read_from_storage_split_offset_23_t_int24(_197)
                    let expr_13854 := _198
                    /// @src 61:6865:6887  "_assetStatusUnderlying"
                    let _199_slot := var__assetStatusUnderlying_13819_slot
                    let expr_13855_slot := _199_slot
                    /// @src 61:6865:6898  "_assetStatusUnderlying.riskParams"
                    let _200 := add(expr_13855_slot, 31)
                    let _201_slot := _200
                    let expr_13856_slot := _201_slot
                    /// @src 61:6865:6917  "_assetStatusUnderlying.riskParams.rebalanceThreshold"
                    let _202 := add(expr_13856_slot, 1)
                    let _203 := read_from_storage_split_offset_3_t_int24(_202)
                    let expr_13857 := _203
                    /// @src 61:6836:6917  "_sqrtAssetStatus.tickUpper - _assetStatusUnderlying.riskParams.rebalanceThreshold"
                    let expr_13858 := checked_sub_t_int24(expr_13854, expr_13857)

                    /// @src 61:6822:6917  "currentTick < _sqrtAssetStatus.tickUpper - _assetStatusUnderlying.riskParams.rebalanceThreshold"
                    let expr_13859 := slt(cleanup_t_int24(expr_13852), cleanup_t_int24(expr_13858))
                    /// @src 61:6707:6917  "_sqrtAssetStatus.tickLower + _assetStatusUnderlying.riskParams.rebalanceThreshold < currentTick..."
                    expr_13860 := expr_13859
                }
                /// @src 61:6690:7030  "if (..."
                if expr_13860 {
                    /// @src 61:6960:6976  "_sqrtAssetStatus"
                    let _204_slot := var__sqrtAssetStatus_13822_slot
                    let expr_13862_slot := _204_slot
                    fun_saveLastFeeGrowth_14518(expr_13862_slot)
                    /// @src 61:7000:7005  "false"
                    let expr_13865 := 0x00
                    /// @src 61:6999:7019  "(false, false, 0, 0)"
                    let expr_13869_component_1 := expr_13865
                    /// @src 61:7007:7012  "false"
                    let expr_13866 := 0x00
                    /// @src 61:6999:7019  "(false, false, 0, 0)"
                    let expr_13869_component_2 := expr_13866
                    /// @src 61:7014:7015  "0"
                    let expr_13867 := 0x00
                    /// @src 61:6999:7019  "(false, false, 0, 0)"
                    let expr_13869_component_3 := expr_13867
                    /// @src 61:7017:7018  "0"
                    let expr_13868 := 0x00
                    /// @src 61:6999:7019  "(false, false, 0, 0)"
                    let expr_13869_component_4 := expr_13868
                    /// @src 61:6992:7019  "return (false, false, 0, 0)"
                    var__13825 := expr_13869_component_1
                    var__13827 := expr_13869_component_2
                    var_deltaPositionBase_13829 := convert_t_rational_0_by_1_to_t_int256(expr_13869_component_3)
                    var_deltaPositionQuote_13831 := convert_t_rational_0_by_1_to_t_int256(expr_13869_component_4)
                    leave
                    /// @src 61:6690:7030  "if (..."
                }
                /// @src 61:7176:7180  "this"
                let expr_13878_address := address()
                /// @src 61:7168:7181  "address(this)"
                let expr_13879 := convert_t_contract$_Perp_$15783_to_t_address(expr_13878_address)
                /// @src 61:7183:7199  "_sqrtAssetStatus"
                let _205_slot := var__sqrtAssetStatus_13822_slot
                let expr_13880_slot := _205_slot
                /// @src 61:7183:7211  "_sqrtAssetStatus.uniswapPool"
                let _206 := add(expr_13880_slot, 0)
                let _207 := read_from_storage_split_offset_0_t_address(_206)
                let expr_13881 := _207
                /// @src 61:7213:7229  "_sqrtAssetStatus"
                let _208_slot := var__sqrtAssetStatus_13822_slot
                let expr_13882_slot := _208_slot
                /// @src 61:7213:7239  "_sqrtAssetStatus.tickLower"
                let _209 := add(expr_13882_slot, 0)
                let _210 := read_from_storage_split_offset_20_t_int24(_209)
                let expr_13883 := _210
                /// @src 61:7241:7257  "_sqrtAssetStatus"
                let _211_slot := var__sqrtAssetStatus_13822_slot
                let expr_13884_slot := _211_slot
                /// @src 61:7241:7267  "_sqrtAssetStatus.tickUpper"
                let _212 := add(expr_13884_slot, 0)
                let _213 := read_from_storage_split_offset_23_t_int24(_212)
                let expr_13885 := _213
                /// @src 61:7127:7277  "getAvailableLiquidityAmount(..."
                let expr_13886 := fun_getAvailableLiquidityAmount_14210(expr_13879, expr_13881, expr_13883, expr_13885)
                /// @src 61:7096:7277  "uint128 totalLiquidityAmount = getAvailableLiquidityAmount(..."
                let var_totalLiquidityAmount_13874 := expr_13886
                /// @src 61:7292:7312  "totalLiquidityAmount"
                let _214 := var_totalLiquidityAmount_13874
                let expr_13888 := _214
                /// @src 61:7316:7317  "0"
                let expr_13889 := 0x00
                /// @src 61:7292:7317  "totalLiquidityAmount == 0"
                let expr_13890 := eq(cleanup_t_uint128(expr_13888), convert_t_rational_0_by_1_to_t_uint128(expr_13889))
                /// @src 61:7288:7571  "if (totalLiquidityAmount == 0) {..."
                if expr_13890 {
                    /// @src 61:7408:7420  "Reallocation"
                    let expr_13897_address := linkersymbol("src/libraries/Reallocation.sol:Reallocation")
                    /// @src 61:7433:7455  "_assetStatusUnderlying"
                    let _215_slot := var__assetStatusUnderlying_13819_slot
                    let expr_13899_slot := _215_slot
                    /// @src 61:7457:7468  "currentTick"
                    let _216 := var_currentTick_13836
                    let expr_13900 := _216
                    /// @src 61:7408:7469  "Reallocation.getNewRange(_assetStatusUnderlying, currentTick)"
                    let _217_mpos := convert_t_struct$_PairStatus_$6102_storage_ptr_to_t_struct$_PairStatus_$6102_memory_ptr(expr_13899_slot)
                    let expr_13901_component_1, expr_13901_component_2 := fun_getNewRange_30446(_217_mpos, expr_13900)
                    /// @src 61:7334:7350  "_sqrtAssetStatus"
                    let _218_slot := var__sqrtAssetStatus_13822_slot
                    let expr_13891_slot := _218_slot
                    /// @src 61:7334:7360  "_sqrtAssetStatus.tickLower"
                    let _219 := add(expr_13891_slot, 0)
                    /// @src 61:7362:7378  "_sqrtAssetStatus"
                    let _220_slot := var__sqrtAssetStatus_13822_slot
                    let expr_13894_slot := _220_slot
                    /// @src 61:7362:7388  "_sqrtAssetStatus.tickUpper"
                    let _221 := add(expr_13894_slot, 0)
                    /// @src 61:7333:7469  "(_sqrtAssetStatus.tickLower, _sqrtAssetStatus.tickUpper) =..."
                    update_storage_value_offset_23_t_int24_to_t_int24(_221, expr_13901_component_2)
                    update_storage_value_offset_20_t_int24_to_t_int24(_219, expr_13901_component_1)
                    /// @src 61:7502:7518  "_sqrtAssetStatus"
                    let _222_slot := var__sqrtAssetStatus_13822_slot
                    let expr_13905_slot := _222_slot
                    fun_saveLastFeeGrowth_14518(expr_13905_slot)
                    /// @src 61:7542:7547  "false"
                    let expr_13908 := 0x00
                    /// @src 61:7541:7560  "(false, true, 0, 0)"
                    let expr_13912_component_1 := expr_13908
                    /// @src 61:7549:7553  "true"
                    let expr_13909 := 0x01
                    /// @src 61:7541:7560  "(false, true, 0, 0)"
                    let expr_13912_component_2 := expr_13909
                    /// @src 61:7555:7556  "0"
                    let expr_13910 := 0x00
                    /// @src 61:7541:7560  "(false, true, 0, 0)"
                    let expr_13912_component_3 := expr_13910
                    /// @src 61:7558:7559  "0"
                    let expr_13911 := 0x00
                    /// @src 61:7541:7560  "(false, true, 0, 0)"
                    let expr_13912_component_4 := expr_13911
                    /// @src 61:7534:7560  "return (false, true, 0, 0)"
                    var__13825 := expr_13912_component_1
                    var__13827 := expr_13912_component_2
                    var_deltaPositionBase_13829 := convert_t_rational_0_by_1_to_t_int256(expr_13912_component_3)
                    var_deltaPositionQuote_13831 := convert_t_rational_0_by_1_to_t_int256(expr_13912_component_4)
                    leave
                    /// @src 61:7288:7571  "if (totalLiquidityAmount == 0) {..."
                }
                /// @src 61:7653:7663  "int24 tick"
                let var_tick_13917
                let zero_t_int24_223 := zero_value_for_split_t_int24()
                var_tick_13917 := zero_t_int24_223
                /// @src 61:7673:7690  "bool isOutOfRange"
                let var_isOutOfRange_13920
                let zero_t_bool_224 := zero_value_for_split_t_bool()
                var_isOutOfRange_13920 := zero_t_bool_224
                /// @src 61:7705:7716  "currentTick"
                let _225 := var_currentTick_13836
                let expr_13922 := _225
                /// @src 61:7719:7735  "_sqrtAssetStatus"
                let _226_slot := var__sqrtAssetStatus_13822_slot
                let expr_13923_slot := _226_slot
                /// @src 61:7719:7745  "_sqrtAssetStatus.tickLower"
                let _227 := add(expr_13923_slot, 0)
                let _228 := read_from_storage_split_offset_20_t_int24(_227)
                let expr_13924 := _228
                /// @src 61:7705:7745  "currentTick < _sqrtAssetStatus.tickLower"
                let expr_13925 := slt(cleanup_t_int24(expr_13922), cleanup_t_int24(expr_13924))
                /// @src 61:7701:8106  "if (currentTick < _sqrtAssetStatus.tickLower) {..."
                switch expr_13925
                case 0 {
                    /// @src 61:7873:7884  "currentTick"
                    let _229 := var_currentTick_13836
                    let expr_13936 := _229
                    /// @src 61:7887:7903  "_sqrtAssetStatus"
                    let _230_slot := var__sqrtAssetStatus_13822_slot
                    let expr_13937_slot := _230_slot
                    /// @src 61:7887:7913  "_sqrtAssetStatus.tickUpper"
                    let _231 := add(expr_13937_slot, 0)
                    let _232 := read_from_storage_split_offset_23_t_int24(_231)
                    let expr_13938 := _232
                    /// @src 61:7873:7913  "currentTick < _sqrtAssetStatus.tickUpper"
                    let expr_13939 := slt(cleanup_t_int24(expr_13936), cleanup_t_int24(expr_13938))
                    /// @src 61:7869:8106  "if (currentTick < _sqrtAssetStatus.tickUpper) {..."
                    switch expr_13939
                    case 0 {
                        /// @src 61:8044:8048  "true"
                        let expr_13946 := 0x01
                        /// @src 61:8029:8048  "isOutOfRange = true"
                        var_isOutOfRange_13920 := expr_13946
                        let expr_13947 := expr_13946
                        /// @src 61:8069:8085  "_sqrtAssetStatus"
                        let _233_slot := var__sqrtAssetStatus_13822_slot
                        let expr_13950_slot := _233_slot
                        /// @src 61:8069:8095  "_sqrtAssetStatus.tickUpper"
                        let _234 := add(expr_13950_slot, 0)
                        let _235 := read_from_storage_split_offset_23_t_int24(_234)
                        let expr_13951 := _235
                        /// @src 61:8062:8095  "tick = _sqrtAssetStatus.tickUpper"
                        var_tick_13917 := expr_13951
                        let expr_13952 := expr_13951
                        /// @src 61:7869:8106  "if (currentTick < _sqrtAssetStatus.tickUpper) {..."
                    }
                    default {
                        /// @src 61:7968:7973  "false"
                        let expr_13941 := 0x00
                        /// @src 61:7953:7973  "isOutOfRange = false"
                        var_isOutOfRange_13920 := expr_13941
                        let expr_13942 := expr_13941
                        /// @src 61:7869:8106  "if (currentTick < _sqrtAssetStatus.tickUpper) {..."
                    }
                    /// @src 61:7701:8106  "if (currentTick < _sqrtAssetStatus.tickLower) {..."
                }
                default {
                    /// @src 61:7801:7805  "true"
                    let expr_13927 := 0x01
                    /// @src 61:7786:7805  "isOutOfRange = true"
                    var_isOutOfRange_13920 := expr_13927
                    let expr_13928 := expr_13927
                    /// @src 61:7826:7842  "_sqrtAssetStatus"
                    let _236_slot := var__sqrtAssetStatus_13822_slot
                    let expr_13931_slot := _236_slot
                    /// @src 61:7826:7852  "_sqrtAssetStatus.tickLower"
                    let _237 := add(expr_13931_slot, 0)
                    let _238 := read_from_storage_split_offset_20_t_int24(_237)
                    let expr_13932 := _238
                    /// @src 61:7819:7852  "tick = _sqrtAssetStatus.tickLower"
                    var_tick_13917 := expr_13932
                    let expr_13933 := expr_13932
                    /// @src 61:7701:8106  "if (currentTick < _sqrtAssetStatus.tickLower) {..."
                }
                /// @src 61:8136:8158  "_assetStatusUnderlying"
                let _239_slot := var__assetStatusUnderlying_13819_slot
                let expr_13958_slot := _239_slot
                /// @src 61:8160:8176  "_sqrtAssetStatus"
                let _240_slot := var__sqrtAssetStatus_13822_slot
                let expr_13959_slot := _240_slot
                /// @src 61:8178:8189  "currentTick"
                let _241 := var_currentTick_13836
                let expr_13960 := _241
                /// @src 61:8191:8211  "totalLiquidityAmount"
                let _242 := var_totalLiquidityAmount_13874
                let expr_13961 := _242
                fun_rebalanceForInRange_14100(expr_13958_slot, expr_13959_slot, expr_13960, expr_13961)
                /// @src 61:8241:8257  "_sqrtAssetStatus"
                let _243_slot := var__sqrtAssetStatus_13822_slot
                let expr_13965_slot := _243_slot
                fun_saveLastFeeGrowth_14518(expr_13965_slot)
                /// @src 61:8331:8343  "isOutOfRange"
                let _244 := var_isOutOfRange_13920
                let expr_13968 := _244
                /// @src 61:8327:8515  "if (isOutOfRange) {..."
                if expr_13968 {
                    /// @src 61:8435:8457  "_assetStatusUnderlying"
                    let _245_slot := var__assetStatusUnderlying_13819_slot
                    let expr_13973_slot := _245_slot
                    /// @src 61:8459:8475  "currentSqrtPrice"
                    let _246 := var_currentSqrtPrice_13834
                    let expr_13974 := _246
                    /// @src 61:8477:8481  "tick"
                    let _247 := var_tick_13917
                    let expr_13975 := _247
                    /// @src 61:8483:8503  "totalLiquidityAmount"
                    let _248 := var_totalLiquidityAmount_13874
                    let expr_13976 := _248
                    /// @src 61:8417:8504  "swapForOutOfRange(_assetStatusUnderlying, currentSqrtPrice, tick, totalLiquidityAmount)"
                    let expr_13977_component_1, expr_13977_component_2 := fun_swapForOutOfRange_14176(expr_13973_slot, expr_13974, expr_13975, expr_13976)
                    /// @src 61:8359:8504  "(deltaPositionBase, deltaPositionQuote) =..."
                    var_deltaPositionQuote_13831 := expr_13977_component_2
                    var_deltaPositionBase_13829 := expr_13977_component_1
                    /// @src 61:8327:8515  "if (isOutOfRange) {..."
                }
                /// @src 61:8533:8537  "true"
                let expr_13982 := 0x01
                /// @src 61:8532:8583  "(true, true, deltaPositionBase, deltaPositionQuote)"
                let expr_13986_component_1 := expr_13982
                /// @src 61:8539:8543  "true"
                let expr_13983 := 0x01
                /// @src 61:8532:8583  "(true, true, deltaPositionBase, deltaPositionQuote)"
                let expr_13986_component_2 := expr_13983
                /// @src 61:8545:8562  "deltaPositionBase"
                let _249 := var_deltaPositionBase_13829
                let expr_13984 := _249
                /// @src 61:8532:8583  "(true, true, deltaPositionBase, deltaPositionQuote)"
                let expr_13986_component_3 := expr_13984
                /// @src 61:8564:8582  "deltaPositionQuote"
                let _250 := var_deltaPositionQuote_13831
                let expr_13985 := _250
                /// @src 61:8532:8583  "(true, true, deltaPositionBase, deltaPositionQuote)"
                let expr_13986_component_4 := expr_13985
                /// @src 61:8525:8583  "return (true, true, deltaPositionBase, deltaPositionQuote)"
                var__13825 := expr_13986_component_1
                var__13827 := expr_13986_component_2
                var_deltaPositionBase_13829 := expr_13986_component_3
                var_deltaPositionQuote_13831 := expr_13986_component_4
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function convert_t_contract$_ERC20_$13305_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_contract$_GlobalDataLibrary_$19653_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_decode_t_uint256_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint256(value)
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
                let _251_slot := var_globalData_19352_slot
                let expr_19357_slot := _251_slot
                /// @src 81:1475:1494  "globalData.lockData"
                let _252 := add(expr_19357_slot, 6)
                let _253_slot := _252
                let expr_19358_slot := _253_slot
                /// @src 81:1475:1501  "globalData.lockData.locker"
                let _254 := add(expr_19358_slot, 0)
                let _255 := read_from_storage_split_offset_0_t_address(_254)
                let expr_19359 := _255
                /// @src 81:1513:1514  "0"
                let expr_19362 := 0x00
                /// @src 81:1505:1515  "address(0)"
                let expr_19363 := convert_t_rational_0_by_1_to_t_address(expr_19362)
                /// @src 81:1475:1515  "globalData.lockData.locker != address(0)"
                let expr_19364 := iszero(eq(cleanup_t_address(expr_19359), cleanup_t_address(expr_19363)))
                /// @src 81:1471:1596  "if (globalData.lockData.locker != address(0)) {..."
                if expr_19364 {
                    /// @src 81:1558:1568  "globalData"
                    let _256_slot := var_globalData_19352_slot
                    let expr_19368_slot := _256_slot
                    /// @src 81:1558:1577  "globalData.lockData"
                    let _257 := add(expr_19368_slot, 6)
                    let _258_slot := _257
                    let expr_19369_slot := _258_slot
                    /// @src 81:1558:1584  "globalData.lockData.locker"
                    let _259 := add(expr_19369_slot, 0)
                    let _260 := read_from_storage_split_offset_0_t_address(_259)
                    let expr_19370 := _260
                    /// @src 81:1538:1585  "IPredyPool.LockedBy(globalData.lockData.locker)"
                    {

                        let _262 := 0

                        mstore(_262, 0x4f4b04cc00000000000000000000000000000000000000000000000000000000)
                        let _261 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_262, 4) , expr_19370)
                        revert(_262, sub(_261, _262))
                    }/// @src 81:1471:1596  "if (globalData.lockData.locker != address(0)) {..."
                }
                /// @src 81:1647:1657  "globalData"
                let _263_slot := var_globalData_19352_slot
                let expr_19381_slot := _263_slot
                /// @src 81:1647:1663  "globalData.pairs"
                let _264 := add(expr_19381_slot, 3)
                let _265_slot := _264
                let expr_19382_slot := _265_slot
                /// @src 81:1664:1670  "pairId"
                let _266 := var_pairId_19354
                let expr_19383 := _266
                /// @src 81:1647:1671  "globalData.pairs[pairId]"
                let _267 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_19382_slot,expr_19383)
                let _268_slot := _267
                let expr_19384_slot := _268_slot
                /// @src 81:1647:1681  "globalData.pairs[pairId].quotePool"
                let _269 := add(expr_19384_slot, 3)
                let _270_slot := _269
                let expr_19385_slot := _270_slot
                /// @src 81:1647:1687  "globalData.pairs[pairId].quotePool.token"
                let _271 := add(expr_19385_slot, 0)
                let _272 := read_from_storage_split_offset_0_t_address(_271)
                let expr_19386 := _272
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
                let _273 := allocate_unbounded()
                mstore(_273, shift_left_224(expr_19388_functionSelector))
                let _274 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_273, 4) , expr_19392)

                let _275 := staticcall(gas(), expr_19388_address,  _273, sub(_274, _273), _273, 32)

                if iszero(_275) { revert_forward_1() }

                let expr_19393
                if _275 {

                    let _276 := 32

                    if gt(_276, returndatasize()) {
                        _276 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_273, _276)

                    // decode return parameters from external try-call into retVars
                    expr_19393 :=  abi_decode_tuple_t_uint256_fromMemory(_273, add(_273, _276))
                }
                /// @src 81:1606:1616  "globalData"
                let _277_slot := var_globalData_19352_slot
                let expr_19375_slot := _277_slot
                /// @src 81:1606:1625  "globalData.lockData"
                let _278 := add(expr_19375_slot, 6)
                let _279_slot := _278
                let expr_19378_slot := _279_slot
                /// @src 81:1606:1638  "globalData.lockData.quoteReserve"
                let _280 := add(expr_19378_slot, 1)
                /// @src 81:1606:1713  "globalData.lockData.quoteReserve = ERC20(globalData.pairs[pairId].quotePool.token).balanceOf(address(this))"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_280, expr_19393)
                let expr_19394 := expr_19393
                /// @src 81:1763:1773  "globalData"
                let _281_slot := var_globalData_19352_slot
                let expr_19402_slot := _281_slot
                /// @src 81:1763:1779  "globalData.pairs"
                let _282 := add(expr_19402_slot, 3)
                let _283_slot := _282
                let expr_19403_slot := _283_slot
                /// @src 81:1780:1786  "pairId"
                let _284 := var_pairId_19354
                let expr_19404 := _284
                /// @src 81:1763:1787  "globalData.pairs[pairId]"
                let _285 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_19403_slot,expr_19404)
                let _286_slot := _285
                let expr_19405_slot := _286_slot
                /// @src 81:1763:1796  "globalData.pairs[pairId].basePool"
                let _287 := add(expr_19405_slot, 17)
                let _288_slot := _287
                let expr_19406_slot := _288_slot
                /// @src 81:1763:1802  "globalData.pairs[pairId].basePool.token"
                let _289 := add(expr_19406_slot, 0)
                let _290 := read_from_storage_split_offset_0_t_address(_289)
                let expr_19407 := _290
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
                let _291 := allocate_unbounded()
                mstore(_291, shift_left_224(expr_19409_functionSelector))
                let _292 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_291, 4) , expr_19413)

                let _293 := staticcall(gas(), expr_19409_address,  _291, sub(_292, _291), _291, 32)

                if iszero(_293) { revert_forward_1() }

                let expr_19414
                if _293 {

                    let _294 := 32

                    if gt(_294, returndatasize()) {
                        _294 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_291, _294)

                    // decode return parameters from external try-call into retVars
                    expr_19414 :=  abi_decode_tuple_t_uint256_fromMemory(_291, add(_291, _294))
                }
                /// @src 81:1723:1733  "globalData"
                let _295_slot := var_globalData_19352_slot
                let expr_19396_slot := _295_slot
                /// @src 81:1723:1742  "globalData.lockData"
                let _296 := add(expr_19396_slot, 6)
                let _297_slot := _296
                let expr_19399_slot := _297_slot
                /// @src 81:1723:1754  "globalData.lockData.baseReserve"
                let _298 := add(expr_19399_slot, 2)
                /// @src 81:1723:1828  "globalData.lockData.baseReserve = ERC20(globalData.pairs[pairId].basePool.token).balanceOf(address(this))"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_298, expr_19414)
                let expr_19415 := expr_19414
                /// @src 81:1867:1877  "msg.sender"
                let expr_19423 := caller()
                /// @src 81:1838:1848  "globalData"
                let _299_slot := var_globalData_19352_slot
                let expr_19417_slot := _299_slot
                /// @src 81:1838:1857  "globalData.lockData"
                let _300 := add(expr_19417_slot, 6)
                let _301_slot := _300
                let expr_19420_slot := _301_slot
                /// @src 81:1838:1864  "globalData.lockData.locker"
                let _302 := add(expr_19420_slot, 0)
                /// @src 81:1838:1877  "globalData.lockData.locker = msg.sender"
                update_storage_value_offset_0_t_address_to_t_address(_302, expr_19423)
                let expr_19424 := expr_19423
                /// @src 81:1916:1922  "pairId"
                let _303 := var_pairId_19354
                let expr_19431 := _303
                /// @src 81:1887:1897  "globalData"
                let _304_slot := var_globalData_19352_slot
                let expr_19426_slot := _304_slot
                /// @src 81:1887:1906  "globalData.lockData"
                let _305 := add(expr_19426_slot, 6)
                let _306_slot := _305
                let expr_19429_slot := _306_slot
                /// @src 81:1887:1913  "globalData.lockData.pairId"
                let _307 := add(expr_19429_slot, 3)
                /// @src 81:1887:1922  "globalData.lockData.pairId = pairId"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_307, expr_19431)
                let expr_19432 := expr_19431

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

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

            /// @ast-id 19473
            /// @src 81:1935:2395  "function callSettlementCallback(..."
            function fun_callSettlementCallback_19473(var_globalData_19438_slot, var_settlementData_19440_mpos, var_deltaBaseAmount_19442) {

                /// @src 81:2135:2145  "globalData"
                let _308_slot := var_globalData_19438_slot
                let expr_19447_slot := _308_slot
                /// @src 81:2135:2154  "globalData.lockData"
                let _309 := add(expr_19447_slot, 6)
                let _310_slot := _309
                let expr_19448_slot := _310_slot
                /// @src 81:2135:2161  "globalData.lockData.pairId"
                let _311 := add(expr_19448_slot, 3)
                let _312 := read_from_storage_split_offset_0_t_uint256(_311)
                let expr_19449 := _312
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
                let _313_slot := var_globalData_19438_slot
                let expr_19456_slot := _313_slot
                /// @src 81:2228:2244  "globalData.pairs"
                let _314 := add(expr_19456_slot, 3)
                let _315_slot := _314
                let expr_19457_slot := _315_slot
                /// @src 81:2245:2251  "pairId"
                let _316 := var_pairId_19446
                let expr_19458 := _316
                /// @src 81:2228:2252  "globalData.pairs[pairId]"
                let _317 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_19457_slot,expr_19458)
                let _318_slot := _317
                let expr_19459_slot := _318_slot
                /// @src 81:2228:2262  "globalData.pairs[pairId].quotePool"
                let _319 := add(expr_19459_slot, 3)
                let _320_slot := _319
                let expr_19460_slot := _320_slot
                /// @src 81:2228:2268  "globalData.pairs[pairId].quotePool.token"
                let _321 := add(expr_19460_slot, 0)
                let _322 := read_from_storage_split_offset_0_t_address(_321)
                let expr_19461 := _322
                /// @src 81:2282:2292  "globalData"
                let _323_slot := var_globalData_19438_slot
                let expr_19462_slot := _323_slot
                /// @src 81:2282:2298  "globalData.pairs"
                let _324 := add(expr_19462_slot, 3)
                let _325_slot := _324
                let expr_19463_slot := _325_slot
                /// @src 81:2299:2305  "pairId"
                let _326 := var_pairId_19446
                let expr_19464 := _326
                /// @src 81:2282:2306  "globalData.pairs[pairId]"
                let _327 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_19463_slot,expr_19464)
                let _328_slot := _327
                let expr_19465_slot := _328_slot
                /// @src 81:2282:2315  "globalData.pairs[pairId].basePool"
                let _329 := add(expr_19465_slot, 17)
                let _330_slot := _329
                let expr_19466_slot := _330_slot
                /// @src 81:2282:2321  "globalData.pairs[pairId].basePool.token"
                let _331 := add(expr_19466_slot, 0)
                let _332 := read_from_storage_split_offset_0_t_address(_331)
                let expr_19467 := _332
                /// @src 81:2335:2349  "settlementData"
                let _333_mpos := var_settlementData_19440_mpos
                let expr_19468_mpos := _333_mpos
                /// @src 81:2363:2378  "deltaBaseAmount"
                let _334 := var_deltaBaseAmount_19442
                let expr_19469 := _334
                /// @src 81:2172:2388  "IHooks(msg.sender).predySettlementCallback(..."

                if iszero(extcodesize(expr_19455_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _335 := allocate_unbounded()
                mstore(_335, shift_left_224(expr_19455_functionSelector))
                let _336 := abi_encode_tuple_t_address_t_address_t_bytes_memory_ptr_t_int256__to_t_address_t_address_t_bytes_memory_ptr_t_int256__fromStack(add(_335, 4) , expr_19461, expr_19467, expr_19468_mpos, expr_19469)

                let _337 := call(gas(), expr_19455_address,  0,  _335, sub(_336, _335), _335, 0)

                if iszero(_337) { revert_forward_1() }

                if _337 {

                    let _338 := 0

                    if gt(_338, returndatasize()) {
                        _338 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_335, _338)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_335, add(_335, _338))
                }

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

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

            function clear_struct_storage_t_struct$_LockData_$34431_storage(slot) {

                sstore(add(slot, 0), 0)

                storage_set_to_zero_t_uint256(add(slot, 1), 0)

                storage_set_to_zero_t_uint256(add(slot, 2), 0)

                storage_set_to_zero_t_uint256(add(slot, 3), 0)

            }

            function storage_set_to_zero_t_struct$_LockData_$34431_storage(slot, offset) {
                if iszero(eq(offset, 0)) { panic_error_0x00() }
                clear_struct_storage_t_struct$_LockData_$34431_storage(slot)
            }

            /// @ast-id 19503
            /// @src 81:2432:2712  "function finalizeLock(GlobalDataLibrary.GlobalData storage globalData)..."
            function fun_finalizeLock_19503(var_globalData_19477_slot) -> var_paidQuote_19480, var_paidBase_19482 {
                /// @src 81:2537:2553  "int256 paidQuote"
                let zero_t_int256_339 := zero_value_for_split_t_int256()
                var_paidQuote_19480 := zero_t_int256_339
                /// @src 81:2555:2570  "int256 paidBase"
                let zero_t_int256_340 := zero_value_for_split_t_int256()
                var_paidBase_19482 := zero_t_int256_340

                /// @src 81:2605:2615  "globalData"
                let _341_slot := var_globalData_19477_slot
                let expr_19486_slot := _341_slot
                /// @src 81:2617:2621  "true"
                let expr_19487 := 0x01
                /// @src 81:2598:2622  "settle(globalData, true)"
                let expr_19488 := fun_settle_19652(expr_19486_slot, expr_19487)
                /// @src 81:2586:2622  "paidQuote = settle(globalData, true)"
                var_paidQuote_19480 := expr_19488
                let expr_19489 := expr_19488
                /// @src 81:2650:2660  "globalData"
                let _342_slot := var_globalData_19477_slot
                let expr_19493_slot := _342_slot
                /// @src 81:2662:2667  "false"
                let expr_19494 := 0x00
                /// @src 81:2643:2668  "settle(globalData, false)"
                let expr_19495 := fun_settle_19652(expr_19493_slot, expr_19494)
                /// @src 81:2632:2668  "paidBase = settle(globalData, false)"
                var_paidBase_19482 := expr_19495
                let expr_19496 := expr_19495
                /// @src 81:2686:2696  "globalData"
                let _343_slot := var_globalData_19477_slot
                let expr_19498_slot := _343_slot
                /// @src 81:2686:2705  "globalData.lockData"
                let _344 := add(expr_19498_slot, 6)
                /// @src 81:2679:2705  "delete globalData.lockData"
                storage_set_to_zero_t_struct$_LockData_$34431_storage(_344, 0)

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function store_literal_in_memory_8bf8f0d780f13740660fe63233b17f96cb1813889e7dce4121e55b817b367b72(memPtr) {

                mstore(add(memPtr, 0), "TRANSFER_FAILED")

            }

            function abi_encode_t_stringliteral_8bf8f0d780f13740660fe63233b17f96cb1813889e7dce4121e55b817b367b72_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 15)
                store_literal_in_memory_8bf8f0d780f13740660fe63233b17f96cb1813889e7dce4121e55b817b367b72(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_8bf8f0d780f13740660fe63233b17f96cb1813889e7dce4121e55b817b367b72__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_8bf8f0d780f13740660fe63233b17f96cb1813889e7dce4121e55b817b367b72_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_8bf8f0d780f13740660fe63233b17f96cb1813889e7dce4121e55b817b367b72(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_8bf8f0d780f13740660fe63233b17f96cb1813889e7dce4121e55b817b367b72__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 13369
            /// @src 14:3116:4723  "function safeTransfer(..."
            function fun_safeTransfer_13369(var_token_13352_address, var_to_13354, var_amount_13356) {

                /// @src 14:3228:3240  "bool success"
                let var_success_13360
                let zero_t_bool_345 := zero_value_for_split_t_bool()
                var_success_13360 := zero_t_bool_345
                /// @src 14:3294:4671  "assembly {..."
                {
                    let usr$freeMemoryPointer := mload(0x40)
                    mstore(usr$freeMemoryPointer, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
                    mstore(add(usr$freeMemoryPointer, 4), and(var_to_13354, 0xffffffffffffffffffffffffffffffffffffffff))
                    mstore(add(usr$freeMemoryPointer, 36), var_amount_13356)
                    var_success_13360 := and(or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())), call(gas(), var_token_13352_address, 0, usr$freeMemoryPointer, 68, 0, 32))
                }
                /// @src 14:4689:4696  "success"
                let _346 := var_success_13360
                let expr_13364 := _346
                /// @src 14:4681:4716  "require(success, \"TRANSFER_FAILED\")"
                require_helper_t_stringliteral_8bf8f0d780f13740660fe63233b17f96cb1813889e7dce4121e55b817b367b72(expr_13364)

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function convert_t_uint64_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint64(value)))
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

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            /// @ast-id 34418
            /// @src 60:85:245  "function getRebalanceCacheId(uint256 pairId, uint64 rebalanceId) internal pure returns (uint256) {..."
            function fun_getRebalanceCacheId_34418(var_pairId_34400, var_rebalanceId_34402) -> var__34405 {
                /// @src 60:173:180  "uint256"
                let zero_t_uint256_347 := zero_value_for_split_t_uint256()
                var__34405 := zero_t_uint256_347

                /// @src 60:199:205  "pairId"
                let _348 := var_pairId_34400
                let expr_34407 := _348
                /// @src 60:208:224  "type(uint64).max"
                let expr_34412 := 0xffffffffffffffff
                /// @src 60:199:224  "pairId * type(uint64).max"
                let expr_34413 := checked_mul_t_uint256(expr_34407, convert_t_uint64_to_t_uint256(expr_34412))

                /// @src 60:227:238  "rebalanceId"
                let _349 := var_rebalanceId_34402
                let expr_34414 := _349
                /// @src 60:199:238  "pairId * type(uint64).max + rebalanceId"
                let expr_34415 := checked_add_t_uint256(expr_34413, convert_t_uint64_to_t_uint256(expr_34414))

                /// @src 60:192:238  "return pairId * type(uint64).max + rebalanceId"
                var__34405 := expr_34415
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function increment_t_uint64(value) -> ret {
                value := cleanup_t_uint64(value)
                if eq(value, 0xffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            function update_byte_slice_8_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint64_to_t_uint64(value) -> converted {
                converted := cleanup_t_uint64(identity(cleanup_t_uint64(value)))
            }

            function prepare_store_t_uint64(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_uint64_to_t_uint64(slot, value_0) {
                let convertedValue_0 := convert_t_uint64_to_t_uint64(value_0)
                sstore(slot, update_byte_slice_8_shift_0(sload(slot), prepare_store_t_uint64(convertedValue_0)))
            }

            /// @ast-id 15782
            /// @src 61:29749:30126  "function finalizeReallocation(SqrtPerpAssetStatus storage sqrtPerpStatus) internal {..."
            function fun_finalizeReallocation_15782(var_sqrtPerpStatus_15763_slot) {

                /// @src 61:30022:30036  "sqrtPerpStatus"
                let _350_slot := var_sqrtPerpStatus_15763_slot
                let expr_15769_slot := _350_slot
                /// @src 61:30022:30048  "sqrtPerpStatus.totalAmount"
                let _351 := add(expr_15769_slot, 2)
                let _352 := read_from_storage_split_offset_0_t_uint256(_351)
                let expr_15770 := _352
                /// @src 61:30051:30065  "sqrtPerpStatus"
                let _353_slot := var_sqrtPerpStatus_15763_slot
                let expr_15771_slot := _353_slot
                /// @src 61:30051:30080  "sqrtPerpStatus.borrowedAmount"
                let _354 := add(expr_15771_slot, 3)
                let _355 := read_from_storage_split_offset_0_t_uint256(_354)
                let expr_15772 := _355
                /// @src 61:30022:30080  "sqrtPerpStatus.totalAmount + sqrtPerpStatus.borrowedAmount"
                let expr_15773 := checked_add_t_uint256(expr_15770, expr_15772)

                /// @src 61:29974:29988  "sqrtPerpStatus"
                let _356_slot := var_sqrtPerpStatus_15763_slot
                let expr_15766_slot := _356_slot
                /// @src 61:29974:30019  "sqrtPerpStatus.lastRebalanceTotalSquartAmount"
                let _357 := add(expr_15766_slot, 4)
                /// @src 61:29974:30080  "sqrtPerpStatus.lastRebalanceTotalSquartAmount = sqrtPerpStatus.totalAmount + sqrtPerpStatus.borrowedAmount"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_357, expr_15773)
                let expr_15774 := expr_15773
                /// @src 61:30090:30104  "sqrtPerpStatus"
                let _358_slot := var_sqrtPerpStatus_15763_slot
                let expr_15776_slot := _358_slot
                /// @src 61:30090:30117  "sqrtPerpStatus.numRebalance"
                let _359 := add(expr_15776_slot, 1)
                /// @src 61:30090:30119  "sqrtPerpStatus.numRebalance++"
                let _361 := read_from_storage_split_offset_0_t_uint64(_359)
                let _360 := increment_t_uint64(_361)
                update_storage_value_offset_0_t_uint64_to_t_uint64(_359, _360)
                let expr_15779 := _361

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function wrapping_sub_t_uint256(x, y) -> diff {
                diff := cleanup_t_uint256(sub(x, y))
            }

            function convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(value)

            }

            function cleanup_t_rational_1000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000_by_1(value)))
            }

            function checked_div_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }

                r := div(x, y)
            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

            }

            /// @ast-id 14485
            /// @src 61:13015:14664  "function updateFeeAndPremiumGrowth(uint256 _pairId, SqrtPerpAssetStatus storage _assetStatus) internal {..."
            function fun_updateFeeAndPremiumGrowth_14485(var__pairId_14324, var__assetStatus_14327_slot) {

                /// @src 61:13132:13144  "_assetStatus"
                let _362_slot := var__assetStatus_14327_slot
                let expr_14330_slot := _362_slot
                /// @src 61:13132:13156  "_assetStatus.totalAmount"
                let _363 := add(expr_14330_slot, 2)
                let _364 := read_from_storage_split_offset_0_t_uint256(_363)
                let expr_14331 := _364
                /// @src 61:13160:13161  "0"
                let expr_14332 := 0x00
                /// @src 61:13132:13161  "_assetStatus.totalAmount == 0"
                let expr_14333 := eq(cleanup_t_uint256(expr_14331), convert_t_rational_0_by_1_to_t_uint256(expr_14332))
                /// @src 61:13128:13194  "if (_assetStatus.totalAmount == 0) {..."
                if expr_14333 {
                    /// @src 61:13177:13184  "return;"
                    leave
                    /// @src 61:13128:13194  "if (_assetStatus.totalAmount == 0) {..."
                }
                /// @src 61:13279:13288  "UniHelper"
                let expr_14341_address := linkersymbol("src/libraries/UniHelper.sol:UniHelper")
                /// @src 61:13308:13320  "_assetStatus"
                let _365_slot := var__assetStatus_14327_slot
                let expr_14343_slot := _365_slot
                /// @src 61:13308:13332  "_assetStatus.uniswapPool"
                let _366 := add(expr_14343_slot, 0)
                let _367 := read_from_storage_split_offset_0_t_address(_366)
                let expr_14344 := _367
                /// @src 61:13334:13346  "_assetStatus"
                let _368_slot := var__assetStatus_14327_slot
                let expr_14345_slot := _368_slot
                /// @src 61:13334:13356  "_assetStatus.tickLower"
                let _369 := add(expr_14345_slot, 0)
                let _370 := read_from_storage_split_offset_20_t_int24(_369)
                let expr_14346 := _370
                /// @src 61:13358:13370  "_assetStatus"
                let _371_slot := var__assetStatus_14327_slot
                let expr_14347_slot := _371_slot
                /// @src 61:13358:13380  "_assetStatus.tickUpper"
                let _372 := add(expr_14347_slot, 0)
                let _373 := read_from_storage_split_offset_23_t_int24(_372)
                let expr_14348 := _373
                /// @src 61:13279:13381  "UniHelper.getFeeGrowthInside(_assetStatus.uniswapPool, _assetStatus.tickLower, _assetStatus.tickUpper)"
                let expr_14349_component_1, expr_14349_component_2 := fun_getFeeGrowthInside_16941(expr_14344, expr_14346, expr_14348)
                /// @src 61:13204:13381  "(uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) =..."
                let var_feeGrowthInside0X128_14338 := expr_14349_component_1
                let var_feeGrowthInside1X128_14340 := expr_14349_component_2
                /// @src 61:13392:13402  "uint256 f0"
                let var_f0_14352
                let zero_t_uint256_374 := zero_value_for_split_t_uint256()
                var_f0_14352 := zero_t_uint256_374
                /// @src 61:13412:13422  "uint256 f1"
                let var_f1_14355
                let zero_t_uint256_375 := zero_value_for_split_t_uint256()
                var_f1_14355 := zero_t_uint256_375
                /// @src 61:13522:13542  "feeGrowthInside0X128"
                let _376 := var_feeGrowthInside0X128_14338
                let expr_14358 := _376
                /// @src 61:13545:13557  "_assetStatus"
                let _377_slot := var__assetStatus_14327_slot
                let expr_14359_slot := _377_slot
                /// @src 61:13545:13572  "_assetStatus.lastFee0Growth"
                let _378 := add(expr_14359_slot, 5)
                let _379 := read_from_storage_split_offset_0_t_uint256(_378)
                let expr_14360 := _379
                /// @src 61:13522:13572  "feeGrowthInside0X128 - _assetStatus.lastFee0Growth"
                let expr_14361 := wrapping_sub_t_uint256(expr_14358, expr_14360)

                /// @src 61:13517:13572  "f0 = feeGrowthInside0X128 - _assetStatus.lastFee0Growth"
                var_f0_14352 := expr_14361
                let expr_14362 := expr_14361
                /// @src 61:13591:13611  "feeGrowthInside1X128"
                let _380 := var_feeGrowthInside1X128_14340
                let expr_14365 := _380
                /// @src 61:13614:13626  "_assetStatus"
                let _381_slot := var__assetStatus_14327_slot
                let expr_14366_slot := _381_slot
                /// @src 61:13614:13641  "_assetStatus.lastFee1Growth"
                let _382 := add(expr_14366_slot, 6)
                let _383 := read_from_storage_split_offset_0_t_uint256(_382)
                let expr_14367 := _383
                /// @src 61:13591:13641  "feeGrowthInside1X128 - _assetStatus.lastFee1Growth"
                let expr_14368 := wrapping_sub_t_uint256(expr_14365, expr_14367)

                /// @src 61:13586:13641  "f1 = feeGrowthInside1X128 - _assetStatus.lastFee1Growth"
                var_f1_14355 := expr_14368
                let expr_14369 := expr_14368
                /// @src 61:13666:13668  "f0"
                let _384 := var_f0_14352
                let expr_14372 := _384
                /// @src 61:13672:13673  "0"
                let expr_14373 := 0x00
                /// @src 61:13666:13673  "f0 == 0"
                let expr_14374 := eq(cleanup_t_uint256(expr_14372), convert_t_rational_0_by_1_to_t_uint256(expr_14373))
                /// @src 61:13666:13684  "f0 == 0 && f1 == 0"
                let expr_14378 := expr_14374
                if expr_14378 {
                    /// @src 61:13677:13679  "f1"
                    let _385 := var_f1_14355
                    let expr_14375 := _385
                    /// @src 61:13683:13684  "0"
                    let expr_14376 := 0x00
                    /// @src 61:13677:13684  "f1 == 0"
                    let expr_14377 := eq(cleanup_t_uint256(expr_14375), convert_t_rational_0_by_1_to_t_uint256(expr_14376))
                    /// @src 61:13666:13684  "f0 == 0 && f1 == 0"
                    expr_14378 := expr_14377
                }
                /// @src 61:13662:13717  "if (f0 == 0 && f1 == 0) {..."
                if expr_14378 {
                    /// @src 61:13700:13707  "return;"
                    leave
                    /// @src 61:13662:13717  "if (f0 == 0 && f1 == 0) {..."
                }
                /// @src 61:13769:13781  "_assetStatus"
                let _386_slot := var__assetStatus_14327_slot
                let expr_14385_slot := _386_slot
                /// @src 61:13749:13782  "getUtilizationRatio(_assetStatus)"
                let _387_mpos := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(expr_14385_slot)
                let expr_14386 := fun_getUtilizationRatio_15131(_387_mpos)
                /// @src 61:13727:13782  "uint256 utilization = getUtilizationRatio(_assetStatus)"
                let var_utilization_14383 := expr_14386
                /// @src 61:13815:13832  "PremiumCurveModel"
                let expr_14390_address := linkersymbol("src/libraries/PremiumCurveModel.sol:PremiumCurveModel")
                /// @src 61:13855:13866  "utilization"
                let _388 := var_utilization_14383
                let expr_14392 := _388
                /// @src 61:13815:13867  "PremiumCurveModel.calculatePremiumCurve(utilization)"
                let expr_14393 := fun_calculatePremiumCurve_30359(expr_14392)
                /// @src 61:13793:13867  "uint256 spreadParam = PremiumCurveModel.calculatePremiumCurve(utilization)"
                let var_spreadParam_14389 := expr_14393
                /// @src 61:13905:13913  "FullMath"
                let expr_14398_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 61:13934:13936  "f0"
                let _389 := var_f0_14352
                let expr_14400 := _389
                /// @src 61:13938:13950  "_assetStatus"
                let _390_slot := var__assetStatus_14327_slot
                let expr_14401_slot := _390_slot
                /// @src 61:13938:13962  "_assetStatus.totalAmount"
                let _391 := add(expr_14401_slot, 2)
                let _392 := read_from_storage_split_offset_0_t_uint256(_391)
                let expr_14402 := _392
                /// @src 61:13965:13977  "_assetStatus"
                let _393_slot := var__assetStatus_14327_slot
                let expr_14403_slot := _393_slot
                /// @src 61:13965:13992  "_assetStatus.borrowedAmount"
                let _394 := add(expr_14403_slot, 3)
                let _395 := read_from_storage_split_offset_0_t_uint256(_394)
                let expr_14404 := _395
                /// @src 61:13995:14006  "spreadParam"
                let _396 := var_spreadParam_14389
                let expr_14405 := _396
                /// @src 61:13965:14006  "_assetStatus.borrowedAmount * spreadParam"
                let expr_14406 := checked_mul_t_uint256(expr_14404, expr_14405)

                /// @src 61:14009:14013  "1000"
                let expr_14407 := 0x03e8
                /// @src 61:13965:14013  "_assetStatus.borrowedAmount * spreadParam / 1000"
                let expr_14408 := checked_div_t_uint256(expr_14406, convert_t_rational_1000_by_1_to_t_uint256(expr_14407))

                /// @src 61:13938:14013  "_assetStatus.totalAmount + _assetStatus.borrowedAmount * spreadParam / 1000"
                let expr_14409 := checked_add_t_uint256(expr_14402, expr_14408)

                /// @src 61:14015:14027  "_assetStatus"
                let _397_slot := var__assetStatus_14327_slot
                let expr_14410_slot := _397_slot
                /// @src 61:14015:14039  "_assetStatus.totalAmount"
                let _398 := add(expr_14410_slot, 2)
                let _399 := read_from_storage_split_offset_0_t_uint256(_398)
                let expr_14411 := _399
                /// @src 61:13905:14049  "FullMath.mulDiv(..."
                let expr_14412 := fun_mulDiv_32512(expr_14400, expr_14409, expr_14411)
                /// @src 61:13878:13890  "_assetStatus"
                let _400_slot := var__assetStatus_14327_slot
                let expr_14395_slot := _400_slot
                /// @src 61:13878:13901  "_assetStatus.fee0Growth"
                let _401 := add(expr_14395_slot, 9)
                /// @src 61:13878:14049  "_assetStatus.fee0Growth += FullMath.mulDiv(..."
                let _402 := read_from_storage_split_offset_0_t_uint256(_401)
                let expr_14413 := checked_add_t_uint256(_402, expr_14412)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_401, expr_14413)
                /// @src 61:14086:14094  "FullMath"
                let expr_14418_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 61:14115:14117  "f1"
                let _403 := var_f1_14355
                let expr_14420 := _403
                /// @src 61:14119:14131  "_assetStatus"
                let _404_slot := var__assetStatus_14327_slot
                let expr_14421_slot := _404_slot
                /// @src 61:14119:14143  "_assetStatus.totalAmount"
                let _405 := add(expr_14421_slot, 2)
                let _406 := read_from_storage_split_offset_0_t_uint256(_405)
                let expr_14422 := _406
                /// @src 61:14146:14158  "_assetStatus"
                let _407_slot := var__assetStatus_14327_slot
                let expr_14423_slot := _407_slot
                /// @src 61:14146:14173  "_assetStatus.borrowedAmount"
                let _408 := add(expr_14423_slot, 3)
                let _409 := read_from_storage_split_offset_0_t_uint256(_408)
                let expr_14424 := _409
                /// @src 61:14176:14187  "spreadParam"
                let _410 := var_spreadParam_14389
                let expr_14425 := _410
                /// @src 61:14146:14187  "_assetStatus.borrowedAmount * spreadParam"
                let expr_14426 := checked_mul_t_uint256(expr_14424, expr_14425)

                /// @src 61:14190:14194  "1000"
                let expr_14427 := 0x03e8
                /// @src 61:14146:14194  "_assetStatus.borrowedAmount * spreadParam / 1000"
                let expr_14428 := checked_div_t_uint256(expr_14426, convert_t_rational_1000_by_1_to_t_uint256(expr_14427))

                /// @src 61:14119:14194  "_assetStatus.totalAmount + _assetStatus.borrowedAmount * spreadParam / 1000"
                let expr_14429 := checked_add_t_uint256(expr_14422, expr_14428)

                /// @src 61:14196:14208  "_assetStatus"
                let _411_slot := var__assetStatus_14327_slot
                let expr_14430_slot := _411_slot
                /// @src 61:14196:14220  "_assetStatus.totalAmount"
                let _412 := add(expr_14430_slot, 2)
                let _413 := read_from_storage_split_offset_0_t_uint256(_412)
                let expr_14431 := _413
                /// @src 61:14086:14230  "FullMath.mulDiv(..."
                let expr_14432 := fun_mulDiv_32512(expr_14420, expr_14429, expr_14431)
                /// @src 61:14059:14071  "_assetStatus"
                let _414_slot := var__assetStatus_14327_slot
                let expr_14415_slot := _414_slot
                /// @src 61:14059:14082  "_assetStatus.fee1Growth"
                let _415 := add(expr_14415_slot, 10)
                /// @src 61:14059:14230  "_assetStatus.fee1Growth += FullMath.mulDiv(..."
                let _416 := read_from_storage_split_offset_0_t_uint256(_415)
                let expr_14433 := checked_add_t_uint256(_416, expr_14432)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_415, expr_14433)
                /// @src 61:14278:14286  "FullMath"
                let expr_14438_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 61:14294:14296  "f0"
                let _417 := var_f0_14352
                let expr_14440 := _417
                /// @src 61:14298:14302  "1000"
                let expr_14441 := 0x03e8
                /// @src 61:14305:14316  "spreadParam"
                let _418 := var_spreadParam_14389
                let expr_14442 := _418
                /// @src 61:14298:14316  "1000 + spreadParam"
                let expr_14443 := checked_add_t_uint256(convert_t_rational_1000_by_1_to_t_uint256(expr_14441), expr_14442)

                /// @src 61:14318:14322  "1000"
                let expr_14444 := 0x03e8
                /// @src 61:14278:14323  "FullMath.mulDiv(f0, 1000 + spreadParam, 1000)"
                let _419 := convert_t_rational_1000_by_1_to_t_uint256(expr_14444)
                let expr_14445 := fun_mulDiv_32512(expr_14440, expr_14443, _419)
                /// @src 61:14241:14253  "_assetStatus"
                let _420_slot := var__assetStatus_14327_slot
                let expr_14435_slot := _420_slot
                /// @src 61:14241:14274  "_assetStatus.borrowPremium0Growth"
                let _421 := add(expr_14435_slot, 7)
                /// @src 61:14241:14323  "_assetStatus.borrowPremium0Growth += FullMath.mulDiv(f0, 1000 + spreadParam, 1000)"
                let _422 := read_from_storage_split_offset_0_t_uint256(_421)
                let expr_14446 := checked_add_t_uint256(_422, expr_14445)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_421, expr_14446)
                /// @src 61:14370:14378  "FullMath"
                let expr_14451_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 61:14386:14388  "f1"
                let _423 := var_f1_14355
                let expr_14453 := _423
                /// @src 61:14390:14394  "1000"
                let expr_14454 := 0x03e8
                /// @src 61:14397:14408  "spreadParam"
                let _424 := var_spreadParam_14389
                let expr_14455 := _424
                /// @src 61:14390:14408  "1000 + spreadParam"
                let expr_14456 := checked_add_t_uint256(convert_t_rational_1000_by_1_to_t_uint256(expr_14454), expr_14455)

                /// @src 61:14410:14414  "1000"
                let expr_14457 := 0x03e8
                /// @src 61:14370:14415  "FullMath.mulDiv(f1, 1000 + spreadParam, 1000)"
                let _425 := convert_t_rational_1000_by_1_to_t_uint256(expr_14457)
                let expr_14458 := fun_mulDiv_32512(expr_14453, expr_14456, _425)
                /// @src 61:14333:14345  "_assetStatus"
                let _426_slot := var__assetStatus_14327_slot
                let expr_14448_slot := _426_slot
                /// @src 61:14333:14366  "_assetStatus.borrowPremium1Growth"
                let _427 := add(expr_14448_slot, 8)
                /// @src 61:14333:14415  "_assetStatus.borrowPremium1Growth += FullMath.mulDiv(f1, 1000 + spreadParam, 1000)"
                let _428 := read_from_storage_split_offset_0_t_uint256(_427)
                let expr_14459 := checked_add_t_uint256(_428, expr_14458)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_427, expr_14459)
                /// @src 61:14456:14476  "feeGrowthInside0X128"
                let _429 := var_feeGrowthInside0X128_14338
                let expr_14464 := _429
                /// @src 61:14426:14438  "_assetStatus"
                let _430_slot := var__assetStatus_14327_slot
                let expr_14461_slot := _430_slot
                /// @src 61:14426:14453  "_assetStatus.lastFee0Growth"
                let _431 := add(expr_14461_slot, 5)
                /// @src 61:14426:14476  "_assetStatus.lastFee0Growth = feeGrowthInside0X128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_431, expr_14464)
                let expr_14465 := expr_14464
                /// @src 61:14516:14536  "feeGrowthInside1X128"
                let _432 := var_feeGrowthInside1X128_14340
                let expr_14470 := _432
                /// @src 61:14486:14498  "_assetStatus"
                let _433_slot := var__assetStatus_14327_slot
                let expr_14467_slot := _433_slot
                /// @src 61:14486:14513  "_assetStatus.lastFee1Growth"
                let _434 := add(expr_14467_slot, 6)
                /// @src 61:14486:14536  "_assetStatus.lastFee1Growth = feeGrowthInside1X128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_434, expr_14470)
                let expr_14471 := expr_14470
                /// @src 61:14573:14580  "_pairId"
                let _435 := var__pairId_14324
                let expr_14474 := _435
                /// @src 61:14582:14594  "_assetStatus"
                let _436_slot := var__assetStatus_14327_slot
                let expr_14475_slot := _436_slot
                /// @src 61:14582:14606  "_assetStatus.totalAmount"
                let _437 := add(expr_14475_slot, 2)
                let _438 := read_from_storage_split_offset_0_t_uint256(_437)
                let expr_14476 := _438
                /// @src 61:14608:14620  "_assetStatus"
                let _439_slot := var__assetStatus_14327_slot
                let expr_14477_slot := _439_slot
                /// @src 61:14608:14635  "_assetStatus.borrowedAmount"
                let _440 := add(expr_14477_slot, 3)
                let _441 := read_from_storage_split_offset_0_t_uint256(_440)
                let expr_14478 := _441
                /// @src 61:14637:14639  "f0"
                let _442 := var_f0_14352
                let expr_14479 := _442
                /// @src 61:14641:14643  "f1"
                let _443 := var_f1_14355
                let expr_14480 := _443
                /// @src 61:14645:14656  "spreadParam"
                let _444 := var_spreadParam_14389
                let expr_14481 := _444
                /// @src 61:14552:14657  "PremiumGrowthUpdated(_pairId, _assetStatus.totalAmount, _assetStatus.borrowedAmount, f0, f1, spreadParam)"
                let _445 := 0x4f3e43e713f947281f0deec9c972d8bed677658e3f98271fbec9a52ca8f79bd7
                let _446 := convert_t_uint256_to_t_uint256(expr_14474)
                {
                    let _447 := allocate_unbounded()
                    let _448 := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__fromStack(_447 , expr_14476, expr_14478, expr_14479, expr_14480, expr_14481)
                    log2(_447, sub(_448, _447) , _445, _446)
                }
            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_AssetStatus_$30934_memory_ptr(value)

            }

            function convert_t_struct$_IRMParams_$13447_storage_to_t_struct$_IRMParams_$13447_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_IRMParams_$13447_memory_ptr(value)

            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            function cleanup_t_rational_31536000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_31536000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_31536000_by_1(value)))
            }

            function convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(value) -> converted {
                converted := value
            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            /// @ast-id 33255
            /// @src 56:1621:2546  "function applyInterestForPoolStatus(Perp.AssetPoolStatus storage poolStatus, uint256 lastUpdateTimestamp, uint8 fee)..."
            function fun_applyInterestForPoolStatus_33255(var_poolStatus_33181_slot, var_lastUpdateTimestamp_33183, var_fee_33185) -> var_interestRate_33188 {
                /// @src 56:1772:1792  "uint256 interestRate"
                let zero_t_uint256_449 := zero_value_for_split_t_uint256()
                var_interestRate_33188 := zero_t_uint256_449

                /// @src 56:1812:1827  "block.timestamp"
                let expr_33191 := timestamp()
                /// @src 56:1831:1850  "lastUpdateTimestamp"
                let _450 := var_lastUpdateTimestamp_33183
                let expr_33192 := _450
                /// @src 56:1812:1850  "block.timestamp <= lastUpdateTimestamp"
                let expr_33193 := iszero(gt(cleanup_t_uint256(expr_33191), cleanup_t_uint256(expr_33192)))
                /// @src 56:1808:1885  "if (block.timestamp <= lastUpdateTimestamp) {..."
                if expr_33193 {
                    /// @src 56:1873:1874  "0"
                    let expr_33194 := 0x00
                    /// @src 56:1866:1874  "return 0"
                    var_interestRate_33188 := convert_t_rational_0_by_1_to_t_uint256(expr_33194)
                    leave
                    /// @src 56:1808:1885  "if (block.timestamp <= lastUpdateTimestamp) {..."
                }
                /// @src 56:1922:1932  "poolStatus"
                let _451_slot := var_poolStatus_33181_slot
                let expr_33200_slot := _451_slot
                /// @src 56:1922:1944  "poolStatus.tokenStatus"
                let _452 := add(expr_33200_slot, 2)
                let _453_slot := _452
                let expr_33201_slot := _453_slot
                /// @src 56:1922:1964  "poolStatus.tokenStatus.getUtilizationRatio"
                let expr_33202_self_mpos := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_33201_slot)
                /// @src 56:1922:1966  "poolStatus.tokenStatus.getUtilizationRatio()"
                let expr_33203 := fun_getUtilizationRatio_31668(expr_33202_self_mpos)
                /// @src 56:1895:1966  "uint256 utilizationRatio = poolStatus.tokenStatus.getUtilizationRatio()"
                let var_utilizationRatio_33199 := expr_33203
                /// @src 56:2044:2060  "utilizationRatio"
                let _454 := var_utilizationRatio_33199
                let expr_33205 := _454
                /// @src 56:2064:2065  "0"
                let expr_33206 := 0x00
                /// @src 56:2044:2065  "utilizationRatio == 0"
                let expr_33207 := eq(cleanup_t_uint256(expr_33205), convert_t_rational_0_by_1_to_t_uint256(expr_33206))
                /// @src 56:2040:2100  "if (utilizationRatio == 0) {..."
                if expr_33207 {
                    /// @src 56:2088:2089  "0"
                    let expr_33208 := 0x00
                    /// @src 56:2081:2089  "return 0"
                    var_interestRate_33188 := convert_t_rational_0_by_1_to_t_uint256(expr_33208)
                    leave
                    /// @src 56:2040:2100  "if (utilizationRatio == 0) {..."
                }
                /// @src 56:2161:2178  "InterestRateModel"
                let expr_33213_address := linkersymbol("src/libraries/InterestRateModel.sol:InterestRateModel")
                /// @src 56:2201:2211  "poolStatus"
                let _455_slot := var_poolStatus_33181_slot
                let expr_33215_slot := _455_slot
                /// @src 56:2201:2221  "poolStatus.irmParams"
                let _456 := add(expr_33215_slot, 8)
                let _457_slot := _456
                let expr_33216_slot := _457_slot
                /// @src 56:2223:2239  "utilizationRatio"
                let _458 := var_utilizationRatio_33199
                let expr_33217 := _458
                /// @src 56:2161:2240  "InterestRateModel.calculateInterestRate(poolStatus.irmParams, utilizationRatio)"
                let _459_mpos := convert_t_struct$_IRMParams_$13447_storage_to_t_struct$_IRMParams_$13447_memory_ptr(expr_33216_slot)
                let expr_33218 := fun_calculateInterestRate_13510(_459_mpos, expr_33217)
                /// @src 56:2256:2271  "block.timestamp"
                let expr_33220 := timestamp()
                /// @src 56:2274:2293  "lastUpdateTimestamp"
                let _460 := var_lastUpdateTimestamp_33183
                let expr_33221 := _460
                /// @src 56:2256:2293  "block.timestamp - lastUpdateTimestamp"
                let expr_33222 := checked_sub_t_uint256(expr_33220, expr_33221)

                /// @src 56:2255:2294  "(block.timestamp - lastUpdateTimestamp)"
                let expr_33223 := expr_33222
                /// @src 56:2161:2294  "InterestRateModel.calculateInterestRate(poolStatus.irmParams, utilizationRatio)..."
                let expr_33224 := checked_mul_t_uint256(expr_33218, expr_33223)

                /// @src 56:2297:2305  "365 days"
                let expr_33225 := 0x01e13380
                /// @src 56:2161:2305  "InterestRateModel.calculateInterestRate(poolStatus.irmParams, utilizationRatio)..."
                let expr_33226 := checked_div_t_uint256(expr_33224, convert_t_rational_31536000_by_1_to_t_uint256(expr_33225))

                /// @src 56:2146:2305  "interestRate = InterestRateModel.calculateInterestRate(poolStatus.irmParams, utilizationRatio)..."
                var_interestRate_33188 := expr_33226
                let expr_33227 := expr_33226
                /// @src 56:2343:2353  "poolStatus"
                let _461_slot := var_poolStatus_33181_slot
                let expr_33231_slot := _461_slot
                /// @src 56:2343:2365  "poolStatus.tokenStatus"
                let _462 := add(expr_33231_slot, 2)
                let _463_slot := _462
                let expr_33232_slot := _463_slot
                /// @src 56:2343:2378  "poolStatus.tokenStatus.updateScaler"
                let expr_33233_self_slot := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(expr_33232_slot)
                /// @src 56:2379:2391  "interestRate"
                let _464 := var_interestRate_33188
                let expr_33234 := _464
                /// @src 56:2393:2396  "fee"
                let _465 := var_fee_33185
                let expr_33235 := _465
                /// @src 56:2343:2397  "poolStatus.tokenStatus.updateScaler(interestRate, fee)"
                let expr_33236 := fun_updateScaler_31572(expr_33233_self_slot, expr_33234, expr_33235)
                /// @src 56:2316:2397  "uint256 totalProtocolFee = poolStatus.tokenStatus.updateScaler(interestRate, fee)"
                let var_totalProtocolFee_33230 := expr_33236
                /// @src 56:2449:2465  "totalProtocolFee"
                let _466 := var_totalProtocolFee_33230
                let expr_33241 := _466
                /// @src 56:2468:2469  "2"
                let expr_33242 := 0x02
                /// @src 56:2449:2469  "totalProtocolFee / 2"
                let expr_33243 := checked_div_t_uint256(expr_33241, convert_t_rational_2_by_1_to_t_uint256(expr_33242))

                /// @src 56:2408:2418  "poolStatus"
                let _467_slot := var_poolStatus_33181_slot
                let expr_33238_slot := _467_slot
                /// @src 56:2408:2445  "poolStatus.accumulatedProtocolRevenue"
                let _468 := add(expr_33238_slot, 12)
                /// @src 56:2408:2469  "poolStatus.accumulatedProtocolRevenue += totalProtocolFee / 2"
                let _469 := read_from_storage_split_offset_0_t_uint256(_468)
                let expr_33244 := checked_add_t_uint256(_469, expr_33243)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_468, expr_33244)
                /// @src 56:2519:2535  "totalProtocolFee"
                let _470 := var_totalProtocolFee_33230
                let expr_33249 := _470
                /// @src 56:2538:2539  "2"
                let expr_33250 := 0x02
                /// @src 56:2519:2539  "totalProtocolFee / 2"
                let expr_33251 := checked_div_t_uint256(expr_33249, convert_t_rational_2_by_1_to_t_uint256(expr_33250))

                /// @src 56:2479:2489  "poolStatus"
                let _471_slot := var_poolStatus_33181_slot
                let expr_33246_slot := _471_slot
                /// @src 56:2479:2515  "poolStatus.accumulatedCreatorRevenue"
                let _472 := add(expr_33246_slot, 13)
                /// @src 56:2479:2539  "poolStatus.accumulatedCreatorRevenue += totalProtocolFee / 2"
                let _473 := read_from_storage_split_offset_0_t_uint256(_472)
                let expr_33252 := checked_add_t_uint256(_473, expr_33251)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_472, expr_33252)

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function read_from_memoryt_uint256(ptr) -> returnValue {

                let value := cleanup_t_uint256(mload(ptr))

                returnValue :=

                value

            }

            function abi_encode_t_uint256_to_t_uint256(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            // struct ScaledAsset.AssetStatus -> struct ScaledAsset.AssetStatus
            function abi_encode_t_struct$_AssetStatus_$30934_memory_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr_fromStack(value, pos)  {
                let tail := add(pos, 0xc0)

                {
                    // totalCompoundDeposited

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x00))
                }

                {
                    // totalNormalDeposited

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x20))
                }

                {
                    // totalNormalBorrowed

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x40))
                }

                {
                    // assetScaler

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x60))
                }

                {
                    // assetGrowth

                    let memberValue0 := mload(add(value, 0x80))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x80))
                }

                {
                    // debtGrowth

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0xa0))
                }

            }

            function abi_encode_tuple_t_struct$_AssetStatus_$30934_memory_ptr_t_struct$_AssetStatus_$30934_memory_ptr_t_uint256_t_uint256__to_t_struct$_AssetStatus_$30934_memory_ptr_t_struct$_AssetStatus_$30934_memory_ptr_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 448)

                abi_encode_t_struct$_AssetStatus_$30934_memory_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr_fromStack(value0,  add(headStart, 0))

                abi_encode_t_struct$_AssetStatus_$30934_memory_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr_fromStack(value1,  add(headStart, 192))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 384))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 416))

            }

            /// @ast-id 33279
            /// @src 56:2552:2970  "function emitInterestGrowthEvent(..."
            function fun_emitInterestGrowthEvent_33279(var_assetStatus_33258_mpos, var_interestRatioStable_33260, var_interestRatioUnderlying_33262) {

                /// @src 56:2776:2787  "assetStatus"
                let _474_mpos := var_assetStatus_33258_mpos
                let expr_33266_mpos := _474_mpos
                /// @src 56:2776:2790  "assetStatus.id"
                let _475 := add(expr_33266_mpos, 0)
                let _476 := read_from_memoryt_uint256(_475)
                let expr_33267 := _476
                /// @src 56:2804:2815  "assetStatus"
                let _477_mpos := var_assetStatus_33258_mpos
                let expr_33268_mpos := _477_mpos
                /// @src 56:2804:2825  "assetStatus.quotePool"
                let _478 := add(expr_33268_mpos, 96)
                let _479_mpos := mload(_478)
                let expr_33269_mpos := _479_mpos
                /// @src 56:2804:2837  "assetStatus.quotePool.tokenStatus"
                let _480 := add(expr_33269_mpos, 64)
                let _481_mpos := mload(_480)
                let expr_33270_mpos := _481_mpos
                /// @src 56:2851:2862  "assetStatus"
                let _482_mpos := var_assetStatus_33258_mpos
                let expr_33271_mpos := _482_mpos
                /// @src 56:2851:2871  "assetStatus.basePool"
                let _483 := add(expr_33271_mpos, 128)
                let _484_mpos := mload(_483)
                let expr_33272_mpos := _484_mpos
                /// @src 56:2851:2883  "assetStatus.basePool.tokenStatus"
                let _485 := add(expr_33272_mpos, 64)
                let _486_mpos := mload(_485)
                let expr_33273_mpos := _486_mpos
                /// @src 56:2897:2916  "interestRatioStable"
                let _487 := var_interestRatioStable_33260
                let expr_33274 := _487
                /// @src 56:2930:2953  "interestRatioUnderlying"
                let _488 := var_interestRatioUnderlying_33262
                let expr_33275 := _488
                /// @src 56:2741:2963  "InterestGrowthUpdated(..."
                let _489 := 0x68fec554d30e1515ff9dd8fef00d858620f16c33b61a2ed9cc011e4c0d66b01c
                let _490 := convert_t_uint256_to_t_uint256(expr_33267)
                {
                    let _491 := allocate_unbounded()
                    let _492 := abi_encode_tuple_t_struct$_AssetStatus_$30934_memory_ptr_t_struct$_AssetStatus_$30934_memory_ptr_t_uint256_t_uint256__to_t_struct$_AssetStatus_$30934_memory_ptr_t_struct$_AssetStatus_$30934_memory_ptr_t_uint256_t_uint256__fromStack(_491 , expr_33270_mpos, expr_33273_mpos, expr_33274, expr_33275)
                    log2(_491, sub(_492, _491) , _489, _490)
                }
            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function convert_t_struct$_UserStatus_$30939_storage_ptr_to_t_struct$_UserStatus_$30939_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_UserStatus_$30939_memory_ptr(value)

            }

            /// @ast-id 31406
            /// @src 66:4790:5237  "function settleUserFee(ScaledAsset.AssetStatus memory _assetStatus, ScaledAsset.UserStatus storage _userStatus)..."
            function fun_settleUserFee_31406(var__assetStatus_31369_mpos, var__userStatus_31372_slot) -> var_interestFee_31375 {
                /// @src 66:4936:4954  "int256 interestFee"
                let zero_t_int256_493 := zero_value_for_split_t_int256()
                var_interestFee_31375 := zero_t_int256_493

                /// @src 66:4999:5011  "_assetStatus"
                let _494_mpos := var__assetStatus_31369_mpos
                let expr_31379_mpos := _494_mpos
                /// @src 66:5013:5024  "_userStatus"
                let _495_slot := var__userStatus_31372_slot
                let expr_31380_slot := _495_slot
                /// @src 66:4984:5025  "computeUserFee(_assetStatus, _userStatus)"
                let _496_mpos := convert_t_struct$_UserStatus_$30939_storage_ptr_to_t_struct$_UserStatus_$30939_memory_ptr(expr_31380_slot)
                let expr_31381 := fun_computeUserFee_31366(expr_31379_mpos, _496_mpos)
                /// @src 66:4970:5025  "interestFee = computeUserFee(_assetStatus, _userStatus)"
                var_interestFee_31375 := expr_31381
                let expr_31382 := expr_31381
                /// @src 66:5040:5051  "_userStatus"
                let _497_slot := var__userStatus_31372_slot
                let expr_31384_slot := _497_slot
                /// @src 66:5040:5066  "_userStatus.positionAmount"
                let _498 := add(expr_31384_slot, 0)
                let _499 := read_from_storage_split_offset_0_t_int256(_498)
                let expr_31385 := _499
                /// @src 66:5069:5070  "0"
                let expr_31386 := 0x00
                /// @src 66:5040:5070  "_userStatus.positionAmount > 0"
                let expr_31387 := sgt(cleanup_t_int256(expr_31385), convert_t_rational_0_by_1_to_t_int256(expr_31386))
                /// @src 66:5036:5231  "if (_userStatus.positionAmount > 0) {..."
                switch expr_31387
                case 0 {
                    /// @src 66:5197:5209  "_assetStatus"
                    let _500_mpos := var__assetStatus_31369_mpos
                    let expr_31399_mpos := _500_mpos
                    /// @src 66:5197:5220  "_assetStatus.debtGrowth"
                    let _501 := add(expr_31399_mpos, 160)
                    let _502 := read_from_memoryt_uint256(_501)
                    let expr_31400 := _502
                    /// @src 66:5169:5180  "_userStatus"
                    let _503_slot := var__userStatus_31372_slot
                    let expr_31396_slot := _503_slot
                    /// @src 66:5169:5194  "_userStatus.lastFeeGrowth"
                    let _504 := add(expr_31396_slot, 1)
                    /// @src 66:5169:5220  "_userStatus.lastFeeGrowth = _assetStatus.debtGrowth"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_504, expr_31400)
                    let expr_31401 := expr_31400
                    /// @src 66:5036:5231  "if (_userStatus.positionAmount > 0) {..."
                }
                default {
                    /// @src 66:5114:5126  "_assetStatus"
                    let _505_mpos := var__assetStatus_31369_mpos
                    let expr_31391_mpos := _505_mpos
                    /// @src 66:5114:5138  "_assetStatus.assetGrowth"
                    let _506 := add(expr_31391_mpos, 128)
                    let _507 := read_from_memoryt_uint256(_506)
                    let expr_31392 := _507
                    /// @src 66:5086:5097  "_userStatus"
                    let _508_slot := var__userStatus_31372_slot
                    let expr_31388_slot := _508_slot
                    /// @src 66:5086:5111  "_userStatus.lastFeeGrowth"
                    let _509 := add(expr_31388_slot, 1)
                    /// @src 66:5086:5138  "_userStatus.lastFeeGrowth = _assetStatus.assetGrowth"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_509, expr_31392)
                    let expr_31393 := expr_31392
                    /// @src 66:5036:5231  "if (_userStatus.positionAmount > 0) {..."
                }

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 14518
            /// @src 61:14670:15063  "function saveLastFeeGrowth(SqrtPerpAssetStatus storage _assetStatus) internal {..."
            function fun_saveLastFeeGrowth_14518(var__assetStatus_14488_slot) {

                /// @src 61:14833:14842  "UniHelper"
                let expr_14495_address := linkersymbol("src/libraries/UniHelper.sol:UniHelper")
                /// @src 61:14862:14874  "_assetStatus"
                let _510_slot := var__assetStatus_14488_slot
                let expr_14497_slot := _510_slot
                /// @src 61:14862:14886  "_assetStatus.uniswapPool"
                let _511 := add(expr_14497_slot, 0)
                let _512 := read_from_storage_split_offset_0_t_address(_511)
                let expr_14498 := _512
                /// @src 61:14888:14900  "_assetStatus"
                let _513_slot := var__assetStatus_14488_slot
                let expr_14499_slot := _513_slot
                /// @src 61:14888:14910  "_assetStatus.tickLower"
                let _514 := add(expr_14499_slot, 0)
                let _515 := read_from_storage_split_offset_20_t_int24(_514)
                let expr_14500 := _515
                /// @src 61:14912:14924  "_assetStatus"
                let _516_slot := var__assetStatus_14488_slot
                let expr_14501_slot := _516_slot
                /// @src 61:14912:14934  "_assetStatus.tickUpper"
                let _517 := add(expr_14501_slot, 0)
                let _518 := read_from_storage_split_offset_23_t_int24(_517)
                let expr_14502 := _518
                /// @src 61:14833:14935  "UniHelper.getFeeGrowthInside(_assetStatus.uniswapPool, _assetStatus.tickLower, _assetStatus.tickUpper)"
                let expr_14503_component_1, expr_14503_component_2 := fun_getFeeGrowthInside_16941(expr_14498, expr_14500, expr_14502)
                /// @src 61:14758:14935  "(uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) =..."
                let var_feeGrowthInside0X128_14492 := expr_14503_component_1
                let var_feeGrowthInside1X128_14494 := expr_14503_component_2
                /// @src 61:14976:14996  "feeGrowthInside0X128"
                let _519 := var_feeGrowthInside0X128_14492
                let expr_14508 := _519
                /// @src 61:14946:14958  "_assetStatus"
                let _520_slot := var__assetStatus_14488_slot
                let expr_14505_slot := _520_slot
                /// @src 61:14946:14973  "_assetStatus.lastFee0Growth"
                let _521 := add(expr_14505_slot, 5)
                /// @src 61:14946:14996  "_assetStatus.lastFee0Growth = feeGrowthInside0X128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_521, expr_14508)
                let expr_14509 := expr_14508
                /// @src 61:15036:15056  "feeGrowthInside1X128"
                let _522 := var_feeGrowthInside1X128_14494
                let expr_14514 := _522
                /// @src 61:15006:15018  "_assetStatus"
                let _523_slot := var__assetStatus_14488_slot
                let expr_14511_slot := _523_slot
                /// @src 61:15006:15033  "_assetStatus.lastFee1Growth"
                let _524 := add(expr_14511_slot, 6)
                /// @src 61:15006:15056  "_assetStatus.lastFee1Growth = feeGrowthInside1X128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_524, expr_14514)
                let expr_14515 := expr_14514

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function zero_value_for_split_t_uint128() -> ret {
                ret := 0
            }

            function validator_revert_t_uint128(value) {
                if iszero(eq(value, cleanup_t_uint128(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint128_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint128(value)
            }

            function abi_decode_tuple_t_uint128t_uint256t_uint256t_uint128t_uint128_fromMemory(headStart, dataEnd) -> value0, value1, value2, value3, value4 {
                if slt(sub(dataEnd, headStart), 160) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint128_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_uint128_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 128

                    value4 := abi_decode_t_uint128_fromMemory(add(headStart, offset), dataEnd)
                }

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

            /// @ast-id 14210
            /// @src 61:11349:11759  "function getAvailableLiquidityAmount(..."
            function fun_getAvailableLiquidityAmount_14210(var__controllerAddress_14178, var__uniswapPool_14180, var__tickLower_14182, var__tickUpper_14184) -> var__14187 {
                /// @src 61:11533:11540  "uint128"
                let zero_t_uint128_525 := zero_value_for_split_t_uint128()
                var__14187 := zero_t_uint128_525

                /// @src 61:11574:11585  "PositionKey"
                let expr_14191_address := linkersymbol("lib/v3-periphery/contracts/libraries/PositionKey.sol:PositionKey")
                /// @src 61:11594:11612  "_controllerAddress"
                let _526 := var__controllerAddress_14178
                let expr_14193 := _526
                /// @src 61:11614:11624  "_tickLower"
                let _527 := var__tickLower_14182
                let expr_14194 := _527
                /// @src 61:11626:11636  "_tickUpper"
                let _528 := var__tickUpper_14184
                let expr_14195 := _528
                /// @src 61:11574:11637  "PositionKey.compute(_controllerAddress, _tickLower, _tickUpper)"
                let expr_14196 := fun_compute_30267(expr_14193, expr_14194, expr_14195)
                /// @src 61:11552:11637  "bytes32 positionKey = PositionKey.compute(_controllerAddress, _tickLower, _tickUpper)"
                let var_positionKey_14190 := expr_14196
                /// @src 61:11689:11701  "_uniswapPool"
                let _529 := var__uniswapPool_14180
                let expr_14201 := _529
                /// @src 61:11674:11702  "IUniswapV3Pool(_uniswapPool)"
                let expr_14202_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_14201)
                /// @src 61:11674:11712  "IUniswapV3Pool(_uniswapPool).positions"
                let expr_14203_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_14202_address)
                let expr_14203_functionSelector := 0x514ea4bf
                /// @src 61:11713:11724  "positionKey"
                let _530 := var_positionKey_14190
                let expr_14204 := _530
                /// @src 61:11674:11725  "IUniswapV3Pool(_uniswapPool).positions(positionKey)"

                // storage for arguments and returned data
                let _531 := allocate_unbounded()
                mstore(_531, shift_left_224(expr_14203_functionSelector))
                let _532 := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(add(_531, 4) , expr_14204)

                let _533 := staticcall(gas(), expr_14203_address,  _531, sub(_532, _531), _531, 160)

                if iszero(_533) { revert_forward_1() }

                let expr_14205_component_1, expr_14205_component_2, expr_14205_component_3, expr_14205_component_4, expr_14205_component_5
                if _533 {

                    let _534 := 160

                    if gt(_534, returndatasize()) {
                        _534 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_531, _534)

                    // decode return parameters from external try-call into retVars
                    expr_14205_component_1, expr_14205_component_2, expr_14205_component_3, expr_14205_component_4, expr_14205_component_5 :=  abi_decode_tuple_t_uint128t_uint256t_uint256t_uint128t_uint128_fromMemory(_531, add(_531, _534))
                }
                /// @src 61:11648:11725  "(uint128 liquidity,,,,) = IUniswapV3Pool(_uniswapPool).positions(positionKey)"
                let var_liquidity_14199 := expr_14205_component_1
                /// @src 61:11743:11752  "liquidity"
                let _535 := var_liquidity_14199
                let expr_14207 := _535
                /// @src 61:11736:11752  "return liquidity"
                var__14187 := expr_14207
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function read_from_memoryt_address(ptr) -> returnValue {

                let value := cleanup_t_address(mload(ptr))

                returnValue :=

                value

            }

            function abi_decode_tuple_t_int24_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_int24_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function zero_value_for_t_uint256() -> ret {
                ret := 0
            }

            function allocate_and_zero_memory_struct_t_struct$_AssetStatus_$30934_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_AssetStatus_$30934_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_AssetStatus_$30934_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_AssetStatus_$30934_memory_ptr()
            }

            function read_from_memoryt_bool(ptr) -> returnValue {

                let value := cleanup_t_bool(mload(ptr))

                returnValue :=

                value

            }

            /// @ast-id 30446
            /// @src 65:517:1385  "function getNewRange(DataType.PairStatus memory _assetStatusUnderlying, int24 currentTick)..."
            function fun_getNewRange_30446(var__assetStatusUnderlying_30377_mpos, var_currentTick_30379) -> var_lower_30382, var_upper_30384 {
                /// @src 65:655:666  "int24 lower"
                let zero_t_int24_536 := zero_value_for_split_t_int24()
                var_lower_30382 := zero_t_int24_536
                /// @src 65:668:679  "int24 upper"
                let zero_t_int24_537 := zero_value_for_split_t_int24()
                var_upper_30384 := zero_t_int24_537

                /// @src 65:730:752  "_assetStatusUnderlying"
                let _538_mpos := var__assetStatusUnderlying_30377_mpos
                let expr_30389_mpos := _538_mpos
                /// @src 65:730:768  "_assetStatusUnderlying.sqrtAssetStatus"
                let _539 := add(expr_30389_mpos, 192)
                let _540_mpos := mload(_539)
                let expr_30390_mpos := _540_mpos
                /// @src 65:730:780  "_assetStatusUnderlying.sqrtAssetStatus.uniswapPool"
                let _541 := add(expr_30390_mpos, 0)
                let _542 := read_from_memoryt_address(_541)
                let expr_30391 := _542
                /// @src 65:715:781  "IUniswapV3Pool(_assetStatusUnderlying.sqrtAssetStatus.uniswapPool)"
                let expr_30392_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_30391)
                /// @src 65:715:793  "IUniswapV3Pool(_assetStatusUnderlying.sqrtAssetStatus.uniswapPool).tickSpacing"
                let expr_30393_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_30392_address)
                let expr_30393_functionSelector := 0xd0c93a7c
                /// @src 65:715:795  "IUniswapV3Pool(_assetStatusUnderlying.sqrtAssetStatus.uniswapPool).tickSpacing()"

                // storage for arguments and returned data
                let _543 := allocate_unbounded()
                mstore(_543, shift_left_224(expr_30393_functionSelector))
                let _544 := abi_encode_tuple__to__fromStack(add(_543, 4) )

                let _545 := staticcall(gas(), expr_30393_address,  _543, sub(_544, _543), _543, 32)

                if iszero(_545) { revert_forward_1() }

                let expr_30394
                if _545 {

                    let _546 := 32

                    if gt(_546, returndatasize()) {
                        _546 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_543, _546)

                    // decode return parameters from external try-call into retVars
                    expr_30394 :=  abi_decode_tuple_t_int24_fromMemory(_543, add(_543, _546))
                }
                /// @src 65:695:795  "int24 tickSpacing = IUniswapV3Pool(_assetStatusUnderlying.sqrtAssetStatus.uniswapPool).tickSpacing()"
                let var_tickSpacing_30387 := expr_30394
                /// @src 65:806:849  "ScaledAsset.AssetStatus memory token0Status"
                let var_token0Status_30400_mpos
                let zero_t_struct$_AssetStatus_$30934_memory_ptr_547_mpos := zero_value_for_split_t_struct$_AssetStatus_$30934_memory_ptr()
                var_token0Status_30400_mpos := zero_t_struct$_AssetStatus_$30934_memory_ptr_547_mpos
                /// @src 65:859:902  "ScaledAsset.AssetStatus memory token1Status"
                let var_token1Status_30406_mpos
                let zero_t_struct$_AssetStatus_$30934_memory_ptr_548_mpos := zero_value_for_split_t_struct$_AssetStatus_$30934_memory_ptr()
                var_token1Status_30406_mpos := zero_t_struct$_AssetStatus_$30934_memory_ptr_548_mpos
                /// @src 65:917:939  "_assetStatusUnderlying"
                let _549_mpos := var__assetStatusUnderlying_30377_mpos
                let expr_30408_mpos := _549_mpos
                /// @src 65:917:951  "_assetStatusUnderlying.isQuoteZero"
                let _550 := add(expr_30408_mpos, 256)
                let _551 := read_from_memoryt_bool(_550)
                let expr_30409 := _551
                /// @src 65:913:1271  "if (_assetStatusUnderlying.isQuoteZero) {..."
                switch expr_30409
                case 0 {
                    /// @src 65:1144:1166  "_assetStatusUnderlying"
                    let _552_mpos := var__assetStatusUnderlying_30377_mpos
                    let expr_30424_mpos := _552_mpos
                    /// @src 65:1144:1175  "_assetStatusUnderlying.basePool"
                    let _553 := add(expr_30424_mpos, 128)
                    let _554_mpos := mload(_553)
                    let expr_30425_mpos := _554_mpos
                    /// @src 65:1144:1187  "_assetStatusUnderlying.basePool.tokenStatus"
                    let _555 := add(expr_30425_mpos, 64)
                    let _556_mpos := mload(_555)
                    let expr_30426_mpos := _556_mpos
                    /// @src 65:1129:1187  "token0Status = _assetStatusUnderlying.basePool.tokenStatus"
                    var_token0Status_30400_mpos := expr_30426_mpos
                    let _557_mpos := var_token0Status_30400_mpos
                    let expr_30427_mpos := _557_mpos
                    /// @src 65:1216:1238  "_assetStatusUnderlying"
                    let _558_mpos := var__assetStatusUnderlying_30377_mpos
                    let expr_30430_mpos := _558_mpos
                    /// @src 65:1216:1248  "_assetStatusUnderlying.quotePool"
                    let _559 := add(expr_30430_mpos, 96)
                    let _560_mpos := mload(_559)
                    let expr_30431_mpos := _560_mpos
                    /// @src 65:1216:1260  "_assetStatusUnderlying.quotePool.tokenStatus"
                    let _561 := add(expr_30431_mpos, 64)
                    let _562_mpos := mload(_561)
                    let expr_30432_mpos := _562_mpos
                    /// @src 65:1201:1260  "token1Status = _assetStatusUnderlying.quotePool.tokenStatus"
                    var_token1Status_30406_mpos := expr_30432_mpos
                    let _563_mpos := var_token1Status_30406_mpos
                    let expr_30433_mpos := _563_mpos
                    /// @src 65:913:1271  "if (_assetStatusUnderlying.isQuoteZero) {..."
                }
                default {
                    /// @src 65:982:1004  "_assetStatusUnderlying"
                    let _564_mpos := var__assetStatusUnderlying_30377_mpos
                    let expr_30411_mpos := _564_mpos
                    /// @src 65:982:1014  "_assetStatusUnderlying.quotePool"
                    let _565 := add(expr_30411_mpos, 96)
                    let _566_mpos := mload(_565)
                    let expr_30412_mpos := _566_mpos
                    /// @src 65:982:1026  "_assetStatusUnderlying.quotePool.tokenStatus"
                    let _567 := add(expr_30412_mpos, 64)
                    let _568_mpos := mload(_567)
                    let expr_30413_mpos := _568_mpos
                    /// @src 65:967:1026  "token0Status = _assetStatusUnderlying.quotePool.tokenStatus"
                    var_token0Status_30400_mpos := expr_30413_mpos
                    let _569_mpos := var_token0Status_30400_mpos
                    let expr_30414_mpos := _569_mpos
                    /// @src 65:1055:1077  "_assetStatusUnderlying"
                    let _570_mpos := var__assetStatusUnderlying_30377_mpos
                    let expr_30417_mpos := _570_mpos
                    /// @src 65:1055:1086  "_assetStatusUnderlying.basePool"
                    let _571 := add(expr_30417_mpos, 128)
                    let _572_mpos := mload(_571)
                    let expr_30418_mpos := _572_mpos
                    /// @src 65:1055:1098  "_assetStatusUnderlying.basePool.tokenStatus"
                    let _573 := add(expr_30418_mpos, 64)
                    let _574_mpos := mload(_573)
                    let expr_30419_mpos := _574_mpos
                    /// @src 65:1040:1098  "token1Status = _assetStatusUnderlying.basePool.tokenStatus"
                    var_token1Status_30406_mpos := expr_30419_mpos
                    let _575_mpos := var_token1Status_30406_mpos
                    let expr_30420_mpos := _575_mpos
                    /// @src 65:913:1271  "if (_assetStatusUnderlying.isQuoteZero) {..."
                }
                /// @src 65:1301:1323  "_assetStatusUnderlying"
                let _576_mpos := var__assetStatusUnderlying_30377_mpos
                let expr_30438_mpos := _576_mpos
                /// @src 65:1325:1337  "token0Status"
                let _577_mpos := var_token0Status_30400_mpos
                let expr_30439_mpos := _577_mpos
                /// @src 65:1339:1351  "token1Status"
                let _578_mpos := var_token1Status_30406_mpos
                let expr_30440_mpos := _578_mpos
                /// @src 65:1353:1364  "currentTick"
                let _579 := var_currentTick_30379
                let expr_30441 := _579
                /// @src 65:1366:1377  "tickSpacing"
                let _580 := var_tickSpacing_30387
                let expr_30442 := _580
                /// @src 65:1288:1378  "_getNewRange(_assetStatusUnderlying, token0Status, token1Status, currentTick, tickSpacing)"
                let expr_30443_component_1, expr_30443_component_2 := fun__getNewRange_30607(expr_30438_mpos, expr_30439_mpos, expr_30440_mpos, expr_30441, expr_30442)
                /// @src 65:1281:1378  "return _getNewRange(_assetStatusUnderlying, token0Status, token1Status, currentTick, tickSpacing)"
                var_lower_30382 := expr_30443_component_1
                var_upper_30384 := expr_30443_component_2
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

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

            function abi_encode_t_uint128_to_t_uint128_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint128(value))
            }

            function abi_encode_tuple_t_int24_t_int24_t_uint128__to_t_int24_t_int24_t_uint128__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_int24_to_t_int24_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int24_to_t_int24_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint128_to_t_uint128_fromStack(value2,  add(headStart, 64))

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

            /// @ast-id 14100
            /// @src 61:8596:9904  "function rebalanceForInRange(..."
            function fun_rebalanceForInRange_14100(var__assetStatusUnderlying_13992_slot, var__sqrtAssetStatus_13995_slot, var__currentTick_13997, var__totalLiquidityAmount_13999) {

                /// @src 61:8899:8915  "_sqrtAssetStatus"
                let _581_slot := var__sqrtAssetStatus_13995_slot
                let expr_14007_slot := _581_slot
                /// @src 61:8899:8927  "_sqrtAssetStatus.uniswapPool"
                let _582 := add(expr_14007_slot, 0)
                let _583 := read_from_storage_split_offset_0_t_address(_582)
                let expr_14008 := _583
                /// @src 61:8884:8928  "IUniswapV3Pool(_sqrtAssetStatus.uniswapPool)"
                let expr_14009_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_14008)
                /// @src 61:8884:8933  "IUniswapV3Pool(_sqrtAssetStatus.uniswapPool).burn"
                let expr_14010_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_14009_address)
                let expr_14010_functionSelector := 0xa34123a7
                /// @src 61:8947:8963  "_sqrtAssetStatus"
                let _584_slot := var__sqrtAssetStatus_13995_slot
                let expr_14011_slot := _584_slot
                /// @src 61:8947:8973  "_sqrtAssetStatus.tickLower"
                let _585 := add(expr_14011_slot, 0)
                let _586 := read_from_storage_split_offset_20_t_int24(_585)
                let expr_14012 := _586
                /// @src 61:8975:8991  "_sqrtAssetStatus"
                let _587_slot := var__sqrtAssetStatus_13995_slot
                let expr_14013_slot := _587_slot
                /// @src 61:8975:9001  "_sqrtAssetStatus.tickUpper"
                let _588 := add(expr_14013_slot, 0)
                let _589 := read_from_storage_split_offset_23_t_int24(_588)
                let expr_14014 := _589
                /// @src 61:9003:9024  "_totalLiquidityAmount"
                let _590 := var__totalLiquidityAmount_13999
                let expr_14015 := _590
                /// @src 61:8884:9034  "IUniswapV3Pool(_sqrtAssetStatus.uniswapPool).burn(..."

                // storage for arguments and returned data
                let _591 := allocate_unbounded()
                mstore(_591, shift_left_224(expr_14010_functionSelector))
                let _592 := abi_encode_tuple_t_int24_t_int24_t_uint128__to_t_int24_t_int24_t_uint128__fromStack(add(_591, 4) , expr_14012, expr_14014, expr_14015)

                let _593 := call(gas(), expr_14010_address,  0,  _591, sub(_592, _591), _591, 64)

                if iszero(_593) { revert_forward_1() }

                let expr_14016_component_1, expr_14016_component_2
                if _593 {

                    let _594 := 64

                    if gt(_594, returndatasize()) {
                        _594 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_591, _594)

                    // decode return parameters from external try-call into retVars
                    expr_14016_component_1, expr_14016_component_2 :=  abi_decode_tuple_t_uint256t_uint256_fromMemory(_591, add(_591, _594))
                }
                /// @src 61:8831:9034  "(uint256 receivedAmount0, uint256 receivedAmount1) = IUniswapV3Pool(_sqrtAssetStatus.uniswapPool).burn(..."
                let var_receivedAmount0_14003 := expr_14016_component_1
                let var_receivedAmount1_14005 := expr_14016_component_2
                /// @src 61:9060:9076  "_sqrtAssetStatus"
                let _595_slot := var__sqrtAssetStatus_13995_slot
                let expr_14019_slot := _595_slot
                /// @src 61:9060:9088  "_sqrtAssetStatus.uniswapPool"
                let _596 := add(expr_14019_slot, 0)
                let _597 := read_from_storage_split_offset_0_t_address(_596)
                let expr_14020 := _597
                /// @src 61:9045:9089  "IUniswapV3Pool(_sqrtAssetStatus.uniswapPool)"
                let expr_14021_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_14020)
                /// @src 61:9045:9097  "IUniswapV3Pool(_sqrtAssetStatus.uniswapPool).collect"
                let expr_14022_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_14021_address)
                let expr_14022_functionSelector := 0x4f1eb3d8
                /// @src 61:9119:9123  "this"
                let expr_14025_address := address()
                /// @src 61:9111:9124  "address(this)"
                let expr_14026 := convert_t_contract$_Perp_$15783_to_t_address(expr_14025_address)
                /// @src 61:9126:9142  "_sqrtAssetStatus"
                let _598_slot := var__sqrtAssetStatus_13995_slot
                let expr_14027_slot := _598_slot
                /// @src 61:9126:9152  "_sqrtAssetStatus.tickLower"
                let _599 := add(expr_14027_slot, 0)
                let _600 := read_from_storage_split_offset_20_t_int24(_599)
                let expr_14028 := _600
                /// @src 61:9154:9170  "_sqrtAssetStatus"
                let _601_slot := var__sqrtAssetStatus_13995_slot
                let expr_14029_slot := _601_slot
                /// @src 61:9154:9180  "_sqrtAssetStatus.tickUpper"
                let _602 := add(expr_14029_slot, 0)
                let _603 := read_from_storage_split_offset_23_t_int24(_602)
                let expr_14030 := _603
                /// @src 61:9182:9199  "type(uint128).max"
                let expr_14035 := 0xffffffffffffffffffffffffffffffff
                /// @src 61:9201:9218  "type(uint128).max"
                let expr_14040 := 0xffffffffffffffffffffffffffffffff
                /// @src 61:9045:9228  "IUniswapV3Pool(_sqrtAssetStatus.uniswapPool).collect(..."

                // storage for arguments and returned data
                let _604 := allocate_unbounded()
                mstore(_604, shift_left_224(expr_14022_functionSelector))
                let _605 := abi_encode_tuple_t_address_t_int24_t_int24_t_uint128_t_uint128__to_t_address_t_int24_t_int24_t_uint128_t_uint128__fromStack(add(_604, 4) , expr_14026, expr_14028, expr_14030, expr_14035, expr_14040)

                let _606 := call(gas(), expr_14022_address,  0,  _604, sub(_605, _604), _604, 64)

                if iszero(_606) { revert_forward_1() }

                let expr_14041_component_1, expr_14041_component_2
                if _606 {

                    let _607 := 64

                    if gt(_607, returndatasize()) {
                        _607 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_604, _607)

                    // decode return parameters from external try-call into retVars
                    expr_14041_component_1, expr_14041_component_2 :=  abi_decode_tuple_t_uint128t_uint128_fromMemory(_604, add(_604, _607))
                }
                /// @src 61:9310:9322  "Reallocation"
                let expr_14049_address := linkersymbol("src/libraries/Reallocation.sol:Reallocation")
                /// @src 61:9335:9357  "_assetStatusUnderlying"
                let _608_slot := var__assetStatusUnderlying_13992_slot
                let expr_14051_slot := _608_slot
                /// @src 61:9359:9371  "_currentTick"
                let _609 := var__currentTick_13997
                let expr_14052 := _609
                /// @src 61:9310:9372  "Reallocation.getNewRange(_assetStatusUnderlying, _currentTick)"
                let _610_mpos := convert_t_struct$_PairStatus_$6102_storage_ptr_to_t_struct$_PairStatus_$6102_memory_ptr(expr_14051_slot)
                let expr_14053_component_1, expr_14053_component_2 := fun_getNewRange_30446(_610_mpos, expr_14052)
                /// @src 61:9240:9256  "_sqrtAssetStatus"
                let _611_slot := var__sqrtAssetStatus_13995_slot
                let expr_14043_slot := _611_slot
                /// @src 61:9240:9266  "_sqrtAssetStatus.tickLower"
                let _612 := add(expr_14043_slot, 0)
                /// @src 61:9268:9284  "_sqrtAssetStatus"
                let _613_slot := var__sqrtAssetStatus_13995_slot
                let expr_14046_slot := _613_slot
                /// @src 61:9268:9294  "_sqrtAssetStatus.tickUpper"
                let _614 := add(expr_14046_slot, 0)
                /// @src 61:9239:9372  "(_sqrtAssetStatus.tickLower, _sqrtAssetStatus.tickUpper) =..."
                update_storage_value_offset_23_t_int24_to_t_int24(_614, expr_14053_component_2)
                update_storage_value_offset_20_t_int24_to_t_int24(_612, expr_14053_component_1)
                /// @src 61:9451:9467  "_sqrtAssetStatus"
                let _615_slot := var__sqrtAssetStatus_13995_slot
                let expr_14061_slot := _615_slot
                /// @src 61:9451:9479  "_sqrtAssetStatus.uniswapPool"
                let _616 := add(expr_14061_slot, 0)
                let _617 := read_from_storage_split_offset_0_t_address(_616)
                let expr_14062 := _617
                /// @src 61:9436:9480  "IUniswapV3Pool(_sqrtAssetStatus.uniswapPool)"
                let expr_14063_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_14062)
                /// @src 61:9436:9485  "IUniswapV3Pool(_sqrtAssetStatus.uniswapPool).mint"
                let expr_14064_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_14063_address)
                let expr_14064_functionSelector := 0x3c8a7d8d
                /// @src 61:9507:9511  "this"
                let expr_14067_address := address()
                /// @src 61:9499:9512  "address(this)"
                let expr_14068 := convert_t_contract$_Perp_$15783_to_t_address(expr_14067_address)
                /// @src 61:9514:9530  "_sqrtAssetStatus"
                let _618_slot := var__sqrtAssetStatus_13995_slot
                let expr_14069_slot := _618_slot
                /// @src 61:9514:9540  "_sqrtAssetStatus.tickLower"
                let _619 := add(expr_14069_slot, 0)
                let _620 := read_from_storage_split_offset_20_t_int24(_619)
                let expr_14070 := _620
                /// @src 61:9542:9558  "_sqrtAssetStatus"
                let _621_slot := var__sqrtAssetStatus_13995_slot
                let expr_14071_slot := _621_slot
                /// @src 61:9542:9568  "_sqrtAssetStatus.tickUpper"
                let _622 := add(expr_14071_slot, 0)
                let _623 := read_from_storage_split_offset_23_t_int24(_622)
                let expr_14072 := _623
                /// @src 61:9570:9591  "_totalLiquidityAmount"
                let _624 := var__totalLiquidityAmount_13999
                let expr_14073 := _624
                /// @src 61:9436:9605  "IUniswapV3Pool(_sqrtAssetStatus.uniswapPool).mint(..."

                // storage for arguments and returned data
                let _625 := allocate_unbounded()
                mstore(_625, shift_left_224(expr_14064_functionSelector))
                let _626 := abi_encode_tuple_t_address_t_int24_t_int24_t_uint128_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_address_t_int24_t_int24_t_uint128_t_bytes_memory_ptr__fromStack(add(_625, 4) , expr_14068, expr_14070, expr_14072, expr_14073)

                let _627 := call(gas(), expr_14064_address,  0,  _625, sub(_626, _625), _625, 64)

                if iszero(_627) { revert_forward_1() }

                let expr_14075_component_1, expr_14075_component_2
                if _627 {

                    let _628 := 64

                    if gt(_628, returndatasize()) {
                        _628 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_625, _628)

                    // decode return parameters from external try-call into retVars
                    expr_14075_component_1, expr_14075_component_2 :=  abi_decode_tuple_t_uint256t_uint256_fromMemory(_625, add(_625, _628))
                }
                /// @src 61:9383:9605  "(uint256 requiredAmount0, uint256 requiredAmount1) = IUniswapV3Pool(_sqrtAssetStatus.uniswapPool).mint(..."
                let var_requiredAmount0_14057 := expr_14075_component_1
                let var_requiredAmount1_14059 := expr_14075_component_2
                /// @src 61:9739:9761  "_assetStatusUnderlying"
                let _629_slot := var__assetStatusUnderlying_13992_slot
                let expr_14078_slot := _629_slot
                /// @src 61:9782:9797  "receivedAmount0"
                let _630 := var_receivedAmount0_14003
                let expr_14081 := _630
                /// @src 61:9775:9798  "int256(receivedAmount0)"
                let expr_14082 := convert_t_uint256_to_t_int256(expr_14081)
                /// @src 61:9808:9823  "requiredAmount0"
                let _631 := var_requiredAmount0_14057
                let expr_14085 := _631
                /// @src 61:9801:9824  "int256(requiredAmount0)"
                let expr_14086 := convert_t_uint256_to_t_int256(expr_14085)
                /// @src 61:9775:9824  "int256(receivedAmount0) - int256(requiredAmount0)"
                let expr_14087 := checked_sub_t_int256(expr_14082, expr_14086)

                /// @src 61:9845:9860  "receivedAmount1"
                let _632 := var_receivedAmount1_14005
                let expr_14090 := _632
                /// @src 61:9838:9861  "int256(receivedAmount1)"
                let expr_14091 := convert_t_uint256_to_t_int256(expr_14090)
                /// @src 61:9871:9886  "requiredAmount1"
                let _633 := var_requiredAmount1_14059
                let expr_14094 := _633
                /// @src 61:9864:9887  "int256(requiredAmount1)"
                let expr_14095 := convert_t_uint256_to_t_int256(expr_14094)
                /// @src 61:9838:9887  "int256(receivedAmount1) - int256(requiredAmount1)"
                let expr_14096 := checked_sub_t_int256(expr_14091, expr_14095)

                fun_updateRebalancePosition_15759(expr_14078_slot, expr_14087, expr_14096)

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function convert_t_uint128_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint128(value)))
            }

            function negate_t_int256(value) -> ret {
                value := cleanup_t_int256(value)
                if eq(value, 0x8000000000000000000000000000000000000000000000000000000000000000) { panic_error_0x11() }
                ret := sub(0, value)
            }

            /// @ast-id 14176
            /// @src 61:10295:11343  "function swapForOutOfRange(..."
            function fun_swapForOutOfRange_14176(var_pairStatus_14104_slot, var__currentSqrtPrice_14106, var__tick_14108, var__totalLiquidityAmount_14110) -> var_deltaPositionBase_14113, var_deltaPositionQuote_14115 {
                /// @src 61:10489:10513  "int256 deltaPositionBase"
                let zero_t_int256_634 := zero_value_for_split_t_int256()
                var_deltaPositionBase_14113 := zero_t_int256_634
                /// @src 61:10515:10540  "int256 deltaPositionQuote"
                let zero_t_int256_635 := zero_value_for_split_t_int256()
                var_deltaPositionQuote_14115 := zero_t_int256_635

                /// @src 61:10576:10584  "TickMath"
                let expr_14119_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                /// @src 61:10604:10609  "_tick"
                let _636 := var__tick_14108
                let expr_14121 := _636
                /// @src 61:10576:10610  "TickMath.getSqrtRatioAtTick(_tick)"
                let expr_14122 := fun_getSqrtRatioAtTick_30100(expr_14121)
                /// @src 61:10552:10610  "uint160 tickSqrtPrice = TickMath.getSqrtRatioAtTick(_tick)"
                let var_tickSqrtPrice_14118 := expr_14122
                /// @src 61:10706:10712  "LPMath"
                let expr_14126_address := linkersymbol("src/libraries/math/LPMath.sol:LPMath")
                /// @src 61:10742:10759  "_currentSqrtPrice"
                let _637 := var__currentSqrtPrice_14106
                let expr_14128 := _637
                /// @src 61:10761:10774  "tickSqrtPrice"
                let _638 := var_tickSqrtPrice_14118
                let expr_14129 := _638
                /// @src 61:10776:10797  "_totalLiquidityAmount"
                let _639 := var__totalLiquidityAmount_14110
                let expr_14130 := _639
                /// @src 61:10799:10803  "true"
                let expr_14131 := 0x01
                /// @src 61:10706:10804  "LPMath.calculateAmount0ForLiquidity(_currentSqrtPrice, tickSqrtPrice, _totalLiquidityAmount, true)"
                let _640 := convert_t_uint128_to_t_uint256(expr_14130)
                let expr_14132 := fun_calculateAmount0ForLiquidity_31864(expr_14128, expr_14129, _640, expr_14131)
                /// @src 61:10670:10804  "int256 deltaPosition0 =..."
                let var_deltaPosition0_14125 := expr_14132
                /// @src 61:10896:10902  "LPMath"
                let expr_14136_address := linkersymbol("src/libraries/math/LPMath.sol:LPMath")
                /// @src 61:10932:10949  "_currentSqrtPrice"
                let _641 := var__currentSqrtPrice_14106
                let expr_14138 := _641
                /// @src 61:10951:10964  "tickSqrtPrice"
                let _642 := var_tickSqrtPrice_14118
                let expr_14139 := _642
                /// @src 61:10966:10987  "_totalLiquidityAmount"
                let _643 := var__totalLiquidityAmount_14110
                let expr_14140 := _643
                /// @src 61:10989:10993  "true"
                let expr_14141 := 0x01
                /// @src 61:10896:10994  "LPMath.calculateAmount1ForLiquidity(_currentSqrtPrice, tickSqrtPrice, _totalLiquidityAmount, true)"
                let _644 := convert_t_uint128_to_t_uint256(expr_14140)
                let expr_14142 := fun_calculateAmount1ForLiquidity_31995(expr_14138, expr_14139, _644, expr_14141)
                /// @src 61:10860:10994  "int256 deltaPosition1 =..."
                let var_deltaPosition1_14135 := expr_14142
                /// @src 61:11009:11019  "pairStatus"
                let _645_slot := var_pairStatus_14104_slot
                let expr_14144_slot := _645_slot
                /// @src 61:11009:11031  "pairStatus.isQuoteZero"
                let _646 := add(expr_14144_slot, 50)
                let _647 := read_from_storage_split_offset_20_t_bool(_646)
                let expr_14145 := _647
                /// @src 61:11005:11259  "if (pairStatus.isQuoteZero) {..."
                switch expr_14145
                case 0 {
                    /// @src 61:11184:11198  "deltaPosition0"
                    let _648 := var_deltaPosition0_14125
                    let expr_14158 := _648
                    /// @src 61:11183:11198  "-deltaPosition0"
                    let expr_14159 := negate_t_int256(expr_14158)
                    /// @src 61:11163:11198  "deltaPositionBase = -deltaPosition0"
                    var_deltaPositionBase_14113 := expr_14159
                    let expr_14160 := expr_14159
                    /// @src 61:11234:11248  "deltaPosition1"
                    let _649 := var_deltaPosition1_14135
                    let expr_14163 := _649
                    /// @src 61:11233:11248  "-deltaPosition1"
                    let expr_14164 := negate_t_int256(expr_14163)
                    /// @src 61:11212:11248  "deltaPositionQuote = -deltaPosition1"
                    var_deltaPositionQuote_14115 := expr_14164
                    let expr_14165 := expr_14164
                    /// @src 61:11005:11259  "if (pairStatus.isQuoteZero) {..."
                }
                default {
                    /// @src 61:11069:11083  "deltaPosition0"
                    let _650 := var_deltaPosition0_14125
                    let expr_14147 := _650
                    /// @src 61:11068:11083  "-deltaPosition0"
                    let expr_14148 := negate_t_int256(expr_14147)
                    /// @src 61:11047:11083  "deltaPositionQuote = -deltaPosition0"
                    var_deltaPositionQuote_14115 := expr_14148
                    let expr_14149 := expr_14148
                    /// @src 61:11118:11132  "deltaPosition1"
                    let _651 := var_deltaPosition1_14135
                    let expr_14152 := _651
                    /// @src 61:11117:11132  "-deltaPosition1"
                    let expr_14153 := negate_t_int256(expr_14152)
                    /// @src 61:11097:11132  "deltaPositionBase = -deltaPosition1"
                    var_deltaPositionBase_14113 := expr_14153
                    let expr_14154 := expr_14153
                    /// @src 61:11005:11259  "if (pairStatus.isQuoteZero) {..."
                }
                /// @src 61:11293:11303  "pairStatus"
                let _652_slot := var_pairStatus_14104_slot
                let expr_14170_slot := _652_slot
                /// @src 61:11305:11319  "deltaPosition0"
                let _653 := var_deltaPosition0_14125
                let expr_14171 := _653
                /// @src 61:11321:11335  "deltaPosition1"
                let _654 := var_deltaPosition1_14135
                let expr_14172 := _654
                fun_updateRebalancePosition_15759(expr_14170_slot, expr_14171, expr_14172)

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            /// @ast-id 19652
            /// @src 81:3191:4061  "function settle(GlobalDataLibrary.GlobalData storage globalData, bool isQuoteAsset)..."
            function fun_settle_19652(var_globalData_19558_slot, var_isQuoteAsset_19560) -> var_paid_19563 {
                /// @src 81:3309:3320  "int256 paid"
                let zero_t_int256_655 := zero_value_for_split_t_int256()
                var_paid_19563 := zero_t_int256_655

                /// @src 81:3336:3352  "address currency"
                let var_currency_19566
                let zero_t_address_656 := zero_value_for_split_t_address()
                var_currency_19566 := zero_t_address_656
                /// @src 81:3362:3384  "uint256 reservesBefore"
                let var_reservesBefore_19569
                let zero_t_uint256_657 := zero_value_for_split_t_uint256()
                var_reservesBefore_19569 := zero_t_uint256_657
                /// @src 81:3399:3411  "isQuoteAsset"
                let _658 := var_isQuoteAsset_19560
                let expr_19571 := _658
                /// @src 81:3395:3735  "if (isQuoteAsset) {..."
                switch expr_19571
                case 0 {
                    /// @src 81:3603:3613  "globalData"
                    let _659_slot := var_globalData_19558_slot
                    let expr_19591_slot := _659_slot
                    /// @src 81:3603:3619  "globalData.pairs"
                    let _660 := add(expr_19591_slot, 3)
                    let _661_slot := _660
                    let expr_19592_slot := _661_slot
                    /// @src 81:3620:3630  "globalData"
                    let _662_slot := var_globalData_19558_slot
                    let expr_19593_slot := _662_slot
                    /// @src 81:3620:3639  "globalData.lockData"
                    let _663 := add(expr_19593_slot, 6)
                    let _664_slot := _663
                    let expr_19594_slot := _664_slot
                    /// @src 81:3620:3646  "globalData.lockData.pairId"
                    let _665 := add(expr_19594_slot, 3)
                    let _666 := read_from_storage_split_offset_0_t_uint256(_665)
                    let expr_19595 := _666
                    /// @src 81:3603:3647  "globalData.pairs[globalData.lockData.pairId]"
                    let _667 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_19592_slot,expr_19595)
                    let _668_slot := _667
                    let expr_19596_slot := _668_slot
                    /// @src 81:3603:3656  "globalData.pairs[globalData.lockData.pairId].basePool"
                    let _669 := add(expr_19596_slot, 17)
                    let _670_slot := _669
                    let expr_19597_slot := _670_slot
                    /// @src 81:3603:3662  "globalData.pairs[globalData.lockData.pairId].basePool.token"
                    let _671 := add(expr_19597_slot, 0)
                    let _672 := read_from_storage_split_offset_0_t_address(_671)
                    let expr_19598 := _672
                    /// @src 81:3592:3662  "currency = globalData.pairs[globalData.lockData.pairId].basePool.token"
                    var_currency_19566 := expr_19598
                    let expr_19599 := expr_19598
                    /// @src 81:3693:3703  "globalData"
                    let _673_slot := var_globalData_19558_slot
                    let expr_19602_slot := _673_slot
                    /// @src 81:3693:3712  "globalData.lockData"
                    let _674 := add(expr_19602_slot, 6)
                    let _675_slot := _674
                    let expr_19603_slot := _675_slot
                    /// @src 81:3693:3724  "globalData.lockData.baseReserve"
                    let _676 := add(expr_19603_slot, 2)
                    let _677 := read_from_storage_split_offset_0_t_uint256(_676)
                    let expr_19604 := _677
                    /// @src 81:3676:3724  "reservesBefore = globalData.lockData.baseReserve"
                    var_reservesBefore_19569 := expr_19604
                    let expr_19605 := expr_19604
                    /// @src 81:3395:3735  "if (isQuoteAsset) {..."
                }
                default {
                    /// @src 81:3438:3448  "globalData"
                    let _678_slot := var_globalData_19558_slot
                    let expr_19573_slot := _678_slot
                    /// @src 81:3438:3454  "globalData.pairs"
                    let _679 := add(expr_19573_slot, 3)
                    let _680_slot := _679
                    let expr_19574_slot := _680_slot
                    /// @src 81:3455:3465  "globalData"
                    let _681_slot := var_globalData_19558_slot
                    let expr_19575_slot := _681_slot
                    /// @src 81:3455:3474  "globalData.lockData"
                    let _682 := add(expr_19575_slot, 6)
                    let _683_slot := _682
                    let expr_19576_slot := _683_slot
                    /// @src 81:3455:3481  "globalData.lockData.pairId"
                    let _684 := add(expr_19576_slot, 3)
                    let _685 := read_from_storage_split_offset_0_t_uint256(_684)
                    let expr_19577 := _685
                    /// @src 81:3438:3482  "globalData.pairs[globalData.lockData.pairId]"
                    let _686 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_19574_slot,expr_19577)
                    let _687_slot := _686
                    let expr_19578_slot := _687_slot
                    /// @src 81:3438:3492  "globalData.pairs[globalData.lockData.pairId].quotePool"
                    let _688 := add(expr_19578_slot, 3)
                    let _689_slot := _688
                    let expr_19579_slot := _689_slot
                    /// @src 81:3438:3498  "globalData.pairs[globalData.lockData.pairId].quotePool.token"
                    let _690 := add(expr_19579_slot, 0)
                    let _691 := read_from_storage_split_offset_0_t_address(_690)
                    let expr_19580 := _691
                    /// @src 81:3427:3498  "currency = globalData.pairs[globalData.lockData.pairId].quotePool.token"
                    var_currency_19566 := expr_19580
                    let expr_19581 := expr_19580
                    /// @src 81:3529:3539  "globalData"
                    let _692_slot := var_globalData_19558_slot
                    let expr_19584_slot := _692_slot
                    /// @src 81:3529:3548  "globalData.lockData"
                    let _693 := add(expr_19584_slot, 6)
                    let _694_slot := _693
                    let expr_19585_slot := _694_slot
                    /// @src 81:3529:3561  "globalData.lockData.quoteReserve"
                    let _695 := add(expr_19585_slot, 1)
                    let _696 := read_from_storage_split_offset_0_t_uint256(_695)
                    let expr_19586 := _696
                    /// @src 81:3512:3561  "reservesBefore = globalData.lockData.quoteReserve"
                    var_reservesBefore_19569 := expr_19586
                    let expr_19587 := expr_19586
                    /// @src 81:3395:3735  "if (isQuoteAsset) {..."
                }
                /// @src 81:3774:3782  "currency"
                let _697 := var_currency_19566
                let expr_19612 := _697
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
                let _698 := allocate_unbounded()
                mstore(_698, shift_left_224(expr_19614_functionSelector))
                let _699 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_698, 4) , expr_19618)

                let _700 := staticcall(gas(), expr_19614_address,  _698, sub(_699, _698), _698, 32)

                if iszero(_700) { revert_forward_1() }

                let expr_19619
                if _700 {

                    let _701 := 32

                    if gt(_701, returndatasize()) {
                        _701 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_698, _701)

                    // decode return parameters from external try-call into retVars
                    expr_19619 :=  abi_decode_tuple_t_uint256_fromMemory(_698, add(_698, _701))
                }
                /// @src 81:3745:3808  "uint256 reserveAfter = ERC20(currency).balanceOf(address(this))"
                let var_reserveAfter_19610 := expr_19619
                /// @src 81:3823:3835  "isQuoteAsset"
                let _702 := var_isQuoteAsset_19560
                let expr_19621 := _702
                /// @src 81:3819:3986  "if (isQuoteAsset) {..."
                switch expr_19621
                case 0 {
                    /// @src 81:3963:3975  "reserveAfter"
                    let _703 := var_reserveAfter_19610
                    let expr_19636 := _703
                    /// @src 81:3929:3939  "globalData"
                    let _704_slot := var_globalData_19558_slot
                    let expr_19631_slot := _704_slot
                    /// @src 81:3929:3948  "globalData.lockData"
                    let _705 := add(expr_19631_slot, 6)
                    let _706_slot := _705
                    let expr_19634_slot := _706_slot
                    /// @src 81:3929:3960  "globalData.lockData.baseReserve"
                    let _707 := add(expr_19634_slot, 2)
                    /// @src 81:3929:3975  "globalData.lockData.baseReserve = reserveAfter"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_707, expr_19636)
                    let expr_19637 := expr_19636
                    /// @src 81:3819:3986  "if (isQuoteAsset) {..."
                }
                default {
                    /// @src 81:3886:3898  "reserveAfter"
                    let _708 := var_reserveAfter_19610
                    let expr_19627 := _708
                    /// @src 81:3851:3861  "globalData"
                    let _709_slot := var_globalData_19558_slot
                    let expr_19622_slot := _709_slot
                    /// @src 81:3851:3870  "globalData.lockData"
                    let _710 := add(expr_19622_slot, 6)
                    let _711_slot := _710
                    let expr_19625_slot := _711_slot
                    /// @src 81:3851:3883  "globalData.lockData.quoteReserve"
                    let _712 := add(expr_19625_slot, 1)
                    /// @src 81:3851:3898  "globalData.lockData.quoteReserve = reserveAfter"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_712, expr_19627)
                    let expr_19628 := expr_19627
                    /// @src 81:3819:3986  "if (isQuoteAsset) {..."
                }
                /// @src 81:4003:4015  "reserveAfter"
                let _713 := var_reserveAfter_19610
                let expr_19642 := _713
                /// @src 81:4003:4024  "reserveAfter.toInt256"
                let expr_19643_self := expr_19642
                /// @src 81:4003:4026  "reserveAfter.toInt256()"
                let expr_19644 := fun_toInt256_28969(expr_19643_self)
                /// @src 81:4029:4043  "reservesBefore"
                let _714 := var_reservesBefore_19569
                let expr_19645 := _714
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
            /// @src 74:553:3377  "library ReallocationLogic {..."

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

            /// @ast-id 16941
            /// @src 69:3452:5644  "function getFeeGrowthInside(address uniswapPoolAddress, int24 tickLower, int24 tickUpper)..."
            function fun_getFeeGrowthInside_16941(var_uniswapPoolAddress_16800, var_tickLower_16802, var_tickUpper_16804) -> var_feeGrowthInside0X128_16807, var_feeGrowthInside1X128_16809 {
                /// @src 69:3589:3617  "uint256 feeGrowthInside0X128"
                let zero_t_uint256_715 := zero_value_for_split_t_uint256()
                var_feeGrowthInside0X128_16807 := zero_t_uint256_715
                /// @src 69:3619:3647  "uint256 feeGrowthInside1X128"
                let zero_t_uint256_716 := zero_value_for_split_t_uint256()
                var_feeGrowthInside1X128_16809 := zero_t_uint256_716

                /// @src 69:3707:3725  "uniswapPoolAddress"
                let _717 := var_uniswapPoolAddress_16800
                let expr_16814 := _717
                /// @src 69:3692:3726  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16815_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16814)
                /// @src 69:3692:3732  "IUniswapV3Pool(uniswapPoolAddress).slot0"
                let expr_16816_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16815_address)
                let expr_16816_functionSelector := 0x3850c7bd
                /// @src 69:3692:3734  "IUniswapV3Pool(uniswapPoolAddress).slot0()"

                // storage for arguments and returned data
                let _718 := allocate_unbounded()
                mstore(_718, shift_left_224(expr_16816_functionSelector))
                let _719 := abi_encode_tuple__to__fromStack(add(_718, 4) )

                let _720 := staticcall(gas(), expr_16816_address,  _718, sub(_719, _718), _718, 224)

                if iszero(_720) { revert_forward_1() }

                let expr_16817_component_1, expr_16817_component_2, expr_16817_component_3, expr_16817_component_4, expr_16817_component_5, expr_16817_component_6, expr_16817_component_7
                if _720 {

                    let _721 := 224

                    if gt(_721, returndatasize()) {
                        _721 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_718, _721)

                    // decode return parameters from external try-call into retVars
                    expr_16817_component_1, expr_16817_component_2, expr_16817_component_3, expr_16817_component_4, expr_16817_component_5, expr_16817_component_6, expr_16817_component_7 :=  abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(_718, add(_718, _721))
                }
                /// @src 69:3663:3734  "(, int24 tickCurrent,,,,,) = IUniswapV3Pool(uniswapPoolAddress).slot0()"
                let var_tickCurrent_16812 := expr_16817_component_2
                /// @src 69:3791:3809  "uniswapPoolAddress"
                let _722 := var_uniswapPoolAddress_16800
                let expr_16822 := _722
                /// @src 69:3776:3810  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16823_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16822)
                /// @src 69:3776:3831  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal0X128"
                let expr_16824_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16823_address)
                let expr_16824_functionSelector := 0xf3058399
                /// @src 69:3776:3833  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal0X128()"

                // storage for arguments and returned data
                let _723 := allocate_unbounded()
                mstore(_723, shift_left_224(expr_16824_functionSelector))
                let _724 := abi_encode_tuple__to__fromStack(add(_723, 4) )

                let _725 := staticcall(gas(), expr_16824_address,  _723, sub(_724, _723), _723, 32)

                if iszero(_725) { revert_forward_1() }

                let expr_16825
                if _725 {

                    let _726 := 32

                    if gt(_726, returndatasize()) {
                        _726 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_723, _726)

                    // decode return parameters from external try-call into retVars
                    expr_16825 :=  abi_decode_tuple_t_uint256_fromMemory(_723, add(_723, _726))
                }
                /// @src 69:3745:3833  "uint256 feeGrowthGlobal0X128 = IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal0X128()"
                let var_feeGrowthGlobal0X128_16820 := expr_16825
                /// @src 69:3889:3907  "uniswapPoolAddress"
                let _727 := var_uniswapPoolAddress_16800
                let expr_16830 := _727
                /// @src 69:3874:3908  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16831_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16830)
                /// @src 69:3874:3929  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal1X128"
                let expr_16832_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16831_address)
                let expr_16832_functionSelector := 0x46141319
                /// @src 69:3874:3931  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal1X128()"

                // storage for arguments and returned data
                let _728 := allocate_unbounded()
                mstore(_728, shift_left_224(expr_16832_functionSelector))
                let _729 := abi_encode_tuple__to__fromStack(add(_728, 4) )

                let _730 := staticcall(gas(), expr_16832_address,  _728, sub(_729, _728), _728, 32)

                if iszero(_730) { revert_forward_1() }

                let expr_16833
                if _730 {

                    let _731 := 32

                    if gt(_731, returndatasize()) {
                        _731 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_728, _731)

                    // decode return parameters from external try-call into retVars
                    expr_16833 :=  abi_decode_tuple_t_uint256_fromMemory(_728, add(_728, _731))
                }
                /// @src 69:3843:3931  "uint256 feeGrowthGlobal1X128 = IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal1X128()"
                let var_feeGrowthGlobal1X128_16828 := expr_16833
                /// @src 69:3980:4007  "uint256 feeGrowthBelow0X128"
                let var_feeGrowthBelow0X128_16836
                let zero_t_uint256_732 := zero_value_for_split_t_uint256()
                var_feeGrowthBelow0X128_16836 := zero_t_uint256_732
                /// @src 69:4017:4044  "uint256 feeGrowthBelow1X128"
                let var_feeGrowthBelow1X128_16839
                let zero_t_uint256_733 := zero_value_for_split_t_uint256()
                var_feeGrowthBelow1X128_16839 := zero_t_uint256_733
                /// @src 69:4214:4232  "uniswapPoolAddress"
                let _734 := var_uniswapPoolAddress_16800
                let expr_16846 := _734
                /// @src 69:4199:4233  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16847_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16846)
                /// @src 69:4199:4239  "IUniswapV3Pool(uniswapPoolAddress).ticks"
                let expr_16848_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16847_address)
                let expr_16848_functionSelector := 0xf30dba93
                /// @src 69:4240:4249  "tickLower"
                let _735 := var_tickLower_16802
                let expr_16849 := _735
                /// @src 69:4199:4250  "IUniswapV3Pool(uniswapPoolAddress).ticks(tickLower)"

                // storage for arguments and returned data
                let _736 := allocate_unbounded()
                mstore(_736, shift_left_224(expr_16848_functionSelector))
                let _737 := abi_encode_tuple_t_int24__to_t_int24__fromStack(add(_736, 4) , expr_16849)

                let _738 := staticcall(gas(), expr_16848_address,  _736, sub(_737, _736), _736, 256)

                if iszero(_738) { revert_forward_1() }

                let expr_16850_component_1, expr_16850_component_2, expr_16850_component_3, expr_16850_component_4, expr_16850_component_5, expr_16850_component_6, expr_16850_component_7, expr_16850_component_8
                if _738 {

                    let _739 := 256

                    if gt(_739, returndatasize()) {
                        _739 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_736, _739)

                    // decode return parameters from external try-call into retVars
                    expr_16850_component_1, expr_16850_component_2, expr_16850_component_3, expr_16850_component_4, expr_16850_component_5, expr_16850_component_6, expr_16850_component_7, expr_16850_component_8 :=  abi_decode_tuple_t_uint128t_int128t_uint256t_uint256t_int56t_uint160t_uint32t_bool_fromMemory(_736, add(_736, _739))
                }
                /// @src 69:4097:4250  "(,, uint256 lowerFeeGrowthOutside0X128, uint256 lowerFeeGrowthOutside1X128,,,,) =..."
                let var_lowerFeeGrowthOutside0X128_16842 := expr_16850_component_3
                let var_lowerFeeGrowthOutside1X128_16844 := expr_16850_component_4
                /// @src 69:4273:4284  "tickCurrent"
                let _740 := var_tickCurrent_16812
                let expr_16852 := _740
                /// @src 69:4288:4297  "tickLower"
                let _741 := var_tickLower_16802
                let expr_16853 := _741
                /// @src 69:4273:4297  "tickCurrent >= tickLower"
                let expr_16854 := iszero(slt(cleanup_t_int24(expr_16852), cleanup_t_int24(expr_16853)))
                /// @src 69:4269:4669  "if (tickCurrent >= tickLower) {..."
                switch expr_16854
                case 0 {
                    /// @src 69:4508:4528  "feeGrowthGlobal0X128"
                    let _742 := var_feeGrowthGlobal0X128_16820
                    let expr_16865 := _742
                    /// @src 69:4531:4557  "lowerFeeGrowthOutside0X128"
                    let _743 := var_lowerFeeGrowthOutside0X128_16842
                    let expr_16866 := _743
                    /// @src 69:4508:4557  "feeGrowthGlobal0X128 - lowerFeeGrowthOutside0X128"
                    let expr_16867 := wrapping_sub_t_uint256(expr_16865, expr_16866)

                    /// @src 69:4486:4557  "feeGrowthBelow0X128 = feeGrowthGlobal0X128 - lowerFeeGrowthOutside0X128"
                    var_feeGrowthBelow0X128_16836 := expr_16867
                    let expr_16868 := expr_16867
                    /// @src 69:4601:4621  "feeGrowthGlobal1X128"
                    let _744 := var_feeGrowthGlobal1X128_16828
                    let expr_16871 := _744
                    /// @src 69:4624:4650  "lowerFeeGrowthOutside1X128"
                    let _745 := var_lowerFeeGrowthOutside1X128_16844
                    let expr_16872 := _745
                    /// @src 69:4601:4650  "feeGrowthGlobal1X128 - lowerFeeGrowthOutside1X128"
                    let expr_16873 := wrapping_sub_t_uint256(expr_16871, expr_16872)

                    /// @src 69:4579:4650  "feeGrowthBelow1X128 = feeGrowthGlobal1X128 - lowerFeeGrowthOutside1X128"
                    var_feeGrowthBelow1X128_16839 := expr_16873
                    let expr_16874 := expr_16873
                    /// @src 69:4269:4669  "if (tickCurrent >= tickLower) {..."
                }
                default {
                    /// @src 69:4343:4369  "lowerFeeGrowthOutside0X128"
                    let _746 := var_lowerFeeGrowthOutside0X128_16842
                    let expr_16856 := _746
                    /// @src 69:4321:4369  "feeGrowthBelow0X128 = lowerFeeGrowthOutside0X128"
                    var_feeGrowthBelow0X128_16836 := expr_16856
                    let expr_16857 := expr_16856
                    /// @src 69:4413:4439  "lowerFeeGrowthOutside1X128"
                    let _747 := var_lowerFeeGrowthOutside1X128_16844
                    let expr_16860 := _747
                    /// @src 69:4391:4439  "feeGrowthBelow1X128 = lowerFeeGrowthOutside1X128"
                    var_feeGrowthBelow1X128_16839 := expr_16860
                    let expr_16861 := expr_16860
                    /// @src 69:4269:4669  "if (tickCurrent >= tickLower) {..."
                }
                /// @src 69:4739:4766  "uint256 feeGrowthAbove0X128"
                let var_feeGrowthAbove0X128_16880
                let zero_t_uint256_748 := zero_value_for_split_t_uint256()
                var_feeGrowthAbove0X128_16880 := zero_t_uint256_748
                /// @src 69:4780:4807  "uint256 feeGrowthAbove1X128"
                let var_feeGrowthAbove1X128_16883
                let zero_t_uint256_749 := zero_value_for_split_t_uint256()
                var_feeGrowthAbove1X128_16883 := zero_t_uint256_749
                /// @src 69:4957:4975  "uniswapPoolAddress"
                let _750 := var_uniswapPoolAddress_16800
                let expr_16890 := _750
                /// @src 69:4942:4976  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16891_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16890)
                /// @src 69:4942:4982  "IUniswapV3Pool(uniswapPoolAddress).ticks"
                let expr_16892_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16891_address)
                let expr_16892_functionSelector := 0xf30dba93
                /// @src 69:4983:4992  "tickUpper"
                let _751 := var_tickUpper_16804
                let expr_16893 := _751
                /// @src 69:4942:4993  "IUniswapV3Pool(uniswapPoolAddress).ticks(tickUpper)"

                // storage for arguments and returned data
                let _752 := allocate_unbounded()
                mstore(_752, shift_left_224(expr_16892_functionSelector))
                let _753 := abi_encode_tuple_t_int24__to_t_int24__fromStack(add(_752, 4) , expr_16893)

                let _754 := staticcall(gas(), expr_16892_address,  _752, sub(_753, _752), _752, 256)

                if iszero(_754) { revert_forward_1() }

                let expr_16894_component_1, expr_16894_component_2, expr_16894_component_3, expr_16894_component_4, expr_16894_component_5, expr_16894_component_6, expr_16894_component_7, expr_16894_component_8
                if _754 {

                    let _755 := 256

                    if gt(_755, returndatasize()) {
                        _755 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_752, _755)

                    // decode return parameters from external try-call into retVars
                    expr_16894_component_1, expr_16894_component_2, expr_16894_component_3, expr_16894_component_4, expr_16894_component_5, expr_16894_component_6, expr_16894_component_7, expr_16894_component_8 :=  abi_decode_tuple_t_uint128t_int128t_uint256t_uint256t_int56t_uint160t_uint32t_bool_fromMemory(_752, add(_752, _755))
                }
                /// @src 69:4840:4993  "(,, uint256 upperFeeGrowthOutside0X128, uint256 upperFeeGrowthOutside1X128,,,,) =..."
                let var_upperFeeGrowthOutside0X128_16886 := expr_16894_component_3
                let var_upperFeeGrowthOutside1X128_16888 := expr_16894_component_4
                /// @src 69:5016:5027  "tickCurrent"
                let _756 := var_tickCurrent_16812
                let expr_16896 := _756
                /// @src 69:5030:5039  "tickUpper"
                let _757 := var_tickUpper_16804
                let expr_16897 := _757
                /// @src 69:5016:5039  "tickCurrent < tickUpper"
                let expr_16898 := slt(cleanup_t_int24(expr_16896), cleanup_t_int24(expr_16897))
                /// @src 69:5012:5411  "if (tickCurrent < tickUpper) {..."
                switch expr_16898
                case 0 {
                    /// @src 69:5250:5270  "feeGrowthGlobal0X128"
                    let _758 := var_feeGrowthGlobal0X128_16820
                    let expr_16909 := _758
                    /// @src 69:5273:5299  "upperFeeGrowthOutside0X128"
                    let _759 := var_upperFeeGrowthOutside0X128_16886
                    let expr_16910 := _759
                    /// @src 69:5250:5299  "feeGrowthGlobal0X128 - upperFeeGrowthOutside0X128"
                    let expr_16911 := wrapping_sub_t_uint256(expr_16909, expr_16910)

                    /// @src 69:5228:5299  "feeGrowthAbove0X128 = feeGrowthGlobal0X128 - upperFeeGrowthOutside0X128"
                    var_feeGrowthAbove0X128_16880 := expr_16911
                    let expr_16912 := expr_16911
                    /// @src 69:5343:5363  "feeGrowthGlobal1X128"
                    let _760 := var_feeGrowthGlobal1X128_16828
                    let expr_16915 := _760
                    /// @src 69:5366:5392  "upperFeeGrowthOutside1X128"
                    let _761 := var_upperFeeGrowthOutside1X128_16888
                    let expr_16916 := _761
                    /// @src 69:5343:5392  "feeGrowthGlobal1X128 - upperFeeGrowthOutside1X128"
                    let expr_16917 := wrapping_sub_t_uint256(expr_16915, expr_16916)

                    /// @src 69:5321:5392  "feeGrowthAbove1X128 = feeGrowthGlobal1X128 - upperFeeGrowthOutside1X128"
                    var_feeGrowthAbove1X128_16883 := expr_16917
                    let expr_16918 := expr_16917
                    /// @src 69:5012:5411  "if (tickCurrent < tickUpper) {..."
                }
                default {
                    /// @src 69:5085:5111  "upperFeeGrowthOutside0X128"
                    let _762 := var_upperFeeGrowthOutside0X128_16886
                    let expr_16900 := _762
                    /// @src 69:5063:5111  "feeGrowthAbove0X128 = upperFeeGrowthOutside0X128"
                    var_feeGrowthAbove0X128_16880 := expr_16900
                    let expr_16901 := expr_16900
                    /// @src 69:5155:5181  "upperFeeGrowthOutside1X128"
                    let _763 := var_upperFeeGrowthOutside1X128_16888
                    let expr_16904 := _763
                    /// @src 69:5133:5181  "feeGrowthAbove1X128 = upperFeeGrowthOutside1X128"
                    var_feeGrowthAbove1X128_16883 := expr_16904
                    let expr_16905 := expr_16904
                    /// @src 69:5012:5411  "if (tickCurrent < tickUpper) {..."
                }
                /// @src 69:5462:5482  "feeGrowthGlobal0X128"
                let _764 := var_feeGrowthGlobal0X128_16820
                let expr_16924 := _764
                /// @src 69:5485:5504  "feeGrowthBelow0X128"
                let _765 := var_feeGrowthBelow0X128_16836
                let expr_16925 := _765
                /// @src 69:5462:5504  "feeGrowthGlobal0X128 - feeGrowthBelow0X128"
                let expr_16926 := wrapping_sub_t_uint256(expr_16924, expr_16925)

                /// @src 69:5507:5526  "feeGrowthAbove0X128"
                let _766 := var_feeGrowthAbove0X128_16880
                let expr_16927 := _766
                /// @src 69:5462:5526  "feeGrowthGlobal0X128 - feeGrowthBelow0X128 - feeGrowthAbove0X128"
                let expr_16928 := wrapping_sub_t_uint256(expr_16926, expr_16927)

                /// @src 69:5439:5526  "feeGrowthInside0X128 = feeGrowthGlobal0X128 - feeGrowthBelow0X128 - feeGrowthAbove0X128"
                var_feeGrowthInside0X128_16807 := expr_16928
                let expr_16929 := expr_16928
                /// @src 69:5563:5583  "feeGrowthGlobal1X128"
                let _767 := var_feeGrowthGlobal1X128_16828
                let expr_16932 := _767
                /// @src 69:5586:5605  "feeGrowthBelow1X128"
                let _768 := var_feeGrowthBelow1X128_16839
                let expr_16933 := _768
                /// @src 69:5563:5605  "feeGrowthGlobal1X128 - feeGrowthBelow1X128"
                let expr_16934 := wrapping_sub_t_uint256(expr_16932, expr_16933)

                /// @src 69:5608:5627  "feeGrowthAbove1X128"
                let _769 := var_feeGrowthAbove1X128_16883
                let expr_16935 := _769
                /// @src 69:5563:5627  "feeGrowthGlobal1X128 - feeGrowthBelow1X128 - feeGrowthAbove1X128"
                let expr_16936 := wrapping_sub_t_uint256(expr_16934, expr_16935)

                /// @src 69:5540:5627  "feeGrowthInside1X128 = feeGrowthGlobal1X128 - feeGrowthBelow1X128 - feeGrowthAbove1X128"
                var_feeGrowthInside1X128_16809 := expr_16936
                let expr_16937 := expr_16936

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function convert_t_rational_1000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000000000000000000_by_1(value)))
            }

            /// @src 57:87:123  "uint256 internal constant ONE = 1e18"
            function constant_ONE_30273() -> ret {
                /// @src 57:119:123  "1e18"
                let expr_30272 := 0x0de0b6b3a7640000
                let _777 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_30272)

                ret := _777
            }

            /// @ast-id 15131
            /// @src 61:21806:22194  "function getUtilizationRatio(SqrtPerpAssetStatus memory _assetStatus) internal pure returns (uint256) {..."
            function fun_getUtilizationRatio_15131(var__assetStatus_15097_mpos) -> var__15100 {
                /// @src 61:21899:21906  "uint256"
                let zero_t_uint256_770 := zero_value_for_split_t_uint256()
                var__15100 := zero_t_uint256_770

                /// @src 61:21922:21934  "_assetStatus"
                let _771_mpos := var__assetStatus_15097_mpos
                let expr_15102_mpos := _771_mpos
                /// @src 61:21922:21946  "_assetStatus.totalAmount"
                let _772 := add(expr_15102_mpos, 128)
                let _773 := read_from_memoryt_uint256(_772)
                let expr_15103 := _773
                /// @src 61:21950:21951  "0"
                let expr_15104 := 0x00
                /// @src 61:21922:21951  "_assetStatus.totalAmount == 0"
                let expr_15105 := eq(cleanup_t_uint256(expr_15103), convert_t_rational_0_by_1_to_t_uint256(expr_15104))
                /// @src 61:21918:21986  "if (_assetStatus.totalAmount == 0) {..."
                if expr_15105 {
                    /// @src 61:21974:21975  "0"
                    let expr_15106 := 0x00
                    /// @src 61:21967:21975  "return 0"
                    var__15100 := convert_t_rational_0_by_1_to_t_uint256(expr_15106)
                    leave
                    /// @src 61:21918:21986  "if (_assetStatus.totalAmount == 0) {..."
                }
                /// @src 61:22018:22030  "_assetStatus"
                let _774_mpos := var__assetStatus_15097_mpos
                let expr_15112_mpos := _774_mpos
                /// @src 61:22018:22045  "_assetStatus.borrowedAmount"
                let _775 := add(expr_15112_mpos, 160)
                let _776 := read_from_memoryt_uint256(_775)
                let expr_15113 := _776
                /// @src 61:22048:22057  "Constants"
                let expr_15114_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 61:22048:22061  "Constants.ONE"
                let expr_15115 := constant_ONE_30273()
                /// @src 61:22018:22061  "_assetStatus.borrowedAmount * Constants.ONE"
                let expr_15116 := checked_mul_t_uint256(expr_15113, expr_15115)

                /// @src 61:22064:22076  "_assetStatus"
                let _778_mpos := var__assetStatus_15097_mpos
                let expr_15117_mpos := _778_mpos
                /// @src 61:22064:22088  "_assetStatus.totalAmount"
                let _779 := add(expr_15117_mpos, 128)
                let _780 := read_from_memoryt_uint256(_779)
                let expr_15118 := _780
                /// @src 61:22018:22088  "_assetStatus.borrowedAmount * Constants.ONE / _assetStatus.totalAmount"
                let expr_15119 := checked_div_t_uint256(expr_15116, expr_15118)

                /// @src 61:21996:22088  "uint256 utilization = _assetStatus.borrowedAmount * Constants.ONE / _assetStatus.totalAmount"
                let var_utilization_15111 := expr_15119
                /// @src 61:22103:22114  "utilization"
                let _781 := var_utilization_15111
                let expr_15121 := _781
                /// @src 61:22117:22121  "1e18"
                let expr_15122 := 0x0de0b6b3a7640000
                /// @src 61:22103:22121  "utilization > 1e18"
                let expr_15123 := gt(cleanup_t_uint256(expr_15121), convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_15122))
                /// @src 61:22099:22159  "if (utilization > 1e18) {..."
                if expr_15123 {
                    /// @src 61:22144:22148  "1e18"
                    let expr_15124 := 0x0de0b6b3a7640000
                    /// @src 61:22137:22148  "return 1e18"
                    var__15100 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_15124)
                    leave
                    /// @src 61:22099:22159  "if (utilization > 1e18) {..."
                }
                /// @src 61:22176:22187  "utilization"
                let _782 := var_utilization_15111
                let expr_15128 := _782
                /// @src 61:22169:22187  "return utilization"
                var__15100 := expr_15128
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function cleanup_t_rational_100000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_100000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_100000000000000000_by_1(value)))
            }

            /// @src 57:1106:1158  "uint256 internal constant SQUART_KINK_UR = 10 * 1e16"
            function constant_SQUART_KINK_UR_30317() -> ret {
                /// @src 57:1149:1158  "10 * 1e16"
                let expr_30316 := 0x016345785d8a0000
                let _785 := convert_t_rational_100000000000000000_by_1_to_t_uint256(expr_30316)

                ret := _785
            }

            function cleanup_t_rational_1600_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1600_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1600_by_1(value)))
            }

            /// @ast-id 30359
            /// @src 64:339:644  "function calculatePremiumCurve(uint256 utilization) internal pure returns (uint256) {..."
            function fun_calculatePremiumCurve_30359(var_utilization_30324) -> var__30327 {
                /// @src 64:414:421  "uint256"
                let zero_t_uint256_783 := zero_value_for_split_t_uint256()
                var__30327 := zero_t_uint256_783

                /// @src 64:437:448  "utilization"
                let _784 := var_utilization_30324
                let expr_30329 := _784
                /// @src 64:452:461  "Constants"
                let expr_30330_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 64:452:476  "Constants.SQUART_KINK_UR"
                let expr_30331 := constant_SQUART_KINK_UR_30317()
                /// @src 64:437:476  "utilization <= Constants.SQUART_KINK_UR"
                let expr_30332 := iszero(gt(cleanup_t_uint256(expr_30329), cleanup_t_uint256(expr_30331)))
                /// @src 64:433:511  "if (utilization <= Constants.SQUART_KINK_UR) {..."
                if expr_30332 {
                    /// @src 64:499:500  "0"
                    let expr_30333 := 0x00
                    /// @src 64:492:500  "return 0"
                    var__30327 := convert_t_rational_0_by_1_to_t_uint256(expr_30333)
                    leave
                    /// @src 64:433:511  "if (utilization <= Constants.SQUART_KINK_UR) {..."
                }
                /// @src 64:534:545  "utilization"
                let _786 := var_utilization_30324
                let expr_30339 := _786
                /// @src 64:548:557  "Constants"
                let expr_30340_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 64:548:572  "Constants.SQUART_KINK_UR"
                let expr_30341 := constant_SQUART_KINK_UR_30317()
                /// @src 64:534:572  "utilization - Constants.SQUART_KINK_UR"
                let expr_30342 := checked_sub_t_uint256(expr_30339, expr_30341)

                /// @src 64:533:573  "(utilization - Constants.SQUART_KINK_UR)"
                let expr_30343 := expr_30342
                /// @src 64:521:573  "uint256 b = (utilization - Constants.SQUART_KINK_UR)"
                let var_b_30338 := expr_30343
                /// @src 64:592:596  "1600"
                let expr_30345 := 0x0640
                /// @src 64:599:600  "b"
                let _787 := var_b_30338
                let expr_30346 := _787
                /// @src 64:592:600  "1600 * b"
                let expr_30347 := checked_mul_t_uint256(convert_t_rational_1600_by_1_to_t_uint256(expr_30345), expr_30346)

                /// @src 64:603:604  "b"
                let _788 := var_b_30338
                let expr_30348 := _788
                /// @src 64:592:604  "1600 * b * b"
                let expr_30349 := checked_mul_t_uint256(expr_30347, expr_30348)

                /// @src 64:607:616  "Constants"
                let expr_30350_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 64:607:620  "Constants.ONE"
                let expr_30351 := constant_ONE_30273()
                /// @src 64:592:620  "1600 * b * b / Constants.ONE"
                let expr_30352 := checked_div_t_uint256(expr_30349, expr_30351)

                /// @src 64:591:621  "(1600 * b * b / Constants.ONE)"
                let expr_30353 := expr_30352
                /// @src 64:624:633  "Constants"
                let expr_30354_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 64:624:637  "Constants.ONE"
                let expr_30355 := constant_ONE_30273()
                /// @src 64:591:637  "(1600 * b * b / Constants.ONE) / Constants.ONE"
                let expr_30356 := checked_div_t_uint256(expr_30353, expr_30355)

                /// @src 64:584:637  "return (1600 * b * b / Constants.ONE) / Constants.ONE"
                var__30327 := expr_30356
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            function wrapping_mul_t_uint256(x, y) -> product {
                product := cleanup_t_uint256(mul(x, y))
            }

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
                let zero_t_uint256_789 := zero_value_for_split_t_uint256()
                var_result_32393 := zero_t_uint256_789

                /// @src 26:1226:1239  "uint256 prod0"
                let var_prod0_32396
                let zero_t_uint256_790 := zero_value_for_split_t_uint256()
                var_prod0_32396 := zero_t_uint256_790
                /// @src 26:1298:1311  "uint256 prod1"
                let var_prod1_32399
                let zero_t_uint256_791 := zero_value_for_split_t_uint256()
                var_prod1_32399 := zero_t_uint256_791
                /// @src 26:1369:1535  "assembly {..."
                {
                    let usr$mm := mulmod(var_a_32386, var_b_32388, not(0))
                    var_prod0_32396 := mul(var_a_32386, var_b_32388)
                    var_prod1_32399 := sub(sub(usr$mm, var_prod0_32396), lt(usr$mm, var_prod0_32396))
                }
                /// @src 26:1615:1620  "prod1"
                let _792 := var_prod1_32399
                let expr_32402 := _792
                /// @src 26:1624:1625  "0"
                let expr_32403 := 0x00
                /// @src 26:1615:1625  "prod1 == 0"
                let expr_32404 := eq(cleanup_t_uint256(expr_32402), convert_t_rational_0_by_1_to_t_uint256(expr_32403))
                /// @src 26:1611:1814  "if (prod1 == 0) {..."
                if expr_32404 {
                    /// @src 26:1653:1664  "denominator"
                    let _793 := var_denominator_32390
                    let expr_32406 := _793
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
                    let _794 := var_result_32393
                    let expr_32412 := _794
                    /// @src 26:1786:1799  "return result"
                    var_result_32393 := expr_32412
                    leave
                    /// @src 26:1611:1814  "if (prod1 == 0) {..."
                }
                /// @src 26:1939:1950  "denominator"
                let _795 := var_denominator_32390
                let expr_32417 := _795
                /// @src 26:1953:1958  "prod1"
                let _796 := var_prod1_32399
                let expr_32418 := _796
                /// @src 26:1939:1958  "denominator > prod1"
                let expr_32419 := gt(cleanup_t_uint256(expr_32417), cleanup_t_uint256(expr_32418))
                /// @src 26:1931:1959  "require(denominator > prod1)"
                require_helper(expr_32419)
                /// @src 26:2260:2277  "uint256 remainder"
                let var_remainder_32423
                let zero_t_uint256_797 := zero_value_for_split_t_uint256()
                var_remainder_32423 := zero_t_uint256_797
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
                let _798 := var_denominator_32390
                let expr_32430 := _798
                /// @src 26:2752:2767  "0 - denominator"
                let expr_32431 := wrapping_sub_t_uint256(convert_t_rational_0_by_1_to_t_uint256(expr_32429), expr_32430)

                /// @src 26:2751:2768  "(0 - denominator)"
                let expr_32432 := expr_32431
                /// @src 26:2771:2782  "denominator"
                let _799 := var_denominator_32390
                let expr_32433 := _799
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
                let _800 := var_prod1_32399
                let expr_32440 := _800
                /// @src 26:3367:3371  "twos"
                let _801 := var_twos_32428
                let expr_32441 := _801
                /// @src 26:3359:3371  "prod1 * twos"
                let expr_32442 := wrapping_mul_t_uint256(expr_32440, expr_32441)

                /// @src 26:3350:3371  "prod0 |= prod1 * twos"
                let _802 := var_prod0_32396
                let expr_32443 := or(_802, expr_32442)

                var_prod0_32396 := expr_32443
                /// @src 26:3744:3745  "3"
                let expr_32447 := 0x03
                /// @src 26:3748:3759  "denominator"
                let _803 := var_denominator_32390
                let expr_32448 := _803
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
                let _804 := var_denominator_32390
                let expr_32456 := _804
                /// @src 26:4020:4023  "inv"
                let _805 := var_inv_32446
                let expr_32457 := _805
                /// @src 26:4006:4023  "denominator * inv"
                let expr_32458 := wrapping_mul_t_uint256(expr_32456, expr_32457)

                /// @src 26:4002:4023  "2 - denominator * inv"
                let expr_32459 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32455), expr_32458)

                /// @src 26:3995:4023  "inv *= 2 - denominator * inv"
                let _806 := var_inv_32446
                let expr_32460 := wrapping_mul_t_uint256(_806, expr_32459)

                var_inv_32446 := expr_32460
                /// @src 26:4064:4065  "2"
                let expr_32463 := 0x02
                /// @src 26:4068:4079  "denominator"
                let _807 := var_denominator_32390
                let expr_32464 := _807
                /// @src 26:4082:4085  "inv"
                let _808 := var_inv_32446
                let expr_32465 := _808
                /// @src 26:4068:4085  "denominator * inv"
                let expr_32466 := wrapping_mul_t_uint256(expr_32464, expr_32465)

                /// @src 26:4064:4085  "2 - denominator * inv"
                let expr_32467 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32463), expr_32466)

                /// @src 26:4057:4085  "inv *= 2 - denominator * inv"
                let _809 := var_inv_32446
                let expr_32468 := wrapping_mul_t_uint256(_809, expr_32467)

                var_inv_32446 := expr_32468
                /// @src 26:4127:4128  "2"
                let expr_32471 := 0x02
                /// @src 26:4131:4142  "denominator"
                let _810 := var_denominator_32390
                let expr_32472 := _810
                /// @src 26:4145:4148  "inv"
                let _811 := var_inv_32446
                let expr_32473 := _811
                /// @src 26:4131:4148  "denominator * inv"
                let expr_32474 := wrapping_mul_t_uint256(expr_32472, expr_32473)

                /// @src 26:4127:4148  "2 - denominator * inv"
                let expr_32475 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32471), expr_32474)

                /// @src 26:4120:4148  "inv *= 2 - denominator * inv"
                let _812 := var_inv_32446
                let expr_32476 := wrapping_mul_t_uint256(_812, expr_32475)

                var_inv_32446 := expr_32476
                /// @src 26:4190:4191  "2"
                let expr_32479 := 0x02
                /// @src 26:4194:4205  "denominator"
                let _813 := var_denominator_32390
                let expr_32480 := _813
                /// @src 26:4208:4211  "inv"
                let _814 := var_inv_32446
                let expr_32481 := _814
                /// @src 26:4194:4211  "denominator * inv"
                let expr_32482 := wrapping_mul_t_uint256(expr_32480, expr_32481)

                /// @src 26:4190:4211  "2 - denominator * inv"
                let expr_32483 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32479), expr_32482)

                /// @src 26:4183:4211  "inv *= 2 - denominator * inv"
                let _815 := var_inv_32446
                let expr_32484 := wrapping_mul_t_uint256(_815, expr_32483)

                var_inv_32446 := expr_32484
                /// @src 26:4253:4254  "2"
                let expr_32487 := 0x02
                /// @src 26:4257:4268  "denominator"
                let _816 := var_denominator_32390
                let expr_32488 := _816
                /// @src 26:4271:4274  "inv"
                let _817 := var_inv_32446
                let expr_32489 := _817
                /// @src 26:4257:4274  "denominator * inv"
                let expr_32490 := wrapping_mul_t_uint256(expr_32488, expr_32489)

                /// @src 26:4253:4274  "2 - denominator * inv"
                let expr_32491 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32487), expr_32490)

                /// @src 26:4246:4274  "inv *= 2 - denominator * inv"
                let _818 := var_inv_32446
                let expr_32492 := wrapping_mul_t_uint256(_818, expr_32491)

                var_inv_32446 := expr_32492
                /// @src 26:4317:4318  "2"
                let expr_32495 := 0x02
                /// @src 26:4321:4332  "denominator"
                let _819 := var_denominator_32390
                let expr_32496 := _819
                /// @src 26:4335:4338  "inv"
                let _820 := var_inv_32446
                let expr_32497 := _820
                /// @src 26:4321:4338  "denominator * inv"
                let expr_32498 := wrapping_mul_t_uint256(expr_32496, expr_32497)

                /// @src 26:4317:4338  "2 - denominator * inv"
                let expr_32499 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32495), expr_32498)

                /// @src 26:4310:4338  "inv *= 2 - denominator * inv"
                let _821 := var_inv_32446
                let expr_32500 := wrapping_mul_t_uint256(_821, expr_32499)

                var_inv_32446 := expr_32500
                /// @src 26:4813:4818  "prod0"
                let _822 := var_prod0_32396
                let expr_32503 := _822
                /// @src 26:4821:4824  "inv"
                let _823 := var_inv_32446
                let expr_32504 := _823
                /// @src 26:4813:4824  "prod0 * inv"
                let expr_32505 := wrapping_mul_t_uint256(expr_32503, expr_32504)

                /// @src 26:4804:4824  "result = prod0 * inv"
                var_result_32393 := expr_32505
                let expr_32506 := expr_32505
                /// @src 26:4845:4851  "result"
                let _824 := var_result_32393
                let expr_32508 := _824
                /// @src 26:4838:4851  "return result"
                var_result_32393 := expr_32508
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 31668
            /// @src 66:7920:8410  "function getUtilizationRatio(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getUtilizationRatio_31668(var_tokenState_31626_mpos) -> var__31629 {
                /// @src 66:8003:8010  "uint256"
                let zero_t_uint256_825 := zero_value_for_split_t_uint256()
                var__31629 := zero_t_uint256_825

                /// @src 66:8026:8036  "tokenState"
                let _826_mpos := var_tokenState_31626_mpos
                let expr_31631_mpos := _826_mpos
                /// @src 66:8026:8059  "tokenState.totalCompoundDeposited"
                let _827 := add(expr_31631_mpos, 0)
                let _828 := read_from_memoryt_uint256(_827)
                let expr_31632 := _828
                /// @src 66:8063:8064  "0"
                let expr_31633 := 0x00
                /// @src 66:8026:8064  "tokenState.totalCompoundDeposited == 0"
                let expr_31634 := eq(cleanup_t_uint256(expr_31632), convert_t_rational_0_by_1_to_t_uint256(expr_31633))
                /// @src 66:8026:8104  "tokenState.totalCompoundDeposited == 0 && tokenState.totalNormalDeposited == 0"
                let expr_31639 := expr_31634
                if expr_31639 {
                    /// @src 66:8068:8078  "tokenState"
                    let _829_mpos := var_tokenState_31626_mpos
                    let expr_31635_mpos := _829_mpos
                    /// @src 66:8068:8099  "tokenState.totalNormalDeposited"
                    let _830 := add(expr_31635_mpos, 32)
                    let _831 := read_from_memoryt_uint256(_830)
                    let expr_31636 := _831
                    /// @src 66:8103:8104  "0"
                    let expr_31637 := 0x00
                    /// @src 66:8068:8104  "tokenState.totalNormalDeposited == 0"
                    let expr_31638 := eq(cleanup_t_uint256(expr_31636), convert_t_rational_0_by_1_to_t_uint256(expr_31637))
                    /// @src 66:8026:8104  "tokenState.totalCompoundDeposited == 0 && tokenState.totalNormalDeposited == 0"
                    expr_31639 := expr_31638
                }
                /// @src 66:8022:8139  "if (tokenState.totalCompoundDeposited == 0 && tokenState.totalNormalDeposited == 0) {..."
                if expr_31639 {
                    /// @src 66:8127:8128  "0"
                    let expr_31640 := 0x00
                    /// @src 66:8120:8128  "return 0"
                    var__31629 := convert_t_rational_0_by_1_to_t_uint256(expr_31640)
                    leave
                    /// @src 66:8022:8139  "if (tokenState.totalCompoundDeposited == 0 && tokenState.totalNormalDeposited == 0) {..."
                }
                /// @src 66:8171:8188  "FixedPointMathLib"
                let expr_31646_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:8231:8241  "tokenState"
                let _832_mpos := var_tokenState_31626_mpos
                let expr_31649_mpos := _832_mpos
                /// @src 66:8213:8242  "getTotalDebtValue(tokenState)"
                let expr_31650 := fun_getTotalDebtValue_31606(expr_31649_mpos)
                /// @src 66:8244:8253  "Constants"
                let expr_31651_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:8244:8257  "Constants.ONE"
                let expr_31652 := constant_ONE_30273()
                /// @src 66:8283:8293  "tokenState"
                let _833_mpos := var_tokenState_31626_mpos
                let expr_31654_mpos := _833_mpos
                /// @src 66:8259:8294  "getTotalCollateralValue(tokenState)"
                let expr_31655 := fun_getTotalCollateralValue_31594(expr_31654_mpos)
                /// @src 66:8171:8304  "FixedPointMathLib.mulDivDown(..."
                let expr_31656 := fun_mulDivDown_36976(expr_31650, expr_31652, expr_31655)
                /// @src 66:8149:8304  "uint256 utilization = FixedPointMathLib.mulDivDown(..."
                let var_utilization_31645 := expr_31656
                /// @src 66:8319:8330  "utilization"
                let _834 := var_utilization_31645
                let expr_31658 := _834
                /// @src 66:8333:8337  "1e18"
                let expr_31659 := 0x0de0b6b3a7640000
                /// @src 66:8319:8337  "utilization > 1e18"
                let expr_31660 := gt(cleanup_t_uint256(expr_31658), convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_31659))
                /// @src 66:8315:8375  "if (utilization > 1e18) {..."
                if expr_31660 {
                    /// @src 66:8360:8364  "1e18"
                    let expr_31661 := 0x0de0b6b3a7640000
                    /// @src 66:8353:8364  "return 1e18"
                    var__31629 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_31661)
                    leave
                    /// @src 66:8315:8375  "if (utilization > 1e18) {..."
                }
                /// @src 66:8392:8403  "utilization"
                let _835 := var_utilization_31645
                let expr_31665 := _835
                /// @src 66:8385:8403  "return utilization"
                var__31629 := expr_31665
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @src 59:225:261  "uint256 private constant _ONE = 1e18"
            function constant__ONE_13450() -> ret {
                /// @src 59:257:261  "1e18"
                let expr_13449 := 0x0de0b6b3a7640000
                let _850 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_13449)

                ret := _850
            }

            /// @ast-id 13510
            /// @src 59:268:780  "function calculateInterestRate(IRMParams memory irmParams, uint256 utilizationRatio)..."
            function fun_calculateInterestRate_13510(var_irmParams_13453_mpos, var_utilizationRatio_13455) -> var__13458 {
                /// @src 59:400:407  "uint256"
                let zero_t_uint256_836 := zero_value_for_split_t_uint256()
                var__13458 := zero_t_uint256_836

                /// @src 59:436:445  "irmParams"
                let _837_mpos := var_irmParams_13453_mpos
                let expr_13462_mpos := _837_mpos
                /// @src 59:436:454  "irmParams.baseRate"
                let _838 := add(expr_13462_mpos, 0)
                let _839 := read_from_memoryt_uint256(_838)
                let expr_13463 := _839
                /// @src 59:423:454  "uint256 ir = irmParams.baseRate"
                let var_ir_13461 := expr_13463
                /// @src 59:469:485  "utilizationRatio"
                let _840 := var_utilizationRatio_13455
                let expr_13465 := _840
                /// @src 59:489:498  "irmParams"
                let _841_mpos := var_irmParams_13453_mpos
                let expr_13466_mpos := _841_mpos
                /// @src 59:489:507  "irmParams.kinkRate"
                let _842 := add(expr_13466_mpos, 32)
                let _843 := read_from_memoryt_uint256(_842)
                let expr_13467 := _843
                /// @src 59:469:507  "utilizationRatio <= irmParams.kinkRate"
                let expr_13468 := iszero(gt(cleanup_t_uint256(expr_13465), cleanup_t_uint256(expr_13467)))
                /// @src 59:465:754  "if (utilizationRatio <= irmParams.kinkRate) {..."
                switch expr_13468
                case 0 {
                    /// @src 59:611:620  "irmParams"
                    let _844_mpos := var_irmParams_13453_mpos
                    let expr_13481_mpos := _844_mpos
                    /// @src 59:611:629  "irmParams.kinkRate"
                    let _845 := add(expr_13481_mpos, 32)
                    let _846 := read_from_memoryt_uint256(_845)
                    let expr_13482 := _846
                    /// @src 59:632:641  "irmParams"
                    let _847_mpos := var_irmParams_13453_mpos
                    let expr_13483_mpos := _847_mpos
                    /// @src 59:632:648  "irmParams.slope1"
                    let _848 := add(expr_13483_mpos, 64)
                    let _849 := read_from_memoryt_uint256(_848)
                    let expr_13484 := _849
                    /// @src 59:611:648  "irmParams.kinkRate * irmParams.slope1"
                    let expr_13485 := checked_mul_t_uint256(expr_13482, expr_13484)

                    /// @src 59:610:649  "(irmParams.kinkRate * irmParams.slope1)"
                    let expr_13486 := expr_13485
                    /// @src 59:652:656  "_ONE"
                    let expr_13487 := constant__ONE_13450()
                    /// @src 59:610:656  "(irmParams.kinkRate * irmParams.slope1) / _ONE"
                    let expr_13488 := checked_div_t_uint256(expr_13486, expr_13487)

                    /// @src 59:604:656  "ir += (irmParams.kinkRate * irmParams.slope1) / _ONE"
                    let _851 := var_ir_13461
                    let expr_13489 := checked_add_t_uint256(_851, expr_13488)

                    var_ir_13461 := expr_13489
                    /// @src 59:677:686  "irmParams"
                    let _852_mpos := var_irmParams_13453_mpos
                    let expr_13492_mpos := _852_mpos
                    /// @src 59:677:693  "irmParams.slope2"
                    let _853 := add(expr_13492_mpos, 96)
                    let _854 := read_from_memoryt_uint256(_853)
                    let expr_13493 := _854
                    /// @src 59:697:713  "utilizationRatio"
                    let _855 := var_utilizationRatio_13455
                    let expr_13494 := _855
                    /// @src 59:716:725  "irmParams"
                    let _856_mpos := var_irmParams_13453_mpos
                    let expr_13495_mpos := _856_mpos
                    /// @src 59:716:734  "irmParams.kinkRate"
                    let _857 := add(expr_13495_mpos, 32)
                    let _858 := read_from_memoryt_uint256(_857)
                    let expr_13496 := _858
                    /// @src 59:697:734  "utilizationRatio - irmParams.kinkRate"
                    let expr_13497 := checked_sub_t_uint256(expr_13494, expr_13496)

                    /// @src 59:696:735  "(utilizationRatio - irmParams.kinkRate)"
                    let expr_13498 := expr_13497
                    /// @src 59:677:735  "irmParams.slope2 * (utilizationRatio - irmParams.kinkRate)"
                    let expr_13499 := checked_mul_t_uint256(expr_13493, expr_13498)

                    /// @src 59:676:736  "(irmParams.slope2 * (utilizationRatio - irmParams.kinkRate))"
                    let expr_13500 := expr_13499
                    /// @src 59:739:743  "_ONE"
                    let expr_13501 := constant__ONE_13450()
                    /// @src 59:676:743  "(irmParams.slope2 * (utilizationRatio - irmParams.kinkRate)) / _ONE"
                    let expr_13502 := checked_div_t_uint256(expr_13500, expr_13501)

                    /// @src 59:670:743  "ir += (irmParams.slope2 * (utilizationRatio - irmParams.kinkRate)) / _ONE"
                    let _859 := var_ir_13461
                    let expr_13503 := checked_add_t_uint256(_859, expr_13502)

                    var_ir_13461 := expr_13503
                    /// @src 59:465:754  "if (utilizationRatio <= irmParams.kinkRate) {..."
                }
                default {
                    /// @src 59:530:546  "utilizationRatio"
                    let _860 := var_utilizationRatio_13455
                    let expr_13470 := _860
                    /// @src 59:549:558  "irmParams"
                    let _861_mpos := var_irmParams_13453_mpos
                    let expr_13471_mpos := _861_mpos
                    /// @src 59:549:565  "irmParams.slope1"
                    let _862 := add(expr_13471_mpos, 64)
                    let _863 := read_from_memoryt_uint256(_862)
                    let expr_13472 := _863
                    /// @src 59:530:565  "utilizationRatio * irmParams.slope1"
                    let expr_13473 := checked_mul_t_uint256(expr_13470, expr_13472)

                    /// @src 59:529:566  "(utilizationRatio * irmParams.slope1)"
                    let expr_13474 := expr_13473
                    /// @src 59:569:573  "_ONE"
                    let expr_13475 := constant__ONE_13450()
                    /// @src 59:529:573  "(utilizationRatio * irmParams.slope1) / _ONE"
                    let expr_13476 := checked_div_t_uint256(expr_13474, expr_13475)

                    /// @src 59:523:573  "ir += (utilizationRatio * irmParams.slope1) / _ONE"
                    let _864 := var_ir_13461
                    let expr_13477 := checked_add_t_uint256(_864, expr_13476)

                    var_ir_13461 := expr_13477
                    /// @src 59:465:754  "if (utilizationRatio <= irmParams.kinkRate) {..."
                }
                /// @src 59:771:773  "ir"
                let _865 := var_ir_13461
                let expr_13507 := _865
                /// @src 59:764:773  "return ir"
                var__13458 := expr_13507
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_AssetStatus_$30934_memory_ptr(value)

            }

            function convert_t_uint8_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint8(value)))
            }

            function cleanup_t_rational_100_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_100_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_100_by_1(value)))
            }

            function convert_t_rational_100_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_100_by_1(value)))
            }

            function checked_sub_t_uint8(x, y) -> diff {
                x := cleanup_t_uint8(x)
                y := cleanup_t_uint8(y)
                diff := sub(x, y)

                if gt(diff, 0xff) { panic_error_0x11() }

            }

            /// @ast-id 31572
            /// @src 66:6145:7293  "function updateScaler(AssetStatus storage tokenState, uint256 _interestRate, uint8 _reserveFactor)..."
            function fun_updateScaler_31572(var_tokenState_31482_slot, var__interestRate_31484, var__reserveFactor_31486) -> var__31489 {
                /// @src 66:6278:6285  "uint256"
                let zero_t_uint256_866 := zero_value_for_split_t_uint256()
                var__31489 := zero_t_uint256_866

                /// @src 66:6305:6315  "tokenState"
                let _867_slot := var_tokenState_31482_slot
                let expr_31491_slot := _867_slot
                /// @src 66:6305:6338  "tokenState.totalCompoundDeposited"
                let _868 := add(expr_31491_slot, 0)
                let _869 := read_from_storage_split_offset_0_t_uint256(_868)
                let expr_31492 := _869
                /// @src 66:6342:6343  "0"
                let expr_31493 := 0x00
                /// @src 66:6305:6343  "tokenState.totalCompoundDeposited == 0"
                let expr_31494 := eq(cleanup_t_uint256(expr_31492), convert_t_rational_0_by_1_to_t_uint256(expr_31493))
                /// @src 66:6305:6383  "tokenState.totalCompoundDeposited == 0 && tokenState.totalNormalDeposited == 0"
                let expr_31499 := expr_31494
                if expr_31499 {
                    /// @src 66:6347:6357  "tokenState"
                    let _870_slot := var_tokenState_31482_slot
                    let expr_31495_slot := _870_slot
                    /// @src 66:6347:6378  "tokenState.totalNormalDeposited"
                    let _871 := add(expr_31495_slot, 1)
                    let _872 := read_from_storage_split_offset_0_t_uint256(_871)
                    let expr_31496 := _872
                    /// @src 66:6382:6383  "0"
                    let expr_31497 := 0x00
                    /// @src 66:6347:6383  "tokenState.totalNormalDeposited == 0"
                    let expr_31498 := eq(cleanup_t_uint256(expr_31496), convert_t_rational_0_by_1_to_t_uint256(expr_31497))
                    /// @src 66:6305:6383  "tokenState.totalCompoundDeposited == 0 && tokenState.totalNormalDeposited == 0"
                    expr_31499 := expr_31498
                }
                /// @src 66:6301:6418  "if (tokenState.totalCompoundDeposited == 0 && tokenState.totalNormalDeposited == 0) {..."
                if expr_31499 {
                    /// @src 66:6406:6407  "0"
                    let expr_31500 := 0x00
                    /// @src 66:6399:6407  "return 0"
                    var__31489 := convert_t_rational_0_by_1_to_t_uint256(expr_31500)
                    leave
                    /// @src 66:6301:6418  "if (tokenState.totalCompoundDeposited == 0 && tokenState.totalNormalDeposited == 0) {..."
                }
                /// @src 66:6450:6467  "FixedPointMathLib"
                let expr_31506_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:6492:6509  "FixedPointMathLib"
                let expr_31508_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:6521:6534  "_interestRate"
                let _873 := var__interestRate_31484
                let expr_31510 := _873
                /// @src 66:6554:6564  "tokenState"
                let _874_slot := var_tokenState_31482_slot
                let expr_31512_slot := _874_slot
                /// @src 66:6536:6565  "getTotalDebtValue(tokenState)"
                let _875_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31512_slot)
                let expr_31513 := fun_getTotalDebtValue_31606(_875_mpos)
                /// @src 66:6567:6576  "Constants"
                let expr_31514_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:6567:6580  "Constants.ONE"
                let expr_31515 := constant_ONE_30273()
                /// @src 66:6492:6581  "FixedPointMathLib.mulDivDown(_interestRate, getTotalDebtValue(tokenState), Constants.ONE)"
                let expr_31516 := fun_mulDivDown_36976(expr_31510, expr_31513, expr_31515)
                /// @src 66:6595:6609  "_reserveFactor"
                let _876 := var__reserveFactor_31486
                let expr_31517 := _876
                /// @src 66:6623:6626  "100"
                let expr_31518 := 0x64
                /// @src 66:6450:6636  "FixedPointMathLib.mulDivDown(..."
                let _877 := convert_t_uint8_to_t_uint256(expr_31517)
                let _878 := convert_t_rational_100_by_1_to_t_uint256(expr_31518)
                let expr_31519 := fun_mulDivDown_36976(expr_31516, _877, _878)
                /// @src 66:6428:6636  "uint256 protocolFee = FixedPointMathLib.mulDivDown(..."
                let var_protocolFee_31505 := expr_31519
                /// @src 66:6760:6777  "FixedPointMathLib"
                let expr_31523_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:6802:6819  "FixedPointMathLib"
                let expr_31525_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:6848:6861  "_interestRate"
                let _879 := var__interestRate_31484
                let expr_31527 := _879
                /// @src 66:6881:6891  "tokenState"
                let _880_slot := var_tokenState_31482_slot
                let expr_31529_slot := _880_slot
                /// @src 66:6863:6892  "getTotalDebtValue(tokenState)"
                let _881_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31529_slot)
                let expr_31530 := fun_getTotalDebtValue_31606(_881_mpos)
                /// @src 66:6918:6928  "tokenState"
                let _882_slot := var_tokenState_31482_slot
                let expr_31532_slot := _882_slot
                /// @src 66:6894:6929  "getTotalCollateralValue(tokenState)"
                let _883_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31532_slot)
                let expr_31533 := fun_getTotalCollateralValue_31594(_883_mpos)
                /// @src 66:6802:6943  "FixedPointMathLib.mulDivDown(..."
                let expr_31534 := fun_mulDivDown_36976(expr_31527, expr_31530, expr_31533)
                /// @src 66:6957:6960  "100"
                let expr_31535 := 0x64
                /// @src 66:6963:6977  "_reserveFactor"
                let _884 := var__reserveFactor_31486
                let expr_31536 := _884
                /// @src 66:6957:6977  "100 - _reserveFactor"
                let expr_31537 := checked_sub_t_uint8(convert_t_rational_100_by_1_to_t_uint8(expr_31535), expr_31536)

                /// @src 66:6991:6994  "100"
                let expr_31538 := 0x64
                /// @src 66:6760:7004  "FixedPointMathLib.mulDivDown(..."
                let _885 := convert_t_uint8_to_t_uint256(expr_31537)
                let _886 := convert_t_rational_100_by_1_to_t_uint256(expr_31538)
                let expr_31539 := fun_mulDivDown_36976(expr_31534, _885, _886)
                /// @src 66:6731:7004  "uint256 supplyInterestRate = FixedPointMathLib.mulDivDown(..."
                let var_supplyInterestRate_31522 := expr_31539
                /// @src 66:7040:7053  "_interestRate"
                let _887 := var__interestRate_31484
                let expr_31544 := _887
                /// @src 66:7015:7025  "tokenState"
                let _888_slot := var_tokenState_31482_slot
                let expr_31541_slot := _888_slot
                /// @src 66:7015:7036  "tokenState.debtGrowth"
                let _889 := add(expr_31541_slot, 5)
                /// @src 66:7015:7053  "tokenState.debtGrowth += _interestRate"
                let _890 := read_from_storage_split_offset_0_t_uint256(_889)
                let expr_31545 := checked_add_t_uint256(_890, expr_31544)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_889, expr_31545)
                /// @src 66:7100:7117  "FixedPointMathLib"
                let expr_31550_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:7129:7139  "tokenState"
                let _891_slot := var_tokenState_31482_slot
                let expr_31552_slot := _891_slot
                /// @src 66:7129:7151  "tokenState.assetScaler"
                let _892 := add(expr_31552_slot, 3)
                let _893 := read_from_storage_split_offset_0_t_uint256(_892)
                let expr_31553 := _893
                /// @src 66:7153:7162  "Constants"
                let expr_31554_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:7153:7166  "Constants.ONE"
                let expr_31555 := constant_ONE_30273()
                /// @src 66:7169:7187  "supplyInterestRate"
                let _894 := var_supplyInterestRate_31522
                let expr_31556 := _894
                /// @src 66:7153:7187  "Constants.ONE + supplyInterestRate"
                let expr_31557 := checked_add_t_uint256(expr_31555, expr_31556)

                /// @src 66:7189:7198  "Constants"
                let expr_31558_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:7189:7202  "Constants.ONE"
                let expr_31559 := constant_ONE_30273()
                /// @src 66:7100:7203  "FixedPointMathLib.mulDivDown(tokenState.assetScaler, Constants.ONE + supplyInterestRate, Constants.ONE)"
                let expr_31560 := fun_mulDivDown_36976(expr_31553, expr_31557, expr_31559)
                /// @src 66:7063:7073  "tokenState"
                let _895_slot := var_tokenState_31482_slot
                let expr_31547_slot := _895_slot
                /// @src 66:7063:7085  "tokenState.assetScaler"
                let _896 := add(expr_31547_slot, 3)
                /// @src 66:7063:7203  "tokenState.assetScaler =..."
                update_storage_value_offset_0_t_uint256_to_t_uint256(_896, expr_31560)
                let expr_31561 := expr_31560
                /// @src 66:7239:7257  "supplyInterestRate"
                let _897 := var_supplyInterestRate_31522
                let expr_31566 := _897
                /// @src 66:7213:7223  "tokenState"
                let _898_slot := var_tokenState_31482_slot
                let expr_31563_slot := _898_slot
                /// @src 66:7213:7235  "tokenState.assetGrowth"
                let _899 := add(expr_31563_slot, 4)
                /// @src 66:7213:7257  "tokenState.assetGrowth += supplyInterestRate"
                let _900 := read_from_storage_split_offset_0_t_uint256(_899)
                let expr_31567 := checked_add_t_uint256(_900, expr_31566)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_899, expr_31567)
                /// @src 66:7275:7286  "protocolFee"
                let _901 := var_protocolFee_31505
                let expr_31569 := _901
                /// @src 66:7268:7286  "return protocolFee"
                var__31489 := expr_31569
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 31366
            /// @src 66:4363:4784  "function computeUserFee(ScaledAsset.AssetStatus memory _assetStatus, ScaledAsset.UserStatus memory _userStatus)..."
            function fun_computeUserFee_31366(var__assetStatus_31329_mpos, var__userStatus_31332_mpos) -> var_interestFee_31335 {
                /// @src 66:4522:4540  "int256 interestFee"
                let zero_t_int256_902 := zero_value_for_split_t_int256()
                var_interestFee_31335 := zero_t_int256_902

                /// @src 66:4560:4571  "_userStatus"
                let _903_mpos := var__userStatus_31332_mpos
                let expr_31337_mpos := _903_mpos
                /// @src 66:4560:4586  "_userStatus.positionAmount"
                let _904 := add(expr_31337_mpos, 0)
                let _905 := read_from_memoryt_int256(_904)
                let expr_31338 := _905
                /// @src 66:4589:4590  "0"
                let expr_31339 := 0x00
                /// @src 66:4560:4590  "_userStatus.positionAmount > 0"
                let expr_31340 := sgt(cleanup_t_int256(expr_31338), convert_t_rational_0_by_1_to_t_int256(expr_31339))
                /// @src 66:4556:4778  "if (_userStatus.positionAmount > 0) {..."
                switch expr_31340
                case 0 {
                    /// @src 66:4729:4741  "_assetStatus"
                    let _906_mpos := var__assetStatus_31329_mpos
                    let expr_31354_mpos := _906_mpos
                    /// @src 66:4743:4754  "_userStatus"
                    let _907_mpos := var__userStatus_31332_mpos
                    let expr_31355_mpos := _907_mpos
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
                    let _908_mpos := var__assetStatus_31329_mpos
                    let expr_31343_mpos := _908_mpos
                    /// @src 66:4647:4658  "_userStatus"
                    let _909_mpos := var__userStatus_31332_mpos
                    let expr_31344_mpos := _909_mpos
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
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function zero_value_for_split_t_bytes32() -> ret {
                ret := 0
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

            function shift_left_232(value) -> newValue {
                newValue :=

                shl(232, value)

            }

            function leftAlign_t_int24(value) -> aligned {
                aligned := shift_left_232(value)
            }

            function abi_encode_t_int24_to_t_int24_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_int24(cleanup_t_int24(value)))
            }

            function abi_encode_tuple_packed_t_address_t_int24_t_int24__to_t_address_t_int24_t_int24__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                abi_encode_t_address_to_t_address_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 20)

                abi_encode_t_int24_to_t_int24_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 3)

                abi_encode_t_int24_to_t_int24_nonPadded_inplace_fromStack(value2,  pos)
                pos := add(pos, 3)

                end := pos
            }

            function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            /// @ast-id 30267
            /// @src 28:162:370  "function compute(..."
            function fun_compute_30267(var_owner_30248, var_tickLower_30250, var_tickUpper_30252) -> var__30255 {
                /// @src 28:281:288  "bytes32"
                let zero_t_bytes32_910 := zero_value_for_split_t_bytes32()
                var__30255 := zero_t_bytes32_910

                /// @src 28:334:339  "owner"
                let _911 := var_owner_30248
                let expr_30260 := _911
                /// @src 28:341:350  "tickLower"
                let _912 := var_tickLower_30250
                let expr_30261 := _912
                /// @src 28:352:361  "tickUpper"
                let _913 := var_tickUpper_30252
                let expr_30262 := _913
                /// @src 28:317:362  "abi.encodePacked(owner, tickLower, tickUpper)"

                let expr_30263_mpos := allocate_unbounded()
                let _914 := add(expr_30263_mpos, 0x20)

                let _915 := abi_encode_tuple_packed_t_address_t_int24_t_int24__to_t_address_t_int24_t_int24__nonPadded_inplace_fromStack(_914, expr_30260, expr_30261, expr_30262)
                mstore(expr_30263_mpos, sub(_915, add(expr_30263_mpos, 0x20)))
                finalize_allocation(expr_30263_mpos, sub(_915, expr_30263_mpos))
                /// @src 28:307:363  "keccak256(abi.encodePacked(owner, tickLower, tickUpper))"
                let expr_30264 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_30263_mpos), array_length_t_bytes_memory_ptr(expr_30263_mpos))
                /// @src 28:300:363  "return keccak256(abi.encodePacked(owner, tickLower, tickUpper))"
                var__30255 := expr_30264
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function read_from_memoryt_int24(ptr) -> returnValue {

                let value := cleanup_t_int24(mload(ptr))

                returnValue :=

                value

            }

            function convert_t_rational_2_by_1_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_rational_2_by_1(value)))
            }

            function checked_div_t_int24(x, y) -> r {
                x := cleanup_t_int24(x)
                y := cleanup_t_int24(y)
                if iszero(y) { panic_error_0x12() }

                // overflow for minVal / -1
                if and(
                    eq(x, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff800000),
                    eq(y, sub(0, 1))
                ) { panic_error_0x11() }

                r := sdiv(x, y)
            }

            function checked_mul_t_int24(x, y) -> product {
                x := cleanup_t_int24(x)
                y := cleanup_t_int24(y)
                let product_raw := mul(x, y)
                product := cleanup_t_int24(product_raw)

                if iszero(eq(product, product_raw)) { panic_error_0x11() }

            }

            /// @ast-id 30607
            /// @src 65:1391:3436  "function _getNewRange(..."
            function fun__getNewRange_30607(var__assetStatusUnderlying_30449_mpos, var__token0Status_30452_mpos, var__token1Status_30455_mpos, var_currentTick_30457, var_tickSpacing_30459) -> var_lower_30462, var_upper_30464 {
                /// @src 65:1663:1674  "int24 lower"
                let zero_t_int24_916 := zero_value_for_split_t_int24()
                var_lower_30462 := zero_t_int24_916
                /// @src 65:1676:1687  "int24 upper"
                let zero_t_int24_917 := zero_value_for_split_t_int24()
                var_upper_30464 := zero_t_int24_917

                /// @src 65:1749:1771  "_assetStatusUnderlying"
                let _918_mpos := var__assetStatusUnderlying_30449_mpos
                let expr_30471_mpos := _918_mpos
                /// @src 65:1749:1787  "_assetStatusUnderlying.sqrtAssetStatus"
                let _919 := add(expr_30471_mpos, 192)
                let _920_mpos := mload(_919)
                let expr_30472_mpos := _920_mpos
                /// @src 65:1699:1787  "Perp.SqrtPerpAssetStatus memory sqrtAssetStatus = _assetStatusUnderlying.sqrtAssetStatus"
                let var_sqrtAssetStatus_30470_mpos := expr_30472_mpos
                /// @src 65:1806:1817  "currentTick"
                let _921 := var_currentTick_30457
                let expr_30475 := _921
                /// @src 65:1820:1842  "_assetStatusUnderlying"
                let _922_mpos := var__assetStatusUnderlying_30449_mpos
                let expr_30476_mpos := _922_mpos
                /// @src 65:1820:1853  "_assetStatusUnderlying.riskParams"
                let _923 := add(expr_30476_mpos, 160)
                let _924_mpos := mload(_923)
                let expr_30477_mpos := _924_mpos
                /// @src 65:1820:1863  "_assetStatusUnderlying.riskParams.rangeSize"
                let _925 := add(expr_30477_mpos, 64)
                let _926 := read_from_memoryt_int24(_925)
                let expr_30478 := _926
                /// @src 65:1806:1863  "currentTick - _assetStatusUnderlying.riskParams.rangeSize"
                let expr_30479 := checked_sub_t_int24(expr_30475, expr_30478)

                /// @src 65:1798:1863  "lower = currentTick - _assetStatusUnderlying.riskParams.rangeSize"
                var_lower_30462 := expr_30479
                let expr_30480 := expr_30479
                /// @src 65:1881:1892  "currentTick"
                let _927 := var_currentTick_30457
                let expr_30483 := _927
                /// @src 65:1895:1917  "_assetStatusUnderlying"
                let _928_mpos := var__assetStatusUnderlying_30449_mpos
                let expr_30484_mpos := _928_mpos
                /// @src 65:1895:1928  "_assetStatusUnderlying.riskParams"
                let _929 := add(expr_30484_mpos, 160)
                let _930_mpos := mload(_929)
                let expr_30485_mpos := _930_mpos
                /// @src 65:1895:1938  "_assetStatusUnderlying.riskParams.rangeSize"
                let _931 := add(expr_30485_mpos, 64)
                let _932 := read_from_memoryt_int24(_931)
                let expr_30486 := _932
                /// @src 65:1881:1938  "currentTick + _assetStatusUnderlying.riskParams.rangeSize"
                let expr_30487 := checked_add_t_int24(expr_30483, expr_30486)

                /// @src 65:1873:1938  "upper = currentTick + _assetStatusUnderlying.riskParams.rangeSize"
                var_upper_30464 := expr_30487
                let expr_30488 := expr_30487
                /// @src 65:1977:1992  "sqrtAssetStatus"
                let _933_mpos := var_sqrtAssetStatus_30470_mpos
                let expr_30492_mpos := _933_mpos
                /// @src 65:1977:2002  "sqrtAssetStatus.tickLower"
                let _934 := add(expr_30492_mpos, 32)
                let _935 := read_from_memoryt_int24(_934)
                let expr_30493 := _935
                /// @src 65:2005:2020  "sqrtAssetStatus"
                let _936_mpos := var_sqrtAssetStatus_30470_mpos
                let expr_30494_mpos := _936_mpos
                /// @src 65:2005:2030  "sqrtAssetStatus.tickUpper"
                let _937 := add(expr_30494_mpos, 64)
                let _938 := read_from_memoryt_int24(_937)
                let expr_30495 := _938
                /// @src 65:1977:2030  "sqrtAssetStatus.tickLower + sqrtAssetStatus.tickUpper"
                let expr_30496 := checked_add_t_int24(expr_30493, expr_30495)

                /// @src 65:1976:2031  "(sqrtAssetStatus.tickLower + sqrtAssetStatus.tickUpper)"
                let expr_30497 := expr_30496
                /// @src 65:2034:2035  "2"
                let expr_30498 := 0x02
                /// @src 65:1976:2035  "(sqrtAssetStatus.tickLower + sqrtAssetStatus.tickUpper) / 2"
                let expr_30499 := checked_div_t_int24(expr_30497, convert_t_rational_2_by_1_to_t_int24(expr_30498))

                /// @src 65:1949:2035  "int24 previousCenterTick = (sqrtAssetStatus.tickLower + sqrtAssetStatus.tickUpper) / 2"
                let var_previousCenterTick_30491 := expr_30499
                /// @src 65:2072:2087  "sqrtAssetStatus"
                let _939_mpos := var_sqrtAssetStatus_30470_mpos
                let expr_30503_mpos := _939_mpos
                /// @src 65:2072:2099  "sqrtAssetStatus.totalAmount"
                let _940 := add(expr_30503_mpos, 128)
                let _941 := read_from_memoryt_uint256(_940)
                let expr_30504 := _941
                /// @src 65:2102:2117  "sqrtAssetStatus"
                let _942_mpos := var_sqrtAssetStatus_30470_mpos
                let expr_30505_mpos := _942_mpos
                /// @src 65:2102:2132  "sqrtAssetStatus.borrowedAmount"
                let _943 := add(expr_30505_mpos, 160)
                let _944 := read_from_memoryt_uint256(_943)
                let expr_30506 := _944
                /// @src 65:2072:2132  "sqrtAssetStatus.totalAmount - sqrtAssetStatus.borrowedAmount"
                let expr_30507 := checked_sub_t_uint256(expr_30504, expr_30506)

                /// @src 65:2046:2132  "uint256 availableAmount = sqrtAssetStatus.totalAmount - sqrtAssetStatus.borrowedAmount"
                let var_availableAmount_30502 := expr_30507
                /// @src 65:2147:2162  "availableAmount"
                let _945 := var_availableAmount_30502
                let expr_30509 := _945
                /// @src 65:2165:2166  "0"
                let expr_30510 := 0x00
                /// @src 65:2147:2166  "availableAmount > 0"
                let expr_30511 := gt(cleanup_t_uint256(expr_30509), convert_t_rational_0_by_1_to_t_uint256(expr_30510))
                /// @src 65:2143:3315  "if (availableAmount > 0) {..."
                if expr_30511 {
                    /// @src 65:2186:2197  "currentTick"
                    let _946 := var_currentTick_30457
                    let expr_30512 := _946
                    /// @src 65:2200:2218  "previousCenterTick"
                    let _947 := var_previousCenterTick_30491
                    let expr_30513 := _947
                    /// @src 65:2186:2218  "currentTick < previousCenterTick"
                    let expr_30514 := slt(cleanup_t_int24(expr_30512), cleanup_t_int24(expr_30513))
                    /// @src 65:2182:3305  "if (currentTick < previousCenterTick) {..."
                    switch expr_30514
                    case 0 {
                        /// @src 65:2880:2895  "sqrtAssetStatus"
                        let _948_mpos := var_sqrtAssetStatus_30470_mpos
                        let expr_30555_mpos := _948_mpos
                        /// @src 65:2880:2905  "sqrtAssetStatus.tickUpper"
                        let _949 := add(expr_30555_mpos, 64)
                        let _950 := read_from_memoryt_int24(_949)
                        let expr_30556 := _950
                        /// @src 65:2927:2938  "ScaledAsset"
                        let expr_30557_address := linkersymbol("src/libraries/ScaledAsset.sol:ScaledAsset")
                        /// @src 65:2967:2980  "_token0Status"
                        let _951_mpos := var__token0Status_30452_mpos
                        let expr_30559_mpos := _951_mpos
                        /// @src 65:2927:2981  "ScaledAsset.getAvailableCollateralValue(_token0Status)"
                        let expr_30560 := fun_getAvailableCollateralValue_31623(expr_30559_mpos)
                        /// @src 65:3003:3018  "availableAmount"
                        let _952 := var_availableAmount_30502
                        let expr_30561 := _952
                        /// @src 65:3040:3051  "tickSpacing"
                        let _953 := var_tickSpacing_30459
                        let expr_30562 := _953
                        /// @src 65:2837:3069  "calculateMaxUpperTick(..."
                        let expr_30563 := fun_calculateMaxUpperTick_30805(expr_30556, expr_30560, expr_30561, expr_30562)
                        /// @src 65:2816:3069  "int24 maxUpperTick = calculateMaxUpperTick(..."
                        let var_maxUpperTick_30553 := expr_30563
                        /// @src 65:3092:3097  "upper"
                        let _954 := var_upper_30464
                        let expr_30565 := _954
                        /// @src 65:3100:3112  "maxUpperTick"
                        let _955 := var_maxUpperTick_30553
                        let expr_30566 := _955
                        /// @src 65:3092:3112  "upper > maxUpperTick"
                        let expr_30567 := sgt(cleanup_t_int24(expr_30565), cleanup_t_int24(expr_30566))
                        /// @src 65:3092:3143  "upper > maxUpperTick && maxUpperTick >= currentTick"
                        let expr_30571 := expr_30567
                        if expr_30571 {
                            /// @src 65:3116:3128  "maxUpperTick"
                            let _956 := var_maxUpperTick_30553
                            let expr_30568 := _956
                            /// @src 65:3132:3143  "currentTick"
                            let _957 := var_currentTick_30457
                            let expr_30569 := _957
                            /// @src 65:3116:3143  "maxUpperTick >= currentTick"
                            let expr_30570 := iszero(slt(cleanup_t_int24(expr_30568), cleanup_t_int24(expr_30569)))
                            /// @src 65:3092:3143  "upper > maxUpperTick && maxUpperTick >= currentTick"
                            expr_30571 := expr_30570
                        }
                        /// @src 65:3088:3291  "if (upper > maxUpperTick && maxUpperTick >= currentTick) {..."
                        if expr_30571 {
                            /// @src 65:3175:3187  "maxUpperTick"
                            let _958 := var_maxUpperTick_30553
                            let expr_30573 := _958
                            /// @src 65:3167:3187  "upper = maxUpperTick"
                            var_upper_30464 := expr_30573
                            let expr_30574 := expr_30573
                            /// @src 65:3217:3222  "upper"
                            let _959 := var_upper_30464
                            let expr_30577 := _959
                            /// @src 65:3225:3247  "_assetStatusUnderlying"
                            let _960_mpos := var__assetStatusUnderlying_30449_mpos
                            let expr_30578_mpos := _960_mpos
                            /// @src 65:3225:3258  "_assetStatusUnderlying.riskParams"
                            let _961 := add(expr_30578_mpos, 160)
                            let _962_mpos := mload(_961)
                            let expr_30579_mpos := _962_mpos
                            /// @src 65:3225:3268  "_assetStatusUnderlying.riskParams.rangeSize"
                            let _963 := add(expr_30579_mpos, 64)
                            let _964 := read_from_memoryt_int24(_963)
                            let expr_30580 := _964
                            /// @src 65:3271:3272  "2"
                            let expr_30581 := 0x02
                            /// @src 65:3225:3272  "_assetStatusUnderlying.riskParams.rangeSize * 2"
                            let expr_30582 := checked_mul_t_int24(expr_30580, convert_t_rational_2_by_1_to_t_int24(expr_30581))

                            /// @src 65:3217:3272  "upper - _assetStatusUnderlying.riskParams.rangeSize * 2"
                            let expr_30583 := checked_sub_t_int24(expr_30577, expr_30582)

                            /// @src 65:3209:3272  "lower = upper - _assetStatusUnderlying.riskParams.rangeSize * 2"
                            var_lower_30462 := expr_30583
                            let expr_30584 := expr_30583
                            /// @src 65:3088:3291  "if (upper > maxUpperTick && maxUpperTick >= currentTick) {..."
                        }
                        /// @src 65:2182:3305  "if (currentTick < previousCenterTick) {..."
                    }
                    default {
                        /// @src 65:2335:2350  "sqrtAssetStatus"
                        let _965_mpos := var_sqrtAssetStatus_30470_mpos
                        let expr_30518_mpos := _965_mpos
                        /// @src 65:2335:2360  "sqrtAssetStatus.tickLower"
                        let _966 := add(expr_30518_mpos, 32)
                        let _967 := read_from_memoryt_int24(_966)
                        let expr_30519 := _967
                        /// @src 65:2382:2393  "ScaledAsset"
                        let expr_30520_address := linkersymbol("src/libraries/ScaledAsset.sol:ScaledAsset")
                        /// @src 65:2422:2435  "_token1Status"
                        let _968_mpos := var__token1Status_30455_mpos
                        let expr_30522_mpos := _968_mpos
                        /// @src 65:2382:2436  "ScaledAsset.getAvailableCollateralValue(_token1Status)"
                        let expr_30523 := fun_getAvailableCollateralValue_31623(expr_30522_mpos)
                        /// @src 65:2458:2473  "availableAmount"
                        let _969 := var_availableAmount_30502
                        let expr_30524 := _969
                        /// @src 65:2495:2506  "tickSpacing"
                        let _970 := var_tickSpacing_30459
                        let expr_30525 := _970
                        /// @src 65:2292:2524  "calculateMinLowerTick(..."
                        let expr_30526 := fun_calculateMinLowerTick_30755(expr_30519, expr_30523, expr_30524, expr_30525)
                        /// @src 65:2271:2524  "int24 minLowerTick = calculateMinLowerTick(..."
                        let var_minLowerTick_30516 := expr_30526
                        /// @src 65:2547:2552  "lower"
                        let _971 := var_lower_30462
                        let expr_30528 := _971
                        /// @src 65:2555:2567  "minLowerTick"
                        let _972 := var_minLowerTick_30516
                        let expr_30529 := _972
                        /// @src 65:2547:2567  "lower < minLowerTick"
                        let expr_30530 := slt(cleanup_t_int24(expr_30528), cleanup_t_int24(expr_30529))
                        /// @src 65:2547:2597  "lower < minLowerTick && minLowerTick < currentTick"
                        let expr_30534 := expr_30530
                        if expr_30534 {
                            /// @src 65:2571:2583  "minLowerTick"
                            let _973 := var_minLowerTick_30516
                            let expr_30531 := _973
                            /// @src 65:2586:2597  "currentTick"
                            let _974 := var_currentTick_30457
                            let expr_30532 := _974
                            /// @src 65:2571:2597  "minLowerTick < currentTick"
                            let expr_30533 := slt(cleanup_t_int24(expr_30531), cleanup_t_int24(expr_30532))
                            /// @src 65:2547:2597  "lower < minLowerTick && minLowerTick < currentTick"
                            expr_30534 := expr_30533
                        }
                        /// @src 65:2543:2745  "if (lower < minLowerTick && minLowerTick < currentTick) {..."
                        if expr_30534 {
                            /// @src 65:2629:2641  "minLowerTick"
                            let _975 := var_minLowerTick_30516
                            let expr_30536 := _975
                            /// @src 65:2621:2641  "lower = minLowerTick"
                            var_lower_30462 := expr_30536
                            let expr_30537 := expr_30536
                            /// @src 65:2671:2676  "lower"
                            let _976 := var_lower_30462
                            let expr_30540 := _976
                            /// @src 65:2679:2701  "_assetStatusUnderlying"
                            let _977_mpos := var__assetStatusUnderlying_30449_mpos
                            let expr_30541_mpos := _977_mpos
                            /// @src 65:2679:2712  "_assetStatusUnderlying.riskParams"
                            let _978 := add(expr_30541_mpos, 160)
                            let _979_mpos := mload(_978)
                            let expr_30542_mpos := _979_mpos
                            /// @src 65:2679:2722  "_assetStatusUnderlying.riskParams.rangeSize"
                            let _980 := add(expr_30542_mpos, 64)
                            let _981 := read_from_memoryt_int24(_980)
                            let expr_30543 := _981
                            /// @src 65:2725:2726  "2"
                            let expr_30544 := 0x02
                            /// @src 65:2679:2726  "_assetStatusUnderlying.riskParams.rangeSize * 2"
                            let expr_30545 := checked_mul_t_int24(expr_30543, convert_t_rational_2_by_1_to_t_int24(expr_30544))

                            /// @src 65:2671:2726  "lower + _assetStatusUnderlying.riskParams.rangeSize * 2"
                            let expr_30546 := checked_add_t_int24(expr_30540, expr_30545)

                            /// @src 65:2663:2726  "upper = lower + _assetStatusUnderlying.riskParams.rangeSize * 2"
                            var_upper_30464 := expr_30546
                            let expr_30547 := expr_30546
                            /// @src 65:2543:2745  "if (lower < minLowerTick && minLowerTick < currentTick) {..."
                        }
                        /// @src 65:2182:3305  "if (currentTick < previousCenterTick) {..."
                    }
                    /// @src 65:2143:3315  "if (availableAmount > 0) {..."
                }
                /// @src 65:3353:3358  "lower"
                let _982 := var_lower_30462
                let expr_30594 := _982
                /// @src 65:3360:3371  "tickSpacing"
                let _983 := var_tickSpacing_30459
                let expr_30595 := _983
                /// @src 65:3333:3372  "calculateUsableTick(lower, tickSpacing)"
                let expr_30596 := fun_calculateUsableTick_30705(expr_30594, expr_30595)
                /// @src 65:3325:3372  "lower = calculateUsableTick(lower, tickSpacing)"
                var_lower_30462 := expr_30596
                let expr_30597 := expr_30596
                /// @src 65:3410:3415  "upper"
                let _984 := var_upper_30464
                let expr_30601 := _984
                /// @src 65:3417:3428  "tickSpacing"
                let _985 := var_tickSpacing_30459
                let expr_30602 := _985
                /// @src 65:3390:3429  "calculateUsableTick(upper, tickSpacing)"
                let expr_30603 := fun_calculateUsableTick_30705(expr_30601, expr_30602)
                /// @src 65:3382:3429  "upper = calculateUsableTick(upper, tickSpacing)"
                var_upper_30464 := expr_30603
                let expr_30604 := expr_30603

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 15759
            /// @src 61:28737:29701  "function updateRebalancePosition(..."
            function fun_updateRebalancePosition_15759(var__pairStatus_15680_slot, var__updateAmount0_15682, var__updateAmount1_15684) {

                /// @src 61:28946:28957  "_pairStatus"
                let _986_slot := var__pairStatus_15680_slot
                let expr_15690_slot := _986_slot
                /// @src 61:28946:28973  "_pairStatus.sqrtAssetStatus"
                let _987 := add(expr_15690_slot, 33)
                let _988_slot := _987
                let expr_15691_slot := _988_slot
                /// @src 61:28906:28973  "SqrtPerpAssetStatus storage sqrtAsset = _pairStatus.sqrtAssetStatus"
                let var_sqrtAsset_15689_slot := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(expr_15691_slot)
                /// @src 61:28988:28999  "_pairStatus"
                let _989_slot := var__pairStatus_15680_slot
                let expr_15693_slot := _989_slot
                /// @src 61:28988:29011  "_pairStatus.isQuoteZero"
                let _990 := add(expr_15693_slot, 50)
                let _991 := read_from_storage_split_offset_20_t_bool(_990)
                let expr_15694 := _991
                /// @src 61:28984:29695  "if (_pairStatus.isQuoteZero) {..."
                switch expr_15694
                case 0 {
                    /// @src 61:29371:29382  "_pairStatus"
                    let _992_slot := var__pairStatus_15680_slot
                    let expr_15726_slot := _992_slot
                    /// @src 61:29371:29391  "_pairStatus.basePool"
                    let _993 := add(expr_15726_slot, 17)
                    let _994_slot := _993
                    let expr_15730_slot := _994_slot
                    /// @src 61:29371:29403  "_pairStatus.basePool.tokenStatus"
                    let _995 := add(expr_15730_slot, 2)
                    let _996_slot := _995
                    let expr_15731_slot := _996_slot
                    /// @src 61:29371:29418  "_pairStatus.basePool.tokenStatus.updatePosition"
                    let expr_15732_self_slot := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(expr_15731_slot)
                    /// @src 61:29436:29445  "sqrtAsset"
                    let _997_slot := var_sqrtAsset_15689_slot
                    let expr_15733_slot := _997_slot
                    /// @src 61:29436:29467  "sqrtAsset.rebalancePositionBase"
                    let _998 := add(expr_15733_slot, 11)
                    let _999_slot := _998
                    let expr_15734_slot := _999_slot
                    /// @src 61:29469:29483  "_updateAmount0"
                    let _1000 := var__updateAmount0_15682
                    let expr_15735 := _1000
                    /// @src 61:29485:29496  "_pairStatus"
                    let _1001_slot := var__pairStatus_15680_slot
                    let expr_15736_slot := _1001_slot
                    /// @src 61:29485:29499  "_pairStatus.id"
                    let _1002 := add(expr_15736_slot, 0)
                    let _1003 := read_from_storage_split_offset_0_t_uint256(_1002)
                    let expr_15737 := _1003
                    /// @src 61:29501:29506  "false"
                    let expr_15738 := 0x00
                    /// @src 61:29371:29520  "_pairStatus.basePool.tokenStatus.updatePosition(..."
                    let _1004_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_15734_slot)
                    fun_updatePosition_31326(expr_15732_self_slot, _1004_slot, expr_15735, expr_15737, expr_15738)
                    /// @src 61:29534:29545  "_pairStatus"
                    let _1005_slot := var__pairStatus_15680_slot
                    let expr_15741_slot := _1005_slot
                    /// @src 61:29534:29555  "_pairStatus.quotePool"
                    let _1006 := add(expr_15741_slot, 3)
                    let _1007_slot := _1006
                    let expr_15745_slot := _1007_slot
                    /// @src 61:29534:29567  "_pairStatus.quotePool.tokenStatus"
                    let _1008 := add(expr_15745_slot, 2)
                    let _1009_slot := _1008
                    let expr_15746_slot := _1009_slot
                    /// @src 61:29534:29582  "_pairStatus.quotePool.tokenStatus.updatePosition"
                    let expr_15747_self_slot := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(expr_15746_slot)
                    /// @src 61:29600:29609  "sqrtAsset"
                    let _1010_slot := var_sqrtAsset_15689_slot
                    let expr_15748_slot := _1010_slot
                    /// @src 61:29600:29632  "sqrtAsset.rebalancePositionQuote"
                    let _1011 := add(expr_15748_slot, 13)
                    let _1012_slot := _1011
                    let expr_15749_slot := _1012_slot
                    /// @src 61:29634:29648  "_updateAmount1"
                    let _1013 := var__updateAmount1_15684
                    let expr_15750 := _1013
                    /// @src 61:29650:29661  "_pairStatus"
                    let _1014_slot := var__pairStatus_15680_slot
                    let expr_15751_slot := _1014_slot
                    /// @src 61:29650:29664  "_pairStatus.id"
                    let _1015 := add(expr_15751_slot, 0)
                    let _1016 := read_from_storage_split_offset_0_t_uint256(_1015)
                    let expr_15752 := _1016
                    /// @src 61:29666:29670  "true"
                    let expr_15753 := 0x01
                    /// @src 61:29534:29684  "_pairStatus.quotePool.tokenStatus.updatePosition(..."
                    let _1017_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_15749_slot)
                    fun_updatePosition_31326(expr_15747_self_slot, _1017_slot, expr_15750, expr_15752, expr_15753)
                    /// @src 61:28984:29695  "if (_pairStatus.isQuoteZero) {..."
                }
                default {
                    /// @src 61:29027:29038  "_pairStatus"
                    let _1018_slot := var__pairStatus_15680_slot
                    let expr_15695_slot := _1018_slot
                    /// @src 61:29027:29048  "_pairStatus.quotePool"
                    let _1019 := add(expr_15695_slot, 3)
                    let _1020_slot := _1019
                    let expr_15699_slot := _1020_slot
                    /// @src 61:29027:29060  "_pairStatus.quotePool.tokenStatus"
                    let _1021 := add(expr_15699_slot, 2)
                    let _1022_slot := _1021
                    let expr_15700_slot := _1022_slot
                    /// @src 61:29027:29075  "_pairStatus.quotePool.tokenStatus.updatePosition"
                    let expr_15701_self_slot := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(expr_15700_slot)
                    /// @src 61:29093:29102  "sqrtAsset"
                    let _1023_slot := var_sqrtAsset_15689_slot
                    let expr_15702_slot := _1023_slot
                    /// @src 61:29093:29125  "sqrtAsset.rebalancePositionQuote"
                    let _1024 := add(expr_15702_slot, 13)
                    let _1025_slot := _1024
                    let expr_15703_slot := _1025_slot
                    /// @src 61:29127:29141  "_updateAmount0"
                    let _1026 := var__updateAmount0_15682
                    let expr_15704 := _1026
                    /// @src 61:29143:29154  "_pairStatus"
                    let _1027_slot := var__pairStatus_15680_slot
                    let expr_15705_slot := _1027_slot
                    /// @src 61:29143:29157  "_pairStatus.id"
                    let _1028 := add(expr_15705_slot, 0)
                    let _1029 := read_from_storage_split_offset_0_t_uint256(_1028)
                    let expr_15706 := _1029
                    /// @src 61:29159:29163  "true"
                    let expr_15707 := 0x01
                    /// @src 61:29027:29177  "_pairStatus.quotePool.tokenStatus.updatePosition(..."
                    let _1030_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_15703_slot)
                    fun_updatePosition_31326(expr_15701_self_slot, _1030_slot, expr_15704, expr_15706, expr_15707)
                    /// @src 61:29191:29202  "_pairStatus"
                    let _1031_slot := var__pairStatus_15680_slot
                    let expr_15710_slot := _1031_slot
                    /// @src 61:29191:29211  "_pairStatus.basePool"
                    let _1032 := add(expr_15710_slot, 17)
                    let _1033_slot := _1032
                    let expr_15714_slot := _1033_slot
                    /// @src 61:29191:29223  "_pairStatus.basePool.tokenStatus"
                    let _1034 := add(expr_15714_slot, 2)
                    let _1035_slot := _1034
                    let expr_15715_slot := _1035_slot
                    /// @src 61:29191:29238  "_pairStatus.basePool.tokenStatus.updatePosition"
                    let expr_15716_self_slot := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(expr_15715_slot)
                    /// @src 61:29256:29265  "sqrtAsset"
                    let _1036_slot := var_sqrtAsset_15689_slot
                    let expr_15717_slot := _1036_slot
                    /// @src 61:29256:29287  "sqrtAsset.rebalancePositionBase"
                    let _1037 := add(expr_15717_slot, 11)
                    let _1038_slot := _1037
                    let expr_15718_slot := _1038_slot
                    /// @src 61:29289:29303  "_updateAmount1"
                    let _1039 := var__updateAmount1_15684
                    let expr_15719 := _1039
                    /// @src 61:29305:29316  "_pairStatus"
                    let _1040_slot := var__pairStatus_15680_slot
                    let expr_15720_slot := _1040_slot
                    /// @src 61:29305:29319  "_pairStatus.id"
                    let _1041 := add(expr_15720_slot, 0)
                    let _1042 := read_from_storage_split_offset_0_t_uint256(_1041)
                    let expr_15721 := _1042
                    /// @src 61:29321:29326  "false"
                    let expr_15722 := 0x00
                    /// @src 61:29191:29340  "_pairStatus.basePool.tokenStatus.updatePosition(..."
                    let _1043_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_15718_slot)
                    fun_updatePosition_31326(expr_15716_self_slot, _1043_slot, expr_15719, expr_15721, expr_15722)
                    /// @src 61:28984:29695  "if (_pairStatus.isQuoteZero) {..."
                }

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function zero_value_for_split_t_uint160() -> ret {
                ret := 0
            }

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
                let _1049 := convert_t_rational_minus_887272_by_1_to_t_int24(expr_29708)

                ret := _1049
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
                let _1050 := expr_29713

                ret := _1050
            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function cleanup_t_rational_340282366920938463463374607431768211456_by_1(value) -> cleaned {
                cleaned := value
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

            function cleanup_t_rational_340248342086729790484326174814286782778_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340248342086729790484326174814286782778_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340248342086729790484326174814286782778_by_1(value)))
            }

            function cleanup_t_rational_128_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_128_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_128_by_1(value)))
            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function shift_right_t_uint256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint256(shift_right_unsigned_dynamic(bits, cleanup_t_uint256(value)))
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

            function wrapping_add_t_uint256(x, y) -> sum {
                sum := cleanup_t_uint256(add(x, y))
            }

            function convert_t_uint256_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint256(value)))
            }

            /// @ast-id 30100
            /// @src 27:1385:4144  "function getSqrtRatioAtTick(int24 tick) internal pure returns (uint160 sqrtPriceX96) {..."
            function fun_getSqrtRatioAtTick_30100(var_tick_29725) -> var_sqrtPriceX96_29728 {
                /// @src 27:1448:1468  "uint160 sqrtPriceX96"
                let zero_t_uint160_1044 := zero_value_for_split_t_uint160()
                var_sqrtPriceX96_29728 := zero_t_uint160_1044

                /// @src 27:1522:1526  "tick"
                let _1045 := var_tick_29725
                let expr_29732 := _1045
                /// @src 27:1529:1530  "0"
                let expr_29733 := 0x00
                /// @src 27:1522:1530  "tick < 0"
                let expr_29734 := slt(cleanup_t_int24(expr_29732), convert_t_rational_0_by_1_to_t_int24(expr_29733))
                /// @src 27:1522:1579  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                let expr_29750
                switch expr_29734
                case 0 {
                    /// @src 27:1573:1577  "tick"
                    let _1046 := var_tick_29725
                    let expr_29747 := _1046
                    /// @src 27:1566:1578  "int256(tick)"
                    let expr_29748 := convert_t_int24_to_t_int256(expr_29747)
                    /// @src 27:1558:1579  "uint256(int256(tick))"
                    let expr_29749 := convert_t_int256_to_t_uint256(expr_29748)
                    /// @src 27:1522:1579  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                    expr_29750 := expr_29749
                }
                default {
                    /// @src 27:1549:1553  "tick"
                    let _1047 := var_tick_29725
                    let expr_29739 := _1047
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
                let _1048 := var_absTick_29731
                let expr_29752 := _1048
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

                        let _1052 := 0

                        mstore(_1052, 0x2bc80f3a00000000000000000000000000000000000000000000000000000000)
                        let _1051 := abi_encode_tuple__to__fromStack(add(_1052, 4) )
                        revert(_1052, sub(_1051, _1052))
                    }/// @src 27:1593:1644  "if (absTick > uint256(int256(MAX_TICK))) revert T()"
                }
                /// @src 27:1675:1682  "absTick"
                let _1053 := var_absTick_29731
                let expr_29767 := _1053
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
                let _1054 := var_absTick_29731
                let expr_29776 := _1054
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
                    let _1055 := var_ratio_29766
                    let expr_29782 := _1055
                    /// @src 27:1855:1889  "0xfff97272373d413259a46990580e213a"
                    let expr_29783 := 0xfff97272373d413259a46990580e213a
                    /// @src 27:1847:1889  "ratio * 0xfff97272373d413259a46990580e213a"
                    let expr_29784 := wrapping_mul_t_uint256(expr_29782, convert_t_rational_340248342086729790484326174814286782778_by_1_to_t_uint256(expr_29783))

                    /// @src 27:1846:1890  "(ratio * 0xfff97272373d413259a46990580e213a)"
                    let expr_29785 := expr_29784
                    /// @src 27:1894:1897  "128"
                    let expr_29786 := 0x80
                    /// @src 27:1846:1897  "(ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                    let _1056 := convert_t_rational_128_by_1_to_t_uint8(expr_29786)
                    let expr_29787 :=
                    shift_right_t_uint256_t_uint8(expr_29785, _1056)

                    /// @src 27:1838:1897  "ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                    var_ratio_29766 := expr_29787
                    let expr_29788 := expr_29787
                    /// @src 27:1814:1897  "if (absTick & 0x2 != 0) ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                }
                /// @src 27:1915:1922  "absTick"
                let _1057 := var_absTick_29731
                let expr_29791 := _1057
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
                    let _1058 := var_ratio_29766
                    let expr_29797 := _1058
                    /// @src 27:1952:1986  "0xfff2e50f5f656932ef12357cf3c7fdcc"
                    let expr_29798 := 0xfff2e50f5f656932ef12357cf3c7fdcc
                    /// @src 27:1944:1986  "ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc"
                    let expr_29799 := wrapping_mul_t_uint256(expr_29797, convert_t_rational_340214320654664324051920982716015181260_by_1_to_t_uint256(expr_29798))

                    /// @src 27:1943:1987  "(ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc)"
                    let expr_29800 := expr_29799
                    /// @src 27:1991:1994  "128"
                    let expr_29801 := 0x80
                    /// @src 27:1943:1994  "(ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                    let _1059 := convert_t_rational_128_by_1_to_t_uint8(expr_29801)
                    let expr_29802 :=
                    shift_right_t_uint256_t_uint8(expr_29800, _1059)

                    /// @src 27:1935:1994  "ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                    var_ratio_29766 := expr_29802
                    let expr_29803 := expr_29802
                    /// @src 27:1911:1994  "if (absTick & 0x4 != 0) ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                }
                /// @src 27:2012:2019  "absTick"
                let _1060 := var_absTick_29731
                let expr_29806 := _1060
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
                    let _1061 := var_ratio_29766
                    let expr_29812 := _1061
                    /// @src 27:2049:2083  "0xffe5caca7e10e4e61c3624eaa0941cd0"
                    let expr_29813 := 0xffe5caca7e10e4e61c3624eaa0941cd0
                    /// @src 27:2041:2083  "ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0"
                    let expr_29814 := wrapping_mul_t_uint256(expr_29812, convert_t_rational_340146287995602323631171512101879684304_by_1_to_t_uint256(expr_29813))

                    /// @src 27:2040:2084  "(ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0)"
                    let expr_29815 := expr_29814
                    /// @src 27:2088:2091  "128"
                    let expr_29816 := 0x80
                    /// @src 27:2040:2091  "(ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                    let _1062 := convert_t_rational_128_by_1_to_t_uint8(expr_29816)
                    let expr_29817 :=
                    shift_right_t_uint256_t_uint8(expr_29815, _1062)

                    /// @src 27:2032:2091  "ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                    var_ratio_29766 := expr_29817
                    let expr_29818 := expr_29817
                    /// @src 27:2008:2091  "if (absTick & 0x8 != 0) ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                }
                /// @src 27:2109:2116  "absTick"
                let _1063 := var_absTick_29731
                let expr_29821 := _1063
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
                    let _1064 := var_ratio_29766
                    let expr_29827 := _1064
                    /// @src 27:2147:2181  "0xffcb9843d60f6159c9db58835c926644"
                    let expr_29828 := 0xffcb9843d60f6159c9db58835c926644
                    /// @src 27:2139:2181  "ratio * 0xffcb9843d60f6159c9db58835c926644"
                    let expr_29829 := wrapping_mul_t_uint256(expr_29827, convert_t_rational_340010263488231146823593991679159461444_by_1_to_t_uint256(expr_29828))

                    /// @src 27:2138:2182  "(ratio * 0xffcb9843d60f6159c9db58835c926644)"
                    let expr_29830 := expr_29829
                    /// @src 27:2186:2189  "128"
                    let expr_29831 := 0x80
                    /// @src 27:2138:2189  "(ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                    let _1065 := convert_t_rational_128_by_1_to_t_uint8(expr_29831)
                    let expr_29832 :=
                    shift_right_t_uint256_t_uint8(expr_29830, _1065)

                    /// @src 27:2130:2189  "ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                    var_ratio_29766 := expr_29832
                    let expr_29833 := expr_29832
                    /// @src 27:2105:2189  "if (absTick & 0x10 != 0) ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                }
                /// @src 27:2207:2214  "absTick"
                let _1066 := var_absTick_29731
                let expr_29836 := _1066
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
                    let _1067 := var_ratio_29766
                    let expr_29842 := _1067
                    /// @src 27:2245:2279  "0xff973b41fa98c081472e6896dfb254c0"
                    let expr_29843 := 0xff973b41fa98c081472e6896dfb254c0
                    /// @src 27:2237:2279  "ratio * 0xff973b41fa98c081472e6896dfb254c0"
                    let expr_29844 := wrapping_mul_t_uint256(expr_29842, convert_t_rational_339738377640345403697157401104375502016_by_1_to_t_uint256(expr_29843))

                    /// @src 27:2236:2280  "(ratio * 0xff973b41fa98c081472e6896dfb254c0)"
                    let expr_29845 := expr_29844
                    /// @src 27:2284:2287  "128"
                    let expr_29846 := 0x80
                    /// @src 27:2236:2287  "(ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                    let _1068 := convert_t_rational_128_by_1_to_t_uint8(expr_29846)
                    let expr_29847 :=
                    shift_right_t_uint256_t_uint8(expr_29845, _1068)

                    /// @src 27:2228:2287  "ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                    var_ratio_29766 := expr_29847
                    let expr_29848 := expr_29847
                    /// @src 27:2203:2287  "if (absTick & 0x20 != 0) ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                }
                /// @src 27:2305:2312  "absTick"
                let _1069 := var_absTick_29731
                let expr_29851 := _1069
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
                    let _1070 := var_ratio_29766
                    let expr_29857 := _1070
                    /// @src 27:2343:2377  "0xff2ea16466c96a3843ec78b326b52861"
                    let expr_29858 := 0xff2ea16466c96a3843ec78b326b52861
                    /// @src 27:2335:2377  "ratio * 0xff2ea16466c96a3843ec78b326b52861"
                    let expr_29859 := wrapping_mul_t_uint256(expr_29857, convert_t_rational_339195258003219555707034227454543997025_by_1_to_t_uint256(expr_29858))

                    /// @src 27:2334:2378  "(ratio * 0xff2ea16466c96a3843ec78b326b52861)"
                    let expr_29860 := expr_29859
                    /// @src 27:2382:2385  "128"
                    let expr_29861 := 0x80
                    /// @src 27:2334:2385  "(ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                    let _1071 := convert_t_rational_128_by_1_to_t_uint8(expr_29861)
                    let expr_29862 :=
                    shift_right_t_uint256_t_uint8(expr_29860, _1071)

                    /// @src 27:2326:2385  "ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                    var_ratio_29766 := expr_29862
                    let expr_29863 := expr_29862
                    /// @src 27:2301:2385  "if (absTick & 0x40 != 0) ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                }
                /// @src 27:2403:2410  "absTick"
                let _1072 := var_absTick_29731
                let expr_29866 := _1072
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
                    let _1073 := var_ratio_29766
                    let expr_29872 := _1073
                    /// @src 27:2441:2475  "0xfe5dee046a99a2a811c461f1969c3053"
                    let expr_29873 := 0xfe5dee046a99a2a811c461f1969c3053
                    /// @src 27:2433:2475  "ratio * 0xfe5dee046a99a2a811c461f1969c3053"
                    let expr_29874 := wrapping_mul_t_uint256(expr_29872, convert_t_rational_338111622100601834656805679988414885971_by_1_to_t_uint256(expr_29873))

                    /// @src 27:2432:2476  "(ratio * 0xfe5dee046a99a2a811c461f1969c3053)"
                    let expr_29875 := expr_29874
                    /// @src 27:2480:2483  "128"
                    let expr_29876 := 0x80
                    /// @src 27:2432:2483  "(ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                    let _1074 := convert_t_rational_128_by_1_to_t_uint8(expr_29876)
                    let expr_29877 :=
                    shift_right_t_uint256_t_uint8(expr_29875, _1074)

                    /// @src 27:2424:2483  "ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                    var_ratio_29766 := expr_29877
                    let expr_29878 := expr_29877
                    /// @src 27:2399:2483  "if (absTick & 0x80 != 0) ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                }
                /// @src 27:2501:2508  "absTick"
                let _1075 := var_absTick_29731
                let expr_29881 := _1075
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
                    let _1076 := var_ratio_29766
                    let expr_29887 := _1076
                    /// @src 27:2540:2574  "0xfcbe86c7900a88aedcffc83b479aa3a4"
                    let expr_29888 := 0xfcbe86c7900a88aedcffc83b479aa3a4
                    /// @src 27:2532:2574  "ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4"
                    let expr_29889 := wrapping_mul_t_uint256(expr_29887, convert_t_rational_335954724994790223023589805789778977700_by_1_to_t_uint256(expr_29888))

                    /// @src 27:2531:2575  "(ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4)"
                    let expr_29890 := expr_29889
                    /// @src 27:2579:2582  "128"
                    let expr_29891 := 0x80
                    /// @src 27:2531:2582  "(ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                    let _1077 := convert_t_rational_128_by_1_to_t_uint8(expr_29891)
                    let expr_29892 :=
                    shift_right_t_uint256_t_uint8(expr_29890, _1077)

                    /// @src 27:2523:2582  "ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                    var_ratio_29766 := expr_29892
                    let expr_29893 := expr_29892
                    /// @src 27:2497:2582  "if (absTick & 0x100 != 0) ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                }
                /// @src 27:2600:2607  "absTick"
                let _1078 := var_absTick_29731
                let expr_29896 := _1078
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
                    let _1079 := var_ratio_29766
                    let expr_29902 := _1079
                    /// @src 27:2639:2673  "0xf987a7253ac413176f2b074cf7815e54"
                    let expr_29903 := 0xf987a7253ac413176f2b074cf7815e54
                    /// @src 27:2631:2673  "ratio * 0xf987a7253ac413176f2b074cf7815e54"
                    let expr_29904 := wrapping_mul_t_uint256(expr_29902, convert_t_rational_331682121138379247127172139078559817300_by_1_to_t_uint256(expr_29903))

                    /// @src 27:2630:2674  "(ratio * 0xf987a7253ac413176f2b074cf7815e54)"
                    let expr_29905 := expr_29904
                    /// @src 27:2678:2681  "128"
                    let expr_29906 := 0x80
                    /// @src 27:2630:2681  "(ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                    let _1080 := convert_t_rational_128_by_1_to_t_uint8(expr_29906)
                    let expr_29907 :=
                    shift_right_t_uint256_t_uint8(expr_29905, _1080)

                    /// @src 27:2622:2681  "ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                    var_ratio_29766 := expr_29907
                    let expr_29908 := expr_29907
                    /// @src 27:2596:2681  "if (absTick & 0x200 != 0) ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                }
                /// @src 27:2699:2706  "absTick"
                let _1081 := var_absTick_29731
                let expr_29911 := _1081
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
                    let _1082 := var_ratio_29766
                    let expr_29917 := _1082
                    /// @src 27:2738:2772  "0xf3392b0822b70005940c7a398e4b70f3"
                    let expr_29918 := 0xf3392b0822b70005940c7a398e4b70f3
                    /// @src 27:2730:2772  "ratio * 0xf3392b0822b70005940c7a398e4b70f3"
                    let expr_29919 := wrapping_mul_t_uint256(expr_29917, convert_t_rational_323299236684853023288211250268160618739_by_1_to_t_uint256(expr_29918))

                    /// @src 27:2729:2773  "(ratio * 0xf3392b0822b70005940c7a398e4b70f3)"
                    let expr_29920 := expr_29919
                    /// @src 27:2777:2780  "128"
                    let expr_29921 := 0x80
                    /// @src 27:2729:2780  "(ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                    let _1083 := convert_t_rational_128_by_1_to_t_uint8(expr_29921)
                    let expr_29922 :=
                    shift_right_t_uint256_t_uint8(expr_29920, _1083)

                    /// @src 27:2721:2780  "ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                    var_ratio_29766 := expr_29922
                    let expr_29923 := expr_29922
                    /// @src 27:2695:2780  "if (absTick & 0x400 != 0) ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                }
                /// @src 27:2798:2805  "absTick"
                let _1084 := var_absTick_29731
                let expr_29926 := _1084
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
                    let _1085 := var_ratio_29766
                    let expr_29932 := _1085
                    /// @src 27:2837:2871  "0xe7159475a2c29b7443b29c7fa6e889d9"
                    let expr_29933 := 0xe7159475a2c29b7443b29c7fa6e889d9
                    /// @src 27:2829:2871  "ratio * 0xe7159475a2c29b7443b29c7fa6e889d9"
                    let expr_29934 := wrapping_mul_t_uint256(expr_29932, convert_t_rational_307163716377032989948697243942600083929_by_1_to_t_uint256(expr_29933))

                    /// @src 27:2828:2872  "(ratio * 0xe7159475a2c29b7443b29c7fa6e889d9)"
                    let expr_29935 := expr_29934
                    /// @src 27:2876:2879  "128"
                    let expr_29936 := 0x80
                    /// @src 27:2828:2879  "(ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                    let _1086 := convert_t_rational_128_by_1_to_t_uint8(expr_29936)
                    let expr_29937 :=
                    shift_right_t_uint256_t_uint8(expr_29935, _1086)

                    /// @src 27:2820:2879  "ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                    var_ratio_29766 := expr_29937
                    let expr_29938 := expr_29937
                    /// @src 27:2794:2879  "if (absTick & 0x800 != 0) ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                }
                /// @src 27:2897:2904  "absTick"
                let _1087 := var_absTick_29731
                let expr_29941 := _1087
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
                    let _1088 := var_ratio_29766
                    let expr_29947 := _1088
                    /// @src 27:2937:2971  "0xd097f3bdfd2022b8845ad8f792aa5825"
                    let expr_29948 := 0xd097f3bdfd2022b8845ad8f792aa5825
                    /// @src 27:2929:2971  "ratio * 0xd097f3bdfd2022b8845ad8f792aa5825"
                    let expr_29949 := wrapping_mul_t_uint256(expr_29947, convert_t_rational_277268403626896220162999269216087595045_by_1_to_t_uint256(expr_29948))

                    /// @src 27:2928:2972  "(ratio * 0xd097f3bdfd2022b8845ad8f792aa5825)"
                    let expr_29950 := expr_29949
                    /// @src 27:2976:2979  "128"
                    let expr_29951 := 0x80
                    /// @src 27:2928:2979  "(ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                    let _1089 := convert_t_rational_128_by_1_to_t_uint8(expr_29951)
                    let expr_29952 :=
                    shift_right_t_uint256_t_uint8(expr_29950, _1089)

                    /// @src 27:2920:2979  "ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                    var_ratio_29766 := expr_29952
                    let expr_29953 := expr_29952
                    /// @src 27:2893:2979  "if (absTick & 0x1000 != 0) ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                }
                /// @src 27:2997:3004  "absTick"
                let _1090 := var_absTick_29731
                let expr_29956 := _1090
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
                    let _1091 := var_ratio_29766
                    let expr_29962 := _1091
                    /// @src 27:3037:3071  "0xa9f746462d870fdf8a65dc1f90e061e5"
                    let expr_29963 := 0xa9f746462d870fdf8a65dc1f90e061e5
                    /// @src 27:3029:3071  "ratio * 0xa9f746462d870fdf8a65dc1f90e061e5"
                    let expr_29964 := wrapping_mul_t_uint256(expr_29962, convert_t_rational_225923453940442621947126027127485391333_by_1_to_t_uint256(expr_29963))

                    /// @src 27:3028:3072  "(ratio * 0xa9f746462d870fdf8a65dc1f90e061e5)"
                    let expr_29965 := expr_29964
                    /// @src 27:3076:3079  "128"
                    let expr_29966 := 0x80
                    /// @src 27:3028:3079  "(ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                    let _1092 := convert_t_rational_128_by_1_to_t_uint8(expr_29966)
                    let expr_29967 :=
                    shift_right_t_uint256_t_uint8(expr_29965, _1092)

                    /// @src 27:3020:3079  "ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                    var_ratio_29766 := expr_29967
                    let expr_29968 := expr_29967
                    /// @src 27:2993:3079  "if (absTick & 0x2000 != 0) ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                }
                /// @src 27:3097:3104  "absTick"
                let _1093 := var_absTick_29731
                let expr_29971 := _1093
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
                    let _1094 := var_ratio_29766
                    let expr_29977 := _1094
                    /// @src 27:3137:3171  "0x70d869a156d2a1b890bb3df62baf32f7"
                    let expr_29978 := 0x70d869a156d2a1b890bb3df62baf32f7
                    /// @src 27:3129:3171  "ratio * 0x70d869a156d2a1b890bb3df62baf32f7"
                    let expr_29979 := wrapping_mul_t_uint256(expr_29977, convert_t_rational_149997214084966997727330242082538205943_by_1_to_t_uint256(expr_29978))

                    /// @src 27:3128:3172  "(ratio * 0x70d869a156d2a1b890bb3df62baf32f7)"
                    let expr_29980 := expr_29979
                    /// @src 27:3176:3179  "128"
                    let expr_29981 := 0x80
                    /// @src 27:3128:3179  "(ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                    let _1095 := convert_t_rational_128_by_1_to_t_uint8(expr_29981)
                    let expr_29982 :=
                    shift_right_t_uint256_t_uint8(expr_29980, _1095)

                    /// @src 27:3120:3179  "ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                    var_ratio_29766 := expr_29982
                    let expr_29983 := expr_29982
                    /// @src 27:3093:3179  "if (absTick & 0x4000 != 0) ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                }
                /// @src 27:3197:3204  "absTick"
                let _1096 := var_absTick_29731
                let expr_29986 := _1096
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
                    let _1097 := var_ratio_29766
                    let expr_29992 := _1097
                    /// @src 27:3237:3271  "0x31be135f97d08fd981231505542fcfa6"
                    let expr_29993 := 0x31be135f97d08fd981231505542fcfa6
                    /// @src 27:3229:3271  "ratio * 0x31be135f97d08fd981231505542fcfa6"
                    let expr_29994 := wrapping_mul_t_uint256(expr_29992, convert_t_rational_66119101136024775622716233608466517926_by_1_to_t_uint256(expr_29993))

                    /// @src 27:3228:3272  "(ratio * 0x31be135f97d08fd981231505542fcfa6)"
                    let expr_29995 := expr_29994
                    /// @src 27:3276:3279  "128"
                    let expr_29996 := 0x80
                    /// @src 27:3228:3279  "(ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                    let _1098 := convert_t_rational_128_by_1_to_t_uint8(expr_29996)
                    let expr_29997 :=
                    shift_right_t_uint256_t_uint8(expr_29995, _1098)

                    /// @src 27:3220:3279  "ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                    var_ratio_29766 := expr_29997
                    let expr_29998 := expr_29997
                    /// @src 27:3193:3279  "if (absTick & 0x8000 != 0) ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                }
                /// @src 27:3297:3304  "absTick"
                let _1099 := var_absTick_29731
                let expr_30001 := _1099
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
                    let _1100 := var_ratio_29766
                    let expr_30007 := _1100
                    /// @src 27:3338:3371  "0x9aa508b5b7a84e1c677de54f3e99bc9"
                    let expr_30008 := 0x09aa508b5b7a84e1c677de54f3e99bc9
                    /// @src 27:3330:3371  "ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9"
                    let expr_30009 := wrapping_mul_t_uint256(expr_30007, convert_t_rational_12847376061809297530290974190478138313_by_1_to_t_uint256(expr_30008))

                    /// @src 27:3329:3372  "(ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9)"
                    let expr_30010 := expr_30009
                    /// @src 27:3376:3379  "128"
                    let expr_30011 := 0x80
                    /// @src 27:3329:3379  "(ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                    let _1101 := convert_t_rational_128_by_1_to_t_uint8(expr_30011)
                    let expr_30012 :=
                    shift_right_t_uint256_t_uint8(expr_30010, _1101)

                    /// @src 27:3321:3379  "ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                    var_ratio_29766 := expr_30012
                    let expr_30013 := expr_30012
                    /// @src 27:3293:3379  "if (absTick & 0x10000 != 0) ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                }
                /// @src 27:3397:3404  "absTick"
                let _1102 := var_absTick_29731
                let expr_30016 := _1102
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
                    let _1103 := var_ratio_29766
                    let expr_30022 := _1103
                    /// @src 27:3438:3470  "0x5d6af8dedb81196699c329225ee604"
                    let expr_30023 := 0x5d6af8dedb81196699c329225ee604
                    /// @src 27:3430:3470  "ratio * 0x5d6af8dedb81196699c329225ee604"
                    let expr_30024 := wrapping_mul_t_uint256(expr_30022, convert_t_rational_485053260817066172746253684029974020_by_1_to_t_uint256(expr_30023))

                    /// @src 27:3429:3471  "(ratio * 0x5d6af8dedb81196699c329225ee604)"
                    let expr_30025 := expr_30024
                    /// @src 27:3475:3478  "128"
                    let expr_30026 := 0x80
                    /// @src 27:3429:3478  "(ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                    let _1104 := convert_t_rational_128_by_1_to_t_uint8(expr_30026)
                    let expr_30027 :=
                    shift_right_t_uint256_t_uint8(expr_30025, _1104)

                    /// @src 27:3421:3478  "ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                    var_ratio_29766 := expr_30027
                    let expr_30028 := expr_30027
                    /// @src 27:3393:3478  "if (absTick & 0x20000 != 0) ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                }
                /// @src 27:3496:3503  "absTick"
                let _1105 := var_absTick_29731
                let expr_30031 := _1105
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
                    let _1106 := var_ratio_29766
                    let expr_30037 := _1106
                    /// @src 27:3537:3567  "0x2216e584f5fa1ea926041bedfe98"
                    let expr_30038 := 0x2216e584f5fa1ea926041bedfe98
                    /// @src 27:3529:3567  "ratio * 0x2216e584f5fa1ea926041bedfe98"
                    let expr_30039 := wrapping_mul_t_uint256(expr_30037, convert_t_rational_691415978906521570653435304214168_by_1_to_t_uint256(expr_30038))

                    /// @src 27:3528:3568  "(ratio * 0x2216e584f5fa1ea926041bedfe98)"
                    let expr_30040 := expr_30039
                    /// @src 27:3572:3575  "128"
                    let expr_30041 := 0x80
                    /// @src 27:3528:3575  "(ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                    let _1107 := convert_t_rational_128_by_1_to_t_uint8(expr_30041)
                    let expr_30042 :=
                    shift_right_t_uint256_t_uint8(expr_30040, _1107)

                    /// @src 27:3520:3575  "ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                    var_ratio_29766 := expr_30042
                    let expr_30043 := expr_30042
                    /// @src 27:3492:3575  "if (absTick & 0x40000 != 0) ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                }
                /// @src 27:3593:3600  "absTick"
                let _1108 := var_absTick_29731
                let expr_30046 := _1108
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
                    let _1109 := var_ratio_29766
                    let expr_30052 := _1109
                    /// @src 27:3634:3659  "0x48a170391f7dc42444e8fa2"
                    let expr_30053 := 0x048a170391f7dc42444e8fa2
                    /// @src 27:3626:3659  "ratio * 0x48a170391f7dc42444e8fa2"
                    let expr_30054 := wrapping_mul_t_uint256(expr_30052, convert_t_rational_1404880482679654955896180642_by_1_to_t_uint256(expr_30053))

                    /// @src 27:3625:3660  "(ratio * 0x48a170391f7dc42444e8fa2)"
                    let expr_30055 := expr_30054
                    /// @src 27:3664:3667  "128"
                    let expr_30056 := 0x80
                    /// @src 27:3625:3667  "(ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                    let _1110 := convert_t_rational_128_by_1_to_t_uint8(expr_30056)
                    let expr_30057 :=
                    shift_right_t_uint256_t_uint8(expr_30055, _1110)

                    /// @src 27:3617:3667  "ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                    var_ratio_29766 := expr_30057
                    let expr_30058 := expr_30057
                    /// @src 27:3589:3667  "if (absTick & 0x80000 != 0) ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                }
                /// @src 27:3686:3690  "tick"
                let _1111 := var_tick_29725
                let expr_30061 := _1111
                /// @src 27:3693:3694  "0"
                let expr_30062 := 0x00
                /// @src 27:3686:3694  "tick > 0"
                let expr_30063 := sgt(cleanup_t_int24(expr_30061), convert_t_rational_0_by_1_to_t_int24(expr_30062))
                /// @src 27:3682:3729  "if (tick > 0) ratio = type(uint256).max / ratio"
                if expr_30063 {
                    /// @src 27:3704:3721  "type(uint256).max"
                    let expr_30069 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 27:3724:3729  "ratio"
                    let _1112 := var_ratio_29766
                    let expr_30070 := _1112
                    /// @src 27:3704:3729  "type(uint256).max / ratio"
                    let expr_30071 := wrapping_div_t_uint256(expr_30069, expr_30070)

                    /// @src 27:3696:3729  "ratio = type(uint256).max / ratio"
                    var_ratio_29766 := expr_30071
                    let expr_30072 := expr_30071
                    /// @src 27:3682:3729  "if (tick > 0) ratio = type(uint256).max / ratio"
                }
                /// @src 27:4079:4084  "ratio"
                let _1113 := var_ratio_29766
                let expr_30078 := _1113
                /// @src 27:4088:4090  "32"
                let expr_30079 := 0x20
                /// @src 27:4079:4090  "ratio >> 32"
                let _1114 := convert_t_rational_32_by_1_to_t_uint8(expr_30079)
                let expr_30080 :=
                shift_right_t_uint256_t_uint8(expr_30078, _1114)

                /// @src 27:4078:4091  "(ratio >> 32)"
                let expr_30081 := expr_30080
                /// @src 27:4095:4100  "ratio"
                let _1115 := var_ratio_29766
                let expr_30082 := _1115
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
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function cleanup_t_rational_79228162514264337593543950336_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_79228162514264337593543950336_by_1(value)))
            }

            /// @src 25:317:376  "uint256 internal constant Q96 = 0x1000000000000000000000000"
            function constant_Q96_29696() -> ret {
                /// @src 25:349:376  "0x1000000000000000000000000"
                let expr_29695 := 0x01000000000000000000000000
                let _1133 := convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(expr_29695)

                ret := _1133
            }

            function convert_t_uint160_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint160(value)))
            }

            /// @ast-id 31864
            /// @src 78:1031:2214  "function calculateAmount0ForLiquidity(..."
            function fun_calculateAmount0ForLiquidity_31864(var_sqrtRatioA_31731, var_sqrtRatioB_31733, var_liquidityAmount_31735, var_isRoundUp_31737) -> var__31740 {
                /// @src 78:1211:1217  "int256"
                let zero_t_int256_1116 := zero_value_for_split_t_int256()
                var__31740 := zero_t_int256_1116

                /// @src 78:1233:1248  "liquidityAmount"
                let _1117 := var_liquidityAmount_31735
                let expr_31742 := _1117
                /// @src 78:1252:1253  "0"
                let expr_31743 := 0x00
                /// @src 78:1233:1253  "liquidityAmount == 0"
                let expr_31744 := eq(cleanup_t_uint256(expr_31742), convert_t_rational_0_by_1_to_t_uint256(expr_31743))
                /// @src 78:1233:1281  "liquidityAmount == 0 || sqrtRatioA == sqrtRatioB"
                let expr_31748 := expr_31744
                if iszero(expr_31748) {
                    /// @src 78:1257:1267  "sqrtRatioA"
                    let _1118 := var_sqrtRatioA_31731
                    let expr_31745 := _1118
                    /// @src 78:1271:1281  "sqrtRatioB"
                    let _1119 := var_sqrtRatioB_31733
                    let expr_31746 := _1119
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
                let _1120 := var_sqrtRatioA_31731
                let expr_31755 := _1120
                /// @src 78:1353:1363  "sqrtRatioB"
                let _1121 := var_sqrtRatioB_31733
                let expr_31756 := _1121
                /// @src 78:1340:1363  "sqrtRatioA > sqrtRatioB"
                let expr_31757 := gt(cleanup_t_uint160(expr_31755), cleanup_t_uint160(expr_31756))
                /// @src 78:1326:1363  "bool swaped = sqrtRatioA > sqrtRatioB"
                let var_swaped_31754 := expr_31757
                /// @src 78:1378:1388  "sqrtRatioA"
                let _1122 := var_sqrtRatioA_31731
                let expr_31759 := _1122
                /// @src 78:1391:1401  "sqrtRatioB"
                let _1123 := var_sqrtRatioB_31733
                let expr_31760 := _1123
                /// @src 78:1378:1401  "sqrtRatioA > sqrtRatioB"
                let expr_31761 := gt(cleanup_t_uint160(expr_31759), cleanup_t_uint160(expr_31760))
                /// @src 78:1374:1454  "if (sqrtRatioA > sqrtRatioB) (sqrtRatioA, sqrtRatioB) = (sqrtRatioB, sqrtRatioA)"
                if expr_31761 {
                    /// @src 78:1431:1441  "sqrtRatioB"
                    let _1124 := var_sqrtRatioB_31733
                    let expr_31765 := _1124
                    /// @src 78:1430:1454  "(sqrtRatioB, sqrtRatioA)"
                    let expr_31767_component_1 := expr_31765
                    /// @src 78:1443:1453  "sqrtRatioA"
                    let _1125 := var_sqrtRatioA_31731
                    let expr_31766 := _1125
                    /// @src 78:1430:1454  "(sqrtRatioB, sqrtRatioA)"
                    let expr_31767_component_2 := expr_31766
                    /// @src 78:1403:1454  "(sqrtRatioA, sqrtRatioB) = (sqrtRatioB, sqrtRatioA)"
                    var_sqrtRatioB_31733 := expr_31767_component_2
                    var_sqrtRatioA_31731 := expr_31767_component_1
                    /// @src 78:1374:1454  "if (sqrtRatioA > sqrtRatioB) (sqrtRatioA, sqrtRatioB) = (sqrtRatioB, sqrtRatioA)"
                }
                /// @src 78:1465:1473  "int256 r"
                let var_r_31772
                let zero_t_int256_1126 := zero_value_for_split_t_int256()
                var_r_31772 := zero_t_int256_1126
                /// @src 78:1502:1508  "swaped"
                let _1127 := var_swaped_31754
                let expr_31776 := _1127
                /// @src 78:1502:1533  "swaped ? !isRoundUp : isRoundUp"
                let expr_31780
                switch expr_31776
                case 0 {
                    /// @src 78:1524:1533  "isRoundUp"
                    let _1128 := var_isRoundUp_31737
                    let expr_31779 := _1128
                    /// @src 78:1502:1533  "swaped ? !isRoundUp : isRoundUp"
                    expr_31780 := expr_31779
                }
                default {
                    /// @src 78:1512:1521  "isRoundUp"
                    let _1129 := var_isRoundUp_31737
                    let expr_31777 := _1129
                    /// @src 78:1511:1521  "!isRoundUp"
                    let expr_31778 := cleanup_t_bool(iszero(expr_31777))
                    /// @src 78:1502:1533  "swaped ? !isRoundUp : isRoundUp"
                    expr_31780 := expr_31778
                }
                /// @src 78:1484:1533  "bool _isRoundUp = swaped ? !isRoundUp : isRoundUp"
                let var__isRoundUp_31775 := expr_31780
                /// @src 78:1563:1578  "liquidityAmount"
                let _1130 := var_liquidityAmount_31735
                let expr_31784 := _1130
                /// @src 78:1543:1578  "uint256 numerator = liquidityAmount"
                let var_numerator_31783 := expr_31784
                /// @src 78:1593:1603  "_isRoundUp"
                let _1131 := var__isRoundUp_31775
                let expr_31786 := _1131
                /// @src 78:1589:2113  "if (_isRoundUp) {..."
                switch expr_31786
                case 0 {
                    /// @src 78:1889:1897  "FullMath"
                    let expr_31822_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:1905:1914  "numerator"
                    let _1132 := var_numerator_31783
                    let expr_31824 := _1132
                    /// @src 78:1916:1928  "FixedPoint96"
                    let expr_31825_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:1916:1932  "FixedPoint96.Q96"
                    let expr_31826 := constant_Q96_29696()
                    /// @src 78:1934:1944  "sqrtRatioA"
                    let _1134 := var_sqrtRatioA_31731
                    let expr_31827 := _1134
                    /// @src 78:1889:1945  "FullMath.mulDiv(numerator, FixedPoint96.Q96, sqrtRatioA)"
                    let _1135 := convert_t_uint160_to_t_uint256(expr_31827)
                    let expr_31828 := fun_mulDiv_32512(expr_31824, expr_31826, _1135)
                    /// @src 78:1876:1945  "uint256 r0 = FullMath.mulDiv(numerator, FixedPoint96.Q96, sqrtRatioA)"
                    let var_r0_31821 := expr_31828
                    /// @src 78:1972:1980  "FullMath"
                    let expr_31832_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:1998:2007  "numerator"
                    let _1136 := var_numerator_31783
                    let expr_31834 := _1136
                    /// @src 78:2009:2021  "FixedPoint96"
                    let expr_31835_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:2009:2025  "FixedPoint96.Q96"
                    let expr_31836 := constant_Q96_29696()
                    /// @src 78:2027:2037  "sqrtRatioB"
                    let _1137 := var_sqrtRatioB_31733
                    let expr_31837 := _1137
                    /// @src 78:1972:2038  "FullMath.mulDivRoundingUp(numerator, FixedPoint96.Q96, sqrtRatioB)"
                    let _1138 := convert_t_uint160_to_t_uint256(expr_31837)
                    let expr_31838 := fun_mulDivRoundingUp_32556(expr_31834, expr_31836, _1138)
                    /// @src 78:1959:2038  "uint256 r1 = FullMath.mulDivRoundingUp(numerator, FixedPoint96.Q96, sqrtRatioB)"
                    let var_r1_31831 := expr_31838
                    /// @src 78:2057:2065  "SafeCast"
                    let expr_31841_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                    /// @src 78:2075:2077  "r0"
                    let _1139 := var_r0_31821
                    let expr_31843 := _1139
                    /// @src 78:2057:2078  "SafeCast.toInt256(r0)"
                    let expr_31844 := fun_toInt256_28969(expr_31843)
                    /// @src 78:2081:2089  "SafeCast"
                    let expr_31845_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                    /// @src 78:2099:2101  "r1"
                    let _1140 := var_r1_31831
                    let expr_31847 := _1140
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
                    let _1141 := var_numerator_31783
                    let expr_31791 := _1141
                    /// @src 78:1669:1681  "FixedPoint96"
                    let expr_31792_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:1669:1685  "FixedPoint96.Q96"
                    let expr_31793 := constant_Q96_29696()
                    /// @src 78:1687:1697  "sqrtRatioA"
                    let _1142 := var_sqrtRatioA_31731
                    let expr_31794 := _1142
                    /// @src 78:1632:1698  "FullMath.mulDivRoundingUp(numerator, FixedPoint96.Q96, sqrtRatioA)"
                    let _1143 := convert_t_uint160_to_t_uint256(expr_31794)
                    let expr_31795 := fun_mulDivRoundingUp_32556(expr_31791, expr_31793, _1143)
                    /// @src 78:1619:1698  "uint256 r0 = FullMath.mulDivRoundingUp(numerator, FixedPoint96.Q96, sqrtRatioA)"
                    let var_r0_31788 := expr_31795
                    /// @src 78:1725:1733  "FullMath"
                    let expr_31799_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:1741:1750  "numerator"
                    let _1144 := var_numerator_31783
                    let expr_31801 := _1144
                    /// @src 78:1752:1764  "FixedPoint96"
                    let expr_31802_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:1752:1768  "FixedPoint96.Q96"
                    let expr_31803 := constant_Q96_29696()
                    /// @src 78:1770:1780  "sqrtRatioB"
                    let _1145 := var_sqrtRatioB_31733
                    let expr_31804 := _1145
                    /// @src 78:1725:1781  "FullMath.mulDiv(numerator, FixedPoint96.Q96, sqrtRatioB)"
                    let _1146 := convert_t_uint160_to_t_uint256(expr_31804)
                    let expr_31805 := fun_mulDiv_32512(expr_31801, expr_31803, _1146)
                    /// @src 78:1712:1781  "uint256 r1 = FullMath.mulDiv(numerator, FixedPoint96.Q96, sqrtRatioB)"
                    let var_r1_31798 := expr_31805
                    /// @src 78:1800:1808  "SafeCast"
                    let expr_31808_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                    /// @src 78:1818:1820  "r0"
                    let _1147 := var_r0_31788
                    let expr_31810 := _1147
                    /// @src 78:1800:1821  "SafeCast.toInt256(r0)"
                    let expr_31811 := fun_toInt256_28969(expr_31810)
                    /// @src 78:1824:1832  "SafeCast"
                    let expr_31812_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                    /// @src 78:1842:1844  "r1"
                    let _1148 := var_r1_31798
                    let expr_31814 := _1148
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
                let _1149 := var_swaped_31754
                let expr_31854 := _1149
                /// @src 78:2123:2208  "if (swaped) {..."
                switch expr_31854
                case 0 {
                    /// @src 78:2196:2197  "r"
                    let _1150 := var_r_31772
                    let expr_31859 := _1150
                    /// @src 78:2189:2197  "return r"
                    var__31740 := expr_31859
                    leave
                    /// @src 78:2123:2208  "if (swaped) {..."
                }
                default {
                    /// @src 78:2157:2158  "r"
                    let _1151 := var_r_31772
                    let expr_31855 := _1151
                    /// @src 78:2156:2158  "-r"
                    let expr_31856 := negate_t_int256(expr_31855)
                    /// @src 78:2149:2158  "return -r"
                    var__31740 := expr_31856
                    leave
                    /// @src 78:2123:2208  "if (swaped) {..."
                }

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 31995
            /// @src 78:2220:3382  "function calculateAmount1ForLiquidity(..."
            function fun_calculateAmount1ForLiquidity_31995(var_sqrtRatioA_31866, var_sqrtRatioB_31868, var_liquidityAmount_31870, var_isRoundUp_31872) -> var__31875 {
                /// @src 78:2400:2406  "int256"
                let zero_t_int256_1152 := zero_value_for_split_t_int256()
                var__31875 := zero_t_int256_1152

                /// @src 78:2422:2437  "liquidityAmount"
                let _1153 := var_liquidityAmount_31870
                let expr_31877 := _1153
                /// @src 78:2441:2442  "0"
                let expr_31878 := 0x00
                /// @src 78:2422:2442  "liquidityAmount == 0"
                let expr_31879 := eq(cleanup_t_uint256(expr_31877), convert_t_rational_0_by_1_to_t_uint256(expr_31878))
                /// @src 78:2422:2470  "liquidityAmount == 0 || sqrtRatioA == sqrtRatioB"
                let expr_31883 := expr_31879
                if iszero(expr_31883) {
                    /// @src 78:2446:2456  "sqrtRatioA"
                    let _1154 := var_sqrtRatioA_31866
                    let expr_31880 := _1154
                    /// @src 78:2460:2470  "sqrtRatioB"
                    let _1155 := var_sqrtRatioB_31868
                    let expr_31881 := _1155
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
                let _1156 := var_sqrtRatioA_31866
                let expr_31890 := _1156
                /// @src 78:2542:2552  "sqrtRatioB"
                let _1157 := var_sqrtRatioB_31868
                let expr_31891 := _1157
                /// @src 78:2529:2552  "sqrtRatioA < sqrtRatioB"
                let expr_31892 := lt(cleanup_t_uint160(expr_31890), cleanup_t_uint160(expr_31891))
                /// @src 78:2515:2552  "bool swaped = sqrtRatioA < sqrtRatioB"
                let var_swaped_31889 := expr_31892
                /// @src 78:2567:2577  "sqrtRatioA"
                let _1158 := var_sqrtRatioA_31866
                let expr_31894 := _1158
                /// @src 78:2580:2590  "sqrtRatioB"
                let _1159 := var_sqrtRatioB_31868
                let expr_31895 := _1159
                /// @src 78:2567:2590  "sqrtRatioA < sqrtRatioB"
                let expr_31896 := lt(cleanup_t_uint160(expr_31894), cleanup_t_uint160(expr_31895))
                /// @src 78:2563:2643  "if (sqrtRatioA < sqrtRatioB) (sqrtRatioA, sqrtRatioB) = (sqrtRatioB, sqrtRatioA)"
                if expr_31896 {
                    /// @src 78:2620:2630  "sqrtRatioB"
                    let _1160 := var_sqrtRatioB_31868
                    let expr_31900 := _1160
                    /// @src 78:2619:2643  "(sqrtRatioB, sqrtRatioA)"
                    let expr_31902_component_1 := expr_31900
                    /// @src 78:2632:2642  "sqrtRatioA"
                    let _1161 := var_sqrtRatioA_31866
                    let expr_31901 := _1161
                    /// @src 78:2619:2643  "(sqrtRatioB, sqrtRatioA)"
                    let expr_31902_component_2 := expr_31901
                    /// @src 78:2592:2643  "(sqrtRatioA, sqrtRatioB) = (sqrtRatioB, sqrtRatioA)"
                    var_sqrtRatioB_31868 := expr_31902_component_2
                    var_sqrtRatioA_31866 := expr_31902_component_1
                    /// @src 78:2563:2643  "if (sqrtRatioA < sqrtRatioB) (sqrtRatioA, sqrtRatioB) = (sqrtRatioB, sqrtRatioA)"
                }
                /// @src 78:2654:2662  "int256 r"
                let var_r_31907
                let zero_t_int256_1162 := zero_value_for_split_t_int256()
                var_r_31907 := zero_t_int256_1162
                /// @src 78:2691:2697  "swaped"
                let _1163 := var_swaped_31889
                let expr_31911 := _1163
                /// @src 78:2691:2722  "swaped ? !isRoundUp : isRoundUp"
                let expr_31915
                switch expr_31911
                case 0 {
                    /// @src 78:2713:2722  "isRoundUp"
                    let _1164 := var_isRoundUp_31872
                    let expr_31914 := _1164
                    /// @src 78:2691:2722  "swaped ? !isRoundUp : isRoundUp"
                    expr_31915 := expr_31914
                }
                default {
                    /// @src 78:2701:2710  "isRoundUp"
                    let _1165 := var_isRoundUp_31872
                    let expr_31912 := _1165
                    /// @src 78:2700:2710  "!isRoundUp"
                    let expr_31913 := cleanup_t_bool(iszero(expr_31912))
                    /// @src 78:2691:2722  "swaped ? !isRoundUp : isRoundUp"
                    expr_31915 := expr_31913
                }
                /// @src 78:2673:2722  "bool _isRoundUp = swaped ? !isRoundUp : isRoundUp"
                let var__isRoundUp_31910 := expr_31915
                /// @src 78:2737:2747  "_isRoundUp"
                let _1166 := var__isRoundUp_31910
                let expr_31917 := _1166
                /// @src 78:2733:3281  "if (_isRoundUp) {..."
                switch expr_31917
                case 0 {
                    /// @src 78:3045:3053  "FullMath"
                    let expr_31953_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:3061:3076  "liquidityAmount"
                    let _1167 := var_liquidityAmount_31870
                    let expr_31955 := _1167
                    /// @src 78:3078:3088  "sqrtRatioA"
                    let _1168 := var_sqrtRatioA_31866
                    let expr_31956 := _1168
                    /// @src 78:3090:3102  "FixedPoint96"
                    let expr_31957_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:3090:3106  "FixedPoint96.Q96"
                    let expr_31958 := constant_Q96_29696()
                    /// @src 78:3045:3107  "FullMath.mulDiv(liquidityAmount, sqrtRatioA, FixedPoint96.Q96)"
                    let _1169 := convert_t_uint160_to_t_uint256(expr_31956)
                    let expr_31959 := fun_mulDiv_32512(expr_31955, _1169, expr_31958)
                    /// @src 78:3032:3107  "uint256 r0 = FullMath.mulDiv(liquidityAmount, sqrtRatioA, FixedPoint96.Q96)"
                    let var_r0_31952 := expr_31959
                    /// @src 78:3134:3142  "FullMath"
                    let expr_31963_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:3160:3175  "liquidityAmount"
                    let _1170 := var_liquidityAmount_31870
                    let expr_31965 := _1170
                    /// @src 78:3177:3187  "sqrtRatioB"
                    let _1171 := var_sqrtRatioB_31868
                    let expr_31966 := _1171
                    /// @src 78:3189:3201  "FixedPoint96"
                    let expr_31967_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:3189:3205  "FixedPoint96.Q96"
                    let expr_31968 := constant_Q96_29696()
                    /// @src 78:3134:3206  "FullMath.mulDivRoundingUp(liquidityAmount, sqrtRatioB, FixedPoint96.Q96)"
                    let _1172 := convert_t_uint160_to_t_uint256(expr_31966)
                    let expr_31969 := fun_mulDivRoundingUp_32556(expr_31965, _1172, expr_31968)
                    /// @src 78:3121:3206  "uint256 r1 = FullMath.mulDivRoundingUp(liquidityAmount, sqrtRatioB, FixedPoint96.Q96)"
                    let var_r1_31962 := expr_31969
                    /// @src 78:3225:3233  "SafeCast"
                    let expr_31972_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                    /// @src 78:3243:3245  "r0"
                    let _1173 := var_r0_31952
                    let expr_31974 := _1173
                    /// @src 78:3225:3246  "SafeCast.toInt256(r0)"
                    let expr_31975 := fun_toInt256_28969(expr_31974)
                    /// @src 78:3249:3257  "SafeCast"
                    let expr_31976_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                    /// @src 78:3267:3269  "r1"
                    let _1174 := var_r1_31962
                    let expr_31978 := _1174
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
                    let _1175 := var_liquidityAmount_31870
                    let expr_31922 := _1175
                    /// @src 78:2819:2829  "sqrtRatioA"
                    let _1176 := var_sqrtRatioA_31866
                    let expr_31923 := _1176
                    /// @src 78:2831:2843  "FixedPoint96"
                    let expr_31924_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:2831:2847  "FixedPoint96.Q96"
                    let expr_31925 := constant_Q96_29696()
                    /// @src 78:2776:2848  "FullMath.mulDivRoundingUp(liquidityAmount, sqrtRatioA, FixedPoint96.Q96)"
                    let _1177 := convert_t_uint160_to_t_uint256(expr_31923)
                    let expr_31926 := fun_mulDivRoundingUp_32556(expr_31922, _1177, expr_31925)
                    /// @src 78:2763:2848  "uint256 r0 = FullMath.mulDivRoundingUp(liquidityAmount, sqrtRatioA, FixedPoint96.Q96)"
                    let var_r0_31919 := expr_31926
                    /// @src 78:2875:2883  "FullMath"
                    let expr_31930_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 78:2891:2906  "liquidityAmount"
                    let _1178 := var_liquidityAmount_31870
                    let expr_31932 := _1178
                    /// @src 78:2908:2918  "sqrtRatioB"
                    let _1179 := var_sqrtRatioB_31868
                    let expr_31933 := _1179
                    /// @src 78:2920:2932  "FixedPoint96"
                    let expr_31934_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                    /// @src 78:2920:2936  "FixedPoint96.Q96"
                    let expr_31935 := constant_Q96_29696()
                    /// @src 78:2875:2937  "FullMath.mulDiv(liquidityAmount, sqrtRatioB, FixedPoint96.Q96)"
                    let _1180 := convert_t_uint160_to_t_uint256(expr_31933)
                    let expr_31936 := fun_mulDiv_32512(expr_31932, _1180, expr_31935)
                    /// @src 78:2862:2937  "uint256 r1 = FullMath.mulDiv(liquidityAmount, sqrtRatioB, FixedPoint96.Q96)"
                    let var_r1_31929 := expr_31936
                    /// @src 78:2956:2964  "SafeCast"
                    let expr_31939_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                    /// @src 78:2974:2976  "r0"
                    let _1181 := var_r0_31919
                    let expr_31941 := _1181
                    /// @src 78:2956:2977  "SafeCast.toInt256(r0)"
                    let expr_31942 := fun_toInt256_28969(expr_31941)
                    /// @src 78:2980:2988  "SafeCast"
                    let expr_31943_address := linkersymbol("lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol:SafeCast")
                    /// @src 78:2998:3000  "r1"
                    let _1182 := var_r1_31929
                    let expr_31945 := _1182
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
                let _1183 := var_swaped_31889
                let expr_31985 := _1183
                /// @src 78:3291:3376  "if (swaped) {..."
                switch expr_31985
                case 0 {
                    /// @src 78:3364:3365  "r"
                    let _1184 := var_r_31907
                    let expr_31990 := _1184
                    /// @src 78:3357:3365  "return r"
                    var__31875 := expr_31990
                    leave
                    /// @src 78:3291:3376  "if (swaped) {..."
                }
                default {
                    /// @src 78:3325:3326  "r"
                    let _1185 := var_r_31907
                    let expr_31986 := _1185
                    /// @src 78:3324:3326  "-r"
                    let expr_31987 := negate_t_int256(expr_31986)
                    /// @src 78:3317:3326  "return -r"
                    var__31875 := expr_31987
                    leave
                    /// @src 78:3291:3376  "if (swaped) {..."
                }

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

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

            /// @ast-id 28969
            /// @src 10:34781:35078  "function toInt256(uint256 value) internal pure returns (int256) {..."
            function fun_toInt256_28969(var_value_28944) -> var__28947 {
                /// @src 10:34837:34843  "int256"
                let zero_t_int256_1186 := zero_value_for_split_t_int256()
                var__28947 := zero_t_int256_1186

                /// @src 10:34962:34967  "value"
                let _1187 := var_value_28944
                let expr_28950 := _1187
                /// @src 10:34979:34995  "type(int256).max"
                let expr_28957 := 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                /// @src 10:34971:34996  "uint256(type(int256).max)"
                let expr_28958 := convert_t_int256_to_t_uint256(expr_28957)
                /// @src 10:34962:34996  "value <= uint256(type(int256).max)"
                let expr_28959 := iszero(gt(cleanup_t_uint256(expr_28950), cleanup_t_uint256(expr_28958)))
                /// @src 10:34954:35041  "require(value <= uint256(type(int256).max), \"SafeCast: value doesn't fit in an int256\")"
                require_helper_t_stringliteral_d70dcf21692b3c91b4c5fbb89ed57f464aa42efbe5b0ea96c4acb7c080144227(expr_28959)
                /// @src 10:35065:35070  "value"
                let _1188 := var_value_28944
                let expr_28965 := _1188
                /// @src 10:35058:35071  "int256(value)"
                let expr_28966 := convert_t_uint256_to_t_int256(expr_28965)
                /// @src 10:35051:35071  "return int256(value)"
                var__28947 := expr_28966
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 31606
            /// @src 66:7573:7717  "function getTotalDebtValue(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getTotalDebtValue_31606(var_tokenState_31597_mpos) -> var__31600 {
                /// @src 66:7654:7661  "uint256"
                let zero_t_uint256_1189 := zero_value_for_split_t_uint256()
                var__31600 := zero_t_uint256_1189

                /// @src 66:7680:7690  "tokenState"
                let _1190_mpos := var_tokenState_31597_mpos
                let expr_31602_mpos := _1190_mpos
                /// @src 66:7680:7710  "tokenState.totalNormalBorrowed"
                let _1191 := add(expr_31602_mpos, 64)
                let _1192 := read_from_memoryt_uint256(_1191)
                let expr_31603 := _1192
                /// @src 66:7673:7710  "return tokenState.totalNormalBorrowed"
                var__31600 := expr_31603
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 31594
            /// @src 66:7299:7567  "function getTotalCollateralValue(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getTotalCollateralValue_31594(var_tokenState_31575_mpos) -> var__31578 {
                /// @src 66:7386:7393  "uint256"
                let zero_t_uint256_1193 := zero_value_for_split_t_uint256()
                var__31578 := zero_t_uint256_1193

                /// @src 66:7412:7429  "FixedPointMathLib"
                let expr_31580_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:7441:7451  "tokenState"
                let _1194_mpos := var_tokenState_31575_mpos
                let expr_31582_mpos := _1194_mpos
                /// @src 66:7441:7474  "tokenState.totalCompoundDeposited"
                let _1195 := add(expr_31582_mpos, 0)
                let _1196 := read_from_memoryt_uint256(_1195)
                let expr_31583 := _1196
                /// @src 66:7476:7486  "tokenState"
                let _1197_mpos := var_tokenState_31575_mpos
                let expr_31584_mpos := _1197_mpos
                /// @src 66:7476:7498  "tokenState.assetScaler"
                let _1198 := add(expr_31584_mpos, 96)
                let _1199 := read_from_memoryt_uint256(_1198)
                let expr_31585 := _1199
                /// @src 66:7500:7509  "Constants"
                let expr_31586_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:7500:7513  "Constants.ONE"
                let expr_31587 := constant_ONE_30273()
                /// @src 66:7412:7514  "FixedPointMathLib.mulDivDown(tokenState.totalCompoundDeposited, tokenState.assetScaler, Constants.ONE)"
                let expr_31588 := fun_mulDivDown_36976(expr_31583, expr_31585, expr_31587)
                /// @src 66:7529:7539  "tokenState"
                let _1200_mpos := var_tokenState_31575_mpos
                let expr_31589_mpos := _1200_mpos
                /// @src 66:7529:7560  "tokenState.totalNormalDeposited"
                let _1201 := add(expr_31589_mpos, 32)
                let _1202 := read_from_memoryt_uint256(_1201)
                let expr_31590 := _1202
                /// @src 66:7412:7560  "FixedPointMathLib.mulDivDown(tokenState.totalCompoundDeposited, tokenState.assetScaler, Constants.ONE)..."
                let expr_31591 := checked_add_t_uint256(expr_31588, expr_31590)

                /// @src 66:7405:7560  "return FixedPointMathLib.mulDivDown(tokenState.totalCompoundDeposited, tokenState.assetScaler, Constants.ONE)..."
                var__31578 := expr_31591
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 36976
            /// @src 12:1564:2090  "function mulDivDown(..."
            function fun_mulDivDown_36976(var_x_36965, var_y_36967, var_denominator_36969) -> var_z_36972 {
                /// @src 12:1680:1689  "uint256 z"
                let zero_t_uint256_1203 := zero_value_for_split_t_uint256()
                var_z_36972 := zero_t_uint256_1203

                /// @src 12:1744:2084  "assembly {..."
                {
                    if iszero(mul(var_denominator_36969, iszero(mul(var_y_36967, gt(var_x_36965, div(115792089237316195423570985008687907853269984665640564039457584007913129639935, var_y_36967)))))) { revert(0, 0) }
                    var_z_36972 := div(mul(var_x_36965, var_y_36967), var_denominator_36969)
                }

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

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
                let zero_t_uint256_1204 := zero_value_for_split_t_uint256()
                var__31451 := zero_t_uint256_1204

                /// @src 66:5846:5858  "accountState"
                let _1205_mpos := var_accountState_31448_mpos
                let expr_31454_mpos := _1205_mpos
                /// @src 66:5846:5873  "accountState.positionAmount"
                let _1206 := add(expr_31454_mpos, 0)
                let _1207 := read_from_memoryt_int256(_1206)
                let expr_31455 := _1207
                /// @src 66:5877:5878  "0"
                let expr_31456 := 0x00
                /// @src 66:5846:5878  "accountState.positionAmount <= 0"
                let expr_31457 := iszero(sgt(cleanup_t_int256(expr_31455), convert_t_rational_0_by_1_to_t_int256(expr_31456)))
                /// @src 66:5838:5885  "require(accountState.positionAmount <= 0, \"S1\")"
                require_helper_t_stringliteral_cee6c1efda892dff24010eb4ec902cfd76c2d6ece4afb7a0868714ea3799fe91(expr_31457)
                /// @src 66:5903:5920  "FixedPointMathLib"
                let expr_31461_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:5943:5953  "tokenState"
                let _1208_mpos := var_tokenState_31445_mpos
                let expr_31463_mpos := _1208_mpos
                /// @src 66:5943:5964  "tokenState.debtGrowth"
                let _1209 := add(expr_31463_mpos, 160)
                let _1210 := read_from_memoryt_uint256(_1209)
                let expr_31464 := _1210
                /// @src 66:5967:5979  "accountState"
                let _1211_mpos := var_accountState_31448_mpos
                let expr_31465_mpos := _1211_mpos
                /// @src 66:5967:5993  "accountState.lastFeeGrowth"
                let _1212 := add(expr_31465_mpos, 32)
                let _1213 := read_from_memoryt_uint256(_1212)
                let expr_31466 := _1213
                /// @src 66:5943:5993  "tokenState.debtGrowth - accountState.lastFeeGrowth"
                let expr_31467 := checked_sub_t_uint256(expr_31464, expr_31466)

                /// @src 66:6046:6058  "accountState"
                let _1214_mpos := var_accountState_31448_mpos
                let expr_31470_mpos := _1214_mpos
                /// @src 66:6046:6073  "accountState.positionAmount"
                let _1215 := add(expr_31470_mpos, 0)
                let _1216 := read_from_memoryt_int256(_1215)
                let expr_31471 := _1216
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
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 31442
            /// @src 66:5243:5679  "function getAssetFee(AssetStatus memory tokenState, UserStatus memory accountState)..."
            function fun_getAssetFee_31442(var_tokenState_31409_mpos, var_accountState_31412_mpos) -> var__31415 {
                /// @src 66:5374:5381  "uint256"
                let zero_t_uint256_1217 := zero_value_for_split_t_uint256()
                var__31415 := zero_t_uint256_1217

                /// @src 66:5405:5417  "accountState"
                let _1218_mpos := var_accountState_31412_mpos
                let expr_31418_mpos := _1218_mpos
                /// @src 66:5405:5432  "accountState.positionAmount"
                let _1219 := add(expr_31418_mpos, 0)
                let _1220 := read_from_memoryt_int256(_1219)
                let expr_31419 := _1220
                /// @src 66:5436:5437  "0"
                let expr_31420 := 0x00
                /// @src 66:5405:5437  "accountState.positionAmount >= 0"
                let expr_31421 := iszero(slt(cleanup_t_int256(expr_31419), convert_t_rational_0_by_1_to_t_int256(expr_31420)))
                /// @src 66:5397:5444  "require(accountState.positionAmount >= 0, \"S1\")"
                require_helper_t_stringliteral_cee6c1efda892dff24010eb4ec902cfd76c2d6ece4afb7a0868714ea3799fe91(expr_31421)
                /// @src 66:5462:5479  "FixedPointMathLib"
                let expr_31425_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:5504:5514  "tokenState"
                let _1221_mpos := var_tokenState_31409_mpos
                let expr_31427_mpos := _1221_mpos
                /// @src 66:5504:5526  "tokenState.assetGrowth"
                let _1222 := add(expr_31427_mpos, 128)
                let _1223 := read_from_memoryt_uint256(_1222)
                let expr_31428 := _1223
                /// @src 66:5529:5541  "accountState"
                let _1224_mpos := var_accountState_31412_mpos
                let expr_31429_mpos := _1224_mpos
                /// @src 66:5529:5555  "accountState.lastFeeGrowth"
                let _1225 := add(expr_31429_mpos, 32)
                let _1226 := read_from_memoryt_uint256(_1225)
                let expr_31430 := _1226
                /// @src 66:5504:5555  "tokenState.assetGrowth - accountState.lastFeeGrowth"
                let expr_31431 := checked_sub_t_uint256(expr_31428, expr_31430)

                /// @src 66:5607:5619  "accountState"
                let _1227_mpos := var_accountState_31412_mpos
                let expr_31434_mpos := _1227_mpos
                /// @src 66:5607:5634  "accountState.positionAmount"
                let _1228 := add(expr_31434_mpos, 0)
                let _1229 := read_from_memoryt_int256(_1228)
                let expr_31435 := _1229
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
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 31623
            /// @src 66:7723:7914  "function getAvailableCollateralValue(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getAvailableCollateralValue_31623(var_tokenState_31609_mpos) -> var__31612 {
                /// @src 66:7814:7821  "uint256"
                let zero_t_uint256_1230 := zero_value_for_split_t_uint256()
                var__31612 := zero_t_uint256_1230

                /// @src 66:7864:7874  "tokenState"
                let _1231_mpos := var_tokenState_31609_mpos
                let expr_31615_mpos := _1231_mpos
                /// @src 66:7840:7875  "getTotalCollateralValue(tokenState)"
                let expr_31616 := fun_getTotalCollateralValue_31594(expr_31615_mpos)
                /// @src 66:7896:7906  "tokenState"
                let _1232_mpos := var_tokenState_31609_mpos
                let expr_31618_mpos := _1232_mpos
                /// @src 66:7878:7907  "getTotalDebtValue(tokenState)"
                let expr_31619 := fun_getTotalDebtValue_31606(expr_31618_mpos)
                /// @src 66:7840:7907  "getTotalCollateralValue(tokenState) - getTotalDebtValue(tokenState)"
                let expr_31620 := checked_sub_t_uint256(expr_31616, expr_31619)

                /// @src 66:7833:7907  "return getTotalCollateralValue(tokenState) - getTotalDebtValue(tokenState)"
                var__31612 := expr_31620
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 30805
            /// @src 65:5354:5938  "function calculateMaxUpperTick(..."
            function fun_calculateMaxUpperTick_30805(var_currentUpperTick_30758, var_available_30760, var_liquidityAmount_30762, var_tickSpacing_30764) -> var_maxUpperTick_30767 {
                /// @src 65:5533:5551  "int24 maxUpperTick"
                let zero_t_int24_1233 := zero_value_for_split_t_int24()
                var_maxUpperTick_30767 := zero_t_int24_1233

                /// @src 65:5624:5632  "TickMath"
                let expr_30772_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                /// @src 65:5652:5668  "currentUpperTick"
                let _1234 := var_currentUpperTick_30758
                let expr_30774 := _1234
                /// @src 65:5624:5669  "TickMath.getSqrtRatioAtTick(currentUpperTick)"
                let expr_30775 := fun_getSqrtRatioAtTick_30100(expr_30774)
                /// @src 65:5671:5680  "available"
                let _1235 := var_available_30760
                let expr_30776 := _1235
                /// @src 65:5682:5697  "liquidityAmount"
                let _1236 := var_liquidityAmount_30762
                let expr_30777 := _1236
                /// @src 65:5595:5698  "calculateAmount0ForLiquidity(TickMath.getSqrtRatioAtTick(currentUpperTick), available, liquidityAmount)"
                let expr_30778 := fun_calculateAmount0ForLiquidity_30904(expr_30775, expr_30776, expr_30777)
                /// @src 65:5563:5698  "uint160 sqrtPrice =..."
                let var_sqrtPrice_30770 := expr_30778
                /// @src 65:5724:5732  "TickMath"
                let expr_30781_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                /// @src 65:5752:5761  "sqrtPrice"
                let _1237 := var_sqrtPrice_30770
                let expr_30783 := _1237
                /// @src 65:5724:5762  "TickMath.getTickAtSqrtRatio(sqrtPrice)"
                let expr_30784 := fun_getTickAtSqrtRatio_30242(expr_30783)
                /// @src 65:5709:5762  "maxUpperTick = TickMath.getTickAtSqrtRatio(sqrtPrice)"
                var_maxUpperTick_30767 := expr_30784
                let expr_30785 := expr_30784
                /// @src 65:5789:5800  "tickSpacing"
                let _1238 := var_tickSpacing_30764
                let expr_30788 := _1238
                /// @src 65:5773:5800  "maxUpperTick -= tickSpacing"
                let _1239 := var_maxUpperTick_30767
                let expr_30789 := checked_sub_t_int24(_1239, expr_30788)

                var_maxUpperTick_30767 := expr_30789
                /// @src 65:5815:5827  "maxUpperTick"
                let _1240 := var_maxUpperTick_30767
                let expr_30791 := _1240
                /// @src 65:5830:5846  "currentUpperTick"
                let _1241 := var_currentUpperTick_30758
                let expr_30792 := _1241
                /// @src 65:5849:5860  "tickSpacing"
                let _1242 := var_tickSpacing_30764
                let expr_30793 := _1242
                /// @src 65:5830:5860  "currentUpperTick + tickSpacing"
                let expr_30794 := checked_add_t_int24(expr_30792, expr_30793)

                /// @src 65:5815:5860  "maxUpperTick < currentUpperTick + tickSpacing"
                let expr_30795 := slt(cleanup_t_int24(expr_30791), cleanup_t_int24(expr_30794))
                /// @src 65:5811:5932  "if (maxUpperTick < currentUpperTick + tickSpacing) {..."
                if expr_30795 {
                    /// @src 65:5891:5907  "currentUpperTick"
                    let _1243 := var_currentUpperTick_30758
                    let expr_30797 := _1243
                    /// @src 65:5910:5921  "tickSpacing"
                    let _1244 := var_tickSpacing_30764
                    let expr_30798 := _1244
                    /// @src 65:5891:5921  "currentUpperTick + tickSpacing"
                    let expr_30799 := checked_add_t_int24(expr_30797, expr_30798)

                    /// @src 65:5876:5921  "maxUpperTick = currentUpperTick + tickSpacing"
                    var_maxUpperTick_30767 := expr_30799
                    let expr_30800 := expr_30799
                    /// @src 65:5811:5932  "if (maxUpperTick < currentUpperTick + tickSpacing) {..."
                }

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 30755
            /// @src 65:4641:5225  "function calculateMinLowerTick(..."
            function fun_calculateMinLowerTick_30755(var_currentLowerTick_30708, var_available_30710, var_liquidityAmount_30712, var_tickSpacing_30714) -> var_minLowerTick_30717 {
                /// @src 65:4820:4838  "int24 minLowerTick"
                let zero_t_int24_1245 := zero_value_for_split_t_int24()
                var_minLowerTick_30717 := zero_t_int24_1245

                /// @src 65:4911:4919  "TickMath"
                let expr_30722_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                /// @src 65:4939:4955  "currentLowerTick"
                let _1246 := var_currentLowerTick_30708
                let expr_30724 := _1246
                /// @src 65:4911:4956  "TickMath.getSqrtRatioAtTick(currentLowerTick)"
                let expr_30725 := fun_getSqrtRatioAtTick_30100(expr_30724)
                /// @src 65:4958:4967  "available"
                let _1247 := var_available_30710
                let expr_30726 := _1247
                /// @src 65:4969:4984  "liquidityAmount"
                let _1248 := var_liquidityAmount_30712
                let expr_30727 := _1248
                /// @src 65:4882:4985  "calculateAmount1ForLiquidity(TickMath.getSqrtRatioAtTick(currentLowerTick), available, liquidityAmount)"
                let expr_30728 := fun_calculateAmount1ForLiquidity_30846(expr_30725, expr_30726, expr_30727)
                /// @src 65:4850:4985  "uint160 sqrtPrice =..."
                let var_sqrtPrice_30720 := expr_30728
                /// @src 65:5011:5019  "TickMath"
                let expr_30731_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                /// @src 65:5039:5048  "sqrtPrice"
                let _1249 := var_sqrtPrice_30720
                let expr_30733 := _1249
                /// @src 65:5011:5049  "TickMath.getTickAtSqrtRatio(sqrtPrice)"
                let expr_30734 := fun_getTickAtSqrtRatio_30242(expr_30733)
                /// @src 65:4996:5049  "minLowerTick = TickMath.getTickAtSqrtRatio(sqrtPrice)"
                var_minLowerTick_30717 := expr_30734
                let expr_30735 := expr_30734
                /// @src 65:5076:5087  "tickSpacing"
                let _1250 := var_tickSpacing_30714
                let expr_30738 := _1250
                /// @src 65:5060:5087  "minLowerTick += tickSpacing"
                let _1251 := var_minLowerTick_30717
                let expr_30739 := checked_add_t_int24(_1251, expr_30738)

                var_minLowerTick_30717 := expr_30739
                /// @src 65:5102:5114  "minLowerTick"
                let _1252 := var_minLowerTick_30717
                let expr_30741 := _1252
                /// @src 65:5117:5133  "currentLowerTick"
                let _1253 := var_currentLowerTick_30708
                let expr_30742 := _1253
                /// @src 65:5136:5147  "tickSpacing"
                let _1254 := var_tickSpacing_30714
                let expr_30743 := _1254
                /// @src 65:5117:5147  "currentLowerTick - tickSpacing"
                let expr_30744 := checked_sub_t_int24(expr_30742, expr_30743)

                /// @src 65:5102:5147  "minLowerTick > currentLowerTick - tickSpacing"
                let expr_30745 := sgt(cleanup_t_int24(expr_30741), cleanup_t_int24(expr_30744))
                /// @src 65:5098:5219  "if (minLowerTick > currentLowerTick - tickSpacing) {..."
                if expr_30745 {
                    /// @src 65:5178:5194  "currentLowerTick"
                    let _1255 := var_currentLowerTick_30708
                    let expr_30747 := _1255
                    /// @src 65:5197:5208  "tickSpacing"
                    let _1256 := var_tickSpacing_30714
                    let expr_30748 := _1256
                    /// @src 65:5178:5208  "currentLowerTick - tickSpacing"
                    let expr_30749 := checked_sub_t_int24(expr_30747, expr_30748)

                    /// @src 65:5163:5208  "minLowerTick = currentLowerTick - tickSpacing"
                    var_minLowerTick_30717 := expr_30749
                    let expr_30750 := expr_30749
                    /// @src 65:5098:5219  "if (minLowerTick > currentLowerTick - tickSpacing) {..."
                }

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 30705
            /// @src 65:4110:4512  "function calculateUsableTick(int24 _tick, int24 tickSpacing) internal pure returns (int24 result) {..."
            function fun_calculateUsableTick_30705(var__tick_30656, var_tickSpacing_30658) -> var_result_30661 {
                /// @src 65:4194:4206  "int24 result"
                let zero_t_int24_1257 := zero_value_for_split_t_int24()
                var_result_30661 := zero_t_int24_1257

                /// @src 65:4226:4237  "tickSpacing"
                let _1258 := var_tickSpacing_30658
                let expr_30664 := _1258
                /// @src 65:4240:4241  "0"
                let expr_30665 := 0x00
                /// @src 65:4226:4241  "tickSpacing > 0"
                let expr_30666 := sgt(cleanup_t_int24(expr_30664), convert_t_rational_0_by_1_to_t_int24(expr_30665))
                /// @src 65:4218:4242  "require(tickSpacing > 0)"
                require_helper(expr_30666)
                /// @src 65:4262:4267  "_tick"
                let _1259 := var__tick_30656
                let expr_30670 := _1259
                /// @src 65:4253:4267  "result = _tick"
                var_result_30661 := expr_30670
                let expr_30671 := expr_30670
                /// @src 65:4282:4288  "result"
                let _1260 := var_result_30661
                let expr_30673 := _1260
                /// @src 65:4291:4299  "TickMath"
                let expr_30674_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                /// @src 65:4291:4308  "TickMath.MIN_TICK"
                let expr_30675 := constant_MIN_TICK_29709()
                /// @src 65:4282:4308  "result < TickMath.MIN_TICK"
                let expr_30676 := slt(cleanup_t_int24(expr_30673), cleanup_t_int24(expr_30675))
                /// @src 65:4278:4450  "if (result < TickMath.MIN_TICK) {..."
                switch expr_30676
                case 0 {
                    /// @src 65:4371:4377  "result"
                    let _1261 := var_result_30661
                    let expr_30683 := _1261
                    /// @src 65:4380:4388  "TickMath"
                    let expr_30684_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                    /// @src 65:4380:4397  "TickMath.MAX_TICK"
                    let expr_30685 := constant_MAX_TICK_29714()
                    /// @src 65:4371:4397  "result > TickMath.MAX_TICK"
                    let expr_30686 := sgt(cleanup_t_int24(expr_30683), cleanup_t_int24(expr_30685))
                    /// @src 65:4367:4450  "if (result > TickMath.MAX_TICK) {..."
                    if expr_30686 {
                        /// @src 65:4422:4430  "TickMath"
                        let expr_30688_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                        /// @src 65:4422:4439  "TickMath.MAX_TICK"
                        let expr_30689 := constant_MAX_TICK_29714()
                        /// @src 65:4413:4439  "result = TickMath.MAX_TICK"
                        var_result_30661 := expr_30689
                        let expr_30690 := expr_30689
                        /// @src 65:4367:4450  "if (result > TickMath.MAX_TICK) {..."
                    }
                    /// @src 65:4278:4450  "if (result < TickMath.MIN_TICK) {..."
                }
                default {
                    /// @src 65:4333:4341  "TickMath"
                    let expr_30678_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                    /// @src 65:4333:4350  "TickMath.MIN_TICK"
                    let expr_30679 := constant_MIN_TICK_29709()
                    /// @src 65:4324:4350  "result = TickMath.MIN_TICK"
                    var_result_30661 := expr_30679
                    let expr_30680 := expr_30679
                    /// @src 65:4278:4450  "if (result < TickMath.MIN_TICK) {..."
                }
                /// @src 65:4470:4476  "result"
                let _1262 := var_result_30661
                let expr_30696 := _1262
                /// @src 65:4479:4490  "tickSpacing"
                let _1263 := var_tickSpacing_30658
                let expr_30697 := _1263
                /// @src 65:4470:4490  "result / tickSpacing"
                let expr_30698 := checked_div_t_int24(expr_30696, expr_30697)

                /// @src 65:4469:4491  "(result / tickSpacing)"
                let expr_30699 := expr_30698
                /// @src 65:4494:4505  "tickSpacing"
                let _1264 := var_tickSpacing_30658
                let expr_30700 := _1264
                /// @src 65:4469:4505  "(result / tickSpacing) * tickSpacing"
                let expr_30701 := checked_mul_t_int24(expr_30699, expr_30700)

                /// @src 65:4460:4505  "result = (result / tickSpacing) * tickSpacing"
                var_result_30661 := expr_30701
                let expr_30702 := expr_30701

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

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
                let _1265_slot := var_userStatus_31129_slot
                let expr_31138_slot := _1265_slot
                /// @src 66:2719:2744  "userStatus.positionAmount"
                let _1266 := add(expr_31138_slot, 0)
                let _1267 := read_from_storage_split_offset_0_t_int256(_1266)
                let expr_31139 := _1267
                /// @src 66:2747:2748  "0"
                let expr_31140 := 0x00
                /// @src 66:2719:2748  "userStatus.positionAmount > 0"
                let expr_31141 := sgt(cleanup_t_int256(expr_31139), convert_t_rational_0_by_1_to_t_int256(expr_31140))
                /// @src 66:2715:2972  "if (userStatus.positionAmount > 0) {..."
                switch expr_31141
                case 0 {
                    /// @src 66:2851:2861  "userStatus"
                    let _1268_slot := var_userStatus_31129_slot
                    let expr_31152_slot := _1268_slot
                    /// @src 66:2851:2876  "userStatus.positionAmount"
                    let _1269 := add(expr_31152_slot, 0)
                    let _1270 := read_from_storage_split_offset_0_t_int256(_1269)
                    let expr_31153 := _1270
                    /// @src 66:2879:2880  "0"
                    let expr_31154 := 0x00
                    /// @src 66:2851:2880  "userStatus.positionAmount < 0"
                    let expr_31155 := slt(cleanup_t_int256(expr_31153), convert_t_rational_0_by_1_to_t_int256(expr_31154))
                    /// @src 66:2847:2972  "if (userStatus.positionAmount < 0) {..."
                    if expr_31155 {
                        /// @src 66:2904:2914  "userStatus"
                        let _1271_slot := var_userStatus_31129_slot
                        let expr_31157_slot := _1271_slot
                        /// @src 66:2904:2928  "userStatus.lastFeeGrowth"
                        let _1272 := add(expr_31157_slot, 1)
                        let _1273 := read_from_storage_split_offset_0_t_uint256(_1272)
                        let expr_31158 := _1273
                        /// @src 66:2932:2943  "tokenStatus"
                        let _1274_slot := var_tokenStatus_31126_slot
                        let expr_31159_slot := _1274_slot
                        /// @src 66:2932:2954  "tokenStatus.debtGrowth"
                        let _1275 := add(expr_31159_slot, 5)
                        let _1276 := read_from_storage_split_offset_0_t_uint256(_1275)
                        let expr_31160 := _1276
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
                    let _1277_slot := var_userStatus_31129_slot
                    let expr_31143_slot := _1277_slot
                    /// @src 66:2772:2796  "userStatus.lastFeeGrowth"
                    let _1278 := add(expr_31143_slot, 1)
                    let _1279 := read_from_storage_split_offset_0_t_uint256(_1278)
                    let expr_31144 := _1279
                    /// @src 66:2800:2811  "tokenStatus"
                    let _1280_slot := var_tokenStatus_31126_slot
                    let expr_31145_slot := _1280_slot
                    /// @src 66:2800:2823  "tokenStatus.assetGrowth"
                    let _1281 := add(expr_31145_slot, 4)
                    let _1282 := read_from_storage_split_offset_0_t_uint256(_1281)
                    let expr_31146 := _1282
                    /// @src 66:2772:2823  "userStatus.lastFeeGrowth == tokenStatus.assetGrowth"
                    let expr_31147 := eq(cleanup_t_uint256(expr_31144), cleanup_t_uint256(expr_31146))
                    /// @src 66:2764:2830  "require(userStatus.lastFeeGrowth == tokenStatus.assetGrowth, \"S2\")"
                    require_helper_t_stringliteral_589608beb3b756e6393b620b3e875b071cf25732f0ed93d9d8e6a0f9b43cc3ea(expr_31147)
                    /// @src 66:2715:2972  "if (userStatus.positionAmount > 0) {..."
                }
                /// @src 66:2982:2999  "int256 openAmount"
                let var_openAmount_31169
                let zero_t_int256_1283 := zero_value_for_split_t_int256()
                var_openAmount_31169 := zero_t_int256_1283
                /// @src 66:3009:3027  "int256 closeAmount"
                let var_closeAmount_31172
                let zero_t_int256_1284 := zero_value_for_split_t_int256()
                var_closeAmount_31172 := zero_t_int256_1284
                /// @src 66:3053:3063  "userStatus"
                let _1285_slot := var_userStatus_31129_slot
                let expr_31175_slot := _1285_slot
                /// @src 66:3053:3078  "userStatus.positionAmount"
                let _1286 := add(expr_31175_slot, 0)
                let _1287 := read_from_storage_split_offset_0_t_int256(_1286)
                let expr_31176 := _1287
                /// @src 66:3080:3087  "_amount"
                let _1288 := var__amount_31131
                let expr_31177 := _1288
                /// @src 66:3042:3088  "isSameSign(userStatus.positionAmount, _amount)"
                let expr_31178 := fun_isSameSign_31123(expr_31176, expr_31177)
                /// @src 66:3038:3418  "if (isSameSign(userStatus.positionAmount, _amount)) {..."
                switch expr_31178
                case 0 {
                    /// @src 66:3159:3169  "userStatus"
                    let _1289_slot := var_userStatus_31129_slot
                    let expr_31184_slot := _1289_slot
                    /// @src 66:3159:3184  "userStatus.positionAmount"
                    let _1290 := add(expr_31184_slot, 0)
                    let _1291 := read_from_storage_split_offset_0_t_int256(_1290)
                    let expr_31185 := _1291
                    /// @src 66:3159:3188  "userStatus.positionAmount.abs"
                    let expr_31186_self := expr_31185
                    /// @src 66:3159:3190  "userStatus.positionAmount.abs()"
                    let expr_31187 := fun_abs_32143(expr_31186_self)
                    /// @src 66:3194:3201  "_amount"
                    let _1292 := var__amount_31131
                    let expr_31188 := _1292
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
                        let _1293_slot := var_userStatus_31129_slot
                        let expr_31198_slot := _1293_slot
                        /// @src 66:3300:3325  "userStatus.positionAmount"
                        let _1294 := add(expr_31198_slot, 0)
                        let _1295 := read_from_storage_split_offset_0_t_int256(_1294)
                        let expr_31199 := _1295
                        /// @src 66:3328:3335  "_amount"
                        let _1296 := var__amount_31131
                        let expr_31200 := _1296
                        /// @src 66:3300:3335  "userStatus.positionAmount + _amount"
                        let expr_31201 := checked_add_t_int256(expr_31199, expr_31200)

                        /// @src 66:3287:3335  "openAmount = userStatus.positionAmount + _amount"
                        var_openAmount_31169 := expr_31201
                        let expr_31202 := expr_31201
                        /// @src 66:3368:3378  "userStatus"
                        let _1297_slot := var_userStatus_31129_slot
                        let expr_31205_slot := _1297_slot
                        /// @src 66:3368:3393  "userStatus.positionAmount"
                        let _1298 := add(expr_31205_slot, 0)
                        let _1299 := read_from_storage_split_offset_0_t_int256(_1298)
                        let expr_31206 := _1299
                        /// @src 66:3367:3393  "-userStatus.positionAmount"
                        let expr_31207 := negate_t_int256(expr_31206)
                        /// @src 66:3353:3393  "closeAmount = -userStatus.positionAmount"
                        var_closeAmount_31172 := expr_31207
                        let expr_31208 := expr_31207
                        /// @src 66:3155:3408  "if (userStatus.positionAmount.abs() >= _amount.abs()) {..."
                    }
                    default {
                        /// @src 66:3241:3248  "_amount"
                        let _1300 := var__amount_31131
                        let expr_31193 := _1300
                        /// @src 66:3227:3248  "closeAmount = _amount"
                        var_closeAmount_31172 := expr_31193
                        let expr_31194 := expr_31193
                        /// @src 66:3155:3408  "if (userStatus.positionAmount.abs() >= _amount.abs()) {..."
                    }
                    /// @src 66:3038:3418  "if (isSameSign(userStatus.positionAmount, _amount)) {..."
                }
                default {
                    /// @src 66:3117:3124  "_amount"
                    let _1301 := var__amount_31131
                    let expr_31180 := _1301
                    /// @src 66:3104:3124  "openAmount = _amount"
                    var_openAmount_31169 := expr_31180
                    let expr_31181 := expr_31180
                    /// @src 66:3038:3418  "if (isSameSign(userStatus.positionAmount, _amount)) {..."
                }
                /// @src 66:3432:3443  "closeAmount"
                let _1302 := var_closeAmount_31172
                let expr_31214 := _1302
                /// @src 66:3446:3447  "0"
                let expr_31215 := 0x00
                /// @src 66:3432:3447  "closeAmount > 0"
                let expr_31216 := sgt(cleanup_t_int256(expr_31214), convert_t_rational_0_by_1_to_t_int256(expr_31215))
                /// @src 66:3428:3778  "if (closeAmount > 0) {..."
                switch expr_31216
                case 0 {
                    /// @src 66:3539:3550  "closeAmount"
                    let _1303 := var_closeAmount_31172
                    let expr_31227 := _1303
                    /// @src 66:3553:3554  "0"
                    let expr_31228 := 0x00
                    /// @src 66:3539:3554  "closeAmount < 0"
                    let expr_31229 := slt(cleanup_t_int256(expr_31227), convert_t_rational_0_by_1_to_t_int256(expr_31228))
                    /// @src 66:3535:3778  "if (closeAmount < 0) {..."
                    if expr_31229 {
                        /// @src 66:3651:3662  "tokenStatus"
                        let _1304_slot := var_tokenStatus_31126_slot
                        let expr_31232_slot := _1304_slot
                        /// @src 66:3623:3663  "getAvailableCollateralValue(tokenStatus)"
                        let _1305_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31232_slot)
                        let expr_31233 := fun_getAvailableCollateralValue_31623(_1305_mpos)
                        /// @src 66:3676:3687  "closeAmount"
                        let _1306 := var_closeAmount_31172
                        let expr_31236 := _1306
                        /// @src 66:3675:3687  "-closeAmount"
                        let expr_31237 := negate_t_int256(expr_31236)
                        /// @src 66:3667:3688  "uint256(-closeAmount)"
                        let expr_31238 := convert_t_int256_to_t_uint256(expr_31237)
                        /// @src 66:3623:3688  "getAvailableCollateralValue(tokenStatus) >= uint256(-closeAmount)"
                        let expr_31239 := iszero(lt(cleanup_t_uint256(expr_31233), cleanup_t_uint256(expr_31238)))
                        /// @src 66:3615:3695  "require(getAvailableCollateralValue(tokenStatus) >= uint256(-closeAmount), \"S0\")"
                        require_helper_t_stringliteral_ee59f4ed6369731f984a173139e4b68cb3b2efb80cd22d9b1bbfa6e0a94af1c1(expr_31239)
                        /// @src 66:3755:3766  "closeAmount"
                        let _1307 := var_closeAmount_31172
                        let expr_31248 := _1307
                        /// @src 66:3754:3766  "-closeAmount"
                        let expr_31249 := negate_t_int256(expr_31248)
                        /// @src 66:3746:3767  "uint256(-closeAmount)"
                        let expr_31250 := convert_t_int256_to_t_uint256(expr_31249)
                        /// @src 66:3710:3721  "tokenStatus"
                        let _1308_slot := var_tokenStatus_31126_slot
                        let expr_31243_slot := _1308_slot
                        /// @src 66:3710:3742  "tokenStatus.totalNormalDeposited"
                        let _1309 := add(expr_31243_slot, 1)
                        /// @src 66:3710:3767  "tokenStatus.totalNormalDeposited -= uint256(-closeAmount)"
                        let _1310 := read_from_storage_split_offset_0_t_uint256(_1309)
                        let expr_31251 := checked_sub_t_uint256(_1310, expr_31250)

                        update_storage_value_offset_0_t_uint256_to_t_uint256(_1309, expr_31251)
                        /// @src 66:3535:3778  "if (closeAmount < 0) {..."
                    }
                    /// @src 66:3428:3778  "if (closeAmount > 0) {..."
                }
                default {
                    /// @src 66:3506:3517  "closeAmount"
                    let _1311 := var_closeAmount_31172
                    let expr_31222 := _1311
                    /// @src 66:3498:3518  "uint256(closeAmount)"
                    let expr_31223 := convert_t_int256_to_t_uint256(expr_31222)
                    /// @src 66:3463:3474  "tokenStatus"
                    let _1312_slot := var_tokenStatus_31126_slot
                    let expr_31217_slot := _1312_slot
                    /// @src 66:3463:3494  "tokenStatus.totalNormalBorrowed"
                    let _1313 := add(expr_31217_slot, 2)
                    /// @src 66:3463:3518  "tokenStatus.totalNormalBorrowed -= uint256(closeAmount)"
                    let _1314 := read_from_storage_split_offset_0_t_uint256(_1313)
                    let expr_31224 := checked_sub_t_uint256(_1314, expr_31223)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(_1313, expr_31224)
                    /// @src 66:3428:3778  "if (closeAmount > 0) {..."
                }
                /// @src 66:3792:3802  "openAmount"
                let _1315 := var_openAmount_31169
                let expr_31256 := _1315
                /// @src 66:3805:3806  "0"
                let expr_31257 := 0x00
                /// @src 66:3792:3806  "openAmount > 0"
                let expr_31258 := sgt(cleanup_t_int256(expr_31256), convert_t_rational_0_by_1_to_t_int256(expr_31257))
                /// @src 66:3788:4217  "if (openAmount > 0) {..."
                switch expr_31258
                case 0 {
                    /// @src 66:3963:3973  "openAmount"
                    let _1316 := var_openAmount_31169
                    let expr_31276 := _1316
                    /// @src 66:3976:3977  "0"
                    let expr_31277 := 0x00
                    /// @src 66:3963:3977  "openAmount < 0"
                    let expr_31278 := slt(cleanup_t_int256(expr_31276), convert_t_rational_0_by_1_to_t_int256(expr_31277))
                    /// @src 66:3959:4217  "if (openAmount < 0) {..."
                    if expr_31278 {
                        /// @src 66:4029:4040  "tokenStatus"
                        let _1317_slot := var_tokenStatus_31126_slot
                        let expr_31281_slot := _1317_slot
                        /// @src 66:4001:4041  "getAvailableCollateralValue(tokenStatus)"
                        let _1318_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31281_slot)
                        let expr_31282 := fun_getAvailableCollateralValue_31623(_1318_mpos)
                        /// @src 66:4054:4064  "openAmount"
                        let _1319 := var_openAmount_31169
                        let expr_31285 := _1319
                        /// @src 66:4053:4064  "-openAmount"
                        let expr_31286 := negate_t_int256(expr_31285)
                        /// @src 66:4045:4065  "uint256(-openAmount)"
                        let expr_31287 := convert_t_int256_to_t_uint256(expr_31286)
                        /// @src 66:4001:4065  "getAvailableCollateralValue(tokenStatus) >= uint256(-openAmount)"
                        let expr_31288 := iszero(lt(cleanup_t_uint256(expr_31282), cleanup_t_uint256(expr_31287)))
                        /// @src 66:3993:4072  "require(getAvailableCollateralValue(tokenStatus) >= uint256(-openAmount), \"S0\")"
                        require_helper_t_stringliteral_ee59f4ed6369731f984a173139e4b68cb3b2efb80cd22d9b1bbfa6e0a94af1c1(expr_31288)
                        /// @src 66:4131:4141  "openAmount"
                        let _1320 := var_openAmount_31169
                        let expr_31297 := _1320
                        /// @src 66:4130:4141  "-openAmount"
                        let expr_31298 := negate_t_int256(expr_31297)
                        /// @src 66:4122:4142  "uint256(-openAmount)"
                        let expr_31299 := convert_t_int256_to_t_uint256(expr_31298)
                        /// @src 66:4087:4098  "tokenStatus"
                        let _1321_slot := var_tokenStatus_31126_slot
                        let expr_31292_slot := _1321_slot
                        /// @src 66:4087:4118  "tokenStatus.totalNormalBorrowed"
                        let _1322 := add(expr_31292_slot, 2)
                        /// @src 66:4087:4142  "tokenStatus.totalNormalBorrowed += uint256(-openAmount)"
                        let _1323 := read_from_storage_split_offset_0_t_uint256(_1322)
                        let expr_31300 := checked_add_t_uint256(_1323, expr_31299)

                        update_storage_value_offset_0_t_uint256_to_t_uint256(_1322, expr_31300)
                        /// @src 66:4184:4195  "tokenStatus"
                        let _1324_slot := var_tokenStatus_31126_slot
                        let expr_31305_slot := _1324_slot
                        /// @src 66:4184:4206  "tokenStatus.debtGrowth"
                        let _1325 := add(expr_31305_slot, 5)
                        let _1326 := read_from_storage_split_offset_0_t_uint256(_1325)
                        let expr_31306 := _1326
                        /// @src 66:4157:4167  "userStatus"
                        let _1327_slot := var_userStatus_31129_slot
                        let expr_31302_slot := _1327_slot
                        /// @src 66:4157:4181  "userStatus.lastFeeGrowth"
                        let _1328 := add(expr_31302_slot, 1)
                        /// @src 66:4157:4206  "userStatus.lastFeeGrowth = tokenStatus.debtGrowth"
                        update_storage_value_offset_0_t_uint256_to_t_uint256(_1328, expr_31306)
                        let expr_31307 := expr_31306
                        /// @src 66:3959:4217  "if (openAmount < 0) {..."
                    }
                    /// @src 66:3788:4217  "if (openAmount > 0) {..."
                }
                default {
                    /// @src 66:3866:3876  "openAmount"
                    let _1329 := var_openAmount_31169
                    let expr_31264 := _1329
                    /// @src 66:3858:3877  "uint256(openAmount)"
                    let expr_31265 := convert_t_int256_to_t_uint256(expr_31264)
                    /// @src 66:3822:3833  "tokenStatus"
                    let _1330_slot := var_tokenStatus_31126_slot
                    let expr_31259_slot := _1330_slot
                    /// @src 66:3822:3854  "tokenStatus.totalNormalDeposited"
                    let _1331 := add(expr_31259_slot, 1)
                    /// @src 66:3822:3877  "tokenStatus.totalNormalDeposited += uint256(openAmount)"
                    let _1332 := read_from_storage_split_offset_0_t_uint256(_1331)
                    let expr_31266 := checked_add_t_uint256(_1332, expr_31265)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(_1331, expr_31266)
                    /// @src 66:3919:3930  "tokenStatus"
                    let _1333_slot := var_tokenStatus_31126_slot
                    let expr_31271_slot := _1333_slot
                    /// @src 66:3919:3942  "tokenStatus.assetGrowth"
                    let _1334 := add(expr_31271_slot, 4)
                    let _1335 := read_from_storage_split_offset_0_t_uint256(_1334)
                    let expr_31272 := _1335
                    /// @src 66:3892:3902  "userStatus"
                    let _1336_slot := var_userStatus_31129_slot
                    let expr_31268_slot := _1336_slot
                    /// @src 66:3892:3916  "userStatus.lastFeeGrowth"
                    let _1337 := add(expr_31268_slot, 1)
                    /// @src 66:3892:3942  "userStatus.lastFeeGrowth = tokenStatus.assetGrowth"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_1337, expr_31272)
                    let expr_31273 := expr_31272
                    /// @src 66:3788:4217  "if (openAmount > 0) {..."
                }
                /// @src 66:4256:4263  "_amount"
                let _1338 := var__amount_31131
                let expr_31315 := _1338
                /// @src 66:4227:4237  "userStatus"
                let _1339_slot := var_userStatus_31129_slot
                let expr_31312_slot := _1339_slot
                /// @src 66:4227:4252  "userStatus.positionAmount"
                let _1340 := add(expr_31312_slot, 0)
                /// @src 66:4227:4263  "userStatus.positionAmount += _amount"
                let _1341 := read_from_storage_split_offset_0_t_int256(_1340)
                let expr_31316 := checked_add_t_int256(_1341, expr_31315)

                update_storage_value_offset_0_t_int256_to_t_int256(_1340, expr_31316)
                /// @src 66:4306:4313  "_pairId"
                let _1342 := var__pairId_31133
                let expr_31319 := _1342
                /// @src 66:4315:4324  "_isStable"
                let _1343 := var__isStable_31135
                let expr_31320 := _1343
                /// @src 66:4326:4336  "openAmount"
                let _1344 := var_openAmount_31169
                let expr_31321 := _1344
                /// @src 66:4338:4349  "closeAmount"
                let _1345 := var_closeAmount_31172
                let expr_31322 := _1345
                /// @src 66:4279:4350  "ScaledAssetPositionUpdated(_pairId, _isStable, openAmount, closeAmount)"
                let _1346 := 0xfdb6fb8e49892b73d8187dbef8b7b09543994120ac9d5bf868f3d6baba1dba0d
                let _1347 := convert_t_uint256_to_t_uint256(expr_31319)
                {
                    let _1348 := allocate_unbounded()
                    let _1349 := abi_encode_tuple_t_bool_t_int256_t_int256__to_t_bool_t_int256_t_int256__fromStack(_1348 , expr_31320, expr_31321, expr_31322)
                    log2(_1348, sub(_1349, _1348) , _1346, _1347)
                }
            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            /// @ast-id 32556
            /// @src 26:5150:5515  "function mulDivRoundingUp(..."
            function fun_mulDivRoundingUp_32556(var_a_32515, var_b_32517, var_denominator_32519) -> var_result_32522 {
                /// @src 26:5272:5286  "uint256 result"
                let zero_t_uint256_1350 := zero_value_for_split_t_uint256()
                var_result_32522 := zero_t_uint256_1350

                /// @src 26:5338:5339  "a"
                let _1351 := var_a_32515
                let expr_32526 := _1351
                /// @src 26:5341:5342  "b"
                let _1352 := var_b_32517
                let expr_32527 := _1352
                /// @src 26:5344:5355  "denominator"
                let _1353 := var_denominator_32519
                let expr_32528 := _1353
                /// @src 26:5331:5356  "mulDiv(a, b, denominator)"
                let expr_32529 := fun_mulDiv_32512(expr_32526, expr_32527, expr_32528)
                /// @src 26:5322:5356  "result = mulDiv(a, b, denominator)"
                var_result_32522 := expr_32529
                let expr_32530 := expr_32529
                /// @src 26:5381:5382  "a"
                let _1354 := var_a_32515
                let expr_32533 := _1354
                /// @src 26:5384:5385  "b"
                let _1355 := var_b_32517
                let expr_32534 := _1355
                /// @src 26:5387:5398  "denominator"
                let _1356 := var_denominator_32519
                let expr_32535 := _1356
                /// @src 26:5374:5399  "mulmod(a, b, denominator)"
                let _1357 := expr_32535
                if iszero(_1357) { panic_error_0x12() }
                let expr_32536 := mulmod(expr_32533, expr_32534, _1357)
                /// @src 26:5402:5403  "0"
                let expr_32537 := 0x00
                /// @src 26:5374:5403  "mulmod(a, b, denominator) > 0"
                let expr_32538 := gt(cleanup_t_uint256(expr_32536), convert_t_rational_0_by_1_to_t_uint256(expr_32537))
                /// @src 26:5370:5499  "if (mulmod(a, b, denominator) > 0) {..."
                if expr_32538 {
                    /// @src 26:5431:5437  "result"
                    let _1358 := var_result_32522
                    let expr_32540 := _1358
                    /// @src 26:5440:5457  "type(uint256).max"
                    let expr_32545 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 26:5431:5457  "result < type(uint256).max"
                    let expr_32546 := lt(cleanup_t_uint256(expr_32540), cleanup_t_uint256(expr_32545))
                    /// @src 26:5423:5458  "require(result < type(uint256).max)"
                    require_helper(expr_32546)
                    /// @src 26:5476:5484  "result++"
                    let _1360 := var_result_32522
                    let _1359 := increment_wrapping_t_uint256(_1360)
                    var_result_32522 := _1359
                    let expr_32550 := _1360
                    /// @src 26:5370:5499  "if (mulmod(a, b, denominator) > 0) {..."
                }

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 36989
            /// @src 12:2096:2768  "function mulDivUp(..."
            function fun_mulDivUp_36989(var_x_36978, var_y_36980, var_denominator_36982) -> var_z_36985 {
                /// @src 12:2210:2219  "uint256 z"
                let zero_t_uint256_1361 := zero_value_for_split_t_uint256()
                var_z_36985 := zero_t_uint256_1361

                /// @src 12:2274:2762  "assembly {..."
                {
                    if iszero(mul(var_denominator_36982, iszero(mul(var_y_36980, gt(var_x_36978, div(115792089237316195423570985008687907853269984665640564039457584007913129639935, var_y_36980)))))) { revert(0, 0) }
                    var_z_36985 := add(gt(mod(mul(var_x_36978, var_y_36980), var_denominator_36982), 0), div(mul(var_x_36978, var_y_36980), var_denominator_36982))
                }

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function cleanup_t_rational_1461446703485210103287273052203988822378723970342_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1461446703485210103287273052203988822378723970342_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_1461446703485210103287273052203988822378723970342_by_1(value)))
            }

            /// @src 27:984:1076  "uint160 internal constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342"
            function constant_MAX_SQRT_RATIO_29722() -> ret {
                /// @src 27:1027:1076  "1461446703485210103287273052203988822378723970342"
                let expr_29721 := 0xfffd8963efd1fc6a506488495d951d5263988d26
                let _1367 := convert_t_rational_1461446703485210103287273052203988822378723970342_by_1_to_t_uint160(expr_29721)

                ret := _1367
            }

            function convert_t_rational_1_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_1_by_1(value)))
            }

            function checked_sub_t_uint160(x, y) -> diff {
                x := cleanup_t_uint160(x)
                y := cleanup_t_uint160(y)
                diff := sub(x, y)

                if gt(diff, 0xffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }

            }

            function cleanup_t_rational_4295128739_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4295128739_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_4295128739_by_1(value)))
            }

            /// @src 27:804:857  "uint160 internal constant MIN_SQRT_RATIO = 4295128739"
            function constant_MIN_SQRT_RATIO_29718() -> ret {
                /// @src 27:847:857  "4295128739"
                let expr_29717 := 0x01000276a3
                let _1373 := convert_t_rational_4295128739_by_1_to_t_uint160(expr_29717)

                ret := _1373
            }

            function checked_add_t_uint160(x, y) -> sum {
                x := cleanup_t_uint160(x)
                y := cleanup_t_uint160(y)
                sum := add(x, y)

                if gt(sum, 0xffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }

            }

            /// @ast-id 30904
            /// @src 65:6373:6963  "function calculateAmount0ForLiquidity(uint160 sqrtRatioB, uint256 available, uint256 liquidityAmount)..."
            function fun_calculateAmount0ForLiquidity_30904(var_sqrtRatioB_30848, var_available_30850, var_liquidityAmount_30852) -> var__30855 {
                /// @src 65:6522:6529  "uint160"
                let zero_t_uint160_1362 := zero_value_for_split_t_uint160()
                var__30855 := zero_t_uint160_1362

                /// @src 65:6568:6577  "available"
                let _1363 := var_available_30850
                let expr_30859 := _1363
                /// @src 65:6580:6590  "sqrtRatioB"
                let _1364 := var_sqrtRatioB_30848
                let expr_30860 := _1364
                /// @src 65:6568:6590  "available * sqrtRatioB"
                let expr_30861 := checked_mul_t_uint256(expr_30859, convert_t_uint160_to_t_uint256(expr_30860))

                /// @src 65:6593:6605  "FixedPoint96"
                let expr_30862_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                /// @src 65:6593:6609  "FixedPoint96.Q96"
                let expr_30863 := constant_Q96_29696()
                /// @src 65:6568:6609  "available * sqrtRatioB / FixedPoint96.Q96"
                let expr_30864 := checked_div_t_uint256(expr_30861, expr_30863)

                /// @src 65:6545:6609  "uint256 denominator1 = available * sqrtRatioB / FixedPoint96.Q96"
                let var_denominator1_30858 := expr_30864
                /// @src 65:6624:6639  "liquidityAmount"
                let _1365 := var_liquidityAmount_30852
                let expr_30866 := _1365
                /// @src 65:6643:6655  "denominator1"
                let _1366 := var_denominator1_30858
                let expr_30867 := _1366
                /// @src 65:6624:6655  "liquidityAmount <= denominator1"
                let expr_30868 := iszero(gt(cleanup_t_uint256(expr_30866), cleanup_t_uint256(expr_30867)))
                /// @src 65:6620:6716  "if (liquidityAmount <= denominator1) {..."
                if expr_30868 {
                    /// @src 65:6678:6686  "TickMath"
                    let expr_30869_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                    /// @src 65:6678:6701  "TickMath.MAX_SQRT_RATIO"
                    let expr_30870 := constant_MAX_SQRT_RATIO_29722()
                    /// @src 65:6704:6705  "1"
                    let expr_30871 := 0x01
                    /// @src 65:6678:6705  "TickMath.MAX_SQRT_RATIO - 1"
                    let expr_30872 := checked_sub_t_uint160(expr_30870, convert_t_rational_1_by_1_to_t_uint160(expr_30871))

                    /// @src 65:6671:6705  "return TickMath.MAX_SQRT_RATIO - 1"
                    var__30855 := expr_30872
                    leave
                    /// @src 65:6620:6716  "if (liquidityAmount <= denominator1) {..."
                }
                /// @src 65:6754:6769  "liquidityAmount"
                let _1368 := var_liquidityAmount_30852
                let expr_30880 := _1368
                /// @src 65:6772:6782  "sqrtRatioB"
                let _1369 := var_sqrtRatioB_30848
                let expr_30881 := _1369
                /// @src 65:6754:6782  "liquidityAmount * sqrtRatioB"
                let expr_30882 := checked_mul_t_uint256(expr_30880, convert_t_uint160_to_t_uint256(expr_30881))

                /// @src 65:6786:6801  "liquidityAmount"
                let _1370 := var_liquidityAmount_30852
                let expr_30883 := _1370
                /// @src 65:6804:6816  "denominator1"
                let _1371 := var_denominator1_30858
                let expr_30884 := _1371
                /// @src 65:6786:6816  "liquidityAmount - denominator1"
                let expr_30885 := checked_sub_t_uint256(expr_30883, expr_30884)

                /// @src 65:6785:6817  "(liquidityAmount - denominator1)"
                let expr_30886 := expr_30885
                /// @src 65:6754:6817  "liquidityAmount * sqrtRatioB / (liquidityAmount - denominator1)"
                let expr_30887 := checked_div_t_uint256(expr_30882, expr_30886)

                /// @src 65:6746:6818  "uint160(liquidityAmount * sqrtRatioB / (liquidityAmount - denominator1))"
                let expr_30888 := convert_t_uint256_to_t_uint160(expr_30887)
                /// @src 65:6726:6818  "uint160 sqrtPrice = uint160(liquidityAmount * sqrtRatioB / (liquidityAmount - denominator1))"
                let var_sqrtPrice_30877 := expr_30888
                /// @src 65:6833:6842  "sqrtPrice"
                let _1372 := var_sqrtPrice_30877
                let expr_30890 := _1372
                /// @src 65:6846:6854  "TickMath"
                let expr_30891_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                /// @src 65:6846:6869  "TickMath.MIN_SQRT_RATIO"
                let expr_30892 := constant_MIN_SQRT_RATIO_29718()
                /// @src 65:6833:6869  "sqrtPrice <= TickMath.MIN_SQRT_RATIO"
                let expr_30893 := iszero(gt(cleanup_t_uint160(expr_30890), cleanup_t_uint160(expr_30892)))
                /// @src 65:6829:6930  "if (sqrtPrice <= TickMath.MIN_SQRT_RATIO) {..."
                if expr_30893 {
                    /// @src 65:6892:6900  "TickMath"
                    let expr_30894_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                    /// @src 65:6892:6915  "TickMath.MIN_SQRT_RATIO"
                    let expr_30895 := constant_MIN_SQRT_RATIO_29718()
                    /// @src 65:6918:6919  "1"
                    let expr_30896 := 0x01
                    /// @src 65:6892:6919  "TickMath.MIN_SQRT_RATIO + 1"
                    let expr_30897 := checked_add_t_uint160(expr_30895, convert_t_rational_1_by_1_to_t_uint160(expr_30896))

                    /// @src 65:6885:6919  "return TickMath.MIN_SQRT_RATIO + 1"
                    var__30855 := expr_30897
                    leave
                    /// @src 65:6829:6930  "if (sqrtPrice <= TickMath.MIN_SQRT_RATIO) {..."
                }
                /// @src 65:6947:6956  "sqrtPrice"
                let _1374 := var_sqrtPrice_30877
                let expr_30901 := _1374
                /// @src 65:6940:6956  "return sqrtPrice"
                var__30855 := expr_30901
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function shift_left_t_uint256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint256(shift_left_dynamic(bits, cleanup_t_uint256(value)))
            }

            function cleanup_t_rational_127_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_127_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_127_by_1(value)))
            }

            function shift_left_t_uint256_t_uint256(value, bits) -> result {
                bits := cleanup_t_uint256(bits)
                result := cleanup_t_uint256(shift_left_dynamic(bits, cleanup_t_uint256(value)))
            }

            function shift_right_t_uint256_t_uint256(value, bits) -> result {
                bits := cleanup_t_uint256(bits)
                result := cleanup_t_uint256(shift_right_unsigned_dynamic(bits, cleanup_t_uint256(value)))
            }

            function convert_t_rational_128_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_128_by_1(value)))
            }

            function wrapping_sub_t_int256(x, y) -> diff {
                diff := cleanup_t_int256(sub(x, y))
            }

            function convert_t_rational_64_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_64_by_1(value)))
            }

            function shift_left_t_int256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_int256(shift_left_dynamic(bits, cleanup_t_int256(value)))
            }

            function cleanup_t_rational_255738958999603826347141_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_255738958999603826347141_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_255738958999603826347141_by_1(value)))
            }

            function wrapping_mul_t_int256(x, y) -> product {
                product := cleanup_t_int256(mul(x, y))
            }

            function cleanup_t_rational_3402992956809132418596140100660247210_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3402992956809132418596140100660247210_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_3402992956809132418596140100660247210_by_1(value)))
            }

            function shift_right_signed_dynamic(bits, value) -> result {

                result := sar(bits, value)

            }

            function shift_right_t_int256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_int256(shift_right_signed_dynamic(bits, cleanup_t_int256(value)))
            }

            function convert_t_int256_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_int256(value)))
            }

            function cleanup_t_rational_291339464771989622907027621153398088495_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_291339464771989622907027621153398088495_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_291339464771989622907027621153398088495_by_1(value)))
            }

            function wrapping_add_t_int256(x, y) -> sum {
                sum := cleanup_t_int256(add(x, y))
            }

            /// @ast-id 30242
            /// @src 27:4563:9415  "function getTickAtSqrtRatio(uint160 sqrtPriceX96) internal pure returns (int24 tick) {..."
            function fun_getTickAtSqrtRatio_30242(var_sqrtPriceX96_30103) -> var_tick_30106 {
                /// @src 27:4636:4646  "int24 tick"
                let zero_t_int24_1375 := zero_value_for_split_t_int24()
                var_tick_30106 := zero_t_int24_1375

                /// @src 27:4791:4803  "sqrtPriceX96"
                let _1376 := var_sqrtPriceX96_30103
                let expr_30108 := _1376
                /// @src 27:4807:4821  "MIN_SQRT_RATIO"
                let expr_30109 := constant_MIN_SQRT_RATIO_29718()
                /// @src 27:4791:4821  "sqrtPriceX96 >= MIN_SQRT_RATIO"
                let expr_30110 := iszero(lt(cleanup_t_uint160(expr_30108), cleanup_t_uint160(expr_30109)))
                /// @src 27:4791:4854  "sqrtPriceX96 >= MIN_SQRT_RATIO && sqrtPriceX96 < MAX_SQRT_RATIO"
                let expr_30114 := expr_30110
                if expr_30114 {
                    /// @src 27:4825:4837  "sqrtPriceX96"
                    let _1377 := var_sqrtPriceX96_30103
                    let expr_30111 := _1377
                    /// @src 27:4840:4854  "MAX_SQRT_RATIO"
                    let expr_30112 := constant_MAX_SQRT_RATIO_29722()
                    /// @src 27:4825:4854  "sqrtPriceX96 < MAX_SQRT_RATIO"
                    let expr_30113 := lt(cleanup_t_uint160(expr_30111), cleanup_t_uint160(expr_30112))
                    /// @src 27:4791:4854  "sqrtPriceX96 >= MIN_SQRT_RATIO && sqrtPriceX96 < MAX_SQRT_RATIO"
                    expr_30114 := expr_30113
                }
                /// @src 27:4790:4855  "(sqrtPriceX96 >= MIN_SQRT_RATIO && sqrtPriceX96 < MAX_SQRT_RATIO)"
                let expr_30115 := expr_30114
                /// @src 27:4789:4855  "!(sqrtPriceX96 >= MIN_SQRT_RATIO && sqrtPriceX96 < MAX_SQRT_RATIO)"
                let expr_30116 := cleanup_t_bool(iszero(expr_30115))
                /// @src 27:4785:4867  "if (!(sqrtPriceX96 >= MIN_SQRT_RATIO && sqrtPriceX96 < MAX_SQRT_RATIO)) revert R()"
                if expr_30116 {
                    /// @src 27:4864:4867  "R()"
                    {

                        let _1379 := 0

                        mstore(_1379, 0x4980e1be00000000000000000000000000000000000000000000000000000000)
                        let _1378 := abi_encode_tuple__to__fromStack(add(_1379, 4) )
                        revert(_1379, sub(_1378, _1379))
                    }/// @src 27:4785:4867  "if (!(sqrtPriceX96 >= MIN_SQRT_RATIO && sqrtPriceX96 < MAX_SQRT_RATIO)) revert R()"
                }
                /// @src 27:4905:4917  "sqrtPriceX96"
                let _1380 := var_sqrtPriceX96_30103
                let expr_30125 := _1380
                /// @src 27:4897:4918  "uint256(sqrtPriceX96)"
                let expr_30126 := convert_t_uint160_to_t_uint256(expr_30125)
                /// @src 27:4922:4924  "32"
                let expr_30127 := 0x20
                /// @src 27:4897:4924  "uint256(sqrtPriceX96) << 32"
                let _1381 := convert_t_rational_32_by_1_to_t_uint8(expr_30127)
                let expr_30128 :=
                shift_left_t_uint256_t_uint8(expr_30126, _1381)

                /// @src 27:4881:4924  "uint256 ratio = uint256(sqrtPriceX96) << 32"
                let var_ratio_30122 := expr_30128
                /// @src 27:4951:4956  "ratio"
                let _1382 := var_ratio_30122
                let expr_30132 := _1382
                /// @src 27:4939:4956  "uint256 r = ratio"
                let var_r_30131 := expr_30132
                /// @src 27:4984:4985  "0"
                let expr_30136 := 0x00
                /// @src 27:4970:4985  "uint256 msb = 0"
                let var_msb_30135 := convert_t_rational_0_by_1_to_t_uint256(expr_30136)
                /// @src 27:5000:5164  "assembly {..."
                {
                    let usr$f := shl(7, gt(var_r_30131, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF))
                    var_msb_30135 := or(var_msb_30135, usr$f)
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:5177:5325  "assembly {..."
                {
                    let usr$f := shl(6, gt(var_r_30131, 0xFFFFFFFFFFFFFFFF))
                    var_msb_30135 := or(var_msb_30135, usr$f)
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:5338:5478  "assembly {..."
                {
                    let usr$f := shl(5, gt(var_r_30131, 0xFFFFFFFF))
                    var_msb_30135 := or(var_msb_30135, usr$f)
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:5491:5627  "assembly {..."
                {
                    let usr$f := shl(4, gt(var_r_30131, 0xFFFF))
                    var_msb_30135 := or(var_msb_30135, usr$f)
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:5640:5774  "assembly {..."
                {
                    let usr$f := shl(3, gt(var_r_30131, 0xFF))
                    var_msb_30135 := or(var_msb_30135, usr$f)
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:5787:5920  "assembly {..."
                {
                    let usr$f := shl(2, gt(var_r_30131, 0xF))
                    var_msb_30135 := or(var_msb_30135, usr$f)
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:5933:6066  "assembly {..."
                {
                    let usr$f := shl(1, gt(var_r_30131, 0x3))
                    var_msb_30135 := or(var_msb_30135, usr$f)
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:6079:6173  "assembly {..."
                {
                    let usr$f := gt(var_r_30131, 0x1)
                    var_msb_30135 := or(var_msb_30135, usr$f)
                }
                /// @src 27:6191:6194  "msb"
                let _1383 := var_msb_30135
                let expr_30146 := _1383
                /// @src 27:6198:6201  "128"
                let expr_30147 := 0x80
                /// @src 27:6191:6201  "msb >= 128"
                let expr_30148 := iszero(lt(cleanup_t_uint256(expr_30146), convert_t_rational_128_by_1_to_t_uint256(expr_30147)))
                /// @src 27:6187:6270  "if (msb >= 128) r = ratio >> (msb - 127);..."
                switch expr_30148
                case 0 {
                    /// @src 27:6250:6255  "ratio"
                    let _1384 := var_ratio_30122
                    let expr_30159 := _1384
                    /// @src 27:6260:6263  "127"
                    let expr_30160 := 0x7f
                    /// @src 27:6266:6269  "msb"
                    let _1385 := var_msb_30135
                    let expr_30161 := _1385
                    /// @src 27:6260:6269  "127 - msb"
                    let expr_30162 := wrapping_sub_t_uint256(convert_t_rational_127_by_1_to_t_uint256(expr_30160), expr_30161)

                    /// @src 27:6259:6270  "(127 - msb)"
                    let expr_30163 := expr_30162
                    /// @src 27:6250:6270  "ratio << (127 - msb)"
                    let expr_30164 :=
                    shift_left_t_uint256_t_uint256(expr_30159, expr_30163)

                    /// @src 27:6246:6270  "r = ratio << (127 - msb)"
                    var_r_30131 := expr_30164
                    let expr_30165 := expr_30164
                    /// @src 27:6187:6270  "if (msb >= 128) r = ratio >> (msb - 127);..."
                }
                default {
                    /// @src 27:6207:6212  "ratio"
                    let _1386 := var_ratio_30122
                    let expr_30150 := _1386
                    /// @src 27:6217:6220  "msb"
                    let _1387 := var_msb_30135
                    let expr_30151 := _1387
                    /// @src 27:6223:6226  "127"
                    let expr_30152 := 0x7f
                    /// @src 27:6217:6226  "msb - 127"
                    let expr_30153 := wrapping_sub_t_uint256(expr_30151, convert_t_rational_127_by_1_to_t_uint256(expr_30152))

                    /// @src 27:6216:6227  "(msb - 127)"
                    let expr_30154 := expr_30153
                    /// @src 27:6207:6227  "ratio >> (msb - 127)"
                    let expr_30155 :=
                    shift_right_t_uint256_t_uint256(expr_30150, expr_30154)

                    /// @src 27:6203:6227  "r = ratio >> (msb - 127)"
                    var_r_30131 := expr_30155
                    let expr_30156 := expr_30155
                    /// @src 27:6187:6270  "if (msb >= 128) r = ratio >> (msb - 127);..."
                }
                /// @src 27:6308:6311  "msb"
                let _1388 := var_msb_30135
                let expr_30172 := _1388
                /// @src 27:6301:6312  "int256(msb)"
                let expr_30173 := convert_t_uint256_to_t_int256(expr_30172)
                /// @src 27:6315:6318  "128"
                let expr_30174 := 0x80
                /// @src 27:6301:6318  "int256(msb) - 128"
                let expr_30175 := wrapping_sub_t_int256(expr_30173, convert_t_rational_128_by_1_to_t_int256(expr_30174))

                /// @src 27:6300:6319  "(int256(msb) - 128)"
                let expr_30176 := expr_30175
                /// @src 27:6323:6325  "64"
                let expr_30177 := 0x40
                /// @src 27:6300:6325  "(int256(msb) - 128) << 64"
                let _1389 := convert_t_rational_64_by_1_to_t_uint8(expr_30177)
                let expr_30178 :=
                shift_left_t_int256_t_uint8(expr_30176, _1389)

                /// @src 27:6285:6325  "int256 log_2 = (int256(msb) - 128) << 64"
                let var_log_2_30169 := expr_30178
                /// @src 27:6340:6520  "assembly {..."
                {
                    var_r_30131 := shr(127, mul(var_r_30131, var_r_30131))
                    let usr$f := shr(128, var_r_30131)
                    var_log_2_30169 := or(var_log_2_30169, shl(63, usr$f))
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:6533:6713  "assembly {..."
                {
                    var_r_30131 := shr(127, mul(var_r_30131, var_r_30131))
                    let usr$f := shr(128, var_r_30131)
                    var_log_2_30169 := or(var_log_2_30169, shl(62, usr$f))
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:6726:6906  "assembly {..."
                {
                    var_r_30131 := shr(127, mul(var_r_30131, var_r_30131))
                    let usr$f := shr(128, var_r_30131)
                    var_log_2_30169 := or(var_log_2_30169, shl(61, usr$f))
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:6919:7099  "assembly {..."
                {
                    var_r_30131 := shr(127, mul(var_r_30131, var_r_30131))
                    let usr$f := shr(128, var_r_30131)
                    var_log_2_30169 := or(var_log_2_30169, shl(60, usr$f))
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:7112:7292  "assembly {..."
                {
                    var_r_30131 := shr(127, mul(var_r_30131, var_r_30131))
                    let usr$f := shr(128, var_r_30131)
                    var_log_2_30169 := or(var_log_2_30169, shl(59, usr$f))
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:7305:7485  "assembly {..."
                {
                    var_r_30131 := shr(127, mul(var_r_30131, var_r_30131))
                    let usr$f := shr(128, var_r_30131)
                    var_log_2_30169 := or(var_log_2_30169, shl(58, usr$f))
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:7498:7678  "assembly {..."
                {
                    var_r_30131 := shr(127, mul(var_r_30131, var_r_30131))
                    let usr$f := shr(128, var_r_30131)
                    var_log_2_30169 := or(var_log_2_30169, shl(57, usr$f))
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:7691:7871  "assembly {..."
                {
                    var_r_30131 := shr(127, mul(var_r_30131, var_r_30131))
                    let usr$f := shr(128, var_r_30131)
                    var_log_2_30169 := or(var_log_2_30169, shl(56, usr$f))
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:7884:8064  "assembly {..."
                {
                    var_r_30131 := shr(127, mul(var_r_30131, var_r_30131))
                    let usr$f := shr(128, var_r_30131)
                    var_log_2_30169 := or(var_log_2_30169, shl(55, usr$f))
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:8077:8257  "assembly {..."
                {
                    var_r_30131 := shr(127, mul(var_r_30131, var_r_30131))
                    let usr$f := shr(128, var_r_30131)
                    var_log_2_30169 := or(var_log_2_30169, shl(54, usr$f))
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:8270:8450  "assembly {..."
                {
                    var_r_30131 := shr(127, mul(var_r_30131, var_r_30131))
                    let usr$f := shr(128, var_r_30131)
                    var_log_2_30169 := or(var_log_2_30169, shl(53, usr$f))
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:8463:8643  "assembly {..."
                {
                    var_r_30131 := shr(127, mul(var_r_30131, var_r_30131))
                    let usr$f := shr(128, var_r_30131)
                    var_log_2_30169 := or(var_log_2_30169, shl(52, usr$f))
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:8656:8836  "assembly {..."
                {
                    var_r_30131 := shr(127, mul(var_r_30131, var_r_30131))
                    let usr$f := shr(128, var_r_30131)
                    var_log_2_30169 := or(var_log_2_30169, shl(51, usr$f))
                    var_r_30131 := shr(usr$f, var_r_30131)
                }
                /// @src 27:8849:8998  "assembly {..."
                {
                    var_r_30131 := shr(127, mul(var_r_30131, var_r_30131))
                    let usr$f := shr(128, var_r_30131)
                    var_log_2_30169 := or(var_log_2_30169, shl(50, usr$f))
                }
                /// @src 27:9035:9040  "log_2"
                let _1390 := var_log_2_30169
                let expr_30196 := _1390
                /// @src 27:9043:9067  "255738958999603826347141"
                let expr_30197 := 0x3627a301d71055774c85
                /// @src 27:9035:9067  "log_2 * 255738958999603826347141"
                let expr_30198 := wrapping_mul_t_int256(expr_30196, convert_t_rational_255738958999603826347141_by_1_to_t_int256(expr_30197))

                /// @src 27:9012:9067  "int256 log_sqrt10001 = log_2 * 255738958999603826347141"
                let var_log_sqrt10001_30195 := expr_30198
                /// @src 27:9123:9136  "log_sqrt10001"
                let _1391 := var_log_sqrt10001_30195
                let expr_30204 := _1391
                /// @src 27:9139:9176  "3402992956809132418596140100660247210"
                let expr_30205 := 0x028f6481ab7f045a5af012a19d003aaa
                /// @src 27:9123:9176  "log_sqrt10001 - 3402992956809132418596140100660247210"
                let expr_30206 := wrapping_sub_t_int256(expr_30204, convert_t_rational_3402992956809132418596140100660247210_by_1_to_t_int256(expr_30205))

                /// @src 27:9122:9177  "(log_sqrt10001 - 3402992956809132418596140100660247210)"
                let expr_30207 := expr_30206
                /// @src 27:9181:9184  "128"
                let expr_30208 := 0x80
                /// @src 27:9122:9184  "(log_sqrt10001 - 3402992956809132418596140100660247210) >> 128"
                let _1392 := convert_t_rational_128_by_1_to_t_uint8(expr_30208)
                let expr_30209 :=
                shift_right_t_int256_t_uint8(expr_30207, _1392)

                /// @src 27:9116:9185  "int24((log_sqrt10001 - 3402992956809132418596140100660247210) >> 128)"
                let expr_30210 := convert_t_int256_to_t_int24(expr_30209)
                /// @src 27:9100:9185  "int24 tickLow = int24((log_sqrt10001 - 3402992956809132418596140100660247210) >> 128)"
                let var_tickLow_30201 := expr_30210
                /// @src 27:9221:9234  "log_sqrt10001"
                let _1393 := var_log_sqrt10001_30195
                let expr_30216 := _1393
                /// @src 27:9237:9276  "291339464771989622907027621153398088495"
                let expr_30217 := 0xdb2df09e81959a81455e260799a0632f
                /// @src 27:9221:9276  "log_sqrt10001 + 291339464771989622907027621153398088495"
                let expr_30218 := wrapping_add_t_int256(expr_30216, convert_t_rational_291339464771989622907027621153398088495_by_1_to_t_int256(expr_30217))

                /// @src 27:9220:9277  "(log_sqrt10001 + 291339464771989622907027621153398088495)"
                let expr_30219 := expr_30218
                /// @src 27:9281:9284  "128"
                let expr_30220 := 0x80
                /// @src 27:9220:9284  "(log_sqrt10001 + 291339464771989622907027621153398088495) >> 128"
                let _1394 := convert_t_rational_128_by_1_to_t_uint8(expr_30220)
                let expr_30221 :=
                shift_right_t_int256_t_uint8(expr_30219, _1394)

                /// @src 27:9214:9285  "int24((log_sqrt10001 + 291339464771989622907027621153398088495) >> 128)"
                let expr_30222 := convert_t_int256_to_t_int24(expr_30221)
                /// @src 27:9199:9285  "int24 tickHi = int24((log_sqrt10001 + 291339464771989622907027621153398088495) >> 128)"
                let var_tickHi_30213 := expr_30222
                /// @src 27:9307:9314  "tickLow"
                let _1395 := var_tickLow_30201
                let expr_30225 := _1395
                /// @src 27:9318:9324  "tickHi"
                let _1396 := var_tickHi_30213
                let expr_30226 := _1396
                /// @src 27:9307:9324  "tickLow == tickHi"
                let expr_30227 := eq(cleanup_t_int24(expr_30225), cleanup_t_int24(expr_30226))
                /// @src 27:9307:9398  "tickLow == tickHi ? tickLow : getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow"
                let expr_30237
                switch expr_30227
                case 0 {
                    /// @src 27:9356:9362  "tickHi"
                    let _1397 := var_tickHi_30213
                    let expr_30230 := _1397
                    /// @src 27:9337:9363  "getSqrtRatioAtTick(tickHi)"
                    let expr_30231 := fun_getSqrtRatioAtTick_30100(expr_30230)
                    /// @src 27:9367:9379  "sqrtPriceX96"
                    let _1398 := var_sqrtPriceX96_30103
                    let expr_30232 := _1398
                    /// @src 27:9337:9379  "getSqrtRatioAtTick(tickHi) <= sqrtPriceX96"
                    let expr_30233 := iszero(gt(cleanup_t_uint160(expr_30231), cleanup_t_uint160(expr_30232)))
                    /// @src 27:9337:9398  "getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow"
                    let expr_30236
                    switch expr_30233
                    case 0 {
                        /// @src 27:9391:9398  "tickLow"
                        let _1399 := var_tickLow_30201
                        let expr_30235 := _1399
                        /// @src 27:9337:9398  "getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow"
                        expr_30236 := expr_30235
                    }
                    default {
                        /// @src 27:9382:9388  "tickHi"
                        let _1400 := var_tickHi_30213
                        let expr_30234 := _1400
                        /// @src 27:9337:9398  "getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow"
                        expr_30236 := expr_30234
                    }
                    /// @src 27:9307:9398  "tickLow == tickHi ? tickLow : getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow"
                    expr_30237 := expr_30236
                }
                default {
                    /// @src 27:9327:9334  "tickLow"
                    let _1401 := var_tickLow_30201
                    let expr_30228 := _1401
                    /// @src 27:9307:9398  "tickLow == tickHi ? tickLow : getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow"
                    expr_30237 := expr_30228
                }
                /// @src 27:9300:9398  "tick = tickLow == tickHi ? tickLow : getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow"
                var_tick_30106 := expr_30237
                let expr_30238 := expr_30237

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 30846
            /// @src 65:5944:6367  "function calculateAmount1ForLiquidity(uint160 sqrtRatioA, uint256 available, uint256 liquidityAmount)..."
            function fun_calculateAmount1ForLiquidity_30846(var_sqrtRatioA_30807, var_available_30809, var_liquidityAmount_30811) -> var__30814 {
                /// @src 65:6093:6100  "uint160"
                let zero_t_uint160_1402 := zero_value_for_split_t_uint160()
                var__30814 := zero_t_uint160_1402

                /// @src 65:6137:6146  "available"
                let _1403 := var_available_30809
                let expr_30818 := _1403
                /// @src 65:6149:6161  "FixedPoint96"
                let expr_30819_address := linkersymbol("lib/v3-core/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                /// @src 65:6149:6165  "FixedPoint96.Q96"
                let expr_30820 := constant_Q96_29696()
                /// @src 65:6137:6165  "available * FixedPoint96.Q96"
                let expr_30821 := checked_mul_t_uint256(expr_30818, expr_30820)

                /// @src 65:6168:6183  "liquidityAmount"
                let _1404 := var_liquidityAmount_30811
                let expr_30822 := _1404
                /// @src 65:6137:6183  "available * FixedPoint96.Q96 / liquidityAmount"
                let expr_30823 := checked_div_t_uint256(expr_30821, expr_30822)

                /// @src 65:6136:6184  "(available * FixedPoint96.Q96 / liquidityAmount)"
                let expr_30824 := expr_30823
                /// @src 65:6136:6194  "(available * FixedPoint96.Q96 / liquidityAmount).toUint160"
                let expr_30825_self := expr_30824
                /// @src 65:6136:6196  "(available * FixedPoint96.Q96 / liquidityAmount).toUint160()"
                let expr_30826 := fun_toUint160_27732(expr_30825_self)
                /// @src 65:6116:6196  "uint160 sqrtPrice = (available * FixedPoint96.Q96 / liquidityAmount).toUint160()"
                let var_sqrtPrice_30817 := expr_30826
                /// @src 65:6211:6221  "sqrtRatioA"
                let _1405 := var_sqrtRatioA_30807
                let expr_30828 := _1405
                /// @src 65:6225:6234  "sqrtPrice"
                let _1406 := var_sqrtPrice_30817
                let expr_30829 := _1406
                /// @src 65:6237:6245  "TickMath"
                let expr_30830_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                /// @src 65:6237:6260  "TickMath.MIN_SQRT_RATIO"
                let expr_30831 := constant_MIN_SQRT_RATIO_29718()
                /// @src 65:6225:6260  "sqrtPrice + TickMath.MIN_SQRT_RATIO"
                let expr_30832 := checked_add_t_uint160(expr_30829, expr_30831)

                /// @src 65:6211:6260  "sqrtRatioA <= sqrtPrice + TickMath.MIN_SQRT_RATIO"
                let expr_30833 := iszero(gt(cleanup_t_uint160(expr_30828), cleanup_t_uint160(expr_30832)))
                /// @src 65:6207:6321  "if (sqrtRatioA <= sqrtPrice + TickMath.MIN_SQRT_RATIO) {..."
                if expr_30833 {
                    /// @src 65:6283:6291  "TickMath"
                    let expr_30834_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                    /// @src 65:6283:6306  "TickMath.MIN_SQRT_RATIO"
                    let expr_30835 := constant_MIN_SQRT_RATIO_29718()
                    /// @src 65:6309:6310  "1"
                    let expr_30836 := 0x01
                    /// @src 65:6283:6310  "TickMath.MIN_SQRT_RATIO + 1"
                    let expr_30837 := checked_add_t_uint160(expr_30835, convert_t_rational_1_by_1_to_t_uint160(expr_30836))

                    /// @src 65:6276:6310  "return TickMath.MIN_SQRT_RATIO + 1"
                    var__30814 := expr_30837
                    leave
                    /// @src 65:6207:6321  "if (sqrtRatioA <= sqrtPrice + TickMath.MIN_SQRT_RATIO) {..."
                }
                /// @src 65:6338:6348  "sqrtRatioA"
                let _1407 := var_sqrtRatioA_30807
                let expr_30841 := _1407
                /// @src 65:6351:6360  "sqrtPrice"
                let _1408 := var_sqrtPrice_30817
                let expr_30842 := _1408
                /// @src 65:6338:6360  "sqrtRatioA - sqrtPrice"
                let expr_30843 := checked_sub_t_uint160(expr_30841, expr_30842)

                /// @src 65:6331:6360  "return sqrtRatioA - sqrtPrice"
                var__30814 := expr_30843
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 31123
            /// @src 66:2285:2416  "function isSameSign(int256 a, int256 b) internal pure returns (bool) {..."
            function fun_isSameSign_31123(var_a_31097, var_b_31099) -> var__31102 {
                /// @src 66:2348:2352  "bool"
                let zero_t_bool_1409 := zero_value_for_split_t_bool()
                var__31102 := zero_t_bool_1409

                /// @src 66:2372:2373  "a"
                let _1410 := var_a_31097
                let expr_31104 := _1410
                /// @src 66:2377:2378  "0"
                let expr_31105 := 0x00
                /// @src 66:2372:2378  "a >= 0"
                let expr_31106 := iszero(slt(cleanup_t_int256(expr_31104), convert_t_rational_0_by_1_to_t_int256(expr_31105)))
                /// @src 66:2372:2388  "a >= 0 && b >= 0"
                let expr_31110 := expr_31106
                if expr_31110 {
                    /// @src 66:2382:2383  "b"
                    let _1411 := var_b_31099
                    let expr_31107 := _1411
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
                    let _1412 := var_a_31097
                    let expr_31112 := _1412
                    /// @src 66:2398:2399  "0"
                    let expr_31113 := 0x00
                    /// @src 66:2394:2399  "a < 0"
                    let expr_31114 := slt(cleanup_t_int256(expr_31112), convert_t_rational_0_by_1_to_t_int256(expr_31113))
                    /// @src 66:2394:2408  "a < 0 && b < 0"
                    let expr_31118 := expr_31114
                    if expr_31118 {
                        /// @src 66:2403:2404  "b"
                        let _1413 := var_b_31099
                        let expr_31115 := _1413
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
            /// @src 74:553:3377  "library ReallocationLogic {..."

            /// @ast-id 32143
            /// @src 79:381:484  "function abs(int256 x) internal pure returns (uint256) {..."
            function fun_abs_32143(var_x_32126) -> var__32129 {
                /// @src 79:427:434  "uint256"
                let zero_t_uint256_1414 := zero_value_for_split_t_uint256()
                var__32129 := zero_t_uint256_1414

                /// @src 79:461:462  "x"
                let _1415 := var_x_32126
                let expr_32133 := _1415
                /// @src 79:466:467  "0"
                let expr_32134 := 0x00
                /// @src 79:461:467  "x >= 0"
                let expr_32135 := iszero(slt(cleanup_t_int256(expr_32133), convert_t_rational_0_by_1_to_t_int256(expr_32134)))
                /// @src 79:461:476  "x >= 0 ? x : -x"
                let expr_32139
                switch expr_32135
                case 0 {
                    /// @src 79:475:476  "x"
                    let _1416 := var_x_32126
                    let expr_32137 := _1416
                    /// @src 79:474:476  "-x"
                    let expr_32138 := negate_t_int256(expr_32137)
                    /// @src 79:461:476  "x >= 0 ? x : -x"
                    expr_32139 := expr_32138
                }
                default {
                    /// @src 79:470:471  "x"
                    let _1417 := var_x_32126
                    let expr_32136 := _1417
                    /// @src 79:461:476  "x >= 0 ? x : -x"
                    expr_32139 := expr_32136
                }
                /// @src 79:453:477  "uint256(x >= 0 ? x : -x)"
                let expr_32140 := convert_t_int256_to_t_uint256(expr_32139)
                /// @src 79:446:477  "return uint256(x >= 0 ? x : -x)"
                var__32129 := expr_32140
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

            function store_literal_in_memory_976ecce9083debfe29d3a99b955facf24b8725f1b964d1a5bb4197ffcd60ab9d(memPtr) {

                mstore(add(memPtr, 0), "SafeCast: value doesn't fit in 1")

                mstore(add(memPtr, 32), "60 bits")

            }

            function abi_encode_t_stringliteral_976ecce9083debfe29d3a99b955facf24b8725f1b964d1a5bb4197ffcd60ab9d_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 39)
                store_literal_in_memory_976ecce9083debfe29d3a99b955facf24b8725f1b964d1a5bb4197ffcd60ab9d(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_976ecce9083debfe29d3a99b955facf24b8725f1b964d1a5bb4197ffcd60ab9d__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_976ecce9083debfe29d3a99b955facf24b8725f1b964d1a5bb4197ffcd60ab9d_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_976ecce9083debfe29d3a99b955facf24b8725f1b964d1a5bb4197ffcd60ab9d(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_976ecce9083debfe29d3a99b955facf24b8725f1b964d1a5bb4197ffcd60ab9d__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 27732
            /// @src 10:7004:7196  "function toUint160(uint256 value) internal pure returns (uint160) {..."
            function fun_toUint160_27732(var_value_27710) -> var__27713 {
                /// @src 10:7061:7068  "uint160"
                let zero_t_uint160_1418 := zero_value_for_split_t_uint160()
                var__27713 := zero_t_uint160_1418

                /// @src 10:7088:7093  "value"
                let _1419 := var_value_27710
                let expr_27716 := _1419
                /// @src 10:7097:7114  "type(uint160).max"
                let expr_27721 := 0xffffffffffffffffffffffffffffffffffffffff
                /// @src 10:7088:7114  "value <= type(uint160).max"
                let expr_27722 := iszero(gt(cleanup_t_uint256(expr_27716), convert_t_uint160_to_t_uint256(expr_27721)))
                /// @src 10:7080:7158  "require(value <= type(uint160).max, \"SafeCast: value doesn't fit in 160 bits\")"
                require_helper_t_stringliteral_976ecce9083debfe29d3a99b955facf24b8725f1b964d1a5bb4197ffcd60ab9d(expr_27722)
                /// @src 10:7183:7188  "value"
                let _1420 := var_value_27710
                let expr_27728 := _1420
                /// @src 10:7175:7189  "uint160(value)"
                let expr_27729 := convert_t_uint256_to_t_uint160(expr_27728)
                /// @src 10:7168:7189  "return uint160(value)"
                var__27713 := expr_27729
                leave

            }
            /// @src 74:553:3377  "library ReallocationLogic {..."

        }

        data ".metadata" hex"a2646970667358221220aad25850b18088678e91a400b1e987b6b30d54dcf28a23a54432cf8ee0f35a7464736f6c634300081e0033"
    }

}

