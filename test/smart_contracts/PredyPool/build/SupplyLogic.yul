
/// @use-src 75:"src/libraries/logic/SupplyLogic.sol"
object "SupplyLogic_19013" {
    code {
        /// @src 75:563:3653  "library SupplyLogic {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("SupplyLogic_19013_deployed"), datasize("SupplyLogic_19013_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("SupplyLogic_19013_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 75:563:3653  "library SupplyLogic {..."
        function constructor_SupplyLogic_19013() {

            /// @src 75:563:3653  "library SupplyLogic {..."

        }
        /// @src 75:563:3653  "library SupplyLogic {..."

    }
    /// @use-src 12:"lib/solmate/src/utils/FixedPointMathLib.sol", 14:"lib/solmate/src/utils/SafeTransferLib.sol", 26:"lib/v3-core/contracts/libraries/FullMath.sol", 56:"src/libraries/ApplyInterestLib.sol", 57:"src/libraries/Constants.sol", 59:"src/libraries/InterestRateModel.sol", 61:"src/libraries/Perp.sol", 64:"src/libraries/PremiumCurveModel.sol", 66:"src/libraries/ScaledAsset.sol", 69:"src/libraries/UniHelper.sol", 75:"src/libraries/logic/SupplyLogic.sol", 81:"src/types/GlobalData.sol"
    object "SupplyLogic_19013_deployed" {
        code {
            /// @src 75:563:3653  "library SupplyLogic {..."
            mstore(64, memoryguard(128))

            let called_via_delegatecall := iszero(eq(loadimmutable("library_deploy_address"), address()))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x3e16468d
                {
                    // withdraw(GlobalDataLibrary.GlobalData storage,uint256,uint256,bool)
                    if iszero(called_via_delegatecall) { revert_error_fb00381150b0555b0bf83aa2d95ae5599abd614bfe490c66e084fe1f454f48e2() }
                    external_fun_withdraw_18958()
                }

                case 0x3ec463bf
                {
                    // supply(GlobalDataLibrary.GlobalData storage,uint256,uint256,bool)
                    if iszero(called_via_delegatecall) { revert_error_fb00381150b0555b0bf83aa2d95ae5599abd614bfe490c66e084fe1f454f48e2() }
                    external_fun_supply_18834()
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

            function abi_decode_tuple_t_struct$_GlobalData_$19302_storage_ptrt_uint256t_uint256t_bool(headStart, dataEnd) -> value0, value1, value2, value3 {
                if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_GlobalData_$19302_storage_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack_library(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack_library(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint256_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack_library(value1,  add(headStart, 32))

            }

            function external_fun_withdraw_18958() {

                let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_struct$_GlobalData_$19302_storage_ptrt_uint256t_uint256t_bool(4, calldatasize())
                let ret_0, ret_1 :=  fun_withdraw_18958(param_0, param_1, param_2, param_3)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack_library(memPos , ret_0, ret_1)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

            }

            function external_fun_supply_18834() {

                let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_struct$_GlobalData_$19302_storage_ptrt_uint256t_uint256t_bool(4, calldatasize())
                let ret_0 :=  fun_supply_18834(param_0, param_1, param_2, param_3)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
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

            function convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(value) -> converted {
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

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
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

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_tuple_t_uint256_t_bool_t_uint256__to_t_uint256_t_bool_t_uint256__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bool_to_t_bool_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

            }

            /// @ast-id 18958
            /// @src 75:2177:3084  "function withdraw(GlobalDataLibrary.GlobalData storage globalData, uint256 _pairId, uint256 _amount, bool _isStable)..."
            function fun_withdraw_18958(var_globalData_18880_slot, var__pairId_18882, var__amount_18884, var__isStable_18886) -> var_finalburntAmount_18889, var_finalWithdrawalAmount_18891 {
                /// @src 75:2328:2352  "uint256 finalburntAmount"
                let zero_t_uint256_1 := zero_value_for_split_t_uint256()
                var_finalburntAmount_18889 := zero_t_uint256_1
                /// @src 75:2354:2383  "uint256 finalWithdrawalAmount"
                let zero_t_uint256_2 := zero_value_for_split_t_uint256()
                var_finalWithdrawalAmount_18891 := zero_t_uint256_2

                /// @src 75:2429:2439  "globalData"
                let _3_slot := var_globalData_18880_slot
                let expr_18893_slot := _3_slot
                /// @src 75:2429:2448  "globalData.validate"
                let expr_18895_self_slot := expr_18893_slot
                /// @src 75:2449:2456  "_pairId"
                let _4 := var__pairId_18882
                let expr_18896 := _4
                fun_validate_19348(expr_18895_self_slot, expr_18896)
                /// @src 75:2509:2516  "_amount"
                let _5 := var__amount_18884
                let expr_18900 := _5
                /// @src 75:2519:2520  "0"
                let expr_18901 := 0x00
                /// @src 75:2509:2520  "_amount > 0"
                let expr_18902 := gt(cleanup_t_uint256(expr_18900), convert_t_rational_0_by_1_to_t_uint256(expr_18901))
                /// @src 75:2501:2527  "require(_amount > 0, \"AZ\")"
                require_helper_t_stringliteral_5644e38f028c780ab1d5009e6a6b7c4c0f8f5620e140e3273ba11a586a0edbeb(expr_18902)
                /// @src 75:2590:2606  "ApplyInterestLib"
                let expr_18906_address := linkersymbol("src/libraries/ApplyInterestLib.sol:ApplyInterestLib")
                /// @src 75:2629:2639  "globalData"
                let _6_slot := var_globalData_18880_slot
                let expr_18909_slot := _6_slot
                /// @src 75:2629:2645  "globalData.pairs"
                let _7 := add(expr_18909_slot, 3)
                let _8_slot := _7
                let expr_18910_slot := _8_slot
                /// @src 75:2647:2654  "_pairId"
                let _9 := var__pairId_18882
                let expr_18911 := _9
                fun_applyInterestForToken_33178(expr_18910_slot, expr_18911)
                /// @src 75:2701:2711  "globalData"
                let _10_slot := var_globalData_18880_slot
                let expr_18919_slot := _10_slot
                /// @src 75:2701:2717  "globalData.pairs"
                let _11 := add(expr_18919_slot, 3)
                let _12_slot := _11
                let expr_18920_slot := _12_slot
                /// @src 75:2718:2725  "_pairId"
                let _13 := var__pairId_18882
                let expr_18921 := _13
                /// @src 75:2701:2726  "globalData.pairs[_pairId]"
                let _14 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_18920_slot,expr_18921)
                let _15_slot := _14
                let expr_18922_slot := _15_slot
                /// @src 75:2666:2726  "DataType.PairStatus storage pair = globalData.pairs[_pairId]"
                let var_pair_18918_slot := convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_storage_ptr(expr_18922_slot)
                /// @src 75:2741:2750  "_isStable"
                let _16 := var__isStable_18886
                let expr_18924 := _16
                /// @src 75:2737:2993  "if (_isStable) {..."
                switch expr_18924
                case 0 {
                    /// @src 75:2959:2963  "pair"
                    let _17_slot := var_pair_18918_slot
                    let expr_18940_slot := _17_slot
                    /// @src 75:2959:2972  "pair.basePool"
                    let _18 := add(expr_18940_slot, 17)
                    let _19_slot := _18
                    let expr_18941_slot := _19_slot
                    /// @src 75:2974:2981  "_amount"
                    let _20 := var__amount_18884
                    let expr_18942 := _20
                    /// @src 75:2934:2982  "burnBondAndTransferToken(pair.basePool, _amount)"
                    let _21_slot := convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(expr_18941_slot)
                    let expr_18943_component_1, expr_18943_component_2 := fun_burnBondAndTransferToken_19012(_21_slot, expr_18942)
                    /// @src 75:2890:2982  "(finalburntAmount, finalWithdrawalAmount) = burnBondAndTransferToken(pair.basePool, _amount)"
                    var_finalWithdrawalAmount_18891 := expr_18943_component_2
                    var_finalburntAmount_18889 := expr_18943_component_1
                    /// @src 75:2737:2993  "if (_isStable) {..."
                }
                default {
                    /// @src 75:2835:2839  "pair"
                    let _22_slot := var_pair_18918_slot
                    let expr_18929_slot := _22_slot
                    /// @src 75:2835:2849  "pair.quotePool"
                    let _23 := add(expr_18929_slot, 3)
                    let _24_slot := _23
                    let expr_18930_slot := _24_slot
                    /// @src 75:2851:2858  "_amount"
                    let _25 := var__amount_18884
                    let expr_18931 := _25
                    /// @src 75:2810:2859  "burnBondAndTransferToken(pair.quotePool, _amount)"
                    let _26_slot := convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(expr_18930_slot)
                    let expr_18932_component_1, expr_18932_component_2 := fun_burnBondAndTransferToken_19012(_26_slot, expr_18931)
                    /// @src 75:2766:2859  "(finalburntAmount, finalWithdrawalAmount) = burnBondAndTransferToken(pair.quotePool, _amount)"
                    var_finalWithdrawalAmount_18891 := expr_18932_component_2
                    var_finalburntAmount_18889 := expr_18932_component_1
                    /// @src 75:2737:2993  "if (_isStable) {..."
                }
                /// @src 75:3023:3033  "msg.sender"
                let expr_18950 := caller()
                /// @src 75:3035:3039  "pair"
                let _27_slot := var_pair_18918_slot
                let expr_18951_slot := _27_slot
                /// @src 75:3035:3042  "pair.id"
                let _28 := add(expr_18951_slot, 0)
                let _29 := read_from_storage_split_offset_0_t_uint256(_28)
                let expr_18952 := _29
                /// @src 75:3044:3053  "_isStable"
                let _30 := var__isStable_18886
                let expr_18953 := _30
                /// @src 75:3055:3076  "finalWithdrawalAmount"
                let _31 := var_finalWithdrawalAmount_18891
                let expr_18954 := _31
                /// @src 75:3008:3077  "TokenWithdrawn(msg.sender, pair.id, _isStable, finalWithdrawalAmount)"
                let _32 := 0x4552628e9efbea549e3385d93e12304846e4267e23a5e7996d75bbb46248a5e5
                let _33 := convert_t_address_to_t_address(expr_18950)
                {
                    let _34 := allocate_unbounded()
                    let _35 := abi_encode_tuple_t_uint256_t_bool_t_uint256__to_t_uint256_t_bool_t_uint256__fromStack(_34 , expr_18952, expr_18953, expr_18954)
                    log2(_34, sub(_35, _34) , _32, _33)
                }
            }
            /// @src 75:563:3653  "library SupplyLogic {..."

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            /// @ast-id 18834
            /// @src 75:958:1796  "function supply(GlobalDataLibrary.GlobalData storage globalData, uint256 _pairId, uint256 _amount, bool _isStable)..."
            function fun_supply_18834(var_globalData_18759_slot, var__pairId_18761, var__amount_18763, var__isStable_18765) -> var_mintAmount_18768 {
                /// @src 75:1107:1125  "uint256 mintAmount"
                let zero_t_uint256_36 := zero_value_for_split_t_uint256()
                var_mintAmount_18768 := zero_t_uint256_36

                /// @src 75:1171:1181  "globalData"
                let _37_slot := var_globalData_18759_slot
                let expr_18770_slot := _37_slot
                /// @src 75:1171:1190  "globalData.validate"
                let expr_18772_self_slot := expr_18770_slot
                /// @src 75:1191:1198  "_pairId"
                let _38 := var__pairId_18761
                let expr_18773 := _38
                fun_validate_19348(expr_18772_self_slot, expr_18773)
                /// @src 75:1247:1254  "_amount"
                let _39 := var__amount_18763
                let expr_18776 := _39
                /// @src 75:1258:1259  "0"
                let expr_18777 := 0x00
                /// @src 75:1247:1259  "_amount <= 0"
                let expr_18778 := iszero(gt(cleanup_t_uint256(expr_18776), convert_t_rational_0_by_1_to_t_uint256(expr_18777)))
                /// @src 75:1243:1319  "if (_amount <= 0) {..."
                if expr_18778 {
                    /// @src 75:1282:1308  "IPredyPool.InvalidAmount()"
                    {

                        let _41 := 0

                        mstore(_41, 0x2c5211c600000000000000000000000000000000000000000000000000000000)
                        let _40 := abi_encode_tuple__to__fromStack(add(_41, 4) )
                        revert(_41, sub(_40, _41))
                    }/// @src 75:1243:1319  "if (_amount <= 0) {..."
                }
                /// @src 75:1381:1397  "ApplyInterestLib"
                let expr_18786_address := linkersymbol("src/libraries/ApplyInterestLib.sol:ApplyInterestLib")
                /// @src 75:1420:1430  "globalData"
                let _42_slot := var_globalData_18759_slot
                let expr_18789_slot := _42_slot
                /// @src 75:1420:1436  "globalData.pairs"
                let _43 := add(expr_18789_slot, 3)
                let _44_slot := _43
                let expr_18790_slot := _44_slot
                /// @src 75:1438:1445  "_pairId"
                let _45 := var__pairId_18761
                let expr_18791 := _45
                fun_applyInterestForToken_33178(expr_18790_slot, expr_18791)
                /// @src 75:1492:1502  "globalData"
                let _46_slot := var_globalData_18759_slot
                let expr_18799_slot := _46_slot
                /// @src 75:1492:1508  "globalData.pairs"
                let _47 := add(expr_18799_slot, 3)
                let _48_slot := _47
                let expr_18800_slot := _48_slot
                /// @src 75:1509:1516  "_pairId"
                let _49 := var__pairId_18761
                let expr_18801 := _49
                /// @src 75:1492:1517  "globalData.pairs[_pairId]"
                let _50 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_18800_slot,expr_18801)
                let _51_slot := _50
                let expr_18802_slot := _51_slot
                /// @src 75:1457:1517  "DataType.PairStatus storage pair = globalData.pairs[_pairId]"
                let var_pair_18798_slot := convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_storage_ptr(expr_18802_slot)
                /// @src 75:1532:1541  "_isStable"
                let _52 := var__isStable_18765
                let expr_18804 := _52
                /// @src 75:1528:1720  "if (_isStable) {..."
                switch expr_18804
                case 0 {
                    /// @src 75:1686:1690  "pair"
                    let _53_slot := var_pair_18798_slot
                    let expr_18816_slot := _53_slot
                    /// @src 75:1686:1699  "pair.basePool"
                    let _54 := add(expr_18816_slot, 17)
                    let _55_slot := _54
                    let expr_18817_slot := _55_slot
                    /// @src 75:1701:1708  "_amount"
                    let _56 := var__amount_18763
                    let expr_18818 := _56
                    /// @src 75:1662:1709  "receiveTokenAndMintBond(pair.basePool, _amount)"
                    let _57_slot := convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(expr_18817_slot)
                    let expr_18819 := fun_receiveTokenAndMintBond_18877(_57_slot, expr_18818)
                    /// @src 75:1649:1709  "mintAmount = receiveTokenAndMintBond(pair.basePool, _amount)"
                    var_mintAmount_18768 := expr_18819
                    let expr_18820 := expr_18819
                    /// @src 75:1528:1720  "if (_isStable) {..."
                }
                default {
                    /// @src 75:1594:1598  "pair"
                    let _58_slot := var_pair_18798_slot
                    let expr_18807_slot := _58_slot
                    /// @src 75:1594:1608  "pair.quotePool"
                    let _59 := add(expr_18807_slot, 3)
                    let _60_slot := _59
                    let expr_18808_slot := _60_slot
                    /// @src 75:1610:1617  "_amount"
                    let _61 := var__amount_18763
                    let expr_18809 := _61
                    /// @src 75:1570:1618  "receiveTokenAndMintBond(pair.quotePool, _amount)"
                    let _62_slot := convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(expr_18808_slot)
                    let expr_18810 := fun_receiveTokenAndMintBond_18877(_62_slot, expr_18809)
                    /// @src 75:1557:1618  "mintAmount = receiveTokenAndMintBond(pair.quotePool, _amount)"
                    var_mintAmount_18768 := expr_18810
                    let expr_18811 := expr_18810
                    /// @src 75:1528:1720  "if (_isStable) {..."
                }
                /// @src 75:1749:1759  "msg.sender"
                let expr_18826 := caller()
                /// @src 75:1761:1765  "pair"
                let _63_slot := var_pair_18798_slot
                let expr_18827_slot := _63_slot
                /// @src 75:1761:1768  "pair.id"
                let _64 := add(expr_18827_slot, 0)
                let _65 := read_from_storage_split_offset_0_t_uint256(_64)
                let expr_18828 := _65
                /// @src 75:1770:1779  "_isStable"
                let _66 := var__isStable_18765
                let expr_18829 := _66
                /// @src 75:1781:1788  "_amount"
                let _67 := var__amount_18763
                let expr_18830 := _67
                /// @src 75:1735:1789  "TokenSupplied(msg.sender, pair.id, _isStable, _amount)"
                let _68 := 0xffca5fd7979dabcafa42b1682ffcf411e56c3078d7ef612d0cf745dc9437651b
                let _69 := convert_t_address_to_t_address(expr_18826)
                {
                    let _70 := allocate_unbounded()
                    let _71 := abi_encode_tuple_t_uint256_t_bool_t_uint256__to_t_uint256_t_bool_t_uint256__fromStack(_70 , expr_18828, expr_18829, expr_18830)
                    log2(_70, sub(_71, _70) , _68, _69)
                }
            }
            /// @src 75:563:3653  "library SupplyLogic {..."

            /// @ast-id 19348
            /// @src 81:1104:1303  "function validate(GlobalDataLibrary.GlobalData storage globalData, uint256 pairId) internal view {..."
            function fun_validate_19348(var_globalData_19328_slot, var_pairId_19330) {

                /// @src 81:1215:1221  "pairId"
                let _72 := var_pairId_19330
                let expr_19333 := _72
                /// @src 81:1225:1226  "0"
                let expr_19334 := 0x00
                /// @src 81:1215:1226  "pairId <= 0"
                let expr_19335 := iszero(gt(cleanup_t_uint256(expr_19333), convert_t_rational_0_by_1_to_t_uint256(expr_19334)))
                /// @src 81:1215:1261  "pairId <= 0 || globalData.pairsCount <= pairId"
                let expr_19340 := expr_19335
                if iszero(expr_19340) {
                    /// @src 81:1230:1240  "globalData"
                    let _73_slot := var_globalData_19328_slot
                    let expr_19336_slot := _73_slot
                    /// @src 81:1230:1251  "globalData.pairsCount"
                    let _74 := add(expr_19336_slot, 0)
                    let _75 := read_from_storage_split_offset_0_t_uint256(_74)
                    let expr_19337 := _75
                    /// @src 81:1255:1261  "pairId"
                    let _76 := var_pairId_19330
                    let expr_19338 := _76
                    /// @src 81:1230:1261  "globalData.pairsCount <= pairId"
                    let expr_19339 := iszero(gt(cleanup_t_uint256(expr_19337), cleanup_t_uint256(expr_19338)))
                    /// @src 81:1215:1261  "pairId <= 0 || globalData.pairsCount <= pairId"
                    expr_19340 := expr_19339
                }
                /// @src 81:1211:1296  "if (pairId <= 0 || globalData.pairsCount <= pairId) revert IPredyPool.InvalidPairId()"
                if expr_19340 {
                    /// @src 81:1270:1296  "IPredyPool.InvalidPairId()"
                    {

                        let _78 := 0

                        mstore(_78, 0xa8c399e500000000000000000000000000000000000000000000000000000000)
                        let _77 := abi_encode_tuple__to__fromStack(add(_78, 4) )
                        revert(_78, sub(_77, _78))
                    }/// @src 81:1211:1296  "if (pairId <= 0 || globalData.pairsCount <= pairId) revert IPredyPool.InvalidPairId()"
                }

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

            function convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(value) -> converted {
                converted := value
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

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function write_to_memory_t_address(memPtr, value) {
                mstore(memPtr, cleanup_t_address(value))
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

            /// @ast-id 33178
            /// @src 56:607:1615  "function applyInterestForToken(mapping(uint256 => DataType.PairStatus) storage pairs, uint256 pairId) internal {..."
            function fun_applyInterestForToken_33178(var_pairs_33103_slot, var_pairId_33105) {

                /// @src 56:769:774  "pairs"
                let _79_slot := var_pairs_33103_slot
                let expr_33113_slot := _79_slot
                /// @src 56:775:781  "pairId"
                let _80 := var_pairId_33105
                let expr_33114 := _80
                /// @src 56:769:782  "pairs[pairId]"
                let _81 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_PairStatus_$6102_storage_$_of_t_uint256(expr_33113_slot,expr_33114)
                let _82_slot := _81
                let expr_33115_slot := _82_slot
                /// @src 56:728:782  "DataType.PairStatus storage pairStatus = pairs[pairId]"
                let var_pairStatus_33112_slot := convert_t_struct$_PairStatus_$6102_storage_to_t_struct$_PairStatus_$6102_storage_ptr(expr_33115_slot)
                /// @src 56:793:797  "Perp"
                let expr_33117_address := linkersymbol("src/libraries/Perp.sol:Perp")
                /// @src 56:824:830  "pairId"
                let _83 := var_pairId_33105
                let expr_33120 := _83
                /// @src 56:832:842  "pairStatus"
                let _84_slot := var_pairStatus_33112_slot
                let expr_33121_slot := _84_slot
                /// @src 56:832:858  "pairStatus.sqrtAssetStatus"
                let _85 := add(expr_33121_slot, 33)
                let _86_slot := _85
                let expr_33122_slot := _86_slot
                /// @src 56:793:859  "Perp.updateFeeAndPremiumGrowth(pairId, pairStatus.sqrtAssetStatus)"
                let _87_slot := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_to_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr(expr_33122_slot)
                fun_updateFeeAndPremiumGrowth_14485(expr_33120, _87_slot)
                /// @src 56:947:957  "pairStatus"
                let _88_slot := var_pairStatus_33112_slot
                let expr_33125_slot := _88_slot
                /// @src 56:947:977  "pairStatus.lastUpdateTimestamp"
                let _89 := add(expr_33125_slot, 51)
                let _90 := read_from_storage_split_offset_0_t_uint256(_89)
                let expr_33126 := _90
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
                let _91_slot := var_pairStatus_33112_slot
                let expr_33136_slot := _91_slot
                /// @src 56:1107:1127  "pairStatus.quotePool"
                let _92 := add(expr_33136_slot, 3)
                let _93_slot := _92
                let expr_33137_slot := _93_slot
                /// @src 56:1129:1139  "pairStatus"
                let _94_slot := var_pairStatus_33112_slot
                let expr_33138_slot := _94_slot
                /// @src 56:1129:1159  "pairStatus.lastUpdateTimestamp"
                let _95 := add(expr_33138_slot, 51)
                let _96 := read_from_storage_split_offset_0_t_uint256(_95)
                let expr_33139 := _96
                /// @src 56:1161:1171  "pairStatus"
                let _97_slot := var_pairStatus_33112_slot
                let expr_33140_slot := _97_slot
                /// @src 56:1161:1180  "pairStatus.feeRatio"
                let _98 := add(expr_33140_slot, 50)
                let _99 := read_from_storage_split_offset_22_t_uint8(_98)
                let expr_33141 := _99
                /// @src 56:1080:1181  "applyInterestForPoolStatus(pairStatus.quotePool, pairStatus.lastUpdateTimestamp, pairStatus.feeRatio)"
                let _100_slot := convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(expr_33137_slot)
                let expr_33142 := fun_applyInterestForPoolStatus_33255(_100_slot, expr_33139, expr_33141)
                /// @src 56:1039:1181  "uint256 interestRateStable =..."
                let var_interestRateStable_33134 := expr_33142
                /// @src 56:1264:1274  "pairStatus"
                let _101_slot := var_pairStatus_33112_slot
                let expr_33147_slot := _101_slot
                /// @src 56:1264:1283  "pairStatus.basePool"
                let _102 := add(expr_33147_slot, 17)
                let _103_slot := _102
                let expr_33148_slot := _103_slot
                /// @src 56:1285:1295  "pairStatus"
                let _104_slot := var_pairStatus_33112_slot
                let expr_33149_slot := _104_slot
                /// @src 56:1285:1315  "pairStatus.lastUpdateTimestamp"
                let _105 := add(expr_33149_slot, 51)
                let _106 := read_from_storage_split_offset_0_t_uint256(_105)
                let expr_33150 := _106
                /// @src 56:1317:1327  "pairStatus"
                let _107_slot := var_pairStatus_33112_slot
                let expr_33151_slot := _107_slot
                /// @src 56:1317:1336  "pairStatus.feeRatio"
                let _108 := add(expr_33151_slot, 50)
                let _109 := read_from_storage_split_offset_22_t_uint8(_108)
                let expr_33152 := _109
                /// @src 56:1237:1337  "applyInterestForPoolStatus(pairStatus.basePool, pairStatus.lastUpdateTimestamp, pairStatus.feeRatio)"
                let _110_slot := convert_t_struct$_AssetPoolStatus_$13566_storage_to_t_struct$_AssetPoolStatus_$13566_storage_ptr(expr_33148_slot)
                let expr_33153 := fun_applyInterestForPoolStatus_33255(_110_slot, expr_33150, expr_33152)
                /// @src 56:1192:1337  "uint256 interestRateUnderlying =..."
                let var_interestRateUnderlying_33145 := expr_33153
                /// @src 56:1421:1436  "block.timestamp"
                let expr_33159 := timestamp()
                /// @src 56:1388:1398  "pairStatus"
                let _111_slot := var_pairStatus_33112_slot
                let expr_33155_slot := _111_slot
                /// @src 56:1388:1418  "pairStatus.lastUpdateTimestamp"
                let _112 := add(expr_33155_slot, 51)
                /// @src 56:1388:1436  "pairStatus.lastUpdateTimestamp = block.timestamp"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_112, expr_33159)
                let expr_33160 := expr_33159
                /// @src 56:1451:1469  "interestRateStable"
                let _113 := var_interestRateStable_33134
                let expr_33162 := _113
                /// @src 56:1472:1473  "0"
                let expr_33163 := 0x00
                /// @src 56:1451:1473  "interestRateStable > 0"
                let expr_33164 := gt(cleanup_t_uint256(expr_33162), convert_t_rational_0_by_1_to_t_uint256(expr_33163))
                /// @src 56:1451:1503  "interestRateStable > 0 || interestRateUnderlying > 0"
                let expr_33168 := expr_33164
                if iszero(expr_33168) {
                    /// @src 56:1477:1499  "interestRateUnderlying"
                    let _114 := var_interestRateUnderlying_33145
                    let expr_33165 := _114
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
                    let _115_slot := var_pairStatus_33112_slot
                    let expr_33170_slot := _115_slot
                    /// @src 56:1555:1573  "interestRateStable"
                    let _116 := var_interestRateStable_33134
                    let expr_33171 := _116
                    /// @src 56:1575:1597  "interestRateUnderlying"
                    let _117 := var_interestRateUnderlying_33145
                    let expr_33172 := _117
                    /// @src 56:1519:1598  "emitInterestGrowthEvent(pairStatus, interestRateStable, interestRateUnderlying)"
                    let _118_mpos := convert_t_struct$_PairStatus_$6102_storage_ptr_to_t_struct$_PairStatus_$6102_memory_ptr(expr_33170_slot)
                    fun_emitInterestGrowthEvent_33279(_118_mpos, expr_33171, expr_33172)
                    /// @src 56:1447:1609  "if (interestRateStable > 0 || interestRateUnderlying > 0) {..."
                }

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

            function convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(value) -> converted {
                converted := value
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

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            function convert_t_uint160_to_t_contract$_ISupplyToken_$2184(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_ISupplyToken_$2184(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_ISupplyToken_$2184(value)
            }

            function convert_t_contract$_ISupplyToken_$2184_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_decode_tuple__fromMemory(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

            }

            /// @ast-id 19012
            /// @src 75:3090:3651  "function burnBondAndTransferToken(Perp.AssetPoolStatus storage _pool, uint256 _amount)..."
            function fun_burnBondAndTransferToken_19012(var__pool_18961_slot, var__amount_18963) -> var_finalburntAmount_18966, var_finalWithdrawalAmount_18968 {
                /// @src 75:3211:3235  "uint256 finalburntAmount"
                let zero_t_uint256_119 := zero_value_for_split_t_uint256()
                var_finalburntAmount_18966 := zero_t_uint256_119
                /// @src 75:3237:3266  "uint256 finalWithdrawalAmount"
                let zero_t_uint256_120 := zero_value_for_split_t_uint256()
                var_finalWithdrawalAmount_18968 := zero_t_uint256_120

                /// @src 75:3311:3316  "_pool"
                let _121_slot := var__pool_18961_slot
                let expr_18972_slot := _121_slot
                /// @src 75:3311:3335  "_pool.supplyTokenAddress"
                let _122 := add(expr_18972_slot, 1)
                let _123 := read_from_storage_split_offset_0_t_address(_122)
                let expr_18973 := _123
                /// @src 75:3282:3335  "address supplyTokenAddress = _pool.supplyTokenAddress"
                let var_supplyTokenAddress_18971 := expr_18973
                /// @src 75:3402:3407  "_pool"
                let _124_slot := var__pool_18961_slot
                let expr_18978_slot := _124_slot
                /// @src 75:3402:3419  "_pool.tokenStatus"
                let _125 := add(expr_18978_slot, 2)
                let _126_slot := _125
                let expr_18979_slot := _126_slot
                /// @src 75:3402:3431  "_pool.tokenStatus.removeAsset"
                let expr_18980_self_slot := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(expr_18979_slot)
                /// @src 75:3438:3456  "supplyTokenAddress"
                let _127 := var_supplyTokenAddress_18971
                let expr_18982 := _127
                /// @src 75:3432:3457  "ERC20(supplyTokenAddress)"
                let expr_18983_address := convert_t_address_to_t_contract$_ERC20_$13305(expr_18982)
                /// @src 75:3432:3467  "ERC20(supplyTokenAddress).balanceOf"
                let expr_18984_address := convert_t_contract$_ERC20_$13305_to_t_address(expr_18983_address)
                let expr_18984_functionSelector := 0x70a08231
                /// @src 75:3468:3478  "msg.sender"
                let expr_18986 := caller()
                /// @src 75:3432:3479  "ERC20(supplyTokenAddress).balanceOf(msg.sender)"

                // storage for arguments and returned data
                let _128 := allocate_unbounded()
                mstore(_128, shift_left_224(expr_18984_functionSelector))
                let _129 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_128, 4) , expr_18986)

                let _130 := staticcall(gas(), expr_18984_address,  _128, sub(_129, _128), _128, 32)

                if iszero(_130) { revert_forward_1() }

                let expr_18987
                if _130 {

                    let _131 := 32

                    if gt(_131, returndatasize()) {
                        _131 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_128, _131)

                    // decode return parameters from external try-call into retVars
                    expr_18987 :=  abi_decode_tuple_t_uint256_fromMemory(_128, add(_128, _131))
                }
                /// @src 75:3481:3488  "_amount"
                let _132 := var__amount_18963
                let expr_18988 := _132
                /// @src 75:3402:3489  "_pool.tokenStatus.removeAsset(ERC20(supplyTokenAddress).balanceOf(msg.sender), _amount)"
                let expr_18989_component_1, expr_18989_component_2 := fun_removeAsset_31095(expr_18980_self_slot, expr_18987, expr_18988)
                /// @src 75:3346:3489  "(finalburntAmount, finalWithdrawalAmount) =..."
                var_finalWithdrawalAmount_18968 := expr_18989_component_2
                var_finalburntAmount_18966 := expr_18989_component_1
                /// @src 75:3513:3531  "supplyTokenAddress"
                let _133 := var_supplyTokenAddress_18971
                let expr_18993 := _133
                /// @src 75:3500:3532  "ISupplyToken(supplyTokenAddress)"
                let expr_18994_address := convert_t_address_to_t_contract$_ISupplyToken_$2184(expr_18993)
                /// @src 75:3500:3537  "ISupplyToken(supplyTokenAddress).burn"
                let expr_18995_address := convert_t_contract$_ISupplyToken_$2184_to_t_address(expr_18994_address)
                let expr_18995_functionSelector := 0x9dc29fac
                /// @src 75:3538:3548  "msg.sender"
                let expr_18997 := caller()
                /// @src 75:3550:3566  "finalburntAmount"
                let _134 := var_finalburntAmount_18966
                let expr_18998 := _134
                /// @src 75:3500:3567  "ISupplyToken(supplyTokenAddress).burn(msg.sender, finalburntAmount)"

                if iszero(extcodesize(expr_18995_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _135 := allocate_unbounded()
                mstore(_135, shift_left_224(expr_18995_functionSelector))
                let _136 := abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(add(_135, 4) , expr_18997, expr_18998)

                let _137 := call(gas(), expr_18995_address,  0,  _135, sub(_136, _135), _135, 0)

                if iszero(_137) { revert_forward_1() }

                if _137 {

                    let _138 := 0

                    if gt(_138, returndatasize()) {
                        _138 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_135, _138)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_135, add(_135, _138))
                }
                /// @src 75:3584:3589  "_pool"
                let _139_slot := var__pool_18961_slot
                let expr_19002_slot := _139_slot
                /// @src 75:3584:3595  "_pool.token"
                let _140 := add(expr_19002_slot, 0)
                let _141 := read_from_storage_split_offset_0_t_address(_140)
                let expr_19003 := _141
                /// @src 75:3578:3596  "ERC20(_pool.token)"
                let expr_19004_address := convert_t_address_to_t_contract$_ERC20_$13305(expr_19003)
                /// @src 75:3578:3609  "ERC20(_pool.token).safeTransfer"
                let expr_19005_self_address := expr_19004_address
                /// @src 75:3610:3620  "msg.sender"
                let expr_19007 := caller()
                /// @src 75:3622:3643  "finalWithdrawalAmount"
                let _142 := var_finalWithdrawalAmount_18968
                let expr_19008 := _142
                fun_safeTransfer_13369(expr_19005_self_address, expr_19007, expr_19008)

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

            function convert_t_contract$_SupplyLogic_$19013_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            /// @ast-id 18877
            /// @src 75:1802:2171  "function receiveTokenAndMintBond(Perp.AssetPoolStatus storage _pool, uint256 _amount)..."
            function fun_receiveTokenAndMintBond_18877(var__pool_18837_slot, var__amount_18839) -> var_mintAmount_18842 {
                /// @src 75:1922:1940  "uint256 mintAmount"
                let zero_t_uint256_143 := zero_value_for_split_t_uint256()
                var_mintAmount_18842 := zero_t_uint256_143

                /// @src 75:1969:1974  "_pool"
                let _144_slot := var__pool_18837_slot
                let expr_18845_slot := _144_slot
                /// @src 75:1969:1986  "_pool.tokenStatus"
                let _145 := add(expr_18845_slot, 2)
                let _146_slot := _145
                let expr_18846_slot := _146_slot
                /// @src 75:1969:1995  "_pool.tokenStatus.addAsset"
                let expr_18847_self_slot := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(expr_18846_slot)
                /// @src 75:1996:2003  "_amount"
                let _147 := var__amount_18839
                let expr_18848 := _147
                /// @src 75:1969:2004  "_pool.tokenStatus.addAsset(_amount)"
                let expr_18849 := fun_addAsset_31013(expr_18847_self_slot, expr_18848)
                /// @src 75:1956:2004  "mintAmount = _pool.tokenStatus.addAsset(_amount)"
                var_mintAmount_18842 := expr_18849
                let expr_18850 := expr_18849
                /// @src 75:2021:2026  "_pool"
                let _148_slot := var__pool_18837_slot
                let expr_18853_slot := _148_slot
                /// @src 75:2021:2032  "_pool.token"
                let _149 := add(expr_18853_slot, 0)
                let _150 := read_from_storage_split_offset_0_t_address(_149)
                let expr_18854 := _150
                /// @src 75:2015:2033  "ERC20(_pool.token)"
                let expr_18855_address := convert_t_address_to_t_contract$_ERC20_$13305(expr_18854)
                /// @src 75:2015:2050  "ERC20(_pool.token).safeTransferFrom"
                let expr_18856_self_address := expr_18855_address
                /// @src 75:2051:2061  "msg.sender"
                let expr_18858 := caller()
                /// @src 75:2071:2075  "this"
                let expr_18861_address := address()
                /// @src 75:2063:2076  "address(this)"
                let expr_18862 := convert_t_contract$_SupplyLogic_$19013_to_t_address(expr_18861_address)
                /// @src 75:2078:2085  "_amount"
                let _151 := var__amount_18839
                let expr_18863 := _151
                fun_safeTransferFrom_13349(expr_18856_self_address, expr_18858, expr_18862, expr_18863)
                /// @src 75:2110:2115  "_pool"
                let _152_slot := var__pool_18837_slot
                let expr_18867_slot := _152_slot
                /// @src 75:2110:2134  "_pool.supplyTokenAddress"
                let _153 := add(expr_18867_slot, 1)
                let _154 := read_from_storage_split_offset_0_t_address(_153)
                let expr_18868 := _154
                /// @src 75:2097:2135  "ISupplyToken(_pool.supplyTokenAddress)"
                let expr_18869_address := convert_t_address_to_t_contract$_ISupplyToken_$2184(expr_18868)
                /// @src 75:2097:2140  "ISupplyToken(_pool.supplyTokenAddress).mint"
                let expr_18870_address := convert_t_contract$_ISupplyToken_$2184_to_t_address(expr_18869_address)
                let expr_18870_functionSelector := 0x40c10f19
                /// @src 75:2141:2151  "msg.sender"
                let expr_18872 := caller()
                /// @src 75:2153:2163  "mintAmount"
                let _155 := var_mintAmount_18842
                let expr_18873 := _155
                /// @src 75:2097:2164  "ISupplyToken(_pool.supplyTokenAddress).mint(msg.sender, mintAmount)"

                if iszero(extcodesize(expr_18870_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _156 := allocate_unbounded()
                mstore(_156, shift_left_224(expr_18870_functionSelector))
                let _157 := abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(add(_156, 4) , expr_18872, expr_18873)

                let _158 := call(gas(), expr_18870_address,  0,  _156, sub(_157, _156), _156, 0)

                if iszero(_158) { revert_forward_1() }

                if _158 {

                    let _159 := 0

                    if gt(_159, returndatasize()) {
                        _159 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_156, _159)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_156, add(_156, _159))
                }

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

            function wrapping_sub_t_uint256(x, y) -> diff {
                diff := cleanup_t_uint256(sub(x, y))
            }

            function convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(value)

            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
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

            function cleanup_t_rational_1000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000_by_1(value)))
            }

            function panic_error_0x12() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x12)
                revert(0, 0x24)
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
                let _160_slot := var__assetStatus_14327_slot
                let expr_14330_slot := _160_slot
                /// @src 61:13132:13156  "_assetStatus.totalAmount"
                let _161 := add(expr_14330_slot, 2)
                let _162 := read_from_storage_split_offset_0_t_uint256(_161)
                let expr_14331 := _162
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
                let _163_slot := var__assetStatus_14327_slot
                let expr_14343_slot := _163_slot
                /// @src 61:13308:13332  "_assetStatus.uniswapPool"
                let _164 := add(expr_14343_slot, 0)
                let _165 := read_from_storage_split_offset_0_t_address(_164)
                let expr_14344 := _165
                /// @src 61:13334:13346  "_assetStatus"
                let _166_slot := var__assetStatus_14327_slot
                let expr_14345_slot := _166_slot
                /// @src 61:13334:13356  "_assetStatus.tickLower"
                let _167 := add(expr_14345_slot, 0)
                let _168 := read_from_storage_split_offset_20_t_int24(_167)
                let expr_14346 := _168
                /// @src 61:13358:13370  "_assetStatus"
                let _169_slot := var__assetStatus_14327_slot
                let expr_14347_slot := _169_slot
                /// @src 61:13358:13380  "_assetStatus.tickUpper"
                let _170 := add(expr_14347_slot, 0)
                let _171 := read_from_storage_split_offset_23_t_int24(_170)
                let expr_14348 := _171
                /// @src 61:13279:13381  "UniHelper.getFeeGrowthInside(_assetStatus.uniswapPool, _assetStatus.tickLower, _assetStatus.tickUpper)"
                let expr_14349_component_1, expr_14349_component_2 := fun_getFeeGrowthInside_16941(expr_14344, expr_14346, expr_14348)
                /// @src 61:13204:13381  "(uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) =..."
                let var_feeGrowthInside0X128_14338 := expr_14349_component_1
                let var_feeGrowthInside1X128_14340 := expr_14349_component_2
                /// @src 61:13392:13402  "uint256 f0"
                let var_f0_14352
                let zero_t_uint256_172 := zero_value_for_split_t_uint256()
                var_f0_14352 := zero_t_uint256_172
                /// @src 61:13412:13422  "uint256 f1"
                let var_f1_14355
                let zero_t_uint256_173 := zero_value_for_split_t_uint256()
                var_f1_14355 := zero_t_uint256_173
                /// @src 61:13522:13542  "feeGrowthInside0X128"
                let _174 := var_feeGrowthInside0X128_14338
                let expr_14358 := _174
                /// @src 61:13545:13557  "_assetStatus"
                let _175_slot := var__assetStatus_14327_slot
                let expr_14359_slot := _175_slot
                /// @src 61:13545:13572  "_assetStatus.lastFee0Growth"
                let _176 := add(expr_14359_slot, 5)
                let _177 := read_from_storage_split_offset_0_t_uint256(_176)
                let expr_14360 := _177
                /// @src 61:13522:13572  "feeGrowthInside0X128 - _assetStatus.lastFee0Growth"
                let expr_14361 := wrapping_sub_t_uint256(expr_14358, expr_14360)

                /// @src 61:13517:13572  "f0 = feeGrowthInside0X128 - _assetStatus.lastFee0Growth"
                var_f0_14352 := expr_14361
                let expr_14362 := expr_14361
                /// @src 61:13591:13611  "feeGrowthInside1X128"
                let _178 := var_feeGrowthInside1X128_14340
                let expr_14365 := _178
                /// @src 61:13614:13626  "_assetStatus"
                let _179_slot := var__assetStatus_14327_slot
                let expr_14366_slot := _179_slot
                /// @src 61:13614:13641  "_assetStatus.lastFee1Growth"
                let _180 := add(expr_14366_slot, 6)
                let _181 := read_from_storage_split_offset_0_t_uint256(_180)
                let expr_14367 := _181
                /// @src 61:13591:13641  "feeGrowthInside1X128 - _assetStatus.lastFee1Growth"
                let expr_14368 := wrapping_sub_t_uint256(expr_14365, expr_14367)

                /// @src 61:13586:13641  "f1 = feeGrowthInside1X128 - _assetStatus.lastFee1Growth"
                var_f1_14355 := expr_14368
                let expr_14369 := expr_14368
                /// @src 61:13666:13668  "f0"
                let _182 := var_f0_14352
                let expr_14372 := _182
                /// @src 61:13672:13673  "0"
                let expr_14373 := 0x00
                /// @src 61:13666:13673  "f0 == 0"
                let expr_14374 := eq(cleanup_t_uint256(expr_14372), convert_t_rational_0_by_1_to_t_uint256(expr_14373))
                /// @src 61:13666:13684  "f0 == 0 && f1 == 0"
                let expr_14378 := expr_14374
                if expr_14378 {
                    /// @src 61:13677:13679  "f1"
                    let _183 := var_f1_14355
                    let expr_14375 := _183
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
                let _184_slot := var__assetStatus_14327_slot
                let expr_14385_slot := _184_slot
                /// @src 61:13749:13782  "getUtilizationRatio(_assetStatus)"
                let _185_mpos := convert_t_struct$_SqrtPerpAssetStatus_$13644_storage_ptr_to_t_struct$_SqrtPerpAssetStatus_$13644_memory_ptr(expr_14385_slot)
                let expr_14386 := fun_getUtilizationRatio_15131(_185_mpos)
                /// @src 61:13727:13782  "uint256 utilization = getUtilizationRatio(_assetStatus)"
                let var_utilization_14383 := expr_14386
                /// @src 61:13815:13832  "PremiumCurveModel"
                let expr_14390_address := linkersymbol("src/libraries/PremiumCurveModel.sol:PremiumCurveModel")
                /// @src 61:13855:13866  "utilization"
                let _186 := var_utilization_14383
                let expr_14392 := _186
                /// @src 61:13815:13867  "PremiumCurveModel.calculatePremiumCurve(utilization)"
                let expr_14393 := fun_calculatePremiumCurve_30359(expr_14392)
                /// @src 61:13793:13867  "uint256 spreadParam = PremiumCurveModel.calculatePremiumCurve(utilization)"
                let var_spreadParam_14389 := expr_14393
                /// @src 61:13905:13913  "FullMath"
                let expr_14398_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 61:13934:13936  "f0"
                let _187 := var_f0_14352
                let expr_14400 := _187
                /// @src 61:13938:13950  "_assetStatus"
                let _188_slot := var__assetStatus_14327_slot
                let expr_14401_slot := _188_slot
                /// @src 61:13938:13962  "_assetStatus.totalAmount"
                let _189 := add(expr_14401_slot, 2)
                let _190 := read_from_storage_split_offset_0_t_uint256(_189)
                let expr_14402 := _190
                /// @src 61:13965:13977  "_assetStatus"
                let _191_slot := var__assetStatus_14327_slot
                let expr_14403_slot := _191_slot
                /// @src 61:13965:13992  "_assetStatus.borrowedAmount"
                let _192 := add(expr_14403_slot, 3)
                let _193 := read_from_storage_split_offset_0_t_uint256(_192)
                let expr_14404 := _193
                /// @src 61:13995:14006  "spreadParam"
                let _194 := var_spreadParam_14389
                let expr_14405 := _194
                /// @src 61:13965:14006  "_assetStatus.borrowedAmount * spreadParam"
                let expr_14406 := checked_mul_t_uint256(expr_14404, expr_14405)

                /// @src 61:14009:14013  "1000"
                let expr_14407 := 0x03e8
                /// @src 61:13965:14013  "_assetStatus.borrowedAmount * spreadParam / 1000"
                let expr_14408 := checked_div_t_uint256(expr_14406, convert_t_rational_1000_by_1_to_t_uint256(expr_14407))

                /// @src 61:13938:14013  "_assetStatus.totalAmount + _assetStatus.borrowedAmount * spreadParam / 1000"
                let expr_14409 := checked_add_t_uint256(expr_14402, expr_14408)

                /// @src 61:14015:14027  "_assetStatus"
                let _195_slot := var__assetStatus_14327_slot
                let expr_14410_slot := _195_slot
                /// @src 61:14015:14039  "_assetStatus.totalAmount"
                let _196 := add(expr_14410_slot, 2)
                let _197 := read_from_storage_split_offset_0_t_uint256(_196)
                let expr_14411 := _197
                /// @src 61:13905:14049  "FullMath.mulDiv(..."
                let expr_14412 := fun_mulDiv_32512(expr_14400, expr_14409, expr_14411)
                /// @src 61:13878:13890  "_assetStatus"
                let _198_slot := var__assetStatus_14327_slot
                let expr_14395_slot := _198_slot
                /// @src 61:13878:13901  "_assetStatus.fee0Growth"
                let _199 := add(expr_14395_slot, 9)
                /// @src 61:13878:14049  "_assetStatus.fee0Growth += FullMath.mulDiv(..."
                let _200 := read_from_storage_split_offset_0_t_uint256(_199)
                let expr_14413 := checked_add_t_uint256(_200, expr_14412)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_199, expr_14413)
                /// @src 61:14086:14094  "FullMath"
                let expr_14418_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 61:14115:14117  "f1"
                let _201 := var_f1_14355
                let expr_14420 := _201
                /// @src 61:14119:14131  "_assetStatus"
                let _202_slot := var__assetStatus_14327_slot
                let expr_14421_slot := _202_slot
                /// @src 61:14119:14143  "_assetStatus.totalAmount"
                let _203 := add(expr_14421_slot, 2)
                let _204 := read_from_storage_split_offset_0_t_uint256(_203)
                let expr_14422 := _204
                /// @src 61:14146:14158  "_assetStatus"
                let _205_slot := var__assetStatus_14327_slot
                let expr_14423_slot := _205_slot
                /// @src 61:14146:14173  "_assetStatus.borrowedAmount"
                let _206 := add(expr_14423_slot, 3)
                let _207 := read_from_storage_split_offset_0_t_uint256(_206)
                let expr_14424 := _207
                /// @src 61:14176:14187  "spreadParam"
                let _208 := var_spreadParam_14389
                let expr_14425 := _208
                /// @src 61:14146:14187  "_assetStatus.borrowedAmount * spreadParam"
                let expr_14426 := checked_mul_t_uint256(expr_14424, expr_14425)

                /// @src 61:14190:14194  "1000"
                let expr_14427 := 0x03e8
                /// @src 61:14146:14194  "_assetStatus.borrowedAmount * spreadParam / 1000"
                let expr_14428 := checked_div_t_uint256(expr_14426, convert_t_rational_1000_by_1_to_t_uint256(expr_14427))

                /// @src 61:14119:14194  "_assetStatus.totalAmount + _assetStatus.borrowedAmount * spreadParam / 1000"
                let expr_14429 := checked_add_t_uint256(expr_14422, expr_14428)

                /// @src 61:14196:14208  "_assetStatus"
                let _209_slot := var__assetStatus_14327_slot
                let expr_14430_slot := _209_slot
                /// @src 61:14196:14220  "_assetStatus.totalAmount"
                let _210 := add(expr_14430_slot, 2)
                let _211 := read_from_storage_split_offset_0_t_uint256(_210)
                let expr_14431 := _211
                /// @src 61:14086:14230  "FullMath.mulDiv(..."
                let expr_14432 := fun_mulDiv_32512(expr_14420, expr_14429, expr_14431)
                /// @src 61:14059:14071  "_assetStatus"
                let _212_slot := var__assetStatus_14327_slot
                let expr_14415_slot := _212_slot
                /// @src 61:14059:14082  "_assetStatus.fee1Growth"
                let _213 := add(expr_14415_slot, 10)
                /// @src 61:14059:14230  "_assetStatus.fee1Growth += FullMath.mulDiv(..."
                let _214 := read_from_storage_split_offset_0_t_uint256(_213)
                let expr_14433 := checked_add_t_uint256(_214, expr_14432)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_213, expr_14433)
                /// @src 61:14278:14286  "FullMath"
                let expr_14438_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 61:14294:14296  "f0"
                let _215 := var_f0_14352
                let expr_14440 := _215
                /// @src 61:14298:14302  "1000"
                let expr_14441 := 0x03e8
                /// @src 61:14305:14316  "spreadParam"
                let _216 := var_spreadParam_14389
                let expr_14442 := _216
                /// @src 61:14298:14316  "1000 + spreadParam"
                let expr_14443 := checked_add_t_uint256(convert_t_rational_1000_by_1_to_t_uint256(expr_14441), expr_14442)

                /// @src 61:14318:14322  "1000"
                let expr_14444 := 0x03e8
                /// @src 61:14278:14323  "FullMath.mulDiv(f0, 1000 + spreadParam, 1000)"
                let _217 := convert_t_rational_1000_by_1_to_t_uint256(expr_14444)
                let expr_14445 := fun_mulDiv_32512(expr_14440, expr_14443, _217)
                /// @src 61:14241:14253  "_assetStatus"
                let _218_slot := var__assetStatus_14327_slot
                let expr_14435_slot := _218_slot
                /// @src 61:14241:14274  "_assetStatus.borrowPremium0Growth"
                let _219 := add(expr_14435_slot, 7)
                /// @src 61:14241:14323  "_assetStatus.borrowPremium0Growth += FullMath.mulDiv(f0, 1000 + spreadParam, 1000)"
                let _220 := read_from_storage_split_offset_0_t_uint256(_219)
                let expr_14446 := checked_add_t_uint256(_220, expr_14445)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_219, expr_14446)
                /// @src 61:14370:14378  "FullMath"
                let expr_14451_address := linkersymbol("lib/v3-core/contracts/libraries/FullMath.sol:FullMath")
                /// @src 61:14386:14388  "f1"
                let _221 := var_f1_14355
                let expr_14453 := _221
                /// @src 61:14390:14394  "1000"
                let expr_14454 := 0x03e8
                /// @src 61:14397:14408  "spreadParam"
                let _222 := var_spreadParam_14389
                let expr_14455 := _222
                /// @src 61:14390:14408  "1000 + spreadParam"
                let expr_14456 := checked_add_t_uint256(convert_t_rational_1000_by_1_to_t_uint256(expr_14454), expr_14455)

                /// @src 61:14410:14414  "1000"
                let expr_14457 := 0x03e8
                /// @src 61:14370:14415  "FullMath.mulDiv(f1, 1000 + spreadParam, 1000)"
                let _223 := convert_t_rational_1000_by_1_to_t_uint256(expr_14457)
                let expr_14458 := fun_mulDiv_32512(expr_14453, expr_14456, _223)
                /// @src 61:14333:14345  "_assetStatus"
                let _224_slot := var__assetStatus_14327_slot
                let expr_14448_slot := _224_slot
                /// @src 61:14333:14366  "_assetStatus.borrowPremium1Growth"
                let _225 := add(expr_14448_slot, 8)
                /// @src 61:14333:14415  "_assetStatus.borrowPremium1Growth += FullMath.mulDiv(f1, 1000 + spreadParam, 1000)"
                let _226 := read_from_storage_split_offset_0_t_uint256(_225)
                let expr_14459 := checked_add_t_uint256(_226, expr_14458)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_225, expr_14459)
                /// @src 61:14456:14476  "feeGrowthInside0X128"
                let _227 := var_feeGrowthInside0X128_14338
                let expr_14464 := _227
                /// @src 61:14426:14438  "_assetStatus"
                let _228_slot := var__assetStatus_14327_slot
                let expr_14461_slot := _228_slot
                /// @src 61:14426:14453  "_assetStatus.lastFee0Growth"
                let _229 := add(expr_14461_slot, 5)
                /// @src 61:14426:14476  "_assetStatus.lastFee0Growth = feeGrowthInside0X128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_229, expr_14464)
                let expr_14465 := expr_14464
                /// @src 61:14516:14536  "feeGrowthInside1X128"
                let _230 := var_feeGrowthInside1X128_14340
                let expr_14470 := _230
                /// @src 61:14486:14498  "_assetStatus"
                let _231_slot := var__assetStatus_14327_slot
                let expr_14467_slot := _231_slot
                /// @src 61:14486:14513  "_assetStatus.lastFee1Growth"
                let _232 := add(expr_14467_slot, 6)
                /// @src 61:14486:14536  "_assetStatus.lastFee1Growth = feeGrowthInside1X128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_232, expr_14470)
                let expr_14471 := expr_14470
                /// @src 61:14573:14580  "_pairId"
                let _233 := var__pairId_14324
                let expr_14474 := _233
                /// @src 61:14582:14594  "_assetStatus"
                let _234_slot := var__assetStatus_14327_slot
                let expr_14475_slot := _234_slot
                /// @src 61:14582:14606  "_assetStatus.totalAmount"
                let _235 := add(expr_14475_slot, 2)
                let _236 := read_from_storage_split_offset_0_t_uint256(_235)
                let expr_14476 := _236
                /// @src 61:14608:14620  "_assetStatus"
                let _237_slot := var__assetStatus_14327_slot
                let expr_14477_slot := _237_slot
                /// @src 61:14608:14635  "_assetStatus.borrowedAmount"
                let _238 := add(expr_14477_slot, 3)
                let _239 := read_from_storage_split_offset_0_t_uint256(_238)
                let expr_14478 := _239
                /// @src 61:14637:14639  "f0"
                let _240 := var_f0_14352
                let expr_14479 := _240
                /// @src 61:14641:14643  "f1"
                let _241 := var_f1_14355
                let expr_14480 := _241
                /// @src 61:14645:14656  "spreadParam"
                let _242 := var_spreadParam_14389
                let expr_14481 := _242
                /// @src 61:14552:14657  "PremiumGrowthUpdated(_pairId, _assetStatus.totalAmount, _assetStatus.borrowedAmount, f0, f1, spreadParam)"
                let _243 := 0x4f3e43e713f947281f0deec9c972d8bed677658e3f98271fbec9a52ca8f79bd7
                let _244 := convert_t_uint256_to_t_uint256(expr_14474)
                {
                    let _245 := allocate_unbounded()
                    let _246 := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__fromStack(_245 , expr_14476, expr_14478, expr_14479, expr_14480, expr_14481)
                    log2(_245, sub(_246, _245) , _243, _244)
                }
            }
            /// @src 75:563:3653  "library SupplyLogic {..."

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
                let zero_t_uint256_247 := zero_value_for_split_t_uint256()
                var_interestRate_33188 := zero_t_uint256_247

                /// @src 56:1812:1827  "block.timestamp"
                let expr_33191 := timestamp()
                /// @src 56:1831:1850  "lastUpdateTimestamp"
                let _248 := var_lastUpdateTimestamp_33183
                let expr_33192 := _248
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
                let _249_slot := var_poolStatus_33181_slot
                let expr_33200_slot := _249_slot
                /// @src 56:1922:1944  "poolStatus.tokenStatus"
                let _250 := add(expr_33200_slot, 2)
                let _251_slot := _250
                let expr_33201_slot := _251_slot
                /// @src 56:1922:1964  "poolStatus.tokenStatus.getUtilizationRatio"
                let expr_33202_self_mpos := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_33201_slot)
                /// @src 56:1922:1966  "poolStatus.tokenStatus.getUtilizationRatio()"
                let expr_33203 := fun_getUtilizationRatio_31668(expr_33202_self_mpos)
                /// @src 56:1895:1966  "uint256 utilizationRatio = poolStatus.tokenStatus.getUtilizationRatio()"
                let var_utilizationRatio_33199 := expr_33203
                /// @src 56:2044:2060  "utilizationRatio"
                let _252 := var_utilizationRatio_33199
                let expr_33205 := _252
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
                let _253_slot := var_poolStatus_33181_slot
                let expr_33215_slot := _253_slot
                /// @src 56:2201:2221  "poolStatus.irmParams"
                let _254 := add(expr_33215_slot, 8)
                let _255_slot := _254
                let expr_33216_slot := _255_slot
                /// @src 56:2223:2239  "utilizationRatio"
                let _256 := var_utilizationRatio_33199
                let expr_33217 := _256
                /// @src 56:2161:2240  "InterestRateModel.calculateInterestRate(poolStatus.irmParams, utilizationRatio)"
                let _257_mpos := convert_t_struct$_IRMParams_$13447_storage_to_t_struct$_IRMParams_$13447_memory_ptr(expr_33216_slot)
                let expr_33218 := fun_calculateInterestRate_13510(_257_mpos, expr_33217)
                /// @src 56:2256:2271  "block.timestamp"
                let expr_33220 := timestamp()
                /// @src 56:2274:2293  "lastUpdateTimestamp"
                let _258 := var_lastUpdateTimestamp_33183
                let expr_33221 := _258
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
                let _259_slot := var_poolStatus_33181_slot
                let expr_33231_slot := _259_slot
                /// @src 56:2343:2365  "poolStatus.tokenStatus"
                let _260 := add(expr_33231_slot, 2)
                let _261_slot := _260
                let expr_33232_slot := _261_slot
                /// @src 56:2343:2378  "poolStatus.tokenStatus.updateScaler"
                let expr_33233_self_slot := convert_t_struct$_AssetStatus_$30934_storage_to_t_struct$_AssetStatus_$30934_storage_ptr(expr_33232_slot)
                /// @src 56:2379:2391  "interestRate"
                let _262 := var_interestRate_33188
                let expr_33234 := _262
                /// @src 56:2393:2396  "fee"
                let _263 := var_fee_33185
                let expr_33235 := _263
                /// @src 56:2343:2397  "poolStatus.tokenStatus.updateScaler(interestRate, fee)"
                let expr_33236 := fun_updateScaler_31572(expr_33233_self_slot, expr_33234, expr_33235)
                /// @src 56:2316:2397  "uint256 totalProtocolFee = poolStatus.tokenStatus.updateScaler(interestRate, fee)"
                let var_totalProtocolFee_33230 := expr_33236
                /// @src 56:2449:2465  "totalProtocolFee"
                let _264 := var_totalProtocolFee_33230
                let expr_33241 := _264
                /// @src 56:2468:2469  "2"
                let expr_33242 := 0x02
                /// @src 56:2449:2469  "totalProtocolFee / 2"
                let expr_33243 := checked_div_t_uint256(expr_33241, convert_t_rational_2_by_1_to_t_uint256(expr_33242))

                /// @src 56:2408:2418  "poolStatus"
                let _265_slot := var_poolStatus_33181_slot
                let expr_33238_slot := _265_slot
                /// @src 56:2408:2445  "poolStatus.accumulatedProtocolRevenue"
                let _266 := add(expr_33238_slot, 12)
                /// @src 56:2408:2469  "poolStatus.accumulatedProtocolRevenue += totalProtocolFee / 2"
                let _267 := read_from_storage_split_offset_0_t_uint256(_266)
                let expr_33244 := checked_add_t_uint256(_267, expr_33243)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_266, expr_33244)
                /// @src 56:2519:2535  "totalProtocolFee"
                let _268 := var_totalProtocolFee_33230
                let expr_33249 := _268
                /// @src 56:2538:2539  "2"
                let expr_33250 := 0x02
                /// @src 56:2519:2539  "totalProtocolFee / 2"
                let expr_33251 := checked_div_t_uint256(expr_33249, convert_t_rational_2_by_1_to_t_uint256(expr_33250))

                /// @src 56:2479:2489  "poolStatus"
                let _269_slot := var_poolStatus_33181_slot
                let expr_33246_slot := _269_slot
                /// @src 56:2479:2515  "poolStatus.accumulatedCreatorRevenue"
                let _270 := add(expr_33246_slot, 13)
                /// @src 56:2479:2539  "poolStatus.accumulatedCreatorRevenue += totalProtocolFee / 2"
                let _271 := read_from_storage_split_offset_0_t_uint256(_270)
                let expr_33252 := checked_add_t_uint256(_271, expr_33251)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_270, expr_33252)

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

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
                let _272_mpos := var_assetStatus_33258_mpos
                let expr_33266_mpos := _272_mpos
                /// @src 56:2776:2790  "assetStatus.id"
                let _273 := add(expr_33266_mpos, 0)
                let _274 := read_from_memoryt_uint256(_273)
                let expr_33267 := _274
                /// @src 56:2804:2815  "assetStatus"
                let _275_mpos := var_assetStatus_33258_mpos
                let expr_33268_mpos := _275_mpos
                /// @src 56:2804:2825  "assetStatus.quotePool"
                let _276 := add(expr_33268_mpos, 96)
                let _277_mpos := mload(_276)
                let expr_33269_mpos := _277_mpos
                /// @src 56:2804:2837  "assetStatus.quotePool.tokenStatus"
                let _278 := add(expr_33269_mpos, 64)
                let _279_mpos := mload(_278)
                let expr_33270_mpos := _279_mpos
                /// @src 56:2851:2862  "assetStatus"
                let _280_mpos := var_assetStatus_33258_mpos
                let expr_33271_mpos := _280_mpos
                /// @src 56:2851:2871  "assetStatus.basePool"
                let _281 := add(expr_33271_mpos, 128)
                let _282_mpos := mload(_281)
                let expr_33272_mpos := _282_mpos
                /// @src 56:2851:2883  "assetStatus.basePool.tokenStatus"
                let _283 := add(expr_33272_mpos, 64)
                let _284_mpos := mload(_283)
                let expr_33273_mpos := _284_mpos
                /// @src 56:2897:2916  "interestRatioStable"
                let _285 := var_interestRatioStable_33260
                let expr_33274 := _285
                /// @src 56:2930:2953  "interestRatioUnderlying"
                let _286 := var_interestRatioUnderlying_33262
                let expr_33275 := _286
                /// @src 56:2741:2963  "InterestGrowthUpdated(..."
                let _287 := 0x68fec554d30e1515ff9dd8fef00d858620f16c33b61a2ed9cc011e4c0d66b01c
                let _288 := convert_t_uint256_to_t_uint256(expr_33267)
                {
                    let _289 := allocate_unbounded()
                    let _290 := abi_encode_tuple_t_struct$_AssetStatus_$30934_memory_ptr_t_struct$_AssetStatus_$30934_memory_ptr_t_uint256_t_uint256__to_t_struct$_AssetStatus_$30934_memory_ptr_t_struct$_AssetStatus_$30934_memory_ptr_t_uint256_t_uint256__fromStack(_289 , expr_33270_mpos, expr_33273_mpos, expr_33274, expr_33275)
                    log2(_289, sub(_290, _289) , _287, _288)
                }
            }
            /// @src 75:563:3653  "library SupplyLogic {..."

            function store_literal_in_memory_01e0e2e97b79a888bb89fb648778bed90cd74be091e4138f0b551cf413f36f18(memPtr) {

                mstore(add(memPtr, 0), "S3")

            }

            function abi_encode_t_stringliteral_01e0e2e97b79a888bb89fb648778bed90cd74be091e4138f0b551cf413f36f18_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_01e0e2e97b79a888bb89fb648778bed90cd74be091e4138f0b551cf413f36f18(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_01e0e2e97b79a888bb89fb648778bed90cd74be091e4138f0b551cf413f36f18__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_01e0e2e97b79a888bb89fb648778bed90cd74be091e4138f0b551cf413f36f18_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_01e0e2e97b79a888bb89fb648778bed90cd74be091e4138f0b551cf413f36f18(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_01e0e2e97b79a888bb89fb648778bed90cd74be091e4138f0b551cf413f36f18__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function cleanup_t_rational_1000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000000000000000000_by_1(value)))
            }

            /// @src 57:87:123  "uint256 internal constant ONE = 1e18"
            function constant_ONE_30273() -> ret {
                /// @src 57:119:123  "1e18"
                let expr_30272 := 0x0de0b6b3a7640000
                let _296 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_30272)

                ret := _296
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

            /// @ast-id 31095
            /// @src 66:1426:2279  "function removeAsset(AssetStatus storage tokenState, uint256 _supplyTokenAmount, uint256 _amount)..."
            function fun_removeAsset_31095(var_tokenState_31016_slot, var__supplyTokenAmount_31018, var__amount_31020) -> var_finalBurnAmount_31023, var_finalWithdrawAmount_31025 {
                /// @src 66:1558:1581  "uint256 finalBurnAmount"
                let zero_t_uint256_291 := zero_value_for_split_t_uint256()
                var_finalBurnAmount_31023 := zero_t_uint256_291
                /// @src 66:1583:1610  "uint256 finalWithdrawAmount"
                let zero_t_uint256_292 := zero_value_for_split_t_uint256()
                var_finalWithdrawAmount_31025 := zero_t_uint256_292

                /// @src 66:1630:1637  "_amount"
                let _293 := var__amount_31020
                let expr_31027 := _293
                /// @src 66:1641:1642  "0"
                let expr_31028 := 0x00
                /// @src 66:1630:1642  "_amount == 0"
                let expr_31029 := eq(cleanup_t_uint256(expr_31027), convert_t_rational_0_by_1_to_t_uint256(expr_31028))
                /// @src 66:1626:1682  "if (_amount == 0) {..."
                if expr_31029 {
                    /// @src 66:1666:1667  "0"
                    let expr_31030 := 0x00
                    /// @src 66:1665:1671  "(0, 0)"
                    let expr_31032_component_1 := expr_31030
                    /// @src 66:1669:1670  "0"
                    let expr_31031 := 0x00
                    /// @src 66:1665:1671  "(0, 0)"
                    let expr_31032_component_2 := expr_31031
                    /// @src 66:1658:1671  "return (0, 0)"
                    var_finalBurnAmount_31023 := convert_t_rational_0_by_1_to_t_uint256(expr_31032_component_1)
                    var_finalWithdrawAmount_31025 := convert_t_rational_0_by_1_to_t_uint256(expr_31032_component_2)
                    leave
                    /// @src 66:1626:1682  "if (_amount == 0) {..."
                }
                /// @src 66:1700:1718  "_supplyTokenAmount"
                let _294 := var__supplyTokenAmount_31018
                let expr_31037 := _294
                /// @src 66:1721:1722  "0"
                let expr_31038 := 0x00
                /// @src 66:1700:1722  "_supplyTokenAmount > 0"
                let expr_31039 := gt(cleanup_t_uint256(expr_31037), convert_t_rational_0_by_1_to_t_uint256(expr_31038))
                /// @src 66:1692:1729  "require(_supplyTokenAmount > 0, \"S3\")"
                require_helper_t_stringliteral_01e0e2e97b79a888bb89fb648778bed90cd74be091e4138f0b551cf413f36f18(expr_31039)
                /// @src 66:1761:1778  "FixedPointMathLib"
                let expr_31045_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:1790:1797  "_amount"
                let _295 := var__amount_31020
                let expr_31047 := _295
                /// @src 66:1799:1808  "Constants"
                let expr_31048_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:1799:1812  "Constants.ONE"
                let expr_31049 := constant_ONE_30273()
                /// @src 66:1814:1824  "tokenState"
                let _297_slot := var_tokenState_31016_slot
                let expr_31050_slot := _297_slot
                /// @src 66:1814:1836  "tokenState.assetScaler"
                let _298 := add(expr_31050_slot, 3)
                let _299 := read_from_storage_split_offset_0_t_uint256(_298)
                let expr_31051 := _299
                /// @src 66:1761:1837  "FixedPointMathLib.mulDivDown(_amount, Constants.ONE, tokenState.assetScaler)"
                let expr_31052 := fun_mulDivDown_36976(expr_31047, expr_31049, expr_31051)
                /// @src 66:1740:1837  "uint256 burnAmount = FixedPointMathLib.mulDivDown(_amount, Constants.ONE, tokenState.assetScaler)"
                let var_burnAmount_31044 := expr_31052
                /// @src 66:1852:1870  "_supplyTokenAmount"
                let _300 := var__supplyTokenAmount_31018
                let expr_31054 := _300
                /// @src 66:1873:1883  "burnAmount"
                let _301 := var_burnAmount_31044
                let expr_31055 := _301
                /// @src 66:1852:1883  "_supplyTokenAmount < burnAmount"
                let expr_31056 := lt(cleanup_t_uint256(expr_31054), cleanup_t_uint256(expr_31055))
                /// @src 66:1848:2005  "if (_supplyTokenAmount < burnAmount) {..."
                switch expr_31056
                case 0 {
                    /// @src 66:1984:1994  "burnAmount"
                    let _302 := var_burnAmount_31044
                    let expr_31063 := _302
                    /// @src 66:1966:1994  "finalBurnAmount = burnAmount"
                    var_finalBurnAmount_31023 := expr_31063
                    let expr_31064 := expr_31063
                    /// @src 66:1848:2005  "if (_supplyTokenAmount < burnAmount) {..."
                }
                default {
                    /// @src 66:1917:1935  "_supplyTokenAmount"
                    let _303 := var__supplyTokenAmount_31018
                    let expr_31058 := _303
                    /// @src 66:1899:1935  "finalBurnAmount = _supplyTokenAmount"
                    var_finalBurnAmount_31023 := expr_31058
                    let expr_31059 := expr_31058
                    /// @src 66:1848:2005  "if (_supplyTokenAmount < burnAmount) {..."
                }
                /// @src 66:2037:2054  "FixedPointMathLib"
                let expr_31069_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:2066:2081  "finalBurnAmount"
                let _304 := var_finalBurnAmount_31023
                let expr_31071 := _304
                /// @src 66:2083:2093  "tokenState"
                let _305_slot := var_tokenState_31016_slot
                let expr_31072_slot := _305_slot
                /// @src 66:2083:2105  "tokenState.assetScaler"
                let _306 := add(expr_31072_slot, 3)
                let _307 := read_from_storage_split_offset_0_t_uint256(_306)
                let expr_31073 := _307
                /// @src 66:2107:2116  "Constants"
                let expr_31074_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:2107:2120  "Constants.ONE"
                let expr_31075 := constant_ONE_30273()
                /// @src 66:2037:2121  "FixedPointMathLib.mulDivDown(finalBurnAmount, tokenState.assetScaler, Constants.ONE)"
                let expr_31076 := fun_mulDivDown_36976(expr_31071, expr_31073, expr_31075)
                /// @src 66:2015:2121  "finalWithdrawAmount = FixedPointMathLib.mulDivDown(finalBurnAmount, tokenState.assetScaler, Constants.ONE)"
                var_finalWithdrawAmount_31025 := expr_31076
                let expr_31077 := expr_31076
                /// @src 66:2168:2178  "tokenState"
                let _308_slot := var_tokenState_31016_slot
                let expr_31081_slot := _308_slot
                /// @src 66:2140:2179  "getAvailableCollateralValue(tokenState)"
                let _309_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31081_slot)
                let expr_31082 := fun_getAvailableCollateralValue_31623(_309_mpos)
                /// @src 66:2183:2202  "finalWithdrawAmount"
                let _310 := var_finalWithdrawAmount_31025
                let expr_31083 := _310
                /// @src 66:2140:2202  "getAvailableCollateralValue(tokenState) >= finalWithdrawAmount"
                let expr_31084 := iszero(lt(cleanup_t_uint256(expr_31082), cleanup_t_uint256(expr_31083)))
                /// @src 66:2132:2209  "require(getAvailableCollateralValue(tokenState) >= finalWithdrawAmount, \"S0\")"
                require_helper_t_stringliteral_ee59f4ed6369731f984a173139e4b68cb3b2efb80cd22d9b1bbfa6e0a94af1c1(expr_31084)
                /// @src 66:2257:2272  "finalBurnAmount"
                let _311 := var_finalBurnAmount_31023
                let expr_31091 := _311
                /// @src 66:2220:2230  "tokenState"
                let _312_slot := var_tokenState_31016_slot
                let expr_31088_slot := _312_slot
                /// @src 66:2220:2253  "tokenState.totalCompoundDeposited"
                let _313 := add(expr_31088_slot, 0)
                /// @src 66:2220:2272  "tokenState.totalCompoundDeposited -= finalBurnAmount"
                let _314 := read_from_storage_split_offset_0_t_uint256(_313)
                let expr_31092 := checked_sub_t_uint256(_314, expr_31091)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_313, expr_31092)

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
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
                let zero_t_bool_315 := zero_value_for_split_t_bool()
                var_success_13360 := zero_t_bool_315
                /// @src 14:3294:4671  "assembly {..."
                {
                    let usr$freeMemoryPointer := mload(0x40)
                    mstore(usr$freeMemoryPointer, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
                    mstore(add(usr$freeMemoryPointer, 4), and(var_to_13354, 0xffffffffffffffffffffffffffffffffffffffff))
                    mstore(add(usr$freeMemoryPointer, 36), var_amount_13356)
                    var_success_13360 := and(or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())), call(gas(), var_token_13352_address, 0, usr$freeMemoryPointer, 68, 0, 32))
                }
                /// @src 14:4689:4696  "success"
                let _316 := var_success_13360
                let expr_13364 := _316
                /// @src 14:4681:4716  "require(success, \"TRANSFER_FAILED\")"
                require_helper_t_stringliteral_8bf8f0d780f13740660fe63233b17f96cb1813889e7dce4121e55b817b367b72(expr_13364)

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

            /// @ast-id 31013
            /// @src 66:1087:1420  "function addAsset(AssetStatus storage tokenState, uint256 _amount) internal returns (uint256 claimAmount) {..."
            function fun_addAsset_31013(var_tokenState_30981_slot, var__amount_30983) -> var_claimAmount_30986 {
                /// @src 66:1172:1191  "uint256 claimAmount"
                let zero_t_uint256_317 := zero_value_for_split_t_uint256()
                var_claimAmount_30986 := zero_t_uint256_317

                /// @src 66:1207:1214  "_amount"
                let _318 := var__amount_30983
                let expr_30988 := _318
                /// @src 66:1218:1219  "0"
                let expr_30989 := 0x00
                /// @src 66:1207:1219  "_amount == 0"
                let expr_30990 := eq(cleanup_t_uint256(expr_30988), convert_t_rational_0_by_1_to_t_uint256(expr_30989))
                /// @src 66:1203:1254  "if (_amount == 0) {..."
                if expr_30990 {
                    /// @src 66:1242:1243  "0"
                    let expr_30991 := 0x00
                    /// @src 66:1235:1243  "return 0"
                    var_claimAmount_30986 := convert_t_rational_0_by_1_to_t_uint256(expr_30991)
                    leave
                    /// @src 66:1203:1254  "if (_amount == 0) {..."
                }
                /// @src 66:1278:1295  "FixedPointMathLib"
                let expr_30996_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:1307:1314  "_amount"
                let _319 := var__amount_30983
                let expr_30998 := _319
                /// @src 66:1316:1325  "Constants"
                let expr_30999_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:1316:1329  "Constants.ONE"
                let expr_31000 := constant_ONE_30273()
                /// @src 66:1331:1341  "tokenState"
                let _320_slot := var_tokenState_30981_slot
                let expr_31001_slot := _320_slot
                /// @src 66:1331:1353  "tokenState.assetScaler"
                let _321 := add(expr_31001_slot, 3)
                let _322 := read_from_storage_split_offset_0_t_uint256(_321)
                let expr_31002 := _322
                /// @src 66:1278:1354  "FixedPointMathLib.mulDivDown(_amount, Constants.ONE, tokenState.assetScaler)"
                let expr_31003 := fun_mulDivDown_36976(expr_30998, expr_31000, expr_31002)
                /// @src 66:1264:1354  "claimAmount = FixedPointMathLib.mulDivDown(_amount, Constants.ONE, tokenState.assetScaler)"
                var_claimAmount_30986 := expr_31003
                let expr_31004 := expr_31003
                /// @src 66:1402:1413  "claimAmount"
                let _323 := var_claimAmount_30986
                let expr_31009 := _323
                /// @src 66:1365:1375  "tokenState"
                let _324_slot := var_tokenState_30981_slot
                let expr_31006_slot := _324_slot
                /// @src 66:1365:1398  "tokenState.totalCompoundDeposited"
                let _325 := add(expr_31006_slot, 0)
                /// @src 66:1365:1413  "tokenState.totalCompoundDeposited += claimAmount"
                let _326 := read_from_storage_split_offset_0_t_uint256(_325)
                let expr_31010 := checked_add_t_uint256(_326, expr_31009)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_325, expr_31010)

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

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
                let zero_t_bool_327 := zero_value_for_split_t_bool()
                var_success_13340 := zero_t_bool_327
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
                let _328 := var_success_13340
                let expr_13344 := _328
                /// @src 14:3063:3103  "require(success, \"TRANSFER_FROM_FAILED\")"
                require_helper_t_stringliteral_77631768048ee92f9dcf4b9b9d762877d6b9723214862c733f0596708fc219b7(expr_13344)

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

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
                let zero_t_uint256_329 := zero_value_for_split_t_uint256()
                var_feeGrowthInside0X128_16807 := zero_t_uint256_329
                /// @src 69:3619:3647  "uint256 feeGrowthInside1X128"
                let zero_t_uint256_330 := zero_value_for_split_t_uint256()
                var_feeGrowthInside1X128_16809 := zero_t_uint256_330

                /// @src 69:3707:3725  "uniswapPoolAddress"
                let _331 := var_uniswapPoolAddress_16800
                let expr_16814 := _331
                /// @src 69:3692:3726  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16815_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16814)
                /// @src 69:3692:3732  "IUniswapV3Pool(uniswapPoolAddress).slot0"
                let expr_16816_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16815_address)
                let expr_16816_functionSelector := 0x3850c7bd
                /// @src 69:3692:3734  "IUniswapV3Pool(uniswapPoolAddress).slot0()"

                // storage for arguments and returned data
                let _332 := allocate_unbounded()
                mstore(_332, shift_left_224(expr_16816_functionSelector))
                let _333 := abi_encode_tuple__to__fromStack(add(_332, 4) )

                let _334 := staticcall(gas(), expr_16816_address,  _332, sub(_333, _332), _332, 224)

                if iszero(_334) { revert_forward_1() }

                let expr_16817_component_1, expr_16817_component_2, expr_16817_component_3, expr_16817_component_4, expr_16817_component_5, expr_16817_component_6, expr_16817_component_7
                if _334 {

                    let _335 := 224

                    if gt(_335, returndatasize()) {
                        _335 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_332, _335)

                    // decode return parameters from external try-call into retVars
                    expr_16817_component_1, expr_16817_component_2, expr_16817_component_3, expr_16817_component_4, expr_16817_component_5, expr_16817_component_6, expr_16817_component_7 :=  abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(_332, add(_332, _335))
                }
                /// @src 69:3663:3734  "(, int24 tickCurrent,,,,,) = IUniswapV3Pool(uniswapPoolAddress).slot0()"
                let var_tickCurrent_16812 := expr_16817_component_2
                /// @src 69:3791:3809  "uniswapPoolAddress"
                let _336 := var_uniswapPoolAddress_16800
                let expr_16822 := _336
                /// @src 69:3776:3810  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16823_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16822)
                /// @src 69:3776:3831  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal0X128"
                let expr_16824_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16823_address)
                let expr_16824_functionSelector := 0xf3058399
                /// @src 69:3776:3833  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal0X128()"

                // storage for arguments and returned data
                let _337 := allocate_unbounded()
                mstore(_337, shift_left_224(expr_16824_functionSelector))
                let _338 := abi_encode_tuple__to__fromStack(add(_337, 4) )

                let _339 := staticcall(gas(), expr_16824_address,  _337, sub(_338, _337), _337, 32)

                if iszero(_339) { revert_forward_1() }

                let expr_16825
                if _339 {

                    let _340 := 32

                    if gt(_340, returndatasize()) {
                        _340 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_337, _340)

                    // decode return parameters from external try-call into retVars
                    expr_16825 :=  abi_decode_tuple_t_uint256_fromMemory(_337, add(_337, _340))
                }
                /// @src 69:3745:3833  "uint256 feeGrowthGlobal0X128 = IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal0X128()"
                let var_feeGrowthGlobal0X128_16820 := expr_16825
                /// @src 69:3889:3907  "uniswapPoolAddress"
                let _341 := var_uniswapPoolAddress_16800
                let expr_16830 := _341
                /// @src 69:3874:3908  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16831_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16830)
                /// @src 69:3874:3929  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal1X128"
                let expr_16832_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16831_address)
                let expr_16832_functionSelector := 0x46141319
                /// @src 69:3874:3931  "IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal1X128()"

                // storage for arguments and returned data
                let _342 := allocate_unbounded()
                mstore(_342, shift_left_224(expr_16832_functionSelector))
                let _343 := abi_encode_tuple__to__fromStack(add(_342, 4) )

                let _344 := staticcall(gas(), expr_16832_address,  _342, sub(_343, _342), _342, 32)

                if iszero(_344) { revert_forward_1() }

                let expr_16833
                if _344 {

                    let _345 := 32

                    if gt(_345, returndatasize()) {
                        _345 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_342, _345)

                    // decode return parameters from external try-call into retVars
                    expr_16833 :=  abi_decode_tuple_t_uint256_fromMemory(_342, add(_342, _345))
                }
                /// @src 69:3843:3931  "uint256 feeGrowthGlobal1X128 = IUniswapV3Pool(uniswapPoolAddress).feeGrowthGlobal1X128()"
                let var_feeGrowthGlobal1X128_16828 := expr_16833
                /// @src 69:3980:4007  "uint256 feeGrowthBelow0X128"
                let var_feeGrowthBelow0X128_16836
                let zero_t_uint256_346 := zero_value_for_split_t_uint256()
                var_feeGrowthBelow0X128_16836 := zero_t_uint256_346
                /// @src 69:4017:4044  "uint256 feeGrowthBelow1X128"
                let var_feeGrowthBelow1X128_16839
                let zero_t_uint256_347 := zero_value_for_split_t_uint256()
                var_feeGrowthBelow1X128_16839 := zero_t_uint256_347
                /// @src 69:4214:4232  "uniswapPoolAddress"
                let _348 := var_uniswapPoolAddress_16800
                let expr_16846 := _348
                /// @src 69:4199:4233  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16847_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16846)
                /// @src 69:4199:4239  "IUniswapV3Pool(uniswapPoolAddress).ticks"
                let expr_16848_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16847_address)
                let expr_16848_functionSelector := 0xf30dba93
                /// @src 69:4240:4249  "tickLower"
                let _349 := var_tickLower_16802
                let expr_16849 := _349
                /// @src 69:4199:4250  "IUniswapV3Pool(uniswapPoolAddress).ticks(tickLower)"

                // storage for arguments and returned data
                let _350 := allocate_unbounded()
                mstore(_350, shift_left_224(expr_16848_functionSelector))
                let _351 := abi_encode_tuple_t_int24__to_t_int24__fromStack(add(_350, 4) , expr_16849)

                let _352 := staticcall(gas(), expr_16848_address,  _350, sub(_351, _350), _350, 256)

                if iszero(_352) { revert_forward_1() }

                let expr_16850_component_1, expr_16850_component_2, expr_16850_component_3, expr_16850_component_4, expr_16850_component_5, expr_16850_component_6, expr_16850_component_7, expr_16850_component_8
                if _352 {

                    let _353 := 256

                    if gt(_353, returndatasize()) {
                        _353 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_350, _353)

                    // decode return parameters from external try-call into retVars
                    expr_16850_component_1, expr_16850_component_2, expr_16850_component_3, expr_16850_component_4, expr_16850_component_5, expr_16850_component_6, expr_16850_component_7, expr_16850_component_8 :=  abi_decode_tuple_t_uint128t_int128t_uint256t_uint256t_int56t_uint160t_uint32t_bool_fromMemory(_350, add(_350, _353))
                }
                /// @src 69:4097:4250  "(,, uint256 lowerFeeGrowthOutside0X128, uint256 lowerFeeGrowthOutside1X128,,,,) =..."
                let var_lowerFeeGrowthOutside0X128_16842 := expr_16850_component_3
                let var_lowerFeeGrowthOutside1X128_16844 := expr_16850_component_4
                /// @src 69:4273:4284  "tickCurrent"
                let _354 := var_tickCurrent_16812
                let expr_16852 := _354
                /// @src 69:4288:4297  "tickLower"
                let _355 := var_tickLower_16802
                let expr_16853 := _355
                /// @src 69:4273:4297  "tickCurrent >= tickLower"
                let expr_16854 := iszero(slt(cleanup_t_int24(expr_16852), cleanup_t_int24(expr_16853)))
                /// @src 69:4269:4669  "if (tickCurrent >= tickLower) {..."
                switch expr_16854
                case 0 {
                    /// @src 69:4508:4528  "feeGrowthGlobal0X128"
                    let _356 := var_feeGrowthGlobal0X128_16820
                    let expr_16865 := _356
                    /// @src 69:4531:4557  "lowerFeeGrowthOutside0X128"
                    let _357 := var_lowerFeeGrowthOutside0X128_16842
                    let expr_16866 := _357
                    /// @src 69:4508:4557  "feeGrowthGlobal0X128 - lowerFeeGrowthOutside0X128"
                    let expr_16867 := wrapping_sub_t_uint256(expr_16865, expr_16866)

                    /// @src 69:4486:4557  "feeGrowthBelow0X128 = feeGrowthGlobal0X128 - lowerFeeGrowthOutside0X128"
                    var_feeGrowthBelow0X128_16836 := expr_16867
                    let expr_16868 := expr_16867
                    /// @src 69:4601:4621  "feeGrowthGlobal1X128"
                    let _358 := var_feeGrowthGlobal1X128_16828
                    let expr_16871 := _358
                    /// @src 69:4624:4650  "lowerFeeGrowthOutside1X128"
                    let _359 := var_lowerFeeGrowthOutside1X128_16844
                    let expr_16872 := _359
                    /// @src 69:4601:4650  "feeGrowthGlobal1X128 - lowerFeeGrowthOutside1X128"
                    let expr_16873 := wrapping_sub_t_uint256(expr_16871, expr_16872)

                    /// @src 69:4579:4650  "feeGrowthBelow1X128 = feeGrowthGlobal1X128 - lowerFeeGrowthOutside1X128"
                    var_feeGrowthBelow1X128_16839 := expr_16873
                    let expr_16874 := expr_16873
                    /// @src 69:4269:4669  "if (tickCurrent >= tickLower) {..."
                }
                default {
                    /// @src 69:4343:4369  "lowerFeeGrowthOutside0X128"
                    let _360 := var_lowerFeeGrowthOutside0X128_16842
                    let expr_16856 := _360
                    /// @src 69:4321:4369  "feeGrowthBelow0X128 = lowerFeeGrowthOutside0X128"
                    var_feeGrowthBelow0X128_16836 := expr_16856
                    let expr_16857 := expr_16856
                    /// @src 69:4413:4439  "lowerFeeGrowthOutside1X128"
                    let _361 := var_lowerFeeGrowthOutside1X128_16844
                    let expr_16860 := _361
                    /// @src 69:4391:4439  "feeGrowthBelow1X128 = lowerFeeGrowthOutside1X128"
                    var_feeGrowthBelow1X128_16839 := expr_16860
                    let expr_16861 := expr_16860
                    /// @src 69:4269:4669  "if (tickCurrent >= tickLower) {..."
                }
                /// @src 69:4739:4766  "uint256 feeGrowthAbove0X128"
                let var_feeGrowthAbove0X128_16880
                let zero_t_uint256_362 := zero_value_for_split_t_uint256()
                var_feeGrowthAbove0X128_16880 := zero_t_uint256_362
                /// @src 69:4780:4807  "uint256 feeGrowthAbove1X128"
                let var_feeGrowthAbove1X128_16883
                let zero_t_uint256_363 := zero_value_for_split_t_uint256()
                var_feeGrowthAbove1X128_16883 := zero_t_uint256_363
                /// @src 69:4957:4975  "uniswapPoolAddress"
                let _364 := var_uniswapPoolAddress_16800
                let expr_16890 := _364
                /// @src 69:4942:4976  "IUniswapV3Pool(uniswapPoolAddress)"
                let expr_16891_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$13422(expr_16890)
                /// @src 69:4942:4982  "IUniswapV3Pool(uniswapPoolAddress).ticks"
                let expr_16892_address := convert_t_contract$_IUniswapV3Pool_$13422_to_t_address(expr_16891_address)
                let expr_16892_functionSelector := 0xf30dba93
                /// @src 69:4983:4992  "tickUpper"
                let _365 := var_tickUpper_16804
                let expr_16893 := _365
                /// @src 69:4942:4993  "IUniswapV3Pool(uniswapPoolAddress).ticks(tickUpper)"

                // storage for arguments and returned data
                let _366 := allocate_unbounded()
                mstore(_366, shift_left_224(expr_16892_functionSelector))
                let _367 := abi_encode_tuple_t_int24__to_t_int24__fromStack(add(_366, 4) , expr_16893)

                let _368 := staticcall(gas(), expr_16892_address,  _366, sub(_367, _366), _366, 256)

                if iszero(_368) { revert_forward_1() }

                let expr_16894_component_1, expr_16894_component_2, expr_16894_component_3, expr_16894_component_4, expr_16894_component_5, expr_16894_component_6, expr_16894_component_7, expr_16894_component_8
                if _368 {

                    let _369 := 256

                    if gt(_369, returndatasize()) {
                        _369 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_366, _369)

                    // decode return parameters from external try-call into retVars
                    expr_16894_component_1, expr_16894_component_2, expr_16894_component_3, expr_16894_component_4, expr_16894_component_5, expr_16894_component_6, expr_16894_component_7, expr_16894_component_8 :=  abi_decode_tuple_t_uint128t_int128t_uint256t_uint256t_int56t_uint160t_uint32t_bool_fromMemory(_366, add(_366, _369))
                }
                /// @src 69:4840:4993  "(,, uint256 upperFeeGrowthOutside0X128, uint256 upperFeeGrowthOutside1X128,,,,) =..."
                let var_upperFeeGrowthOutside0X128_16886 := expr_16894_component_3
                let var_upperFeeGrowthOutside1X128_16888 := expr_16894_component_4
                /// @src 69:5016:5027  "tickCurrent"
                let _370 := var_tickCurrent_16812
                let expr_16896 := _370
                /// @src 69:5030:5039  "tickUpper"
                let _371 := var_tickUpper_16804
                let expr_16897 := _371
                /// @src 69:5016:5039  "tickCurrent < tickUpper"
                let expr_16898 := slt(cleanup_t_int24(expr_16896), cleanup_t_int24(expr_16897))
                /// @src 69:5012:5411  "if (tickCurrent < tickUpper) {..."
                switch expr_16898
                case 0 {
                    /// @src 69:5250:5270  "feeGrowthGlobal0X128"
                    let _372 := var_feeGrowthGlobal0X128_16820
                    let expr_16909 := _372
                    /// @src 69:5273:5299  "upperFeeGrowthOutside0X128"
                    let _373 := var_upperFeeGrowthOutside0X128_16886
                    let expr_16910 := _373
                    /// @src 69:5250:5299  "feeGrowthGlobal0X128 - upperFeeGrowthOutside0X128"
                    let expr_16911 := wrapping_sub_t_uint256(expr_16909, expr_16910)

                    /// @src 69:5228:5299  "feeGrowthAbove0X128 = feeGrowthGlobal0X128 - upperFeeGrowthOutside0X128"
                    var_feeGrowthAbove0X128_16880 := expr_16911
                    let expr_16912 := expr_16911
                    /// @src 69:5343:5363  "feeGrowthGlobal1X128"
                    let _374 := var_feeGrowthGlobal1X128_16828
                    let expr_16915 := _374
                    /// @src 69:5366:5392  "upperFeeGrowthOutside1X128"
                    let _375 := var_upperFeeGrowthOutside1X128_16888
                    let expr_16916 := _375
                    /// @src 69:5343:5392  "feeGrowthGlobal1X128 - upperFeeGrowthOutside1X128"
                    let expr_16917 := wrapping_sub_t_uint256(expr_16915, expr_16916)

                    /// @src 69:5321:5392  "feeGrowthAbove1X128 = feeGrowthGlobal1X128 - upperFeeGrowthOutside1X128"
                    var_feeGrowthAbove1X128_16883 := expr_16917
                    let expr_16918 := expr_16917
                    /// @src 69:5012:5411  "if (tickCurrent < tickUpper) {..."
                }
                default {
                    /// @src 69:5085:5111  "upperFeeGrowthOutside0X128"
                    let _376 := var_upperFeeGrowthOutside0X128_16886
                    let expr_16900 := _376
                    /// @src 69:5063:5111  "feeGrowthAbove0X128 = upperFeeGrowthOutside0X128"
                    var_feeGrowthAbove0X128_16880 := expr_16900
                    let expr_16901 := expr_16900
                    /// @src 69:5155:5181  "upperFeeGrowthOutside1X128"
                    let _377 := var_upperFeeGrowthOutside1X128_16888
                    let expr_16904 := _377
                    /// @src 69:5133:5181  "feeGrowthAbove1X128 = upperFeeGrowthOutside1X128"
                    var_feeGrowthAbove1X128_16883 := expr_16904
                    let expr_16905 := expr_16904
                    /// @src 69:5012:5411  "if (tickCurrent < tickUpper) {..."
                }
                /// @src 69:5462:5482  "feeGrowthGlobal0X128"
                let _378 := var_feeGrowthGlobal0X128_16820
                let expr_16924 := _378
                /// @src 69:5485:5504  "feeGrowthBelow0X128"
                let _379 := var_feeGrowthBelow0X128_16836
                let expr_16925 := _379
                /// @src 69:5462:5504  "feeGrowthGlobal0X128 - feeGrowthBelow0X128"
                let expr_16926 := wrapping_sub_t_uint256(expr_16924, expr_16925)

                /// @src 69:5507:5526  "feeGrowthAbove0X128"
                let _380 := var_feeGrowthAbove0X128_16880
                let expr_16927 := _380
                /// @src 69:5462:5526  "feeGrowthGlobal0X128 - feeGrowthBelow0X128 - feeGrowthAbove0X128"
                let expr_16928 := wrapping_sub_t_uint256(expr_16926, expr_16927)

                /// @src 69:5439:5526  "feeGrowthInside0X128 = feeGrowthGlobal0X128 - feeGrowthBelow0X128 - feeGrowthAbove0X128"
                var_feeGrowthInside0X128_16807 := expr_16928
                let expr_16929 := expr_16928
                /// @src 69:5563:5583  "feeGrowthGlobal1X128"
                let _381 := var_feeGrowthGlobal1X128_16828
                let expr_16932 := _381
                /// @src 69:5586:5605  "feeGrowthBelow1X128"
                let _382 := var_feeGrowthBelow1X128_16839
                let expr_16933 := _382
                /// @src 69:5563:5605  "feeGrowthGlobal1X128 - feeGrowthBelow1X128"
                let expr_16934 := wrapping_sub_t_uint256(expr_16932, expr_16933)

                /// @src 69:5608:5627  "feeGrowthAbove1X128"
                let _383 := var_feeGrowthAbove1X128_16883
                let expr_16935 := _383
                /// @src 69:5563:5627  "feeGrowthGlobal1X128 - feeGrowthBelow1X128 - feeGrowthAbove1X128"
                let expr_16936 := wrapping_sub_t_uint256(expr_16934, expr_16935)

                /// @src 69:5540:5627  "feeGrowthInside1X128 = feeGrowthGlobal1X128 - feeGrowthBelow1X128 - feeGrowthAbove1X128"
                var_feeGrowthInside1X128_16809 := expr_16936
                let expr_16937 := expr_16936

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

            /// @ast-id 15131
            /// @src 61:21806:22194  "function getUtilizationRatio(SqrtPerpAssetStatus memory _assetStatus) internal pure returns (uint256) {..."
            function fun_getUtilizationRatio_15131(var__assetStatus_15097_mpos) -> var__15100 {
                /// @src 61:21899:21906  "uint256"
                let zero_t_uint256_384 := zero_value_for_split_t_uint256()
                var__15100 := zero_t_uint256_384

                /// @src 61:21922:21934  "_assetStatus"
                let _385_mpos := var__assetStatus_15097_mpos
                let expr_15102_mpos := _385_mpos
                /// @src 61:21922:21946  "_assetStatus.totalAmount"
                let _386 := add(expr_15102_mpos, 128)
                let _387 := read_from_memoryt_uint256(_386)
                let expr_15103 := _387
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
                let _388_mpos := var__assetStatus_15097_mpos
                let expr_15112_mpos := _388_mpos
                /// @src 61:22018:22045  "_assetStatus.borrowedAmount"
                let _389 := add(expr_15112_mpos, 160)
                let _390 := read_from_memoryt_uint256(_389)
                let expr_15113 := _390
                /// @src 61:22048:22057  "Constants"
                let expr_15114_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 61:22048:22061  "Constants.ONE"
                let expr_15115 := constant_ONE_30273()
                /// @src 61:22018:22061  "_assetStatus.borrowedAmount * Constants.ONE"
                let expr_15116 := checked_mul_t_uint256(expr_15113, expr_15115)

                /// @src 61:22064:22076  "_assetStatus"
                let _391_mpos := var__assetStatus_15097_mpos
                let expr_15117_mpos := _391_mpos
                /// @src 61:22064:22088  "_assetStatus.totalAmount"
                let _392 := add(expr_15117_mpos, 128)
                let _393 := read_from_memoryt_uint256(_392)
                let expr_15118 := _393
                /// @src 61:22018:22088  "_assetStatus.borrowedAmount * Constants.ONE / _assetStatus.totalAmount"
                let expr_15119 := checked_div_t_uint256(expr_15116, expr_15118)

                /// @src 61:21996:22088  "uint256 utilization = _assetStatus.borrowedAmount * Constants.ONE / _assetStatus.totalAmount"
                let var_utilization_15111 := expr_15119
                /// @src 61:22103:22114  "utilization"
                let _394 := var_utilization_15111
                let expr_15121 := _394
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
                let _395 := var_utilization_15111
                let expr_15128 := _395
                /// @src 61:22169:22187  "return utilization"
                var__15100 := expr_15128
                leave

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

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
                let _398 := convert_t_rational_100000000000000000_by_1_to_t_uint256(expr_30316)

                ret := _398
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
                let zero_t_uint256_396 := zero_value_for_split_t_uint256()
                var__30327 := zero_t_uint256_396

                /// @src 64:437:448  "utilization"
                let _397 := var_utilization_30324
                let expr_30329 := _397
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
                let _399 := var_utilization_30324
                let expr_30339 := _399
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
                let _400 := var_b_30338
                let expr_30346 := _400
                /// @src 64:592:600  "1600 * b"
                let expr_30347 := checked_mul_t_uint256(convert_t_rational_1600_by_1_to_t_uint256(expr_30345), expr_30346)

                /// @src 64:603:604  "b"
                let _401 := var_b_30338
                let expr_30348 := _401
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
            /// @src 75:563:3653  "library SupplyLogic {..."

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
                let zero_t_uint256_402 := zero_value_for_split_t_uint256()
                var_result_32393 := zero_t_uint256_402

                /// @src 26:1226:1239  "uint256 prod0"
                let var_prod0_32396
                let zero_t_uint256_403 := zero_value_for_split_t_uint256()
                var_prod0_32396 := zero_t_uint256_403
                /// @src 26:1298:1311  "uint256 prod1"
                let var_prod1_32399
                let zero_t_uint256_404 := zero_value_for_split_t_uint256()
                var_prod1_32399 := zero_t_uint256_404
                /// @src 26:1369:1535  "assembly {..."
                {
                    let usr$mm := mulmod(var_a_32386, var_b_32388, not(0))
                    var_prod0_32396 := mul(var_a_32386, var_b_32388)
                    var_prod1_32399 := sub(sub(usr$mm, var_prod0_32396), lt(usr$mm, var_prod0_32396))
                }
                /// @src 26:1615:1620  "prod1"
                let _405 := var_prod1_32399
                let expr_32402 := _405
                /// @src 26:1624:1625  "0"
                let expr_32403 := 0x00
                /// @src 26:1615:1625  "prod1 == 0"
                let expr_32404 := eq(cleanup_t_uint256(expr_32402), convert_t_rational_0_by_1_to_t_uint256(expr_32403))
                /// @src 26:1611:1814  "if (prod1 == 0) {..."
                if expr_32404 {
                    /// @src 26:1653:1664  "denominator"
                    let _406 := var_denominator_32390
                    let expr_32406 := _406
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
                    let _407 := var_result_32393
                    let expr_32412 := _407
                    /// @src 26:1786:1799  "return result"
                    var_result_32393 := expr_32412
                    leave
                    /// @src 26:1611:1814  "if (prod1 == 0) {..."
                }
                /// @src 26:1939:1950  "denominator"
                let _408 := var_denominator_32390
                let expr_32417 := _408
                /// @src 26:1953:1958  "prod1"
                let _409 := var_prod1_32399
                let expr_32418 := _409
                /// @src 26:1939:1958  "denominator > prod1"
                let expr_32419 := gt(cleanup_t_uint256(expr_32417), cleanup_t_uint256(expr_32418))
                /// @src 26:1931:1959  "require(denominator > prod1)"
                require_helper(expr_32419)
                /// @src 26:2260:2277  "uint256 remainder"
                let var_remainder_32423
                let zero_t_uint256_410 := zero_value_for_split_t_uint256()
                var_remainder_32423 := zero_t_uint256_410
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
                let _411 := var_denominator_32390
                let expr_32430 := _411
                /// @src 26:2752:2767  "0 - denominator"
                let expr_32431 := wrapping_sub_t_uint256(convert_t_rational_0_by_1_to_t_uint256(expr_32429), expr_32430)

                /// @src 26:2751:2768  "(0 - denominator)"
                let expr_32432 := expr_32431
                /// @src 26:2771:2782  "denominator"
                let _412 := var_denominator_32390
                let expr_32433 := _412
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
                let _413 := var_prod1_32399
                let expr_32440 := _413
                /// @src 26:3367:3371  "twos"
                let _414 := var_twos_32428
                let expr_32441 := _414
                /// @src 26:3359:3371  "prod1 * twos"
                let expr_32442 := wrapping_mul_t_uint256(expr_32440, expr_32441)

                /// @src 26:3350:3371  "prod0 |= prod1 * twos"
                let _415 := var_prod0_32396
                let expr_32443 := or(_415, expr_32442)

                var_prod0_32396 := expr_32443
                /// @src 26:3744:3745  "3"
                let expr_32447 := 0x03
                /// @src 26:3748:3759  "denominator"
                let _416 := var_denominator_32390
                let expr_32448 := _416
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
                let _417 := var_denominator_32390
                let expr_32456 := _417
                /// @src 26:4020:4023  "inv"
                let _418 := var_inv_32446
                let expr_32457 := _418
                /// @src 26:4006:4023  "denominator * inv"
                let expr_32458 := wrapping_mul_t_uint256(expr_32456, expr_32457)

                /// @src 26:4002:4023  "2 - denominator * inv"
                let expr_32459 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32455), expr_32458)

                /// @src 26:3995:4023  "inv *= 2 - denominator * inv"
                let _419 := var_inv_32446
                let expr_32460 := wrapping_mul_t_uint256(_419, expr_32459)

                var_inv_32446 := expr_32460
                /// @src 26:4064:4065  "2"
                let expr_32463 := 0x02
                /// @src 26:4068:4079  "denominator"
                let _420 := var_denominator_32390
                let expr_32464 := _420
                /// @src 26:4082:4085  "inv"
                let _421 := var_inv_32446
                let expr_32465 := _421
                /// @src 26:4068:4085  "denominator * inv"
                let expr_32466 := wrapping_mul_t_uint256(expr_32464, expr_32465)

                /// @src 26:4064:4085  "2 - denominator * inv"
                let expr_32467 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32463), expr_32466)

                /// @src 26:4057:4085  "inv *= 2 - denominator * inv"
                let _422 := var_inv_32446
                let expr_32468 := wrapping_mul_t_uint256(_422, expr_32467)

                var_inv_32446 := expr_32468
                /// @src 26:4127:4128  "2"
                let expr_32471 := 0x02
                /// @src 26:4131:4142  "denominator"
                let _423 := var_denominator_32390
                let expr_32472 := _423
                /// @src 26:4145:4148  "inv"
                let _424 := var_inv_32446
                let expr_32473 := _424
                /// @src 26:4131:4148  "denominator * inv"
                let expr_32474 := wrapping_mul_t_uint256(expr_32472, expr_32473)

                /// @src 26:4127:4148  "2 - denominator * inv"
                let expr_32475 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32471), expr_32474)

                /// @src 26:4120:4148  "inv *= 2 - denominator * inv"
                let _425 := var_inv_32446
                let expr_32476 := wrapping_mul_t_uint256(_425, expr_32475)

                var_inv_32446 := expr_32476
                /// @src 26:4190:4191  "2"
                let expr_32479 := 0x02
                /// @src 26:4194:4205  "denominator"
                let _426 := var_denominator_32390
                let expr_32480 := _426
                /// @src 26:4208:4211  "inv"
                let _427 := var_inv_32446
                let expr_32481 := _427
                /// @src 26:4194:4211  "denominator * inv"
                let expr_32482 := wrapping_mul_t_uint256(expr_32480, expr_32481)

                /// @src 26:4190:4211  "2 - denominator * inv"
                let expr_32483 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32479), expr_32482)

                /// @src 26:4183:4211  "inv *= 2 - denominator * inv"
                let _428 := var_inv_32446
                let expr_32484 := wrapping_mul_t_uint256(_428, expr_32483)

                var_inv_32446 := expr_32484
                /// @src 26:4253:4254  "2"
                let expr_32487 := 0x02
                /// @src 26:4257:4268  "denominator"
                let _429 := var_denominator_32390
                let expr_32488 := _429
                /// @src 26:4271:4274  "inv"
                let _430 := var_inv_32446
                let expr_32489 := _430
                /// @src 26:4257:4274  "denominator * inv"
                let expr_32490 := wrapping_mul_t_uint256(expr_32488, expr_32489)

                /// @src 26:4253:4274  "2 - denominator * inv"
                let expr_32491 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32487), expr_32490)

                /// @src 26:4246:4274  "inv *= 2 - denominator * inv"
                let _431 := var_inv_32446
                let expr_32492 := wrapping_mul_t_uint256(_431, expr_32491)

                var_inv_32446 := expr_32492
                /// @src 26:4317:4318  "2"
                let expr_32495 := 0x02
                /// @src 26:4321:4332  "denominator"
                let _432 := var_denominator_32390
                let expr_32496 := _432
                /// @src 26:4335:4338  "inv"
                let _433 := var_inv_32446
                let expr_32497 := _433
                /// @src 26:4321:4338  "denominator * inv"
                let expr_32498 := wrapping_mul_t_uint256(expr_32496, expr_32497)

                /// @src 26:4317:4338  "2 - denominator * inv"
                let expr_32499 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_32495), expr_32498)

                /// @src 26:4310:4338  "inv *= 2 - denominator * inv"
                let _434 := var_inv_32446
                let expr_32500 := wrapping_mul_t_uint256(_434, expr_32499)

                var_inv_32446 := expr_32500
                /// @src 26:4813:4818  "prod0"
                let _435 := var_prod0_32396
                let expr_32503 := _435
                /// @src 26:4821:4824  "inv"
                let _436 := var_inv_32446
                let expr_32504 := _436
                /// @src 26:4813:4824  "prod0 * inv"
                let expr_32505 := wrapping_mul_t_uint256(expr_32503, expr_32504)

                /// @src 26:4804:4824  "result = prod0 * inv"
                var_result_32393 := expr_32505
                let expr_32506 := expr_32505
                /// @src 26:4845:4851  "result"
                let _437 := var_result_32393
                let expr_32508 := _437
                /// @src 26:4838:4851  "return result"
                var_result_32393 := expr_32508
                leave

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

            /// @ast-id 31668
            /// @src 66:7920:8410  "function getUtilizationRatio(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getUtilizationRatio_31668(var_tokenState_31626_mpos) -> var__31629 {
                /// @src 66:8003:8010  "uint256"
                let zero_t_uint256_438 := zero_value_for_split_t_uint256()
                var__31629 := zero_t_uint256_438

                /// @src 66:8026:8036  "tokenState"
                let _439_mpos := var_tokenState_31626_mpos
                let expr_31631_mpos := _439_mpos
                /// @src 66:8026:8059  "tokenState.totalCompoundDeposited"
                let _440 := add(expr_31631_mpos, 0)
                let _441 := read_from_memoryt_uint256(_440)
                let expr_31632 := _441
                /// @src 66:8063:8064  "0"
                let expr_31633 := 0x00
                /// @src 66:8026:8064  "tokenState.totalCompoundDeposited == 0"
                let expr_31634 := eq(cleanup_t_uint256(expr_31632), convert_t_rational_0_by_1_to_t_uint256(expr_31633))
                /// @src 66:8026:8104  "tokenState.totalCompoundDeposited == 0 && tokenState.totalNormalDeposited == 0"
                let expr_31639 := expr_31634
                if expr_31639 {
                    /// @src 66:8068:8078  "tokenState"
                    let _442_mpos := var_tokenState_31626_mpos
                    let expr_31635_mpos := _442_mpos
                    /// @src 66:8068:8099  "tokenState.totalNormalDeposited"
                    let _443 := add(expr_31635_mpos, 32)
                    let _444 := read_from_memoryt_uint256(_443)
                    let expr_31636 := _444
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
                let _445_mpos := var_tokenState_31626_mpos
                let expr_31649_mpos := _445_mpos
                /// @src 66:8213:8242  "getTotalDebtValue(tokenState)"
                let expr_31650 := fun_getTotalDebtValue_31606(expr_31649_mpos)
                /// @src 66:8244:8253  "Constants"
                let expr_31651_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:8244:8257  "Constants.ONE"
                let expr_31652 := constant_ONE_30273()
                /// @src 66:8283:8293  "tokenState"
                let _446_mpos := var_tokenState_31626_mpos
                let expr_31654_mpos := _446_mpos
                /// @src 66:8259:8294  "getTotalCollateralValue(tokenState)"
                let expr_31655 := fun_getTotalCollateralValue_31594(expr_31654_mpos)
                /// @src 66:8171:8304  "FixedPointMathLib.mulDivDown(..."
                let expr_31656 := fun_mulDivDown_36976(expr_31650, expr_31652, expr_31655)
                /// @src 66:8149:8304  "uint256 utilization = FixedPointMathLib.mulDivDown(..."
                let var_utilization_31645 := expr_31656
                /// @src 66:8319:8330  "utilization"
                let _447 := var_utilization_31645
                let expr_31658 := _447
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
                let _448 := var_utilization_31645
                let expr_31665 := _448
                /// @src 66:8385:8403  "return utilization"
                var__31629 := expr_31665
                leave

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

            /// @src 59:225:261  "uint256 private constant _ONE = 1e18"
            function constant__ONE_13450() -> ret {
                /// @src 59:257:261  "1e18"
                let expr_13449 := 0x0de0b6b3a7640000
                let _463 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_13449)

                ret := _463
            }

            /// @ast-id 13510
            /// @src 59:268:780  "function calculateInterestRate(IRMParams memory irmParams, uint256 utilizationRatio)..."
            function fun_calculateInterestRate_13510(var_irmParams_13453_mpos, var_utilizationRatio_13455) -> var__13458 {
                /// @src 59:400:407  "uint256"
                let zero_t_uint256_449 := zero_value_for_split_t_uint256()
                var__13458 := zero_t_uint256_449

                /// @src 59:436:445  "irmParams"
                let _450_mpos := var_irmParams_13453_mpos
                let expr_13462_mpos := _450_mpos
                /// @src 59:436:454  "irmParams.baseRate"
                let _451 := add(expr_13462_mpos, 0)
                let _452 := read_from_memoryt_uint256(_451)
                let expr_13463 := _452
                /// @src 59:423:454  "uint256 ir = irmParams.baseRate"
                let var_ir_13461 := expr_13463
                /// @src 59:469:485  "utilizationRatio"
                let _453 := var_utilizationRatio_13455
                let expr_13465 := _453
                /// @src 59:489:498  "irmParams"
                let _454_mpos := var_irmParams_13453_mpos
                let expr_13466_mpos := _454_mpos
                /// @src 59:489:507  "irmParams.kinkRate"
                let _455 := add(expr_13466_mpos, 32)
                let _456 := read_from_memoryt_uint256(_455)
                let expr_13467 := _456
                /// @src 59:469:507  "utilizationRatio <= irmParams.kinkRate"
                let expr_13468 := iszero(gt(cleanup_t_uint256(expr_13465), cleanup_t_uint256(expr_13467)))
                /// @src 59:465:754  "if (utilizationRatio <= irmParams.kinkRate) {..."
                switch expr_13468
                case 0 {
                    /// @src 59:611:620  "irmParams"
                    let _457_mpos := var_irmParams_13453_mpos
                    let expr_13481_mpos := _457_mpos
                    /// @src 59:611:629  "irmParams.kinkRate"
                    let _458 := add(expr_13481_mpos, 32)
                    let _459 := read_from_memoryt_uint256(_458)
                    let expr_13482 := _459
                    /// @src 59:632:641  "irmParams"
                    let _460_mpos := var_irmParams_13453_mpos
                    let expr_13483_mpos := _460_mpos
                    /// @src 59:632:648  "irmParams.slope1"
                    let _461 := add(expr_13483_mpos, 64)
                    let _462 := read_from_memoryt_uint256(_461)
                    let expr_13484 := _462
                    /// @src 59:611:648  "irmParams.kinkRate * irmParams.slope1"
                    let expr_13485 := checked_mul_t_uint256(expr_13482, expr_13484)

                    /// @src 59:610:649  "(irmParams.kinkRate * irmParams.slope1)"
                    let expr_13486 := expr_13485
                    /// @src 59:652:656  "_ONE"
                    let expr_13487 := constant__ONE_13450()
                    /// @src 59:610:656  "(irmParams.kinkRate * irmParams.slope1) / _ONE"
                    let expr_13488 := checked_div_t_uint256(expr_13486, expr_13487)

                    /// @src 59:604:656  "ir += (irmParams.kinkRate * irmParams.slope1) / _ONE"
                    let _464 := var_ir_13461
                    let expr_13489 := checked_add_t_uint256(_464, expr_13488)

                    var_ir_13461 := expr_13489
                    /// @src 59:677:686  "irmParams"
                    let _465_mpos := var_irmParams_13453_mpos
                    let expr_13492_mpos := _465_mpos
                    /// @src 59:677:693  "irmParams.slope2"
                    let _466 := add(expr_13492_mpos, 96)
                    let _467 := read_from_memoryt_uint256(_466)
                    let expr_13493 := _467
                    /// @src 59:697:713  "utilizationRatio"
                    let _468 := var_utilizationRatio_13455
                    let expr_13494 := _468
                    /// @src 59:716:725  "irmParams"
                    let _469_mpos := var_irmParams_13453_mpos
                    let expr_13495_mpos := _469_mpos
                    /// @src 59:716:734  "irmParams.kinkRate"
                    let _470 := add(expr_13495_mpos, 32)
                    let _471 := read_from_memoryt_uint256(_470)
                    let expr_13496 := _471
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
                    let _472 := var_ir_13461
                    let expr_13503 := checked_add_t_uint256(_472, expr_13502)

                    var_ir_13461 := expr_13503
                    /// @src 59:465:754  "if (utilizationRatio <= irmParams.kinkRate) {..."
                }
                default {
                    /// @src 59:530:546  "utilizationRatio"
                    let _473 := var_utilizationRatio_13455
                    let expr_13470 := _473
                    /// @src 59:549:558  "irmParams"
                    let _474_mpos := var_irmParams_13453_mpos
                    let expr_13471_mpos := _474_mpos
                    /// @src 59:549:565  "irmParams.slope1"
                    let _475 := add(expr_13471_mpos, 64)
                    let _476 := read_from_memoryt_uint256(_475)
                    let expr_13472 := _476
                    /// @src 59:530:565  "utilizationRatio * irmParams.slope1"
                    let expr_13473 := checked_mul_t_uint256(expr_13470, expr_13472)

                    /// @src 59:529:566  "(utilizationRatio * irmParams.slope1)"
                    let expr_13474 := expr_13473
                    /// @src 59:569:573  "_ONE"
                    let expr_13475 := constant__ONE_13450()
                    /// @src 59:529:573  "(utilizationRatio * irmParams.slope1) / _ONE"
                    let expr_13476 := checked_div_t_uint256(expr_13474, expr_13475)

                    /// @src 59:523:573  "ir += (utilizationRatio * irmParams.slope1) / _ONE"
                    let _477 := var_ir_13461
                    let expr_13477 := checked_add_t_uint256(_477, expr_13476)

                    var_ir_13461 := expr_13477
                    /// @src 59:465:754  "if (utilizationRatio <= irmParams.kinkRate) {..."
                }
                /// @src 59:771:773  "ir"
                let _478 := var_ir_13461
                let expr_13507 := _478
                /// @src 59:764:773  "return ir"
                var__13458 := expr_13507
                leave

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

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
                let zero_t_uint256_479 := zero_value_for_split_t_uint256()
                var__31489 := zero_t_uint256_479

                /// @src 66:6305:6315  "tokenState"
                let _480_slot := var_tokenState_31482_slot
                let expr_31491_slot := _480_slot
                /// @src 66:6305:6338  "tokenState.totalCompoundDeposited"
                let _481 := add(expr_31491_slot, 0)
                let _482 := read_from_storage_split_offset_0_t_uint256(_481)
                let expr_31492 := _482
                /// @src 66:6342:6343  "0"
                let expr_31493 := 0x00
                /// @src 66:6305:6343  "tokenState.totalCompoundDeposited == 0"
                let expr_31494 := eq(cleanup_t_uint256(expr_31492), convert_t_rational_0_by_1_to_t_uint256(expr_31493))
                /// @src 66:6305:6383  "tokenState.totalCompoundDeposited == 0 && tokenState.totalNormalDeposited == 0"
                let expr_31499 := expr_31494
                if expr_31499 {
                    /// @src 66:6347:6357  "tokenState"
                    let _483_slot := var_tokenState_31482_slot
                    let expr_31495_slot := _483_slot
                    /// @src 66:6347:6378  "tokenState.totalNormalDeposited"
                    let _484 := add(expr_31495_slot, 1)
                    let _485 := read_from_storage_split_offset_0_t_uint256(_484)
                    let expr_31496 := _485
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
                let _486 := var__interestRate_31484
                let expr_31510 := _486
                /// @src 66:6554:6564  "tokenState"
                let _487_slot := var_tokenState_31482_slot
                let expr_31512_slot := _487_slot
                /// @src 66:6536:6565  "getTotalDebtValue(tokenState)"
                let _488_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31512_slot)
                let expr_31513 := fun_getTotalDebtValue_31606(_488_mpos)
                /// @src 66:6567:6576  "Constants"
                let expr_31514_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:6567:6580  "Constants.ONE"
                let expr_31515 := constant_ONE_30273()
                /// @src 66:6492:6581  "FixedPointMathLib.mulDivDown(_interestRate, getTotalDebtValue(tokenState), Constants.ONE)"
                let expr_31516 := fun_mulDivDown_36976(expr_31510, expr_31513, expr_31515)
                /// @src 66:6595:6609  "_reserveFactor"
                let _489 := var__reserveFactor_31486
                let expr_31517 := _489
                /// @src 66:6623:6626  "100"
                let expr_31518 := 0x64
                /// @src 66:6450:6636  "FixedPointMathLib.mulDivDown(..."
                let _490 := convert_t_uint8_to_t_uint256(expr_31517)
                let _491 := convert_t_rational_100_by_1_to_t_uint256(expr_31518)
                let expr_31519 := fun_mulDivDown_36976(expr_31516, _490, _491)
                /// @src 66:6428:6636  "uint256 protocolFee = FixedPointMathLib.mulDivDown(..."
                let var_protocolFee_31505 := expr_31519
                /// @src 66:6760:6777  "FixedPointMathLib"
                let expr_31523_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:6802:6819  "FixedPointMathLib"
                let expr_31525_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:6848:6861  "_interestRate"
                let _492 := var__interestRate_31484
                let expr_31527 := _492
                /// @src 66:6881:6891  "tokenState"
                let _493_slot := var_tokenState_31482_slot
                let expr_31529_slot := _493_slot
                /// @src 66:6863:6892  "getTotalDebtValue(tokenState)"
                let _494_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31529_slot)
                let expr_31530 := fun_getTotalDebtValue_31606(_494_mpos)
                /// @src 66:6918:6928  "tokenState"
                let _495_slot := var_tokenState_31482_slot
                let expr_31532_slot := _495_slot
                /// @src 66:6894:6929  "getTotalCollateralValue(tokenState)"
                let _496_mpos := convert_t_struct$_AssetStatus_$30934_storage_ptr_to_t_struct$_AssetStatus_$30934_memory_ptr(expr_31532_slot)
                let expr_31533 := fun_getTotalCollateralValue_31594(_496_mpos)
                /// @src 66:6802:6943  "FixedPointMathLib.mulDivDown(..."
                let expr_31534 := fun_mulDivDown_36976(expr_31527, expr_31530, expr_31533)
                /// @src 66:6957:6960  "100"
                let expr_31535 := 0x64
                /// @src 66:6963:6977  "_reserveFactor"
                let _497 := var__reserveFactor_31486
                let expr_31536 := _497
                /// @src 66:6957:6977  "100 - _reserveFactor"
                let expr_31537 := checked_sub_t_uint8(convert_t_rational_100_by_1_to_t_uint8(expr_31535), expr_31536)

                /// @src 66:6991:6994  "100"
                let expr_31538 := 0x64
                /// @src 66:6760:7004  "FixedPointMathLib.mulDivDown(..."
                let _498 := convert_t_uint8_to_t_uint256(expr_31537)
                let _499 := convert_t_rational_100_by_1_to_t_uint256(expr_31538)
                let expr_31539 := fun_mulDivDown_36976(expr_31534, _498, _499)
                /// @src 66:6731:7004  "uint256 supplyInterestRate = FixedPointMathLib.mulDivDown(..."
                let var_supplyInterestRate_31522 := expr_31539
                /// @src 66:7040:7053  "_interestRate"
                let _500 := var__interestRate_31484
                let expr_31544 := _500
                /// @src 66:7015:7025  "tokenState"
                let _501_slot := var_tokenState_31482_slot
                let expr_31541_slot := _501_slot
                /// @src 66:7015:7036  "tokenState.debtGrowth"
                let _502 := add(expr_31541_slot, 5)
                /// @src 66:7015:7053  "tokenState.debtGrowth += _interestRate"
                let _503 := read_from_storage_split_offset_0_t_uint256(_502)
                let expr_31545 := checked_add_t_uint256(_503, expr_31544)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_502, expr_31545)
                /// @src 66:7100:7117  "FixedPointMathLib"
                let expr_31550_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:7129:7139  "tokenState"
                let _504_slot := var_tokenState_31482_slot
                let expr_31552_slot := _504_slot
                /// @src 66:7129:7151  "tokenState.assetScaler"
                let _505 := add(expr_31552_slot, 3)
                let _506 := read_from_storage_split_offset_0_t_uint256(_505)
                let expr_31553 := _506
                /// @src 66:7153:7162  "Constants"
                let expr_31554_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:7153:7166  "Constants.ONE"
                let expr_31555 := constant_ONE_30273()
                /// @src 66:7169:7187  "supplyInterestRate"
                let _507 := var_supplyInterestRate_31522
                let expr_31556 := _507
                /// @src 66:7153:7187  "Constants.ONE + supplyInterestRate"
                let expr_31557 := checked_add_t_uint256(expr_31555, expr_31556)

                /// @src 66:7189:7198  "Constants"
                let expr_31558_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:7189:7202  "Constants.ONE"
                let expr_31559 := constant_ONE_30273()
                /// @src 66:7100:7203  "FixedPointMathLib.mulDivDown(tokenState.assetScaler, Constants.ONE + supplyInterestRate, Constants.ONE)"
                let expr_31560 := fun_mulDivDown_36976(expr_31553, expr_31557, expr_31559)
                /// @src 66:7063:7073  "tokenState"
                let _508_slot := var_tokenState_31482_slot
                let expr_31547_slot := _508_slot
                /// @src 66:7063:7085  "tokenState.assetScaler"
                let _509 := add(expr_31547_slot, 3)
                /// @src 66:7063:7203  "tokenState.assetScaler =..."
                update_storage_value_offset_0_t_uint256_to_t_uint256(_509, expr_31560)
                let expr_31561 := expr_31560
                /// @src 66:7239:7257  "supplyInterestRate"
                let _510 := var_supplyInterestRate_31522
                let expr_31566 := _510
                /// @src 66:7213:7223  "tokenState"
                let _511_slot := var_tokenState_31482_slot
                let expr_31563_slot := _511_slot
                /// @src 66:7213:7235  "tokenState.assetGrowth"
                let _512 := add(expr_31563_slot, 4)
                /// @src 66:7213:7257  "tokenState.assetGrowth += supplyInterestRate"
                let _513 := read_from_storage_split_offset_0_t_uint256(_512)
                let expr_31567 := checked_add_t_uint256(_513, expr_31566)

                update_storage_value_offset_0_t_uint256_to_t_uint256(_512, expr_31567)
                /// @src 66:7275:7286  "protocolFee"
                let _514 := var_protocolFee_31505
                let expr_31569 := _514
                /// @src 66:7268:7286  "return protocolFee"
                var__31489 := expr_31569
                leave

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

            /// @ast-id 36976
            /// @src 12:1564:2090  "function mulDivDown(..."
            function fun_mulDivDown_36976(var_x_36965, var_y_36967, var_denominator_36969) -> var_z_36972 {
                /// @src 12:1680:1689  "uint256 z"
                let zero_t_uint256_515 := zero_value_for_split_t_uint256()
                var_z_36972 := zero_t_uint256_515

                /// @src 12:1744:2084  "assembly {..."
                {
                    if iszero(mul(var_denominator_36969, iszero(mul(var_y_36967, gt(var_x_36965, div(115792089237316195423570985008687907853269984665640564039457584007913129639935, var_y_36967)))))) { revert(0, 0) }
                    var_z_36972 := div(mul(var_x_36965, var_y_36967), var_denominator_36969)
                }

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

            /// @ast-id 31623
            /// @src 66:7723:7914  "function getAvailableCollateralValue(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getAvailableCollateralValue_31623(var_tokenState_31609_mpos) -> var__31612 {
                /// @src 66:7814:7821  "uint256"
                let zero_t_uint256_516 := zero_value_for_split_t_uint256()
                var__31612 := zero_t_uint256_516

                /// @src 66:7864:7874  "tokenState"
                let _517_mpos := var_tokenState_31609_mpos
                let expr_31615_mpos := _517_mpos
                /// @src 66:7840:7875  "getTotalCollateralValue(tokenState)"
                let expr_31616 := fun_getTotalCollateralValue_31594(expr_31615_mpos)
                /// @src 66:7896:7906  "tokenState"
                let _518_mpos := var_tokenState_31609_mpos
                let expr_31618_mpos := _518_mpos
                /// @src 66:7878:7907  "getTotalDebtValue(tokenState)"
                let expr_31619 := fun_getTotalDebtValue_31606(expr_31618_mpos)
                /// @src 66:7840:7907  "getTotalCollateralValue(tokenState) - getTotalDebtValue(tokenState)"
                let expr_31620 := checked_sub_t_uint256(expr_31616, expr_31619)

                /// @src 66:7833:7907  "return getTotalCollateralValue(tokenState) - getTotalDebtValue(tokenState)"
                var__31612 := expr_31620
                leave

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

            /// @ast-id 31606
            /// @src 66:7573:7717  "function getTotalDebtValue(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getTotalDebtValue_31606(var_tokenState_31597_mpos) -> var__31600 {
                /// @src 66:7654:7661  "uint256"
                let zero_t_uint256_519 := zero_value_for_split_t_uint256()
                var__31600 := zero_t_uint256_519

                /// @src 66:7680:7690  "tokenState"
                let _520_mpos := var_tokenState_31597_mpos
                let expr_31602_mpos := _520_mpos
                /// @src 66:7680:7710  "tokenState.totalNormalBorrowed"
                let _521 := add(expr_31602_mpos, 64)
                let _522 := read_from_memoryt_uint256(_521)
                let expr_31603 := _522
                /// @src 66:7673:7710  "return tokenState.totalNormalBorrowed"
                var__31600 := expr_31603
                leave

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

            /// @ast-id 31594
            /// @src 66:7299:7567  "function getTotalCollateralValue(AssetStatus memory tokenState) internal pure returns (uint256) {..."
            function fun_getTotalCollateralValue_31594(var_tokenState_31575_mpos) -> var__31578 {
                /// @src 66:7386:7393  "uint256"
                let zero_t_uint256_523 := zero_value_for_split_t_uint256()
                var__31578 := zero_t_uint256_523

                /// @src 66:7412:7429  "FixedPointMathLib"
                let expr_31580_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                /// @src 66:7441:7451  "tokenState"
                let _524_mpos := var_tokenState_31575_mpos
                let expr_31582_mpos := _524_mpos
                /// @src 66:7441:7474  "tokenState.totalCompoundDeposited"
                let _525 := add(expr_31582_mpos, 0)
                let _526 := read_from_memoryt_uint256(_525)
                let expr_31583 := _526
                /// @src 66:7476:7486  "tokenState"
                let _527_mpos := var_tokenState_31575_mpos
                let expr_31584_mpos := _527_mpos
                /// @src 66:7476:7498  "tokenState.assetScaler"
                let _528 := add(expr_31584_mpos, 96)
                let _529 := read_from_memoryt_uint256(_528)
                let expr_31585 := _529
                /// @src 66:7500:7509  "Constants"
                let expr_31586_address := linkersymbol("src/libraries/Constants.sol:Constants")
                /// @src 66:7500:7513  "Constants.ONE"
                let expr_31587 := constant_ONE_30273()
                /// @src 66:7412:7514  "FixedPointMathLib.mulDivDown(tokenState.totalCompoundDeposited, tokenState.assetScaler, Constants.ONE)"
                let expr_31588 := fun_mulDivDown_36976(expr_31583, expr_31585, expr_31587)
                /// @src 66:7529:7539  "tokenState"
                let _530_mpos := var_tokenState_31575_mpos
                let expr_31589_mpos := _530_mpos
                /// @src 66:7529:7560  "tokenState.totalNormalDeposited"
                let _531 := add(expr_31589_mpos, 32)
                let _532 := read_from_memoryt_uint256(_531)
                let expr_31590 := _532
                /// @src 66:7412:7560  "FixedPointMathLib.mulDivDown(tokenState.totalCompoundDeposited, tokenState.assetScaler, Constants.ONE)..."
                let expr_31591 := checked_add_t_uint256(expr_31588, expr_31590)

                /// @src 66:7405:7560  "return FixedPointMathLib.mulDivDown(tokenState.totalCompoundDeposited, tokenState.assetScaler, Constants.ONE)..."
                var__31578 := expr_31591
                leave

            }
            /// @src 75:563:3653  "library SupplyLogic {..."

        }

        data ".metadata" hex"a2646970667358221220652078a5b710ffc292ff970ecf91cb40dbc61d7c098196bb64f05d16d647b17a64736f6c634300081e0033"
    }

}

