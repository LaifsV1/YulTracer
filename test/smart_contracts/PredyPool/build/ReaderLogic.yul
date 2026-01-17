
/// @use-src 73:"src/libraries/logic/ReaderLogic.sol"
object "ReaderLogic_18475" {
    code {
        /// @src 73:468:2708  "library ReaderLogic {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("ReaderLogic_18475_deployed"), datasize("ReaderLogic_18475_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("ReaderLogic_18475_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 73:468:2708  "library ReaderLogic {..."
        function constructor_ReaderLogic_18475() {

            /// @src 73:468:2708  "library ReaderLogic {..."

        }
        /// @src 73:468:2708  "library ReaderLogic {..."

    }
    /// @use-src 10:"lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol", 12:"lib/solmate/src/utils/FixedPointMathLib.sol", 26:"lib/v3-core/contracts/libraries/FullMath.sol", 27:"lib/v3-core/contracts/libraries/TickMath.sol", 56:"src/libraries/ApplyInterestLib.sol", 57:"src/libraries/Constants.sol", 59:"src/libraries/InterestRateModel.sol", 60:"src/libraries/PairLib.sol", 61:"src/libraries/Perp.sol", 62:"src/libraries/PerpFee.sol", 63:"src/libraries/PositionCalculator.sol", 64:"src/libraries/PremiumCurveModel.sol", 66:"src/libraries/ScaledAsset.sol", 69:"src/libraries/UniHelper.sol", 73:"src/libraries/logic/ReaderLogic.sol", 79:"src/libraries/math/Math.sol"
    object "ReaderLogic_18475_deployed" {
        code {
            /// @src 73:468:2708  "library ReaderLogic {..."
            mstore(64, 128)

            let called_via_delegatecall := iszero(eq(loadimmutable("library_deploy_address"), address()))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x919c1b61
                {
                    // getVaultStatus(GlobalDataLibrary.GlobalData storage,uint256)
                    if iszero(called_via_delegatecall) { revert_error_fb00381150b0555b0bf83aa2d95ae5599abd614bfe490c66e084fe1f454f48e2() }
                    external_fun_getVaultStatus_18407()
                }

                case 0xdd207a4a
                {
                    // getPairStatus(GlobalDataLibrary.GlobalData storage,uint256)
                    if iszero(called_via_delegatecall) { revert_error_fb00381150b0555b0bf83aa2d95ae5599abd614bfe490c66e084fe1f454f48e2() }
                    external_fun_getPairStatus_18316()
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

            function abi_decode_tuple_t_struct$_GlobalData_$19302_storage_ptrt_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_GlobalData_$19302_storage_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack_library(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_getVaultStatus_18407() {

                let param_0, param_1 :=  abi_decode_tuple_t_struct$_GlobalData_$19302_storage_ptrt_uint256(4, calldatasize())
                fun_getVaultStatus_18407(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack_library(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_getPairStatus_18316() {

                let param_0, param_1 :=  abi_decode_tuple_t_struct$_GlobalData_$19302_storage_ptrt_uint256(4, calldatasize())
                fun_getPairStatus_18316(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack_library(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Vault_$6116_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
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

            function write_to_memory_t_struct$_UserStatus_$13665_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function allocate_memory_struct_t_struct$_Vault_$6116_memory_ptr() -> memPtr {
                memPtr := allocate_memory(192)
            }

            function read_from_storage_reference_type_t_struct$_Vault_$6116_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_Vault_$6116_memory_ptr()

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
                    let memberValue_0 := read_from_storage_split_offset_0_t_address(add(slot, 3))
                    write_to_memory_t_address(add(value, 96), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_int256(add(slot, 4))
                    write_to_memory_t_int256(add(value, 128), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_reference_type_t_struct$_UserStatus_$13665_memory_ptr(add(slot, 5))
                    write_to_memory_t_struct$_UserStatus_$13665_memory_ptr(add(value, 160), memberValue_0)
                }

            }

            function convert_t_struct$_Vault_$6116_storage_to_t_struct$_Vault_$6116_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_Vault_$6116_memory_ptr(value)

            }

            function read_from_memoryt_uint256(ptr) -> returnValue {

                let value := cleanup_t_uint256(mload(ptr))

                returnValue :=

                value

            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_storage_ptr(value) -> converted {
                converted := value
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

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
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

            function allocate_memory_struct_t_struct$_VaultStatus_$2071_storage_ptr() -> memPtr {
                memPtr := allocate_memory(192)
            }

            function write_to_memory_t_struct$_FeeAmount_$6126_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function write_to_memory_t_struct$_Position_$2056_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            /// @ast-id 18407
            /// @src 73:855:1763  "function getVaultStatus(GlobalDataLibrary.GlobalData storage globalData, uint256 vaultId) external {..."
            function fun_getVaultStatus_18407(var_globalData_18319_slot, var_vaultId_18321) {

                /// @src 73:994:1004  "globalData"
                let _1_slot := var_globalData_18319_slot
                let expr_18329_slot := _1_slot
                /// @src 73:994:1011  "globalData.vaults"
                let _2 := add(expr_18329_slot, 5)
                let _3_slot := _2
                let expr_18330_slot := _3_slot
                /// @src 73:1012:1019  "vaultId"
                let _4 := var_vaultId_18321
                let expr_18331 := _4
                /// @src 73:994:1020  "globalData.vaults[vaultId]"
                let _5 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Vault_$6116_storage_$_of_t_uint256(expr_18330_slot,expr_18331)
                let _6_slot := _5
                let expr_18332_slot := _6_slot
                /// @src 73:964:1020  "DataType.Vault memory vault = globalData.vaults[vaultId]"
                let var_vault_18328_mpos := convert_t_struct$_Vault_$6116_storage_to_t_struct$_Vault_$6116_memory_ptr(expr_18332_slot)
                /// @src 73:1071:1081  "globalData"
                let _7_slot := var_globalData_18319_slot
                let expr_18339_slot := _7_slot
                /// @src 73:1071:1087  "globalData.pairs"
                let _8 := add(expr_18339_slot, 3)
                let _9_slot := _8
                let expr_18340_slot := _9_slot
                /// @src 73:1088:1093  "vault"
                let _10_mpos := var_vault_18328_mpos
                let expr_18341_mpos := _10_mpos
                /// @src 73:1088:1106  "vault.openPosition"
                let _11 := add(expr_18341_mpos, 160)
                let _12_mpos := mload(_11)
                let expr_18342_mpos := _12_mpos
                /// @src 73:1088:1113  "vault.openPosition.pairId"
                let _13 := add(expr_18342_mpos, 0)
                let _14 := read_from_memoryt_uint256(_13)
                let expr_18343 := _14
                /// @src 73:1071:1114  "globalData.pairs[vault.openPosition.pairId]"
                let _15 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_18340_slot,expr_18343)
                let _16_slot := _15
                let expr_18344_slot := _16_slot
                /// @src 73:1030:1114  "DataType.PairStatus storage pairStatus = globalData.pairs[vault.openPosition.pairId]"
                let var_pairStatus_18338_slot := convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_storage_ptr(expr_18344_slot)
                /// @src 73:1125:1141  "ApplyInterestLib"
                let expr_18346_address := linkersymbol("src/libraries/ApplyInterestLib.sol:ApplyInterestLib")
                /// @src 73:1164:1174  "globalData"
                let _17_slot := var_globalData_18319_slot
                let expr_18349_slot := _17_slot
                /// @src 73:1164:1180  "globalData.pairs"
                let _18 := add(expr_18349_slot, 3)
                let _19_slot := _18
                let expr_18350_slot := _19_slot
                /// @src 73:1182:1187  "vault"
                let _20_mpos := var_vault_18328_mpos
                let expr_18351_mpos := _20_mpos
                /// @src 73:1182:1200  "vault.openPosition"
                let _21 := add(expr_18351_mpos, 160)
                let _22_mpos := mload(_21)
                let expr_18352_mpos := _22_mpos
                /// @src 73:1182:1207  "vault.openPosition.pairId"
                let _23 := add(expr_18352_mpos, 0)
                let _24 := read_from_memoryt_uint256(_23)
                let expr_18353 := _24
                fun_applyInterestForToken_33178(expr_18350_slot, expr_18353)
                /// @src 73:1219:1223  "Perp"
                let expr_18356_address := linkersymbol("src/libraries/Perp.sol:Perp")
                /// @src 73:1254:1264  "pairStatus"
                let _25_slot := var_pairStatus_18338_slot
                let expr_18359_slot := _25_slot
                /// @src 73:1266:1276  "pairStatus"
                let _26_slot := var_pairStatus_18338_slot
                let expr_18360_slot := _26_slot
                /// @src 73:1266:1292  "pairStatus.sqrtAssetStatus"
                let _27 := add(expr_18360_slot, 33)
                let _28_slot := _27
                let expr_18361_slot := _28_slot
                /// @src 73:1219:1293  "Perp.updateRebalanceInterestGrowth(pairStatus, pairStatus.sqrtAssetStatus)"
                let _29_mpos := convert_t_struct$_PairStatus_$6102_storage_ptr_to_t_struct$_PairStatus_$6102_memory_ptr(expr_18359_slot)
                let _30_slot := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(expr_18361_slot)
                fun_updateRebalanceInterestGrowth_13815(_29_mpos, _30_slot)
                /// @src 73:1354:1361  "PerpFee"
                let expr_18369_address := linkersymbol("src/libraries/PerpFee.sol:PerpFee")
                /// @src 73:1377:1387  "pairStatus"
                let _31_slot := var_pairStatus_18338_slot
                let expr_18371_slot := _31_slot
                /// @src 73:1389:1399  "globalData"
                let _32_slot := var_globalData_18319_slot
                let expr_18372_slot := _32_slot
                /// @src 73:1389:1423  "globalData.rebalanceFeeGrowthCache"
                let _33 := add(expr_18372_slot, 4)
                let _34_slot := _33
                let expr_18373_slot := _34_slot
                /// @src 73:1425:1430  "vault"
                let _35_mpos := var_vault_18328_mpos
                let expr_18374_mpos := _35_mpos
                /// @src 73:1425:1443  "vault.openPosition"
                let _36 := add(expr_18374_mpos, 160)
                let _37_mpos := mload(_36)
                let expr_18375_mpos := _37_mpos
                /// @src 73:1354:1444  "PerpFee.computeUserFee(pairStatus, globalData.rebalanceFeeGrowthCache, vault.openPosition)"
                let _38_mpos := convert_t_struct$_PairStatus_$6102_storage_ptr_to_t_struct$_PairStatus_$6102_memory_ptr(expr_18371_slot)
                let expr_18376_mpos := fun_computeUserFee_33383(_38_mpos, expr_18373_slot, expr_18375_mpos)
                /// @src 73:1304:1444  "DataType.FeeAmount memory feeAmount =..."
                let var_feeAmount_18368_mpos := expr_18376_mpos
                /// @src 73:1528:1546  "PositionCalculator"
                let expr_18384_address := linkersymbol("src/libraries/PositionCalculator.sol:PositionCalculator")
                /// @src 73:1567:1577  "pairStatus"
                let _39_slot := var_pairStatus_18338_slot
                let expr_18386_slot := _39_slot
                /// @src 73:1579:1584  "vault"
                let _40_mpos := var_vault_18328_mpos
                let expr_18387_mpos := _40_mpos
                /// @src 73:1586:1595  "feeAmount"
                let _41_mpos := var_feeAmount_18368_mpos
                let expr_18388_mpos := _41_mpos
                /// @src 73:1528:1596  "PositionCalculator.calculateMinDeposit(pairStatus, vault, feeAmount)"
                let _42_mpos := convert_t_struct$_PairStatus_$6102_storage_ptr_to_t_struct$_PairStatus_$6102_memory_ptr(expr_18386_slot)
                let expr_18389_component_1, expr_18389_component_2, expr_18389_component_3, expr_18389_component_4 := fun_calculateMinDeposit_16036(_42_mpos, expr_18387_mpos, expr_18388_mpos)
                /// @src 73:1455:1596  "(int256 minMargin, int256 vaultValue,, uint256 oraclePice) =..."
                let var_minMargin_18379 := expr_18389_component_1
                let var_vaultValue_18381 := expr_18389_component_2
                let var_oraclePice_18383 := expr_18389_component_4
                /// @src 73:1661:1668  "vaultId"
                let _43 := var_vaultId_18321
                let expr_18394 := _43
                /// @src 73:1670:1680  "vaultValue"
                let _44 := var_vaultValue_18381
                let expr_18395 := _44
                /// @src 73:1682:1691  "minMargin"
                let _45 := var_minMargin_18379
                let expr_18396 := _45
                /// @src 73:1693:1703  "oraclePice"
                let _46 := var_oraclePice_18383
                let expr_18397 := _46
                /// @src 73:1705:1714  "feeAmount"
                let _47_mpos := var_feeAmount_18368_mpos
                let expr_18398_mpos := _47_mpos
                /// @src 73:1728:1733  "vault"
                let _48_mpos := var_vault_18328_mpos
                let expr_18400_mpos := _48_mpos
                /// @src 73:1735:1744  "feeAmount"
                let _49_mpos := var_feeAmount_18368_mpos
                let expr_18401_mpos := _49_mpos
                /// @src 73:1716:1745  "getPosition(vault, feeAmount)"
                let expr_18402_mpos := fun_getPosition_18444(expr_18400_mpos, expr_18401_mpos)
                /// @src 73:1638:1746  "IPredyPool.VaultStatus(vaultId, vaultValue, minMargin, oraclePice, feeAmount, getPosition(vault, feeAmount))"
                let expr_18403_mpos := allocate_memory_struct_t_struct$_VaultStatus_$2071_storage_ptr()
                write_to_memory_t_uint256(add(expr_18403_mpos, 0), expr_18394)
                write_to_memory_t_int256(add(expr_18403_mpos, 32), expr_18395)
                write_to_memory_t_int256(add(expr_18403_mpos, 64), expr_18396)
                write_to_memory_t_uint256(add(expr_18403_mpos, 96), expr_18397)
                write_to_memory_t_struct$_FeeAmount_$6126_memory_ptr(add(expr_18403_mpos, 128), expr_18398_mpos)
                write_to_memory_t_struct$_Position_$2056_memory_ptr(add(expr_18403_mpos, 160), expr_18402_mpos)
                fun_revertVaultStatus_18474(expr_18403_mpos)

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_PairStatus_$6102_memory_ptr(value)

            }

            /// @ast-id 18316
            /// @src 73:557:849  "function getPairStatus(GlobalDataLibrary.GlobalData storage globalData, uint256 pairId) external {..."
            function fun_getPairStatus_18316(var_globalData_18288_slot, var_pairId_18290) {

                /// @src 73:664:680  "ApplyInterestLib"
                let expr_18293_address := linkersymbol("src/libraries/ApplyInterestLib.sol:ApplyInterestLib")
                /// @src 73:703:713  "globalData"
                let _50_slot := var_globalData_18288_slot
                let expr_18296_slot := _50_slot
                /// @src 73:703:719  "globalData.pairs"
                let _51 := add(expr_18296_slot, 3)
                let _52_slot := _51
                let expr_18297_slot := _52_slot
                /// @src 73:721:727  "pairId"
                let _53 := var_pairId_18290
                let expr_18298 := _53
                fun_applyInterestForToken_33178(expr_18297_slot, expr_18298)
                /// @src 73:779:789  "globalData"
                let _54_slot := var_globalData_18288_slot
                let expr_18306_slot := _54_slot
                /// @src 73:779:795  "globalData.pairs"
                let _55 := add(expr_18306_slot, 3)
                let _56_slot := _55
                let expr_18307_slot := _56_slot
                /// @src 73:796:802  "pairId"
                let _57 := var_pairId_18290
                let expr_18308 := _57
                /// @src 73:779:803  "globalData.pairs[pairId]"
                let _58 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_18307_slot,expr_18308)
                let _59_slot := _58
                let expr_18309_slot := _59_slot
                /// @src 73:739:803  "DataType.PairStatus memory pairStatus = globalData.pairs[pairId]"
                let var_pairStatus_18305_mpos := convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_memory_ptr(expr_18309_slot)
                /// @src 73:831:841  "pairStatus"
                let _60_mpos := var_pairStatus_18305_mpos
                let expr_18312_mpos := _60_mpos
                fun_revertPairStatus_18459(expr_18312_mpos)

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(value) -> converted {
                converted := value
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

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_uint256_to_t_uint256(slot, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            /// @ast-id 33178
            /// @src 56:607:1615  "function applyInterestForToken(mapping(uint256 => DataType.PairStatus) storage pairs, uint256 pairId) internal {..."
            function fun_applyInterestForToken_33178(var_pairs_33103_slot, var_pairId_33105) {

                /// @src 56:769:774  "pairs"
                let _61_slot := var_pairs_33103_slot
                let expr_33113_slot := _61_slot
                /// @src 56:775:781  "pairId"
                let _62 := var_pairId_33105
                let expr_33114 := _62
                /// @src 56:769:782  "pairs[pairId]"
                let _63 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_33113_slot,expr_33114)
                let _64_slot := _63
                let expr_33115_slot := _64_slot
                /// @src 56:728:782  "DataType.PairStatus storage pairStatus = pairs[pairId]"
                let var_pairStatus_33112_slot := convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_storage_ptr(expr_33115_slot)
                /// @src 56:793:797  "Perp"
                let expr_33117_address := linkersymbol("src/libraries/Perp.sol:Perp")
                /// @src 56:824:830  "pairId"
                let _65 := var_pairId_33105
                let expr_33120 := _65
                /// @src 56:832:842  "pairStatus"
                let _66_slot := var_pairStatus_33112_slot
                let expr_33121_slot := _66_slot
                /// @src 56:832:858  "pairStatus.sqrtAssetStatus"
                let _67 := add(expr_33121_slot, 33)
                let _68_slot := _67
                let expr_33122_slot := _68_slot
                /// @src 56:793:859  "Perp.updateFeeAndPremiumGrowth(pairId, pairStatus.sqrtAssetStatus)"
                let _69_slot := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(expr_33122_slot)
                fun_updateFeeAndPremiumGrowth_14485(expr_33120, _69_slot)
                /// @src 56:947:957  "pairStatus"
                let _70_slot := var_pairStatus_33112_slot
                let expr_33125_slot := _70_slot
                /// @src 56:947:977  "pairStatus.lastUpdateTimestamp"
                let _71 := add(expr_33125_slot, 51)
                let _72 := read_from_storage_split_offset_0_t_uint256(_71)
                let expr_33126 := _72
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
                let _73_slot := var_pairStatus_33112_slot
                let expr_33136_slot := _73_slot
                /// @src 56:1107:1127  "pairStatus.quotePool"
                let _74 := add(expr_33136_slot, 3)
                let _75_slot := _74
                let expr_33137_slot := _75_slot
                /// @src 56:1129:1139  "pairStatus"
                let _76_slot := var_pairStatus_33112_slot
                let expr_33138_slot := _76_slot
                /// @src 56:1129:1159  "pairStatus.lastUpdateTimestamp"
                let _77 := add(expr_33138_slot, 51)
                let _78 := read_from_storage_split_offset_0_t_uint256(_77)
                let expr_33139 := _78
                /// @src 56:1161:1171  "pairStatus"
                let _79_slot := var_pairStatus_33112_slot
                let expr_33140_slot := _79_slot
                /// @src 56:1161:1180  "pairStatus.feeRatio"
                let _80 := add(expr_33140_slot, 50)
                let _81 := read_from_storage_split_offset_22_t_uint8(_80)
                let expr_33141 := _81
                /// @src 56:1080:1181  "applyInterestForPoolStatus(pairStatus.quotePool, pairStatus.lastUpdateTimestamp, pairStatus.feeRatio)"
                let _82_slot := convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(expr_33137_slot)
                let expr_33142 := fun_applyInterestForPoolStatus_33255(_82_slot, expr_33139, expr_33141)
                /// @src 56:1039:1181  "uint256 interestRateStable =..."
                let var_interestRateStable_33134 := expr_33142
                /// @src 56:1264:1274  "pairStatus"
                let _83_slot := var_pairStatus_33112_slot
                let expr_33147_slot := _83_slot
                /// @src 56:1264:1283  "pairStatus.basePool"
                let _84 := add(expr_33147_slot, 17)
                let _85_slot := _84
                let expr_33148_slot := _85_slot
                /// @src 56:1285:1295  "pairStatus"
                let _86_slot := var_pairStatus_33112_slot
                let expr_33149_slot := _86_slot
                /// @src 56:1285:1315  "pairStatus.lastUpdateTimestamp"
                let _87 := add(expr_33149_slot, 51)
                let _88 := read_from_storage_split_offset_0_t_uint256(_87)
                let expr_33150 := _88
                /// @src 56:1317:1327  "pairStatus"
                let _89_slot := var_pairStatus_33112_slot
                let expr_33151_slot := _89_slot
                /// @src 56:1317:1336  "pairStatus.feeRatio"
                let _90 := add(expr_33151_slot, 50)
                let _91 := read_from_storage_split_offset_22_t_uint8(_90)
                let expr_33152 := _91
                /// @src 56:1237:1337  "applyInterestForPoolStatus(pairStatus.basePool, pairStatus.lastUpdateTimestamp, pairStatus.feeRatio)"
                let _92_slot := convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(expr_33148_slot)
                let expr_33153 := fun_applyInterestForPoolStatus_33255(_92_slot, expr_33150, expr_33152)
                /// @src 56:1192:1337  "uint256 interestRateUnderlying =..."
                let var_interestRateUnderlying_33145 := expr_33153
                /// @src 56:1421:1436  "block.timestamp"
                let expr_33159 := timestamp()
                /// @src 56:1388:1398  "pairStatus"
                let _93_slot := var_pairStatus_33112_slot
                let expr_33155_slot := _93_slot
                /// @src 56:1388:1418  "pairStatus.lastUpdateTimestamp"
                let _94 := add(expr_33155_slot, 51)
                /// @src 56:1388:1436  "pairStatus.lastUpdateTimestamp = block.timestamp"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_94, expr_33159)
                let expr_33160 := expr_33159
                /// @src 56:1451:1469  "interestRateStable"
                let _95 := var_interestRateStable_33134
                let expr_33162 := _95
                /// @src 56:1472:1473  "0"
                let expr_33163 := 0x00
                /// @src 56:1451:1473  "interestRateStable > 0"
                let expr_33164 := gt(cleanup_t_uint256(expr_33162), convert_t_rational_0_by_1_to_t_uint256(expr_33163))
                /// @src 56:1451:1503  "interestRateStable > 0 || interestRateUnderlying > 0"
                let expr_33168 := expr_33164
                if iszero(expr_33168) {
                    /// @src 56:1477:1499  "interestRateUnderlying"
                    let _96 := var_interestRateUnderlying_33145
                    let expr_33165 := _96
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
                    let _97_slot := var_pairStatus_33112_slot
                    let expr_33170_slot := _97_slot
                    /// @src 56:1555:1573  "interestRateStable"
                    let _98 := var_interestRateStable_33134
                    let expr_33171 := _98
                    /// @src 56:1575:1597  "interestRateUnderlying"
                    let _99 := var_interestRateUnderlying_33145
                    let expr_33172 := _99
                    /// @src 56:1519:1598  "emitInterestGrowthEvent(pairStatus, interestRateStable, interestRateUnderlying)"
                    let _100_mpos := convert_t_struct$_PairStatus_$6102_storage_ptr_to_t_struct$_PairStatus_$6102_memory_ptr(expr_33170_slot)
                    fun_emitInterestGrowthEvent_33279(_100_mpos, expr_33171, expr_33172)
                    /// @src 56:1447:1609  "if (interestRateStable > 0 || interestRateUnderlying > 0) {..."
                }

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(value) -> converted {
                converted := value
            }

            function cleanup_t_rational_1000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000000000000000000_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_1000000000000000000_by_1(value)))
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
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

            /// @ast-id 13815
            /// @src 61:4568:5393  "function updateRebalanceInterestGrowth(..."
            function fun_updateRebalanceInterestGrowth_13815(var__pairStatus_13762_mpos, var__sqrtAssetStatus_13765_slot) {

                /// @src 61:4833:4849  "_sqrtAssetStatus"
                let _101_slot := var__sqrtAssetStatus_13765_slot
                let expr_13768_slot := _101_slot
                /// @src 61:4833:4880  "_sqrtAssetStatus.lastRebalanceTotalSquartAmount"
                let _102 := add(expr_13768_slot, 4)
                let _103 := read_from_storage_split_offset_0_t_uint256(_102)
                let expr_13769 := _103
                /// @src 61:4883:4884  "0"
                let expr_13770 := 0x00
                /// @src 61:4833:4884  "_sqrtAssetStatus.lastRebalanceTotalSquartAmount > 0"
                let expr_13771 := gt(cleanup_t_uint256(expr_13769), convert_t_rational_0_by_1_to_t_uint256(expr_13770))
                /// @src 61:4829:5387  "if (_sqrtAssetStatus.lastRebalanceTotalSquartAmount > 0) {..."
                if expr_13771 {
                    /// @src 61:4948:4959  "_pairStatus"
                    let _104_mpos := var__pairStatus_13762_mpos
                    let expr_13775_mpos := _104_mpos
                    /// @src 61:4948:4968  "_pairStatus.basePool"
                    let _105 := add(expr_13775_mpos, 128)
                    let _106_mpos := mload(_105)
                    let expr_13776_mpos := _106_mpos
                    /// @src 61:4948:4980  "_pairStatus.basePool.tokenStatus"
                    let _107 := add(expr_13776_mpos, 64)
                    let _108_mpos := mload(_107)
                    let expr_13777_mpos := _108_mpos
                    /// @src 61:4948:4994  "_pairStatus.basePool.tokenStatus.settleUserFee"
                    let expr_13778_self_mpos := expr_13777_mpos
                    /// @src 61:5012:5028  "_sqrtAssetStatus"
                    let _109_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13779_slot := _109_slot
                    /// @src 61:5012:5050  "_sqrtAssetStatus.rebalancePositionBase"
                    let _110 := add(expr_13779_slot, 11)
                    let _111_slot := _110
                    let expr_13780_slot := _111_slot
                    /// @src 61:4948:5064  "_pairStatus.basePool.tokenStatus.settleUserFee(..."
                    let _112_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_13780_slot)
                    let expr_13781 := fun_settleUserFee_31406(expr_13778_self_mpos, _112_slot)
                    /// @src 61:5067:5071  "1e18"
                    let expr_13782 := 0x0de0b6b3a7640000
                    /// @src 61:4948:5071  "_pairStatus.basePool.tokenStatus.settleUserFee(..."
                    let expr_13783 := checked_mul_t_int256(expr_13781, convert_t_rational_1000000000000000000_by_1_to_t_int256(expr_13782))

                    /// @src 61:5081:5097  "_sqrtAssetStatus"
                    let _113_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13786_slot := _113_slot
                    /// @src 61:5081:5128  "_sqrtAssetStatus.lastRebalanceTotalSquartAmount"
                    let _114 := add(expr_13786_slot, 4)
                    let _115 := read_from_storage_split_offset_0_t_uint256(_114)
                    let expr_13787 := _115
                    /// @src 61:5074:5129  "int256(_sqrtAssetStatus.lastRebalanceTotalSquartAmount)"
                    let expr_13788 := convert_t_uint256_to_t_int256(expr_13787)
                    /// @src 61:4948:5129  "_pairStatus.basePool.tokenStatus.settleUserFee(..."
                    let expr_13789 := checked_div_t_int256(expr_13783, expr_13788)

                    /// @src 61:4900:4916  "_sqrtAssetStatus"
                    let _116_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13772_slot := _116_slot
                    /// @src 61:4900:4944  "_sqrtAssetStatus.rebalanceInterestGrowthBase"
                    let _117 := add(expr_13772_slot, 15)
                    /// @src 61:4900:5129  "_sqrtAssetStatus.rebalanceInterestGrowthBase += _pairStatus.basePool.tokenStatus.settleUserFee(..."
                    let _118 := read_from_storage_split_offset_0_t_int256(_117)
                    let expr_13790 := checked_add_t_int256(_118, expr_13789)

                    update_storage_value_offset_0_t_int256_to_t_int256(_117, expr_13790)
                    /// @src 61:5193:5204  "_pairStatus"
                    let _119_mpos := var__pairStatus_13762_mpos
                    let expr_13795_mpos := _119_mpos
                    /// @src 61:5193:5214  "_pairStatus.quotePool"
                    let _120 := add(expr_13795_mpos, 96)
                    let _121_mpos := mload(_120)
                    let expr_13796_mpos := _121_mpos
                    /// @src 61:5193:5226  "_pairStatus.quotePool.tokenStatus"
                    let _122 := add(expr_13796_mpos, 64)
                    let _123_mpos := mload(_122)
                    let expr_13797_mpos := _123_mpos
                    /// @src 61:5193:5240  "_pairStatus.quotePool.tokenStatus.settleUserFee"
                    let expr_13798_self_mpos := expr_13797_mpos
                    /// @src 61:5258:5274  "_sqrtAssetStatus"
                    let _124_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13799_slot := _124_slot
                    /// @src 61:5258:5297  "_sqrtAssetStatus.rebalancePositionQuote"
                    let _125 := add(expr_13799_slot, 13)
                    let _126_slot := _125
                    let expr_13800_slot := _126_slot
                    /// @src 61:5193:5311  "_pairStatus.quotePool.tokenStatus.settleUserFee(..."
                    let _127_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_13800_slot)
                    let expr_13801 := fun_settleUserFee_31406(expr_13798_self_mpos, _127_slot)
                    /// @src 61:5314:5318  "1e18"
                    let expr_13802 := 0x0de0b6b3a7640000
                    /// @src 61:5193:5318  "_pairStatus.quotePool.tokenStatus.settleUserFee(..."
                    let expr_13803 := checked_mul_t_int256(expr_13801, convert_t_rational_1000000000000000000_by_1_to_t_int256(expr_13802))

                    /// @src 61:5328:5344  "_sqrtAssetStatus"
                    let _128_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13806_slot := _128_slot
                    /// @src 61:5328:5375  "_sqrtAssetStatus.lastRebalanceTotalSquartAmount"
                    let _129 := add(expr_13806_slot, 4)
                    let _130 := read_from_storage_split_offset_0_t_uint256(_129)
                    let expr_13807 := _130
                    /// @src 61:5321:5376  "int256(_sqrtAssetStatus.lastRebalanceTotalSquartAmount)"
                    let expr_13808 := convert_t_uint256_to_t_int256(expr_13807)
                    /// @src 61:5193:5376  "_pairStatus.quotePool.tokenStatus.settleUserFee(..."
                    let expr_13809 := checked_div_t_int256(expr_13803, expr_13808)

                    /// @src 61:5144:5160  "_sqrtAssetStatus"
                    let _131_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13792_slot := _131_slot
                    /// @src 61:5144:5189  "_sqrtAssetStatus.rebalanceInterestGrowthQuote"
                    let _132 := add(expr_13792_slot, 16)
                    /// @src 61:5144:5376  "_sqrtAssetStatus.rebalanceInterestGrowthQuote += _pairStatus.quotePool.tokenStatus.settleUserFee(..."
                    let _133 := read_from_storage_split_offset_0_t_int256(_132)
                    let expr_13810 := checked_add_t_int256(_133, expr_13809)

                    update_storage_value_offset_0_t_int256_to_t_int256(_132, expr_13810)
                    /// @src 61:4829:5387  "if (_sqrtAssetStatus.lastRebalanceTotalSquartAmount > 0) {..."
                }

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function allocate_memory_struct_t_struct$_FeeAmount_$6126_memory_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function zero_value_for_t_int256() -> ret {
                ret := 0
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

            function allocate_memory_struct_t_struct$_FeeAmount_$6126_storage_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            /// @ast-id 33383
            /// @src 62:422:1555  "function computeUserFee(..."
            function fun_computeUserFee_33383(var_assetStatus_33301_mpos, var_rebalanceFeeGrowthCache_33306_slot, var_userStatus_33309_mpos) -> var__33313_mpos {
                /// @src 62:660:685  "DataType.FeeAmount memory"
                let zero_t_struct$_FeeAmount_$6126_memory_ptr_134_mpos := zero_value_for_split_t_struct$_FeeAmount_$6126_memory_ptr()
                var__33313_mpos := zero_t_struct$_FeeAmount_$6126_memory_ptr_134_mpos

                /// @src 62:726:737  "assetStatus"
                let _135_mpos := var_assetStatus_33301_mpos
                let expr_33317_mpos := _135_mpos
                /// @src 62:726:746  "assetStatus.basePool"
                let _136 := add(expr_33317_mpos, 128)
                let _137_mpos := mload(_136)
                let expr_33318_mpos := _137_mpos
                /// @src 62:726:758  "assetStatus.basePool.tokenStatus"
                let _138 := add(expr_33318_mpos, 64)
                let _139_mpos := mload(_138)
                let expr_33319_mpos := _139_mpos
                /// @src 62:726:773  "assetStatus.basePool.tokenStatus.computeUserFee"
                let expr_33320_self_mpos := expr_33319_mpos
                /// @src 62:774:784  "userStatus"
                let _140_mpos := var_userStatus_33309_mpos
                let expr_33321_mpos := _140_mpos
                /// @src 62:774:797  "userStatus.basePosition"
                let _141 := add(expr_33321_mpos, 192)
                let _142_mpos := mload(_141)
                let expr_33322_mpos := _142_mpos
                /// @src 62:726:798  "assetStatus.basePool.tokenStatus.computeUserFee(userStatus.basePosition)"
                let expr_33323 := fun_computeUserFee_31366(expr_33320_self_mpos, expr_33322_mpos)
                /// @src 62:697:798  "int256 FeeAmountUnderlying = assetStatus.basePool.tokenStatus.computeUserFee(userStatus.basePosition)"
                let var_FeeAmountUnderlying_33316 := expr_33323
                /// @src 62:833:844  "assetStatus"
                let _143_mpos := var_assetStatus_33301_mpos
                let expr_33327_mpos := _143_mpos
                /// @src 62:833:854  "assetStatus.quotePool"
                let _144 := add(expr_33327_mpos, 96)
                let _145_mpos := mload(_144)
                let expr_33328_mpos := _145_mpos
                /// @src 62:833:866  "assetStatus.quotePool.tokenStatus"
                let _146 := add(expr_33328_mpos, 64)
                let _147_mpos := mload(_146)
                let expr_33329_mpos := _147_mpos
                /// @src 62:833:881  "assetStatus.quotePool.tokenStatus.computeUserFee"
                let expr_33330_self_mpos := expr_33329_mpos
                /// @src 62:882:892  "userStatus"
                let _148_mpos := var_userStatus_33309_mpos
                let expr_33331_mpos := _148_mpos
                /// @src 62:882:907  "userStatus.stablePosition"
                let _149 := add(expr_33331_mpos, 224)
                let _150_mpos := mload(_149)
                let expr_33332_mpos := _150_mpos
                /// @src 62:833:908  "assetStatus.quotePool.tokenStatus.computeUserFee(userStatus.stablePosition)"
                let expr_33333 := fun_computeUserFee_31366(expr_33330_self_mpos, expr_33332_mpos)
                /// @src 62:808:908  "int256 FeeAmountStable = assetStatus.quotePool.tokenStatus.computeUserFee(userStatus.stablePosition)"
                let var_FeeAmountStable_33326 := expr_33333
                /// @src 62:1039:1050  "assetStatus"
                let _151_mpos := var_assetStatus_33301_mpos
                let expr_33340_mpos := _151_mpos
                /// @src 62:1039:1053  "assetStatus.id"
                let _152 := add(expr_33340_mpos, 0)
                let _153 := read_from_memoryt_uint256(_152)
                let expr_33341 := _153
                /// @src 62:1055:1066  "assetStatus"
                let _154_mpos := var_assetStatus_33301_mpos
                let expr_33342_mpos := _154_mpos
                /// @src 62:1055:1082  "assetStatus.sqrtAssetStatus"
                let _155 := add(expr_33342_mpos, 192)
                let _156_mpos := mload(_155)
                let expr_33343_mpos := _156_mpos
                /// @src 62:1084:1107  "rebalanceFeeGrowthCache"
                let _157_slot := var_rebalanceFeeGrowthCache_33306_slot
                let expr_33344_slot := _157_slot
                /// @src 62:1109:1119  "userStatus"
                let _158_mpos := var_userStatus_33309_mpos
                let expr_33345_mpos := _158_mpos
                /// @src 62:997:1133  "computeRebalanceInterest(..."
                let expr_33346_component_1, expr_33346_component_2 := fun_computeRebalanceInterest_33730(expr_33341, expr_33343_mpos, expr_33344_slot, expr_33345_mpos)
                /// @src 62:933:1133  "(int256 rebalanceInterestBase, int256 rebalanceInterestQuote) = computeRebalanceInterest(..."
                let var_rebalanceInterestBase_33336 := expr_33346_component_1
                let var_rebalanceInterestQuote_33338 := expr_33346_component_2
                /// @src 62:1170:1191  "rebalanceInterestBase"
                let _159 := var_rebalanceInterestBase_33336
                let expr_33349 := _159
                /// @src 62:1147:1191  "FeeAmountUnderlying += rebalanceInterestBase"
                let _160 := var_FeeAmountUnderlying_33316
                let expr_33350 := checked_add_t_int256(_160, expr_33349)

                var_FeeAmountUnderlying_33316 := expr_33350
                /// @src 62:1224:1246  "rebalanceInterestQuote"
                let _161 := var_rebalanceInterestQuote_33338
                let expr_33353 := _161
                /// @src 62:1205:1246  "FeeAmountStable += rebalanceInterestQuote"
                let _162 := var_FeeAmountStable_33326
                let expr_33354 := checked_add_t_int256(_162, expr_33353)

                var_FeeAmountStable_33326 := expr_33354
                /// @src 62:1339:1350  "assetStatus"
                let _163_mpos := var_assetStatus_33301_mpos
                let expr_33362_mpos := _163_mpos
                /// @src 62:1352:1362  "userStatus"
                let _164_mpos := var_userStatus_33309_mpos
                let expr_33363_mpos := _164_mpos
                /// @src 62:1352:1371  "userStatus.sqrtPerp"
                let _165 := add(expr_33363_mpos, 160)
                let _166_mpos := mload(_165)
                let expr_33364_mpos := _166_mpos
                /// @src 62:1324:1372  "computePremium(assetStatus, userStatus.sqrtPerp)"
                let expr_33365_component_1, expr_33365_component_2 := fun_computePremium_33578(expr_33362_mpos, expr_33364_mpos)
                /// @src 62:1281:1372  "(int256 feeUnderlying, int256 feeStable) = computePremium(assetStatus, userStatus.sqrtPerp)"
                let var_feeUnderlying_33358 := expr_33365_component_1
                let var_feeStable_33360 := expr_33365_component_2
                /// @src 62:1409:1422  "feeUnderlying"
                let _167 := var_feeUnderlying_33358
                let expr_33368 := _167
                /// @src 62:1386:1422  "FeeAmountUnderlying += feeUnderlying"
                let _168 := var_FeeAmountUnderlying_33316
                let expr_33369 := checked_add_t_int256(_168, expr_33368)

                var_FeeAmountUnderlying_33316 := expr_33369
                /// @src 62:1455:1464  "feeStable"
                let _169 := var_feeStable_33360
                let expr_33372 := _169
                /// @src 62:1436:1464  "FeeAmountStable += feeStable"
                let _170 := var_FeeAmountStable_33326
                let expr_33373 := checked_add_t_int256(_170, expr_33372)

                var_FeeAmountStable_33326 := expr_33373
                /// @src 62:1492:1500  "DataType"
                let expr_33376_address := linkersymbol("src/libraries/DataType.sol:DataType")
                /// @src 62:1511:1530  "FeeAmountUnderlying"
                let _171 := var_FeeAmountUnderlying_33316
                let expr_33378 := _171
                /// @src 62:1532:1547  "FeeAmountStable"
                let _172 := var_FeeAmountStable_33326
                let expr_33379 := _172
                /// @src 62:1492:1548  "DataType.FeeAmount(FeeAmountUnderlying, FeeAmountStable)"
                let expr_33380_mpos := allocate_memory_struct_t_struct$_FeeAmount_$6126_storage_ptr()
                write_to_memory_t_int256(add(expr_33380_mpos, 0), expr_33378)
                write_to_memory_t_int256(add(expr_33380_mpos, 32), expr_33379)
                /// @src 62:1485:1548  "return DataType.FeeAmount(FeeAmountUnderlying, FeeAmountStable)"
                var__33313_mpos := expr_33380_mpos
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function zero_value_for_split_t_int256() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function read_from_memoryt_int256(ptr) -> returnValue {

                let value := cleanup_t_int256(mload(ptr))

                returnValue :=

                value

            }

            function read_from_memoryt_uint128(ptr) -> returnValue {

                let value := cleanup_t_uint128(mload(ptr))

                returnValue :=

                value

            }

            function convert_t_uint128_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint128(value)))
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

            function cleanup_t_rational_1000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000000_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_1000000_by_1(value)))
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

            /// @src 57:281:329  "int256 internal constant MIN_MARGIN_AMOUNT = 1e6"
            function constant_MIN_MARGIN_AMOUNT_30282() -> ret {
                /// @src 57:326:329  "1e6"
                let expr_30281 := 0x0f4240
                let _205 := convert_t_rational_1000000_by_1_to_t_int256(expr_30281)

                ret := _205
            }

            /// @ast-id 16036
            /// @src 63:2215:3113  "function calculateMinDeposit(..."
            function fun_calculateMinDeposit_16036(var_pairStatus_15950_mpos, var_vault_15953_mpos, var_feeAmount_15956_mpos) -> var_minMargin_15959, var_vaultValue_15961, var_hasPosition_15963, var_twap_15965 {
                /// @src 63:2402:2418  "int256 minMargin"
                let zero_t_int256_173 := zero_value_for_split_t_int256()
                var_minMargin_15959 := zero_t_int256_173
                /// @src 63:2420:2437  "int256 vaultValue"
                let zero_t_int256_174 := zero_value_for_split_t_int256()
                var_vaultValue_15961 := zero_t_int256_174
                /// @src 63:2439:2455  "bool hasPosition"
                let zero_t_bool_175 := zero_value_for_split_t_bool()
                var_hasPosition_15963 := zero_t_bool_175
                /// @src 63:2457:2469  "uint256 twap"
                let zero_t_uint256_176 := zero_value_for_split_t_uint256()
                var_twap_15965 := zero_t_uint256_176

                /// @src 63:2481:2496  "int256 minValue"
                let var_minValue_15968
                let zero_t_int256_177 := zero_value_for_split_t_int256()
                var_minValue_15968 := zero_t_int256_177
                /// @src 63:2506:2523  "uint256 debtValue"
                let var_debtValue_15971
                let zero_t_uint256_178 := zero_value_for_split_t_uint256()
                var_debtValue_15971 := zero_t_uint256_178
                /// @src 63:2559:2569  "pairStatus"
                let _179_mpos := var_pairStatus_15950_mpos
                let expr_15975_mpos := _179_mpos
                /// @src 63:2541:2570  "getSqrtIndexPrice(pairStatus)"
                let expr_15976 := fun_getSqrtIndexPrice_16180(expr_15975_mpos)
                /// @src 63:2534:2570  "twap = getSqrtIndexPrice(pairStatus)"
                var_twap_15965 := expr_15976
                let expr_15977 := expr_15976
                /// @src 63:2661:2666  "vault"
                let _180_mpos := var_vault_15953_mpos
                let expr_15985_mpos := _180_mpos
                /// @src 63:2661:2673  "vault.margin"
                let _181 := add(expr_15985_mpos, 128)
                let _182 := read_from_memoryt_int256(_181)
                let expr_15986 := _182
                /// @src 63:2700:2705  "vault"
                let _183_mpos := var_vault_15953_mpos
                let expr_15988_mpos := _183_mpos
                /// @src 63:2700:2718  "vault.openPosition"
                let _184 := add(expr_15988_mpos, 160)
                let _185_mpos := mload(_184)
                let expr_15989_mpos := _185_mpos
                /// @src 63:2720:2729  "feeAmount"
                let _186_mpos := var_feeAmount_15956_mpos
                let expr_15990_mpos := _186_mpos
                /// @src 63:2675:2730  "getPositionWithFeeAmount(vault.openPosition, feeAmount)"
                let expr_15991_mpos := fun_getPositionWithFeeAmount_16215(expr_15989_mpos, expr_15990_mpos)
                /// @src 63:2732:2736  "twap"
                let _187 := var_twap_15965
                let expr_15992 := _187
                /// @src 63:2738:2748  "pairStatus"
                let _188_mpos := var_pairStatus_15950_mpos
                let expr_15993_mpos := _188_mpos
                /// @src 63:2738:2759  "pairStatus.riskParams"
                let _189 := add(expr_15993_mpos, 160)
                let _190_mpos := mload(_189)
                let expr_15994_mpos := _190_mpos
                /// @src 63:2738:2769  "pairStatus.riskParams.riskRatio"
                let _191 := add(expr_15994_mpos, 0)
                let _192 := read_from_memoryt_uint128(_191)
                let expr_15995 := _192
                /// @src 63:2630:2779  "calculateMinValue(..."
                let _193 := convert_t_uint128_to_t_uint256(expr_15995)
                let expr_15996_component_1, expr_15996_component_2, expr_15996_component_3, expr_15996_component_4 := fun_calculateMinValue_16115(expr_15986, expr_15991_mpos, expr_15992, _193)
                /// @src 63:2581:2779  "(minValue, vaultValue, debtValue, hasPosition) = calculateMinValue(..."
                var_hasPosition_15963 := expr_15996_component_4
                var_debtValue_15971 := expr_15996_component_3
                var_vaultValue_15961 := expr_15996_component_2
                var_minValue_15968 := expr_15996_component_1
                /// @src 63:2848:2858  "pairStatus"
                let _194_mpos := var_pairStatus_15950_mpos
                let expr_16002_mpos := _194_mpos
                /// @src 63:2848:2869  "pairStatus.riskParams"
                let _195 := add(expr_16002_mpos, 160)
                let _196_mpos := mload(_195)
                let expr_16003_mpos := _196_mpos
                /// @src 63:2848:2883  "pairStatus.riskParams.debtRiskRatio"
                let _197 := add(expr_16003_mpos, 32)
                let _198 := read_from_memoryt_uint128(_197)
                let expr_16004 := _198
                /// @src 63:2812:2884  "calculateRequiredCollateralWithDebt(pairStatus.riskParams.debtRiskRatio)"
                let expr_16005 := fun_calculateRequiredCollateralWithDebt_16055(expr_16004)
                /// @src 63:2887:2896  "debtValue"
                let _199 := var_debtValue_15971
                let expr_16006 := _199
                /// @src 63:2812:2896  "calculateRequiredCollateralWithDebt(pairStatus.riskParams.debtRiskRatio) * debtValue"
                let expr_16007 := checked_mul_t_uint256(expr_16005, expr_16006)

                /// @src 63:2811:2897  "(calculateRequiredCollateralWithDebt(pairStatus.riskParams.debtRiskRatio) * debtValue)"
                let expr_16008 := expr_16007
                /// @src 63:2811:2906  "(calculateRequiredCollateralWithDebt(pairStatus.riskParams.debtRiskRatio) * debtValue).toInt256"
                let expr_16009_self := expr_16008
                /// @src 63:2811:2908  "(calculateRequiredCollateralWithDebt(pairStatus.riskParams.debtRiskRatio) * debtValue).toInt256()"
                let expr_16010 := fun_toInt256_28969(expr_16009_self)
                /// @src 63:2911:2914  "1e6"
                let expr_16011 := 0x0f4240
                /// @src 63:2811:2914  "(calculateRequiredCollateralWithDebt(pairStatus.riskParams.debtRiskRatio) * debtValue).toInt256() / 1e6"
                let expr_16012 := checked_div_t_int256(expr_16010, convert_t_rational_1000000_by_1_to_t_int256(expr_16011))

                /// @src 63:2790:2914  "int256 minMinValue = (calculateRequiredCollateralWithDebt(pairStatus.riskParams.debtRiskRatio) * debtValue).toInt256() / 1e6"
                let var_minMinValue_16000 := expr_16012
                /// @src 63:2937:2947  "vaultValue"
                let _200 := var_vaultValue_15961
                let expr_16015 := _200
                /// @src 63:2950:2958  "minValue"
                let _201 := var_minValue_15968
                let expr_16016 := _201
                /// @src 63:2937:2958  "vaultValue - minValue"
                let expr_16017 := checked_sub_t_int256(expr_16015, expr_16016)

                /// @src 63:2961:2972  "minMinValue"
                let _202 := var_minMinValue_16000
                let expr_16018 := _202
                /// @src 63:2937:2972  "vaultValue - minValue + minMinValue"
                let expr_16019 := checked_add_t_int256(expr_16017, expr_16018)

                /// @src 63:2925:2972  "minMargin = vaultValue - minValue + minMinValue"
                var_minMargin_15959 := expr_16019
                let expr_16020 := expr_16019
                /// @src 63:2987:2998  "hasPosition"
                let _203 := var_hasPosition_15963
                let expr_16022 := _203
                /// @src 63:2987:3041  "hasPosition && minMargin < Constants.MIN_MARGIN_AMOUNT"
                let expr_16027 := expr_16022
                if expr_16027 {
                    /// @src 63:3002:3011  "minMargin"
                    let _204 := var_minMargin_15959
                    let expr_16023 := _204
                    /// @src 63:3014:3023  "Constants"
                    let expr_16024_address := linkersymbol("src/libraries/Constants.sol:Constants")
                    /// @src 63:3014:3041  "Constants.MIN_MARGIN_AMOUNT"
                    let expr_16025 := constant_MIN_MARGIN_AMOUNT_30282()
                    /// @src 63:3002:3041  "minMargin < Constants.MIN_MARGIN_AMOUNT"
                    let expr_16026 := slt(cleanup_t_int256(expr_16023), cleanup_t_int256(expr_16025))
                    /// @src 63:2987:3041  "hasPosition && minMargin < Constants.MIN_MARGIN_AMOUNT"
                    expr_16027 := expr_16026
                }
                /// @src 63:2983:3107  "if (hasPosition && minMargin < Constants.MIN_MARGIN_AMOUNT) {..."
                if expr_16027 {
                    /// @src 63:3069:3078  "Constants"
                    let expr_16029_address := linkersymbol("src/libraries/Constants.sol:Constants")
                    /// @src 63:3069:3096  "Constants.MIN_MARGIN_AMOUNT"
                    let expr_16030 := constant_MIN_MARGIN_AMOUNT_30282()
                    /// @src 63:3057:3096  "minMargin = Constants.MIN_MARGIN_AMOUNT"
                    var_minMargin_15959 := expr_16030
                    let expr_16031 := expr_16030
                    /// @src 63:2983:3107  "if (hasPosition && minMargin < Constants.MIN_MARGIN_AMOUNT) {..."
                }

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function allocate_memory_struct_t_struct$_Position_$2056_memory_ptr() -> memPtr {
                memPtr := allocate_memory(128)
            }

            function allocate_and_zero_memory_struct_t_struct$_Position_$2056_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_Position_$2056_memory_ptr()
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

            function zero_value_for_split_t_struct$_Position_$2056_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_Position_$2056_memory_ptr()
            }

            function allocate_memory_struct_t_struct$_Position_$2056_storage_ptr() -> memPtr {
                memPtr := allocate_memory(128)
            }

            /// @ast-id 18444
            /// @src 73:1769:2258  "function getPosition(DataType.Vault memory vault, DataType.FeeAmount memory feeAmount)..."
            function fun_getPosition_18444(var_vault_18410_mpos, var_feeAmount_18413_mpos) -> var__18417_mpos {
                /// @src 73:1903:1929  "IPredyPool.Position memory"
                let zero_t_struct$_Position_$2056_memory_ptr_206_mpos := zero_value_for_split_t_struct$_Position_$2056_memory_ptr()
                var__18417_mpos := zero_t_struct$_Position_$2056_memory_ptr_206_mpos

                /// @src 73:2015:2033  "PositionCalculator"
                let expr_18424_address := linkersymbol("src/libraries/PositionCalculator.sol:PositionCalculator")
                /// @src 73:2059:2064  "vault"
                let _207_mpos := var_vault_18410_mpos
                let expr_18426_mpos := _207_mpos
                /// @src 73:2059:2077  "vault.openPosition"
                let _208 := add(expr_18426_mpos, 160)
                let _209_mpos := mload(_208)
                let expr_18427_mpos := _209_mpos
                /// @src 73:2079:2088  "feeAmount"
                let _210_mpos := var_feeAmount_18413_mpos
                let expr_18428_mpos := _210_mpos
                /// @src 73:2015:2089  "PositionCalculator.getPositionWithFeeAmount(vault.openPosition, feeAmount)"
                let expr_18429_mpos := fun_getPositionWithFeeAmount_16215(expr_18427_mpos, expr_18428_mpos)
                /// @src 73:1945:2089  "PositionCalculator.PositionParams memory positionParams =..."
                let var_positionParams_18423_mpos := expr_18429_mpos
                /// @src 73:2140:2145  "vault"
                let _211_mpos := var_vault_18410_mpos
                let expr_18433_mpos := _211_mpos
                /// @src 73:2140:2152  "vault.margin"
                let _212 := add(expr_18433_mpos, 128)
                let _213 := read_from_memoryt_int256(_212)
                let expr_18434 := _213
                /// @src 73:2154:2168  "positionParams"
                let _214_mpos := var_positionParams_18423_mpos
                let expr_18435_mpos := _214_mpos
                /// @src 73:2154:2181  "positionParams.amountStable"
                let _215 := add(expr_18435_mpos, 0)
                let _216 := read_from_memoryt_int256(_215)
                let expr_18436 := _216
                /// @src 73:2183:2197  "positionParams"
                let _217_mpos := var_positionParams_18423_mpos
                let expr_18437_mpos := _217_mpos
                /// @src 73:2183:2208  "positionParams.amountSqrt"
                let _218 := add(expr_18437_mpos, 32)
                let _219 := read_from_memoryt_int256(_218)
                let expr_18438 := _219
                /// @src 73:2210:2224  "positionParams"
                let _220_mpos := var_positionParams_18423_mpos
                let expr_18439_mpos := _220_mpos
                /// @src 73:2210:2241  "positionParams.amountUnderlying"
                let _221 := add(expr_18439_mpos, 64)
                let _222 := read_from_memoryt_int256(_221)
                let expr_18440 := _222
                /// @src 73:2107:2251  "IPredyPool.Position(..."
                let expr_18441_mpos := allocate_memory_struct_t_struct$_Position_$2056_storage_ptr()
                write_to_memory_t_int256(add(expr_18441_mpos, 0), expr_18434)
                write_to_memory_t_int256(add(expr_18441_mpos, 32), expr_18436)
                write_to_memory_t_int256(add(expr_18441_mpos, 64), expr_18438)
                write_to_memory_t_int256(add(expr_18441_mpos, 96), expr_18440)
                /// @src 73:2100:2251  "return IPredyPool.Position(..."
                var__18417_mpos := expr_18441_mpos
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function abi_encode_t_uint256_to_t_uint256(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_t_int256_to_t_int256(value, pos) {
                mstore(pos, cleanup_t_int256(value))
            }

            // struct DataType.FeeAmount -> struct DataType.FeeAmount
            function abi_encode_t_struct$_FeeAmount_$6126_memory_ptr_to_t_struct$_FeeAmount_$6126_memory_ptr(value, pos)  {
                let tail := add(pos, 0x40)

                {
                    // feeAmountBase

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x00))
                }

                {
                    // feeAmountQuote

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x20))
                }

            }

            // struct IPredyPool.Position -> struct IPredyPool.Position
            function abi_encode_t_struct$_Position_$2056_memory_ptr_to_t_struct$_Position_$2056_memory_ptr(value, pos)  {
                let tail := add(pos, 0x80)

                {
                    // margin

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x00))
                }

                {
                    // amountQuote

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x20))
                }

                {
                    // amountSqrt

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x40))
                }

                {
                    // amountBase

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x60))
                }

            }

            // struct IPredyPool.VaultStatus -> struct IPredyPool.VaultStatus
            function abi_encode_t_struct$_VaultStatus_$2071_memory_ptr_to_t_struct$_VaultStatus_$2071_memory_ptr_fromStack(value, pos)  {
                let tail := add(pos, 0x0140)

                {
                    // id

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x00))
                }

                {
                    // vaultValue

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x20))
                }

                {
                    // minMargin

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x40))
                }

                {
                    // oraclePrice

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x60))
                }

                {
                    // feeAmount

                    let memberValue0 := mload(add(value, 0x80))
                    abi_encode_t_struct$_FeeAmount_$6126_memory_ptr_to_t_struct$_FeeAmount_$6126_memory_ptr(memberValue0, add(pos, 0x80))
                }

                {
                    // position

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_struct$_Position_$2056_memory_ptr_to_t_struct$_Position_$2056_memory_ptr(memberValue0, add(pos, 0xc0))
                }

            }

            function abi_encode_tuple_t_struct$_VaultStatus_$2071_memory_ptr__to_t_struct$_VaultStatus_$2071_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 320)

                abi_encode_t_struct$_VaultStatus_$2071_memory_ptr_to_t_struct$_VaultStatus_$2071_memory_ptr_fromStack(value0,  add(headStart, 0))

            }

            /// @ast-id 18474
            /// @src 73:2485:2706  "function revertVaultStatus(IPredyPool.VaultStatus memory vaultStatus) internal pure {..."
            function fun_revertVaultStatus_18474(var_vaultStatus_18462_mpos) {

                /// @src 73:2610:2621  "vaultStatus"
                let _223_mpos := var_vaultStatus_18462_mpos
                let expr_18469_mpos := _223_mpos
                /// @src 73:2599:2622  "abi.encode(vaultStatus)"

                let expr_18470_mpos := allocate_unbounded()
                let _224 := add(expr_18470_mpos, 0x20)

                let _225 := abi_encode_tuple_t_struct$_VaultStatus_$2071_memory_ptr__to_t_struct$_VaultStatus_$2071_memory_ptr__fromStack(_224, expr_18469_mpos)
                mstore(expr_18470_mpos, sub(_225, add(expr_18470_mpos, 0x20)))
                finalize_allocation(expr_18470_mpos, sub(_225, expr_18470_mpos))
                /// @src 73:2579:2622  "bytes memory data = abi.encode(vaultStatus)"
                let var_data_18466_mpos := expr_18470_mpos
                /// @src 73:2633:2700  "assembly {..."
                {
                    revert(add(32, var_data_18466_mpos), mload(var_data_18466_mpos))
                }

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function abi_encode_t_address_to_t_address(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            // struct ScaledAsset.AssetStatus -> struct ScaledAsset.AssetStatus
            function abi_encode_t_struct$_AssetStatus_$30934_memory_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(value, pos)  {
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

            // struct InterestRateModel.IRMParams -> struct InterestRateModel.IRMParams
            function abi_encode_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_memory_ptr(value, pos)  {
                let tail := add(pos, 0x80)

                {
                    // baseRate

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x00))
                }

                {
                    // kinkRate

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x20))
                }

                {
                    // slope1

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x40))
                }

                {
                    // slope2

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x60))
                }

            }

            // struct Perp.AssetPoolStatus -> struct Perp.AssetPoolStatus
            function abi_encode_t_struct$_AssetPoolStatus_$13566_memory_ptr_to_t_struct$_AssetPoolStatus_$13566_memory_ptr(value, pos)  {
                let tail := add(pos, 0x01c0)

                {
                    // token

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_address_to_t_address(memberValue0, add(pos, 0x00))
                }

                {
                    // supplyTokenAddress

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_address_to_t_address(memberValue0, add(pos, 0x20))
                }

                {
                    // tokenStatus

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_struct$_AssetStatus_$30934_memory_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(memberValue0, add(pos, 0x40))
                }

                {
                    // irmParams

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_memory_ptr(memberValue0, add(pos, 0x0100))
                }

                {
                    // accumulatedProtocolRevenue

                    let memberValue0 := mload(add(value, 0x80))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x0180))
                }

                {
                    // accumulatedCreatorRevenue

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x01a0))
                }

            }

            function abi_encode_t_uint128_to_t_uint128(value, pos) {
                mstore(pos, cleanup_t_uint128(value))
            }

            function abi_encode_t_int24_to_t_int24(value, pos) {
                mstore(pos, cleanup_t_int24(value))
            }

            function abi_encode_t_uint64_to_t_uint64(value, pos) {
                mstore(pos, cleanup_t_uint64(value))
            }

            // struct Perp.AssetRiskParams -> struct Perp.AssetRiskParams
            function abi_encode_t_struct$_AssetRiskParams_$13579_memory_ptr_to_t_struct$_AssetRiskParams_$13579_memory_ptr(value, pos)  {
                let tail := add(pos, 0xc0)

                {
                    // riskRatio

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_uint128_to_t_uint128(memberValue0, add(pos, 0x00))
                }

                {
                    // debtRiskRatio

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_uint128_to_t_uint128(memberValue0, add(pos, 0x20))
                }

                {
                    // rangeSize

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_int24_to_t_int24(memberValue0, add(pos, 0x40))
                }

                {
                    // rebalanceThreshold

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_int24_to_t_int24(memberValue0, add(pos, 0x60))
                }

                {
                    // minSlippage

                    let memberValue0 := mload(add(value, 0x80))
                    abi_encode_t_uint64_to_t_uint64(memberValue0, add(pos, 0x80))
                }

                {
                    // maxSlippage

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_uint64_to_t_uint64(memberValue0, add(pos, 0xa0))
                }

            }

            // struct ScaledAsset.UserStatus -> struct ScaledAsset.UserStatus
            function abi_encode_t_struct$_UserStatus_$30939_memory_ptr_to_t_struct$_UserStatus_$30939_memory_ptr(value, pos)  {
                let tail := add(pos, 0x40)

                {
                    // positionAmount

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x00))
                }

                {
                    // lastFeeGrowth

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x20))
                }

            }

            // struct Perp.SqrtPerpAssetStatus -> struct Perp.SqrtPerpAssetStatus
            function abi_encode_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(value, pos)  {
                let tail := add(pos, 0x0260)

                {
                    // uniswapPool

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_address_to_t_address(memberValue0, add(pos, 0x00))
                }

                {
                    // tickLower

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_int24_to_t_int24(memberValue0, add(pos, 0x20))
                }

                {
                    // tickUpper

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_int24_to_t_int24(memberValue0, add(pos, 0x40))
                }

                {
                    // numRebalance

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_uint64_to_t_uint64(memberValue0, add(pos, 0x60))
                }

                {
                    // totalAmount

                    let memberValue0 := mload(add(value, 0x80))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x80))
                }

                {
                    // borrowedAmount

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0xa0))
                }

                {
                    // lastRebalanceTotalSquartAmount

                    let memberValue0 := mload(add(value, 0xc0))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0xc0))
                }

                {
                    // lastFee0Growth

                    let memberValue0 := mload(add(value, 0xe0))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0xe0))
                }

                {
                    // lastFee1Growth

                    let memberValue0 := mload(add(value, 0x0100))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x0100))
                }

                {
                    // borrowPremium0Growth

                    let memberValue0 := mload(add(value, 0x0120))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x0120))
                }

                {
                    // borrowPremium1Growth

                    let memberValue0 := mload(add(value, 0x0140))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x0140))
                }

                {
                    // fee0Growth

                    let memberValue0 := mload(add(value, 0x0160))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x0160))
                }

                {
                    // fee1Growth

                    let memberValue0 := mload(add(value, 0x0180))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x0180))
                }

                {
                    // rebalancePositionBase

                    let memberValue0 := mload(add(value, 0x01a0))
                    abi_encode_t_struct$_UserStatus_$30939_memory_ptr_to_t_struct$_UserStatus_$30939_memory_ptr(memberValue0, add(pos, 0x01a0))
                }

                {
                    // rebalancePositionQuote

                    let memberValue0 := mload(add(value, 0x01c0))
                    abi_encode_t_struct$_UserStatus_$30939_memory_ptr_to_t_struct$_UserStatus_$30939_memory_ptr(memberValue0, add(pos, 0x01e0))
                }

                {
                    // rebalanceInterestGrowthBase

                    let memberValue0 := mload(add(value, 0x01e0))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x0220))
                }

                {
                    // rebalanceInterestGrowthQuote

                    let memberValue0 := mload(add(value, 0x0200))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x0240))
                }

            }

            function abi_encode_t_bool_to_t_bool(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_t_uint8_to_t_uint8(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
            }

            // struct DataType.PairStatus -> struct DataType.PairStatus
            function abi_encode_t_struct$_PairStatus_$6102_memory_ptr_to_t_struct$_PairStatus_$6102_memory_ptr_fromStack(value, pos)  {
                let tail := add(pos, 0x07a0)

                {
                    // id

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x00))
                }

                {
                    // marginId

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_address_to_t_address(memberValue0, add(pos, 0x20))
                }

                {
                    // poolOwner

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_address_to_t_address(memberValue0, add(pos, 0x40))
                }

                {
                    // quotePool

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_struct$_AssetPoolStatus_$13566_memory_ptr_to_t_struct$_AssetPoolStatus_$13566_memory_ptr(memberValue0, add(pos, 0x60))
                }

                {
                    // basePool

                    let memberValue0 := mload(add(value, 0x80))
                    abi_encode_t_struct$_AssetPoolStatus_$13566_memory_ptr_to_t_struct$_AssetPoolStatus_$13566_memory_ptr(memberValue0, add(pos, 0x0220))
                }

                {
                    // riskParams

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_struct$_AssetRiskParams_$13579_memory_ptr_to_t_struct$_AssetRiskParams_$13579_memory_ptr(memberValue0, add(pos, 0x03e0))
                }

                {
                    // sqrtAssetStatus

                    let memberValue0 := mload(add(value, 0xc0))
                    abi_encode_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(memberValue0, add(pos, 0x04a0))
                }

                {
                    // priceFeed

                    let memberValue0 := mload(add(value, 0xe0))
                    abi_encode_t_address_to_t_address(memberValue0, add(pos, 0x0700))
                }

                {
                    // isQuoteZero

                    let memberValue0 := mload(add(value, 0x0100))
                    abi_encode_t_bool_to_t_bool(memberValue0, add(pos, 0x0720))
                }

                {
                    // whitelistEnabled

                    let memberValue0 := mload(add(value, 0x0120))
                    abi_encode_t_bool_to_t_bool(memberValue0, add(pos, 0x0740))
                }

                {
                    // feeRatio

                    let memberValue0 := mload(add(value, 0x0140))
                    abi_encode_t_uint8_to_t_uint8(memberValue0, add(pos, 0x0760))
                }

                {
                    // lastUpdateTimestamp

                    let memberValue0 := mload(add(value, 0x0160))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x0780))
                }

            }

            function abi_encode_tuple_t_struct$_PairStatus_$6102_memory_ptr__to_t_struct$_PairStatus_$6102_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 1952)

                abi_encode_t_struct$_PairStatus_$6102_memory_ptr_to_t_struct$_PairStatus_$6102_memory_ptr_fromStack(value0,  add(headStart, 0))

            }

            /// @ast-id 18459
            /// @src 73:2264:2479  "function revertPairStatus(DataType.PairStatus memory pairStatus) internal pure {..."
            function fun_revertPairStatus_18459(var_pairStatus_18447_mpos) {

                /// @src 73:2384:2394  "pairStatus"
                let _226_mpos := var_pairStatus_18447_mpos
                let expr_18454_mpos := _226_mpos
                /// @src 73:2373:2395  "abi.encode(pairStatus)"

                let expr_18455_mpos := allocate_unbounded()
                let _227 := add(expr_18455_mpos, 0x20)

                let _228 := abi_encode_tuple_t_struct$_PairStatus_$6102_memory_ptr__to_t_struct$_PairStatus_$6102_memory_ptr__fromStack(_227, expr_18454_mpos)
                mstore(expr_18455_mpos, sub(_228, add(expr_18455_mpos, 0x20)))
                finalize_allocation(expr_18455_mpos, sub(_228, expr_18455_mpos))
                /// @src 73:2353:2395  "bytes memory data = abi.encode(pairStatus)"
                let var_data_18451_mpos := expr_18455_mpos
                /// @src 73:2406:2473  "assembly {..."
                {
                    revert(add(32, var_data_18451_mpos), mload(var_data_18451_mpos))
                }

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

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

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

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
                let _229_slot := var__assetStatus_14327_slot
                let expr_14330_slot := _229_slot
                /// @src 61:13132:13156  "_assetStatus.totalAmount"
                let _230 := add(expr_14330_slot, 2)
                let _231 := read_from_storage_split_offset_0_t_uint256(_230)
                let expr_14331 := _231
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
                let _232_slot := var__assetStatus_14327_slot
                let expr_14343_slot := _232_slot
                /// @src 61:13308:13332  "_assetStatus.uniswapPool"
                let _233 := add(expr_14343_slot, 0)
                let _234 := read_from_storage_split_offset_0_t_address(_233)
                let expr_14344 := _234
                /// @src 61:13334:13346  "_assetStatus"
                let _235_slot := var__assetStatus_14327_slot
                let expr_14345_slot := _235_slot
                /// @src 61:13334:13356  "_assetStatus.tickLower"
                let _236 := add(expr_14345_slot, 0)
                let _237 := read_from_storage_split_offset_20_t_int24(_236)
                let expr_14346 := _237
                /// @src 61:13358:13370  "_assetStatus"
                let _238_slot := var__assetStatus_14327_slot
                let expr_14347_slot := _238_slot
                /// @src 61:13358:13380  "_assetStatus.tickUpper"
                let _239 := add(expr_14347_slot, 0)
                let _240 := read_from_storage_split_offset_23_t_int24(_239)
                let expr_14348 := _240
                /// @src 61:13279:13381  "UniHelper.getFeeGrowthInside(_assetStatus.uniswapPool, _assetStatus.tickLower, _assetStatus.tickUpper)"
                let expr_14349_component_1, expr_14349_component_2 := fun_getFeeGrowthInside_16941(expr_14344, expr_14346, expr_14348)
                /// @src 61:13204:13381  "(uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) =..."
                let var_feeGrowthInside0X128_14338 := expr_14349_component_1
                let var_feeGrowthInside1X128_14340 := expr_14349_component_2
                /// @src 61:13392:13402  "uint256 f0"
                let var_f0_14352
                let zero_t_uint256_241 := zero_value_for_split_t_uint256()
                var_f0_14352 := zero_t_uint256_241
                /// @src 61:13412:13422  "uint256 f1"
                let var_f1_14355
                let zero_t_uint256_242 := zero_value_for_split_t_uint256()
                var_f1_14355 := zero_t_uint256_242
                /// @src 61:13522:13542  "feeGrowthInside0X128"
                let _243 := var_feeGrowthInside0X128_14338
                let expr_14358 := _243
                /// @src 61:13545:13557  "_assetStatus"
                let _244_slot := var__assetStatus_14327_slot
                let expr_14359_slot := _244_slot
                /// @src 61:13545:13572  "_assetStatus.lastFee0Growth"
                let _245 := add(expr_14359_slot, 5)
                let _246 := read_from_storage_split_offset_0_t_uint256(_245)
                let expr_14360 := _246
                /// @src 61:13522:13572  "feeGrowthInside0X128 - _assetStatus.lastFee0Growth"
                let expr_14361 := wrapping_sub_t_uint256(expr_14358, expr_14360)

                /// @src 61:13517:13572  "f0 = feeGrowthInside0X128 - _assetStatus.lastFee0Growth"
                var_f0_14352 := expr_14361
                let expr_14362 := expr_14361
                /// @src 61:13591:13611  "feeGrowthInside1X128"
                let _247 := var_feeGrowthInside1X128_14340
                let expr_14365 := _247
                /// @src 61:13614:13626  "_assetStatus"
                let _248_slot := var__assetStatus_14327_slot
                let expr_14366_slot := _248_slot
                /// @src 61:13614:13641  "_assetStatus.lastFee1Growth"
                let _249 := add(expr_14366_slot, 6)
                let _250 := read_from_storage_split_offset_0_t_uint256(_249)
                let expr_14367 := _250
                /// @src 61:13591:13641  "feeGrowthInside1X128 - _assetStatus.lastFee1Growth"
                let expr_14368 := wrapping_sub_t_uint256(expr_14365, expr_14367)

                /// @src 61:13586:13641  "f1 = feeGrowthInside1X128 - _assetStatus.lastFee1Growth"
                var_f1_14355 := expr_14368
                let expr_14369 := expr_14368
                /// @src 61:13666:13668  "f0"
                let _251 := var_f0_14352
                let expr_14372 := _251
                /// @src 61:13672:13673  "0"
                let expr_14373 := 0x00
                /// @src 61:13666:13673  "f0 == 0"
                let expr_14374 := eq(cleanup_t_uint256(expr_14372), convert_t_rational_0_by_1_to_t_uint256(expr_14373))
                /// @src 61:13666:13684  "f0 == 0 && f1 == 0"
                let expr_14378 := expr_14374
                if expr_14378 {
                    /// @src 61:13677:13679  "f1"
                    let _252 := var_f1_14355
                    let expr_14375 := _252
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
                let _253_slot := var__assetStatus_14327_slot
                let expr_14385_slot := _253_slot
                /// @src 61:13749:13782  "getUtilizationRatio(_assetStatus)"
                let _254_mpos := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(expr_14385_slot)
                let expr_14386 := fun_getUtilizationRatio_15131(_254_mpos)
                /// @src 61:13727:13782  "uint256 utilization = getUtilizationRatio(_assetStatus)"
                let var_utilization_14383 := expr_14386
                /// @src 61:13815:13832  "PremiumCurveModel"
                let expr_14390_address := linkersymbol("src/libraries/PremiumCurveModel.sol:PremiumCurveModel")
                /// @src 61:13855:13866  "utilization"
                let _255 := var_utilization_14383
                let expr_14392 := _255
                /// @src 61:13815:13867  "PremiumCurveModel.calculatePremiumCurve(utilization)"
                let expr_14393 := fun_calculatePremiumCurve_30359(expr_14392)
                /// @src 61:13793:13867  "uint256 spreadParam = PremiumCurveModel.calculatePremiumCurve(utilization)"
                let var_spreadParam_14389 := expr_14393
                /// @src 61:13905:13913  "FullMath"
                let expr_14398_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 61:13934:13936  "f0"
                let _256 := var_f0_14352
                let expr_14400 := _256
                /// @src 61:13938:13950  "_assetStatus"
                let _257_slot := var__assetStatus_14327_slot
                let expr_14401_slot := _257_slot
                /// @src 61:13938:13962  "_assetStatus.totalAmount"
                let _258 := add(expr_14401_slot, 2)
                let _259 := read_from_storage_split_offset_0_t_uint256(_258)
                let expr_14402 := _259
                /// @src 61:13965:13977  "_assetStatus"
                let _260_slot := var__assetStatus_14327_slot
                let expr_14403_slot := _260_slot
                /// @src 61:13965:13992  "_assetStatus.borrowedAmount"
                let _261 := add(expr_14403_slot, 3)
                let _262 := read_from_storage_split_offset_0_t_uint256(_261)
                let expr_14404 := _262
                /// @src 61:13995:14006  "spreadParam"
                let _263 := var_spreadParam_14389
                let expr_14405 := _263
                /// @src 61:13965:14006  "_assetStatus.borrowedAmount * spreadParam"
                let expr_14406 := checked_mul_t_uint256(expr_14404, expr_14405)

                /// @src 61:14009:14013  "1000"
                let expr_14407 := 0x03e8
                /// @src 61:13965:14013  "_assetStatus.borrowedAmount * spreadParam / 1000"
                let expr_14408 := checked_div_t_uint256(expr_14406, convert_t_rational_1000_by_1_to_t_uint256(expr_14407))

                /// @src 61:13938:14013  "_assetStatus.totalAmount + _assetStatus.borrowedAmount * spreadParam / 1000"
                let expr_14409 := checked_add_t_uint256(expr_14402, expr_14408)

                /// @src 61:14015:14027  "_assetStatus"
                let _264_slot := var__assetStatus_14327_slot
                let expr_14410_slot := _264_slot
                /// @src 61:14015:14039  "_assetStatus.totalAmount"
                let _265 := add(expr_14410_slot, 2)
                let _266 := read_from_storage_split_offset_0_t_uint256(_265)
                let expr_14411 := _266
                /// @src 61:13905:14049  "FullMath.mulDiv(..."
                let expr_14412 := fun_mulDiv_32512(expr_14400, expr_14409, expr_14411)
                /// @src 61:13878:13890  "_assetStatus"
                let _267_slot := var__assetStatus_14327_slot
                let expr_14395_slot := _267_slot
                /// @src 61:13878:13901  "_assetStatus.fee0Growth"
                let _268 := add(expr_14395_slot, 9)
                /// @src 61:13878:14049  "_assetStatus.fee0Growth += FullMath.mulDiv(..."
                let _269 := read_from_storage_split_offset_0_t_uint256(_268)
                let expr_14413 := checked_add_t_uint256(_269, expr_14412)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_268, expr_14413)
                /// @src 61:14086:14094  "FullMath"
                let expr_14418_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 61:14115:14117  "f1"
                let _270 := var_f1_14355
                let expr_14420 := _270
                /// @src 61:14119:14131  "_assetStatus"
                let _271_slot := var__assetStatus_14327_slot
                let expr_14421_slot := _271_slot
                /// @src 61:14119:14143  "_assetStatus.totalAmount"
                let _272 := add(expr_14421_slot, 2)
                let _273 := read_from_storage_split_offset_0_t_uint256(_272)
                let expr_14422 := _273
                /// @src 61:14146:14158  "_assetStatus"
                let _274_slot := var__assetStatus_14327_slot
                let expr_14423_slot := _274_slot
                /// @src 61:14146:14173  "_assetStatus.borrowedAmount"
                let _275 := add(expr_14423_slot, 3)
                let _276 := read_from_storage_split_offset_0_t_uint256(_275)
                let expr_14424 := _276
                /// @src 61:14176:14187  "spreadParam"
                let _277 := var_spreadParam_14389
                let expr_14425 := _277
                /// @src 61:14146:14187  "_assetStatus.borrowedAmount * spreadParam"
                let expr_14426 := checked_mul_t_uint256(expr_14424, expr_14425)

                /// @src 61:14190:14194  "1000"
                let expr_14427 := 0x03e8
                /// @src 61:14146:14194  "_assetStatus.borrowedAmount * spreadParam / 1000"
                let expr_14428 := checked_div_t_uint256(expr_14426, convert_t_rational_1000_by_1_to_t_uint256(expr_14427))

                /// @src 61:14119:14194  "_assetStatus.totalAmount + _assetStatus.borrowedAmount * spreadParam / 1000"
                let expr_14429 := checked_add_t_uint256(expr_14422, expr_14428)

                /// @src 61:14196:14208  "_assetStatus"
                let _278_slot := var__assetStatus_14327_slot
                let expr_14430_slot := _278_slot
                /// @src 61:14196:14220  "_assetStatus.totalAmount"
                let _279 := add(expr_14430_slot, 2)
                let _280 := read_from_storage_split_offset_0_t_uint256(_279)
                let expr_14431 := _280
                /// @src 61:14086:14230  "FullMath.mulDiv(..."
                let expr_14432 := fun_mulDiv_32512(expr_14420, expr_14429, expr_14431)
                /// @src 61:14059:14071  "_assetStatus"
                let _281_slot := var__assetStatus_14327_slot
                let expr_14415_slot := _281_slot
                /// @src 61:14059:14082  "_assetStatus.fee1Growth"
                let _282 := add(expr_14415_slot, 10)
                /// @src 61:14059:14230  "_assetStatus.fee1Growth += FullMath.mulDiv(..."
                let _283 := read_from_storage_split_offset_0_t_uint256(_282)
                let expr_14433 := checked_add_t_uint256(_283, expr_14432)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_282, expr_14433)
                /// @src 61:14278:14286  "FullMath"
                let expr_14438_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 61:14294:14296  "f0"
                let _284 := var_f0_14352
                let expr_14440 := _284
                /// @src 61:14298:14302  "1000"
                let expr_14441 := 0x03e8
                /// @src 61:14305:14316  "spreadParam"
                let _285 := var_spreadParam_14389
                let expr_14442 := _285
                /// @src 61:14298:14316  "1000 + spreadParam"
                let expr_14443 := checked_add_t_uint256(convert_t_rational_1000_by_1_to_t_uint256(expr_14441), expr_14442)

                /// @src 61:14318:14322  "1000"
                let expr_14444 := 0x03e8
                /// @src 61:14278:14323  "FullMath.mulDiv(f0, 1000 + spreadParam, 1000)"
                let _286 := convert_t_rational_1000_by_1_to_t_uint256(expr_14444)
                let expr_14445 := fun_mulDiv_32512(expr_14440, expr_14443, _286)
                /// @src 61:14241:14253  "_assetStatus"
                let _287_slot := var__assetStatus_14327_slot
                let expr_14435_slot := _287_slot
                /// @src 61:14241:14274  "_assetStatus.borrowPremium0Growth"
                let _288 := add(expr_14435_slot, 7)
                /// @src 61:14241:14323  "_assetStatus.borrowPremium0Growth += FullMath.mulDiv(f0, 1000 + spreadParam, 1000)"
                let _289 := read_from_storage_split_offset_0_t_uint256(_288)
                let expr_14446 := checked_add_t_uint256(_289, expr_14445)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_288, expr_14446)
                /// @src 61:14370:14378  "FullMath"
                let expr_14451_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 61:14386:14388  "f1"
                let _290 := var_f1_14355
                let expr_14453 := _290
                /// @src 61:14390:14394  "1000"
                let expr_14454 := 0x03e8
                /// @src 61:14397:14408  "spreadParam"
                let _291 := var_spreadParam_14389
                let expr_14455 := _291
                /// @src 61:14390:14408  "1000 + spreadParam"
                let expr_14456 := checked_add_t_uint256(convert_t_rational_1000_by_1_to_t_uint256(expr_14454), expr_14455)

                /// @src 61:14410:14414  "1000"
                let expr_14457 := 0x03e8
                /// @src 61:14370:14415  "FullMath.mulDiv(f1, 1000 + spreadParam, 1000)"
                let _292 := convert_t_rational_1000_by_1_to_t_uint256(expr_14457)
                let expr_14458 := fun_mulDiv_32512(expr_14453, expr_14456, _292)
                /// @src 61:14333:14345  "_assetStatus"
                let _293_slot := var__assetStatus_14327_slot
                let expr_14448_slot := _293_slot
                /// @src 61:14333:14366  "_assetStatus.borrowPremium1Growth"
                let _294 := add(expr_14448_slot, 8)
                /// @src 61:14333:14415  "_assetStatus.borrowPremium1Growth += FullMath.mulDiv(f1, 1000 + spreadParam, 1000)"
                let _295 := read_from_storage_split_offset_0_t_uint256(_294)
                let expr_14459 := checked_add_t_uint256(_295, expr_14458)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_294, expr_14459)
                /// @src 61:14456:14476  "feeGrowthInside0X128"
                let _296 := var_feeGrowthInside0X128_14338
                let expr_14464 := _296
                /// @src 61:14426:14438  "_assetStatus"
                let _297_slot := var__assetStatus_14327_slot
                let expr_14461_slot := _297_slot
                /// @src 61:14426:14453  "_assetStatus.lastFee0Growth"
                let _298 := add(expr_14461_slot, 5)
                /// @src 61:14426:14476  "_assetStatus.lastFee0Growth = feeGrowthInside0X128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_298, expr_14464)
                let expr_14465 := expr_14464
                /// @src 61:14516:14536  "feeGrowthInside1X128"
                let _299 := var_feeGrowthInside1X128_14340
                let expr_14470 := _299
                /// @src 61:14486:14498  "_assetStatus"
                let _300_slot := var__assetStatus_14327_slot
                let expr_14467_slot := _300_slot
                /// @src 61:14486:14513  "_assetStatus.lastFee1Growth"
                let _301 := add(expr_14467_slot, 6)
                /// @src 61:14486:14536  "_assetStatus.lastFee1Growth = feeGrowthInside1X128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_301, expr_14470)
                let expr_14471 := expr_14470
                /// @src 61:14573:14580  "_pairId"
                let _302 := var__pairId_14324
                let expr_14474 := _302
                /// @src 61:14582:14594  "_assetStatus"
                let _303_slot := var__assetStatus_14327_slot
                let expr_14475_slot := _303_slot
                /// @src 61:14582:14606  "_assetStatus.totalAmount"
                let _304 := add(expr_14475_slot, 2)
                let _305 := read_from_storage_split_offset_0_t_uint256(_304)
                let expr_14476 := _305
                /// @src 61:14608:14620  "_assetStatus"
                let _306_slot := var__assetStatus_14327_slot
                let expr_14477_slot := _306_slot
                /// @src 61:14608:14635  "_assetStatus.borrowedAmount"
                let _307 := add(expr_14477_slot, 3)
                let _308 := read_from_storage_split_offset_0_t_uint256(_307)
                let expr_14478 := _308
                /// @src 61:14637:14639  "f0"
                let _309 := var_f0_14352
                let expr_14479 := _309
                /// @src 61:14641:14643  "f1"
                let _310 := var_f1_14355
                let expr_14480 := _310
                /// @src 61:14645:14656  "spreadParam"
                let _311 := var_spreadParam_14389
                let expr_14481 := _311
                /// @src 61:14552:14657  "PremiumGrowthUpdated(_pairId, _assetStatus.totalAmount, _assetStatus.borrowedAmount, f0, f1, spreadParam)"
                let _312 := 0x4f3e43e713f947281f0deec9c972d8bed677658e3f98271fbec9a52ca8f79bd7
                let _313 := convert_t_uint256_to_t_uint256(expr_14474)
                {
                    let _314 := allocate_unbounded()
                    let _315 := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__fromStack(_314 , expr_14476, expr_14478, expr_14479, expr_14480, expr_14481)
                    log2(_314, sub(_315, _314) , _312, _313)
                }
            }
            /// @src 73:468:2708  "library ReaderLogic {..."

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
                let zero_t_uint256_316 := zero_value_for_split_t_uint256()
                var_interestRate_33188 := zero_t_uint256_316

                /// @src 56:1812:1827  "block.timestamp"
                let expr_33191 := timestamp()
                /// @src 56:1831:1850  "lastUpdateTimestamp"
                let _317 := var_lastUpdateTimestamp_33183
                let expr_33192 := _317
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
                let _318_slot := var_poolStatus_33181_slot
                let expr_33200_slot := _318_slot
                /// @src 56:1922:1944  "poolStatus.tokenStatus"
                let _319 := add(expr_33200_slot, 2)
                let _320_slot := _319
                let expr_33201_slot := _320_slot
                /// @src 56:1922:1964  "poolStatus.tokenStatus.getUtilizationRatio"
                let expr_33202_self_mpos := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_33201_slot)
                /// @src 56:1922:1966  "poolStatus.tokenStatus.getUtilizationRatio()"
                let expr_33203 := fun_getUtilizationRatio_31668(expr_33202_self_mpos)
                /// @src 56:1895:1966  "uint256 utilizationRatio = poolStatus.tokenStatus.getUtilizationRatio()"
                let var_utilizationRatio_33199 := expr_33203
                /// @src 56:2044:2060  "utilizationRatio"
                let _321 := var_utilizationRatio_33199
                let expr_33205 := _321
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
                let _322_slot := var_poolStatus_33181_slot
                let expr_33215_slot := _322_slot
                /// @src 56:2201:2221  "poolStatus.irmParams"
                let _323 := add(expr_33215_slot, 8)
                let _324_slot := _323
                let expr_33216_slot := _324_slot
                /// @src 56:2223:2239  "utilizationRatio"
                let _325 := var_utilizationRatio_33199
                let expr_33217 := _325
                /// @src 56:2161:2240  "InterestRateModel.calculateInterestRate(poolStatus.irmParams, utilizationRatio)"
                let _326_mpos := convert_t_struct$_IRMParams_$13447_storage_to_t_struct$_IRMParams_$13447_memory_ptr(expr_33216_slot)
                let expr_33218 := fun_calculateInterestRate_13510(_326_mpos, expr_33217)
                /// @src 56:2256:2271  "block.timestamp"
                let expr_33220 := timestamp()
                /// @src 56:2274:2293  "lastUpdateTimestamp"
                let _327 := var_lastUpdateTimestamp_33183
                let expr_33221 := _327
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
                let _328_slot := var_poolStatus_33181_slot
                let expr_33231_slot := _328_slot
                /// @src 56:2343:2365  "poolStatus.tokenStatus"
                let _329 := add(expr_33231_slot, 2)
                let _330_slot := _329
                let expr_33232_slot := _330_slot
                /// @src 56:2343:2378  "poolStatus.tokenStatus.updateScaler"
                let expr_33233_self_slot := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(expr_33232_slot)
                /// @src 56:2379:2391  "interestRate"
                let _331 := var_interestRate_33188
                let expr_33234 := _331
                /// @src 56:2393:2396  "fee"
                let _332 := var_fee_33185
                let expr_33235 := _332
                /// @src 56:2343:2397  "poolStatus.tokenStatus.updateScaler(interestRate, fee)"
                let expr_33236 := fun_updateScaler_31572(expr_33233_self_slot, expr_33234, expr_33235)
                /// @src 56:2316:2397  "uint256 totalProtocolFee = poolStatus.tokenStatus.updateScaler(interestRate, fee)"
                let var_totalProtocolFee_33230 := expr_33236
                /// @src 56:2449:2465  "totalProtocolFee"
                let _333 := var_totalProtocolFee_33230
                let expr_33241 := _333
                /// @src 56:2468:2469  "2"
                let expr_33242 := 0x02
                /// @src 56:2449:2469  "totalProtocolFee / 2"
                let expr_33243 := checked_div_t_uint256(expr_33241, convert_t_rational_2_by_1_to_t_uint256(expr_33242))

                /// @src 56:2408:2418  "poolStatus"
                let _334_slot := var_poolStatus_33181_slot
                let expr_33238_slot := _334_slot
                /// @src 56:2408:2445  "poolStatus.accumulatedProtocolRevenue"
                let _335 := add(expr_33238_slot, 12)
                /// @src 56:2408:2469  "poolStatus.accumulatedProtocolRevenue += totalProtocolFee / 2"
                let _336 := read_from_storage_split_offset_0_t_uint256(_335)
                let expr_33244 := checked_add_t_uint256(_336, expr_33243)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_335, expr_33244)
                /// @src 56:2519:2535  "totalProtocolFee"
                let _337 := var_totalProtocolFee_33230
                let expr_33249 := _337
                /// @src 56:2538:2539  "2"
                let expr_33250 := 0x02
                /// @src 56:2519:2539  "totalProtocolFee / 2"
                let expr_33251 := checked_div_t_uint256(expr_33249, convert_t_rational_2_by_1_to_t_uint256(expr_33250))

                /// @src 56:2479:2489  "poolStatus"
                let _338_slot := var_poolStatus_33181_slot
                let expr_33246_slot := _338_slot
                /// @src 56:2479:2515  "poolStatus.accumulatedCreatorRevenue"
                let _339 := add(expr_33246_slot, 13)
                /// @src 56:2479:2539  "poolStatus.accumulatedCreatorRevenue += totalProtocolFee / 2"
                let _340 := read_from_storage_split_offset_0_t_uint256(_339)
                let expr_33252 := checked_add_t_uint256(_340, expr_33251)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_339, expr_33252)

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

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
                let _341_mpos := var_assetStatus_33258_mpos
                let expr_33266_mpos := _341_mpos
                /// @src 56:2776:2790  "assetStatus.id"
                let _342 := add(expr_33266_mpos, 0)
                let _343 := read_from_memoryt_uint256(_342)
                let expr_33267 := _343
                /// @src 56:2804:2815  "assetStatus"
                let _344_mpos := var_assetStatus_33258_mpos
                let expr_33268_mpos := _344_mpos
                /// @src 56:2804:2825  "assetStatus.quotePool"
                let _345 := add(expr_33268_mpos, 96)
                let _346_mpos := mload(_345)
                let expr_33269_mpos := _346_mpos
                /// @src 56:2804:2837  "assetStatus.quotePool.tokenStatus"
                let _347 := add(expr_33269_mpos, 64)
                let _348_mpos := mload(_347)
                let expr_33270_mpos := _348_mpos
                /// @src 56:2851:2862  "assetStatus"
                let _349_mpos := var_assetStatus_33258_mpos
                let expr_33271_mpos := _349_mpos
                /// @src 56:2851:2871  "assetStatus.basePool"
                let _350 := add(expr_33271_mpos, 128)
                let _351_mpos := mload(_350)
                let expr_33272_mpos := _351_mpos
                /// @src 56:2851:2883  "assetStatus.basePool.tokenStatus"
                let _352 := add(expr_33272_mpos, 64)
                let _353_mpos := mload(_352)
                let expr_33273_mpos := _353_mpos
                /// @src 56:2897:2916  "interestRatioStable"
                let _354 := var_interestRatioStable_33260
                let expr_33274 := _354
                /// @src 56:2930:2953  "interestRatioUnderlying"
                let _355 := var_interestRatioUnderlying_33262
                let expr_33275 := _355
                /// @src 56:2741:2963  "InterestGrowthUpdated(..."
                let _356 := 0x68fec554d30e1515ff9dd8fef00d858620f16c33b61a2ed9cc011e4c0d66b01c
                let _357 := convert_t_uint256_to_t_uint256(expr_33267)
                {
                    let _358 := allocate_unbounded()
                    let _359 := abi_encode_tuple_t_struct$_AssetStatus_$30934_memory_ptr_t_struct$_AssetStatus_$30934_memory_ptr_t_uint256_t_uint256__to_t_struct$_AssetStatus_$30934_memory_ptr_t_struct$_AssetStatus_$30934_memory_ptr_t_uint256_t_uint256__fromStack(_358 , expr_33270_mpos, expr_33273_mpos, expr_33274, expr_33275)
                    log2(_358, sub(_359, _358) , _356, _357)
                }
            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function convert_t_struct$_UserStatus_$30939_storage_ptr_to_t_struct$_UserStatus_$30939_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_UserStatus_$30939_memory_ptr(value)

            }

            function convert_t_rational_0_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_0_by_1(value)))
            }

            /// @ast-id 31406
            /// @src 66:4790:5237  "function settleUserFee(ScaledAsset.AssetStatus memory _assetStatus, ScaledAsset.UserStatus storage _userStatus)..."
            function fun_settleUserFee_31406(var__assetStatus_31369_mpos, var__userStatus_31372_slot) -> var_interestFee_31375 {
                /// @src 66:4936:4954  "int256 interestFee"
                let zero_t_int256_360 := zero_value_for_split_t_int256()
                var_interestFee_31375 := zero_t_int256_360

                /// @src 66:4999:5011  "_assetStatus"
                let _361_mpos := var__assetStatus_31369_mpos
                let expr_31379_mpos := _361_mpos
                /// @src 66:5013:5024  "_userStatus"
                let _362_slot := var__userStatus_31372_slot
                let expr_31380_slot := _362_slot
                /// @src 66:4984:5025  "computeUserFee(_assetStatus, _userStatus)"
                let _363_mpos := convert_t_struct$_UserStatus_$30939_storage_ptr_to_t_struct$_UserStatus_$30939_memory_ptr(expr_31380_slot)
                let expr_31381 := fun_computeUserFee_31366(expr_31379_mpos, _363_mpos)
                /// @src 66:4970:5025  "interestFee = computeUserFee(_assetStatus, _userStatus)"
                var_interestFee_31375 := expr_31381
                let expr_31382 := expr_31381
                /// @src 66:5040:5051  "_userStatus"
                let _364_slot := var__userStatus_31372_slot
                let expr_31384_slot := _364_slot
                /// @src 66:5040:5066  "_userStatus.positionAmount"
                let _365 := add(expr_31384_slot, 0)
                let _366 := read_from_storage_split_offset_0_t_int256(_365)
                let expr_31385 := _366
                /// @src 66:5069:5070  "0"
                let expr_31386 := 0x00
                /// @src 66:5040:5070  "_userStatus.positionAmount > 0"
                let expr_31387 := sgt(cleanup_t_int256(expr_31385), convert_t_rational_0_by_1_to_t_int256(expr_31386))
                /// @src 66:5036:5231  "if (_userStatus.positionAmount > 0) {..."
                switch expr_31387
                case 0 {
                    /// @src 66:5197:5209  "_assetStatus"
                    let _367_mpos := var__assetStatus_31369_mpos
                    let expr_31399_mpos := _367_mpos
                    /// @src 66:5197:5220  "_assetStatus.debtGrowth"
                    let _368 := add(expr_31399_mpos, 160)
                    let _369 := read_from_memoryt_uint256(_368)
                    let expr_31400 := _369
                    /// @src 66:5169:5180  "_userStatus"
                    let _370_slot := var__userStatus_31372_slot
                    let expr_31396_slot := _370_slot
                    /// @src 66:5169:5194  "_userStatus.lastFeeGrowth"
                    let _371 := add(expr_31396_slot, 1)
                    /// @src 66:5169:5220  "_userStatus.lastFeeGrowth = _assetStatus.debtGrowth"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_371, expr_31400)
                    let expr_31401 := expr_31400
                    /// @src 66:5036:5231  "if (_userStatus.positionAmount > 0) {..."
                }
                default {
                    /// @src 66:5114:5126  "_assetStatus"
                    let _372_mpos := var__assetStatus_31369_mpos
                    let expr_31391_mpos := _372_mpos
                    /// @src 66:5114:5138  "_assetStatus.assetGrowth"
                    let _373 := add(expr_31391_mpos, 128)
                    let _374 := read_from_memoryt_uint256(_373)
                    let expr_31392 := _374
                    /// @src 66:5086:5097  "_userStatus"
                    let _375_slot := var__userStatus_31372_slot
                    let expr_31388_slot := _375_slot
                    /// @src 66:5086:5111  "_userStatus.lastFeeGrowth"
                    let _376 := add(expr_31388_slot, 1)
                    /// @src 66:5086:5138  "_userStatus.lastFeeGrowth = _assetStatus.assetGrowth"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_376, expr_31392)
                    let expr_31393 := expr_31392
                    /// @src 66:5036:5231  "if (_userStatus.positionAmount > 0) {..."
                }

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function negate_t_int256(value) -> ret {
                value := cleanup_t_int256(value)
                if eq(value, 0x8000000000000000000000000000000000000000000000000000000000000000) { panic_error_0x11() }
                ret := sub(0, value)
            }

            /// @ast-id 31366
            /// @src 66:4363:4784  "function computeUserFee(ScaledAsset.AssetStatus memory _assetStatus, ScaledAsset.UserStatus memory _userStatus)..."
            function fun_computeUserFee_31366(var__assetStatus_31329_mpos, var__userStatus_31332_mpos) -> var_interestFee_31335 {
                /// @src 66:4522:4540  "int256 interestFee"
                let zero_t_int256_377 := zero_value_for_split_t_int256()
                var_interestFee_31335 := zero_t_int256_377

                /// @src 66:4560:4571  "_userStatus"
                let _378_mpos := var__userStatus_31332_mpos
                let expr_31337_mpos := _378_mpos
                /// @src 66:4560:4586  "_userStatus.positionAmount"
                let _379 := add(expr_31337_mpos, 0)
                let _380 := read_from_memoryt_int256(_379)
                let expr_31338 := _380
                /// @src 66:4589:4590  "0"
                let expr_31339 := 0x00
                /// @src 66:4560:4590  "_userStatus.positionAmount > 0"
                let expr_31340 := sgt(cleanup_t_int256(expr_31338), convert_t_rational_0_by_1_to_t_int256(expr_31339))
                /// @src 66:4556:4778  "if (_userStatus.positionAmount > 0) {..."
                switch expr_31340
                case 0 {
                    /// @src 66:4729:4741  "_assetStatus"
                    let _381_mpos := var__assetStatus_31329_mpos
                    let expr_31354_mpos := _381_mpos
                    /// @src 66:4743:4754  "_userStatus"
                    let _382_mpos := var__userStatus_31332_mpos
                    let expr_31355_mpos := _382_mpos
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
                    let _383_mpos := var__assetStatus_31329_mpos
                    let expr_31343_mpos := _383_mpos
                    /// @src 66:4647:4658  "_userStatus"
                    let _384_mpos := var__userStatus_31332_mpos
                    let expr_31344_mpos := _384_mpos
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
            /// @src 73:468:2708  "library ReaderLogic {..."

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

            function convert_t_rational_1000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000000000000000000_by_1(value)))
            }

            /// @src 57:87:123  "uint256 internal constant ONE = 1e18"
            function constant_ONE_30273() -> ret {
                /// @src 57:119:123  "1e18"
                let expr_30272 := 0x0de0b6b3a7640000
                let _417 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_30272)

                ret := _417
            }

            /// @ast-id 33730
            /// @src 62:4681:5817  "function computeRebalanceInterest(..."
            function fun_computeRebalanceInterest_33730(var_pairId_33648, var_assetStatus_33651_mpos, var_rebalanceFeeGrowthCache_33656_slot, var_userStatus_33659_mpos) -> var_rebalanceInterestBase_33662, var_rebalanceInterestQuote_33664 {
                /// @src 62:4958:4986  "int256 rebalanceInterestBase"
                let zero_t_int256_385 := zero_value_for_split_t_int256()
                var_rebalanceInterestBase_33662 := zero_t_int256_385
                /// @src 62:4988:5017  "int256 rebalanceInterestQuote"
                let zero_t_int256_386 := zero_value_for_split_t_int256()
                var_rebalanceInterestQuote_33664 := zero_t_int256_386

                /// @src 62:5033:5043  "userStatus"
                let _387_mpos := var_userStatus_33659_mpos
                let expr_33666_mpos := _387_mpos
                /// @src 62:5033:5052  "userStatus.sqrtPerp"
                let _388 := add(expr_33666_mpos, 160)
                let _389_mpos := mload(_388)
                let expr_33667_mpos := _389_mpos
                /// @src 62:5033:5059  "userStatus.sqrtPerp.amount"
                let _390 := add(expr_33667_mpos, 0)
                let _391 := read_from_memoryt_int256(_390)
                let expr_33668 := _391
                /// @src 62:5063:5064  "0"
                let expr_33669 := 0x00
                /// @src 62:5033:5064  "userStatus.sqrtPerp.amount != 0"
                let expr_33670 := iszero(eq(cleanup_t_int256(expr_33668), convert_t_rational_0_by_1_to_t_int256(expr_33669)))
                /// @src 62:5033:5122  "userStatus.sqrtPerp.amount != 0 && userStatus.lastNumRebalance < assetStatus.numRebalance"
                let expr_33676 := expr_33670
                if expr_33676 {
                    /// @src 62:5068:5078  "userStatus"
                    let _392_mpos := var_userStatus_33659_mpos
                    let expr_33671_mpos := _392_mpos
                    /// @src 62:5068:5095  "userStatus.lastNumRebalance"
                    let _393 := add(expr_33671_mpos, 96)
                    let _394 := read_from_memoryt_uint64(_393)
                    let expr_33672 := _394
                    /// @src 62:5098:5109  "assetStatus"
                    let _395_mpos := var_assetStatus_33651_mpos
                    let expr_33673_mpos := _395_mpos
                    /// @src 62:5098:5122  "assetStatus.numRebalance"
                    let _396 := add(expr_33673_mpos, 96)
                    let _397 := read_from_memoryt_uint64(_396)
                    let expr_33674 := _397
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
                    let _398 := var_pairId_33648
                    let expr_33681 := _398
                    /// @src 62:5196:5206  "userStatus"
                    let _399_mpos := var_userStatus_33659_mpos
                    let expr_33682_mpos := _399_mpos
                    /// @src 62:5196:5223  "userStatus.lastNumRebalance"
                    let _400 := add(expr_33682_mpos, 96)
                    let _401 := read_from_memoryt_uint64(_400)
                    let expr_33683 := _401
                    /// @src 62:5160:5224  "PairLib.getRebalanceCacheId(pairId, userStatus.lastNumRebalance)"
                    let expr_33684 := fun_getRebalanceCacheId_34418(expr_33681, expr_33683)
                    /// @src 62:5138:5224  "uint256 rebalanceId = PairLib.getRebalanceCacheId(pairId, userStatus.lastNumRebalance)"
                    let var_rebalanceId_33678 := expr_33684
                    /// @src 62:5265:5269  "Math"
                    let expr_33688_address := linkersymbol("src/libraries/math/Math.sol:Math")
                    /// @src 62:5274:5284  "userStatus"
                    let _402_mpos := var_userStatus_33659_mpos
                    let expr_33690_mpos := _402_mpos
                    /// @src 62:5274:5293  "userStatus.sqrtPerp"
                    let _403 := add(expr_33690_mpos, 160)
                    let _404_mpos := mload(_403)
                    let expr_33691_mpos := _404_mpos
                    /// @src 62:5274:5300  "userStatus.sqrtPerp.amount"
                    let _405 := add(expr_33691_mpos, 0)
                    let _406 := read_from_memoryt_int256(_405)
                    let expr_33692 := _406
                    /// @src 62:5265:5301  "Math.abs(userStatus.sqrtPerp.amount)"
                    let expr_33693 := fun_abs_32143(expr_33692)
                    /// @src 62:5239:5301  "uint256 rebalanceAmount = Math.abs(userStatus.sqrtPerp.amount)"
                    let var_rebalanceAmount_33687 := expr_33693
                    /// @src 62:5340:5344  "Math"
                    let expr_33696_address := linkersymbol("src/libraries/math/Math.sol:Math")
                    /// @src 62:5379:5390  "assetStatus"
                    let _407_mpos := var_assetStatus_33651_mpos
                    let expr_33698_mpos := _407_mpos
                    /// @src 62:5379:5418  "assetStatus.rebalanceInterestGrowthBase"
                    let _408 := add(expr_33698_mpos, 480)
                    let _409 := read_from_memoryt_int256(_408)
                    let expr_33699 := _409
                    /// @src 62:5421:5444  "rebalanceFeeGrowthCache"
                    let _410_slot := var_rebalanceFeeGrowthCache_33656_slot
                    let expr_33700_slot := _410_slot
                    /// @src 62:5445:5456  "rebalanceId"
                    let _411 := var_rebalanceId_33678
                    let expr_33701 := _411
                    /// @src 62:5421:5457  "rebalanceFeeGrowthCache[rebalanceId]"
                    let _412 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_RebalanceFeeGrowthCache_$6121_storage_$_of_t_uint256(expr_33700_slot,expr_33701)
                    let _413_slot := _412
                    let expr_33702_slot := _413_slot
                    /// @src 62:5421:5474  "rebalanceFeeGrowthCache[rebalanceId].underlyingGrowth"
                    let _414 := add(expr_33702_slot, 1)
                    let _415 := read_from_storage_split_offset_0_t_int256(_414)
                    let expr_33703 := _415
                    /// @src 62:5379:5474  "assetStatus.rebalanceInterestGrowthBase - rebalanceFeeGrowthCache[rebalanceId].underlyingGrowth"
                    let expr_33704 := checked_sub_t_int256(expr_33699, expr_33703)

                    /// @src 62:5492:5507  "rebalanceAmount"
                    let _416 := var_rebalanceAmount_33687
                    let expr_33705 := _416
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
                    let _418_mpos := var_assetStatus_33651_mpos
                    let expr_33714_mpos := _418_mpos
                    /// @src 62:5630:5670  "assetStatus.rebalanceInterestGrowthQuote"
                    let _419 := add(expr_33714_mpos, 512)
                    let _420 := read_from_memoryt_int256(_419)
                    let expr_33715 := _420
                    /// @src 62:5673:5696  "rebalanceFeeGrowthCache"
                    let _421_slot := var_rebalanceFeeGrowthCache_33656_slot
                    let expr_33716_slot := _421_slot
                    /// @src 62:5697:5708  "rebalanceId"
                    let _422 := var_rebalanceId_33678
                    let expr_33717 := _422
                    /// @src 62:5673:5709  "rebalanceFeeGrowthCache[rebalanceId]"
                    let _423 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_RebalanceFeeGrowthCache_$6121_storage_$_of_t_uint256(expr_33716_slot,expr_33717)
                    let _424_slot := _423
                    let expr_33718_slot := _424_slot
                    /// @src 62:5673:5722  "rebalanceFeeGrowthCache[rebalanceId].stableGrowth"
                    let _425 := add(expr_33718_slot, 0)
                    let _426 := read_from_storage_split_offset_0_t_int256(_425)
                    let expr_33719 := _426
                    /// @src 62:5630:5722  "assetStatus.rebalanceInterestGrowthQuote - rebalanceFeeGrowthCache[rebalanceId].stableGrowth"
                    let expr_33720 := checked_sub_t_int256(expr_33715, expr_33719)

                    /// @src 62:5740:5755  "rebalanceAmount"
                    let _427 := var_rebalanceAmount_33687
                    let expr_33721 := _427
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
            /// @src 73:468:2708  "library ReaderLogic {..."

            function cleanup_t_rational_340282366920938463463374607431768211456_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938463463374607431768211456_by_1(value)))
            }

            /// @src 57:655:723  "uint256 internal constant Q128 = 0x100000000000000000000000000000000"
            function constant_Q128_30300() -> ret {
                /// @src 57:688:723  "0x100000000000000000000000000000000"
                let expr_30299 := 0x0100000000000000000000000000000000
                let _476 := convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(expr_30299)

                ret := _476
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
                let zero_t_int256_428 := zero_value_for_split_t_int256()
                var_feeUnderlying_33471 := zero_t_int256_428
                /// @src 62:2855:2871  "int256 feeStable"
                let zero_t_int256_429 := zero_value_for_split_t_int256()
                var_feeStable_33473 := zero_t_int256_429

                /// @src 62:2887:2906  "uint256 growthDiff0"
                let var_growthDiff0_33476
                let zero_t_uint256_430 := zero_value_for_split_t_uint256()
                var_growthDiff0_33476 := zero_t_uint256_430
                /// @src 62:2916:2935  "uint256 growthDiff1"
                let var_growthDiff1_33479
                let zero_t_uint256_431 := zero_value_for_split_t_uint256()
                var_growthDiff1_33479 := zero_t_uint256_431
                /// @src 62:2950:2958  "sqrtPerp"
                let _432_mpos := var_sqrtPerp_33468_mpos
                let expr_33481_mpos := _432_mpos
                /// @src 62:2950:2965  "sqrtPerp.amount"
                let _433 := add(expr_33481_mpos, 0)
                let _434 := read_from_memoryt_int256(_433)
                let expr_33482 := _434
                /// @src 62:2968:2969  "0"
                let expr_33483 := 0x00
                /// @src 62:2950:2969  "sqrtPerp.amount > 0"
                let expr_33484 := sgt(cleanup_t_int256(expr_33482), convert_t_rational_0_by_1_to_t_int256(expr_33483))
                /// @src 62:2946:3492  "if (sqrtPerp.amount > 0) {..."
                switch expr_33484
                case 0 {
                    /// @src 62:3184:3192  "sqrtPerp"
                    let _435_mpos := var_sqrtPerp_33468_mpos
                    let expr_33504_mpos := _435_mpos
                    /// @src 62:3184:3199  "sqrtPerp.amount"
                    let _436 := add(expr_33504_mpos, 0)
                    let _437 := read_from_memoryt_int256(_436)
                    let expr_33505 := _437
                    /// @src 62:3202:3203  "0"
                    let expr_33506 := 0x00
                    /// @src 62:3184:3203  "sqrtPerp.amount < 0"
                    let expr_33507 := slt(cleanup_t_int256(expr_33505), convert_t_rational_0_by_1_to_t_int256(expr_33506))
                    /// @src 62:3180:3492  "if (sqrtPerp.amount < 0) {..."
                    switch expr_33507
                    case 0 {
                        /// @src 62:3456:3469  "feeUnderlying"
                        let _438 := var_feeUnderlying_33471
                        let expr_33527 := _438
                        /// @src 62:3455:3481  "(feeUnderlying, feeStable)"
                        let expr_33529_component_1 := expr_33527
                        /// @src 62:3471:3480  "feeStable"
                        let _439 := var_feeStable_33473
                        let expr_33528 := _439
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
                        let _440_mpos := var_baseAssetStatus_33465_mpos
                        let expr_33509_mpos := _440_mpos
                        /// @src 62:3233:3264  "baseAssetStatus.sqrtAssetStatus"
                        let _441 := add(expr_33509_mpos, 192)
                        let _442_mpos := mload(_441)
                        let expr_33510_mpos := _442_mpos
                        /// @src 62:3233:3285  "baseAssetStatus.sqrtAssetStatus.borrowPremium0Growth"
                        let _443 := add(expr_33510_mpos, 288)
                        let _444 := read_from_memoryt_uint256(_443)
                        let expr_33511 := _444
                        /// @src 62:3288:3296  "sqrtPerp"
                        let _445_mpos := var_sqrtPerp_33468_mpos
                        let expr_33512_mpos := _445_mpos
                        /// @src 62:3288:3311  "sqrtPerp.entryTradeFee0"
                        let _446 := add(expr_33512_mpos, 128)
                        let _447 := read_from_memoryt_uint256(_446)
                        let expr_33513 := _447
                        /// @src 62:3233:3311  "baseAssetStatus.sqrtAssetStatus.borrowPremium0Growth - sqrtPerp.entryTradeFee0"
                        let expr_33514 := checked_sub_t_uint256(expr_33511, expr_33513)

                        /// @src 62:3219:3311  "growthDiff0 = baseAssetStatus.sqrtAssetStatus.borrowPremium0Growth - sqrtPerp.entryTradeFee0"
                        var_growthDiff0_33476 := expr_33514
                        let expr_33515 := expr_33514
                        /// @src 62:3339:3354  "baseAssetStatus"
                        let _448_mpos := var_baseAssetStatus_33465_mpos
                        let expr_33518_mpos := _448_mpos
                        /// @src 62:3339:3370  "baseAssetStatus.sqrtAssetStatus"
                        let _449 := add(expr_33518_mpos, 192)
                        let _450_mpos := mload(_449)
                        let expr_33519_mpos := _450_mpos
                        /// @src 62:3339:3391  "baseAssetStatus.sqrtAssetStatus.borrowPremium1Growth"
                        let _451 := add(expr_33519_mpos, 320)
                        let _452 := read_from_memoryt_uint256(_451)
                        let expr_33520 := _452
                        /// @src 62:3394:3402  "sqrtPerp"
                        let _453_mpos := var_sqrtPerp_33468_mpos
                        let expr_33521_mpos := _453_mpos
                        /// @src 62:3394:3417  "sqrtPerp.entryTradeFee1"
                        let _454 := add(expr_33521_mpos, 160)
                        let _455 := read_from_memoryt_uint256(_454)
                        let expr_33522 := _455
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
                    let _456_mpos := var_baseAssetStatus_33465_mpos
                    let expr_33486_mpos := _456_mpos
                    /// @src 62:2999:3030  "baseAssetStatus.sqrtAssetStatus"
                    let _457 := add(expr_33486_mpos, 192)
                    let _458_mpos := mload(_457)
                    let expr_33487_mpos := _458_mpos
                    /// @src 62:2999:3041  "baseAssetStatus.sqrtAssetStatus.fee0Growth"
                    let _459 := add(expr_33487_mpos, 352)
                    let _460 := read_from_memoryt_uint256(_459)
                    let expr_33488 := _460
                    /// @src 62:3044:3052  "sqrtPerp"
                    let _461_mpos := var_sqrtPerp_33468_mpos
                    let expr_33489_mpos := _461_mpos
                    /// @src 62:3044:3067  "sqrtPerp.entryTradeFee0"
                    let _462 := add(expr_33489_mpos, 128)
                    let _463 := read_from_memoryt_uint256(_462)
                    let expr_33490 := _463
                    /// @src 62:2999:3067  "baseAssetStatus.sqrtAssetStatus.fee0Growth - sqrtPerp.entryTradeFee0"
                    let expr_33491 := checked_sub_t_uint256(expr_33488, expr_33490)

                    /// @src 62:2985:3067  "growthDiff0 = baseAssetStatus.sqrtAssetStatus.fee0Growth - sqrtPerp.entryTradeFee0"
                    var_growthDiff0_33476 := expr_33491
                    let expr_33492 := expr_33491
                    /// @src 62:3095:3110  "baseAssetStatus"
                    let _464_mpos := var_baseAssetStatus_33465_mpos
                    let expr_33495_mpos := _464_mpos
                    /// @src 62:3095:3126  "baseAssetStatus.sqrtAssetStatus"
                    let _465 := add(expr_33495_mpos, 192)
                    let _466_mpos := mload(_465)
                    let expr_33496_mpos := _466_mpos
                    /// @src 62:3095:3137  "baseAssetStatus.sqrtAssetStatus.fee1Growth"
                    let _467 := add(expr_33496_mpos, 384)
                    let _468 := read_from_memoryt_uint256(_467)
                    let expr_33497 := _468
                    /// @src 62:3140:3148  "sqrtPerp"
                    let _469_mpos := var_sqrtPerp_33468_mpos
                    let expr_33498_mpos := _469_mpos
                    /// @src 62:3140:3163  "sqrtPerp.entryTradeFee1"
                    let _470 := add(expr_33498_mpos, 160)
                    let _471 := read_from_memoryt_uint256(_470)
                    let expr_33499 := _471
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
                let _472_mpos := var_sqrtPerp_33468_mpos
                let expr_33538_mpos := _472_mpos
                /// @src 62:3542:3557  "sqrtPerp.amount"
                let _473 := add(expr_33538_mpos, 0)
                let _474 := read_from_memoryt_int256(_473)
                let expr_33539 := _474
                /// @src 62:3559:3570  "growthDiff0"
                let _475 := var_growthDiff0_33476
                let expr_33540 := _475
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
                let _477_mpos := var_sqrtPerp_33468_mpos
                let expr_33549_mpos := _477_mpos
                /// @src 62:3637:3652  "sqrtPerp.amount"
                let _478 := add(expr_33549_mpos, 0)
                let _479 := read_from_memoryt_int256(_478)
                let expr_33550 := _479
                /// @src 62:3654:3665  "growthDiff1"
                let _480 := var_growthDiff1_33479
                let expr_33551 := _480
                /// @src 62:3667:3676  "Constants"
                let expr_33552_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 62:3667:3681  "Constants.Q128"
                let expr_33553 := constant_Q128_30300()
                /// @src 62:3611:3682  "Math.fullMulDivDownInt256(sqrtPerp.amount, growthDiff1, Constants.Q128)"
                let expr_33554 := fun_fullMulDivDownInt256_32279(expr_33550, expr_33551, expr_33553)
                /// @src 62:3597:3682  "int256 fee1 = Math.fullMulDivDownInt256(sqrtPerp.amount, growthDiff1, Constants.Q128)"
                let var_fee1_33546 := expr_33554
                /// @src 62:3697:3712  "baseAssetStatus"
                let _481_mpos := var_baseAssetStatus_33465_mpos
                let expr_33556_mpos := _481_mpos
                /// @src 62:3697:3724  "baseAssetStatus.isQuoteZero"
                let _482 := add(expr_33556_mpos, 256)
                let _483 := read_from_memoryt_bool(_482)
                let expr_33557 := _483
                /// @src 62:3693:3882  "if (baseAssetStatus.isQuoteZero) {..."
                switch expr_33557
                case 0 {
                    /// @src 62:3837:3841  "fee0"
                    let _484 := var_fee0_33535
                    let expr_33568 := _484
                    /// @src 62:3821:3841  "feeUnderlying = fee0"
                    var_feeUnderlying_33471 := expr_33568
                    let expr_33569 := expr_33568
                    /// @src 62:3867:3871  "fee1"
                    let _485 := var_fee1_33546
                    let expr_33572 := _485
                    /// @src 62:3855:3871  "feeStable = fee1"
                    var_feeStable_33473 := expr_33572
                    let expr_33573 := expr_33572
                    /// @src 62:3693:3882  "if (baseAssetStatus.isQuoteZero) {..."
                }
                default {
                    /// @src 62:3752:3756  "fee0"
                    let _486 := var_fee0_33535
                    let expr_33559 := _486
                    /// @src 62:3740:3756  "feeStable = fee0"
                    var_feeStable_33473 := expr_33559
                    let expr_33560 := expr_33559
                    /// @src 62:3786:3790  "fee1"
                    let _487 := var_fee1_33546
                    let expr_33563 := _487
                    /// @src 62:3770:3790  "feeUnderlying = fee1"
                    var_feeUnderlying_33471 := expr_33563
                    let expr_33564 := expr_33563
                    /// @src 62:3693:3882  "if (baseAssetStatus.isQuoteZero) {..."
                }

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function read_from_memoryt_address(ptr) -> returnValue {

                let value := cleanup_t_address(mload(ptr))

                returnValue :=

                value

            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function convert_t_uint160_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_contract$_PriceFeed_$32754(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_PriceFeed_$32754(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_PriceFeed_$32754(value)
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_contract$_PriceFeed_$32754_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() {
                revert(0, 0)
            }

            function shift_left_224(value) -> newValue {
                newValue :=

                shl(224, value)

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

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            /// @ast-id 16180
            /// @src 63:4570:4996  "function getSqrtIndexPrice(DataType.PairStatus memory pairStatus) internal view returns (uint256 sqrtPriceX96) {..."
            function fun_getSqrtIndexPrice_16180(var_pairStatus_16145_mpos) -> var_sqrtPriceX96_16148 {
                /// @src 63:4659:4679  "uint256 sqrtPriceX96"
                let zero_t_uint256_488 := zero_value_for_split_t_uint256()
                var_sqrtPriceX96_16148 := zero_t_uint256_488

                /// @src 63:4695:4705  "pairStatus"
                let _489_mpos := var_pairStatus_16145_mpos
                let expr_16150_mpos := _489_mpos
                /// @src 63:4695:4715  "pairStatus.priceFeed"
                let _490 := add(expr_16150_mpos, 224)
                let _491 := read_from_memoryt_address(_490)
                let expr_16151 := _491
                /// @src 63:4727:4728  "0"
                let expr_16154 := 0x00
                /// @src 63:4719:4729  "address(0)"
                let expr_16155 := convert_t_rational_0_by_1_to_t_address(expr_16154)
                /// @src 63:4695:4729  "pairStatus.priceFeed != address(0)"
                let expr_16156 := iszero(eq(cleanup_t_address(expr_16151), cleanup_t_address(expr_16155)))
                /// @src 63:4691:4990  "if (pairStatus.priceFeed != address(0)) {..."
                switch expr_16156
                case 0 {
                    /// @src 63:4836:4845  "UniHelper"
                    let expr_16165_address := linkersymbol("src/libraries/UniHelper.sol:UniHelper")
                    /// @src 63:4880:4889  "UniHelper"
                    let expr_16167_address := linkersymbol("src/libraries/UniHelper.sol:UniHelper")
                    /// @src 63:4902:4912  "pairStatus"
                    let _492_mpos := var_pairStatus_16145_mpos
                    let expr_16169_mpos := _492_mpos
                    /// @src 63:4902:4928  "pairStatus.sqrtAssetStatus"
                    let _493 := add(expr_16169_mpos, 192)
                    let _494_mpos := mload(_493)
                    let expr_16170_mpos := _494_mpos
                    /// @src 63:4902:4940  "pairStatus.sqrtAssetStatus.uniswapPool"
                    let _495 := add(expr_16170_mpos, 0)
                    let _496 := read_from_memoryt_address(_495)
                    let expr_16171 := _496
                    /// @src 63:4880:4941  "UniHelper.getSqrtTWAP(pairStatus.sqrtAssetStatus.uniswapPool)"
                    let expr_16172 := fun_getSqrtTWAP_16514(expr_16171)
                    /// @src 63:4943:4953  "pairStatus"
                    let _497_mpos := var_pairStatus_16145_mpos
                    let expr_16173_mpos := _497_mpos
                    /// @src 63:4943:4965  "pairStatus.isQuoteZero"
                    let _498 := add(expr_16173_mpos, 256)
                    let _499 := read_from_memoryt_bool(_498)
                    let expr_16174 := _499
                    /// @src 63:4836:4979  "UniHelper.convertSqrtPrice(..."
                    let expr_16175 := fun_convertSqrtPrice_16543(expr_16172, expr_16174)
                    /// @src 63:4829:4979  "return UniHelper.convertSqrtPrice(..."
                    var_sqrtPriceX96_16148 := convert_t_uint160_to_t_uint256(expr_16175)
                    leave
                    /// @src 63:4691:4990  "if (pairStatus.priceFeed != address(0)) {..."
                }
                default {
                    /// @src 63:4762:4772  "pairStatus"
                    let _500_mpos := var_pairStatus_16145_mpos
                    let expr_16158_mpos := _500_mpos
                    /// @src 63:4762:4782  "pairStatus.priceFeed"
                    let _501 := add(expr_16158_mpos, 224)
                    let _502 := read_from_memoryt_address(_501)
                    let expr_16159 := _502
                    /// @src 63:4752:4783  "PriceFeed(pairStatus.priceFeed)"
                    let expr_16160_address := convert_t_address_to_t_contract$_PriceFeed_$32754(expr_16159)
                    /// @src 63:4752:4796  "PriceFeed(pairStatus.priceFeed).getSqrtPrice"
                    let expr_16161_address := convert_t_contract$_PriceFeed_$32754_to_t_address(expr_16160_address)
                    let expr_16161_functionSelector := 0x86e6862d
                    /// @src 63:4752:4798  "PriceFeed(pairStatus.priceFeed).getSqrtPrice()"

                    // storage for arguments and returned data
                    let _503 := allocate_unbounded()
                    mstore(_503, shift_left_224(expr_16161_functionSelector))
                    let _504 := abi_encode_tuple__to__fromStack(add(_503, 4) )

                    let _505 := staticcall(gas(), expr_16161_address,  _503, sub(_504, _503), _503, 32)

                    if iszero(_505) { revert_forward_1() }

                    let expr_16162
                    if _505 {

                        let _506 := 32

                        if gt(_506, returndatasize()) {
                            _506 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_503, _506)

                        // decode return parameters from external try-call into retVars
                        expr_16162 :=  abi_decode_tuple_t_uint256_fromMemory(_503, add(_503, _506))
                    }
                    /// @src 63:4745:4798  "return PriceFeed(pairStatus.priceFeed).getSqrtPrice()"
                    var_sqrtPriceX96_16148 := expr_16162
                    leave
                    /// @src 63:4691:4990  "if (pairStatus.priceFeed != address(0)) {..."
                }

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function allocate_memory_struct_t_struct$_PositionParams_$15814_memory_ptr() -> memPtr {
                memPtr := allocate_memory(96)
            }

            function allocate_and_zero_memory_struct_t_struct$_PositionParams_$15814_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_PositionParams_$15814_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_PositionParams_$15814_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_PositionParams_$15814_memory_ptr()
            }

            function allocate_memory_struct_t_struct$_PositionParams_$15814_storage_ptr() -> memPtr {
                memPtr := allocate_memory(96)
            }

            /// @ast-id 16215
            /// @src 63:5002:5467  "function getPositionWithFeeAmount(Perp.UserStatus memory perpUserStatus, DataType.FeeAmount memory feeAmount)..."
            function fun_getPositionWithFeeAmount_16215(var_perpUserStatus_16183_mpos, var_feeAmount_16186_mpos) -> var_positionParams_16190_mpos {
                /// @src 63:5159:5195  "PositionParams memory positionParams"
                let zero_t_struct$_PositionParams_$15814_memory_ptr_507_mpos := zero_value_for_split_t_struct$_PositionParams_$15814_memory_ptr()
                var_positionParams_16190_mpos := zero_t_struct$_PositionParams_$15814_memory_ptr_507_mpos

                /// @src 63:5246:5260  "perpUserStatus"
                let _508_mpos := var_perpUserStatus_16183_mpos
                let expr_16193_mpos := _508_mpos
                /// @src 63:5246:5265  "perpUserStatus.perp"
                let _509 := add(expr_16193_mpos, 128)
                let _510_mpos := mload(_509)
                let expr_16194_mpos := _510_mpos
                /// @src 63:5246:5276  "perpUserStatus.perp.entryValue"
                let _511 := add(expr_16194_mpos, 32)
                let _512 := read_from_memoryt_int256(_511)
                let expr_16195 := _512
                /// @src 63:5279:5293  "perpUserStatus"
                let _513_mpos := var_perpUserStatus_16183_mpos
                let expr_16196_mpos := _513_mpos
                /// @src 63:5279:5302  "perpUserStatus.sqrtPerp"
                let _514 := add(expr_16196_mpos, 160)
                let _515_mpos := mload(_514)
                let expr_16197_mpos := _515_mpos
                /// @src 63:5279:5313  "perpUserStatus.sqrtPerp.entryValue"
                let _516 := add(expr_16197_mpos, 32)
                let _517 := read_from_memoryt_int256(_516)
                let expr_16198 := _517
                /// @src 63:5246:5313  "perpUserStatus.perp.entryValue + perpUserStatus.sqrtPerp.entryValue"
                let expr_16199 := checked_add_t_int256(expr_16195, expr_16198)

                /// @src 63:5316:5325  "feeAmount"
                let _518_mpos := var_feeAmount_16186_mpos
                let expr_16200_mpos := _518_mpos
                /// @src 63:5316:5340  "feeAmount.feeAmountQuote"
                let _519 := add(expr_16200_mpos, 32)
                let _520 := read_from_memoryt_int256(_519)
                let expr_16201 := _520
                /// @src 63:5246:5340  "perpUserStatus.perp.entryValue + perpUserStatus.sqrtPerp.entryValue + feeAmount.feeAmountQuote"
                let expr_16202 := checked_add_t_int256(expr_16199, expr_16201)

                /// @src 63:5354:5368  "perpUserStatus"
                let _521_mpos := var_perpUserStatus_16183_mpos
                let expr_16203_mpos := _521_mpos
                /// @src 63:5354:5377  "perpUserStatus.sqrtPerp"
                let _522 := add(expr_16203_mpos, 160)
                let _523_mpos := mload(_522)
                let expr_16204_mpos := _523_mpos
                /// @src 63:5354:5384  "perpUserStatus.sqrtPerp.amount"
                let _524 := add(expr_16204_mpos, 0)
                let _525 := read_from_memoryt_int256(_524)
                let expr_16205 := _525
                /// @src 63:5398:5412  "perpUserStatus"
                let _526_mpos := var_perpUserStatus_16183_mpos
                let expr_16206_mpos := _526_mpos
                /// @src 63:5398:5417  "perpUserStatus.perp"
                let _527 := add(expr_16206_mpos, 128)
                let _528_mpos := mload(_527)
                let expr_16207_mpos := _528_mpos
                /// @src 63:5398:5424  "perpUserStatus.perp.amount"
                let _529 := add(expr_16207_mpos, 0)
                let _530 := read_from_memoryt_int256(_529)
                let expr_16208 := _530
                /// @src 63:5427:5436  "feeAmount"
                let _531_mpos := var_feeAmount_16186_mpos
                let expr_16209_mpos := _531_mpos
                /// @src 63:5427:5450  "feeAmount.feeAmountBase"
                let _532 := add(expr_16209_mpos, 0)
                let _533 := read_from_memoryt_int256(_532)
                let expr_16210 := _533
                /// @src 63:5398:5450  "perpUserStatus.perp.amount + feeAmount.feeAmountBase"
                let expr_16211 := checked_add_t_int256(expr_16208, expr_16210)

                /// @src 63:5218:5460  "PositionParams(..."
                let expr_16212_mpos := allocate_memory_struct_t_struct$_PositionParams_$15814_storage_ptr()
                write_to_memory_t_int256(add(expr_16212_mpos, 0), expr_16202)
                write_to_memory_t_int256(add(expr_16212_mpos, 32), expr_16205)
                write_to_memory_t_int256(add(expr_16212_mpos, 64), expr_16211)
                /// @src 63:5211:5460  "return PositionParams(..."
                var_positionParams_16190_mpos := expr_16212_mpos
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            /// @ast-id 16115
            /// @src 63:3680:4308  "function calculateMinValue(..."
            function fun_calculateMinValue_16115(var_marginAmount_16058, var_positionParams_16061_mpos, var_sqrtPrice_16063, var_riskRatio_16065) -> var_minValue_16068, var_vaultValue_16070, var_debtValue_16072, var_hasPosition_16074 {
                /// @src 63:3865:3880  "int256 minValue"
                let zero_t_int256_534 := zero_value_for_split_t_int256()
                var_minValue_16068 := zero_t_int256_534
                /// @src 63:3882:3899  "int256 vaultValue"
                let zero_t_int256_535 := zero_value_for_split_t_int256()
                var_vaultValue_16070 := zero_t_int256_535
                /// @src 63:3901:3918  "uint256 debtValue"
                let zero_t_uint256_536 := zero_value_for_split_t_uint256()
                var_debtValue_16072 := zero_t_uint256_536
                /// @src 63:3920:3936  "bool hasPosition"
                let zero_t_bool_537 := zero_value_for_split_t_bool()
                var_hasPosition_16074 := zero_t_bool_537

                /// @src 63:3978:3987  "sqrtPrice"
                let _538 := var_sqrtPrice_16063
                let expr_16078 := _538
                /// @src 63:3989:4003  "positionParams"
                let _539_mpos := var_positionParams_16061_mpos
                let expr_16079_mpos := _539_mpos
                /// @src 63:4005:4014  "riskRatio"
                let _540 := var_riskRatio_16065
                let expr_16080 := _540
                /// @src 63:3960:4015  "calculateMinValue(sqrtPrice, positionParams, riskRatio)"
                let expr_16081 := fun_calculateMinValue_16387(expr_16078, expr_16079_mpos, expr_16080)
                /// @src 63:3948:4015  "minValue += calculateMinValue(sqrtPrice, positionParams, riskRatio)"
                let _541 := var_minValue_16068
                let expr_16082 := checked_add_t_int256(_541, expr_16081)

                var_minValue_16068 := expr_16082
                /// @src 63:4055:4064  "sqrtPrice"
                let _542 := var_sqrtPrice_16063
                let expr_16086 := _542
                /// @src 63:4066:4080  "positionParams"
                let _543_mpos := var_positionParams_16061_mpos
                let expr_16087_mpos := _543_mpos
                /// @src 63:4040:4081  "calculateValue(sqrtPrice, positionParams)"
                let expr_16088 := fun_calculateValue_16429(expr_16086, expr_16087_mpos)
                /// @src 63:4026:4081  "vaultValue += calculateValue(sqrtPrice, positionParams)"
                let _544 := var_vaultValue_16070
                let expr_16089 := checked_add_t_int256(_544, expr_16088)

                var_vaultValue_16070 := expr_16089
                /// @src 63:4130:4139  "sqrtPrice"
                let _545 := var_sqrtPrice_16063
                let expr_16093 := _545
                /// @src 63:4141:4155  "positionParams"
                let _546_mpos := var_positionParams_16061_mpos
                let expr_16094_mpos := _546_mpos
                /// @src 63:4105:4156  "calculateSquartDebtValue(sqrtPrice, positionParams)"
                let expr_16095 := fun_calculateSquartDebtValue_16467(expr_16093, expr_16094_mpos)
                /// @src 63:4092:4156  "debtValue += calculateSquartDebtValue(sqrtPrice, positionParams)"
                let _547 := var_debtValue_16072
                let expr_16096 := checked_add_t_uint256(_547, expr_16095)

                var_debtValue_16072 := expr_16096
                /// @src 63:4181:4192  "hasPosition"
                let _548 := var_hasPosition_16074
                let expr_16099 := _548
                /// @src 63:4181:4230  "hasPosition || getHasPositionFlag(positionParams)"
                let expr_16103 := expr_16099
                if iszero(expr_16103) {
                    /// @src 63:4215:4229  "positionParams"
                    let _549_mpos := var_positionParams_16061_mpos
                    let expr_16101_mpos := _549_mpos
                    /// @src 63:4196:4230  "getHasPositionFlag(positionParams)"
                    let expr_16102 := fun_getHasPositionFlag_16260(expr_16101_mpos)
                    /// @src 63:4181:4230  "hasPosition || getHasPositionFlag(positionParams)"
                    expr_16103 := expr_16102
                }
                /// @src 63:4167:4230  "hasPosition = hasPosition || getHasPositionFlag(positionParams)"
                var_hasPosition_16074 := expr_16103
                let expr_16104 := expr_16103
                /// @src 63:4253:4265  "marginAmount"
                let _550 := var_marginAmount_16058
                let expr_16107 := _550
                /// @src 63:4241:4265  "minValue += marginAmount"
                let _551 := var_minValue_16068
                let expr_16108 := checked_add_t_int256(_551, expr_16107)

                var_minValue_16068 := expr_16108
                /// @src 63:4289:4301  "marginAmount"
                let _552 := var_marginAmount_16058
                let expr_16111 := _552
                /// @src 63:4275:4301  "vaultValue += marginAmount"
                let _553 := var_vaultValue_16070
                let expr_16112 := checked_add_t_int256(_553, expr_16111)

                var_vaultValue_16070 := expr_16112

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function convert_t_rational_0_by_1_to_t_uint128(value) -> converted {
                converted := cleanup_t_uint128(identity(cleanup_t_rational_0_by_1(value)))
            }

            /// @src 57:742:804  "uint256 internal constant BASE_MIN_COLLATERAL_WITH_DEBT = 1000"
            function constant_BASE_MIN_COLLATERAL_WITH_DEBT_30303() -> ret {
                /// @src 57:800:804  "1000"
                let expr_30302 := 0x03e8
                let _557 := convert_t_rational_1000_by_1_to_t_uint256(expr_30302)

                ret := _557
            }

            /// @ast-id 16055
            /// @src 63:3119:3380  "function calculateRequiredCollateralWithDebt(uint128 debtRiskRatio) internal pure returns (uint256) {..."
            function fun_calculateRequiredCollateralWithDebt_16055(var_debtRiskRatio_16038) -> var__16041 {
                /// @src 63:3210:3217  "uint256"
                let zero_t_uint256_554 := zero_value_for_split_t_uint256()
                var__16041 := zero_t_uint256_554

                /// @src 63:3232:3245  "debtRiskRatio"
                let _555 := var_debtRiskRatio_16038
                let expr_16043 := _555
                /// @src 63:3249:3250  "0"
                let expr_16044 := 0x00
                /// @src 63:3232:3250  "debtRiskRatio == 0"
                let expr_16045 := eq(cleanup_t_uint128(expr_16043), convert_t_rational_0_by_1_to_t_uint128(expr_16044))
                /// @src 63:3229:3374  "if(debtRiskRatio == 0) {..."
                switch expr_16045
                case 0 {
                    /// @src 63:3350:3363  "debtRiskRatio"
                    let _556 := var_debtRiskRatio_16038
                    let expr_16050 := _556
                    /// @src 63:3343:3363  "return debtRiskRatio"
                    var__16041 := convert_t_uint128_to_t_uint256(expr_16050)
                    leave
                    /// @src 63:3229:3374  "if(debtRiskRatio == 0) {..."
                }
                default {
                    /// @src 63:3273:3282  "Constants"
                    let expr_16046_address := linkersymbol("src/libraries/Constants.sol:Constants")
                    /// @src 63:3273:3312  "Constants.BASE_MIN_COLLATERAL_WITH_DEBT"
                    let expr_16047 := constant_BASE_MIN_COLLATERAL_WITH_DEBT_30303()
                    /// @src 63:3266:3312  "return Constants.BASE_MIN_COLLATERAL_WITH_DEBT"
                    var__16041 := expr_16047
                    leave
                    /// @src 63:3229:3374  "if(debtRiskRatio == 0) {..."
                }

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function convert_t_int256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_int256(value)))
            }

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

            /// @ast-id 28969
            /// @src 10:34781:35078  "function toInt256(uint256 value) internal pure returns (int256) {..."
            function fun_toInt256_28969(var_value_28944) -> var__28947 {
                /// @src 10:34837:34843  "int256"
                let zero_t_int256_558 := zero_value_for_split_t_int256()
                var__28947 := zero_t_int256_558

                /// @src 10:34962:34967  "value"
                let _559 := var_value_28944
                let expr_28950 := _559
                /// @src 10:34979:34995  "type(int256).max"
                let expr_28957 := 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                /// @src 10:34971:34996  "uint256(type(int256).max)"
                let expr_28958 := convert_t_int256_to_t_uint256(expr_28957)
                /// @src 10:34962:34996  "value <= uint256(type(int256).max)"
                let expr_28959 := iszero(gt(cleanup_t_uint256(expr_28950), cleanup_t_uint256(expr_28958)))
                /// @src 10:34954:35041  "require(value <= uint256(type(int256).max), \"SafeCast: value doesn't fit in an int256\")"
                require_helper_t_stringliteral_d70dcf21692b3c91b4c5fbb89ed57f464aa42efbe5b0ea96c4acb7c080144227(expr_28959)
                /// @src 10:35065:35070  "value"
                let _560 := var_value_28944
                let expr_28965 := _560
                /// @src 10:35058:35071  "int256(value)"
                let expr_28966 := convert_t_uint256_to_t_int256(expr_28965)
                /// @src 10:35051:35071  "return int256(value)"
                var__28947 := expr_28966
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function convert_t_uint160_to_t_contract$_IUniswapV3Pool_$13422(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IUniswapV3Pool_$13422(value)
            }

            function convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
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

            function validator_revert_t_uint128(value) {
                if iszero(eq(value, cleanup_t_uint128(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint128_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint128(value)
            }

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

            function abi_encode_t_int24_to_t_int24_fromStack(value, pos) {
                mstore(pos, cleanup_t_int24(value))
            }

            function abi_encode_tuple_t_int24__to_t_int24__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_int24_to_t_int24_fromStack(value0,  add(headStart, 0))

            }

            /// @ast-id 16941
            /// @src 69:3452:5644  "function getFeeGrowthInside(address uniswapPoolAddress, int24 tickLower, int24 tickUpper)..."
            function fun_getFeeGrowthInside_16941(var_uniswapPoolAddress_16800, var_tickLower_16802, var_tickUpper_16804) -> var_feeGrowthInside0X128_16807, var_feeGrowthInside1X128_16809 {
                /// @src 69:3589:3617  "uint256 feeGrowthInside0X128"
                let zero_t_uint256_561 := zero_value_for_split_t_uint256()
                var_feeGrowthInside0X128_16807 := zero_t_uint256_561
                /// @src 69:3619:3647  "uint256 feeGrowthInside1X128"
                let zero_t_uint256_562 := zero_value_for_split_t_uint256()
                var_feeGrowthInside1X128_16809 := zero_t_uint256_562

                /// @src 69:3707:3725  "uniswapPoolAddress"
                let _563 := var_uniswapPoolAddress_16800
                let expr_16814 := _563
                /// @src 69:3692:3726  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16815_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16814)
                /// @src 69:3692:3732  "IUniswapV3Pool(uniswapPoolAddress).slot0"
                let expr_16816_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16815_address)
                let expr_16816_functionSelector := 0x3850c7bd
                /// @src 69:3692:3734  "IUniswapV3Pool(uniswapPoolAddress).slot0()"

                // storage for arguments and returned data
                let _564 := allocate_unbounded()
                mstore(_564, shift_left_224(expr_16816_functionSelector))
                let _565 := abi_encode_tuple__to__fromStack(add(_564, 4) )

                let _566 := staticcall(gas(), expr_16816_address,  _564, sub(_565, _564), _564, 224)

                if iszero(_566) { revert_forward_1() }

                let expr_16817_component_1, expr_16817_component_2, expr_16817_component_3, expr_16817_component_4, expr_16817_component_5, expr_16817_component_6, expr_16817_component_7
                if _566 {

                    let _567 := 224

                    if gt(_567, returndatasize()) {
                        _567 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_564, _567)

                    // decode return parameters from external try-call into retVars
                    expr_16817_component_1, expr_16817_component_2, expr_16817_component_3, expr_16817_component_4, expr_16817_component_5, expr_16817_component_6, expr_16817_component_7 :=  abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(_564, add(_564, _567))
                }
                /// @src 69:3663:3734  "(, int24 tickCurrent,,,,,) = IUniswapV3Pool(uniswapPoolAddress).slot0()"
                let var_tickCurrent_16812 := expr_16817_component_2
                /// @src 69:3791:3809  "uniswapPoolAddress"
                let _568 := var_uniswapPoolAddress_16800
                let expr_16822 := _568
                /// @src 69:3776:3810  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16823_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16822)
                /// @src 69:3776:3831  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal0X128"
                let expr_16824_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16823_address)
                let expr_16824_functionSelector := 0xf3058399
                /// @src 69:3776:3833  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal0X128()"

                // storage for arguments and returned data
                let _569 := allocate_unbounded()
                mstore(_569, shift_left_224(expr_16824_functionSelector))
                let _570 := abi_encode_tuple__to__fromStack(add(_569, 4) )

                let _571 := staticcall(gas(), expr_16824_address,  _569, sub(_570, _569), _569, 32)

                if iszero(_571) { revert_forward_1() }

                let expr_16825
                if _571 {

                    let _572 := 32

                    if gt(_572, returndatasize()) {
                        _572 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_569, _572)

                    // decode return parameters from external try-call into retVars
                    expr_16825 :=  abi_decode_tuple_t_uint256_fromMemory(_569, add(_569, _572))
                }
                /// @src 69:3745:3833  "uint256 feeGrowthGlobal0X128 = IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal0X128()"
                let var_feeGrowthGlobal0X128_16820 := expr_16825
                /// @src 69:3889:3907  "uniswapPoolAddress"
                let _573 := var_uniswapPoolAddress_16800
                let expr_16830 := _573
                /// @src 69:3874:3908  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16831_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16830)
                /// @src 69:3874:3929  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal1X128"
                let expr_16832_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16831_address)
                let expr_16832_functionSelector := 0x46141319
                /// @src 69:3874:3931  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal1X128()"

                // storage for arguments and returned data
                let _574 := allocate_unbounded()
                mstore(_574, shift_left_224(expr_16832_functionSelector))
                let _575 := abi_encode_tuple__to__fromStack(add(_574, 4) )

                let _576 := staticcall(gas(), expr_16832_address,  _574, sub(_575, _574), _574, 32)

                if iszero(_576) { revert_forward_1() }

                let expr_16833
                if _576 {

                    let _577 := 32

                    if gt(_577, returndatasize()) {
                        _577 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_574, _577)

                    // decode return parameters from external try-call into retVars
                    expr_16833 :=  abi_decode_tuple_t_uint256_fromMemory(_574, add(_574, _577))
                }
                /// @src 69:3843:3931  "uint256 feeGrowthGlobal1X128 = IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal1X128()"
                let var_feeGrowthGlobal1X128_16828 := expr_16833
                /// @src 69:3980:4007  "uint256 feeGrowthBelow0X128"
                let var_feeGrowthBelow0X128_16836
                let zero_t_uint256_578 := zero_value_for_split_t_uint256()
                var_feeGrowthBelow0X128_16836 := zero_t_uint256_578
                /// @src 69:4017:4044  "uint256 feeGrowthBelow1X128"
                let var_feeGrowthBelow1X128_16839
                let zero_t_uint256_579 := zero_value_for_split_t_uint256()
                var_feeGrowthBelow1X128_16839 := zero_t_uint256_579
                /// @src 69:4214:4232  "uniswapPoolAddress"
                let _580 := var_uniswapPoolAddress_16800
                let expr_16846 := _580
                /// @src 69:4199:4233  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16847_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16846)
                /// @src 69:4199:4239  "IUniswapV3Pool(uniswapPoolAddress).ticks"
                let expr_16848_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16847_address)
                let expr_16848_functionSelector := 0xf30dba93
                /// @src 69:4240:4249  "tickLower"
                let _581 := var_tickLower_16802
                let expr_16849 := _581
                /// @src 69:4199:4250  "IUniswapV3Pool(uniswapPoolAddress).ticks(tickLower)"

                // storage for arguments and returned data
                let _582 := allocate_unbounded()
                mstore(_582, shift_left_224(expr_16848_functionSelector))
                let _583 := abi_encode_tuple_t_int24__to_t_int24__fromStack(add(_582, 4) , expr_16849)

                let _584 := staticcall(gas(), expr_16848_address,  _582, sub(_583, _582), _582, 256)

                if iszero(_584) { revert_forward_1() }

                let expr_16850_component_1, expr_16850_component_2, expr_16850_component_3, expr_16850_component_4, expr_16850_component_5, expr_16850_component_6, expr_16850_component_7, expr_16850_component_8
                if _584 {

                    let _585 := 256

                    if gt(_585, returndatasize()) {
                        _585 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_582, _585)

                    // decode return parameters from external try-call into retVars
                    expr_16850_component_1, expr_16850_component_2, expr_16850_component_3, expr_16850_component_4, expr_16850_component_5, expr_16850_component_6, expr_16850_component_7, expr_16850_component_8 :=  abi_decode_tuple_t_uint128t_int128t_uint256t_uint256t_int56t_uint160t_uint32t_bool_fromMemory(_582, add(_582, _585))
                }
                /// @src 69:4097:4250  "(,, uint256 lowerFeeGrowthOutside0X128, uint256 lowerFeeGrowthOutside1X128,,,,) =..."
                let var_lowerFeeGrowthOutside0X128_16842 := expr_16850_component_3
                let var_lowerFeeGrowthOutside1X128_16844 := expr_16850_component_4
                /// @src 69:4273:4284  "tickCurrent"
                let _586 := var_tickCurrent_16812
                let expr_16852 := _586
                /// @src 69:4288:4297  "tickLower"
                let _587 := var_tickLower_16802
                let expr_16853 := _587
                /// @src 69:4273:4297  "tickCurrent >= tickLower"
                let expr_16854 := iszero(slt(cleanup_t_int24(expr_16852), cleanup_t_int24(expr_16853)))
                /// @src 69:4269:4669  "if (tickCurrent >= tickLower) {..."
                switch expr_16854
                case 0 {
                    /// @src 69:4508:4528  "feeGrowthGlobal0X128"
                    let _588 := var_feeGrowthGlobal0X128_16820
                    let expr_16865 := _588
                    /// @src 69:4531:4557  "lowerFeeGrowthOutside0X128"
                    let _589 := var_lowerFeeGrowthOutside0X128_16842
                    let expr_16866 := _589
                    /// @src 69:4508:4557  "feeGrowthGlobal0X128 - lowerFeeGrowthOutside0X128"
                    let expr_16867 := wrapping_sub_t_uint256(expr_16865, expr_16866)

                    /// @src 69:4486:4557  "feeGrowthBelow0X128 = feeGrowthGlobal0X128 - lowerFeeGrowthOutside0X128"
                    var_feeGrowthBelow0X128_16836 := expr_16867
                    let expr_16868 := expr_16867
                    /// @src 69:4601:4621  "feeGrowthGlobal1X128"
                    let _590 := var_feeGrowthGlobal1X128_16828
                    let expr_16871 := _590
                    /// @src 69:4624:4650  "lowerFeeGrowthOutside1X128"
                    let _591 := var_lowerFeeGrowthOutside1X128_16844
                    let expr_16872 := _591
                    /// @src 69:4601:4650  "feeGrowthGlobal1X128 - lowerFeeGrowthOutside1X128"
                    let expr_16873 := wrapping_sub_t_uint256(expr_16871, expr_16872)

                    /// @src 69:4579:4650  "feeGrowthBelow1X128 = feeGrowthGlobal1X128 - lowerFeeGrowthOutside1X128"
                    var_feeGrowthBelow1X128_16839 := expr_16873
                    let expr_16874 := expr_16873
                    /// @src 69:4269:4669  "if (tickCurrent >= tickLower) {..."
                }
                default {
                    /// @src 69:4343:4369  "lowerFeeGrowthOutside0X128"
                    let _592 := var_lowerFeeGrowthOutside0X128_16842
                    let expr_16856 := _592
                    /// @src 69:4321:4369  "feeGrowthBelow0X128 = lowerFeeGrowthOutside0X128"
                    var_feeGrowthBelow0X128_16836 := expr_16856
                    let expr_16857 := expr_16856
                    /// @src 69:4413:4439  "lowerFeeGrowthOutside1X128"
                    let _593 := var_lowerFeeGrowthOutside1X128_16844
                    let expr_16860 := _593
                    /// @src 69:4391:4439  "feeGrowthBelow1X128 = lowerFeeGrowthOutside1X128"
                    var_feeGrowthBelow1X128_16839 := expr_16860
                    let expr_16861 := expr_16860
                    /// @src 69:4269:4669  "if (tickCurrent >= tickLower) {..."
                }
                /// @src 69:4739:4766  "uint256 feeGrowthAbove0X128"
                let var_feeGrowthAbove0X128_16880
                let zero_t_uint256_594 := zero_value_for_split_t_uint256()
                var_feeGrowthAbove0X128_16880 := zero_t_uint256_594
                /// @src 69:4780:4807  "uint256 feeGrowthAbove1X128"
                let var_feeGrowthAbove1X128_16883
                let zero_t_uint256_595 := zero_value_for_split_t_uint256()
                var_feeGrowthAbove1X128_16883 := zero_t_uint256_595
                /// @src 69:4957:4975  "uniswapPoolAddress"
                let _596 := var_uniswapPoolAddress_16800
                let expr_16890 := _596
                /// @src 69:4942:4976  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16891_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16890)
                /// @src 69:4942:4982  "IUniswapV3Pool(uniswapPoolAddress).ticks"
                let expr_16892_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16891_address)
                let expr_16892_functionSelector := 0xf30dba93
                /// @src 69:4983:4992  "tickUpper"
                let _597 := var_tickUpper_16804
                let expr_16893 := _597
                /// @src 69:4942:4993  "IUniswapV3Pool(uniswapPoolAddress).ticks(tickUpper)"

                // storage for arguments and returned data
                let _598 := allocate_unbounded()
                mstore(_598, shift_left_224(expr_16892_functionSelector))
                let _599 := abi_encode_tuple_t_int24__to_t_int24__fromStack(add(_598, 4) , expr_16893)

                let _600 := staticcall(gas(), expr_16892_address,  _598, sub(_599, _598), _598, 256)

                if iszero(_600) { revert_forward_1() }

                let expr_16894_component_1, expr_16894_component_2, expr_16894_component_3, expr_16894_component_4, expr_16894_component_5, expr_16894_component_6, expr_16894_component_7, expr_16894_component_8
                if _600 {

                    let _601 := 256

                    if gt(_601, returndatasize()) {
                        _601 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_598, _601)

                    // decode return parameters from external try-call into retVars
                    expr_16894_component_1, expr_16894_component_2, expr_16894_component_3, expr_16894_component_4, expr_16894_component_5, expr_16894_component_6, expr_16894_component_7, expr_16894_component_8 :=  abi_decode_tuple_t_uint128t_int128t_uint256t_uint256t_int56t_uint160t_uint32t_bool_fromMemory(_598, add(_598, _601))
                }
                /// @src 69:4840:4993  "(,, uint256 upperFeeGrowthOutside0X128, uint256 upperFeeGrowthOutside1X128,,,,) =..."
                let var_upperFeeGrowthOutside0X128_16886 := expr_16894_component_3
                let var_upperFeeGrowthOutside1X128_16888 := expr_16894_component_4
                /// @src 69:5016:5027  "tickCurrent"
                let _602 := var_tickCurrent_16812
                let expr_16896 := _602
                /// @src 69:5030:5039  "tickUpper"
                let _603 := var_tickUpper_16804
                let expr_16897 := _603
                /// @src 69:5016:5039  "tickCurrent < tickUpper"
                let expr_16898 := slt(cleanup_t_int24(expr_16896), cleanup_t_int24(expr_16897))
                /// @src 69:5012:5411  "if (tickCurrent < tickUpper) {..."
                switch expr_16898
                case 0 {
                    /// @src 69:5250:5270  "feeGrowthGlobal0X128"
                    let _604 := var_feeGrowthGlobal0X128_16820
                    let expr_16909 := _604
                    /// @src 69:5273:5299  "upperFeeGrowthOutside0X128"
                    let _605 := var_upperFeeGrowthOutside0X128_16886
                    let expr_16910 := _605
                    /// @src 69:5250:5299  "feeGrowthGlobal0X128 - upperFeeGrowthOutside0X128"
                    let expr_16911 := wrapping_sub_t_uint256(expr_16909, expr_16910)

                    /// @src 69:5228:5299  "feeGrowthAbove0X128 = feeGrowthGlobal0X128 - upperFeeGrowthOutside0X128"
                    var_feeGrowthAbove0X128_16880 := expr_16911
                    let expr_16912 := expr_16911
                    /// @src 69:5343:5363  "feeGrowthGlobal1X128"
                    let _606 := var_feeGrowthGlobal1X128_16828
                    let expr_16915 := _606
                    /// @src 69:5366:5392  "upperFeeGrowthOutside1X128"
                    let _607 := var_upperFeeGrowthOutside1X128_16888
                    let expr_16916 := _607
                    /// @src 69:5343:5392  "feeGrowthGlobal1X128 - upperFeeGrowthOutside1X128"
                    let expr_16917 := wrapping_sub_t_uint256(expr_16915, expr_16916)

                    /// @src 69:5321:5392  "feeGrowthAbove1X128 = feeGrowthGlobal1X128 - upperFeeGrowthOutside1X128"
                    var_feeGrowthAbove1X128_16883 := expr_16917
                    let expr_16918 := expr_16917
                    /// @src 69:5012:5411  "if (tickCurrent < tickUpper) {..."
                }
                default {
                    /// @src 69:5085:5111  "upperFeeGrowthOutside0X128"
                    let _608 := var_upperFeeGrowthOutside0X128_16886
                    let expr_16900 := _608
                    /// @src 69:5063:5111  "feeGrowthAbove0X128 = upperFeeGrowthOutside0X128"
                    var_feeGrowthAbove0X128_16880 := expr_16900
                    let expr_16901 := expr_16900
                    /// @src 69:5155:5181  "upperFeeGrowthOutside1X128"
                    let _609 := var_upperFeeGrowthOutside1X128_16888
                    let expr_16904 := _609
                    /// @src 69:5133:5181  "feeGrowthAbove1X128 = upperFeeGrowthOutside1X128"
                    var_feeGrowthAbove1X128_16883 := expr_16904
                    let expr_16905 := expr_16904
                    /// @src 69:5012:5411  "if (tickCurrent < tickUpper) {..."
                }
                /// @src 69:5462:5482  "feeGrowthGlobal0X128"
                let _610 := var_feeGrowthGlobal0X128_16820
                let expr_16924 := _610
                /// @src 69:5485:5504  "feeGrowthBelow0X128"
                let _611 := var_feeGrowthBelow0X128_16836
                let expr_16925 := _611
                /// @src 69:5462:5504  "feeGrowthGlobal0X128 - feeGrowthBelow0X128"
                let expr_16926 := wrapping_sub_t_uint256(expr_16924, expr_16925)

                /// @src 69:5507:5526  "feeGrowthAbove0X128"
                let _612 := var_feeGrowthAbove0X128_16880
                let expr_16927 := _612
                /// @src 69:5462:5526  "feeGrowthGlobal0X128 - feeGrowthBelow0X128 - feeGrowthAbove0X128"
                let expr_16928 := wrapping_sub_t_uint256(expr_16926, expr_16927)

                /// @src 69:5439:5526  "feeGrowthInside0X128 = feeGrowthGlobal0X128 - feeGrowthBelow0X128 - feeGrowthAbove0X128"
                var_feeGrowthInside0X128_16807 := expr_16928
                let expr_16929 := expr_16928
                /// @src 69:5563:5583  "feeGrowthGlobal1X128"
                let _613 := var_feeGrowthGlobal1X128_16828
                let expr_16932 := _613
                /// @src 69:5586:5605  "feeGrowthBelow1X128"
                let _614 := var_feeGrowthBelow1X128_16839
                let expr_16933 := _614
                /// @src 69:5563:5605  "feeGrowthGlobal1X128 - feeGrowthBelow1X128"
                let expr_16934 := wrapping_sub_t_uint256(expr_16932, expr_16933)

                /// @src 69:5608:5627  "feeGrowthAbove1X128"
                let _615 := var_feeGrowthAbove1X128_16883
                let expr_16935 := _615
                /// @src 69:5563:5627  "feeGrowthGlobal1X128 - feeGrowthBelow1X128 - feeGrowthAbove1X128"
                let expr_16936 := wrapping_sub_t_uint256(expr_16934, expr_16935)

                /// @src 69:5540:5627  "feeGrowthInside1X128 = feeGrowthGlobal1X128 - feeGrowthBelow1X128 - feeGrowthAbove1X128"
                var_feeGrowthInside1X128_16809 := expr_16936
                let expr_16937 := expr_16936

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            /// @ast-id 15131
            /// @src 61:21806:22194  "function getUtilizationRatio(SqrtPerpAssetStatus memory _assetStatus) internal pure returns (uint256) {..."
            function fun_getUtilizationRatio_15131(var__assetStatus_15097_mpos) -> var__15100 {
                /// @src 61:21899:21906  "uint256"
                let zero_t_uint256_616 := zero_value_for_split_t_uint256()
                var__15100 := zero_t_uint256_616

                /// @src 61:21922:21934  "_assetStatus"
                let _617_mpos := var__assetStatus_15097_mpos
                let expr_15102_mpos := _617_mpos
                /// @src 61:21922:21946  "_assetStatus.totalAmount"
                let _618 := add(expr_15102_mpos, 128)
                let _619 := read_from_memoryt_uint256(_618)
                let expr_15103 := _619
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
                let _620_mpos := var__assetStatus_15097_mpos
                let expr_15112_mpos := _620_mpos
                /// @src 61:22018:22045  "_assetStatus.borrowedAmount"
                let _621 := add(expr_15112_mpos, 160)
                let _622 := read_from_memoryt_uint256(_621)
                let expr_15113 := _622
                /// @src 61:22048:22057  "Constants"
                let expr_15114_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 61:22048:22061  "Constants.ONE"
                let expr_15115 := constant_ONE_30273()
                /// @src 61:22018:22061  "_assetStatus.borrowedAmount * Constants.ONE"
                let expr_15116 := checked_mul_t_uint256(expr_15113, expr_15115)

                /// @src 61:22064:22076  "_assetStatus"
                let _623_mpos := var__assetStatus_15097_mpos
                let expr_15117_mpos := _623_mpos
                /// @src 61:22064:22088  "_assetStatus.totalAmount"
                let _624 := add(expr_15117_mpos, 128)
                let _625 := read_from_memoryt_uint256(_624)
                let expr_15118 := _625
                /// @src 61:22018:22088  "_assetStatus.borrowedAmount * Constants.ONE / _assetStatus.totalAmount"
                let expr_15119 := checked_div_t_uint256(expr_15116, expr_15118)

                /// @src 61:21996:22088  "uint256 utilization = _assetStatus.borrowedAmount * Constants.ONE / _assetStatus.totalAmount"
                let var_utilization_15111 := expr_15119
                /// @src 61:22103:22114  "utilization"
                let _626 := var_utilization_15111
                let expr_15121 := _626
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
                let _627 := var_utilization_15111
                let expr_15128 := _627
                /// @src 61:22169:22187  "return utilization"
                var__15100 := expr_15128
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

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
                let _630 := convert_t_rational_100000000000000000_by_1_to_t_uint256(expr_30316)

                ret := _630
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
                let zero_t_uint256_628 := zero_value_for_split_t_uint256()
                var__30327 := zero_t_uint256_628

                /// @src 64:437:448  "utilization"
                let _629 := var_utilization_30324
                let expr_30329 := _629
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
                let _631 := var_utilization_30324
                let expr_30339 := _631
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
                let _632 := var_b_30338
                let expr_30346 := _632
                /// @src 64:592:600  "1600 * b"
                let expr_30347 := checked_mul_t_uint256(convert_t_rational_1600_by_1_to_t_uint256(expr_30345), expr_30346)

                /// @src 64:603:604  "b"
                let _633 := var_b_30338
                let expr_30348 := _633
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
            /// @src 73:468:2708  "library ReaderLogic {..."

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
                let zero_t_uint256_634 := zero_value_for_split_t_uint256()
                var_result_32393 := zero_t_uint256_634

                /// @src 26:1226:1239  "uint256 prod0"
                let var_prod0_32396
                let zero_t_uint256_635 := zero_value_for_split_t_uint256()
                var_prod0_32396 := zero_t_uint256_635
                /// @src 26:1298:1311  "uint256 prod1"
                let var_prod1_32399
                let zero_t_uint256_636 := zero_value_for_split_t_uint256()
                var_prod1_32399 := zero_t_uint256_636
                /// @src 26:1369:1535  "assembly {..."
                {
                    let usr$mm := mulmod(var_a_32386, var_b_32388, not(0))
                    var_prod0_32396 := mul(var_a_32386, var_b_32388)
                    var_prod1_32399 := sub(sub(usr$mm, var_prod0_32396), lt(usr$mm, var_prod0_32396))
                }
                /// @src 26:1615:1620  "prod1"
                let _637 := var_prod1_32399
                let expr_32402 := _637
                /// @src 26:1624:1625  "0"
                let expr_32403 := 0x00
                /// @src 26:1615:1625  "prod1 == 0"
                let expr_32404 := eq(cleanup_t_uint256(expr_32402), convert_t_rational_0_by_1_to_t_uint256(expr_32403))
                /// @src 26:1611:1814  "if (prod1 == 0) {..."
                if expr_32404 {
                    /// @src 26:1653:1664  "denominator"
                    let _638 := var_denominator_32390
                    let expr_32406 := _638
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
                    let _639 := var_result_32393
                    let expr_32412 := _639
                    /// @src 26:1786:1799  "return result"
                    var_result_32393 := expr_32412
                    leave
                    /// @src 26:1611:1814  "if (prod1 == 0) {..."
                }
                /// @src 26:1939:1950  "denominator"
                let _640 := var_denominator_32390
                let expr_32417 := _640
                /// @src 26:1953:1958  "prod1"
                let _641 := var_prod1_32399
                let expr_32418 := _641
                /// @src 26:1939:1958  "denominator > prod1"
                let expr_32419 := gt(cleanup_t_uint256(expr_32417), cleanup_t_uint256(expr_32418))
                /// @src 26:1931:1959  "require(denominator > prod1)"
                require_helper(expr_32419)
                /// @src 26:2260:2277  "uint256 remainder"
                let var_remainder_32423
                let zero_t_uint256_642 := zero_value_for_split_t_uint256()
                var_remainder_32423 := zero_t_uint256_642
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
                let _643 := var_denominator_32390
                let expr_32430 := _643
                /// @src 26:2752:2767  "0 - denominator"
                let expr_32431 := wrapping_sub_t_uint256(convert_t_rational_0_by_1_to_t_uint256(expr_32429), expr_32430)

                /// @src 26:2751:2768  "(0 - denominator)"
                let expr_32432 := expr_32431
                /// @src 26:2771:2782  "denominator"
                let _644 := var_denominator_32390
                let expr_32433 := _644
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
                let _645 := var_prod1_32399
                let expr_32440 := _645
                /// @src 26:3367:3371  "twos"
                let _646 := var_twos_32428
                let expr_32441 := _646
                /// @src 26:3359:3371  "prod1 * twos"
                let expr_32442 := wrapping_mul_t_uint256(expr_32440, expr_32441)

                /// @src 26:3350:3371  "prod0 |= prod1 * twos"
                let _647 := var_prod0_32396
                let expr_32443 := or(_647, expr_32442)

                var_prod0_32396 := expr_32443
                /// @src 26:3744:3745  "3"
                let expr_32447 := 0x03
                /// @src 26:3748:3759  "denominator"
                let _648 := var_denominator_32390
                let expr_32448 := _648
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
                let _649 := var_denominator_32390
                let expr_32456 := _649
                /// @src 26:4020:4023  "inv"
                let _650 := var_inv_32446
                let expr_32457 := _650
                /// @src 26:4006:4023  "denominator * inv"
                let expr_32458 := wrapping_mul_t_uint256(expr_32456, expr_32457)

                /// @src 26:4002:4023  "2 - denominator * inv"
                let expr_32459 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32455), expr_32458)

                /// @src 26:3995:4023  "inv *= 2 - denominator * inv"
                let _651 := var_inv_32446
                let expr_32460 := wrapping_mul_t_uint256(_651, expr_32459)

                var_inv_32446 := expr_32460
                /// @src 26:4064:4065  "2"
                let expr_32463 := 0x02
                /// @src 26:4068:4079  "denominator"
                let _652 := var_denominator_32390
                let expr_32464 := _652
                /// @src 26:4082:4085  "inv"
                let _653 := var_inv_32446
                let expr_32465 := _653
                /// @src 26:4068:4085  "denominator * inv"
                let expr_32466 := wrapping_mul_t_uint256(expr_32464, expr_32465)

                /// @src 26:4064:4085  "2 - denominator * inv"
                let expr_32467 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32463), expr_32466)

                /// @src 26:4057:4085  "inv *= 2 - denominator * inv"
                let _654 := var_inv_32446
                let expr_32468 := wrapping_mul_t_uint256(_654, expr_32467)

                var_inv_32446 := expr_32468
                /// @src 26:4127:4128  "2"
                let expr_32471 := 0x02
                /// @src 26:4131:4142  "denominator"
                let _655 := var_denominator_32390
                let expr_32472 := _655
                /// @src 26:4145:4148  "inv"
                let _656 := var_inv_32446
                let expr_32473 := _656
                /// @src 26:4131:4148  "denominator * inv"
                let expr_32474 := wrapping_mul_t_uint256(expr_32472, expr_32473)

                /// @src 26:4127:4148  "2 - denominator * inv"
                let expr_32475 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32471), expr_32474)

                /// @src 26:4120:4148  "inv *= 2 - denominator * inv"
                let _657 := var_inv_32446
                let expr_32476 := wrapping_mul_t_uint256(_657, expr_32475)

                var_inv_32446 := expr_32476
                /// @src 26:4190:4191  "2"
                let expr_32479 := 0x02
                /// @src 26:4194:4205  "denominator"
                let _658 := var_denominator_32390
                let expr_32480 := _658
                /// @src 26:4208:4211  "inv"
                let _659 := var_inv_32446
                let expr_32481 := _659
                /// @src 26:4194:4211  "denominator * inv"
                let expr_32482 := wrapping_mul_t_uint256(expr_32480, expr_32481)

                /// @src 26:4190:4211  "2 - denominator * inv"
                let expr_32483 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32479), expr_32482)

                /// @src 26:4183:4211  "inv *= 2 - denominator * inv"
                let _660 := var_inv_32446
                let expr_32484 := wrapping_mul_t_uint256(_660, expr_32483)

                var_inv_32446 := expr_32484
                /// @src 26:4253:4254  "2"
                let expr_32487 := 0x02
                /// @src 26:4257:4268  "denominator"
                let _661 := var_denominator_32390
                let expr_32488 := _661
                /// @src 26:4271:4274  "inv"
                let _662 := var_inv_32446
                let expr_32489 := _662
                /// @src 26:4257:4274  "denominator * inv"
                let expr_32490 := wrapping_mul_t_uint256(expr_32488, expr_32489)

                /// @src 26:4253:4274  "2 - denominator * inv"
                let expr_32491 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32487), expr_32490)

                /// @src 26:4246:4274  "inv *= 2 - denominator * inv"
                let _663 := var_inv_32446
                let expr_32492 := wrapping_mul_t_uint256(_663, expr_32491)

                var_inv_32446 := expr_32492
                /// @src 26:4317:4318  "2"
                let expr_32495 := 0x02
                /// @src 26:4321:4332  "denominator"
                let _664 := var_denominator_32390
                let expr_32496 := _664
                /// @src 26:4335:4338  "inv"
                let _665 := var_inv_32446
                let expr_32497 := _665
                /// @src 26:4321:4338  "denominator * inv"
                let expr_32498 := wrapping_mul_t_uint256(expr_32496, expr_32497)

                /// @src 26:4317:4338  "2 - denominator * inv"
                let expr_32499 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32495), expr_32498)

                /// @src 26:4310:4338  "inv *= 2 - denominator * inv"
                let _666 := var_inv_32446
                let expr_32500 := wrapping_mul_t_uint256(_666, expr_32499)

                var_inv_32446 := expr_32500
                /// @src 26:4813:4818  "prod0"
                let _667 := var_prod0_32396
                let expr_32503 := _667
                /// @src 26:4821:4824  "inv"
                let _668 := var_inv_32446
                let expr_32504 := _668
                /// @src 26:4813:4824  "prod0 * inv"
                let expr_32505 := wrapping_mul_t_uint256(expr_32503, expr_32504)

                /// @src 26:4804:4824  "result = prod0 * inv"
                var_result_32393 := expr_32505
                let expr_32506 := expr_32505
                /// @src 26:4845:4851  "result"
                let _669 := var_result_32393
                let expr_32508 := _669
                /// @src 26:4838:4851  "return result"
                var_result_32393 := expr_32508
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            /// @ast-id 31668
            /// @src 66:7920:8410  "function getUtilizationRatio(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getUtilizationRatio_31668(var_tokenState_31626_mpos) -> var__31629 {
                /// @src 66:8003:8010  "uint256"
                let zero_t_uint256_670 := zero_value_for_split_t_uint256()
                var__31629 := zero_t_uint256_670

                /// @src 66:8026:8036  "tokenState"
                let _671_mpos := var_tokenState_31626_mpos
                let expr_31631_mpos := _671_mpos
                /// @src 66:8026:8059  "tokenState.totalCompoundDeposited"
                let _672 := add(expr_31631_mpos, 0)
                let _673 := read_from_memoryt_uint256(_672)
                let expr_31632 := _673
                /// @src 66:8063:8064  "0"
                let expr_31633 := 0x00
                /// @src 66:8026:8064  "tokenState.totalCompoundDeposited == 0"
                let expr_31634 := eq(cleanup_t_uint256(expr_31632), convert_t_rational_0_by_1_to_t_uint256(expr_31633))
                /// @src 66:8026:8104  "tokenState.totalCompoundDeposited == 0 && tokenState.totalNormalDeposited == 0"
                let expr_31639 := expr_31634
                if expr_31639 {
                    /// @src 66:8068:8078  "tokenState"
                    let _674_mpos := var_tokenState_31626_mpos
                    let expr_31635_mpos := _674_mpos
                    /// @src 66:8068:8099  "tokenState.totalNormalDeposited"
                    let _675 := add(expr_31635_mpos, 32)
                    let _676 := read_from_memoryt_uint256(_675)
                    let expr_31636 := _676
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
                let _677_mpos := var_tokenState_31626_mpos
                let expr_31649_mpos := _677_mpos
                /// @src 66:8213:8242  "getTotalDebtValue(tokenState)"
                let expr_31650 := fun_getTotalDebtValue_31606(expr_31649_mpos)
                /// @src 66:8244:8253  "Constants"
                let expr_31651_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:8244:8257  "Constants.ONE"
                let expr_31652 := constant_ONE_30273()
                /// @src 66:8283:8293  "tokenState"
                let _678_mpos := var_tokenState_31626_mpos
                let expr_31654_mpos := _678_mpos
                /// @src 66:8259:8294  "getTotalCollateralValue(tokenState)"
                let expr_31655 := fun_getTotalCollateralValue_31594(expr_31654_mpos)
                /// @src 66:8171:8304  "FixedPointMathLib.mulDivDown(..."
                let expr_31656 := fun_mulDivDown_36976(expr_31650, expr_31652, expr_31655)
                /// @src 66:8149:8304  "uint256 utilization = FixedPointMathLib.mulDivDown(..."
                let var_utilization_31645 := expr_31656
                /// @src 66:8319:8330  "utilization"
                let _679 := var_utilization_31645
                let expr_31658 := _679
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
                let _680 := var_utilization_31645
                let expr_31665 := _680
                /// @src 66:8385:8403  "return utilization"
                var__31629 := expr_31665
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            /// @src 59:225:261  "uint256 private constant _ONE = 1e18"
            function constant__ONE_13450() -> ret {
                /// @src 59:257:261  "1e18"
                let expr_13449 := 0x0de0b6b3a7640000
                let _695 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_13449)

                ret := _695
            }

            /// @ast-id 13510
            /// @src 59:268:780  "function calculateInterestRate(IRMParams memory irmParams, uint256 utilizationRatio)..."
            function fun_calculateInterestRate_13510(var_irmParams_13453_mpos, var_utilizationRatio_13455) -> var__13458 {
                /// @src 59:400:407  "uint256"
                let zero_t_uint256_681 := zero_value_for_split_t_uint256()
                var__13458 := zero_t_uint256_681

                /// @src 59:436:445  "irmParams"
                let _682_mpos := var_irmParams_13453_mpos
                let expr_13462_mpos := _682_mpos
                /// @src 59:436:454  "irmParams.baseRate"
                let _683 := add(expr_13462_mpos, 0)
                let _684 := read_from_memoryt_uint256(_683)
                let expr_13463 := _684
                /// @src 59:423:454  "uint256 ir = irmParams.baseRate"
                let var_ir_13461 := expr_13463
                /// @src 59:469:485  "utilizationRatio"
                let _685 := var_utilizationRatio_13455
                let expr_13465 := _685
                /// @src 59:489:498  "irmParams"
                let _686_mpos := var_irmParams_13453_mpos
                let expr_13466_mpos := _686_mpos
                /// @src 59:489:507  "irmParams.kinkRate"
                let _687 := add(expr_13466_mpos, 32)
                let _688 := read_from_memoryt_uint256(_687)
                let expr_13467 := _688
                /// @src 59:469:507  "utilizationRatio <= irmParams.kinkRate"
                let expr_13468 := iszero(gt(cleanup_t_uint256(expr_13465), cleanup_t_uint256(expr_13467)))
                /// @src 59:465:754  "if (utilizationRatio <= irmParams.kinkRate) {..."
                switch expr_13468
                case 0 {
                    /// @src 59:611:620  "irmParams"
                    let _689_mpos := var_irmParams_13453_mpos
                    let expr_13481_mpos := _689_mpos
                    /// @src 59:611:629  "irmParams.kinkRate"
                    let _690 := add(expr_13481_mpos, 32)
                    let _691 := read_from_memoryt_uint256(_690)
                    let expr_13482 := _691
                    /// @src 59:632:641  "irmParams"
                    let _692_mpos := var_irmParams_13453_mpos
                    let expr_13483_mpos := _692_mpos
                    /// @src 59:632:648  "irmParams.slope1"
                    let _693 := add(expr_13483_mpos, 64)
                    let _694 := read_from_memoryt_uint256(_693)
                    let expr_13484 := _694
                    /// @src 59:611:648  "irmParams.kinkRate * irmParams.slope1"
                    let expr_13485 := checked_mul_t_uint256(expr_13482, expr_13484)

                    /// @src 59:610:649  "(irmParams.kinkRate * irmParams.slope1)"
                    let expr_13486 := expr_13485
                    /// @src 59:652:656  "_ONE"
                    let expr_13487 := constant__ONE_13450()
                    /// @src 59:610:656  "(irmParams.kinkRate * irmParams.slope1) / _ONE"
                    let expr_13488 := checked_div_t_uint256(expr_13486, expr_13487)

                    /// @src 59:604:656  "ir += (irmParams.kinkRate * irmParams.slope1) / _ONE"
                    let _696 := var_ir_13461
                    let expr_13489 := checked_add_t_uint256(_696, expr_13488)

                    var_ir_13461 := expr_13489
                    /// @src 59:677:686  "irmParams"
                    let _697_mpos := var_irmParams_13453_mpos
                    let expr_13492_mpos := _697_mpos
                    /// @src 59:677:693  "irmParams.slope2"
                    let _698 := add(expr_13492_mpos, 96)
                    let _699 := read_from_memoryt_uint256(_698)
                    let expr_13493 := _699
                    /// @src 59:697:713  "utilizationRatio"
                    let _700 := var_utilizationRatio_13455
                    let expr_13494 := _700
                    /// @src 59:716:725  "irmParams"
                    let _701_mpos := var_irmParams_13453_mpos
                    let expr_13495_mpos := _701_mpos
                    /// @src 59:716:734  "irmParams.kinkRate"
                    let _702 := add(expr_13495_mpos, 32)
                    let _703 := read_from_memoryt_uint256(_702)
                    let expr_13496 := _703
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
                    let _704 := var_ir_13461
                    let expr_13503 := checked_add_t_uint256(_704, expr_13502)

                    var_ir_13461 := expr_13503
                    /// @src 59:465:754  "if (utilizationRatio <= irmParams.kinkRate) {..."
                }
                default {
                    /// @src 59:530:546  "utilizationRatio"
                    let _705 := var_utilizationRatio_13455
                    let expr_13470 := _705
                    /// @src 59:549:558  "irmParams"
                    let _706_mpos := var_irmParams_13453_mpos
                    let expr_13471_mpos := _706_mpos
                    /// @src 59:549:565  "irmParams.slope1"
                    let _707 := add(expr_13471_mpos, 64)
                    let _708 := read_from_memoryt_uint256(_707)
                    let expr_13472 := _708
                    /// @src 59:530:565  "utilizationRatio * irmParams.slope1"
                    let expr_13473 := checked_mul_t_uint256(expr_13470, expr_13472)

                    /// @src 59:529:566  "(utilizationRatio * irmParams.slope1)"
                    let expr_13474 := expr_13473
                    /// @src 59:569:573  "_ONE"
                    let expr_13475 := constant__ONE_13450()
                    /// @src 59:529:573  "(utilizationRatio * irmParams.slope1) / _ONE"
                    let expr_13476 := checked_div_t_uint256(expr_13474, expr_13475)

                    /// @src 59:523:573  "ir += (utilizationRatio * irmParams.slope1) / _ONE"
                    let _709 := var_ir_13461
                    let expr_13477 := checked_add_t_uint256(_709, expr_13476)

                    var_ir_13461 := expr_13477
                    /// @src 59:465:754  "if (utilizationRatio <= irmParams.kinkRate) {..."
                }
                /// @src 59:771:773  "ir"
                let _710 := var_ir_13461
                let expr_13507 := _710
                /// @src 59:764:773  "return ir"
                var__13458 := expr_13507
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

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
                let zero_t_uint256_711 := zero_value_for_split_t_uint256()
                var__31489 := zero_t_uint256_711

                /// @src 66:6305:6315  "tokenState"
                let _712_slot := var_tokenState_31482_slot
                let expr_31491_slot := _712_slot
                /// @src 66:6305:6338  "tokenState.totalCompoundDeposited"
                let _713 := add(expr_31491_slot, 0)
                let _714 := read_from_storage_split_offset_0_t_uint256(_713)
                let expr_31492 := _714
                /// @src 66:6342:6343  "0"
                let expr_31493 := 0x00
                /// @src 66:6305:6343  "tokenState.totalCompoundDeposited == 0"
                let expr_31494 := eq(cleanup_t_uint256(expr_31492), convert_t_rational_0_by_1_to_t_uint256(expr_31493))
                /// @src 66:6305:6383  "tokenState.totalCompoundDeposited == 0 && tokenState.totalNormalDeposited == 0"
                let expr_31499 := expr_31494
                if expr_31499 {
                    /// @src 66:6347:6357  "tokenState"
                    let _715_slot := var_tokenState_31482_slot
                    let expr_31495_slot := _715_slot
                    /// @src 66:6347:6378  "tokenState.totalNormalDeposited"
                    let _716 := add(expr_31495_slot, 1)
                    let _717 := read_from_storage_split_offset_0_t_uint256(_716)
                    let expr_31496 := _717
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
                let _718 := var__interestRate_31484
                let expr_31510 := _718
                /// @src 66:6554:6564  "tokenState"
                let _719_slot := var_tokenState_31482_slot
                let expr_31512_slot := _719_slot
                /// @src 66:6536:6565  "getTotalDebtValue(tokenState)"
                let _720_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31512_slot)
                let expr_31513 := fun_getTotalDebtValue_31606(_720_mpos)
                /// @src 66:6567:6576  "Constants"
                let expr_31514_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:6567:6580  "Constants.ONE"
                let expr_31515 := constant_ONE_30273()
                /// @src 66:6492:6581  "FixedPointMathLib.mulDivDown(_interestRate, getTotalDebtValue(tokenState), Constants.ONE)"
                let expr_31516 := fun_mulDivDown_36976(expr_31510, expr_31513, expr_31515)
                /// @src 66:6595:6609  "_reserveFactor"
                let _721 := var__reserveFactor_31486
                let expr_31517 := _721
                /// @src 66:6623:6626  "100"
                let expr_31518 := 0x64
                /// @src 66:6450:6636  "FixedPointMathLib.mulDivDown(..."
                let _722 := convert_t_uint8_to_t_uint256(expr_31517)
                let _723 := convert_t_rational_100_by_1_to_t_uint256(expr_31518)
                let expr_31519 := fun_mulDivDown_36976(expr_31516, _722, _723)
                /// @src 66:6428:6636  "uint256 protocolFee = FixedPointMathLib.mulDivDown(..."
                let var_protocolFee_31505 := expr_31519
                /// @src 66:6760:6777  "FixedPointMathLib"
                let expr_31523_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:6802:6819  "FixedPointMathLib"
                let expr_31525_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:6848:6861  "_interestRate"
                let _724 := var__interestRate_31484
                let expr_31527 := _724
                /// @src 66:6881:6891  "tokenState"
                let _725_slot := var_tokenState_31482_slot
                let expr_31529_slot := _725_slot
                /// @src 66:6863:6892  "getTotalDebtValue(tokenState)"
                let _726_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31529_slot)
                let expr_31530 := fun_getTotalDebtValue_31606(_726_mpos)
                /// @src 66:6918:6928  "tokenState"
                let _727_slot := var_tokenState_31482_slot
                let expr_31532_slot := _727_slot
                /// @src 66:6894:6929  "getTotalCollateralValue(tokenState)"
                let _728_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31532_slot)
                let expr_31533 := fun_getTotalCollateralValue_31594(_728_mpos)
                /// @src 66:6802:6943  "FixedPointMathLib.mulDivDown(..."
                let expr_31534 := fun_mulDivDown_36976(expr_31527, expr_31530, expr_31533)
                /// @src 66:6957:6960  "100"
                let expr_31535 := 0x64
                /// @src 66:6963:6977  "_reserveFactor"
                let _729 := var__reserveFactor_31486
                let expr_31536 := _729
                /// @src 66:6957:6977  "100 - _reserveFactor"
                let expr_31537 := checked_sub_t_uint8(convert_t_rational_100_by_1_to_t_uint8(expr_31535), expr_31536)

                /// @src 66:6991:6994  "100"
                let expr_31538 := 0x64
                /// @src 66:6760:7004  "FixedPointMathLib.mulDivDown(..."
                let _730 := convert_t_uint8_to_t_uint256(expr_31537)
                let _731 := convert_t_rational_100_by_1_to_t_uint256(expr_31538)
                let expr_31539 := fun_mulDivDown_36976(expr_31534, _730, _731)
                /// @src 66:6731:7004  "uint256 supplyInterestRate = FixedPointMathLib.mulDivDown(..."
                let var_supplyInterestRate_31522 := expr_31539
                /// @src 66:7040:7053  "_interestRate"
                let _732 := var__interestRate_31484
                let expr_31544 := _732
                /// @src 66:7015:7025  "tokenState"
                let _733_slot := var_tokenState_31482_slot
                let expr_31541_slot := _733_slot
                /// @src 66:7015:7036  "tokenState.debtGrowth"
                let _734 := add(expr_31541_slot, 5)
                /// @src 66:7015:7053  "tokenState.debtGrowth += _interestRate"
                let _735 := read_from_storage_split_offset_0_t_uint256(_734)
                let expr_31545 := checked_add_t_uint256(_735, expr_31544)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_734, expr_31545)
                /// @src 66:7100:7117  "FixedPointMathLib"
                let expr_31550_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:7129:7139  "tokenState"
                let _736_slot := var_tokenState_31482_slot
                let expr_31552_slot := _736_slot
                /// @src 66:7129:7151  "tokenState.assetScaler"
                let _737 := add(expr_31552_slot, 3)
                let _738 := read_from_storage_split_offset_0_t_uint256(_737)
                let expr_31553 := _738
                /// @src 66:7153:7162  "Constants"
                let expr_31554_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:7153:7166  "Constants.ONE"
                let expr_31555 := constant_ONE_30273()
                /// @src 66:7169:7187  "supplyInterestRate"
                let _739 := var_supplyInterestRate_31522
                let expr_31556 := _739
                /// @src 66:7153:7187  "Constants.ONE + supplyInterestRate"
                let expr_31557 := checked_add_t_uint256(expr_31555, expr_31556)

                /// @src 66:7189:7198  "Constants"
                let expr_31558_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:7189:7202  "Constants.ONE"
                let expr_31559 := constant_ONE_30273()
                /// @src 66:7100:7203  "FixedPointMathLib.mulDivDown(tokenState.assetScaler, Constants.ONE + supplyInterestRate, Constants.ONE)"
                let expr_31560 := fun_mulDivDown_36976(expr_31553, expr_31557, expr_31559)
                /// @src 66:7063:7073  "tokenState"
                let _740_slot := var_tokenState_31482_slot
                let expr_31547_slot := _740_slot
                /// @src 66:7063:7085  "tokenState.assetScaler"
                let _741 := add(expr_31547_slot, 3)
                /// @src 66:7063:7203  "tokenState.assetScaler =..."
                update_storage_value_offset_0_t_uint256_to_t_uint256(_741, expr_31560)
                let expr_31561 := expr_31560
                /// @src 66:7239:7257  "supplyInterestRate"
                let _742 := var_supplyInterestRate_31522
                let expr_31566 := _742
                /// @src 66:7213:7223  "tokenState"
                let _743_slot := var_tokenState_31482_slot
                let expr_31563_slot := _743_slot
                /// @src 66:7213:7235  "tokenState.assetGrowth"
                let _744 := add(expr_31563_slot, 4)
                /// @src 66:7213:7257  "tokenState.assetGrowth += supplyInterestRate"
                let _745 := read_from_storage_split_offset_0_t_uint256(_744)
                let expr_31567 := checked_add_t_uint256(_745, expr_31566)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_744, expr_31567)
                /// @src 66:7275:7286  "protocolFee"
                let _746 := var_protocolFee_31505
                let expr_31569 := _746
                /// @src 66:7268:7286  "return protocolFee"
                var__31489 := expr_31569
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

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
                let zero_t_uint256_747 := zero_value_for_split_t_uint256()
                var__31451 := zero_t_uint256_747

                /// @src 66:5846:5858  "accountState"
                let _748_mpos := var_accountState_31448_mpos
                let expr_31454_mpos := _748_mpos
                /// @src 66:5846:5873  "accountState.positionAmount"
                let _749 := add(expr_31454_mpos, 0)
                let _750 := read_from_memoryt_int256(_749)
                let expr_31455 := _750
                /// @src 66:5877:5878  "0"
                let expr_31456 := 0x00
                /// @src 66:5846:5878  "accountState.positionAmount <= 0"
                let expr_31457 := iszero(sgt(cleanup_t_int256(expr_31455), convert_t_rational_0_by_1_to_t_int256(expr_31456)))
                /// @src 66:5838:5885  "require(accountState.positionAmount <= 0, \"S1\")"
                require_helper_t_stringliteral_cee6c1efda892dff24010eb4ec902cfd76c2d6ece4afb7a0868714ea3799fe91(expr_31457)
                /// @src 66:5903:5920  "FixedPointMathLib"
                let expr_31461_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:5943:5953  "tokenState"
                let _751_mpos := var_tokenState_31445_mpos
                let expr_31463_mpos := _751_mpos
                /// @src 66:5943:5964  "tokenState.debtGrowth"
                let _752 := add(expr_31463_mpos, 160)
                let _753 := read_from_memoryt_uint256(_752)
                let expr_31464 := _753
                /// @src 66:5967:5979  "accountState"
                let _754_mpos := var_accountState_31448_mpos
                let expr_31465_mpos := _754_mpos
                /// @src 66:5967:5993  "accountState.lastFeeGrowth"
                let _755 := add(expr_31465_mpos, 32)
                let _756 := read_from_memoryt_uint256(_755)
                let expr_31466 := _756
                /// @src 66:5943:5993  "tokenState.debtGrowth - accountState.lastFeeGrowth"
                let expr_31467 := checked_sub_t_uint256(expr_31464, expr_31466)

                /// @src 66:6046:6058  "accountState"
                let _757_mpos := var_accountState_31448_mpos
                let expr_31470_mpos := _757_mpos
                /// @src 66:6046:6073  "accountState.positionAmount"
                let _758 := add(expr_31470_mpos, 0)
                let _759 := read_from_memoryt_int256(_758)
                let expr_31471 := _759
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
            /// @src 73:468:2708  "library ReaderLogic {..."

            /// @ast-id 31442
            /// @src 66:5243:5679  "function getAssetFee(AssetStatus memory tokenState, UserStatus memory accountState)..."
            function fun_getAssetFee_31442(var_tokenState_31409_mpos, var_accountState_31412_mpos) -> var__31415 {
                /// @src 66:5374:5381  "uint256"
                let zero_t_uint256_760 := zero_value_for_split_t_uint256()
                var__31415 := zero_t_uint256_760

                /// @src 66:5405:5417  "accountState"
                let _761_mpos := var_accountState_31412_mpos
                let expr_31418_mpos := _761_mpos
                /// @src 66:5405:5432  "accountState.positionAmount"
                let _762 := add(expr_31418_mpos, 0)
                let _763 := read_from_memoryt_int256(_762)
                let expr_31419 := _763
                /// @src 66:5436:5437  "0"
                let expr_31420 := 0x00
                /// @src 66:5405:5437  "accountState.positionAmount >= 0"
                let expr_31421 := iszero(slt(cleanup_t_int256(expr_31419), convert_t_rational_0_by_1_to_t_int256(expr_31420)))
                /// @src 66:5397:5444  "require(accountState.positionAmount >= 0, \"S1\")"
                require_helper_t_stringliteral_cee6c1efda892dff24010eb4ec902cfd76c2d6ece4afb7a0868714ea3799fe91(expr_31421)
                /// @src 66:5462:5479  "FixedPointMathLib"
                let expr_31425_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:5504:5514  "tokenState"
                let _764_mpos := var_tokenState_31409_mpos
                let expr_31427_mpos := _764_mpos
                /// @src 66:5504:5526  "tokenState.assetGrowth"
                let _765 := add(expr_31427_mpos, 128)
                let _766 := read_from_memoryt_uint256(_765)
                let expr_31428 := _766
                /// @src 66:5529:5541  "accountState"
                let _767_mpos := var_accountState_31412_mpos
                let expr_31429_mpos := _767_mpos
                /// @src 66:5529:5555  "accountState.lastFeeGrowth"
                let _768 := add(expr_31429_mpos, 32)
                let _769 := read_from_memoryt_uint256(_768)
                let expr_31430 := _769
                /// @src 66:5504:5555  "tokenState.assetGrowth - accountState.lastFeeGrowth"
                let expr_31431 := checked_sub_t_uint256(expr_31428, expr_31430)

                /// @src 66:5607:5619  "accountState"
                let _770_mpos := var_accountState_31412_mpos
                let expr_31434_mpos := _770_mpos
                /// @src 66:5607:5634  "accountState.positionAmount"
                let _771 := add(expr_31434_mpos, 0)
                let _772 := read_from_memoryt_int256(_771)
                let expr_31435 := _772
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
            /// @src 73:468:2708  "library ReaderLogic {..."

            function convert_t_uint64_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint64(value)))
            }

            /// @ast-id 34418
            /// @src 60:85:245  "function getRebalanceCacheId(uint256 pairId, uint64 rebalanceId) internal pure returns (uint256) {..."
            function fun_getRebalanceCacheId_34418(var_pairId_34400, var_rebalanceId_34402) -> var__34405 {
                /// @src 60:173:180  "uint256"
                let zero_t_uint256_773 := zero_value_for_split_t_uint256()
                var__34405 := zero_t_uint256_773

                /// @src 60:199:205  "pairId"
                let _774 := var_pairId_34400
                let expr_34407 := _774
                /// @src 60:208:224  "type(uint64).max"
                let expr_34412 := 0xffffffffffffffff
                /// @src 60:199:224  "pairId * type(uint64).max"
                let expr_34413 := checked_mul_t_uint256(expr_34407, convert_t_uint64_to_t_uint256(expr_34412))

                /// @src 60:227:238  "rebalanceId"
                let _775 := var_rebalanceId_34402
                let expr_34414 := _775
                /// @src 60:199:238  "pairId * type(uint64).max + rebalanceId"
                let expr_34415 := checked_add_t_uint256(expr_34413, convert_t_uint64_to_t_uint256(expr_34414))

                /// @src 60:192:238  "return pairId * type(uint64).max + rebalanceId"
                var__34405 := expr_34415
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            /// @ast-id 32143
            /// @src 79:381:484  "function abs(int256 x) internal pure returns (uint256) {..."
            function fun_abs_32143(var_x_32126) -> var__32129 {
                /// @src 79:427:434  "uint256"
                let zero_t_uint256_776 := zero_value_for_split_t_uint256()
                var__32129 := zero_t_uint256_776

                /// @src 79:461:462  "x"
                let _777 := var_x_32126
                let expr_32133 := _777
                /// @src 79:466:467  "0"
                let expr_32134 := 0x00
                /// @src 79:461:467  "x >= 0"
                let expr_32135 := iszero(slt(cleanup_t_int256(expr_32133), convert_t_rational_0_by_1_to_t_int256(expr_32134)))
                /// @src 79:461:476  "x >= 0 ? x : -x"
                let expr_32139
                switch expr_32135
                case 0 {
                    /// @src 79:475:476  "x"
                    let _778 := var_x_32126
                    let expr_32137 := _778
                    /// @src 79:474:476  "-x"
                    let expr_32138 := negate_t_int256(expr_32137)
                    /// @src 79:461:476  "x >= 0 ? x : -x"
                    expr_32139 := expr_32138
                }
                default {
                    /// @src 79:470:471  "x"
                    let _779 := var_x_32126
                    let expr_32136 := _779
                    /// @src 79:461:476  "x >= 0 ? x : -x"
                    expr_32139 := expr_32136
                }
                /// @src 79:453:477  "uint256(x >= 0 ? x : -x)"
                let expr_32140 := convert_t_int256_to_t_uint256(expr_32139)
                /// @src 79:446:477  "return uint256(x >= 0 ? x : -x)"
                var__32129 := expr_32140
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            /// @ast-id 32330
            /// @src 79:1390:1741  "function mulDivDownInt256(int256 x, uint256 y, uint256 z) internal pure returns (int256) {..."
            function fun_mulDivDownInt256_32330(var_x_32281, var_y_32283, var_z_32285) -> var__32288 {
                /// @src 79:1471:1477  "int256"
                let zero_t_int256_780 := zero_value_for_split_t_int256()
                var__32288 := zero_t_int256_780

                /// @src 79:1493:1494  "x"
                let _781 := var_x_32281
                let expr_32290 := _781
                /// @src 79:1498:1499  "0"
                let expr_32291 := 0x00
                /// @src 79:1493:1499  "x == 0"
                let expr_32292 := eq(cleanup_t_int256(expr_32290), convert_t_rational_0_by_1_to_t_int256(expr_32291))
                /// @src 79:1489:1735  "if (x == 0) {..."
                switch expr_32292
                case 0 {
                    /// @src 79:1544:1545  "x"
                    let _782 := var_x_32281
                    let expr_32296 := _782
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
                        let _783 := var_x_32281
                        let expr_32316 := _783
                        /// @src 79:1703:1705  "-x"
                        let expr_32317 := negate_t_int256(expr_32316)
                        /// @src 79:1695:1706  "uint256(-x)"
                        let expr_32318 := convert_t_int256_to_t_uint256(expr_32317)
                        /// @src 79:1708:1709  "y"
                        let _784 := var_y_32283
                        let expr_32319 := _784
                        /// @src 79:1711:1712  "z"
                        let _785 := var_z_32285
                        let expr_32320 := _785
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
                        let _786 := var_x_32281
                        let expr_32303 := _786
                        /// @src 79:1601:1611  "uint256(x)"
                        let expr_32304 := convert_t_int256_to_t_uint256(expr_32303)
                        /// @src 79:1613:1614  "y"
                        let _787 := var_y_32283
                        let expr_32305 := _787
                        /// @src 79:1616:1617  "z"
                        let _788 := var_z_32285
                        let expr_32306 := _788
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
            /// @src 73:468:2708  "library ReaderLogic {..."

            /// @ast-id 32279
            /// @src 79:1043:1384  "function fullMulDivDownInt256(int256 x, uint256 y, uint256 z) internal pure returns (int256) {..."
            function fun_fullMulDivDownInt256_32279(var_x_32230, var_y_32232, var_z_32234) -> var__32237 {
                /// @src 79:1128:1134  "int256"
                let zero_t_int256_789 := zero_value_for_split_t_int256()
                var__32237 := zero_t_int256_789

                /// @src 79:1150:1151  "x"
                let _790 := var_x_32230
                let expr_32239 := _790
                /// @src 79:1155:1156  "0"
                let expr_32240 := 0x00
                /// @src 79:1150:1156  "x == 0"
                let expr_32241 := eq(cleanup_t_int256(expr_32239), convert_t_rational_0_by_1_to_t_int256(expr_32240))
                /// @src 79:1146:1378  "if (x == 0) {..."
                switch expr_32241
                case 0 {
                    /// @src 79:1201:1202  "x"
                    let _791 := var_x_32230
                    let expr_32245 := _791
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
                        let _792 := var_x_32230
                        let expr_32265 := _792
                        /// @src 79:1346:1348  "-x"
                        let expr_32266 := negate_t_int256(expr_32265)
                        /// @src 79:1338:1349  "uint256(-x)"
                        let expr_32267 := convert_t_int256_to_t_uint256(expr_32266)
                        /// @src 79:1351:1352  "y"
                        let _793 := var_y_32232
                        let expr_32268 := _793
                        /// @src 79:1354:1355  "z"
                        let _794 := var_z_32234
                        let expr_32269 := _794
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
                        let _795 := var_x_32230
                        let expr_32252 := _795
                        /// @src 79:1245:1255  "uint256(x)"
                        let expr_32253 := convert_t_int256_to_t_uint256(expr_32252)
                        /// @src 79:1257:1258  "y"
                        let _796 := var_y_32232
                        let expr_32254 := _796
                        /// @src 79:1260:1261  "z"
                        let _797 := var_z_32234
                        let expr_32255 := _797
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
            /// @src 73:468:2708  "library ReaderLogic {..."

            function zero_value_for_split_t_uint160() -> ret {
                ret := 0
            }

            function cleanup_t_rational_1800_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1800_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1800_by_1(value)))
            }

            /// @src 69:342:395  "uint256 internal constant _ORACLE_PERIOD = 30 minutes"
            function constant__ORACLE_PERIOD_16478() -> ret {
                /// @src 69:385:395  "30 minutes"
                let expr_16477 := 0x0708
                let _800 := convert_t_rational_1800_by_1_to_t_uint256(expr_16477)

                ret := _800
            }

            /// @ast-id 16514
            /// @src 69:651:848  "function getSqrtTWAP(address uniswapPoolAddress) internal view returns (uint160 sqrtTwapX96) {..."
            function fun_getSqrtTWAP_16514(var_uniswapPoolAddress_16498) -> var_sqrtTwapX96_16501 {
                /// @src 69:723:742  "uint160 sqrtTwapX96"
                let zero_t_uint160_798 := zero_value_for_split_t_uint160()
                var_sqrtTwapX96_16501 := zero_t_uint160_798

                /// @src 69:805:823  "uniswapPoolAddress"
                let _799 := var_uniswapPoolAddress_16498
                let expr_16507 := _799
                /// @src 69:790:824  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16508_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16507)
                /// @src 69:826:840  "_ORACLE_PERIOD"
                let expr_16509 := constant__ORACLE_PERIOD_16478()
                /// @src 69:771:841  "callUniswapObserve(IUniswapV3Pool(uniswapPoolAddress), _ORACLE_PERIOD)"
                let expr_16510_component_1, expr_16510_component_2 := fun_callUniswapObserve_16744(expr_16508_address, expr_16509)
                /// @src 69:754:841  "(sqrtTwapX96,) = callUniswapObserve(IUniswapV3Pool(uniswapPoolAddress), _ORACLE_PERIOD)"
                var_sqrtTwapX96_16501 := expr_16510_component_1

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

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
                let _804 := convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(expr_30296)

                ret := _804
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
                let _805 := convert_t_rational_96_by_1_to_t_uint8(expr_30293)

                ret := _805
            }

            function shift_left_dynamic(bits, value) -> newValue {
                newValue :=

                shl(bits, value)

            }

            function shift_left_t_uint256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint256(shift_left_dynamic(bits, cleanup_t_uint256(value)))
            }

            function convert_t_uint256_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint256(value)))
            }

            /// @ast-id 16543
            /// @src 69:904:1180  "function convertSqrtPrice(uint160 sqrtPriceX96, bool isQuoteZero) internal pure returns (uint160) {..."
            function fun_convertSqrtPrice_16543(var_sqrtPriceX96_16517, var_isQuoteZero_16519) -> var__16522 {
                /// @src 69:993:1000  "uint160"
                let zero_t_uint160_801 := zero_value_for_split_t_uint160()
                var__16522 := zero_t_uint160_801

                /// @src 69:1016:1027  "isQuoteZero"
                let _802 := var_isQuoteZero_16519
                let expr_16524 := _802
                /// @src 69:1012:1174  "if (isQuoteZero) {..."
                switch expr_16524
                case 0 {
                    /// @src 69:1151:1163  "sqrtPriceX96"
                    let _803 := var_sqrtPriceX96_16517
                    let expr_16538 := _803
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
                    let _806 := var_sqrtPriceX96_16517
                    let expr_16533 := _806
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
            /// @src 73:468:2708  "library ReaderLogic {..."

            function cleanup_t_rational_100000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_100000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_100000000_by_1(value)))
            }

            /// @src 63:667:713  "uint256 internal constant RISK_RATIO_ONE = 1e8"
            function constant_RISK_RATIO_ONE_15807() -> ret {
                /// @src 63:710:713  "1e8"
                let expr_15806 := 0x05f5e100
                let _810 := convert_t_rational_100000000_by_1_to_t_uint256(expr_15806)

                ret := _810
            }

            /// @ast-id 16387
            /// @src 63:6319:7563  "function calculateMinValue(uint256 _sqrtPrice, PositionParams memory _positionParams, uint256 _riskRatio)..."
            function fun_calculateMinValue_16387(var__sqrtPrice_16263, var__positionParams_16266_mpos, var__riskRatio_16268) -> var_minValue_16271 {
                /// @src 63:6472:6487  "int256 minValue"
                let zero_t_int256_807 := zero_value_for_split_t_int256()
                var_minValue_16271 := zero_t_int256_807

                /// @src 63:6514:6530  "type(int256).max"
                let expr_16278 := 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                /// @src 63:6503:6530  "minValue = type(int256).max"
                var_minValue_16271 := expr_16278
                let expr_16279 := expr_16278
                /// @src 63:6562:6572  "_sqrtPrice"
                let _808 := var__sqrtPrice_16263
                let expr_16283 := _808
                /// @src 63:6575:6585  "_riskRatio"
                let _809 := var__riskRatio_16268
                let expr_16284 := _809
                /// @src 63:6562:6585  "_sqrtPrice * _riskRatio"
                let expr_16285 := checked_mul_t_uint256(expr_16283, expr_16284)

                /// @src 63:6588:6602  "RISK_RATIO_ONE"
                let expr_16286 := constant_RISK_RATIO_ONE_15807()
                /// @src 63:6562:6602  "_sqrtPrice * _riskRatio / RISK_RATIO_ONE"
                let expr_16287 := checked_div_t_uint256(expr_16285, expr_16286)

                /// @src 63:6541:6602  "uint256 upperPrice = _sqrtPrice * _riskRatio / RISK_RATIO_ONE"
                let var_upperPrice_16282 := expr_16287
                /// @src 63:6633:6643  "_sqrtPrice"
                let _811 := var__sqrtPrice_16263
                let expr_16291 := _811
                /// @src 63:6646:6660  "RISK_RATIO_ONE"
                let expr_16292 := constant_RISK_RATIO_ONE_15807()
                /// @src 63:6633:6660  "_sqrtPrice * RISK_RATIO_ONE"
                let expr_16293 := checked_mul_t_uint256(expr_16291, expr_16292)

                /// @src 63:6663:6673  "_riskRatio"
                let _812 := var__riskRatio_16268
                let expr_16294 := _812
                /// @src 63:6633:6673  "_sqrtPrice * RISK_RATIO_ONE / _riskRatio"
                let expr_16295 := checked_div_t_uint256(expr_16293, expr_16294)

                /// @src 63:6612:6673  "uint256 lowerPrice = _sqrtPrice * RISK_RATIO_ONE / _riskRatio"
                let var_lowerPrice_16290 := expr_16295
                /// @src 63:6724:6734  "upperPrice"
                let _813 := var_upperPrice_16282
                let expr_16300 := _813
                /// @src 63:6736:6751  "_positionParams"
                let _814_mpos := var__positionParams_16266_mpos
                let expr_16301_mpos := _814_mpos
                /// @src 63:6709:6752  "calculateValue(upperPrice, _positionParams)"
                let expr_16302 := fun_calculateValue_16429(expr_16300, expr_16301_mpos)
                /// @src 63:6698:6752  "int256 v = calculateValue(upperPrice, _positionParams)"
                let var_v_16298 := expr_16302
                /// @src 63:6770:6771  "v"
                let _815 := var_v_16298
                let expr_16304 := _815
                /// @src 63:6774:6782  "minValue"
                let _816 := var_minValue_16271
                let expr_16305 := _816
                /// @src 63:6770:6782  "v < minValue"
                let expr_16306 := slt(cleanup_t_int256(expr_16304), cleanup_t_int256(expr_16305))
                /// @src 63:6766:6829  "if (v < minValue) {..."
                if expr_16306 {
                    /// @src 63:6813:6814  "v"
                    let _817 := var_v_16298
                    let expr_16308 := _817
                    /// @src 63:6802:6814  "minValue = v"
                    var_minValue_16271 := expr_16308
                    let expr_16309 := expr_16308
                    /// @src 63:6766:6829  "if (v < minValue) {..."
                }
                /// @src 63:6889:6899  "lowerPrice"
                let _818 := var_lowerPrice_16290
                let expr_16317 := _818
                /// @src 63:6901:6916  "_positionParams"
                let _819_mpos := var__positionParams_16266_mpos
                let expr_16318_mpos := _819_mpos
                /// @src 63:6874:6917  "calculateValue(lowerPrice, _positionParams)"
                let expr_16319 := fun_calculateValue_16429(expr_16317, expr_16318_mpos)
                /// @src 63:6863:6917  "int256 v = calculateValue(lowerPrice, _positionParams)"
                let var_v_16315 := expr_16319
                /// @src 63:6935:6936  "v"
                let _820 := var_v_16315
                let expr_16321 := _820
                /// @src 63:6939:6947  "minValue"
                let _821 := var_minValue_16271
                let expr_16322 := _821
                /// @src 63:6935:6947  "v < minValue"
                let expr_16323 := slt(cleanup_t_int256(expr_16321), cleanup_t_int256(expr_16322))
                /// @src 63:6931:6994  "if (v < minValue) {..."
                if expr_16323 {
                    /// @src 63:6978:6979  "v"
                    let _822 := var_v_16315
                    let expr_16325 := _822
                    /// @src 63:6967:6979  "minValue = v"
                    var_minValue_16271 := expr_16325
                    let expr_16326 := expr_16325
                    /// @src 63:6931:6994  "if (v < minValue) {..."
                }
                /// @src 63:7018:7033  "_positionParams"
                let _823_mpos := var__positionParams_16266_mpos
                let expr_16331_mpos := _823_mpos
                /// @src 63:7018:7044  "_positionParams.amountSqrt"
                let _824 := add(expr_16331_mpos, 32)
                let _825 := read_from_memoryt_int256(_824)
                let expr_16332 := _825
                /// @src 63:7047:7048  "0"
                let expr_16333 := 0x00
                /// @src 63:7018:7048  "_positionParams.amountSqrt < 0"
                let expr_16334 := slt(cleanup_t_int256(expr_16332), convert_t_rational_0_by_1_to_t_int256(expr_16333))
                /// @src 63:7018:7088  "_positionParams.amountSqrt < 0 && _positionParams.amountUnderlying > 0"
                let expr_16339 := expr_16334
                if expr_16339 {
                    /// @src 63:7052:7067  "_positionParams"
                    let _826_mpos := var__positionParams_16266_mpos
                    let expr_16335_mpos := _826_mpos
                    /// @src 63:7052:7084  "_positionParams.amountUnderlying"
                    let _827 := add(expr_16335_mpos, 64)
                    let _828 := read_from_memoryt_int256(_827)
                    let expr_16336 := _828
                    /// @src 63:7087:7088  "0"
                    let expr_16337 := 0x00
                    /// @src 63:7052:7088  "_positionParams.amountUnderlying > 0"
                    let expr_16338 := sgt(cleanup_t_int256(expr_16336), convert_t_rational_0_by_1_to_t_int256(expr_16337))
                    /// @src 63:7018:7088  "_positionParams.amountSqrt < 0 && _positionParams.amountUnderlying > 0"
                    expr_16339 := expr_16338
                }
                /// @src 63:7014:7557  "if (_positionParams.amountSqrt < 0 && _positionParams.amountUnderlying > 0) {..."
                if expr_16339 {
                    /// @src 63:7206:7221  "_positionParams"
                    let _829_mpos := var__positionParams_16266_mpos
                    let expr_16344_mpos := _829_mpos
                    /// @src 63:7206:7232  "_positionParams.amountSqrt"
                    let _830 := add(expr_16344_mpos, 32)
                    let _831 := read_from_memoryt_int256(_830)
                    let expr_16345 := _831
                    /// @src 63:7205:7232  "-_positionParams.amountSqrt"
                    let expr_16346 := negate_t_int256(expr_16345)
                    /// @src 63:7197:7233  "uint256(-_positionParams.amountSqrt)"
                    let expr_16347 := convert_t_int256_to_t_uint256(expr_16346)
                    /// @src 63:7236:7245  "Constants"
                    let expr_16348_address := linkersymbol("src/libraries/Constants.sol:Constants")
                    /// @src 63:7236:7249  "Constants.Q96"
                    let expr_16349 := constant_Q96_30297()
                    /// @src 63:7197:7249  "uint256(-_positionParams.amountSqrt) * Constants.Q96"
                    let expr_16350 := checked_mul_t_uint256(expr_16347, expr_16349)

                    /// @src 63:7196:7250  "(uint256(-_positionParams.amountSqrt) * Constants.Q96)"
                    let expr_16351 := expr_16350
                    /// @src 63:7261:7276  "_positionParams"
                    let _832_mpos := var__positionParams_16266_mpos
                    let expr_16354_mpos := _832_mpos
                    /// @src 63:7261:7293  "_positionParams.amountUnderlying"
                    let _833 := add(expr_16354_mpos, 64)
                    let _834 := read_from_memoryt_int256(_833)
                    let expr_16355 := _834
                    /// @src 63:7253:7294  "uint256(_positionParams.amountUnderlying)"
                    let expr_16356 := convert_t_int256_to_t_uint256(expr_16355)
                    /// @src 63:7196:7294  "(uint256(-_positionParams.amountSqrt) * Constants.Q96) / uint256(_positionParams.amountUnderlying)"
                    let expr_16357 := checked_div_t_uint256(expr_16351, expr_16356)

                    /// @src 63:7157:7294  "uint256 minSqrtPrice =..."
                    let var_minSqrtPrice_16341 := expr_16357
                    /// @src 63:7313:7323  "lowerPrice"
                    let _835 := var_lowerPrice_16290
                    let expr_16359 := _835
                    /// @src 63:7326:7338  "minSqrtPrice"
                    let _836 := var_minSqrtPrice_16341
                    let expr_16360 := _836
                    /// @src 63:7313:7338  "lowerPrice < minSqrtPrice"
                    let expr_16361 := lt(cleanup_t_uint256(expr_16359), cleanup_t_uint256(expr_16360))
                    /// @src 63:7313:7367  "lowerPrice < minSqrtPrice && minSqrtPrice < upperPrice"
                    let expr_16365 := expr_16361
                    if expr_16365 {
                        /// @src 63:7342:7354  "minSqrtPrice"
                        let _837 := var_minSqrtPrice_16341
                        let expr_16362 := _837
                        /// @src 63:7357:7367  "upperPrice"
                        let _838 := var_upperPrice_16282
                        let expr_16363 := _838
                        /// @src 63:7342:7367  "minSqrtPrice < upperPrice"
                        let expr_16364 := lt(cleanup_t_uint256(expr_16362), cleanup_t_uint256(expr_16363))
                        /// @src 63:7313:7367  "lowerPrice < minSqrtPrice && minSqrtPrice < upperPrice"
                        expr_16365 := expr_16364
                    }
                    /// @src 63:7309:7547  "if (lowerPrice < minSqrtPrice && minSqrtPrice < upperPrice) {..."
                    if expr_16365 {
                        /// @src 63:7413:7425  "minSqrtPrice"
                        let _839 := var_minSqrtPrice_16341
                        let expr_16369 := _839
                        /// @src 63:7427:7442  "_positionParams"
                        let _840_mpos := var__positionParams_16266_mpos
                        let expr_16370_mpos := _840_mpos
                        /// @src 63:7398:7443  "calculateValue(minSqrtPrice, _positionParams)"
                        let expr_16371 := fun_calculateValue_16429(expr_16369, expr_16370_mpos)
                        /// @src 63:7387:7443  "int256 v = calculateValue(minSqrtPrice, _positionParams)"
                        let var_v_16367 := expr_16371
                        /// @src 63:7466:7467  "v"
                        let _841 := var_v_16367
                        let expr_16373 := _841
                        /// @src 63:7470:7478  "minValue"
                        let _842 := var_minValue_16271
                        let expr_16374 := _842
                        /// @src 63:7466:7478  "v < minValue"
                        let expr_16375 := slt(cleanup_t_int256(expr_16373), cleanup_t_int256(expr_16374))
                        /// @src 63:7462:7533  "if (v < minValue) {..."
                        if expr_16375 {
                            /// @src 63:7513:7514  "v"
                            let _843 := var_v_16367
                            let expr_16377 := _843
                            /// @src 63:7502:7514  "minValue = v"
                            var_minValue_16271 := expr_16377
                            let expr_16378 := expr_16377
                            /// @src 63:7462:7533  "if (v < minValue) {..."
                        }
                        /// @src 63:7309:7547  "if (lowerPrice < minSqrtPrice && minSqrtPrice < upperPrice) {..."
                    }
                    /// @src 63:7014:7557  "if (_positionParams.amountSqrt < 0 && _positionParams.amountUnderlying > 0) {..."
                }

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function convert_t_rational_2_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_2_by_1(value)))
            }

            /// @ast-id 16429
            /// @src 63:7803:8219  "function calculateValue(uint256 _sqrtPrice, PositionParams memory _positionParams) internal pure returns (int256) {..."
            function fun_calculateValue_16429(var__sqrtPrice_16390, var__positionParams_16393_mpos) -> var__16396 {
                /// @src 63:7909:7915  "int256"
                let zero_t_int256_844 := zero_value_for_split_t_int256()
                var__16396 := zero_t_int256_844

                /// @src 63:7943:7947  "Math"
                let expr_16400_address := linkersymbol("src/libraries/math/Math.sol:Math")
                /// @src 63:7968:7978  "_sqrtPrice"
                let _845 := var__sqrtPrice_16390
                let expr_16402 := _845
                /// @src 63:7943:7979  "Math.calSqrtPriceToPrice(_sqrtPrice)"
                let expr_16403 := fun_calSqrtPriceToPrice_32379(expr_16402)
                /// @src 63:7927:7979  "uint256 price = Math.calSqrtPriceToPrice(_sqrtPrice)"
                let var_price_16399 := expr_16403
                /// @src 63:7997:8001  "Math"
                let expr_16405_address := linkersymbol("src/libraries/math/Math.sol:Math")
                /// @src 63:8019:8034  "_positionParams"
                let _846_mpos := var__positionParams_16393_mpos
                let expr_16407_mpos := _846_mpos
                /// @src 63:8019:8051  "_positionParams.amountUnderlying"
                let _847 := add(expr_16407_mpos, 64)
                let _848 := read_from_memoryt_int256(_847)
                let expr_16408 := _848
                /// @src 63:8053:8058  "price"
                let _849 := var_price_16399
                let expr_16409 := _849
                /// @src 63:8060:8069  "Constants"
                let expr_16410_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 63:8060:8073  "Constants.Q96"
                let expr_16411 := constant_Q96_30297()
                /// @src 63:7997:8074  "Math.fullMulDivInt256(_positionParams.amountUnderlying, price, Constants.Q96)"
                let expr_16412 := fun_fullMulDivInt256_32228(expr_16408, expr_16409, expr_16411)
                /// @src 63:8089:8093  "Math"
                let expr_16413_address := linkersymbol("src/libraries/math/Math.sol:Math")
                /// @src 63:8111:8112  "2"
                let expr_16415 := 0x02
                /// @src 63:8115:8130  "_positionParams"
                let _850_mpos := var__positionParams_16393_mpos
                let expr_16416_mpos := _850_mpos
                /// @src 63:8115:8141  "_positionParams.amountSqrt"
                let _851 := add(expr_16416_mpos, 32)
                let _852 := read_from_memoryt_int256(_851)
                let expr_16417 := _852
                /// @src 63:8111:8141  "2 * _positionParams.amountSqrt"
                let expr_16418 := checked_mul_t_int256(convert_t_rational_2_by_1_to_t_int256(expr_16415), expr_16417)

                /// @src 63:8143:8153  "_sqrtPrice"
                let _853 := var__sqrtPrice_16390
                let expr_16419 := _853
                /// @src 63:8155:8164  "Constants"
                let expr_16420_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 63:8155:8168  "Constants.Q96"
                let expr_16421 := constant_Q96_30297()
                /// @src 63:8089:8169  "Math.fullMulDivInt256(2 * _positionParams.amountSqrt, _sqrtPrice, Constants.Q96)"
                let expr_16422 := fun_fullMulDivInt256_32228(expr_16418, expr_16419, expr_16421)
                /// @src 63:7997:8169  "Math.fullMulDivInt256(_positionParams.amountUnderlying, price, Constants.Q96)..."
                let expr_16423 := checked_add_t_int256(expr_16412, expr_16422)

                /// @src 63:8184:8199  "_positionParams"
                let _854_mpos := var__positionParams_16393_mpos
                let expr_16424_mpos := _854_mpos
                /// @src 63:8184:8212  "_positionParams.amountStable"
                let _855 := add(expr_16424_mpos, 0)
                let _856 := read_from_memoryt_int256(_855)
                let expr_16425 := _856
                /// @src 63:7997:8212  "Math.fullMulDivInt256(_positionParams.amountUnderlying, price, Constants.Q96)..."
                let expr_16426 := checked_add_t_int256(expr_16423, expr_16425)

                /// @src 63:7990:8212  "return Math.fullMulDivInt256(_positionParams.amountUnderlying, price, Constants.Q96)..."
                var__16396 := expr_16426
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function shift_right_t_uint256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint256(shift_right_unsigned_dynamic(bits, cleanup_t_uint256(value)))
            }

            /// @ast-id 16467
            /// @src 63:8225:8597  "function calculateSquartDebtValue(uint256 _sqrtPrice, PositionParams memory positionParams)..."
            function fun_calculateSquartDebtValue_16467(var__sqrtPrice_16431, var_positionParams_16434_mpos) -> var__16437 {
                /// @src 63:8364:8371  "uint256"
                let zero_t_uint256_857 := zero_value_for_split_t_uint256()
                var__16437 := zero_t_uint256_857

                /// @src 63:8411:8425  "positionParams"
                let _858_mpos := var_positionParams_16434_mpos
                let expr_16441_mpos := _858_mpos
                /// @src 63:8411:8436  "positionParams.amountSqrt"
                let _859 := add(expr_16441_mpos, 32)
                let _860 := read_from_memoryt_int256(_859)
                let expr_16442 := _860
                /// @src 63:8387:8436  "int256 squartPosition = positionParams.amountSqrt"
                let var_squartPosition_16440 := expr_16442
                /// @src 63:8451:8465  "squartPosition"
                let _861 := var_squartPosition_16440
                let expr_16444 := _861
                /// @src 63:8468:8469  "0"
                let expr_16445 := 0x00
                /// @src 63:8451:8469  "squartPosition > 0"
                let expr_16446 := sgt(cleanup_t_int256(expr_16444), convert_t_rational_0_by_1_to_t_int256(expr_16445))
                /// @src 63:8447:8504  "if (squartPosition > 0) {..."
                if expr_16446 {
                    /// @src 63:8492:8493  "0"
                    let expr_16447 := 0x00
                    /// @src 63:8485:8493  "return 0"
                    var__16437 := convert_t_rational_0_by_1_to_t_uint256(expr_16447)
                    leave
                    /// @src 63:8447:8504  "if (squartPosition > 0) {..."
                }
                /// @src 63:8522:8523  "2"
                let expr_16451 := 0x02
                /// @src 63:8536:8550  "squartPosition"
                let _862 := var_squartPosition_16440
                let expr_16454 := _862
                /// @src 63:8535:8550  "-squartPosition"
                let expr_16455 := negate_t_int256(expr_16454)
                /// @src 63:8527:8551  "uint256(-squartPosition)"
                let expr_16456 := convert_t_int256_to_t_uint256(expr_16455)
                /// @src 63:8554:8564  "_sqrtPrice"
                let _863 := var__sqrtPrice_16431
                let expr_16457 := _863
                /// @src 63:8527:8564  "uint256(-squartPosition) * _sqrtPrice"
                let expr_16458 := checked_mul_t_uint256(expr_16456, expr_16457)

                /// @src 63:8526:8565  "(uint256(-squartPosition) * _sqrtPrice)"
                let expr_16459 := expr_16458
                /// @src 63:8522:8565  "2 * (uint256(-squartPosition) * _sqrtPrice)"
                let expr_16460 := checked_mul_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_16451), expr_16459)

                /// @src 63:8569:8578  "Constants"
                let expr_16461_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 63:8569:8589  "Constants.RESOLUTION"
                let expr_16462 := constant_RESOLUTION_30294()
                /// @src 63:8522:8589  "2 * (uint256(-squartPosition) * _sqrtPrice) >> Constants.RESOLUTION"
                let expr_16463 :=
                shift_right_t_uint256_t_uint8(expr_16460, expr_16462)

                /// @src 63:8521:8590  "(2 * (uint256(-squartPosition) * _sqrtPrice) >> Constants.RESOLUTION)"
                let expr_16464 := expr_16463
                /// @src 63:8514:8590  "return (2 * (uint256(-squartPosition) * _sqrtPrice) >> Constants.RESOLUTION)"
                var__16437 := expr_16464
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            /// @ast-id 16260
            /// @src 63:5846:6038  "function getHasPositionFlag(PositionParams memory _positionParams) internal pure returns (bool) {..."
            function fun_getHasPositionFlag_16260(var__positionParams_16244_mpos) -> var__16247 {
                /// @src 63:5936:5940  "bool"
                let zero_t_bool_864 := zero_value_for_split_t_bool()
                var__16247 := zero_t_bool_864

                /// @src 63:5959:5974  "_positionParams"
                let _865_mpos := var__positionParams_16244_mpos
                let expr_16249_mpos := _865_mpos
                /// @src 63:5959:5985  "_positionParams.amountSqrt"
                let _866 := add(expr_16249_mpos, 32)
                let _867 := read_from_memoryt_int256(_866)
                let expr_16250 := _867
                /// @src 63:5989:5990  "0"
                let expr_16251 := 0x00
                /// @src 63:5959:5990  "_positionParams.amountSqrt != 0"
                let expr_16252 := iszero(eq(cleanup_t_int256(expr_16250), convert_t_rational_0_by_1_to_t_int256(expr_16251)))
                /// @src 63:5959:6031  "_positionParams.amountSqrt != 0 || _positionParams.amountUnderlying != 0"
                let expr_16257 := expr_16252
                if iszero(expr_16257) {
                    /// @src 63:5994:6009  "_positionParams"
                    let _868_mpos := var__positionParams_16244_mpos
                    let expr_16253_mpos := _868_mpos
                    /// @src 63:5994:6026  "_positionParams.amountUnderlying"
                    let _869 := add(expr_16253_mpos, 64)
                    let _870 := read_from_memoryt_int256(_869)
                    let expr_16254 := _870
                    /// @src 63:6030:6031  "0"
                    let expr_16255 := 0x00
                    /// @src 63:5994:6031  "_positionParams.amountUnderlying != 0"
                    let expr_16256 := iszero(eq(cleanup_t_int256(expr_16254), convert_t_rational_0_by_1_to_t_int256(expr_16255)))
                    /// @src 63:5959:6031  "_positionParams.amountSqrt != 0 || _positionParams.amountUnderlying != 0"
                    expr_16257 := expr_16256
                }
                /// @src 63:5952:6031  "return _positionParams.amountSqrt != 0 || _positionParams.amountUnderlying != 0"
                var__16247 := expr_16257
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            /// @ast-id 31606
            /// @src 66:7573:7717  "function getTotalDebtValue(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getTotalDebtValue_31606(var_tokenState_31597_mpos) -> var__31600 {
                /// @src 66:7654:7661  "uint256"
                let zero_t_uint256_871 := zero_value_for_split_t_uint256()
                var__31600 := zero_t_uint256_871

                /// @src 66:7680:7690  "tokenState"
                let _872_mpos := var_tokenState_31597_mpos
                let expr_31602_mpos := _872_mpos
                /// @src 66:7680:7710  "tokenState.totalNormalBorrowed"
                let _873 := add(expr_31602_mpos, 64)
                let _874 := read_from_memoryt_uint256(_873)
                let expr_31603 := _874
                /// @src 66:7673:7710  "return tokenState.totalNormalBorrowed"
                var__31600 := expr_31603
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            /// @ast-id 31594
            /// @src 66:7299:7567  "function getTotalCollateralValue(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getTotalCollateralValue_31594(var_tokenState_31575_mpos) -> var__31578 {
                /// @src 66:7386:7393  "uint256"
                let zero_t_uint256_875 := zero_value_for_split_t_uint256()
                var__31578 := zero_t_uint256_875

                /// @src 66:7412:7429  "FixedPointMathLib"
                let expr_31580_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:7441:7451  "tokenState"
                let _876_mpos := var_tokenState_31575_mpos
                let expr_31582_mpos := _876_mpos
                /// @src 66:7441:7474  "tokenState.totalCompoundDeposited"
                let _877 := add(expr_31582_mpos, 0)
                let _878 := read_from_memoryt_uint256(_877)
                let expr_31583 := _878
                /// @src 66:7476:7486  "tokenState"
                let _879_mpos := var_tokenState_31575_mpos
                let expr_31584_mpos := _879_mpos
                /// @src 66:7476:7498  "tokenState.assetScaler"
                let _880 := add(expr_31584_mpos, 96)
                let _881 := read_from_memoryt_uint256(_880)
                let expr_31585 := _881
                /// @src 66:7500:7509  "Constants"
                let expr_31586_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:7500:7513  "Constants.ONE"
                let expr_31587 := constant_ONE_30273()
                /// @src 66:7412:7514  "FixedPointMathLib.mulDivDown(tokenState.totalCompoundDeposited, tokenState.assetScaler, Constants.ONE)"
                let expr_31588 := fun_mulDivDown_36976(expr_31583, expr_31585, expr_31587)
                /// @src 66:7529:7539  "tokenState"
                let _882_mpos := var_tokenState_31575_mpos
                let expr_31589_mpos := _882_mpos
                /// @src 66:7529:7560  "tokenState.totalNormalDeposited"
                let _883 := add(expr_31589_mpos, 32)
                let _884 := read_from_memoryt_uint256(_883)
                let expr_31590 := _884
                /// @src 66:7412:7560  "FixedPointMathLib.mulDivDown(tokenState.totalCompoundDeposited, tokenState.assetScaler, Constants.ONE)..."
                let expr_31591 := checked_add_t_uint256(expr_31588, expr_31590)

                /// @src 66:7405:7560  "return FixedPointMathLib.mulDivDown(tokenState.totalCompoundDeposited, tokenState.assetScaler, Constants.ONE)..."
                var__31578 := expr_31591
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            /// @ast-id 36976
            /// @src 12:1564:2090  "function mulDivDown(..."
            function fun_mulDivDown_36976(var_x_36965, var_y_36967, var_denominator_36969) -> var_z_36972 {
                /// @src 12:1680:1689  "uint256 z"
                let zero_t_uint256_885 := zero_value_for_split_t_uint256()
                var_z_36972 := zero_t_uint256_885

                /// @src 12:1744:2084  "assembly {..."
                {
                    if iszero(mul(var_denominator_36969, iszero(mul(var_y_36967, gt(var_x_36965, div(115792089237316195423570985008687907853269984665640564039457584007913129639935, var_y_36967)))))) { revert(0, 0) }
                    var_z_36972 := div(mul(var_x_36965, var_y_36967), var_denominator_36969)
                }

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            /// @ast-id 36989
            /// @src 12:2096:2768  "function mulDivUp(..."
            function fun_mulDivUp_36989(var_x_36978, var_y_36980, var_denominator_36982) -> var_z_36985 {
                /// @src 12:2210:2219  "uint256 z"
                let zero_t_uint256_886 := zero_value_for_split_t_uint256()
                var_z_36985 := zero_t_uint256_886

                /// @src 12:2274:2762  "assembly {..."
                {
                    if iszero(mul(var_denominator_36982, iszero(mul(var_y_36980, gt(var_x_36978, div(115792089237316195423570985008687907853269984665640564039457584007913129639935, var_y_36980)))))) { revert(0, 0) }
                    var_z_36985 := add(gt(mod(mul(var_x_36978, var_y_36980), var_denominator_36982), 0), div(mul(var_x_36978, var_y_36980), var_denominator_36982))
                }

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            /// @ast-id 32556
            /// @src 26:5150:5515  "function mulDivRoundingUp(..."
            function fun_mulDivRoundingUp_32556(var_a_32515, var_b_32517, var_denominator_32519) -> var_result_32522 {
                /// @src 26:5272:5286  "uint256 result"
                let zero_t_uint256_887 := zero_value_for_split_t_uint256()
                var_result_32522 := zero_t_uint256_887

                /// @src 26:5338:5339  "a"
                let _888 := var_a_32515
                let expr_32526 := _888
                /// @src 26:5341:5342  "b"
                let _889 := var_b_32517
                let expr_32527 := _889
                /// @src 26:5344:5355  "denominator"
                let _890 := var_denominator_32519
                let expr_32528 := _890
                /// @src 26:5331:5356  "mulDiv(a, b, denominator)"
                let expr_32529 := fun_mulDiv_32512(expr_32526, expr_32527, expr_32528)
                /// @src 26:5322:5356  "result = mulDiv(a, b, denominator)"
                var_result_32522 := expr_32529
                let expr_32530 := expr_32529
                /// @src 26:5381:5382  "a"
                let _891 := var_a_32515
                let expr_32533 := _891
                /// @src 26:5384:5385  "b"
                let _892 := var_b_32517
                let expr_32534 := _892
                /// @src 26:5387:5398  "denominator"
                let _893 := var_denominator_32519
                let expr_32535 := _893
                /// @src 26:5374:5399  "mulmod(a, b, denominator)"
                let _894 := expr_32535
                if iszero(_894) { panic_error_0x12() }
                let expr_32536 := mulmod(expr_32533, expr_32534, _894)
                /// @src 26:5402:5403  "0"
                let expr_32537 := 0x00
                /// @src 26:5374:5403  "mulmod(a, b, denominator) > 0"
                let expr_32538 := gt(cleanup_t_uint256(expr_32536), convert_t_rational_0_by_1_to_t_uint256(expr_32537))
                /// @src 26:5370:5499  "if (mulmod(a, b, denominator) > 0) {..."
                if expr_32538 {
                    /// @src 26:5431:5437  "result"
                    let _895 := var_result_32522
                    let expr_32540 := _895
                    /// @src 26:5440:5457  "type(uint256).max"
                    let expr_32545 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 26:5431:5457  "result < type(uint256).max"
                    let expr_32546 := lt(cleanup_t_uint256(expr_32540), cleanup_t_uint256(expr_32545))
                    /// @src 26:5423:5458  "require(result < type(uint256).max)"
                    require_helper(expr_32546)
                    /// @src 26:5476:5484  "result++"
                    let _897 := var_result_32522
                    let _896 := increment_wrapping_t_uint256(_897)
                    var_result_32522 := _896
                    let expr_32550 := _897
                    /// @src 26:5370:5499  "if (mulmod(a, b, denominator) > 0) {..."
                }

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function array_allocation_size_t_array$_t_uint32_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_array$_t_uint32_$dyn_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_uint32_$dyn_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_memory_chunk_t_uint32(dataStart, dataSizeInBytes) {
                calldatacopy(dataStart, calldatasize(), dataSizeInBytes)
            }

            function allocate_and_zero_memory_array_t_array$_t_uint32_$dyn_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_uint32_$dyn_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_uint32_$dyn_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_uint32(dataStart, dataSize)
            }

            function convert_t_uint256_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(identity(cleanup_t_uint256(value)))
            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
            }

            function array_length_t_array$_t_uint32_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function memory_array_index_access_t_array$_t_uint32_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_uint32_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function write_to_memory_t_uint32(memPtr, value) {
                mstore(memPtr, cleanup_t_uint32(value))
            }

            function convert_t_rational_0_by_1_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(identity(cleanup_t_rational_0_by_1(value)))
            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function array_storeLengthForEncoding_t_array$_t_uint32_$dyn_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_dataslot_t_array$_t_uint32_$dyn_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function abi_encode_t_uint32_to_t_uint32(value, pos) {
                mstore(pos, cleanup_t_uint32(value))
            }

            function abi_encodeUpdatedPos_t_uint32_to_t_uint32(value0, pos) -> updatedPos {
                abi_encode_t_uint32_to_t_uint32(value0, pos)
                updatedPos := add(pos, 0x20)
            }

            function array_nextElement_t_array$_t_uint32_$dyn_memory_ptr(ptr) -> next {
                next := add(ptr, 0x20)
            }

            // uint32[] -> uint32[]
            function abi_encode_t_array$_t_uint32_$dyn_memory_ptr_to_t_array$_t_uint32_$dyn_memory_ptr_fromStack(value, pos)  -> end  {
                let length := array_length_t_array$_t_uint32_$dyn_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_array$_t_uint32_$dyn_memory_ptr_fromStack(pos, length)
                let baseRef := array_dataslot_t_array$_t_uint32_$dyn_memory_ptr(value)
                let srcPtr := baseRef
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    let elementValue0 := mload(srcPtr)
                    pos := abi_encodeUpdatedPos_t_uint32_to_t_uint32(elementValue0, pos)
                    srcPtr := array_nextElement_t_array$_t_uint32_$dyn_memory_ptr(srcPtr)
                }
                end := pos
            }

            function abi_encode_tuple_t_array$_t_uint32_$dyn_memory_ptr__to_t_array$_t_uint32_$dyn_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_array$_t_uint32_$dyn_memory_ptr_to_t_array$_t_uint32_$dyn_memory_ptr_fromStack(value0,  tail)

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

            function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function store_literal_in_memory_d30c0d219016dd7e5cf2b2c30c4d7c091820fc329f335b57cab26b9ff3384a9e(memPtr) {

                mstore(add(memPtr, 0), "OLD")

            }

            function abi_encode_t_stringliteral_d30c0d219016dd7e5cf2b2c30c4d7c091820fc329f335b57cab26b9ff3384a9e_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 3)
                store_literal_in_memory_d30c0d219016dd7e5cf2b2c30c4d7c091820fc329f335b57cab26b9ff3384a9e(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_d30c0d219016dd7e5cf2b2c30c4d7c091820fc329f335b57cab26b9ff3384a9e__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_d30c0d219016dd7e5cf2b2c30c4d7c091820fc329f335b57cab26b9ff3384a9e_to_t_string_memory_ptr_fromStack( tail)

            }

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint16(value) -> converted {
                converted := cleanup_t_uint16(identity(cleanup_t_rational_1_by_1(value)))
            }

            function checked_add_t_uint16(x, y) -> sum {
                x := cleanup_t_uint16(x)
                y := cleanup_t_uint16(y)
                sum := add(x, y)

                if gt(sum, 0xffff) { panic_error_0x11() }

            }

            function mod_t_uint16(x, y) -> r {
                x := cleanup_t_uint16(x)
                y := cleanup_t_uint16(y)
                if iszero(y) { panic_error_0x12() }
                r := mod(x, y)
            }

            function abi_decode_tuple_t_uint32t_int56t_uint160t_bool_fromMemory(headStart, dataEnd) -> value0, value1, value2, value3 {
                if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint32_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_int56_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint160_fromMemory(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_bool_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function convert_t_uint16_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint16(value)))
            }

            function abi_encode_t_uint16_to_t_uint256_fromStack(value, pos) {
                mstore(pos, convert_t_uint16_to_t_uint256(value))
            }

            function abi_encode_tuple_t_uint16__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint16_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_t_rational_0_by_1_to_t_uint256_fromStack(value, pos) {
                mstore(pos, convert_t_rational_0_by_1_to_t_uint256(value))
            }

            function abi_encode_tuple_t_rational_0_by_1__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_rational_0_by_1_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function convert_t_uint32_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint32(value)))
            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function array_allocation_size_t_array$_t_int56_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() {
                revert(0, 0)
            }

            // int56[]
            function abi_decode_available_length_t_array$_t_int56_$dyn_memory_ptr_fromMemory(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_int56_$dyn_memory_ptr(length))
                let dst := array

                mstore(array, length)
                dst := add(array, 0x20)

                let srcEnd := add(offset, mul(length, 0x20))
                if gt(srcEnd, end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
                {

                    let elementPos := src

                    mstore(dst, abi_decode_t_int56_fromMemory(elementPos, end))
                    dst := add(dst, 0x20)
                }
            }

            // int56[]
            function abi_decode_t_array$_t_int56_$dyn_memory_ptr_fromMemory(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := mload(offset)
                array := abi_decode_available_length_t_array$_t_int56_$dyn_memory_ptr_fromMemory(add(offset, 0x20), length, end)
            }

            function abi_decode_tuple_t_array$_t_int56_$dyn_memory_ptr_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := mload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_array$_t_int56_$dyn_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function array_length_t_array$_t_int56_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function memory_array_index_access_t_array$_t_int56_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_int56_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function read_from_memoryt_int56(ptr) -> returnValue {

                let value := cleanup_t_int56(mload(ptr))

                returnValue :=

                value

            }

            function checked_sub_t_int56(x, y) -> diff {
                x := cleanup_t_int56(x)
                y := cleanup_t_int56(y)
                diff := sub(x, y)

                if or(
                    slt(diff, 0xffffffffffffffffffffffffffffffffffffffffffffffffff80000000000000),
                    sgt(diff, 0x7fffffffffffff)
                ) { panic_error_0x11() }

            }

            function convert_t_int256_to_t_int56(value) -> converted {
                converted := cleanup_t_int56(identity(cleanup_t_int256(value)))
            }

            function checked_div_t_int56(x, y) -> r {
                x := cleanup_t_int56(x)
                y := cleanup_t_int56(y)
                if iszero(y) { panic_error_0x12() }

                // overflow for minVal / -1
                if and(
                    eq(x, 0xffffffffffffffffffffffffffffffffffffffffffffffffff80000000000000),
                    eq(y, sub(0, 1))
                ) { panic_error_0x11() }

                r := sdiv(x, y)
            }

            function convert_t_int56_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_int56(value)))
            }

            /// @ast-id 16744
            /// @src 69:1186:2697  "function callUniswapObserve(IUniswapV3Pool uniswapPool, uint256 ago) internal view returns (uint160, uint256) {..."
            function fun_callUniswapObserve_16744(var_uniswapPool_16546_address, var_ago_16548) -> var__16551, var__16553 {
                /// @src 69:1278:1285  "uint160"
                let zero_t_uint160_898 := zero_value_for_split_t_uint160()
                var__16551 := zero_t_uint160_898
                /// @src 69:1287:1294  "uint256"
                let zero_t_uint256_899 := zero_value_for_split_t_uint256()
                var__16553 := zero_t_uint256_899

                /// @src 69:1349:1350  "2"
                let expr_16563 := 0x02
                /// @src 69:1336:1351  "new uint32[](2)"
                let _900 := convert_t_rational_2_by_1_to_t_uint256(expr_16563)
                let expr_16564_mpos := allocate_and_zero_memory_array_t_array$_t_uint32_$dyn_memory_ptr(_900)
                /// @src 69:1306:1351  "uint32[] memory secondsAgos = new uint32[](2)"
                let var_secondsAgos_16559_mpos := expr_16564_mpos
                /// @src 69:1386:1389  "ago"
                let _901 := var_ago_16548
                let expr_16571 := _901
                /// @src 69:1379:1390  "uint32(ago)"
                let expr_16572 := convert_t_uint256_to_t_uint32(expr_16571)
                /// @src 69:1362:1373  "secondsAgos"
                let _902_mpos := var_secondsAgos_16559_mpos
                let expr_16566_mpos := _902_mpos
                /// @src 69:1374:1375  "0"
                let expr_16567 := 0x00
                /// @src 69:1362:1390  "secondsAgos[0] = uint32(ago)"
                let _903 := expr_16572
                write_to_memory_t_uint32(memory_array_index_access_t_array$_t_uint32_$dyn_memory_ptr(expr_16566_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_16567)), _903)
                let expr_16573 := expr_16572
                /// @src 69:1417:1418  "0"
                let expr_16578 := 0x00
                /// @src 69:1400:1418  "secondsAgos[1] = 0"
                let _904 := convert_t_rational_0_by_1_to_t_uint32(expr_16578)
                /// @src 69:1400:1411  "secondsAgos"
                let _905_mpos := var_secondsAgos_16559_mpos
                let expr_16575_mpos := _905_mpos
                /// @src 69:1412:1413  "1"
                let expr_16576 := 0x01
                /// @src 69:1400:1418  "secondsAgos[1] = 0"
                let _906 := _904
                write_to_memory_t_uint32(memory_array_index_access_t_array$_t_uint32_$dyn_memory_ptr(expr_16575_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_16576)), _906)
                let expr_16579 := _904
                /// @src 69:1485:1496  "uniswapPool"
                let _907_address := var_uniswapPool_16546_address
                let expr_16587_address := _907_address
                /// @src 69:1477:1497  "address(uniswapPool)"
                let expr_16588 := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16587_address)
                /// @src 69:1477:1508  "address(uniswapPool).staticcall"
                let expr_16589_address := expr_16588
                /// @src 69:1532:1569  "IUniswapV3PoolOracle.observe.selector"
                let expr_16594 := 0x883bdbfd00000000000000000000000000000000000000000000000000000000
                /// @src 69:1571:1582  "secondsAgos"
                let _908_mpos := var_secondsAgos_16559_mpos
                let expr_16595_mpos := _908_mpos
                /// @src 69:1509:1583  "abi.encodeWithSelector(IUniswapV3PoolOracle.observe.selector, secondsAgos)"

                let expr_16596_mpos := allocate_unbounded()
                let _909 := add(expr_16596_mpos, 0x20)

                mstore(_909, expr_16594)
                _909 := add(_909, 4)

                let _910 := abi_encode_tuple_t_array$_t_uint32_$dyn_memory_ptr__to_t_array$_t_uint32_$dyn_memory_ptr__fromStack(_909, expr_16595_mpos)
                mstore(expr_16596_mpos, sub(_910, add(expr_16596_mpos, 0x20)))
                finalize_allocation(expr_16596_mpos, sub(_910, expr_16596_mpos))
                /// @src 69:1477:1584  "address(uniswapPool).staticcall(abi.encodeWithSelector(IUniswapV3PoolOracle.observe.selector, secondsAgos))"

                let _911 := add(expr_16596_mpos, 0x20)
                let _912 := mload(expr_16596_mpos)

                let expr_16597_component_1 := staticcall(gas(), expr_16589_address,  _911, _912, 0, 0)

                let expr_16597_component_2_mpos := extract_returndata()
                /// @src 69:1429:1584  "(bool success, bytes memory data) =..."
                let var_success_16582 := expr_16597_component_1
                let var_data_16584_mpos := expr_16597_component_2_mpos
                /// @src 69:1600:1607  "success"
                let _913 := var_success_16582
                let expr_16599 := _913
                /// @src 69:1599:1607  "!success"
                let expr_16600 := cleanup_t_bool(iszero(expr_16599))
                /// @src 69:1595:2423  "if (!success) {..."
                if expr_16600 {
                    /// @src 69:1637:1641  "data"
                    let _914_mpos := var_data_16584_mpos
                    let expr_16602_mpos := _914_mpos
                    /// @src 69:1627:1642  "keccak256(data)"
                    let expr_16603 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_16602_mpos), array_length_t_bytes_memory_ptr(expr_16602_mpos))
                    /// @src 69:1656:1703  "abi.encodeWithSignature(\"Error(string)\", \"OLD\")"

                    let expr_16609_mpos := allocate_unbounded()
                    let _915 := add(expr_16609_mpos, 0x20)

                    mstore(_915, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    _915 := add(_915, 4)

                    let _916 := abi_encode_tuple_t_stringliteral_d30c0d219016dd7e5cf2b2c30c4d7c091820fc329f335b57cab26b9ff3384a9e__to_t_string_memory_ptr__fromStack(_915)
                    mstore(expr_16609_mpos, sub(_916, add(expr_16609_mpos, 0x20)))
                    finalize_allocation(expr_16609_mpos, sub(_916, expr_16609_mpos))
                    /// @src 69:1646:1704  "keccak256(abi.encodeWithSignature(\"Error(string)\", \"OLD\"))"
                    let expr_16610 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_16609_mpos), array_length_t_bytes_memory_ptr(expr_16609_mpos))
                    /// @src 69:1627:1704  "keccak256(data) != keccak256(abi.encodeWithSignature(\"Error(string)\", \"OLD\"))"
                    let expr_16611 := iszero(eq(cleanup_t_bytes32(expr_16603), cleanup_t_bytes32(expr_16610)))
                    /// @src 69:1623:1756  "if (keccak256(data) != keccak256(abi.encodeWithSignature(\"Error(string)\", \"OLD\"))) {..."
                    if expr_16611 {
                        /// @src 69:1736:1740  "data"
                        let _917_mpos := var_data_16584_mpos
                        let expr_16613_mpos := _917_mpos
                        fun_revertBytes_16761(expr_16613_mpos)
                        /// @src 69:1623:1756  "if (keccak256(data) != keccak256(abi.encodeWithSignature(\"Error(string)\", \"OLD\"))) {..."
                    }
                    /// @src 69:1813:1824  "uniswapPool"
                    let _918_address := var_uniswapPool_16546_address
                    let expr_16622_address := _918_address
                    /// @src 69:1813:1830  "uniswapPool.slot0"
                    let expr_16623_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16622_address)
                    let expr_16623_functionSelector := 0x3850c7bd
                    /// @src 69:1813:1832  "uniswapPool.slot0()"

                    // storage for arguments and returned data
                    let _919 := allocate_unbounded()
                    mstore(_919, shift_left_224(expr_16623_functionSelector))
                    let _920 := abi_encode_tuple__to__fromStack(add(_919, 4) )

                    let _921 := staticcall(gas(), expr_16623_address,  _919, sub(_920, _919), _919, 224)

                    if iszero(_921) { revert_forward_1() }

                    let expr_16624_component_1, expr_16624_component_2, expr_16624_component_3, expr_16624_component_4, expr_16624_component_5, expr_16624_component_6, expr_16624_component_7
                    if _921 {

                        let _922 := 224

                        if gt(_922, returndatasize()) {
                            _922 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_919, _922)

                        // decode return parameters from external try-call into retVars
                        expr_16624_component_1, expr_16624_component_2, expr_16624_component_3, expr_16624_component_4, expr_16624_component_5, expr_16624_component_6, expr_16624_component_7 :=  abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(_919, add(_919, _922))
                    }
                    /// @src 69:1770:1832  "(,, uint16 index, uint16 cardinality,,,) = uniswapPool.slot0()"
                    let var_index_16619 := expr_16624_component_3
                    let var_cardinality_16621 := expr_16624_component_4
                    /// @src 69:1897:1908  "uniswapPool"
                    let _923_address := var_uniswapPool_16546_address
                    let expr_16630_address := _923_address
                    /// @src 69:1897:1921  "uniswapPool.observations"
                    let expr_16631_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16630_address)
                    let expr_16631_functionSelector := 0x252c09d7
                    /// @src 69:1923:1928  "index"
                    let _924 := var_index_16619
                    let expr_16632 := _924
                    /// @src 69:1931:1932  "1"
                    let expr_16633 := 0x01
                    /// @src 69:1923:1932  "index + 1"
                    let expr_16634 := checked_add_t_uint16(expr_16632, convert_t_rational_1_by_1_to_t_uint16(expr_16633))

                    /// @src 69:1922:1933  "(index + 1)"
                    let expr_16635 := expr_16634
                    /// @src 69:1936:1947  "cardinality"
                    let _925 := var_cardinality_16621
                    let expr_16636 := _925
                    /// @src 69:1922:1947  "(index + 1) % cardinality"
                    let expr_16637 := mod_t_uint16(expr_16635, expr_16636)

                    /// @src 69:1897:1948  "uniswapPool.observations((index + 1) % cardinality)"

                    // storage for arguments and returned data
                    let _926 := allocate_unbounded()
                    mstore(_926, shift_left_224(expr_16631_functionSelector))
                    let _927 := abi_encode_tuple_t_uint16__to_t_uint256__fromStack(add(_926, 4) , expr_16637)

                    let _928 := staticcall(gas(), expr_16631_address,  _926, sub(_927, _926), _926, 128)

                    if iszero(_928) { revert_forward_1() }

                    let expr_16638_component_1, expr_16638_component_2, expr_16638_component_3, expr_16638_component_4
                    if _928 {

                        let _929 := 128

                        if gt(_929, returndatasize()) {
                            _929 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_926, _929)

                        // decode return parameters from external try-call into retVars
                        expr_16638_component_1, expr_16638_component_2, expr_16638_component_3, expr_16638_component_4 :=  abi_decode_tuple_t_uint32t_int56t_uint160t_bool_fromMemory(_926, add(_926, _929))
                    }
                    /// @src 69:1847:1948  "(uint32 oldestAvailableAge,,, bool initialized) = uniswapPool.observations((index + 1) % cardinality)"
                    let var_oldestAvailableAge_16627 := expr_16638_component_1
                    let var_initialized_16629 := expr_16638_component_4
                    /// @src 69:1968:1979  "initialized"
                    let _930 := var_initialized_16629
                    let expr_16640 := _930
                    /// @src 69:1967:1979  "!initialized"
                    let expr_16641 := cleanup_t_bool(iszero(expr_16640))
                    /// @src 69:1963:2067  "if (!initialized) {..."
                    if expr_16641 {
                        /// @src 69:2025:2036  "uniswapPool"
                        let _931_address := var_uniswapPool_16546_address
                        let expr_16644_address := _931_address
                        /// @src 69:2025:2049  "uniswapPool.observations"
                        let expr_16645_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16644_address)
                        let expr_16645_functionSelector := 0x252c09d7
                        /// @src 69:2050:2051  "0"
                        let expr_16646 := 0x00
                        /// @src 69:2025:2052  "uniswapPool.observations(0)"

                        // storage for arguments and returned data
                        let _932 := allocate_unbounded()
                        mstore(_932, shift_left_224(expr_16645_functionSelector))
                        let _933 := abi_encode_tuple_t_rational_0_by_1__to_t_uint256__fromStack(add(_932, 4) , expr_16646)

                        let _934 := staticcall(gas(), expr_16645_address,  _932, sub(_933, _932), _932, 128)

                        if iszero(_934) { revert_forward_1() }

                        let expr_16647_component_1, expr_16647_component_2, expr_16647_component_3, expr_16647_component_4
                        if _934 {

                            let _935 := 128

                            if gt(_935, returndatasize()) {
                                _935 := returndatasize()
                            }

                            // update freeMemoryPointer according to dynamic return size
                            finalize_allocation(_932, _935)

                            // decode return parameters from external try-call into retVars
                            expr_16647_component_1, expr_16647_component_2, expr_16647_component_3, expr_16647_component_4 :=  abi_decode_tuple_t_uint32t_int56t_uint160t_bool_fromMemory(_932, add(_932, _935))
                        }
                        /// @src 69:1999:2052  "(oldestAvailableAge,,,) = uniswapPool.observations(0)"
                        var_oldestAvailableAge_16627 := expr_16647_component_1
                        /// @src 69:1963:2067  "if (!initialized) {..."
                    }
                    /// @src 69:2087:2102  "block.timestamp"
                    let expr_16654 := timestamp()
                    /// @src 69:2105:2123  "oldestAvailableAge"
                    let _936 := var_oldestAvailableAge_16627
                    let expr_16655 := _936
                    /// @src 69:2087:2123  "block.timestamp - oldestAvailableAge"
                    let expr_16656 := checked_sub_t_uint256(expr_16654, convert_t_uint32_to_t_uint256(expr_16655))

                    /// @src 69:2081:2123  "ago = block.timestamp - oldestAvailableAge"
                    var_ago_16548 := expr_16656
                    let expr_16657 := expr_16656
                    /// @src 69:2161:2164  "ago"
                    let _937 := var_ago_16548
                    let expr_16664 := _937
                    /// @src 69:2154:2165  "uint32(ago)"
                    let expr_16665 := convert_t_uint256_to_t_uint32(expr_16664)
                    /// @src 69:2137:2148  "secondsAgos"
                    let _938_mpos := var_secondsAgos_16559_mpos
                    let expr_16659_mpos := _938_mpos
                    /// @src 69:2149:2150  "0"
                    let expr_16660 := 0x00
                    /// @src 69:2137:2165  "secondsAgos[0] = uint32(ago)"
                    let _939 := expr_16665
                    write_to_memory_t_uint32(memory_array_index_access_t_array$_t_uint32_$dyn_memory_ptr(expr_16659_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_16660)), _939)
                    let expr_16666 := expr_16665
                    /// @src 69:2206:2217  "uniswapPool"
                    let _940_address := var_uniswapPool_16546_address
                    let expr_16673_address := _940_address
                    /// @src 69:2198:2218  "address(uniswapPool)"
                    let expr_16674 := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16673_address)
                    /// @src 69:2198:2229  "address(uniswapPool).staticcall"
                    let expr_16675_address := expr_16674
                    /// @src 69:2270:2307  "IUniswapV3PoolOracle.observe.selector"
                    let expr_16680 := 0x883bdbfd00000000000000000000000000000000000000000000000000000000
                    /// @src 69:2309:2320  "secondsAgos"
                    let _941_mpos := var_secondsAgos_16559_mpos
                    let expr_16681_mpos := _941_mpos
                    /// @src 69:2247:2321  "abi.encodeWithSelector(IUniswapV3PoolOracle.observe.selector, secondsAgos)"

                    let expr_16682_mpos := allocate_unbounded()
                    let _942 := add(expr_16682_mpos, 0x20)

                    mstore(_942, expr_16680)
                    _942 := add(_942, 4)

                    let _943 := abi_encode_tuple_t_array$_t_uint32_$dyn_memory_ptr__to_t_array$_t_uint32_$dyn_memory_ptr__fromStack(_942, expr_16681_mpos)
                    mstore(expr_16682_mpos, sub(_943, add(expr_16682_mpos, 0x20)))
                    finalize_allocation(expr_16682_mpos, sub(_943, expr_16682_mpos))
                    /// @src 69:2198:2335  "address(uniswapPool).staticcall(..."

                    let _944 := add(expr_16682_mpos, 0x20)
                    let _945 := mload(expr_16682_mpos)

                    let expr_16683_component_1 := staticcall(gas(), expr_16675_address,  _944, _945, 0, 0)

                    let expr_16683_component_2_mpos := extract_returndata()
                    /// @src 69:2180:2335  "(success, data) = address(uniswapPool).staticcall(..."
                    var_data_16584_mpos := expr_16683_component_2_mpos
                    var_success_16582 := expr_16683_component_1
                    /// @src 69:2354:2361  "success"
                    let _946 := var_success_16582
                    let expr_16686 := _946
                    /// @src 69:2353:2361  "!success"
                    let expr_16687 := cleanup_t_bool(iszero(expr_16686))
                    /// @src 69:2349:2413  "if (!success) {..."
                    if expr_16687 {
                        /// @src 69:2393:2397  "data"
                        let _947_mpos := var_data_16584_mpos
                        let expr_16689_mpos := _947_mpos
                        fun_revertBytes_16761(expr_16689_mpos)
                        /// @src 69:2349:2413  "if (!success) {..."
                    }
                    /// @src 69:1595:2423  "if (!success) {..."
                }
                /// @src 69:2477:2481  "data"
                let _948_mpos := var_data_16584_mpos
                let expr_16703_mpos := _948_mpos
                /// @src 69:2466:2493  "abi.decode(data, (int56[]))"

                let expr_16708_mpos :=  abi_decode_tuple_t_array$_t_int56_$dyn_memory_ptr_fromMemory(add(expr_16703_mpos, 32), add(add(expr_16703_mpos, 32), array_length_t_bytes_memory_ptr(expr_16703_mpos)))
                /// @src 69:2433:2493  "int56[] memory tickCumulatives = abi.decode(data, (int56[]))"
                let var_tickCumulatives_16700_mpos := expr_16708_mpos
                /// @src 69:2524:2539  "tickCumulatives"
                let _949_mpos := var_tickCumulatives_16700_mpos
                let expr_16714_mpos := _949_mpos
                /// @src 69:2540:2541  "1"
                let expr_16715 := 0x01
                /// @src 69:2524:2542  "tickCumulatives[1]"
                let _950 := read_from_memoryt_int56(memory_array_index_access_t_array$_t_int56_$dyn_memory_ptr(expr_16714_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_16715)))
                let expr_16716 := _950
                /// @src 69:2545:2560  "tickCumulatives"
                let _951_mpos := var_tickCumulatives_16700_mpos
                let expr_16717_mpos := _951_mpos
                /// @src 69:2561:2562  "0"
                let expr_16718 := 0x00
                /// @src 69:2545:2563  "tickCumulatives[0]"
                let _952 := read_from_memoryt_int56(memory_array_index_access_t_array$_t_int56_$dyn_memory_ptr(expr_16717_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_16718)))
                let expr_16719 := _952
                /// @src 69:2524:2563  "tickCumulatives[1] - tickCumulatives[0]"
                let expr_16720 := checked_sub_t_int56(expr_16716, expr_16719)

                /// @src 69:2523:2564  "(tickCumulatives[1] - tickCumulatives[0])"
                let expr_16721 := expr_16720
                /// @src 69:2580:2583  "ago"
                let _953 := var_ago_16548
                let expr_16726 := _953
                /// @src 69:2573:2584  "int256(ago)"
                let expr_16727 := convert_t_uint256_to_t_int256(expr_16726)
                /// @src 69:2567:2585  "int56(int256(ago))"
                let expr_16728 := convert_t_int256_to_t_int56(expr_16727)
                /// @src 69:2523:2585  "(tickCumulatives[1] - tickCumulatives[0]) / int56(int256(ago))"
                let expr_16729 := checked_div_t_int56(expr_16721, expr_16728)

                /// @src 69:2517:2586  "int24((tickCumulatives[1] - tickCumulatives[0]) / int56(int256(ago)))"
                let expr_16730 := convert_t_int56_to_t_int24(expr_16729)
                /// @src 69:2504:2586  "int24 tick = int24((tickCumulatives[1] - tickCumulatives[0]) / int56(int256(ago)))"
                let var_tick_16711 := expr_16730
                /// @src 69:2620:2628  "TickMath"
                let expr_16734_address := linkersymbol("lib/v3-core/contracts/libraries/TickMath.sol:TickMath")
                /// @src 69:2648:2652  "tick"
                let _954 := var_tick_16711
                let expr_16736 := _954
                /// @src 69:2620:2653  "TickMath.getSqrtRatioAtTick(tick)"
                let expr_16737 := fun_getSqrtRatioAtTick_30100(expr_16736)
                /// @src 69:2597:2653  "uint160 sqrtPriceX96 = TickMath.getSqrtRatioAtTick(tick)"
                let var_sqrtPriceX96_16733 := expr_16737
                /// @src 69:2672:2684  "sqrtPriceX96"
                let _955 := var_sqrtPriceX96_16733
                let expr_16739 := _955
                /// @src 69:2671:2690  "(sqrtPriceX96, ago)"
                let expr_16741_component_1 := expr_16739
                /// @src 69:2686:2689  "ago"
                let _956 := var_ago_16548
                let expr_16740 := _956
                /// @src 69:2671:2690  "(sqrtPriceX96, ago)"
                let expr_16741_component_2 := expr_16740
                /// @src 69:2664:2690  "return (sqrtPriceX96, ago)"
                var__16551 := expr_16741_component_1
                var__16553 := expr_16741_component_2
                leave

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            /// @ast-id 32379
            /// @src 79:1951:2114  "function calSqrtPriceToPrice(uint256 sqrtPrice) internal pure returns (uint256 price) {..."
            function fun_calSqrtPriceToPrice_32379(var_sqrtPrice_32363) -> var_price_32366 {
                /// @src 79:2022:2035  "uint256 price"
                let zero_t_uint256_957 := zero_value_for_split_t_uint256()
                var_price_32366 := zero_t_uint256_957

                /// @src 79:2055:2063  "FullMath"
                let expr_32369_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 79:2071:2080  "sqrtPrice"
                let _958 := var_sqrtPrice_32363
                let expr_32371 := _958
                /// @src 79:2082:2091  "sqrtPrice"
                let _959 := var_sqrtPrice_32363
                let expr_32372 := _959
                /// @src 79:2093:2102  "Constants"
                let expr_32373_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 79:2093:2106  "Constants.Q96"
                let expr_32374 := constant_Q96_30297()
                /// @src 79:2055:2107  "FullMath.mulDiv(sqrtPrice, sqrtPrice, Constants.Q96)"
                let expr_32375 := fun_mulDiv_32512(expr_32371, expr_32372, expr_32374)
                /// @src 79:2047:2107  "price = FullMath.mulDiv(sqrtPrice, sqrtPrice, Constants.Q96)"
                var_price_32366 := expr_32375
                let expr_32376 := expr_32375

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            /// @ast-id 32228
            /// @src 79:710:1037  "function fullMulDivInt256(int256 x, uint256 y, uint256 z) internal pure returns (int256) {..."
            function fun_fullMulDivInt256_32228(var_x_32179, var_y_32181, var_z_32183) -> var__32186 {
                /// @src 79:791:797  "int256"
                let zero_t_int256_960 := zero_value_for_split_t_int256()
                var__32186 := zero_t_int256_960

                /// @src 79:813:814  "x"
                let _961 := var_x_32179
                let expr_32188 := _961
                /// @src 79:818:819  "0"
                let expr_32189 := 0x00
                /// @src 79:813:819  "x == 0"
                let expr_32190 := eq(cleanup_t_int256(expr_32188), convert_t_rational_0_by_1_to_t_int256(expr_32189))
                /// @src 79:809:1031  "if (x == 0) {..."
                switch expr_32190
                case 0 {
                    /// @src 79:864:865  "x"
                    let _962 := var_x_32179
                    let expr_32194 := _962
                    /// @src 79:868:869  "0"
                    let expr_32195 := 0x00
                    /// @src 79:864:869  "x > 0"
                    let expr_32196 := sgt(cleanup_t_int256(expr_32194), convert_t_rational_0_by_1_to_t_int256(expr_32195))
                    /// @src 79:860:1031  "if (x > 0) {..."
                    switch expr_32196
                    case 0 {
                        /// @src 79:975:983  "FullMath"
                        let expr_32210_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                        /// @src 79:1000:1001  "x"
                        let _963 := var_x_32179
                        let expr_32214 := _963
                        /// @src 79:999:1001  "-x"
                        let expr_32215 := negate_t_int256(expr_32214)
                        /// @src 79:991:1002  "uint256(-x)"
                        let expr_32216 := convert_t_int256_to_t_uint256(expr_32215)
                        /// @src 79:1004:1005  "y"
                        let _964 := var_y_32181
                        let expr_32217 := _964
                        /// @src 79:1007:1008  "z"
                        let _965 := var_z_32183
                        let expr_32218 := _965
                        /// @src 79:975:1009  "FullMath.mulDiv(uint256(-x), y, z)"
                        let expr_32219 := fun_mulDiv_32512(expr_32216, expr_32217, expr_32218)
                        /// @src 79:975:1018  "FullMath.mulDiv(uint256(-x), y, z).toInt256"
                        let expr_32220_self := expr_32219
                        /// @src 79:975:1020  "FullMath.mulDiv(uint256(-x), y, z).toInt256()"
                        let expr_32221 := fun_toInt256_28969(expr_32220_self)
                        /// @src 79:974:1020  "-FullMath.mulDiv(uint256(-x), y, z).toInt256()"
                        let expr_32222 := negate_t_int256(expr_32221)
                        /// @src 79:967:1020  "return -FullMath.mulDiv(uint256(-x), y, z).toInt256()"
                        var__32186 := expr_32222
                        leave
                        /// @src 79:860:1031  "if (x > 0) {..."
                    }
                    default {
                        /// @src 79:892:900  "FullMath"
                        let expr_32197_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                        /// @src 79:916:917  "x"
                        let _966 := var_x_32179
                        let expr_32201 := _966
                        /// @src 79:908:918  "uint256(x)"
                        let expr_32202 := convert_t_int256_to_t_uint256(expr_32201)
                        /// @src 79:920:921  "y"
                        let _967 := var_y_32181
                        let expr_32203 := _967
                        /// @src 79:923:924  "z"
                        let _968 := var_z_32183
                        let expr_32204 := _968
                        /// @src 79:892:925  "FullMath.mulDiv(uint256(x), y, z)"
                        let expr_32205 := fun_mulDiv_32512(expr_32202, expr_32203, expr_32204)
                        /// @src 79:892:934  "FullMath.mulDiv(uint256(x), y, z).toInt256"
                        let expr_32206_self := expr_32205
                        /// @src 79:892:936  "FullMath.mulDiv(uint256(x), y, z).toInt256()"
                        let expr_32207 := fun_toInt256_28969(expr_32206_self)
                        /// @src 79:885:936  "return FullMath.mulDiv(uint256(x), y, z).toInt256()"
                        var__32186 := expr_32207
                        leave
                        /// @src 79:860:1031  "if (x > 0) {..."
                    }
                    /// @src 79:809:1031  "if (x == 0) {..."
                }
                default {
                    /// @src 79:842:843  "0"
                    let expr_32191 := 0x00
                    /// @src 79:835:843  "return 0"
                    var__32186 := convert_t_rational_0_by_1_to_t_int256(expr_32191)
                    leave
                    /// @src 79:809:1031  "if (x == 0) {..."
                }

            }
            /// @src 73:468:2708  "library ReaderLogic {..."

            function store_literal_in_memory_50c51911f834abaa40521a23699e67b2f23d64b1bf78a1149cfc2a1d2d5c6baf(memPtr) {

                mstore(add(memPtr, 0), "e/empty-error")

            }

            function abi_encode_t_stringliteral_50c51911f834abaa40521a23699e67b2f23d64b1bf78a1149cfc2a1d2d5c6baf_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 13)
                store_literal_in_memory_50c51911f834abaa40521a23699e67b2f23d64b1bf78a1149cfc2a1d2d5c6baf(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_50c51911f834abaa40521a23699e67b2f23d64b1bf78a1149cfc2a1d2d5c6baf__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_50c51911f834abaa40521a23699e67b2f23d64b1bf78a1149cfc2a1d2d5c6baf_to_t_string_memory_ptr_fromStack( tail)

            }

            /// @ast-id 16761
            /// @src 69:2703:2935  "function revertBytes(bytes memory errMsg) internal pure {..."
            function fun_revertBytes_16761(var_errMsg_16746_mpos) {

                /// @src 69:2773:2779  "errMsg"
                let _969_mpos := var_errMsg_16746_mpos
                let expr_16749_mpos := _969_mpos
                /// @src 69:2773:2786  "errMsg.length"
                let expr_16750 := array_length_t_bytes_memory_ptr(expr_16749_mpos)
                /// @src 69:2789:2790  "0"
                let expr_16751 := 0x00
                /// @src 69:2773:2790  "errMsg.length > 0"
                let expr_16752 := gt(cleanup_t_uint256(expr_16750), convert_t_rational_0_by_1_to_t_uint256(expr_16751))
                /// @src 69:2769:2895  "if (errMsg.length > 0) {..."
                if expr_16752 {
                    /// @src 69:2806:2885  "assembly {..."
                    {
                        revert(add(32, var_errMsg_16746_mpos), mload(var_errMsg_16746_mpos))
                    }
                    /// @src 69:2769:2895  "if (errMsg.length > 0) {..."
                }
                /// @src 69:2905:2928  "revert(\"e/empty-error\")"
                {

                    let _971 := allocate_unbounded()

                    mstore(_971, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let _970 := abi_encode_tuple_t_stringliteral_50c51911f834abaa40521a23699e67b2f23d64b1bf78a1149cfc2a1d2d5c6baf__to_t_string_memory_ptr__fromStack(add(_971, 4) )
                    revert(_971, sub(_970, _971))
                }
            }
            /// @src 73:468:2708  "library ReaderLogic {..."

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
                let _977 := convert_t_rational_minus_887272_by_1_to_t_int24(expr_29708)

                ret := _977
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
                let _978 := expr_29713

                ret := _978
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

            /// @ast-id 30100
            /// @src 27:1385:4144  "function getSqrtRatioAtTick(int24 tick) internal pure returns (uint160 sqrtPriceX96) {..."
            function fun_getSqrtRatioAtTick_30100(var_tick_29725) -> var_sqrtPriceX96_29728 {
                /// @src 27:1448:1468  "uint160 sqrtPriceX96"
                let zero_t_uint160_972 := zero_value_for_split_t_uint160()
                var_sqrtPriceX96_29728 := zero_t_uint160_972

                /// @src 27:1522:1526  "tick"
                let _973 := var_tick_29725
                let expr_29732 := _973
                /// @src 27:1529:1530  "0"
                let expr_29733 := 0x00
                /// @src 27:1522:1530  "tick < 0"
                let expr_29734 := slt(cleanup_t_int24(expr_29732), convert_t_rational_0_by_1_to_t_int24(expr_29733))
                /// @src 27:1522:1579  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                let expr_29750
                switch expr_29734
                case 0 {
                    /// @src 27:1573:1577  "tick"
                    let _974 := var_tick_29725
                    let expr_29747 := _974
                    /// @src 27:1566:1578  "int256(tick)"
                    let expr_29748 := convert_t_int24_to_t_int256(expr_29747)
                    /// @src 27:1558:1579  "uint256(int256(tick))"
                    let expr_29749 := convert_t_int256_to_t_uint256(expr_29748)
                    /// @src 27:1522:1579  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                    expr_29750 := expr_29749
                }
                default {
                    /// @src 27:1549:1553  "tick"
                    let _975 := var_tick_29725
                    let expr_29739 := _975
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
                let _976 := var_absTick_29731
                let expr_29752 := _976
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

                        let _980 := 0

                        mstore(_980, 0x2bc80f3a00000000000000000000000000000000000000000000000000000000)
                        let _979 := abi_encode_tuple__to__fromStack(add(_980, 4) )
                        revert(_980, sub(_979, _980))
                    }/// @src 27:1593:1644  "if (absTick > uint256(int256(MAX_TICK))) revert T()"
                }
                /// @src 27:1675:1682  "absTick"
                let _981 := var_absTick_29731
                let expr_29767 := _981
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
                let _982 := var_absTick_29731
                let expr_29776 := _982
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
                    let _983 := var_ratio_29766
                    let expr_29782 := _983
                    /// @src 27:1855:1889  "0xfff97272373d413259a46990580e213a"
                    let expr_29783 := 0xfff97272373d413259a46990580e213a
                    /// @src 27:1847:1889  "ratio * 0xfff97272373d413259a46990580e213a"
                    let expr_29784 := wrapping_mul_t_uint256(expr_29782, convert_t_rational_340248342086729790484326174814286782778_by_1_to_t_uint256(expr_29783))

                    /// @src 27:1846:1890  "(ratio * 0xfff97272373d413259a46990580e213a)"
                    let expr_29785 := expr_29784
                    /// @src 27:1894:1897  "128"
                    let expr_29786 := 0x80
                    /// @src 27:1846:1897  "(ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                    let _984 := convert_t_rational_128_by_1_to_t_uint8(expr_29786)
                    let expr_29787 :=
                    shift_right_t_uint256_t_uint8(expr_29785, _984)

                    /// @src 27:1838:1897  "ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                    var_ratio_29766 := expr_29787
                    let expr_29788 := expr_29787
                    /// @src 27:1814:1897  "if (absTick & 0x2 != 0) ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                }
                /// @src 27:1915:1922  "absTick"
                let _985 := var_absTick_29731
                let expr_29791 := _985
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
                    let _986 := var_ratio_29766
                    let expr_29797 := _986
                    /// @src 27:1952:1986  "0xfff2e50f5f656932ef12357cf3c7fdcc"
                    let expr_29798 := 0xfff2e50f5f656932ef12357cf3c7fdcc
                    /// @src 27:1944:1986  "ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc"
                    let expr_29799 := wrapping_mul_t_uint256(expr_29797, convert_t_rational_340214320654664324051920982716015181260_by_1_to_t_uint256(expr_29798))

                    /// @src 27:1943:1987  "(ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc)"
                    let expr_29800 := expr_29799
                    /// @src 27:1991:1994  "128"
                    let expr_29801 := 0x80
                    /// @src 27:1943:1994  "(ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                    let _987 := convert_t_rational_128_by_1_to_t_uint8(expr_29801)
                    let expr_29802 :=
                    shift_right_t_uint256_t_uint8(expr_29800, _987)

                    /// @src 27:1935:1994  "ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                    var_ratio_29766 := expr_29802
                    let expr_29803 := expr_29802
                    /// @src 27:1911:1994  "if (absTick & 0x4 != 0) ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                }
                /// @src 27:2012:2019  "absTick"
                let _988 := var_absTick_29731
                let expr_29806 := _988
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
                    let _989 := var_ratio_29766
                    let expr_29812 := _989
                    /// @src 27:2049:2083  "0xffe5caca7e10e4e61c3624eaa0941cd0"
                    let expr_29813 := 0xffe5caca7e10e4e61c3624eaa0941cd0
                    /// @src 27:2041:2083  "ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0"
                    let expr_29814 := wrapping_mul_t_uint256(expr_29812, convert_t_rational_340146287995602323631171512101879684304_by_1_to_t_uint256(expr_29813))

                    /// @src 27:2040:2084  "(ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0)"
                    let expr_29815 := expr_29814
                    /// @src 27:2088:2091  "128"
                    let expr_29816 := 0x80
                    /// @src 27:2040:2091  "(ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                    let _990 := convert_t_rational_128_by_1_to_t_uint8(expr_29816)
                    let expr_29817 :=
                    shift_right_t_uint256_t_uint8(expr_29815, _990)

                    /// @src 27:2032:2091  "ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                    var_ratio_29766 := expr_29817
                    let expr_29818 := expr_29817
                    /// @src 27:2008:2091  "if (absTick & 0x8 != 0) ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                }
                /// @src 27:2109:2116  "absTick"
                let _991 := var_absTick_29731
                let expr_29821 := _991
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
                    let _992 := var_ratio_29766
                    let expr_29827 := _992
                    /// @src 27:2147:2181  "0xffcb9843d60f6159c9db58835c926644"
                    let expr_29828 := 0xffcb9843d60f6159c9db58835c926644
                    /// @src 27:2139:2181  "ratio * 0xffcb9843d60f6159c9db58835c926644"
                    let expr_29829 := wrapping_mul_t_uint256(expr_29827, convert_t_rational_340010263488231146823593991679159461444_by_1_to_t_uint256(expr_29828))

                    /// @src 27:2138:2182  "(ratio * 0xffcb9843d60f6159c9db58835c926644)"
                    let expr_29830 := expr_29829
                    /// @src 27:2186:2189  "128"
                    let expr_29831 := 0x80
                    /// @src 27:2138:2189  "(ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                    let _993 := convert_t_rational_128_by_1_to_t_uint8(expr_29831)
                    let expr_29832 :=
                    shift_right_t_uint256_t_uint8(expr_29830, _993)

                    /// @src 27:2130:2189  "ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                    var_ratio_29766 := expr_29832
                    let expr_29833 := expr_29832
                    /// @src 27:2105:2189  "if (absTick & 0x10 != 0) ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                }
                /// @src 27:2207:2214  "absTick"
                let _994 := var_absTick_29731
                let expr_29836 := _994
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
                    let _995 := var_ratio_29766
                    let expr_29842 := _995
                    /// @src 27:2245:2279  "0xff973b41fa98c081472e6896dfb254c0"
                    let expr_29843 := 0xff973b41fa98c081472e6896dfb254c0
                    /// @src 27:2237:2279  "ratio * 0xff973b41fa98c081472e6896dfb254c0"
                    let expr_29844 := wrapping_mul_t_uint256(expr_29842, convert_t_rational_339738377640345403697157401104375502016_by_1_to_t_uint256(expr_29843))

                    /// @src 27:2236:2280  "(ratio * 0xff973b41fa98c081472e6896dfb254c0)"
                    let expr_29845 := expr_29844
                    /// @src 27:2284:2287  "128"
                    let expr_29846 := 0x80
                    /// @src 27:2236:2287  "(ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                    let _996 := convert_t_rational_128_by_1_to_t_uint8(expr_29846)
                    let expr_29847 :=
                    shift_right_t_uint256_t_uint8(expr_29845, _996)

                    /// @src 27:2228:2287  "ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                    var_ratio_29766 := expr_29847
                    let expr_29848 := expr_29847
                    /// @src 27:2203:2287  "if (absTick & 0x20 != 0) ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                }
                /// @src 27:2305:2312  "absTick"
                let _997 := var_absTick_29731
                let expr_29851 := _997
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
                    let _998 := var_ratio_29766
                    let expr_29857 := _998
                    /// @src 27:2343:2377  "0xff2ea16466c96a3843ec78b326b52861"
                    let expr_29858 := 0xff2ea16466c96a3843ec78b326b52861
                    /// @src 27:2335:2377  "ratio * 0xff2ea16466c96a3843ec78b326b52861"
                    let expr_29859 := wrapping_mul_t_uint256(expr_29857, convert_t_rational_339195258003219555707034227454543997025_by_1_to_t_uint256(expr_29858))

                    /// @src 27:2334:2378  "(ratio * 0xff2ea16466c96a3843ec78b326b52861)"
                    let expr_29860 := expr_29859
                    /// @src 27:2382:2385  "128"
                    let expr_29861 := 0x80
                    /// @src 27:2334:2385  "(ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                    let _999 := convert_t_rational_128_by_1_to_t_uint8(expr_29861)
                    let expr_29862 :=
                    shift_right_t_uint256_t_uint8(expr_29860, _999)

                    /// @src 27:2326:2385  "ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                    var_ratio_29766 := expr_29862
                    let expr_29863 := expr_29862
                    /// @src 27:2301:2385  "if (absTick & 0x40 != 0) ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                }
                /// @src 27:2403:2410  "absTick"
                let _1000 := var_absTick_29731
                let expr_29866 := _1000
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
                    let _1001 := var_ratio_29766
                    let expr_29872 := _1001
                    /// @src 27:2441:2475  "0xfe5dee046a99a2a811c461f1969c3053"
                    let expr_29873 := 0xfe5dee046a99a2a811c461f1969c3053
                    /// @src 27:2433:2475  "ratio * 0xfe5dee046a99a2a811c461f1969c3053"
                    let expr_29874 := wrapping_mul_t_uint256(expr_29872, convert_t_rational_338111622100601834656805679988414885971_by_1_to_t_uint256(expr_29873))

                    /// @src 27:2432:2476  "(ratio * 0xfe5dee046a99a2a811c461f1969c3053)"
                    let expr_29875 := expr_29874
                    /// @src 27:2480:2483  "128"
                    let expr_29876 := 0x80
                    /// @src 27:2432:2483  "(ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                    let _1002 := convert_t_rational_128_by_1_to_t_uint8(expr_29876)
                    let expr_29877 :=
                    shift_right_t_uint256_t_uint8(expr_29875, _1002)

                    /// @src 27:2424:2483  "ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                    var_ratio_29766 := expr_29877
                    let expr_29878 := expr_29877
                    /// @src 27:2399:2483  "if (absTick & 0x80 != 0) ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                }
                /// @src 27:2501:2508  "absTick"
                let _1003 := var_absTick_29731
                let expr_29881 := _1003
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
                    let _1004 := var_ratio_29766
                    let expr_29887 := _1004
                    /// @src 27:2540:2574  "0xfcbe86c7900a88aedcffc83b479aa3a4"
                    let expr_29888 := 0xfcbe86c7900a88aedcffc83b479aa3a4
                    /// @src 27:2532:2574  "ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4"
                    let expr_29889 := wrapping_mul_t_uint256(expr_29887, convert_t_rational_335954724994790223023589805789778977700_by_1_to_t_uint256(expr_29888))

                    /// @src 27:2531:2575  "(ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4)"
                    let expr_29890 := expr_29889
                    /// @src 27:2579:2582  "128"
                    let expr_29891 := 0x80
                    /// @src 27:2531:2582  "(ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                    let _1005 := convert_t_rational_128_by_1_to_t_uint8(expr_29891)
                    let expr_29892 :=
                    shift_right_t_uint256_t_uint8(expr_29890, _1005)

                    /// @src 27:2523:2582  "ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                    var_ratio_29766 := expr_29892
                    let expr_29893 := expr_29892
                    /// @src 27:2497:2582  "if (absTick & 0x100 != 0) ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                }
                /// @src 27:2600:2607  "absTick"
                let _1006 := var_absTick_29731
                let expr_29896 := _1006
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
                    let _1007 := var_ratio_29766
                    let expr_29902 := _1007
                    /// @src 27:2639:2673  "0xf987a7253ac413176f2b074cf7815e54"
                    let expr_29903 := 0xf987a7253ac413176f2b074cf7815e54
                    /// @src 27:2631:2673  "ratio * 0xf987a7253ac413176f2b074cf7815e54"
                    let expr_29904 := wrapping_mul_t_uint256(expr_29902, convert_t_rational_331682121138379247127172139078559817300_by_1_to_t_uint256(expr_29903))

                    /// @src 27:2630:2674  "(ratio * 0xf987a7253ac413176f2b074cf7815e54)"
                    let expr_29905 := expr_29904
                    /// @src 27:2678:2681  "128"
                    let expr_29906 := 0x80
                    /// @src 27:2630:2681  "(ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                    let _1008 := convert_t_rational_128_by_1_to_t_uint8(expr_29906)
                    let expr_29907 :=
                    shift_right_t_uint256_t_uint8(expr_29905, _1008)

                    /// @src 27:2622:2681  "ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                    var_ratio_29766 := expr_29907
                    let expr_29908 := expr_29907
                    /// @src 27:2596:2681  "if (absTick & 0x200 != 0) ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                }
                /// @src 27:2699:2706  "absTick"
                let _1009 := var_absTick_29731
                let expr_29911 := _1009
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
                    let _1010 := var_ratio_29766
                    let expr_29917 := _1010
                    /// @src 27:2738:2772  "0xf3392b0822b70005940c7a398e4b70f3"
                    let expr_29918 := 0xf3392b0822b70005940c7a398e4b70f3
                    /// @src 27:2730:2772  "ratio * 0xf3392b0822b70005940c7a398e4b70f3"
                    let expr_29919 := wrapping_mul_t_uint256(expr_29917, convert_t_rational_323299236684853023288211250268160618739_by_1_to_t_uint256(expr_29918))

                    /// @src 27:2729:2773  "(ratio * 0xf3392b0822b70005940c7a398e4b70f3)"
                    let expr_29920 := expr_29919
                    /// @src 27:2777:2780  "128"
                    let expr_29921 := 0x80
                    /// @src 27:2729:2780  "(ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                    let _1011 := convert_t_rational_128_by_1_to_t_uint8(expr_29921)
                    let expr_29922 :=
                    shift_right_t_uint256_t_uint8(expr_29920, _1011)

                    /// @src 27:2721:2780  "ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                    var_ratio_29766 := expr_29922
                    let expr_29923 := expr_29922
                    /// @src 27:2695:2780  "if (absTick & 0x400 != 0) ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                }
                /// @src 27:2798:2805  "absTick"
                let _1012 := var_absTick_29731
                let expr_29926 := _1012
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
                    let _1013 := var_ratio_29766
                    let expr_29932 := _1013
                    /// @src 27:2837:2871  "0xe7159475a2c29b7443b29c7fa6e889d9"
                    let expr_29933 := 0xe7159475a2c29b7443b29c7fa6e889d9
                    /// @src 27:2829:2871  "ratio * 0xe7159475a2c29b7443b29c7fa6e889d9"
                    let expr_29934 := wrapping_mul_t_uint256(expr_29932, convert_t_rational_307163716377032989948697243942600083929_by_1_to_t_uint256(expr_29933))

                    /// @src 27:2828:2872  "(ratio * 0xe7159475a2c29b7443b29c7fa6e889d9)"
                    let expr_29935 := expr_29934
                    /// @src 27:2876:2879  "128"
                    let expr_29936 := 0x80
                    /// @src 27:2828:2879  "(ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                    let _1014 := convert_t_rational_128_by_1_to_t_uint8(expr_29936)
                    let expr_29937 :=
                    shift_right_t_uint256_t_uint8(expr_29935, _1014)

                    /// @src 27:2820:2879  "ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                    var_ratio_29766 := expr_29937
                    let expr_29938 := expr_29937
                    /// @src 27:2794:2879  "if (absTick & 0x800 != 0) ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                }
                /// @src 27:2897:2904  "absTick"
                let _1015 := var_absTick_29731
                let expr_29941 := _1015
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
                    let _1016 := var_ratio_29766
                    let expr_29947 := _1016
                    /// @src 27:2937:2971  "0xd097f3bdfd2022b8845ad8f792aa5825"
                    let expr_29948 := 0xd097f3bdfd2022b8845ad8f792aa5825
                    /// @src 27:2929:2971  "ratio * 0xd097f3bdfd2022b8845ad8f792aa5825"
                    let expr_29949 := wrapping_mul_t_uint256(expr_29947, convert_t_rational_277268403626896220162999269216087595045_by_1_to_t_uint256(expr_29948))

                    /// @src 27:2928:2972  "(ratio * 0xd097f3bdfd2022b8845ad8f792aa5825)"
                    let expr_29950 := expr_29949
                    /// @src 27:2976:2979  "128"
                    let expr_29951 := 0x80
                    /// @src 27:2928:2979  "(ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                    let _1017 := convert_t_rational_128_by_1_to_t_uint8(expr_29951)
                    let expr_29952 :=
                    shift_right_t_uint256_t_uint8(expr_29950, _1017)

                    /// @src 27:2920:2979  "ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                    var_ratio_29766 := expr_29952
                    let expr_29953 := expr_29952
                    /// @src 27:2893:2979  "if (absTick & 0x1000 != 0) ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                }
                /// @src 27:2997:3004  "absTick"
                let _1018 := var_absTick_29731
                let expr_29956 := _1018
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
                    let _1019 := var_ratio_29766
                    let expr_29962 := _1019
                    /// @src 27:3037:3071  "0xa9f746462d870fdf8a65dc1f90e061e5"
                    let expr_29963 := 0xa9f746462d870fdf8a65dc1f90e061e5
                    /// @src 27:3029:3071  "ratio * 0xa9f746462d870fdf8a65dc1f90e061e5"
                    let expr_29964 := wrapping_mul_t_uint256(expr_29962, convert_t_rational_225923453940442621947126027127485391333_by_1_to_t_uint256(expr_29963))

                    /// @src 27:3028:3072  "(ratio * 0xa9f746462d870fdf8a65dc1f90e061e5)"
                    let expr_29965 := expr_29964
                    /// @src 27:3076:3079  "128"
                    let expr_29966 := 0x80
                    /// @src 27:3028:3079  "(ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                    let _1020 := convert_t_rational_128_by_1_to_t_uint8(expr_29966)
                    let expr_29967 :=
                    shift_right_t_uint256_t_uint8(expr_29965, _1020)

                    /// @src 27:3020:3079  "ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                    var_ratio_29766 := expr_29967
                    let expr_29968 := expr_29967
                    /// @src 27:2993:3079  "if (absTick & 0x2000 != 0) ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                }
                /// @src 27:3097:3104  "absTick"
                let _1021 := var_absTick_29731
                let expr_29971 := _1021
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
                    let _1022 := var_ratio_29766
                    let expr_29977 := _1022
                    /// @src 27:3137:3171  "0x70d869a156d2a1b890bb3df62baf32f7"
                    let expr_29978 := 0x70d869a156d2a1b890bb3df62baf32f7
                    /// @src 27:3129:3171  "ratio * 0x70d869a156d2a1b890bb3df62baf32f7"
                    let expr_29979 := wrapping_mul_t_uint256(expr_29977, convert_t_rational_149997214084966997727330242082538205943_by_1_to_t_uint256(expr_29978))

                    /// @src 27:3128:3172  "(ratio * 0x70d869a156d2a1b890bb3df62baf32f7)"
                    let expr_29980 := expr_29979
                    /// @src 27:3176:3179  "128"
                    let expr_29981 := 0x80
                    /// @src 27:3128:3179  "(ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                    let _1023 := convert_t_rational_128_by_1_to_t_uint8(expr_29981)
                    let expr_29982 :=
                    shift_right_t_uint256_t_uint8(expr_29980, _1023)

                    /// @src 27:3120:3179  "ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                    var_ratio_29766 := expr_29982
                    let expr_29983 := expr_29982
                    /// @src 27:3093:3179  "if (absTick & 0x4000 != 0) ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                }
                /// @src 27:3197:3204  "absTick"
                let _1024 := var_absTick_29731
                let expr_29986 := _1024
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
                    let _1025 := var_ratio_29766
                    let expr_29992 := _1025
                    /// @src 27:3237:3271  "0x31be135f97d08fd981231505542fcfa6"
                    let expr_29993 := 0x31be135f97d08fd981231505542fcfa6
                    /// @src 27:3229:3271  "ratio * 0x31be135f97d08fd981231505542fcfa6"
                    let expr_29994 := wrapping_mul_t_uint256(expr_29992, convert_t_rational_66119101136024775622716233608466517926_by_1_to_t_uint256(expr_29993))

                    /// @src 27:3228:3272  "(ratio * 0x31be135f97d08fd981231505542fcfa6)"
                    let expr_29995 := expr_29994
                    /// @src 27:3276:3279  "128"
                    let expr_29996 := 0x80
                    /// @src 27:3228:3279  "(ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                    let _1026 := convert_t_rational_128_by_1_to_t_uint8(expr_29996)
                    let expr_29997 :=
                    shift_right_t_uint256_t_uint8(expr_29995, _1026)

                    /// @src 27:3220:3279  "ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                    var_ratio_29766 := expr_29997
                    let expr_29998 := expr_29997
                    /// @src 27:3193:3279  "if (absTick & 0x8000 != 0) ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                }
                /// @src 27:3297:3304  "absTick"
                let _1027 := var_absTick_29731
                let expr_30001 := _1027
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
                    let _1028 := var_ratio_29766
                    let expr_30007 := _1028
                    /// @src 27:3338:3371  "0x9aa508b5b7a84e1c677de54f3e99bc9"
                    let expr_30008 := 0x09aa508b5b7a84e1c677de54f3e99bc9
                    /// @src 27:3330:3371  "ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9"
                    let expr_30009 := wrapping_mul_t_uint256(expr_30007, convert_t_rational_12847376061809297530290974190478138313_by_1_to_t_uint256(expr_30008))

                    /// @src 27:3329:3372  "(ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9)"
                    let expr_30010 := expr_30009
                    /// @src 27:3376:3379  "128"
                    let expr_30011 := 0x80
                    /// @src 27:3329:3379  "(ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                    let _1029 := convert_t_rational_128_by_1_to_t_uint8(expr_30011)
                    let expr_30012 :=
                    shift_right_t_uint256_t_uint8(expr_30010, _1029)

                    /// @src 27:3321:3379  "ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                    var_ratio_29766 := expr_30012
                    let expr_30013 := expr_30012
                    /// @src 27:3293:3379  "if (absTick & 0x10000 != 0) ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                }
                /// @src 27:3397:3404  "absTick"
                let _1030 := var_absTick_29731
                let expr_30016 := _1030
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
                    let _1031 := var_ratio_29766
                    let expr_30022 := _1031
                    /// @src 27:3438:3470  "0x5d6af8dedb81196699c329225ee604"
                    let expr_30023 := 0x5d6af8dedb81196699c329225ee604
                    /// @src 27:3430:3470  "ratio * 0x5d6af8dedb81196699c329225ee604"
                    let expr_30024 := wrapping_mul_t_uint256(expr_30022, convert_t_rational_485053260817066172746253684029974020_by_1_to_t_uint256(expr_30023))

                    /// @src 27:3429:3471  "(ratio * 0x5d6af8dedb81196699c329225ee604)"
                    let expr_30025 := expr_30024
                    /// @src 27:3475:3478  "128"
                    let expr_30026 := 0x80
                    /// @src 27:3429:3478  "(ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                    let _1032 := convert_t_rational_128_by_1_to_t_uint8(expr_30026)
                    let expr_30027 :=
                    shift_right_t_uint256_t_uint8(expr_30025, _1032)

                    /// @src 27:3421:3478  "ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                    var_ratio_29766 := expr_30027
                    let expr_30028 := expr_30027
                    /// @src 27:3393:3478  "if (absTick & 0x20000 != 0) ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                }
                /// @src 27:3496:3503  "absTick"
                let _1033 := var_absTick_29731
                let expr_30031 := _1033
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
                    let _1034 := var_ratio_29766
                    let expr_30037 := _1034
                    /// @src 27:3537:3567  "0x2216e584f5fa1ea926041bedfe98"
                    let expr_30038 := 0x2216e584f5fa1ea926041bedfe98
                    /// @src 27:3529:3567  "ratio * 0x2216e584f5fa1ea926041bedfe98"
                    let expr_30039 := wrapping_mul_t_uint256(expr_30037, convert_t_rational_691415978906521570653435304214168_by_1_to_t_uint256(expr_30038))

                    /// @src 27:3528:3568  "(ratio * 0x2216e584f5fa1ea926041bedfe98)"
                    let expr_30040 := expr_30039
                    /// @src 27:3572:3575  "128"
                    let expr_30041 := 0x80
                    /// @src 27:3528:3575  "(ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                    let _1035 := convert_t_rational_128_by_1_to_t_uint8(expr_30041)
                    let expr_30042 :=
                    shift_right_t_uint256_t_uint8(expr_30040, _1035)

                    /// @src 27:3520:3575  "ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                    var_ratio_29766 := expr_30042
                    let expr_30043 := expr_30042
                    /// @src 27:3492:3575  "if (absTick & 0x40000 != 0) ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                }
                /// @src 27:3593:3600  "absTick"
                let _1036 := var_absTick_29731
                let expr_30046 := _1036
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
                    let _1037 := var_ratio_29766
                    let expr_30052 := _1037
                    /// @src 27:3634:3659  "0x48a170391f7dc42444e8fa2"
                    let expr_30053 := 0x048a170391f7dc42444e8fa2
                    /// @src 27:3626:3659  "ratio * 0x48a170391f7dc42444e8fa2"
                    let expr_30054 := wrapping_mul_t_uint256(expr_30052, convert_t_rational_1404880482679654955896180642_by_1_to_t_uint256(expr_30053))

                    /// @src 27:3625:3660  "(ratio * 0x48a170391f7dc42444e8fa2)"
                    let expr_30055 := expr_30054
                    /// @src 27:3664:3667  "128"
                    let expr_30056 := 0x80
                    /// @src 27:3625:3667  "(ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                    let _1038 := convert_t_rational_128_by_1_to_t_uint8(expr_30056)
                    let expr_30057 :=
                    shift_right_t_uint256_t_uint8(expr_30055, _1038)

                    /// @src 27:3617:3667  "ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                    var_ratio_29766 := expr_30057
                    let expr_30058 := expr_30057
                    /// @src 27:3589:3667  "if (absTick & 0x80000 != 0) ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                }
                /// @src 27:3686:3690  "tick"
                let _1039 := var_tick_29725
                let expr_30061 := _1039
                /// @src 27:3693:3694  "0"
                let expr_30062 := 0x00
                /// @src 27:3686:3694  "tick > 0"
                let expr_30063 := sgt(cleanup_t_int24(expr_30061), convert_t_rational_0_by_1_to_t_int24(expr_30062))
                /// @src 27:3682:3729  "if (tick > 0) ratio = type(uint256).max / ratio"
                if expr_30063 {
                    /// @src 27:3704:3721  "type(uint256).max"
                    let expr_30069 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 27:3724:3729  "ratio"
                    let _1040 := var_ratio_29766
                    let expr_30070 := _1040
                    /// @src 27:3704:3729  "type(uint256).max / ratio"
                    let expr_30071 := wrapping_div_t_uint256(expr_30069, expr_30070)

                    /// @src 27:3696:3729  "ratio = type(uint256).max / ratio"
                    var_ratio_29766 := expr_30071
                    let expr_30072 := expr_30071
                    /// @src 27:3682:3729  "if (tick > 0) ratio = type(uint256).max / ratio"
                }
                /// @src 27:4079:4084  "ratio"
                let _1041 := var_ratio_29766
                let expr_30078 := _1041
                /// @src 27:4088:4090  "32"
                let expr_30079 := 0x20
                /// @src 27:4079:4090  "ratio >> 32"
                let _1042 := convert_t_rational_32_by_1_to_t_uint8(expr_30079)
                let expr_30080 :=
                shift_right_t_uint256_t_uint8(expr_30078, _1042)

                /// @src 27:4078:4091  "(ratio >> 32)"
                let expr_30081 := expr_30080
                /// @src 27:4095:4100  "ratio"
                let _1043 := var_ratio_29766
                let expr_30082 := _1043
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
            /// @src 73:468:2708  "library ReaderLogic {..."

        }

        data ".metadata" hex"a2646970667358221220de37d21c2e01e1d6338f18b2c86d2a80db2ccba524131f40a452476a67e1520e64736f6c634300081e0033"
    }

}

