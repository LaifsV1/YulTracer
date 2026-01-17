
/// @use-src 71:"src/libraries/logic/AddPairLogic.sol"
object "AddPairLogic_17784" {
    code {
        /// @src 71:787:7928  "library AddPairLogic {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("AddPairLogic_17784_deployed"), datasize("AddPairLogic_17784_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("AddPairLogic_17784_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 71:787:7928  "library AddPairLogic {..."
        function constructor_AddPairLogic_17784() {

            /// @src 71:787:7928  "library AddPairLogic {..."

        }
        /// @src 71:787:7928  "library AddPairLogic {..."

    }
    /// @use-src 57:"src/libraries/Constants.sol", 61:"src/libraries/Perp.sol", 66:"src/libraries/ScaledAsset.sol", 71:"src/libraries/logic/AddPairLogic.sol"
    object "AddPairLogic_17784_deployed" {
        code {
            /// @src 71:787:7928  "library AddPairLogic {..."
            mstore(64, memoryguard(128))

            let called_via_delegatecall := iszero(eq(loadimmutable("library_deploy_address"), address()))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x1a9cd26b
                {
                    // updateIRMParams(DataType.PairStatus storage,InterestRateModel.IRMParams,InterestRateModel.IRMParams)
                    if iszero(called_via_delegatecall) { revert_error_fb00381150b0555b0bf83aa2d95ae5599abd614bfe490c66e084fe1f454f48e2() }
                    external_fun_updateIRMParams_17524()
                }

                case 0x4b5f4ebf
                {
                    // updatePoolOwner(DataType.PairStatus storage,address)
                    if iszero(called_via_delegatecall) { revert_error_fb00381150b0555b0bf83aa2d95ae5599abd614bfe490c66e084fe1f454f48e2() }
                    external_fun_updatePoolOwner_17433()
                }

                case 0x8951fed6
                {
                    // updateAssetRiskParams(DataType.PairStatus storage,Perp.AssetRiskParams)
                    if iszero(called_via_delegatecall) { revert_error_fb00381150b0555b0bf83aa2d95ae5599abd614bfe490c66e084fe1f454f48e2() }
                    external_fun_updateAssetRiskParams_17480()
                }

                case 0xac826482
                {
                    // addPair(GlobalDataLibrary.GlobalData storage,mapping(address => bool) storage,AddPairLogic.AddPairParams)
                    if iszero(called_via_delegatecall) { revert_error_fb00381150b0555b0bf83aa2d95ae5599abd614bfe490c66e084fe1f454f48e2() }
                    external_fun_addPair_17383()
                }

                case 0xc2921478
                {
                    // updatePriceOracle(DataType.PairStatus storage,address)
                    if iszero(called_via_delegatecall) { revert_error_fb00381150b0555b0bf83aa2d95ae5599abd614bfe490c66e084fe1f454f48e2() }
                    external_fun_updatePriceOracle_17454()
                }

                case 0xda41f678
                {
                    // updateFeeRatio(DataType.PairStatus storage,uint8)
                    if iszero(called_via_delegatecall) { revert_error_fb00381150b0555b0bf83aa2d95ae5599abd614bfe490c66e084fe1f454f48e2() }
                    external_fun_updateFeeRatio_17408()
                }

                case 0xfb135c42
                {
                    // initializeGlobalData(GlobalDataLibrary.GlobalData storage,address)
                    if iszero(called_via_delegatecall) { revert_error_fb00381150b0555b0bf83aa2d95ae5599abd614bfe490c66e084fe1f454f48e2() }
                    external_fun_initializeGlobalData_17252()
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

            function cleanup_t_struct$_PairStatus_$6102_storage_ptr(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_struct$_PairStatus_$6102_storage_ptr(value) {
                if iszero(eq(value, cleanup_t_struct$_PairStatus_$6102_storage_ptr(value))) { revert(0, 0) }
            }

            function abi_decode_t_struct$_PairStatus_$6102_storage_ptr(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_struct$_PairStatus_$6102_storage_ptr(value)
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

            // struct InterestRateModel.IRMParams
            function abi_decode_t_struct$_IRMParams_$13447_memory_ptr(headStart, end) -> value {
                if slt(sub(end, headStart), 0x80) { revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() }
                value := allocate_memory(0x80)

                {
                    // baseRate

                    let offset := 0

                    mstore(add(value, 0x00), abi_decode_t_uint256(add(headStart, offset), end))

                }

                {
                    // kinkRate

                    let offset := 32

                    mstore(add(value, 0x20), abi_decode_t_uint256(add(headStart, offset), end))

                }

                {
                    // slope1

                    let offset := 64

                    mstore(add(value, 0x40), abi_decode_t_uint256(add(headStart, offset), end))

                }

                {
                    // slope2

                    let offset := 96

                    mstore(add(value, 0x60), abi_decode_t_uint256(add(headStart, offset), end))

                }

            }

            function abi_decode_tuple_t_struct$_PairStatus_$6102_storage_ptrt_struct$_IRMParams_$13447_memory_ptrt_struct$_IRMParams_$13447_memory_ptr(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 288) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_PairStatus_$6102_storage_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_struct$_IRMParams_$13447_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 160

                    value2 := abi_decode_t_struct$_IRMParams_$13447_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack_library(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_updateIRMParams_17524() {

                let param_0, param_1, param_2 :=  abi_decode_tuple_t_struct$_PairStatus_$6102_storage_ptrt_struct$_IRMParams_$13447_memory_ptrt_struct$_IRMParams_$13447_memory_ptr(4, calldatasize())
                fun_updateIRMParams_17524(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack_library(memPos  )
                return(memPos, sub(memEnd, memPos))

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

            function abi_decode_tuple_t_struct$_PairStatus_$6102_storage_ptrt_address(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_PairStatus_$6102_storage_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_updatePoolOwner_17433() {

                let param_0, param_1 :=  abi_decode_tuple_t_struct$_PairStatus_$6102_storage_ptrt_address(4, calldatasize())
                fun_updatePoolOwner_17433(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack_library(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_uint128(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffff)
            }

            function validator_revert_t_uint128(value) {
                if iszero(eq(value, cleanup_t_uint128(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint128(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint128(value)
            }

            function cleanup_t_int24(value) -> cleaned {
                cleaned := signextend(2, value)
            }

            function validator_revert_t_int24(value) {
                if iszero(eq(value, cleanup_t_int24(value))) { revert(0, 0) }
            }

            function abi_decode_t_int24(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_int24(value)
            }

            function cleanup_t_uint64(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffff)
            }

            function validator_revert_t_uint64(value) {
                if iszero(eq(value, cleanup_t_uint64(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint64(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint64(value)
            }

            // struct Perp.AssetRiskParams
            function abi_decode_t_struct$_AssetRiskParams_$13579_memory_ptr(headStart, end) -> value {
                if slt(sub(end, headStart), 0xc0) { revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() }
                value := allocate_memory(0xc0)

                {
                    // riskRatio

                    let offset := 0

                    mstore(add(value, 0x00), abi_decode_t_uint128(add(headStart, offset), end))

                }

                {
                    // debtRiskRatio

                    let offset := 32

                    mstore(add(value, 0x20), abi_decode_t_uint128(add(headStart, offset), end))

                }

                {
                    // rangeSize

                    let offset := 64

                    mstore(add(value, 0x40), abi_decode_t_int24(add(headStart, offset), end))

                }

                {
                    // rebalanceThreshold

                    let offset := 96

                    mstore(add(value, 0x60), abi_decode_t_int24(add(headStart, offset), end))

                }

                {
                    // minSlippage

                    let offset := 128

                    mstore(add(value, 0x80), abi_decode_t_uint64(add(headStart, offset), end))

                }

                {
                    // maxSlippage

                    let offset := 160

                    mstore(add(value, 0xa0), abi_decode_t_uint64(add(headStart, offset), end))

                }

            }

            function abi_decode_tuple_t_struct$_PairStatus_$6102_storage_ptrt_struct$_AssetRiskParams_$13579_memory_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 224) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_PairStatus_$6102_storage_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_struct$_AssetRiskParams_$13579_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_updateAssetRiskParams_17480() {

                let param_0, param_1 :=  abi_decode_tuple_t_struct$_PairStatus_$6102_storage_ptrt_struct$_AssetRiskParams_$13579_memory_ptr(4, calldatasize())
                fun_updateAssetRiskParams_17480(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack_library(memPos  )
                return(memPos, sub(memEnd, memPos))

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

            function cleanup_t_mapping$_t_address_$_t_bool_$(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_mapping$_t_address_$_t_bool_$(value) {
                if iszero(eq(value, cleanup_t_mapping$_t_address_$_t_bool_$(value))) { revert(0, 0) }
            }

            function abi_decode_t_mapping$_t_address_$_t_bool_$(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_mapping$_t_address_$_t_bool_$(value)
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

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function validator_revert_t_uint8(value) {
                if iszero(eq(value, cleanup_t_uint8(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint8(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint8(value)
            }

            // struct AddPairLogic.AddPairParams
            function abi_decode_t_struct$_AddPairParams_$17179_memory_ptr(headStart, end) -> value {
                if slt(sub(end, headStart), 0x0280) { revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() }
                value := allocate_memory(0x0120)

                {
                    // marginId

                    let offset := 0

                    mstore(add(value, 0x00), abi_decode_t_address(add(headStart, offset), end))

                }

                {
                    // poolOwner

                    let offset := 32

                    mstore(add(value, 0x20), abi_decode_t_address(add(headStart, offset), end))

                }

                {
                    // uniswapPool

                    let offset := 64

                    mstore(add(value, 0x40), abi_decode_t_address(add(headStart, offset), end))

                }

                {
                    // priceFeed

                    let offset := 96

                    mstore(add(value, 0x60), abi_decode_t_address(add(headStart, offset), end))

                }

                {
                    // whitelistEnabled

                    let offset := 128

                    mstore(add(value, 0x80), abi_decode_t_bool(add(headStart, offset), end))

                }

                {
                    // fee

                    let offset := 160

                    mstore(add(value, 0xa0), abi_decode_t_uint8(add(headStart, offset), end))

                }

                {
                    // assetRiskParams

                    let offset := 192

                    mstore(add(value, 0xc0), abi_decode_t_struct$_AssetRiskParams_$13579_memory_ptr(add(headStart, offset), end))

                }

                {
                    // quoteIrmParams

                    let offset := 384

                    mstore(add(value, 0xe0), abi_decode_t_struct$_IRMParams_$13447_memory_ptr(add(headStart, offset), end))

                }

                {
                    // baseIrmParams

                    let offset := 512

                    mstore(add(value, 0x0100), abi_decode_t_struct$_IRMParams_$13447_memory_ptr(add(headStart, offset), end))

                }

            }

            function abi_decode_tuple_t_struct$_GlobalData_$19302_storage_ptrt_mapping$_t_address_$_t_bool_$t_struct$_AddPairParams_$17179_memory_ptr(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 704) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_GlobalData_$19302_storage_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_mapping$_t_address_$_t_bool_$(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_struct$_AddPairParams_$17179_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack_library(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

            }

            function external_fun_addPair_17383() {

                let param_0, param_1, param_2 :=  abi_decode_tuple_t_struct$_GlobalData_$19302_storage_ptrt_mapping$_t_address_$_t_bool_$t_struct$_AddPairParams_$17179_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_addPair_17383(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_updatePriceOracle_17454() {

                let param_0, param_1 :=  abi_decode_tuple_t_struct$_PairStatus_$6102_storage_ptrt_address(4, calldatasize())
                fun_updatePriceOracle_17454(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack_library(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_struct$_PairStatus_$6102_storage_ptrt_uint8(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_PairStatus_$6102_storage_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_updateFeeRatio_17408() {

                let param_0, param_1 :=  abi_decode_tuple_t_struct$_PairStatus_$6102_storage_ptrt_uint8(4, calldatasize())
                fun_updateFeeRatio_17408(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack_library(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_struct$_GlobalData_$19302_storage_ptrt_address(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_GlobalData_$19302_storage_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_initializeGlobalData_17252() {

                let param_0, param_1 :=  abi_decode_tuple_t_struct$_GlobalData_$19302_storage_ptrt_address(4, calldatasize())
                fun_initializeGlobalData_17252(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack_library(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function panic_error_0x00() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x00)
                revert(0, 0x24)
            }

            function read_from_memoryt_uint256(ptr) -> returnValue {

                let value := cleanup_t_uint256(mload(ptr))

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

            function identity(value) -> ret {
                ret := value
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

            function copy_struct_to_storage_from_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_storage(slot, value) {

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 0)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 32)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 2)
                    let memberSrcPtr := add(value, 64)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 3)
                    let memberSrcPtr := add(value, 96)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

            }

            function update_storage_value_offset_0_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_storage(slot, value_0) {

                copy_struct_to_storage_from_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_storage(slot, value_0)
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

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_t_uint256_to_t_uint256(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            // struct InterestRateModel.IRMParams -> struct InterestRateModel.IRMParams
            function abi_encode_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_memory_ptr_fromStack(value, pos)  {
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

            function abi_encode_tuple_t_uint256_t_struct$_IRMParams_$13447_memory_ptr_t_struct$_IRMParams_$13447_memory_ptr__to_t_uint256_t_struct$_IRMParams_$13447_memory_ptr_t_struct$_IRMParams_$13447_memory_ptr__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 288)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_memory_ptr_fromStack(value1,  add(headStart, 32))

                abi_encode_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_memory_ptr_fromStack(value2,  add(headStart, 160))

            }

            /// @ast-id 17524
            /// @src 71:4523:5023  "function updateIRMParams(..."
            function fun_updateIRMParams_17524(var__pairStatus_17483_slot, var__quoteIrmParams_17486_mpos, var__baseIrmParams_17489_mpos) {

                /// @src 71:4759:4774  "_quoteIrmParams"
                let _1_mpos := var__quoteIrmParams_17486_mpos
                let expr_17493_mpos := _1_mpos
                fun_validateIRMParams_17783(expr_17493_mpos)
                /// @src 71:4803:4817  "_baseIrmParams"
                let _2_mpos := var__baseIrmParams_17489_mpos
                let expr_17497_mpos := _2_mpos
                fun_validateIRMParams_17783(expr_17497_mpos)
                /// @src 71:4863:4878  "_quoteIrmParams"
                let _3_mpos := var__quoteIrmParams_17486_mpos
                let expr_17505_mpos := _3_mpos
                /// @src 71:4829:4840  "_pairStatus"
                let _4_slot := var__pairStatus_17483_slot
                let expr_17500_slot := _4_slot
                /// @src 71:4829:4850  "_pairStatus.quotePool"
                let _5 := add(expr_17500_slot, 3)
                let _6_slot := _5
                let expr_17503_slot := _6_slot
                /// @src 71:4829:4860  "_pairStatus.quotePool.irmParams"
                let _7 := add(expr_17503_slot, 8)
                /// @src 71:4829:4878  "_pairStatus.quotePool.irmParams = _quoteIrmParams"
                update_storage_value_offset_0_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_storage(_7, expr_17505_mpos)
                let _8_slot := _7
                let expr_17506_slot := _8_slot
                /// @src 71:4921:4935  "_baseIrmParams"
                let _9_mpos := var__baseIrmParams_17489_mpos
                let expr_17513_mpos := _9_mpos
                /// @src 71:4888:4899  "_pairStatus"
                let _10_slot := var__pairStatus_17483_slot
                let expr_17508_slot := _10_slot
                /// @src 71:4888:4908  "_pairStatus.basePool"
                let _11 := add(expr_17508_slot, 17)
                let _12_slot := _11
                let expr_17511_slot := _12_slot
                /// @src 71:4888:4918  "_pairStatus.basePool.irmParams"
                let _13 := add(expr_17511_slot, 8)
                /// @src 71:4888:4935  "_pairStatus.basePool.irmParams = _baseIrmParams"
                update_storage_value_offset_0_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_storage(_13, expr_17513_mpos)
                let _14_slot := _13
                let expr_17514_slot := _14_slot
                /// @src 71:4968:4979  "_pairStatus"
                let _15_slot := var__pairStatus_17483_slot
                let expr_17517_slot := _15_slot
                /// @src 71:4968:4982  "_pairStatus.id"
                let _16 := add(expr_17517_slot, 0)
                let _17 := read_from_storage_split_offset_0_t_uint256(_16)
                let expr_17518 := _17
                /// @src 71:4984:4999  "_quoteIrmParams"
                let _18_mpos := var__quoteIrmParams_17486_mpos
                let expr_17519_mpos := _18_mpos
                /// @src 71:5001:5015  "_baseIrmParams"
                let _19_mpos := var__baseIrmParams_17489_mpos
                let expr_17520_mpos := _19_mpos
                /// @src 71:4951:5016  "IRMParamsUpdated(_pairStatus.id, _quoteIrmParams, _baseIrmParams)"
                let _20 := 0x1c30ef2fd5ebfa8ce15b3911c201569545d1887fb5822d48843b2f458cdaac3b
                {
                    let _21 := allocate_unbounded()
                    let _22 := abi_encode_tuple_t_uint256_t_struct$_IRMParams_$13447_memory_ptr_t_struct$_IRMParams_$13447_memory_ptr__to_t_uint256_t_struct$_IRMParams_$13447_memory_ptr_t_struct$_IRMParams_$13447_memory_ptr__fromStack(_21 , expr_17518, expr_17519_mpos, expr_17520_mpos)
                    log1(_21, sub(_22, _21) , _20)
                }
            }
            /// @src 71:787:7928  "library AddPairLogic {..."

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

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_uint256_t_address__to_t_uint256_t_address__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

            }

            /// @ast-id 17433
            /// @src 71:3747:3993  "function updatePoolOwner(DataType.PairStatus storage _pairStatus, address _poolOwner) external {..."
            function fun_updatePoolOwner_17433(var__pairStatus_17411_slot, var__poolOwner_17413) {

                /// @src 71:3870:3880  "_poolOwner"
                let _23 := var__poolOwner_17413
                let expr_17417 := _23
                fun_validatePoolOwner_17716(expr_17417)
                /// @src 71:3916:3926  "_poolOwner"
                let _24 := var__poolOwner_17413
                let expr_17423 := _24
                /// @src 71:3892:3903  "_pairStatus"
                let _25_slot := var__pairStatus_17411_slot
                let expr_17420_slot := _25_slot
                /// @src 71:3892:3913  "_pairStatus.poolOwner"
                let _26 := add(expr_17420_slot, 2)
                /// @src 71:3892:3926  "_pairStatus.poolOwner = _poolOwner"
                update_storage_value_offset_0_t_address_to_t_address(_26, expr_17423)
                let expr_17424 := expr_17423
                /// @src 71:3959:3970  "_pairStatus"
                let _27_slot := var__pairStatus_17411_slot
                let expr_17427_slot := _27_slot
                /// @src 71:3959:3973  "_pairStatus.id"
                let _28 := add(expr_17427_slot, 0)
                let _29 := read_from_storage_split_offset_0_t_uint256(_28)
                let expr_17428 := _29
                /// @src 71:3975:3985  "_poolOwner"
                let _30 := var__poolOwner_17413
                let expr_17429 := _30
                /// @src 71:3942:3986  "PoolOwnerUpdated(_pairStatus.id, _poolOwner)"
                let _31 := 0xd189f6f0bdc1a0f5448a0caaf7fe4ea125788c675f33c05ab8ecf0c120e4080f
                {
                    let _32 := allocate_unbounded()
                    let _33 := abi_encode_tuple_t_uint256_t_address__to_t_uint256_t_address__fromStack(_32 , expr_17428, expr_17429)
                    log1(_32, sub(_33, _32) , _31)
                }
            }
            /// @src 71:787:7928  "library AddPairLogic {..."

            function read_from_memoryt_uint128(ptr) -> returnValue {

                let value := cleanup_t_uint128(mload(ptr))

                returnValue :=

                value

            }

            function update_byte_slice_16_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint128_to_t_uint128(value) -> converted {
                converted := cleanup_t_uint128(identity(cleanup_t_uint128(value)))
            }

            function prepare_store_t_uint128(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_uint128_to_t_uint128(slot, value_0) {
                let convertedValue_0 := convert_t_uint128_to_t_uint128(value_0)
                sstore(slot, update_byte_slice_16_shift_0(sload(slot), prepare_store_t_uint128(convertedValue_0)))
            }

            function shift_left_128(value) -> newValue {
                newValue :=

                shl(128, value)

            }

            function update_byte_slice_16_shift_16(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000
                toInsert := shift_left_128(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_16_t_uint128_to_t_uint128(slot, value_0) {
                let convertedValue_0 := convert_t_uint128_to_t_uint128(value_0)
                sstore(slot, update_byte_slice_16_shift_16(sload(slot), prepare_store_t_uint128(convertedValue_0)))
            }

            function read_from_memoryt_int24(ptr) -> returnValue {

                let value := cleanup_t_int24(mload(ptr))

                returnValue :=

                value

            }

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

            function read_from_memoryt_uint64(ptr) -> returnValue {

                let value := cleanup_t_uint64(mload(ptr))

                returnValue :=

                value

            }

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

            function shift_left_112(value) -> newValue {
                newValue :=

                shl(112, value)

            }

            function update_byte_slice_8_shift_14(value, toInsert) -> result {
                let mask := 0xffffffffffffffff0000000000000000000000000000
                toInsert := shift_left_112(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_14_t_uint64_to_t_uint64(slot, value_0) {
                let convertedValue_0 := convert_t_uint64_to_t_uint64(value_0)
                sstore(slot, update_byte_slice_8_shift_14(sload(slot), prepare_store_t_uint64(convertedValue_0)))
            }

            function copy_struct_to_storage_from_t_struct$_AssetRiskParams_$13579_memory_ptr_to_t_struct$_AssetRiskParams_$13579_storage(slot, value) {

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 0)

                    let memberValue_0 := read_from_memoryt_uint128(memberSrcPtr)

                    update_storage_value_offset_0_t_uint128_to_t_uint128(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 32)

                    let memberValue_0 := read_from_memoryt_uint128(memberSrcPtr)

                    update_storage_value_offset_16_t_uint128_to_t_uint128(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 64)

                    let memberValue_0 := read_from_memoryt_int24(memberSrcPtr)

                    update_storage_value_offset_0_t_int24_to_t_int24(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 96)

                    let memberValue_0 := read_from_memoryt_int24(memberSrcPtr)

                    update_storage_value_offset_3_t_int24_to_t_int24(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 128)

                    let memberValue_0 := read_from_memoryt_uint64(memberSrcPtr)

                    update_storage_value_offset_6_t_uint64_to_t_uint64(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 160)

                    let memberValue_0 := read_from_memoryt_uint64(memberSrcPtr)

                    update_storage_value_offset_14_t_uint64_to_t_uint64(memberSlot, memberValue_0)

                }

            }

            function update_storage_value_offset_0_t_struct$_AssetRiskParams_$13579_memory_ptr_to_t_struct$_AssetRiskParams_$13579_storage(slot, value_0) {

                copy_struct_to_storage_from_t_struct$_AssetRiskParams_$13579_memory_ptr_to_t_struct$_AssetRiskParams_$13579_storage(slot, value_0)
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
            function abi_encode_t_struct$_AssetRiskParams_$13579_memory_ptr_to_t_struct$_AssetRiskParams_$13579_memory_ptr_fromStack(value, pos)  {
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

            function abi_encode_tuple_t_uint256_t_struct$_AssetRiskParams_$13579_memory_ptr__to_t_uint256_t_struct$_AssetRiskParams_$13579_memory_ptr__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 224)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_struct$_AssetRiskParams_$13579_memory_ptr_to_t_struct$_AssetRiskParams_$13579_memory_ptr_fromStack(value1,  add(headStart, 32))

            }

            /// @ast-id 17480
            /// @src 71:4221:4517  "function updateAssetRiskParams(DataType.PairStatus storage _pairStatus, Perp.AssetRiskParams memory _riskParams)..."
            function fun_updateAssetRiskParams_17480(var__pairStatus_17457_slot, var__riskParams_17460_mpos) {

                /// @src 71:4384:4395  "_riskParams"
                let _34_mpos := var__riskParams_17460_mpos
                let expr_17464_mpos := _34_mpos
                fun_validateRiskParams_17751(expr_17464_mpos)
                /// @src 71:4432:4443  "_riskParams"
                let _35_mpos := var__riskParams_17460_mpos
                let expr_17470_mpos := _35_mpos
                /// @src 71:4407:4418  "_pairStatus"
                let _36_slot := var__pairStatus_17457_slot
                let expr_17467_slot := _36_slot
                /// @src 71:4407:4429  "_pairStatus.riskParams"
                let _37 := add(expr_17467_slot, 31)
                /// @src 71:4407:4443  "_pairStatus.riskParams = _riskParams"
                update_storage_value_offset_0_t_struct$_AssetRiskParams_$13579_memory_ptr_to_t_struct$_AssetRiskParams_$13579_storage(_37, expr_17470_mpos)
                let _38_slot := _37
                let expr_17471_slot := _38_slot
                /// @src 71:4482:4493  "_pairStatus"
                let _39_slot := var__pairStatus_17457_slot
                let expr_17474_slot := _39_slot
                /// @src 71:4482:4496  "_pairStatus.id"
                let _40 := add(expr_17474_slot, 0)
                let _41 := read_from_storage_split_offset_0_t_uint256(_40)
                let expr_17475 := _41
                /// @src 71:4498:4509  "_riskParams"
                let _42_mpos := var__riskParams_17460_mpos
                let expr_17476_mpos := _42_mpos
                /// @src 71:4459:4510  "AssetRiskParamsUpdated(_pairStatus.id, _riskParams)"
                let _43 := 0x2629b119f06606374582e6c88170c0a494bde68b5e739e3afa8f07c29159634d
                {
                    let _44 := allocate_unbounded()
                    let _45 := abi_encode_tuple_t_uint256_t_struct$_AssetRiskParams_$13579_memory_ptr__to_t_uint256_t_struct$_AssetRiskParams_$13579_memory_ptr__fromStack(_44 , expr_17475, expr_17476_mpos)
                    log1(_44, sub(_45, _44) , _43)
                }
            }
            /// @src 71:787:7928  "library AddPairLogic {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function cleanup_t_rational_18446744073709551616_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_18446744073709551616_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_18446744073709551616_by_1(value)))
            }

            /// @src 57:195:253  "uint256 internal constant MAX_PAIRS = 18446744073709551616"
            function constant_MAX_PAIRS_30279() -> ret {
                /// @src 57:233:253  "18446744073709551616"
                let expr_30278 := 0x010000000000000000
                let _51 := convert_t_rational_18446744073709551616_by_1_to_t_uint256(expr_30278)

                ret := _51
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function store_literal_in_memory_3ec335b2a3e6ce3b7ee4b02f6d7f8217510b4cbc561548130d59689dfab0769f(memPtr) {

                mstore(add(memPtr, 0), "MAXP")

            }

            function abi_encode_t_stringliteral_3ec335b2a3e6ce3b7ee4b02f6d7f8217510b4cbc561548130d59689dfab0769f_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 4)
                store_literal_in_memory_3ec335b2a3e6ce3b7ee4b02f6d7f8217510b4cbc561548130d59689dfab0769f(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_3ec335b2a3e6ce3b7ee4b02f6d7f8217510b4cbc561548130d59689dfab0769f__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_3ec335b2a3e6ce3b7ee4b02f6d7f8217510b4cbc561548130d59689dfab0769f_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_3ec335b2a3e6ce3b7ee4b02f6d7f8217510b4cbc561548130d59689dfab0769f(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_3ec335b2a3e6ce3b7ee4b02f6d7f8217510b4cbc561548130d59689dfab0769f__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function read_from_memoryt_address(ptr) -> returnValue {

                let value := cleanup_t_address(mload(ptr))

                returnValue :=

                value

            }

            function convert_t_uint160_to_t_contract$_IUniswapV3Pool_$13422(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IUniswapV3Pool_$13422(value)
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

            function convert_t_uint160_to_t_contract$_IUniswapV3Factory_$32995(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IUniswapV3Factory_$32995(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IUniswapV3Factory_$32995(value)
            }

            function convert_t_contract$_IUniswapV3Factory_$32995_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
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

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
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

            function abi_decode_tuple_t_uint24_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint24_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_uint24_to_t_uint24_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint24(value))
            }

            function abi_encode_tuple_t_address_t_address_t_uint24__to_t_address_t_address_t_uint24__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint24_to_t_uint24_fromStack(value2,  add(headStart, 64))

            }

            function store_literal_in_memory_f2ae31beec64484c8c07847f3b0c46e7b0b495ac766bb2fe8d1d28804232d20f(memPtr) {

                mstore(add(memPtr, 0), "C3")

            }

            function abi_encode_t_stringliteral_f2ae31beec64484c8c07847f3b0c46e7b0b495ac766bb2fe8d1d28804232d20f_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_f2ae31beec64484c8c07847f3b0c46e7b0b495ac766bb2fe8d1d28804232d20f(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_f2ae31beec64484c8c07847f3b0c46e7b0b495ac766bb2fe8d1d28804232d20f__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_f2ae31beec64484c8c07847f3b0c46e7b0b495ac766bb2fe8d1d28804232d20f_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_f2ae31beec64484c8c07847f3b0c46e7b0b495ac766bb2fe8d1d28804232d20f(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_f2ae31beec64484c8c07847f3b0c46e7b0b495ac766bb2fe8d1d28804232d20f__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
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

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            function abi_encode_tuple_t_uint256_t_address_t_address__to_t_uint256_t_address_t_address__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_address_to_t_address_fromStack(value2,  add(headStart, 64))

            }

            /// @ast-id 17383
            /// @src 71:2056:3499  "function addPair(..."
            function fun_addPair_17383(var__global_17256_slot, var_allowedUniswapPools_17260_slot, var__addPairParam_17263_mpos) -> var_pairId_17266 {
                /// @src 71:2257:2271  "uint256 pairId"
                let zero_t_uint256_46 := zero_value_for_split_t_uint256()
                var_pairId_17266 := zero_t_uint256_46

                /// @src 71:2292:2299  "_global"
                let _47_slot := var__global_17256_slot
                let expr_17269_slot := _47_slot
                /// @src 71:2292:2310  "_global.pairsCount"
                let _48 := add(expr_17269_slot, 0)
                let _49 := read_from_storage_split_offset_0_t_uint256(_48)
                let expr_17270 := _49
                /// @src 71:2283:2310  "pairId = _global.pairsCount"
                var_pairId_17266 := expr_17270
                let expr_17271 := expr_17270
                /// @src 71:2329:2335  "pairId"
                let _50 := var_pairId_17266
                let expr_17274 := _50
                /// @src 71:2338:2347  "Constants"
                let expr_17275_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 71:2338:2357  "Constants.MAX_PAIRS"
                let expr_17276 := constant_MAX_PAIRS_30279()
                /// @src 71:2329:2357  "pairId < Constants.MAX_PAIRS"
                let expr_17277 := lt(cleanup_t_uint256(expr_17274), cleanup_t_uint256(expr_17276))
                /// @src 71:2321:2366  "require(pairId < Constants.MAX_PAIRS, \"MAXP\")"
                require_helper_t_stringliteral_3ec335b2a3e6ce3b7ee4b02f6d7f8217510b4cbc561548130d59689dfab0769f(expr_17277)
                /// @src 71:2421:2434  "_addPairParam"
                let _52_mpos := var__addPairParam_17263_mpos
                let expr_17285_mpos := _52_mpos
                /// @src 71:2421:2446  "_addPairParam.uniswapPool"
                let _53 := add(expr_17285_mpos, 64)
                let _54 := read_from_memoryt_address(_53)
                let expr_17286 := _54
                /// @src 71:2406:2447  "IUniswapV3Pool(_addPairParam.uniswapPool)"
                let expr_17287_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_17286)
                /// @src 71:2377:2447  "IUniswapV3Pool uniswapPool = IUniswapV3Pool(_addPairParam.uniswapPool)"
                let var_uniswapPool_17283_address := expr_17287_address
                /// @src 71:2487:2500  "_addPairParam"
                let _55_mpos := var__addPairParam_17263_mpos
                let expr_17291_mpos := _55_mpos
                /// @src 71:2487:2509  "_addPairParam.marginId"
                let _56 := add(expr_17291_mpos, 0)
                let _57 := read_from_memoryt_address(_56)
                let expr_17292 := _57
                /// @src 71:2458:2509  "address stableTokenAddress = _addPairParam.marginId"
                let var_stableTokenAddress_17290 := expr_17292
                /// @src 71:2575:2582  "_global"
                let _58_slot := var__global_17256_slot
                let expr_17298_slot := _58_slot
                /// @src 71:2575:2597  "_global.uniswapFactory"
                let _59 := add(expr_17298_slot, 2)
                let _60 := read_from_storage_split_offset_0_t_address(_59)
                let expr_17299 := _60
                /// @src 71:2557:2598  "IUniswapV3Factory(_global.uniswapFactory)"
                let expr_17300_address := convert_t_address_to_t_contract$_IUniswapV3Factory_$32995(expr_17299)
                /// @src 71:2520:2598  "IUniswapV3Factory uniswapV3Factory = IUniswapV3Factory(_global.uniswapFactory)"
                let var_uniswapV3Factory_17296_address := expr_17300_address
                /// @src 71:2694:2710  "uniswapV3Factory"
                let _61_address := var_uniswapV3Factory_17296_address
                let expr_17302_address := _61_address
                /// @src 71:2694:2718  "uniswapV3Factory.getPool"
                let expr_17303_address := convert_t_contract$_IUniswapV3Factory_$32995_to_t_address(expr_17302_address)
                let expr_17303_functionSelector := 0x1698ee82
                /// @src 71:2719:2730  "uniswapPool"
                let _62_address := var_uniswapPool_17283_address
                let expr_17304_address := _62_address
                /// @src 71:2719:2737  "uniswapPool.token0"
                let expr_17305_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_17304_address)
                let expr_17305_functionSelector := 0x0dfe1681
                /// @src 71:2719:2739  "uniswapPool.token0()"

                // storage for arguments and returned data
                let _63 := allocate_unbounded()
                mstore(_63, shift_left_224(expr_17305_functionSelector))
                let _64 := abi_encode_tuple__to__fromStack(add(_63, 4) )

                let _65 := staticcall(gas(), expr_17305_address,  _63, sub(_64, _63), _63, 32)

                if iszero(_65) { revert_forward_1() }

                let expr_17306
                if _65 {

                    let _66 := 32

                    if gt(_66, returndatasize()) {
                        _66 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_63, _66)

                    // decode return parameters from external try-call into retVars
                    expr_17306 :=  abi_decode_tuple_t_address_fromMemory(_63, add(_63, _66))
                }
                /// @src 71:2741:2752  "uniswapPool"
                let _67_address := var_uniswapPool_17283_address
                let expr_17307_address := _67_address
                /// @src 71:2741:2759  "uniswapPool.token1"
                let expr_17308_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_17307_address)
                let expr_17308_functionSelector := 0xd21220a7
                /// @src 71:2741:2761  "uniswapPool.token1()"

                // storage for arguments and returned data
                let _68 := allocate_unbounded()
                mstore(_68, shift_left_224(expr_17308_functionSelector))
                let _69 := abi_encode_tuple__to__fromStack(add(_68, 4) )

                let _70 := staticcall(gas(), expr_17308_address,  _68, sub(_69, _68), _68, 32)

                if iszero(_70) { revert_forward_1() }

                let expr_17309
                if _70 {

                    let _71 := 32

                    if gt(_71, returndatasize()) {
                        _71 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_68, _71)

                    // decode return parameters from external try-call into retVars
                    expr_17309 :=  abi_decode_tuple_t_address_fromMemory(_68, add(_68, _71))
                }
                /// @src 71:2763:2774  "uniswapPool"
                let _72_address := var_uniswapPool_17283_address
                let expr_17310_address := _72_address
                /// @src 71:2763:2778  "uniswapPool.fee"
                let expr_17311_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_17310_address)
                let expr_17311_functionSelector := 0xddca3f43
                /// @src 71:2763:2780  "uniswapPool.fee()"

                // storage for arguments and returned data
                let _73 := allocate_unbounded()
                mstore(_73, shift_left_224(expr_17311_functionSelector))
                let _74 := abi_encode_tuple__to__fromStack(add(_73, 4) )

                let _75 := staticcall(gas(), expr_17311_address,  _73, sub(_74, _73), _73, 32)

                if iszero(_75) { revert_forward_1() }

                let expr_17312
                if _75 {

                    let _76 := 32

                    if gt(_76, returndatasize()) {
                        _76 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_73, _76)

                    // decode return parameters from external try-call into retVars
                    expr_17312 :=  abi_decode_tuple_t_uint24_fromMemory(_73, add(_73, _76))
                }
                /// @src 71:2694:2781  "uniswapV3Factory.getPool(uniswapPool.token0(), uniswapPool.token1(), uniswapPool.fee())"

                // storage for arguments and returned data
                let _77 := allocate_unbounded()
                mstore(_77, shift_left_224(expr_17303_functionSelector))
                let _78 := abi_encode_tuple_t_address_t_address_t_uint24__to_t_address_t_address_t_uint24__fromStack(add(_77, 4) , expr_17306, expr_17309, expr_17312)

                let _79 := staticcall(gas(), expr_17303_address,  _77, sub(_78, _77), _77, 32)

                if iszero(_79) { revert_forward_1() }

                let expr_17313
                if _79 {

                    let _80 := 32

                    if gt(_80, returndatasize()) {
                        _80 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_77, _80)

                    // decode return parameters from external try-call into retVars
                    expr_17313 :=  abi_decode_tuple_t_address_fromMemory(_77, add(_77, _80))
                }
                /// @src 71:2801:2814  "_addPairParam"
                let _81_mpos := var__addPairParam_17263_mpos
                let expr_17314_mpos := _81_mpos
                /// @src 71:2801:2826  "_addPairParam.uniswapPool"
                let _82 := add(expr_17314_mpos, 64)
                let _83 := read_from_memoryt_address(_82)
                let expr_17315 := _83
                /// @src 71:2694:2826  "uniswapV3Factory.getPool(uniswapPool.token0(), uniswapPool.token1(), uniswapPool.fee())..."
                let expr_17316 := iszero(eq(cleanup_t_address(expr_17313), cleanup_t_address(expr_17315)))
                /// @src 71:2677:2889  "if (..."
                if expr_17316 {
                    /// @src 71:2858:2878  "InvalidUniswapPool()"
                    {

                        let _85 := 0

                        mstore(_85, 0x952e09e800000000000000000000000000000000000000000000000000000000)
                        let _84 := abi_encode_tuple__to__fromStack(add(_85, 4) )
                        revert(_85, sub(_84, _85))
                    }/// @src 71:2677:2889  "if (..."
                }
                /// @src 71:2907:2918  "uniswapPool"
                let _86_address := var_uniswapPool_17283_address
                let expr_17323_address := _86_address
                /// @src 71:2907:2925  "uniswapPool.token0"
                let expr_17324_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_17323_address)
                let expr_17324_functionSelector := 0x0dfe1681
                /// @src 71:2907:2927  "uniswapPool.token0()"

                // storage for arguments and returned data
                let _87 := allocate_unbounded()
                mstore(_87, shift_left_224(expr_17324_functionSelector))
                let _88 := abi_encode_tuple__to__fromStack(add(_87, 4) )

                let _89 := staticcall(gas(), expr_17324_address,  _87, sub(_88, _87), _87, 32)

                if iszero(_89) { revert_forward_1() }

                let expr_17325
                if _89 {

                    let _90 := 32

                    if gt(_90, returndatasize()) {
                        _90 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_87, _90)

                    // decode return parameters from external try-call into retVars
                    expr_17325 :=  abi_decode_tuple_t_address_fromMemory(_87, add(_87, _90))
                }
                /// @src 71:2931:2949  "stableTokenAddress"
                let _91 := var_stableTokenAddress_17290
                let expr_17326 := _91
                /// @src 71:2907:2949  "uniswapPool.token0() == stableTokenAddress"
                let expr_17327 := eq(cleanup_t_address(expr_17325), cleanup_t_address(expr_17326))
                /// @src 71:2907:2995  "uniswapPool.token0() == stableTokenAddress || uniswapPool.token1() == stableTokenAddress"
                let expr_17333 := expr_17327
                if iszero(expr_17333) {
                    /// @src 71:2953:2964  "uniswapPool"
                    let _92_address := var_uniswapPool_17283_address
                    let expr_17328_address := _92_address
                    /// @src 71:2953:2971  "uniswapPool.token1"
                    let expr_17329_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_17328_address)
                    let expr_17329_functionSelector := 0xd21220a7
                    /// @src 71:2953:2973  "uniswapPool.token1()"

                    // storage for arguments and returned data
                    let _93 := allocate_unbounded()
                    mstore(_93, shift_left_224(expr_17329_functionSelector))
                    let _94 := abi_encode_tuple__to__fromStack(add(_93, 4) )

                    let _95 := staticcall(gas(), expr_17329_address,  _93, sub(_94, _93), _93, 32)

                    if iszero(_95) { revert_forward_1() }

                    let expr_17330
                    if _95 {

                        let _96 := 32

                        if gt(_96, returndatasize()) {
                            _96 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_93, _96)

                        // decode return parameters from external try-call into retVars
                        expr_17330 :=  abi_decode_tuple_t_address_fromMemory(_93, add(_93, _96))
                    }
                    /// @src 71:2977:2995  "stableTokenAddress"
                    let _97 := var_stableTokenAddress_17290
                    let expr_17331 := _97
                    /// @src 71:2953:2995  "uniswapPool.token1() == stableTokenAddress"
                    let expr_17332 := eq(cleanup_t_address(expr_17330), cleanup_t_address(expr_17331))
                    /// @src 71:2907:2995  "uniswapPool.token0() == stableTokenAddress || uniswapPool.token1() == stableTokenAddress"
                    expr_17333 := expr_17332
                }
                /// @src 71:2899:3002  "require(uniswapPool.token0() == stableTokenAddress || uniswapPool.token1() == stableTokenAddress, \"C3\")"
                require_helper_t_stringliteral_f2ae31beec64484c8c07847f3b0c46e7b0b495ac766bb2fe8d1d28804232d20f(expr_17333)
                /// @src 71:3032:3043  "uniswapPool"
                let _98_address := var_uniswapPool_17283_address
                let expr_17339_address := _98_address
                /// @src 71:3032:3050  "uniswapPool.token0"
                let expr_17340_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_17339_address)
                let expr_17340_functionSelector := 0x0dfe1681
                /// @src 71:3032:3052  "uniswapPool.token0()"

                // storage for arguments and returned data
                let _99 := allocate_unbounded()
                mstore(_99, shift_left_224(expr_17340_functionSelector))
                let _100 := abi_encode_tuple__to__fromStack(add(_99, 4) )

                let _101 := staticcall(gas(), expr_17340_address,  _99, sub(_100, _99), _99, 32)

                if iszero(_101) { revert_forward_1() }

                let expr_17341
                if _101 {

                    let _102 := 32

                    if gt(_102, returndatasize()) {
                        _102 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_99, _102)

                    // decode return parameters from external try-call into retVars
                    expr_17341 :=  abi_decode_tuple_t_address_fromMemory(_99, add(_99, _102))
                }
                /// @src 71:3056:3074  "stableTokenAddress"
                let _103 := var_stableTokenAddress_17290
                let expr_17342 := _103
                /// @src 71:3032:3074  "uniswapPool.token0() == stableTokenAddress"
                let expr_17343 := eq(cleanup_t_address(expr_17341), cleanup_t_address(expr_17342))
                /// @src 71:3013:3074  "bool isQuoteZero = uniswapPool.token0() == stableTokenAddress"
                let var_isQuoteZero_17338 := expr_17343
                /// @src 71:3115:3133  "stableTokenAddress"
                let _104 := var_stableTokenAddress_17290
                let expr_17346 := _104
                /// @src 71:3147:3154  "_global"
                let _105_slot := var__global_17256_slot
                let expr_17347_slot := _105_slot
                /// @src 71:3147:3160  "_global.pairs"
                let _106 := add(expr_17347_slot, 3)
                let _107_slot := _106
                let expr_17348_slot := _107_slot
                /// @src 71:3174:3180  "pairId"
                let _108 := var_pairId_17266
                let expr_17349 := _108
                /// @src 71:3194:3205  "isQuoteZero"
                let _109 := var_isQuoteZero_17338
                let expr_17350 := _109
                /// @src 71:3194:3251  "isQuoteZero ? uniswapPool.token1() : uniswapPool.token0()"
                let expr_17357
                switch expr_17350
                case 0 {
                    /// @src 71:3231:3242  "uniswapPool"
                    let _110_address := var_uniswapPool_17283_address
                    let expr_17354_address := _110_address
                    /// @src 71:3231:3249  "uniswapPool.token0"
                    let expr_17355_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_17354_address)
                    let expr_17355_functionSelector := 0x0dfe1681
                    /// @src 71:3231:3251  "uniswapPool.token0()"

                    // storage for arguments and returned data
                    let _111 := allocate_unbounded()
                    mstore(_111, shift_left_224(expr_17355_functionSelector))
                    let _112 := abi_encode_tuple__to__fromStack(add(_111, 4) )

                    let _113 := staticcall(gas(), expr_17355_address,  _111, sub(_112, _111), _111, 32)

                    if iszero(_113) { revert_forward_1() }

                    let expr_17356
                    if _113 {

                        let _114 := 32

                        if gt(_114, returndatasize()) {
                            _114 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_111, _114)

                        // decode return parameters from external try-call into retVars
                        expr_17356 :=  abi_decode_tuple_t_address_fromMemory(_111, add(_111, _114))
                    }
                    /// @src 71:3194:3251  "isQuoteZero ? uniswapPool.token1() : uniswapPool.token0()"
                    expr_17357 := expr_17356
                }
                default {
                    /// @src 71:3208:3219  "uniswapPool"
                    let _115_address := var_uniswapPool_17283_address
                    let expr_17351_address := _115_address
                    /// @src 71:3208:3226  "uniswapPool.token1"
                    let expr_17352_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_17351_address)
                    let expr_17352_functionSelector := 0xd21220a7
                    /// @src 71:3208:3228  "uniswapPool.token1()"

                    // storage for arguments and returned data
                    let _116 := allocate_unbounded()
                    mstore(_116, shift_left_224(expr_17352_functionSelector))
                    let _117 := abi_encode_tuple__to__fromStack(add(_116, 4) )

                    let _118 := staticcall(gas(), expr_17352_address,  _116, sub(_117, _116), _116, 32)

                    if iszero(_118) { revert_forward_1() }

                    let expr_17353
                    if _118 {

                        let _119 := 32

                        if gt(_119, returndatasize()) {
                            _119 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_116, _119)

                        // decode return parameters from external try-call into retVars
                        expr_17353 :=  abi_decode_tuple_t_address_fromMemory(_116, add(_116, _119))
                    }
                    /// @src 71:3194:3251  "isQuoteZero ? uniswapPool.token1() : uniswapPool.token0()"
                    expr_17357 := expr_17353
                }
                /// @src 71:3265:3276  "isQuoteZero"
                let _120 := var_isQuoteZero_17338
                let expr_17358 := _120
                /// @src 71:3290:3303  "_addPairParam"
                let _121_mpos := var__addPairParam_17263_mpos
                let expr_17359_mpos := _121_mpos
                fun__storePairStatus_17641(expr_17346, expr_17348_slot, expr_17349, expr_17357, expr_17358, expr_17359_mpos)
                /// @src 71:3373:3377  "true"
                let expr_17366 := 0x01
                /// @src 71:3324:3343  "allowedUniswapPools"
                let _122_slot := var_allowedUniswapPools_17260_slot
                let expr_17362_slot := _122_slot
                /// @src 71:3344:3357  "_addPairParam"
                let _123_mpos := var__addPairParam_17263_mpos
                let expr_17363_mpos := _123_mpos
                /// @src 71:3344:3369  "_addPairParam.uniswapPool"
                let _124 := add(expr_17363_mpos, 64)
                let _125 := read_from_memoryt_address(_124)
                let expr_17364 := _125
                /// @src 71:3324:3370  "allowedUniswapPools[_addPairParam.uniswapPool]"
                let _126 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_17362_slot,expr_17364)
                /// @src 71:3324:3377  "allowedUniswapPools[_addPairParam.uniswapPool] = true"
                update_storage_value_offset_0_t_bool_to_t_bool(_126, expr_17366)
                let expr_17367 := expr_17366
                /// @src 71:3388:3395  "_global"
                let _127_slot := var__global_17256_slot
                let expr_17369_slot := _127_slot
                /// @src 71:3388:3406  "_global.pairsCount"
                let _128 := add(expr_17369_slot, 0)
                /// @src 71:3388:3408  "_global.pairsCount++"
                let _130 := read_from_storage_split_offset_0_t_uint256(_128)
                let _129 := increment_t_uint256(_130)
                update_storage_value_offset_0_t_uint256_to_t_uint256(_128, _129)
                let expr_17372 := _130
                /// @src 71:3434:3440  "pairId"
                let _131 := var_pairId_17266
                let expr_17375 := _131
                /// @src 71:3442:3455  "_addPairParam"
                let _132_mpos := var__addPairParam_17263_mpos
                let expr_17376_mpos := _132_mpos
                /// @src 71:3442:3464  "_addPairParam.marginId"
                let _133 := add(expr_17376_mpos, 0)
                let _134 := read_from_memoryt_address(_133)
                let expr_17377 := _134
                /// @src 71:3466:3479  "_addPairParam"
                let _135_mpos := var__addPairParam_17263_mpos
                let expr_17378_mpos := _135_mpos
                /// @src 71:3466:3491  "_addPairParam.uniswapPool"
                let _136 := add(expr_17378_mpos, 64)
                let _137 := read_from_memoryt_address(_136)
                let expr_17379 := _137
                /// @src 71:3424:3492  "PairAdded(pairId, _addPairParam.marginId, _addPairParam.uniswapPool)"
                let _138 := 0xbdf0e5eca458f21fa7f881795ad7abfa4ba00bf6ef9fd52b07fcd6d78e557de3
                {
                    let _139 := allocate_unbounded()
                    let _140 := abi_encode_tuple_t_uint256_t_address_t_address__to_t_uint256_t_address_t_address__fromStack(_139 , expr_17375, expr_17377, expr_17379)
                    log1(_139, sub(_140, _139) , _138)
                }
            }
            /// @src 71:787:7928  "library AddPairLogic {..."

            /// @ast-id 17454
            /// @src 71:3999:4215  "function updatePriceOracle(DataType.PairStatus storage _pairStatus, address _priceOracle) external {..."
            function fun_updatePriceOracle_17454(var__pairStatus_17436_slot, var__priceOracle_17438) {

                /// @src 71:4132:4144  "_priceOracle"
                let _141 := var__priceOracle_17438
                let expr_17444 := _141
                /// @src 71:4108:4119  "_pairStatus"
                let _142_slot := var__pairStatus_17436_slot
                let expr_17441_slot := _142_slot
                /// @src 71:4108:4129  "_pairStatus.priceFeed"
                let _143 := add(expr_17441_slot, 50)
                /// @src 71:4108:4144  "_pairStatus.priceFeed = _priceOracle"
                update_storage_value_offset_0_t_address_to_t_address(_143, expr_17444)
                let expr_17445 := expr_17444
                /// @src 71:4179:4190  "_pairStatus"
                let _144_slot := var__pairStatus_17436_slot
                let expr_17448_slot := _144_slot
                /// @src 71:4179:4193  "_pairStatus.id"
                let _145 := add(expr_17448_slot, 0)
                let _146 := read_from_storage_split_offset_0_t_uint256(_145)
                let expr_17449 := _146
                /// @src 71:4195:4207  "_priceOracle"
                let _147 := var__priceOracle_17438
                let expr_17450 := _147
                /// @src 71:4160:4208  "PriceOracleUpdated(_pairStatus.id, _priceOracle)"
                let _148 := 0x531e46962eee40e771569f155e9706a5189635763c3cd2d67deb048d931207de
                {
                    let _149 := allocate_unbounded()
                    let _150 := abi_encode_tuple_t_uint256_t_address__to_t_uint256_t_address__fromStack(_149 , expr_17449, expr_17450)
                    log1(_149, sub(_150, _149) , _148)
                }
            }
            /// @src 71:787:7928  "library AddPairLogic {..."

            function shift_left_176(value) -> newValue {
                newValue :=

                shl(176, value)

            }

            function update_byte_slice_1_shift_22(value, toInsert) -> result {
                let mask := 0xff00000000000000000000000000000000000000000000
                toInsert := shift_left_176(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint8_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_uint8(value)))
            }

            function prepare_store_t_uint8(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_22_t_uint8_to_t_uint8(slot, value_0) {
                let convertedValue_0 := convert_t_uint8_to_t_uint8(value_0)
                sstore(slot, update_byte_slice_1_shift_22(sload(slot), prepare_store_t_uint8(convertedValue_0)))
            }

            function abi_encode_t_uint8_to_t_uint8_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
            }

            function abi_encode_tuple_t_uint256_t_uint8__to_t_uint256_t_uint8__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint8_to_t_uint8_fromStack(value1,  add(headStart, 32))

            }

            /// @ast-id 17408
            /// @src 71:3505:3741  "function updateFeeRatio(DataType.PairStatus storage _pairStatus, uint8 _feeRatio) external {..."
            function fun_updateFeeRatio_17408(var__pairStatus_17386_slot, var__feeRatio_17388) {

                /// @src 71:3623:3632  "_feeRatio"
                let _151 := var__feeRatio_17388
                let expr_17392 := _151
                fun_validateFeeRatio_17700(expr_17392)
                /// @src 71:3667:3676  "_feeRatio"
                let _152 := var__feeRatio_17388
                let expr_17398 := _152
                /// @src 71:3644:3655  "_pairStatus"
                let _153_slot := var__pairStatus_17386_slot
                let expr_17395_slot := _153_slot
                /// @src 71:3644:3664  "_pairStatus.feeRatio"
                let _154 := add(expr_17395_slot, 50)
                /// @src 71:3644:3676  "_pairStatus.feeRatio = _feeRatio"
                update_storage_value_offset_22_t_uint8_to_t_uint8(_154, expr_17398)
                let expr_17399 := expr_17398
                /// @src 71:3708:3719  "_pairStatus"
                let _155_slot := var__pairStatus_17386_slot
                let expr_17402_slot := _155_slot
                /// @src 71:3708:3722  "_pairStatus.id"
                let _156 := add(expr_17402_slot, 0)
                let _157 := read_from_storage_split_offset_0_t_uint256(_156)
                let expr_17403 := _157
                /// @src 71:3724:3733  "_feeRatio"
                let _158 := var__feeRatio_17388
                let expr_17404 := _158
                /// @src 71:3692:3734  "FeeRatioUpdated(_pairStatus.id, _feeRatio)"
                let _159 := 0x10181643d33dd9533754ea5313f1258ae4542b4754b36db39529a565b46252f1
                {
                    let _160 := allocate_unbounded()
                    let _161 := abi_encode_tuple_t_uint256_t_uint8__to_t_uint256_t_uint8__fromStack(_160 , expr_17403, expr_17404)
                    log1(_160, sub(_161, _160) , _159)
                }
            }
            /// @src 71:787:7928  "library AddPairLogic {..."

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            /// @ast-id 17252
            /// @src 71:1778:2003  "function initializeGlobalData(GlobalDataLibrary.GlobalData storage global, address uniswapFactory) external {..."
            function fun_initializeGlobalData_17252(var_global_17228_slot, var_uniswapFactory_17230) {

                /// @src 71:1916:1917  "1"
                let expr_17236 := 0x01
                /// @src 71:1896:1917  "global.pairsCount = 1"
                let _162 := convert_t_rational_1_by_1_to_t_uint256(expr_17236)
                /// @src 71:1896:1902  "global"
                let _163_slot := var_global_17228_slot
                let expr_17233_slot := _163_slot
                /// @src 71:1896:1913  "global.pairsCount"
                let _164 := add(expr_17233_slot, 0)
                /// @src 71:1896:1917  "global.pairsCount = 1"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_164, _162)
                let expr_17237 := _162
                /// @src 71:1947:1948  "1"
                let expr_17242 := 0x01
                /// @src 71:1927:1948  "global.vaultCount = 1"
                let _165 := convert_t_rational_1_by_1_to_t_uint256(expr_17242)
                /// @src 71:1927:1933  "global"
                let _166_slot := var_global_17228_slot
                let expr_17239_slot := _166_slot
                /// @src 71:1927:1944  "global.vaultCount"
                let _167 := add(expr_17239_slot, 1)
                /// @src 71:1927:1948  "global.vaultCount = 1"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_167, _165)
                let expr_17243 := _165
                /// @src 71:1982:1996  "uniswapFactory"
                let _168 := var_uniswapFactory_17230
                let expr_17248 := _168
                /// @src 71:1958:1964  "global"
                let _169_slot := var_global_17228_slot
                let expr_17245_slot := _169_slot
                /// @src 71:1958:1979  "global.uniswapFactory"
                let _170 := add(expr_17245_slot, 2)
                /// @src 71:1958:1996  "global.uniswapFactory = uniswapFactory"
                update_storage_value_offset_0_t_address_to_t_address(_170, expr_17248)
                let expr_17249 := expr_17248

            }
            /// @src 71:787:7928  "library AddPairLogic {..."

            function cleanup_t_rational_1000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000000000000000000_by_1(value)))
            }

            function cleanup_t_rational_10000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10000000000000000000_by_1(value)))
            }

            function store_literal_in_memory_df00219f623e2bb2442f04dffe60fd9ad1efb43243074e440ae0d72b471c07d0(memPtr) {

                mstore(add(memPtr, 0), "C4")

            }

            function abi_encode_t_stringliteral_df00219f623e2bb2442f04dffe60fd9ad1efb43243074e440ae0d72b471c07d0_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_df00219f623e2bb2442f04dffe60fd9ad1efb43243074e440ae0d72b471c07d0(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_df00219f623e2bb2442f04dffe60fd9ad1efb43243074e440ae0d72b471c07d0__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_df00219f623e2bb2442f04dffe60fd9ad1efb43243074e440ae0d72b471c07d0_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_df00219f623e2bb2442f04dffe60fd9ad1efb43243074e440ae0d72b471c07d0(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_df00219f623e2bb2442f04dffe60fd9ad1efb43243074e440ae0d72b471c07d0__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 17783
            /// @src 71:7635:7926  "function validateIRMParams(InterestRateModel.IRMParams memory _irmParams) internal pure {..."
            function fun_validateIRMParams_17783(var__irmParams_17754_mpos) {

                /// @src 71:7754:7764  "_irmParams"
                let _171_mpos := var__irmParams_17754_mpos
                let expr_17758_mpos := _171_mpos
                /// @src 71:7754:7773  "_irmParams.baseRate"
                let _172 := add(expr_17758_mpos, 0)
                let _173 := read_from_memoryt_uint256(_172)
                let expr_17759 := _173
                /// @src 71:7777:7781  "1e18"
                let expr_17760 := 0x0de0b6b3a7640000
                /// @src 71:7754:7781  "_irmParams.baseRate <= 1e18"
                let expr_17761 := iszero(gt(cleanup_t_uint256(expr_17759), convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_17760)))
                /// @src 71:7754:7812  "_irmParams.baseRate <= 1e18 && _irmParams.kinkRate <= 1e18"
                let expr_17766 := expr_17761
                if expr_17766 {
                    /// @src 71:7785:7795  "_irmParams"
                    let _174_mpos := var__irmParams_17754_mpos
                    let expr_17762_mpos := _174_mpos
                    /// @src 71:7785:7804  "_irmParams.kinkRate"
                    let _175 := add(expr_17762_mpos, 32)
                    let _176 := read_from_memoryt_uint256(_175)
                    let expr_17763 := _176
                    /// @src 71:7808:7812  "1e18"
                    let expr_17764 := 0x0de0b6b3a7640000
                    /// @src 71:7785:7812  "_irmParams.kinkRate <= 1e18"
                    let expr_17765 := iszero(gt(cleanup_t_uint256(expr_17763), convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_17764)))
                    /// @src 71:7754:7812  "_irmParams.baseRate <= 1e18 && _irmParams.kinkRate <= 1e18"
                    expr_17766 := expr_17765
                }
                /// @src 71:7754:7841  "_irmParams.baseRate <= 1e18 && _irmParams.kinkRate <= 1e18 && _irmParams.slope1 <= 1e18"
                let expr_17771 := expr_17766
                if expr_17771 {
                    /// @src 71:7816:7826  "_irmParams"
                    let _177_mpos := var__irmParams_17754_mpos
                    let expr_17767_mpos := _177_mpos
                    /// @src 71:7816:7833  "_irmParams.slope1"
                    let _178 := add(expr_17767_mpos, 64)
                    let _179 := read_from_memoryt_uint256(_178)
                    let expr_17768 := _179
                    /// @src 71:7837:7841  "1e18"
                    let expr_17769 := 0x0de0b6b3a7640000
                    /// @src 71:7816:7841  "_irmParams.slope1 <= 1e18"
                    let expr_17770 := iszero(gt(cleanup_t_uint256(expr_17768), convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_17769)))
                    /// @src 71:7754:7841  "_irmParams.baseRate <= 1e18 && _irmParams.kinkRate <= 1e18 && _irmParams.slope1 <= 1e18"
                    expr_17771 := expr_17770
                }
                /// @src 71:7754:7891  "_irmParams.baseRate <= 1e18 && _irmParams.kinkRate <= 1e18 && _irmParams.slope1 <= 1e18..."
                let expr_17778 := expr_17771
                if expr_17778 {
                    /// @src 71:7861:7871  "_irmParams"
                    let _180_mpos := var__irmParams_17754_mpos
                    let expr_17772_mpos := _180_mpos
                    /// @src 71:7861:7878  "_irmParams.slope2"
                    let _181 := add(expr_17772_mpos, 96)
                    let _182 := read_from_memoryt_uint256(_181)
                    let expr_17773 := _182
                    /// @src 71:7882:7891  "10 * 1e18"
                    let expr_17776 := 0x8ac7230489e80000
                    /// @src 71:7861:7891  "_irmParams.slope2 <= 10 * 1e18"
                    let expr_17777 := iszero(gt(cleanup_t_uint256(expr_17773), convert_t_rational_10000000000000000000_by_1_to_t_uint256(expr_17776)))
                    /// @src 71:7754:7891  "_irmParams.baseRate <= 1e18 && _irmParams.kinkRate <= 1e18 && _irmParams.slope1 <= 1e18..."
                    expr_17778 := expr_17777
                }
                /// @src 71:7733:7919  "require(..."
                require_helper_t_stringliteral_df00219f623e2bb2442f04dffe60fd9ad1efb43243074e440ae0d72b471c07d0(expr_17778)

            }
            /// @src 71:787:7928  "library AddPairLogic {..."

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function store_literal_in_memory_b7b8b826e7120e79cf7f2b2c90f17cc153202db329af7c6c33e1ad9e538354d3(memPtr) {

                mstore(add(memPtr, 0), "ADDZ")

            }

            function abi_encode_t_stringliteral_b7b8b826e7120e79cf7f2b2c90f17cc153202db329af7c6c33e1ad9e538354d3_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 4)
                store_literal_in_memory_b7b8b826e7120e79cf7f2b2c90f17cc153202db329af7c6c33e1ad9e538354d3(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_b7b8b826e7120e79cf7f2b2c90f17cc153202db329af7c6c33e1ad9e538354d3__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_b7b8b826e7120e79cf7f2b2c90f17cc153202db329af7c6c33e1ad9e538354d3_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_b7b8b826e7120e79cf7f2b2c90f17cc153202db329af7c6c33e1ad9e538354d3(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_b7b8b826e7120e79cf7f2b2c90f17cc153202db329af7c6c33e1ad9e538354d3__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 17716
            /// @src 71:7211:7330  "function validatePoolOwner(address _poolOwner) internal pure {..."
            function fun_validatePoolOwner_17716(var__poolOwner_17702) {

                /// @src 71:7290:7300  "_poolOwner"
                let _183 := var__poolOwner_17702
                let expr_17706 := _183
                /// @src 71:7312:7313  "0"
                let expr_17709 := 0x00
                /// @src 71:7304:7314  "address(0)"
                let expr_17710 := convert_t_rational_0_by_1_to_t_address(expr_17709)
                /// @src 71:7290:7314  "_poolOwner != address(0)"
                let expr_17711 := iszero(eq(cleanup_t_address(expr_17706), cleanup_t_address(expr_17710)))
                /// @src 71:7282:7323  "require(_poolOwner != address(0), \"ADDZ\")"
                require_helper_t_stringliteral_b7b8b826e7120e79cf7f2b2c90f17cc153202db329af7c6c33e1ad9e538354d3(expr_17711)

            }
            /// @src 71:787:7928  "library AddPairLogic {..."

            function cleanup_t_rational_100000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_100000000_by_1_to_t_uint128(value) -> converted {
                converted := cleanup_t_uint128(identity(cleanup_t_rational_100000000_by_1(value)))
            }

            function cleanup_t_rational_1000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000000000_by_1_to_t_uint128(value) -> converted {
                converted := cleanup_t_uint128(identity(cleanup_t_rational_1000000000_by_1(value)))
            }

            function store_literal_in_memory_7f720095bc7b2b5f3f10b103a188ee55bd18660112810c348ee7104f00ab5e82(memPtr) {

                mstore(add(memPtr, 0), "C0")

            }

            function abi_encode_t_stringliteral_7f720095bc7b2b5f3f10b103a188ee55bd18660112810c348ee7104f00ab5e82_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_7f720095bc7b2b5f3f10b103a188ee55bd18660112810c348ee7104f00ab5e82(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_7f720095bc7b2b5f3f10b103a188ee55bd18660112810c348ee7104f00ab5e82__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_7f720095bc7b2b5f3f10b103a188ee55bd18660112810c348ee7104f00ab5e82_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_7f720095bc7b2b5f3f10b103a188ee55bd18660112810c348ee7104f00ab5e82(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_7f720095bc7b2b5f3f10b103a188ee55bd18660112810c348ee7104f00ab5e82__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function convert_t_rational_0_by_1_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_rational_0_by_1(value)))
            }

            /// @ast-id 17751
            /// @src 71:7336:7629  "function validateRiskParams(Perp.AssetRiskParams memory _assetRiskParams) internal pure {..."
            function fun_validateRiskParams_17751(var__assetRiskParams_17719_mpos) {

                /// @src 71:7442:7445  "1e8"
                let expr_17723 := 0x05f5e100
                /// @src 71:7448:7464  "_assetRiskParams"
                let _184_mpos := var__assetRiskParams_17719_mpos
                let expr_17724_mpos := _184_mpos
                /// @src 71:7448:7474  "_assetRiskParams.riskRatio"
                let _185 := add(expr_17724_mpos, 0)
                let _186 := read_from_memoryt_uint128(_185)
                let expr_17725 := _186
                /// @src 71:7442:7474  "1e8 < _assetRiskParams.riskRatio"
                let expr_17726 := lt(convert_t_rational_100000000_by_1_to_t_uint128(expr_17723), cleanup_t_uint128(expr_17725))
                /// @src 71:7442:7516  "1e8 < _assetRiskParams.riskRatio && _assetRiskParams.riskRatio <= 10 * 1e8"
                let expr_17733 := expr_17726
                if expr_17733 {
                    /// @src 71:7478:7494  "_assetRiskParams"
                    let _187_mpos := var__assetRiskParams_17719_mpos
                    let expr_17727_mpos := _187_mpos
                    /// @src 71:7478:7504  "_assetRiskParams.riskRatio"
                    let _188 := add(expr_17727_mpos, 0)
                    let _189 := read_from_memoryt_uint128(_188)
                    let expr_17728 := _189
                    /// @src 71:7508:7516  "10 * 1e8"
                    let expr_17731 := 0x3b9aca00
                    /// @src 71:7478:7516  "_assetRiskParams.riskRatio <= 10 * 1e8"
                    let expr_17732 := iszero(gt(cleanup_t_uint128(expr_17728), convert_t_rational_1000000000_by_1_to_t_uint128(expr_17731)))
                    /// @src 71:7442:7516  "1e8 < _assetRiskParams.riskRatio && _assetRiskParams.riskRatio <= 10 * 1e8"
                    expr_17733 := expr_17732
                }
                /// @src 71:7434:7523  "require(1e8 < _assetRiskParams.riskRatio && _assetRiskParams.riskRatio <= 10 * 1e8, \"C0\")"
                require_helper_t_stringliteral_7f720095bc7b2b5f3f10b103a188ee55bd18660112810c348ee7104f00ab5e82(expr_17733)
                /// @src 71:7542:7558  "_assetRiskParams"
                let _190_mpos := var__assetRiskParams_17719_mpos
                let expr_17738_mpos := _190_mpos
                /// @src 71:7542:7568  "_assetRiskParams.rangeSize"
                let _191 := add(expr_17738_mpos, 64)
                let _192 := read_from_memoryt_int24(_191)
                let expr_17739 := _192
                /// @src 71:7571:7572  "0"
                let expr_17740 := 0x00
                /// @src 71:7542:7572  "_assetRiskParams.rangeSize > 0"
                let expr_17741 := sgt(cleanup_t_int24(expr_17739), convert_t_rational_0_by_1_to_t_int24(expr_17740))
                /// @src 71:7542:7615  "_assetRiskParams.rangeSize > 0 && _assetRiskParams.rebalanceThreshold > 0"
                let expr_17746 := expr_17741
                if expr_17746 {
                    /// @src 71:7576:7592  "_assetRiskParams"
                    let _193_mpos := var__assetRiskParams_17719_mpos
                    let expr_17742_mpos := _193_mpos
                    /// @src 71:7576:7611  "_assetRiskParams.rebalanceThreshold"
                    let _194 := add(expr_17742_mpos, 96)
                    let _195 := read_from_memoryt_int24(_194)
                    let expr_17743 := _195
                    /// @src 71:7614:7615  "0"
                    let expr_17744 := 0x00
                    /// @src 71:7576:7615  "_assetRiskParams.rebalanceThreshold > 0"
                    let expr_17745 := sgt(cleanup_t_int24(expr_17743), convert_t_rational_0_by_1_to_t_int24(expr_17744))
                    /// @src 71:7542:7615  "_assetRiskParams.rangeSize > 0 && _assetRiskParams.rebalanceThreshold > 0"
                    expr_17746 := expr_17745
                }
                /// @src 71:7534:7622  "require(_assetRiskParams.rangeSize > 0 && _assetRiskParams.rebalanceThreshold > 0, \"C0\")"
                require_helper_t_stringliteral_7f720095bc7b2b5f3f10b103a188ee55bd18660112810c348ee7104f00ab5e82(expr_17746)

            }
            /// @src 71:787:7928  "library AddPairLogic {..."

            function read_from_memoryt_uint8(ptr) -> returnValue {

                let value := cleanup_t_uint8(mload(ptr))

                returnValue :=

                value

            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function store_literal_in_memory_2070504003a07b4713d783ae7a6642ab3b959b7c575c6e4fa4f33eb743db631a(memPtr) {

                mstore(add(memPtr, 0), "AAA")

            }

            function abi_encode_t_stringliteral_2070504003a07b4713d783ae7a6642ab3b959b7c575c6e4fa4f33eb743db631a_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 3)
                store_literal_in_memory_2070504003a07b4713d783ae7a6642ab3b959b7c575c6e4fa4f33eb743db631a(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_2070504003a07b4713d783ae7a6642ab3b959b7c575c6e4fa4f33eb743db631a__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_2070504003a07b4713d783ae7a6642ab3b959b7c575c6e4fa4f33eb743db631a_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_2070504003a07b4713d783ae7a6642ab3b959b7c575c6e4fa4f33eb743db631a(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_2070504003a07b4713d783ae7a6642ab3b959b7c575c6e4fa4f33eb743db631a__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function allocate_memory_struct_t_struct$_AssetPoolStatus_$13566_storage_ptr() -> memPtr {
                memPtr := allocate_memory(192)
            }

            function write_to_memory_t_address(memPtr, value) {
                mstore(memPtr, cleanup_t_address(value))
            }

            function write_to_memory_t_struct$_AssetStatus_$30934_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function write_to_memory_t_struct$_IRMParams_$13447_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function write_to_memory_t_uint256(memPtr, value) {
                mstore(memPtr, cleanup_t_uint256(value))
            }

            function negate_t_int24(value) -> ret {
                value := cleanup_t_int24(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff800000) { panic_error_0x11() }
                ret := sub(0, value)
            }

            function read_from_memoryt_bool(ptr) -> returnValue {

                let value := cleanup_t_bool(mload(ptr))

                returnValue :=

                value

            }

            function allocate_memory_struct_t_struct$_PairStatus_$6102_storage_ptr() -> memPtr {
                memPtr := allocate_memory(384)
            }

            function write_to_memory_t_struct$_AssetPoolStatus_$13566_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
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

            function write_to_memory_t_uint8(memPtr, value) {
                mstore(memPtr, cleanup_t_uint8(value))
            }

            function read_from_memoryt_struct$_AssetPoolStatus_$13566_memory_ptr(memPtr) -> value {
                value := mload(memPtr)
            }

            function read_from_memoryt_struct$_AssetStatus_$30934_memory_ptr(memPtr) -> value {
                value := mload(memPtr)
            }

            function copy_struct_to_storage_from_t_struct$_AssetStatus_$30934_memory_ptr_to_t_struct$_AssetStatus_$30934_storage(slot, value) {

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 0)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 32)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 2)
                    let memberSrcPtr := add(value, 64)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 3)
                    let memberSrcPtr := add(value, 96)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 4)
                    let memberSrcPtr := add(value, 128)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 5)
                    let memberSrcPtr := add(value, 160)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

            }

            function update_storage_value_offset_0_t_struct$_AssetStatus_$30934_memory_ptr_to_t_struct$_AssetStatus_$30934_storage(slot, value_0) {

                copy_struct_to_storage_from_t_struct$_AssetStatus_$30934_memory_ptr_to_t_struct$_AssetStatus_$30934_storage(slot, value_0)
            }

            function read_from_memoryt_struct$_IRMParams_$13447_memory_ptr(memPtr) -> value {
                value := mload(memPtr)
            }

            function copy_struct_to_storage_from_t_struct$_AssetPoolStatus_$13566_memory_ptr_to_t_struct$_AssetPoolStatus_$13566_storage(slot, value) {

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 0)

                    let memberValue_0 := read_from_memoryt_address(memberSrcPtr)

                    update_storage_value_offset_0_t_address_to_t_address(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 32)

                    let memberValue_0 := read_from_memoryt_address(memberSrcPtr)

                    update_storage_value_offset_0_t_address_to_t_address(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 2)
                    let memberSrcPtr := add(value, 64)

                    let memberValue_0 := read_from_memoryt_struct$_AssetStatus_$30934_memory_ptr(memberSrcPtr)

                    update_storage_value_offset_0_t_struct$_AssetStatus_$30934_memory_ptr_to_t_struct$_AssetStatus_$30934_storage(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 8)
                    let memberSrcPtr := add(value, 96)

                    let memberValue_0 := read_from_memoryt_struct$_IRMParams_$13447_memory_ptr(memberSrcPtr)

                    update_storage_value_offset_0_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_storage(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 12)
                    let memberSrcPtr := add(value, 128)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 13)
                    let memberSrcPtr := add(value, 160)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

            }

            function update_storage_value_offset_0_t_struct$_AssetPoolStatus_$13566_memory_ptr_to_t_struct$_AssetPoolStatus_$13566_storage(slot, value_0) {

                copy_struct_to_storage_from_t_struct$_AssetPoolStatus_$13566_memory_ptr_to_t_struct$_AssetPoolStatus_$13566_storage(slot, value_0)
            }

            function read_from_memoryt_struct$_AssetRiskParams_$13579_memory_ptr(memPtr) -> value {
                value := mload(memPtr)
            }

            function read_from_memoryt_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(memPtr) -> value {
                value := mload(memPtr)
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

            function update_storage_value_offset_23_t_int24_to_t_int24(slot, value_0) {
                let convertedValue_0 := convert_t_int24_to_t_int24(value_0)
                sstore(slot, update_byte_slice_3_shift_23(sload(slot), prepare_store_t_int24(convertedValue_0)))
            }

            function update_byte_slice_8_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_0_t_uint64_to_t_uint64(slot, value_0) {
                let convertedValue_0 := convert_t_uint64_to_t_uint64(value_0)
                sstore(slot, update_byte_slice_8_shift_0(sload(slot), prepare_store_t_uint64(convertedValue_0)))
            }

            function read_from_memoryt_struct$_UserStatus_$30939_memory_ptr(memPtr) -> value {
                value := mload(memPtr)
            }

            function cleanup_t_int256(value) -> cleaned {
                cleaned := value
            }

            function read_from_memoryt_int256(ptr) -> returnValue {

                let value := cleanup_t_int256(mload(ptr))

                returnValue :=

                value

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

            function copy_struct_to_storage_from_t_struct$_UserStatus_$30939_memory_ptr_to_t_struct$_UserStatus_$30939_storage(slot, value) {

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 0)

                    let memberValue_0 := read_from_memoryt_int256(memberSrcPtr)

                    update_storage_value_offset_0_t_int256_to_t_int256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 32)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

            }

            function update_storage_value_offset_0_t_struct$_UserStatus_$30939_memory_ptr_to_t_struct$_UserStatus_$30939_storage(slot, value_0) {

                copy_struct_to_storage_from_t_struct$_UserStatus_$30939_memory_ptr_to_t_struct$_UserStatus_$30939_storage(slot, value_0)
            }

            function copy_struct_to_storage_from_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_storage(slot, value) {

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 0)

                    let memberValue_0 := read_from_memoryt_address(memberSrcPtr)

                    update_storage_value_offset_0_t_address_to_t_address(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 32)

                    let memberValue_0 := read_from_memoryt_int24(memberSrcPtr)

                    update_storage_value_offset_20_t_int24_to_t_int24(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 64)

                    let memberValue_0 := read_from_memoryt_int24(memberSrcPtr)

                    update_storage_value_offset_23_t_int24_to_t_int24(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 96)

                    let memberValue_0 := read_from_memoryt_uint64(memberSrcPtr)

                    update_storage_value_offset_0_t_uint64_to_t_uint64(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 2)
                    let memberSrcPtr := add(value, 128)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 3)
                    let memberSrcPtr := add(value, 160)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 4)
                    let memberSrcPtr := add(value, 192)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 5)
                    let memberSrcPtr := add(value, 224)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 6)
                    let memberSrcPtr := add(value, 256)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 7)
                    let memberSrcPtr := add(value, 288)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 8)
                    let memberSrcPtr := add(value, 320)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 9)
                    let memberSrcPtr := add(value, 352)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 10)
                    let memberSrcPtr := add(value, 384)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 11)
                    let memberSrcPtr := add(value, 416)

                    let memberValue_0 := read_from_memoryt_struct$_UserStatus_$30939_memory_ptr(memberSrcPtr)

                    update_storage_value_offset_0_t_struct$_UserStatus_$30939_memory_ptr_to_t_struct$_UserStatus_$30939_storage(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 13)
                    let memberSrcPtr := add(value, 448)

                    let memberValue_0 := read_from_memoryt_struct$_UserStatus_$30939_memory_ptr(memberSrcPtr)

                    update_storage_value_offset_0_t_struct$_UserStatus_$30939_memory_ptr_to_t_struct$_UserStatus_$30939_storage(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 15)
                    let memberSrcPtr := add(value, 480)

                    let memberValue_0 := read_from_memoryt_int256(memberSrcPtr)

                    update_storage_value_offset_0_t_int256_to_t_int256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 16)
                    let memberSrcPtr := add(value, 512)

                    let memberValue_0 := read_from_memoryt_int256(memberSrcPtr)

                    update_storage_value_offset_0_t_int256_to_t_int256(memberSlot, memberValue_0)

                }

            }

            function update_storage_value_offset_0_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_storage(slot, value_0) {

                copy_struct_to_storage_from_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_storage(slot, value_0)
            }

            function update_byte_slice_1_shift_20(value, toInsert) -> result {
                let mask := 0xff0000000000000000000000000000000000000000
                toInsert := shift_left_160(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_20_t_bool_to_t_bool(slot, value_0) {
                let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
                sstore(slot, update_byte_slice_1_shift_20(sload(slot), prepare_store_t_bool(convertedValue_0)))
            }

            function shift_left_168(value) -> newValue {
                newValue :=

                shl(168, value)

            }

            function update_byte_slice_1_shift_21(value, toInsert) -> result {
                let mask := 0xff000000000000000000000000000000000000000000
                toInsert := shift_left_168(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_21_t_bool_to_t_bool(slot, value_0) {
                let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
                sstore(slot, update_byte_slice_1_shift_21(sload(slot), prepare_store_t_bool(convertedValue_0)))
            }

            function copy_struct_to_storage_from_t_struct$_PairStatus_$6102_memory_ptr_to_t_struct$_PairStatus_$6102_storage(slot, value) {

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 0)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 32)

                    let memberValue_0 := read_from_memoryt_address(memberSrcPtr)

                    update_storage_value_offset_0_t_address_to_t_address(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 2)
                    let memberSrcPtr := add(value, 64)

                    let memberValue_0 := read_from_memoryt_address(memberSrcPtr)

                    update_storage_value_offset_0_t_address_to_t_address(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 3)
                    let memberSrcPtr := add(value, 96)

                    let memberValue_0 := read_from_memoryt_struct$_AssetPoolStatus_$13566_memory_ptr(memberSrcPtr)

                    update_storage_value_offset_0_t_struct$_AssetPoolStatus_$13566_memory_ptr_to_t_struct$_AssetPoolStatus_$13566_storage(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 17)
                    let memberSrcPtr := add(value, 128)

                    let memberValue_0 := read_from_memoryt_struct$_AssetPoolStatus_$13566_memory_ptr(memberSrcPtr)

                    update_storage_value_offset_0_t_struct$_AssetPoolStatus_$13566_memory_ptr_to_t_struct$_AssetPoolStatus_$13566_storage(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 31)
                    let memberSrcPtr := add(value, 160)

                    let memberValue_0 := read_from_memoryt_struct$_AssetRiskParams_$13579_memory_ptr(memberSrcPtr)

                    update_storage_value_offset_0_t_struct$_AssetRiskParams_$13579_memory_ptr_to_t_struct$_AssetRiskParams_$13579_storage(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 33)
                    let memberSrcPtr := add(value, 192)

                    let memberValue_0 := read_from_memoryt_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(memberSrcPtr)

                    update_storage_value_offset_0_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_storage(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 50)
                    let memberSrcPtr := add(value, 224)

                    let memberValue_0 := read_from_memoryt_address(memberSrcPtr)

                    update_storage_value_offset_0_t_address_to_t_address(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 50)
                    let memberSrcPtr := add(value, 256)

                    let memberValue_0 := read_from_memoryt_bool(memberSrcPtr)

                    update_storage_value_offset_20_t_bool_to_t_bool(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 50)
                    let memberSrcPtr := add(value, 288)

                    let memberValue_0 := read_from_memoryt_bool(memberSrcPtr)

                    update_storage_value_offset_21_t_bool_to_t_bool(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 50)
                    let memberSrcPtr := add(value, 320)

                    let memberValue_0 := read_from_memoryt_uint8(memberSrcPtr)

                    update_storage_value_offset_22_t_uint8_to_t_uint8(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 51)
                    let memberSrcPtr := add(value, 352)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

            }

            function update_storage_value_offset_0_t_struct$_PairStatus_$6102_memory_ptr_to_t_struct$_PairStatus_$6102_storage(slot, value_0) {

                copy_struct_to_storage_from_t_struct$_PairStatus_$6102_memory_ptr_to_t_struct$_PairStatus_$6102_storage(slot, value_0)
            }

            /// @ast-id 17641
            /// @src 71:5029:6694  "function _storePairStatus(..."
            function fun__storePairStatus_17641(var_marginId_17526, var__pairs_17531_slot, var__pairId_17533, var__tokenAddress_17535, var__isQuoteZero_17537, var__addPairParam_17540_mpos) {

                /// @src 71:5316:5329  "_addPairParam"
                let _196_mpos := var__addPairParam_17540_mpos
                let expr_17544_mpos := _196_mpos
                /// @src 71:5316:5345  "_addPairParam.assetRiskParams"
                let _197 := add(expr_17544_mpos, 192)
                let _198_mpos := mload(_197)
                let expr_17545_mpos := _198_mpos
                fun_validateRiskParams_17751(expr_17545_mpos)
                /// @src 71:5373:5386  "_addPairParam"
                let _199_mpos := var__addPairParam_17540_mpos
                let expr_17549_mpos := _199_mpos
                /// @src 71:5373:5390  "_addPairParam.fee"
                let _200 := add(expr_17549_mpos, 160)
                let _201 := read_from_memoryt_uint8(_200)
                let expr_17550 := _201
                fun_validateFeeRatio_17700(expr_17550)
                /// @src 71:5410:5416  "_pairs"
                let _202_slot := var__pairs_17531_slot
                let expr_17554_slot := _202_slot
                /// @src 71:5417:5424  "_pairId"
                let _203 := var__pairId_17533
                let expr_17555 := _203
                /// @src 71:5410:5425  "_pairs[_pairId]"
                let _204 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_17554_slot,expr_17555)
                let _205_slot := _204
                let expr_17556_slot := _205_slot
                /// @src 71:5410:5428  "_pairs[_pairId].id"
                let _206 := add(expr_17556_slot, 0)
                let _207 := read_from_storage_split_offset_0_t_uint256(_206)
                let expr_17557 := _207
                /// @src 71:5432:5433  "0"
                let expr_17558 := 0x00
                /// @src 71:5410:5433  "_pairs[_pairId].id == 0"
                let expr_17559 := eq(cleanup_t_uint256(expr_17557), convert_t_rational_0_by_1_to_t_uint256(expr_17558))
                /// @src 71:5402:5441  "require(_pairs[_pairId].id == 0, \"AAA\")"
                require_helper_t_stringliteral_2070504003a07b4713d783ae7a6642ab3b959b7c575c6e4fa4f33eb743db631a(expr_17559)
                /// @src 71:5470:5478  "DataType"
                let expr_17566_address := linkersymbol("src/libraries/DataType.sol:DataType")
                /// @src 71:5503:5510  "_pairId"
                let _208 := var__pairId_17533
                let expr_17568 := _208
                /// @src 71:5524:5532  "marginId"
                let _209 := var_marginId_17526
                let expr_17569 := _209
                /// @src 71:5546:5559  "_addPairParam"
                let _210_mpos := var__addPairParam_17540_mpos
                let expr_17570_mpos := _210_mpos
                /// @src 71:5546:5569  "_addPairParam.poolOwner"
                let _211 := add(expr_17570_mpos, 32)
                let _212 := read_from_memoryt_address(_211)
                let expr_17571 := _212
                /// @src 71:5583:5587  "Perp"
                let expr_17572_address := linkersymbol("src/libraries/Perp.sol:Perp")
                /// @src 71:5621:5629  "marginId"
                let _213 := var_marginId_17526
                let expr_17574 := _213
                /// @src 71:5665:5673  "marginId"
                let _214 := var_marginId_17526
                let expr_17576 := _214
                /// @src 71:5647:5674  "deploySupplyToken(marginId)"
                let expr_17577 := fun_deploySupplyToken_17687(expr_17576)
                /// @src 71:5692:5703  "ScaledAsset"
                let expr_17578_address := linkersymbol("src/libraries/ScaledAsset.sol:ScaledAsset")
                /// @src 71:5692:5723  "ScaledAsset.createAssetStatus()"
                let expr_17580_mpos := fun_createAssetStatus_30966()
                /// @src 71:5741:5754  "_addPairParam"
                let _215_mpos := var__addPairParam_17540_mpos
                let expr_17581_mpos := _215_mpos
                /// @src 71:5741:5769  "_addPairParam.quoteIrmParams"
                let _216 := add(expr_17581_mpos, 224)
                let _217_mpos := mload(_216)
                let expr_17582_mpos := _217_mpos
                /// @src 71:5787:5788  "0"
                let expr_17583 := 0x00
                /// @src 71:5806:5807  "0"
                let expr_17584 := 0x00
                /// @src 71:5583:5821  "Perp.AssetPoolStatus(..."
                let expr_17585_mpos := allocate_memory_struct_t_struct$_AssetPoolStatus_$13566_storage_ptr()
                write_to_memory_t_address(add(expr_17585_mpos, 0), expr_17574)
                write_to_memory_t_address(add(expr_17585_mpos, 32), expr_17577)
                write_to_memory_t_struct$_AssetStatus_$30934_memory_ptr(add(expr_17585_mpos, 64), expr_17580_mpos)
                write_to_memory_t_struct$_IRMParams_$13447_memory_ptr(add(expr_17585_mpos, 96), expr_17582_mpos)
                let _218 := convert_t_rational_0_by_1_to_t_uint256(expr_17583)
                write_to_memory_t_uint256(add(expr_17585_mpos, 128), _218)
                let _219 := convert_t_rational_0_by_1_to_t_uint256(expr_17584)
                write_to_memory_t_uint256(add(expr_17585_mpos, 160), _219)
                /// @src 71:5835:5839  "Perp"
                let expr_17586_address := linkersymbol("src/libraries/Perp.sol:Perp")
                /// @src 71:5873:5886  "_tokenAddress"
                let _220 := var__tokenAddress_17535
                let expr_17588 := _220
                /// @src 71:5922:5935  "_tokenAddress"
                let _221 := var__tokenAddress_17535
                let expr_17590 := _221
                /// @src 71:5904:5936  "deploySupplyToken(_tokenAddress)"
                let expr_17591 := fun_deploySupplyToken_17687(expr_17590)
                /// @src 71:5954:5965  "ScaledAsset"
                let expr_17592_address := linkersymbol("src/libraries/ScaledAsset.sol:ScaledAsset")
                /// @src 71:5954:5985  "ScaledAsset.createAssetStatus()"
                let expr_17594_mpos := fun_createAssetStatus_30966()
                /// @src 71:6003:6016  "_addPairParam"
                let _222_mpos := var__addPairParam_17540_mpos
                let expr_17595_mpos := _222_mpos
                /// @src 71:6003:6030  "_addPairParam.baseIrmParams"
                let _223 := add(expr_17595_mpos, 256)
                let _224_mpos := mload(_223)
                let expr_17596_mpos := _224_mpos
                /// @src 71:6048:6049  "0"
                let expr_17597 := 0x00
                /// @src 71:6067:6068  "0"
                let expr_17598 := 0x00
                /// @src 71:5835:6082  "Perp.AssetPoolStatus(..."
                let expr_17599_mpos := allocate_memory_struct_t_struct$_AssetPoolStatus_$13566_storage_ptr()
                write_to_memory_t_address(add(expr_17599_mpos, 0), expr_17588)
                write_to_memory_t_address(add(expr_17599_mpos, 32), expr_17591)
                write_to_memory_t_struct$_AssetStatus_$30934_memory_ptr(add(expr_17599_mpos, 64), expr_17594_mpos)
                write_to_memory_t_struct$_IRMParams_$13447_memory_ptr(add(expr_17599_mpos, 96), expr_17596_mpos)
                let _225 := convert_t_rational_0_by_1_to_t_uint256(expr_17597)
                write_to_memory_t_uint256(add(expr_17599_mpos, 128), _225)
                let _226 := convert_t_rational_0_by_1_to_t_uint256(expr_17598)
                write_to_memory_t_uint256(add(expr_17599_mpos, 160), _226)
                /// @src 71:6096:6109  "_addPairParam"
                let _227_mpos := var__addPairParam_17540_mpos
                let expr_17600_mpos := _227_mpos
                /// @src 71:6096:6125  "_addPairParam.assetRiskParams"
                let _228 := add(expr_17600_mpos, 192)
                let _229_mpos := mload(_228)
                let expr_17601_mpos := _229_mpos
                /// @src 71:6139:6143  "Perp"
                let expr_17602_address := linkersymbol("src/libraries/Perp.sol:Perp")
                /// @src 71:6179:6192  "_addPairParam"
                let _230_mpos := var__addPairParam_17540_mpos
                let expr_17604_mpos := _230_mpos
                /// @src 71:6179:6204  "_addPairParam.uniswapPool"
                let _231 := add(expr_17604_mpos, 64)
                let _232 := read_from_memoryt_address(_231)
                let expr_17605 := _232
                /// @src 71:6223:6236  "_addPairParam"
                let _233_mpos := var__addPairParam_17540_mpos
                let expr_17606_mpos := _233_mpos
                /// @src 71:6223:6252  "_addPairParam.assetRiskParams"
                let _234 := add(expr_17606_mpos, 192)
                let _235_mpos := mload(_234)
                let expr_17607_mpos := _235_mpos
                /// @src 71:6223:6262  "_addPairParam.assetRiskParams.rangeSize"
                let _236 := add(expr_17607_mpos, 64)
                let _237 := read_from_memoryt_int24(_236)
                let expr_17608 := _237
                /// @src 71:6222:6262  "-_addPairParam.assetRiskParams.rangeSize"
                let expr_17609 := negate_t_int24(expr_17608)
                /// @src 71:6280:6293  "_addPairParam"
                let _238_mpos := var__addPairParam_17540_mpos
                let expr_17610_mpos := _238_mpos
                /// @src 71:6280:6309  "_addPairParam.assetRiskParams"
                let _239 := add(expr_17610_mpos, 192)
                let _240_mpos := mload(_239)
                let expr_17611_mpos := _240_mpos
                /// @src 71:6280:6319  "_addPairParam.assetRiskParams.rangeSize"
                let _241 := add(expr_17611_mpos, 64)
                let _242 := read_from_memoryt_int24(_241)
                let expr_17612 := _242
                /// @src 71:6139:6333  "Perp.createAssetStatus(..."
                let expr_17613_mpos := fun_createAssetStatus_13724(expr_17605, expr_17609, expr_17612)
                /// @src 71:6347:6360  "_addPairParam"
                let _243_mpos := var__addPairParam_17540_mpos
                let expr_17614_mpos := _243_mpos
                /// @src 71:6347:6370  "_addPairParam.priceFeed"
                let _244 := add(expr_17614_mpos, 96)
                let _245 := read_from_memoryt_address(_244)
                let expr_17615 := _245
                /// @src 71:6384:6396  "_isQuoteZero"
                let _246 := var__isQuoteZero_17537
                let expr_17616 := _246
                /// @src 71:6410:6423  "_addPairParam"
                let _247_mpos := var__addPairParam_17540_mpos
                let expr_17617_mpos := _247_mpos
                /// @src 71:6410:6440  "_addPairParam.whitelistEnabled"
                let _248 := add(expr_17617_mpos, 128)
                let _249 := read_from_memoryt_bool(_248)
                let expr_17618 := _249
                /// @src 71:6454:6467  "_addPairParam"
                let _250_mpos := var__addPairParam_17540_mpos
                let expr_17619_mpos := _250_mpos
                /// @src 71:6454:6471  "_addPairParam.fee"
                let _251 := add(expr_17619_mpos, 160)
                let _252 := read_from_memoryt_uint8(_251)
                let expr_17620 := _252
                /// @src 71:6485:6500  "block.timestamp"
                let expr_17622 := timestamp()
                /// @src 71:5470:6510  "DataType.PairStatus(..."
                let expr_17623_mpos := allocate_memory_struct_t_struct$_PairStatus_$6102_storage_ptr()
                write_to_memory_t_uint256(add(expr_17623_mpos, 0), expr_17568)
                write_to_memory_t_address(add(expr_17623_mpos, 32), expr_17569)
                write_to_memory_t_address(add(expr_17623_mpos, 64), expr_17571)
                write_to_memory_t_struct$_AssetPoolStatus_$13566_memory_ptr(add(expr_17623_mpos, 96), expr_17585_mpos)
                write_to_memory_t_struct$_AssetPoolStatus_$13566_memory_ptr(add(expr_17623_mpos, 128), expr_17599_mpos)
                write_to_memory_t_struct$_AssetRiskParams_$13579_memory_ptr(add(expr_17623_mpos, 160), expr_17601_mpos)
                write_to_memory_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(add(expr_17623_mpos, 192), expr_17613_mpos)
                write_to_memory_t_address(add(expr_17623_mpos, 224), expr_17615)
                write_to_memory_t_bool(add(expr_17623_mpos, 256), expr_17616)
                write_to_memory_t_bool(add(expr_17623_mpos, 288), expr_17618)
                write_to_memory_t_uint8(add(expr_17623_mpos, 320), expr_17620)
                write_to_memory_t_uint256(add(expr_17623_mpos, 352), expr_17622)
                /// @src 71:5452:5458  "_pairs"
                let _253_slot := var__pairs_17531_slot
                let expr_17563_slot := _253_slot
                /// @src 71:5459:5466  "_pairId"
                let _254 := var__pairId_17533
                let expr_17564 := _254
                /// @src 71:5452:5467  "_pairs[_pairId]"
                let _255 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_17563_slot,expr_17564)
                /// @src 71:5452:6510  "_pairs[_pairId] = DataType.PairStatus(..."
                update_storage_value_offset_0_t_struct$_PairStatus_$6102_memory_ptr_to_t_struct$_PairStatus_$6102_storage(_255, expr_17623_mpos)
                let _256_slot := _255
                let expr_17624_slot := _256_slot
                /// @src 71:6549:6556  "_pairId"
                let _257 := var__pairId_17533
                let expr_17627 := _257
                /// @src 71:6558:6571  "_addPairParam"
                let _258_mpos := var__addPairParam_17540_mpos
                let expr_17628_mpos := _258_mpos
                /// @src 71:6558:6587  "_addPairParam.assetRiskParams"
                let _259 := add(expr_17628_mpos, 192)
                let _260_mpos := mload(_259)
                let expr_17629_mpos := _260_mpos
                /// @src 71:6526:6588  "AssetRiskParamsUpdated(_pairId, _addPairParam.assetRiskParams)"
                let _261 := 0x2629b119f06606374582e6c88170c0a494bde68b5e739e3afa8f07c29159634d
                {
                    let _262 := allocate_unbounded()
                    let _263 := abi_encode_tuple_t_uint256_t_struct$_AssetRiskParams_$13579_memory_ptr__to_t_uint256_t_struct$_AssetRiskParams_$13579_memory_ptr__fromStack(_262 , expr_17627, expr_17629_mpos)
                    log1(_262, sub(_263, _262) , _261)
                }/// @src 71:6620:6627  "_pairId"
                let _264 := var__pairId_17533
                let expr_17633 := _264
                /// @src 71:6629:6642  "_addPairParam"
                let _265_mpos := var__addPairParam_17540_mpos
                let expr_17634_mpos := _265_mpos
                /// @src 71:6629:6657  "_addPairParam.quoteIrmParams"
                let _266 := add(expr_17634_mpos, 224)
                let _267_mpos := mload(_266)
                let expr_17635_mpos := _267_mpos
                /// @src 71:6659:6672  "_addPairParam"
                let _268_mpos := var__addPairParam_17540_mpos
                let expr_17636_mpos := _268_mpos
                /// @src 71:6659:6686  "_addPairParam.baseIrmParams"
                let _269 := add(expr_17636_mpos, 256)
                let _270_mpos := mload(_269)
                let expr_17637_mpos := _270_mpos
                /// @src 71:6603:6687  "IRMParamsUpdated(_pairId, _addPairParam.quoteIrmParams, _addPairParam.baseIrmParams)"
                let _271 := 0x1c30ef2fd5ebfa8ce15b3911c201569545d1887fb5822d48843b2f458cdaac3b
                {
                    let _272 := allocate_unbounded()
                    let _273 := abi_encode_tuple_t_uint256_t_struct$_IRMParams_$13447_memory_ptr_t_struct$_IRMParams_$13447_memory_ptr__to_t_uint256_t_struct$_IRMParams_$13447_memory_ptr_t_struct$_IRMParams_$13447_memory_ptr__fromStack(_272 , expr_17633, expr_17635_mpos, expr_17637_mpos)
                    log1(_272, sub(_273, _272) , _271)
                }
            }
            /// @src 71:787:7928  "library AddPairLogic {..."

            function cleanup_t_rational_20_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_20_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_20_by_1(value)))
            }

            function store_literal_in_memory_607744c37698f0ad2c7e8b300d57eaef2f987ccbb958ce7cd316a2c3e663f9ec(memPtr) {

                mstore(add(memPtr, 0), "FEE")

            }

            function abi_encode_t_stringliteral_607744c37698f0ad2c7e8b300d57eaef2f987ccbb958ce7cd316a2c3e663f9ec_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 3)
                store_literal_in_memory_607744c37698f0ad2c7e8b300d57eaef2f987ccbb958ce7cd316a2c3e663f9ec(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_607744c37698f0ad2c7e8b300d57eaef2f987ccbb958ce7cd316a2c3e663f9ec__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_607744c37698f0ad2c7e8b300d57eaef2f987ccbb958ce7cd316a2c3e663f9ec_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_607744c37698f0ad2c7e8b300d57eaef2f987ccbb958ce7cd316a2c3e663f9ec(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_607744c37698f0ad2c7e8b300d57eaef2f987ccbb958ce7cd316a2c3e663f9ec__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 17700
            /// @src 71:7110:7205  "function validateFeeRatio(uint8 _fee) internal pure {..."
            function fun_validateFeeRatio_17700(var__fee_17689) {

                /// @src 71:7180:7184  "_fee"
                let _274 := var__fee_17689
                let expr_17693 := _274
                /// @src 71:7188:7190  "20"
                let expr_17694 := 0x14
                /// @src 71:7180:7190  "_fee <= 20"
                let expr_17695 := iszero(gt(cleanup_t_uint8(expr_17693), convert_t_rational_20_by_1_to_t_uint8(expr_17694)))
                /// @src 71:7172:7198  "require(_fee <= 20, \"FEE\")"
                require_helper_t_stringliteral_607744c37698f0ad2c7e8b300d57eaef2f987ccbb958ce7cd316a2c3e663f9ec(expr_17695)

            }
            /// @src 71:787:7928  "library AddPairLogic {..."

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            function convert_t_uint160_to_t_contract$_IERC20Metadata_$32912(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IERC20Metadata_$32912(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IERC20Metadata_$32912(value)
            }

            function convert_t_contract$_AddPairLogic_$17784_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_contract$_IERC20Metadata_$32912_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
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

            function copy_memory_to_memory_with_cleanup(src, dst, length) {

                mcopy(dst, src, length)
                mstore(add(dst, length), 0)

            }

            function abi_decode_available_length_t_string_memory_ptr_fromMemory(src, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_string_memory_ptr(length))
                mstore(array, length)
                let dst := add(array, 0x20)
                if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
                copy_memory_to_memory_with_cleanup(src, dst, length)
            }

            // string
            function abi_decode_t_string_memory_ptr_fromMemory(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := mload(offset)
                array := abi_decode_available_length_t_string_memory_ptr_fromMemory(add(offset, 0x20), length, end)
            }

            function abi_decode_tuple_t_string_memory_ptr_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := mload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_stringliteral_1f803d5c6f5e849ea29b43d1b587176bebcdd6aa01df91c69246bca525a38140_to_t_bytes14_nonPadded_inplace_fromStack(pos) {
                mstore(pos, "Predy6-Supply-")
            }

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

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

            function abi_encode_tuple_packed_t_stringliteral_1f803d5c6f5e849ea29b43d1b587176bebcdd6aa01df91c69246bca525a38140_t_string_memory_ptr__to_t_bytes14_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0) -> end {

                abi_encode_t_stringliteral_1f803d5c6f5e849ea29b43d1b587176bebcdd6aa01df91c69246bca525a38140_to_t_bytes14_nonPadded_inplace_fromStack( pos)
                pos := add(pos, 14)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                end := pos
            }

            function string_concat_t_stringliteral_1f803d5c6f5e849ea29b43d1b587176bebcdd6aa01df91c69246bca525a38140_t_string_memory_ptr(param_0) -> outPtr {
                outPtr := allocate_unbounded()
                let dataStart := add(outPtr, 0x20)
                let dataEnd := abi_encode_tuple_packed_t_stringliteral_1f803d5c6f5e849ea29b43d1b587176bebcdd6aa01df91c69246bca525a38140_t_string_memory_ptr__to_t_bytes14_t_string_memory_ptr__nonPadded_inplace_fromStack(dataStart, param_0)
                mstore(outPtr, sub(dataEnd, dataStart))
                finalize_allocation(outPtr, sub(dataEnd, outPtr))
            }

            function abi_encode_t_stringliteral_2304e88f144ae9318c71b0fb9e0f44bd9e0c6c58fb1b5315a35fd8b4b2a444ab_to_t_bytes1_nonPadded_inplace_fromStack(pos) {
                mstore(pos, "p")
            }

            function abi_encode_tuple_packed_t_stringliteral_2304e88f144ae9318c71b0fb9e0f44bd9e0c6c58fb1b5315a35fd8b4b2a444ab_t_string_memory_ptr__to_t_bytes1_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0) -> end {

                abi_encode_t_stringliteral_2304e88f144ae9318c71b0fb9e0f44bd9e0c6c58fb1b5315a35fd8b4b2a444ab_to_t_bytes1_nonPadded_inplace_fromStack( pos)
                pos := add(pos, 1)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                end := pos
            }

            function string_concat_t_stringliteral_2304e88f144ae9318c71b0fb9e0f44bd9e0c6c58fb1b5315a35fd8b4b2a444ab_t_string_memory_ptr(param_0) -> outPtr {
                outPtr := allocate_unbounded()
                let dataStart := add(outPtr, 0x20)
                let dataEnd := abi_encode_tuple_packed_t_stringliteral_2304e88f144ae9318c71b0fb9e0f44bd9e0c6c58fb1b5315a35fd8b4b2a444ab_t_string_memory_ptr__to_t_bytes1_t_string_memory_ptr__nonPadded_inplace_fromStack(dataStart, param_0)
                mstore(outPtr, sub(dataEnd, dataStart))
                finalize_allocation(outPtr, sub(dataEnd, outPtr))
            }

            function abi_decode_t_uint8_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint8(value)
            }

            function abi_decode_tuple_t_uint8_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint8_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_address_t_string_memory_ptr_t_string_memory_ptr_t_uint8__to_t_address_t_string_memory_ptr_t_string_memory_ptr_t_uint8__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                mstore(add(headStart, 32), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value1,  tail)

                mstore(add(headStart, 64), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value2,  tail)

                abi_encode_t_uint8_to_t_uint8_fromStack(value3,  add(headStart, 96))

            }

            function convert_t_contract$_SupplyToken_$33073_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            /// @ast-id 17687
            /// @src 71:6700:7104  "function deploySupplyToken(address _tokenAddress) internal returns (address) {..."
            function fun_deploySupplyToken_17687(var__tokenAddress_17643) -> var__17646 {
                /// @src 71:6768:6775  "address"
                let zero_t_address_275 := zero_value_for_split_t_address()
                var__17646 := zero_t_address_275

                /// @src 71:6825:6838  "_tokenAddress"
                let _276 := var__tokenAddress_17643
                let expr_17652 := _276
                /// @src 71:6810:6839  "IERC20Metadata(_tokenAddress)"
                let expr_17653_address := convert_t_address_to_t_contract$_IERC20Metadata_$32912(expr_17652)
                /// @src 71:6787:6839  "IERC20Metadata erc20 = IERC20Metadata(_tokenAddress)"
                let var_erc20_17650_address := expr_17653_address
                /// @src 71:6919:6923  "this"
                let expr_17662_address := address()
                /// @src 71:6911:6924  "address(this)"
                let expr_17663 := convert_t_contract$_AddPairLogic_$17784_to_t_address(expr_17662_address)
                /// @src 71:6974:6979  "erc20"
                let _277_address := var_erc20_17650_address
                let expr_17668_address := _277_address
                /// @src 71:6974:6984  "erc20.name"
                let expr_17669_address := convert_t_contract$_IERC20Metadata_$32912_to_t_address(expr_17668_address)
                let expr_17669_functionSelector := 0x06fdde03
                /// @src 71:6974:6986  "erc20.name()"

                // storage for arguments and returned data
                let _278 := allocate_unbounded()
                mstore(_278, shift_left_224(expr_17669_functionSelector))
                let _279 := abi_encode_tuple__to__fromStack(add(_278, 4) )

                let _280 := staticcall(gas(), expr_17669_address,  _278, sub(_279, _278), _278, 0)

                if iszero(_280) { revert_forward_1() }

                let expr_17670_mpos
                if _280 {

                    let _281 := returndatasize()
                    returndatacopy(_278, 0, _281)

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_278, _281)

                    // decode return parameters from external try-call into retVars
                    expr_17670_mpos :=  abi_decode_tuple_t_string_memory_ptr_fromMemory(_278, add(_278, _281))
                }
                /// @src 71:6942:6987  "string.concat(\"Predy6-Supply-\", erc20.name())"
                let expr_17671_mpos := string_concat_t_stringliteral_1f803d5c6f5e849ea29b43d1b587176bebcdd6aa01df91c69246bca525a38140_t_string_memory_ptr(expr_17670_mpos)
                /// @src 71:7024:7029  "erc20"
                let _282_address := var_erc20_17650_address
                let expr_17676_address := _282_address
                /// @src 71:7024:7036  "erc20.symbol"
                let expr_17677_address := convert_t_contract$_IERC20Metadata_$32912_to_t_address(expr_17676_address)
                let expr_17677_functionSelector := 0x95d89b41
                /// @src 71:7024:7038  "erc20.symbol()"

                // storage for arguments and returned data
                let _283 := allocate_unbounded()
                mstore(_283, shift_left_224(expr_17677_functionSelector))
                let _284 := abi_encode_tuple__to__fromStack(add(_283, 4) )

                let _285 := staticcall(gas(), expr_17677_address,  _283, sub(_284, _283), _283, 0)

                if iszero(_285) { revert_forward_1() }

                let expr_17678_mpos
                if _285 {

                    let _286 := returndatasize()
                    returndatacopy(_283, 0, _286)

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_283, _286)

                    // decode return parameters from external try-call into retVars
                    expr_17678_mpos :=  abi_decode_tuple_t_string_memory_ptr_fromMemory(_283, add(_283, _286))
                }
                /// @src 71:7005:7039  "string.concat(\"p\", erc20.symbol())"
                let expr_17679_mpos := string_concat_t_stringliteral_2304e88f144ae9318c71b0fb9e0f44bd9e0c6c58fb1b5315a35fd8b4b2a444ab_t_string_memory_ptr(expr_17678_mpos)
                /// @src 71:7057:7062  "erc20"
                let _287_address := var_erc20_17650_address
                let expr_17680_address := _287_address
                /// @src 71:7057:7071  "erc20.decimals"
                let expr_17681_address := convert_t_contract$_IERC20Metadata_$32912_to_t_address(expr_17680_address)
                let expr_17681_functionSelector := 0x313ce567
                /// @src 71:7057:7073  "erc20.decimals()"

                // storage for arguments and returned data
                let _288 := allocate_unbounded()
                mstore(_288, shift_left_224(expr_17681_functionSelector))
                let _289 := abi_encode_tuple__to__fromStack(add(_288, 4) )

                let _290 := staticcall(gas(), expr_17681_address,  _288, sub(_289, _288), _288, 32)

                if iszero(_290) { revert_forward_1() }

                let expr_17682
                if _290 {

                    let _291 := 32

                    if gt(_291, returndatasize()) {
                        _291 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_288, _291)

                    // decode return parameters from external try-call into retVars
                    expr_17682 :=  abi_decode_tuple_t_uint8_fromMemory(_288, add(_288, _291))
                }
                /// @src 71:6878:7087  "new SupplyToken(..."

                let _292 := allocate_unbounded()
                let _293 := add(_292, datasize("SupplyToken_33073"))
                if or(gt(_293, 0xffffffffffffffff), lt(_293, _292)) { panic_error_0x41() }
                datacopy(_292, dataoffset("SupplyToken_33073"), datasize("SupplyToken_33073"))
                _293 := abi_encode_tuple_t_address_t_string_memory_ptr_t_string_memory_ptr_t_uint8__to_t_address_t_string_memory_ptr_t_string_memory_ptr_t_uint8__fromStack(_293, expr_17663, expr_17671_mpos, expr_17679_mpos, expr_17682)

                let expr_17683_address := create(0, _292, sub(_293, _292))

                if iszero(expr_17683_address) { revert_forward_1() }

                /// @src 71:6857:7097  "address(..."
                let expr_17684 := convert_t_contract$_SupplyToken_$33073_to_t_address(expr_17683_address)
                /// @src 71:6850:7097  "return address(..."
                var__17646 := expr_17684
                leave

            }
            /// @src 71:787:7928  "library AddPairLogic {..."

            function allocate_memory_struct_t_struct$_AssetStatus_$30934_memory_ptr() -> memPtr {
                memPtr := allocate_memory(192)
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

            /// @src 57:87:123  "uint256 internal constant ONE = 1e18"
            function constant_ONE_30273() -> ret {
                /// @src 57:119:123  "1e18"
                let expr_30272 := 0x0de0b6b3a7640000
                let _295 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_30272)

                ret := _295
            }

            function allocate_memory_struct_t_struct$_AssetStatus_$30934_storage_ptr() -> memPtr {
                memPtr := allocate_memory(192)
            }

            /// @ast-id 30966
            /// @src 66:828:965  "function createAssetStatus() internal pure returns (AssetStatus memory) {..."
            function fun_createAssetStatus_30966() -> var__30953_mpos {
                /// @src 66:880:898  "AssetStatus memory"
                let zero_t_struct$_AssetStatus_$30934_memory_ptr_294_mpos := zero_value_for_split_t_struct$_AssetStatus_$30934_memory_ptr()
                var__30953_mpos := zero_t_struct$_AssetStatus_$30934_memory_ptr_294_mpos

                /// @src 66:929:930  "0"
                let expr_30956 := 0x00
                /// @src 66:932:933  "0"
                let expr_30957 := 0x00
                /// @src 66:935:936  "0"
                let expr_30958 := 0x00
                /// @src 66:938:947  "Constants"
                let expr_30959_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:938:951  "Constants.ONE"
                let expr_30960 := constant_ONE_30273()
                /// @src 66:953:954  "0"
                let expr_30961 := 0x00
                /// @src 66:956:957  "0"
                let expr_30962 := 0x00
                /// @src 66:917:958  "AssetStatus(0, 0, 0, Constants.ONE, 0, 0)"
                let expr_30963_mpos := allocate_memory_struct_t_struct$_AssetStatus_$30934_storage_ptr()
                let _296 := convert_t_rational_0_by_1_to_t_uint256(expr_30956)
                write_to_memory_t_uint256(add(expr_30963_mpos, 0), _296)
                let _297 := convert_t_rational_0_by_1_to_t_uint256(expr_30957)
                write_to_memory_t_uint256(add(expr_30963_mpos, 32), _297)
                let _298 := convert_t_rational_0_by_1_to_t_uint256(expr_30958)
                write_to_memory_t_uint256(add(expr_30963_mpos, 64), _298)
                write_to_memory_t_uint256(add(expr_30963_mpos, 96), expr_30960)
                let _299 := convert_t_rational_0_by_1_to_t_uint256(expr_30961)
                write_to_memory_t_uint256(add(expr_30963_mpos, 128), _299)
                let _300 := convert_t_rational_0_by_1_to_t_uint256(expr_30962)
                write_to_memory_t_uint256(add(expr_30963_mpos, 160), _300)
                /// @src 66:910:958  "return AssetStatus(0, 0, 0, Constants.ONE, 0, 0)"
                var__30953_mpos := expr_30963_mpos
                leave

            }
            /// @src 71:787:7928  "library AddPairLogic {..."

            function allocate_memory_struct_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr() -> memPtr {
                memPtr := allocate_memory(544)
            }

            function zero_value_for_t_address() -> ret {
                ret := 0
            }

            function zero_value_for_t_int24() -> ret {
                ret := 0
            }

            function zero_value_for_t_uint64() -> ret {
                ret := 0
            }

            function allocate_memory_struct_t_struct$_UserStatus_$30939_memory_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function zero_value_for_t_int256() -> ret {
                ret := 0
            }

            function allocate_and_zero_memory_struct_t_struct$_UserStatus_$30939_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_UserStatus_$30939_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

            }

            function zero_value_for_t_struct$_UserStatus_$30939_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_UserStatus_$30939_memory_ptr()
            }

            function allocate_and_zero_memory_struct_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_address())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int24())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int24())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint64())
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

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_UserStatus_$30939_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_UserStatus_$30939_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr()
            }

            function allocate_memory_struct_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr() -> memPtr {
                memPtr := allocate_memory(544)
            }

            function write_to_memory_t_int24(memPtr, value) {
                mstore(memPtr, cleanup_t_int24(value))
            }

            function convert_t_rational_0_by_1_to_t_uint64(value) -> converted {
                converted := cleanup_t_uint64(identity(cleanup_t_rational_0_by_1(value)))
            }

            function write_to_memory_t_uint64(memPtr, value) {
                mstore(memPtr, cleanup_t_uint64(value))
            }

            function write_to_memory_t_struct$_UserStatus_$30939_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function convert_t_rational_0_by_1_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function write_to_memory_t_int256(memPtr, value) {
                mstore(memPtr, cleanup_t_int256(value))
            }

            /// @ast-id 13724
            /// @src 61:3515:4068  "function createAssetStatus(address uniswapPool, int24 tickLower, int24 tickUpper)..."
            function fun_createAssetStatus_13724(var_uniswapPool_13689, var_tickLower_13691, var_tickUpper_13693) -> var__13697_mpos {
                /// @src 61:3644:3670  "SqrtPerpAssetStatus memory"
                let zero_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr_301_mpos := zero_value_for_split_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr()
                var__13697_mpos := zero_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr_301_mpos

                /// @src 61:3726:3737  "uniswapPool"
                let _302 := var_uniswapPool_13689
                let expr_13700 := _302
                /// @src 61:3751:3760  "tickLower"
                let _303 := var_tickLower_13691
                let expr_13701 := _303
                /// @src 61:3774:3783  "tickUpper"
                let _304 := var_tickUpper_13693
                let expr_13702 := _304
                /// @src 61:3797:3798  "0"
                let expr_13703 := 0x00
                /// @src 61:3812:3813  "0"
                let expr_13704 := 0x00
                /// @src 61:3827:3828  "0"
                let expr_13705 := 0x00
                /// @src 61:3842:3843  "0"
                let expr_13706 := 0x00
                /// @src 61:3857:3858  "0"
                let expr_13707 := 0x00
                /// @src 61:3872:3873  "0"
                let expr_13708 := 0x00
                /// @src 61:3887:3888  "0"
                let expr_13709 := 0x00
                /// @src 61:3902:3903  "0"
                let expr_13710 := 0x00
                /// @src 61:3917:3918  "0"
                let expr_13711 := 0x00
                /// @src 61:3932:3933  "0"
                let expr_13712 := 0x00
                /// @src 61:3947:3958  "ScaledAsset"
                let expr_13713_address := linkersymbol("src/libraries/ScaledAsset.sol:ScaledAsset")
                /// @src 61:3947:3977  "ScaledAsset.createUserStatus()"
                let expr_13715_mpos := fun_createUserStatus_30978()
                /// @src 61:3991:4002  "ScaledAsset"
                let expr_13716_address := linkersymbol("src/libraries/ScaledAsset.sol:ScaledAsset")
                /// @src 61:3991:4021  "ScaledAsset.createUserStatus()"
                let expr_13718_mpos := fun_createUserStatus_30978()
                /// @src 61:4035:4036  "0"
                let expr_13719 := 0x00
                /// @src 61:4050:4051  "0"
                let expr_13720 := 0x00
                /// @src 61:3693:4061  "SqrtPerpAssetStatus(..."
                let expr_13721_mpos := allocate_memory_struct_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr()
                write_to_memory_t_address(add(expr_13721_mpos, 0), expr_13700)
                write_to_memory_t_int24(add(expr_13721_mpos, 32), expr_13701)
                write_to_memory_t_int24(add(expr_13721_mpos, 64), expr_13702)
                let _305 := convert_t_rational_0_by_1_to_t_uint64(expr_13703)
                write_to_memory_t_uint64(add(expr_13721_mpos, 96), _305)
                let _306 := convert_t_rational_0_by_1_to_t_uint256(expr_13704)
                write_to_memory_t_uint256(add(expr_13721_mpos, 128), _306)
                let _307 := convert_t_rational_0_by_1_to_t_uint256(expr_13705)
                write_to_memory_t_uint256(add(expr_13721_mpos, 160), _307)
                let _308 := convert_t_rational_0_by_1_to_t_uint256(expr_13706)
                write_to_memory_t_uint256(add(expr_13721_mpos, 192), _308)
                let _309 := convert_t_rational_0_by_1_to_t_uint256(expr_13707)
                write_to_memory_t_uint256(add(expr_13721_mpos, 224), _309)
                let _310 := convert_t_rational_0_by_1_to_t_uint256(expr_13708)
                write_to_memory_t_uint256(add(expr_13721_mpos, 256), _310)
                let _311 := convert_t_rational_0_by_1_to_t_uint256(expr_13709)
                write_to_memory_t_uint256(add(expr_13721_mpos, 288), _311)
                let _312 := convert_t_rational_0_by_1_to_t_uint256(expr_13710)
                write_to_memory_t_uint256(add(expr_13721_mpos, 320), _312)
                let _313 := convert_t_rational_0_by_1_to_t_uint256(expr_13711)
                write_to_memory_t_uint256(add(expr_13721_mpos, 352), _313)
                let _314 := convert_t_rational_0_by_1_to_t_uint256(expr_13712)
                write_to_memory_t_uint256(add(expr_13721_mpos, 384), _314)
                write_to_memory_t_struct$_UserStatus_$30939_memory_ptr(add(expr_13721_mpos, 416), expr_13715_mpos)
                write_to_memory_t_struct$_UserStatus_$30939_memory_ptr(add(expr_13721_mpos, 448), expr_13718_mpos)
                let _315 := convert_t_rational_0_by_1_to_t_int256(expr_13719)
                write_to_memory_t_int256(add(expr_13721_mpos, 480), _315)
                let _316 := convert_t_rational_0_by_1_to_t_int256(expr_13720)
                write_to_memory_t_int256(add(expr_13721_mpos, 512), _316)
                /// @src 61:3686:4061  "return SqrtPerpAssetStatus(..."
                var__13697_mpos := expr_13721_mpos
                leave

            }
            /// @src 71:787:7928  "library AddPairLogic {..."

            function zero_value_for_split_t_struct$_UserStatus_$30939_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_UserStatus_$30939_memory_ptr()
            }

            function allocate_memory_struct_t_struct$_UserStatus_$30939_storage_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            /// @ast-id 30978
            /// @src 66:971:1081  "function createUserStatus() internal pure returns (UserStatus memory) {..."
            function fun_createUserStatus_30978() -> var__30970_mpos {
                /// @src 66:1022:1039  "UserStatus memory"
                let zero_t_struct$_UserStatus_$30939_memory_ptr_317_mpos := zero_value_for_split_t_struct$_UserStatus_$30939_memory_ptr()
                var__30970_mpos := zero_t_struct$_UserStatus_$30939_memory_ptr_317_mpos

                /// @src 66:1069:1070  "0"
                let expr_30973 := 0x00
                /// @src 66:1072:1073  "0"
                let expr_30974 := 0x00
                /// @src 66:1058:1074  "UserStatus(0, 0)"
                let expr_30975_mpos := allocate_memory_struct_t_struct$_UserStatus_$30939_storage_ptr()
                let _318 := convert_t_rational_0_by_1_to_t_int256(expr_30973)
                write_to_memory_t_int256(add(expr_30975_mpos, 0), _318)
                let _319 := convert_t_rational_0_by_1_to_t_uint256(expr_30974)
                write_to_memory_t_uint256(add(expr_30975_mpos, 32), _319)
                /// @src 66:1051:1074  "return UserStatus(0, 0)"
                var__30970_mpos := expr_30975_mpos
                leave

            }
            /// @src 71:787:7928  "library AddPairLogic {..."

        }

        /// @use-src 11:"lib/solmate/src/tokens/ERC20.sol", 55:"src/interfaces/ISupplyToken.sol", 80:"src/tokenization/SupplyToken.sol"
        object "SupplyToken_33073" {
            code {
                /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."
                mstore(64, memoryguard(256))
                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

                let _1, _2, _3, _4 := copy_arguments_for_constructor_33040_object_SupplyToken_33073()
                constructor_SupplyToken_33073(_1, _2, _3, _4)

                let _5 := allocate_unbounded()
                codecopy(_5, dataoffset("SupplyToken_33073_deployed"), datasize("SupplyToken_33073_deployed"))

                setimmutable(_5, "12942", mload(128))

                setimmutable(_5, "12956", mload(160))

                setimmutable(_5, "12958", mload(192))

                setimmutable(_5, "33007", mload(224))

                return(_5, datasize("SupplyToken_33073_deployed"))

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

                function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                    revert(0, 0)
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

                function copy_memory_to_memory_with_cleanup(src, dst, length) {

                    mcopy(dst, src, length)
                    mstore(add(dst, length), 0)

                }

                function abi_decode_available_length_t_string_memory_ptr_fromMemory(src, length, end) -> array {
                    array := allocate_memory(array_allocation_size_t_string_memory_ptr(length))
                    mstore(array, length)
                    let dst := add(array, 0x20)
                    if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
                    copy_memory_to_memory_with_cleanup(src, dst, length)
                }

                // string
                function abi_decode_t_string_memory_ptr_fromMemory(offset, end) -> array {
                    if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                    let length := mload(offset)
                    array := abi_decode_available_length_t_string_memory_ptr_fromMemory(add(offset, 0x20), length, end)
                }

                function cleanup_t_uint8(value) -> cleaned {
                    cleaned := and(value, 0xff)
                }

                function validator_revert_t_uint8(value) {
                    if iszero(eq(value, cleanup_t_uint8(value))) { revert(0, 0) }
                }

                function abi_decode_t_uint8_fromMemory(offset, end) -> value {
                    value := mload(offset)
                    validator_revert_t_uint8(value)
                }

                function abi_decode_tuple_t_addresst_string_memory_ptrt_string_memory_ptrt_uint8_fromMemory(headStart, dataEnd) -> value0, value1, value2, value3 {
                    if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                    {

                        let offset := 0

                        value0 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
                    }

                    {

                        let offset := mload(add(headStart, 32))
                        if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                        value1 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
                    }

                    {

                        let offset := mload(add(headStart, 64))
                        if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                        value2 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
                    }

                    {

                        let offset := 96

                        value3 := abi_decode_t_uint8_fromMemory(add(headStart, offset), dataEnd)
                    }

                }

                function copy_arguments_for_constructor_33040_object_SupplyToken_33073() -> ret_param_0, ret_param_1, ret_param_2, ret_param_3 {

                    let programSize := datasize("SupplyToken_33073")
                    let argSize := sub(codesize(), programSize)

                    let memoryDataOffset := allocate_memory(argSize)
                    codecopy(memoryDataOffset, programSize, argSize)

                    ret_param_0, ret_param_1, ret_param_2, ret_param_3 := abi_decode_tuple_t_addresst_string_memory_ptrt_string_memory_ptrt_uint8_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
                }

                /// @ast-id 33040
                /// @src 80:368:549  "constructor(address controller, string memory _name, string memory _symbol, uint8 __decimals)..."
                function constructor_SupplyToken_33073(var_controller_33021, var__name_33023_mpos, var__symbol_33025_mpos, var___decimals_33027) {
                    /// @src 80:476:481  "_name"
                    let _6_mpos := var__name_33023_mpos
                    let expr_33030_mpos := _6_mpos
                    let _7_mpos := expr_33030_mpos
                    /// @src 80:483:490  "_symbol"
                    let _8_mpos := var__symbol_33025_mpos
                    let expr_33031_mpos := _8_mpos
                    let _9_mpos := expr_33031_mpos
                    /// @src 80:492:502  "__decimals"
                    let _10 := var___decimals_33027
                    let expr_33032 := _10
                    let _11 := expr_33032

                    /// @src 80:368:549  "constructor(address controller, string memory _name, string memory _symbol, uint8 __decimals)..."
                    constructor_ISupplyToken_2184(_7_mpos, _9_mpos, _11)

                    /// @src 80:532:542  "controller"
                    let _12 := var_controller_33021
                    let expr_33036 := _12
                    /// @src 80:518:542  "_controller = controller"
                    let _13 := expr_33036
                    mstore(224, _13)
                    let expr_33037 := expr_33036

                }
                /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                /// @src 55:63:211  "interface ISupplyToken {..."
                function constructor_ISupplyToken_2184(_7_mpos, _9_mpos, _11) {

                    /// @src 55:63:211  "interface ISupplyToken {..."
                    constructor_ERC20_13305(_7_mpos, _9_mpos, _11)

                }
                /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

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

                function cleanup_t_uint256(value) -> cleaned {
                    cleaned := value
                }

                function identity(value) -> ret {
                    ret := value
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

                /// @ast-id 12994
                /// @src 11:1981:2273  "constructor(..."
                function constructor_ERC20_13305(var__name_12964_mpos, var__symbol_12966_mpos, var__decimals_12968) {

                    /// @src 11:1981:2273  "constructor(..."

                    /// @src 11:2101:2106  "_name"
                    let _14_mpos := var__name_12964_mpos
                    let expr_12972_mpos := _14_mpos
                    /// @src 11:2094:2106  "name = _name"
                    update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(0x00, expr_12972_mpos)
                    let _15_slot := 0x00
                    let expr_12973_slot := _15_slot
                    /// @src 11:2125:2132  "_symbol"
                    let _16_mpos := var__symbol_12966_mpos
                    let expr_12976_mpos := _16_mpos
                    /// @src 11:2116:2132  "symbol = _symbol"
                    update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(0x01, expr_12976_mpos)
                    let _17_slot := 0x01
                    let expr_12977_slot := _17_slot
                    /// @src 11:2153:2162  "_decimals"
                    let _18 := var__decimals_12968
                    let expr_12980 := _18
                    /// @src 11:2142:2162  "decimals = _decimals"
                    let _19 := expr_12980
                    mstore(128, _19)
                    let expr_12981 := expr_12980
                    /// @src 11:2192:2205  "block.chainid"
                    let expr_12985 := chainid()
                    /// @src 11:2173:2205  "INITIAL_CHAIN_ID = block.chainid"
                    let _20 := expr_12985
                    mstore(160, _20)
                    let expr_12986 := expr_12985
                    /// @src 11:2242:2266  "computeDomainSeparator()"
                    let expr_12990 := fun_computeDomainSeparator_13248()
                    /// @src 11:2215:2266  "INITIAL_DOMAIN_SEPARATOR = computeDomainSeparator()"
                    let _21 := expr_12990
                    mstore(192, _21)
                    let expr_12991 := expr_12990

                }
                /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                function zero_value_for_split_t_bytes32() -> ret {
                    ret := 0
                }

                function convert_array_t_string_storage_to_t_bytes_storage_ptr(value) -> converted  {
                    converted := value

                }

                function array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length) -> updated_pos {
                    mstore(pos, length)
                    updated_pos := add(pos, 0x20)
                }

                function array_dataslot_t_bytes_storage_ptr(ptr) -> data {
                    data := ptr

                    mstore(0, ptr)
                    data := keccak256(0, 0x20)

                }

                // bytes -> bytes
                function abi_encode_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value, pos) -> ret {
                    let slotValue := sload(value)
                    let length := extract_byte_array_length(slotValue)
                    pos := array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length)
                    switch and(slotValue, 1)
                    case 0 {
                        // short byte array
                        mstore(pos, and(slotValue, not(0xff)))
                        ret := add(pos, mul(0x20, iszero(iszero(length))))
                    }
                    case 1 {
                        // long byte array
                        let dataPos := array_dataslot_t_bytes_storage_ptr(value)
                        let i := 0
                        for { } lt(i, length) { i := add(i, 0x20) } {
                            mstore(add(pos, i), sload(dataPos))
                            dataPos := add(dataPos, 1)
                        }
                        ret := add(pos, i)
                    }
                }

                function abi_encodeUpdatedPos_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value0, pos) -> updatedPos {
                    updatedPos := abi_encode_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value0, pos)
                }

                function copy_array_from_storage_to_memory_t_bytes_storage_ptr(slot) -> memPtr {
                    memPtr := allocate_unbounded()
                    let end := abi_encodeUpdatedPos_t_bytes_storage_ptr_to_t_bytes_memory_ptr(slot, memPtr)
                    finalize_allocation(memPtr, sub(end, memPtr))
                }

                function convert_array_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value) -> converted  {

                    // Copy the array to a free position in memory
                    converted :=

                    copy_array_from_storage_to_memory_t_bytes_storage_ptr(value)

                }

                function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                    data := ptr

                    data := add(ptr, 0x20)

                }

                function array_length_t_bytes_memory_ptr(value) -> length {

                    length := mload(value)

                }

                function convert_t_uint160_to_t_uint160(value) -> converted {
                    converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
                }

                function convert_t_uint160_to_t_address(value) -> converted {
                    converted := convert_t_uint160_to_t_uint160(value)
                }

                function convert_t_contract$_ERC20_$13305_to_t_address(value) -> converted {
                    converted := convert_t_uint160_to_t_address(value)
                }

                function cleanup_t_bytes32(value) -> cleaned {
                    cleaned := value
                }

                function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                    mstore(pos, cleanup_t_bytes32(value))
                }

                function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                    mstore(pos, cleanup_t_uint256(value))
                }

                function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                    mstore(pos, cleanup_t_address(value))
                }

                function abi_encode_tuple_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__to_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                    tail := add(headStart, 160)

                    abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                    abi_encode_t_bytes32_to_t_bytes32_fromStack(value1,  add(headStart, 32))

                    abi_encode_t_bytes32_to_t_bytes32_fromStack(value2,  add(headStart, 64))

                    abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                    abi_encode_t_address_to_t_address_fromStack(value4,  add(headStart, 128))

                }

                /// @ast-id 13248
                /// @src 11:5510:5956  "function computeDomainSeparator() internal view virtual returns (bytes32) {..."
                function fun_computeDomainSeparator_13248() -> var__13221 {
                    /// @src 11:5575:5582  "bytes32"
                    let zero_t_bytes32_22 := zero_value_for_split_t_bytes32()
                    var__13221 := zero_t_bytes32_22

                    /// @src 11:5672:5767  "keccak256(\"EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)\")"
                    let expr_13228 := 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
                    /// @src 11:5805:5809  "name"
                    let _23_slot := 0x00
                    let expr_13232_slot := _23_slot
                    /// @src 11:5799:5810  "bytes(name)"
                    let expr_13233_slot := convert_array_t_string_storage_to_t_bytes_storage_ptr(expr_13232_slot)
                    /// @src 11:5789:5811  "keccak256(bytes(name))"
                    let _24_mpos := convert_array_t_bytes_storage_ptr_to_t_bytes_memory_ptr(expr_13233_slot)
                    let expr_13234 := keccak256(array_dataslot_t_bytes_memory_ptr(_24_mpos), array_length_t_bytes_memory_ptr(_24_mpos))
                    /// @src 11:5833:5847  "keccak256(\"1\")"
                    let expr_13237 := 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6
                    /// @src 11:5869:5882  "block.chainid"
                    let expr_13239 := chainid()
                    /// @src 11:5912:5916  "this"
                    let expr_13242_address := address()
                    /// @src 11:5904:5917  "address(this)"
                    let expr_13243 := convert_t_contract$_ERC20_$13305_to_t_address(expr_13242_address)
                    /// @src 11:5640:5935  "abi.encode(..."

                    let expr_13244_mpos := allocate_unbounded()
                    let _25 := add(expr_13244_mpos, 0x20)

                    let _26 := abi_encode_tuple_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__to_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__fromStack(_25, expr_13228, expr_13234, expr_13237, expr_13239, expr_13243)
                    mstore(expr_13244_mpos, sub(_26, add(expr_13244_mpos, 0x20)))
                    finalize_allocation(expr_13244_mpos, sub(_26, expr_13244_mpos))
                    /// @src 11:5613:5949  "keccak256(..."
                    let expr_13245 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_13244_mpos), array_length_t_bytes_memory_ptr(expr_13244_mpos))
                    /// @src 11:5594:5949  "return..."
                    var__13221 := expr_13245
                    leave

                }
                /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

            }
            /// @use-src 11:"lib/solmate/src/tokens/ERC20.sol", 80:"src/tokenization/SupplyToken.sol"
            object "SupplyToken_33073_deployed" {
                code {
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."
                    mstore(64, memoryguard(128))

                    if iszero(lt(calldatasize(), 4))
                    {
                        let selector := shift_right_224_unsigned(calldataload(0))
                        switch selector

                        case 0x06fdde03
                        {
                            // name()

                            external_fun_name_12938()
                        }

                        case 0x095ea7b3
                        {
                            // approve(address,uint256)

                            external_fun_approve_13022()
                        }

                        case 0x18160ddd
                        {
                            // totalSupply()

                            external_fun_totalSupply_12944()
                        }

                        case 0x23b872dd
                        {
                            // transferFrom(address,address,uint256)

                            external_fun_transferFrom_13116()
                        }

                        case 0x313ce567
                        {
                            // decimals()

                            external_fun_decimals_12942()
                        }

                        case 0x3644e515
                        {
                            // DOMAIN_SEPARATOR()

                            external_fun_DOMAIN_SEPARATOR_13218()
                        }

                        case 0x40c10f19
                        {
                            // mint(address,uint256)

                            external_fun_mint_33056()
                        }

                        case 0x70a08231
                        {
                            // balanceOf(address)

                            external_fun_balanceOf_12948()
                        }

                        case 0x7ecebe00
                        {
                            // nonces(address)

                            external_fun_nonces_12962()
                        }

                        case 0x95d89b41
                        {
                            // symbol()

                            external_fun_symbol_12940()
                        }

                        case 0x9dc29fac
                        {
                            // burn(address,uint256)

                            external_fun_burn_33072()
                        }

                        case 0xa9059cbb
                        {
                            // transfer(address,uint256)

                            external_fun_transfer_13055()
                        }

                        case 0xd505accf
                        {
                            // permit(address,address,uint256,uint256,uint8,bytes32,bytes32)

                            external_fun_permit_13203()
                        }

                        case 0xdd62ed3e
                        {
                            // allowance(address,address)

                            external_fun_allowance_12954()
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

                    function panic_error_0x00() {
                        mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                        mstore(4, 0x00)
                        revert(0, 0x24)
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

                    function copy_array_from_storage_to_memory_t_string_storage(slot) -> memPtr {
                        memPtr := allocate_unbounded()
                        let end := abi_encodeUpdatedPos_t_string_storage_to_t_string_memory_ptr(slot, memPtr)
                        finalize_allocation(memPtr, sub(end, memPtr))
                    }

                    function read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset) -> value {
                        if gt(offset, 0) { panic_error_0x00() }
                        value := copy_array_from_storage_to_memory_t_string_storage(slot)
                    }

                    /// @ast-id 12938
                    /// @src 11:1031:1049  "string public name"
                    function getter_fun_name_12938() -> ret_mpos {

                        let slot := 0
                        let offset := 0

                        ret_mpos := read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset)

                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

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

                    function external_fun_name_12938() {

                        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                        abi_decode_tuple_(4, calldatasize())
                        let ret_0 :=  getter_fun_name_12938()
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

                    function external_fun_approve_13022() {

                        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                        let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                        let ret_0 :=  fun_approve_13022(param_0, param_1)
                        let memPos := allocate_unbounded()
                        let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                        return(memPos, sub(memEnd, memPos))

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

                    /// @ast-id 12944
                    /// @src 11:1304:1330  "uint256 public totalSupply"
                    function getter_fun_totalSupply_12944() -> ret {

                        let slot := 2
                        let offset := 0

                        ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                        mstore(pos, cleanup_t_uint256(value))
                    }

                    function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                        tail := add(headStart, 32)

                        abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                    }

                    function external_fun_totalSupply_12944() {

                        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                        abi_decode_tuple_(4, calldatasize())
                        let ret_0 :=  getter_fun_totalSupply_12944()
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

                    function external_fun_transferFrom_13116() {

                        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                        let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                        let ret_0 :=  fun_transferFrom_13116(param_0, param_1, param_2)
                        let memPos := allocate_unbounded()
                        let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                        return(memPos, sub(memEnd, memPos))

                    }

                    /// @ast-id 12942
                    /// @src 11:1083:1114  "uint8 public immutable decimals"
                    function getter_fun_decimals_12942() -> rval {

                        rval := loadimmutable("12942")

                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

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

                    function external_fun_decimals_12942() {

                        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                        abi_decode_tuple_(4, calldatasize())
                        let ret_0 :=  getter_fun_decimals_12942()
                        let memPos := allocate_unbounded()
                        let memEnd := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(memPos , ret_0)
                        return(memPos, sub(memEnd, memPos))

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

                    function external_fun_DOMAIN_SEPARATOR_13218() {

                        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                        abi_decode_tuple_(4, calldatasize())
                        let ret_0 :=  fun_DOMAIN_SEPARATOR_13218()
                        let memPos := allocate_unbounded()
                        let memEnd := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(memPos , ret_0)
                        return(memPos, sub(memEnd, memPos))

                    }

                    function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                        tail := add(headStart, 0)

                    }

                    function external_fun_mint_33056() {

                        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                        let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                        fun_mint_33056(param_0, param_1)
                        let memPos := allocate_unbounded()
                        let memEnd := abi_encode_tuple__to__fromStack(memPos  )
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

                    function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
                        mstore(0, convert_t_address_to_t_address(key))
                        mstore(0x20, slot)
                        dataSlot := keccak256(0, 0x40)
                    }

                    /// @ast-id 12948
                    /// @src 11:1337:1381  "mapping(address => uint256) public balanceOf"
                    function getter_fun_balanceOf_12948(key_0) -> ret {

                        let slot := 3
                        let offset := 0

                        slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                        ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    function external_fun_balanceOf_12948() {

                        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                        let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                        let ret_0 :=  getter_fun_balanceOf_12948(param_0)
                        let memPos := allocate_unbounded()
                        let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                        return(memPos, sub(memEnd, memPos))

                    }

                    /// @ast-id 12962
                    /// @src 11:1751:1792  "mapping(address => uint256) public nonces"
                    function getter_fun_nonces_12962(key_0) -> ret {

                        let slot := 5
                        let offset := 0

                        slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                        ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    function external_fun_nonces_12962() {

                        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                        let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                        let ret_0 :=  getter_fun_nonces_12962(param_0)
                        let memPos := allocate_unbounded()
                        let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                        return(memPos, sub(memEnd, memPos))

                    }

                    /// @ast-id 12940
                    /// @src 11:1056:1076  "string public symbol"
                    function getter_fun_symbol_12940() -> ret_mpos {

                        let slot := 1
                        let offset := 0

                        ret_mpos := read_from_storage__dynamic_split_t_string_memory_ptr(slot, offset)

                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    function external_fun_symbol_12940() {

                        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                        abi_decode_tuple_(4, calldatasize())
                        let ret_0 :=  getter_fun_symbol_12940()
                        let memPos := allocate_unbounded()
                        let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                        return(memPos, sub(memEnd, memPos))

                    }

                    function external_fun_burn_33072() {

                        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                        let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                        fun_burn_33072(param_0, param_1)
                        let memPos := allocate_unbounded()
                        let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                        return(memPos, sub(memEnd, memPos))

                    }

                    function external_fun_transfer_13055() {

                        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                        let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                        let ret_0 :=  fun_transfer_13055(param_0, param_1)
                        let memPos := allocate_unbounded()
                        let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                        return(memPos, sub(memEnd, memPos))

                    }

                    function validator_revert_t_uint8(value) {
                        if iszero(eq(value, cleanup_t_uint8(value))) { revert(0, 0) }
                    }

                    function abi_decode_t_uint8(offset, end) -> value {
                        value := calldataload(offset)
                        validator_revert_t_uint8(value)
                    }

                    function validator_revert_t_bytes32(value) {
                        if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
                    }

                    function abi_decode_t_bytes32(offset, end) -> value {
                        value := calldataload(offset)
                        validator_revert_t_bytes32(value)
                    }

                    function abi_decode_tuple_t_addresst_addresst_uint256t_uint256t_uint8t_bytes32t_bytes32(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5, value6 {
                        if slt(sub(dataEnd, headStart), 224) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

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

                        {

                            let offset := 96

                            value3 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                        }

                        {

                            let offset := 128

                            value4 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                        }

                        {

                            let offset := 160

                            value5 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                        }

                        {

                            let offset := 192

                            value6 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                        }

                    }

                    function external_fun_permit_13203() {

                        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                        let param_0, param_1, param_2, param_3, param_4, param_5, param_6 :=  abi_decode_tuple_t_addresst_addresst_uint256t_uint256t_uint8t_bytes32t_bytes32(4, calldatasize())
                        fun_permit_13203(param_0, param_1, param_2, param_3, param_4, param_5, param_6)
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

                    function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot , key) -> dataSlot {
                        mstore(0, convert_t_address_to_t_address(key))
                        mstore(0x20, slot)
                        dataSlot := keccak256(0, 0x40)
                    }

                    /// @ast-id 12954
                    /// @src 11:1388:1452  "mapping(address => mapping(address => uint256)) public allowance"
                    function getter_fun_allowance_12954(key_0, key_1) -> ret {

                        let slot := 4
                        let offset := 0

                        slot := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot, key_0)

                        slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_1)

                        ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    function external_fun_allowance_12954() {

                        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                        let param_0, param_1 :=  abi_decode_tuple_t_addresst_address(4, calldatasize())
                        let ret_0 :=  getter_fun_allowance_12954(param_0, param_1)
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

                    /// @ast-id 13022
                    /// @src 11:2461:2672  "function approve(address spender, uint256 amount) public virtual returns (bool) {..."
                    function fun_approve_13022(var_spender_12996, var_amount_12998) -> var__13001 {
                        /// @src 11:2535:2539  "bool"
                        let zero_t_bool_1 := zero_value_for_split_t_bool()
                        var__13001 := zero_t_bool_1

                        /// @src 11:2584:2590  "amount"
                        let _2 := var_amount_12998
                        let expr_13009 := _2
                        /// @src 11:2551:2560  "allowance"
                        let _3_slot := 0x04
                        let expr_13003_slot := _3_slot
                        /// @src 11:2561:2571  "msg.sender"
                        let expr_13005 := caller()
                        /// @src 11:2551:2572  "allowance[msg.sender]"
                        let _4 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_13003_slot,expr_13005)
                        let _5_slot := _4
                        let expr_13007_slot := _5_slot
                        /// @src 11:2573:2580  "spender"
                        let _6 := var_spender_12996
                        let expr_13006 := _6
                        /// @src 11:2551:2581  "allowance[msg.sender][spender]"
                        let _7 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13007_slot,expr_13006)
                        /// @src 11:2551:2590  "allowance[msg.sender][spender] = amount"
                        update_storage_value_offset_0_t_uint256_to_t_uint256(_7, expr_13009)
                        let expr_13010 := expr_13009
                        /// @src 11:2615:2625  "msg.sender"
                        let expr_13014 := caller()
                        /// @src 11:2627:2634  "spender"
                        let _8 := var_spender_12996
                        let expr_13015 := _8
                        /// @src 11:2636:2642  "amount"
                        let _9 := var_amount_12998
                        let expr_13016 := _9
                        /// @src 11:2606:2643  "Approval(msg.sender, spender, amount)"
                        let _10 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                        let _11 := convert_t_address_to_t_address(expr_13014)
                        let _12 := convert_t_address_to_t_address(expr_13015)
                        {
                            let _13 := allocate_unbounded()
                            let _14 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_13 , expr_13016)
                            log3(_13, sub(_14, _13) , _10, _11, _12)
                        }/// @src 11:2661:2665  "true"
                        let expr_13019 := 0x01
                        /// @src 11:2654:2665  "return true"
                        var__13001 := expr_13019
                        leave

                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

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

                    function checked_sub_t_uint256(x, y) -> diff {
                        x := cleanup_t_uint256(x)
                        y := cleanup_t_uint256(y)
                        diff := sub(x, y)

                        if gt(diff, x) { panic_error_0x11() }

                    }

                    function wrapping_add_t_uint256(x, y) -> sum {
                        sum := cleanup_t_uint256(add(x, y))
                    }

                    /// @ast-id 13116
                    /// @src 11:3057:3649  "function transferFrom(..."
                    function fun_transferFrom_13116(var_from_13057, var_to_13059, var_amount_13061) -> var__13064 {
                        /// @src 11:3175:3179  "bool"
                        let zero_t_bool_15 := zero_value_for_split_t_bool()
                        var__13064 := zero_t_bool_15

                        /// @src 11:3209:3218  "allowance"
                        let _16_slot := 0x04
                        let expr_13068_slot := _16_slot
                        /// @src 11:3219:3223  "from"
                        let _17 := var_from_13057
                        let expr_13069 := _17
                        /// @src 11:3209:3224  "allowance[from]"
                        let _18 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_13068_slot,expr_13069)
                        let _19_slot := _18
                        let expr_13070_slot := _19_slot
                        /// @src 11:3225:3235  "msg.sender"
                        let expr_13072 := caller()
                        /// @src 11:3209:3236  "allowance[from][msg.sender]"
                        let _20 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13070_slot,expr_13072)
                        let _21 := read_from_storage_split_offset_0_t_uint256(_20)
                        let expr_13073 := _21
                        /// @src 11:3191:3236  "uint256 allowed = allowance[from][msg.sender]"
                        let var_allowed_13067 := expr_13073
                        /// @src 11:3287:3294  "allowed"
                        let _22 := var_allowed_13067
                        let expr_13075 := _22
                        /// @src 11:3298:3315  "type(uint256).max"
                        let expr_13080 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        /// @src 11:3287:3315  "allowed != type(uint256).max"
                        let expr_13081 := iszero(eq(cleanup_t_uint256(expr_13075), cleanup_t_uint256(expr_13080)))
                        /// @src 11:3283:3363  "if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount"
                        if expr_13081 {
                            /// @src 11:3347:3354  "allowed"
                            let _23 := var_allowed_13067
                            let expr_13088 := _23
                            /// @src 11:3357:3363  "amount"
                            let _24 := var_amount_13061
                            let expr_13089 := _24
                            /// @src 11:3347:3363  "allowed - amount"
                            let expr_13090 := checked_sub_t_uint256(expr_13088, expr_13089)

                            /// @src 11:3317:3326  "allowance"
                            let _25_slot := 0x04
                            let expr_13082_slot := _25_slot
                            /// @src 11:3327:3331  "from"
                            let _26 := var_from_13057
                            let expr_13083 := _26
                            /// @src 11:3317:3332  "allowance[from]"
                            let _27 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_13082_slot,expr_13083)
                            let _28_slot := _27
                            let expr_13086_slot := _28_slot
                            /// @src 11:3333:3343  "msg.sender"
                            let expr_13085 := caller()
                            /// @src 11:3317:3344  "allowance[from][msg.sender]"
                            let _29 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13086_slot,expr_13085)
                            /// @src 11:3317:3363  "allowance[from][msg.sender] = allowed - amount"
                            update_storage_value_offset_0_t_uint256_to_t_uint256(_29, expr_13090)
                            let expr_13091 := expr_13090
                            /// @src 11:3283:3363  "if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount"
                        }
                        /// @src 11:3393:3399  "amount"
                        let _30 := var_amount_13061
                        let expr_13097 := _30
                        /// @src 11:3374:3383  "balanceOf"
                        let _31_slot := 0x03
                        let expr_13094_slot := _31_slot
                        /// @src 11:3384:3388  "from"
                        let _32 := var_from_13057
                        let expr_13095 := _32
                        /// @src 11:3374:3389  "balanceOf[from]"
                        let _33 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13094_slot,expr_13095)
                        /// @src 11:3374:3399  "balanceOf[from] -= amount"
                        let _34 := read_from_storage_split_offset_0_t_uint256(_33)
                        let expr_13098 := checked_sub_t_uint256(_34, expr_13097)

                        update_storage_value_offset_0_t_uint256_to_t_uint256(_33, expr_13098)
                        /// @src 11:3562:3568  "amount"
                        let _35 := var_amount_13061
                        let expr_13103 := _35
                        /// @src 11:3545:3554  "balanceOf"
                        let _36_slot := 0x03
                        let expr_13100_slot := _36_slot
                        /// @src 11:3555:3557  "to"
                        let _37 := var_to_13059
                        let expr_13101 := _37
                        /// @src 11:3545:3558  "balanceOf[to]"
                        let _38 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13100_slot,expr_13101)
                        /// @src 11:3545:3568  "balanceOf[to] += amount"
                        let _39 := read_from_storage_split_offset_0_t_uint256(_38)
                        let expr_13104 := wrapping_add_t_uint256(_39, expr_13103)

                        update_storage_value_offset_0_t_uint256_to_t_uint256(_38, expr_13104)
                        /// @src 11:3603:3607  "from"
                        let _40 := var_from_13057
                        let expr_13108 := _40
                        /// @src 11:3609:3611  "to"
                        let _41 := var_to_13059
                        let expr_13109 := _41
                        /// @src 11:3613:3619  "amount"
                        let _42 := var_amount_13061
                        let expr_13110 := _42
                        /// @src 11:3594:3620  "Transfer(from, to, amount)"
                        let _43 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                        let _44 := convert_t_address_to_t_address(expr_13108)
                        let _45 := convert_t_address_to_t_address(expr_13109)
                        {
                            let _46 := allocate_unbounded()
                            let _47 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_46 , expr_13110)
                            log3(_46, sub(_47, _46) , _43, _44, _45)
                        }/// @src 11:3638:3642  "true"
                        let expr_13113 := 0x01
                        /// @src 11:3631:3642  "return true"
                        var__13064 := expr_13113
                        leave

                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    function zero_value_for_split_t_bytes32() -> ret {
                        ret := 0
                    }

                    /// @ast-id 13218
                    /// @src 11:5327:5504  "function DOMAIN_SEPARATOR() public view virtual returns (bytes32) {..."
                    function fun_DOMAIN_SEPARATOR_13218() -> var__13206 {
                        /// @src 11:5384:5391  "bytes32"
                        let zero_t_bytes32_48 := zero_value_for_split_t_bytes32()
                        var__13206 := zero_t_bytes32_48

                        /// @src 11:5410:5423  "block.chainid"
                        let expr_13209 := chainid()
                        /// @src 11:5427:5443  "INITIAL_CHAIN_ID"
                        let _49 := loadimmutable("12956")
                        let expr_13210 := _49
                        /// @src 11:5410:5443  "block.chainid == INITIAL_CHAIN_ID"
                        let expr_13211 := eq(cleanup_t_uint256(expr_13209), cleanup_t_uint256(expr_13210))
                        /// @src 11:5410:5497  "block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator()"
                        let expr_13215
                        switch expr_13211
                        case 0 {
                            /// @src 11:5473:5497  "computeDomainSeparator()"
                            let expr_13214 := fun_computeDomainSeparator_13248()
                            /// @src 11:5410:5497  "block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator()"
                            expr_13215 := expr_13214
                        }
                        default {
                            /// @src 11:5446:5470  "INITIAL_DOMAIN_SEPARATOR"
                            let _50 := loadimmutable("12958")
                            let expr_13212 := _50
                            /// @src 11:5410:5497  "block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator()"
                            expr_13215 := expr_13212
                        }
                        /// @src 11:5403:5497  "return block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator()"
                        var__13206 := expr_13215
                        leave

                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    function store_literal_in_memory_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3(memPtr) {

                        mstore(add(memPtr, 0), "ST0")

                    }

                    function abi_encode_t_stringliteral_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3_to_t_string_memory_ptr_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 3)
                        store_literal_in_memory_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3(pos)
                        end := add(pos, 32)
                    }

                    function abi_encode_tuple_t_stringliteral_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                        tail := add(headStart, 32)

                        mstore(add(headStart, 0), sub(tail, headStart))
                        tail := abi_encode_t_stringliteral_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3_to_t_string_memory_ptr_fromStack( tail)

                    }

                    function require_helper_t_stringliteral_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3(condition ) {
                        if iszero(condition)
                        {

                            let memPtr := allocate_unbounded()

                            mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                            let end := abi_encode_tuple_t_stringliteral_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                            revert(memPtr, sub(end, memPtr))
                        }
                    }

                    /// @ast-id 33019
                    /// @src 80:267:362  "modifier onlyController() {..."
                    function modifier_onlyController_33048(var_account_33042, var_amount_33044) {

                        /// @src 80:311:322  "_controller"
                        let _51 := loadimmutable("33007")
                        let expr_33010 := _51
                        /// @src 80:326:336  "msg.sender"
                        let expr_33012 := caller()
                        /// @src 80:311:336  "_controller == msg.sender"
                        let expr_33013 := eq(cleanup_t_address(expr_33010), cleanup_t_address(expr_33012))
                        /// @src 80:303:344  "require(_controller == msg.sender, \"ST0\")"
                        require_helper_t_stringliteral_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3(expr_33013)
                        /// @src 80:354:355  "_"
                        fun_mint_33056_inner(var_account_33042, var_amount_33044)

                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    /// @src 80:555:682  "function mint(address account, uint256 amount) external virtual override onlyController {..."
                    function fun_mint_33056_inner(var_account_33042, var_amount_33044) {

                        /// @src 80:659:666  "account"
                        let _52 := var_account_33042
                        let expr_33051 := _52
                        /// @src 80:668:674  "amount"
                        let _53 := var_amount_33044
                        let expr_33052 := _53
                        fun__mint_13276(expr_33051, expr_33052)

                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    /// @ast-id 33056
                    /// @src 80:555:682  "function mint(address account, uint256 amount) external virtual override onlyController {..."
                    function fun_mint_33056(var_account_33042, var_amount_33044) {

                        modifier_onlyController_33048(var_account_33042, var_amount_33044)
                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    /// @ast-id 33019
                    /// @src 80:267:362  "modifier onlyController() {..."
                    function modifier_onlyController_33064(var_account_33058, var_amount_33060) {

                        /// @src 80:311:322  "_controller"
                        let _54 := loadimmutable("33007")
                        let expr_33010 := _54
                        /// @src 80:326:336  "msg.sender"
                        let expr_33012 := caller()
                        /// @src 80:311:336  "_controller == msg.sender"
                        let expr_33013 := eq(cleanup_t_address(expr_33010), cleanup_t_address(expr_33012))
                        /// @src 80:303:344  "require(_controller == msg.sender, \"ST0\")"
                        require_helper_t_stringliteral_c62b2f3a3e605d75fcf10f3015013b4a75e48f04ff99c24bbfe9e7a51793a0b3(expr_33013)
                        /// @src 80:354:355  "_"
                        fun_burn_33072_inner(var_account_33058, var_amount_33060)

                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    /// @src 80:688:815  "function burn(address account, uint256 amount) external virtual override onlyController {..."
                    function fun_burn_33072_inner(var_account_33058, var_amount_33060) {

                        /// @src 80:792:799  "account"
                        let _55 := var_account_33058
                        let expr_33067 := _55
                        /// @src 80:801:807  "amount"
                        let _56 := var_amount_33060
                        let expr_33068 := _56
                        fun__burn_13304(expr_33067, expr_33068)

                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    /// @ast-id 33072
                    /// @src 80:688:815  "function burn(address account, uint256 amount) external virtual override onlyController {..."
                    function fun_burn_33072(var_account_33058, var_amount_33060) {

                        modifier_onlyController_33064(var_account_33058, var_amount_33060)
                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    /// @ast-id 13055
                    /// @src 11:2678:3051  "function transfer(address to, uint256 amount) public virtual returns (bool) {..."
                    function fun_transfer_13055(var_to_13024, var_amount_13026) -> var__13029 {
                        /// @src 11:2748:2752  "bool"
                        let zero_t_bool_57 := zero_value_for_split_t_bool()
                        var__13029 := zero_t_bool_57

                        /// @src 11:2789:2795  "amount"
                        let _58 := var_amount_13026
                        let expr_13035 := _58
                        /// @src 11:2764:2773  "balanceOf"
                        let _59_slot := 0x03
                        let expr_13031_slot := _59_slot
                        /// @src 11:2774:2784  "msg.sender"
                        let expr_13033 := caller()
                        /// @src 11:2764:2785  "balanceOf[msg.sender]"
                        let _60 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13031_slot,expr_13033)
                        /// @src 11:2764:2795  "balanceOf[msg.sender] -= amount"
                        let _61 := read_from_storage_split_offset_0_t_uint256(_60)
                        let expr_13036 := checked_sub_t_uint256(_61, expr_13035)

                        update_storage_value_offset_0_t_uint256_to_t_uint256(_60, expr_13036)
                        /// @src 11:2958:2964  "amount"
                        let _62 := var_amount_13026
                        let expr_13041 := _62
                        /// @src 11:2941:2950  "balanceOf"
                        let _63_slot := 0x03
                        let expr_13038_slot := _63_slot
                        /// @src 11:2951:2953  "to"
                        let _64 := var_to_13024
                        let expr_13039 := _64
                        /// @src 11:2941:2954  "balanceOf[to]"
                        let _65 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13038_slot,expr_13039)
                        /// @src 11:2941:2964  "balanceOf[to] += amount"
                        let _66 := read_from_storage_split_offset_0_t_uint256(_65)
                        let expr_13042 := wrapping_add_t_uint256(_66, expr_13041)

                        update_storage_value_offset_0_t_uint256_to_t_uint256(_65, expr_13042)
                        /// @src 11:2999:3009  "msg.sender"
                        let expr_13047 := caller()
                        /// @src 11:3011:3013  "to"
                        let _67 := var_to_13024
                        let expr_13048 := _67
                        /// @src 11:3015:3021  "amount"
                        let _68 := var_amount_13026
                        let expr_13049 := _68
                        /// @src 11:2990:3022  "Transfer(msg.sender, to, amount)"
                        let _69 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                        let _70 := convert_t_address_to_t_address(expr_13047)
                        let _71 := convert_t_address_to_t_address(expr_13048)
                        {
                            let _72 := allocate_unbounded()
                            let _73 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_72 , expr_13049)
                            log3(_72, sub(_73, _72) , _69, _70, _71)
                        }/// @src 11:3040:3044  "true"
                        let expr_13052 := 0x01
                        /// @src 11:3033:3044  "return true"
                        var__13029 := expr_13052
                        leave

                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    function store_literal_in_memory_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e(memPtr) {

                        mstore(add(memPtr, 0), "PERMIT_DEADLINE_EXPIRED")

                    }

                    function abi_encode_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e_to_t_string_memory_ptr_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 23)
                        store_literal_in_memory_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e(pos)
                        end := add(pos, 32)
                    }

                    function abi_encode_tuple_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                        tail := add(headStart, 32)

                        mstore(add(headStart, 0), sub(tail, headStart))
                        tail := abi_encode_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e_to_t_string_memory_ptr_fromStack( tail)

                    }

                    function require_helper_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e(condition ) {
                        if iszero(condition)
                        {

                            let memPtr := allocate_unbounded()

                            mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                            let end := abi_encode_tuple_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                            revert(memPtr, sub(end, memPtr))
                        }
                    }

                    function increment_wrapping_t_uint256(value) -> ret {
                        ret := cleanup_t_uint256(add(value, 1))
                    }

                    function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                        mstore(pos, cleanup_t_address(value))
                    }

                    function abi_encode_tuple_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256__to_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4, value5) -> tail {
                        tail := add(headStart, 192)

                        abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                        abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                        abi_encode_t_address_to_t_address_fromStack(value2,  add(headStart, 64))

                        abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                        abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

                        abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 160))

                    }

                    function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                        data := ptr

                        data := add(ptr, 0x20)

                    }

                    function array_length_t_bytes_memory_ptr(value) -> length {

                        length := mload(value)

                    }

                    function array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                        updated_pos := pos
                    }

                    function store_literal_in_memory_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541(memPtr) {

                        mstore(add(memPtr, 0), 0x1901000000000000000000000000000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 2)
                        store_literal_in_memory_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541(pos)
                        end := add(pos, 2)
                    }

                    function leftAlign_t_bytes32(value) -> aligned {
                        aligned := value
                    }

                    function abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value, pos) {
                        mstore(pos, leftAlign_t_bytes32(cleanup_t_bytes32(value)))
                    }

                    function abi_encode_tuple_packed_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_t_bytes32_t_bytes32__to_t_string_memory_ptr_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(pos , value0, value1) -> end {

                        pos := abi_encode_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value0,  pos)
                        pos := add(pos, 32)

                        abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value1,  pos)
                        pos := add(pos, 32)

                        end := pos
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

                    function cleanup_t_rational_0_by_1(value) -> cleaned {
                        cleaned := value
                    }

                    function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                        converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
                    }

                    function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                        converted := convert_t_rational_0_by_1_to_t_uint160(value)
                    }

                    function store_literal_in_memory_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c(memPtr) {

                        mstore(add(memPtr, 0), "INVALID_SIGNER")

                    }

                    function abi_encode_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c_to_t_string_memory_ptr_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 14)
                        store_literal_in_memory_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c(pos)
                        end := add(pos, 32)
                    }

                    function abi_encode_tuple_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                        tail := add(headStart, 32)

                        mstore(add(headStart, 0), sub(tail, headStart))
                        tail := abi_encode_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c_to_t_string_memory_ptr_fromStack( tail)

                    }

                    function require_helper_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c(condition ) {
                        if iszero(condition)
                        {

                            let memPtr := allocate_unbounded()

                            mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                            let end := abi_encode_tuple_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                            revert(memPtr, sub(end, memPtr))
                        }
                    }

                    /// @ast-id 13203
                    /// @src 11:3838:5321  "function permit(..."
                    function fun_permit_13203(var_owner_13118, var_spender_13120, var_value_13122, var_deadline_13124, var_v_13126, var_r_13128, var_s_13130) {

                        /// @src 11:4045:4053  "deadline"
                        let _74 := var_deadline_13124
                        let expr_13134 := _74
                        /// @src 11:4057:4072  "block.timestamp"
                        let expr_13136 := timestamp()
                        /// @src 11:4045:4072  "deadline >= block.timestamp"
                        let expr_13137 := iszero(lt(cleanup_t_uint256(expr_13134), cleanup_t_uint256(expr_13136)))
                        /// @src 11:4037:4100  "require(deadline >= block.timestamp, \"PERMIT_DEADLINE_EXPIRED\")"
                        require_helper_t_stringliteral_dd18cfd81b4c1281b56302a044e7f751a261543590362c41d86af048f8ed4b3e(expr_13137)
                        /// @src 11:4428:4446  "DOMAIN_SEPARATOR()"
                        let expr_13149 := fun_DOMAIN_SEPARATOR_13218()
                        /// @src 11:4555:4720  "keccak256(..."
                        let expr_13155 := 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9
                        /// @src 11:4754:4759  "owner"
                        let _75 := var_owner_13118
                        let expr_13156 := _75
                        /// @src 11:4793:4800  "spender"
                        let _76 := var_spender_13120
                        let expr_13157 := _76
                        /// @src 11:4834:4839  "value"
                        let _77 := var_value_13122
                        let expr_13158 := _77
                        /// @src 11:4873:4879  "nonces"
                        let _78_slot := 0x05
                        let expr_13159_slot := _78_slot
                        /// @src 11:4880:4885  "owner"
                        let _79 := var_owner_13118
                        let expr_13160 := _79
                        /// @src 11:4873:4886  "nonces[owner]"
                        let _80 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13159_slot,expr_13160)
                        /// @src 11:4873:4888  "nonces[owner]++"
                        let _82 := read_from_storage_split_offset_0_t_uint256(_80)
                        let _81 := increment_wrapping_t_uint256(_82)
                        update_storage_value_offset_0_t_uint256_to_t_uint256(_80, _81)
                        let expr_13162 := _82
                        /// @src 11:4922:4930  "deadline"
                        let _83 := var_deadline_13124
                        let expr_13163 := _83
                        /// @src 11:4511:4960  "abi.encode(..."

                        let expr_13164_mpos := allocate_unbounded()
                        let _84 := add(expr_13164_mpos, 0x20)

                        let _85 := abi_encode_tuple_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256__to_t_bytes32_t_address_t_address_t_uint256_t_uint256_t_uint256__fromStack(_84, expr_13155, expr_13156, expr_13157, expr_13158, expr_13162, expr_13163)
                        mstore(expr_13164_mpos, sub(_85, add(expr_13164_mpos, 0x20)))
                        finalize_allocation(expr_13164_mpos, sub(_85, expr_13164_mpos))
                        /// @src 11:4472:4986  "keccak256(..."
                        let expr_13165 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_13164_mpos), array_length_t_bytes_memory_ptr(expr_13164_mpos))
                        /// @src 11:4350:5008  "abi.encodePacked(..."

                        let expr_13166_mpos := allocate_unbounded()
                        let _86 := add(expr_13166_mpos, 0x20)

                        let _87 := abi_encode_tuple_packed_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_t_bytes32_t_bytes32__to_t_string_memory_ptr_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(_86, expr_13149, expr_13165)
                        mstore(expr_13166_mpos, sub(_87, add(expr_13166_mpos, 0x20)))
                        finalize_allocation(expr_13166_mpos, sub(_87, expr_13166_mpos))
                        /// @src 11:4319:5026  "keccak256(..."
                        let expr_13167 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_13166_mpos), array_length_t_bytes_memory_ptr(expr_13166_mpos))
                        /// @src 11:5044:5045  "v"
                        let _88 := var_v_13126
                        let expr_13168 := _88
                        /// @src 11:5063:5064  "r"
                        let _89 := var_r_13128
                        let expr_13169 := _89
                        /// @src 11:5082:5083  "s"
                        let _90 := var_s_13130
                        let expr_13170 := _90
                        /// @src 11:4292:5097  "ecrecover(..."

                        let _91 := allocate_unbounded()
                        let _92 := abi_encode_tuple_t_bytes32_t_uint8_t_bytes32_t_bytes32__to_t_bytes32_t_uint8_t_bytes32_t_bytes32__fromStack(_91 , expr_13167, expr_13168, expr_13169, expr_13170)

                        mstore(0, 0)

                        let _93 := staticcall(gas(), 1 , _91, sub(_92, _91), 0, 32)

                        if iszero(_93) { revert_forward_1() }

                        let expr_13171 := shift_left_0(mload(0))
                        /// @src 11:4265:5097  "address recoveredAddress = ecrecover(..."
                        let var_recoveredAddress_13142 := expr_13171
                        /// @src 11:5120:5136  "recoveredAddress"
                        let _94 := var_recoveredAddress_13142
                        let expr_13174 := _94
                        /// @src 11:5148:5149  "0"
                        let expr_13177 := 0x00
                        /// @src 11:5140:5150  "address(0)"
                        let expr_13178 := convert_t_rational_0_by_1_to_t_address(expr_13177)
                        /// @src 11:5120:5150  "recoveredAddress != address(0)"
                        let expr_13179 := iszero(eq(cleanup_t_address(expr_13174), cleanup_t_address(expr_13178)))
                        /// @src 11:5120:5179  "recoveredAddress != address(0) && recoveredAddress == owner"
                        let expr_13183 := expr_13179
                        if expr_13183 {
                            /// @src 11:5154:5170  "recoveredAddress"
                            let _95 := var_recoveredAddress_13142
                            let expr_13180 := _95
                            /// @src 11:5174:5179  "owner"
                            let _96 := var_owner_13118
                            let expr_13181 := _96
                            /// @src 11:5154:5179  "recoveredAddress == owner"
                            let expr_13182 := eq(cleanup_t_address(expr_13180), cleanup_t_address(expr_13181))
                            /// @src 11:5120:5179  "recoveredAddress != address(0) && recoveredAddress == owner"
                            expr_13183 := expr_13182
                        }
                        /// @src 11:5112:5198  "require(recoveredAddress != address(0) && recoveredAddress == owner, \"INVALID_SIGNER\")"
                        require_helper_t_stringliteral_ba2319f5fa9f0c8e55f0d6899910b7354e6f643d1d349de47190066d85e68a1c(expr_13183)
                        /// @src 11:5252:5257  "value"
                        let _97 := var_value_13122
                        let expr_13192 := _97
                        /// @src 11:5213:5222  "allowance"
                        let _98_slot := 0x04
                        let expr_13187_slot := _98_slot
                        /// @src 11:5223:5239  "recoveredAddress"
                        let _99 := var_recoveredAddress_13142
                        let expr_13188 := _99
                        /// @src 11:5213:5240  "allowance[recoveredAddress]"
                        let _100 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_13187_slot,expr_13188)
                        let _101_slot := _100
                        let expr_13190_slot := _101_slot
                        /// @src 11:5241:5248  "spender"
                        let _102 := var_spender_13120
                        let expr_13189 := _102
                        /// @src 11:5213:5249  "allowance[recoveredAddress][spender]"
                        let _103 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13190_slot,expr_13189)
                        /// @src 11:5213:5257  "allowance[recoveredAddress][spender] = value"
                        update_storage_value_offset_0_t_uint256_to_t_uint256(_103, expr_13192)
                        let expr_13193 := expr_13192
                        /// @src 11:5292:5297  "owner"
                        let _104 := var_owner_13118
                        let expr_13197 := _104
                        /// @src 11:5299:5306  "spender"
                        let _105 := var_spender_13120
                        let expr_13198 := _105
                        /// @src 11:5308:5313  "value"
                        let _106 := var_value_13122
                        let expr_13199 := _106
                        /// @src 11:5283:5314  "Approval(owner, spender, value)"
                        let _107 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                        let _108 := convert_t_address_to_t_address(expr_13197)
                        let _109 := convert_t_address_to_t_address(expr_13198)
                        {
                            let _110 := allocate_unbounded()
                            let _111 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_110 , expr_13199)
                            log3(_110, sub(_111, _110) , _107, _108, _109)
                        }
                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    function convert_array_t_string_storage_to_t_bytes_storage_ptr(value) -> converted  {
                        converted := value

                    }

                    function array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length) -> updated_pos {
                        mstore(pos, length)
                        updated_pos := add(pos, 0x20)
                    }

                    function array_dataslot_t_bytes_storage_ptr(ptr) -> data {
                        data := ptr

                        mstore(0, ptr)
                        data := keccak256(0, 0x20)

                    }

                    // bytes -> bytes
                    function abi_encode_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value, pos) -> ret {
                        let slotValue := sload(value)
                        let length := extract_byte_array_length(slotValue)
                        pos := array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length)
                        switch and(slotValue, 1)
                        case 0 {
                            // short byte array
                            mstore(pos, and(slotValue, not(0xff)))
                            ret := add(pos, mul(0x20, iszero(iszero(length))))
                        }
                        case 1 {
                            // long byte array
                            let dataPos := array_dataslot_t_bytes_storage_ptr(value)
                            let i := 0
                            for { } lt(i, length) { i := add(i, 0x20) } {
                                mstore(add(pos, i), sload(dataPos))
                                dataPos := add(dataPos, 1)
                            }
                            ret := add(pos, i)
                        }
                    }

                    function abi_encodeUpdatedPos_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value0, pos) -> updatedPos {
                        updatedPos := abi_encode_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value0, pos)
                    }

                    function copy_array_from_storage_to_memory_t_bytes_storage_ptr(slot) -> memPtr {
                        memPtr := allocate_unbounded()
                        let end := abi_encodeUpdatedPos_t_bytes_storage_ptr_to_t_bytes_memory_ptr(slot, memPtr)
                        finalize_allocation(memPtr, sub(end, memPtr))
                    }

                    function convert_array_t_bytes_storage_ptr_to_t_bytes_memory_ptr(value) -> converted  {

                        // Copy the array to a free position in memory
                        converted :=

                        copy_array_from_storage_to_memory_t_bytes_storage_ptr(value)

                    }

                    function convert_t_contract$_ERC20_$13305_to_t_address(value) -> converted {
                        converted := convert_t_uint160_to_t_address(value)
                    }

                    function abi_encode_tuple_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__to_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                        tail := add(headStart, 160)

                        abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                        abi_encode_t_bytes32_to_t_bytes32_fromStack(value1,  add(headStart, 32))

                        abi_encode_t_bytes32_to_t_bytes32_fromStack(value2,  add(headStart, 64))

                        abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                        abi_encode_t_address_to_t_address_fromStack(value4,  add(headStart, 128))

                    }

                    /// @ast-id 13248
                    /// @src 11:5510:5956  "function computeDomainSeparator() internal view virtual returns (bytes32) {..."
                    function fun_computeDomainSeparator_13248() -> var__13221 {
                        /// @src 11:5575:5582  "bytes32"
                        let zero_t_bytes32_112 := zero_value_for_split_t_bytes32()
                        var__13221 := zero_t_bytes32_112

                        /// @src 11:5672:5767  "keccak256(\"EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)\")"
                        let expr_13228 := 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
                        /// @src 11:5805:5809  "name"
                        let _113_slot := 0x00
                        let expr_13232_slot := _113_slot
                        /// @src 11:5799:5810  "bytes(name)"
                        let expr_13233_slot := convert_array_t_string_storage_to_t_bytes_storage_ptr(expr_13232_slot)
                        /// @src 11:5789:5811  "keccak256(bytes(name))"
                        let _114_mpos := convert_array_t_bytes_storage_ptr_to_t_bytes_memory_ptr(expr_13233_slot)
                        let expr_13234 := keccak256(array_dataslot_t_bytes_memory_ptr(_114_mpos), array_length_t_bytes_memory_ptr(_114_mpos))
                        /// @src 11:5833:5847  "keccak256(\"1\")"
                        let expr_13237 := 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6
                        /// @src 11:5869:5882  "block.chainid"
                        let expr_13239 := chainid()
                        /// @src 11:5912:5916  "this"
                        let expr_13242_address := address()
                        /// @src 11:5904:5917  "address(this)"
                        let expr_13243 := convert_t_contract$_ERC20_$13305_to_t_address(expr_13242_address)
                        /// @src 11:5640:5935  "abi.encode(..."

                        let expr_13244_mpos := allocate_unbounded()
                        let _115 := add(expr_13244_mpos, 0x20)

                        let _116 := abi_encode_tuple_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__to_t_bytes32_t_bytes32_t_bytes32_t_uint256_t_address__fromStack(_115, expr_13228, expr_13234, expr_13237, expr_13239, expr_13243)
                        mstore(expr_13244_mpos, sub(_116, add(expr_13244_mpos, 0x20)))
                        finalize_allocation(expr_13244_mpos, sub(_116, expr_13244_mpos))
                        /// @src 11:5613:5949  "keccak256(..."
                        let expr_13245 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_13244_mpos), array_length_t_bytes_memory_ptr(expr_13244_mpos))
                        /// @src 11:5594:5949  "return..."
                        var__13221 := expr_13245
                        leave

                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    function checked_add_t_uint256(x, y) -> sum {
                        x := cleanup_t_uint256(x)
                        y := cleanup_t_uint256(y)
                        sum := add(x, y)

                        if gt(x, sum) { panic_error_0x11() }

                    }

                    /// @ast-id 13276
                    /// @src 11:6150:6475  "function _mint(address to, uint256 amount) internal virtual {..."
                    function fun__mint_13276(var_to_13250, var_amount_13252) {

                        /// @src 11:6235:6241  "amount"
                        let _117 := var_amount_13252
                        let expr_13256 := _117
                        /// @src 11:6220:6241  "totalSupply += amount"
                        let _118 := read_from_storage_split_offset_0_t_uint256(0x02)
                        let expr_13257 := checked_add_t_uint256(_118, expr_13256)

                        update_storage_value_offset_0_t_uint256_to_t_uint256(0x02, expr_13257)
                        /// @src 11:6404:6410  "amount"
                        let _119 := var_amount_13252
                        let expr_13262 := _119
                        /// @src 11:6387:6396  "balanceOf"
                        let _120_slot := 0x03
                        let expr_13259_slot := _120_slot
                        /// @src 11:6397:6399  "to"
                        let _121 := var_to_13250
                        let expr_13260 := _121
                        /// @src 11:6387:6400  "balanceOf[to]"
                        let _122 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13259_slot,expr_13260)
                        /// @src 11:6387:6410  "balanceOf[to] += amount"
                        let _123 := read_from_storage_split_offset_0_t_uint256(_122)
                        let expr_13263 := wrapping_add_t_uint256(_123, expr_13262)

                        update_storage_value_offset_0_t_uint256_to_t_uint256(_122, expr_13263)
                        /// @src 11:6453:6454  "0"
                        let expr_13269 := 0x00
                        /// @src 11:6445:6455  "address(0)"
                        let expr_13270 := convert_t_rational_0_by_1_to_t_address(expr_13269)
                        /// @src 11:6457:6459  "to"
                        let _124 := var_to_13250
                        let expr_13271 := _124
                        /// @src 11:6461:6467  "amount"
                        let _125 := var_amount_13252
                        let expr_13272 := _125
                        /// @src 11:6436:6468  "Transfer(address(0), to, amount)"
                        let _126 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                        let _127 := convert_t_address_to_t_address(expr_13270)
                        let _128 := convert_t_address_to_t_address(expr_13271)
                        {
                            let _129 := allocate_unbounded()
                            let _130 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_129 , expr_13272)
                            log3(_129, sub(_130, _129) , _126, _127, _128)
                        }
                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                    function wrapping_sub_t_uint256(x, y) -> diff {
                        diff := cleanup_t_uint256(sub(x, y))
                    }

                    /// @ast-id 13304
                    /// @src 11:6481:6809  "function _burn(address from, uint256 amount) internal virtual {..."
                    function fun__burn_13304(var_from_13278, var_amount_13280) {

                        /// @src 11:6572:6578  "amount"
                        let _131 := var_amount_13280
                        let expr_13286 := _131
                        /// @src 11:6553:6562  "balanceOf"
                        let _132_slot := 0x03
                        let expr_13283_slot := _132_slot
                        /// @src 11:6563:6567  "from"
                        let _133 := var_from_13278
                        let expr_13284 := _133
                        /// @src 11:6553:6568  "balanceOf[from]"
                        let _134 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_13283_slot,expr_13284)
                        /// @src 11:6553:6578  "balanceOf[from] -= amount"
                        let _135 := read_from_storage_split_offset_0_t_uint256(_134)
                        let expr_13287 := checked_sub_t_uint256(_135, expr_13286)

                        update_storage_value_offset_0_t_uint256_to_t_uint256(_134, expr_13287)
                        /// @src 11:6736:6742  "amount"
                        let _136 := var_amount_13280
                        let expr_13290 := _136
                        /// @src 11:6721:6742  "totalSupply -= amount"
                        let _137 := read_from_storage_split_offset_0_t_uint256(0x02)
                        let expr_13291 := wrapping_sub_t_uint256(_137, expr_13290)

                        update_storage_value_offset_0_t_uint256_to_t_uint256(0x02, expr_13291)
                        /// @src 11:6777:6781  "from"
                        let _138 := var_from_13278
                        let expr_13295 := _138
                        /// @src 11:6791:6792  "0"
                        let expr_13298 := 0x00
                        /// @src 11:6783:6793  "address(0)"
                        let expr_13299 := convert_t_rational_0_by_1_to_t_address(expr_13298)
                        /// @src 11:6795:6801  "amount"
                        let _139 := var_amount_13280
                        let expr_13300 := _139
                        /// @src 11:6768:6802  "Transfer(from, address(0), amount)"
                        let _140 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                        let _141 := convert_t_address_to_t_address(expr_13295)
                        let _142 := convert_t_address_to_t_address(expr_13299)
                        {
                            let _143 := allocate_unbounded()
                            let _144 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_143 , expr_13300)
                            log3(_143, sub(_144, _143) , _140, _141, _142)
                        }
                    }
                    /// @src 80:181:817  "contract SupplyToken is ERC20, ISupplyToken {..."

                }

                data ".metadata" hex"a264697066735822122049263d7103ce3197bde66580cfa3ad56d15e1d6d29a9ee7f14d4e9eba2b6b71c64736f6c634300081e0033"
            }

        }

        data ".metadata" hex"a2646970667358221220cb8ed03224bc97f2d5937bb14c810092093a1bec5c79b3a28331db610b5c2b7164736f6c634300081e0033"
    }

}

