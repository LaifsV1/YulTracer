
/// @use-src 72:"src/libraries/logic/LiquidationLogic.sol"
object "LiquidationLogic_18263" {
    code {
        /// @src 72:884:6831  "library LiquidationLogic {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("LiquidationLogic_18263_deployed"), datasize("LiquidationLogic_18263_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("LiquidationLogic_18263_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 72:884:6831  "library LiquidationLogic {..."
        function constructor_LiquidationLogic_18263() {

            /// @src 72:884:6831  "library LiquidationLogic {..."

        }
        /// @src 72:884:6831  "library LiquidationLogic {..."

    }
    /// @use-src 10:"lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol", 12:"lib/solmate/src/utils/FixedPointMathLib.sol", 14:"lib/solmate/src/utils/SafeTransferLib.sol", 26:"lib/v3-core/contracts/libraries/FullMath.sol", 27:"lib/v3-core/contracts/libraries/TickMath.sol", 56:"src/libraries/ApplyInterestLib.sol", 57:"src/libraries/Constants.sol", 59:"src/libraries/InterestRateModel.sol", 60:"src/libraries/PairLib.sol", 61:"src/libraries/Perp.sol", 62:"src/libraries/PerpFee.sol", 63:"src/libraries/PositionCalculator.sol", 64:"src/libraries/PremiumCurveModel.sol", 66:"src/libraries/ScaledAsset.sol", 67:"src/libraries/SlippageLib.sol", 69:"src/libraries/UniHelper.sol", 72:"src/libraries/logic/LiquidationLogic.sol", 77:"src/libraries/math/Bps.sol", 79:"src/libraries/math/Math.sol"
    object "LiquidationLogic_18263_deployed" {
        code {
            /// @src 72:884:6831  "library LiquidationLogic {..."
            mstore(64, 128)

            let called_via_delegatecall := iszero(eq(loadimmutable("library_deploy_address"), address()))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x4f9983d4
                {
                    // liquidate(uint256,uint256,GlobalDataLibrary.GlobalData storage,bytes)
                    if iszero(called_via_delegatecall) { revert_error_fb00381150b0555b0bf83aa2d95ae5599abd614bfe490c66e084fe1f454f48e2() }
                    external_fun_liquidate_18127()
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

            function abi_decode_tuple_t_uint256t_uint256t_struct$_GlobalData_$19302_storage_ptrt_bytes_memory_ptr(headStart, dataEnd) -> value0, value1, value2, value3 {
                if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_struct$_GlobalData_$19302_storage_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 96))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value3 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function cleanup_t_int256(value) -> cleaned {
                cleaned := value
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

            function external_fun_liquidate_18127() {

                let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_uint256t_uint256t_struct$_GlobalData_$19302_storage_ptrt_bytes_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_liquidate_18127(param_0, param_1, param_2, param_3)
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

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function cleanup_t_rational_1000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000000000000000000_by_1(value)))
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function store_literal_in_memory_07ced0a23e1ea5b3afb00645aaac748fdd6dbe61e039158c11177814a53f0aaf(memPtr) {

                mstore(add(memPtr, 0), "ICR")

            }

            function abi_encode_t_stringliteral_07ced0a23e1ea5b3afb00645aaac748fdd6dbe61e039158c11177814a53f0aaf_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 3)
                store_literal_in_memory_07ced0a23e1ea5b3afb00645aaac748fdd6dbe61e039158c11177814a53f0aaf(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_07ced0a23e1ea5b3afb00645aaac748fdd6dbe61e039158c11177814a53f0aaf__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_07ced0a23e1ea5b3afb00645aaac748fdd6dbe61e039158c11177814a53f0aaf_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_07ced0a23e1ea5b3afb00645aaac748fdd6dbe61e039158c11177814a53f0aaf(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_07ced0a23e1ea5b3afb00645aaac748fdd6dbe61e039158c11177814a53f0aaf__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Vault_$6116_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function convert_t_struct$_Vault_$6116_storage_to_t_struct$_Vault_$6116_storage_ptr(value) -> converted {
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

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_storage_ptr(value) -> converted {
                converted := value
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

            function convert_t_struct$_Vault_$6116_storage_ptr_to_t_struct$_Vault_$6116_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_Vault_$6116_memory_ptr(value)

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

            function convert_t_uint256_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_uint256(value)))
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

            function convert_t_rational_1000000000000000000_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_1000000000000000000_by_1(value)))
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

            function allocate_memory_struct_t_struct$_TradeParams_$2018_storage_ptr() -> memPtr {
                memPtr := allocate_memory(160)
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

            function store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(memPtr) {

            }

            function copy_literal_to_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(0)
                store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(add(memPtr, 32))
            }

            function convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr() -> converted {
                converted := copy_literal_to_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470()
            }

            function write_to_memory_t_bytes_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function convert_t_type$_t_contract$_Trade_$34396_$_to_t_address(value) -> converted {
                converted := value
            }

            function revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() {
                revert(0, 0)
            }

            function shift_left_224(value) -> newValue {
                newValue :=

                shl(224, value)

            }

            function revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() {
                revert(0, 0)
            }

            function revert_error_5e8f644817bc4960744f35c15999b6eff64ae702f94b1c46297cfd4e1aec2421() {
                revert(0, 0)
            }

            function validator_revert_t_int256(value) {
                if iszero(eq(value, cleanup_t_int256(value))) { revert(0, 0) }
            }

            function abi_decode_t_int256_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_int256(value)
            }

            // struct IPredyPool.Payoff
            function abi_decode_t_struct$_Payoff_$2047_memory_ptr_fromMemory(headStart, end) -> value {
                if slt(sub(end, headStart), 0xc0) { revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() }
                value := allocate_memory(0xc0)

                {
                    // perpEntryUpdate

                    let offset := 0

                    mstore(add(value, 0x00), abi_decode_t_int256_fromMemory(add(headStart, offset), end))

                }

                {
                    // sqrtEntryUpdate

                    let offset := 32

                    mstore(add(value, 0x20), abi_decode_t_int256_fromMemory(add(headStart, offset), end))

                }

                {
                    // sqrtRebalanceEntryUpdateUnderlying

                    let offset := 64

                    mstore(add(value, 0x40), abi_decode_t_int256_fromMemory(add(headStart, offset), end))

                }

                {
                    // sqrtRebalanceEntryUpdateStable

                    let offset := 96

                    mstore(add(value, 0x60), abi_decode_t_int256_fromMemory(add(headStart, offset), end))

                }

                {
                    // perpPayoff

                    let offset := 128

                    mstore(add(value, 0x80), abi_decode_t_int256_fromMemory(add(headStart, offset), end))

                }

                {
                    // sqrtPayoff

                    let offset := 160

                    mstore(add(value, 0xa0), abi_decode_t_int256_fromMemory(add(headStart, offset), end))

                }

            }

            function abi_decode_t_uint256_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint256(value)
            }

            // struct IPredyPool.TradeResult
            function abi_decode_t_struct$_TradeResult_$2034_memory_ptr_fromMemory(headStart, end) -> value {
                if slt(sub(end, headStart), 0x0180) { revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() }
                value := allocate_memory(0xe0)

                {
                    // payoff

                    let offset := 0

                    mstore(add(value, 0x00), abi_decode_t_struct$_Payoff_$2047_memory_ptr_fromMemory(add(headStart, offset), end))

                }

                {
                    // vaultId

                    let offset := 192

                    mstore(add(value, 0x20), abi_decode_t_uint256_fromMemory(add(headStart, offset), end))

                }

                {
                    // fee

                    let offset := 224

                    mstore(add(value, 0x40), abi_decode_t_int256_fromMemory(add(headStart, offset), end))

                }

                {
                    // minMargin

                    let offset := 256

                    mstore(add(value, 0x60), abi_decode_t_int256_fromMemory(add(headStart, offset), end))

                }

                {
                    // averagePrice

                    let offset := 288

                    mstore(add(value, 0x80), abi_decode_t_int256_fromMemory(add(headStart, offset), end))

                }

                {
                    // sqrtTwap

                    let offset := 320

                    mstore(add(value, 0xa0), abi_decode_t_uint256_fromMemory(add(headStart, offset), end))

                }

                {
                    // sqrtPrice

                    let offset := 352

                    mstore(add(value, 0xc0), abi_decode_t_uint256_fromMemory(add(headStart, offset), end))

                }

            }

            function abi_decode_tuple_t_struct$_TradeResult_$2034_memory_ptr_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 384) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_TradeResult_$2034_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_struct$_GlobalData_$19302_storage_ptr_to_t_uint256_fromStack_library(value, pos) {
                mstore(pos, value)
            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_library(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function copy_memory_to_memory_with_cleanup(src, dst, length) {

                mcopy(dst, src, length)
                mstore(add(dst, length), 0)

            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_library(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_library(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            // struct IPredyPool.TradeParams -> struct IPredyPool.TradeParams
            function abi_encode_t_struct$_TradeParams_$2018_memory_ptr_to_t_struct$_TradeParams_$2018_memory_ptr_fromStack_library(value, pos)  -> end  {
                let tail := add(pos, 0xa0)

                {
                    // pairId

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_uint256_to_t_uint256_library(memberValue0, add(pos, 0x00))
                }

                {
                    // vaultId

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_uint256_to_t_uint256_library(memberValue0, add(pos, 0x20))
                }

                {
                    // tradeAmount

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_int256_to_t_int256_library(memberValue0, add(pos, 0x40))
                }

                {
                    // tradeAmountSqrt

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_int256_to_t_int256_library(memberValue0, add(pos, 0x60))
                }

                {
                    // extraData

                    let memberValue0 := mload(add(value, 0x80))

                    mstore(add(pos, 0x80), sub(tail, pos))
                    tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_library(memberValue0, tail)

                }

                end := tail
            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack_library(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack_library(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack_library(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_struct$_GlobalData_$19302_storage_ptr_t_struct$_TradeParams_$2018_memory_ptr_t_bytes_memory_ptr__to_t_uint256_t_struct$_TradeParams_$2018_memory_ptr_t_bytes_memory_ptr__fromStack_library(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_struct$_GlobalData_$19302_storage_ptr_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

                mstore(add(headStart, 32), sub(tail, headStart))
                tail := abi_encode_t_struct$_TradeParams_$2018_memory_ptr_to_t_struct$_TradeParams_$2018_memory_ptr_fromStack_library(value1,  tail)

                mstore(add(headStart, 64), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack_library(value2,  tail)

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            function read_from_memoryt_int256(ptr) -> returnValue {

                let value := cleanup_t_int256(mload(ptr))

                returnValue :=

                value

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

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function allocate_memory_struct_t_struct$_FeeAmount_$6126_storage_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function convert_t_rational_0_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function cleanup_t_rational_101488915_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_101488915_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_101488915_by_1(value)))
            }

            /// @src 72:1066:1127  "uint256 constant _MAX_ACCEPTABLE_SQRT_PRICE_RANGE = 101488915"
            function constant__MAX_ACCEPTABLE_SQRT_PRICE_RANGE_17832() -> ret {
                /// @src 72:1118:1127  "101488915"
                let expr_17831 := 0x060c9913
                let _108 := convert_t_rational_101488915_by_1_to_t_uint256(expr_17831)

                ret := _108
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

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_contract$_LiquidationLogic_$18263_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_int256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_int256(value)))
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function read_from_memoryt_uint256(ptr) -> returnValue {

                let value := cleanup_t_uint256(mload(ptr))

                returnValue :=

                value

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_t_int256_to_t_int256_fromStack(value, pos) {
                mstore(pos, cleanup_t_int256(value))
            }

            function abi_encode_t_int256_to_t_int256(value, pos) {
                mstore(pos, cleanup_t_int256(value))
            }

            // struct IPredyPool.Payoff -> struct IPredyPool.Payoff
            function abi_encode_t_struct$_Payoff_$2047_memory_ptr_to_t_struct$_Payoff_$2047_memory_ptr_fromStack(value, pos)  {
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

            function abi_encode_tuple_t_uint256_t_int256_t_int256_t_struct$_Payoff_$2047_memory_ptr_t_int256_t_uint256__to_t_uint256_t_int256_t_int256_t_struct$_Payoff_$2047_memory_ptr_t_int256_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4, value5) -> tail {
                tail := add(headStart, 352)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int256_to_t_int256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_int256_to_t_int256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_struct$_Payoff_$2047_memory_ptr_to_t_struct$_Payoff_$2047_memory_ptr_fromStack(value3,  add(headStart, 96))

                abi_encode_t_int256_to_t_int256_fromStack(value4,  add(headStart, 288))

                abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 320))

            }

            /// @ast-id 18127
            /// @src 72:1372:4611  "function liquidate(..."
            function fun_liquidate_18127(var_vaultId_17851, var_closeRatio_17853, var_globalData_17856_slot, var_settlementData_17858_mpos) -> var_tradeResult_17862_mpos {
                /// @src 72:1562:1603  "IPredyPool.TradeResult memory tradeResult"
                let zero_t_struct$_TradeResult_$2034_memory_ptr_1_mpos := zero_value_for_split_t_struct$_TradeResult_$2034_memory_ptr()
                var_tradeResult_17862_mpos := zero_t_struct$_TradeResult_$2034_memory_ptr_1_mpos

                /// @src 72:1623:1633  "closeRatio"
                let _2 := var_closeRatio_17853
                let expr_17865 := _2
                /// @src 72:1636:1637  "0"
                let expr_17866 := 0x00
                /// @src 72:1623:1637  "closeRatio > 0"
                let expr_17867 := gt(cleanup_t_uint256(expr_17865), convert_t_rational_0_by_1_to_t_uint256(expr_17866))
                /// @src 72:1623:1659  "closeRatio > 0 && closeRatio <= 1e18"
                let expr_17871 := expr_17867
                if expr_17871 {
                    /// @src 72:1641:1651  "closeRatio"
                    let _3 := var_closeRatio_17853
                    let expr_17868 := _3
                    /// @src 72:1655:1659  "1e18"
                    let expr_17869 := 0x0de0b6b3a7640000
                    /// @src 72:1641:1659  "closeRatio <= 1e18"
                    let expr_17870 := iszero(gt(cleanup_t_uint256(expr_17868), convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_17869)))
                    /// @src 72:1623:1659  "closeRatio > 0 && closeRatio <= 1e18"
                    expr_17871 := expr_17870
                }
                /// @src 72:1615:1667  "require(closeRatio > 0 && closeRatio <= 1e18, \"ICR\")"
                require_helper_t_stringliteral_07ced0a23e1ea5b3afb00645aaac748fdd6dbe61e039158c11177814a53f0aaf(expr_17871)
                /// @src 72:1708:1718  "globalData"
                let _4_slot := var_globalData_17856_slot
                let expr_17880_slot := _4_slot
                /// @src 72:1708:1725  "globalData.vaults"
                let _5 := add(expr_17880_slot, 5)
                let _6_slot := _5
                let expr_17881_slot := _6_slot
                /// @src 72:1726:1733  "vaultId"
                let _7 := var_vaultId_17851
                let expr_17882 := _7
                /// @src 72:1708:1734  "globalData.vaults[vaultId]"
                let _8 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Vault_$6116_storage_$_of_t_uint256(expr_17881_slot,expr_17882)
                let _9_slot := _8
                let expr_17883_slot := _9_slot
                /// @src 72:1677:1734  "DataType.Vault storage vault = globalData.vaults[vaultId]"
                let var_vault_17879_slot := convert_t_struct$_Vault_$6116_storage_to_t_struct$_Vault_$6116_storage_ptr(expr_17883_slot)
                /// @src 72:1785:1795  "globalData"
                let _10_slot := var_globalData_17856_slot
                let expr_17890_slot := _10_slot
                /// @src 72:1785:1801  "globalData.pairs"
                let _11 := add(expr_17890_slot, 3)
                let _12_slot := _11
                let expr_17891_slot := _12_slot
                /// @src 72:1802:1807  "vault"
                let _13_slot := var_vault_17879_slot
                let expr_17892_slot := _13_slot
                /// @src 72:1802:1820  "vault.openPosition"
                let _14 := add(expr_17892_slot, 5)
                let _15_slot := _14
                let expr_17893_slot := _15_slot
                /// @src 72:1802:1827  "vault.openPosition.pairId"
                let _16 := add(expr_17893_slot, 0)
                let _17 := read_from_storage_split_offset_0_t_uint256(_16)
                let expr_17894 := _17
                /// @src 72:1785:1828  "globalData.pairs[vault.openPosition.pairId]"
                let _18 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_17891_slot,expr_17894)
                let _19_slot := _18
                let expr_17895_slot := _19_slot
                /// @src 72:1744:1828  "DataType.PairStatus storage pairStatus = globalData.pairs[vault.openPosition.pairId]"
                let var_pairStatus_17889_slot := convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_storage_ptr(expr_17895_slot)
                /// @src 72:1873:1889  "ApplyInterestLib"
                let expr_17897_address := linkersymbol("src/libraries/ApplyInterestLib.sol:ApplyInterestLib")
                /// @src 72:1912:1922  "globalData"
                let _20_slot := var_globalData_17856_slot
                let expr_17900_slot := _20_slot
                /// @src 72:1912:1928  "globalData.pairs"
                let _21 := add(expr_17900_slot, 3)
                let _22_slot := _21
                let expr_17901_slot := _22_slot
                /// @src 72:1930:1935  "vault"
                let _23_slot := var_vault_17879_slot
                let expr_17902_slot := _23_slot
                /// @src 72:1930:1948  "vault.openPosition"
                let _24 := add(expr_17902_slot, 5)
                let _25_slot := _24
                let expr_17903_slot := _25_slot
                /// @src 72:1930:1955  "vault.openPosition.pairId"
                let _26 := add(expr_17903_slot, 0)
                let _27 := read_from_storage_split_offset_0_t_uint256(_26)
                let expr_17904 := _27
                fun_applyInterestForToken_33178(expr_17901_slot, expr_17904)
                /// @src 72:2011:2015  "Perp"
                let expr_17907_address := linkersymbol("src/libraries/Perp.sol:Perp")
                /// @src 72:2046:2056  "pairStatus"
                let _28_slot := var_pairStatus_17889_slot
                let expr_17910_slot := _28_slot
                /// @src 72:2058:2068  "pairStatus"
                let _29_slot := var_pairStatus_17889_slot
                let expr_17911_slot := _29_slot
                /// @src 72:2058:2084  "pairStatus.sqrtAssetStatus"
                let _30 := add(expr_17911_slot, 33)
                let _31_slot := _30
                let expr_17912_slot := _31_slot
                /// @src 72:2011:2085  "Perp.updateRebalanceInterestGrowth(pairStatus, pairStatus.sqrtAssetStatus)"
                let _32_mpos := convert_t_struct$_PairStatus_$6102_storage_ptr_to_t_struct$_PairStatus_$6102_memory_ptr(expr_17910_slot)
                let _33_slot := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(expr_17912_slot)
                fun_updateRebalanceInterestGrowth_13815(_32_mpos, _33_slot)
                /// @src 72:2213:2223  "pairStatus"
                let _34_slot := var_pairStatus_17889_slot
                let expr_17920_slot := _34_slot
                /// @src 72:2225:2230  "vault"
                let _35_slot := var_vault_17879_slot
                let expr_17921_slot := _35_slot
                /// @src 72:2232:2242  "globalData"
                let _36_slot := var_globalData_17856_slot
                let expr_17922_slot := _36_slot
                /// @src 72:2232:2266  "globalData.rebalanceFeeGrowthCache"
                let _37 := add(expr_17922_slot, 4)
                let _38_slot := _37
                let expr_17923_slot := _38_slot
                /// @src 72:2194:2267  "checkVaultIsDanger(pairStatus, vault, globalData.rebalanceFeeGrowthCache)"
                let _39_mpos := convert_t_struct$_PairStatus_$6102_storage_ptr_to_t_struct$_PairStatus_$6102_memory_ptr(expr_17920_slot)
                let _40_mpos := convert_t_struct$_Vault_$6116_storage_ptr_to_t_struct$_Vault_$6116_memory_ptr(expr_17921_slot)
                let expr_17924_component_1, expr_17924_component_2 := fun_checkVaultIsDanger_18202(_39_mpos, _40_mpos, expr_17923_slot)
                /// @src 72:2134:2267  "(uint256 sqrtTwap, uint256 slippageTolerance) =..."
                let var_sqrtTwap_17916 := expr_17924_component_1
                let var_slippageTolerance_17918 := expr_17924_component_2
                /// @src 72:2358:2363  "vault"
                let _41_slot := var_vault_17879_slot
                let expr_17933_slot := _41_slot
                /// @src 72:2358:2376  "vault.openPosition"
                let _42 := add(expr_17933_slot, 5)
                let _43_slot := _42
                let expr_17934_slot := _43_slot
                /// @src 72:2358:2383  "vault.openPosition.pairId"
                let _44 := add(expr_17934_slot, 0)
                let _45 := read_from_storage_split_offset_0_t_uint256(_44)
                let expr_17935 := _45
                /// @src 72:2397:2404  "vaultId"
                let _46 := var_vaultId_17851
                let expr_17936 := _46
                /// @src 72:2419:2424  "vault"
                let _47_slot := var_vault_17879_slot
                let expr_17937_slot := _47_slot
                /// @src 72:2419:2437  "vault.openPosition"
                let _48 := add(expr_17937_slot, 5)
                let _49_slot := _48
                let expr_17938_slot := _49_slot
                /// @src 72:2419:2442  "vault.openPosition.perp"
                let _50 := add(expr_17938_slot, 2)
                let _51_slot := _50
                let expr_17939_slot := _51_slot
                /// @src 72:2419:2449  "vault.openPosition.perp.amount"
                let _52 := add(expr_17939_slot, 0)
                let _53 := read_from_storage_split_offset_0_t_int256(_52)
                let expr_17940 := _53
                /// @src 72:2418:2449  "-vault.openPosition.perp.amount"
                let expr_17941 := negate_t_int256(expr_17940)
                /// @src 72:2459:2469  "closeRatio"
                let _54 := var_closeRatio_17853
                let expr_17944 := _54
                /// @src 72:2452:2470  "int256(closeRatio)"
                let expr_17945 := convert_t_uint256_to_t_int256(expr_17944)
                /// @src 72:2418:2470  "-vault.openPosition.perp.amount * int256(closeRatio)"
                let expr_17946 := checked_mul_t_int256(expr_17941, expr_17945)

                /// @src 72:2473:2477  "1e18"
                let expr_17947 := 0x0de0b6b3a7640000
                /// @src 72:2418:2477  "-vault.openPosition.perp.amount * int256(closeRatio) / 1e18"
                let expr_17948 := checked_div_t_int256(expr_17946, convert_t_rational_1000000000000000000_by_1_to_t_int256(expr_17947))

                /// @src 72:2492:2497  "vault"
                let _55_slot := var_vault_17879_slot
                let expr_17949_slot := _55_slot
                /// @src 72:2492:2510  "vault.openPosition"
                let _56 := add(expr_17949_slot, 5)
                let _57_slot := _56
                let expr_17950_slot := _57_slot
                /// @src 72:2492:2519  "vault.openPosition.sqrtPerp"
                let _58 := add(expr_17950_slot, 4)
                let _59_slot := _58
                let expr_17951_slot := _59_slot
                /// @src 72:2492:2526  "vault.openPosition.sqrtPerp.amount"
                let _60 := add(expr_17951_slot, 0)
                let _61 := read_from_storage_split_offset_0_t_int256(_60)
                let expr_17952 := _61
                /// @src 72:2491:2526  "-vault.openPosition.sqrtPerp.amount"
                let expr_17953 := negate_t_int256(expr_17952)
                /// @src 72:2536:2546  "closeRatio"
                let _62 := var_closeRatio_17853
                let expr_17956 := _62
                /// @src 72:2529:2547  "int256(closeRatio)"
                let expr_17957 := convert_t_uint256_to_t_int256(expr_17956)
                /// @src 72:2491:2547  "-vault.openPosition.sqrtPerp.amount * int256(closeRatio)"
                let expr_17958 := checked_mul_t_int256(expr_17953, expr_17957)

                /// @src 72:2550:2554  "1e18"
                let expr_17959 := 0x0de0b6b3a7640000
                /// @src 72:2491:2554  "-vault.openPosition.sqrtPerp.amount * int256(closeRatio) / 1e18"
                let expr_17960 := checked_div_t_int256(expr_17958, convert_t_rational_1000000000000000000_by_1_to_t_int256(expr_17959))

                /// @src 72:2322:2580  "IPredyPool.TradeParams(..."
                let expr_17962_mpos := allocate_memory_struct_t_struct$_TradeParams_$2018_storage_ptr()
                write_to_memory_t_uint256(add(expr_17962_mpos, 0), expr_17935)
                write_to_memory_t_uint256(add(expr_17962_mpos, 32), expr_17936)
                write_to_memory_t_int256(add(expr_17962_mpos, 64), expr_17948)
                write_to_memory_t_int256(add(expr_17962_mpos, 96), expr_17960)
                let _63_mpos := convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr()
                write_to_memory_t_bytes_memory_ptr(add(expr_17962_mpos, 128), _63_mpos)
                /// @src 72:2278:2580  "IPredyPool.TradeParams memory tradeParams = IPredyPool.TradeParams(..."
                let var_tradeParams_17930_mpos := expr_17962_mpos
                /// @src 72:2605:2610  "Trade"
                let expr_17965_address := linkersymbol("src/libraries/Trade.sol:Trade")
                /// @src 72:2605:2616  "Trade.trade"
                let expr_17966_address := convert_t_type$_t_contract$_Trade_$34396_$_to_t_address(expr_17965_address)
                let expr_17966_functionSelector := 0x95629036
                /// @src 72:2617:2627  "globalData"
                let _64_slot := var_globalData_17856_slot
                let expr_17967_slot := _64_slot
                /// @src 72:2629:2640  "tradeParams"
                let _65_mpos := var_tradeParams_17930_mpos
                let expr_17968_mpos := _65_mpos
                /// @src 72:2642:2656  "settlementData"
                let _66_mpos := var_settlementData_17858_mpos
                let expr_17969_mpos := _66_mpos
                /// @src 72:2605:2657  "Trade.trade(globalData, tradeParams, settlementData)"

                // storage for arguments and returned data
                let _67 := allocate_unbounded()
                mstore(_67, shift_left_224(expr_17966_functionSelector))
                let _68 := abi_encode_tuple_t_struct$_GlobalData_$19302_storage_ptr_t_struct$_TradeParams_$2018_memory_ptr_t_bytes_memory_ptr__to_t_uint256_t_struct$_TradeParams_$2018_memory_ptr_t_bytes_memory_ptr__fromStack_library(add(_67, 4) , expr_17967_slot, expr_17968_mpos, expr_17969_mpos)

                let _69 := delegatecall(gas(), expr_17966_address,  _67, sub(_68, _67), _67, 384)

                if iszero(_69) { revert_forward_1() }

                let expr_17970_mpos
                if _69 {

                    let _70 := 384

                    if gt(_70, returndatasize()) {
                        _70 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_67, _70)

                    // decode return parameters from external try-call into retVars
                    expr_17970_mpos :=  abi_decode_tuple_t_struct$_TradeResult_$2034_memory_ptr_fromMemory(_67, add(_67, _70))
                }
                /// @src 72:2591:2657  "tradeResult = Trade.trade(globalData, tradeParams, settlementData)"
                var_tradeResult_17862_mpos := expr_17970_mpos
                let _71_mpos := var_tradeResult_17862_mpos
                let expr_17971_mpos := _71_mpos
                /// @src 72:2684:2695  "tradeResult"
                let _72_mpos := var_tradeResult_17862_mpos
                let expr_17976_mpos := _72_mpos
                /// @src 72:2684:2699  "tradeResult.fee"
                let _73 := add(expr_17976_mpos, 64)
                let _74 := read_from_memoryt_int256(_73)
                let expr_17977 := _74
                /// @src 72:2702:2713  "tradeResult"
                let _75_mpos := var_tradeResult_17862_mpos
                let expr_17978_mpos := _75_mpos
                /// @src 72:2702:2720  "tradeResult.payoff"
                let _76 := add(expr_17978_mpos, 0)
                let _77_mpos := mload(_76)
                let expr_17979_mpos := _77_mpos
                /// @src 72:2702:2731  "tradeResult.payoff.perpPayoff"
                let _78 := add(expr_17979_mpos, 128)
                let _79 := read_from_memoryt_int256(_78)
                let expr_17980 := _79
                /// @src 72:2684:2731  "tradeResult.fee + tradeResult.payoff.perpPayoff"
                let expr_17981 := checked_add_t_int256(expr_17977, expr_17980)

                /// @src 72:2734:2745  "tradeResult"
                let _80_mpos := var_tradeResult_17862_mpos
                let expr_17982_mpos := _80_mpos
                /// @src 72:2734:2752  "tradeResult.payoff"
                let _81 := add(expr_17982_mpos, 0)
                let _82_mpos := mload(_81)
                let expr_17983_mpos := _82_mpos
                /// @src 72:2734:2763  "tradeResult.payoff.sqrtPayoff"
                let _83 := add(expr_17983_mpos, 160)
                let _84 := read_from_memoryt_int256(_83)
                let expr_17984 := _84
                /// @src 72:2684:2763  "tradeResult.fee + tradeResult.payoff.perpPayoff + tradeResult.payoff.sqrtPayoff"
                let expr_17985 := checked_add_t_int256(expr_17981, expr_17984)

                /// @src 72:2668:2673  "vault"
                let _85_slot := var_vault_17879_slot
                let expr_17973_slot := _85_slot
                /// @src 72:2668:2680  "vault.margin"
                let _86 := add(expr_17973_slot, 4)
                /// @src 72:2668:2763  "vault.margin += tradeResult.fee + tradeResult.payoff.perpPayoff + tradeResult.payoff.sqrtPayoff"
                let _87 := read_from_storage_split_offset_0_t_int256(_86)
                let expr_17986 := checked_add_t_int256(_87, expr_17985)

                update_storage_value_offset_0_t_int256_to_t_int256(_86, expr_17986)
                /// @src 72:2797:2805  "sqrtTwap"
                let _88 := var_sqrtTwap_17916
                let expr_17991 := _88
                /// @src 72:2774:2785  "tradeResult"
                let _89_mpos := var_tradeResult_17862_mpos
                let expr_17988_mpos := _89_mpos
                /// @src 72:2774:2794  "tradeResult.sqrtTwap"
                let _90 := add(expr_17988_mpos, 160)
                /// @src 72:2774:2805  "tradeResult.sqrtTwap = sqrtTwap"
                let _91 := expr_17991
                write_to_memory_t_uint256(_90, _91)
                let expr_17992 := expr_17991
                /// @src 72:2816:2832  "bool hasPosition"
                let var_hasPosition_17995
                let zero_t_bool_92 := zero_value_for_split_t_bool()
                var_hasPosition_17995 := zero_t_bool_92
                /// @src 72:2896:2914  "PositionCalculator"
                let expr_18002_address := linkersymbol("src/libraries/PositionCalculator.sol:PositionCalculator")
                /// @src 72:2935:2945  "pairStatus"
                let _93_slot := var_pairStatus_17889_slot
                let expr_18004_slot := _93_slot
                /// @src 72:2947:2952  "vault"
                let _94_slot := var_vault_17879_slot
                let expr_18005_slot := _94_slot
                /// @src 72:2954:2962  "DataType"
                let expr_18006_address := linkersymbol("src/libraries/DataType.sol:DataType")
                /// @src 72:2973:2974  "0"
                let expr_18008 := 0x00
                /// @src 72:2976:2977  "0"
                let expr_18009 := 0x00
                /// @src 72:2954:2978  "DataType.FeeAmount(0, 0)"
                let expr_18010_mpos := allocate_memory_struct_t_struct$_FeeAmount_$6126_storage_ptr()
                let _95 := convert_t_rational_0_by_1_to_t_int256(expr_18008)
                write_to_memory_t_int256(add(expr_18010_mpos, 0), _95)
                let _96 := convert_t_rational_0_by_1_to_t_int256(expr_18009)
                write_to_memory_t_int256(add(expr_18010_mpos, 32), _96)
                /// @src 72:2896:2979  "PositionCalculator.calculateMinDeposit(pairStatus, vault, DataType.FeeAmount(0, 0))"
                let _97_mpos := convert_t_struct$_PairStatus_$6102_storage_ptr_to_t_struct$_PairStatus_$6102_memory_ptr(expr_18004_slot)
                let _98_mpos := convert_t_struct$_Vault_$6116_storage_ptr_to_t_struct$_Vault_$6116_memory_ptr(expr_18005_slot)
                let expr_18011_component_1, expr_18011_component_2, expr_18011_component_3, expr_18011_component_4 := fun_calculateMinDeposit_16036(_97_mpos, _98_mpos, expr_18010_mpos)
                /// @src 72:2844:2855  "tradeResult"
                let _99_mpos := var_tradeResult_17862_mpos
                let expr_17997_mpos := _99_mpos
                /// @src 72:2844:2865  "tradeResult.minMargin"
                let _100 := add(expr_17997_mpos, 96)
                /// @src 72:2843:2979  "(tradeResult.minMargin,, hasPosition,) =..."
                var_hasPosition_17995 := expr_18011_component_3
                let _101 := expr_18011_component_1
                write_to_memory_t_int256(_100, _101)
                /// @src 72:3152:3163  "SlippageLib"
                let expr_18014_address := linkersymbol("src/libraries/SlippageLib.sol:SlippageLib")
                /// @src 72:3188:3196  "sqrtTwap"
                let _102 := var_sqrtTwap_17916
                let expr_18017 := _102
                /// @src 72:3210:3221  "tradeResult"
                let _103_mpos := var_tradeResult_17862_mpos
                let expr_18018_mpos := _103_mpos
                /// @src 72:3235:3252  "slippageTolerance"
                let _104 := var_slippageTolerance_17918
                let expr_18019 := _104
                /// @src 72:3266:3277  "tradeParams"
                let _105_mpos := var_tradeParams_17930_mpos
                let expr_18020_mpos := _105_mpos
                /// @src 72:3266:3293  "tradeParams.tradeAmountSqrt"
                let _106 := add(expr_18020_mpos, 96)
                let _107 := read_from_memoryt_int256(_106)
                let expr_18021 := _107
                /// @src 72:3297:3298  "0"
                let expr_18022 := 0x00
                /// @src 72:3266:3298  "tradeParams.tradeAmountSqrt == 0"
                let expr_18023 := eq(cleanup_t_int256(expr_18021), convert_t_rational_0_by_1_to_t_int256(expr_18022))
                /// @src 72:3266:3337  "tradeParams.tradeAmountSqrt == 0 ? 0 : _MAX_ACCEPTABLE_SQRT_PRICE_RANGE"
                let expr_18026
                switch expr_18023
                case 0 {
                    /// @src 72:3305:3337  "_MAX_ACCEPTABLE_SQRT_PRICE_RANGE"
                    let expr_18025 := constant__MAX_ACCEPTABLE_SQRT_PRICE_RANGE_17832()
                    /// @src 72:3266:3337  "tradeParams.tradeAmountSqrt == 0 ? 0 : _MAX_ACCEPTABLE_SQRT_PRICE_RANGE"
                    expr_18026 := expr_18025
                }
                default {
                    /// @src 72:3301:3302  "0"
                    let expr_18024 := 0x00
                    /// @src 72:3266:3337  "tradeParams.tradeAmountSqrt == 0 ? 0 : _MAX_ACCEPTABLE_SQRT_PRICE_RANGE"
                    expr_18026 := convert_t_rational_0_by_1_to_t_uint256(expr_18024)
                }
                fun_checkPrice_33920(expr_18017, expr_18018_mpos, expr_18019, expr_18026)
                /// @src 72:3385:3386  "0"
                let expr_18031 := 0x00
                /// @src 72:3358:3386  "uint256 sentMarginAmount = 0"
                let var_sentMarginAmount_18030 := convert_t_rational_0_by_1_to_t_uint256(expr_18031)
                /// @src 72:3402:3413  "hasPosition"
                let _109 := var_hasPosition_17995
                let expr_18033 := _109
                /// @src 72:3401:3413  "!hasPosition"
                let expr_18034 := cleanup_t_bool(iszero(expr_18033))
                /// @src 72:3397:4327  "if (!hasPosition) {..."
                if expr_18034 {
                    /// @src 72:3454:3459  "vault"
                    let _110_slot := var_vault_17879_slot
                    let expr_18037_slot := _110_slot
                    /// @src 72:3454:3466  "vault.margin"
                    let _111 := add(expr_18037_slot, 4)
                    let _112 := read_from_storage_split_offset_0_t_int256(_111)
                    let expr_18038 := _112
                    /// @src 72:3429:3466  "int256 remainingMargin = vault.margin"
                    let var_remainingMargin_18036 := expr_18038
                    /// @src 72:3485:3500  "remainingMargin"
                    let _113 := var_remainingMargin_18036
                    let expr_18040 := _113
                    /// @src 72:3503:3504  "0"
                    let expr_18041 := 0x00
                    /// @src 72:3485:3504  "remainingMargin > 0"
                    let expr_18042 := sgt(cleanup_t_int256(expr_18040), convert_t_rational_0_by_1_to_t_int256(expr_18041))
                    /// @src 72:3481:4317  "if (remainingMargin > 0) {..."
                    switch expr_18042
                    case 0 {
                        /// @src 72:3877:3892  "remainingMargin"
                        let _114 := var_remainingMargin_18036
                        let expr_18077 := _114
                        /// @src 72:3895:3896  "0"
                        let expr_18078 := 0x00
                        /// @src 72:3877:3896  "remainingMargin < 0"
                        let expr_18079 := slt(cleanup_t_int256(expr_18077), convert_t_rational_0_by_1_to_t_int256(expr_18078))
                        /// @src 72:3873:4317  "if (remainingMargin < 0) {..."
                        if expr_18079 {
                            /// @src 72:3931:3932  "0"
                            let expr_18083 := 0x00
                            /// @src 72:3916:3932  "vault.margin = 0"
                            let _115 := convert_t_rational_0_by_1_to_t_int256(expr_18083)
                            /// @src 72:3916:3921  "vault"
                            let _116_slot := var_vault_17879_slot
                            let expr_18080_slot := _116_slot
                            /// @src 72:3916:3928  "vault.margin"
                            let _117 := add(expr_18080_slot, 4)
                            /// @src 72:3916:3932  "vault.margin = 0"
                            update_storage_value_offset_0_t_int256_to_t_int256(_117, _115)
                            let expr_18084 := _115
                            /// @src 72:4204:4214  "pairStatus"
                            let _118_slot := var_pairStatus_17889_slot
                            let expr_18087_slot := _118_slot
                            /// @src 72:4204:4224  "pairStatus.quotePool"
                            let _119 := add(expr_18087_slot, 3)
                            let _120_slot := _119
                            let expr_18088_slot := _120_slot
                            /// @src 72:4204:4230  "pairStatus.quotePool.token"
                            let _121 := add(expr_18088_slot, 0)
                            let _122 := read_from_storage_split_offset_0_t_address(_121)
                            let expr_18089 := _122
                            /// @src 72:4198:4231  "ERC20(pairStatus.quotePool.token)"
                            let expr_18090_address := convert_t_address_to_t_contract$_ERC20_$13305(expr_18089)
                            /// @src 72:4198:4248  "ERC20(pairStatus.quotePool.token).safeTransferFrom"
                            let expr_18091_self_address := expr_18090_address
                            /// @src 72:4249:4259  "msg.sender"
                            let expr_18093 := caller()
                            /// @src 72:4269:4273  "this"
                            let expr_18096_address := address()
                            /// @src 72:4261:4274  "address(this)"
                            let expr_18097 := convert_t_contract$_LiquidationLogic_$18263_to_t_address(expr_18096_address)
                            /// @src 72:4285:4300  "remainingMargin"
                            let _123 := var_remainingMargin_18036
                            let expr_18100 := _123
                            /// @src 72:4284:4300  "-remainingMargin"
                            let expr_18101 := negate_t_int256(expr_18100)
                            /// @src 72:4276:4301  "uint256(-remainingMargin)"
                            let expr_18102 := convert_t_int256_to_t_uint256(expr_18101)
                            fun_safeTransferFrom_13349(expr_18091_self_address, expr_18093, expr_18097, expr_18102)
                            /// @src 72:3873:4317  "if (remainingMargin < 0) {..."
                        }
                        /// @src 72:3481:4317  "if (remainingMargin > 0) {..."
                    }
                    default {
                        /// @src 72:3528:3533  "vault"
                        let _124_slot := var_vault_17879_slot
                        let expr_18043_slot := _124_slot
                        /// @src 72:3528:3543  "vault.recipient"
                        let _125 := add(expr_18043_slot, 3)
                        let _126 := read_from_storage_split_offset_0_t_address(_125)
                        let expr_18044 := _126
                        /// @src 72:3555:3556  "0"
                        let expr_18047 := 0x00
                        /// @src 72:3547:3557  "address(0)"
                        let expr_18048 := convert_t_rational_0_by_1_to_t_address(expr_18047)
                        /// @src 72:3528:3557  "vault.recipient != address(0)"
                        let expr_18049 := iszero(eq(cleanup_t_address(expr_18044), cleanup_t_address(expr_18048)))
                        /// @src 72:3524:3853  "if (vault.recipient != address(0)) {..."
                        if expr_18049 {
                            /// @src 72:3663:3664  "0"
                            let expr_18053 := 0x00
                            /// @src 72:3648:3664  "vault.margin = 0"
                            let _127 := convert_t_rational_0_by_1_to_t_int256(expr_18053)
                            /// @src 72:3648:3653  "vault"
                            let _128_slot := var_vault_17879_slot
                            let expr_18050_slot := _128_slot
                            /// @src 72:3648:3660  "vault.margin"
                            let _129 := add(expr_18050_slot, 4)
                            /// @src 72:3648:3664  "vault.margin = 0"
                            update_storage_value_offset_0_t_int256_to_t_int256(_129, _127)
                            let expr_18054 := _127
                            /// @src 72:3714:3729  "remainingMargin"
                            let _130 := var_remainingMargin_18036
                            let expr_18059 := _130
                            /// @src 72:3706:3730  "uint256(remainingMargin)"
                            let expr_18060 := convert_t_int256_to_t_uint256(expr_18059)
                            /// @src 72:3687:3730  "sentMarginAmount = uint256(remainingMargin)"
                            var_sentMarginAmount_18030 := expr_18060
                            let expr_18061 := expr_18060
                            /// @src 72:3759:3769  "pairStatus"
                            let _131_slot := var_pairStatus_17889_slot
                            let expr_18064_slot := _131_slot
                            /// @src 72:3759:3779  "pairStatus.quotePool"
                            let _132 := add(expr_18064_slot, 3)
                            let _133_slot := _132
                            let expr_18065_slot := _133_slot
                            /// @src 72:3759:3785  "pairStatus.quotePool.token"
                            let _134 := add(expr_18065_slot, 0)
                            let _135 := read_from_storage_split_offset_0_t_address(_134)
                            let expr_18066 := _135
                            /// @src 72:3753:3786  "ERC20(pairStatus.quotePool.token)"
                            let expr_18067_address := convert_t_address_to_t_contract$_ERC20_$13305(expr_18066)
                            /// @src 72:3753:3799  "ERC20(pairStatus.quotePool.token).safeTransfer"
                            let expr_18068_self_address := expr_18067_address
                            /// @src 72:3800:3805  "vault"
                            let _136_slot := var_vault_17879_slot
                            let expr_18069_slot := _136_slot
                            /// @src 72:3800:3815  "vault.recipient"
                            let _137 := add(expr_18069_slot, 3)
                            let _138 := read_from_storage_split_offset_0_t_address(_137)
                            let expr_18070 := _138
                            /// @src 72:3817:3833  "sentMarginAmount"
                            let _139 := var_sentMarginAmount_18030
                            let expr_18071 := _139
                            fun_safeTransfer_13369(expr_18068_self_address, expr_18070, expr_18071)
                            /// @src 72:3524:3853  "if (vault.recipient != address(0)) {..."
                        }
                        /// @src 72:3481:4317  "if (remainingMargin > 0) {..."
                    }
                    /// @src 72:3397:4327  "if (!hasPosition) {..."
                }
                /// @src 72:4374:4385  "tradeParams"
                let _140_mpos := var_tradeParams_17930_mpos
                let expr_18111_mpos := _140_mpos
                /// @src 72:4374:4393  "tradeParams.vaultId"
                let _141 := add(expr_18111_mpos, 32)
                let _142 := read_from_memoryt_uint256(_141)
                let expr_18112 := _142
                /// @src 72:4407:4418  "tradeParams"
                let _143_mpos := var_tradeParams_17930_mpos
                let expr_18113_mpos := _143_mpos
                /// @src 72:4407:4425  "tradeParams.pairId"
                let _144 := add(expr_18113_mpos, 0)
                let _145 := read_from_memoryt_uint256(_144)
                let expr_18114 := _145
                /// @src 72:4439:4450  "tradeParams"
                let _146_mpos := var_tradeParams_17930_mpos
                let expr_18115_mpos := _146_mpos
                /// @src 72:4439:4462  "tradeParams.tradeAmount"
                let _147 := add(expr_18115_mpos, 64)
                let _148 := read_from_memoryt_int256(_147)
                let expr_18116 := _148
                /// @src 72:4476:4487  "tradeParams"
                let _149_mpos := var_tradeParams_17930_mpos
                let expr_18117_mpos := _149_mpos
                /// @src 72:4476:4503  "tradeParams.tradeAmountSqrt"
                let _150 := add(expr_18117_mpos, 96)
                let _151 := read_from_memoryt_int256(_150)
                let expr_18118 := _151
                /// @src 72:4517:4528  "tradeResult"
                let _152_mpos := var_tradeResult_17862_mpos
                let expr_18119_mpos := _152_mpos
                /// @src 72:4517:4535  "tradeResult.payoff"
                let _153 := add(expr_18119_mpos, 0)
                let _154_mpos := mload(_153)
                let expr_18120_mpos := _154_mpos
                /// @src 72:4549:4560  "tradeResult"
                let _155_mpos := var_tradeResult_17862_mpos
                let expr_18121_mpos := _155_mpos
                /// @src 72:4549:4564  "tradeResult.fee"
                let _156 := add(expr_18121_mpos, 64)
                let _157 := read_from_memoryt_int256(_156)
                let expr_18122 := _157
                /// @src 72:4578:4594  "sentMarginAmount"
                let _158 := var_sentMarginAmount_18030
                let expr_18123 := _158
                /// @src 72:4342:4604  "PositionLiquidated(..."
                let _159 := 0x6cb887f9e61973145b3eafe9e89e532777fe4f10b543a08386930f9d2f13d4db
                let _160 := convert_t_uint256_to_t_uint256(expr_18112)
                {
                    let _161 := allocate_unbounded()
                    let _162 := abi_encode_tuple_t_uint256_t_int256_t_int256_t_struct$_Payoff_$2047_memory_ptr_t_int256_t_uint256__to_t_uint256_t_int256_t_int256_t_struct$_Payoff_$2047_memory_ptr_t_int256_t_uint256__fromStack(_161 , expr_18114, expr_18116, expr_18118, expr_18120_mpos, expr_18122, expr_18123)
                    log2(_161, sub(_162, _161) , _159, _160)
                }
            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let _163_slot := var_pairs_33103_slot
                let expr_33113_slot := _163_slot
                /// @src 56:775:781  "pairId"
                let _164 := var_pairId_33105
                let expr_33114 := _164
                /// @src 56:769:782  "pairs[pairId]"
                let _165 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_33113_slot,expr_33114)
                let _166_slot := _165
                let expr_33115_slot := _166_slot
                /// @src 56:728:782  "DataType.PairStatus storage pairStatus = pairs[pairId]"
                let var_pairStatus_33112_slot := convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_storage_ptr(expr_33115_slot)
                /// @src 56:793:797  "Perp"
                let expr_33117_address := linkersymbol("src/libraries/Perp.sol:Perp")
                /// @src 56:824:830  "pairId"
                let _167 := var_pairId_33105
                let expr_33120 := _167
                /// @src 56:832:842  "pairStatus"
                let _168_slot := var_pairStatus_33112_slot
                let expr_33121_slot := _168_slot
                /// @src 56:832:858  "pairStatus.sqrtAssetStatus"
                let _169 := add(expr_33121_slot, 33)
                let _170_slot := _169
                let expr_33122_slot := _170_slot
                /// @src 56:793:859  "Perp.updateFeeAndPremiumGrowth(pairId, pairStatus.sqrtAssetStatus)"
                let _171_slot := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(expr_33122_slot)
                fun_updateFeeAndPremiumGrowth_14485(expr_33120, _171_slot)
                /// @src 56:947:957  "pairStatus"
                let _172_slot := var_pairStatus_33112_slot
                let expr_33125_slot := _172_slot
                /// @src 56:947:977  "pairStatus.lastUpdateTimestamp"
                let _173 := add(expr_33125_slot, 51)
                let _174 := read_from_storage_split_offset_0_t_uint256(_173)
                let expr_33126 := _174
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
                let _175_slot := var_pairStatus_33112_slot
                let expr_33136_slot := _175_slot
                /// @src 56:1107:1127  "pairStatus.quotePool"
                let _176 := add(expr_33136_slot, 3)
                let _177_slot := _176
                let expr_33137_slot := _177_slot
                /// @src 56:1129:1139  "pairStatus"
                let _178_slot := var_pairStatus_33112_slot
                let expr_33138_slot := _178_slot
                /// @src 56:1129:1159  "pairStatus.lastUpdateTimestamp"
                let _179 := add(expr_33138_slot, 51)
                let _180 := read_from_storage_split_offset_0_t_uint256(_179)
                let expr_33139 := _180
                /// @src 56:1161:1171  "pairStatus"
                let _181_slot := var_pairStatus_33112_slot
                let expr_33140_slot := _181_slot
                /// @src 56:1161:1180  "pairStatus.feeRatio"
                let _182 := add(expr_33140_slot, 50)
                let _183 := read_from_storage_split_offset_22_t_uint8(_182)
                let expr_33141 := _183
                /// @src 56:1080:1181  "applyInterestForPoolStatus(pairStatus.quotePool, pairStatus.lastUpdateTimestamp, pairStatus.feeRatio)"
                let _184_slot := convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(expr_33137_slot)
                let expr_33142 := fun_applyInterestForPoolStatus_33255(_184_slot, expr_33139, expr_33141)
                /// @src 56:1039:1181  "uint256 interestRateStable =..."
                let var_interestRateStable_33134 := expr_33142
                /// @src 56:1264:1274  "pairStatus"
                let _185_slot := var_pairStatus_33112_slot
                let expr_33147_slot := _185_slot
                /// @src 56:1264:1283  "pairStatus.basePool"
                let _186 := add(expr_33147_slot, 17)
                let _187_slot := _186
                let expr_33148_slot := _187_slot
                /// @src 56:1285:1295  "pairStatus"
                let _188_slot := var_pairStatus_33112_slot
                let expr_33149_slot := _188_slot
                /// @src 56:1285:1315  "pairStatus.lastUpdateTimestamp"
                let _189 := add(expr_33149_slot, 51)
                let _190 := read_from_storage_split_offset_0_t_uint256(_189)
                let expr_33150 := _190
                /// @src 56:1317:1327  "pairStatus"
                let _191_slot := var_pairStatus_33112_slot
                let expr_33151_slot := _191_slot
                /// @src 56:1317:1336  "pairStatus.feeRatio"
                let _192 := add(expr_33151_slot, 50)
                let _193 := read_from_storage_split_offset_22_t_uint8(_192)
                let expr_33152 := _193
                /// @src 56:1237:1337  "applyInterestForPoolStatus(pairStatus.basePool, pairStatus.lastUpdateTimestamp, pairStatus.feeRatio)"
                let _194_slot := convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(expr_33148_slot)
                let expr_33153 := fun_applyInterestForPoolStatus_33255(_194_slot, expr_33150, expr_33152)
                /// @src 56:1192:1337  "uint256 interestRateUnderlying =..."
                let var_interestRateUnderlying_33145 := expr_33153
                /// @src 56:1421:1436  "block.timestamp"
                let expr_33159 := timestamp()
                /// @src 56:1388:1398  "pairStatus"
                let _195_slot := var_pairStatus_33112_slot
                let expr_33155_slot := _195_slot
                /// @src 56:1388:1418  "pairStatus.lastUpdateTimestamp"
                let _196 := add(expr_33155_slot, 51)
                /// @src 56:1388:1436  "pairStatus.lastUpdateTimestamp = block.timestamp"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_196, expr_33159)
                let expr_33160 := expr_33159
                /// @src 56:1451:1469  "interestRateStable"
                let _197 := var_interestRateStable_33134
                let expr_33162 := _197
                /// @src 56:1472:1473  "0"
                let expr_33163 := 0x00
                /// @src 56:1451:1473  "interestRateStable > 0"
                let expr_33164 := gt(cleanup_t_uint256(expr_33162), convert_t_rational_0_by_1_to_t_uint256(expr_33163))
                /// @src 56:1451:1503  "interestRateStable > 0 || interestRateUnderlying > 0"
                let expr_33168 := expr_33164
                if iszero(expr_33168) {
                    /// @src 56:1477:1499  "interestRateUnderlying"
                    let _198 := var_interestRateUnderlying_33145
                    let expr_33165 := _198
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
                    let _199_slot := var_pairStatus_33112_slot
                    let expr_33170_slot := _199_slot
                    /// @src 56:1555:1573  "interestRateStable"
                    let _200 := var_interestRateStable_33134
                    let expr_33171 := _200
                    /// @src 56:1575:1597  "interestRateUnderlying"
                    let _201 := var_interestRateUnderlying_33145
                    let expr_33172 := _201
                    /// @src 56:1519:1598  "emitInterestGrowthEvent(pairStatus, interestRateStable, interestRateUnderlying)"
                    let _202_mpos := convert_t_struct$_PairStatus_$6102_storage_ptr_to_t_struct$_PairStatus_$6102_memory_ptr(expr_33170_slot)
                    fun_emitInterestGrowthEvent_33279(_202_mpos, expr_33171, expr_33172)
                    /// @src 56:1447:1609  "if (interestRateStable > 0 || interestRateUnderlying > 0) {..."
                }

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            function convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(value) -> converted {
                converted := value
            }

            /// @ast-id 13815
            /// @src 61:4568:5393  "function updateRebalanceInterestGrowth(..."
            function fun_updateRebalanceInterestGrowth_13815(var__pairStatus_13762_mpos, var__sqrtAssetStatus_13765_slot) {

                /// @src 61:4833:4849  "_sqrtAssetStatus"
                let _203_slot := var__sqrtAssetStatus_13765_slot
                let expr_13768_slot := _203_slot
                /// @src 61:4833:4880  "_sqrtAssetStatus.lastRebalanceTotalSquartAmount"
                let _204 := add(expr_13768_slot, 4)
                let _205 := read_from_storage_split_offset_0_t_uint256(_204)
                let expr_13769 := _205
                /// @src 61:4883:4884  "0"
                let expr_13770 := 0x00
                /// @src 61:4833:4884  "_sqrtAssetStatus.lastRebalanceTotalSquartAmount > 0"
                let expr_13771 := gt(cleanup_t_uint256(expr_13769), convert_t_rational_0_by_1_to_t_uint256(expr_13770))
                /// @src 61:4829:5387  "if (_sqrtAssetStatus.lastRebalanceTotalSquartAmount > 0) {..."
                if expr_13771 {
                    /// @src 61:4948:4959  "_pairStatus"
                    let _206_mpos := var__pairStatus_13762_mpos
                    let expr_13775_mpos := _206_mpos
                    /// @src 61:4948:4968  "_pairStatus.basePool"
                    let _207 := add(expr_13775_mpos, 128)
                    let _208_mpos := mload(_207)
                    let expr_13776_mpos := _208_mpos
                    /// @src 61:4948:4980  "_pairStatus.basePool.tokenStatus"
                    let _209 := add(expr_13776_mpos, 64)
                    let _210_mpos := mload(_209)
                    let expr_13777_mpos := _210_mpos
                    /// @src 61:4948:4994  "_pairStatus.basePool.tokenStatus.settleUserFee"
                    let expr_13778_self_mpos := expr_13777_mpos
                    /// @src 61:5012:5028  "_sqrtAssetStatus"
                    let _211_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13779_slot := _211_slot
                    /// @src 61:5012:5050  "_sqrtAssetStatus.rebalancePositionBase"
                    let _212 := add(expr_13779_slot, 11)
                    let _213_slot := _212
                    let expr_13780_slot := _213_slot
                    /// @src 61:4948:5064  "_pairStatus.basePool.tokenStatus.settleUserFee(..."
                    let _214_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_13780_slot)
                    let expr_13781 := fun_settleUserFee_31406(expr_13778_self_mpos, _214_slot)
                    /// @src 61:5067:5071  "1e18"
                    let expr_13782 := 0x0de0b6b3a7640000
                    /// @src 61:4948:5071  "_pairStatus.basePool.tokenStatus.settleUserFee(..."
                    let expr_13783 := checked_mul_t_int256(expr_13781, convert_t_rational_1000000000000000000_by_1_to_t_int256(expr_13782))

                    /// @src 61:5081:5097  "_sqrtAssetStatus"
                    let _215_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13786_slot := _215_slot
                    /// @src 61:5081:5128  "_sqrtAssetStatus.lastRebalanceTotalSquartAmount"
                    let _216 := add(expr_13786_slot, 4)
                    let _217 := read_from_storage_split_offset_0_t_uint256(_216)
                    let expr_13787 := _217
                    /// @src 61:5074:5129  "int256(_sqrtAssetStatus.lastRebalanceTotalSquartAmount)"
                    let expr_13788 := convert_t_uint256_to_t_int256(expr_13787)
                    /// @src 61:4948:5129  "_pairStatus.basePool.tokenStatus.settleUserFee(..."
                    let expr_13789 := checked_div_t_int256(expr_13783, expr_13788)

                    /// @src 61:4900:4916  "_sqrtAssetStatus"
                    let _218_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13772_slot := _218_slot
                    /// @src 61:4900:4944  "_sqrtAssetStatus.rebalanceInterestGrowthBase"
                    let _219 := add(expr_13772_slot, 15)
                    /// @src 61:4900:5129  "_sqrtAssetStatus.rebalanceInterestGrowthBase += _pairStatus.basePool.tokenStatus.settleUserFee(..."
                    let _220 := read_from_storage_split_offset_0_t_int256(_219)
                    let expr_13790 := checked_add_t_int256(_220, expr_13789)

                    update_storage_value_offset_0_t_int256_to_t_int256(_219, expr_13790)
                    /// @src 61:5193:5204  "_pairStatus"
                    let _221_mpos := var__pairStatus_13762_mpos
                    let expr_13795_mpos := _221_mpos
                    /// @src 61:5193:5214  "_pairStatus.quotePool"
                    let _222 := add(expr_13795_mpos, 96)
                    let _223_mpos := mload(_222)
                    let expr_13796_mpos := _223_mpos
                    /// @src 61:5193:5226  "_pairStatus.quotePool.tokenStatus"
                    let _224 := add(expr_13796_mpos, 64)
                    let _225_mpos := mload(_224)
                    let expr_13797_mpos := _225_mpos
                    /// @src 61:5193:5240  "_pairStatus.quotePool.tokenStatus.settleUserFee"
                    let expr_13798_self_mpos := expr_13797_mpos
                    /// @src 61:5258:5274  "_sqrtAssetStatus"
                    let _226_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13799_slot := _226_slot
                    /// @src 61:5258:5297  "_sqrtAssetStatus.rebalancePositionQuote"
                    let _227 := add(expr_13799_slot, 13)
                    let _228_slot := _227
                    let expr_13800_slot := _228_slot
                    /// @src 61:5193:5311  "_pairStatus.quotePool.tokenStatus.settleUserFee(..."
                    let _229_slot := convert_t_struct$_UserStatus_$30939_storage_to_t_struct$_UserStatus_$30939_storage_ptr(expr_13800_slot)
                    let expr_13801 := fun_settleUserFee_31406(expr_13798_self_mpos, _229_slot)
                    /// @src 61:5314:5318  "1e18"
                    let expr_13802 := 0x0de0b6b3a7640000
                    /// @src 61:5193:5318  "_pairStatus.quotePool.tokenStatus.settleUserFee(..."
                    let expr_13803 := checked_mul_t_int256(expr_13801, convert_t_rational_1000000000000000000_by_1_to_t_int256(expr_13802))

                    /// @src 61:5328:5344  "_sqrtAssetStatus"
                    let _230_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13806_slot := _230_slot
                    /// @src 61:5328:5375  "_sqrtAssetStatus.lastRebalanceTotalSquartAmount"
                    let _231 := add(expr_13806_slot, 4)
                    let _232 := read_from_storage_split_offset_0_t_uint256(_231)
                    let expr_13807 := _232
                    /// @src 61:5321:5376  "int256(_sqrtAssetStatus.lastRebalanceTotalSquartAmount)"
                    let expr_13808 := convert_t_uint256_to_t_int256(expr_13807)
                    /// @src 61:5193:5376  "_pairStatus.quotePool.tokenStatus.settleUserFee(..."
                    let expr_13809 := checked_div_t_int256(expr_13803, expr_13808)

                    /// @src 61:5144:5160  "_sqrtAssetStatus"
                    let _233_slot := var__sqrtAssetStatus_13765_slot
                    let expr_13792_slot := _233_slot
                    /// @src 61:5144:5189  "_sqrtAssetStatus.rebalanceInterestGrowthQuote"
                    let _234 := add(expr_13792_slot, 16)
                    /// @src 61:5144:5376  "_sqrtAssetStatus.rebalanceInterestGrowthQuote += _pairStatus.quotePool.tokenStatus.settleUserFee(..."
                    let _235 := read_from_storage_split_offset_0_t_int256(_234)
                    let expr_13810 := checked_add_t_int256(_235, expr_13809)

                    update_storage_value_offset_0_t_int256_to_t_int256(_234, expr_13810)
                    /// @src 61:4829:5387  "if (_sqrtAssetStatus.lastRebalanceTotalSquartAmount > 0) {..."
                }

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_int256() -> ret {
                ret := 0
            }

            function abi_encode_tuple_t_int256_t_int256__to_t_int256_t_int256__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_int256_to_t_int256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int256_to_t_int256_fromStack(value1,  add(headStart, 32))

            }

            /// @ast-id 18202
            /// @src 72:5021:5884  "function checkVaultIsDanger(..."
            function fun_checkVaultIsDanger_18202(var_pairStatus_18131_mpos, var_vault_18134_mpos, var_rebalanceFeeGrowthCache_18139_slot) -> var_sqrtTwap_18142, var_slippageTolerance_18144 {
                /// @src 72:5256:5272  "uint256 sqrtTwap"
                let zero_t_uint256_236 := zero_value_for_split_t_uint256()
                var_sqrtTwap_18142 := zero_t_uint256_236
                /// @src 72:5274:5299  "uint256 slippageTolerance"
                let zero_t_uint256_237 := zero_value_for_split_t_uint256()
                var_slippageTolerance_18144 := zero_t_uint256_237

                /// @src 72:5311:5330  "bool isLiquidatable"
                let var_isLiquidatable_18147
                let zero_t_bool_238 := zero_value_for_split_t_bool()
                var_isLiquidatable_18147 := zero_t_bool_238
                /// @src 72:5340:5356  "int256 minMargin"
                let var_minMargin_18150
                let zero_t_int256_239 := zero_value_for_split_t_int256()
                var_minMargin_18150 := zero_t_int256_239
                /// @src 72:5366:5383  "int256 vaultValue"
                let var_vaultValue_18153
                let zero_t_int256_240 := zero_value_for_split_t_int256()
                var_vaultValue_18153 := zero_t_int256_240
                /// @src 72:5444:5451  "PerpFee"
                let expr_18160_address := linkersymbol("src/libraries/PerpFee.sol:PerpFee")
                /// @src 72:5467:5477  "pairStatus"
                let _241_mpos := var_pairStatus_18131_mpos
                let expr_18162_mpos := _241_mpos
                /// @src 72:5479:5502  "rebalanceFeeGrowthCache"
                let _242_slot := var_rebalanceFeeGrowthCache_18139_slot
                let expr_18163_slot := _242_slot
                /// @src 72:5504:5509  "vault"
                let _243_mpos := var_vault_18134_mpos
                let expr_18164_mpos := _243_mpos
                /// @src 72:5504:5522  "vault.openPosition"
                let _244 := add(expr_18164_mpos, 160)
                let _245_mpos := mload(_244)
                let expr_18165_mpos := _245_mpos
                /// @src 72:5444:5523  "PerpFee.computeUserFee(pairStatus, rebalanceFeeGrowthCache, vault.openPosition)"
                let expr_18166_mpos := fun_computeUserFee_33383(expr_18162_mpos, expr_18163_slot, expr_18165_mpos)
                /// @src 72:5394:5523  "DataType.FeeAmount memory FeeAmount =..."
                let var_FeeAmount_18159_mpos := expr_18166_mpos
                /// @src 72:5598:5616  "PositionCalculator"
                let expr_18173_address := linkersymbol("src/libraries/PositionCalculator.sol:PositionCalculator")
                /// @src 72:5632:5642  "pairStatus"
                let _246_mpos := var_pairStatus_18131_mpos
                let expr_18175_mpos := _246_mpos
                /// @src 72:5644:5649  "vault"
                let _247_mpos := var_vault_18134_mpos
                let expr_18176_mpos := _247_mpos
                /// @src 72:5651:5660  "FeeAmount"
                let _248_mpos := var_FeeAmount_18159_mpos
                let expr_18177_mpos := _248_mpos
                /// @src 72:5598:5661  "PositionCalculator.isLiquidatable(pairStatus, vault, FeeAmount)"
                let expr_18178_component_1, expr_18178_component_2, expr_18178_component_3, expr_18178_component_4 := fun_isLiquidatable_15868(expr_18175_mpos, expr_18176_mpos, expr_18177_mpos)
                /// @src 72:5534:5661  "(isLiquidatable, minMargin, vaultValue, sqrtTwap) =..."
                var_sqrtTwap_18142 := expr_18178_component_4
                var_vaultValue_18153 := expr_18178_component_3
                var_minMargin_18150 := expr_18178_component_2
                var_isLiquidatable_18147 := expr_18178_component_1
                /// @src 72:5677:5691  "isLiquidatable"
                let _249 := var_isLiquidatable_18147
                let expr_18181 := _249
                /// @src 72:5676:5691  "!isLiquidatable"
                let expr_18182 := cleanup_t_bool(iszero(expr_18181))
                /// @src 72:5672:5775  "if (!isLiquidatable) {..."
                if expr_18182 {
                    /// @src 72:5742:5752  "vaultValue"
                    let _250 := var_vaultValue_18153
                    let expr_18186 := _250
                    /// @src 72:5754:5763  "minMargin"
                    let _251 := var_minMargin_18150
                    let expr_18187 := _251
                    /// @src 72:5714:5764  "IPredyPool.VaultIsNotDanger(vaultValue, minMargin)"
                    {

                        let _253 := 0

                        mstore(_253, 0x661d699400000000000000000000000000000000000000000000000000000000)
                        let _252 := abi_encode_tuple_t_int256_t_int256__to_t_int256_t_int256__fromStack(add(_253, 4) , expr_18186, expr_18187)
                        revert(_253, sub(_252, _253))
                    }/// @src 72:5672:5775  "if (!isLiquidatable) {..."
                }
                /// @src 72:5832:5841  "minMargin"
                let _254 := var_minMargin_18150
                let expr_18194 := _254
                /// @src 72:5843:5853  "vaultValue"
                let _255 := var_vaultValue_18153
                let expr_18195 := _255
                /// @src 72:5855:5865  "pairStatus"
                let _256_mpos := var_pairStatus_18131_mpos
                let expr_18196_mpos := _256_mpos
                /// @src 72:5855:5876  "pairStatus.riskParams"
                let _257 := add(expr_18196_mpos, 160)
                let _258_mpos := mload(_257)
                let expr_18197_mpos := _258_mpos
                /// @src 72:5805:5877  "calculateSlippageTolerance(minMargin, vaultValue, pairStatus.riskParams)"
                let expr_18198 := fun_calculateSlippageTolerance_18262(expr_18194, expr_18195, expr_18197_mpos)
                /// @src 72:5785:5877  "slippageTolerance = calculateSlippageTolerance(minMargin, vaultValue, pairStatus.riskParams)"
                var_slippageTolerance_18144 := expr_18198
                let expr_18199 := expr_18198

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let _291 := convert_t_rational_1000000_by_1_to_t_int256(expr_30281)

                ret := _291
            }

            /// @ast-id 16036
            /// @src 63:2215:3113  "function calculateMinDeposit(..."
            function fun_calculateMinDeposit_16036(var_pairStatus_15950_mpos, var_vault_15953_mpos, var_feeAmount_15956_mpos) -> var_minMargin_15959, var_vaultValue_15961, var_hasPosition_15963, var_twap_15965 {
                /// @src 63:2402:2418  "int256 minMargin"
                let zero_t_int256_259 := zero_value_for_split_t_int256()
                var_minMargin_15959 := zero_t_int256_259
                /// @src 63:2420:2437  "int256 vaultValue"
                let zero_t_int256_260 := zero_value_for_split_t_int256()
                var_vaultValue_15961 := zero_t_int256_260
                /// @src 63:2439:2455  "bool hasPosition"
                let zero_t_bool_261 := zero_value_for_split_t_bool()
                var_hasPosition_15963 := zero_t_bool_261
                /// @src 63:2457:2469  "uint256 twap"
                let zero_t_uint256_262 := zero_value_for_split_t_uint256()
                var_twap_15965 := zero_t_uint256_262

                /// @src 63:2481:2496  "int256 minValue"
                let var_minValue_15968
                let zero_t_int256_263 := zero_value_for_split_t_int256()
                var_minValue_15968 := zero_t_int256_263
                /// @src 63:2506:2523  "uint256 debtValue"
                let var_debtValue_15971
                let zero_t_uint256_264 := zero_value_for_split_t_uint256()
                var_debtValue_15971 := zero_t_uint256_264
                /// @src 63:2559:2569  "pairStatus"
                let _265_mpos := var_pairStatus_15950_mpos
                let expr_15975_mpos := _265_mpos
                /// @src 63:2541:2570  "getSqrtIndexPrice(pairStatus)"
                let expr_15976 := fun_getSqrtIndexPrice_16180(expr_15975_mpos)
                /// @src 63:2534:2570  "twap = getSqrtIndexPrice(pairStatus)"
                var_twap_15965 := expr_15976
                let expr_15977 := expr_15976
                /// @src 63:2661:2666  "vault"
                let _266_mpos := var_vault_15953_mpos
                let expr_15985_mpos := _266_mpos
                /// @src 63:2661:2673  "vault.margin"
                let _267 := add(expr_15985_mpos, 128)
                let _268 := read_from_memoryt_int256(_267)
                let expr_15986 := _268
                /// @src 63:2700:2705  "vault"
                let _269_mpos := var_vault_15953_mpos
                let expr_15988_mpos := _269_mpos
                /// @src 63:2700:2718  "vault.openPosition"
                let _270 := add(expr_15988_mpos, 160)
                let _271_mpos := mload(_270)
                let expr_15989_mpos := _271_mpos
                /// @src 63:2720:2729  "feeAmount"
                let _272_mpos := var_feeAmount_15956_mpos
                let expr_15990_mpos := _272_mpos
                /// @src 63:2675:2730  "getPositionWithFeeAmount(vault.openPosition, feeAmount)"
                let expr_15991_mpos := fun_getPositionWithFeeAmount_16215(expr_15989_mpos, expr_15990_mpos)
                /// @src 63:2732:2736  "twap"
                let _273 := var_twap_15965
                let expr_15992 := _273
                /// @src 63:2738:2748  "pairStatus"
                let _274_mpos := var_pairStatus_15950_mpos
                let expr_15993_mpos := _274_mpos
                /// @src 63:2738:2759  "pairStatus.riskParams"
                let _275 := add(expr_15993_mpos, 160)
                let _276_mpos := mload(_275)
                let expr_15994_mpos := _276_mpos
                /// @src 63:2738:2769  "pairStatus.riskParams.riskRatio"
                let _277 := add(expr_15994_mpos, 0)
                let _278 := read_from_memoryt_uint128(_277)
                let expr_15995 := _278
                /// @src 63:2630:2779  "calculateMinValue(..."
                let _279 := convert_t_uint128_to_t_uint256(expr_15995)
                let expr_15996_component_1, expr_15996_component_2, expr_15996_component_3, expr_15996_component_4 := fun_calculateMinValue_16115(expr_15986, expr_15991_mpos, expr_15992, _279)
                /// @src 63:2581:2779  "(minValue, vaultValue, debtValue, hasPosition) = calculateMinValue(..."
                var_hasPosition_15963 := expr_15996_component_4
                var_debtValue_15971 := expr_15996_component_3
                var_vaultValue_15961 := expr_15996_component_2
                var_minValue_15968 := expr_15996_component_1
                /// @src 63:2848:2858  "pairStatus"
                let _280_mpos := var_pairStatus_15950_mpos
                let expr_16002_mpos := _280_mpos
                /// @src 63:2848:2869  "pairStatus.riskParams"
                let _281 := add(expr_16002_mpos, 160)
                let _282_mpos := mload(_281)
                let expr_16003_mpos := _282_mpos
                /// @src 63:2848:2883  "pairStatus.riskParams.debtRiskRatio"
                let _283 := add(expr_16003_mpos, 32)
                let _284 := read_from_memoryt_uint128(_283)
                let expr_16004 := _284
                /// @src 63:2812:2884  "calculateRequiredCollateralWithDebt(pairStatus.riskParams.debtRiskRatio)"
                let expr_16005 := fun_calculateRequiredCollateralWithDebt_16055(expr_16004)
                /// @src 63:2887:2896  "debtValue"
                let _285 := var_debtValue_15971
                let expr_16006 := _285
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
                let _286 := var_vaultValue_15961
                let expr_16015 := _286
                /// @src 63:2950:2958  "minValue"
                let _287 := var_minValue_15968
                let expr_16016 := _287
                /// @src 63:2937:2958  "vaultValue - minValue"
                let expr_16017 := checked_sub_t_int256(expr_16015, expr_16016)

                /// @src 63:2961:2972  "minMinValue"
                let _288 := var_minMinValue_16000
                let expr_16018 := _288
                /// @src 63:2937:2972  "vaultValue - minValue + minMinValue"
                let expr_16019 := checked_add_t_int256(expr_16017, expr_16018)

                /// @src 63:2925:2972  "minMargin = vaultValue - minValue + minMinValue"
                var_minMargin_15959 := expr_16019
                let expr_16020 := expr_16019
                /// @src 63:2987:2998  "hasPosition"
                let _289 := var_hasPosition_15963
                let expr_16022 := _289
                /// @src 63:2987:3041  "hasPosition && minMargin < Constants.MIN_MARGIN_AMOUNT"
                let expr_16027 := expr_16022
                if expr_16027 {
                    /// @src 63:3002:3011  "minMargin"
                    let _290 := var_minMargin_15959
                    let expr_16023 := _290
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function cleanup_t_rational_100000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_100000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_100000000_by_1(value)))
            }

            function checked_div_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }

                r := div(x, y)
            }

            /// @ast-id 33920
            /// @src 67:499:1679  "function checkPrice(..."
            function fun_checkPrice_33920(var_sqrtBasePrice_33823, var_tradeResult_33826_mpos, var_slippageTolerance_33828, var_maxAcceptableSqrtPriceRange_33830) {

                /// @src 67:731:735  "Math"
                let expr_33835_address := linkersymbol("src/libraries/math/Math.sol:Math")
                /// @src 67:756:769  "sqrtBasePrice"
                let _292 := var_sqrtBasePrice_33823
                let expr_33837 := _292
                /// @src 67:731:770  "Math.calSqrtPriceToPrice(sqrtBasePrice)"
                let expr_33838 := fun_calSqrtPriceToPrice_32379(expr_33837)
                /// @src 67:711:770  "uint256 basePrice = Math.calSqrtPriceToPrice(sqrtBasePrice)"
                let var_basePrice_33834 := expr_33838
                /// @src 67:785:796  "tradeResult"
                let _293_mpos := var_tradeResult_33826_mpos
                let expr_33840_mpos := _293_mpos
                /// @src 67:785:809  "tradeResult.averagePrice"
                let _294 := add(expr_33840_mpos, 128)
                let _295 := read_from_memoryt_int256(_294)
                let expr_33841 := _295
                /// @src 67:813:814  "0"
                let expr_33842 := 0x00
                /// @src 67:785:814  "tradeResult.averagePrice == 0"
                let expr_33843 := eq(cleanup_t_int256(expr_33841), convert_t_rational_0_by_1_to_t_int256(expr_33842))
                /// @src 67:781:869  "if (tradeResult.averagePrice == 0) {..."
                if expr_33843 {
                    /// @src 67:837:858  "InvalidAveragePrice()"
                    {

                        let _297 := 0

                        mstore(_297, 0xcb78a88f00000000000000000000000000000000000000000000000000000000)
                        let _296 := abi_encode_tuple__to__fromStack(add(_297, 4) )
                        revert(_297, sub(_296, _297))
                    }/// @src 67:781:869  "if (tradeResult.averagePrice == 0) {..."
                }
                /// @src 67:883:894  "tradeResult"
                let _298_mpos := var_tradeResult_33826_mpos
                let expr_33849_mpos := _298_mpos
                /// @src 67:883:907  "tradeResult.averagePrice"
                let _299 := add(expr_33849_mpos, 128)
                let _300 := read_from_memoryt_int256(_299)
                let expr_33850 := _300
                /// @src 67:910:911  "0"
                let expr_33851 := 0x00
                /// @src 67:883:911  "tradeResult.averagePrice > 0"
                let expr_33852 := sgt(cleanup_t_int256(expr_33850), convert_t_rational_0_by_1_to_t_int256(expr_33851))
                /// @src 67:879:1311  "if (tradeResult.averagePrice > 0) {..."
                switch expr_33852
                case 0 {
                    /// @src 67:1102:1113  "tradeResult"
                    let _301_mpos := var_tradeResult_33826_mpos
                    let expr_33869_mpos := _301_mpos
                    /// @src 67:1102:1126  "tradeResult.averagePrice"
                    let _302 := add(expr_33869_mpos, 128)
                    let _303 := read_from_memoryt_int256(_302)
                    let expr_33870 := _303
                    /// @src 67:1129:1130  "0"
                    let expr_33871 := 0x00
                    /// @src 67:1102:1130  "tradeResult.averagePrice < 0"
                    let expr_33872 := slt(cleanup_t_int256(expr_33870), convert_t_rational_0_by_1_to_t_int256(expr_33871))
                    /// @src 67:1098:1311  "if (tradeResult.averagePrice < 0) {..."
                    if expr_33872 {
                        /// @src 67:1170:1179  "basePrice"
                        let _304 := var_basePrice_33834
                        let expr_33873 := _304
                        /// @src 67:1170:1185  "basePrice.upper"
                        let expr_33874_self := expr_33873
                        /// @src 67:1186:1203  "slippageTolerance"
                        let _305 := var_slippageTolerance_33828
                        let expr_33875 := _305
                        /// @src 67:1170:1204  "basePrice.upper(slippageTolerance)"
                        let expr_33876 := fun_upper_37143(expr_33874_self, expr_33875)
                        /// @src 67:1216:1227  "tradeResult"
                        let _306_mpos := var_tradeResult_33826_mpos
                        let expr_33879_mpos := _306_mpos
                        /// @src 67:1216:1240  "tradeResult.averagePrice"
                        let _307 := add(expr_33879_mpos, 128)
                        let _308 := read_from_memoryt_int256(_307)
                        let expr_33880 := _308
                        /// @src 67:1215:1240  "-tradeResult.averagePrice"
                        let expr_33881 := negate_t_int256(expr_33880)
                        /// @src 67:1207:1241  "uint256(-tradeResult.averagePrice)"
                        let expr_33882 := convert_t_int256_to_t_uint256(expr_33881)
                        /// @src 67:1170:1241  "basePrice.upper(slippageTolerance) < uint256(-tradeResult.averagePrice)"
                        let expr_33883 := lt(cleanup_t_uint256(expr_33876), cleanup_t_uint256(expr_33882))
                        /// @src 67:1166:1301  "if (basePrice.upper(slippageTolerance) < uint256(-tradeResult.averagePrice)) {..."
                        if expr_33883 {
                            /// @src 67:1268:1286  "SlippageTooLarge()"
                            {

                                let _310 := 0

                                mstore(_310, 0xf1dff2ba00000000000000000000000000000000000000000000000000000000)
                                let _309 := abi_encode_tuple__to__fromStack(add(_310, 4) )
                                revert(_310, sub(_309, _310))
                            }/// @src 67:1166:1301  "if (basePrice.upper(slippageTolerance) < uint256(-tradeResult.averagePrice)) {..."
                        }
                        /// @src 67:1098:1311  "if (tradeResult.averagePrice < 0) {..."
                    }
                    /// @src 67:879:1311  "if (tradeResult.averagePrice > 0) {..."
                }
                default {
                    /// @src 67:952:961  "basePrice"
                    let _311 := var_basePrice_33834
                    let expr_33853 := _311
                    /// @src 67:952:967  "basePrice.lower"
                    let expr_33854_self := expr_33853
                    /// @src 67:968:985  "slippageTolerance"
                    let _312 := var_slippageTolerance_33828
                    let expr_33855 := _312
                    /// @src 67:952:986  "basePrice.lower(slippageTolerance)"
                    let expr_33856 := fun_lower_37159(expr_33854_self, expr_33855)
                    /// @src 67:997:1008  "tradeResult"
                    let _313_mpos := var_tradeResult_33826_mpos
                    let expr_33859_mpos := _313_mpos
                    /// @src 67:997:1021  "tradeResult.averagePrice"
                    let _314 := add(expr_33859_mpos, 128)
                    let _315 := read_from_memoryt_int256(_314)
                    let expr_33860 := _315
                    /// @src 67:989:1022  "uint256(tradeResult.averagePrice)"
                    let expr_33861 := convert_t_int256_to_t_uint256(expr_33860)
                    /// @src 67:952:1022  "basePrice.lower(slippageTolerance) > uint256(tradeResult.averagePrice)"
                    let expr_33862 := gt(cleanup_t_uint256(expr_33856), cleanup_t_uint256(expr_33861))
                    /// @src 67:948:1082  "if (basePrice.lower(slippageTolerance) > uint256(tradeResult.averagePrice)) {..."
                    if expr_33862 {
                        /// @src 67:1049:1067  "SlippageTooLarge()"
                        {

                            let _317 := 0

                            mstore(_317, 0xf1dff2ba00000000000000000000000000000000000000000000000000000000)
                            let _316 := abi_encode_tuple__to__fromStack(add(_317, 4) )
                            revert(_317, sub(_316, _317))
                        }/// @src 67:948:1082  "if (basePrice.lower(slippageTolerance) > uint256(tradeResult.averagePrice)) {..."
                    }
                    /// @src 67:879:1311  "if (tradeResult.averagePrice > 0) {..."
                }
                /// @src 67:1338:1365  "maxAcceptableSqrtPriceRange"
                let _318 := var_maxAcceptableSqrtPriceRange_33830
                let expr_33892 := _318
                /// @src 67:1368:1369  "0"
                let expr_33893 := 0x00
                /// @src 67:1338:1369  "maxAcceptableSqrtPriceRange > 0"
                let expr_33894 := gt(cleanup_t_uint256(expr_33892), convert_t_rational_0_by_1_to_t_uint256(expr_33893))
                /// @src 67:1338:1603  "maxAcceptableSqrtPriceRange > 0..."
                let expr_33913 := expr_33894
                if expr_33913 {
                    /// @src 67:1411:1422  "tradeResult"
                    let _319_mpos := var_tradeResult_33826_mpos
                    let expr_33895_mpos := _319_mpos
                    /// @src 67:1411:1432  "tradeResult.sqrtPrice"
                    let _320 := add(expr_33895_mpos, 192)
                    let _321 := read_from_memoryt_uint256(_320)
                    let expr_33896 := _321
                    /// @src 67:1435:1448  "sqrtBasePrice"
                    let _322 := var_sqrtBasePrice_33823
                    let expr_33897 := _322
                    /// @src 67:1451:1454  "1e8"
                    let expr_33898 := 0x05f5e100
                    /// @src 67:1435:1454  "sqrtBasePrice * 1e8"
                    let expr_33899 := checked_mul_t_uint256(expr_33897, convert_t_rational_100000000_by_1_to_t_uint256(expr_33898))

                    /// @src 67:1457:1484  "maxAcceptableSqrtPriceRange"
                    let _323 := var_maxAcceptableSqrtPriceRange_33830
                    let expr_33900 := _323
                    /// @src 67:1435:1484  "sqrtBasePrice * 1e8 / maxAcceptableSqrtPriceRange"
                    let expr_33901 := checked_div_t_uint256(expr_33899, expr_33900)

                    /// @src 67:1411:1484  "tradeResult.sqrtPrice < sqrtBasePrice * 1e8 / maxAcceptableSqrtPriceRange"
                    let expr_33902 := lt(cleanup_t_uint256(expr_33896), cleanup_t_uint256(expr_33901))
                    /// @src 67:1411:1585  "tradeResult.sqrtPrice < sqrtBasePrice * 1e8 / maxAcceptableSqrtPriceRange..."
                    let expr_33911 := expr_33902
                    if iszero(expr_33911) {
                        /// @src 67:1512:1525  "sqrtBasePrice"
                        let _324 := var_sqrtBasePrice_33823
                        let expr_33903 := _324
                        /// @src 67:1528:1555  "maxAcceptableSqrtPriceRange"
                        let _325 := var_maxAcceptableSqrtPriceRange_33830
                        let expr_33904 := _325
                        /// @src 67:1512:1555  "sqrtBasePrice * maxAcceptableSqrtPriceRange"
                        let expr_33905 := checked_mul_t_uint256(expr_33903, expr_33904)

                        /// @src 67:1558:1561  "1e8"
                        let expr_33906 := 0x05f5e100
                        /// @src 67:1512:1561  "sqrtBasePrice * maxAcceptableSqrtPriceRange / 1e8"
                        let expr_33907 := checked_div_t_uint256(expr_33905, convert_t_rational_100000000_by_1_to_t_uint256(expr_33906))

                        /// @src 67:1564:1575  "tradeResult"
                        let _326_mpos := var_tradeResult_33826_mpos
                        let expr_33908_mpos := _326_mpos
                        /// @src 67:1564:1585  "tradeResult.sqrtPrice"
                        let _327 := add(expr_33908_mpos, 192)
                        let _328 := read_from_memoryt_uint256(_327)
                        let expr_33909 := _328
                        /// @src 67:1512:1585  "sqrtBasePrice * maxAcceptableSqrtPriceRange / 1e8 < tradeResult.sqrtPrice"
                        let expr_33910 := lt(cleanup_t_uint256(expr_33907), cleanup_t_uint256(expr_33909))
                        /// @src 67:1411:1585  "tradeResult.sqrtPrice < sqrtBasePrice * 1e8 / maxAcceptableSqrtPriceRange..."
                        expr_33911 := expr_33910
                    }
                    /// @src 67:1389:1603  "(..."
                    let expr_33912 := expr_33911
                    /// @src 67:1338:1603  "maxAcceptableSqrtPriceRange > 0..."
                    expr_33913 := expr_33912
                }
                /// @src 67:1321:1673  "if (..."
                if expr_33913 {
                    /// @src 67:1635:1662  "OutOfAcceptablePriceRange()"
                    {

                        let _330 := 0

                        mstore(_330, 0xdbaffb0100000000000000000000000000000000000000000000000000000000)
                        let _329 := abi_encode_tuple__to__fromStack(add(_330, 4) )
                        revert(_330, sub(_329, _330))
                    }/// @src 67:1321:1673  "if (..."
                }

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            function store_literal_in_memory_77631768048ee92f9dcf4b9b9d762877d6b9723214862c733f0596708fc219b7(memPtr) {

                mstore(add(memPtr, 0), "TRANSFER_FROM_FAILED")

            }

            function abi_encode_t_stringliteral_77631768048ee92f9dcf4b9b9d762877d6b9723214862c733f0596708fc219b7_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 20)
                store_literal_in_memory_77631768048ee92f9dcf4b9b9d762877d6b9723214862c733f0596708fc219b7(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_77631768048ee92f9dcf4b9b9d762877d6b9723214862c733f0596708fc219b7__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_77631768048ee92f9dcf4b9b9d762877d6b9723214862c733f0596708fc219b7_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_77631768048ee92f9dcf4b9b9d762877d6b9723214862c733f0596708fc219b7(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_77631768048ee92f9dcf4b9b9d762877d6b9723214862c733f0596708fc219b7__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 13349
            /// @src 14:1328:3110  "function safeTransferFrom(..."
            function fun_safeTransferFrom_13349(var_token_13330_address, var_from_13332, var_to_13334, var_amount_13336) {

                /// @src 14:1466:1478  "bool success"
                let var_success_13340
                let zero_t_bool_331 := zero_value_for_split_t_bool()
                var_success_13340 := zero_t_bool_331
                /// @src 14:1532:3053  "assembly {..."
                {
                    let usr$freeMemoryPointer := mload(0x40)
                    mstore(usr$freeMemoryPointer, 0x23b872dd00000000000000000000000000000000000000000000000000000000)
                    mstore(add(usr$freeMemoryPointer, 4), and(var_from_13332, 0xffffffffffffffffffffffffffffffffffffffff))
                    mstore(add(usr$freeMemoryPointer, 36), and(var_to_13334, 0xffffffffffffffffffffffffffffffffffffffff))
                    mstore(add(usr$freeMemoryPointer, 68), var_amount_13336)
                    var_success_13340 := and(or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())), call(gas(), var_token_13330_address, 0, usr$freeMemoryPointer, 100, 0, 32))
                }
                /// @src 14:3071:3078  "success"
                let _332 := var_success_13340
                let expr_13344 := _332
                /// @src 14:3063:3103  "require(success, \"TRANSFER_FROM_FAILED\")"
                require_helper_t_stringliteral_77631768048ee92f9dcf4b9b9d762877d6b9723214862c733f0596708fc219b7(expr_13344)

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let zero_t_bool_333 := zero_value_for_split_t_bool()
                var_success_13360 := zero_t_bool_333
                /// @src 14:3294:4671  "assembly {..."
                {
                    let usr$freeMemoryPointer := mload(0x40)
                    mstore(usr$freeMemoryPointer, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
                    mstore(add(usr$freeMemoryPointer, 4), and(var_to_13354, 0xffffffffffffffffffffffffffffffffffffffff))
                    mstore(add(usr$freeMemoryPointer, 36), var_amount_13356)
                    var_success_13360 := and(or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())), call(gas(), var_token_13352_address, 0, usr$freeMemoryPointer, 68, 0, 32))
                }
                /// @src 14:4689:4696  "success"
                let _334 := var_success_13360
                let expr_13364 := _334
                /// @src 14:4681:4716  "require(success, \"TRANSFER_FAILED\")"
                require_helper_t_stringliteral_8bf8f0d780f13740660fe63233b17f96cb1813889e7dce4121e55b817b367b72(expr_13364)

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

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
                let _335_slot := var__assetStatus_14327_slot
                let expr_14330_slot := _335_slot
                /// @src 61:13132:13156  "_assetStatus.totalAmount"
                let _336 := add(expr_14330_slot, 2)
                let _337 := read_from_storage_split_offset_0_t_uint256(_336)
                let expr_14331 := _337
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
                let _338_slot := var__assetStatus_14327_slot
                let expr_14343_slot := _338_slot
                /// @src 61:13308:13332  "_assetStatus.uniswapPool"
                let _339 := add(expr_14343_slot, 0)
                let _340 := read_from_storage_split_offset_0_t_address(_339)
                let expr_14344 := _340
                /// @src 61:13334:13346  "_assetStatus"
                let _341_slot := var__assetStatus_14327_slot
                let expr_14345_slot := _341_slot
                /// @src 61:13334:13356  "_assetStatus.tickLower"
                let _342 := add(expr_14345_slot, 0)
                let _343 := read_from_storage_split_offset_20_t_int24(_342)
                let expr_14346 := _343
                /// @src 61:13358:13370  "_assetStatus"
                let _344_slot := var__assetStatus_14327_slot
                let expr_14347_slot := _344_slot
                /// @src 61:13358:13380  "_assetStatus.tickUpper"
                let _345 := add(expr_14347_slot, 0)
                let _346 := read_from_storage_split_offset_23_t_int24(_345)
                let expr_14348 := _346
                /// @src 61:13279:13381  "UniHelper.getFeeGrowthInside(_assetStatus.uniswapPool, _assetStatus.tickLower, _assetStatus.tickUpper)"
                let expr_14349_component_1, expr_14349_component_2 := fun_getFeeGrowthInside_16941(expr_14344, expr_14346, expr_14348)
                /// @src 61:13204:13381  "(uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) =..."
                let var_feeGrowthInside0X128_14338 := expr_14349_component_1
                let var_feeGrowthInside1X128_14340 := expr_14349_component_2
                /// @src 61:13392:13402  "uint256 f0"
                let var_f0_14352
                let zero_t_uint256_347 := zero_value_for_split_t_uint256()
                var_f0_14352 := zero_t_uint256_347
                /// @src 61:13412:13422  "uint256 f1"
                let var_f1_14355
                let zero_t_uint256_348 := zero_value_for_split_t_uint256()
                var_f1_14355 := zero_t_uint256_348
                /// @src 61:13522:13542  "feeGrowthInside0X128"
                let _349 := var_feeGrowthInside0X128_14338
                let expr_14358 := _349
                /// @src 61:13545:13557  "_assetStatus"
                let _350_slot := var__assetStatus_14327_slot
                let expr_14359_slot := _350_slot
                /// @src 61:13545:13572  "_assetStatus.lastFee0Growth"
                let _351 := add(expr_14359_slot, 5)
                let _352 := read_from_storage_split_offset_0_t_uint256(_351)
                let expr_14360 := _352
                /// @src 61:13522:13572  "feeGrowthInside0X128 - _assetStatus.lastFee0Growth"
                let expr_14361 := wrapping_sub_t_uint256(expr_14358, expr_14360)

                /// @src 61:13517:13572  "f0 = feeGrowthInside0X128 - _assetStatus.lastFee0Growth"
                var_f0_14352 := expr_14361
                let expr_14362 := expr_14361
                /// @src 61:13591:13611  "feeGrowthInside1X128"
                let _353 := var_feeGrowthInside1X128_14340
                let expr_14365 := _353
                /// @src 61:13614:13626  "_assetStatus"
                let _354_slot := var__assetStatus_14327_slot
                let expr_14366_slot := _354_slot
                /// @src 61:13614:13641  "_assetStatus.lastFee1Growth"
                let _355 := add(expr_14366_slot, 6)
                let _356 := read_from_storage_split_offset_0_t_uint256(_355)
                let expr_14367 := _356
                /// @src 61:13591:13641  "feeGrowthInside1X128 - _assetStatus.lastFee1Growth"
                let expr_14368 := wrapping_sub_t_uint256(expr_14365, expr_14367)

                /// @src 61:13586:13641  "f1 = feeGrowthInside1X128 - _assetStatus.lastFee1Growth"
                var_f1_14355 := expr_14368
                let expr_14369 := expr_14368
                /// @src 61:13666:13668  "f0"
                let _357 := var_f0_14352
                let expr_14372 := _357
                /// @src 61:13672:13673  "0"
                let expr_14373 := 0x00
                /// @src 61:13666:13673  "f0 == 0"
                let expr_14374 := eq(cleanup_t_uint256(expr_14372), convert_t_rational_0_by_1_to_t_uint256(expr_14373))
                /// @src 61:13666:13684  "f0 == 0 && f1 == 0"
                let expr_14378 := expr_14374
                if expr_14378 {
                    /// @src 61:13677:13679  "f1"
                    let _358 := var_f1_14355
                    let expr_14375 := _358
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
                let _359_slot := var__assetStatus_14327_slot
                let expr_14385_slot := _359_slot
                /// @src 61:13749:13782  "getUtilizationRatio(_assetStatus)"
                let _360_mpos := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(expr_14385_slot)
                let expr_14386 := fun_getUtilizationRatio_15131(_360_mpos)
                /// @src 61:13727:13782  "uint256 utilization = getUtilizationRatio(_assetStatus)"
                let var_utilization_14383 := expr_14386
                /// @src 61:13815:13832  "PremiumCurveModel"
                let expr_14390_address := linkersymbol("src/libraries/PremiumCurveModel.sol:PremiumCurveModel")
                /// @src 61:13855:13866  "utilization"
                let _361 := var_utilization_14383
                let expr_14392 := _361
                /// @src 61:13815:13867  "PremiumCurveModel.calculatePremiumCurve(utilization)"
                let expr_14393 := fun_calculatePremiumCurve_30359(expr_14392)
                /// @src 61:13793:13867  "uint256 spreadParam = PremiumCurveModel.calculatePremiumCurve(utilization)"
                let var_spreadParam_14389 := expr_14393
                /// @src 61:13905:13913  "FullMath"
                let expr_14398_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 61:13934:13936  "f0"
                let _362 := var_f0_14352
                let expr_14400 := _362
                /// @src 61:13938:13950  "_assetStatus"
                let _363_slot := var__assetStatus_14327_slot
                let expr_14401_slot := _363_slot
                /// @src 61:13938:13962  "_assetStatus.totalAmount"
                let _364 := add(expr_14401_slot, 2)
                let _365 := read_from_storage_split_offset_0_t_uint256(_364)
                let expr_14402 := _365
                /// @src 61:13965:13977  "_assetStatus"
                let _366_slot := var__assetStatus_14327_slot
                let expr_14403_slot := _366_slot
                /// @src 61:13965:13992  "_assetStatus.borrowedAmount"
                let _367 := add(expr_14403_slot, 3)
                let _368 := read_from_storage_split_offset_0_t_uint256(_367)
                let expr_14404 := _368
                /// @src 61:13995:14006  "spreadParam"
                let _369 := var_spreadParam_14389
                let expr_14405 := _369
                /// @src 61:13965:14006  "_assetStatus.borrowedAmount * spreadParam"
                let expr_14406 := checked_mul_t_uint256(expr_14404, expr_14405)

                /// @src 61:14009:14013  "1000"
                let expr_14407 := 0x03e8
                /// @src 61:13965:14013  "_assetStatus.borrowedAmount * spreadParam / 1000"
                let expr_14408 := checked_div_t_uint256(expr_14406, convert_t_rational_1000_by_1_to_t_uint256(expr_14407))

                /// @src 61:13938:14013  "_assetStatus.totalAmount + _assetStatus.borrowedAmount * spreadParam / 1000"
                let expr_14409 := checked_add_t_uint256(expr_14402, expr_14408)

                /// @src 61:14015:14027  "_assetStatus"
                let _370_slot := var__assetStatus_14327_slot
                let expr_14410_slot := _370_slot
                /// @src 61:14015:14039  "_assetStatus.totalAmount"
                let _371 := add(expr_14410_slot, 2)
                let _372 := read_from_storage_split_offset_0_t_uint256(_371)
                let expr_14411 := _372
                /// @src 61:13905:14049  "FullMath.mulDiv(..."
                let expr_14412 := fun_mulDiv_32512(expr_14400, expr_14409, expr_14411)
                /// @src 61:13878:13890  "_assetStatus"
                let _373_slot := var__assetStatus_14327_slot
                let expr_14395_slot := _373_slot
                /// @src 61:13878:13901  "_assetStatus.fee0Growth"
                let _374 := add(expr_14395_slot, 9)
                /// @src 61:13878:14049  "_assetStatus.fee0Growth += FullMath.mulDiv(..."
                let _375 := read_from_storage_split_offset_0_t_uint256(_374)
                let expr_14413 := checked_add_t_uint256(_375, expr_14412)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_374, expr_14413)
                /// @src 61:14086:14094  "FullMath"
                let expr_14418_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 61:14115:14117  "f1"
                let _376 := var_f1_14355
                let expr_14420 := _376
                /// @src 61:14119:14131  "_assetStatus"
                let _377_slot := var__assetStatus_14327_slot
                let expr_14421_slot := _377_slot
                /// @src 61:14119:14143  "_assetStatus.totalAmount"
                let _378 := add(expr_14421_slot, 2)
                let _379 := read_from_storage_split_offset_0_t_uint256(_378)
                let expr_14422 := _379
                /// @src 61:14146:14158  "_assetStatus"
                let _380_slot := var__assetStatus_14327_slot
                let expr_14423_slot := _380_slot
                /// @src 61:14146:14173  "_assetStatus.borrowedAmount"
                let _381 := add(expr_14423_slot, 3)
                let _382 := read_from_storage_split_offset_0_t_uint256(_381)
                let expr_14424 := _382
                /// @src 61:14176:14187  "spreadParam"
                let _383 := var_spreadParam_14389
                let expr_14425 := _383
                /// @src 61:14146:14187  "_assetStatus.borrowedAmount * spreadParam"
                let expr_14426 := checked_mul_t_uint256(expr_14424, expr_14425)

                /// @src 61:14190:14194  "1000"
                let expr_14427 := 0x03e8
                /// @src 61:14146:14194  "_assetStatus.borrowedAmount * spreadParam / 1000"
                let expr_14428 := checked_div_t_uint256(expr_14426, convert_t_rational_1000_by_1_to_t_uint256(expr_14427))

                /// @src 61:14119:14194  "_assetStatus.totalAmount + _assetStatus.borrowedAmount * spreadParam / 1000"
                let expr_14429 := checked_add_t_uint256(expr_14422, expr_14428)

                /// @src 61:14196:14208  "_assetStatus"
                let _384_slot := var__assetStatus_14327_slot
                let expr_14430_slot := _384_slot
                /// @src 61:14196:14220  "_assetStatus.totalAmount"
                let _385 := add(expr_14430_slot, 2)
                let _386 := read_from_storage_split_offset_0_t_uint256(_385)
                let expr_14431 := _386
                /// @src 61:14086:14230  "FullMath.mulDiv(..."
                let expr_14432 := fun_mulDiv_32512(expr_14420, expr_14429, expr_14431)
                /// @src 61:14059:14071  "_assetStatus"
                let _387_slot := var__assetStatus_14327_slot
                let expr_14415_slot := _387_slot
                /// @src 61:14059:14082  "_assetStatus.fee1Growth"
                let _388 := add(expr_14415_slot, 10)
                /// @src 61:14059:14230  "_assetStatus.fee1Growth += FullMath.mulDiv(..."
                let _389 := read_from_storage_split_offset_0_t_uint256(_388)
                let expr_14433 := checked_add_t_uint256(_389, expr_14432)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_388, expr_14433)
                /// @src 61:14278:14286  "FullMath"
                let expr_14438_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 61:14294:14296  "f0"
                let _390 := var_f0_14352
                let expr_14440 := _390
                /// @src 61:14298:14302  "1000"
                let expr_14441 := 0x03e8
                /// @src 61:14305:14316  "spreadParam"
                let _391 := var_spreadParam_14389
                let expr_14442 := _391
                /// @src 61:14298:14316  "1000 + spreadParam"
                let expr_14443 := checked_add_t_uint256(convert_t_rational_1000_by_1_to_t_uint256(expr_14441), expr_14442)

                /// @src 61:14318:14322  "1000"
                let expr_14444 := 0x03e8
                /// @src 61:14278:14323  "FullMath.mulDiv(f0, 1000 + spreadParam, 1000)"
                let _392 := convert_t_rational_1000_by_1_to_t_uint256(expr_14444)
                let expr_14445 := fun_mulDiv_32512(expr_14440, expr_14443, _392)
                /// @src 61:14241:14253  "_assetStatus"
                let _393_slot := var__assetStatus_14327_slot
                let expr_14435_slot := _393_slot
                /// @src 61:14241:14274  "_assetStatus.borrowPremium0Growth"
                let _394 := add(expr_14435_slot, 7)
                /// @src 61:14241:14323  "_assetStatus.borrowPremium0Growth += FullMath.mulDiv(f0, 1000 + spreadParam, 1000)"
                let _395 := read_from_storage_split_offset_0_t_uint256(_394)
                let expr_14446 := checked_add_t_uint256(_395, expr_14445)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_394, expr_14446)
                /// @src 61:14370:14378  "FullMath"
                let expr_14451_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 61:14386:14388  "f1"
                let _396 := var_f1_14355
                let expr_14453 := _396
                /// @src 61:14390:14394  "1000"
                let expr_14454 := 0x03e8
                /// @src 61:14397:14408  "spreadParam"
                let _397 := var_spreadParam_14389
                let expr_14455 := _397
                /// @src 61:14390:14408  "1000 + spreadParam"
                let expr_14456 := checked_add_t_uint256(convert_t_rational_1000_by_1_to_t_uint256(expr_14454), expr_14455)

                /// @src 61:14410:14414  "1000"
                let expr_14457 := 0x03e8
                /// @src 61:14370:14415  "FullMath.mulDiv(f1, 1000 + spreadParam, 1000)"
                let _398 := convert_t_rational_1000_by_1_to_t_uint256(expr_14457)
                let expr_14458 := fun_mulDiv_32512(expr_14453, expr_14456, _398)
                /// @src 61:14333:14345  "_assetStatus"
                let _399_slot := var__assetStatus_14327_slot
                let expr_14448_slot := _399_slot
                /// @src 61:14333:14366  "_assetStatus.borrowPremium1Growth"
                let _400 := add(expr_14448_slot, 8)
                /// @src 61:14333:14415  "_assetStatus.borrowPremium1Growth += FullMath.mulDiv(f1, 1000 + spreadParam, 1000)"
                let _401 := read_from_storage_split_offset_0_t_uint256(_400)
                let expr_14459 := checked_add_t_uint256(_401, expr_14458)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_400, expr_14459)
                /// @src 61:14456:14476  "feeGrowthInside0X128"
                let _402 := var_feeGrowthInside0X128_14338
                let expr_14464 := _402
                /// @src 61:14426:14438  "_assetStatus"
                let _403_slot := var__assetStatus_14327_slot
                let expr_14461_slot := _403_slot
                /// @src 61:14426:14453  "_assetStatus.lastFee0Growth"
                let _404 := add(expr_14461_slot, 5)
                /// @src 61:14426:14476  "_assetStatus.lastFee0Growth = feeGrowthInside0X128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_404, expr_14464)
                let expr_14465 := expr_14464
                /// @src 61:14516:14536  "feeGrowthInside1X128"
                let _405 := var_feeGrowthInside1X128_14340
                let expr_14470 := _405
                /// @src 61:14486:14498  "_assetStatus"
                let _406_slot := var__assetStatus_14327_slot
                let expr_14467_slot := _406_slot
                /// @src 61:14486:14513  "_assetStatus.lastFee1Growth"
                let _407 := add(expr_14467_slot, 6)
                /// @src 61:14486:14536  "_assetStatus.lastFee1Growth = feeGrowthInside1X128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_407, expr_14470)
                let expr_14471 := expr_14470
                /// @src 61:14573:14580  "_pairId"
                let _408 := var__pairId_14324
                let expr_14474 := _408
                /// @src 61:14582:14594  "_assetStatus"
                let _409_slot := var__assetStatus_14327_slot
                let expr_14475_slot := _409_slot
                /// @src 61:14582:14606  "_assetStatus.totalAmount"
                let _410 := add(expr_14475_slot, 2)
                let _411 := read_from_storage_split_offset_0_t_uint256(_410)
                let expr_14476 := _411
                /// @src 61:14608:14620  "_assetStatus"
                let _412_slot := var__assetStatus_14327_slot
                let expr_14477_slot := _412_slot
                /// @src 61:14608:14635  "_assetStatus.borrowedAmount"
                let _413 := add(expr_14477_slot, 3)
                let _414 := read_from_storage_split_offset_0_t_uint256(_413)
                let expr_14478 := _414
                /// @src 61:14637:14639  "f0"
                let _415 := var_f0_14352
                let expr_14479 := _415
                /// @src 61:14641:14643  "f1"
                let _416 := var_f1_14355
                let expr_14480 := _416
                /// @src 61:14645:14656  "spreadParam"
                let _417 := var_spreadParam_14389
                let expr_14481 := _417
                /// @src 61:14552:14657  "PremiumGrowthUpdated(_pairId, _assetStatus.totalAmount, _assetStatus.borrowedAmount, f0, f1, spreadParam)"
                let _418 := 0x4f3e43e713f947281f0deec9c972d8bed677658e3f98271fbec9a52ca8f79bd7
                let _419 := convert_t_uint256_to_t_uint256(expr_14474)
                {
                    let _420 := allocate_unbounded()
                    let _421 := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__fromStack(_420 , expr_14476, expr_14478, expr_14479, expr_14480, expr_14481)
                    log2(_420, sub(_421, _420) , _418, _419)
                }
            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let zero_t_uint256_422 := zero_value_for_split_t_uint256()
                var_interestRate_33188 := zero_t_uint256_422

                /// @src 56:1812:1827  "block.timestamp"
                let expr_33191 := timestamp()
                /// @src 56:1831:1850  "lastUpdateTimestamp"
                let _423 := var_lastUpdateTimestamp_33183
                let expr_33192 := _423
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
                let _424_slot := var_poolStatus_33181_slot
                let expr_33200_slot := _424_slot
                /// @src 56:1922:1944  "poolStatus.tokenStatus"
                let _425 := add(expr_33200_slot, 2)
                let _426_slot := _425
                let expr_33201_slot := _426_slot
                /// @src 56:1922:1964  "poolStatus.tokenStatus.getUtilizationRatio"
                let expr_33202_self_mpos := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_33201_slot)
                /// @src 56:1922:1966  "poolStatus.tokenStatus.getUtilizationRatio()"
                let expr_33203 := fun_getUtilizationRatio_31668(expr_33202_self_mpos)
                /// @src 56:1895:1966  "uint256 utilizationRatio = poolStatus.tokenStatus.getUtilizationRatio()"
                let var_utilizationRatio_33199 := expr_33203
                /// @src 56:2044:2060  "utilizationRatio"
                let _427 := var_utilizationRatio_33199
                let expr_33205 := _427
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
                let _428_slot := var_poolStatus_33181_slot
                let expr_33215_slot := _428_slot
                /// @src 56:2201:2221  "poolStatus.irmParams"
                let _429 := add(expr_33215_slot, 8)
                let _430_slot := _429
                let expr_33216_slot := _430_slot
                /// @src 56:2223:2239  "utilizationRatio"
                let _431 := var_utilizationRatio_33199
                let expr_33217 := _431
                /// @src 56:2161:2240  "InterestRateModel.calculateInterestRate(poolStatus.irmParams, utilizationRatio)"
                let _432_mpos := convert_t_struct$_IRMParams_$13447_storage_to_t_struct$_IRMParams_$13447_memory_ptr(expr_33216_slot)
                let expr_33218 := fun_calculateInterestRate_13510(_432_mpos, expr_33217)
                /// @src 56:2256:2271  "block.timestamp"
                let expr_33220 := timestamp()
                /// @src 56:2274:2293  "lastUpdateTimestamp"
                let _433 := var_lastUpdateTimestamp_33183
                let expr_33221 := _433
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
                let _434_slot := var_poolStatus_33181_slot
                let expr_33231_slot := _434_slot
                /// @src 56:2343:2365  "poolStatus.tokenStatus"
                let _435 := add(expr_33231_slot, 2)
                let _436_slot := _435
                let expr_33232_slot := _436_slot
                /// @src 56:2343:2378  "poolStatus.tokenStatus.updateScaler"
                let expr_33233_self_slot := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(expr_33232_slot)
                /// @src 56:2379:2391  "interestRate"
                let _437 := var_interestRate_33188
                let expr_33234 := _437
                /// @src 56:2393:2396  "fee"
                let _438 := var_fee_33185
                let expr_33235 := _438
                /// @src 56:2343:2397  "poolStatus.tokenStatus.updateScaler(interestRate, fee)"
                let expr_33236 := fun_updateScaler_31572(expr_33233_self_slot, expr_33234, expr_33235)
                /// @src 56:2316:2397  "uint256 totalProtocolFee = poolStatus.tokenStatus.updateScaler(interestRate, fee)"
                let var_totalProtocolFee_33230 := expr_33236
                /// @src 56:2449:2465  "totalProtocolFee"
                let _439 := var_totalProtocolFee_33230
                let expr_33241 := _439
                /// @src 56:2468:2469  "2"
                let expr_33242 := 0x02
                /// @src 56:2449:2469  "totalProtocolFee / 2"
                let expr_33243 := checked_div_t_uint256(expr_33241, convert_t_rational_2_by_1_to_t_uint256(expr_33242))

                /// @src 56:2408:2418  "poolStatus"
                let _440_slot := var_poolStatus_33181_slot
                let expr_33238_slot := _440_slot
                /// @src 56:2408:2445  "poolStatus.accumulatedProtocolRevenue"
                let _441 := add(expr_33238_slot, 12)
                /// @src 56:2408:2469  "poolStatus.accumulatedProtocolRevenue += totalProtocolFee / 2"
                let _442 := read_from_storage_split_offset_0_t_uint256(_441)
                let expr_33244 := checked_add_t_uint256(_442, expr_33243)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_441, expr_33244)
                /// @src 56:2519:2535  "totalProtocolFee"
                let _443 := var_totalProtocolFee_33230
                let expr_33249 := _443
                /// @src 56:2538:2539  "2"
                let expr_33250 := 0x02
                /// @src 56:2519:2539  "totalProtocolFee / 2"
                let expr_33251 := checked_div_t_uint256(expr_33249, convert_t_rational_2_by_1_to_t_uint256(expr_33250))

                /// @src 56:2479:2489  "poolStatus"
                let _444_slot := var_poolStatus_33181_slot
                let expr_33246_slot := _444_slot
                /// @src 56:2479:2515  "poolStatus.accumulatedCreatorRevenue"
                let _445 := add(expr_33246_slot, 13)
                /// @src 56:2479:2539  "poolStatus.accumulatedCreatorRevenue += totalProtocolFee / 2"
                let _446 := read_from_storage_split_offset_0_t_uint256(_445)
                let expr_33252 := checked_add_t_uint256(_446, expr_33251)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_445, expr_33252)

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let _447_mpos := var_assetStatus_33258_mpos
                let expr_33266_mpos := _447_mpos
                /// @src 56:2776:2790  "assetStatus.id"
                let _448 := add(expr_33266_mpos, 0)
                let _449 := read_from_memoryt_uint256(_448)
                let expr_33267 := _449
                /// @src 56:2804:2815  "assetStatus"
                let _450_mpos := var_assetStatus_33258_mpos
                let expr_33268_mpos := _450_mpos
                /// @src 56:2804:2825  "assetStatus.quotePool"
                let _451 := add(expr_33268_mpos, 96)
                let _452_mpos := mload(_451)
                let expr_33269_mpos := _452_mpos
                /// @src 56:2804:2837  "assetStatus.quotePool.tokenStatus"
                let _453 := add(expr_33269_mpos, 64)
                let _454_mpos := mload(_453)
                let expr_33270_mpos := _454_mpos
                /// @src 56:2851:2862  "assetStatus"
                let _455_mpos := var_assetStatus_33258_mpos
                let expr_33271_mpos := _455_mpos
                /// @src 56:2851:2871  "assetStatus.basePool"
                let _456 := add(expr_33271_mpos, 128)
                let _457_mpos := mload(_456)
                let expr_33272_mpos := _457_mpos
                /// @src 56:2851:2883  "assetStatus.basePool.tokenStatus"
                let _458 := add(expr_33272_mpos, 64)
                let _459_mpos := mload(_458)
                let expr_33273_mpos := _459_mpos
                /// @src 56:2897:2916  "interestRatioStable"
                let _460 := var_interestRatioStable_33260
                let expr_33274 := _460
                /// @src 56:2930:2953  "interestRatioUnderlying"
                let _461 := var_interestRatioUnderlying_33262
                let expr_33275 := _461
                /// @src 56:2741:2963  "InterestGrowthUpdated(..."
                let _462 := 0x68fec554d30e1515ff9dd8fef00d858620f16c33b61a2ed9cc011e4c0d66b01c
                let _463 := convert_t_uint256_to_t_uint256(expr_33267)
                {
                    let _464 := allocate_unbounded()
                    let _465 := abi_encode_tuple_t_struct$_AssetStatus_$30934_memory_ptr_t_struct$_AssetStatus_$30934_memory_ptr_t_uint256_t_uint256__to_t_struct$_AssetStatus_$30934_memory_ptr_t_struct$_AssetStatus_$30934_memory_ptr_t_uint256_t_uint256__fromStack(_464 , expr_33270_mpos, expr_33273_mpos, expr_33274, expr_33275)
                    log2(_464, sub(_465, _464) , _462, _463)
                }
            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            function convert_t_struct$_UserStatus_$30939_storage_ptr_to_t_struct$_UserStatus_$30939_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_UserStatus_$30939_memory_ptr(value)

            }

            /// @ast-id 31406
            /// @src 66:4790:5237  "function settleUserFee(ScaledAsset.AssetStatus memory _assetStatus, ScaledAsset.UserStatus storage _userStatus)..."
            function fun_settleUserFee_31406(var__assetStatus_31369_mpos, var__userStatus_31372_slot) -> var_interestFee_31375 {
                /// @src 66:4936:4954  "int256 interestFee"
                let zero_t_int256_466 := zero_value_for_split_t_int256()
                var_interestFee_31375 := zero_t_int256_466

                /// @src 66:4999:5011  "_assetStatus"
                let _467_mpos := var__assetStatus_31369_mpos
                let expr_31379_mpos := _467_mpos
                /// @src 66:5013:5024  "_userStatus"
                let _468_slot := var__userStatus_31372_slot
                let expr_31380_slot := _468_slot
                /// @src 66:4984:5025  "computeUserFee(_assetStatus, _userStatus)"
                let _469_mpos := convert_t_struct$_UserStatus_$30939_storage_ptr_to_t_struct$_UserStatus_$30939_memory_ptr(expr_31380_slot)
                let expr_31381 := fun_computeUserFee_31366(expr_31379_mpos, _469_mpos)
                /// @src 66:4970:5025  "interestFee = computeUserFee(_assetStatus, _userStatus)"
                var_interestFee_31375 := expr_31381
                let expr_31382 := expr_31381
                /// @src 66:5040:5051  "_userStatus"
                let _470_slot := var__userStatus_31372_slot
                let expr_31384_slot := _470_slot
                /// @src 66:5040:5066  "_userStatus.positionAmount"
                let _471 := add(expr_31384_slot, 0)
                let _472 := read_from_storage_split_offset_0_t_int256(_471)
                let expr_31385 := _472
                /// @src 66:5069:5070  "0"
                let expr_31386 := 0x00
                /// @src 66:5040:5070  "_userStatus.positionAmount > 0"
                let expr_31387 := sgt(cleanup_t_int256(expr_31385), convert_t_rational_0_by_1_to_t_int256(expr_31386))
                /// @src 66:5036:5231  "if (_userStatus.positionAmount > 0) {..."
                switch expr_31387
                case 0 {
                    /// @src 66:5197:5209  "_assetStatus"
                    let _473_mpos := var__assetStatus_31369_mpos
                    let expr_31399_mpos := _473_mpos
                    /// @src 66:5197:5220  "_assetStatus.debtGrowth"
                    let _474 := add(expr_31399_mpos, 160)
                    let _475 := read_from_memoryt_uint256(_474)
                    let expr_31400 := _475
                    /// @src 66:5169:5180  "_userStatus"
                    let _476_slot := var__userStatus_31372_slot
                    let expr_31396_slot := _476_slot
                    /// @src 66:5169:5194  "_userStatus.lastFeeGrowth"
                    let _477 := add(expr_31396_slot, 1)
                    /// @src 66:5169:5220  "_userStatus.lastFeeGrowth = _assetStatus.debtGrowth"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_477, expr_31400)
                    let expr_31401 := expr_31400
                    /// @src 66:5036:5231  "if (_userStatus.positionAmount > 0) {..."
                }
                default {
                    /// @src 66:5114:5126  "_assetStatus"
                    let _478_mpos := var__assetStatus_31369_mpos
                    let expr_31391_mpos := _478_mpos
                    /// @src 66:5114:5138  "_assetStatus.assetGrowth"
                    let _479 := add(expr_31391_mpos, 128)
                    let _480 := read_from_memoryt_uint256(_479)
                    let expr_31392 := _480
                    /// @src 66:5086:5097  "_userStatus"
                    let _481_slot := var__userStatus_31372_slot
                    let expr_31388_slot := _481_slot
                    /// @src 66:5086:5111  "_userStatus.lastFeeGrowth"
                    let _482 := add(expr_31388_slot, 1)
                    /// @src 66:5086:5138  "_userStatus.lastFeeGrowth = _assetStatus.assetGrowth"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_482, expr_31392)
                    let expr_31393 := expr_31392
                    /// @src 66:5036:5231  "if (_userStatus.positionAmount > 0) {..."
                }

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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

            /// @ast-id 33383
            /// @src 62:422:1555  "function computeUserFee(..."
            function fun_computeUserFee_33383(var_assetStatus_33301_mpos, var_rebalanceFeeGrowthCache_33306_slot, var_userStatus_33309_mpos) -> var__33313_mpos {
                /// @src 62:660:685  "DataType.FeeAmount memory"
                let zero_t_struct$_FeeAmount_$6126_memory_ptr_483_mpos := zero_value_for_split_t_struct$_FeeAmount_$6126_memory_ptr()
                var__33313_mpos := zero_t_struct$_FeeAmount_$6126_memory_ptr_483_mpos

                /// @src 62:726:737  "assetStatus"
                let _484_mpos := var_assetStatus_33301_mpos
                let expr_33317_mpos := _484_mpos
                /// @src 62:726:746  "assetStatus.basePool"
                let _485 := add(expr_33317_mpos, 128)
                let _486_mpos := mload(_485)
                let expr_33318_mpos := _486_mpos
                /// @src 62:726:758  "assetStatus.basePool.tokenStatus"
                let _487 := add(expr_33318_mpos, 64)
                let _488_mpos := mload(_487)
                let expr_33319_mpos := _488_mpos
                /// @src 62:726:773  "assetStatus.basePool.tokenStatus.computeUserFee"
                let expr_33320_self_mpos := expr_33319_mpos
                /// @src 62:774:784  "userStatus"
                let _489_mpos := var_userStatus_33309_mpos
                let expr_33321_mpos := _489_mpos
                /// @src 62:774:797  "userStatus.basePosition"
                let _490 := add(expr_33321_mpos, 192)
                let _491_mpos := mload(_490)
                let expr_33322_mpos := _491_mpos
                /// @src 62:726:798  "assetStatus.basePool.tokenStatus.computeUserFee(userStatus.basePosition)"
                let expr_33323 := fun_computeUserFee_31366(expr_33320_self_mpos, expr_33322_mpos)
                /// @src 62:697:798  "int256 FeeAmountUnderlying = assetStatus.basePool.tokenStatus.computeUserFee(userStatus.basePosition)"
                let var_FeeAmountUnderlying_33316 := expr_33323
                /// @src 62:833:844  "assetStatus"
                let _492_mpos := var_assetStatus_33301_mpos
                let expr_33327_mpos := _492_mpos
                /// @src 62:833:854  "assetStatus.quotePool"
                let _493 := add(expr_33327_mpos, 96)
                let _494_mpos := mload(_493)
                let expr_33328_mpos := _494_mpos
                /// @src 62:833:866  "assetStatus.quotePool.tokenStatus"
                let _495 := add(expr_33328_mpos, 64)
                let _496_mpos := mload(_495)
                let expr_33329_mpos := _496_mpos
                /// @src 62:833:881  "assetStatus.quotePool.tokenStatus.computeUserFee"
                let expr_33330_self_mpos := expr_33329_mpos
                /// @src 62:882:892  "userStatus"
                let _497_mpos := var_userStatus_33309_mpos
                let expr_33331_mpos := _497_mpos
                /// @src 62:882:907  "userStatus.stablePosition"
                let _498 := add(expr_33331_mpos, 224)
                let _499_mpos := mload(_498)
                let expr_33332_mpos := _499_mpos
                /// @src 62:833:908  "assetStatus.quotePool.tokenStatus.computeUserFee(userStatus.stablePosition)"
                let expr_33333 := fun_computeUserFee_31366(expr_33330_self_mpos, expr_33332_mpos)
                /// @src 62:808:908  "int256 FeeAmountStable = assetStatus.quotePool.tokenStatus.computeUserFee(userStatus.stablePosition)"
                let var_FeeAmountStable_33326 := expr_33333
                /// @src 62:1039:1050  "assetStatus"
                let _500_mpos := var_assetStatus_33301_mpos
                let expr_33340_mpos := _500_mpos
                /// @src 62:1039:1053  "assetStatus.id"
                let _501 := add(expr_33340_mpos, 0)
                let _502 := read_from_memoryt_uint256(_501)
                let expr_33341 := _502
                /// @src 62:1055:1066  "assetStatus"
                let _503_mpos := var_assetStatus_33301_mpos
                let expr_33342_mpos := _503_mpos
                /// @src 62:1055:1082  "assetStatus.sqrtAssetStatus"
                let _504 := add(expr_33342_mpos, 192)
                let _505_mpos := mload(_504)
                let expr_33343_mpos := _505_mpos
                /// @src 62:1084:1107  "rebalanceFeeGrowthCache"
                let _506_slot := var_rebalanceFeeGrowthCache_33306_slot
                let expr_33344_slot := _506_slot
                /// @src 62:1109:1119  "userStatus"
                let _507_mpos := var_userStatus_33309_mpos
                let expr_33345_mpos := _507_mpos
                /// @src 62:997:1133  "computeRebalanceInterest(..."
                let expr_33346_component_1, expr_33346_component_2 := fun_computeRebalanceInterest_33730(expr_33341, expr_33343_mpos, expr_33344_slot, expr_33345_mpos)
                /// @src 62:933:1133  "(int256 rebalanceInterestBase, int256 rebalanceInterestQuote) = computeRebalanceInterest(..."
                let var_rebalanceInterestBase_33336 := expr_33346_component_1
                let var_rebalanceInterestQuote_33338 := expr_33346_component_2
                /// @src 62:1170:1191  "rebalanceInterestBase"
                let _508 := var_rebalanceInterestBase_33336
                let expr_33349 := _508
                /// @src 62:1147:1191  "FeeAmountUnderlying += rebalanceInterestBase"
                let _509 := var_FeeAmountUnderlying_33316
                let expr_33350 := checked_add_t_int256(_509, expr_33349)

                var_FeeAmountUnderlying_33316 := expr_33350
                /// @src 62:1224:1246  "rebalanceInterestQuote"
                let _510 := var_rebalanceInterestQuote_33338
                let expr_33353 := _510
                /// @src 62:1205:1246  "FeeAmountStable += rebalanceInterestQuote"
                let _511 := var_FeeAmountStable_33326
                let expr_33354 := checked_add_t_int256(_511, expr_33353)

                var_FeeAmountStable_33326 := expr_33354
                /// @src 62:1339:1350  "assetStatus"
                let _512_mpos := var_assetStatus_33301_mpos
                let expr_33362_mpos := _512_mpos
                /// @src 62:1352:1362  "userStatus"
                let _513_mpos := var_userStatus_33309_mpos
                let expr_33363_mpos := _513_mpos
                /// @src 62:1352:1371  "userStatus.sqrtPerp"
                let _514 := add(expr_33363_mpos, 160)
                let _515_mpos := mload(_514)
                let expr_33364_mpos := _515_mpos
                /// @src 62:1324:1372  "computePremium(assetStatus, userStatus.sqrtPerp)"
                let expr_33365_component_1, expr_33365_component_2 := fun_computePremium_33578(expr_33362_mpos, expr_33364_mpos)
                /// @src 62:1281:1372  "(int256 feeUnderlying, int256 feeStable) = computePremium(assetStatus, userStatus.sqrtPerp)"
                let var_feeUnderlying_33358 := expr_33365_component_1
                let var_feeStable_33360 := expr_33365_component_2
                /// @src 62:1409:1422  "feeUnderlying"
                let _516 := var_feeUnderlying_33358
                let expr_33368 := _516
                /// @src 62:1386:1422  "FeeAmountUnderlying += feeUnderlying"
                let _517 := var_FeeAmountUnderlying_33316
                let expr_33369 := checked_add_t_int256(_517, expr_33368)

                var_FeeAmountUnderlying_33316 := expr_33369
                /// @src 62:1455:1464  "feeStable"
                let _518 := var_feeStable_33360
                let expr_33372 := _518
                /// @src 62:1436:1464  "FeeAmountStable += feeStable"
                let _519 := var_FeeAmountStable_33326
                let expr_33373 := checked_add_t_int256(_519, expr_33372)

                var_FeeAmountStable_33326 := expr_33373
                /// @src 62:1492:1500  "DataType"
                let expr_33376_address := linkersymbol("src/libraries/DataType.sol:DataType")
                /// @src 62:1511:1530  "FeeAmountUnderlying"
                let _520 := var_FeeAmountUnderlying_33316
                let expr_33378 := _520
                /// @src 62:1532:1547  "FeeAmountStable"
                let _521 := var_FeeAmountStable_33326
                let expr_33379 := _521
                /// @src 62:1492:1548  "DataType.FeeAmount(FeeAmountUnderlying, FeeAmountStable)"
                let expr_33380_mpos := allocate_memory_struct_t_struct$_FeeAmount_$6126_storage_ptr()
                write_to_memory_t_int256(add(expr_33380_mpos, 0), expr_33378)
                write_to_memory_t_int256(add(expr_33380_mpos, 32), expr_33379)
                /// @src 62:1485:1548  "return DataType.FeeAmount(FeeAmountUnderlying, FeeAmountStable)"
                var__33313_mpos := expr_33380_mpos
                leave

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @ast-id 15868
            /// @src 63:892:1408  "function isLiquidatable(..."
            function fun_isLiquidatable_15868(var_pairStatus_15817_mpos, var__vault_15820_mpos, var_FeeAmount_15823_mpos) -> var__isLiquidatable_15826, var_minMargin_15828, var_vaultValue_15830, var_twap_15832 {
                /// @src 63:1075:1095  "bool _isLiquidatable"
                let zero_t_bool_522 := zero_value_for_split_t_bool()
                var__isLiquidatable_15826 := zero_t_bool_522
                /// @src 63:1097:1113  "int256 minMargin"
                let zero_t_int256_523 := zero_value_for_split_t_int256()
                var_minMargin_15828 := zero_t_int256_523
                /// @src 63:1115:1132  "int256 vaultValue"
                let zero_t_int256_524 := zero_value_for_split_t_int256()
                var_vaultValue_15830 := zero_t_int256_524
                /// @src 63:1134:1146  "uint256 twap"
                let zero_t_uint256_525 := zero_value_for_split_t_uint256()
                var_twap_15832 := zero_t_uint256_525

                /// @src 63:1158:1174  "bool hasPosition"
                let var_hasPosition_15835
                let zero_t_bool_526 := zero_value_for_split_t_bool()
                var_hasPosition_15835 := zero_t_bool_526
                /// @src 63:1250:1260  "pairStatus"
                let _527_mpos := var_pairStatus_15817_mpos
                let expr_15843_mpos := _527_mpos
                /// @src 63:1262:1268  "_vault"
                let _528_mpos := var__vault_15820_mpos
                let expr_15844_mpos := _528_mpos
                /// @src 63:1270:1279  "FeeAmount"
                let _529_mpos := var_FeeAmount_15823_mpos
                let expr_15845_mpos := _529_mpos
                /// @src 63:1230:1280  "calculateMinDeposit(pairStatus, _vault, FeeAmount)"
                let expr_15846_component_1, expr_15846_component_2, expr_15846_component_3, expr_15846_component_4 := fun_calculateMinDeposit_16036(expr_15843_mpos, expr_15844_mpos, expr_15845_mpos)
                /// @src 63:1185:1280  "(minMargin, vaultValue, hasPosition, twap) = calculateMinDeposit(pairStatus, _vault, FeeAmount)"
                var_twap_15832 := expr_15846_component_4
                var_hasPosition_15835 := expr_15846_component_3
                var_vaultValue_15830 := expr_15846_component_2
                var_minMargin_15828 := expr_15846_component_1
                /// @src 63:1305:1315  "vaultValue"
                let _530 := var_vaultValue_15830
                let expr_15851 := _530
                /// @src 63:1319:1328  "minMargin"
                let _531 := var_minMargin_15828
                let expr_15852 := _531
                /// @src 63:1305:1328  "vaultValue >= minMargin"
                let expr_15853 := iszero(slt(cleanup_t_int256(expr_15851), cleanup_t_int256(expr_15852)))
                /// @src 63:1305:1350  "vaultValue >= minMargin && _vault.margin >= 0"
                let expr_15858 := expr_15853
                if expr_15858 {
                    /// @src 63:1332:1338  "_vault"
                    let _532_mpos := var__vault_15820_mpos
                    let expr_15854_mpos := _532_mpos
                    /// @src 63:1332:1345  "_vault.margin"
                    let _533 := add(expr_15854_mpos, 128)
                    let _534 := read_from_memoryt_int256(_533)
                    let expr_15855 := _534
                    /// @src 63:1349:1350  "0"
                    let expr_15856 := 0x00
                    /// @src 63:1332:1350  "_vault.margin >= 0"
                    let expr_15857 := iszero(slt(cleanup_t_int256(expr_15855), convert_t_rational_0_by_1_to_t_int256(expr_15856)))
                    /// @src 63:1305:1350  "vaultValue >= minMargin && _vault.margin >= 0"
                    expr_15858 := expr_15857
                }
                /// @src 63:1291:1350  "bool isSafe = vaultValue >= minMargin && _vault.margin >= 0"
                let var_isSafe_15850 := expr_15858
                /// @src 63:1380:1386  "isSafe"
                let _535 := var_isSafe_15850
                let expr_15861 := _535
                /// @src 63:1379:1386  "!isSafe"
                let expr_15862 := cleanup_t_bool(iszero(expr_15861))
                /// @src 63:1379:1401  "!isSafe && hasPosition"
                let expr_15864 := expr_15862
                if expr_15864 {
                    /// @src 63:1390:1401  "hasPosition"
                    let _536 := var_hasPosition_15835
                    let expr_15863 := _536
                    /// @src 63:1379:1401  "!isSafe && hasPosition"
                    expr_15864 := expr_15863
                }
                /// @src 63:1361:1401  "_isLiquidatable = !isSafe && hasPosition"
                var__isLiquidatable_15826 := expr_15864
                let expr_15865 := expr_15864

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            function read_from_memoryt_uint64(ptr) -> returnValue {

                let value := cleanup_t_uint64(mload(ptr))

                returnValue :=

                value

            }

            function convert_t_uint64_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint64(value)))
            }

            function cleanup_t_rational_10000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10000_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_10000_by_1(value)))
            }

            function convert_t_rational_10000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10000_by_1(value)))
            }

            function checked_sub_t_uint64(x, y) -> diff {
                x := cleanup_t_uint64(x)
                y := cleanup_t_uint64(y)
                diff := sub(x, y)

                if gt(diff, 0xffffffffffffffff) { panic_error_0x11() }

            }

            /// @ast-id 18262
            /// @src 72:6294:6829  "function calculateSlippageTolerance(int256 minMargin, int256 vaultValue, Perp.AssetRiskParams memory riskParams)..."
            function fun_calculateSlippageTolerance_18262(var_minMargin_18205, var_vaultValue_18207, var_riskParams_18210_mpos) -> var__18213 {
                /// @src 72:6454:6461  "uint256"
                let zero_t_uint256_537 := zero_value_for_split_t_uint256()
                var__18213 := zero_t_uint256_537

                /// @src 72:6481:6491  "vaultValue"
                let _538 := var_vaultValue_18207
                let expr_18215 := _538
                /// @src 72:6495:6496  "0"
                let expr_18216 := 0x00
                /// @src 72:6481:6496  "vaultValue <= 0"
                let expr_18217 := iszero(sgt(cleanup_t_int256(expr_18215), convert_t_rational_0_by_1_to_t_int256(expr_18216)))
                /// @src 72:6481:6514  "vaultValue <= 0 || minMargin == 0"
                let expr_18221 := expr_18217
                if iszero(expr_18221) {
                    /// @src 72:6500:6509  "minMargin"
                    let _539 := var_minMargin_18205
                    let expr_18218 := _539
                    /// @src 72:6513:6514  "0"
                    let expr_18219 := 0x00
                    /// @src 72:6500:6514  "minMargin == 0"
                    let expr_18220 := eq(cleanup_t_int256(expr_18218), convert_t_rational_0_by_1_to_t_int256(expr_18219))
                    /// @src 72:6481:6514  "vaultValue <= 0 || minMargin == 0"
                    expr_18221 := expr_18220
                }
                /// @src 72:6477:6570  "if (vaultValue <= 0 || minMargin == 0) {..."
                if expr_18221 {
                    /// @src 72:6537:6547  "riskParams"
                    let _540_mpos := var_riskParams_18210_mpos
                    let expr_18222_mpos := _540_mpos
                    /// @src 72:6537:6559  "riskParams.maxSlippage"
                    let _541 := add(expr_18222_mpos, 160)
                    let _542 := read_from_memoryt_uint64(_541)
                    let expr_18223 := _542
                    /// @src 72:6530:6559  "return riskParams.maxSlippage"
                    var__18213 := convert_t_uint64_to_t_uint256(expr_18223)
                    leave
                    /// @src 72:6477:6570  "if (vaultValue <= 0 || minMargin == 0) {..."
                }
                /// @src 72:6604:6614  "vaultValue"
                let _543 := var_vaultValue_18207
                let expr_18231 := _543
                /// @src 72:6617:6620  "1e4"
                let expr_18232 := 0x2710
                /// @src 72:6604:6620  "vaultValue * 1e4"
                let expr_18233 := checked_mul_t_int256(expr_18231, convert_t_rational_10000_by_1_to_t_int256(expr_18232))

                /// @src 72:6623:6632  "minMargin"
                let _544 := var_minMargin_18205
                let expr_18234 := _544
                /// @src 72:6604:6632  "vaultValue * 1e4 / minMargin"
                let expr_18235 := checked_div_t_int256(expr_18233, expr_18234)

                /// @src 72:6596:6633  "uint256(vaultValue * 1e4 / minMargin)"
                let expr_18236 := convert_t_int256_to_t_uint256(expr_18235)
                /// @src 72:6580:6633  "uint256 ratio = uint256(vaultValue * 1e4 / minMargin)"
                let var_ratio_18228 := expr_18236
                /// @src 72:6648:6653  "ratio"
                let _545 := var_ratio_18228
                let expr_18238 := _545
                /// @src 72:6656:6659  "1e4"
                let expr_18239 := 0x2710
                /// @src 72:6648:6659  "ratio > 1e4"
                let expr_18240 := gt(cleanup_t_uint256(expr_18238), convert_t_rational_10000_by_1_to_t_uint256(expr_18239))
                /// @src 72:6644:6715  "if (ratio > 1e4) {..."
                if expr_18240 {
                    /// @src 72:6682:6692  "riskParams"
                    let _546_mpos := var_riskParams_18210_mpos
                    let expr_18241_mpos := _546_mpos
                    /// @src 72:6682:6704  "riskParams.minSlippage"
                    let _547 := add(expr_18241_mpos, 128)
                    let _548 := read_from_memoryt_uint64(_547)
                    let expr_18242 := _548
                    /// @src 72:6675:6704  "return riskParams.minSlippage"
                    var__18213 := convert_t_uint64_to_t_uint256(expr_18242)
                    leave
                    /// @src 72:6644:6715  "if (ratio > 1e4) {..."
                }
                /// @src 72:6733:6743  "riskParams"
                let _549_mpos := var_riskParams_18210_mpos
                let expr_18246_mpos := _549_mpos
                /// @src 72:6733:6755  "riskParams.maxSlippage"
                let _550 := add(expr_18246_mpos, 160)
                let _551 := read_from_memoryt_uint64(_550)
                let expr_18247 := _551
                /// @src 72:6758:6763  "ratio"
                let _552 := var_ratio_18228
                let expr_18248 := _552
                /// @src 72:6767:6777  "riskParams"
                let _553_mpos := var_riskParams_18210_mpos
                let expr_18249_mpos := _553_mpos
                /// @src 72:6767:6789  "riskParams.maxSlippage"
                let _554 := add(expr_18249_mpos, 160)
                let _555 := read_from_memoryt_uint64(_554)
                let expr_18250 := _555
                /// @src 72:6792:6802  "riskParams"
                let _556_mpos := var_riskParams_18210_mpos
                let expr_18251_mpos := _556_mpos
                /// @src 72:6792:6814  "riskParams.minSlippage"
                let _557 := add(expr_18251_mpos, 128)
                let _558 := read_from_memoryt_uint64(_557)
                let expr_18252 := _558
                /// @src 72:6767:6814  "riskParams.maxSlippage - riskParams.minSlippage"
                let expr_18253 := checked_sub_t_uint64(expr_18250, expr_18252)

                /// @src 72:6766:6815  "(riskParams.maxSlippage - riskParams.minSlippage)"
                let expr_18254 := expr_18253
                /// @src 72:6758:6815  "ratio * (riskParams.maxSlippage - riskParams.minSlippage)"
                let expr_18255 := checked_mul_t_uint256(expr_18248, convert_t_uint64_to_t_uint256(expr_18254))

                /// @src 72:6818:6821  "1e4"
                let expr_18256 := 0x2710
                /// @src 72:6758:6821  "ratio * (riskParams.maxSlippage - riskParams.minSlippage) / 1e4"
                let expr_18257 := checked_div_t_uint256(expr_18255, convert_t_rational_10000_by_1_to_t_uint256(expr_18256))

                /// @src 72:6733:6821  "riskParams.maxSlippage - ratio * (riskParams.maxSlippage - riskParams.minSlippage) / 1e4"
                let expr_18258 := checked_sub_t_uint256(convert_t_uint64_to_t_uint256(expr_18247), expr_18257)

                /// @src 72:6732:6822  "(riskParams.maxSlippage - ratio * (riskParams.maxSlippage - riskParams.minSlippage) / 1e4)"
                let expr_18259 := expr_18258
                /// @src 72:6725:6822  "return (riskParams.maxSlippage - ratio * (riskParams.maxSlippage - riskParams.minSlippage) / 1e4)"
                var__18213 := expr_18259
                leave

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            function read_from_memoryt_address(ptr) -> returnValue {

                let value := cleanup_t_address(mload(ptr))

                returnValue :=

                value

            }

            function read_from_memoryt_bool(ptr) -> returnValue {

                let value := cleanup_t_bool(mload(ptr))

                returnValue :=

                value

            }

            function convert_t_uint160_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_contract$_PriceFeed_$32754(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_PriceFeed_$32754(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_PriceFeed_$32754(value)
            }

            function convert_t_contract$_PriceFeed_$32754_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_decode_tuple_t_uint256_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            /// @ast-id 16180
            /// @src 63:4570:4996  "function getSqrtIndexPrice(DataType.PairStatus memory pairStatus) internal view returns (uint256 sqrtPriceX96) {..."
            function fun_getSqrtIndexPrice_16180(var_pairStatus_16145_mpos) -> var_sqrtPriceX96_16148 {
                /// @src 63:4659:4679  "uint256 sqrtPriceX96"
                let zero_t_uint256_559 := zero_value_for_split_t_uint256()
                var_sqrtPriceX96_16148 := zero_t_uint256_559

                /// @src 63:4695:4705  "pairStatus"
                let _560_mpos := var_pairStatus_16145_mpos
                let expr_16150_mpos := _560_mpos
                /// @src 63:4695:4715  "pairStatus.priceFeed"
                let _561 := add(expr_16150_mpos, 224)
                let _562 := read_from_memoryt_address(_561)
                let expr_16151 := _562
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
                    let _563_mpos := var_pairStatus_16145_mpos
                    let expr_16169_mpos := _563_mpos
                    /// @src 63:4902:4928  "pairStatus.sqrtAssetStatus"
                    let _564 := add(expr_16169_mpos, 192)
                    let _565_mpos := mload(_564)
                    let expr_16170_mpos := _565_mpos
                    /// @src 63:4902:4940  "pairStatus.sqrtAssetStatus.uniswapPool"
                    let _566 := add(expr_16170_mpos, 0)
                    let _567 := read_from_memoryt_address(_566)
                    let expr_16171 := _567
                    /// @src 63:4880:4941  "UniHelper.getSqrtTWAP(pairStatus.sqrtAssetStatus.uniswapPool)"
                    let expr_16172 := fun_getSqrtTWAP_16514(expr_16171)
                    /// @src 63:4943:4953  "pairStatus"
                    let _568_mpos := var_pairStatus_16145_mpos
                    let expr_16173_mpos := _568_mpos
                    /// @src 63:4943:4965  "pairStatus.isQuoteZero"
                    let _569 := add(expr_16173_mpos, 256)
                    let _570 := read_from_memoryt_bool(_569)
                    let expr_16174 := _570
                    /// @src 63:4836:4979  "UniHelper.convertSqrtPrice(..."
                    let expr_16175 := fun_convertSqrtPrice_16543(expr_16172, expr_16174)
                    /// @src 63:4829:4979  "return UniHelper.convertSqrtPrice(..."
                    var_sqrtPriceX96_16148 := convert_t_uint160_to_t_uint256(expr_16175)
                    leave
                    /// @src 63:4691:4990  "if (pairStatus.priceFeed != address(0)) {..."
                }
                default {
                    /// @src 63:4762:4772  "pairStatus"
                    let _571_mpos := var_pairStatus_16145_mpos
                    let expr_16158_mpos := _571_mpos
                    /// @src 63:4762:4782  "pairStatus.priceFeed"
                    let _572 := add(expr_16158_mpos, 224)
                    let _573 := read_from_memoryt_address(_572)
                    let expr_16159 := _573
                    /// @src 63:4752:4783  "PriceFeed(pairStatus.priceFeed)"
                    let expr_16160_address := convert_t_address_to_t_contract$_PriceFeed_$32754(expr_16159)
                    /// @src 63:4752:4796  "PriceFeed(pairStatus.priceFeed).getSqrtPrice"
                    let expr_16161_address := convert_t_contract$_PriceFeed_$32754_to_t_address(expr_16160_address)
                    let expr_16161_functionSelector := 0x86e6862d
                    /// @src 63:4752:4798  "PriceFeed(pairStatus.priceFeed).getSqrtPrice()"

                    // storage for arguments and returned data
                    let _574 := allocate_unbounded()
                    mstore(_574, shift_left_224(expr_16161_functionSelector))
                    let _575 := abi_encode_tuple__to__fromStack(add(_574, 4) )

                    let _576 := staticcall(gas(), expr_16161_address,  _574, sub(_575, _574), _574, 32)

                    if iszero(_576) { revert_forward_1() }

                    let expr_16162
                    if _576 {

                        let _577 := 32

                        if gt(_577, returndatasize()) {
                            _577 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_574, _577)

                        // decode return parameters from external try-call into retVars
                        expr_16162 :=  abi_decode_tuple_t_uint256_fromMemory(_574, add(_574, _577))
                    }
                    /// @src 63:4745:4798  "return PriceFeed(pairStatus.priceFeed).getSqrtPrice()"
                    var_sqrtPriceX96_16148 := expr_16162
                    leave
                    /// @src 63:4691:4990  "if (pairStatus.priceFeed != address(0)) {..."
                }

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let zero_t_struct$_PositionParams_$15814_memory_ptr_578_mpos := zero_value_for_split_t_struct$_PositionParams_$15814_memory_ptr()
                var_positionParams_16190_mpos := zero_t_struct$_PositionParams_$15814_memory_ptr_578_mpos

                /// @src 63:5246:5260  "perpUserStatus"
                let _579_mpos := var_perpUserStatus_16183_mpos
                let expr_16193_mpos := _579_mpos
                /// @src 63:5246:5265  "perpUserStatus.perp"
                let _580 := add(expr_16193_mpos, 128)
                let _581_mpos := mload(_580)
                let expr_16194_mpos := _581_mpos
                /// @src 63:5246:5276  "perpUserStatus.perp.entryValue"
                let _582 := add(expr_16194_mpos, 32)
                let _583 := read_from_memoryt_int256(_582)
                let expr_16195 := _583
                /// @src 63:5279:5293  "perpUserStatus"
                let _584_mpos := var_perpUserStatus_16183_mpos
                let expr_16196_mpos := _584_mpos
                /// @src 63:5279:5302  "perpUserStatus.sqrtPerp"
                let _585 := add(expr_16196_mpos, 160)
                let _586_mpos := mload(_585)
                let expr_16197_mpos := _586_mpos
                /// @src 63:5279:5313  "perpUserStatus.sqrtPerp.entryValue"
                let _587 := add(expr_16197_mpos, 32)
                let _588 := read_from_memoryt_int256(_587)
                let expr_16198 := _588
                /// @src 63:5246:5313  "perpUserStatus.perp.entryValue + perpUserStatus.sqrtPerp.entryValue"
                let expr_16199 := checked_add_t_int256(expr_16195, expr_16198)

                /// @src 63:5316:5325  "feeAmount"
                let _589_mpos := var_feeAmount_16186_mpos
                let expr_16200_mpos := _589_mpos
                /// @src 63:5316:5340  "feeAmount.feeAmountQuote"
                let _590 := add(expr_16200_mpos, 32)
                let _591 := read_from_memoryt_int256(_590)
                let expr_16201 := _591
                /// @src 63:5246:5340  "perpUserStatus.perp.entryValue + perpUserStatus.sqrtPerp.entryValue + feeAmount.feeAmountQuote"
                let expr_16202 := checked_add_t_int256(expr_16199, expr_16201)

                /// @src 63:5354:5368  "perpUserStatus"
                let _592_mpos := var_perpUserStatus_16183_mpos
                let expr_16203_mpos := _592_mpos
                /// @src 63:5354:5377  "perpUserStatus.sqrtPerp"
                let _593 := add(expr_16203_mpos, 160)
                let _594_mpos := mload(_593)
                let expr_16204_mpos := _594_mpos
                /// @src 63:5354:5384  "perpUserStatus.sqrtPerp.amount"
                let _595 := add(expr_16204_mpos, 0)
                let _596 := read_from_memoryt_int256(_595)
                let expr_16205 := _596
                /// @src 63:5398:5412  "perpUserStatus"
                let _597_mpos := var_perpUserStatus_16183_mpos
                let expr_16206_mpos := _597_mpos
                /// @src 63:5398:5417  "perpUserStatus.perp"
                let _598 := add(expr_16206_mpos, 128)
                let _599_mpos := mload(_598)
                let expr_16207_mpos := _599_mpos
                /// @src 63:5398:5424  "perpUserStatus.perp.amount"
                let _600 := add(expr_16207_mpos, 0)
                let _601 := read_from_memoryt_int256(_600)
                let expr_16208 := _601
                /// @src 63:5427:5436  "feeAmount"
                let _602_mpos := var_feeAmount_16186_mpos
                let expr_16209_mpos := _602_mpos
                /// @src 63:5427:5450  "feeAmount.feeAmountBase"
                let _603 := add(expr_16209_mpos, 0)
                let _604 := read_from_memoryt_int256(_603)
                let expr_16210 := _604
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @ast-id 16115
            /// @src 63:3680:4308  "function calculateMinValue(..."
            function fun_calculateMinValue_16115(var_marginAmount_16058, var_positionParams_16061_mpos, var_sqrtPrice_16063, var_riskRatio_16065) -> var_minValue_16068, var_vaultValue_16070, var_debtValue_16072, var_hasPosition_16074 {
                /// @src 63:3865:3880  "int256 minValue"
                let zero_t_int256_605 := zero_value_for_split_t_int256()
                var_minValue_16068 := zero_t_int256_605
                /// @src 63:3882:3899  "int256 vaultValue"
                let zero_t_int256_606 := zero_value_for_split_t_int256()
                var_vaultValue_16070 := zero_t_int256_606
                /// @src 63:3901:3918  "uint256 debtValue"
                let zero_t_uint256_607 := zero_value_for_split_t_uint256()
                var_debtValue_16072 := zero_t_uint256_607
                /// @src 63:3920:3936  "bool hasPosition"
                let zero_t_bool_608 := zero_value_for_split_t_bool()
                var_hasPosition_16074 := zero_t_bool_608

                /// @src 63:3978:3987  "sqrtPrice"
                let _609 := var_sqrtPrice_16063
                let expr_16078 := _609
                /// @src 63:3989:4003  "positionParams"
                let _610_mpos := var_positionParams_16061_mpos
                let expr_16079_mpos := _610_mpos
                /// @src 63:4005:4014  "riskRatio"
                let _611 := var_riskRatio_16065
                let expr_16080 := _611
                /// @src 63:3960:4015  "calculateMinValue(sqrtPrice, positionParams, riskRatio)"
                let expr_16081 := fun_calculateMinValue_16387(expr_16078, expr_16079_mpos, expr_16080)
                /// @src 63:3948:4015  "minValue += calculateMinValue(sqrtPrice, positionParams, riskRatio)"
                let _612 := var_minValue_16068
                let expr_16082 := checked_add_t_int256(_612, expr_16081)

                var_minValue_16068 := expr_16082
                /// @src 63:4055:4064  "sqrtPrice"
                let _613 := var_sqrtPrice_16063
                let expr_16086 := _613
                /// @src 63:4066:4080  "positionParams"
                let _614_mpos := var_positionParams_16061_mpos
                let expr_16087_mpos := _614_mpos
                /// @src 63:4040:4081  "calculateValue(sqrtPrice, positionParams)"
                let expr_16088 := fun_calculateValue_16429(expr_16086, expr_16087_mpos)
                /// @src 63:4026:4081  "vaultValue += calculateValue(sqrtPrice, positionParams)"
                let _615 := var_vaultValue_16070
                let expr_16089 := checked_add_t_int256(_615, expr_16088)

                var_vaultValue_16070 := expr_16089
                /// @src 63:4130:4139  "sqrtPrice"
                let _616 := var_sqrtPrice_16063
                let expr_16093 := _616
                /// @src 63:4141:4155  "positionParams"
                let _617_mpos := var_positionParams_16061_mpos
                let expr_16094_mpos := _617_mpos
                /// @src 63:4105:4156  "calculateSquartDebtValue(sqrtPrice, positionParams)"
                let expr_16095 := fun_calculateSquartDebtValue_16467(expr_16093, expr_16094_mpos)
                /// @src 63:4092:4156  "debtValue += calculateSquartDebtValue(sqrtPrice, positionParams)"
                let _618 := var_debtValue_16072
                let expr_16096 := checked_add_t_uint256(_618, expr_16095)

                var_debtValue_16072 := expr_16096
                /// @src 63:4181:4192  "hasPosition"
                let _619 := var_hasPosition_16074
                let expr_16099 := _619
                /// @src 63:4181:4230  "hasPosition || getHasPositionFlag(positionParams)"
                let expr_16103 := expr_16099
                if iszero(expr_16103) {
                    /// @src 63:4215:4229  "positionParams"
                    let _620_mpos := var_positionParams_16061_mpos
                    let expr_16101_mpos := _620_mpos
                    /// @src 63:4196:4230  "getHasPositionFlag(positionParams)"
                    let expr_16102 := fun_getHasPositionFlag_16260(expr_16101_mpos)
                    /// @src 63:4181:4230  "hasPosition || getHasPositionFlag(positionParams)"
                    expr_16103 := expr_16102
                }
                /// @src 63:4167:4230  "hasPosition = hasPosition || getHasPositionFlag(positionParams)"
                var_hasPosition_16074 := expr_16103
                let expr_16104 := expr_16103
                /// @src 63:4253:4265  "marginAmount"
                let _621 := var_marginAmount_16058
                let expr_16107 := _621
                /// @src 63:4241:4265  "minValue += marginAmount"
                let _622 := var_minValue_16068
                let expr_16108 := checked_add_t_int256(_622, expr_16107)

                var_minValue_16068 := expr_16108
                /// @src 63:4289:4301  "marginAmount"
                let _623 := var_marginAmount_16058
                let expr_16111 := _623
                /// @src 63:4275:4301  "vaultValue += marginAmount"
                let _624 := var_vaultValue_16070
                let expr_16112 := checked_add_t_int256(_624, expr_16111)

                var_vaultValue_16070 := expr_16112

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            function convert_t_rational_0_by_1_to_t_uint128(value) -> converted {
                converted := cleanup_t_uint128(identity(cleanup_t_rational_0_by_1(value)))
            }

            /// @src 57:742:804  "uint256 internal constant BASE_MIN_COLLATERAL_WITH_DEBT = 1000"
            function constant_BASE_MIN_COLLATERAL_WITH_DEBT_30303() -> ret {
                /// @src 57:800:804  "1000"
                let expr_30302 := 0x03e8
                let _628 := convert_t_rational_1000_by_1_to_t_uint256(expr_30302)

                ret := _628
            }

            /// @ast-id 16055
            /// @src 63:3119:3380  "function calculateRequiredCollateralWithDebt(uint128 debtRiskRatio) internal pure returns (uint256) {..."
            function fun_calculateRequiredCollateralWithDebt_16055(var_debtRiskRatio_16038) -> var__16041 {
                /// @src 63:3210:3217  "uint256"
                let zero_t_uint256_625 := zero_value_for_split_t_uint256()
                var__16041 := zero_t_uint256_625

                /// @src 63:3232:3245  "debtRiskRatio"
                let _626 := var_debtRiskRatio_16038
                let expr_16043 := _626
                /// @src 63:3249:3250  "0"
                let expr_16044 := 0x00
                /// @src 63:3232:3250  "debtRiskRatio == 0"
                let expr_16045 := eq(cleanup_t_uint128(expr_16043), convert_t_rational_0_by_1_to_t_uint128(expr_16044))
                /// @src 63:3229:3374  "if(debtRiskRatio == 0) {..."
                switch expr_16045
                case 0 {
                    /// @src 63:3350:3363  "debtRiskRatio"
                    let _627 := var_debtRiskRatio_16038
                    let expr_16050 := _627
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let zero_t_int256_629 := zero_value_for_split_t_int256()
                var__28947 := zero_t_int256_629

                /// @src 10:34962:34967  "value"
                let _630 := var_value_28944
                let expr_28950 := _630
                /// @src 10:34979:34995  "type(int256).max"
                let expr_28957 := 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                /// @src 10:34971:34996  "uint256(type(int256).max)"
                let expr_28958 := convert_t_int256_to_t_uint256(expr_28957)
                /// @src 10:34962:34996  "value <= uint256(type(int256).max)"
                let expr_28959 := iszero(gt(cleanup_t_uint256(expr_28950), cleanup_t_uint256(expr_28958)))
                /// @src 10:34954:35041  "require(value <= uint256(type(int256).max), \"SafeCast: value doesn't fit in an int256\")"
                require_helper_t_stringliteral_d70dcf21692b3c91b4c5fbb89ed57f464aa42efbe5b0ea96c4acb7c080144227(expr_28959)
                /// @src 10:35065:35070  "value"
                let _631 := var_value_28944
                let expr_28965 := _631
                /// @src 10:35058:35071  "int256(value)"
                let expr_28966 := convert_t_uint256_to_t_int256(expr_28965)
                /// @src 10:35051:35071  "return int256(value)"
                var__28947 := expr_28966
                leave

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let _635 := convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(expr_30296)

                ret := _635
            }

            /// @ast-id 32379
            /// @src 79:1951:2114  "function calSqrtPriceToPrice(uint256 sqrtPrice) internal pure returns (uint256 price) {..."
            function fun_calSqrtPriceToPrice_32379(var_sqrtPrice_32363) -> var_price_32366 {
                /// @src 79:2022:2035  "uint256 price"
                let zero_t_uint256_632 := zero_value_for_split_t_uint256()
                var_price_32366 := zero_t_uint256_632

                /// @src 79:2055:2063  "FullMath"
                let expr_32369_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 79:2071:2080  "sqrtPrice"
                let _633 := var_sqrtPrice_32363
                let expr_32371 := _633
                /// @src 79:2082:2091  "sqrtPrice"
                let _634 := var_sqrtPrice_32363
                let expr_32372 := _634
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

            function cleanup_t_uint32(value) -> cleaned {
                cleaned := and(value, 0xffffffff)
            }

            function convert_t_rational_1000000_by_1_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(identity(cleanup_t_rational_1000000_by_1(value)))
            }

            /// @src 77:81:113  "uint32 public constant ONE = 1e6"
            function constant_ONE_37127() -> ret {
                /// @src 77:110:113  "1e6"
                let expr_37126 := 0x0f4240
                let _639 := convert_t_rational_1000000_by_1_to_t_uint32(expr_37126)

                ret := _639
            }

            function convert_t_uint32_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint32(value)))
            }

            /// @ast-id 37143
            /// @src 77:120:236  "function upper(uint256 price, uint256 bps) internal pure returns (uint256) {..."
            function fun_upper_37143(var_price_37129, var_bps_37131) -> var__37134 {
                /// @src 77:186:193  "uint256"
                let zero_t_uint256_636 := zero_value_for_split_t_uint256()
                var__37134 := zero_t_uint256_636

                /// @src 77:212:217  "price"
                let _637 := var_price_37129
                let expr_37136 := _637
                /// @src 77:220:223  "bps"
                let _638 := var_bps_37131
                let expr_37137 := _638
                /// @src 77:212:223  "price * bps"
                let expr_37138 := checked_mul_t_uint256(expr_37136, expr_37137)

                /// @src 77:226:229  "ONE"
                let expr_37139 := constant_ONE_37127()
                /// @src 77:212:229  "price * bps / ONE"
                let expr_37140 := checked_div_t_uint256(expr_37138, convert_t_uint32_to_t_uint256(expr_37139))

                /// @src 77:205:229  "return price * bps / ONE"
                var__37134 := expr_37140
                leave

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @ast-id 37159
            /// @src 77:242:358  "function lower(uint256 price, uint256 bps) internal pure returns (uint256) {..."
            function fun_lower_37159(var_price_37145, var_bps_37147) -> var__37150 {
                /// @src 77:308:315  "uint256"
                let zero_t_uint256_640 := zero_value_for_split_t_uint256()
                var__37150 := zero_t_uint256_640

                /// @src 77:334:339  "price"
                let _641 := var_price_37145
                let expr_37152 := _641
                /// @src 77:342:345  "ONE"
                let expr_37153 := constant_ONE_37127()
                /// @src 77:334:345  "price * ONE"
                let expr_37154 := checked_mul_t_uint256(expr_37152, convert_t_uint32_to_t_uint256(expr_37153))

                /// @src 77:348:351  "bps"
                let _642 := var_bps_37147
                let expr_37155 := _642
                /// @src 77:334:351  "price * ONE / bps"
                let expr_37156 := checked_div_t_uint256(expr_37154, expr_37155)

                /// @src 77:327:351  "return price * ONE / bps"
                var__37150 := expr_37156
                leave

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let zero_t_uint256_643 := zero_value_for_split_t_uint256()
                var_feeGrowthInside0X128_16807 := zero_t_uint256_643
                /// @src 69:3619:3647  "uint256 feeGrowthInside1X128"
                let zero_t_uint256_644 := zero_value_for_split_t_uint256()
                var_feeGrowthInside1X128_16809 := zero_t_uint256_644

                /// @src 69:3707:3725  "uniswapPoolAddress"
                let _645 := var_uniswapPoolAddress_16800
                let expr_16814 := _645
                /// @src 69:3692:3726  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16815_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16814)
                /// @src 69:3692:3732  "IUniswapV3Pool(uniswapPoolAddress).slot0"
                let expr_16816_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16815_address)
                let expr_16816_functionSelector := 0x3850c7bd
                /// @src 69:3692:3734  "IUniswapV3Pool(uniswapPoolAddress).slot0()"

                // storage for arguments and returned data
                let _646 := allocate_unbounded()
                mstore(_646, shift_left_224(expr_16816_functionSelector))
                let _647 := abi_encode_tuple__to__fromStack(add(_646, 4) )

                let _648 := staticcall(gas(), expr_16816_address,  _646, sub(_647, _646), _646, 224)

                if iszero(_648) { revert_forward_1() }

                let expr_16817_component_1, expr_16817_component_2, expr_16817_component_3, expr_16817_component_4, expr_16817_component_5, expr_16817_component_6, expr_16817_component_7
                if _648 {

                    let _649 := 224

                    if gt(_649, returndatasize()) {
                        _649 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_646, _649)

                    // decode return parameters from external try-call into retVars
                    expr_16817_component_1, expr_16817_component_2, expr_16817_component_3, expr_16817_component_4, expr_16817_component_5, expr_16817_component_6, expr_16817_component_7 :=  abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(_646, add(_646, _649))
                }
                /// @src 69:3663:3734  "(, int24 tickCurrent,,,,,) = IUniswapV3Pool(uniswapPoolAddress).slot0()"
                let var_tickCurrent_16812 := expr_16817_component_2
                /// @src 69:3791:3809  "uniswapPoolAddress"
                let _650 := var_uniswapPoolAddress_16800
                let expr_16822 := _650
                /// @src 69:3776:3810  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16823_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16822)
                /// @src 69:3776:3831  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal0X128"
                let expr_16824_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16823_address)
                let expr_16824_functionSelector := 0xf3058399
                /// @src 69:3776:3833  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal0X128()"

                // storage for arguments and returned data
                let _651 := allocate_unbounded()
                mstore(_651, shift_left_224(expr_16824_functionSelector))
                let _652 := abi_encode_tuple__to__fromStack(add(_651, 4) )

                let _653 := staticcall(gas(), expr_16824_address,  _651, sub(_652, _651), _651, 32)

                if iszero(_653) { revert_forward_1() }

                let expr_16825
                if _653 {

                    let _654 := 32

                    if gt(_654, returndatasize()) {
                        _654 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_651, _654)

                    // decode return parameters from external try-call into retVars
                    expr_16825 :=  abi_decode_tuple_t_uint256_fromMemory(_651, add(_651, _654))
                }
                /// @src 69:3745:3833  "uint256 feeGrowthGlobal0X128 = IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal0X128()"
                let var_feeGrowthGlobal0X128_16820 := expr_16825
                /// @src 69:3889:3907  "uniswapPoolAddress"
                let _655 := var_uniswapPoolAddress_16800
                let expr_16830 := _655
                /// @src 69:3874:3908  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16831_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16830)
                /// @src 69:3874:3929  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal1X128"
                let expr_16832_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16831_address)
                let expr_16832_functionSelector := 0x46141319
                /// @src 69:3874:3931  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal1X128()"

                // storage for arguments and returned data
                let _656 := allocate_unbounded()
                mstore(_656, shift_left_224(expr_16832_functionSelector))
                let _657 := abi_encode_tuple__to__fromStack(add(_656, 4) )

                let _658 := staticcall(gas(), expr_16832_address,  _656, sub(_657, _656), _656, 32)

                if iszero(_658) { revert_forward_1() }

                let expr_16833
                if _658 {

                    let _659 := 32

                    if gt(_659, returndatasize()) {
                        _659 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_656, _659)

                    // decode return parameters from external try-call into retVars
                    expr_16833 :=  abi_decode_tuple_t_uint256_fromMemory(_656, add(_656, _659))
                }
                /// @src 69:3843:3931  "uint256 feeGrowthGlobal1X128 = IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal1X128()"
                let var_feeGrowthGlobal1X128_16828 := expr_16833
                /// @src 69:3980:4007  "uint256 feeGrowthBelow0X128"
                let var_feeGrowthBelow0X128_16836
                let zero_t_uint256_660 := zero_value_for_split_t_uint256()
                var_feeGrowthBelow0X128_16836 := zero_t_uint256_660
                /// @src 69:4017:4044  "uint256 feeGrowthBelow1X128"
                let var_feeGrowthBelow1X128_16839
                let zero_t_uint256_661 := zero_value_for_split_t_uint256()
                var_feeGrowthBelow1X128_16839 := zero_t_uint256_661
                /// @src 69:4214:4232  "uniswapPoolAddress"
                let _662 := var_uniswapPoolAddress_16800
                let expr_16846 := _662
                /// @src 69:4199:4233  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16847_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16846)
                /// @src 69:4199:4239  "IUniswapV3Pool(uniswapPoolAddress).ticks"
                let expr_16848_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16847_address)
                let expr_16848_functionSelector := 0xf30dba93
                /// @src 69:4240:4249  "tickLower"
                let _663 := var_tickLower_16802
                let expr_16849 := _663
                /// @src 69:4199:4250  "IUniswapV3Pool(uniswapPoolAddress).ticks(tickLower)"

                // storage for arguments and returned data
                let _664 := allocate_unbounded()
                mstore(_664, shift_left_224(expr_16848_functionSelector))
                let _665 := abi_encode_tuple_t_int24__to_t_int24__fromStack(add(_664, 4) , expr_16849)

                let _666 := staticcall(gas(), expr_16848_address,  _664, sub(_665, _664), _664, 256)

                if iszero(_666) { revert_forward_1() }

                let expr_16850_component_1, expr_16850_component_2, expr_16850_component_3, expr_16850_component_4, expr_16850_component_5, expr_16850_component_6, expr_16850_component_7, expr_16850_component_8
                if _666 {

                    let _667 := 256

                    if gt(_667, returndatasize()) {
                        _667 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_664, _667)

                    // decode return parameters from external try-call into retVars
                    expr_16850_component_1, expr_16850_component_2, expr_16850_component_3, expr_16850_component_4, expr_16850_component_5, expr_16850_component_6, expr_16850_component_7, expr_16850_component_8 :=  abi_decode_tuple_t_uint128t_int128t_uint256t_uint256t_int56t_uint160t_uint32t_bool_fromMemory(_664, add(_664, _667))
                }
                /// @src 69:4097:4250  "(,, uint256 lowerFeeGrowthOutside0X128, uint256 lowerFeeGrowthOutside1X128,,,,) =..."
                let var_lowerFeeGrowthOutside0X128_16842 := expr_16850_component_3
                let var_lowerFeeGrowthOutside1X128_16844 := expr_16850_component_4
                /// @src 69:4273:4284  "tickCurrent"
                let _668 := var_tickCurrent_16812
                let expr_16852 := _668
                /// @src 69:4288:4297  "tickLower"
                let _669 := var_tickLower_16802
                let expr_16853 := _669
                /// @src 69:4273:4297  "tickCurrent >= tickLower"
                let expr_16854 := iszero(slt(cleanup_t_int24(expr_16852), cleanup_t_int24(expr_16853)))
                /// @src 69:4269:4669  "if (tickCurrent >= tickLower) {..."
                switch expr_16854
                case 0 {
                    /// @src 69:4508:4528  "feeGrowthGlobal0X128"
                    let _670 := var_feeGrowthGlobal0X128_16820
                    let expr_16865 := _670
                    /// @src 69:4531:4557  "lowerFeeGrowthOutside0X128"
                    let _671 := var_lowerFeeGrowthOutside0X128_16842
                    let expr_16866 := _671
                    /// @src 69:4508:4557  "feeGrowthGlobal0X128 - lowerFeeGrowthOutside0X128"
                    let expr_16867 := wrapping_sub_t_uint256(expr_16865, expr_16866)

                    /// @src 69:4486:4557  "feeGrowthBelow0X128 = feeGrowthGlobal0X128 - lowerFeeGrowthOutside0X128"
                    var_feeGrowthBelow0X128_16836 := expr_16867
                    let expr_16868 := expr_16867
                    /// @src 69:4601:4621  "feeGrowthGlobal1X128"
                    let _672 := var_feeGrowthGlobal1X128_16828
                    let expr_16871 := _672
                    /// @src 69:4624:4650  "lowerFeeGrowthOutside1X128"
                    let _673 := var_lowerFeeGrowthOutside1X128_16844
                    let expr_16872 := _673
                    /// @src 69:4601:4650  "feeGrowthGlobal1X128 - lowerFeeGrowthOutside1X128"
                    let expr_16873 := wrapping_sub_t_uint256(expr_16871, expr_16872)

                    /// @src 69:4579:4650  "feeGrowthBelow1X128 = feeGrowthGlobal1X128 - lowerFeeGrowthOutside1X128"
                    var_feeGrowthBelow1X128_16839 := expr_16873
                    let expr_16874 := expr_16873
                    /// @src 69:4269:4669  "if (tickCurrent >= tickLower) {..."
                }
                default {
                    /// @src 69:4343:4369  "lowerFeeGrowthOutside0X128"
                    let _674 := var_lowerFeeGrowthOutside0X128_16842
                    let expr_16856 := _674
                    /// @src 69:4321:4369  "feeGrowthBelow0X128 = lowerFeeGrowthOutside0X128"
                    var_feeGrowthBelow0X128_16836 := expr_16856
                    let expr_16857 := expr_16856
                    /// @src 69:4413:4439  "lowerFeeGrowthOutside1X128"
                    let _675 := var_lowerFeeGrowthOutside1X128_16844
                    let expr_16860 := _675
                    /// @src 69:4391:4439  "feeGrowthBelow1X128 = lowerFeeGrowthOutside1X128"
                    var_feeGrowthBelow1X128_16839 := expr_16860
                    let expr_16861 := expr_16860
                    /// @src 69:4269:4669  "if (tickCurrent >= tickLower) {..."
                }
                /// @src 69:4739:4766  "uint256 feeGrowthAbove0X128"
                let var_feeGrowthAbove0X128_16880
                let zero_t_uint256_676 := zero_value_for_split_t_uint256()
                var_feeGrowthAbove0X128_16880 := zero_t_uint256_676
                /// @src 69:4780:4807  "uint256 feeGrowthAbove1X128"
                let var_feeGrowthAbove1X128_16883
                let zero_t_uint256_677 := zero_value_for_split_t_uint256()
                var_feeGrowthAbove1X128_16883 := zero_t_uint256_677
                /// @src 69:4957:4975  "uniswapPoolAddress"
                let _678 := var_uniswapPoolAddress_16800
                let expr_16890 := _678
                /// @src 69:4942:4976  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16891_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16890)
                /// @src 69:4942:4982  "IUniswapV3Pool(uniswapPoolAddress).ticks"
                let expr_16892_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16891_address)
                let expr_16892_functionSelector := 0xf30dba93
                /// @src 69:4983:4992  "tickUpper"
                let _679 := var_tickUpper_16804
                let expr_16893 := _679
                /// @src 69:4942:4993  "IUniswapV3Pool(uniswapPoolAddress).ticks(tickUpper)"

                // storage for arguments and returned data
                let _680 := allocate_unbounded()
                mstore(_680, shift_left_224(expr_16892_functionSelector))
                let _681 := abi_encode_tuple_t_int24__to_t_int24__fromStack(add(_680, 4) , expr_16893)

                let _682 := staticcall(gas(), expr_16892_address,  _680, sub(_681, _680), _680, 256)

                if iszero(_682) { revert_forward_1() }

                let expr_16894_component_1, expr_16894_component_2, expr_16894_component_3, expr_16894_component_4, expr_16894_component_5, expr_16894_component_6, expr_16894_component_7, expr_16894_component_8
                if _682 {

                    let _683 := 256

                    if gt(_683, returndatasize()) {
                        _683 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_680, _683)

                    // decode return parameters from external try-call into retVars
                    expr_16894_component_1, expr_16894_component_2, expr_16894_component_3, expr_16894_component_4, expr_16894_component_5, expr_16894_component_6, expr_16894_component_7, expr_16894_component_8 :=  abi_decode_tuple_t_uint128t_int128t_uint256t_uint256t_int56t_uint160t_uint32t_bool_fromMemory(_680, add(_680, _683))
                }
                /// @src 69:4840:4993  "(,, uint256 upperFeeGrowthOutside0X128, uint256 upperFeeGrowthOutside1X128,,,,) =..."
                let var_upperFeeGrowthOutside0X128_16886 := expr_16894_component_3
                let var_upperFeeGrowthOutside1X128_16888 := expr_16894_component_4
                /// @src 69:5016:5027  "tickCurrent"
                let _684 := var_tickCurrent_16812
                let expr_16896 := _684
                /// @src 69:5030:5039  "tickUpper"
                let _685 := var_tickUpper_16804
                let expr_16897 := _685
                /// @src 69:5016:5039  "tickCurrent < tickUpper"
                let expr_16898 := slt(cleanup_t_int24(expr_16896), cleanup_t_int24(expr_16897))
                /// @src 69:5012:5411  "if (tickCurrent < tickUpper) {..."
                switch expr_16898
                case 0 {
                    /// @src 69:5250:5270  "feeGrowthGlobal0X128"
                    let _686 := var_feeGrowthGlobal0X128_16820
                    let expr_16909 := _686
                    /// @src 69:5273:5299  "upperFeeGrowthOutside0X128"
                    let _687 := var_upperFeeGrowthOutside0X128_16886
                    let expr_16910 := _687
                    /// @src 69:5250:5299  "feeGrowthGlobal0X128 - upperFeeGrowthOutside0X128"
                    let expr_16911 := wrapping_sub_t_uint256(expr_16909, expr_16910)

                    /// @src 69:5228:5299  "feeGrowthAbove0X128 = feeGrowthGlobal0X128 - upperFeeGrowthOutside0X128"
                    var_feeGrowthAbove0X128_16880 := expr_16911
                    let expr_16912 := expr_16911
                    /// @src 69:5343:5363  "feeGrowthGlobal1X128"
                    let _688 := var_feeGrowthGlobal1X128_16828
                    let expr_16915 := _688
                    /// @src 69:5366:5392  "upperFeeGrowthOutside1X128"
                    let _689 := var_upperFeeGrowthOutside1X128_16888
                    let expr_16916 := _689
                    /// @src 69:5343:5392  "feeGrowthGlobal1X128 - upperFeeGrowthOutside1X128"
                    let expr_16917 := wrapping_sub_t_uint256(expr_16915, expr_16916)

                    /// @src 69:5321:5392  "feeGrowthAbove1X128 = feeGrowthGlobal1X128 - upperFeeGrowthOutside1X128"
                    var_feeGrowthAbove1X128_16883 := expr_16917
                    let expr_16918 := expr_16917
                    /// @src 69:5012:5411  "if (tickCurrent < tickUpper) {..."
                }
                default {
                    /// @src 69:5085:5111  "upperFeeGrowthOutside0X128"
                    let _690 := var_upperFeeGrowthOutside0X128_16886
                    let expr_16900 := _690
                    /// @src 69:5063:5111  "feeGrowthAbove0X128 = upperFeeGrowthOutside0X128"
                    var_feeGrowthAbove0X128_16880 := expr_16900
                    let expr_16901 := expr_16900
                    /// @src 69:5155:5181  "upperFeeGrowthOutside1X128"
                    let _691 := var_upperFeeGrowthOutside1X128_16888
                    let expr_16904 := _691
                    /// @src 69:5133:5181  "feeGrowthAbove1X128 = upperFeeGrowthOutside1X128"
                    var_feeGrowthAbove1X128_16883 := expr_16904
                    let expr_16905 := expr_16904
                    /// @src 69:5012:5411  "if (tickCurrent < tickUpper) {..."
                }
                /// @src 69:5462:5482  "feeGrowthGlobal0X128"
                let _692 := var_feeGrowthGlobal0X128_16820
                let expr_16924 := _692
                /// @src 69:5485:5504  "feeGrowthBelow0X128"
                let _693 := var_feeGrowthBelow0X128_16836
                let expr_16925 := _693
                /// @src 69:5462:5504  "feeGrowthGlobal0X128 - feeGrowthBelow0X128"
                let expr_16926 := wrapping_sub_t_uint256(expr_16924, expr_16925)

                /// @src 69:5507:5526  "feeGrowthAbove0X128"
                let _694 := var_feeGrowthAbove0X128_16880
                let expr_16927 := _694
                /// @src 69:5462:5526  "feeGrowthGlobal0X128 - feeGrowthBelow0X128 - feeGrowthAbove0X128"
                let expr_16928 := wrapping_sub_t_uint256(expr_16926, expr_16927)

                /// @src 69:5439:5526  "feeGrowthInside0X128 = feeGrowthGlobal0X128 - feeGrowthBelow0X128 - feeGrowthAbove0X128"
                var_feeGrowthInside0X128_16807 := expr_16928
                let expr_16929 := expr_16928
                /// @src 69:5563:5583  "feeGrowthGlobal1X128"
                let _695 := var_feeGrowthGlobal1X128_16828
                let expr_16932 := _695
                /// @src 69:5586:5605  "feeGrowthBelow1X128"
                let _696 := var_feeGrowthBelow1X128_16839
                let expr_16933 := _696
                /// @src 69:5563:5605  "feeGrowthGlobal1X128 - feeGrowthBelow1X128"
                let expr_16934 := wrapping_sub_t_uint256(expr_16932, expr_16933)

                /// @src 69:5608:5627  "feeGrowthAbove1X128"
                let _697 := var_feeGrowthAbove1X128_16883
                let expr_16935 := _697
                /// @src 69:5563:5627  "feeGrowthGlobal1X128 - feeGrowthBelow1X128 - feeGrowthAbove1X128"
                let expr_16936 := wrapping_sub_t_uint256(expr_16934, expr_16935)

                /// @src 69:5540:5627  "feeGrowthInside1X128 = feeGrowthGlobal1X128 - feeGrowthBelow1X128 - feeGrowthAbove1X128"
                var_feeGrowthInside1X128_16809 := expr_16936
                let expr_16937 := expr_16936

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @src 57:87:123  "uint256 internal constant ONE = 1e18"
            function constant_ONE_30273() -> ret {
                /// @src 57:119:123  "1e18"
                let expr_30272 := 0x0de0b6b3a7640000
                let _705 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_30272)

                ret := _705
            }

            /// @ast-id 15131
            /// @src 61:21806:22194  "function getUtilizationRatio(SqrtPerpAssetStatus memory _assetStatus) internal pure returns (uint256) {..."
            function fun_getUtilizationRatio_15131(var__assetStatus_15097_mpos) -> var__15100 {
                /// @src 61:21899:21906  "uint256"
                let zero_t_uint256_698 := zero_value_for_split_t_uint256()
                var__15100 := zero_t_uint256_698

                /// @src 61:21922:21934  "_assetStatus"
                let _699_mpos := var__assetStatus_15097_mpos
                let expr_15102_mpos := _699_mpos
                /// @src 61:21922:21946  "_assetStatus.totalAmount"
                let _700 := add(expr_15102_mpos, 128)
                let _701 := read_from_memoryt_uint256(_700)
                let expr_15103 := _701
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
                let _702_mpos := var__assetStatus_15097_mpos
                let expr_15112_mpos := _702_mpos
                /// @src 61:22018:22045  "_assetStatus.borrowedAmount"
                let _703 := add(expr_15112_mpos, 160)
                let _704 := read_from_memoryt_uint256(_703)
                let expr_15113 := _704
                /// @src 61:22048:22057  "Constants"
                let expr_15114_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 61:22048:22061  "Constants.ONE"
                let expr_15115 := constant_ONE_30273()
                /// @src 61:22018:22061  "_assetStatus.borrowedAmount * Constants.ONE"
                let expr_15116 := checked_mul_t_uint256(expr_15113, expr_15115)

                /// @src 61:22064:22076  "_assetStatus"
                let _706_mpos := var__assetStatus_15097_mpos
                let expr_15117_mpos := _706_mpos
                /// @src 61:22064:22088  "_assetStatus.totalAmount"
                let _707 := add(expr_15117_mpos, 128)
                let _708 := read_from_memoryt_uint256(_707)
                let expr_15118 := _708
                /// @src 61:22018:22088  "_assetStatus.borrowedAmount * Constants.ONE / _assetStatus.totalAmount"
                let expr_15119 := checked_div_t_uint256(expr_15116, expr_15118)

                /// @src 61:21996:22088  "uint256 utilization = _assetStatus.borrowedAmount * Constants.ONE / _assetStatus.totalAmount"
                let var_utilization_15111 := expr_15119
                /// @src 61:22103:22114  "utilization"
                let _709 := var_utilization_15111
                let expr_15121 := _709
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
                let _710 := var_utilization_15111
                let expr_15128 := _710
                /// @src 61:22169:22187  "return utilization"
                var__15100 := expr_15128
                leave

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let _713 := convert_t_rational_100000000000000000_by_1_to_t_uint256(expr_30316)

                ret := _713
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
                let zero_t_uint256_711 := zero_value_for_split_t_uint256()
                var__30327 := zero_t_uint256_711

                /// @src 64:437:448  "utilization"
                let _712 := var_utilization_30324
                let expr_30329 := _712
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
                let _714 := var_utilization_30324
                let expr_30339 := _714
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
                let _715 := var_b_30338
                let expr_30346 := _715
                /// @src 64:592:600  "1600 * b"
                let expr_30347 := checked_mul_t_uint256(convert_t_rational_1600_by_1_to_t_uint256(expr_30345), expr_30346)

                /// @src 64:603:604  "b"
                let _716 := var_b_30338
                let expr_30348 := _716
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let zero_t_uint256_717 := zero_value_for_split_t_uint256()
                var_result_32393 := zero_t_uint256_717

                /// @src 26:1226:1239  "uint256 prod0"
                let var_prod0_32396
                let zero_t_uint256_718 := zero_value_for_split_t_uint256()
                var_prod0_32396 := zero_t_uint256_718
                /// @src 26:1298:1311  "uint256 prod1"
                let var_prod1_32399
                let zero_t_uint256_719 := zero_value_for_split_t_uint256()
                var_prod1_32399 := zero_t_uint256_719
                /// @src 26:1369:1535  "assembly {..."
                {
                    let usr$mm := mulmod(var_a_32386, var_b_32388, not(0))
                    var_prod0_32396 := mul(var_a_32386, var_b_32388)
                    var_prod1_32399 := sub(sub(usr$mm, var_prod0_32396), lt(usr$mm, var_prod0_32396))
                }
                /// @src 26:1615:1620  "prod1"
                let _720 := var_prod1_32399
                let expr_32402 := _720
                /// @src 26:1624:1625  "0"
                let expr_32403 := 0x00
                /// @src 26:1615:1625  "prod1 == 0"
                let expr_32404 := eq(cleanup_t_uint256(expr_32402), convert_t_rational_0_by_1_to_t_uint256(expr_32403))
                /// @src 26:1611:1814  "if (prod1 == 0) {..."
                if expr_32404 {
                    /// @src 26:1653:1664  "denominator"
                    let _721 := var_denominator_32390
                    let expr_32406 := _721
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
                    let _722 := var_result_32393
                    let expr_32412 := _722
                    /// @src 26:1786:1799  "return result"
                    var_result_32393 := expr_32412
                    leave
                    /// @src 26:1611:1814  "if (prod1 == 0) {..."
                }
                /// @src 26:1939:1950  "denominator"
                let _723 := var_denominator_32390
                let expr_32417 := _723
                /// @src 26:1953:1958  "prod1"
                let _724 := var_prod1_32399
                let expr_32418 := _724
                /// @src 26:1939:1958  "denominator > prod1"
                let expr_32419 := gt(cleanup_t_uint256(expr_32417), cleanup_t_uint256(expr_32418))
                /// @src 26:1931:1959  "require(denominator > prod1)"
                require_helper(expr_32419)
                /// @src 26:2260:2277  "uint256 remainder"
                let var_remainder_32423
                let zero_t_uint256_725 := zero_value_for_split_t_uint256()
                var_remainder_32423 := zero_t_uint256_725
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
                let _726 := var_denominator_32390
                let expr_32430 := _726
                /// @src 26:2752:2767  "0 - denominator"
                let expr_32431 := wrapping_sub_t_uint256(convert_t_rational_0_by_1_to_t_uint256(expr_32429), expr_32430)

                /// @src 26:2751:2768  "(0 - denominator)"
                let expr_32432 := expr_32431
                /// @src 26:2771:2782  "denominator"
                let _727 := var_denominator_32390
                let expr_32433 := _727
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
                let _728 := var_prod1_32399
                let expr_32440 := _728
                /// @src 26:3367:3371  "twos"
                let _729 := var_twos_32428
                let expr_32441 := _729
                /// @src 26:3359:3371  "prod1 * twos"
                let expr_32442 := wrapping_mul_t_uint256(expr_32440, expr_32441)

                /// @src 26:3350:3371  "prod0 |= prod1 * twos"
                let _730 := var_prod0_32396
                let expr_32443 := or(_730, expr_32442)

                var_prod0_32396 := expr_32443
                /// @src 26:3744:3745  "3"
                let expr_32447 := 0x03
                /// @src 26:3748:3759  "denominator"
                let _731 := var_denominator_32390
                let expr_32448 := _731
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
                let _732 := var_denominator_32390
                let expr_32456 := _732
                /// @src 26:4020:4023  "inv"
                let _733 := var_inv_32446
                let expr_32457 := _733
                /// @src 26:4006:4023  "denominator * inv"
                let expr_32458 := wrapping_mul_t_uint256(expr_32456, expr_32457)

                /// @src 26:4002:4023  "2 - denominator * inv"
                let expr_32459 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32455), expr_32458)

                /// @src 26:3995:4023  "inv *= 2 - denominator * inv"
                let _734 := var_inv_32446
                let expr_32460 := wrapping_mul_t_uint256(_734, expr_32459)

                var_inv_32446 := expr_32460
                /// @src 26:4064:4065  "2"
                let expr_32463 := 0x02
                /// @src 26:4068:4079  "denominator"
                let _735 := var_denominator_32390
                let expr_32464 := _735
                /// @src 26:4082:4085  "inv"
                let _736 := var_inv_32446
                let expr_32465 := _736
                /// @src 26:4068:4085  "denominator * inv"
                let expr_32466 := wrapping_mul_t_uint256(expr_32464, expr_32465)

                /// @src 26:4064:4085  "2 - denominator * inv"
                let expr_32467 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32463), expr_32466)

                /// @src 26:4057:4085  "inv *= 2 - denominator * inv"
                let _737 := var_inv_32446
                let expr_32468 := wrapping_mul_t_uint256(_737, expr_32467)

                var_inv_32446 := expr_32468
                /// @src 26:4127:4128  "2"
                let expr_32471 := 0x02
                /// @src 26:4131:4142  "denominator"
                let _738 := var_denominator_32390
                let expr_32472 := _738
                /// @src 26:4145:4148  "inv"
                let _739 := var_inv_32446
                let expr_32473 := _739
                /// @src 26:4131:4148  "denominator * inv"
                let expr_32474 := wrapping_mul_t_uint256(expr_32472, expr_32473)

                /// @src 26:4127:4148  "2 - denominator * inv"
                let expr_32475 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32471), expr_32474)

                /// @src 26:4120:4148  "inv *= 2 - denominator * inv"
                let _740 := var_inv_32446
                let expr_32476 := wrapping_mul_t_uint256(_740, expr_32475)

                var_inv_32446 := expr_32476
                /// @src 26:4190:4191  "2"
                let expr_32479 := 0x02
                /// @src 26:4194:4205  "denominator"
                let _741 := var_denominator_32390
                let expr_32480 := _741
                /// @src 26:4208:4211  "inv"
                let _742 := var_inv_32446
                let expr_32481 := _742
                /// @src 26:4194:4211  "denominator * inv"
                let expr_32482 := wrapping_mul_t_uint256(expr_32480, expr_32481)

                /// @src 26:4190:4211  "2 - denominator * inv"
                let expr_32483 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32479), expr_32482)

                /// @src 26:4183:4211  "inv *= 2 - denominator * inv"
                let _743 := var_inv_32446
                let expr_32484 := wrapping_mul_t_uint256(_743, expr_32483)

                var_inv_32446 := expr_32484
                /// @src 26:4253:4254  "2"
                let expr_32487 := 0x02
                /// @src 26:4257:4268  "denominator"
                let _744 := var_denominator_32390
                let expr_32488 := _744
                /// @src 26:4271:4274  "inv"
                let _745 := var_inv_32446
                let expr_32489 := _745
                /// @src 26:4257:4274  "denominator * inv"
                let expr_32490 := wrapping_mul_t_uint256(expr_32488, expr_32489)

                /// @src 26:4253:4274  "2 - denominator * inv"
                let expr_32491 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32487), expr_32490)

                /// @src 26:4246:4274  "inv *= 2 - denominator * inv"
                let _746 := var_inv_32446
                let expr_32492 := wrapping_mul_t_uint256(_746, expr_32491)

                var_inv_32446 := expr_32492
                /// @src 26:4317:4318  "2"
                let expr_32495 := 0x02
                /// @src 26:4321:4332  "denominator"
                let _747 := var_denominator_32390
                let expr_32496 := _747
                /// @src 26:4335:4338  "inv"
                let _748 := var_inv_32446
                let expr_32497 := _748
                /// @src 26:4321:4338  "denominator * inv"
                let expr_32498 := wrapping_mul_t_uint256(expr_32496, expr_32497)

                /// @src 26:4317:4338  "2 - denominator * inv"
                let expr_32499 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32495), expr_32498)

                /// @src 26:4310:4338  "inv *= 2 - denominator * inv"
                let _749 := var_inv_32446
                let expr_32500 := wrapping_mul_t_uint256(_749, expr_32499)

                var_inv_32446 := expr_32500
                /// @src 26:4813:4818  "prod0"
                let _750 := var_prod0_32396
                let expr_32503 := _750
                /// @src 26:4821:4824  "inv"
                let _751 := var_inv_32446
                let expr_32504 := _751
                /// @src 26:4813:4824  "prod0 * inv"
                let expr_32505 := wrapping_mul_t_uint256(expr_32503, expr_32504)

                /// @src 26:4804:4824  "result = prod0 * inv"
                var_result_32393 := expr_32505
                let expr_32506 := expr_32505
                /// @src 26:4845:4851  "result"
                let _752 := var_result_32393
                let expr_32508 := _752
                /// @src 26:4838:4851  "return result"
                var_result_32393 := expr_32508
                leave

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @ast-id 31668
            /// @src 66:7920:8410  "function getUtilizationRatio(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getUtilizationRatio_31668(var_tokenState_31626_mpos) -> var__31629 {
                /// @src 66:8003:8010  "uint256"
                let zero_t_uint256_753 := zero_value_for_split_t_uint256()
                var__31629 := zero_t_uint256_753

                /// @src 66:8026:8036  "tokenState"
                let _754_mpos := var_tokenState_31626_mpos
                let expr_31631_mpos := _754_mpos
                /// @src 66:8026:8059  "tokenState.totalCompoundDeposited"
                let _755 := add(expr_31631_mpos, 0)
                let _756 := read_from_memoryt_uint256(_755)
                let expr_31632 := _756
                /// @src 66:8063:8064  "0"
                let expr_31633 := 0x00
                /// @src 66:8026:8064  "tokenState.totalCompoundDeposited == 0"
                let expr_31634 := eq(cleanup_t_uint256(expr_31632), convert_t_rational_0_by_1_to_t_uint256(expr_31633))
                /// @src 66:8026:8104  "tokenState.totalCompoundDeposited == 0 && tokenState.totalNormalDeposited == 0"
                let expr_31639 := expr_31634
                if expr_31639 {
                    /// @src 66:8068:8078  "tokenState"
                    let _757_mpos := var_tokenState_31626_mpos
                    let expr_31635_mpos := _757_mpos
                    /// @src 66:8068:8099  "tokenState.totalNormalDeposited"
                    let _758 := add(expr_31635_mpos, 32)
                    let _759 := read_from_memoryt_uint256(_758)
                    let expr_31636 := _759
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
                let _760_mpos := var_tokenState_31626_mpos
                let expr_31649_mpos := _760_mpos
                /// @src 66:8213:8242  "getTotalDebtValue(tokenState)"
                let expr_31650 := fun_getTotalDebtValue_31606(expr_31649_mpos)
                /// @src 66:8244:8253  "Constants"
                let expr_31651_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:8244:8257  "Constants.ONE"
                let expr_31652 := constant_ONE_30273()
                /// @src 66:8283:8293  "tokenState"
                let _761_mpos := var_tokenState_31626_mpos
                let expr_31654_mpos := _761_mpos
                /// @src 66:8259:8294  "getTotalCollateralValue(tokenState)"
                let expr_31655 := fun_getTotalCollateralValue_31594(expr_31654_mpos)
                /// @src 66:8171:8304  "FixedPointMathLib.mulDivDown(..."
                let expr_31656 := fun_mulDivDown_36976(expr_31650, expr_31652, expr_31655)
                /// @src 66:8149:8304  "uint256 utilization = FixedPointMathLib.mulDivDown(..."
                let var_utilization_31645 := expr_31656
                /// @src 66:8319:8330  "utilization"
                let _762 := var_utilization_31645
                let expr_31658 := _762
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
                let _763 := var_utilization_31645
                let expr_31665 := _763
                /// @src 66:8385:8403  "return utilization"
                var__31629 := expr_31665
                leave

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @src 59:225:261  "uint256 private constant _ONE = 1e18"
            function constant__ONE_13450() -> ret {
                /// @src 59:257:261  "1e18"
                let expr_13449 := 0x0de0b6b3a7640000
                let _778 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_13449)

                ret := _778
            }

            /// @ast-id 13510
            /// @src 59:268:780  "function calculateInterestRate(IRMParams memory irmParams, uint256 utilizationRatio)..."
            function fun_calculateInterestRate_13510(var_irmParams_13453_mpos, var_utilizationRatio_13455) -> var__13458 {
                /// @src 59:400:407  "uint256"
                let zero_t_uint256_764 := zero_value_for_split_t_uint256()
                var__13458 := zero_t_uint256_764

                /// @src 59:436:445  "irmParams"
                let _765_mpos := var_irmParams_13453_mpos
                let expr_13462_mpos := _765_mpos
                /// @src 59:436:454  "irmParams.baseRate"
                let _766 := add(expr_13462_mpos, 0)
                let _767 := read_from_memoryt_uint256(_766)
                let expr_13463 := _767
                /// @src 59:423:454  "uint256 ir = irmParams.baseRate"
                let var_ir_13461 := expr_13463
                /// @src 59:469:485  "utilizationRatio"
                let _768 := var_utilizationRatio_13455
                let expr_13465 := _768
                /// @src 59:489:498  "irmParams"
                let _769_mpos := var_irmParams_13453_mpos
                let expr_13466_mpos := _769_mpos
                /// @src 59:489:507  "irmParams.kinkRate"
                let _770 := add(expr_13466_mpos, 32)
                let _771 := read_from_memoryt_uint256(_770)
                let expr_13467 := _771
                /// @src 59:469:507  "utilizationRatio <= irmParams.kinkRate"
                let expr_13468 := iszero(gt(cleanup_t_uint256(expr_13465), cleanup_t_uint256(expr_13467)))
                /// @src 59:465:754  "if (utilizationRatio <= irmParams.kinkRate) {..."
                switch expr_13468
                case 0 {
                    /// @src 59:611:620  "irmParams"
                    let _772_mpos := var_irmParams_13453_mpos
                    let expr_13481_mpos := _772_mpos
                    /// @src 59:611:629  "irmParams.kinkRate"
                    let _773 := add(expr_13481_mpos, 32)
                    let _774 := read_from_memoryt_uint256(_773)
                    let expr_13482 := _774
                    /// @src 59:632:641  "irmParams"
                    let _775_mpos := var_irmParams_13453_mpos
                    let expr_13483_mpos := _775_mpos
                    /// @src 59:632:648  "irmParams.slope1"
                    let _776 := add(expr_13483_mpos, 64)
                    let _777 := read_from_memoryt_uint256(_776)
                    let expr_13484 := _777
                    /// @src 59:611:648  "irmParams.kinkRate * irmParams.slope1"
                    let expr_13485 := checked_mul_t_uint256(expr_13482, expr_13484)

                    /// @src 59:610:649  "(irmParams.kinkRate * irmParams.slope1)"
                    let expr_13486 := expr_13485
                    /// @src 59:652:656  "_ONE"
                    let expr_13487 := constant__ONE_13450()
                    /// @src 59:610:656  "(irmParams.kinkRate * irmParams.slope1) / _ONE"
                    let expr_13488 := checked_div_t_uint256(expr_13486, expr_13487)

                    /// @src 59:604:656  "ir += (irmParams.kinkRate * irmParams.slope1) / _ONE"
                    let _779 := var_ir_13461
                    let expr_13489 := checked_add_t_uint256(_779, expr_13488)

                    var_ir_13461 := expr_13489
                    /// @src 59:677:686  "irmParams"
                    let _780_mpos := var_irmParams_13453_mpos
                    let expr_13492_mpos := _780_mpos
                    /// @src 59:677:693  "irmParams.slope2"
                    let _781 := add(expr_13492_mpos, 96)
                    let _782 := read_from_memoryt_uint256(_781)
                    let expr_13493 := _782
                    /// @src 59:697:713  "utilizationRatio"
                    let _783 := var_utilizationRatio_13455
                    let expr_13494 := _783
                    /// @src 59:716:725  "irmParams"
                    let _784_mpos := var_irmParams_13453_mpos
                    let expr_13495_mpos := _784_mpos
                    /// @src 59:716:734  "irmParams.kinkRate"
                    let _785 := add(expr_13495_mpos, 32)
                    let _786 := read_from_memoryt_uint256(_785)
                    let expr_13496 := _786
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
                    let _787 := var_ir_13461
                    let expr_13503 := checked_add_t_uint256(_787, expr_13502)

                    var_ir_13461 := expr_13503
                    /// @src 59:465:754  "if (utilizationRatio <= irmParams.kinkRate) {..."
                }
                default {
                    /// @src 59:530:546  "utilizationRatio"
                    let _788 := var_utilizationRatio_13455
                    let expr_13470 := _788
                    /// @src 59:549:558  "irmParams"
                    let _789_mpos := var_irmParams_13453_mpos
                    let expr_13471_mpos := _789_mpos
                    /// @src 59:549:565  "irmParams.slope1"
                    let _790 := add(expr_13471_mpos, 64)
                    let _791 := read_from_memoryt_uint256(_790)
                    let expr_13472 := _791
                    /// @src 59:530:565  "utilizationRatio * irmParams.slope1"
                    let expr_13473 := checked_mul_t_uint256(expr_13470, expr_13472)

                    /// @src 59:529:566  "(utilizationRatio * irmParams.slope1)"
                    let expr_13474 := expr_13473
                    /// @src 59:569:573  "_ONE"
                    let expr_13475 := constant__ONE_13450()
                    /// @src 59:529:573  "(utilizationRatio * irmParams.slope1) / _ONE"
                    let expr_13476 := checked_div_t_uint256(expr_13474, expr_13475)

                    /// @src 59:523:573  "ir += (utilizationRatio * irmParams.slope1) / _ONE"
                    let _792 := var_ir_13461
                    let expr_13477 := checked_add_t_uint256(_792, expr_13476)

                    var_ir_13461 := expr_13477
                    /// @src 59:465:754  "if (utilizationRatio <= irmParams.kinkRate) {..."
                }
                /// @src 59:771:773  "ir"
                let _793 := var_ir_13461
                let expr_13507 := _793
                /// @src 59:764:773  "return ir"
                var__13458 := expr_13507
                leave

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let zero_t_uint256_794 := zero_value_for_split_t_uint256()
                var__31489 := zero_t_uint256_794

                /// @src 66:6305:6315  "tokenState"
                let _795_slot := var_tokenState_31482_slot
                let expr_31491_slot := _795_slot
                /// @src 66:6305:6338  "tokenState.totalCompoundDeposited"
                let _796 := add(expr_31491_slot, 0)
                let _797 := read_from_storage_split_offset_0_t_uint256(_796)
                let expr_31492 := _797
                /// @src 66:6342:6343  "0"
                let expr_31493 := 0x00
                /// @src 66:6305:6343  "tokenState.totalCompoundDeposited == 0"
                let expr_31494 := eq(cleanup_t_uint256(expr_31492), convert_t_rational_0_by_1_to_t_uint256(expr_31493))
                /// @src 66:6305:6383  "tokenState.totalCompoundDeposited == 0 && tokenState.totalNormalDeposited == 0"
                let expr_31499 := expr_31494
                if expr_31499 {
                    /// @src 66:6347:6357  "tokenState"
                    let _798_slot := var_tokenState_31482_slot
                    let expr_31495_slot := _798_slot
                    /// @src 66:6347:6378  "tokenState.totalNormalDeposited"
                    let _799 := add(expr_31495_slot, 1)
                    let _800 := read_from_storage_split_offset_0_t_uint256(_799)
                    let expr_31496 := _800
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
                let _801 := var__interestRate_31484
                let expr_31510 := _801
                /// @src 66:6554:6564  "tokenState"
                let _802_slot := var_tokenState_31482_slot
                let expr_31512_slot := _802_slot
                /// @src 66:6536:6565  "getTotalDebtValue(tokenState)"
                let _803_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31512_slot)
                let expr_31513 := fun_getTotalDebtValue_31606(_803_mpos)
                /// @src 66:6567:6576  "Constants"
                let expr_31514_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:6567:6580  "Constants.ONE"
                let expr_31515 := constant_ONE_30273()
                /// @src 66:6492:6581  "FixedPointMathLib.mulDivDown(_interestRate, getTotalDebtValue(tokenState), Constants.ONE)"
                let expr_31516 := fun_mulDivDown_36976(expr_31510, expr_31513, expr_31515)
                /// @src 66:6595:6609  "_reserveFactor"
                let _804 := var__reserveFactor_31486
                let expr_31517 := _804
                /// @src 66:6623:6626  "100"
                let expr_31518 := 0x64
                /// @src 66:6450:6636  "FixedPointMathLib.mulDivDown(..."
                let _805 := convert_t_uint8_to_t_uint256(expr_31517)
                let _806 := convert_t_rational_100_by_1_to_t_uint256(expr_31518)
                let expr_31519 := fun_mulDivDown_36976(expr_31516, _805, _806)
                /// @src 66:6428:6636  "uint256 protocolFee = FixedPointMathLib.mulDivDown(..."
                let var_protocolFee_31505 := expr_31519
                /// @src 66:6760:6777  "FixedPointMathLib"
                let expr_31523_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:6802:6819  "FixedPointMathLib"
                let expr_31525_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:6848:6861  "_interestRate"
                let _807 := var__interestRate_31484
                let expr_31527 := _807
                /// @src 66:6881:6891  "tokenState"
                let _808_slot := var_tokenState_31482_slot
                let expr_31529_slot := _808_slot
                /// @src 66:6863:6892  "getTotalDebtValue(tokenState)"
                let _809_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31529_slot)
                let expr_31530 := fun_getTotalDebtValue_31606(_809_mpos)
                /// @src 66:6918:6928  "tokenState"
                let _810_slot := var_tokenState_31482_slot
                let expr_31532_slot := _810_slot
                /// @src 66:6894:6929  "getTotalCollateralValue(tokenState)"
                let _811_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31532_slot)
                let expr_31533 := fun_getTotalCollateralValue_31594(_811_mpos)
                /// @src 66:6802:6943  "FixedPointMathLib.mulDivDown(..."
                let expr_31534 := fun_mulDivDown_36976(expr_31527, expr_31530, expr_31533)
                /// @src 66:6957:6960  "100"
                let expr_31535 := 0x64
                /// @src 66:6963:6977  "_reserveFactor"
                let _812 := var__reserveFactor_31486
                let expr_31536 := _812
                /// @src 66:6957:6977  "100 - _reserveFactor"
                let expr_31537 := checked_sub_t_uint8(convert_t_rational_100_by_1_to_t_uint8(expr_31535), expr_31536)

                /// @src 66:6991:6994  "100"
                let expr_31538 := 0x64
                /// @src 66:6760:7004  "FixedPointMathLib.mulDivDown(..."
                let _813 := convert_t_uint8_to_t_uint256(expr_31537)
                let _814 := convert_t_rational_100_by_1_to_t_uint256(expr_31538)
                let expr_31539 := fun_mulDivDown_36976(expr_31534, _813, _814)
                /// @src 66:6731:7004  "uint256 supplyInterestRate = FixedPointMathLib.mulDivDown(..."
                let var_supplyInterestRate_31522 := expr_31539
                /// @src 66:7040:7053  "_interestRate"
                let _815 := var__interestRate_31484
                let expr_31544 := _815
                /// @src 66:7015:7025  "tokenState"
                let _816_slot := var_tokenState_31482_slot
                let expr_31541_slot := _816_slot
                /// @src 66:7015:7036  "tokenState.debtGrowth"
                let _817 := add(expr_31541_slot, 5)
                /// @src 66:7015:7053  "tokenState.debtGrowth += _interestRate"
                let _818 := read_from_storage_split_offset_0_t_uint256(_817)
                let expr_31545 := checked_add_t_uint256(_818, expr_31544)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_817, expr_31545)
                /// @src 66:7100:7117  "FixedPointMathLib"
                let expr_31550_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:7129:7139  "tokenState"
                let _819_slot := var_tokenState_31482_slot
                let expr_31552_slot := _819_slot
                /// @src 66:7129:7151  "tokenState.assetScaler"
                let _820 := add(expr_31552_slot, 3)
                let _821 := read_from_storage_split_offset_0_t_uint256(_820)
                let expr_31553 := _821
                /// @src 66:7153:7162  "Constants"
                let expr_31554_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:7153:7166  "Constants.ONE"
                let expr_31555 := constant_ONE_30273()
                /// @src 66:7169:7187  "supplyInterestRate"
                let _822 := var_supplyInterestRate_31522
                let expr_31556 := _822
                /// @src 66:7153:7187  "Constants.ONE + supplyInterestRate"
                let expr_31557 := checked_add_t_uint256(expr_31555, expr_31556)

                /// @src 66:7189:7198  "Constants"
                let expr_31558_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:7189:7202  "Constants.ONE"
                let expr_31559 := constant_ONE_30273()
                /// @src 66:7100:7203  "FixedPointMathLib.mulDivDown(tokenState.assetScaler, Constants.ONE + supplyInterestRate, Constants.ONE)"
                let expr_31560 := fun_mulDivDown_36976(expr_31553, expr_31557, expr_31559)
                /// @src 66:7063:7073  "tokenState"
                let _823_slot := var_tokenState_31482_slot
                let expr_31547_slot := _823_slot
                /// @src 66:7063:7085  "tokenState.assetScaler"
                let _824 := add(expr_31547_slot, 3)
                /// @src 66:7063:7203  "tokenState.assetScaler =..."
                update_storage_value_offset_0_t_uint256_to_t_uint256(_824, expr_31560)
                let expr_31561 := expr_31560
                /// @src 66:7239:7257  "supplyInterestRate"
                let _825 := var_supplyInterestRate_31522
                let expr_31566 := _825
                /// @src 66:7213:7223  "tokenState"
                let _826_slot := var_tokenState_31482_slot
                let expr_31563_slot := _826_slot
                /// @src 66:7213:7235  "tokenState.assetGrowth"
                let _827 := add(expr_31563_slot, 4)
                /// @src 66:7213:7257  "tokenState.assetGrowth += supplyInterestRate"
                let _828 := read_from_storage_split_offset_0_t_uint256(_827)
                let expr_31567 := checked_add_t_uint256(_828, expr_31566)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_827, expr_31567)
                /// @src 66:7275:7286  "protocolFee"
                let _829 := var_protocolFee_31505
                let expr_31569 := _829
                /// @src 66:7268:7286  "return protocolFee"
                var__31489 := expr_31569
                leave

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @ast-id 31366
            /// @src 66:4363:4784  "function computeUserFee(ScaledAsset.AssetStatus memory _assetStatus, ScaledAsset.UserStatus memory _userStatus)..."
            function fun_computeUserFee_31366(var__assetStatus_31329_mpos, var__userStatus_31332_mpos) -> var_interestFee_31335 {
                /// @src 66:4522:4540  "int256 interestFee"
                let zero_t_int256_830 := zero_value_for_split_t_int256()
                var_interestFee_31335 := zero_t_int256_830

                /// @src 66:4560:4571  "_userStatus"
                let _831_mpos := var__userStatus_31332_mpos
                let expr_31337_mpos := _831_mpos
                /// @src 66:4560:4586  "_userStatus.positionAmount"
                let _832 := add(expr_31337_mpos, 0)
                let _833 := read_from_memoryt_int256(_832)
                let expr_31338 := _833
                /// @src 66:4589:4590  "0"
                let expr_31339 := 0x00
                /// @src 66:4560:4590  "_userStatus.positionAmount > 0"
                let expr_31340 := sgt(cleanup_t_int256(expr_31338), convert_t_rational_0_by_1_to_t_int256(expr_31339))
                /// @src 66:4556:4778  "if (_userStatus.positionAmount > 0) {..."
                switch expr_31340
                case 0 {
                    /// @src 66:4729:4741  "_assetStatus"
                    let _834_mpos := var__assetStatus_31329_mpos
                    let expr_31354_mpos := _834_mpos
                    /// @src 66:4743:4754  "_userStatus"
                    let _835_mpos := var__userStatus_31332_mpos
                    let expr_31355_mpos := _835_mpos
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
                    let _836_mpos := var__assetStatus_31329_mpos
                    let expr_31343_mpos := _836_mpos
                    /// @src 66:4647:4658  "_userStatus"
                    let _837_mpos := var__userStatus_31332_mpos
                    let expr_31344_mpos := _837_mpos
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_RebalanceFeeGrowthCache_$6121_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @ast-id 33730
            /// @src 62:4681:5817  "function computeRebalanceInterest(..."
            function fun_computeRebalanceInterest_33730(var_pairId_33648, var_assetStatus_33651_mpos, var_rebalanceFeeGrowthCache_33656_slot, var_userStatus_33659_mpos) -> var_rebalanceInterestBase_33662, var_rebalanceInterestQuote_33664 {
                /// @src 62:4958:4986  "int256 rebalanceInterestBase"
                let zero_t_int256_838 := zero_value_for_split_t_int256()
                var_rebalanceInterestBase_33662 := zero_t_int256_838
                /// @src 62:4988:5017  "int256 rebalanceInterestQuote"
                let zero_t_int256_839 := zero_value_for_split_t_int256()
                var_rebalanceInterestQuote_33664 := zero_t_int256_839

                /// @src 62:5033:5043  "userStatus"
                let _840_mpos := var_userStatus_33659_mpos
                let expr_33666_mpos := _840_mpos
                /// @src 62:5033:5052  "userStatus.sqrtPerp"
                let _841 := add(expr_33666_mpos, 160)
                let _842_mpos := mload(_841)
                let expr_33667_mpos := _842_mpos
                /// @src 62:5033:5059  "userStatus.sqrtPerp.amount"
                let _843 := add(expr_33667_mpos, 0)
                let _844 := read_from_memoryt_int256(_843)
                let expr_33668 := _844
                /// @src 62:5063:5064  "0"
                let expr_33669 := 0x00
                /// @src 62:5033:5064  "userStatus.sqrtPerp.amount != 0"
                let expr_33670 := iszero(eq(cleanup_t_int256(expr_33668), convert_t_rational_0_by_1_to_t_int256(expr_33669)))
                /// @src 62:5033:5122  "userStatus.sqrtPerp.amount != 0 && userStatus.lastNumRebalance < assetStatus.numRebalance"
                let expr_33676 := expr_33670
                if expr_33676 {
                    /// @src 62:5068:5078  "userStatus"
                    let _845_mpos := var_userStatus_33659_mpos
                    let expr_33671_mpos := _845_mpos
                    /// @src 62:5068:5095  "userStatus.lastNumRebalance"
                    let _846 := add(expr_33671_mpos, 96)
                    let _847 := read_from_memoryt_uint64(_846)
                    let expr_33672 := _847
                    /// @src 62:5098:5109  "assetStatus"
                    let _848_mpos := var_assetStatus_33651_mpos
                    let expr_33673_mpos := _848_mpos
                    /// @src 62:5098:5122  "assetStatus.numRebalance"
                    let _849 := add(expr_33673_mpos, 96)
                    let _850 := read_from_memoryt_uint64(_849)
                    let expr_33674 := _850
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
                    let _851 := var_pairId_33648
                    let expr_33681 := _851
                    /// @src 62:5196:5206  "userStatus"
                    let _852_mpos := var_userStatus_33659_mpos
                    let expr_33682_mpos := _852_mpos
                    /// @src 62:5196:5223  "userStatus.lastNumRebalance"
                    let _853 := add(expr_33682_mpos, 96)
                    let _854 := read_from_memoryt_uint64(_853)
                    let expr_33683 := _854
                    /// @src 62:5160:5224  "PairLib.getRebalanceCacheId(pairId, userStatus.lastNumRebalance)"
                    let expr_33684 := fun_getRebalanceCacheId_34418(expr_33681, expr_33683)
                    /// @src 62:5138:5224  "uint256 rebalanceId = PairLib.getRebalanceCacheId(pairId, userStatus.lastNumRebalance)"
                    let var_rebalanceId_33678 := expr_33684
                    /// @src 62:5265:5269  "Math"
                    let expr_33688_address := linkersymbol("src/libraries/math/Math.sol:Math")
                    /// @src 62:5274:5284  "userStatus"
                    let _855_mpos := var_userStatus_33659_mpos
                    let expr_33690_mpos := _855_mpos
                    /// @src 62:5274:5293  "userStatus.sqrtPerp"
                    let _856 := add(expr_33690_mpos, 160)
                    let _857_mpos := mload(_856)
                    let expr_33691_mpos := _857_mpos
                    /// @src 62:5274:5300  "userStatus.sqrtPerp.amount"
                    let _858 := add(expr_33691_mpos, 0)
                    let _859 := read_from_memoryt_int256(_858)
                    let expr_33692 := _859
                    /// @src 62:5265:5301  "Math.abs(userStatus.sqrtPerp.amount)"
                    let expr_33693 := fun_abs_32143(expr_33692)
                    /// @src 62:5239:5301  "uint256 rebalanceAmount = Math.abs(userStatus.sqrtPerp.amount)"
                    let var_rebalanceAmount_33687 := expr_33693
                    /// @src 62:5340:5344  "Math"
                    let expr_33696_address := linkersymbol("src/libraries/math/Math.sol:Math")
                    /// @src 62:5379:5390  "assetStatus"
                    let _860_mpos := var_assetStatus_33651_mpos
                    let expr_33698_mpos := _860_mpos
                    /// @src 62:5379:5418  "assetStatus.rebalanceInterestGrowthBase"
                    let _861 := add(expr_33698_mpos, 480)
                    let _862 := read_from_memoryt_int256(_861)
                    let expr_33699 := _862
                    /// @src 62:5421:5444  "rebalanceFeeGrowthCache"
                    let _863_slot := var_rebalanceFeeGrowthCache_33656_slot
                    let expr_33700_slot := _863_slot
                    /// @src 62:5445:5456  "rebalanceId"
                    let _864 := var_rebalanceId_33678
                    let expr_33701 := _864
                    /// @src 62:5421:5457  "rebalanceFeeGrowthCache[rebalanceId]"
                    let _865 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_RebalanceFeeGrowthCache_$6121_storage_$_of_t_uint256(expr_33700_slot,expr_33701)
                    let _866_slot := _865
                    let expr_33702_slot := _866_slot
                    /// @src 62:5421:5474  "rebalanceFeeGrowthCache[rebalanceId].underlyingGrowth"
                    let _867 := add(expr_33702_slot, 1)
                    let _868 := read_from_storage_split_offset_0_t_int256(_867)
                    let expr_33703 := _868
                    /// @src 62:5379:5474  "assetStatus.rebalanceInterestGrowthBase - rebalanceFeeGrowthCache[rebalanceId].underlyingGrowth"
                    let expr_33704 := checked_sub_t_int256(expr_33699, expr_33703)

                    /// @src 62:5492:5507  "rebalanceAmount"
                    let _869 := var_rebalanceAmount_33687
                    let expr_33705 := _869
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
                    let _870_mpos := var_assetStatus_33651_mpos
                    let expr_33714_mpos := _870_mpos
                    /// @src 62:5630:5670  "assetStatus.rebalanceInterestGrowthQuote"
                    let _871 := add(expr_33714_mpos, 512)
                    let _872 := read_from_memoryt_int256(_871)
                    let expr_33715 := _872
                    /// @src 62:5673:5696  "rebalanceFeeGrowthCache"
                    let _873_slot := var_rebalanceFeeGrowthCache_33656_slot
                    let expr_33716_slot := _873_slot
                    /// @src 62:5697:5708  "rebalanceId"
                    let _874 := var_rebalanceId_33678
                    let expr_33717 := _874
                    /// @src 62:5673:5709  "rebalanceFeeGrowthCache[rebalanceId]"
                    let _875 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_RebalanceFeeGrowthCache_$6121_storage_$_of_t_uint256(expr_33716_slot,expr_33717)
                    let _876_slot := _875
                    let expr_33718_slot := _876_slot
                    /// @src 62:5673:5722  "rebalanceFeeGrowthCache[rebalanceId].stableGrowth"
                    let _877 := add(expr_33718_slot, 0)
                    let _878 := read_from_storage_split_offset_0_t_int256(_877)
                    let expr_33719 := _878
                    /// @src 62:5630:5722  "assetStatus.rebalanceInterestGrowthQuote - rebalanceFeeGrowthCache[rebalanceId].stableGrowth"
                    let expr_33720 := checked_sub_t_int256(expr_33715, expr_33719)

                    /// @src 62:5740:5755  "rebalanceAmount"
                    let _879 := var_rebalanceAmount_33687
                    let expr_33721 := _879
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let _928 := convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(expr_30299)

                ret := _928
            }

            /// @ast-id 33578
            /// @src 62:2677:3888  "function computePremium(DataType.PairStatus memory baseAssetStatus, Perp.SqrtPositionStatus memory sqrtPerp)..."
            function fun_computePremium_33578(var_baseAssetStatus_33465_mpos, var_sqrtPerp_33468_mpos) -> var_feeUnderlying_33471, var_feeStable_33473 {
                /// @src 62:2833:2853  "int256 feeUnderlying"
                let zero_t_int256_880 := zero_value_for_split_t_int256()
                var_feeUnderlying_33471 := zero_t_int256_880
                /// @src 62:2855:2871  "int256 feeStable"
                let zero_t_int256_881 := zero_value_for_split_t_int256()
                var_feeStable_33473 := zero_t_int256_881

                /// @src 62:2887:2906  "uint256 growthDiff0"
                let var_growthDiff0_33476
                let zero_t_uint256_882 := zero_value_for_split_t_uint256()
                var_growthDiff0_33476 := zero_t_uint256_882
                /// @src 62:2916:2935  "uint256 growthDiff1"
                let var_growthDiff1_33479
                let zero_t_uint256_883 := zero_value_for_split_t_uint256()
                var_growthDiff1_33479 := zero_t_uint256_883
                /// @src 62:2950:2958  "sqrtPerp"
                let _884_mpos := var_sqrtPerp_33468_mpos
                let expr_33481_mpos := _884_mpos
                /// @src 62:2950:2965  "sqrtPerp.amount"
                let _885 := add(expr_33481_mpos, 0)
                let _886 := read_from_memoryt_int256(_885)
                let expr_33482 := _886
                /// @src 62:2968:2969  "0"
                let expr_33483 := 0x00
                /// @src 62:2950:2969  "sqrtPerp.amount > 0"
                let expr_33484 := sgt(cleanup_t_int256(expr_33482), convert_t_rational_0_by_1_to_t_int256(expr_33483))
                /// @src 62:2946:3492  "if (sqrtPerp.amount > 0) {..."
                switch expr_33484
                case 0 {
                    /// @src 62:3184:3192  "sqrtPerp"
                    let _887_mpos := var_sqrtPerp_33468_mpos
                    let expr_33504_mpos := _887_mpos
                    /// @src 62:3184:3199  "sqrtPerp.amount"
                    let _888 := add(expr_33504_mpos, 0)
                    let _889 := read_from_memoryt_int256(_888)
                    let expr_33505 := _889
                    /// @src 62:3202:3203  "0"
                    let expr_33506 := 0x00
                    /// @src 62:3184:3203  "sqrtPerp.amount < 0"
                    let expr_33507 := slt(cleanup_t_int256(expr_33505), convert_t_rational_0_by_1_to_t_int256(expr_33506))
                    /// @src 62:3180:3492  "if (sqrtPerp.amount < 0) {..."
                    switch expr_33507
                    case 0 {
                        /// @src 62:3456:3469  "feeUnderlying"
                        let _890 := var_feeUnderlying_33471
                        let expr_33527 := _890
                        /// @src 62:3455:3481  "(feeUnderlying, feeStable)"
                        let expr_33529_component_1 := expr_33527
                        /// @src 62:3471:3480  "feeStable"
                        let _891 := var_feeStable_33473
                        let expr_33528 := _891
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
                        let _892_mpos := var_baseAssetStatus_33465_mpos
                        let expr_33509_mpos := _892_mpos
                        /// @src 62:3233:3264  "baseAssetStatus.sqrtAssetStatus"
                        let _893 := add(expr_33509_mpos, 192)
                        let _894_mpos := mload(_893)
                        let expr_33510_mpos := _894_mpos
                        /// @src 62:3233:3285  "baseAssetStatus.sqrtAssetStatus.borrowPremium0Growth"
                        let _895 := add(expr_33510_mpos, 288)
                        let _896 := read_from_memoryt_uint256(_895)
                        let expr_33511 := _896
                        /// @src 62:3288:3296  "sqrtPerp"
                        let _897_mpos := var_sqrtPerp_33468_mpos
                        let expr_33512_mpos := _897_mpos
                        /// @src 62:3288:3311  "sqrtPerp.entryTradeFee0"
                        let _898 := add(expr_33512_mpos, 128)
                        let _899 := read_from_memoryt_uint256(_898)
                        let expr_33513 := _899
                        /// @src 62:3233:3311  "baseAssetStatus.sqrtAssetStatus.borrowPremium0Growth - sqrtPerp.entryTradeFee0"
                        let expr_33514 := checked_sub_t_uint256(expr_33511, expr_33513)

                        /// @src 62:3219:3311  "growthDiff0 = baseAssetStatus.sqrtAssetStatus.borrowPremium0Growth - sqrtPerp.entryTradeFee0"
                        var_growthDiff0_33476 := expr_33514
                        let expr_33515 := expr_33514
                        /// @src 62:3339:3354  "baseAssetStatus"
                        let _900_mpos := var_baseAssetStatus_33465_mpos
                        let expr_33518_mpos := _900_mpos
                        /// @src 62:3339:3370  "baseAssetStatus.sqrtAssetStatus"
                        let _901 := add(expr_33518_mpos, 192)
                        let _902_mpos := mload(_901)
                        let expr_33519_mpos := _902_mpos
                        /// @src 62:3339:3391  "baseAssetStatus.sqrtAssetStatus.borrowPremium1Growth"
                        let _903 := add(expr_33519_mpos, 320)
                        let _904 := read_from_memoryt_uint256(_903)
                        let expr_33520 := _904
                        /// @src 62:3394:3402  "sqrtPerp"
                        let _905_mpos := var_sqrtPerp_33468_mpos
                        let expr_33521_mpos := _905_mpos
                        /// @src 62:3394:3417  "sqrtPerp.entryTradeFee1"
                        let _906 := add(expr_33521_mpos, 160)
                        let _907 := read_from_memoryt_uint256(_906)
                        let expr_33522 := _907
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
                    let _908_mpos := var_baseAssetStatus_33465_mpos
                    let expr_33486_mpos := _908_mpos
                    /// @src 62:2999:3030  "baseAssetStatus.sqrtAssetStatus"
                    let _909 := add(expr_33486_mpos, 192)
                    let _910_mpos := mload(_909)
                    let expr_33487_mpos := _910_mpos
                    /// @src 62:2999:3041  "baseAssetStatus.sqrtAssetStatus.fee0Growth"
                    let _911 := add(expr_33487_mpos, 352)
                    let _912 := read_from_memoryt_uint256(_911)
                    let expr_33488 := _912
                    /// @src 62:3044:3052  "sqrtPerp"
                    let _913_mpos := var_sqrtPerp_33468_mpos
                    let expr_33489_mpos := _913_mpos
                    /// @src 62:3044:3067  "sqrtPerp.entryTradeFee0"
                    let _914 := add(expr_33489_mpos, 128)
                    let _915 := read_from_memoryt_uint256(_914)
                    let expr_33490 := _915
                    /// @src 62:2999:3067  "baseAssetStatus.sqrtAssetStatus.fee0Growth - sqrtPerp.entryTradeFee0"
                    let expr_33491 := checked_sub_t_uint256(expr_33488, expr_33490)

                    /// @src 62:2985:3067  "growthDiff0 = baseAssetStatus.sqrtAssetStatus.fee0Growth - sqrtPerp.entryTradeFee0"
                    var_growthDiff0_33476 := expr_33491
                    let expr_33492 := expr_33491
                    /// @src 62:3095:3110  "baseAssetStatus"
                    let _916_mpos := var_baseAssetStatus_33465_mpos
                    let expr_33495_mpos := _916_mpos
                    /// @src 62:3095:3126  "baseAssetStatus.sqrtAssetStatus"
                    let _917 := add(expr_33495_mpos, 192)
                    let _918_mpos := mload(_917)
                    let expr_33496_mpos := _918_mpos
                    /// @src 62:3095:3137  "baseAssetStatus.sqrtAssetStatus.fee1Growth"
                    let _919 := add(expr_33496_mpos, 384)
                    let _920 := read_from_memoryt_uint256(_919)
                    let expr_33497 := _920
                    /// @src 62:3140:3148  "sqrtPerp"
                    let _921_mpos := var_sqrtPerp_33468_mpos
                    let expr_33498_mpos := _921_mpos
                    /// @src 62:3140:3163  "sqrtPerp.entryTradeFee1"
                    let _922 := add(expr_33498_mpos, 160)
                    let _923 := read_from_memoryt_uint256(_922)
                    let expr_33499 := _923
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
                let _924_mpos := var_sqrtPerp_33468_mpos
                let expr_33538_mpos := _924_mpos
                /// @src 62:3542:3557  "sqrtPerp.amount"
                let _925 := add(expr_33538_mpos, 0)
                let _926 := read_from_memoryt_int256(_925)
                let expr_33539 := _926
                /// @src 62:3559:3570  "growthDiff0"
                let _927 := var_growthDiff0_33476
                let expr_33540 := _927
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
                let _929_mpos := var_sqrtPerp_33468_mpos
                let expr_33549_mpos := _929_mpos
                /// @src 62:3637:3652  "sqrtPerp.amount"
                let _930 := add(expr_33549_mpos, 0)
                let _931 := read_from_memoryt_int256(_930)
                let expr_33550 := _931
                /// @src 62:3654:3665  "growthDiff1"
                let _932 := var_growthDiff1_33479
                let expr_33551 := _932
                /// @src 62:3667:3676  "Constants"
                let expr_33552_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 62:3667:3681  "Constants.Q128"
                let expr_33553 := constant_Q128_30300()
                /// @src 62:3611:3682  "Math.fullMulDivDownInt256(sqrtPerp.amount, growthDiff1, Constants.Q128)"
                let expr_33554 := fun_fullMulDivDownInt256_32279(expr_33550, expr_33551, expr_33553)
                /// @src 62:3597:3682  "int256 fee1 = Math.fullMulDivDownInt256(sqrtPerp.amount, growthDiff1, Constants.Q128)"
                let var_fee1_33546 := expr_33554
                /// @src 62:3697:3712  "baseAssetStatus"
                let _933_mpos := var_baseAssetStatus_33465_mpos
                let expr_33556_mpos := _933_mpos
                /// @src 62:3697:3724  "baseAssetStatus.isQuoteZero"
                let _934 := add(expr_33556_mpos, 256)
                let _935 := read_from_memoryt_bool(_934)
                let expr_33557 := _935
                /// @src 62:3693:3882  "if (baseAssetStatus.isQuoteZero) {..."
                switch expr_33557
                case 0 {
                    /// @src 62:3837:3841  "fee0"
                    let _936 := var_fee0_33535
                    let expr_33568 := _936
                    /// @src 62:3821:3841  "feeUnderlying = fee0"
                    var_feeUnderlying_33471 := expr_33568
                    let expr_33569 := expr_33568
                    /// @src 62:3867:3871  "fee1"
                    let _937 := var_fee1_33546
                    let expr_33572 := _937
                    /// @src 62:3855:3871  "feeStable = fee1"
                    var_feeStable_33473 := expr_33572
                    let expr_33573 := expr_33572
                    /// @src 62:3693:3882  "if (baseAssetStatus.isQuoteZero) {..."
                }
                default {
                    /// @src 62:3752:3756  "fee0"
                    let _938 := var_fee0_33535
                    let expr_33559 := _938
                    /// @src 62:3740:3756  "feeStable = fee0"
                    var_feeStable_33473 := expr_33559
                    let expr_33560 := expr_33559
                    /// @src 62:3786:3790  "fee1"
                    let _939 := var_fee1_33546
                    let expr_33563 := _939
                    /// @src 62:3770:3790  "feeUnderlying = fee1"
                    var_feeUnderlying_33471 := expr_33563
                    let expr_33564 := expr_33563
                    /// @src 62:3693:3882  "if (baseAssetStatus.isQuoteZero) {..."
                }

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let _942 := convert_t_rational_1800_by_1_to_t_uint256(expr_16477)

                ret := _942
            }

            /// @ast-id 16514
            /// @src 69:651:848  "function getSqrtTWAP(address uniswapPoolAddress) internal view returns (uint160 sqrtTwapX96) {..."
            function fun_getSqrtTWAP_16514(var_uniswapPoolAddress_16498) -> var_sqrtTwapX96_16501 {
                /// @src 69:723:742  "uint160 sqrtTwapX96"
                let zero_t_uint160_940 := zero_value_for_split_t_uint160()
                var_sqrtTwapX96_16501 := zero_t_uint160_940

                /// @src 69:805:823  "uniswapPoolAddress"
                let _941 := var_uniswapPoolAddress_16498
                let expr_16507 := _941
                /// @src 69:790:824  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16508_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16507)
                /// @src 69:826:840  "_ORACLE_PERIOD"
                let expr_16509 := constant__ORACLE_PERIOD_16478()
                /// @src 69:771:841  "callUniswapObserve(IUniswapV3Pool(uniswapPoolAddress), _ORACLE_PERIOD)"
                let expr_16510_component_1, expr_16510_component_2 := fun_callUniswapObserve_16744(expr_16508_address, expr_16509)
                /// @src 69:754:841  "(sqrtTwapX96,) = callUniswapObserve(IUniswapV3Pool(uniswapPoolAddress), _ORACLE_PERIOD)"
                var_sqrtTwapX96_16501 := expr_16510_component_1

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let _946 := convert_t_rational_96_by_1_to_t_uint8(expr_30293)

                ret := _946
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
                let zero_t_uint160_943 := zero_value_for_split_t_uint160()
                var__16522 := zero_t_uint160_943

                /// @src 69:1016:1027  "isQuoteZero"
                let _944 := var_isQuoteZero_16519
                let expr_16524 := _944
                /// @src 69:1012:1174  "if (isQuoteZero) {..."
                switch expr_16524
                case 0 {
                    /// @src 69:1151:1163  "sqrtPriceX96"
                    let _945 := var_sqrtPriceX96_16517
                    let expr_16538 := _945
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
                    let _947 := var_sqrtPriceX96_16517
                    let expr_16533 := _947
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @src 63:667:713  "uint256 internal constant RISK_RATIO_ONE = 1e8"
            function constant_RISK_RATIO_ONE_15807() -> ret {
                /// @src 63:710:713  "1e8"
                let expr_15806 := 0x05f5e100
                let _951 := convert_t_rational_100000000_by_1_to_t_uint256(expr_15806)

                ret := _951
            }

            /// @ast-id 16387
            /// @src 63:6319:7563  "function calculateMinValue(uint256 _sqrtPrice, PositionParams memory _positionParams, uint256 _riskRatio)..."
            function fun_calculateMinValue_16387(var__sqrtPrice_16263, var__positionParams_16266_mpos, var__riskRatio_16268) -> var_minValue_16271 {
                /// @src 63:6472:6487  "int256 minValue"
                let zero_t_int256_948 := zero_value_for_split_t_int256()
                var_minValue_16271 := zero_t_int256_948

                /// @src 63:6514:6530  "type(int256).max"
                let expr_16278 := 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                /// @src 63:6503:6530  "minValue = type(int256).max"
                var_minValue_16271 := expr_16278
                let expr_16279 := expr_16278
                /// @src 63:6562:6572  "_sqrtPrice"
                let _949 := var__sqrtPrice_16263
                let expr_16283 := _949
                /// @src 63:6575:6585  "_riskRatio"
                let _950 := var__riskRatio_16268
                let expr_16284 := _950
                /// @src 63:6562:6585  "_sqrtPrice * _riskRatio"
                let expr_16285 := checked_mul_t_uint256(expr_16283, expr_16284)

                /// @src 63:6588:6602  "RISK_RATIO_ONE"
                let expr_16286 := constant_RISK_RATIO_ONE_15807()
                /// @src 63:6562:6602  "_sqrtPrice * _riskRatio / RISK_RATIO_ONE"
                let expr_16287 := checked_div_t_uint256(expr_16285, expr_16286)

                /// @src 63:6541:6602  "uint256 upperPrice = _sqrtPrice * _riskRatio / RISK_RATIO_ONE"
                let var_upperPrice_16282 := expr_16287
                /// @src 63:6633:6643  "_sqrtPrice"
                let _952 := var__sqrtPrice_16263
                let expr_16291 := _952
                /// @src 63:6646:6660  "RISK_RATIO_ONE"
                let expr_16292 := constant_RISK_RATIO_ONE_15807()
                /// @src 63:6633:6660  "_sqrtPrice * RISK_RATIO_ONE"
                let expr_16293 := checked_mul_t_uint256(expr_16291, expr_16292)

                /// @src 63:6663:6673  "_riskRatio"
                let _953 := var__riskRatio_16268
                let expr_16294 := _953
                /// @src 63:6633:6673  "_sqrtPrice * RISK_RATIO_ONE / _riskRatio"
                let expr_16295 := checked_div_t_uint256(expr_16293, expr_16294)

                /// @src 63:6612:6673  "uint256 lowerPrice = _sqrtPrice * RISK_RATIO_ONE / _riskRatio"
                let var_lowerPrice_16290 := expr_16295
                /// @src 63:6724:6734  "upperPrice"
                let _954 := var_upperPrice_16282
                let expr_16300 := _954
                /// @src 63:6736:6751  "_positionParams"
                let _955_mpos := var__positionParams_16266_mpos
                let expr_16301_mpos := _955_mpos
                /// @src 63:6709:6752  "calculateValue(upperPrice, _positionParams)"
                let expr_16302 := fun_calculateValue_16429(expr_16300, expr_16301_mpos)
                /// @src 63:6698:6752  "int256 v = calculateValue(upperPrice, _positionParams)"
                let var_v_16298 := expr_16302
                /// @src 63:6770:6771  "v"
                let _956 := var_v_16298
                let expr_16304 := _956
                /// @src 63:6774:6782  "minValue"
                let _957 := var_minValue_16271
                let expr_16305 := _957
                /// @src 63:6770:6782  "v < minValue"
                let expr_16306 := slt(cleanup_t_int256(expr_16304), cleanup_t_int256(expr_16305))
                /// @src 63:6766:6829  "if (v < minValue) {..."
                if expr_16306 {
                    /// @src 63:6813:6814  "v"
                    let _958 := var_v_16298
                    let expr_16308 := _958
                    /// @src 63:6802:6814  "minValue = v"
                    var_minValue_16271 := expr_16308
                    let expr_16309 := expr_16308
                    /// @src 63:6766:6829  "if (v < minValue) {..."
                }
                /// @src 63:6889:6899  "lowerPrice"
                let _959 := var_lowerPrice_16290
                let expr_16317 := _959
                /// @src 63:6901:6916  "_positionParams"
                let _960_mpos := var__positionParams_16266_mpos
                let expr_16318_mpos := _960_mpos
                /// @src 63:6874:6917  "calculateValue(lowerPrice, _positionParams)"
                let expr_16319 := fun_calculateValue_16429(expr_16317, expr_16318_mpos)
                /// @src 63:6863:6917  "int256 v = calculateValue(lowerPrice, _positionParams)"
                let var_v_16315 := expr_16319
                /// @src 63:6935:6936  "v"
                let _961 := var_v_16315
                let expr_16321 := _961
                /// @src 63:6939:6947  "minValue"
                let _962 := var_minValue_16271
                let expr_16322 := _962
                /// @src 63:6935:6947  "v < minValue"
                let expr_16323 := slt(cleanup_t_int256(expr_16321), cleanup_t_int256(expr_16322))
                /// @src 63:6931:6994  "if (v < minValue) {..."
                if expr_16323 {
                    /// @src 63:6978:6979  "v"
                    let _963 := var_v_16315
                    let expr_16325 := _963
                    /// @src 63:6967:6979  "minValue = v"
                    var_minValue_16271 := expr_16325
                    let expr_16326 := expr_16325
                    /// @src 63:6931:6994  "if (v < minValue) {..."
                }
                /// @src 63:7018:7033  "_positionParams"
                let _964_mpos := var__positionParams_16266_mpos
                let expr_16331_mpos := _964_mpos
                /// @src 63:7018:7044  "_positionParams.amountSqrt"
                let _965 := add(expr_16331_mpos, 32)
                let _966 := read_from_memoryt_int256(_965)
                let expr_16332 := _966
                /// @src 63:7047:7048  "0"
                let expr_16333 := 0x00
                /// @src 63:7018:7048  "_positionParams.amountSqrt < 0"
                let expr_16334 := slt(cleanup_t_int256(expr_16332), convert_t_rational_0_by_1_to_t_int256(expr_16333))
                /// @src 63:7018:7088  "_positionParams.amountSqrt < 0 && _positionParams.amountUnderlying > 0"
                let expr_16339 := expr_16334
                if expr_16339 {
                    /// @src 63:7052:7067  "_positionParams"
                    let _967_mpos := var__positionParams_16266_mpos
                    let expr_16335_mpos := _967_mpos
                    /// @src 63:7052:7084  "_positionParams.amountUnderlying"
                    let _968 := add(expr_16335_mpos, 64)
                    let _969 := read_from_memoryt_int256(_968)
                    let expr_16336 := _969
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
                    let _970_mpos := var__positionParams_16266_mpos
                    let expr_16344_mpos := _970_mpos
                    /// @src 63:7206:7232  "_positionParams.amountSqrt"
                    let _971 := add(expr_16344_mpos, 32)
                    let _972 := read_from_memoryt_int256(_971)
                    let expr_16345 := _972
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
                    let _973_mpos := var__positionParams_16266_mpos
                    let expr_16354_mpos := _973_mpos
                    /// @src 63:7261:7293  "_positionParams.amountUnderlying"
                    let _974 := add(expr_16354_mpos, 64)
                    let _975 := read_from_memoryt_int256(_974)
                    let expr_16355 := _975
                    /// @src 63:7253:7294  "uint256(_positionParams.amountUnderlying)"
                    let expr_16356 := convert_t_int256_to_t_uint256(expr_16355)
                    /// @src 63:7196:7294  "(uint256(-_positionParams.amountSqrt) * Constants.Q96) / uint256(_positionParams.amountUnderlying)"
                    let expr_16357 := checked_div_t_uint256(expr_16351, expr_16356)

                    /// @src 63:7157:7294  "uint256 minSqrtPrice =..."
                    let var_minSqrtPrice_16341 := expr_16357
                    /// @src 63:7313:7323  "lowerPrice"
                    let _976 := var_lowerPrice_16290
                    let expr_16359 := _976
                    /// @src 63:7326:7338  "minSqrtPrice"
                    let _977 := var_minSqrtPrice_16341
                    let expr_16360 := _977
                    /// @src 63:7313:7338  "lowerPrice < minSqrtPrice"
                    let expr_16361 := lt(cleanup_t_uint256(expr_16359), cleanup_t_uint256(expr_16360))
                    /// @src 63:7313:7367  "lowerPrice < minSqrtPrice && minSqrtPrice < upperPrice"
                    let expr_16365 := expr_16361
                    if expr_16365 {
                        /// @src 63:7342:7354  "minSqrtPrice"
                        let _978 := var_minSqrtPrice_16341
                        let expr_16362 := _978
                        /// @src 63:7357:7367  "upperPrice"
                        let _979 := var_upperPrice_16282
                        let expr_16363 := _979
                        /// @src 63:7342:7367  "minSqrtPrice < upperPrice"
                        let expr_16364 := lt(cleanup_t_uint256(expr_16362), cleanup_t_uint256(expr_16363))
                        /// @src 63:7313:7367  "lowerPrice < minSqrtPrice && minSqrtPrice < upperPrice"
                        expr_16365 := expr_16364
                    }
                    /// @src 63:7309:7547  "if (lowerPrice < minSqrtPrice && minSqrtPrice < upperPrice) {..."
                    if expr_16365 {
                        /// @src 63:7413:7425  "minSqrtPrice"
                        let _980 := var_minSqrtPrice_16341
                        let expr_16369 := _980
                        /// @src 63:7427:7442  "_positionParams"
                        let _981_mpos := var__positionParams_16266_mpos
                        let expr_16370_mpos := _981_mpos
                        /// @src 63:7398:7443  "calculateValue(minSqrtPrice, _positionParams)"
                        let expr_16371 := fun_calculateValue_16429(expr_16369, expr_16370_mpos)
                        /// @src 63:7387:7443  "int256 v = calculateValue(minSqrtPrice, _positionParams)"
                        let var_v_16367 := expr_16371
                        /// @src 63:7466:7467  "v"
                        let _982 := var_v_16367
                        let expr_16373 := _982
                        /// @src 63:7470:7478  "minValue"
                        let _983 := var_minValue_16271
                        let expr_16374 := _983
                        /// @src 63:7466:7478  "v < minValue"
                        let expr_16375 := slt(cleanup_t_int256(expr_16373), cleanup_t_int256(expr_16374))
                        /// @src 63:7462:7533  "if (v < minValue) {..."
                        if expr_16375 {
                            /// @src 63:7513:7514  "v"
                            let _984 := var_v_16367
                            let expr_16377 := _984
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

            function convert_t_rational_2_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_2_by_1(value)))
            }

            /// @ast-id 16429
            /// @src 63:7803:8219  "function calculateValue(uint256 _sqrtPrice, PositionParams memory _positionParams) internal pure returns (int256) {..."
            function fun_calculateValue_16429(var__sqrtPrice_16390, var__positionParams_16393_mpos) -> var__16396 {
                /// @src 63:7909:7915  "int256"
                let zero_t_int256_985 := zero_value_for_split_t_int256()
                var__16396 := zero_t_int256_985

                /// @src 63:7943:7947  "Math"
                let expr_16400_address := linkersymbol("src/libraries/math/Math.sol:Math")
                /// @src 63:7968:7978  "_sqrtPrice"
                let _986 := var__sqrtPrice_16390
                let expr_16402 := _986
                /// @src 63:7943:7979  "Math.calSqrtPriceToPrice(_sqrtPrice)"
                let expr_16403 := fun_calSqrtPriceToPrice_32379(expr_16402)
                /// @src 63:7927:7979  "uint256 price = Math.calSqrtPriceToPrice(_sqrtPrice)"
                let var_price_16399 := expr_16403
                /// @src 63:7997:8001  "Math"
                let expr_16405_address := linkersymbol("src/libraries/math/Math.sol:Math")
                /// @src 63:8019:8034  "_positionParams"
                let _987_mpos := var__positionParams_16393_mpos
                let expr_16407_mpos := _987_mpos
                /// @src 63:8019:8051  "_positionParams.amountUnderlying"
                let _988 := add(expr_16407_mpos, 64)
                let _989 := read_from_memoryt_int256(_988)
                let expr_16408 := _989
                /// @src 63:8053:8058  "price"
                let _990 := var_price_16399
                let expr_16409 := _990
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
                let _991_mpos := var__positionParams_16393_mpos
                let expr_16416_mpos := _991_mpos
                /// @src 63:8115:8141  "_positionParams.amountSqrt"
                let _992 := add(expr_16416_mpos, 32)
                let _993 := read_from_memoryt_int256(_992)
                let expr_16417 := _993
                /// @src 63:8111:8141  "2 * _positionParams.amountSqrt"
                let expr_16418 := checked_mul_t_int256(convert_t_rational_2_by_1_to_t_int256(expr_16415), expr_16417)

                /// @src 63:8143:8153  "_sqrtPrice"
                let _994 := var__sqrtPrice_16390
                let expr_16419 := _994
                /// @src 63:8155:8164  "Constants"
                let expr_16420_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 63:8155:8168  "Constants.Q96"
                let expr_16421 := constant_Q96_30297()
                /// @src 63:8089:8169  "Math.fullMulDivInt256(2 * _positionParams.amountSqrt, _sqrtPrice, Constants.Q96)"
                let expr_16422 := fun_fullMulDivInt256_32228(expr_16418, expr_16419, expr_16421)
                /// @src 63:7997:8169  "Math.fullMulDivInt256(_positionParams.amountUnderlying, price, Constants.Q96)..."
                let expr_16423 := checked_add_t_int256(expr_16412, expr_16422)

                /// @src 63:8184:8199  "_positionParams"
                let _995_mpos := var__positionParams_16393_mpos
                let expr_16424_mpos := _995_mpos
                /// @src 63:8184:8212  "_positionParams.amountStable"
                let _996 := add(expr_16424_mpos, 0)
                let _997 := read_from_memoryt_int256(_996)
                let expr_16425 := _997
                /// @src 63:7997:8212  "Math.fullMulDivInt256(_positionParams.amountUnderlying, price, Constants.Q96)..."
                let expr_16426 := checked_add_t_int256(expr_16423, expr_16425)

                /// @src 63:7990:8212  "return Math.fullMulDivInt256(_positionParams.amountUnderlying, price, Constants.Q96)..."
                var__16396 := expr_16426
                leave

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let zero_t_uint256_998 := zero_value_for_split_t_uint256()
                var__16437 := zero_t_uint256_998

                /// @src 63:8411:8425  "positionParams"
                let _999_mpos := var_positionParams_16434_mpos
                let expr_16441_mpos := _999_mpos
                /// @src 63:8411:8436  "positionParams.amountSqrt"
                let _1000 := add(expr_16441_mpos, 32)
                let _1001 := read_from_memoryt_int256(_1000)
                let expr_16442 := _1001
                /// @src 63:8387:8436  "int256 squartPosition = positionParams.amountSqrt"
                let var_squartPosition_16440 := expr_16442
                /// @src 63:8451:8465  "squartPosition"
                let _1002 := var_squartPosition_16440
                let expr_16444 := _1002
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
                let _1003 := var_squartPosition_16440
                let expr_16454 := _1003
                /// @src 63:8535:8550  "-squartPosition"
                let expr_16455 := negate_t_int256(expr_16454)
                /// @src 63:8527:8551  "uint256(-squartPosition)"
                let expr_16456 := convert_t_int256_to_t_uint256(expr_16455)
                /// @src 63:8554:8564  "_sqrtPrice"
                let _1004 := var__sqrtPrice_16431
                let expr_16457 := _1004
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @ast-id 16260
            /// @src 63:5846:6038  "function getHasPositionFlag(PositionParams memory _positionParams) internal pure returns (bool) {..."
            function fun_getHasPositionFlag_16260(var__positionParams_16244_mpos) -> var__16247 {
                /// @src 63:5936:5940  "bool"
                let zero_t_bool_1005 := zero_value_for_split_t_bool()
                var__16247 := zero_t_bool_1005

                /// @src 63:5959:5974  "_positionParams"
                let _1006_mpos := var__positionParams_16244_mpos
                let expr_16249_mpos := _1006_mpos
                /// @src 63:5959:5985  "_positionParams.amountSqrt"
                let _1007 := add(expr_16249_mpos, 32)
                let _1008 := read_from_memoryt_int256(_1007)
                let expr_16250 := _1008
                /// @src 63:5989:5990  "0"
                let expr_16251 := 0x00
                /// @src 63:5959:5990  "_positionParams.amountSqrt != 0"
                let expr_16252 := iszero(eq(cleanup_t_int256(expr_16250), convert_t_rational_0_by_1_to_t_int256(expr_16251)))
                /// @src 63:5959:6031  "_positionParams.amountSqrt != 0 || _positionParams.amountUnderlying != 0"
                let expr_16257 := expr_16252
                if iszero(expr_16257) {
                    /// @src 63:5994:6009  "_positionParams"
                    let _1009_mpos := var__positionParams_16244_mpos
                    let expr_16253_mpos := _1009_mpos
                    /// @src 63:5994:6026  "_positionParams.amountUnderlying"
                    let _1010 := add(expr_16253_mpos, 64)
                    let _1011 := read_from_memoryt_int256(_1010)
                    let expr_16254 := _1011
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @ast-id 31606
            /// @src 66:7573:7717  "function getTotalDebtValue(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getTotalDebtValue_31606(var_tokenState_31597_mpos) -> var__31600 {
                /// @src 66:7654:7661  "uint256"
                let zero_t_uint256_1012 := zero_value_for_split_t_uint256()
                var__31600 := zero_t_uint256_1012

                /// @src 66:7680:7690  "tokenState"
                let _1013_mpos := var_tokenState_31597_mpos
                let expr_31602_mpos := _1013_mpos
                /// @src 66:7680:7710  "tokenState.totalNormalBorrowed"
                let _1014 := add(expr_31602_mpos, 64)
                let _1015 := read_from_memoryt_uint256(_1014)
                let expr_31603 := _1015
                /// @src 66:7673:7710  "return tokenState.totalNormalBorrowed"
                var__31600 := expr_31603
                leave

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @ast-id 31594
            /// @src 66:7299:7567  "function getTotalCollateralValue(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getTotalCollateralValue_31594(var_tokenState_31575_mpos) -> var__31578 {
                /// @src 66:7386:7393  "uint256"
                let zero_t_uint256_1016 := zero_value_for_split_t_uint256()
                var__31578 := zero_t_uint256_1016

                /// @src 66:7412:7429  "FixedPointMathLib"
                let expr_31580_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:7441:7451  "tokenState"
                let _1017_mpos := var_tokenState_31575_mpos
                let expr_31582_mpos := _1017_mpos
                /// @src 66:7441:7474  "tokenState.totalCompoundDeposited"
                let _1018 := add(expr_31582_mpos, 0)
                let _1019 := read_from_memoryt_uint256(_1018)
                let expr_31583 := _1019
                /// @src 66:7476:7486  "tokenState"
                let _1020_mpos := var_tokenState_31575_mpos
                let expr_31584_mpos := _1020_mpos
                /// @src 66:7476:7498  "tokenState.assetScaler"
                let _1021 := add(expr_31584_mpos, 96)
                let _1022 := read_from_memoryt_uint256(_1021)
                let expr_31585 := _1022
                /// @src 66:7500:7509  "Constants"
                let expr_31586_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:7500:7513  "Constants.ONE"
                let expr_31587 := constant_ONE_30273()
                /// @src 66:7412:7514  "FixedPointMathLib.mulDivDown(tokenState.totalCompoundDeposited, tokenState.assetScaler, Constants.ONE)"
                let expr_31588 := fun_mulDivDown_36976(expr_31583, expr_31585, expr_31587)
                /// @src 66:7529:7539  "tokenState"
                let _1023_mpos := var_tokenState_31575_mpos
                let expr_31589_mpos := _1023_mpos
                /// @src 66:7529:7560  "tokenState.totalNormalDeposited"
                let _1024 := add(expr_31589_mpos, 32)
                let _1025 := read_from_memoryt_uint256(_1024)
                let expr_31590 := _1025
                /// @src 66:7412:7560  "FixedPointMathLib.mulDivDown(tokenState.totalCompoundDeposited, tokenState.assetScaler, Constants.ONE)..."
                let expr_31591 := checked_add_t_uint256(expr_31588, expr_31590)

                /// @src 66:7405:7560  "return FixedPointMathLib.mulDivDown(tokenState.totalCompoundDeposited, tokenState.assetScaler, Constants.ONE)..."
                var__31578 := expr_31591
                leave

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @ast-id 36976
            /// @src 12:1564:2090  "function mulDivDown(..."
            function fun_mulDivDown_36976(var_x_36965, var_y_36967, var_denominator_36969) -> var_z_36972 {
                /// @src 12:1680:1689  "uint256 z"
                let zero_t_uint256_1026 := zero_value_for_split_t_uint256()
                var_z_36972 := zero_t_uint256_1026

                /// @src 12:1744:2084  "assembly {..."
                {
                    if iszero(mul(var_denominator_36969, iszero(mul(var_y_36967, gt(var_x_36965, div(115792089237316195423570985008687907853269984665640564039457584007913129639935, var_y_36967)))))) { revert(0, 0) }
                    var_z_36972 := div(mul(var_x_36965, var_y_36967), var_denominator_36969)
                }

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let zero_t_uint256_1027 := zero_value_for_split_t_uint256()
                var__31451 := zero_t_uint256_1027

                /// @src 66:5846:5858  "accountState"
                let _1028_mpos := var_accountState_31448_mpos
                let expr_31454_mpos := _1028_mpos
                /// @src 66:5846:5873  "accountState.positionAmount"
                let _1029 := add(expr_31454_mpos, 0)
                let _1030 := read_from_memoryt_int256(_1029)
                let expr_31455 := _1030
                /// @src 66:5877:5878  "0"
                let expr_31456 := 0x00
                /// @src 66:5846:5878  "accountState.positionAmount <= 0"
                let expr_31457 := iszero(sgt(cleanup_t_int256(expr_31455), convert_t_rational_0_by_1_to_t_int256(expr_31456)))
                /// @src 66:5838:5885  "require(accountState.positionAmount <= 0, \"S1\")"
                require_helper_t_stringliteral_cee6c1efda892dff24010eb4ec902cfd76c2d6ece4afb7a0868714ea3799fe91(expr_31457)
                /// @src 66:5903:5920  "FixedPointMathLib"
                let expr_31461_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:5943:5953  "tokenState"
                let _1031_mpos := var_tokenState_31445_mpos
                let expr_31463_mpos := _1031_mpos
                /// @src 66:5943:5964  "tokenState.debtGrowth"
                let _1032 := add(expr_31463_mpos, 160)
                let _1033 := read_from_memoryt_uint256(_1032)
                let expr_31464 := _1033
                /// @src 66:5967:5979  "accountState"
                let _1034_mpos := var_accountState_31448_mpos
                let expr_31465_mpos := _1034_mpos
                /// @src 66:5967:5993  "accountState.lastFeeGrowth"
                let _1035 := add(expr_31465_mpos, 32)
                let _1036 := read_from_memoryt_uint256(_1035)
                let expr_31466 := _1036
                /// @src 66:5943:5993  "tokenState.debtGrowth - accountState.lastFeeGrowth"
                let expr_31467 := checked_sub_t_uint256(expr_31464, expr_31466)

                /// @src 66:6046:6058  "accountState"
                let _1037_mpos := var_accountState_31448_mpos
                let expr_31470_mpos := _1037_mpos
                /// @src 66:6046:6073  "accountState.positionAmount"
                let _1038 := add(expr_31470_mpos, 0)
                let _1039 := read_from_memoryt_int256(_1038)
                let expr_31471 := _1039
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @ast-id 31442
            /// @src 66:5243:5679  "function getAssetFee(AssetStatus memory tokenState, UserStatus memory accountState)..."
            function fun_getAssetFee_31442(var_tokenState_31409_mpos, var_accountState_31412_mpos) -> var__31415 {
                /// @src 66:5374:5381  "uint256"
                let zero_t_uint256_1040 := zero_value_for_split_t_uint256()
                var__31415 := zero_t_uint256_1040

                /// @src 66:5405:5417  "accountState"
                let _1041_mpos := var_accountState_31412_mpos
                let expr_31418_mpos := _1041_mpos
                /// @src 66:5405:5432  "accountState.positionAmount"
                let _1042 := add(expr_31418_mpos, 0)
                let _1043 := read_from_memoryt_int256(_1042)
                let expr_31419 := _1043
                /// @src 66:5436:5437  "0"
                let expr_31420 := 0x00
                /// @src 66:5405:5437  "accountState.positionAmount >= 0"
                let expr_31421 := iszero(slt(cleanup_t_int256(expr_31419), convert_t_rational_0_by_1_to_t_int256(expr_31420)))
                /// @src 66:5397:5444  "require(accountState.positionAmount >= 0, \"S1\")"
                require_helper_t_stringliteral_cee6c1efda892dff24010eb4ec902cfd76c2d6ece4afb7a0868714ea3799fe91(expr_31421)
                /// @src 66:5462:5479  "FixedPointMathLib"
                let expr_31425_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:5504:5514  "tokenState"
                let _1044_mpos := var_tokenState_31409_mpos
                let expr_31427_mpos := _1044_mpos
                /// @src 66:5504:5526  "tokenState.assetGrowth"
                let _1045 := add(expr_31427_mpos, 128)
                let _1046 := read_from_memoryt_uint256(_1045)
                let expr_31428 := _1046
                /// @src 66:5529:5541  "accountState"
                let _1047_mpos := var_accountState_31412_mpos
                let expr_31429_mpos := _1047_mpos
                /// @src 66:5529:5555  "accountState.lastFeeGrowth"
                let _1048 := add(expr_31429_mpos, 32)
                let _1049 := read_from_memoryt_uint256(_1048)
                let expr_31430 := _1049
                /// @src 66:5504:5555  "tokenState.assetGrowth - accountState.lastFeeGrowth"
                let expr_31431 := checked_sub_t_uint256(expr_31428, expr_31430)

                /// @src 66:5607:5619  "accountState"
                let _1050_mpos := var_accountState_31412_mpos
                let expr_31434_mpos := _1050_mpos
                /// @src 66:5607:5634  "accountState.positionAmount"
                let _1051 := add(expr_31434_mpos, 0)
                let _1052 := read_from_memoryt_int256(_1051)
                let expr_31435 := _1052
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @ast-id 34418
            /// @src 60:85:245  "function getRebalanceCacheId(uint256 pairId, uint64 rebalanceId) internal pure returns (uint256) {..."
            function fun_getRebalanceCacheId_34418(var_pairId_34400, var_rebalanceId_34402) -> var__34405 {
                /// @src 60:173:180  "uint256"
                let zero_t_uint256_1053 := zero_value_for_split_t_uint256()
                var__34405 := zero_t_uint256_1053

                /// @src 60:199:205  "pairId"
                let _1054 := var_pairId_34400
                let expr_34407 := _1054
                /// @src 60:208:224  "type(uint64).max"
                let expr_34412 := 0xffffffffffffffff
                /// @src 60:199:224  "pairId * type(uint64).max"
                let expr_34413 := checked_mul_t_uint256(expr_34407, convert_t_uint64_to_t_uint256(expr_34412))

                /// @src 60:227:238  "rebalanceId"
                let _1055 := var_rebalanceId_34402
                let expr_34414 := _1055
                /// @src 60:199:238  "pairId * type(uint64).max + rebalanceId"
                let expr_34415 := checked_add_t_uint256(expr_34413, convert_t_uint64_to_t_uint256(expr_34414))

                /// @src 60:192:238  "return pairId * type(uint64).max + rebalanceId"
                var__34405 := expr_34415
                leave

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @ast-id 32143
            /// @src 79:381:484  "function abs(int256 x) internal pure returns (uint256) {..."
            function fun_abs_32143(var_x_32126) -> var__32129 {
                /// @src 79:427:434  "uint256"
                let zero_t_uint256_1056 := zero_value_for_split_t_uint256()
                var__32129 := zero_t_uint256_1056

                /// @src 79:461:462  "x"
                let _1057 := var_x_32126
                let expr_32133 := _1057
                /// @src 79:466:467  "0"
                let expr_32134 := 0x00
                /// @src 79:461:467  "x >= 0"
                let expr_32135 := iszero(slt(cleanup_t_int256(expr_32133), convert_t_rational_0_by_1_to_t_int256(expr_32134)))
                /// @src 79:461:476  "x >= 0 ? x : -x"
                let expr_32139
                switch expr_32135
                case 0 {
                    /// @src 79:475:476  "x"
                    let _1058 := var_x_32126
                    let expr_32137 := _1058
                    /// @src 79:474:476  "-x"
                    let expr_32138 := negate_t_int256(expr_32137)
                    /// @src 79:461:476  "x >= 0 ? x : -x"
                    expr_32139 := expr_32138
                }
                default {
                    /// @src 79:470:471  "x"
                    let _1059 := var_x_32126
                    let expr_32136 := _1059
                    /// @src 79:461:476  "x >= 0 ? x : -x"
                    expr_32139 := expr_32136
                }
                /// @src 79:453:477  "uint256(x >= 0 ? x : -x)"
                let expr_32140 := convert_t_int256_to_t_uint256(expr_32139)
                /// @src 79:446:477  "return uint256(x >= 0 ? x : -x)"
                var__32129 := expr_32140
                leave

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @ast-id 32330
            /// @src 79:1390:1741  "function mulDivDownInt256(int256 x, uint256 y, uint256 z) internal pure returns (int256) {..."
            function fun_mulDivDownInt256_32330(var_x_32281, var_y_32283, var_z_32285) -> var__32288 {
                /// @src 79:1471:1477  "int256"
                let zero_t_int256_1060 := zero_value_for_split_t_int256()
                var__32288 := zero_t_int256_1060

                /// @src 79:1493:1494  "x"
                let _1061 := var_x_32281
                let expr_32290 := _1061
                /// @src 79:1498:1499  "0"
                let expr_32291 := 0x00
                /// @src 79:1493:1499  "x == 0"
                let expr_32292 := eq(cleanup_t_int256(expr_32290), convert_t_rational_0_by_1_to_t_int256(expr_32291))
                /// @src 79:1489:1735  "if (x == 0) {..."
                switch expr_32292
                case 0 {
                    /// @src 79:1544:1545  "x"
                    let _1062 := var_x_32281
                    let expr_32296 := _1062
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
                        let _1063 := var_x_32281
                        let expr_32316 := _1063
                        /// @src 79:1703:1705  "-x"
                        let expr_32317 := negate_t_int256(expr_32316)
                        /// @src 79:1695:1706  "uint256(-x)"
                        let expr_32318 := convert_t_int256_to_t_uint256(expr_32317)
                        /// @src 79:1708:1709  "y"
                        let _1064 := var_y_32283
                        let expr_32319 := _1064
                        /// @src 79:1711:1712  "z"
                        let _1065 := var_z_32285
                        let expr_32320 := _1065
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
                        let _1066 := var_x_32281
                        let expr_32303 := _1066
                        /// @src 79:1601:1611  "uint256(x)"
                        let expr_32304 := convert_t_int256_to_t_uint256(expr_32303)
                        /// @src 79:1613:1614  "y"
                        let _1067 := var_y_32283
                        let expr_32305 := _1067
                        /// @src 79:1616:1617  "z"
                        let _1068 := var_z_32285
                        let expr_32306 := _1068
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @ast-id 32279
            /// @src 79:1043:1384  "function fullMulDivDownInt256(int256 x, uint256 y, uint256 z) internal pure returns (int256) {..."
            function fun_fullMulDivDownInt256_32279(var_x_32230, var_y_32232, var_z_32234) -> var__32237 {
                /// @src 79:1128:1134  "int256"
                let zero_t_int256_1069 := zero_value_for_split_t_int256()
                var__32237 := zero_t_int256_1069

                /// @src 79:1150:1151  "x"
                let _1070 := var_x_32230
                let expr_32239 := _1070
                /// @src 79:1155:1156  "0"
                let expr_32240 := 0x00
                /// @src 79:1150:1156  "x == 0"
                let expr_32241 := eq(cleanup_t_int256(expr_32239), convert_t_rational_0_by_1_to_t_int256(expr_32240))
                /// @src 79:1146:1378  "if (x == 0) {..."
                switch expr_32241
                case 0 {
                    /// @src 79:1201:1202  "x"
                    let _1071 := var_x_32230
                    let expr_32245 := _1071
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
                        let _1072 := var_x_32230
                        let expr_32265 := _1072
                        /// @src 79:1346:1348  "-x"
                        let expr_32266 := negate_t_int256(expr_32265)
                        /// @src 79:1338:1349  "uint256(-x)"
                        let expr_32267 := convert_t_int256_to_t_uint256(expr_32266)
                        /// @src 79:1351:1352  "y"
                        let _1073 := var_y_32232
                        let expr_32268 := _1073
                        /// @src 79:1354:1355  "z"
                        let _1074 := var_z_32234
                        let expr_32269 := _1074
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
                        let _1075 := var_x_32230
                        let expr_32252 := _1075
                        /// @src 79:1245:1255  "uint256(x)"
                        let expr_32253 := convert_t_int256_to_t_uint256(expr_32252)
                        /// @src 79:1257:1258  "y"
                        let _1076 := var_y_32232
                        let expr_32254 := _1076
                        /// @src 79:1260:1261  "z"
                        let _1077 := var_z_32234
                        let expr_32255 := _1077
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let zero_t_uint160_1078 := zero_value_for_split_t_uint160()
                var__16551 := zero_t_uint160_1078
                /// @src 69:1287:1294  "uint256"
                let zero_t_uint256_1079 := zero_value_for_split_t_uint256()
                var__16553 := zero_t_uint256_1079

                /// @src 69:1349:1350  "2"
                let expr_16563 := 0x02
                /// @src 69:1336:1351  "new uint32[](2)"
                let _1080 := convert_t_rational_2_by_1_to_t_uint256(expr_16563)
                let expr_16564_mpos := allocate_and_zero_memory_array_t_array$_t_uint32_$dyn_memory_ptr(_1080)
                /// @src 69:1306:1351  "uint32[] memory secondsAgos = new uint32[](2)"
                let var_secondsAgos_16559_mpos := expr_16564_mpos
                /// @src 69:1386:1389  "ago"
                let _1081 := var_ago_16548
                let expr_16571 := _1081
                /// @src 69:1379:1390  "uint32(ago)"
                let expr_16572 := convert_t_uint256_to_t_uint32(expr_16571)
                /// @src 69:1362:1373  "secondsAgos"
                let _1082_mpos := var_secondsAgos_16559_mpos
                let expr_16566_mpos := _1082_mpos
                /// @src 69:1374:1375  "0"
                let expr_16567 := 0x00
                /// @src 69:1362:1390  "secondsAgos[0] = uint32(ago)"
                let _1083 := expr_16572
                write_to_memory_t_uint32(memory_array_index_access_t_array$_t_uint32_$dyn_memory_ptr(expr_16566_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_16567)), _1083)
                let expr_16573 := expr_16572
                /// @src 69:1417:1418  "0"
                let expr_16578 := 0x00
                /// @src 69:1400:1418  "secondsAgos[1] = 0"
                let _1084 := convert_t_rational_0_by_1_to_t_uint32(expr_16578)
                /// @src 69:1400:1411  "secondsAgos"
                let _1085_mpos := var_secondsAgos_16559_mpos
                let expr_16575_mpos := _1085_mpos
                /// @src 69:1412:1413  "1"
                let expr_16576 := 0x01
                /// @src 69:1400:1418  "secondsAgos[1] = 0"
                let _1086 := _1084
                write_to_memory_t_uint32(memory_array_index_access_t_array$_t_uint32_$dyn_memory_ptr(expr_16575_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_16576)), _1086)
                let expr_16579 := _1084
                /// @src 69:1485:1496  "uniswapPool"
                let _1087_address := var_uniswapPool_16546_address
                let expr_16587_address := _1087_address
                /// @src 69:1477:1497  "address(uniswapPool)"
                let expr_16588 := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16587_address)
                /// @src 69:1477:1508  "address(uniswapPool).staticcall"
                let expr_16589_address := expr_16588
                /// @src 69:1532:1569  "IUniswapV3PoolOracle.observe.selector"
                let expr_16594 := 0x883bdbfd00000000000000000000000000000000000000000000000000000000
                /// @src 69:1571:1582  "secondsAgos"
                let _1088_mpos := var_secondsAgos_16559_mpos
                let expr_16595_mpos := _1088_mpos
                /// @src 69:1509:1583  "abi.encodeWithSelector(IUniswapV3PoolOracle.observe.selector, secondsAgos)"

                let expr_16596_mpos := allocate_unbounded()
                let _1089 := add(expr_16596_mpos, 0x20)

                mstore(_1089, expr_16594)
                _1089 := add(_1089, 4)

                let _1090 := abi_encode_tuple_t_array$_t_uint32_$dyn_memory_ptr__to_t_array$_t_uint32_$dyn_memory_ptr__fromStack(_1089, expr_16595_mpos)
                mstore(expr_16596_mpos, sub(_1090, add(expr_16596_mpos, 0x20)))
                finalize_allocation(expr_16596_mpos, sub(_1090, expr_16596_mpos))
                /// @src 69:1477:1584  "address(uniswapPool).staticcall(abi.encodeWithSelector(IUniswapV3PoolOracle.observe.selector, secondsAgos))"

                let _1091 := add(expr_16596_mpos, 0x20)
                let _1092 := mload(expr_16596_mpos)

                let expr_16597_component_1 := staticcall(gas(), expr_16589_address,  _1091, _1092, 0, 0)

                let expr_16597_component_2_mpos := extract_returndata()
                /// @src 69:1429:1584  "(bool success, bytes memory data) =..."
                let var_success_16582 := expr_16597_component_1
                let var_data_16584_mpos := expr_16597_component_2_mpos
                /// @src 69:1600:1607  "success"
                let _1093 := var_success_16582
                let expr_16599 := _1093
                /// @src 69:1599:1607  "!success"
                let expr_16600 := cleanup_t_bool(iszero(expr_16599))
                /// @src 69:1595:2423  "if (!success) {..."
                if expr_16600 {
                    /// @src 69:1637:1641  "data"
                    let _1094_mpos := var_data_16584_mpos
                    let expr_16602_mpos := _1094_mpos
                    /// @src 69:1627:1642  "keccak256(data)"
                    let expr_16603 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_16602_mpos), array_length_t_bytes_memory_ptr(expr_16602_mpos))
                    /// @src 69:1656:1703  "abi.encodeWithSignature(\"Error(string)\", \"OLD\")"

                    let expr_16609_mpos := allocate_unbounded()
                    let _1095 := add(expr_16609_mpos, 0x20)

                    mstore(_1095, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    _1095 := add(_1095, 4)

                    let _1096 := abi_encode_tuple_t_stringliteral_d30c0d219016dd7e5cf2b2c30c4d7c091820fc329f335b57cab26b9ff3384a9e__to_t_string_memory_ptr__fromStack(_1095)
                    mstore(expr_16609_mpos, sub(_1096, add(expr_16609_mpos, 0x20)))
                    finalize_allocation(expr_16609_mpos, sub(_1096, expr_16609_mpos))
                    /// @src 69:1646:1704  "keccak256(abi.encodeWithSignature(\"Error(string)\", \"OLD\"))"
                    let expr_16610 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_16609_mpos), array_length_t_bytes_memory_ptr(expr_16609_mpos))
                    /// @src 69:1627:1704  "keccak256(data) != keccak256(abi.encodeWithSignature(\"Error(string)\", \"OLD\"))"
                    let expr_16611 := iszero(eq(cleanup_t_bytes32(expr_16603), cleanup_t_bytes32(expr_16610)))
                    /// @src 69:1623:1756  "if (keccak256(data) != keccak256(abi.encodeWithSignature(\"Error(string)\", \"OLD\"))) {..."
                    if expr_16611 {
                        /// @src 69:1736:1740  "data"
                        let _1097_mpos := var_data_16584_mpos
                        let expr_16613_mpos := _1097_mpos
                        fun_revertBytes_16761(expr_16613_mpos)
                        /// @src 69:1623:1756  "if (keccak256(data) != keccak256(abi.encodeWithSignature(\"Error(string)\", \"OLD\"))) {..."
                    }
                    /// @src 69:1813:1824  "uniswapPool"
                    let _1098_address := var_uniswapPool_16546_address
                    let expr_16622_address := _1098_address
                    /// @src 69:1813:1830  "uniswapPool.slot0"
                    let expr_16623_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16622_address)
                    let expr_16623_functionSelector := 0x3850c7bd
                    /// @src 69:1813:1832  "uniswapPool.slot0()"

                    // storage for arguments and returned data
                    let _1099 := allocate_unbounded()
                    mstore(_1099, shift_left_224(expr_16623_functionSelector))
                    let _1100 := abi_encode_tuple__to__fromStack(add(_1099, 4) )

                    let _1101 := staticcall(gas(), expr_16623_address,  _1099, sub(_1100, _1099), _1099, 224)

                    if iszero(_1101) { revert_forward_1() }

                    let expr_16624_component_1, expr_16624_component_2, expr_16624_component_3, expr_16624_component_4, expr_16624_component_5, expr_16624_component_6, expr_16624_component_7
                    if _1101 {

                        let _1102 := 224

                        if gt(_1102, returndatasize()) {
                            _1102 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_1099, _1102)

                        // decode return parameters from external try-call into retVars
                        expr_16624_component_1, expr_16624_component_2, expr_16624_component_3, expr_16624_component_4, expr_16624_component_5, expr_16624_component_6, expr_16624_component_7 :=  abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(_1099, add(_1099, _1102))
                    }
                    /// @src 69:1770:1832  "(,, uint16 index, uint16 cardinality,,,) = uniswapPool.slot0()"
                    let var_index_16619 := expr_16624_component_3
                    let var_cardinality_16621 := expr_16624_component_4
                    /// @src 69:1897:1908  "uniswapPool"
                    let _1103_address := var_uniswapPool_16546_address
                    let expr_16630_address := _1103_address
                    /// @src 69:1897:1921  "uniswapPool.observations"
                    let expr_16631_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16630_address)
                    let expr_16631_functionSelector := 0x252c09d7
                    /// @src 69:1923:1928  "index"
                    let _1104 := var_index_16619
                    let expr_16632 := _1104
                    /// @src 69:1931:1932  "1"
                    let expr_16633 := 0x01
                    /// @src 69:1923:1932  "index + 1"
                    let expr_16634 := checked_add_t_uint16(expr_16632, convert_t_rational_1_by_1_to_t_uint16(expr_16633))

                    /// @src 69:1922:1933  "(index + 1)"
                    let expr_16635 := expr_16634
                    /// @src 69:1936:1947  "cardinality"
                    let _1105 := var_cardinality_16621
                    let expr_16636 := _1105
                    /// @src 69:1922:1947  "(index + 1) % cardinality"
                    let expr_16637 := mod_t_uint16(expr_16635, expr_16636)

                    /// @src 69:1897:1948  "uniswapPool.observations((index + 1) % cardinality)"

                    // storage for arguments and returned data
                    let _1106 := allocate_unbounded()
                    mstore(_1106, shift_left_224(expr_16631_functionSelector))
                    let _1107 := abi_encode_tuple_t_uint16__to_t_uint256__fromStack(add(_1106, 4) , expr_16637)

                    let _1108 := staticcall(gas(), expr_16631_address,  _1106, sub(_1107, _1106), _1106, 128)

                    if iszero(_1108) { revert_forward_1() }

                    let expr_16638_component_1, expr_16638_component_2, expr_16638_component_3, expr_16638_component_4
                    if _1108 {

                        let _1109 := 128

                        if gt(_1109, returndatasize()) {
                            _1109 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_1106, _1109)

                        // decode return parameters from external try-call into retVars
                        expr_16638_component_1, expr_16638_component_2, expr_16638_component_3, expr_16638_component_4 :=  abi_decode_tuple_t_uint32t_int56t_uint160t_bool_fromMemory(_1106, add(_1106, _1109))
                    }
                    /// @src 69:1847:1948  "(uint32 oldestAvailableAge,,, bool initialized) = uniswapPool.observations((index + 1) % cardinality)"
                    let var_oldestAvailableAge_16627 := expr_16638_component_1
                    let var_initialized_16629 := expr_16638_component_4
                    /// @src 69:1968:1979  "initialized"
                    let _1110 := var_initialized_16629
                    let expr_16640 := _1110
                    /// @src 69:1967:1979  "!initialized"
                    let expr_16641 := cleanup_t_bool(iszero(expr_16640))
                    /// @src 69:1963:2067  "if (!initialized) {..."
                    if expr_16641 {
                        /// @src 69:2025:2036  "uniswapPool"
                        let _1111_address := var_uniswapPool_16546_address
                        let expr_16644_address := _1111_address
                        /// @src 69:2025:2049  "uniswapPool.observations"
                        let expr_16645_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16644_address)
                        let expr_16645_functionSelector := 0x252c09d7
                        /// @src 69:2050:2051  "0"
                        let expr_16646 := 0x00
                        /// @src 69:2025:2052  "uniswapPool.observations(0)"

                        // storage for arguments and returned data
                        let _1112 := allocate_unbounded()
                        mstore(_1112, shift_left_224(expr_16645_functionSelector))
                        let _1113 := abi_encode_tuple_t_rational_0_by_1__to_t_uint256__fromStack(add(_1112, 4) , expr_16646)

                        let _1114 := staticcall(gas(), expr_16645_address,  _1112, sub(_1113, _1112), _1112, 128)

                        if iszero(_1114) { revert_forward_1() }

                        let expr_16647_component_1, expr_16647_component_2, expr_16647_component_3, expr_16647_component_4
                        if _1114 {

                            let _1115 := 128

                            if gt(_1115, returndatasize()) {
                                _1115 := returndatasize()
                            }

                            // update freeMemoryPointer according to dynamic return size
                            finalize_allocation(_1112, _1115)

                            // decode return parameters from external try-call into retVars
                            expr_16647_component_1, expr_16647_component_2, expr_16647_component_3, expr_16647_component_4 :=  abi_decode_tuple_t_uint32t_int56t_uint160t_bool_fromMemory(_1112, add(_1112, _1115))
                        }
                        /// @src 69:1999:2052  "(oldestAvailableAge,,,) = uniswapPool.observations(0)"
                        var_oldestAvailableAge_16627 := expr_16647_component_1
                        /// @src 69:1963:2067  "if (!initialized) {..."
                    }
                    /// @src 69:2087:2102  "block.timestamp"
                    let expr_16654 := timestamp()
                    /// @src 69:2105:2123  "oldestAvailableAge"
                    let _1116 := var_oldestAvailableAge_16627
                    let expr_16655 := _1116
                    /// @src 69:2087:2123  "block.timestamp - oldestAvailableAge"
                    let expr_16656 := checked_sub_t_uint256(expr_16654, convert_t_uint32_to_t_uint256(expr_16655))

                    /// @src 69:2081:2123  "ago = block.timestamp - oldestAvailableAge"
                    var_ago_16548 := expr_16656
                    let expr_16657 := expr_16656
                    /// @src 69:2161:2164  "ago"
                    let _1117 := var_ago_16548
                    let expr_16664 := _1117
                    /// @src 69:2154:2165  "uint32(ago)"
                    let expr_16665 := convert_t_uint256_to_t_uint32(expr_16664)
                    /// @src 69:2137:2148  "secondsAgos"
                    let _1118_mpos := var_secondsAgos_16559_mpos
                    let expr_16659_mpos := _1118_mpos
                    /// @src 69:2149:2150  "0"
                    let expr_16660 := 0x00
                    /// @src 69:2137:2165  "secondsAgos[0] = uint32(ago)"
                    let _1119 := expr_16665
                    write_to_memory_t_uint32(memory_array_index_access_t_array$_t_uint32_$dyn_memory_ptr(expr_16659_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_16660)), _1119)
                    let expr_16666 := expr_16665
                    /// @src 69:2206:2217  "uniswapPool"
                    let _1120_address := var_uniswapPool_16546_address
                    let expr_16673_address := _1120_address
                    /// @src 69:2198:2218  "address(uniswapPool)"
                    let expr_16674 := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16673_address)
                    /// @src 69:2198:2229  "address(uniswapPool).staticcall"
                    let expr_16675_address := expr_16674
                    /// @src 69:2270:2307  "IUniswapV3PoolOracle.observe.selector"
                    let expr_16680 := 0x883bdbfd00000000000000000000000000000000000000000000000000000000
                    /// @src 69:2309:2320  "secondsAgos"
                    let _1121_mpos := var_secondsAgos_16559_mpos
                    let expr_16681_mpos := _1121_mpos
                    /// @src 69:2247:2321  "abi.encodeWithSelector(IUniswapV3PoolOracle.observe.selector, secondsAgos)"

                    let expr_16682_mpos := allocate_unbounded()
                    let _1122 := add(expr_16682_mpos, 0x20)

                    mstore(_1122, expr_16680)
                    _1122 := add(_1122, 4)

                    let _1123 := abi_encode_tuple_t_array$_t_uint32_$dyn_memory_ptr__to_t_array$_t_uint32_$dyn_memory_ptr__fromStack(_1122, expr_16681_mpos)
                    mstore(expr_16682_mpos, sub(_1123, add(expr_16682_mpos, 0x20)))
                    finalize_allocation(expr_16682_mpos, sub(_1123, expr_16682_mpos))
                    /// @src 69:2198:2335  "address(uniswapPool).staticcall(..."

                    let _1124 := add(expr_16682_mpos, 0x20)
                    let _1125 := mload(expr_16682_mpos)

                    let expr_16683_component_1 := staticcall(gas(), expr_16675_address,  _1124, _1125, 0, 0)

                    let expr_16683_component_2_mpos := extract_returndata()
                    /// @src 69:2180:2335  "(success, data) = address(uniswapPool).staticcall(..."
                    var_data_16584_mpos := expr_16683_component_2_mpos
                    var_success_16582 := expr_16683_component_1
                    /// @src 69:2354:2361  "success"
                    let _1126 := var_success_16582
                    let expr_16686 := _1126
                    /// @src 69:2353:2361  "!success"
                    let expr_16687 := cleanup_t_bool(iszero(expr_16686))
                    /// @src 69:2349:2413  "if (!success) {..."
                    if expr_16687 {
                        /// @src 69:2393:2397  "data"
                        let _1127_mpos := var_data_16584_mpos
                        let expr_16689_mpos := _1127_mpos
                        fun_revertBytes_16761(expr_16689_mpos)
                        /// @src 69:2349:2413  "if (!success) {..."
                    }
                    /// @src 69:1595:2423  "if (!success) {..."
                }
                /// @src 69:2477:2481  "data"
                let _1128_mpos := var_data_16584_mpos
                let expr_16703_mpos := _1128_mpos
                /// @src 69:2466:2493  "abi.decode(data, (int56[]))"

                let expr_16708_mpos :=  abi_decode_tuple_t_array$_t_int56_$dyn_memory_ptr_fromMemory(add(expr_16703_mpos, 32), add(add(expr_16703_mpos, 32), array_length_t_bytes_memory_ptr(expr_16703_mpos)))
                /// @src 69:2433:2493  "int56[] memory tickCumulatives = abi.decode(data, (int56[]))"
                let var_tickCumulatives_16700_mpos := expr_16708_mpos
                /// @src 69:2524:2539  "tickCumulatives"
                let _1129_mpos := var_tickCumulatives_16700_mpos
                let expr_16714_mpos := _1129_mpos
                /// @src 69:2540:2541  "1"
                let expr_16715 := 0x01
                /// @src 69:2524:2542  "tickCumulatives[1]"
                let _1130 := read_from_memoryt_int56(memory_array_index_access_t_array$_t_int56_$dyn_memory_ptr(expr_16714_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_16715)))
                let expr_16716 := _1130
                /// @src 69:2545:2560  "tickCumulatives"
                let _1131_mpos := var_tickCumulatives_16700_mpos
                let expr_16717_mpos := _1131_mpos
                /// @src 69:2561:2562  "0"
                let expr_16718 := 0x00
                /// @src 69:2545:2563  "tickCumulatives[0]"
                let _1132 := read_from_memoryt_int56(memory_array_index_access_t_array$_t_int56_$dyn_memory_ptr(expr_16717_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_16718)))
                let expr_16719 := _1132
                /// @src 69:2524:2563  "tickCumulatives[1] - tickCumulatives[0]"
                let expr_16720 := checked_sub_t_int56(expr_16716, expr_16719)

                /// @src 69:2523:2564  "(tickCumulatives[1] - tickCumulatives[0])"
                let expr_16721 := expr_16720
                /// @src 69:2580:2583  "ago"
                let _1133 := var_ago_16548
                let expr_16726 := _1133
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
                let _1134 := var_tick_16711
                let expr_16736 := _1134
                /// @src 69:2620:2653  "TickMath.getSqrtRatioAtTick(tick)"
                let expr_16737 := fun_getSqrtRatioAtTick_30100(expr_16736)
                /// @src 69:2597:2653  "uint160 sqrtPriceX96 = TickMath.getSqrtRatioAtTick(tick)"
                let var_sqrtPriceX96_16733 := expr_16737
                /// @src 69:2672:2684  "sqrtPriceX96"
                let _1135 := var_sqrtPriceX96_16733
                let expr_16739 := _1135
                /// @src 69:2671:2690  "(sqrtPriceX96, ago)"
                let expr_16741_component_1 := expr_16739
                /// @src 69:2686:2689  "ago"
                let _1136 := var_ago_16548
                let expr_16740 := _1136
                /// @src 69:2671:2690  "(sqrtPriceX96, ago)"
                let expr_16741_component_2 := expr_16740
                /// @src 69:2664:2690  "return (sqrtPriceX96, ago)"
                var__16551 := expr_16741_component_1
                var__16553 := expr_16741_component_2
                leave

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @ast-id 32228
            /// @src 79:710:1037  "function fullMulDivInt256(int256 x, uint256 y, uint256 z) internal pure returns (int256) {..."
            function fun_fullMulDivInt256_32228(var_x_32179, var_y_32181, var_z_32183) -> var__32186 {
                /// @src 79:791:797  "int256"
                let zero_t_int256_1137 := zero_value_for_split_t_int256()
                var__32186 := zero_t_int256_1137

                /// @src 79:813:814  "x"
                let _1138 := var_x_32179
                let expr_32188 := _1138
                /// @src 79:818:819  "0"
                let expr_32189 := 0x00
                /// @src 79:813:819  "x == 0"
                let expr_32190 := eq(cleanup_t_int256(expr_32188), convert_t_rational_0_by_1_to_t_int256(expr_32189))
                /// @src 79:809:1031  "if (x == 0) {..."
                switch expr_32190
                case 0 {
                    /// @src 79:864:865  "x"
                    let _1139 := var_x_32179
                    let expr_32194 := _1139
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
                        let _1140 := var_x_32179
                        let expr_32214 := _1140
                        /// @src 79:999:1001  "-x"
                        let expr_32215 := negate_t_int256(expr_32214)
                        /// @src 79:991:1002  "uint256(-x)"
                        let expr_32216 := convert_t_int256_to_t_uint256(expr_32215)
                        /// @src 79:1004:1005  "y"
                        let _1141 := var_y_32181
                        let expr_32217 := _1141
                        /// @src 79:1007:1008  "z"
                        let _1142 := var_z_32183
                        let expr_32218 := _1142
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
                        let _1143 := var_x_32179
                        let expr_32201 := _1143
                        /// @src 79:908:918  "uint256(x)"
                        let expr_32202 := convert_t_int256_to_t_uint256(expr_32201)
                        /// @src 79:920:921  "y"
                        let _1144 := var_y_32181
                        let expr_32203 := _1144
                        /// @src 79:923:924  "z"
                        let _1145 := var_z_32183
                        let expr_32204 := _1145
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

            /// @ast-id 36989
            /// @src 12:2096:2768  "function mulDivUp(..."
            function fun_mulDivUp_36989(var_x_36978, var_y_36980, var_denominator_36982) -> var_z_36985 {
                /// @src 12:2210:2219  "uint256 z"
                let zero_t_uint256_1146 := zero_value_for_split_t_uint256()
                var_z_36985 := zero_t_uint256_1146

                /// @src 12:2274:2762  "assembly {..."
                {
                    if iszero(mul(var_denominator_36982, iszero(mul(var_y_36980, gt(var_x_36978, div(115792089237316195423570985008687907853269984665640564039457584007913129639935, var_y_36980)))))) { revert(0, 0) }
                    var_z_36985 := add(gt(mod(mul(var_x_36978, var_y_36980), var_denominator_36982), 0), div(mul(var_x_36978, var_y_36980), var_denominator_36982))
                }

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            /// @ast-id 32556
            /// @src 26:5150:5515  "function mulDivRoundingUp(..."
            function fun_mulDivRoundingUp_32556(var_a_32515, var_b_32517, var_denominator_32519) -> var_result_32522 {
                /// @src 26:5272:5286  "uint256 result"
                let zero_t_uint256_1147 := zero_value_for_split_t_uint256()
                var_result_32522 := zero_t_uint256_1147

                /// @src 26:5338:5339  "a"
                let _1148 := var_a_32515
                let expr_32526 := _1148
                /// @src 26:5341:5342  "b"
                let _1149 := var_b_32517
                let expr_32527 := _1149
                /// @src 26:5344:5355  "denominator"
                let _1150 := var_denominator_32519
                let expr_32528 := _1150
                /// @src 26:5331:5356  "mulDiv(a, b, denominator)"
                let expr_32529 := fun_mulDiv_32512(expr_32526, expr_32527, expr_32528)
                /// @src 26:5322:5356  "result = mulDiv(a, b, denominator)"
                var_result_32522 := expr_32529
                let expr_32530 := expr_32529
                /// @src 26:5381:5382  "a"
                let _1151 := var_a_32515
                let expr_32533 := _1151
                /// @src 26:5384:5385  "b"
                let _1152 := var_b_32517
                let expr_32534 := _1152
                /// @src 26:5387:5398  "denominator"
                let _1153 := var_denominator_32519
                let expr_32535 := _1153
                /// @src 26:5374:5399  "mulmod(a, b, denominator)"
                let _1154 := expr_32535
                if iszero(_1154) { panic_error_0x12() }
                let expr_32536 := mulmod(expr_32533, expr_32534, _1154)
                /// @src 26:5402:5403  "0"
                let expr_32537 := 0x00
                /// @src 26:5374:5403  "mulmod(a, b, denominator) > 0"
                let expr_32538 := gt(cleanup_t_uint256(expr_32536), convert_t_rational_0_by_1_to_t_uint256(expr_32537))
                /// @src 26:5370:5499  "if (mulmod(a, b, denominator) > 0) {..."
                if expr_32538 {
                    /// @src 26:5431:5437  "result"
                    let _1155 := var_result_32522
                    let expr_32540 := _1155
                    /// @src 26:5440:5457  "type(uint256).max"
                    let expr_32545 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 26:5431:5457  "result < type(uint256).max"
                    let expr_32546 := lt(cleanup_t_uint256(expr_32540), cleanup_t_uint256(expr_32545))
                    /// @src 26:5423:5458  "require(result < type(uint256).max)"
                    require_helper(expr_32546)
                    /// @src 26:5476:5484  "result++"
                    let _1157 := var_result_32522
                    let _1156 := increment_wrapping_t_uint256(_1157)
                    var_result_32522 := _1156
                    let expr_32550 := _1157
                    /// @src 26:5370:5499  "if (mulmod(a, b, denominator) > 0) {..."
                }

            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let _1158_mpos := var_errMsg_16746_mpos
                let expr_16749_mpos := _1158_mpos
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

                    let _1160 := allocate_unbounded()

                    mstore(_1160, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let _1159 := abi_encode_tuple_t_stringliteral_50c51911f834abaa40521a23699e67b2f23d64b1bf78a1149cfc2a1d2d5c6baf__to_t_string_memory_ptr__fromStack(add(_1160, 4) )
                    revert(_1160, sub(_1159, _1160))
                }
            }
            /// @src 72:884:6831  "library LiquidationLogic {..."

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
                let _1166 := convert_t_rational_minus_887272_by_1_to_t_int24(expr_29708)

                ret := _1166
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
                let _1167 := expr_29713

                ret := _1167
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
                let zero_t_uint160_1161 := zero_value_for_split_t_uint160()
                var_sqrtPriceX96_29728 := zero_t_uint160_1161

                /// @src 27:1522:1526  "tick"
                let _1162 := var_tick_29725
                let expr_29732 := _1162
                /// @src 27:1529:1530  "0"
                let expr_29733 := 0x00
                /// @src 27:1522:1530  "tick < 0"
                let expr_29734 := slt(cleanup_t_int24(expr_29732), convert_t_rational_0_by_1_to_t_int24(expr_29733))
                /// @src 27:1522:1579  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                let expr_29750
                switch expr_29734
                case 0 {
                    /// @src 27:1573:1577  "tick"
                    let _1163 := var_tick_29725
                    let expr_29747 := _1163
                    /// @src 27:1566:1578  "int256(tick)"
                    let expr_29748 := convert_t_int24_to_t_int256(expr_29747)
                    /// @src 27:1558:1579  "uint256(int256(tick))"
                    let expr_29749 := convert_t_int256_to_t_uint256(expr_29748)
                    /// @src 27:1522:1579  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                    expr_29750 := expr_29749
                }
                default {
                    /// @src 27:1549:1553  "tick"
                    let _1164 := var_tick_29725
                    let expr_29739 := _1164
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
                let _1165 := var_absTick_29731
                let expr_29752 := _1165
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

                        let _1169 := 0

                        mstore(_1169, 0x2bc80f3a00000000000000000000000000000000000000000000000000000000)
                        let _1168 := abi_encode_tuple__to__fromStack(add(_1169, 4) )
                        revert(_1169, sub(_1168, _1169))
                    }/// @src 27:1593:1644  "if (absTick > uint256(int256(MAX_TICK))) revert T()"
                }
                /// @src 27:1675:1682  "absTick"
                let _1170 := var_absTick_29731
                let expr_29767 := _1170
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
                let _1171 := var_absTick_29731
                let expr_29776 := _1171
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
                    let _1172 := var_ratio_29766
                    let expr_29782 := _1172
                    /// @src 27:1855:1889  "0xfff97272373d413259a46990580e213a"
                    let expr_29783 := 0xfff97272373d413259a46990580e213a
                    /// @src 27:1847:1889  "ratio * 0xfff97272373d413259a46990580e213a"
                    let expr_29784 := wrapping_mul_t_uint256(expr_29782, convert_t_rational_340248342086729790484326174814286782778_by_1_to_t_uint256(expr_29783))

                    /// @src 27:1846:1890  "(ratio * 0xfff97272373d413259a46990580e213a)"
                    let expr_29785 := expr_29784
                    /// @src 27:1894:1897  "128"
                    let expr_29786 := 0x80
                    /// @src 27:1846:1897  "(ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                    let _1173 := convert_t_rational_128_by_1_to_t_uint8(expr_29786)
                    let expr_29787 :=
                    shift_right_t_uint256_t_uint8(expr_29785, _1173)

                    /// @src 27:1838:1897  "ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                    var_ratio_29766 := expr_29787
                    let expr_29788 := expr_29787
                    /// @src 27:1814:1897  "if (absTick & 0x2 != 0) ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                }
                /// @src 27:1915:1922  "absTick"
                let _1174 := var_absTick_29731
                let expr_29791 := _1174
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
                    let _1175 := var_ratio_29766
                    let expr_29797 := _1175
                    /// @src 27:1952:1986  "0xfff2e50f5f656932ef12357cf3c7fdcc"
                    let expr_29798 := 0xfff2e50f5f656932ef12357cf3c7fdcc
                    /// @src 27:1944:1986  "ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc"
                    let expr_29799 := wrapping_mul_t_uint256(expr_29797, convert_t_rational_340214320654664324051920982716015181260_by_1_to_t_uint256(expr_29798))

                    /// @src 27:1943:1987  "(ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc)"
                    let expr_29800 := expr_29799
                    /// @src 27:1991:1994  "128"
                    let expr_29801 := 0x80
                    /// @src 27:1943:1994  "(ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                    let _1176 := convert_t_rational_128_by_1_to_t_uint8(expr_29801)
                    let expr_29802 :=
                    shift_right_t_uint256_t_uint8(expr_29800, _1176)

                    /// @src 27:1935:1994  "ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                    var_ratio_29766 := expr_29802
                    let expr_29803 := expr_29802
                    /// @src 27:1911:1994  "if (absTick & 0x4 != 0) ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                }
                /// @src 27:2012:2019  "absTick"
                let _1177 := var_absTick_29731
                let expr_29806 := _1177
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
                    let _1178 := var_ratio_29766
                    let expr_29812 := _1178
                    /// @src 27:2049:2083  "0xffe5caca7e10e4e61c3624eaa0941cd0"
                    let expr_29813 := 0xffe5caca7e10e4e61c3624eaa0941cd0
                    /// @src 27:2041:2083  "ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0"
                    let expr_29814 := wrapping_mul_t_uint256(expr_29812, convert_t_rational_340146287995602323631171512101879684304_by_1_to_t_uint256(expr_29813))

                    /// @src 27:2040:2084  "(ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0)"
                    let expr_29815 := expr_29814
                    /// @src 27:2088:2091  "128"
                    let expr_29816 := 0x80
                    /// @src 27:2040:2091  "(ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                    let _1179 := convert_t_rational_128_by_1_to_t_uint8(expr_29816)
                    let expr_29817 :=
                    shift_right_t_uint256_t_uint8(expr_29815, _1179)

                    /// @src 27:2032:2091  "ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                    var_ratio_29766 := expr_29817
                    let expr_29818 := expr_29817
                    /// @src 27:2008:2091  "if (absTick & 0x8 != 0) ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                }
                /// @src 27:2109:2116  "absTick"
                let _1180 := var_absTick_29731
                let expr_29821 := _1180
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
                    let _1181 := var_ratio_29766
                    let expr_29827 := _1181
                    /// @src 27:2147:2181  "0xffcb9843d60f6159c9db58835c926644"
                    let expr_29828 := 0xffcb9843d60f6159c9db58835c926644
                    /// @src 27:2139:2181  "ratio * 0xffcb9843d60f6159c9db58835c926644"
                    let expr_29829 := wrapping_mul_t_uint256(expr_29827, convert_t_rational_340010263488231146823593991679159461444_by_1_to_t_uint256(expr_29828))

                    /// @src 27:2138:2182  "(ratio * 0xffcb9843d60f6159c9db58835c926644)"
                    let expr_29830 := expr_29829
                    /// @src 27:2186:2189  "128"
                    let expr_29831 := 0x80
                    /// @src 27:2138:2189  "(ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                    let _1182 := convert_t_rational_128_by_1_to_t_uint8(expr_29831)
                    let expr_29832 :=
                    shift_right_t_uint256_t_uint8(expr_29830, _1182)

                    /// @src 27:2130:2189  "ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                    var_ratio_29766 := expr_29832
                    let expr_29833 := expr_29832
                    /// @src 27:2105:2189  "if (absTick & 0x10 != 0) ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                }
                /// @src 27:2207:2214  "absTick"
                let _1183 := var_absTick_29731
                let expr_29836 := _1183
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
                    let _1184 := var_ratio_29766
                    let expr_29842 := _1184
                    /// @src 27:2245:2279  "0xff973b41fa98c081472e6896dfb254c0"
                    let expr_29843 := 0xff973b41fa98c081472e6896dfb254c0
                    /// @src 27:2237:2279  "ratio * 0xff973b41fa98c081472e6896dfb254c0"
                    let expr_29844 := wrapping_mul_t_uint256(expr_29842, convert_t_rational_339738377640345403697157401104375502016_by_1_to_t_uint256(expr_29843))

                    /// @src 27:2236:2280  "(ratio * 0xff973b41fa98c081472e6896dfb254c0)"
                    let expr_29845 := expr_29844
                    /// @src 27:2284:2287  "128"
                    let expr_29846 := 0x80
                    /// @src 27:2236:2287  "(ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                    let _1185 := convert_t_rational_128_by_1_to_t_uint8(expr_29846)
                    let expr_29847 :=
                    shift_right_t_uint256_t_uint8(expr_29845, _1185)

                    /// @src 27:2228:2287  "ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                    var_ratio_29766 := expr_29847
                    let expr_29848 := expr_29847
                    /// @src 27:2203:2287  "if (absTick & 0x20 != 0) ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                }
                /// @src 27:2305:2312  "absTick"
                let _1186 := var_absTick_29731
                let expr_29851 := _1186
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
                    let _1187 := var_ratio_29766
                    let expr_29857 := _1187
                    /// @src 27:2343:2377  "0xff2ea16466c96a3843ec78b326b52861"
                    let expr_29858 := 0xff2ea16466c96a3843ec78b326b52861
                    /// @src 27:2335:2377  "ratio * 0xff2ea16466c96a3843ec78b326b52861"
                    let expr_29859 := wrapping_mul_t_uint256(expr_29857, convert_t_rational_339195258003219555707034227454543997025_by_1_to_t_uint256(expr_29858))

                    /// @src 27:2334:2378  "(ratio * 0xff2ea16466c96a3843ec78b326b52861)"
                    let expr_29860 := expr_29859
                    /// @src 27:2382:2385  "128"
                    let expr_29861 := 0x80
                    /// @src 27:2334:2385  "(ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                    let _1188 := convert_t_rational_128_by_1_to_t_uint8(expr_29861)
                    let expr_29862 :=
                    shift_right_t_uint256_t_uint8(expr_29860, _1188)

                    /// @src 27:2326:2385  "ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                    var_ratio_29766 := expr_29862
                    let expr_29863 := expr_29862
                    /// @src 27:2301:2385  "if (absTick & 0x40 != 0) ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                }
                /// @src 27:2403:2410  "absTick"
                let _1189 := var_absTick_29731
                let expr_29866 := _1189
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
                    let _1190 := var_ratio_29766
                    let expr_29872 := _1190
                    /// @src 27:2441:2475  "0xfe5dee046a99a2a811c461f1969c3053"
                    let expr_29873 := 0xfe5dee046a99a2a811c461f1969c3053
                    /// @src 27:2433:2475  "ratio * 0xfe5dee046a99a2a811c461f1969c3053"
                    let expr_29874 := wrapping_mul_t_uint256(expr_29872, convert_t_rational_338111622100601834656805679988414885971_by_1_to_t_uint256(expr_29873))

                    /// @src 27:2432:2476  "(ratio * 0xfe5dee046a99a2a811c461f1969c3053)"
                    let expr_29875 := expr_29874
                    /// @src 27:2480:2483  "128"
                    let expr_29876 := 0x80
                    /// @src 27:2432:2483  "(ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                    let _1191 := convert_t_rational_128_by_1_to_t_uint8(expr_29876)
                    let expr_29877 :=
                    shift_right_t_uint256_t_uint8(expr_29875, _1191)

                    /// @src 27:2424:2483  "ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                    var_ratio_29766 := expr_29877
                    let expr_29878 := expr_29877
                    /// @src 27:2399:2483  "if (absTick & 0x80 != 0) ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                }
                /// @src 27:2501:2508  "absTick"
                let _1192 := var_absTick_29731
                let expr_29881 := _1192
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
                    let _1193 := var_ratio_29766
                    let expr_29887 := _1193
                    /// @src 27:2540:2574  "0xfcbe86c7900a88aedcffc83b479aa3a4"
                    let expr_29888 := 0xfcbe86c7900a88aedcffc83b479aa3a4
                    /// @src 27:2532:2574  "ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4"
                    let expr_29889 := wrapping_mul_t_uint256(expr_29887, convert_t_rational_335954724994790223023589805789778977700_by_1_to_t_uint256(expr_29888))

                    /// @src 27:2531:2575  "(ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4)"
                    let expr_29890 := expr_29889
                    /// @src 27:2579:2582  "128"
                    let expr_29891 := 0x80
                    /// @src 27:2531:2582  "(ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                    let _1194 := convert_t_rational_128_by_1_to_t_uint8(expr_29891)
                    let expr_29892 :=
                    shift_right_t_uint256_t_uint8(expr_29890, _1194)

                    /// @src 27:2523:2582  "ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                    var_ratio_29766 := expr_29892
                    let expr_29893 := expr_29892
                    /// @src 27:2497:2582  "if (absTick & 0x100 != 0) ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                }
                /// @src 27:2600:2607  "absTick"
                let _1195 := var_absTick_29731
                let expr_29896 := _1195
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
                    let _1196 := var_ratio_29766
                    let expr_29902 := _1196
                    /// @src 27:2639:2673  "0xf987a7253ac413176f2b074cf7815e54"
                    let expr_29903 := 0xf987a7253ac413176f2b074cf7815e54
                    /// @src 27:2631:2673  "ratio * 0xf987a7253ac413176f2b074cf7815e54"
                    let expr_29904 := wrapping_mul_t_uint256(expr_29902, convert_t_rational_331682121138379247127172139078559817300_by_1_to_t_uint256(expr_29903))

                    /// @src 27:2630:2674  "(ratio * 0xf987a7253ac413176f2b074cf7815e54)"
                    let expr_29905 := expr_29904
                    /// @src 27:2678:2681  "128"
                    let expr_29906 := 0x80
                    /// @src 27:2630:2681  "(ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                    let _1197 := convert_t_rational_128_by_1_to_t_uint8(expr_29906)
                    let expr_29907 :=
                    shift_right_t_uint256_t_uint8(expr_29905, _1197)

                    /// @src 27:2622:2681  "ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                    var_ratio_29766 := expr_29907
                    let expr_29908 := expr_29907
                    /// @src 27:2596:2681  "if (absTick & 0x200 != 0) ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                }
                /// @src 27:2699:2706  "absTick"
                let _1198 := var_absTick_29731
                let expr_29911 := _1198
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
                    let _1199 := var_ratio_29766
                    let expr_29917 := _1199
                    /// @src 27:2738:2772  "0xf3392b0822b70005940c7a398e4b70f3"
                    let expr_29918 := 0xf3392b0822b70005940c7a398e4b70f3
                    /// @src 27:2730:2772  "ratio * 0xf3392b0822b70005940c7a398e4b70f3"
                    let expr_29919 := wrapping_mul_t_uint256(expr_29917, convert_t_rational_323299236684853023288211250268160618739_by_1_to_t_uint256(expr_29918))

                    /// @src 27:2729:2773  "(ratio * 0xf3392b0822b70005940c7a398e4b70f3)"
                    let expr_29920 := expr_29919
                    /// @src 27:2777:2780  "128"
                    let expr_29921 := 0x80
                    /// @src 27:2729:2780  "(ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                    let _1200 := convert_t_rational_128_by_1_to_t_uint8(expr_29921)
                    let expr_29922 :=
                    shift_right_t_uint256_t_uint8(expr_29920, _1200)

                    /// @src 27:2721:2780  "ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                    var_ratio_29766 := expr_29922
                    let expr_29923 := expr_29922
                    /// @src 27:2695:2780  "if (absTick & 0x400 != 0) ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                }
                /// @src 27:2798:2805  "absTick"
                let _1201 := var_absTick_29731
                let expr_29926 := _1201
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
                    let _1202 := var_ratio_29766
                    let expr_29932 := _1202
                    /// @src 27:2837:2871  "0xe7159475a2c29b7443b29c7fa6e889d9"
                    let expr_29933 := 0xe7159475a2c29b7443b29c7fa6e889d9
                    /// @src 27:2829:2871  "ratio * 0xe7159475a2c29b7443b29c7fa6e889d9"
                    let expr_29934 := wrapping_mul_t_uint256(expr_29932, convert_t_rational_307163716377032989948697243942600083929_by_1_to_t_uint256(expr_29933))

                    /// @src 27:2828:2872  "(ratio * 0xe7159475a2c29b7443b29c7fa6e889d9)"
                    let expr_29935 := expr_29934
                    /// @src 27:2876:2879  "128"
                    let expr_29936 := 0x80
                    /// @src 27:2828:2879  "(ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                    let _1203 := convert_t_rational_128_by_1_to_t_uint8(expr_29936)
                    let expr_29937 :=
                    shift_right_t_uint256_t_uint8(expr_29935, _1203)

                    /// @src 27:2820:2879  "ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                    var_ratio_29766 := expr_29937
                    let expr_29938 := expr_29937
                    /// @src 27:2794:2879  "if (absTick & 0x800 != 0) ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                }
                /// @src 27:2897:2904  "absTick"
                let _1204 := var_absTick_29731
                let expr_29941 := _1204
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
                    let _1205 := var_ratio_29766
                    let expr_29947 := _1205
                    /// @src 27:2937:2971  "0xd097f3bdfd2022b8845ad8f792aa5825"
                    let expr_29948 := 0xd097f3bdfd2022b8845ad8f792aa5825
                    /// @src 27:2929:2971  "ratio * 0xd097f3bdfd2022b8845ad8f792aa5825"
                    let expr_29949 := wrapping_mul_t_uint256(expr_29947, convert_t_rational_277268403626896220162999269216087595045_by_1_to_t_uint256(expr_29948))

                    /// @src 27:2928:2972  "(ratio * 0xd097f3bdfd2022b8845ad8f792aa5825)"
                    let expr_29950 := expr_29949
                    /// @src 27:2976:2979  "128"
                    let expr_29951 := 0x80
                    /// @src 27:2928:2979  "(ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                    let _1206 := convert_t_rational_128_by_1_to_t_uint8(expr_29951)
                    let expr_29952 :=
                    shift_right_t_uint256_t_uint8(expr_29950, _1206)

                    /// @src 27:2920:2979  "ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                    var_ratio_29766 := expr_29952
                    let expr_29953 := expr_29952
                    /// @src 27:2893:2979  "if (absTick & 0x1000 != 0) ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                }
                /// @src 27:2997:3004  "absTick"
                let _1207 := var_absTick_29731
                let expr_29956 := _1207
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
                    let _1208 := var_ratio_29766
                    let expr_29962 := _1208
                    /// @src 27:3037:3071  "0xa9f746462d870fdf8a65dc1f90e061e5"
                    let expr_29963 := 0xa9f746462d870fdf8a65dc1f90e061e5
                    /// @src 27:3029:3071  "ratio * 0xa9f746462d870fdf8a65dc1f90e061e5"
                    let expr_29964 := wrapping_mul_t_uint256(expr_29962, convert_t_rational_225923453940442621947126027127485391333_by_1_to_t_uint256(expr_29963))

                    /// @src 27:3028:3072  "(ratio * 0xa9f746462d870fdf8a65dc1f90e061e5)"
                    let expr_29965 := expr_29964
                    /// @src 27:3076:3079  "128"
                    let expr_29966 := 0x80
                    /// @src 27:3028:3079  "(ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                    let _1209 := convert_t_rational_128_by_1_to_t_uint8(expr_29966)
                    let expr_29967 :=
                    shift_right_t_uint256_t_uint8(expr_29965, _1209)

                    /// @src 27:3020:3079  "ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                    var_ratio_29766 := expr_29967
                    let expr_29968 := expr_29967
                    /// @src 27:2993:3079  "if (absTick & 0x2000 != 0) ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                }
                /// @src 27:3097:3104  "absTick"
                let _1210 := var_absTick_29731
                let expr_29971 := _1210
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
                    let _1211 := var_ratio_29766
                    let expr_29977 := _1211
                    /// @src 27:3137:3171  "0x70d869a156d2a1b890bb3df62baf32f7"
                    let expr_29978 := 0x70d869a156d2a1b890bb3df62baf32f7
                    /// @src 27:3129:3171  "ratio * 0x70d869a156d2a1b890bb3df62baf32f7"
                    let expr_29979 := wrapping_mul_t_uint256(expr_29977, convert_t_rational_149997214084966997727330242082538205943_by_1_to_t_uint256(expr_29978))

                    /// @src 27:3128:3172  "(ratio * 0x70d869a156d2a1b890bb3df62baf32f7)"
                    let expr_29980 := expr_29979
                    /// @src 27:3176:3179  "128"
                    let expr_29981 := 0x80
                    /// @src 27:3128:3179  "(ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                    let _1212 := convert_t_rational_128_by_1_to_t_uint8(expr_29981)
                    let expr_29982 :=
                    shift_right_t_uint256_t_uint8(expr_29980, _1212)

                    /// @src 27:3120:3179  "ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                    var_ratio_29766 := expr_29982
                    let expr_29983 := expr_29982
                    /// @src 27:3093:3179  "if (absTick & 0x4000 != 0) ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                }
                /// @src 27:3197:3204  "absTick"
                let _1213 := var_absTick_29731
                let expr_29986 := _1213
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
                    let _1214 := var_ratio_29766
                    let expr_29992 := _1214
                    /// @src 27:3237:3271  "0x31be135f97d08fd981231505542fcfa6"
                    let expr_29993 := 0x31be135f97d08fd981231505542fcfa6
                    /// @src 27:3229:3271  "ratio * 0x31be135f97d08fd981231505542fcfa6"
                    let expr_29994 := wrapping_mul_t_uint256(expr_29992, convert_t_rational_66119101136024775622716233608466517926_by_1_to_t_uint256(expr_29993))

                    /// @src 27:3228:3272  "(ratio * 0x31be135f97d08fd981231505542fcfa6)"
                    let expr_29995 := expr_29994
                    /// @src 27:3276:3279  "128"
                    let expr_29996 := 0x80
                    /// @src 27:3228:3279  "(ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                    let _1215 := convert_t_rational_128_by_1_to_t_uint8(expr_29996)
                    let expr_29997 :=
                    shift_right_t_uint256_t_uint8(expr_29995, _1215)

                    /// @src 27:3220:3279  "ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                    var_ratio_29766 := expr_29997
                    let expr_29998 := expr_29997
                    /// @src 27:3193:3279  "if (absTick & 0x8000 != 0) ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                }
                /// @src 27:3297:3304  "absTick"
                let _1216 := var_absTick_29731
                let expr_30001 := _1216
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
                    let _1217 := var_ratio_29766
                    let expr_30007 := _1217
                    /// @src 27:3338:3371  "0x9aa508b5b7a84e1c677de54f3e99bc9"
                    let expr_30008 := 0x09aa508b5b7a84e1c677de54f3e99bc9
                    /// @src 27:3330:3371  "ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9"
                    let expr_30009 := wrapping_mul_t_uint256(expr_30007, convert_t_rational_12847376061809297530290974190478138313_by_1_to_t_uint256(expr_30008))

                    /// @src 27:3329:3372  "(ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9)"
                    let expr_30010 := expr_30009
                    /// @src 27:3376:3379  "128"
                    let expr_30011 := 0x80
                    /// @src 27:3329:3379  "(ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                    let _1218 := convert_t_rational_128_by_1_to_t_uint8(expr_30011)
                    let expr_30012 :=
                    shift_right_t_uint256_t_uint8(expr_30010, _1218)

                    /// @src 27:3321:3379  "ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                    var_ratio_29766 := expr_30012
                    let expr_30013 := expr_30012
                    /// @src 27:3293:3379  "if (absTick & 0x10000 != 0) ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                }
                /// @src 27:3397:3404  "absTick"
                let _1219 := var_absTick_29731
                let expr_30016 := _1219
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
                    let _1220 := var_ratio_29766
                    let expr_30022 := _1220
                    /// @src 27:3438:3470  "0x5d6af8dedb81196699c329225ee604"
                    let expr_30023 := 0x5d6af8dedb81196699c329225ee604
                    /// @src 27:3430:3470  "ratio * 0x5d6af8dedb81196699c329225ee604"
                    let expr_30024 := wrapping_mul_t_uint256(expr_30022, convert_t_rational_485053260817066172746253684029974020_by_1_to_t_uint256(expr_30023))

                    /// @src 27:3429:3471  "(ratio * 0x5d6af8dedb81196699c329225ee604)"
                    let expr_30025 := expr_30024
                    /// @src 27:3475:3478  "128"
                    let expr_30026 := 0x80
                    /// @src 27:3429:3478  "(ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                    let _1221 := convert_t_rational_128_by_1_to_t_uint8(expr_30026)
                    let expr_30027 :=
                    shift_right_t_uint256_t_uint8(expr_30025, _1221)

                    /// @src 27:3421:3478  "ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                    var_ratio_29766 := expr_30027
                    let expr_30028 := expr_30027
                    /// @src 27:3393:3478  "if (absTick & 0x20000 != 0) ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                }
                /// @src 27:3496:3503  "absTick"
                let _1222 := var_absTick_29731
                let expr_30031 := _1222
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
                    let _1223 := var_ratio_29766
                    let expr_30037 := _1223
                    /// @src 27:3537:3567  "0x2216e584f5fa1ea926041bedfe98"
                    let expr_30038 := 0x2216e584f5fa1ea926041bedfe98
                    /// @src 27:3529:3567  "ratio * 0x2216e584f5fa1ea926041bedfe98"
                    let expr_30039 := wrapping_mul_t_uint256(expr_30037, convert_t_rational_691415978906521570653435304214168_by_1_to_t_uint256(expr_30038))

                    /// @src 27:3528:3568  "(ratio * 0x2216e584f5fa1ea926041bedfe98)"
                    let expr_30040 := expr_30039
                    /// @src 27:3572:3575  "128"
                    let expr_30041 := 0x80
                    /// @src 27:3528:3575  "(ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                    let _1224 := convert_t_rational_128_by_1_to_t_uint8(expr_30041)
                    let expr_30042 :=
                    shift_right_t_uint256_t_uint8(expr_30040, _1224)

                    /// @src 27:3520:3575  "ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                    var_ratio_29766 := expr_30042
                    let expr_30043 := expr_30042
                    /// @src 27:3492:3575  "if (absTick & 0x40000 != 0) ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                }
                /// @src 27:3593:3600  "absTick"
                let _1225 := var_absTick_29731
                let expr_30046 := _1225
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
                    let _1226 := var_ratio_29766
                    let expr_30052 := _1226
                    /// @src 27:3634:3659  "0x48a170391f7dc42444e8fa2"
                    let expr_30053 := 0x048a170391f7dc42444e8fa2
                    /// @src 27:3626:3659  "ratio * 0x48a170391f7dc42444e8fa2"
                    let expr_30054 := wrapping_mul_t_uint256(expr_30052, convert_t_rational_1404880482679654955896180642_by_1_to_t_uint256(expr_30053))

                    /// @src 27:3625:3660  "(ratio * 0x48a170391f7dc42444e8fa2)"
                    let expr_30055 := expr_30054
                    /// @src 27:3664:3667  "128"
                    let expr_30056 := 0x80
                    /// @src 27:3625:3667  "(ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                    let _1227 := convert_t_rational_128_by_1_to_t_uint8(expr_30056)
                    let expr_30057 :=
                    shift_right_t_uint256_t_uint8(expr_30055, _1227)

                    /// @src 27:3617:3667  "ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                    var_ratio_29766 := expr_30057
                    let expr_30058 := expr_30057
                    /// @src 27:3589:3667  "if (absTick & 0x80000 != 0) ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                }
                /// @src 27:3686:3690  "tick"
                let _1228 := var_tick_29725
                let expr_30061 := _1228
                /// @src 27:3693:3694  "0"
                let expr_30062 := 0x00
                /// @src 27:3686:3694  "tick > 0"
                let expr_30063 := sgt(cleanup_t_int24(expr_30061), convert_t_rational_0_by_1_to_t_int24(expr_30062))
                /// @src 27:3682:3729  "if (tick > 0) ratio = type(uint256).max / ratio"
                if expr_30063 {
                    /// @src 27:3704:3721  "type(uint256).max"
                    let expr_30069 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 27:3724:3729  "ratio"
                    let _1229 := var_ratio_29766
                    let expr_30070 := _1229
                    /// @src 27:3704:3729  "type(uint256).max / ratio"
                    let expr_30071 := wrapping_div_t_uint256(expr_30069, expr_30070)

                    /// @src 27:3696:3729  "ratio = type(uint256).max / ratio"
                    var_ratio_29766 := expr_30071
                    let expr_30072 := expr_30071
                    /// @src 27:3682:3729  "if (tick > 0) ratio = type(uint256).max / ratio"
                }
                /// @src 27:4079:4084  "ratio"
                let _1230 := var_ratio_29766
                let expr_30078 := _1230
                /// @src 27:4088:4090  "32"
                let expr_30079 := 0x20
                /// @src 27:4079:4090  "ratio >> 32"
                let _1231 := convert_t_rational_32_by_1_to_t_uint8(expr_30079)
                let expr_30080 :=
                shift_right_t_uint256_t_uint8(expr_30078, _1231)

                /// @src 27:4078:4091  "(ratio >> 32)"
                let expr_30081 := expr_30080
                /// @src 27:4095:4100  "ratio"
                let _1232 := var_ratio_29766
                let expr_30082 := _1232
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
            /// @src 72:884:6831  "library LiquidationLogic {..."

        }

        data ".metadata" hex"a26469706673582212203ea376d880ba5b0bc0567d7add41d1de4c514b2adb7fcccec85f99b0ac122c3d64736f6c634300081e0033"
    }

}

