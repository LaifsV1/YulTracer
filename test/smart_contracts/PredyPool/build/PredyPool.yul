
/// @use-src 5:"lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol", 6:"lib/openzeppelin-contracts-upgradeable/contracts/security/ReentrancyGuardUpgradeable.sol", 17:"lib/v3-core/contracts/interfaces/callback/IUniswapV3MintCallback.sol", 50:"src/PredyPool.sol", 53:"src/interfaces/IPredyPool.sol"
object "PredyPool_5095" {
    code {
        /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_PredyPool_5095()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("PredyPool_5095_deployed"), datasize("PredyPool_5095_deployed"))

        return(_1, datasize("PredyPool_5095_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @ast-id 4342
        /// @src 50:3068:3084  "constructor() {}"
        function constructor_PredyPool_5095() {

            /// @src 50:3068:3084  "constructor() {}"
            constructor_ReentrancyGuardUpgradeable_12917()

        }
        /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

        /// @src 6:952:3682  "abstract contract ReentrancyGuardUpgradeable is Initializable {..."
        function constructor_ReentrancyGuardUpgradeable_12917() {

            /// @src 6:952:3682  "abstract contract ReentrancyGuardUpgradeable is Initializable {..."
            constructor_Initializable_12832()

        }
        /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

        /// @src 5:2394:6640  "abstract contract Initializable {..."
        function constructor_Initializable_12832() {

            /// @src 5:2394:6640  "abstract contract Initializable {..."
            constructor_IUniswapV3MintCallback_13436()

        }
        /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

        /// @src 17:215:979  "interface IUniswapV3MintCallback {..."
        function constructor_IUniswapV3MintCallback_13436() {

            /// @src 17:215:979  "interface IUniswapV3MintCallback {..."
            constructor_IPredyPool_2167()

        }
        /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

        /// @src 53:165:3238  "interface IPredyPool {..."
        function constructor_IPredyPool_2167() {

            /// @src 53:165:3238  "interface IPredyPool {..."

        }
        /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

    }
    /// @use-src 5:"lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol", 6:"lib/openzeppelin-contracts-upgradeable/contracts/security/ReentrancyGuardUpgradeable.sol", 7:"lib/openzeppelin-contracts-upgradeable/contracts/utils/AddressUpgradeable.sol", 14:"lib/solmate/src/utils/SafeTransferLib.sol", 27:"lib/v3-core/contracts/libraries/TickMath.sol", 50:"src/PredyPool.sol", 57:"src/libraries/Constants.sol", 63:"src/libraries/PositionCalculator.sol", 69:"src/libraries/UniHelper.sol", 70:"src/libraries/VaultLib.sol", 81:"src/types/GlobalData.sol"
    object "PredyPool_5095_deployed" {
        code {
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x18e80749
                {
                    // getSqrtPrice(uint256)

                    external_fun_getSqrtPrice_4986()
                }

                case 0x1a29d3ca
                {
                    // registerPair((address,address,address,address,bool,uint8,(uint128,uint128,int24,int24,uint64,uint64),(uint256,uint256,uint256,uint256),(uint256,uint256,uint256,uint256)))

                    external_fun_registerPair_4467()
                }

                case 0x1daf2c19
                {
                    // revertPairStatus(uint256)

                    external_fun_revertPairStatus_5053()
                }

                case 0x360125f1
                {
                    // revertVaultStatus(uint256)

                    external_fun_revertVaultStatus_5067()
                }

                case 0x570ca735
                {
                    // operator()

                    external_fun_operator_4232()
                }

                case 0x5c41a3fa
                {
                    // updateAssetRiskParams(uint256,(uint128,uint128,int24,int24,uint64,uint64))

                    external_fun_updateAssetRiskParams_4490()
                }

                case 0x613ce410
                {
                    // globalData()

                    external_fun_globalData_4235()
                }

                case 0x61b6be8b
                {
                    // updatePriceOracle(uint256,address)

                    external_fun_updatePriceOracle_4582()
                }

                case 0x76d407cd
                {
                    // withdrawCreatorRevenue(uint256,bool)

                    external_fun_withdrawCreatorRevenue_4703()
                }

                case 0x7f223b4c
                {
                    // withdraw(uint256,bool,uint256)

                    external_fun_withdraw_4751()
                }

                case 0x8670d9dc
                {
                    // reallocate(uint256,bytes)

                    external_fun_reallocate_4771()
                }

                case 0x9403b634
                {
                    // getVault(uint256)

                    external_fun_getVault_5039()
                }

                case 0x95be76a2
                {
                    // updateIRMParams(uint256,(uint256,uint256,uint256,uint256),(uint256,uint256,uint256,uint256))

                    external_fun_updateIRMParams_4517()
                }

                case 0x9abbdf4b
                {
                    // createVault(uint256)

                    external_fun_createVault_4959()
                }

                case 0xa8e0b3bc
                {
                    // allowedTraders(address,uint256)

                    external_fun_allowedTraders_4245()
                }

                case 0xab4db360
                {
                    // updateRecepient(uint256,address)

                    external_fun_updateRecepient_4863()
                }

                case 0xacfcd9fd
                {
                    // getSqrtIndexPrice(uint256)

                    external_fun_getSqrtIndexPrice_5003()
                }

                case 0xb3ab15fb
                {
                    // setOperator(address)

                    external_fun_setOperator_4450()
                }

                case 0xc116ce86
                {
                    // withdrawProtocolRevenue(uint256,bool)

                    external_fun_withdrawProtocolRevenue_4642()
                }

                case 0xc4d66de8
                {
                    // initialize(address)

                    external_fun_initialize_4365()
                }

                case 0xc6b6d340
                {
                    // take(bool,address,uint256)

                    external_fun_take_4938()
                }

                case 0xc92af3ec
                {
                    // getPairStatus(uint256)

                    external_fun_getPairStatus_5024()
                }

                case 0xcd1b7a03
                {
                    // trade((uint256,uint256,int256,int256,bytes),bytes)

                    external_fun_trade_4830()
                }

                case 0xcdcb35d0
                {
                    // updatePoolOwner(uint256,address)

                    external_fun_updatePoolOwner_4561()
                }

                case 0xce1ff5aa
                {
                    // execLiquidationCall(uint256,uint256,bytes)

                    external_fun_execLiquidationCall_4917()
                }

                case 0xd3487997
                {
                    // uniswapV3MintCallback(uint256,uint256,bytes)

                    external_fun_uniswapV3MintCallback_4424()
                }

                case 0xdb9d4a19
                {
                    // supply(uint256,bool,uint256)

                    external_fun_supply_4726()
                }

                case 0xe3bc237e
                {
                    // updateWhitelistAddress(uint256,address,bool)

                    external_fun_updateWhitelistAddress_4893()
                }

                case 0xf3eb8cd8
                {
                    // allowedUniswapPools(address)

                    external_fun_allowedUniswapPools_4239()
                }

                case 0xfc9e6eab
                {
                    // updateFeeRatio(uint256,uint8)

                    external_fun_updateFeeRatio_4539()
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

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function abi_encode_t_uint160_to_t_uint160_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint160(value))
            }

            function abi_encode_tuple_t_uint160__to_t_uint160__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint160_to_t_uint160_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_getSqrtPrice_4986() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_getSqrtPrice_4986(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint160__to_t_uint160__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

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

            function abi_decode_tuple_t_struct$_AddPairParams_$17179_memory_ptr(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 640) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_AddPairParams_$17179_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_registerPair_4467() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_struct$_AddPairParams_$17179_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_registerPair_4467(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_revertPairStatus_5053() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                fun_revertPairStatus_5053(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_revertVaultStatus_5067() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                fun_revertVaultStatus_5067(param_0)
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

            function cleanup_from_storage_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_dynamict_address(slot_value, offset) -> value {
                value := cleanup_from_storage_t_address(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_address(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_address(sload(slot), offset)

            }

            /// @ast-id 4232
            /// @src 50:1976:1999  "address public operator"
            function getter_fun_operator_4232() -> ret {

                let slot := 51
                let offset := 0

                ret := read_from_storage_split_dynamic_t_address(slot, offset)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_operator_4232() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_operator_4232()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_uint256t_struct$_AssetRiskParams_$13579_memory_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 224) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_struct$_AssetRiskParams_$13579_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_updateAssetRiskParams_4490() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_uint256t_struct$_AssetRiskParams_$13579_memory_ptr(4, calldatasize())
                fun_updateAssetRiskParams_4490(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

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

            function extract_from_storage_value_offset_0_t_address(slot_value) -> value {
                value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_address(slot) -> value {
                value := extract_from_storage_value_offset_0_t_address(sload(slot))

            }

            function write_to_memory_t_address(memPtr, value) {
                mstore(memPtr, cleanup_t_address(value))
            }

            function write_to_memory_t_uint256(memPtr, value) {
                mstore(memPtr, cleanup_t_uint256(value))
            }

            function allocate_memory_struct_t_struct$_LockData_$34431_memory_ptr() -> memPtr {
                memPtr := allocate_memory(128)
            }

            function read_from_storage_reference_type_t_struct$_LockData_$34431_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_LockData_$34431_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_address(add(slot, 0))
                    write_to_memory_t_address(add(value, 0), memberValue_0)
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

            /// @ast-id 4235
            /// @src 50:2006:2052  "GlobalDataLibrary.GlobalData public globalData"
            function getter_fun_globalData_4235() -> ret_0, ret_1, ret_2, ret_3_mpos {

                let slot := 52
                let offset := 0

                ret_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 0))

                ret_1 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))

                ret_2 := read_from_storage_split_offset_0_t_address(add(slot, 2))

                ret_3_mpos := read_from_storage_reference_type_t_struct$_LockData_$34431_memory_ptr(add(slot, 6))

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function abi_encode_t_address_to_t_address(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_t_uint256_to_t_uint256(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            // struct LockDataLibrary.LockData -> struct LockDataLibrary.LockData
            function abi_encode_t_struct$_LockData_$34431_memory_ptr_to_t_struct$_LockData_$34431_memory_ptr_fromStack(value, pos)  {
                let tail := add(pos, 0x80)

                {
                    // locker

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_address_to_t_address(memberValue0, add(pos, 0x00))
                }

                {
                    // quoteReserve

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x20))
                }

                {
                    // baseReserve

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x40))
                }

                {
                    // pairId

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x60))
                }

            }

            function abi_encode_tuple_t_uint256_t_uint256_t_address_t_struct$_LockData_$34431_memory_ptr__to_t_uint256_t_uint256_t_address_t_struct$_LockData_$34431_memory_ptr__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 224)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_address_to_t_address_fromStack(value2,  add(headStart, 64))

                abi_encode_t_struct$_LockData_$34431_memory_ptr_to_t_struct$_LockData_$34431_memory_ptr_fromStack(value3,  add(headStart, 96))

            }

            function external_fun_globalData_4235() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0, ret_1, ret_2, ret_3 :=  getter_fun_globalData_4235()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256_t_uint256_t_address_t_struct$_LockData_$34431_memory_ptr__to_t_uint256_t_uint256_t_address_t_struct$_LockData_$34431_memory_ptr__fromStack(memPos , ret_0, ret_1, ret_2, ret_3)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_uint256t_address(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_updatePriceOracle_4582() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_uint256t_address(4, calldatasize())
                fun_updatePriceOracle_4582(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_uint256t_bool(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_withdrawCreatorRevenue_4703() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_uint256t_bool(4, calldatasize())
                fun_withdrawCreatorRevenue_4703(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_uint256t_boolt_uint256(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

            }

            function external_fun_withdraw_4751() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_uint256t_boolt_uint256(4, calldatasize())
                let ret_0, ret_1 :=  fun_withdraw_4751(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(memPos , ret_0, ret_1)
                return(memPos, sub(memEnd, memPos))

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

            function abi_decode_tuple_t_uint256t_bytes_memory_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value1 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_tuple_t_bool__to_t_bool__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_reallocate_4771() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_uint256t_bytes_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_reallocate_4771(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_int256(value) -> cleaned {
                cleaned := value
            }

            function abi_encode_t_int256_to_t_int256(value, pos) {
                mstore(pos, cleanup_t_int256(value))
            }

            function abi_encode_t_int24_to_t_int24(value, pos) {
                mstore(pos, cleanup_t_int24(value))
            }

            function abi_encode_t_uint64_to_t_uint64(value, pos) {
                mstore(pos, cleanup_t_uint64(value))
            }

            // struct Perp.PositionStatus -> struct Perp.PositionStatus
            function abi_encode_t_struct$_PositionStatus_$13584_memory_ptr_to_t_struct$_PositionStatus_$13584_memory_ptr(value, pos)  {
                let tail := add(pos, 0x40)

                {
                    // amount

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x00))
                }

                {
                    // entryValue

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x20))
                }

            }

            // struct Perp.SqrtPositionStatus -> struct Perp.SqrtPositionStatus
            function abi_encode_t_struct$_SqrtPositionStatus_$13597_memory_ptr_to_t_struct$_SqrtPositionStatus_$13597_memory_ptr(value, pos)  {
                let tail := add(pos, 0xc0)

                {
                    // amount

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x00))
                }

                {
                    // entryValue

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x20))
                }

                {
                    // quoteRebalanceEntryValue

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x40))
                }

                {
                    // baseRebalanceEntryValue

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x60))
                }

                {
                    // entryTradeFee0

                    let memberValue0 := mload(add(value, 0x80))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x80))
                }

                {
                    // entryTradeFee1

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0xa0))
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

            // struct Perp.UserStatus -> struct Perp.UserStatus
            function abi_encode_t_struct$_UserStatus_$13665_memory_ptr_to_t_struct$_UserStatus_$13665_memory_ptr(value, pos)  {
                let tail := add(pos, 0x0200)

                {
                    // pairId

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_uint256_to_t_uint256(memberValue0, add(pos, 0x00))
                }

                {
                    // rebalanceLastTickLower

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_int24_to_t_int24(memberValue0, add(pos, 0x20))
                }

                {
                    // rebalanceLastTickUpper

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_int24_to_t_int24(memberValue0, add(pos, 0x40))
                }

                {
                    // lastNumRebalance

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_uint64_to_t_uint64(memberValue0, add(pos, 0x60))
                }

                {
                    // perp

                    let memberValue0 := mload(add(value, 0x80))
                    abi_encode_t_struct$_PositionStatus_$13584_memory_ptr_to_t_struct$_PositionStatus_$13584_memory_ptr(memberValue0, add(pos, 0x80))
                }

                {
                    // sqrtPerp

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_struct$_SqrtPositionStatus_$13597_memory_ptr_to_t_struct$_SqrtPositionStatus_$13597_memory_ptr(memberValue0, add(pos, 0xc0))
                }

                {
                    // basePosition

                    let memberValue0 := mload(add(value, 0xc0))
                    abi_encode_t_struct$_UserStatus_$30939_memory_ptr_to_t_struct$_UserStatus_$30939_memory_ptr(memberValue0, add(pos, 0x0180))
                }

                {
                    // stablePosition

                    let memberValue0 := mload(add(value, 0xe0))
                    abi_encode_t_struct$_UserStatus_$30939_memory_ptr_to_t_struct$_UserStatus_$30939_memory_ptr(memberValue0, add(pos, 0x01c0))
                }

            }

            // struct DataType.Vault -> struct DataType.Vault
            function abi_encode_t_struct$_Vault_$6116_memory_ptr_to_t_struct$_Vault_$6116_memory_ptr_fromStack(value, pos)  {
                let tail := add(pos, 0x02a0)

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
                    // owner

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_address_to_t_address(memberValue0, add(pos, 0x40))
                }

                {
                    // recipient

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_address_to_t_address(memberValue0, add(pos, 0x60))
                }

                {
                    // margin

                    let memberValue0 := mload(add(value, 0x80))
                    abi_encode_t_int256_to_t_int256(memberValue0, add(pos, 0x80))
                }

                {
                    // openPosition

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_struct$_UserStatus_$13665_memory_ptr_to_t_struct$_UserStatus_$13665_memory_ptr(memberValue0, add(pos, 0xa0))
                }

            }

            function abi_encode_tuple_t_struct$_Vault_$6116_memory_ptr__to_t_struct$_Vault_$6116_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 672)

                abi_encode_t_struct$_Vault_$6116_memory_ptr_to_t_struct$_Vault_$6116_memory_ptr_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_getVault_5039() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_getVault_5039(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_struct$_Vault_$6116_memory_ptr__to_t_struct$_Vault_$6116_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_uint256t_struct$_IRMParams_$13447_memory_ptrt_struct$_IRMParams_$13447_memory_ptr(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 288) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
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

            function external_fun_updateIRMParams_4517() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_uint256t_struct$_IRMParams_$13447_memory_ptrt_struct$_IRMParams_$13447_memory_ptr(4, calldatasize())
                fun_updateIRMParams_4517(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_createVault_4959() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_createVault_4959(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

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

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_uint256_$_t_bool_$_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
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

            /// @ast-id 4245
            /// @src 50:2117:2197  "mapping(address trader => mapping(uint256 pairId => bool)) public allowedTraders"
            function getter_fun_allowedTraders_4245(key_0, key_1) -> ret {

                let slot := 63
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_uint256_$_t_bool_$_$_of_t_address(slot, key_0)

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(slot, key_1)

                ret := read_from_storage_split_dynamic_t_bool(slot, offset)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function external_fun_allowedTraders_4245() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  getter_fun_allowedTraders_4245(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_updateRecepient_4863() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_uint256t_address(4, calldatasize())
                fun_updateRecepient_4863(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_getSqrtIndexPrice_5003() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_getSqrtIndexPrice_5003(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_setOperator_4450() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                fun_setOperator_4450(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_withdrawProtocolRevenue_4642() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_uint256t_bool(4, calldatasize())
                fun_withdrawProtocolRevenue_4642(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_initialize_4365() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                fun_initialize_4365(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_boolt_addresst_uint256(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bool(add(headStart, offset), dataEnd)
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

            function external_fun_take_4938() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_boolt_addresst_uint256(4, calldatasize())
                fun_take_4938(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

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

            function external_fun_getPairStatus_5024() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_getPairStatus_5024(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_struct$_PairStatus_$6102_memory_ptr__to_t_struct$_PairStatus_$6102_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function validator_revert_t_int256(value) {
                if iszero(eq(value, cleanup_t_int256(value))) { revert(0, 0) }
            }

            function abi_decode_t_int256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_int256(value)
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

            function abi_decode_tuple_t_struct$_TradeParams_$2018_memory_ptrt_bytes_memory_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_struct$_TradeParams_$2018_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value1 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

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

            function abi_encode_tuple_t_struct$_TradeResult_$2034_memory_ptr__to_t_struct$_TradeResult_$2034_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 384)

                abi_encode_t_struct$_TradeResult_$2034_memory_ptr_to_t_struct$_TradeResult_$2034_memory_ptr_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_trade_4830() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_struct$_TradeParams_$2018_memory_ptrt_bytes_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_trade_4830(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_struct$_TradeResult_$2034_memory_ptr__to_t_struct$_TradeResult_$2034_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_updatePoolOwner_4561() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_uint256t_address(4, calldatasize())
                fun_updatePoolOwner_4561(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_uint256t_uint256t_bytes_memory_ptr(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
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

            function external_fun_execLiquidationCall_4917() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_uint256t_uint256t_bytes_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_execLiquidationCall_4917(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_struct$_TradeResult_$2034_memory_ptr__to_t_struct$_TradeResult_$2034_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() {
                revert(0, 0)
            }

            function revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() {
                revert(0, 0)
            }

            // bytes
            function abi_decode_t_bytes_calldata_ptr(offset, end) -> arrayPos, length {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                length := calldataload(offset)
                if gt(length, 0xffffffffffffffff) { revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() }
                arrayPos := add(offset, 0x20)
                if gt(add(arrayPos, mul(length, 0x01)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
            }

            function abi_decode_tuple_t_uint256t_uint256t_bytes_calldata_ptr(headStart, dataEnd) -> value0, value1, value2, value3 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 64))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2, value3 := abi_decode_t_bytes_calldata_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_uniswapV3MintCallback_4424() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_uint256t_uint256t_bytes_calldata_ptr(4, calldatasize())
                fun_uniswapV3MintCallback_4424(param_0, param_1, param_2, param_3)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_supply_4726() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_uint256t_boolt_uint256(4, calldatasize())
                let ret_0 :=  fun_supply_4726(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_uint256t_addresst_bool(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_updateWhitelistAddress_4893() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_uint256t_addresst_bool(4, calldatasize())
                fun_updateWhitelistAddress_4893(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @ast-id 4239
            /// @src 50:2059:2110  "mapping(address => bool) public allowedUniswapPools"
            function getter_fun_allowedUniswapPools_4239(key_0) -> ret {

                let slot := 62
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(slot, key_0)

                ret := read_from_storage_split_dynamic_t_bool(slot, offset)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function external_fun_allowedUniswapPools_4239() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  getter_fun_allowedUniswapPools_4239(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_uint256t_uint8(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_updateFeeRatio_4539() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_uint256t_uint8(4, calldatasize())
                fun_updateFeeRatio_4539(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_uint160() -> ret {
                ret := 0
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function shift_right_160_unsigned(value) -> newValue {
                newValue :=

                shr(160, value)

            }

            function extract_from_storage_value_offset_20_t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_160_unsigned(slot_value))
            }

            function read_from_storage_split_offset_20_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_20_t_bool(sload(slot))

            }

            /// @ast-id 4986
            /// @src 50:12164:12434  "function getSqrtPrice(uint256 pairId) external view returns (uint160) {..."
            function fun_getSqrtPrice_4986(var_pairId_4962) -> var__4965 {
                /// @src 50:12225:12232  "uint160"
                let zero_t_uint160_1 := zero_value_for_split_t_uint160()
                var__4965 := zero_t_uint160_1

                /// @src 50:12251:12260  "UniHelper"
                let expr_4967_address := linkersymbol("src/libraries/UniHelper.sol:UniHelper")
                /// @src 50:12291:12300  "UniHelper"
                let expr_4969_address := linkersymbol("src/libraries/UniHelper.sol:UniHelper")
                /// @src 50:12314:12324  "globalData"
                let _2_slot := 0x34
                let expr_4971_slot := _2_slot
                /// @src 50:12314:12330  "globalData.pairs"
                let _3 := add(expr_4971_slot, 3)
                let _4_slot := _3
                let expr_4972_slot := _4_slot
                /// @src 50:12331:12337  "pairId"
                let _5 := var_pairId_4962
                let expr_4973 := _5
                /// @src 50:12314:12338  "globalData.pairs[pairId]"
                let _6 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4972_slot,expr_4973)
                let _7_slot := _6
                let expr_4974_slot := _7_slot
                /// @src 50:12314:12354  "globalData.pairs[pairId].sqrtAssetStatus"
                let _8 := add(expr_4974_slot, 33)
                let _9_slot := _8
                let expr_4975_slot := _9_slot
                /// @src 50:12314:12366  "globalData.pairs[pairId].sqrtAssetStatus.uniswapPool"
                let _10 := add(expr_4975_slot, 0)
                let _11 := read_from_storage_split_offset_0_t_address(_10)
                let expr_4976 := _11
                /// @src 50:12291:12367  "UniHelper.getSqrtPrice(globalData.pairs[pairId].sqrtAssetStatus.uniswapPool)"
                let expr_4977 := fun_getSqrtPrice_16495(expr_4976)
                /// @src 50:12381:12391  "globalData"
                let _12_slot := 0x34
                let expr_4978_slot := _12_slot
                /// @src 50:12381:12397  "globalData.pairs"
                let _13 := add(expr_4978_slot, 3)
                let _14_slot := _13
                let expr_4979_slot := _14_slot
                /// @src 50:12398:12404  "pairId"
                let _15 := var_pairId_4962
                let expr_4980 := _15
                /// @src 50:12381:12405  "globalData.pairs[pairId]"
                let _16 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4979_slot,expr_4980)
                let _17_slot := _16
                let expr_4981_slot := _17_slot
                /// @src 50:12381:12417  "globalData.pairs[pairId].isQuoteZero"
                let _18 := add(expr_4981_slot, 50)
                let _19 := read_from_storage_split_offset_20_t_bool(_18)
                let expr_4982 := _19
                /// @src 50:12251:12427  "UniHelper.convertSqrtPrice(..."
                let expr_4983 := fun_convertSqrtPrice_16543(expr_4977, expr_4982)
                /// @src 50:12244:12427  "return UniHelper.convertSqrtPrice(..."
                var__4965 := expr_4983
                leave

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function convert_t_type$_t_contract$_AddPairLogic_$17784_$_to_t_address(value) -> converted {
                converted := value
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

            function abi_encode_t_struct$_GlobalData_$19302_storage_to_t_uint256_fromStack_library(value, pos) {
                mstore(pos, value)
            }

            function abi_encode_t_mapping$_t_address_$_t_bool_$_to_t_uint256_fromStack_library(value, pos) {
                mstore(pos, value)
            }

            function abi_encode_t_address_to_t_address_library(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_t_bool_to_t_bool_library(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_t_uint8_to_t_uint8_library(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
            }

            function abi_encode_t_uint128_to_t_uint128_library(value, pos) {
                mstore(pos, cleanup_t_uint128(value))
            }

            function abi_encode_t_int24_to_t_int24_library(value, pos) {
                mstore(pos, cleanup_t_int24(value))
            }

            function abi_encode_t_uint64_to_t_uint64_library(value, pos) {
                mstore(pos, cleanup_t_uint64(value))
            }

            // struct Perp.AssetRiskParams -> struct Perp.AssetRiskParams
            function abi_encode_t_struct$_AssetRiskParams_$13579_memory_ptr_to_t_struct$_AssetRiskParams_$13579_memory_ptr_library(value, pos)  {
                let tail := add(pos, 0xc0)

                {
                    // riskRatio

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_uint128_to_t_uint128_library(memberValue0, add(pos, 0x00))
                }

                {
                    // debtRiskRatio

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_uint128_to_t_uint128_library(memberValue0, add(pos, 0x20))
                }

                {
                    // rangeSize

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_int24_to_t_int24_library(memberValue0, add(pos, 0x40))
                }

                {
                    // rebalanceThreshold

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_int24_to_t_int24_library(memberValue0, add(pos, 0x60))
                }

                {
                    // minSlippage

                    let memberValue0 := mload(add(value, 0x80))
                    abi_encode_t_uint64_to_t_uint64_library(memberValue0, add(pos, 0x80))
                }

                {
                    // maxSlippage

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_uint64_to_t_uint64_library(memberValue0, add(pos, 0xa0))
                }

            }

            function abi_encode_t_uint256_to_t_uint256_library(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            // struct InterestRateModel.IRMParams -> struct InterestRateModel.IRMParams
            function abi_encode_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_memory_ptr_library(value, pos)  {
                let tail := add(pos, 0x80)

                {
                    // baseRate

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_uint256_to_t_uint256_library(memberValue0, add(pos, 0x00))
                }

                {
                    // kinkRate

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_uint256_to_t_uint256_library(memberValue0, add(pos, 0x20))
                }

                {
                    // slope1

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_uint256_to_t_uint256_library(memberValue0, add(pos, 0x40))
                }

                {
                    // slope2

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_uint256_to_t_uint256_library(memberValue0, add(pos, 0x60))
                }

            }

            // struct AddPairLogic.AddPairParams -> struct AddPairLogic.AddPairParams
            function abi_encode_t_struct$_AddPairParams_$17179_memory_ptr_to_t_struct$_AddPairParams_$17179_memory_ptr_fromStack_library(value, pos)  {
                let tail := add(pos, 0x0280)

                {
                    // marginId

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_address_to_t_address_library(memberValue0, add(pos, 0x00))
                }

                {
                    // poolOwner

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_address_to_t_address_library(memberValue0, add(pos, 0x20))
                }

                {
                    // uniswapPool

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_address_to_t_address_library(memberValue0, add(pos, 0x40))
                }

                {
                    // priceFeed

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_address_to_t_address_library(memberValue0, add(pos, 0x60))
                }

                {
                    // whitelistEnabled

                    let memberValue0 := mload(add(value, 0x80))
                    abi_encode_t_bool_to_t_bool_library(memberValue0, add(pos, 0x80))
                }

                {
                    // fee

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_uint8_to_t_uint8_library(memberValue0, add(pos, 0xa0))
                }

                {
                    // assetRiskParams

                    let memberValue0 := mload(add(value, 0xc0))
                    abi_encode_t_struct$_AssetRiskParams_$13579_memory_ptr_to_t_struct$_AssetRiskParams_$13579_memory_ptr_library(memberValue0, add(pos, 0xc0))
                }

                {
                    // quoteIrmParams

                    let memberValue0 := mload(add(value, 0xe0))
                    abi_encode_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_memory_ptr_library(memberValue0, add(pos, 0x0180))
                }

                {
                    // baseIrmParams

                    let memberValue0 := mload(add(value, 0x0100))
                    abi_encode_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_memory_ptr_library(memberValue0, add(pos, 0x0200))
                }

            }

            function abi_encode_tuple_t_struct$_GlobalData_$19302_storage_t_mapping$_t_address_$_t_bool_$_t_struct$_AddPairParams_$17179_memory_ptr__to_t_uint256_t_uint256_t_struct$_AddPairParams_$17179_memory_ptr__fromStack_library(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 704)

                abi_encode_t_struct$_GlobalData_$19302_storage_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

                abi_encode_t_mapping$_t_address_$_t_bool_$_to_t_uint256_fromStack_library(value1,  add(headStart, 32))

                abi_encode_t_struct$_AddPairParams_$17179_memory_ptr_to_t_struct$_AddPairParams_$17179_memory_ptr_fromStack_library(value2,  add(headStart, 64))

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            /// @ast-id 4467
            /// @src 50:4386:4574  "function registerPair(AddPairLogic.AddPairParams memory addPairParam) external returns (uint256) {..."
            function fun_registerPair_4467(var_addPairParam_4454_mpos) -> var__4457 {
                /// @src 50:4474:4481  "uint256"
                let zero_t_uint256_20 := zero_value_for_split_t_uint256()
                var__4457 := zero_t_uint256_20

                /// @src 50:4500:4512  "AddPairLogic"
                let expr_4459_address := linkersymbol("src/libraries/logic/AddPairLogic.sol:AddPairLogic")
                /// @src 50:4500:4520  "AddPairLogic.addPair"
                let expr_4460_address := convert_t_type$_t_contract$_AddPairLogic_$17784_$_to_t_address(expr_4459_address)
                let expr_4460_functionSelector := 0xac826482
                /// @src 50:4521:4531  "globalData"
                let _21_slot := 0x34
                let expr_4461_slot := _21_slot
                /// @src 50:4533:4552  "allowedUniswapPools"
                let _22_slot := 0x3e
                let expr_4462_slot := _22_slot
                /// @src 50:4554:4566  "addPairParam"
                let _23_mpos := var_addPairParam_4454_mpos
                let expr_4463_mpos := _23_mpos
                /// @src 50:4500:4567  "AddPairLogic.addPair(globalData, allowedUniswapPools, addPairParam)"

                // storage for arguments and returned data
                let _24 := allocate_unbounded()
                mstore(_24, shift_left_224(expr_4460_functionSelector))
                let _25 := abi_encode_tuple_t_struct$_GlobalData_$19302_storage_t_mapping$_t_address_$_t_bool_$_t_struct$_AddPairParams_$17179_memory_ptr__to_t_uint256_t_uint256_t_struct$_AddPairParams_$17179_memory_ptr__fromStack_library(add(_24, 4) , expr_4461_slot, expr_4462_slot, expr_4463_mpos)

                let _26 := delegatecall(gas(), expr_4460_address,  _24, sub(_25, _24), _24, 32)

                if iszero(_26) { revert_forward_1() }

                let expr_4464
                if _26 {

                    let _27 := 32

                    if gt(_27, returndatasize()) {
                        _27 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_24, _27)

                    // decode return parameters from external try-call into retVars
                    expr_4464 :=  abi_decode_tuple_t_uint256_fromMemory(_24, add(_24, _27))
                }
                /// @src 50:4493:4567  "return AddPairLogic.addPair(globalData, allowedUniswapPools, addPairParam)"
                var__4457 := expr_4464
                leave

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function convert_t_type$_t_contract$_ReaderLogic_$18475_$_to_t_address(value) -> converted {
                converted := value
            }

            function abi_decode_tuple__fromMemory(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack_library(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_struct$_GlobalData_$19302_storage_t_uint256__to_t_uint256_t_uint256__fromStack_library(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_struct$_GlobalData_$19302_storage_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack_library(value1,  add(headStart, 32))

            }

            /// @ast-id 5053
            /// @src 50:13135:13248  "function revertPairStatus(uint256 pairId) external {..."
            function fun_revertPairStatus_5053(var_pairId_5042) {

                /// @src 50:13196:13207  "ReaderLogic"
                let expr_5045_address := linkersymbol("src/libraries/logic/ReaderLogic.sol:ReaderLogic")
                /// @src 50:13196:13221  "ReaderLogic.getPairStatus"
                let expr_5047_address := convert_t_type$_t_contract$_ReaderLogic_$18475_$_to_t_address(expr_5045_address)
                let expr_5047_functionSelector := 0xdd207a4a
                /// @src 50:13222:13232  "globalData"
                let _28_slot := 0x34
                let expr_5048_slot := _28_slot
                /// @src 50:13234:13240  "pairId"
                let _29 := var_pairId_5042
                let expr_5049 := _29
                /// @src 50:13196:13241  "ReaderLogic.getPairStatus(globalData, pairId)"

                if iszero(extcodesize(expr_5047_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _30 := allocate_unbounded()
                mstore(_30, shift_left_224(expr_5047_functionSelector))
                let _31 := abi_encode_tuple_t_struct$_GlobalData_$19302_storage_t_uint256__to_t_uint256_t_uint256__fromStack_library(add(_30, 4) , expr_5048_slot, expr_5049)

                let _32 := delegatecall(gas(), expr_5047_address,  _30, sub(_31, _30), _30, 0)

                if iszero(_32) { revert_forward_1() }

                if _32 {

                    let _33 := 0

                    if gt(_33, returndatasize()) {
                        _33 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_30, _33)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_30, add(_30, _33))
                }

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 5067
            /// @src 50:13341:13458  "function revertVaultStatus(uint256 vaultId) external {..."
            function fun_revertVaultStatus_5067(var_vaultId_5056) {

                /// @src 50:13404:13415  "ReaderLogic"
                let expr_5059_address := linkersymbol("src/libraries/logic/ReaderLogic.sol:ReaderLogic")
                /// @src 50:13404:13430  "ReaderLogic.getVaultStatus"
                let expr_5061_address := convert_t_type$_t_contract$_ReaderLogic_$18475_$_to_t_address(expr_5059_address)
                let expr_5061_functionSelector := 0x919c1b61
                /// @src 50:13431:13441  "globalData"
                let _34_slot := 0x34
                let expr_5062_slot := _34_slot
                /// @src 50:13443:13450  "vaultId"
                let _35 := var_vaultId_5056
                let expr_5063 := _35
                /// @src 50:13404:13451  "ReaderLogic.getVaultStatus(globalData, vaultId)"

                if iszero(extcodesize(expr_5061_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _36 := allocate_unbounded()
                mstore(_36, shift_left_224(expr_5061_functionSelector))
                let _37 := abi_encode_tuple_t_struct$_GlobalData_$19302_storage_t_uint256__to_t_uint256_t_uint256__fromStack_library(add(_36, 4) , expr_5062_slot, expr_5063)

                let _38 := delegatecall(gas(), expr_5061_address,  _36, sub(_37, _36), _36, 0)

                if iszero(_38) { revert_forward_1() }

                if _38 {

                    let _39 := 0

                    if gt(_39, returndatasize()) {
                        _39 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_36, _39)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_36, add(_36, _39))
                }

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4320
            /// @src 50:2753:2905  "modifier onlyPoolOwner(uint256 pairId) {..."
            function modifier_onlyPoolOwner_4477(var_pairId_4470, var_riskParams_4473_mpos) {

                /// @src 50:4925:4931  "pairId"
                let _40 := var_pairId_4470
                let expr_4476 := _40
                let _41 := expr_4476
                let var_pairId_4304 := _41

                /// @src 50:2806:2816  "globalData"
                let _42_slot := 0x34
                let expr_4306_slot := _42_slot
                /// @src 50:2806:2822  "globalData.pairs"
                let _43 := add(expr_4306_slot, 3)
                let _44_slot := _43
                let expr_4307_slot := _44_slot
                /// @src 50:2823:2829  "pairId"
                let _45 := var_pairId_4304
                let expr_4308 := _45
                /// @src 50:2806:2830  "globalData.pairs[pairId]"
                let _46 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4307_slot,expr_4308)
                let _47_slot := _46
                let expr_4309_slot := _47_slot
                /// @src 50:2806:2840  "globalData.pairs[pairId].poolOwner"
                let _48 := add(expr_4309_slot, 2)
                let _49 := read_from_storage_split_offset_0_t_address(_48)
                let expr_4310 := _49
                /// @src 50:2844:2854  "msg.sender"
                let expr_4312 := caller()
                /// @src 50:2806:2854  "globalData.pairs[pairId].poolOwner != msg.sender"
                let expr_4313 := iszero(eq(cleanup_t_address(expr_4310), cleanup_t_address(expr_4312)))
                /// @src 50:2802:2887  "if (globalData.pairs[pairId].poolOwner != msg.sender) revert CallerIsNotPoolCreator()"
                if expr_4313 {
                    /// @src 50:2863:2887  "CallerIsNotPoolCreator()"
                    {

                        let _51 := 0

                        mstore(_51, 0xb50aa2c000000000000000000000000000000000000000000000000000000000)
                        let _50 := abi_encode_tuple__to__fromStack(add(_51, 4) )
                        revert(_51, sub(_50, _51))
                    }/// @src 50:2802:2887  "if (globalData.pairs[pairId].poolOwner != msg.sender) revert CallerIsNotPoolCreator()"
                }
                /// @src 50:2897:2898  "_"
                fun_updateAssetRiskParams_4490_inner(var_pairId_4470, var_riskParams_4473_mpos)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function abi_encode_t_struct$_PairStatus_$6102_storage_to_t_uint256_fromStack_library(value, pos) {
                mstore(pos, value)
            }

            // struct Perp.AssetRiskParams -> struct Perp.AssetRiskParams
            function abi_encode_t_struct$_AssetRiskParams_$13579_memory_ptr_to_t_struct$_AssetRiskParams_$13579_memory_ptr_fromStack_library(value, pos)  {
                let tail := add(pos, 0xc0)

                {
                    // riskRatio

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_uint128_to_t_uint128_library(memberValue0, add(pos, 0x00))
                }

                {
                    // debtRiskRatio

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_uint128_to_t_uint128_library(memberValue0, add(pos, 0x20))
                }

                {
                    // rangeSize

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_int24_to_t_int24_library(memberValue0, add(pos, 0x40))
                }

                {
                    // rebalanceThreshold

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_int24_to_t_int24_library(memberValue0, add(pos, 0x60))
                }

                {
                    // minSlippage

                    let memberValue0 := mload(add(value, 0x80))
                    abi_encode_t_uint64_to_t_uint64_library(memberValue0, add(pos, 0x80))
                }

                {
                    // maxSlippage

                    let memberValue0 := mload(add(value, 0xa0))
                    abi_encode_t_uint64_to_t_uint64_library(memberValue0, add(pos, 0xa0))
                }

            }

            function abi_encode_tuple_t_struct$_PairStatus_$6102_storage_t_struct$_AssetRiskParams_$13579_memory_ptr__to_t_uint256_t_struct$_AssetRiskParams_$13579_memory_ptr__fromStack_library(headStart , value0, value1) -> tail {
                tail := add(headStart, 224)

                abi_encode_t_struct$_PairStatus_$6102_storage_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

                abi_encode_t_struct$_AssetRiskParams_$13579_memory_ptr_to_t_struct$_AssetRiskParams_$13579_memory_ptr_fromStack_library(value1,  add(headStart, 32))

            }

            /// @src 50:4799:5026  "function updateAssetRiskParams(uint256 pairId, Perp.AssetRiskParams memory riskParams)..."
            function fun_updateAssetRiskParams_4490_inner(var_pairId_4470, var_riskParams_4473_mpos) {

                /// @src 50:4947:4959  "AddPairLogic"
                let expr_4479_address := linkersymbol("src/libraries/logic/AddPairLogic.sol:AddPairLogic")
                /// @src 50:4947:4981  "AddPairLogic.updateAssetRiskParams"
                let expr_4481_address := convert_t_type$_t_contract$_AddPairLogic_$17784_$_to_t_address(expr_4479_address)
                let expr_4481_functionSelector := 0x8951fed6
                /// @src 50:4982:4992  "globalData"
                let _52_slot := 0x34
                let expr_4482_slot := _52_slot
                /// @src 50:4982:4998  "globalData.pairs"
                let _53 := add(expr_4482_slot, 3)
                let _54_slot := _53
                let expr_4483_slot := _54_slot
                /// @src 50:4999:5005  "pairId"
                let _55 := var_pairId_4470
                let expr_4484 := _55
                /// @src 50:4982:5006  "globalData.pairs[pairId]"
                let _56 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4483_slot,expr_4484)
                let _57_slot := _56
                let expr_4485_slot := _57_slot
                /// @src 50:5008:5018  "riskParams"
                let _58_mpos := var_riskParams_4473_mpos
                let expr_4486_mpos := _58_mpos
                /// @src 50:4947:5019  "AddPairLogic.updateAssetRiskParams(globalData.pairs[pairId], riskParams)"

                if iszero(extcodesize(expr_4481_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _59 := allocate_unbounded()
                mstore(_59, shift_left_224(expr_4481_functionSelector))
                let _60 := abi_encode_tuple_t_struct$_PairStatus_$6102_storage_t_struct$_AssetRiskParams_$13579_memory_ptr__to_t_uint256_t_struct$_AssetRiskParams_$13579_memory_ptr__fromStack_library(add(_59, 4) , expr_4485_slot, expr_4486_mpos)

                let _61 := delegatecall(gas(), expr_4481_address,  _59, sub(_60, _59), _59, 0)

                if iszero(_61) { revert_forward_1() }

                if _61 {

                    let _62 := 0

                    if gt(_62, returndatasize()) {
                        _62 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_59, _62)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_59, add(_59, _62))
                }

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4490
            /// @src 50:4799:5026  "function updateAssetRiskParams(uint256 pairId, Perp.AssetRiskParams memory riskParams)..."
            function fun_updateAssetRiskParams_4490(var_pairId_4470, var_riskParams_4473_mpos) {

                modifier_onlyPoolOwner_4477(var_pairId_4470, var_riskParams_4473_mpos)
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4320
            /// @src 50:2753:2905  "modifier onlyPoolOwner(uint256 pairId) {..."
            function modifier_onlyPoolOwner_4569(var_pairId_4563, var_priceOracle_4565) {

                /// @src 50:6517:6523  "pairId"
                let _63 := var_pairId_4563
                let expr_4568 := _63
                let _64 := expr_4568
                let var_pairId_4304 := _64

                /// @src 50:2806:2816  "globalData"
                let _65_slot := 0x34
                let expr_4306_slot := _65_slot
                /// @src 50:2806:2822  "globalData.pairs"
                let _66 := add(expr_4306_slot, 3)
                let _67_slot := _66
                let expr_4307_slot := _67_slot
                /// @src 50:2823:2829  "pairId"
                let _68 := var_pairId_4304
                let expr_4308 := _68
                /// @src 50:2806:2830  "globalData.pairs[pairId]"
                let _69 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4307_slot,expr_4308)
                let _70_slot := _69
                let expr_4309_slot := _70_slot
                /// @src 50:2806:2840  "globalData.pairs[pairId].poolOwner"
                let _71 := add(expr_4309_slot, 2)
                let _72 := read_from_storage_split_offset_0_t_address(_71)
                let expr_4310 := _72
                /// @src 50:2844:2854  "msg.sender"
                let expr_4312 := caller()
                /// @src 50:2806:2854  "globalData.pairs[pairId].poolOwner != msg.sender"
                let expr_4313 := iszero(eq(cleanup_t_address(expr_4310), cleanup_t_address(expr_4312)))
                /// @src 50:2802:2887  "if (globalData.pairs[pairId].poolOwner != msg.sender) revert CallerIsNotPoolCreator()"
                if expr_4313 {
                    /// @src 50:2863:2887  "CallerIsNotPoolCreator()"
                    {

                        let _74 := 0

                        mstore(_74, 0xb50aa2c000000000000000000000000000000000000000000000000000000000)
                        let _73 := abi_encode_tuple__to__fromStack(add(_74, 4) )
                        revert(_74, sub(_73, _74))
                    }/// @src 50:2802:2887  "if (globalData.pairs[pairId].poolOwner != msg.sender) revert CallerIsNotPoolCreator()"
                }
                /// @src 50:2897:2898  "_"
                fun_updatePriceOracle_4582_inner(var_pairId_4563, var_priceOracle_4565)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function abi_encode_t_address_to_t_address_fromStack_library(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_struct$_PairStatus_$6102_storage_t_address__to_t_uint256_t_address__fromStack_library(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_struct$_PairStatus_$6102_storage_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack_library(value1,  add(headStart, 32))

            }

            /// @src 50:6430:6611  "function updatePriceOracle(uint256 pairId, address priceOracle) external onlyPoolOwner(pairId) {..."
            function fun_updatePriceOracle_4582_inner(var_pairId_4563, var_priceOracle_4565) {

                /// @src 50:6535:6547  "AddPairLogic"
                let expr_4571_address := linkersymbol("src/libraries/logic/AddPairLogic.sol:AddPairLogic")
                /// @src 50:6535:6565  "AddPairLogic.updatePriceOracle"
                let expr_4573_address := convert_t_type$_t_contract$_AddPairLogic_$17784_$_to_t_address(expr_4571_address)
                let expr_4573_functionSelector := 0xc2921478
                /// @src 50:6566:6576  "globalData"
                let _75_slot := 0x34
                let expr_4574_slot := _75_slot
                /// @src 50:6566:6582  "globalData.pairs"
                let _76 := add(expr_4574_slot, 3)
                let _77_slot := _76
                let expr_4575_slot := _77_slot
                /// @src 50:6583:6589  "pairId"
                let _78 := var_pairId_4563
                let expr_4576 := _78
                /// @src 50:6566:6590  "globalData.pairs[pairId]"
                let _79 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4575_slot,expr_4576)
                let _80_slot := _79
                let expr_4577_slot := _80_slot
                /// @src 50:6592:6603  "priceOracle"
                let _81 := var_priceOracle_4565
                let expr_4578 := _81
                /// @src 50:6535:6604  "AddPairLogic.updatePriceOracle(globalData.pairs[pairId], priceOracle)"

                if iszero(extcodesize(expr_4573_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _82 := allocate_unbounded()
                mstore(_82, shift_left_224(expr_4573_functionSelector))
                let _83 := abi_encode_tuple_t_struct$_PairStatus_$6102_storage_t_address__to_t_uint256_t_address__fromStack_library(add(_82, 4) , expr_4577_slot, expr_4578)

                let _84 := delegatecall(gas(), expr_4573_address,  _82, sub(_83, _82), _82, 0)

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
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4582
            /// @src 50:6430:6611  "function updatePriceOracle(uint256 pairId, address priceOracle) external onlyPoolOwner(pairId) {..."
            function fun_updatePriceOracle_4582(var_pairId_4563, var_priceOracle_4565) {

                modifier_onlyPoolOwner_4569(var_pairId_4563, var_priceOracle_4565)
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4320
            /// @src 50:2753:2905  "modifier onlyPoolOwner(uint256 pairId) {..."
            function modifier_onlyPoolOwner_4651(var_pairId_4645, var_isQuoteToken_4647) {

                /// @src 50:7612:7618  "pairId"
                let _86 := var_pairId_4645
                let expr_4650 := _86
                let _87 := expr_4650
                let var_pairId_4304 := _87

                /// @src 50:2806:2816  "globalData"
                let _88_slot := 0x34
                let expr_4306_slot := _88_slot
                /// @src 50:2806:2822  "globalData.pairs"
                let _89 := add(expr_4306_slot, 3)
                let _90_slot := _89
                let expr_4307_slot := _90_slot
                /// @src 50:2823:2829  "pairId"
                let _91 := var_pairId_4304
                let expr_4308 := _91
                /// @src 50:2806:2830  "globalData.pairs[pairId]"
                let _92 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4307_slot,expr_4308)
                let _93_slot := _92
                let expr_4309_slot := _93_slot
                /// @src 50:2806:2840  "globalData.pairs[pairId].poolOwner"
                let _94 := add(expr_4309_slot, 2)
                let _95 := read_from_storage_split_offset_0_t_address(_94)
                let expr_4310 := _95
                /// @src 50:2844:2854  "msg.sender"
                let expr_4312 := caller()
                /// @src 50:2806:2854  "globalData.pairs[pairId].poolOwner != msg.sender"
                let expr_4313 := iszero(eq(cleanup_t_address(expr_4310), cleanup_t_address(expr_4312)))
                /// @src 50:2802:2887  "if (globalData.pairs[pairId].poolOwner != msg.sender) revert CallerIsNotPoolCreator()"
                if expr_4313 {
                    /// @src 50:2863:2887  "CallerIsNotPoolCreator()"
                    {

                        let _97 := 0

                        mstore(_97, 0xb50aa2c000000000000000000000000000000000000000000000000000000000)
                        let _96 := abi_encode_tuple__to__fromStack(add(_97, 4) )
                        revert(_97, sub(_96, _97))
                    }/// @src 50:2802:2887  "if (globalData.pairs[pairId].poolOwner != msg.sender) revert CallerIsNotPoolCreator()"
                }
                /// @src 50:2897:2898  "_"
                fun_withdrawCreatorRevenue_4703_inner(var_pairId_4645, var_isQuoteToken_4647)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function store_literal_in_memory_5644e38f028c780ab1d5009e6a6b7c4c0f8f5620e140e3273ba11a586a0edbeb(memPtr) {

                mstore(add(memPtr, 0), "AZ")

            }

            function abi_encode_t_stringliteral_5644e38f028c780ab1d5009e6a6b7c4c0f8f5620e140e3273ba11a586a0edbeb_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_5644e38f028c780ab1d5009e6a6b7c4c0f8f5620e140e3273ba11a586a0edbeb(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_5644e38f028c780ab1d5009e6a6b7c4c0f8f5620e140e3273ba11a586a0edbeb__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_5644e38f028c780ab1d5009e6a6b7c4c0f8f5620e140e3273ba11a586a0edbeb_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_5644e38f028c780ab1d5009e6a6b7c4c0f8f5620e140e3273ba11a586a0edbeb(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_5644e38f028c780ab1d5009e6a6b7c4c0f8f5620e140e3273ba11a586a0edbeb__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
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

            function convert_t_uint160_to_t_contract$_ERC20_$13305(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_ERC20_$13305(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_ERC20_$13305(value)
            }

            function abi_encode_tuple_t_uint256_t_bool_t_uint256__to_t_uint256_t_bool_t_uint256__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bool_to_t_bool_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

            }

            /// @src 50:7522:8023  "function withdrawCreatorRevenue(uint256 pairId, bool isQuoteToken) external onlyPoolOwner(pairId) {..."
            function fun_withdrawCreatorRevenue_4703_inner(var_pairId_4645, var_isQuoteToken_4647) {

                /// @src 50:7686:7692  "pairId"
                let _98 := var_pairId_4645
                let expr_4659 := _98
                /// @src 50:7694:7706  "isQuoteToken"
                let _99 := var_isQuoteToken_4647
                let expr_4660 := _99
                /// @src 50:7666:7707  "_getAssetStatusPool(pairId, isQuoteToken)"
                let expr_4661_slot := fun__getAssetStatusPool_5094(expr_4659, expr_4660)
                /// @src 50:7630:7707  "Perp.AssetPoolStatus storage pool = _getAssetStatusPool(pairId, isQuoteToken)"
                let var_pool_4657_slot := expr_4661_slot
                /// @src 50:7735:7739  "pool"
                let _100_slot := var_pool_4657_slot
                let expr_4665_slot := _100_slot
                /// @src 50:7735:7765  "pool.accumulatedCreatorRevenue"
                let _101 := add(expr_4665_slot, 13)
                let _102 := read_from_storage_split_offset_0_t_uint256(_101)
                let expr_4666 := _102
                /// @src 50:7718:7765  "uint256 amount = pool.accumulatedCreatorRevenue"
                let var_amount_4664 := expr_4666
                /// @src 50:7784:7790  "amount"
                let _103 := var_amount_4664
                let expr_4669 := _103
                /// @src 50:7793:7794  "0"
                let expr_4670 := 0x00
                /// @src 50:7784:7794  "amount > 0"
                let expr_4671 := gt(cleanup_t_uint256(expr_4669), convert_t_rational_0_by_1_to_t_uint256(expr_4670))
                /// @src 50:7776:7801  "require(amount > 0, \"AZ\")"
                require_helper_t_stringliteral_5644e38f028c780ab1d5009e6a6b7c4c0f8f5620e140e3273ba11a586a0edbeb(expr_4671)
                /// @src 50:7845:7846  "0"
                let expr_4678 := 0x00
                /// @src 50:7812:7846  "pool.accumulatedCreatorRevenue = 0"
                let _104 := convert_t_rational_0_by_1_to_t_uint256(expr_4678)
                /// @src 50:7812:7816  "pool"
                let _105_slot := var_pool_4657_slot
                let expr_4675_slot := _105_slot
                /// @src 50:7812:7842  "pool.accumulatedCreatorRevenue"
                let _106 := add(expr_4675_slot, 13)
                /// @src 50:7812:7846  "pool.accumulatedCreatorRevenue = 0"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_106, _104)
                let expr_4679 := _104
                /// @src 50:7861:7867  "amount"
                let _107 := var_amount_4664
                let expr_4681 := _107
                /// @src 50:7870:7871  "0"
                let expr_4682 := 0x00
                /// @src 50:7861:7871  "amount > 0"
                let expr_4683 := gt(cleanup_t_uint256(expr_4681), convert_t_rational_0_by_1_to_t_uint256(expr_4682))
                /// @src 50:7857:7948  "if (amount > 0) {..."
                if expr_4683 {
                    /// @src 50:7893:7897  "pool"
                    let _108_slot := var_pool_4657_slot
                    let expr_4685_slot := _108_slot
                    /// @src 50:7893:7903  "pool.token"
                    let _109 := add(expr_4685_slot, 0)
                    let _110 := read_from_storage_split_offset_0_t_address(_109)
                    let expr_4686 := _110
                    /// @src 50:7887:7904  "ERC20(pool.token)"
                    let expr_4687_address := convert_t_address_to_t_contract$_ERC20_$13305(expr_4686)
                    /// @src 50:7887:7917  "ERC20(pool.token).safeTransfer"
                    let expr_4688_self_address := expr_4687_address
                    /// @src 50:7918:7928  "msg.sender"
                    let expr_4690 := caller()
                    /// @src 50:7930:7936  "amount"
                    let _111 := var_amount_4664
                    let expr_4691 := _111
                    fun_safeTransfer_13369(expr_4688_self_address, expr_4690, expr_4691)
                    /// @src 50:7857:7948  "if (amount > 0) {..."
                }
                /// @src 50:7987:7993  "pairId"
                let _112 := var_pairId_4645
                let expr_4697 := _112
                /// @src 50:7995:8007  "isQuoteToken"
                let _113 := var_isQuoteToken_4647
                let expr_4698 := _113
                /// @src 50:8009:8015  "amount"
                let _114 := var_amount_4664
                let expr_4699 := _114
                /// @src 50:7963:8016  "CreatorRevenueWithdrawn(pairId, isQuoteToken, amount)"
                let _115 := 0x3173529fa665e8e2fb976911ab571026d35fafa1c7327c47bb3eceeccde4c505
                {
                    let _116 := allocate_unbounded()
                    let _117 := abi_encode_tuple_t_uint256_t_bool_t_uint256__to_t_uint256_t_bool_t_uint256__fromStack(_116 , expr_4697, expr_4698, expr_4699)
                    log1(_116, sub(_117, _116) , _115)
                }
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4703
            /// @src 50:7522:8023  "function withdrawCreatorRevenue(uint256 pairId, bool isQuoteToken) external onlyPoolOwner(pairId) {..."
            function fun_withdrawCreatorRevenue_4703(var_pairId_4645, var_isQuoteToken_4647) {

                modifier_onlyPoolOwner_4651(var_pairId_4645, var_isQuoteToken_4647)
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 12877
            /// @src 6:2492:2595  "modifier nonReentrant() {..."
            function modifier_nonReentrant_4736(var_finalBurnAmount_4738, var_finalWithdrawAmount_4740, var_pairId_4729, var_isQuoteAsset_4731, var_withdrawAmount_4733) -> _120, _121 {
                _120 := var_finalBurnAmount_4738
                _121 := var_finalWithdrawAmount_4740

                fun__nonReentrantBefore_12892()
                /// @src 6:2557:2558  "_"
                _120, _121 := fun_withdraw_4751_inner(var_finalBurnAmount_4738, var_finalWithdrawAmount_4740, var_pairId_4729, var_isQuoteAsset_4731, var_withdrawAmount_4733)
                fun__nonReentrantAfter_12900()

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function convert_t_type$_t_contract$_SupplyLogic_$19013_$_to_t_address(value) -> converted {
                converted := value
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

            function abi_encode_t_bool_to_t_bool_fromStack_library(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_tuple_t_struct$_GlobalData_$19302_storage_t_uint256_t_uint256_t_bool__to_t_uint256_t_uint256_t_uint256_t_bool__fromStack_library(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_struct$_GlobalData_$19302_storage_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack_library(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack_library(value2,  add(headStart, 64))

                abi_encode_t_bool_to_t_bool_fromStack_library(value3,  add(headStart, 96))

            }

            /// @src 50:8429:8713  "function withdraw(uint256 pairId, bool isQuoteAsset, uint256 withdrawAmount)..."
            function fun_withdraw_4751_inner(_122, _123, var_pairId_4729, var_isQuoteAsset_4731, var_withdrawAmount_4733) -> var_finalBurnAmount_4738, var_finalWithdrawAmount_4740 {
                var_finalBurnAmount_4738 := _122
                var_finalWithdrawAmount_4740 := _123

                /// @src 50:8636:8647  "SupplyLogic"
                let expr_4742_address := linkersymbol("src/libraries/logic/SupplyLogic.sol:SupplyLogic")
                /// @src 50:8636:8656  "SupplyLogic.withdraw"
                let expr_4743_address := convert_t_type$_t_contract$_SupplyLogic_$19013_$_to_t_address(expr_4742_address)
                let expr_4743_functionSelector := 0x3e16468d
                /// @src 50:8657:8667  "globalData"
                let _124_slot := 0x34
                let expr_4744_slot := _124_slot
                /// @src 50:8669:8675  "pairId"
                let _125 := var_pairId_4729
                let expr_4745 := _125
                /// @src 50:8677:8691  "withdrawAmount"
                let _126 := var_withdrawAmount_4733
                let expr_4746 := _126
                /// @src 50:8693:8705  "isQuoteAsset"
                let _127 := var_isQuoteAsset_4731
                let expr_4747 := _127
                /// @src 50:8636:8706  "SupplyLogic.withdraw(globalData, pairId, withdrawAmount, isQuoteAsset)"

                // storage for arguments and returned data
                let _128 := allocate_unbounded()
                mstore(_128, shift_left_224(expr_4743_functionSelector))
                let _129 := abi_encode_tuple_t_struct$_GlobalData_$19302_storage_t_uint256_t_uint256_t_bool__to_t_uint256_t_uint256_t_uint256_t_bool__fromStack_library(add(_128, 4) , expr_4744_slot, expr_4745, expr_4746, expr_4747)

                let _130 := delegatecall(gas(), expr_4743_address,  _128, sub(_129, _128), _128, 64)

                if iszero(_130) { revert_forward_1() }

                let expr_4748_component_1, expr_4748_component_2
                if _130 {

                    let _131 := 64

                    if gt(_131, returndatasize()) {
                        _131 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_128, _131)

                    // decode return parameters from external try-call into retVars
                    expr_4748_component_1, expr_4748_component_2 :=  abi_decode_tuple_t_uint256t_uint256_fromMemory(_128, add(_128, _131))
                }
                /// @src 50:8629:8706  "return SupplyLogic.withdraw(globalData, pairId, withdrawAmount, isQuoteAsset)"
                var_finalBurnAmount_4738 := expr_4748_component_1
                var_finalWithdrawAmount_4740 := expr_4748_component_2
                leave

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4751
            /// @src 50:8429:8713  "function withdraw(uint256 pairId, bool isQuoteAsset, uint256 withdrawAmount)..."
            function fun_withdraw_4751(var_pairId_4729, var_isQuoteAsset_4731, var_withdrawAmount_4733) -> var_finalBurnAmount_4738, var_finalWithdrawAmount_4740 {
                /// @src 50:8561:8584  "uint256 finalBurnAmount"
                let zero_t_uint256_118 := zero_value_for_split_t_uint256()
                var_finalBurnAmount_4738 := zero_t_uint256_118
                /// @src 50:8586:8613  "uint256 finalWithdrawAmount"
                let zero_t_uint256_119 := zero_value_for_split_t_uint256()
                var_finalWithdrawAmount_4740 := zero_t_uint256_119

                var_finalBurnAmount_4738, var_finalWithdrawAmount_4740 := modifier_nonReentrant_4736(var_finalBurnAmount_4738, var_finalWithdrawAmount_4740, var_pairId_4729, var_isQuoteAsset_4731, var_withdrawAmount_4733)
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            /// @ast-id 12877
            /// @src 6:2492:2595  "modifier nonReentrant() {..."
            function modifier_nonReentrant_4759(var_relocationOccurred_4761, var_pairId_4754, var_settlementData_4756_mpos) -> _133 {
                _133 := var_relocationOccurred_4761

                fun__nonReentrantBefore_12892()
                /// @src 6:2557:2558  "_"
                _133 := fun_reallocate_4771_inner(var_relocationOccurred_4761, var_pairId_4754, var_settlementData_4756_mpos)
                fun__nonReentrantAfter_12900()

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function convert_t_type$_t_contract$_ReallocationLogic_$18704_$_to_t_address(value) -> converted {
                converted := value
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

            function abi_encode_tuple_t_struct$_GlobalData_$19302_storage_t_uint256_t_bytes_memory_ptr__to_t_uint256_t_uint256_t_bytes_memory_ptr__fromStack_library(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_struct$_GlobalData_$19302_storage_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack_library(value1,  add(headStart, 32))

                mstore(add(headStart, 64), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack_library(value2,  tail)

            }

            /// @src 50:9004:9241  "function reallocate(uint256 pairId, bytes memory settlementData)..."
            function fun_reallocate_4771_inner(_134, var_pairId_4754, var_settlementData_4756_mpos) -> var_relocationOccurred_4761 {
                var_relocationOccurred_4761 := _134

                /// @src 50:9170:9187  "ReallocationLogic"
                let expr_4763_address := linkersymbol("src/libraries/logic/ReallocationLogic.sol:ReallocationLogic")
                /// @src 50:9170:9198  "ReallocationLogic.reallocate"
                let expr_4764_address := convert_t_type$_t_contract$_ReallocationLogic_$18704_$_to_t_address(expr_4763_address)
                let expr_4764_functionSelector := 0x4d869ace
                /// @src 50:9199:9209  "globalData"
                let _135_slot := 0x34
                let expr_4765_slot := _135_slot
                /// @src 50:9211:9217  "pairId"
                let _136 := var_pairId_4754
                let expr_4766 := _136
                /// @src 50:9219:9233  "settlementData"
                let _137_mpos := var_settlementData_4756_mpos
                let expr_4767_mpos := _137_mpos
                /// @src 50:9170:9234  "ReallocationLogic.reallocate(globalData, pairId, settlementData)"

                // storage for arguments and returned data
                let _138 := allocate_unbounded()
                mstore(_138, shift_left_224(expr_4764_functionSelector))
                let _139 := abi_encode_tuple_t_struct$_GlobalData_$19302_storage_t_uint256_t_bytes_memory_ptr__to_t_uint256_t_uint256_t_bytes_memory_ptr__fromStack_library(add(_138, 4) , expr_4765_slot, expr_4766, expr_4767_mpos)

                let _140 := delegatecall(gas(), expr_4764_address,  _138, sub(_139, _138), _138, 32)

                if iszero(_140) { revert_forward_1() }

                let expr_4768
                if _140 {

                    let _141 := 32

                    if gt(_141, returndatasize()) {
                        _141 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_138, _141)

                    // decode return parameters from external try-call into retVars
                    expr_4768 :=  abi_decode_tuple_t_bool_fromMemory(_138, add(_138, _141))
                }
                /// @src 50:9163:9234  "return ReallocationLogic.reallocate(globalData, pairId, settlementData)"
                var_relocationOccurred_4761 := expr_4768
                leave

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4771
            /// @src 50:9004:9241  "function reallocate(uint256 pairId, bytes memory settlementData)..."
            function fun_reallocate_4771(var_pairId_4754, var_settlementData_4756_mpos) -> var_relocationOccurred_4761 {
                /// @src 50:9124:9147  "bool relocationOccurred"
                let zero_t_bool_132 := zero_value_for_split_t_bool()
                var_relocationOccurred_4761 := zero_t_bool_132

                var_relocationOccurred_4761 := modifier_nonReentrant_4759(var_relocationOccurred_4761, var_pairId_4754, var_settlementData_4756_mpos)
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function allocate_memory_struct_t_struct$_Vault_$6116_memory_ptr() -> memPtr {
                memPtr := allocate_memory(192)
            }

            function zero_value_for_t_uint256() -> ret {
                ret := 0
            }

            function zero_value_for_t_address() -> ret {
                ret := 0
            }

            function zero_value_for_t_int256() -> ret {
                ret := 0
            }

            function allocate_memory_struct_t_struct$_UserStatus_$13665_memory_ptr() -> memPtr {
                memPtr := allocate_memory(256)
            }

            function zero_value_for_t_int24() -> ret {
                ret := 0
            }

            function zero_value_for_t_uint64() -> ret {
                ret := 0
            }

            function allocate_memory_struct_t_struct$_PositionStatus_$13584_memory_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function allocate_and_zero_memory_struct_t_struct$_PositionStatus_$13584_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_PositionStatus_$13584_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

            }

            function zero_value_for_t_struct$_PositionStatus_$13584_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_PositionStatus_$13584_memory_ptr()
            }

            function allocate_memory_struct_t_struct$_SqrtPositionStatus_$13597_memory_ptr() -> memPtr {
                memPtr := allocate_memory(192)
            }

            function allocate_and_zero_memory_struct_t_struct$_SqrtPositionStatus_$13597_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_SqrtPositionStatus_$13597_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_int256())
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

            function zero_value_for_t_struct$_SqrtPositionStatus_$13597_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_SqrtPositionStatus_$13597_memory_ptr()
            }

            function allocate_memory_struct_t_struct$_UserStatus_$30939_memory_ptr() -> memPtr {
                memPtr := allocate_memory(64)
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

            function allocate_and_zero_memory_struct_t_struct$_UserStatus_$13665_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_UserStatus_$13665_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int24())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int24())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint64())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_PositionStatus_$13584_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_SqrtPositionStatus_$13597_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_UserStatus_$30939_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_UserStatus_$30939_memory_ptr())
                offset := add(offset, 32)

            }

            function zero_value_for_t_struct$_UserStatus_$13665_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_UserStatus_$13665_memory_ptr()
            }

            function allocate_and_zero_memory_struct_t_struct$_Vault_$6116_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_Vault_$6116_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_address())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_address())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_address())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_UserStatus_$13665_memory_ptr())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_Vault_$6116_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_Vault_$6116_memory_ptr()
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Vault_$6116_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
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

            function cleanup_from_storage_t_int24(value) -> cleaned {
                cleaned := signextend(2, value)
            }

            function extract_from_storage_value_offset_0_t_int24(slot_value) -> value {
                value := cleanup_from_storage_t_int24(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_int24(slot) -> value {
                value := extract_from_storage_value_offset_0_t_int24(sload(slot))

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

            function write_to_memory_t_uint64(memPtr, value) {
                mstore(memPtr, cleanup_t_uint64(value))
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

            /// @ast-id 5039
            /// @src 50:12916:13047  "function getVault(uint256 vaultId) external view returns (DataType.Vault memory) {..."
            function fun_getVault_5039(var_vaultId_5027) -> var__5031_mpos {
                /// @src 50:12974:12995  "DataType.Vault memory"
                let zero_t_struct$_Vault_$6116_memory_ptr_142_mpos := zero_value_for_split_t_struct$_Vault_$6116_memory_ptr()
                var__5031_mpos := zero_t_struct$_Vault_$6116_memory_ptr_142_mpos

                /// @src 50:13014:13024  "globalData"
                let _143_slot := 0x34
                let expr_5033_slot := _143_slot
                /// @src 50:13014:13031  "globalData.vaults"
                let _144 := add(expr_5033_slot, 5)
                let _145_slot := _144
                let expr_5034_slot := _145_slot
                /// @src 50:13032:13039  "vaultId"
                let _146 := var_vaultId_5027
                let expr_5035 := _146
                /// @src 50:13014:13040  "globalData.vaults[vaultId]"
                let _147 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Vault_$6116_storage_$_of_t_uint256(expr_5034_slot,expr_5035)
                let _148_slot := _147
                let expr_5036_slot := _148_slot
                /// @src 50:13007:13040  "return globalData.vaults[vaultId]"
                var__5031_mpos := convert_t_struct$_Vault_$6116_storage_to_t_struct$_Vault_$6116_memory_ptr(expr_5036_slot)
                leave

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4320
            /// @src 50:2753:2905  "modifier onlyPoolOwner(uint256 pairId) {..."
            function modifier_onlyPoolOwner_4503(var_pairId_4493, var_quoteIrmParams_4496_mpos, var_baseIrmParams_4499_mpos) {

                /// @src 50:5558:5564  "pairId"
                let _149 := var_pairId_4493
                let expr_4502 := _149
                let _150 := expr_4502
                let var_pairId_4304 := _150

                /// @src 50:2806:2816  "globalData"
                let _151_slot := 0x34
                let expr_4306_slot := _151_slot
                /// @src 50:2806:2822  "globalData.pairs"
                let _152 := add(expr_4306_slot, 3)
                let _153_slot := _152
                let expr_4307_slot := _153_slot
                /// @src 50:2823:2829  "pairId"
                let _154 := var_pairId_4304
                let expr_4308 := _154
                /// @src 50:2806:2830  "globalData.pairs[pairId]"
                let _155 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4307_slot,expr_4308)
                let _156_slot := _155
                let expr_4309_slot := _156_slot
                /// @src 50:2806:2840  "globalData.pairs[pairId].poolOwner"
                let _157 := add(expr_4309_slot, 2)
                let _158 := read_from_storage_split_offset_0_t_address(_157)
                let expr_4310 := _158
                /// @src 50:2844:2854  "msg.sender"
                let expr_4312 := caller()
                /// @src 50:2806:2854  "globalData.pairs[pairId].poolOwner != msg.sender"
                let expr_4313 := iszero(eq(cleanup_t_address(expr_4310), cleanup_t_address(expr_4312)))
                /// @src 50:2802:2887  "if (globalData.pairs[pairId].poolOwner != msg.sender) revert CallerIsNotPoolCreator()"
                if expr_4313 {
                    /// @src 50:2863:2887  "CallerIsNotPoolCreator()"
                    {

                        let _160 := 0

                        mstore(_160, 0xb50aa2c000000000000000000000000000000000000000000000000000000000)
                        let _159 := abi_encode_tuple__to__fromStack(add(_160, 4) )
                        revert(_160, sub(_159, _160))
                    }/// @src 50:2802:2887  "if (globalData.pairs[pairId].poolOwner != msg.sender) revert CallerIsNotPoolCreator()"
                }
                /// @src 50:2897:2898  "_"
                fun_updateIRMParams_4517_inner(var_pairId_4493, var_quoteIrmParams_4496_mpos, var_baseIrmParams_4499_mpos)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            // struct InterestRateModel.IRMParams -> struct InterestRateModel.IRMParams
            function abi_encode_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_memory_ptr_fromStack_library(value, pos)  {
                let tail := add(pos, 0x80)

                {
                    // baseRate

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_uint256_to_t_uint256_library(memberValue0, add(pos, 0x00))
                }

                {
                    // kinkRate

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_uint256_to_t_uint256_library(memberValue0, add(pos, 0x20))
                }

                {
                    // slope1

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_uint256_to_t_uint256_library(memberValue0, add(pos, 0x40))
                }

                {
                    // slope2

                    let memberValue0 := mload(add(value, 0x60))
                    abi_encode_t_uint256_to_t_uint256_library(memberValue0, add(pos, 0x60))
                }

            }

            function abi_encode_tuple_t_struct$_PairStatus_$6102_storage_t_struct$_IRMParams_$13447_memory_ptr_t_struct$_IRMParams_$13447_memory_ptr__to_t_uint256_t_struct$_IRMParams_$13447_memory_ptr_t_struct$_IRMParams_$13447_memory_ptr__fromStack_library(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 288)

                abi_encode_t_struct$_PairStatus_$6102_storage_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

                abi_encode_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_memory_ptr_fromStack_library(value1,  add(headStart, 32))

                abi_encode_t_struct$_IRMParams_$13447_memory_ptr_to_t_struct$_IRMParams_$13447_memory_ptr_fromStack_library(value2,  add(headStart, 160))

            }

            /// @src 50:5363:5668  "function updateIRMParams(..."
            function fun_updateIRMParams_4517_inner(var_pairId_4493, var_quoteIrmParams_4496_mpos, var_baseIrmParams_4499_mpos) {

                /// @src 50:5576:5588  "AddPairLogic"
                let expr_4505_address := linkersymbol("src/libraries/logic/AddPairLogic.sol:AddPairLogic")
                /// @src 50:5576:5604  "AddPairLogic.updateIRMParams"
                let expr_4507_address := convert_t_type$_t_contract$_AddPairLogic_$17784_$_to_t_address(expr_4505_address)
                let expr_4507_functionSelector := 0x1a9cd26b
                /// @src 50:5605:5615  "globalData"
                let _161_slot := 0x34
                let expr_4508_slot := _161_slot
                /// @src 50:5605:5621  "globalData.pairs"
                let _162 := add(expr_4508_slot, 3)
                let _163_slot := _162
                let expr_4509_slot := _163_slot
                /// @src 50:5622:5628  "pairId"
                let _164 := var_pairId_4493
                let expr_4510 := _164
                /// @src 50:5605:5629  "globalData.pairs[pairId]"
                let _165 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4509_slot,expr_4510)
                let _166_slot := _165
                let expr_4511_slot := _166_slot
                /// @src 50:5631:5645  "quoteIrmParams"
                let _167_mpos := var_quoteIrmParams_4496_mpos
                let expr_4512_mpos := _167_mpos
                /// @src 50:5647:5660  "baseIrmParams"
                let _168_mpos := var_baseIrmParams_4499_mpos
                let expr_4513_mpos := _168_mpos
                /// @src 50:5576:5661  "AddPairLogic.updateIRMParams(globalData.pairs[pairId], quoteIrmParams, baseIrmParams)"

                if iszero(extcodesize(expr_4507_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _169 := allocate_unbounded()
                mstore(_169, shift_left_224(expr_4507_functionSelector))
                let _170 := abi_encode_tuple_t_struct$_PairStatus_$6102_storage_t_struct$_IRMParams_$13447_memory_ptr_t_struct$_IRMParams_$13447_memory_ptr__to_t_uint256_t_struct$_IRMParams_$13447_memory_ptr_t_struct$_IRMParams_$13447_memory_ptr__fromStack_library(add(_169, 4) , expr_4511_slot, expr_4512_mpos, expr_4513_mpos)

                let _171 := delegatecall(gas(), expr_4507_address,  _169, sub(_170, _169), _169, 0)

                if iszero(_171) { revert_forward_1() }

                if _171 {

                    let _172 := 0

                    if gt(_172, returndatasize()) {
                        _172 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_169, _172)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_169, add(_169, _172))
                }

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4517
            /// @src 50:5363:5668  "function updateIRMParams(..."
            function fun_updateIRMParams_4517(var_pairId_4493, var_quoteIrmParams_4496_mpos, var_baseIrmParams_4499_mpos) {

                modifier_onlyPoolOwner_4503(var_pairId_4493, var_quoteIrmParams_4496_mpos, var_baseIrmParams_4499_mpos)
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function convert_t_struct$_GlobalData_$19302_storage_to_t_struct$_GlobalData_$19302_storage_ptr(value) -> converted {
                converted := value
            }

            /// @ast-id 4959
            /// @src 50:11940:12104  "function createVault(uint256 pairId) external returns (uint256) {..."
            function fun_createVault_4959(var_pairId_4941) -> var__4944 {
                /// @src 50:11995:12002  "uint256"
                let zero_t_uint256_173 := zero_value_for_split_t_uint256()
                var__4944 := zero_t_uint256_173

                /// @src 50:12014:12024  "globalData"
                let _174_slot := 0x34
                let expr_4946_slot := _174_slot
                /// @src 50:12014:12033  "globalData.validate"
                let expr_4948_self_slot := convert_t_struct$_GlobalData_$19302_storage_to_t_struct$_GlobalData_$19302_storage_ptr(expr_4946_slot)
                /// @src 50:12034:12040  "pairId"
                let _175 := var_pairId_4941
                let expr_4949 := _175
                fun_validate_19348(expr_4948_self_slot, expr_4949)
                /// @src 50:12059:12069  "globalData"
                let _176_slot := 0x34
                let expr_4952_slot := _176_slot
                /// @src 50:12059:12086  "globalData.createOrGetVault"
                let expr_4953_self_slot := convert_t_struct$_GlobalData_$19302_storage_to_t_struct$_GlobalData_$19302_storage_ptr(expr_4952_slot)
                /// @src 50:12087:12088  "0"
                let expr_4954 := 0x00
                /// @src 50:12090:12096  "pairId"
                let _177 := var_pairId_4941
                let expr_4955 := _177
                /// @src 50:12059:12097  "globalData.createOrGetVault(0, pairId)"
                let _178 := convert_t_rational_0_by_1_to_t_uint256(expr_4954)
                let expr_4956 := fun_createOrGetVault_17132(expr_4953_self_slot, _178, expr_4955)
                /// @src 50:12052:12097  "return globalData.createOrGetVault(0, pairId)"
                var__4944 := expr_4956
                leave

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4338
            /// @src 50:2911:3062  "modifier onlyVaultOwner(uint256 vaultId) {..."
            function modifier_onlyVaultOwner_4839(var_vaultId_4833, var_recipient_4835) {

                /// @src 50:10364:10371  "vaultId"
                let _179 := var_vaultId_4833
                let expr_4838 := _179
                let _180 := expr_4838
                let var_vaultId_4322 := _180

                /// @src 50:2966:2976  "globalData"
                let _181_slot := 0x34
                let expr_4324_slot := _181_slot
                /// @src 50:2966:2983  "globalData.vaults"
                let _182 := add(expr_4324_slot, 5)
                let _183_slot := _182
                let expr_4325_slot := _183_slot
                /// @src 50:2984:2991  "vaultId"
                let _184 := var_vaultId_4322
                let expr_4326 := _184
                /// @src 50:2966:2992  "globalData.vaults[vaultId]"
                let _185 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Vault_$6116_storage_$_of_t_uint256(expr_4325_slot,expr_4326)
                let _186_slot := _185
                let expr_4327_slot := _186_slot
                /// @src 50:2966:2998  "globalData.vaults[vaultId].owner"
                let _187 := add(expr_4327_slot, 2)
                let _188 := read_from_storage_split_offset_0_t_address(_187)
                let expr_4328 := _188
                /// @src 50:3002:3012  "msg.sender"
                let expr_4330 := caller()
                /// @src 50:2966:3012  "globalData.vaults[vaultId].owner != msg.sender"
                let expr_4331 := iszero(eq(cleanup_t_address(expr_4328), cleanup_t_address(expr_4330)))
                /// @src 50:2962:3044  "if (globalData.vaults[vaultId].owner != msg.sender) revert CallerIsNotVaultOwner()"
                if expr_4331 {
                    /// @src 50:3021:3044  "CallerIsNotVaultOwner()"
                    {

                        let _190 := 0

                        mstore(_190, 0x1b65793700000000000000000000000000000000000000000000000000000000)
                        let _189 := abi_encode_tuple__to__fromStack(add(_190, 4) )
                        revert(_190, sub(_189, _190))
                    }/// @src 50:2962:3044  "if (globalData.vaults[vaultId].owner != msg.sender) revert CallerIsNotVaultOwner()"
                }
                /// @src 50:3054:3055  "_"
                fun_updateRecepient_4863_inner(var_vaultId_4833, var_recipient_4835)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function convert_t_struct$_Vault_$6116_storage_to_t_struct$_Vault_$6116_storage_ptr(value) -> converted {
                converted := value
            }

            function update_byte_slice_20_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function prepare_store_t_address(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_address_to_t_address(slot, value_0) {
                let convertedValue_0 := convert_t_address_to_t_address(value_0)
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(convertedValue_0)))
            }

            function abi_encode_tuple_t_uint256_t_address__to_t_uint256_t_address__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

            }

            /// @src 50:10279:10537  "function updateRecepient(uint256 vaultId, address recipient) external onlyVaultOwner(vaultId) {..."
            function fun_updateRecepient_4863_inner(var_vaultId_4833, var_recipient_4835) {

                /// @src 50:10414:10424  "globalData"
                let _191_slot := 0x34
                let expr_4846_slot := _191_slot
                /// @src 50:10414:10431  "globalData.vaults"
                let _192 := add(expr_4846_slot, 5)
                let _193_slot := _192
                let expr_4847_slot := _193_slot
                /// @src 50:10432:10439  "vaultId"
                let _194 := var_vaultId_4833
                let expr_4848 := _194
                /// @src 50:10414:10440  "globalData.vaults[vaultId]"
                let _195 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Vault_$6116_storage_$_of_t_uint256(expr_4847_slot,expr_4848)
                let _196_slot := _195
                let expr_4849_slot := _196_slot
                /// @src 50:10383:10440  "DataType.Vault storage vault = globalData.vaults[vaultId]"
                let var_vault_4845_slot := convert_t_struct$_Vault_$6116_storage_to_t_struct$_Vault_$6116_storage_ptr(expr_4849_slot)
                /// @src 50:10469:10478  "recipient"
                let _197 := var_recipient_4835
                let expr_4854 := _197
                /// @src 50:10451:10456  "vault"
                let _198_slot := var_vault_4845_slot
                let expr_4851_slot := _198_slot
                /// @src 50:10451:10466  "vault.recipient"
                let _199 := add(expr_4851_slot, 3)
                /// @src 50:10451:10478  "vault.recipient = recipient"
                update_storage_value_offset_0_t_address_to_t_address(_199, expr_4854)
                let expr_4855 := expr_4854
                /// @src 50:10511:10518  "vaultId"
                let _200 := var_vaultId_4833
                let expr_4858 := _200
                /// @src 50:10520:10529  "recipient"
                let _201 := var_recipient_4835
                let expr_4859 := _201
                /// @src 50:10494:10530  "RecepientUpdated(vaultId, recipient)"
                let _202 := 0xb366571df43de977d0635daba11a487957fbf2197c1bcb1cc8a1d0342b2ec895
                {
                    let _203 := allocate_unbounded()
                    let _204 := abi_encode_tuple_t_uint256_t_address__to_t_uint256_t_address__fromStack(_203 , expr_4858, expr_4859)
                    log1(_203, sub(_204, _203) , _202)
                }
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4863
            /// @src 50:10279:10537  "function updateRecepient(uint256 vaultId, address recipient) external onlyVaultOwner(vaultId) {..."
            function fun_updateRecepient_4863(var_vaultId_4833, var_recipient_4835) {

                modifier_onlyVaultOwner_4839(var_vaultId_4833, var_recipient_4835)
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

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

            function convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_PairStatus_$6102_memory_ptr(value)

            }

            /// @ast-id 5003
            /// @src 50:12496:12657  "function getSqrtIndexPrice(uint256 pairId) external view returns (uint256) {..."
            function fun_getSqrtIndexPrice_5003(var_pairId_4989) -> var__4992 {
                /// @src 50:12562:12569  "uint256"
                let zero_t_uint256_205 := zero_value_for_split_t_uint256()
                var__4992 := zero_t_uint256_205

                /// @src 50:12588:12606  "PositionCalculator"
                let expr_4994_address := linkersymbol("src/libraries/PositionCalculator.sol:PositionCalculator")
                /// @src 50:12625:12635  "globalData"
                let _206_slot := 0x34
                let expr_4996_slot := _206_slot
                /// @src 50:12625:12641  "globalData.pairs"
                let _207 := add(expr_4996_slot, 3)
                let _208_slot := _207
                let expr_4997_slot := _208_slot
                /// @src 50:12642:12648  "pairId"
                let _209 := var_pairId_4989
                let expr_4998 := _209
                /// @src 50:12625:12649  "globalData.pairs[pairId]"
                let _210 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4997_slot,expr_4998)
                let _211_slot := _210
                let expr_4999_slot := _211_slot
                /// @src 50:12588:12650  "PositionCalculator.getSqrtIndexPrice(globalData.pairs[pairId])"
                let _212_mpos := convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_memory_ptr(expr_4999_slot)
                let expr_5000 := fun_getSqrtIndexPrice_16180(_212_mpos)
                /// @src 50:12581:12650  "return PositionCalculator.getSqrtIndexPrice(globalData.pairs[pairId])"
                var__4992 := expr_5000
                leave

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4283
            /// @src 50:2479:2587  "modifier onlyOperator() {..."
            function modifier_onlyOperator_4430(var_newOperator_4427) {

                /// @src 50:2517:2525  "operator"
                let _213 := read_from_storage_split_offset_0_t_address(0x33)
                let expr_4273 := _213
                /// @src 50:2529:2539  "msg.sender"
                let expr_4275 := caller()
                /// @src 50:2517:2539  "operator != msg.sender"
                let expr_4276 := iszero(eq(cleanup_t_address(expr_4273), cleanup_t_address(expr_4275)))
                /// @src 50:2513:2569  "if (operator != msg.sender) revert CallerIsNotOperator()"
                if expr_4276 {
                    /// @src 50:2548:2569  "CallerIsNotOperator()"
                    {

                        let _215 := 0

                        mstore(_215, 0xd0769d8e00000000000000000000000000000000000000000000000000000000)
                        let _214 := abi_encode_tuple__to__fromStack(add(_215, 4) )
                        revert(_215, sub(_214, _215))
                    }/// @src 50:2513:2569  "if (operator != msg.sender) revert CallerIsNotOperator()"
                }
                /// @src 50:2579:2580  "_"
                fun_setOperator_4450_inner(var_newOperator_4427)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            /// @src 50:4014:4205  "function setOperator(address newOperator) external onlyOperator {..."
            function fun_setOperator_4450_inner(var_newOperator_4427) {

                /// @src 50:4096:4107  "newOperator"
                let _216 := var_newOperator_4427
                let expr_4433 := _216
                /// @src 50:4119:4120  "0"
                let expr_4436 := 0x00
                /// @src 50:4111:4121  "address(0)"
                let expr_4437 := convert_t_rational_0_by_1_to_t_address(expr_4436)
                /// @src 50:4096:4121  "newOperator != address(0)"
                let expr_4438 := iszero(eq(cleanup_t_address(expr_4433), cleanup_t_address(expr_4437)))
                /// @src 50:4088:4122  "require(newOperator != address(0))"
                require_helper(expr_4438)
                /// @src 50:4143:4154  "newOperator"
                let _217 := var_newOperator_4427
                let expr_4442 := _217
                /// @src 50:4132:4154  "operator = newOperator"
                update_storage_value_offset_0_t_address_to_t_address(0x33, expr_4442)
                let expr_4443 := expr_4442
                /// @src 50:4186:4197  "newOperator"
                let _218 := var_newOperator_4427
                let expr_4446 := _218
                /// @src 50:4170:4198  "OperatorUpdated(newOperator)"
                let _219 := 0xb3b3f5f64ab192e4b5fefde1f51ce9733bbdcf831951543b325aebd49cc27ec4
                {
                    let _220 := allocate_unbounded()
                    let _221 := abi_encode_tuple_t_address__to_t_address__fromStack(_220 , expr_4446)
                    log1(_220, sub(_221, _220) , _219)
                }
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4450
            /// @src 50:4014:4205  "function setOperator(address newOperator) external onlyOperator {..."
            function fun_setOperator_4450(var_newOperator_4427) {

                modifier_onlyOperator_4430(var_newOperator_4427)
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4283
            /// @src 50:2479:2587  "modifier onlyOperator() {..."
            function modifier_onlyOperator_4590(var_pairId_4585, var_isQuoteToken_4587) {

                /// @src 50:2517:2525  "operator"
                let _222 := read_from_storage_split_offset_0_t_address(0x33)
                let expr_4273 := _222
                /// @src 50:2529:2539  "msg.sender"
                let expr_4275 := caller()
                /// @src 50:2517:2539  "operator != msg.sender"
                let expr_4276 := iszero(eq(cleanup_t_address(expr_4273), cleanup_t_address(expr_4275)))
                /// @src 50:2513:2569  "if (operator != msg.sender) revert CallerIsNotOperator()"
                if expr_4276 {
                    /// @src 50:2548:2569  "CallerIsNotOperator()"
                    {

                        let _224 := 0

                        mstore(_224, 0xd0769d8e00000000000000000000000000000000000000000000000000000000)
                        let _223 := abi_encode_tuple__to__fromStack(add(_224, 4) )
                        revert(_224, sub(_223, _224))
                    }/// @src 50:2513:2569  "if (operator != msg.sender) revert CallerIsNotOperator()"
                }
                /// @src 50:2579:2580  "_"
                fun_withdrawProtocolRevenue_4642_inner(var_pairId_4585, var_isQuoteToken_4587)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @src 50:6818:7314  "function withdrawProtocolRevenue(uint256 pairId, bool isQuoteToken) external onlyOperator {..."
            function fun_withdrawProtocolRevenue_4642_inner(var_pairId_4585, var_isQuoteToken_4587) {

                /// @src 50:6974:6980  "pairId"
                let _225 := var_pairId_4585
                let expr_4598 := _225
                /// @src 50:6982:6994  "isQuoteToken"
                let _226 := var_isQuoteToken_4587
                let expr_4599 := _226
                /// @src 50:6954:6995  "_getAssetStatusPool(pairId, isQuoteToken)"
                let expr_4600_slot := fun__getAssetStatusPool_5094(expr_4598, expr_4599)
                /// @src 50:6918:6995  "Perp.AssetPoolStatus storage pool = _getAssetStatusPool(pairId, isQuoteToken)"
                let var_pool_4596_slot := expr_4600_slot
                /// @src 50:7023:7027  "pool"
                let _227_slot := var_pool_4596_slot
                let expr_4604_slot := _227_slot
                /// @src 50:7023:7054  "pool.accumulatedProtocolRevenue"
                let _228 := add(expr_4604_slot, 12)
                let _229 := read_from_storage_split_offset_0_t_uint256(_228)
                let expr_4605 := _229
                /// @src 50:7006:7054  "uint256 amount = pool.accumulatedProtocolRevenue"
                let var_amount_4603 := expr_4605
                /// @src 50:7073:7079  "amount"
                let _230 := var_amount_4603
                let expr_4608 := _230
                /// @src 50:7082:7083  "0"
                let expr_4609 := 0x00
                /// @src 50:7073:7083  "amount > 0"
                let expr_4610 := gt(cleanup_t_uint256(expr_4608), convert_t_rational_0_by_1_to_t_uint256(expr_4609))
                /// @src 50:7065:7090  "require(amount > 0, \"AZ\")"
                require_helper_t_stringliteral_5644e38f028c780ab1d5009e6a6b7c4c0f8f5620e140e3273ba11a586a0edbeb(expr_4610)
                /// @src 50:7135:7136  "0"
                let expr_4617 := 0x00
                /// @src 50:7101:7136  "pool.accumulatedProtocolRevenue = 0"
                let _231 := convert_t_rational_0_by_1_to_t_uint256(expr_4617)
                /// @src 50:7101:7105  "pool"
                let _232_slot := var_pool_4596_slot
                let expr_4614_slot := _232_slot
                /// @src 50:7101:7132  "pool.accumulatedProtocolRevenue"
                let _233 := add(expr_4614_slot, 12)
                /// @src 50:7101:7136  "pool.accumulatedProtocolRevenue = 0"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_233, _231)
                let expr_4618 := _231
                /// @src 50:7151:7157  "amount"
                let _234 := var_amount_4603
                let expr_4620 := _234
                /// @src 50:7160:7161  "0"
                let expr_4621 := 0x00
                /// @src 50:7151:7161  "amount > 0"
                let expr_4622 := gt(cleanup_t_uint256(expr_4620), convert_t_rational_0_by_1_to_t_uint256(expr_4621))
                /// @src 50:7147:7238  "if (amount > 0) {..."
                if expr_4622 {
                    /// @src 50:7183:7187  "pool"
                    let _235_slot := var_pool_4596_slot
                    let expr_4624_slot := _235_slot
                    /// @src 50:7183:7193  "pool.token"
                    let _236 := add(expr_4624_slot, 0)
                    let _237 := read_from_storage_split_offset_0_t_address(_236)
                    let expr_4625 := _237
                    /// @src 50:7177:7194  "ERC20(pool.token)"
                    let expr_4626_address := convert_t_address_to_t_contract$_ERC20_$13305(expr_4625)
                    /// @src 50:7177:7207  "ERC20(pool.token).safeTransfer"
                    let expr_4627_self_address := expr_4626_address
                    /// @src 50:7208:7218  "msg.sender"
                    let expr_4629 := caller()
                    /// @src 50:7220:7226  "amount"
                    let _238 := var_amount_4603
                    let expr_4630 := _238
                    fun_safeTransfer_13369(expr_4627_self_address, expr_4629, expr_4630)
                    /// @src 50:7147:7238  "if (amount > 0) {..."
                }
                /// @src 50:7278:7284  "pairId"
                let _239 := var_pairId_4585
                let expr_4636 := _239
                /// @src 50:7286:7298  "isQuoteToken"
                let _240 := var_isQuoteToken_4587
                let expr_4637 := _240
                /// @src 50:7300:7306  "amount"
                let _241 := var_amount_4603
                let expr_4638 := _241
                /// @src 50:7253:7307  "ProtocolRevenueWithdrawn(pairId, isQuoteToken, amount)"
                let _242 := 0x5a20c28abe112981e0c6cfb468231d1ad8f18fb4c13c2e9bd84fa984aef8de6c
                {
                    let _243 := allocate_unbounded()
                    let _244 := abi_encode_tuple_t_uint256_t_bool_t_uint256__to_t_uint256_t_bool_t_uint256__fromStack(_243 , expr_4636, expr_4637, expr_4638)
                    log1(_243, sub(_244, _243) , _242)
                }
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4642
            /// @src 50:6818:7314  "function withdrawProtocolRevenue(uint256 pairId, bool isQuoteToken) external onlyOperator {..."
            function fun_withdrawProtocolRevenue_4642(var_pairId_4585, var_isQuoteToken_4587) {

                modifier_onlyOperator_4590(var_pairId_4585, var_isQuoteToken_4587)
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

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

            function extract_from_storage_value_offset_0_t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_0_t_uint8(sload(slot))

            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_1_by_1(value)))
            }

            function convert_t_contract$_Initializable_$12832_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function store_literal_in_memory_7a2a4e26842155ea933fe6eb6e3137eb5a296dcdf55721c552be7b4c3cc23759(memPtr) {

                mstore(add(memPtr, 0), "Initializable: contract is alrea")

                mstore(add(memPtr, 32), "dy initialized")

            }

            function abi_encode_t_stringliteral_7a2a4e26842155ea933fe6eb6e3137eb5a296dcdf55721c552be7b4c3cc23759_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 46)
                store_literal_in_memory_7a2a4e26842155ea933fe6eb6e3137eb5a296dcdf55721c552be7b4c3cc23759(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_7a2a4e26842155ea933fe6eb6e3137eb5a296dcdf55721c552be7b4c3cc23759__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_7a2a4e26842155ea933fe6eb6e3137eb5a296dcdf55721c552be7b4c3cc23759_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_7a2a4e26842155ea933fe6eb6e3137eb5a296dcdf55721c552be7b4c3cc23759(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_7a2a4e26842155ea933fe6eb6e3137eb5a296dcdf55721c552be7b4c3cc23759__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function update_byte_slice_1_shift_0(value, toInsert) -> result {
                let mask := 255
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint8_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_uint8(value)))
            }

            function prepare_store_t_uint8(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_uint8_to_t_uint8(slot, value_0) {
                let convertedValue_0 := convert_t_uint8_to_t_uint8(value_0)
                sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_uint8(convertedValue_0)))
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

            function convert_t_bool_to_t_bool(value) -> converted {
                converted := cleanup_t_bool(value)
            }

            function prepare_store_t_bool(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_1_t_bool_to_t_bool(slot, value_0) {
                let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
                sstore(slot, update_byte_slice_1_shift_1(sload(slot), prepare_store_t_bool(convertedValue_0)))
            }

            function abi_encode_t_rational_1_by_1_to_t_uint8_fromStack(value, pos) {
                mstore(pos, convert_t_rational_1_by_1_to_t_uint8(value))
            }

            function abi_encode_tuple_t_rational_1_by_1__to_t_uint8__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_rational_1_by_1_to_t_uint8_fromStack(value0,  add(headStart, 0))

            }

            /// @ast-id 12734
            /// @src 5:3246:3752  "modifier initializer() {..."
            function modifier_initializer_4347(var_uniswapFactory_4344) {

                /// @src 5:3302:3315  "_initializing"
                let _245 := read_from_storage_split_offset_1_t_bool(0x00)
                let expr_12683 := _245
                /// @src 5:3301:3315  "!_initializing"
                let expr_12684 := cleanup_t_bool(iszero(expr_12683))
                /// @src 5:3279:3315  "bool isTopLevelCall = !_initializing"
                let var_isTopLevelCall_12682 := expr_12684
                /// @src 5:3347:3361  "isTopLevelCall"
                let _246 := var_isTopLevelCall_12682
                let expr_12687 := _246
                /// @src 5:3347:3381  "isTopLevelCall && _initialized < 1"
                let expr_12691 := expr_12687
                if expr_12691 {
                    /// @src 5:3365:3377  "_initialized"
                    let _247 := read_from_storage_split_offset_0_t_uint8(0x00)
                    let expr_12688 := _247
                    /// @src 5:3380:3381  "1"
                    let expr_12689 := 0x01
                    /// @src 5:3365:3381  "_initialized < 1"
                    let expr_12690 := lt(cleanup_t_uint8(expr_12688), convert_t_rational_1_by_1_to_t_uint8(expr_12689))
                    /// @src 5:3347:3381  "isTopLevelCall && _initialized < 1"
                    expr_12691 := expr_12690
                }
                /// @src 5:3346:3382  "(isTopLevelCall && _initialized < 1)"
                let expr_12692 := expr_12691
                /// @src 5:3346:3454  "(isTopLevelCall && _initialized < 1) || (!AddressUpgradeable.isContract(address(this)) && _initialized == 1)"
                let expr_12706 := expr_12692
                if iszero(expr_12706) {
                    /// @src 5:3388:3406  "AddressUpgradeable"
                    let expr_12693_address := linkersymbol("lib/openzeppelin-contracts-upgradeable/contracts/utils/AddressUpgradeable.sol:AddressUpgradeable")
                    /// @src 5:3426:3430  "this"
                    let expr_12697_address := address()
                    /// @src 5:3418:3431  "address(this)"
                    let expr_12698 := convert_t_contract$_Initializable_$12832_to_t_address(expr_12697_address)
                    /// @src 5:3388:3432  "AddressUpgradeable.isContract(address(this))"
                    let expr_12699 := fun_isContract_26669(expr_12698)
                    /// @src 5:3387:3432  "!AddressUpgradeable.isContract(address(this))"
                    let expr_12700 := cleanup_t_bool(iszero(expr_12699))
                    /// @src 5:3387:3453  "!AddressUpgradeable.isContract(address(this)) && _initialized == 1"
                    let expr_12704 := expr_12700
                    if expr_12704 {
                        /// @src 5:3436:3448  "_initialized"
                        let _248 := read_from_storage_split_offset_0_t_uint8(0x00)
                        let expr_12701 := _248
                        /// @src 5:3452:3453  "1"
                        let expr_12702 := 0x01
                        /// @src 5:3436:3453  "_initialized == 1"
                        let expr_12703 := eq(cleanup_t_uint8(expr_12701), convert_t_rational_1_by_1_to_t_uint8(expr_12702))
                        /// @src 5:3387:3453  "!AddressUpgradeable.isContract(address(this)) && _initialized == 1"
                        expr_12704 := expr_12703
                    }
                    /// @src 5:3386:3454  "(!AddressUpgradeable.isContract(address(this)) && _initialized == 1)"
                    let expr_12705 := expr_12704
                    /// @src 5:3346:3454  "(isTopLevelCall && _initialized < 1) || (!AddressUpgradeable.isContract(address(this)) && _initialized == 1)"
                    expr_12706 := expr_12705
                }
                /// @src 5:3325:3526  "require(..."
                require_helper_t_stringliteral_7a2a4e26842155ea933fe6eb6e3137eb5a296dcdf55721c552be7b4c3cc23759(expr_12706)
                /// @src 5:3551:3552  "1"
                let expr_12711 := 0x01
                /// @src 5:3536:3552  "_initialized = 1"
                let _249 := convert_t_rational_1_by_1_to_t_uint8(expr_12711)
                update_storage_value_offset_0_t_uint8_to_t_uint8(0x00, _249)
                let expr_12712 := _249
                /// @src 5:3566:3580  "isTopLevelCall"
                let _250 := var_isTopLevelCall_12682
                let expr_12714 := _250
                /// @src 5:3562:3627  "if (isTopLevelCall) {..."
                if expr_12714 {
                    /// @src 5:3612:3616  "true"
                    let expr_12716 := 0x01
                    /// @src 5:3596:3616  "_initializing = true"
                    update_storage_value_offset_1_t_bool_to_t_bool(0x00, expr_12716)
                    let expr_12717 := expr_12716
                    /// @src 5:3562:3627  "if (isTopLevelCall) {..."
                }
                /// @src 5:3636:3637  "_"
                fun_initialize_4365_inner(var_uniswapFactory_4344)
                /// @src 5:3651:3665  "isTopLevelCall"
                let _251 := var_isTopLevelCall_12682
                let expr_12722 := _251
                /// @src 5:3647:3746  "if (isTopLevelCall) {..."
                if expr_12722 {
                    /// @src 5:3697:3702  "false"
                    let expr_12724 := 0x00
                    /// @src 5:3681:3702  "_initializing = false"
                    update_storage_value_offset_1_t_bool_to_t_bool(0x00, expr_12724)
                    let expr_12725 := expr_12724
                    /// @src 5:3733:3734  "1"
                    let expr_12728 := 0x01
                    /// @src 5:3721:3735  "Initialized(1)"
                    let _252 := 0x7f26b83ff96e1f2b6a682f133852f6798a09c465da95921460cefb3847402498
                    {
                        let _253 := allocate_unbounded()
                        let _254 := abi_encode_tuple_t_rational_1_by_1__to_t_uint8__fromStack(_253 , expr_12728)
                        log1(_253, sub(_254, _253) , _252)
                    }/// @src 5:3647:3746  "if (isTopLevelCall) {..."
                }

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function abi_encode_tuple_t_struct$_GlobalData_$19302_storage_t_address__to_t_uint256_t_address__fromStack_library(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_struct$_GlobalData_$19302_storage_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack_library(value1,  add(headStart, 32))

            }

            /// @src 50:3090:3297  "function initialize(address uniswapFactory) public initializer {..."
            function fun_initialize_4365_inner(var_uniswapFactory_4344) {

                fun___ReentrancyGuard_init_12856()
                /// @src 50:3197:3209  "AddPairLogic"
                let expr_4352_address := linkersymbol("src/libraries/logic/AddPairLogic.sol:AddPairLogic")
                /// @src 50:3197:3230  "AddPairLogic.initializeGlobalData"
                let expr_4354_address := convert_t_type$_t_contract$_AddPairLogic_$17784_$_to_t_address(expr_4352_address)
                let expr_4354_functionSelector := 0xfb135c42
                /// @src 50:3231:3241  "globalData"
                let _255_slot := 0x34
                let expr_4355_slot := _255_slot
                /// @src 50:3243:3257  "uniswapFactory"
                let _256 := var_uniswapFactory_4344
                let expr_4356 := _256
                /// @src 50:3197:3258  "AddPairLogic.initializeGlobalData(globalData, uniswapFactory)"

                if iszero(extcodesize(expr_4354_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _257 := allocate_unbounded()
                mstore(_257, shift_left_224(expr_4354_functionSelector))
                let _258 := abi_encode_tuple_t_struct$_GlobalData_$19302_storage_t_address__to_t_uint256_t_address__fromStack_library(add(_257, 4) , expr_4355_slot, expr_4356)

                let _259 := delegatecall(gas(), expr_4354_address,  _257, sub(_258, _257), _257, 0)

                if iszero(_259) { revert_forward_1() }

                if _259 {

                    let _260 := 0

                    if gt(_260, returndatasize()) {
                        _260 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_257, _260)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_257, add(_257, _260))
                }
                /// @src 50:3280:3290  "msg.sender"
                let expr_4361 := caller()
                /// @src 50:3269:3290  "operator = msg.sender"
                update_storage_value_offset_0_t_address_to_t_address(0x33, expr_4361)
                let expr_4362 := expr_4361

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4365
            /// @src 50:3090:3297  "function initialize(address uniswapFactory) public initializer {..."
            function fun_initialize_4365(var_uniswapFactory_4344) {

                modifier_initializer_4347(var_uniswapFactory_4344)
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4302
            /// @src 50:2593:2747  "modifier onlyByLocker() {..."
            function modifier_onlyByLocker_4927(var_isQuoteAsset_4920, var_to_4922, var_amount_4924) {

                /// @src 50:2644:2654  "globalData"
                let _261_slot := 0x34
                let expr_4287_slot := _261_slot
                /// @src 50:2644:2663  "globalData.lockData"
                let _262 := add(expr_4287_slot, 6)
                let _263_slot := _262
                let expr_4288_slot := _263_slot
                /// @src 50:2644:2670  "globalData.lockData.locker"
                let _264 := add(expr_4288_slot, 0)
                let _265 := read_from_storage_split_offset_0_t_address(_264)
                let expr_4289 := _265
                /// @src 50:2627:2670  "address locker = globalData.lockData.locker"
                let var_locker_4286 := expr_4289
                /// @src 50:2684:2694  "msg.sender"
                let expr_4292 := caller()
                /// @src 50:2698:2704  "locker"
                let _266 := var_locker_4286
                let expr_4293 := _266
                /// @src 50:2684:2704  "msg.sender != locker"
                let expr_4294 := iszero(eq(cleanup_t_address(expr_4292), cleanup_t_address(expr_4293)))
                /// @src 50:2680:2729  "if (msg.sender != locker) revert LockedBy(locker)"
                if expr_4294 {
                    /// @src 50:2722:2728  "locker"
                    let _267 := var_locker_4286
                    let expr_4296 := _267
                    /// @src 50:2713:2729  "LockedBy(locker)"
                    {

                        let _269 := 0

                        mstore(_269, 0x4f4b04cc00000000000000000000000000000000000000000000000000000000)
                        let _268 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_269, 4) , expr_4296)
                        revert(_269, sub(_268, _269))
                    }/// @src 50:2680:2729  "if (msg.sender != locker) revert LockedBy(locker)"
                }
                /// @src 50:2739:2740  "_"
                fun_take_4938_inner(var_isQuoteAsset_4920, var_to_4922, var_amount_4924)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @src 50:11690:11831  "function take(bool isQuoteAsset, address to, uint256 amount) external onlyByLocker {..."
            function fun_take_4938_inner(var_isQuoteAsset_4920, var_to_4922, var_amount_4924) {

                /// @src 50:11783:11793  "globalData"
                let _270_slot := 0x34
                let expr_4929_slot := _270_slot
                /// @src 50:11783:11798  "globalData.take"
                let expr_4931_self_slot := convert_t_struct$_GlobalData_$19302_storage_to_t_struct$_GlobalData_$19302_storage_ptr(expr_4929_slot)
                /// @src 50:11799:11811  "isQuoteAsset"
                let _271 := var_isQuoteAsset_4920
                let expr_4932 := _271
                /// @src 50:11813:11815  "to"
                let _272 := var_to_4922
                let expr_4933 := _272
                /// @src 50:11817:11823  "amount"
                let _273 := var_amount_4924
                let expr_4934 := _273
                fun_take_19555(expr_4931_self_slot, expr_4932, expr_4933, expr_4934)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4938
            /// @src 50:11690:11831  "function take(bool isQuoteAsset, address to, uint256 amount) external onlyByLocker {..."
            function fun_take_4938(var_isQuoteAsset_4920, var_to_4922, var_amount_4924) {

                modifier_onlyByLocker_4927(var_isQuoteAsset_4920, var_to_4922, var_amount_4924)
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

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

            function zero_value_for_t_struct$_AssetStatus_$30934_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_AssetStatus_$30934_memory_ptr()
            }

            function allocate_and_zero_memory_struct_t_struct$_IRMParams_$13447_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_IRMParams_$13447_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

            }

            function zero_value_for_t_struct$_IRMParams_$13447_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_IRMParams_$13447_memory_ptr()
            }

            function allocate_and_zero_memory_struct_t_struct$_AssetPoolStatus_$13566_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_AssetPoolStatus_$13566_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_address())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_address())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_AssetStatus_$30934_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_IRMParams_$13447_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

            }

            function zero_value_for_t_struct$_AssetPoolStatus_$13566_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_AssetPoolStatus_$13566_memory_ptr()
            }

            function zero_value_for_t_uint128() -> ret {
                ret := 0
            }

            function allocate_and_zero_memory_struct_t_struct$_AssetRiskParams_$13579_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_AssetRiskParams_$13579_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_uint128())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint128())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int24())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_int24())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint64())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint64())
                offset := add(offset, 32)

            }

            function zero_value_for_t_struct$_AssetRiskParams_$13579_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_AssetRiskParams_$13579_memory_ptr()
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

            function zero_value_for_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr()
            }

            function zero_value_for_t_bool() -> ret {
                ret := 0
            }

            function zero_value_for_t_uint8() -> ret {
                ret := 0
            }

            function allocate_and_zero_memory_struct_t_struct$_PairStatus_$6102_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_PairStatus_$6102_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_address())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_address())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_AssetPoolStatus_$13566_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_AssetPoolStatus_$13566_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_AssetRiskParams_$13579_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_address())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_bool())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_bool())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint8())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_PairStatus_$6102_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_PairStatus_$6102_memory_ptr()
            }

            /// @ast-id 5024
            /// @src 50:12703:12879  "function getPairStatus(uint256 pairId) external view returns (DataType.PairStatus memory) {..."
            function fun_getPairStatus_5024(var_pairId_5006) -> var__5010_mpos {
                /// @src 50:12765:12791  "DataType.PairStatus memory"
                let zero_t_struct$_PairStatus_$6102_memory_ptr_274_mpos := zero_value_for_split_t_struct$_PairStatus_$6102_memory_ptr()
                var__5010_mpos := zero_t_struct$_PairStatus_$6102_memory_ptr_274_mpos

                /// @src 50:12803:12813  "globalData"
                let _275_slot := 0x34
                let expr_5012_slot := _275_slot
                /// @src 50:12803:12822  "globalData.validate"
                let expr_5014_self_slot := convert_t_struct$_GlobalData_$19302_storage_to_t_struct$_GlobalData_$19302_storage_ptr(expr_5012_slot)
                /// @src 50:12823:12829  "pairId"
                let _276 := var_pairId_5006
                let expr_5015 := _276
                fun_validate_19348(expr_5014_self_slot, expr_5015)
                /// @src 50:12848:12858  "globalData"
                let _277_slot := 0x34
                let expr_5018_slot := _277_slot
                /// @src 50:12848:12864  "globalData.pairs"
                let _278 := add(expr_5018_slot, 3)
                let _279_slot := _278
                let expr_5019_slot := _279_slot
                /// @src 50:12865:12871  "pairId"
                let _280 := var_pairId_5006
                let expr_5020 := _280
                /// @src 50:12848:12872  "globalData.pairs[pairId]"
                let _281 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_5019_slot,expr_5020)
                let _282_slot := _281
                let expr_5021_slot := _282_slot
                /// @src 50:12841:12872  "return globalData.pairs[pairId]"
                var__5010_mpos := convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_memory_ptr(expr_5021_slot)
                leave

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function allocate_memory_struct_t_struct$_TradeResult_$2034_memory_ptr() -> memPtr {
                memPtr := allocate_memory(224)
            }

            function allocate_memory_struct_t_struct$_Payoff_$2047_memory_ptr() -> memPtr {
                memPtr := allocate_memory(192)
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

            function extract_from_storage_value_offset_0_t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_0_t_bool(sload(slot))

            }

            function convert_t_type$_t_contract$_TradeLogic_$19257_$_to_t_address(value) -> converted {
                converted := value
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

            function abi_encode_t_int256_to_t_int256_library(value, pos) {
                mstore(pos, cleanup_t_int256(value))
            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_library(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
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

            function abi_encode_tuple_t_struct$_GlobalData_$19302_storage_t_struct$_TradeParams_$2018_memory_ptr_t_bytes_memory_ptr__to_t_uint256_t_struct$_TradeParams_$2018_memory_ptr_t_bytes_memory_ptr__fromStack_library(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_struct$_GlobalData_$19302_storage_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

                mstore(add(headStart, 32), sub(tail, headStart))
                tail := abi_encode_t_struct$_TradeParams_$2018_memory_ptr_to_t_struct$_TradeParams_$2018_memory_ptr_fromStack_library(value1,  tail)

                mstore(add(headStart, 64), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack_library(value2,  tail)

            }

            /// @ast-id 4830
            /// @src 50:9506:10054  "function trade(TradeParams memory tradeParams, bytes memory settlementData)..."
            function fun_trade_4830(var_tradeParams_4775_mpos, var_settlementData_4777_mpos) -> var_tradeResult_4781_mpos {
                /// @src 50:9616:9646  "TradeResult memory tradeResult"
                let zero_t_struct$_TradeResult_$2034_memory_ptr_283_mpos := zero_value_for_split_t_struct$_TradeResult_$2034_memory_ptr()
                var_tradeResult_4781_mpos := zero_t_struct$_TradeResult_$2034_memory_ptr_283_mpos

                /// @src 50:9662:9672  "globalData"
                let _284_slot := 0x34
                let expr_4783_slot := _284_slot
                /// @src 50:9662:9681  "globalData.validate"
                let expr_4785_self_slot := convert_t_struct$_GlobalData_$19302_storage_to_t_struct$_GlobalData_$19302_storage_ptr(expr_4783_slot)
                /// @src 50:9682:9693  "tradeParams"
                let _285_mpos := var_tradeParams_4775_mpos
                let expr_4786_mpos := _285_mpos
                /// @src 50:9682:9700  "tradeParams.pairId"
                let _286 := add(expr_4786_mpos, 0)
                let _287 := read_from_memoryt_uint256(_286)
                let expr_4787 := _287
                fun_validate_19348(expr_4785_self_slot, expr_4787)
                /// @src 50:9716:9726  "globalData"
                let _288_slot := 0x34
                let expr_4790_slot := _288_slot
                /// @src 50:9716:9732  "globalData.pairs"
                let _289 := add(expr_4790_slot, 3)
                let _290_slot := _289
                let expr_4791_slot := _290_slot
                /// @src 50:9733:9744  "tradeParams"
                let _291_mpos := var_tradeParams_4775_mpos
                let expr_4792_mpos := _291_mpos
                /// @src 50:9733:9751  "tradeParams.pairId"
                let _292 := add(expr_4792_mpos, 0)
                let _293 := read_from_memoryt_uint256(_292)
                let expr_4793 := _293
                /// @src 50:9716:9752  "globalData.pairs[tradeParams.pairId]"
                let _294 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4791_slot,expr_4793)
                let _295_slot := _294
                let expr_4794_slot := _295_slot
                /// @src 50:9716:9769  "globalData.pairs[tradeParams.pairId].whitelistEnabled"
                let _296 := add(expr_4794_slot, 50)
                let _297 := read_from_storage_split_offset_21_t_bool(_296)
                let expr_4795 := _297
                /// @src 50:9716:9820  "globalData.pairs[tradeParams.pairId].whitelistEnabled && !allowedTraders[msg.sender][tradeParams.pairId]"
                let expr_4804 := expr_4795
                if expr_4804 {
                    /// @src 50:9774:9788  "allowedTraders"
                    let _298_slot := 0x3f
                    let expr_4796_slot := _298_slot
                    /// @src 50:9789:9799  "msg.sender"
                    let expr_4798 := caller()
                    /// @src 50:9774:9800  "allowedTraders[msg.sender]"
                    let _299 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_uint256_$_t_bool_$_$_of_t_address(expr_4796_slot,expr_4798)
                    let _300_slot := _299
                    let expr_4799_slot := _300_slot
                    /// @src 50:9801:9812  "tradeParams"
                    let _301_mpos := var_tradeParams_4775_mpos
                    let expr_4800_mpos := _301_mpos
                    /// @src 50:9801:9819  "tradeParams.pairId"
                    let _302 := add(expr_4800_mpos, 0)
                    let _303 := read_from_memoryt_uint256(_302)
                    let expr_4801 := _303
                    /// @src 50:9774:9820  "allowedTraders[msg.sender][tradeParams.pairId]"
                    let _304 := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(expr_4799_slot,expr_4801)
                    let _305 := read_from_storage_split_offset_0_t_bool(_304)
                    let expr_4802 := _305
                    /// @src 50:9773:9820  "!allowedTraders[msg.sender][tradeParams.pairId]"
                    let expr_4803 := cleanup_t_bool(iszero(expr_4802))
                    /// @src 50:9716:9820  "globalData.pairs[tradeParams.pairId].whitelistEnabled && !allowedTraders[msg.sender][tradeParams.pairId]"
                    expr_4804 := expr_4803
                }
                /// @src 50:9712:9872  "if (globalData.pairs[tradeParams.pairId].whitelistEnabled && !allowedTraders[msg.sender][tradeParams.pairId]) {..."
                if expr_4804 {
                    /// @src 50:9843:9861  "TraderNotAllowed()"
                    {

                        let _307 := 0

                        mstore(_307, 0xc88f62ca00000000000000000000000000000000000000000000000000000000)
                        let _306 := abi_encode_tuple__to__fromStack(add(_307, 4) )
                        revert(_307, sub(_306, _307))
                    }/// @src 50:9712:9872  "if (globalData.pairs[tradeParams.pairId].whitelistEnabled && !allowedTraders[msg.sender][tradeParams.pairId]) {..."
                }
                /// @src 50:9904:9914  "globalData"
                let _308_slot := 0x34
                let expr_4813_slot := _308_slot
                /// @src 50:9904:9931  "globalData.createOrGetVault"
                let expr_4814_self_slot := convert_t_struct$_GlobalData_$19302_storage_to_t_struct$_GlobalData_$19302_storage_ptr(expr_4813_slot)
                /// @src 50:9932:9943  "tradeParams"
                let _309_mpos := var_tradeParams_4775_mpos
                let expr_4815_mpos := _309_mpos
                /// @src 50:9932:9951  "tradeParams.vaultId"
                let _310 := add(expr_4815_mpos, 32)
                let _311 := read_from_memoryt_uint256(_310)
                let expr_4816 := _311
                /// @src 50:9953:9964  "tradeParams"
                let _312_mpos := var_tradeParams_4775_mpos
                let expr_4817_mpos := _312_mpos
                /// @src 50:9953:9971  "tradeParams.pairId"
                let _313 := add(expr_4817_mpos, 0)
                let _314 := read_from_memoryt_uint256(_313)
                let expr_4818 := _314
                /// @src 50:9904:9972  "globalData.createOrGetVault(tradeParams.vaultId, tradeParams.pairId)"
                let expr_4819 := fun_createOrGetVault_17132(expr_4814_self_slot, expr_4816, expr_4818)
                /// @src 50:9882:9893  "tradeParams"
                let _315_mpos := var_tradeParams_4775_mpos
                let expr_4810_mpos := _315_mpos
                /// @src 50:9882:9901  "tradeParams.vaultId"
                let _316 := add(expr_4810_mpos, 32)
                /// @src 50:9882:9972  "tradeParams.vaultId = globalData.createOrGetVault(tradeParams.vaultId, tradeParams.pairId)"
                let _317 := expr_4819
                write_to_memory_t_uint256(_316, _317)
                let expr_4820 := expr_4819
                /// @src 50:9990:10000  "TradeLogic"
                let expr_4822_address := linkersymbol("src/libraries/logic/TradeLogic.sol:TradeLogic")
                /// @src 50:9990:10006  "TradeLogic.trade"
                let expr_4823_address := convert_t_type$_t_contract$_TradeLogic_$19257_$_to_t_address(expr_4822_address)
                let expr_4823_functionSelector := 0x95629036
                /// @src 50:10007:10017  "globalData"
                let _318_slot := 0x34
                let expr_4824_slot := _318_slot
                /// @src 50:10019:10030  "tradeParams"
                let _319_mpos := var_tradeParams_4775_mpos
                let expr_4825_mpos := _319_mpos
                /// @src 50:10032:10046  "settlementData"
                let _320_mpos := var_settlementData_4777_mpos
                let expr_4826_mpos := _320_mpos
                /// @src 50:9990:10047  "TradeLogic.trade(globalData, tradeParams, settlementData)"

                // storage for arguments and returned data
                let _321 := allocate_unbounded()
                mstore(_321, shift_left_224(expr_4823_functionSelector))
                let _322 := abi_encode_tuple_t_struct$_GlobalData_$19302_storage_t_struct$_TradeParams_$2018_memory_ptr_t_bytes_memory_ptr__to_t_uint256_t_struct$_TradeParams_$2018_memory_ptr_t_bytes_memory_ptr__fromStack_library(add(_321, 4) , expr_4824_slot, expr_4825_mpos, expr_4826_mpos)

                let _323 := delegatecall(gas(), expr_4823_address,  _321, sub(_322, _321), _321, 384)

                if iszero(_323) { revert_forward_1() }

                let expr_4827_mpos
                if _323 {

                    let _324 := 384

                    if gt(_324, returndatasize()) {
                        _324 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_321, _324)

                    // decode return parameters from external try-call into retVars
                    expr_4827_mpos :=  abi_decode_tuple_t_struct$_TradeResult_$2034_memory_ptr_fromMemory(_321, add(_321, _324))
                }
                /// @src 50:9983:10047  "return TradeLogic.trade(globalData, tradeParams, settlementData)"
                var_tradeResult_4781_mpos := expr_4827_mpos
                leave

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4320
            /// @src 50:2753:2905  "modifier onlyPoolOwner(uint256 pairId) {..."
            function modifier_onlyPoolOwner_4548(var_pairId_4542, var_poolOwner_4544) {

                /// @src 50:6334:6340  "pairId"
                let _325 := var_pairId_4542
                let expr_4547 := _325
                let _326 := expr_4547
                let var_pairId_4304 := _326

                /// @src 50:2806:2816  "globalData"
                let _327_slot := 0x34
                let expr_4306_slot := _327_slot
                /// @src 50:2806:2822  "globalData.pairs"
                let _328 := add(expr_4306_slot, 3)
                let _329_slot := _328
                let expr_4307_slot := _329_slot
                /// @src 50:2823:2829  "pairId"
                let _330 := var_pairId_4304
                let expr_4308 := _330
                /// @src 50:2806:2830  "globalData.pairs[pairId]"
                let _331 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4307_slot,expr_4308)
                let _332_slot := _331
                let expr_4309_slot := _332_slot
                /// @src 50:2806:2840  "globalData.pairs[pairId].poolOwner"
                let _333 := add(expr_4309_slot, 2)
                let _334 := read_from_storage_split_offset_0_t_address(_333)
                let expr_4310 := _334
                /// @src 50:2844:2854  "msg.sender"
                let expr_4312 := caller()
                /// @src 50:2806:2854  "globalData.pairs[pairId].poolOwner != msg.sender"
                let expr_4313 := iszero(eq(cleanup_t_address(expr_4310), cleanup_t_address(expr_4312)))
                /// @src 50:2802:2887  "if (globalData.pairs[pairId].poolOwner != msg.sender) revert CallerIsNotPoolCreator()"
                if expr_4313 {
                    /// @src 50:2863:2887  "CallerIsNotPoolCreator()"
                    {

                        let _336 := 0

                        mstore(_336, 0xb50aa2c000000000000000000000000000000000000000000000000000000000)
                        let _335 := abi_encode_tuple__to__fromStack(add(_336, 4) )
                        revert(_336, sub(_335, _336))
                    }/// @src 50:2802:2887  "if (globalData.pairs[pairId].poolOwner != msg.sender) revert CallerIsNotPoolCreator()"
                }
                /// @src 50:2897:2898  "_"
                fun_updatePoolOwner_4561_inner(var_pairId_4542, var_poolOwner_4544)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @src 50:6251:6424  "function updatePoolOwner(uint256 pairId, address poolOwner) external onlyPoolOwner(pairId) {..."
            function fun_updatePoolOwner_4561_inner(var_pairId_4542, var_poolOwner_4544) {

                /// @src 50:6352:6364  "AddPairLogic"
                let expr_4550_address := linkersymbol("src/libraries/logic/AddPairLogic.sol:AddPairLogic")
                /// @src 50:6352:6380  "AddPairLogic.updatePoolOwner"
                let expr_4552_address := convert_t_type$_t_contract$_AddPairLogic_$17784_$_to_t_address(expr_4550_address)
                let expr_4552_functionSelector := 0x4b5f4ebf
                /// @src 50:6381:6391  "globalData"
                let _337_slot := 0x34
                let expr_4553_slot := _337_slot
                /// @src 50:6381:6397  "globalData.pairs"
                let _338 := add(expr_4553_slot, 3)
                let _339_slot := _338
                let expr_4554_slot := _339_slot
                /// @src 50:6398:6404  "pairId"
                let _340 := var_pairId_4542
                let expr_4555 := _340
                /// @src 50:6381:6405  "globalData.pairs[pairId]"
                let _341 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4554_slot,expr_4555)
                let _342_slot := _341
                let expr_4556_slot := _342_slot
                /// @src 50:6407:6416  "poolOwner"
                let _343 := var_poolOwner_4544
                let expr_4557 := _343
                /// @src 50:6352:6417  "AddPairLogic.updatePoolOwner(globalData.pairs[pairId], poolOwner)"

                if iszero(extcodesize(expr_4552_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _344 := allocate_unbounded()
                mstore(_344, shift_left_224(expr_4552_functionSelector))
                let _345 := abi_encode_tuple_t_struct$_PairStatus_$6102_storage_t_address__to_t_uint256_t_address__fromStack_library(add(_344, 4) , expr_4556_slot, expr_4557)

                let _346 := delegatecall(gas(), expr_4552_address,  _344, sub(_345, _344), _344, 0)

                if iszero(_346) { revert_forward_1() }

                if _346 {

                    let _347 := 0

                    if gt(_347, returndatasize()) {
                        _347 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_344, _347)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_344, add(_344, _347))
                }

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4561
            /// @src 50:6251:6424  "function updatePoolOwner(uint256 pairId, address poolOwner) external onlyPoolOwner(pairId) {..."
            function fun_updatePoolOwner_4561(var_pairId_4542, var_poolOwner_4544) {

                modifier_onlyPoolOwner_4548(var_pairId_4542, var_poolOwner_4544)
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 12877
            /// @src 6:2492:2595  "modifier nonReentrant() {..."
            function modifier_nonReentrant_4903(var_tradeResult_4906_mpos, var_vaultId_4896, var_closeRatio_4898, var_settlementData_4900_mpos) -> _349 {
                _349 := var_tradeResult_4906_mpos

                fun__nonReentrantBefore_12892()
                /// @src 6:2557:2558  "_"
                _349 := fun_execLiquidationCall_4917_inner(var_tradeResult_4906_mpos, var_vaultId_4896, var_closeRatio_4898, var_settlementData_4900_mpos)
                fun__nonReentrantAfter_12900()

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function convert_t_type$_t_contract$_LiquidationLogic_$18263_$_to_t_address(value) -> converted {
                converted := value
            }

            function abi_encode_tuple_t_uint256_t_uint256_t_struct$_GlobalData_$19302_storage_t_bytes_memory_ptr__to_t_uint256_t_uint256_t_uint256_t_bytes_memory_ptr__fromStack_library(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_uint256_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack_library(value1,  add(headStart, 32))

                abi_encode_t_struct$_GlobalData_$19302_storage_to_t_uint256_fromStack_library(value2,  add(headStart, 64))

                mstore(add(headStart, 96), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack_library(value3,  tail)

            }

            /// @src 50:11296:11581  "function execLiquidationCall(uint256 vaultId, uint256 closeRatio, bytes memory settlementData)..."
            function fun_execLiquidationCall_4917_inner(_350, var_vaultId_4896, var_closeRatio_4898, var_settlementData_4900_mpos) -> var_tradeResult_4906_mpos {
                var_tradeResult_4906_mpos := _350

                /// @src 50:11499:11515  "LiquidationLogic"
                let expr_4908_address := linkersymbol("src/libraries/logic/LiquidationLogic.sol:LiquidationLogic")
                /// @src 50:11499:11525  "LiquidationLogic.liquidate"
                let expr_4909_address := convert_t_type$_t_contract$_LiquidationLogic_$18263_$_to_t_address(expr_4908_address)
                let expr_4909_functionSelector := 0x4f9983d4
                /// @src 50:11526:11533  "vaultId"
                let _351 := var_vaultId_4896
                let expr_4910 := _351
                /// @src 50:11535:11545  "closeRatio"
                let _352 := var_closeRatio_4898
                let expr_4911 := _352
                /// @src 50:11547:11557  "globalData"
                let _353_slot := 0x34
                let expr_4912_slot := _353_slot
                /// @src 50:11559:11573  "settlementData"
                let _354_mpos := var_settlementData_4900_mpos
                let expr_4913_mpos := _354_mpos
                /// @src 50:11499:11574  "LiquidationLogic.liquidate(vaultId, closeRatio, globalData, settlementData)"

                // storage for arguments and returned data
                let _355 := allocate_unbounded()
                mstore(_355, shift_left_224(expr_4909_functionSelector))
                let _356 := abi_encode_tuple_t_uint256_t_uint256_t_struct$_GlobalData_$19302_storage_t_bytes_memory_ptr__to_t_uint256_t_uint256_t_uint256_t_bytes_memory_ptr__fromStack_library(add(_355, 4) , expr_4910, expr_4911, expr_4912_slot, expr_4913_mpos)

                let _357 := delegatecall(gas(), expr_4909_address,  _355, sub(_356, _355), _355, 384)

                if iszero(_357) { revert_forward_1() }

                let expr_4914_mpos
                if _357 {

                    let _358 := 384

                    if gt(_358, returndatasize()) {
                        _358 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_355, _358)

                    // decode return parameters from external try-call into retVars
                    expr_4914_mpos :=  abi_decode_tuple_t_struct$_TradeResult_$2034_memory_ptr_fromMemory(_355, add(_355, _358))
                }
                /// @src 50:11492:11574  "return LiquidationLogic.liquidate(vaultId, closeRatio, globalData, settlementData)"
                var_tradeResult_4906_mpos := expr_4914_mpos
                leave

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4917
            /// @src 50:11296:11581  "function execLiquidationCall(uint256 vaultId, uint256 closeRatio, bytes memory settlementData)..."
            function fun_execLiquidationCall_4917(var_vaultId_4896, var_closeRatio_4898, var_settlementData_4900_mpos) -> var_tradeResult_4906_mpos {
                /// @src 50:11446:11476  "TradeResult memory tradeResult"
                let zero_t_struct$_TradeResult_$2034_memory_ptr_348_mpos := zero_value_for_split_t_struct$_TradeResult_$2034_memory_ptr()
                var_tradeResult_4906_mpos := zero_t_struct$_TradeResult_$2034_memory_ptr_348_mpos

                var_tradeResult_4906_mpos := modifier_nonReentrant_4903(var_tradeResult_4906_mpos, var_vaultId_4896, var_closeRatio_4898, var_settlementData_4900_mpos)
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function convert_t_uint160_to_t_contract$_IUniswapV3Pool_$13422(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IUniswapV3Pool_$13422(value)
            }

            function convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
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

            /// @ast-id 4424
            /// @src 50:3346:3855  "function uniswapV3MintCallback(uint256 amount0, uint256 amount1, bytes calldata) external override {..."
            function fun_uniswapV3MintCallback_4424(var_amount0_4368, var_amount1_4370, var__4372_offset, var__4372_length) {

                /// @src 50:3525:3544  "allowedUniswapPools"
                let _359_slot := 0x3e
                let expr_4377_slot := _359_slot
                /// @src 50:3545:3555  "msg.sender"
                let expr_4379 := caller()
                /// @src 50:3525:3556  "allowedUniswapPools[msg.sender]"
                let _360 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_4377_slot,expr_4379)
                let _361 := read_from_storage_split_offset_0_t_bool(_360)
                let expr_4380 := _361
                /// @src 50:3517:3557  "require(allowedUniswapPools[msg.sender])"
                require_helper(expr_4380)
                /// @src 50:3612:3622  "msg.sender"
                let expr_4388 := caller()
                /// @src 50:3597:3623  "IUniswapV3Pool(msg.sender)"
                let expr_4389_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_4388)
                /// @src 50:3568:3623  "IUniswapV3Pool uniswapPool = IUniswapV3Pool(msg.sender)"
                let var_uniswapPool_4385_address := expr_4389_address
                /// @src 50:3638:3645  "amount0"
                let _362 := var_amount0_4368
                let expr_4391 := _362
                /// @src 50:3648:3649  "0"
                let expr_4392 := 0x00
                /// @src 50:3638:3649  "amount0 > 0"
                let expr_4393 := gt(cleanup_t_uint256(expr_4391), convert_t_rational_0_by_1_to_t_uint256(expr_4392))
                /// @src 50:3634:3737  "if (amount0 > 0) {..."
                if expr_4393 {
                    /// @src 50:3671:3682  "uniswapPool"
                    let _363_address := var_uniswapPool_4385_address
                    let expr_4395_address := _363_address
                    /// @src 50:3671:3689  "uniswapPool.token0"
                    let expr_4396_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_4395_address)
                    let expr_4396_functionSelector := 0x0dfe1681
                    /// @src 50:3671:3691  "uniswapPool.token0()"

                    // storage for arguments and returned data
                    let _364 := allocate_unbounded()
                    mstore(_364, shift_left_224(expr_4396_functionSelector))
                    let _365 := abi_encode_tuple__to__fromStack(add(_364, 4) )

                    let _366 := staticcall(gas(), expr_4396_address,  _364, sub(_365, _364), _364, 32)

                    if iszero(_366) { revert_forward_1() }

                    let expr_4397
                    if _366 {

                        let _367 := 32

                        if gt(_367, returndatasize()) {
                            _367 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_364, _367)

                        // decode return parameters from external try-call into retVars
                        expr_4397 :=  abi_decode_tuple_t_address_fromMemory(_364, add(_364, _367))
                    }
                    /// @src 50:3665:3692  "ERC20(uniswapPool.token0())"
                    let expr_4398_address := convert_t_address_to_t_contract$_ERC20_$13305(expr_4397)
                    /// @src 50:3665:3705  "ERC20(uniswapPool.token0()).safeTransfer"
                    let expr_4399_self_address := expr_4398_address
                    /// @src 50:3706:3716  "msg.sender"
                    let expr_4401 := caller()
                    /// @src 50:3718:3725  "amount0"
                    let _368 := var_amount0_4368
                    let expr_4402 := _368
                    fun_safeTransfer_13369(expr_4399_self_address, expr_4401, expr_4402)
                    /// @src 50:3634:3737  "if (amount0 > 0) {..."
                }
                /// @src 50:3750:3757  "amount1"
                let _369 := var_amount1_4370
                let expr_4407 := _369
                /// @src 50:3760:3761  "0"
                let expr_4408 := 0x00
                /// @src 50:3750:3761  "amount1 > 0"
                let expr_4409 := gt(cleanup_t_uint256(expr_4407), convert_t_rational_0_by_1_to_t_uint256(expr_4408))
                /// @src 50:3746:3849  "if (amount1 > 0) {..."
                if expr_4409 {
                    /// @src 50:3783:3794  "uniswapPool"
                    let _370_address := var_uniswapPool_4385_address
                    let expr_4411_address := _370_address
                    /// @src 50:3783:3801  "uniswapPool.token1"
                    let expr_4412_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_4411_address)
                    let expr_4412_functionSelector := 0xd21220a7
                    /// @src 50:3783:3803  "uniswapPool.token1()"

                    // storage for arguments and returned data
                    let _371 := allocate_unbounded()
                    mstore(_371, shift_left_224(expr_4412_functionSelector))
                    let _372 := abi_encode_tuple__to__fromStack(add(_371, 4) )

                    let _373 := staticcall(gas(), expr_4412_address,  _371, sub(_372, _371), _371, 32)

                    if iszero(_373) { revert_forward_1() }

                    let expr_4413
                    if _373 {

                        let _374 := 32

                        if gt(_374, returndatasize()) {
                            _374 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_371, _374)

                        // decode return parameters from external try-call into retVars
                        expr_4413 :=  abi_decode_tuple_t_address_fromMemory(_371, add(_371, _374))
                    }
                    /// @src 50:3777:3804  "ERC20(uniswapPool.token1())"
                    let expr_4414_address := convert_t_address_to_t_contract$_ERC20_$13305(expr_4413)
                    /// @src 50:3777:3817  "ERC20(uniswapPool.token1()).safeTransfer"
                    let expr_4415_self_address := expr_4414_address
                    /// @src 50:3818:3828  "msg.sender"
                    let expr_4417 := caller()
                    /// @src 50:3830:3837  "amount1"
                    let _375 := var_amount1_4370
                    let expr_4418 := _375
                    fun_safeTransfer_13369(expr_4415_self_address, expr_4417, expr_4418)
                    /// @src 50:3746:3849  "if (amount1 > 0) {..."
                }

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 12877
            /// @src 6:2492:2595  "modifier nonReentrant() {..."
            function modifier_nonReentrant_4713(var_finalSuppliedAmount_4715, var_pairId_4706, var_isQuoteAsset_4708, var_supplyAmount_4710) -> _377 {
                _377 := var_finalSuppliedAmount_4715

                fun__nonReentrantBefore_12892()
                /// @src 6:2557:2558  "_"
                _377 := fun_supply_4726_inner(var_finalSuppliedAmount_4715, var_pairId_4706, var_isQuoteAsset_4708, var_supplyAmount_4710)
                fun__nonReentrantAfter_12900()

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @src 50:8099:8350  "function supply(uint256 pairId, bool isQuoteAsset, uint256 supplyAmount)..."
            function fun_supply_4726_inner(_378, var_pairId_4706, var_isQuoteAsset_4708, var_supplyAmount_4710) -> var_finalSuppliedAmount_4715 {
                var_finalSuppliedAmount_4715 := _378

                /// @src 50:8277:8288  "SupplyLogic"
                let expr_4717_address := linkersymbol("src/libraries/logic/SupplyLogic.sol:SupplyLogic")
                /// @src 50:8277:8295  "SupplyLogic.supply"
                let expr_4718_address := convert_t_type$_t_contract$_SupplyLogic_$19013_$_to_t_address(expr_4717_address)
                let expr_4718_functionSelector := 0x3ec463bf
                /// @src 50:8296:8306  "globalData"
                let _379_slot := 0x34
                let expr_4719_slot := _379_slot
                /// @src 50:8308:8314  "pairId"
                let _380 := var_pairId_4706
                let expr_4720 := _380
                /// @src 50:8316:8328  "supplyAmount"
                let _381 := var_supplyAmount_4710
                let expr_4721 := _381
                /// @src 50:8330:8342  "isQuoteAsset"
                let _382 := var_isQuoteAsset_4708
                let expr_4722 := _382
                /// @src 50:8277:8343  "SupplyLogic.supply(globalData, pairId, supplyAmount, isQuoteAsset)"

                // storage for arguments and returned data
                let _383 := allocate_unbounded()
                mstore(_383, shift_left_224(expr_4718_functionSelector))
                let _384 := abi_encode_tuple_t_struct$_GlobalData_$19302_storage_t_uint256_t_uint256_t_bool__to_t_uint256_t_uint256_t_uint256_t_bool__fromStack_library(add(_383, 4) , expr_4719_slot, expr_4720, expr_4721, expr_4722)

                let _385 := delegatecall(gas(), expr_4718_address,  _383, sub(_384, _383), _383, 32)

                if iszero(_385) { revert_forward_1() }

                let expr_4723
                if _385 {

                    let _386 := 32

                    if gt(_386, returndatasize()) {
                        _386 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_383, _386)

                    // decode return parameters from external try-call into retVars
                    expr_4723 :=  abi_decode_tuple_t_uint256_fromMemory(_383, add(_383, _386))
                }
                /// @src 50:8270:8343  "return SupplyLogic.supply(globalData, pairId, supplyAmount, isQuoteAsset)"
                var_finalSuppliedAmount_4715 := expr_4723
                leave

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4726
            /// @src 50:8099:8350  "function supply(uint256 pairId, bool isQuoteAsset, uint256 supplyAmount)..."
            function fun_supply_4726(var_pairId_4706, var_isQuoteAsset_4708, var_supplyAmount_4710) -> var_finalSuppliedAmount_4715 {
                /// @src 50:8227:8254  "uint256 finalSuppliedAmount"
                let zero_t_uint256_376 := zero_value_for_split_t_uint256()
                var_finalSuppliedAmount_4715 := zero_t_uint256_376

                var_finalSuppliedAmount_4715 := modifier_nonReentrant_4713(var_finalSuppliedAmount_4715, var_pairId_4706, var_isQuoteAsset_4708, var_supplyAmount_4710)
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4320
            /// @src 50:2753:2905  "modifier onlyPoolOwner(uint256 pairId) {..."
            function modifier_onlyPoolOwner_4874(var_pairId_4866, var_trader_4868, var_enabled_4870) {

                /// @src 50:10783:10789  "pairId"
                let _387 := var_pairId_4866
                let expr_4873 := _387
                let _388 := expr_4873
                let var_pairId_4304 := _388

                /// @src 50:2806:2816  "globalData"
                let _389_slot := 0x34
                let expr_4306_slot := _389_slot
                /// @src 50:2806:2822  "globalData.pairs"
                let _390 := add(expr_4306_slot, 3)
                let _391_slot := _390
                let expr_4307_slot := _391_slot
                /// @src 50:2823:2829  "pairId"
                let _392 := var_pairId_4304
                let expr_4308 := _392
                /// @src 50:2806:2830  "globalData.pairs[pairId]"
                let _393 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4307_slot,expr_4308)
                let _394_slot := _393
                let expr_4309_slot := _394_slot
                /// @src 50:2806:2840  "globalData.pairs[pairId].poolOwner"
                let _395 := add(expr_4309_slot, 2)
                let _396 := read_from_storage_split_offset_0_t_address(_395)
                let expr_4310 := _396
                /// @src 50:2844:2854  "msg.sender"
                let expr_4312 := caller()
                /// @src 50:2806:2854  "globalData.pairs[pairId].poolOwner != msg.sender"
                let expr_4313 := iszero(eq(cleanup_t_address(expr_4310), cleanup_t_address(expr_4312)))
                /// @src 50:2802:2887  "if (globalData.pairs[pairId].poolOwner != msg.sender) revert CallerIsNotPoolCreator()"
                if expr_4313 {
                    /// @src 50:2863:2887  "CallerIsNotPoolCreator()"
                    {

                        let _398 := 0

                        mstore(_398, 0xb50aa2c000000000000000000000000000000000000000000000000000000000)
                        let _397 := abi_encode_tuple__to__fromStack(add(_398, 4) )
                        revert(_398, sub(_397, _398))
                    }/// @src 50:2802:2887  "if (globalData.pairs[pairId].poolOwner != msg.sender) revert CallerIsNotPoolCreator()"
                }
                /// @src 50:2897:2898  "_"
                fun_updateWhitelistAddress_4893_inner(var_pairId_4866, var_trader_4868, var_enabled_4870)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function update_storage_value_offset_0_t_bool_to_t_bool(slot, value_0) {
                let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
                sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_bool(convertedValue_0)))
            }

            /// @src 50:10682:10909  "function updateWhitelistAddress(uint256 pairId, address trader, bool enabled) external onlyPoolOwner(pairId) {..."
            function fun_updateWhitelistAddress_4893_inner(var_pairId_4866, var_trader_4868, var_enabled_4870) {

                /// @src 50:10809:10819  "globalData"
                let _399_slot := 0x34
                let expr_4877_slot := _399_slot
                /// @src 50:10809:10825  "globalData.pairs"
                let _400 := add(expr_4877_slot, 3)
                let _401_slot := _400
                let expr_4878_slot := _401_slot
                /// @src 50:10826:10832  "pairId"
                let _402 := var_pairId_4866
                let expr_4879 := _402
                /// @src 50:10809:10833  "globalData.pairs[pairId]"
                let _403 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4878_slot,expr_4879)
                let _404_slot := _403
                let expr_4880_slot := _404_slot
                /// @src 50:10809:10850  "globalData.pairs[pairId].whitelistEnabled"
                let _405 := add(expr_4880_slot, 50)
                let _406 := read_from_storage_split_offset_21_t_bool(_405)
                let expr_4881 := _406
                /// @src 50:10801:10851  "require(globalData.pairs[pairId].whitelistEnabled)"
                require_helper(expr_4881)
                /// @src 50:10895:10902  "enabled"
                let _407 := var_enabled_4870
                let expr_4889 := _407
                /// @src 50:10862:10876  "allowedTraders"
                let _408_slot := 0x3f
                let expr_4884_slot := _408_slot
                /// @src 50:10877:10883  "trader"
                let _409 := var_trader_4868
                let expr_4885 := _409
                /// @src 50:10862:10884  "allowedTraders[trader]"
                let _410 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_uint256_$_t_bool_$_$_of_t_address(expr_4884_slot,expr_4885)
                let _411_slot := _410
                let expr_4887_slot := _411_slot
                /// @src 50:10885:10891  "pairId"
                let _412 := var_pairId_4866
                let expr_4886 := _412
                /// @src 50:10862:10892  "allowedTraders[trader][pairId]"
                let _413 := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(expr_4887_slot,expr_4886)
                /// @src 50:10862:10902  "allowedTraders[trader][pairId] = enabled"
                update_storage_value_offset_0_t_bool_to_t_bool(_413, expr_4889)
                let expr_4890 := expr_4889

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4893
            /// @src 50:10682:10909  "function updateWhitelistAddress(uint256 pairId, address trader, bool enabled) external onlyPoolOwner(pairId) {..."
            function fun_updateWhitelistAddress_4893(var_pairId_4866, var_trader_4868, var_enabled_4870) {

                modifier_onlyPoolOwner_4874(var_pairId_4866, var_trader_4868, var_enabled_4870)
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4320
            /// @src 50:2753:2905  "modifier onlyPoolOwner(uint256 pairId) {..."
            function modifier_onlyPoolOwner_4526(var_pairId_4520, var_feeRatio_4522) {

                /// @src 50:5950:5956  "pairId"
                let _414 := var_pairId_4520
                let expr_4525 := _414
                let _415 := expr_4525
                let var_pairId_4304 := _415

                /// @src 50:2806:2816  "globalData"
                let _416_slot := 0x34
                let expr_4306_slot := _416_slot
                /// @src 50:2806:2822  "globalData.pairs"
                let _417 := add(expr_4306_slot, 3)
                let _418_slot := _417
                let expr_4307_slot := _418_slot
                /// @src 50:2823:2829  "pairId"
                let _419 := var_pairId_4304
                let expr_4308 := _419
                /// @src 50:2806:2830  "globalData.pairs[pairId]"
                let _420 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4307_slot,expr_4308)
                let _421_slot := _420
                let expr_4309_slot := _421_slot
                /// @src 50:2806:2840  "globalData.pairs[pairId].poolOwner"
                let _422 := add(expr_4309_slot, 2)
                let _423 := read_from_storage_split_offset_0_t_address(_422)
                let expr_4310 := _423
                /// @src 50:2844:2854  "msg.sender"
                let expr_4312 := caller()
                /// @src 50:2806:2854  "globalData.pairs[pairId].poolOwner != msg.sender"
                let expr_4313 := iszero(eq(cleanup_t_address(expr_4310), cleanup_t_address(expr_4312)))
                /// @src 50:2802:2887  "if (globalData.pairs[pairId].poolOwner != msg.sender) revert CallerIsNotPoolCreator()"
                if expr_4313 {
                    /// @src 50:2863:2887  "CallerIsNotPoolCreator()"
                    {

                        let _425 := 0

                        mstore(_425, 0xb50aa2c000000000000000000000000000000000000000000000000000000000)
                        let _424 := abi_encode_tuple__to__fromStack(add(_425, 4) )
                        revert(_425, sub(_424, _425))
                    }/// @src 50:2802:2887  "if (globalData.pairs[pairId].poolOwner != msg.sender) revert CallerIsNotPoolCreator()"
                }
                /// @src 50:2897:2898  "_"
                fun_updateFeeRatio_4539_inner(var_pairId_4520, var_feeRatio_4522)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function abi_encode_t_uint8_to_t_uint8_fromStack_library(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
            }

            function abi_encode_tuple_t_struct$_PairStatus_$6102_storage_t_uint8__to_t_uint256_t_uint8__fromStack_library(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_struct$_PairStatus_$6102_storage_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

                abi_encode_t_uint8_to_t_uint8_fromStack_library(value1,  add(headStart, 32))

            }

            /// @src 50:5871:6038  "function updateFeeRatio(uint256 pairId, uint8 feeRatio) external onlyPoolOwner(pairId) {..."
            function fun_updateFeeRatio_4539_inner(var_pairId_4520, var_feeRatio_4522) {

                /// @src 50:5968:5980  "AddPairLogic"
                let expr_4528_address := linkersymbol("src/libraries/logic/AddPairLogic.sol:AddPairLogic")
                /// @src 50:5968:5995  "AddPairLogic.updateFeeRatio"
                let expr_4530_address := convert_t_type$_t_contract$_AddPairLogic_$17784_$_to_t_address(expr_4528_address)
                let expr_4530_functionSelector := 0xda41f678
                /// @src 50:5996:6006  "globalData"
                let _426_slot := 0x34
                let expr_4531_slot := _426_slot
                /// @src 50:5996:6012  "globalData.pairs"
                let _427 := add(expr_4531_slot, 3)
                let _428_slot := _427
                let expr_4532_slot := _428_slot
                /// @src 50:6013:6019  "pairId"
                let _429 := var_pairId_4520
                let expr_4533 := _429
                /// @src 50:5996:6020  "globalData.pairs[pairId]"
                let _430 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_4532_slot,expr_4533)
                let _431_slot := _430
                let expr_4534_slot := _431_slot
                /// @src 50:6022:6030  "feeRatio"
                let _432 := var_feeRatio_4522
                let expr_4535 := _432
                /// @src 50:5968:6031  "AddPairLogic.updateFeeRatio(globalData.pairs[pairId], feeRatio)"

                if iszero(extcodesize(expr_4530_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _433 := allocate_unbounded()
                mstore(_433, shift_left_224(expr_4530_functionSelector))
                let _434 := abi_encode_tuple_t_struct$_PairStatus_$6102_storage_t_uint8__to_t_uint256_t_uint8__fromStack_library(add(_433, 4) , expr_4534_slot, expr_4535)

                let _435 := delegatecall(gas(), expr_4530_address,  _433, sub(_434, _433), _433, 0)

                if iszero(_435) { revert_forward_1() }

                if _435 {

                    let _436 := 0

                    if gt(_436, returndatasize()) {
                        _436 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_433, _436)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_433, add(_433, _436))
                }

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 4539
            /// @src 50:5871:6038  "function updateFeeRatio(uint256 pairId, uint8 feeRatio) external onlyPoolOwner(pairId) {..."
            function fun_updateFeeRatio_4539(var_pairId_4520, var_feeRatio_4522) {

                modifier_onlyPoolOwner_4526(var_pairId_4520, var_feeRatio_4522)
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function validator_revert_t_uint160(value) {
                if iszero(eq(value, cleanup_t_uint160(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint160_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint160(value)
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

            function abi_decode_t_uint8_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint8(value)
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

            /// @ast-id 16495
            /// @src 69:402:573  "function getSqrtPrice(address uniswapPoolAddress) internal view returns (uint160 sqrtPrice) {..."
            function fun_getSqrtPrice_16495(var_uniswapPoolAddress_16480) -> var_sqrtPrice_16483 {
                /// @src 69:475:492  "uint160 sqrtPrice"
                let zero_t_uint160_437 := zero_value_for_split_t_uint160()
                var_sqrtPrice_16483 := zero_t_uint160_437

                /// @src 69:539:557  "uniswapPoolAddress"
                let _438 := var_uniswapPoolAddress_16480
                let expr_16488 := _438
                /// @src 69:524:558  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16489_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16488)
                /// @src 69:524:564  "IUniswapV3Pool(uniswapPoolAddress).slot0"
                let expr_16490_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16489_address)
                let expr_16490_functionSelector := 0x3850c7bd
                /// @src 69:524:566  "IUniswapV3Pool(uniswapPoolAddress).slot0()"

                // storage for arguments and returned data
                let _439 := allocate_unbounded()
                mstore(_439, shift_left_224(expr_16490_functionSelector))
                let _440 := abi_encode_tuple__to__fromStack(add(_439, 4) )

                let _441 := staticcall(gas(), expr_16490_address,  _439, sub(_440, _439), _439, 224)

                if iszero(_441) { revert_forward_1() }

                let expr_16491_component_1, expr_16491_component_2, expr_16491_component_3, expr_16491_component_4, expr_16491_component_5, expr_16491_component_6, expr_16491_component_7
                if _441 {

                    let _442 := 224

                    if gt(_442, returndatasize()) {
                        _442 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_439, _442)

                    // decode return parameters from external try-call into retVars
                    expr_16491_component_1, expr_16491_component_2, expr_16491_component_3, expr_16491_component_4, expr_16491_component_5, expr_16491_component_6, expr_16491_component_7 :=  abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(_439, add(_439, _442))
                }
                /// @src 69:504:566  "(sqrtPrice,,,,,,) = IUniswapV3Pool(uniswapPoolAddress).slot0()"
                var_sqrtPrice_16483 := expr_16491_component_1

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

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
                let _446 := convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(expr_30296)

                ret := _446
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
                let _447 := convert_t_rational_96_by_1_to_t_uint8(expr_30293)

                ret := _447
            }

            function shift_left_dynamic(bits, value) -> newValue {
                newValue :=

                shl(bits, value)

            }

            function shift_left_t_uint256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint256(shift_left_dynamic(bits, cleanup_t_uint256(value)))
            }

            function convert_t_uint160_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint160(value)))
            }

            function panic_error_0x12() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x12)
                revert(0, 0x24)
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
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
                let zero_t_uint160_443 := zero_value_for_split_t_uint160()
                var__16522 := zero_t_uint160_443

                /// @src 69:1016:1027  "isQuoteZero"
                let _444 := var_isQuoteZero_16519
                let expr_16524 := _444
                /// @src 69:1012:1174  "if (isQuoteZero) {..."
                switch expr_16524
                case 0 {
                    /// @src 69:1151:1163  "sqrtPriceX96"
                    let _445 := var_sqrtPriceX96_16517
                    let expr_16538 := _445
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
                    let _448 := var_sqrtPriceX96_16517
                    let expr_16533 := _448
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
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(value) -> converted {
                converted := value
            }

            /// @ast-id 5094
            /// @src 50:13464:13780  "function _getAssetStatusPool(uint256 pairId, bool isQuoteToken)..."
            function fun__getAssetStatusPool_5094(var_pairId_5069, var_isQuoteToken_5071) -> var__5075_slot {

                /// @src 50:13623:13635  "isQuoteToken"
                let _449 := var_isQuoteToken_5071
                let expr_5077 := _449
                /// @src 50:13619:13774  "if (isQuoteToken) {..."
                switch expr_5077
                case 0 {
                    /// @src 50:13730:13740  "globalData"
                    let _450_slot := 0x34
                    let expr_5085_slot := _450_slot
                    /// @src 50:13730:13746  "globalData.pairs"
                    let _451 := add(expr_5085_slot, 3)
                    let _452_slot := _451
                    let expr_5086_slot := _452_slot
                    /// @src 50:13747:13753  "pairId"
                    let _453 := var_pairId_5069
                    let expr_5087 := _453
                    /// @src 50:13730:13754  "globalData.pairs[pairId]"
                    let _454 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_5086_slot,expr_5087)
                    let _455_slot := _454
                    let expr_5088_slot := _455_slot
                    /// @src 50:13730:13763  "globalData.pairs[pairId].basePool"
                    let _456 := add(expr_5088_slot, 17)
                    let _457_slot := _456
                    let expr_5089_slot := _457_slot
                    /// @src 50:13723:13763  "return globalData.pairs[pairId].basePool"
                    var__5075_slot := convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(expr_5089_slot)
                    leave
                    /// @src 50:13619:13774  "if (isQuoteToken) {..."
                }
                default {
                    /// @src 50:13658:13668  "globalData"
                    let _458_slot := 0x34
                    let expr_5078_slot := _458_slot
                    /// @src 50:13658:13674  "globalData.pairs"
                    let _459 := add(expr_5078_slot, 3)
                    let _460_slot := _459
                    let expr_5079_slot := _460_slot
                    /// @src 50:13675:13681  "pairId"
                    let _461 := var_pairId_5069
                    let expr_5080 := _461
                    /// @src 50:13658:13682  "globalData.pairs[pairId]"
                    let _462 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_5079_slot,expr_5080)
                    let _463_slot := _462
                    let expr_5081_slot := _463_slot
                    /// @src 50:13658:13692  "globalData.pairs[pairId].quotePool"
                    let _464 := add(expr_5081_slot, 3)
                    let _465_slot := _464
                    let expr_5082_slot := _465_slot
                    /// @src 50:13651:13692  "return globalData.pairs[pairId].quotePool"
                    var__5075_slot := convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(expr_5082_slot)
                    leave
                    /// @src 50:13619:13774  "if (isQuoteToken) {..."
                }

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

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
                let zero_t_bool_466 := zero_value_for_split_t_bool()
                var_success_13360 := zero_t_bool_466
                /// @src 14:3294:4671  "assembly {..."
                {
                    let usr$freeMemoryPointer := mload(0x40)
                    mstore(usr$freeMemoryPointer, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
                    mstore(add(usr$freeMemoryPointer, 4), and(var_to_13354, 0xffffffffffffffffffffffffffffffffffffffff))
                    mstore(add(usr$freeMemoryPointer, 36), var_amount_13356)
                    var_success_13360 := and(or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())), call(gas(), var_token_13352_address, 0, usr$freeMemoryPointer, 68, 0, 32))
                }
                /// @src 14:4689:4696  "success"
                let _467 := var_success_13360
                let expr_13364 := _467
                /// @src 14:4681:4716  "require(success, \"TRANSFER_FAILED\")"
                require_helper_t_stringliteral_8bf8f0d780f13740660fe63233b17f96cb1813889e7dce4121e55b817b367b72(expr_13364)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            /// @src 6:1815:1852  "uint256 private constant _ENTERED = 2"
            function constant__ENTERED_12845() -> ret {
                /// @src 6:1851:1852  "2"
                let expr_12844 := 0x02
                let _469 := convert_t_rational_2_by_1_to_t_uint256(expr_12844)

                ret := _469
            }

            function store_literal_in_memory_ebf73bba305590e4764d5cb53b69bffd6d4d092d1a67551cb346f8cfcdab8619(memPtr) {

                mstore(add(memPtr, 0), "ReentrancyGuard: reentrant call")

            }

            function abi_encode_t_stringliteral_ebf73bba305590e4764d5cb53b69bffd6d4d092d1a67551cb346f8cfcdab8619_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 31)
                store_literal_in_memory_ebf73bba305590e4764d5cb53b69bffd6d4d092d1a67551cb346f8cfcdab8619(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_ebf73bba305590e4764d5cb53b69bffd6d4d092d1a67551cb346f8cfcdab8619__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_ebf73bba305590e4764d5cb53b69bffd6d4d092d1a67551cb346f8cfcdab8619_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_ebf73bba305590e4764d5cb53b69bffd6d4d092d1a67551cb346f8cfcdab8619(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_ebf73bba305590e4764d5cb53b69bffd6d4d092d1a67551cb346f8cfcdab8619__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 12892
            /// @src 6:2601:2888  "function _nonReentrantBefore() private {..."
            function fun__nonReentrantBefore_12892() {

                /// @src 6:2733:2740  "_status"
                let _468 := read_from_storage_split_offset_0_t_uint256(0x01)
                let expr_12881 := _468
                /// @src 6:2744:2752  "_ENTERED"
                let expr_12882 := constant__ENTERED_12845()
                /// @src 6:2733:2752  "_status != _ENTERED"
                let expr_12883 := iszero(eq(cleanup_t_uint256(expr_12881), cleanup_t_uint256(expr_12882)))
                /// @src 6:2725:2788  "require(_status != _ENTERED, \"ReentrancyGuard: reentrant call\")"
                require_helper_t_stringliteral_ebf73bba305590e4764d5cb53b69bffd6d4d092d1a67551cb346f8cfcdab8619(expr_12883)
                /// @src 6:2873:2881  "_ENTERED"
                let expr_12888 := constant__ENTERED_12845()
                /// @src 6:2863:2881  "_status = _ENTERED"
                update_storage_value_offset_0_t_uint256_to_t_uint256(0x01, expr_12888)
                let expr_12889 := expr_12888

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            /// @src 6:1768:1809  "uint256 private constant _NOT_ENTERED = 1"
            function constant__NOT_ENTERED_12842() -> ret {
                /// @src 6:1808:1809  "1"
                let expr_12841 := 0x01
                let _470 := convert_t_rational_1_by_1_to_t_uint256(expr_12841)

                ret := _470
            }

            /// @ast-id 12900
            /// @src 6:2894:3103  "function _nonReentrantAfter() private {..."
            function fun__nonReentrantAfter_12900() {

                /// @src 6:3084:3096  "_NOT_ENTERED"
                let expr_12896 := constant__NOT_ENTERED_12842()
                /// @src 6:3074:3096  "_status = _NOT_ENTERED"
                update_storage_value_offset_0_t_uint256_to_t_uint256(0x01, expr_12896)
                let expr_12897 := expr_12896

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 19348
            /// @src 81:1104:1303  "function validate(GlobalDataLibrary.GlobalData storage globalData, uint256 pairId) internal view {..."
            function fun_validate_19348(var_globalData_19328_slot, var_pairId_19330) {

                /// @src 81:1215:1221  "pairId"
                let _471 := var_pairId_19330
                let expr_19333 := _471
                /// @src 81:1225:1226  "0"
                let expr_19334 := 0x00
                /// @src 81:1215:1226  "pairId <= 0"
                let expr_19335 := iszero(gt(cleanup_t_uint256(expr_19333), convert_t_rational_0_by_1_to_t_uint256(expr_19334)))
                /// @src 81:1215:1261  "pairId <= 0 || globalData.pairsCount <= pairId"
                let expr_19340 := expr_19335
                if iszero(expr_19340) {
                    /// @src 81:1230:1240  "globalData"
                    let _472_slot := var_globalData_19328_slot
                    let expr_19336_slot := _472_slot
                    /// @src 81:1230:1251  "globalData.pairsCount"
                    let _473 := add(expr_19336_slot, 0)
                    let _474 := read_from_storage_split_offset_0_t_uint256(_473)
                    let expr_19337 := _474
                    /// @src 81:1255:1261  "pairId"
                    let _475 := var_pairId_19330
                    let expr_19338 := _475
                    /// @src 81:1230:1261  "globalData.pairsCount <= pairId"
                    let expr_19339 := iszero(gt(cleanup_t_uint256(expr_19337), cleanup_t_uint256(expr_19338)))
                    /// @src 81:1215:1261  "pairId <= 0 || globalData.pairsCount <= pairId"
                    expr_19340 := expr_19339
                }
                /// @src 81:1211:1296  "if (pairId <= 0 || globalData.pairsCount <= pairId) revert IPredyPool.InvalidPairId()"
                if expr_19340 {
                    /// @src 81:1270:1296  "IPredyPool.InvalidPairId()"
                    {

                        let _477 := 0

                        mstore(_477, 0xa8c399e500000000000000000000000000000000000000000000000000000000)
                        let _476 := abi_encode_tuple__to__fromStack(add(_477, 4) )
                        revert(_477, sub(_476, _477))
                    }/// @src 81:1211:1296  "if (pairId <= 0 || globalData.pairsCount <= pairId) revert IPredyPool.InvalidPairId()"
                }

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function read_from_memoryt_address(ptr) -> returnValue {

                let value := cleanup_t_address(mload(ptr))

                returnValue :=

                value

            }

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            function abi_encode_tuple_t_uint256_t_address_t_address_t_uint256__to_t_uint256_t_address_t_address_t_uint256__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_address_to_t_address_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

            }

            /// @ast-id 17132
            /// @src 70:728:2077  "function createOrGetVault(GlobalDataLibrary.GlobalData storage globalData, uint256 vaultId, uint256 pairId)..."
            function fun_createOrGetVault_17132(var_globalData_16994_slot, var_vaultId_16996, var_pairId_16998) -> var__17001 {
                /// @src 70:870:877  "uint256"
                let zero_t_uint256_478 := zero_value_for_split_t_uint256()
                var__17001 := zero_t_uint256_478

                /// @src 70:912:922  "globalData"
                let _479_slot := var_globalData_16994_slot
                let expr_17005_slot := _479_slot
                /// @src 70:912:928  "globalData.pairs"
                let _480 := add(expr_17005_slot, 3)
                let _481_slot := _480
                let expr_17006_slot := _481_slot
                /// @src 70:929:935  "pairId"
                let _482 := var_pairId_16998
                let expr_17007 := _482
                /// @src 70:912:936  "globalData.pairs[pairId]"
                let _483 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_17006_slot,expr_17007)
                let _484_slot := _483
                let expr_17008_slot := _484_slot
                /// @src 70:912:945  "globalData.pairs[pairId].marginId"
                let _485 := add(expr_17008_slot, 1)
                let _486 := read_from_storage_split_offset_0_t_address(_485)
                let expr_17009 := _486
                /// @src 70:893:945  "address marginId = globalData.pairs[pairId].marginId"
                let var_marginId_17004 := expr_17009
                /// @src 70:960:967  "vaultId"
                let _487 := var_vaultId_16996
                let expr_17011 := _487
                /// @src 70:971:972  "0"
                let expr_17012 := 0x00
                /// @src 70:960:972  "vaultId == 0"
                let expr_17013 := eq(cleanup_t_uint256(expr_17011), convert_t_rational_0_by_1_to_t_uint256(expr_17012))
                /// @src 70:956:2071  "if (vaultId == 0) {..."
                switch expr_17013
                case 0 {
                    /// @src 70:1554:1564  "globalData"
                    let _488_slot := var_globalData_16994_slot
                    let expr_17086_slot := _488_slot
                    /// @src 70:1554:1571  "globalData.vaults"
                    let _489 := add(expr_17086_slot, 5)
                    let _490_slot := _489
                    let expr_17087_slot := _490_slot
                    /// @src 70:1572:1579  "vaultId"
                    let _491 := var_vaultId_16996
                    let expr_17088 := _491
                    /// @src 70:1554:1580  "globalData.vaults[vaultId]"
                    let _492 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Vault_$6116_storage_$_of_t_uint256(expr_17087_slot,expr_17088)
                    let _493_slot := _492
                    let expr_17089_slot := _493_slot
                    /// @src 70:1524:1580  "DataType.Vault memory vault = globalData.vaults[vaultId]"
                    let var_vault_17085_mpos := convert_t_struct$_Vault_$6116_storage_to_t_struct$_Vault_$6116_memory_ptr(expr_17089_slot)
                    /// @src 70:1667:1672  "vault"
                    let _494_mpos := var_vault_17085_mpos
                    let expr_17091_mpos := _494_mpos
                    /// @src 70:1667:1678  "vault.owner"
                    let _495 := add(expr_17091_mpos, 64)
                    let _496 := read_from_memoryt_address(_495)
                    let expr_17092 := _496
                    /// @src 70:1682:1692  "msg.sender"
                    let expr_17094 := caller()
                    /// @src 70:1667:1692  "vault.owner != msg.sender"
                    let expr_17095 := iszero(eq(cleanup_t_address(expr_17092), cleanup_t_address(expr_17094)))
                    /// @src 70:1663:1768  "if (vault.owner != msg.sender) {..."
                    if expr_17095 {
                        /// @src 70:1719:1753  "IPredyPool.CallerIsNotVaultOwner()"
                        {

                            let _498 := 0

                            mstore(_498, 0x1b65793700000000000000000000000000000000000000000000000000000000)
                            let _497 := abi_encode_tuple__to__fromStack(add(_498, 4) )
                            revert(_498, sub(_497, _498))
                        }/// @src 70:1663:1768  "if (vault.owner != msg.sender) {..."
                    }
                    /// @src 70:1786:1791  "vault"
                    let _499_mpos := var_vault_17085_mpos
                    let expr_17103_mpos := _499_mpos
                    /// @src 70:1786:1800  "vault.marginId"
                    let _500 := add(expr_17103_mpos, 32)
                    let _501 := read_from_memoryt_address(_500)
                    let expr_17104 := _501
                    /// @src 70:1804:1812  "marginId"
                    let _502 := var_marginId_17004
                    let expr_17105 := _502
                    /// @src 70:1786:1812  "vault.marginId != marginId"
                    let expr_17106 := iszero(eq(cleanup_t_address(expr_17104), cleanup_t_address(expr_17105)))
                    /// @src 70:1782:1897  "if (vault.marginId != marginId) {..."
                    if expr_17106 {
                        /// @src 70:1839:1882  "IPredyPool.VaultAlreadyHasAnotherMarginId()"
                        {

                            let _504 := 0

                            mstore(_504, 0x2e26cc4c00000000000000000000000000000000000000000000000000000000)
                            let _503 := abi_encode_tuple__to__fromStack(add(_504, 4) )
                            revert(_504, sub(_503, _504))
                        }/// @src 70:1782:1897  "if (vault.marginId != marginId) {..."
                    }
                    /// @src 70:1915:1920  "vault"
                    let _505_mpos := var_vault_17085_mpos
                    let expr_17114_mpos := _505_mpos
                    /// @src 70:1915:1933  "vault.openPosition"
                    let _506 := add(expr_17114_mpos, 160)
                    let _507_mpos := mload(_506)
                    let expr_17115_mpos := _507_mpos
                    /// @src 70:1915:1940  "vault.openPosition.pairId"
                    let _508 := add(expr_17115_mpos, 0)
                    let _509 := read_from_memoryt_uint256(_508)
                    let expr_17116 := _509
                    /// @src 70:1944:1950  "pairId"
                    let _510 := var_pairId_16998
                    let expr_17117 := _510
                    /// @src 70:1915:1950  "vault.openPosition.pairId != pairId"
                    let expr_17118 := iszero(eq(cleanup_t_uint256(expr_17116), cleanup_t_uint256(expr_17117)))
                    /// @src 70:1911:2031  "if (vault.openPosition.pairId != pairId) {..."
                    if expr_17118 {
                        /// @src 70:1977:2016  "IPredyPool.VaultAlreadyHasAnotherPair()"
                        {

                            let _512 := 0

                            mstore(_512, 0x49a0472a00000000000000000000000000000000000000000000000000000000)
                            let _511 := abi_encode_tuple__to__fromStack(add(_512, 4) )
                            revert(_512, sub(_511, _512))
                        }/// @src 70:1911:2031  "if (vault.openPosition.pairId != pairId) {..."
                    }
                    /// @src 70:2052:2057  "vault"
                    let _513_mpos := var_vault_17085_mpos
                    let expr_17126_mpos := _513_mpos
                    /// @src 70:2052:2060  "vault.id"
                    let _514 := add(expr_17126_mpos, 0)
                    let _515 := read_from_memoryt_uint256(_514)
                    let expr_17127 := _515
                    /// @src 70:2045:2060  "return vault.id"
                    var__17001 := expr_17127
                    leave
                    /// @src 70:956:2071  "if (vaultId == 0) {..."
                }
                default {
                    /// @src 70:1011:1021  "globalData"
                    let _516_slot := var_globalData_16994_slot
                    let expr_17016_slot := _516_slot
                    /// @src 70:1011:1032  "globalData.vaultCount"
                    let _517 := add(expr_17016_slot, 1)
                    let _518 := read_from_storage_split_offset_0_t_uint256(_517)
                    let expr_17017 := _518
                    /// @src 70:988:1032  "uint256 finalVaultId = globalData.vaultCount"
                    let var_finalVaultId_17015 := expr_17017
                    /// @src 70:1116:1126  "globalData"
                    let _519_slot := var_globalData_16994_slot
                    let expr_17024_slot := _519_slot
                    /// @src 70:1116:1133  "globalData.vaults"
                    let _520 := add(expr_17024_slot, 5)
                    let _521_slot := _520
                    let expr_17025_slot := _521_slot
                    /// @src 70:1134:1146  "finalVaultId"
                    let _522 := var_finalVaultId_17015
                    let expr_17026 := _522
                    /// @src 70:1116:1147  "globalData.vaults[finalVaultId]"
                    let _523 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Vault_$6116_storage_$_of_t_uint256(expr_17025_slot,expr_17026)
                    let _524_slot := _523
                    let expr_17027_slot := _524_slot
                    /// @src 70:1085:1147  "DataType.Vault storage vault = globalData.vaults[finalVaultId]"
                    let var_vault_17023_slot := convert_t_struct$_Vault_$6116_storage_to_t_struct$_Vault_$6116_storage_ptr(expr_17027_slot)
                    /// @src 70:1173:1185  "finalVaultId"
                    let _525 := var_finalVaultId_17015
                    let expr_17032 := _525
                    /// @src 70:1162:1167  "vault"
                    let _526_slot := var_vault_17023_slot
                    let expr_17029_slot := _526_slot
                    /// @src 70:1162:1170  "vault.id"
                    let _527 := add(expr_17029_slot, 0)
                    /// @src 70:1162:1185  "vault.id = finalVaultId"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_527, expr_17032)
                    let expr_17033 := expr_17032
                    /// @src 70:1213:1223  "msg.sender"
                    let expr_17039 := caller()
                    /// @src 70:1199:1204  "vault"
                    let _528_slot := var_vault_17023_slot
                    let expr_17035_slot := _528_slot
                    /// @src 70:1199:1210  "vault.owner"
                    let _529 := add(expr_17035_slot, 2)
                    /// @src 70:1199:1223  "vault.owner = msg.sender"
                    update_storage_value_offset_0_t_address_to_t_address(_529, expr_17039)
                    let expr_17040 := expr_17039
                    /// @src 70:1255:1265  "msg.sender"
                    let expr_17046 := caller()
                    /// @src 70:1237:1242  "vault"
                    let _530_slot := var_vault_17023_slot
                    let expr_17042_slot := _530_slot
                    /// @src 70:1237:1252  "vault.recipient"
                    let _531 := add(expr_17042_slot, 3)
                    /// @src 70:1237:1265  "vault.recipient = msg.sender"
                    update_storage_value_offset_0_t_address_to_t_address(_531, expr_17046)
                    let expr_17047 := expr_17046
                    /// @src 70:1307:1313  "pairId"
                    let _532 := var_pairId_16998
                    let expr_17054 := _532
                    /// @src 70:1279:1284  "vault"
                    let _533_slot := var_vault_17023_slot
                    let expr_17049_slot := _533_slot
                    /// @src 70:1279:1297  "vault.openPosition"
                    let _534 := add(expr_17049_slot, 5)
                    let _535_slot := _534
                    let expr_17052_slot := _535_slot
                    /// @src 70:1279:1304  "vault.openPosition.pairId"
                    let _536 := add(expr_17052_slot, 0)
                    /// @src 70:1279:1313  "vault.openPosition.pairId = pairId"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_536, expr_17054)
                    let expr_17055 := expr_17054
                    /// @src 70:1344:1352  "marginId"
                    let _537 := var_marginId_17004
                    let expr_17060 := _537
                    /// @src 70:1327:1332  "vault"
                    let _538_slot := var_vault_17023_slot
                    let expr_17057_slot := _538_slot
                    /// @src 70:1327:1341  "vault.marginId"
                    let _539 := add(expr_17057_slot, 1)
                    /// @src 70:1327:1352  "vault.marginId = marginId"
                    update_storage_value_offset_0_t_address_to_t_address(_539, expr_17060)
                    let expr_17061 := expr_17060
                    /// @src 70:1367:1377  "globalData"
                    let _540_slot := var_globalData_16994_slot
                    let expr_17063_slot := _540_slot
                    /// @src 70:1367:1388  "globalData.vaultCount"
                    let _541 := add(expr_17063_slot, 1)
                    /// @src 70:1367:1390  "globalData.vaultCount++"
                    let _543 := read_from_storage_split_offset_0_t_uint256(_541)
                    let _542 := increment_t_uint256(_543)
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_541, _542)
                    let expr_17066 := _543
                    /// @src 70:1423:1428  "vault"
                    let _544_slot := var_vault_17023_slot
                    let expr_17069_slot := _544_slot
                    /// @src 70:1423:1431  "vault.id"
                    let _545 := add(expr_17069_slot, 0)
                    let _546 := read_from_storage_split_offset_0_t_uint256(_545)
                    let expr_17070 := _546
                    /// @src 70:1433:1438  "vault"
                    let _547_slot := var_vault_17023_slot
                    let expr_17071_slot := _547_slot
                    /// @src 70:1433:1444  "vault.owner"
                    let _548 := add(expr_17071_slot, 2)
                    let _549 := read_from_storage_split_offset_0_t_address(_548)
                    let expr_17072 := _549
                    /// @src 70:1446:1454  "marginId"
                    let _550 := var_marginId_17004
                    let expr_17073 := _550
                    /// @src 70:1456:1462  "pairId"
                    let _551 := var_pairId_16998
                    let expr_17074 := _551
                    /// @src 70:1410:1463  "VaultCreated(vault.id, vault.owner, marginId, pairId)"
                    let _552 := 0xe69753e50bf059b3600feb46679d77e5d58780bbf62f4d6ec6dcfac1bb93774e
                    {
                        let _553 := allocate_unbounded()
                        let _554 := abi_encode_tuple_t_uint256_t_address_t_address_t_uint256__to_t_uint256_t_address_t_address_t_uint256__fromStack(_553 , expr_17070, expr_17072, expr_17073, expr_17074)
                        log1(_553, sub(_554, _553) , _552)
                    }/// @src 70:1485:1490  "vault"
                    let _555_slot := var_vault_17023_slot
                    let expr_17077_slot := _555_slot
                    /// @src 70:1485:1493  "vault.id"
                    let _556 := add(expr_17077_slot, 0)
                    let _557 := read_from_storage_split_offset_0_t_uint256(_556)
                    let expr_17078 := _557
                    /// @src 70:1478:1493  "return vault.id"
                    var__17001 := expr_17078
                    leave
                    /// @src 70:956:2071  "if (vaultId == 0) {..."
                }

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function read_from_memoryt_bool(ptr) -> returnValue {

                let value := cleanup_t_bool(mload(ptr))

                returnValue :=

                value

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

            /// @ast-id 16180
            /// @src 63:4570:4996  "function getSqrtIndexPrice(DataType.PairStatus memory pairStatus) internal view returns (uint256 sqrtPriceX96) {..."
            function fun_getSqrtIndexPrice_16180(var_pairStatus_16145_mpos) -> var_sqrtPriceX96_16148 {
                /// @src 63:4659:4679  "uint256 sqrtPriceX96"
                let zero_t_uint256_558 := zero_value_for_split_t_uint256()
                var_sqrtPriceX96_16148 := zero_t_uint256_558

                /// @src 63:4695:4705  "pairStatus"
                let _559_mpos := var_pairStatus_16145_mpos
                let expr_16150_mpos := _559_mpos
                /// @src 63:4695:4715  "pairStatus.priceFeed"
                let _560 := add(expr_16150_mpos, 224)
                let _561 := read_from_memoryt_address(_560)
                let expr_16151 := _561
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
                    let _562_mpos := var_pairStatus_16145_mpos
                    let expr_16169_mpos := _562_mpos
                    /// @src 63:4902:4928  "pairStatus.sqrtAssetStatus"
                    let _563 := add(expr_16169_mpos, 192)
                    let _564_mpos := mload(_563)
                    let expr_16170_mpos := _564_mpos
                    /// @src 63:4902:4940  "pairStatus.sqrtAssetStatus.uniswapPool"
                    let _565 := add(expr_16170_mpos, 0)
                    let _566 := read_from_memoryt_address(_565)
                    let expr_16171 := _566
                    /// @src 63:4880:4941  "UniHelper.getSqrtTWAP(pairStatus.sqrtAssetStatus.uniswapPool)"
                    let expr_16172 := fun_getSqrtTWAP_16514(expr_16171)
                    /// @src 63:4943:4953  "pairStatus"
                    let _567_mpos := var_pairStatus_16145_mpos
                    let expr_16173_mpos := _567_mpos
                    /// @src 63:4943:4965  "pairStatus.isQuoteZero"
                    let _568 := add(expr_16173_mpos, 256)
                    let _569 := read_from_memoryt_bool(_568)
                    let expr_16174 := _569
                    /// @src 63:4836:4979  "UniHelper.convertSqrtPrice(..."
                    let expr_16175 := fun_convertSqrtPrice_16543(expr_16172, expr_16174)
                    /// @src 63:4829:4979  "return UniHelper.convertSqrtPrice(..."
                    var_sqrtPriceX96_16148 := convert_t_uint160_to_t_uint256(expr_16175)
                    leave
                    /// @src 63:4691:4990  "if (pairStatus.priceFeed != address(0)) {..."
                }
                default {
                    /// @src 63:4762:4772  "pairStatus"
                    let _570_mpos := var_pairStatus_16145_mpos
                    let expr_16158_mpos := _570_mpos
                    /// @src 63:4762:4782  "pairStatus.priceFeed"
                    let _571 := add(expr_16158_mpos, 224)
                    let _572 := read_from_memoryt_address(_571)
                    let expr_16159 := _572
                    /// @src 63:4752:4783  "PriceFeed(pairStatus.priceFeed)"
                    let expr_16160_address := convert_t_address_to_t_contract$_PriceFeed_$32754(expr_16159)
                    /// @src 63:4752:4796  "PriceFeed(pairStatus.priceFeed).getSqrtPrice"
                    let expr_16161_address := convert_t_contract$_PriceFeed_$32754_to_t_address(expr_16160_address)
                    let expr_16161_functionSelector := 0x86e6862d
                    /// @src 63:4752:4798  "PriceFeed(pairStatus.priceFeed).getSqrtPrice()"

                    // storage for arguments and returned data
                    let _573 := allocate_unbounded()
                    mstore(_573, shift_left_224(expr_16161_functionSelector))
                    let _574 := abi_encode_tuple__to__fromStack(add(_573, 4) )

                    let _575 := staticcall(gas(), expr_16161_address,  _573, sub(_574, _573), _573, 32)

                    if iszero(_575) { revert_forward_1() }

                    let expr_16162
                    if _575 {

                        let _576 := 32

                        if gt(_576, returndatasize()) {
                            _576 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_573, _576)

                        // decode return parameters from external try-call into retVars
                        expr_16162 :=  abi_decode_tuple_t_uint256_fromMemory(_573, add(_573, _576))
                    }
                    /// @src 63:4745:4798  "return PriceFeed(pairStatus.priceFeed).getSqrtPrice()"
                    var_sqrtPriceX96_16148 := expr_16162
                    leave
                    /// @src 63:4691:4990  "if (pairStatus.priceFeed != address(0)) {..."
                }

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 26669
            /// @src 7:1423:1743  "function isContract(address account) internal view returns (bool) {..."
            function fun_isContract_26669(var_account_26657) -> var__26660 {
                /// @src 7:1483:1487  "bool"
                let zero_t_bool_577 := zero_value_for_split_t_bool()
                var__26660 := zero_t_bool_577

                /// @src 7:1713:1720  "account"
                let _578 := var_account_26657
                let expr_26662 := _578
                /// @src 7:1713:1732  "account.code.length"
                let expr_26664 := extcodesize(expr_26662)
                /// @src 7:1735:1736  "0"
                let expr_26665 := 0x00
                /// @src 7:1713:1736  "account.code.length > 0"
                let expr_26666 := gt(cleanup_t_uint256(expr_26664), convert_t_rational_0_by_1_to_t_uint256(expr_26665))
                /// @src 7:1706:1736  "return account.code.length > 0"
                var__26660 := expr_26666
                leave

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function store_literal_in_memory_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(memPtr) {

                mstore(add(memPtr, 0), "Initializable: contract is not i")

                mstore(add(memPtr, 32), "nitializing")

            }

            function abi_encode_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 43)
                store_literal_in_memory_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 12777
            /// @src 5:5328:5453  "modifier onlyInitializing() {..."
            function modifier_onlyInitializing_12850() {

                /// @src 5:5374:5387  "_initializing"
                let _579 := read_from_storage_split_offset_1_t_bool(0x00)
                let expr_12771 := _579
                /// @src 5:5366:5435  "require(_initializing, \"Initializable: contract is not initializing\")"
                require_helper_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(expr_12771)
                /// @src 5:5445:5446  "_"
                fun___ReentrancyGuard_init_12856_inner()

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @src 6:1889:2000  "function __ReentrancyGuard_init() internal onlyInitializing {..."
            function fun___ReentrancyGuard_init_12856_inner() {

                fun___ReentrancyGuard_init_unchained_12866()

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 12856
            /// @src 6:1889:2000  "function __ReentrancyGuard_init() internal onlyInitializing {..."
            function fun___ReentrancyGuard_init_12856() {

                modifier_onlyInitializing_12850()
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            /// @ast-id 19555
            /// @src 81:2718:3185  "function take(GlobalDataLibrary.GlobalData storage globalData, bool isQuoteAsset, address to, uint256 amount)..."
            function fun_take_19555(var_globalData_19506_slot, var_isQuoteAsset_19508, var_to_19510, var_amount_19512) {

                /// @src 81:2899:2909  "globalData"
                let _580_slot := var_globalData_19506_slot
                let expr_19520_slot := _580_slot
                /// @src 81:2899:2915  "globalData.pairs"
                let _581 := add(expr_19520_slot, 3)
                let _582_slot := _581
                let expr_19521_slot := _582_slot
                /// @src 81:2916:2926  "globalData"
                let _583_slot := var_globalData_19506_slot
                let expr_19522_slot := _583_slot
                /// @src 81:2916:2935  "globalData.lockData"
                let _584 := add(expr_19522_slot, 6)
                let _585_slot := _584
                let expr_19523_slot := _585_slot
                /// @src 81:2916:2942  "globalData.lockData.pairId"
                let _586 := add(expr_19523_slot, 3)
                let _587 := read_from_storage_split_offset_0_t_uint256(_586)
                let expr_19524 := _587
                /// @src 81:2899:2943  "globalData.pairs[globalData.lockData.pairId]"
                let _588 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_19521_slot,expr_19524)
                let _589_slot := _588
                let expr_19525_slot := _589_slot
                /// @src 81:2859:2943  "DataType.PairStatus memory pairStatus = globalData.pairs[globalData.lockData.pairId]"
                let var_pairStatus_19519_mpos := convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_memory_ptr(expr_19525_slot)
                /// @src 81:2954:2970  "address currency"
                let var_currency_19528
                let zero_t_address_590 := zero_value_for_split_t_address()
                var_currency_19528 := zero_t_address_590
                /// @src 81:2985:2997  "isQuoteAsset"
                let _591 := var_isQuoteAsset_19508
                let expr_19530 := _591
                /// @src 81:2981:3128  "if (isQuoteAsset) {..."
                switch expr_19530
                case 0 {
                    /// @src 81:3092:3102  "pairStatus"
                    let _592_mpos := var_pairStatus_19519_mpos
                    let expr_19539_mpos := _592_mpos
                    /// @src 81:3092:3111  "pairStatus.basePool"
                    let _593 := add(expr_19539_mpos, 128)
                    let _594_mpos := mload(_593)
                    let expr_19540_mpos := _594_mpos
                    /// @src 81:3092:3117  "pairStatus.basePool.token"
                    let _595 := add(expr_19540_mpos, 0)
                    let _596 := read_from_memoryt_address(_595)
                    let expr_19541 := _596
                    /// @src 81:3081:3117  "currency = pairStatus.basePool.token"
                    var_currency_19528 := expr_19541
                    let expr_19542 := expr_19541
                    /// @src 81:2981:3128  "if (isQuoteAsset) {..."
                }
                default {
                    /// @src 81:3024:3034  "pairStatus"
                    let _597_mpos := var_pairStatus_19519_mpos
                    let expr_19532_mpos := _597_mpos
                    /// @src 81:3024:3044  "pairStatus.quotePool"
                    let _598 := add(expr_19532_mpos, 96)
                    let _599_mpos := mload(_598)
                    let expr_19533_mpos := _599_mpos
                    /// @src 81:3024:3050  "pairStatus.quotePool.token"
                    let _600 := add(expr_19533_mpos, 0)
                    let _601 := read_from_memoryt_address(_600)
                    let expr_19534 := _601
                    /// @src 81:3013:3050  "currency = pairStatus.quotePool.token"
                    var_currency_19528 := expr_19534
                    let expr_19535 := expr_19534
                    /// @src 81:2981:3128  "if (isQuoteAsset) {..."
                }
                /// @src 81:3144:3152  "currency"
                let _602 := var_currency_19528
                let expr_19547 := _602
                /// @src 81:3138:3153  "ERC20(currency)"
                let expr_19548_address := convert_t_address_to_t_contract$_ERC20_$13305(expr_19547)
                /// @src 81:3138:3166  "ERC20(currency).safeTransfer"
                let expr_19549_self_address := expr_19548_address
                /// @src 81:3167:3169  "to"
                let _603 := var_to_19510
                let expr_19550 := _603
                /// @src 81:3171:3177  "amount"
                let _604 := var_amount_19512
                let expr_19551 := _604
                fun_safeTransfer_13369(expr_19549_self_address, expr_19550, expr_19551)

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

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
                let _607 := convert_t_rational_1800_by_1_to_t_uint256(expr_16477)

                ret := _607
            }

            /// @ast-id 16514
            /// @src 69:651:848  "function getSqrtTWAP(address uniswapPoolAddress) internal view returns (uint160 sqrtTwapX96) {..."
            function fun_getSqrtTWAP_16514(var_uniswapPoolAddress_16498) -> var_sqrtTwapX96_16501 {
                /// @src 69:723:742  "uint160 sqrtTwapX96"
                let zero_t_uint160_605 := zero_value_for_split_t_uint160()
                var_sqrtTwapX96_16501 := zero_t_uint160_605

                /// @src 69:805:823  "uniswapPoolAddress"
                let _606 := var_uniswapPoolAddress_16498
                let expr_16507 := _606
                /// @src 69:790:824  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16508_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16507)
                /// @src 69:826:840  "_ORACLE_PERIOD"
                let expr_16509 := constant__ORACLE_PERIOD_16478()
                /// @src 69:771:841  "callUniswapObserve(IUniswapV3Pool(uniswapPoolAddress), _ORACLE_PERIOD)"
                let expr_16510_component_1, expr_16510_component_2 := fun_callUniswapObserve_16744(expr_16508_address, expr_16509)
                /// @src 69:754:841  "(sqrtTwapX96,) = callUniswapObserve(IUniswapV3Pool(uniswapPoolAddress), _ORACLE_PERIOD)"
                var_sqrtTwapX96_16501 := expr_16510_component_1

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 12777
            /// @src 5:5328:5453  "modifier onlyInitializing() {..."
            function modifier_onlyInitializing_12859() {

                /// @src 5:5374:5387  "_initializing"
                let _608 := read_from_storage_split_offset_1_t_bool(0x00)
                let expr_12771 := _608
                /// @src 5:5366:5435  "require(_initializing, \"Initializable: contract is not initializing\")"
                require_helper_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(expr_12771)
                /// @src 5:5445:5446  "_"
                fun___ReentrancyGuard_init_unchained_12866_inner()

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @src 6:2006:2115  "function __ReentrancyGuard_init_unchained() internal onlyInitializing {..."
            function fun___ReentrancyGuard_init_unchained_12866_inner() {

                /// @src 6:2096:2108  "_NOT_ENTERED"
                let expr_12862 := constant__NOT_ENTERED_12842()
                /// @src 6:2086:2108  "_status = _NOT_ENTERED"
                update_storage_value_offset_0_t_uint256_to_t_uint256(0x01, expr_12862)
                let expr_12863 := expr_12862

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            /// @ast-id 12866
            /// @src 6:2006:2115  "function __ReentrancyGuard_init_unchained() internal onlyInitializing {..."
            function fun___ReentrancyGuard_init_unchained_12866() {

                modifier_onlyInitializing_12859()
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

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

            function cleanup_t_uint32(value) -> cleaned {
                cleaned := and(value, 0xffffffff)
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

            function validator_revert_t_uint32(value) {
                if iszero(eq(value, cleanup_t_uint32(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint32_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint32(value)
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

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            function array_allocation_size_t_array$_t_int56_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

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

            function convert_t_uint256_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_uint256(value)))
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
                let zero_t_uint160_609 := zero_value_for_split_t_uint160()
                var__16551 := zero_t_uint160_609
                /// @src 69:1287:1294  "uint256"
                let zero_t_uint256_610 := zero_value_for_split_t_uint256()
                var__16553 := zero_t_uint256_610

                /// @src 69:1349:1350  "2"
                let expr_16563 := 0x02
                /// @src 69:1336:1351  "new uint32[](2)"
                let _611 := convert_t_rational_2_by_1_to_t_uint256(expr_16563)
                let expr_16564_mpos := allocate_and_zero_memory_array_t_array$_t_uint32_$dyn_memory_ptr(_611)
                /// @src 69:1306:1351  "uint32[] memory secondsAgos = new uint32[](2)"
                let var_secondsAgos_16559_mpos := expr_16564_mpos
                /// @src 69:1386:1389  "ago"
                let _612 := var_ago_16548
                let expr_16571 := _612
                /// @src 69:1379:1390  "uint32(ago)"
                let expr_16572 := convert_t_uint256_to_t_uint32(expr_16571)
                /// @src 69:1362:1373  "secondsAgos"
                let _613_mpos := var_secondsAgos_16559_mpos
                let expr_16566_mpos := _613_mpos
                /// @src 69:1374:1375  "0"
                let expr_16567 := 0x00
                /// @src 69:1362:1390  "secondsAgos[0] = uint32(ago)"
                let _614 := expr_16572
                write_to_memory_t_uint32(memory_array_index_access_t_array$_t_uint32_$dyn_memory_ptr(expr_16566_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_16567)), _614)
                let expr_16573 := expr_16572
                /// @src 69:1417:1418  "0"
                let expr_16578 := 0x00
                /// @src 69:1400:1418  "secondsAgos[1] = 0"
                let _615 := convert_t_rational_0_by_1_to_t_uint32(expr_16578)
                /// @src 69:1400:1411  "secondsAgos"
                let _616_mpos := var_secondsAgos_16559_mpos
                let expr_16575_mpos := _616_mpos
                /// @src 69:1412:1413  "1"
                let expr_16576 := 0x01
                /// @src 69:1400:1418  "secondsAgos[1] = 0"
                let _617 := _615
                write_to_memory_t_uint32(memory_array_index_access_t_array$_t_uint32_$dyn_memory_ptr(expr_16575_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_16576)), _617)
                let expr_16579 := _615
                /// @src 69:1485:1496  "uniswapPool"
                let _618_address := var_uniswapPool_16546_address
                let expr_16587_address := _618_address
                /// @src 69:1477:1497  "address(uniswapPool)"
                let expr_16588 := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16587_address)
                /// @src 69:1477:1508  "address(uniswapPool).staticcall"
                let expr_16589_address := expr_16588
                /// @src 69:1532:1569  "IUniswapV3PoolOracle.observe.selector"
                let expr_16594 := 0x883bdbfd00000000000000000000000000000000000000000000000000000000
                /// @src 69:1571:1582  "secondsAgos"
                let _619_mpos := var_secondsAgos_16559_mpos
                let expr_16595_mpos := _619_mpos
                /// @src 69:1509:1583  "abi.encodeWithSelector(IUniswapV3PoolOracle.observe.selector, secondsAgos)"

                let expr_16596_mpos := allocate_unbounded()
                let _620 := add(expr_16596_mpos, 0x20)

                mstore(_620, expr_16594)
                _620 := add(_620, 4)

                let _621 := abi_encode_tuple_t_array$_t_uint32_$dyn_memory_ptr__to_t_array$_t_uint32_$dyn_memory_ptr__fromStack(_620, expr_16595_mpos)
                mstore(expr_16596_mpos, sub(_621, add(expr_16596_mpos, 0x20)))
                finalize_allocation(expr_16596_mpos, sub(_621, expr_16596_mpos))
                /// @src 69:1477:1584  "address(uniswapPool).staticcall(abi.encodeWithSelector(IUniswapV3PoolOracle.observe.selector, secondsAgos))"

                let _622 := add(expr_16596_mpos, 0x20)
                let _623 := mload(expr_16596_mpos)

                let expr_16597_component_1 := staticcall(gas(), expr_16589_address,  _622, _623, 0, 0)

                let expr_16597_component_2_mpos := extract_returndata()
                /// @src 69:1429:1584  "(bool success, bytes memory data) =..."
                let var_success_16582 := expr_16597_component_1
                let var_data_16584_mpos := expr_16597_component_2_mpos
                /// @src 69:1600:1607  "success"
                let _624 := var_success_16582
                let expr_16599 := _624
                /// @src 69:1599:1607  "!success"
                let expr_16600 := cleanup_t_bool(iszero(expr_16599))
                /// @src 69:1595:2423  "if (!success) {..."
                if expr_16600 {
                    /// @src 69:1637:1641  "data"
                    let _625_mpos := var_data_16584_mpos
                    let expr_16602_mpos := _625_mpos
                    /// @src 69:1627:1642  "keccak256(data)"
                    let expr_16603 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_16602_mpos), array_length_t_bytes_memory_ptr(expr_16602_mpos))
                    /// @src 69:1656:1703  "abi.encodeWithSignature(\"Error(string)\", \"OLD\")"

                    let expr_16609_mpos := allocate_unbounded()
                    let _626 := add(expr_16609_mpos, 0x20)

                    mstore(_626, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    _626 := add(_626, 4)

                    let _627 := abi_encode_tuple_t_stringliteral_d30c0d219016dd7e5cf2b2c30c4d7c091820fc329f335b57cab26b9ff3384a9e__to_t_string_memory_ptr__fromStack(_626)
                    mstore(expr_16609_mpos, sub(_627, add(expr_16609_mpos, 0x20)))
                    finalize_allocation(expr_16609_mpos, sub(_627, expr_16609_mpos))
                    /// @src 69:1646:1704  "keccak256(abi.encodeWithSignature(\"Error(string)\", \"OLD\"))"
                    let expr_16610 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_16609_mpos), array_length_t_bytes_memory_ptr(expr_16609_mpos))
                    /// @src 69:1627:1704  "keccak256(data) != keccak256(abi.encodeWithSignature(\"Error(string)\", \"OLD\"))"
                    let expr_16611 := iszero(eq(cleanup_t_bytes32(expr_16603), cleanup_t_bytes32(expr_16610)))
                    /// @src 69:1623:1756  "if (keccak256(data) != keccak256(abi.encodeWithSignature(\"Error(string)\", \"OLD\"))) {..."
                    if expr_16611 {
                        /// @src 69:1736:1740  "data"
                        let _628_mpos := var_data_16584_mpos
                        let expr_16613_mpos := _628_mpos
                        fun_revertBytes_16761(expr_16613_mpos)
                        /// @src 69:1623:1756  "if (keccak256(data) != keccak256(abi.encodeWithSignature(\"Error(string)\", \"OLD\"))) {..."
                    }
                    /// @src 69:1813:1824  "uniswapPool"
                    let _629_address := var_uniswapPool_16546_address
                    let expr_16622_address := _629_address
                    /// @src 69:1813:1830  "uniswapPool.slot0"
                    let expr_16623_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16622_address)
                    let expr_16623_functionSelector := 0x3850c7bd
                    /// @src 69:1813:1832  "uniswapPool.slot0()"

                    // storage for arguments and returned data
                    let _630 := allocate_unbounded()
                    mstore(_630, shift_left_224(expr_16623_functionSelector))
                    let _631 := abi_encode_tuple__to__fromStack(add(_630, 4) )

                    let _632 := staticcall(gas(), expr_16623_address,  _630, sub(_631, _630), _630, 224)

                    if iszero(_632) { revert_forward_1() }

                    let expr_16624_component_1, expr_16624_component_2, expr_16624_component_3, expr_16624_component_4, expr_16624_component_5, expr_16624_component_6, expr_16624_component_7
                    if _632 {

                        let _633 := 224

                        if gt(_633, returndatasize()) {
                            _633 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_630, _633)

                        // decode return parameters from external try-call into retVars
                        expr_16624_component_1, expr_16624_component_2, expr_16624_component_3, expr_16624_component_4, expr_16624_component_5, expr_16624_component_6, expr_16624_component_7 :=  abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(_630, add(_630, _633))
                    }
                    /// @src 69:1770:1832  "(,, uint16 index, uint16 cardinality,,,) = uniswapPool.slot0()"
                    let var_index_16619 := expr_16624_component_3
                    let var_cardinality_16621 := expr_16624_component_4
                    /// @src 69:1897:1908  "uniswapPool"
                    let _634_address := var_uniswapPool_16546_address
                    let expr_16630_address := _634_address
                    /// @src 69:1897:1921  "uniswapPool.observations"
                    let expr_16631_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16630_address)
                    let expr_16631_functionSelector := 0x252c09d7
                    /// @src 69:1923:1928  "index"
                    let _635 := var_index_16619
                    let expr_16632 := _635
                    /// @src 69:1931:1932  "1"
                    let expr_16633 := 0x01
                    /// @src 69:1923:1932  "index + 1"
                    let expr_16634 := checked_add_t_uint16(expr_16632, convert_t_rational_1_by_1_to_t_uint16(expr_16633))

                    /// @src 69:1922:1933  "(index + 1)"
                    let expr_16635 := expr_16634
                    /// @src 69:1936:1947  "cardinality"
                    let _636 := var_cardinality_16621
                    let expr_16636 := _636
                    /// @src 69:1922:1947  "(index + 1) % cardinality"
                    let expr_16637 := mod_t_uint16(expr_16635, expr_16636)

                    /// @src 69:1897:1948  "uniswapPool.observations((index + 1) % cardinality)"

                    // storage for arguments and returned data
                    let _637 := allocate_unbounded()
                    mstore(_637, shift_left_224(expr_16631_functionSelector))
                    let _638 := abi_encode_tuple_t_uint16__to_t_uint256__fromStack(add(_637, 4) , expr_16637)

                    let _639 := staticcall(gas(), expr_16631_address,  _637, sub(_638, _637), _637, 128)

                    if iszero(_639) { revert_forward_1() }

                    let expr_16638_component_1, expr_16638_component_2, expr_16638_component_3, expr_16638_component_4
                    if _639 {

                        let _640 := 128

                        if gt(_640, returndatasize()) {
                            _640 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_637, _640)

                        // decode return parameters from external try-call into retVars
                        expr_16638_component_1, expr_16638_component_2, expr_16638_component_3, expr_16638_component_4 :=  abi_decode_tuple_t_uint32t_int56t_uint160t_bool_fromMemory(_637, add(_637, _640))
                    }
                    /// @src 69:1847:1948  "(uint32 oldestAvailableAge,,, bool initialized) = uniswapPool.observations((index + 1) % cardinality)"
                    let var_oldestAvailableAge_16627 := expr_16638_component_1
                    let var_initialized_16629 := expr_16638_component_4
                    /// @src 69:1968:1979  "initialized"
                    let _641 := var_initialized_16629
                    let expr_16640 := _641
                    /// @src 69:1967:1979  "!initialized"
                    let expr_16641 := cleanup_t_bool(iszero(expr_16640))
                    /// @src 69:1963:2067  "if (!initialized) {..."
                    if expr_16641 {
                        /// @src 69:2025:2036  "uniswapPool"
                        let _642_address := var_uniswapPool_16546_address
                        let expr_16644_address := _642_address
                        /// @src 69:2025:2049  "uniswapPool.observations"
                        let expr_16645_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16644_address)
                        let expr_16645_functionSelector := 0x252c09d7
                        /// @src 69:2050:2051  "0"
                        let expr_16646 := 0x00
                        /// @src 69:2025:2052  "uniswapPool.observations(0)"

                        // storage for arguments and returned data
                        let _643 := allocate_unbounded()
                        mstore(_643, shift_left_224(expr_16645_functionSelector))
                        let _644 := abi_encode_tuple_t_rational_0_by_1__to_t_uint256__fromStack(add(_643, 4) , expr_16646)

                        let _645 := staticcall(gas(), expr_16645_address,  _643, sub(_644, _643), _643, 128)

                        if iszero(_645) { revert_forward_1() }

                        let expr_16647_component_1, expr_16647_component_2, expr_16647_component_3, expr_16647_component_4
                        if _645 {

                            let _646 := 128

                            if gt(_646, returndatasize()) {
                                _646 := returndatasize()
                            }

                            // update freeMemoryPointer according to dynamic return size
                            finalize_allocation(_643, _646)

                            // decode return parameters from external try-call into retVars
                            expr_16647_component_1, expr_16647_component_2, expr_16647_component_3, expr_16647_component_4 :=  abi_decode_tuple_t_uint32t_int56t_uint160t_bool_fromMemory(_643, add(_643, _646))
                        }
                        /// @src 69:1999:2052  "(oldestAvailableAge,,,) = uniswapPool.observations(0)"
                        var_oldestAvailableAge_16627 := expr_16647_component_1
                        /// @src 69:1963:2067  "if (!initialized) {..."
                    }
                    /// @src 69:2087:2102  "block.timestamp"
                    let expr_16654 := timestamp()
                    /// @src 69:2105:2123  "oldestAvailableAge"
                    let _647 := var_oldestAvailableAge_16627
                    let expr_16655 := _647
                    /// @src 69:2087:2123  "block.timestamp - oldestAvailableAge"
                    let expr_16656 := checked_sub_t_uint256(expr_16654, convert_t_uint32_to_t_uint256(expr_16655))

                    /// @src 69:2081:2123  "ago = block.timestamp - oldestAvailableAge"
                    var_ago_16548 := expr_16656
                    let expr_16657 := expr_16656
                    /// @src 69:2161:2164  "ago"
                    let _648 := var_ago_16548
                    let expr_16664 := _648
                    /// @src 69:2154:2165  "uint32(ago)"
                    let expr_16665 := convert_t_uint256_to_t_uint32(expr_16664)
                    /// @src 69:2137:2148  "secondsAgos"
                    let _649_mpos := var_secondsAgos_16559_mpos
                    let expr_16659_mpos := _649_mpos
                    /// @src 69:2149:2150  "0"
                    let expr_16660 := 0x00
                    /// @src 69:2137:2165  "secondsAgos[0] = uint32(ago)"
                    let _650 := expr_16665
                    write_to_memory_t_uint32(memory_array_index_access_t_array$_t_uint32_$dyn_memory_ptr(expr_16659_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_16660)), _650)
                    let expr_16666 := expr_16665
                    /// @src 69:2206:2217  "uniswapPool"
                    let _651_address := var_uniswapPool_16546_address
                    let expr_16673_address := _651_address
                    /// @src 69:2198:2218  "address(uniswapPool)"
                    let expr_16674 := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16673_address)
                    /// @src 69:2198:2229  "address(uniswapPool).staticcall"
                    let expr_16675_address := expr_16674
                    /// @src 69:2270:2307  "IUniswapV3PoolOracle.observe.selector"
                    let expr_16680 := 0x883bdbfd00000000000000000000000000000000000000000000000000000000
                    /// @src 69:2309:2320  "secondsAgos"
                    let _652_mpos := var_secondsAgos_16559_mpos
                    let expr_16681_mpos := _652_mpos
                    /// @src 69:2247:2321  "abi.encodeWithSelector(IUniswapV3PoolOracle.observe.selector, secondsAgos)"

                    let expr_16682_mpos := allocate_unbounded()
                    let _653 := add(expr_16682_mpos, 0x20)

                    mstore(_653, expr_16680)
                    _653 := add(_653, 4)

                    let _654 := abi_encode_tuple_t_array$_t_uint32_$dyn_memory_ptr__to_t_array$_t_uint32_$dyn_memory_ptr__fromStack(_653, expr_16681_mpos)
                    mstore(expr_16682_mpos, sub(_654, add(expr_16682_mpos, 0x20)))
                    finalize_allocation(expr_16682_mpos, sub(_654, expr_16682_mpos))
                    /// @src 69:2198:2335  "address(uniswapPool).staticcall(..."

                    let _655 := add(expr_16682_mpos, 0x20)
                    let _656 := mload(expr_16682_mpos)

                    let expr_16683_component_1 := staticcall(gas(), expr_16675_address,  _655, _656, 0, 0)

                    let expr_16683_component_2_mpos := extract_returndata()
                    /// @src 69:2180:2335  "(success, data) = address(uniswapPool).staticcall(..."
                    var_data_16584_mpos := expr_16683_component_2_mpos
                    var_success_16582 := expr_16683_component_1
                    /// @src 69:2354:2361  "success"
                    let _657 := var_success_16582
                    let expr_16686 := _657
                    /// @src 69:2353:2361  "!success"
                    let expr_16687 := cleanup_t_bool(iszero(expr_16686))
                    /// @src 69:2349:2413  "if (!success) {..."
                    if expr_16687 {
                        /// @src 69:2393:2397  "data"
                        let _658_mpos := var_data_16584_mpos
                        let expr_16689_mpos := _658_mpos
                        fun_revertBytes_16761(expr_16689_mpos)
                        /// @src 69:2349:2413  "if (!success) {..."
                    }
                    /// @src 69:1595:2423  "if (!success) {..."
                }
                /// @src 69:2477:2481  "data"
                let _659_mpos := var_data_16584_mpos
                let expr_16703_mpos := _659_mpos
                /// @src 69:2466:2493  "abi.decode(data, (int56[]))"

                let expr_16708_mpos :=  abi_decode_tuple_t_array$_t_int56_$dyn_memory_ptr_fromMemory(add(expr_16703_mpos, 32), add(add(expr_16703_mpos, 32), array_length_t_bytes_memory_ptr(expr_16703_mpos)))
                /// @src 69:2433:2493  "int56[] memory tickCumulatives = abi.decode(data, (int56[]))"
                let var_tickCumulatives_16700_mpos := expr_16708_mpos
                /// @src 69:2524:2539  "tickCumulatives"
                let _660_mpos := var_tickCumulatives_16700_mpos
                let expr_16714_mpos := _660_mpos
                /// @src 69:2540:2541  "1"
                let expr_16715 := 0x01
                /// @src 69:2524:2542  "tickCumulatives[1]"
                let _661 := read_from_memoryt_int56(memory_array_index_access_t_array$_t_int56_$dyn_memory_ptr(expr_16714_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_16715)))
                let expr_16716 := _661
                /// @src 69:2545:2560  "tickCumulatives"
                let _662_mpos := var_tickCumulatives_16700_mpos
                let expr_16717_mpos := _662_mpos
                /// @src 69:2561:2562  "0"
                let expr_16718 := 0x00
                /// @src 69:2545:2563  "tickCumulatives[0]"
                let _663 := read_from_memoryt_int56(memory_array_index_access_t_array$_t_int56_$dyn_memory_ptr(expr_16717_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_16718)))
                let expr_16719 := _663
                /// @src 69:2524:2563  "tickCumulatives[1] - tickCumulatives[0]"
                let expr_16720 := checked_sub_t_int56(expr_16716, expr_16719)

                /// @src 69:2523:2564  "(tickCumulatives[1] - tickCumulatives[0])"
                let expr_16721 := expr_16720
                /// @src 69:2580:2583  "ago"
                let _664 := var_ago_16548
                let expr_16726 := _664
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
                let _665 := var_tick_16711
                let expr_16736 := _665
                /// @src 69:2620:2653  "TickMath.getSqrtRatioAtTick(tick)"
                let expr_16737 := fun_getSqrtRatioAtTick_30100(expr_16736)
                /// @src 69:2597:2653  "uint160 sqrtPriceX96 = TickMath.getSqrtRatioAtTick(tick)"
                let var_sqrtPriceX96_16733 := expr_16737
                /// @src 69:2672:2684  "sqrtPriceX96"
                let _666 := var_sqrtPriceX96_16733
                let expr_16739 := _666
                /// @src 69:2671:2690  "(sqrtPriceX96, ago)"
                let expr_16741_component_1 := expr_16739
                /// @src 69:2686:2689  "ago"
                let _667 := var_ago_16548
                let expr_16740 := _667
                /// @src 69:2671:2690  "(sqrtPriceX96, ago)"
                let expr_16741_component_2 := expr_16740
                /// @src 69:2664:2690  "return (sqrtPriceX96, ago)"
                var__16551 := expr_16741_component_1
                var__16553 := expr_16741_component_2
                leave

            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

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
                let _668_mpos := var_errMsg_16746_mpos
                let expr_16749_mpos := _668_mpos
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

                    let _670 := allocate_unbounded()

                    mstore(_670, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let _669 := abi_encode_tuple_t_stringliteral_50c51911f834abaa40521a23699e67b2f23d64b1bf78a1149cfc2a1d2d5c6baf__to_t_string_memory_ptr__fromStack(add(_670, 4) )
                    revert(_670, sub(_669, _670))
                }
            }
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

            function convert_t_rational_0_by_1_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_int24_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_int24(value)))
            }

            function convert_t_int256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_int256(value)))
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
                let _676 := convert_t_rational_minus_887272_by_1_to_t_int24(expr_29708)

                ret := _676
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
                let _677 := expr_29713

                ret := _677
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

            function wrapping_mul_t_uint256(x, y) -> product {
                product := cleanup_t_uint256(mul(x, y))
            }

            function cleanup_t_rational_128_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_128_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_128_by_1(value)))
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
                let zero_t_uint160_671 := zero_value_for_split_t_uint160()
                var_sqrtPriceX96_29728 := zero_t_uint160_671

                /// @src 27:1522:1526  "tick"
                let _672 := var_tick_29725
                let expr_29732 := _672
                /// @src 27:1529:1530  "0"
                let expr_29733 := 0x00
                /// @src 27:1522:1530  "tick < 0"
                let expr_29734 := slt(cleanup_t_int24(expr_29732), convert_t_rational_0_by_1_to_t_int24(expr_29733))
                /// @src 27:1522:1579  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                let expr_29750
                switch expr_29734
                case 0 {
                    /// @src 27:1573:1577  "tick"
                    let _673 := var_tick_29725
                    let expr_29747 := _673
                    /// @src 27:1566:1578  "int256(tick)"
                    let expr_29748 := convert_t_int24_to_t_int256(expr_29747)
                    /// @src 27:1558:1579  "uint256(int256(tick))"
                    let expr_29749 := convert_t_int256_to_t_uint256(expr_29748)
                    /// @src 27:1522:1579  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                    expr_29750 := expr_29749
                }
                default {
                    /// @src 27:1549:1553  "tick"
                    let _674 := var_tick_29725
                    let expr_29739 := _674
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
                let _675 := var_absTick_29731
                let expr_29752 := _675
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

                        let _679 := 0

                        mstore(_679, 0x2bc80f3a00000000000000000000000000000000000000000000000000000000)
                        let _678 := abi_encode_tuple__to__fromStack(add(_679, 4) )
                        revert(_679, sub(_678, _679))
                    }/// @src 27:1593:1644  "if (absTick > uint256(int256(MAX_TICK))) revert T()"
                }
                /// @src 27:1675:1682  "absTick"
                let _680 := var_absTick_29731
                let expr_29767 := _680
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
                let _681 := var_absTick_29731
                let expr_29776 := _681
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
                    let _682 := var_ratio_29766
                    let expr_29782 := _682
                    /// @src 27:1855:1889  "0xfff97272373d413259a46990580e213a"
                    let expr_29783 := 0xfff97272373d413259a46990580e213a
                    /// @src 27:1847:1889  "ratio * 0xfff97272373d413259a46990580e213a"
                    let expr_29784 := wrapping_mul_t_uint256(expr_29782, convert_t_rational_340248342086729790484326174814286782778_by_1_to_t_uint256(expr_29783))

                    /// @src 27:1846:1890  "(ratio * 0xfff97272373d413259a46990580e213a)"
                    let expr_29785 := expr_29784
                    /// @src 27:1894:1897  "128"
                    let expr_29786 := 0x80
                    /// @src 27:1846:1897  "(ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                    let _683 := convert_t_rational_128_by_1_to_t_uint8(expr_29786)
                    let expr_29787 :=
                    shift_right_t_uint256_t_uint8(expr_29785, _683)

                    /// @src 27:1838:1897  "ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                    var_ratio_29766 := expr_29787
                    let expr_29788 := expr_29787
                    /// @src 27:1814:1897  "if (absTick & 0x2 != 0) ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                }
                /// @src 27:1915:1922  "absTick"
                let _684 := var_absTick_29731
                let expr_29791 := _684
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
                    let _685 := var_ratio_29766
                    let expr_29797 := _685
                    /// @src 27:1952:1986  "0xfff2e50f5f656932ef12357cf3c7fdcc"
                    let expr_29798 := 0xfff2e50f5f656932ef12357cf3c7fdcc
                    /// @src 27:1944:1986  "ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc"
                    let expr_29799 := wrapping_mul_t_uint256(expr_29797, convert_t_rational_340214320654664324051920982716015181260_by_1_to_t_uint256(expr_29798))

                    /// @src 27:1943:1987  "(ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc)"
                    let expr_29800 := expr_29799
                    /// @src 27:1991:1994  "128"
                    let expr_29801 := 0x80
                    /// @src 27:1943:1994  "(ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                    let _686 := convert_t_rational_128_by_1_to_t_uint8(expr_29801)
                    let expr_29802 :=
                    shift_right_t_uint256_t_uint8(expr_29800, _686)

                    /// @src 27:1935:1994  "ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                    var_ratio_29766 := expr_29802
                    let expr_29803 := expr_29802
                    /// @src 27:1911:1994  "if (absTick & 0x4 != 0) ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                }
                /// @src 27:2012:2019  "absTick"
                let _687 := var_absTick_29731
                let expr_29806 := _687
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
                    let _688 := var_ratio_29766
                    let expr_29812 := _688
                    /// @src 27:2049:2083  "0xffe5caca7e10e4e61c3624eaa0941cd0"
                    let expr_29813 := 0xffe5caca7e10e4e61c3624eaa0941cd0
                    /// @src 27:2041:2083  "ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0"
                    let expr_29814 := wrapping_mul_t_uint256(expr_29812, convert_t_rational_340146287995602323631171512101879684304_by_1_to_t_uint256(expr_29813))

                    /// @src 27:2040:2084  "(ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0)"
                    let expr_29815 := expr_29814
                    /// @src 27:2088:2091  "128"
                    let expr_29816 := 0x80
                    /// @src 27:2040:2091  "(ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                    let _689 := convert_t_rational_128_by_1_to_t_uint8(expr_29816)
                    let expr_29817 :=
                    shift_right_t_uint256_t_uint8(expr_29815, _689)

                    /// @src 27:2032:2091  "ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                    var_ratio_29766 := expr_29817
                    let expr_29818 := expr_29817
                    /// @src 27:2008:2091  "if (absTick & 0x8 != 0) ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                }
                /// @src 27:2109:2116  "absTick"
                let _690 := var_absTick_29731
                let expr_29821 := _690
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
                    let _691 := var_ratio_29766
                    let expr_29827 := _691
                    /// @src 27:2147:2181  "0xffcb9843d60f6159c9db58835c926644"
                    let expr_29828 := 0xffcb9843d60f6159c9db58835c926644
                    /// @src 27:2139:2181  "ratio * 0xffcb9843d60f6159c9db58835c926644"
                    let expr_29829 := wrapping_mul_t_uint256(expr_29827, convert_t_rational_340010263488231146823593991679159461444_by_1_to_t_uint256(expr_29828))

                    /// @src 27:2138:2182  "(ratio * 0xffcb9843d60f6159c9db58835c926644)"
                    let expr_29830 := expr_29829
                    /// @src 27:2186:2189  "128"
                    let expr_29831 := 0x80
                    /// @src 27:2138:2189  "(ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                    let _692 := convert_t_rational_128_by_1_to_t_uint8(expr_29831)
                    let expr_29832 :=
                    shift_right_t_uint256_t_uint8(expr_29830, _692)

                    /// @src 27:2130:2189  "ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                    var_ratio_29766 := expr_29832
                    let expr_29833 := expr_29832
                    /// @src 27:2105:2189  "if (absTick & 0x10 != 0) ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                }
                /// @src 27:2207:2214  "absTick"
                let _693 := var_absTick_29731
                let expr_29836 := _693
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
                    let _694 := var_ratio_29766
                    let expr_29842 := _694
                    /// @src 27:2245:2279  "0xff973b41fa98c081472e6896dfb254c0"
                    let expr_29843 := 0xff973b41fa98c081472e6896dfb254c0
                    /// @src 27:2237:2279  "ratio * 0xff973b41fa98c081472e6896dfb254c0"
                    let expr_29844 := wrapping_mul_t_uint256(expr_29842, convert_t_rational_339738377640345403697157401104375502016_by_1_to_t_uint256(expr_29843))

                    /// @src 27:2236:2280  "(ratio * 0xff973b41fa98c081472e6896dfb254c0)"
                    let expr_29845 := expr_29844
                    /// @src 27:2284:2287  "128"
                    let expr_29846 := 0x80
                    /// @src 27:2236:2287  "(ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                    let _695 := convert_t_rational_128_by_1_to_t_uint8(expr_29846)
                    let expr_29847 :=
                    shift_right_t_uint256_t_uint8(expr_29845, _695)

                    /// @src 27:2228:2287  "ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                    var_ratio_29766 := expr_29847
                    let expr_29848 := expr_29847
                    /// @src 27:2203:2287  "if (absTick & 0x20 != 0) ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                }
                /// @src 27:2305:2312  "absTick"
                let _696 := var_absTick_29731
                let expr_29851 := _696
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
                    let _697 := var_ratio_29766
                    let expr_29857 := _697
                    /// @src 27:2343:2377  "0xff2ea16466c96a3843ec78b326b52861"
                    let expr_29858 := 0xff2ea16466c96a3843ec78b326b52861
                    /// @src 27:2335:2377  "ratio * 0xff2ea16466c96a3843ec78b326b52861"
                    let expr_29859 := wrapping_mul_t_uint256(expr_29857, convert_t_rational_339195258003219555707034227454543997025_by_1_to_t_uint256(expr_29858))

                    /// @src 27:2334:2378  "(ratio * 0xff2ea16466c96a3843ec78b326b52861)"
                    let expr_29860 := expr_29859
                    /// @src 27:2382:2385  "128"
                    let expr_29861 := 0x80
                    /// @src 27:2334:2385  "(ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                    let _698 := convert_t_rational_128_by_1_to_t_uint8(expr_29861)
                    let expr_29862 :=
                    shift_right_t_uint256_t_uint8(expr_29860, _698)

                    /// @src 27:2326:2385  "ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                    var_ratio_29766 := expr_29862
                    let expr_29863 := expr_29862
                    /// @src 27:2301:2385  "if (absTick & 0x40 != 0) ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                }
                /// @src 27:2403:2410  "absTick"
                let _699 := var_absTick_29731
                let expr_29866 := _699
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
                    let _700 := var_ratio_29766
                    let expr_29872 := _700
                    /// @src 27:2441:2475  "0xfe5dee046a99a2a811c461f1969c3053"
                    let expr_29873 := 0xfe5dee046a99a2a811c461f1969c3053
                    /// @src 27:2433:2475  "ratio * 0xfe5dee046a99a2a811c461f1969c3053"
                    let expr_29874 := wrapping_mul_t_uint256(expr_29872, convert_t_rational_338111622100601834656805679988414885971_by_1_to_t_uint256(expr_29873))

                    /// @src 27:2432:2476  "(ratio * 0xfe5dee046a99a2a811c461f1969c3053)"
                    let expr_29875 := expr_29874
                    /// @src 27:2480:2483  "128"
                    let expr_29876 := 0x80
                    /// @src 27:2432:2483  "(ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                    let _701 := convert_t_rational_128_by_1_to_t_uint8(expr_29876)
                    let expr_29877 :=
                    shift_right_t_uint256_t_uint8(expr_29875, _701)

                    /// @src 27:2424:2483  "ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                    var_ratio_29766 := expr_29877
                    let expr_29878 := expr_29877
                    /// @src 27:2399:2483  "if (absTick & 0x80 != 0) ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                }
                /// @src 27:2501:2508  "absTick"
                let _702 := var_absTick_29731
                let expr_29881 := _702
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
                    let _703 := var_ratio_29766
                    let expr_29887 := _703
                    /// @src 27:2540:2574  "0xfcbe86c7900a88aedcffc83b479aa3a4"
                    let expr_29888 := 0xfcbe86c7900a88aedcffc83b479aa3a4
                    /// @src 27:2532:2574  "ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4"
                    let expr_29889 := wrapping_mul_t_uint256(expr_29887, convert_t_rational_335954724994790223023589805789778977700_by_1_to_t_uint256(expr_29888))

                    /// @src 27:2531:2575  "(ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4)"
                    let expr_29890 := expr_29889
                    /// @src 27:2579:2582  "128"
                    let expr_29891 := 0x80
                    /// @src 27:2531:2582  "(ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                    let _704 := convert_t_rational_128_by_1_to_t_uint8(expr_29891)
                    let expr_29892 :=
                    shift_right_t_uint256_t_uint8(expr_29890, _704)

                    /// @src 27:2523:2582  "ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                    var_ratio_29766 := expr_29892
                    let expr_29893 := expr_29892
                    /// @src 27:2497:2582  "if (absTick & 0x100 != 0) ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                }
                /// @src 27:2600:2607  "absTick"
                let _705 := var_absTick_29731
                let expr_29896 := _705
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
                    let _706 := var_ratio_29766
                    let expr_29902 := _706
                    /// @src 27:2639:2673  "0xf987a7253ac413176f2b074cf7815e54"
                    let expr_29903 := 0xf987a7253ac413176f2b074cf7815e54
                    /// @src 27:2631:2673  "ratio * 0xf987a7253ac413176f2b074cf7815e54"
                    let expr_29904 := wrapping_mul_t_uint256(expr_29902, convert_t_rational_331682121138379247127172139078559817300_by_1_to_t_uint256(expr_29903))

                    /// @src 27:2630:2674  "(ratio * 0xf987a7253ac413176f2b074cf7815e54)"
                    let expr_29905 := expr_29904
                    /// @src 27:2678:2681  "128"
                    let expr_29906 := 0x80
                    /// @src 27:2630:2681  "(ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                    let _707 := convert_t_rational_128_by_1_to_t_uint8(expr_29906)
                    let expr_29907 :=
                    shift_right_t_uint256_t_uint8(expr_29905, _707)

                    /// @src 27:2622:2681  "ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                    var_ratio_29766 := expr_29907
                    let expr_29908 := expr_29907
                    /// @src 27:2596:2681  "if (absTick & 0x200 != 0) ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                }
                /// @src 27:2699:2706  "absTick"
                let _708 := var_absTick_29731
                let expr_29911 := _708
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
                    let _709 := var_ratio_29766
                    let expr_29917 := _709
                    /// @src 27:2738:2772  "0xf3392b0822b70005940c7a398e4b70f3"
                    let expr_29918 := 0xf3392b0822b70005940c7a398e4b70f3
                    /// @src 27:2730:2772  "ratio * 0xf3392b0822b70005940c7a398e4b70f3"
                    let expr_29919 := wrapping_mul_t_uint256(expr_29917, convert_t_rational_323299236684853023288211250268160618739_by_1_to_t_uint256(expr_29918))

                    /// @src 27:2729:2773  "(ratio * 0xf3392b0822b70005940c7a398e4b70f3)"
                    let expr_29920 := expr_29919
                    /// @src 27:2777:2780  "128"
                    let expr_29921 := 0x80
                    /// @src 27:2729:2780  "(ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                    let _710 := convert_t_rational_128_by_1_to_t_uint8(expr_29921)
                    let expr_29922 :=
                    shift_right_t_uint256_t_uint8(expr_29920, _710)

                    /// @src 27:2721:2780  "ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                    var_ratio_29766 := expr_29922
                    let expr_29923 := expr_29922
                    /// @src 27:2695:2780  "if (absTick & 0x400 != 0) ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                }
                /// @src 27:2798:2805  "absTick"
                let _711 := var_absTick_29731
                let expr_29926 := _711
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
                    let _712 := var_ratio_29766
                    let expr_29932 := _712
                    /// @src 27:2837:2871  "0xe7159475a2c29b7443b29c7fa6e889d9"
                    let expr_29933 := 0xe7159475a2c29b7443b29c7fa6e889d9
                    /// @src 27:2829:2871  "ratio * 0xe7159475a2c29b7443b29c7fa6e889d9"
                    let expr_29934 := wrapping_mul_t_uint256(expr_29932, convert_t_rational_307163716377032989948697243942600083929_by_1_to_t_uint256(expr_29933))

                    /// @src 27:2828:2872  "(ratio * 0xe7159475a2c29b7443b29c7fa6e889d9)"
                    let expr_29935 := expr_29934
                    /// @src 27:2876:2879  "128"
                    let expr_29936 := 0x80
                    /// @src 27:2828:2879  "(ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                    let _713 := convert_t_rational_128_by_1_to_t_uint8(expr_29936)
                    let expr_29937 :=
                    shift_right_t_uint256_t_uint8(expr_29935, _713)

                    /// @src 27:2820:2879  "ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                    var_ratio_29766 := expr_29937
                    let expr_29938 := expr_29937
                    /// @src 27:2794:2879  "if (absTick & 0x800 != 0) ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                }
                /// @src 27:2897:2904  "absTick"
                let _714 := var_absTick_29731
                let expr_29941 := _714
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
                    let _715 := var_ratio_29766
                    let expr_29947 := _715
                    /// @src 27:2937:2971  "0xd097f3bdfd2022b8845ad8f792aa5825"
                    let expr_29948 := 0xd097f3bdfd2022b8845ad8f792aa5825
                    /// @src 27:2929:2971  "ratio * 0xd097f3bdfd2022b8845ad8f792aa5825"
                    let expr_29949 := wrapping_mul_t_uint256(expr_29947, convert_t_rational_277268403626896220162999269216087595045_by_1_to_t_uint256(expr_29948))

                    /// @src 27:2928:2972  "(ratio * 0xd097f3bdfd2022b8845ad8f792aa5825)"
                    let expr_29950 := expr_29949
                    /// @src 27:2976:2979  "128"
                    let expr_29951 := 0x80
                    /// @src 27:2928:2979  "(ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                    let _716 := convert_t_rational_128_by_1_to_t_uint8(expr_29951)
                    let expr_29952 :=
                    shift_right_t_uint256_t_uint8(expr_29950, _716)

                    /// @src 27:2920:2979  "ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                    var_ratio_29766 := expr_29952
                    let expr_29953 := expr_29952
                    /// @src 27:2893:2979  "if (absTick & 0x1000 != 0) ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                }
                /// @src 27:2997:3004  "absTick"
                let _717 := var_absTick_29731
                let expr_29956 := _717
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
                    let _718 := var_ratio_29766
                    let expr_29962 := _718
                    /// @src 27:3037:3071  "0xa9f746462d870fdf8a65dc1f90e061e5"
                    let expr_29963 := 0xa9f746462d870fdf8a65dc1f90e061e5
                    /// @src 27:3029:3071  "ratio * 0xa9f746462d870fdf8a65dc1f90e061e5"
                    let expr_29964 := wrapping_mul_t_uint256(expr_29962, convert_t_rational_225923453940442621947126027127485391333_by_1_to_t_uint256(expr_29963))

                    /// @src 27:3028:3072  "(ratio * 0xa9f746462d870fdf8a65dc1f90e061e5)"
                    let expr_29965 := expr_29964
                    /// @src 27:3076:3079  "128"
                    let expr_29966 := 0x80
                    /// @src 27:3028:3079  "(ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                    let _719 := convert_t_rational_128_by_1_to_t_uint8(expr_29966)
                    let expr_29967 :=
                    shift_right_t_uint256_t_uint8(expr_29965, _719)

                    /// @src 27:3020:3079  "ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                    var_ratio_29766 := expr_29967
                    let expr_29968 := expr_29967
                    /// @src 27:2993:3079  "if (absTick & 0x2000 != 0) ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                }
                /// @src 27:3097:3104  "absTick"
                let _720 := var_absTick_29731
                let expr_29971 := _720
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
                    let _721 := var_ratio_29766
                    let expr_29977 := _721
                    /// @src 27:3137:3171  "0x70d869a156d2a1b890bb3df62baf32f7"
                    let expr_29978 := 0x70d869a156d2a1b890bb3df62baf32f7
                    /// @src 27:3129:3171  "ratio * 0x70d869a156d2a1b890bb3df62baf32f7"
                    let expr_29979 := wrapping_mul_t_uint256(expr_29977, convert_t_rational_149997214084966997727330242082538205943_by_1_to_t_uint256(expr_29978))

                    /// @src 27:3128:3172  "(ratio * 0x70d869a156d2a1b890bb3df62baf32f7)"
                    let expr_29980 := expr_29979
                    /// @src 27:3176:3179  "128"
                    let expr_29981 := 0x80
                    /// @src 27:3128:3179  "(ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                    let _722 := convert_t_rational_128_by_1_to_t_uint8(expr_29981)
                    let expr_29982 :=
                    shift_right_t_uint256_t_uint8(expr_29980, _722)

                    /// @src 27:3120:3179  "ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                    var_ratio_29766 := expr_29982
                    let expr_29983 := expr_29982
                    /// @src 27:3093:3179  "if (absTick & 0x4000 != 0) ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                }
                /// @src 27:3197:3204  "absTick"
                let _723 := var_absTick_29731
                let expr_29986 := _723
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
                    let _724 := var_ratio_29766
                    let expr_29992 := _724
                    /// @src 27:3237:3271  "0x31be135f97d08fd981231505542fcfa6"
                    let expr_29993 := 0x31be135f97d08fd981231505542fcfa6
                    /// @src 27:3229:3271  "ratio * 0x31be135f97d08fd981231505542fcfa6"
                    let expr_29994 := wrapping_mul_t_uint256(expr_29992, convert_t_rational_66119101136024775622716233608466517926_by_1_to_t_uint256(expr_29993))

                    /// @src 27:3228:3272  "(ratio * 0x31be135f97d08fd981231505542fcfa6)"
                    let expr_29995 := expr_29994
                    /// @src 27:3276:3279  "128"
                    let expr_29996 := 0x80
                    /// @src 27:3228:3279  "(ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                    let _725 := convert_t_rational_128_by_1_to_t_uint8(expr_29996)
                    let expr_29997 :=
                    shift_right_t_uint256_t_uint8(expr_29995, _725)

                    /// @src 27:3220:3279  "ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                    var_ratio_29766 := expr_29997
                    let expr_29998 := expr_29997
                    /// @src 27:3193:3279  "if (absTick & 0x8000 != 0) ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                }
                /// @src 27:3297:3304  "absTick"
                let _726 := var_absTick_29731
                let expr_30001 := _726
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
                    let _727 := var_ratio_29766
                    let expr_30007 := _727
                    /// @src 27:3338:3371  "0x9aa508b5b7a84e1c677de54f3e99bc9"
                    let expr_30008 := 0x09aa508b5b7a84e1c677de54f3e99bc9
                    /// @src 27:3330:3371  "ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9"
                    let expr_30009 := wrapping_mul_t_uint256(expr_30007, convert_t_rational_12847376061809297530290974190478138313_by_1_to_t_uint256(expr_30008))

                    /// @src 27:3329:3372  "(ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9)"
                    let expr_30010 := expr_30009
                    /// @src 27:3376:3379  "128"
                    let expr_30011 := 0x80
                    /// @src 27:3329:3379  "(ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                    let _728 := convert_t_rational_128_by_1_to_t_uint8(expr_30011)
                    let expr_30012 :=
                    shift_right_t_uint256_t_uint8(expr_30010, _728)

                    /// @src 27:3321:3379  "ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                    var_ratio_29766 := expr_30012
                    let expr_30013 := expr_30012
                    /// @src 27:3293:3379  "if (absTick & 0x10000 != 0) ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                }
                /// @src 27:3397:3404  "absTick"
                let _729 := var_absTick_29731
                let expr_30016 := _729
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
                    let _730 := var_ratio_29766
                    let expr_30022 := _730
                    /// @src 27:3438:3470  "0x5d6af8dedb81196699c329225ee604"
                    let expr_30023 := 0x5d6af8dedb81196699c329225ee604
                    /// @src 27:3430:3470  "ratio * 0x5d6af8dedb81196699c329225ee604"
                    let expr_30024 := wrapping_mul_t_uint256(expr_30022, convert_t_rational_485053260817066172746253684029974020_by_1_to_t_uint256(expr_30023))

                    /// @src 27:3429:3471  "(ratio * 0x5d6af8dedb81196699c329225ee604)"
                    let expr_30025 := expr_30024
                    /// @src 27:3475:3478  "128"
                    let expr_30026 := 0x80
                    /// @src 27:3429:3478  "(ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                    let _731 := convert_t_rational_128_by_1_to_t_uint8(expr_30026)
                    let expr_30027 :=
                    shift_right_t_uint256_t_uint8(expr_30025, _731)

                    /// @src 27:3421:3478  "ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                    var_ratio_29766 := expr_30027
                    let expr_30028 := expr_30027
                    /// @src 27:3393:3478  "if (absTick & 0x20000 != 0) ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                }
                /// @src 27:3496:3503  "absTick"
                let _732 := var_absTick_29731
                let expr_30031 := _732
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
                    let _733 := var_ratio_29766
                    let expr_30037 := _733
                    /// @src 27:3537:3567  "0x2216e584f5fa1ea926041bedfe98"
                    let expr_30038 := 0x2216e584f5fa1ea926041bedfe98
                    /// @src 27:3529:3567  "ratio * 0x2216e584f5fa1ea926041bedfe98"
                    let expr_30039 := wrapping_mul_t_uint256(expr_30037, convert_t_rational_691415978906521570653435304214168_by_1_to_t_uint256(expr_30038))

                    /// @src 27:3528:3568  "(ratio * 0x2216e584f5fa1ea926041bedfe98)"
                    let expr_30040 := expr_30039
                    /// @src 27:3572:3575  "128"
                    let expr_30041 := 0x80
                    /// @src 27:3528:3575  "(ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                    let _734 := convert_t_rational_128_by_1_to_t_uint8(expr_30041)
                    let expr_30042 :=
                    shift_right_t_uint256_t_uint8(expr_30040, _734)

                    /// @src 27:3520:3575  "ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                    var_ratio_29766 := expr_30042
                    let expr_30043 := expr_30042
                    /// @src 27:3492:3575  "if (absTick & 0x40000 != 0) ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                }
                /// @src 27:3593:3600  "absTick"
                let _735 := var_absTick_29731
                let expr_30046 := _735
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
                    let _736 := var_ratio_29766
                    let expr_30052 := _736
                    /// @src 27:3634:3659  "0x48a170391f7dc42444e8fa2"
                    let expr_30053 := 0x048a170391f7dc42444e8fa2
                    /// @src 27:3626:3659  "ratio * 0x48a170391f7dc42444e8fa2"
                    let expr_30054 := wrapping_mul_t_uint256(expr_30052, convert_t_rational_1404880482679654955896180642_by_1_to_t_uint256(expr_30053))

                    /// @src 27:3625:3660  "(ratio * 0x48a170391f7dc42444e8fa2)"
                    let expr_30055 := expr_30054
                    /// @src 27:3664:3667  "128"
                    let expr_30056 := 0x80
                    /// @src 27:3625:3667  "(ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                    let _737 := convert_t_rational_128_by_1_to_t_uint8(expr_30056)
                    let expr_30057 :=
                    shift_right_t_uint256_t_uint8(expr_30055, _737)

                    /// @src 27:3617:3667  "ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                    var_ratio_29766 := expr_30057
                    let expr_30058 := expr_30057
                    /// @src 27:3589:3667  "if (absTick & 0x80000 != 0) ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                }
                /// @src 27:3686:3690  "tick"
                let _738 := var_tick_29725
                let expr_30061 := _738
                /// @src 27:3693:3694  "0"
                let expr_30062 := 0x00
                /// @src 27:3686:3694  "tick > 0"
                let expr_30063 := sgt(cleanup_t_int24(expr_30061), convert_t_rational_0_by_1_to_t_int24(expr_30062))
                /// @src 27:3682:3729  "if (tick > 0) ratio = type(uint256).max / ratio"
                if expr_30063 {
                    /// @src 27:3704:3721  "type(uint256).max"
                    let expr_30069 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 27:3724:3729  "ratio"
                    let _739 := var_ratio_29766
                    let expr_30070 := _739
                    /// @src 27:3704:3729  "type(uint256).max / ratio"
                    let expr_30071 := wrapping_div_t_uint256(expr_30069, expr_30070)

                    /// @src 27:3696:3729  "ratio = type(uint256).max / ratio"
                    var_ratio_29766 := expr_30071
                    let expr_30072 := expr_30071
                    /// @src 27:3682:3729  "if (tick > 0) ratio = type(uint256).max / ratio"
                }
                /// @src 27:4079:4084  "ratio"
                let _740 := var_ratio_29766
                let expr_30078 := _740
                /// @src 27:4088:4090  "32"
                let expr_30079 := 0x20
                /// @src 27:4079:4090  "ratio >> 32"
                let _741 := convert_t_rational_32_by_1_to_t_uint8(expr_30079)
                let expr_30080 :=
                shift_right_t_uint256_t_uint8(expr_30078, _741)

                /// @src 27:4078:4091  "(ratio >> 32)"
                let expr_30081 := expr_30080
                /// @src 27:4095:4100  "ratio"
                let _742 := var_ratio_29766
                let expr_30082 := _742
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
            /// @src 50:1661:13782  "contract PredyPool is IPredyPool, IUniswapV3MintCallback, Initializable, ReentrancyGuardUpgradeable {..."

        }

        data ".metadata" hex"a26469706673582212206dbbc649f6ca22858f28170945eb4e225bcb63076056d3657ae50cd4fa57fcf364736f6c634300081e0033"
    }

}

