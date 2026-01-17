
/// @use-src 30:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/introspection/ERC165.sol", 31:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/introspection/IERC165.sol", 36:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/token/ERC721/ERC721.sol", 37:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/token/ERC721/IERC721.sol", 38:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/token/ERC721/IERC721Enumerable.sol", 39:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/token/ERC721/IERC721Metadata.sol", 42:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/Context.sol", 97:"uniswap/v3-core-1.0.0/contracts/interfaces/callback/IUniswapV3MintCallback.sol", 121:"uniswap/v3-periphery-1.3.0/contracts/NonfungiblePositionManager.sol", 123:"uniswap/v3-periphery-1.3.0/contracts/base/BlockTimestamp.sol", 124:"uniswap/v3-periphery-1.3.0/contracts/base/ERC721Permit.sol", 125:"uniswap/v3-periphery-1.3.0/contracts/base/LiquidityManagement.sol", 126:"uniswap/v3-periphery-1.3.0/contracts/base/Multicall.sol", 127:"uniswap/v3-periphery-1.3.0/contracts/base/PeripheryImmutableState.sol", 128:"uniswap/v3-periphery-1.3.0/contracts/base/PeripheryPayments.sol", 129:"uniswap/v3-periphery-1.3.0/contracts/base/PeripheryValidation.sol", 130:"uniswap/v3-periphery-1.3.0/contracts/base/PoolInitializer.sol", 131:"uniswap/v3-periphery-1.3.0/contracts/base/SelfPermit.sol", 133:"uniswap/v3-periphery-1.3.0/contracts/interfaces/IERC721Permit.sol", 134:"uniswap/v3-periphery-1.3.0/contracts/interfaces/IMulticall.sol", 135:"uniswap/v3-periphery-1.3.0/contracts/interfaces/INonfungiblePositionManager.sol", 137:"uniswap/v3-periphery-1.3.0/contracts/interfaces/IPeripheryImmutableState.sol", 138:"uniswap/v3-periphery-1.3.0/contracts/interfaces/IPeripheryPayments.sol", 139:"uniswap/v3-periphery-1.3.0/contracts/interfaces/IPoolInitializer.sol", 140:"uniswap/v3-periphery-1.3.0/contracts/interfaces/ISelfPermit.sol"
object "NonfungiblePositionManager_3590" {
    code {
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."
        mstore(64, memoryguard(288))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1, _2, _3 := copy_arguments_for_constructor_2587_object_NonfungiblePositionManager_3590()
        constructor_NonfungiblePositionManager_3590(_1, _2, _3)

        let _4 := allocate_unbounded()
        codecopy(_4, dataoffset("NonfungiblePositionManager_3590_deployed"), datasize("NonfungiblePositionManager_3590_deployed"))

        setimmutable(_4, "9458", mload(128))

        setimmutable(_4, "9461", mload(160))

        setimmutable(_4, "9957", mload(192))

        setimmutable(_4, "9961", mload(224))

        setimmutable(_4, "2564", mload(256))

        return(_4, datasize("NonfungiblePositionManager_3590_deployed"))

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

        function abi_decode_tuple_t_addresst_addresst_address_fromMemory(headStart, dataEnd) -> value0, value1, value2 {
            if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            {

                let offset := 0

                value0 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 32

                value1 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 64

                value2 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
            }

        }

        function copy_arguments_for_constructor_2587_object_NonfungiblePositionManager_3590() -> ret_param_0, ret_param_1, ret_param_2 {

            let programSize := datasize("NonfungiblePositionManager_3590")
            let argSize := sub(codesize(), programSize)

            let memoryDataOffset := allocate_memory(argSize)
            codecopy(memoryDataOffset, programSize, argSize)

            ret_param_0, ret_param_1, ret_param_2 := abi_decode_tuple_t_addresst_addresst_address_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
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

        function store_literal_in_memory_193ae757ecb6ead396a72d38c6cc38e1be93297aa66ffefea29e32ce3045475f(memPtr) {

            mstore(add(memPtr, 0), "Uniswap V3 Positions NFT-V1")

        }

        function copy_literal_to_memory_193ae757ecb6ead396a72d38c6cc38e1be93297aa66ffefea29e32ce3045475f() -> memPtr {
            memPtr := allocate_memory_array_t_string_memory_ptr(27)
            store_literal_in_memory_193ae757ecb6ead396a72d38c6cc38e1be93297aa66ffefea29e32ce3045475f(add(memPtr, 32))
        }

        function convert_t_stringliteral_193ae757ecb6ead396a72d38c6cc38e1be93297aa66ffefea29e32ce3045475f_to_t_string_memory_ptr() -> converted {
            converted := copy_literal_to_memory_193ae757ecb6ead396a72d38c6cc38e1be93297aa66ffefea29e32ce3045475f()
        }

        function store_literal_in_memory_b8b1cd5b4d713649477ee65c8fbd9be8e691684f37b8c4c536e35dbf15df1191(memPtr) {

            mstore(add(memPtr, 0), "UNI-V3-POS")

        }

        function copy_literal_to_memory_b8b1cd5b4d713649477ee65c8fbd9be8e691684f37b8c4c536e35dbf15df1191() -> memPtr {
            memPtr := allocate_memory_array_t_string_memory_ptr(10)
            store_literal_in_memory_b8b1cd5b4d713649477ee65c8fbd9be8e691684f37b8c4c536e35dbf15df1191(add(memPtr, 32))
        }

        function convert_t_stringliteral_b8b1cd5b4d713649477ee65c8fbd9be8e691684f37b8c4c536e35dbf15df1191_to_t_string_memory_ptr() -> converted {
            converted := copy_literal_to_memory_b8b1cd5b4d713649477ee65c8fbd9be8e691684f37b8c4c536e35dbf15df1191()
        }

        function store_literal_in_memory_c89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6(memPtr) {

            mstore(add(memPtr, 0), "1")

        }

        function copy_literal_to_memory_c89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6() -> memPtr {
            memPtr := allocate_memory_array_t_string_memory_ptr(1)
            store_literal_in_memory_c89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6(add(memPtr, 32))
        }

        function convert_t_stringliteral_c89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6_to_t_string_memory_ptr() -> converted {
            converted := copy_literal_to_memory_c89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6()
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function update_byte_slice_22_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function cleanup_t_rational_1_by_1(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_uint176(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffffffff)
        }

        function identity(value) -> ret {
            ret := value
        }

        function convert_t_rational_1_by_1_to_t_uint176(value) -> converted {
            converted := cleanup_t_uint176(identity(cleanup_t_rational_1_by_1(value)))
        }

        function prepare_store_t_uint176(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_0_t_rational_1_by_1_to_t_uint176(slot, value_0) {
            let convertedValue_0 := convert_t_rational_1_by_1_to_t_uint176(value_0)
            sstore(slot, update_byte_slice_22_shift_0(sload(slot), prepare_store_t_uint176(convertedValue_0)))
        }

        function shift_left_176(value) -> newValue {
            newValue :=

            shl(176, value)

        }

        function update_byte_slice_10_shift_22(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffff00000000000000000000000000000000000000000000
            toInsert := shift_left_176(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function cleanup_t_uint80(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffff)
        }

        function convert_t_rational_1_by_1_to_t_uint80(value) -> converted {
            converted := cleanup_t_uint80(identity(cleanup_t_rational_1_by_1(value)))
        }

        function prepare_store_t_uint80(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_22_t_rational_1_by_1_to_t_uint80(slot, value_0) {
            let convertedValue_0 := convert_t_rational_1_by_1_to_t_uint80(value_0)
            sstore(slot, update_byte_slice_10_shift_22(sload(slot), prepare_store_t_uint80(convertedValue_0)))
        }

        /// @ast-id 2587
        /// @src 121:2625:2886  "constructor(..."
        function constructor_NonfungiblePositionManager_3590(var__factory_2566, var__WETH9_2568, var__tokenDescriptor__2570) {
            /// @src 121:2815:2823  "_factory"
            let _5 := var__factory_2566
            let expr_2578 := _5
            let _6 := expr_2578
            /// @src 121:2825:2831  "_WETH9"
            let _7 := var__WETH9_2568
            let expr_2579 := _7
            let _8 := expr_2579
            /// @src 121:2741:2770  "'Uniswap V3 Positions NFT-V1'"
            let _9_mpos := convert_t_stringliteral_193ae757ecb6ead396a72d38c6cc38e1be93297aa66ffefea29e32ce3045475f_to_t_string_memory_ptr()
            /// @src 121:2772:2784  "'UNI-V3-POS'"
            let _10_mpos := convert_t_stringliteral_b8b1cd5b4d713649477ee65c8fbd9be8e691684f37b8c4c536e35dbf15df1191_to_t_string_memory_ptr()
            /// @src 121:2786:2789  "'1'"
            let _11_mpos := convert_t_stringliteral_c89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6_to_t_string_memory_ptr()

            /// @src 121:2625:2886  "constructor(..."
            constructor_SelfPermit_10257(_6, _8, _9_mpos, _10_mpos, _11_mpos)
            /// @src 121:2339:2340  "1"
            let expr_2556 := 0x01
            update_storage_value_offset_0_t_rational_1_by_1_to_t_uint176(0x0d, expr_2556)
            /// @src 121:2453:2454  "1"
            let expr_2560 := 0x01
            update_storage_value_offset_22_t_rational_1_by_1_to_t_uint80(0x0d, expr_2560)

            /// @src 121:2862:2879  "_tokenDescriptor_"
            let _12 := var__tokenDescriptor__2570
            let expr_2583 := _12
            /// @src 121:2843:2879  "_tokenDescriptor = _tokenDescriptor_"
            let _13 := expr_2583
            mstore(256, _13)
            let expr_2584 := expr_2583

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 131:617:2039  "abstract contract SelfPermit is ISelfPermit {..."
        function constructor_SelfPermit_10257(_6, _8, _9_mpos, _10_mpos, _11_mpos) {

            /// @src 131:617:2039  "abstract contract SelfPermit is ISelfPermit {..."
            constructor_ISelfPermit_24549(_6, _8, _9_mpos, _10_mpos, _11_mpos)

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 140:225:3918  "interface ISelfPermit {..."
        function constructor_ISelfPermit_24549(_6, _8, _9_mpos, _10_mpos, _11_mpos) {

            /// @src 140:225:3918  "interface ISelfPermit {..."
            constructor_PeripheryValidation_9998(_6, _8, _9_mpos, _10_mpos, _11_mpos)

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 129:139:333  "abstract contract PeripheryValidation is BlockTimestamp {..."
        function constructor_PeripheryValidation_9998(_6, _8, _9_mpos, _10_mpos, _11_mpos) {

            /// @src 129:139:333  "abstract contract PeripheryValidation is BlockTimestamp {..."
            constructor_LiquidityManagement_9862(_6, _8, _9_mpos, _10_mpos, _11_mpos)

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 125:664:3322  "abstract contract LiquidityManagement is IUniswapV3MintCallback, PeripheryImmutableState, PeripheryPayments {..."
        function constructor_LiquidityManagement_9862(_6, _8, _9_mpos, _10_mpos, _11_mpos) {

            /// @src 125:664:3322  "abstract contract LiquidityManagement is IUniswapV3MintCallback, PeripheryImmutableState, PeripheryPayments {..."
            constructor_PeripheryPayments_24025(_6, _8, _9_mpos, _10_mpos, _11_mpos)

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 128:342:2495  "abstract contract PeripheryPayments is IPeripheryPayments, PeripheryImmutableState {..."
        function constructor_PeripheryPayments_24025(_6, _8, _9_mpos, _10_mpos, _11_mpos) {

            /// @src 128:342:2495  "abstract contract PeripheryPayments is IPeripheryPayments, PeripheryImmutableState {..."
            constructor_PoolInitializer_10090(_6, _8, _9_mpos, _10_mpos, _11_mpos)

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 130:375:1218  "abstract contract PoolInitializer is IPoolInitializer, PeripheryImmutableState {..."
        function constructor_PoolInitializer_10090(_6, _8, _9_mpos, _10_mpos, _11_mpos) {

            /// @src 130:375:1218  "abstract contract PoolInitializer is IPoolInitializer, PeripheryImmutableState {..."
            constructor_PeripheryImmutableState_9978(_6, _8, _9_mpos, _10_mpos, _11_mpos)

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @ast-id 9977
        /// @src 127:503:608  "constructor(address _factory, address _WETH9) {..."
        function constructor_PeripheryImmutableState_9978(var__factory_9963, var__WETH9_9965, _9_mpos, _10_mpos, _11_mpos) {

            /// @src 127:503:608  "constructor(address _factory, address _WETH9) {..."
            constructor_ERC721Permit_9642(_9_mpos, _10_mpos, _11_mpos)

            /// @src 127:569:577  "_factory"
            let _14 := var__factory_9963
            let expr_9969 := _14
            /// @src 127:559:577  "factory = _factory"
            let _15 := expr_9969
            mstore(192, _15)
            let expr_9970 := expr_9969
            /// @src 127:595:601  "_WETH9"
            let _16 := var__WETH9_9965
            let expr_9973 := _16
            /// @src 127:587:601  "WETH9 = _WETH9"
            let _17 := expr_9973
            mstore(224, _17)
            let expr_9974 := expr_9973

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        function convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(value) -> converted  {
            converted := value

        }

        function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
            data := ptr

            data := add(ptr, 0x20)

        }

        function array_length_t_bytes_memory_ptr(value) -> length {

            length := mload(value)

        }

        /// @ast-id 9494
        /// @src 124:1057:1291  "constructor(..."
        function constructor_ERC721Permit_9642(var_name__9464_mpos, var_symbol__9466_mpos, var_version__9468_mpos) {
            /// @src 124:1174:1179  "name_"
            let _18_mpos := var_name__9464_mpos
            let expr_9471_mpos := _18_mpos
            let _19_mpos := expr_9471_mpos
            /// @src 124:1181:1188  "symbol_"
            let _20_mpos := var_symbol__9466_mpos
            let expr_9472_mpos := _20_mpos
            let _21_mpos := expr_9472_mpos

            /// @src 124:1057:1291  "constructor(..."
            constructor_Multicall_9947(_19_mpos, _21_mpos)

            /// @src 124:1227:1232  "name_"
            let _22_mpos := var_name__9464_mpos
            let expr_9479_mpos := _22_mpos
            /// @src 124:1221:1233  "bytes(name_)"
            let expr_9480_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_9479_mpos)
            /// @src 124:1211:1234  "keccak256(bytes(name_))"
            let expr_9481 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_9480_mpos), array_length_t_bytes_memory_ptr(expr_9480_mpos))
            /// @src 124:1200:1234  "nameHash = keccak256(bytes(name_))"
            let _23 := expr_9481
            mstore(128, _23)
            let expr_9482 := expr_9481
            /// @src 124:1274:1282  "version_"
            let _24_mpos := var_version__9468_mpos
            let expr_9488_mpos := _24_mpos
            /// @src 124:1268:1283  "bytes(version_)"
            let expr_9489_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_9488_mpos)
            /// @src 124:1258:1284  "keccak256(bytes(version_))"
            let expr_9490 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_9489_mpos), array_length_t_bytes_memory_ptr(expr_9489_mpos))
            /// @src 124:1244:1284  "versionHash = keccak256(bytes(version_))"
            let _25 := expr_9490
            mstore(160, _25)
            let expr_9491 := expr_9490

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 126:266:1000  "abstract contract Multicall is IMulticall {..."
        function constructor_Multicall_9947(_19_mpos, _21_mpos) {

            /// @src 126:266:1000  "abstract contract Multicall is IMulticall {..."
            constructor_IMulticall_24445(_19_mpos, _21_mpos)

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 134:237:741  "interface IMulticall {..."
        function constructor_IMulticall_24445(_19_mpos, _21_mpos) {

            /// @src 134:237:741  "interface IMulticall {..."
            constructor_INonfungiblePositionManager_4118(_19_mpos, _21_mpos)

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 135:621:8640  "interface INonfungiblePositionManager is..."
        function constructor_INonfungiblePositionManager_4118(_19_mpos, _21_mpos) {

            /// @src 135:621:8640  "interface INonfungiblePositionManager is..."
            constructor_IERC721Permit_12602(_19_mpos, _21_mpos)

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 133:292:1495  "interface IERC721Permit is IERC721 {..."
        function constructor_IERC721Permit_12602(_19_mpos, _21_mpos) {

            /// @src 133:292:1495  "interface IERC721Permit is IERC721 {..."
            constructor_ERC721_23491(_19_mpos, _21_mpos)

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

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

        function cleanup_t_rational_2158778573_by_1(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_bytes4(value) -> cleaned {
            cleaned := and(value, 0xffffffff00000000000000000000000000000000000000000000000000000000)
        }

        function shift_left_224(value) -> newValue {
            newValue :=

            shl(224, value)

        }

        function convert_t_rational_2158778573_by_1_to_t_bytes4(value) -> converted {
            converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_2158778573_by_1(value)))
        }

        /// @src 36:2724:2781  "bytes4 private constant _INTERFACE_ID_ERC721 = 0x80ac58cd"
        function constant__INTERFACE_ID_ERC721_22618() -> ret {
            /// @src 36:2771:2781  "0x80ac58cd"
            let expr_22617 := 0x80ac58cd
            let _30 := convert_t_rational_2158778573_by_1_to_t_bytes4(expr_22617)

            ret := _30
        }

        function cleanup_t_rational_1532892063_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_1532892063_by_1_to_t_bytes4(value) -> converted {
            converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_1532892063_by_1(value)))
        }

        /// @src 36:3047:3113  "bytes4 private constant _INTERFACE_ID_ERC721_METADATA = 0x5b5e139f"
        function constant__INTERFACE_ID_ERC721_METADATA_22621() -> ret {
            /// @src 36:3103:3113  "0x5b5e139f"
            let expr_22620 := 0x5b5e139f
            let _31 := convert_t_rational_1532892063_by_1_to_t_bytes4(expr_22620)

            ret := _31
        }

        function cleanup_t_rational_2014223715_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_2014223715_by_1_to_t_bytes4(value) -> converted {
            converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_2014223715_by_1(value)))
        }

        /// @src 36:3418:3486  "bytes4 private constant _INTERFACE_ID_ERC721_ENUMERABLE = 0x780e9d63"
        function constant__INTERFACE_ID_ERC721_ENUMERABLE_22624() -> ret {
            /// @src 36:3476:3486  "0x780e9d63"
            let expr_22623 := 0x780e9d63
            let _32 := convert_t_rational_2014223715_by_1_to_t_bytes4(expr_22623)

            ret := _32
        }

        /// @ast-id 22653
        /// @src 36:3606:3968  "constructor (string memory name_, string memory symbol_) {..."
        function constructor_ERC721_23491(var_name__22627_mpos, var_symbol__22629_mpos) {

            /// @src 36:3606:3968  "constructor (string memory name_, string memory symbol_) {..."
            constructor_IERC721Enumerable_12540()

            /// @src 36:3681:3686  "name_"
            let _26_mpos := var_name__22627_mpos
            let expr_22633_mpos := _26_mpos
            /// @src 36:3673:3686  "_name = name_"
            update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(0x06, expr_22633_mpos)
            let _27_slot := 0x06
            let expr_22634_slot := _27_slot
            /// @src 36:3706:3713  "symbol_"
            let _28_mpos := var_symbol__22629_mpos
            let expr_22637_mpos := _28_mpos
            /// @src 36:3696:3713  "_symbol = symbol_"
            update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(0x07, expr_22637_mpos)
            let _29_slot := 0x07
            let expr_22638_slot := _29_slot
            /// @src 36:3820:3840  "_INTERFACE_ID_ERC721"
            let expr_22641 := constant__INTERFACE_ID_ERC721_22618()
            fun__registerInterface_34514(expr_22641)
            /// @src 36:3870:3899  "_INTERFACE_ID_ERC721_METADATA"
            let expr_22645 := constant__INTERFACE_ID_ERC721_METADATA_22621()
            fun__registerInterface_34514(expr_22645)
            /// @src 36:3929:3960  "_INTERFACE_ID_ERC721_ENUMERABLE"
            let expr_22649 := constant__INTERFACE_ID_ERC721_ENUMERABLE_22624()
            fun__registerInterface_34514(expr_22649)

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 38:257:972  "interface IERC721Enumerable is IERC721 {..."
        function constructor_IERC721Enumerable_12540() {

            /// @src 38:257:972  "interface IERC721Enumerable is IERC721 {..."
            constructor_IERC721Metadata_12567()

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 39:254:718  "interface IERC721Metadata is IERC721 {..."
        function constructor_IERC721Metadata_12567() {

            /// @src 39:254:718  "interface IERC721Metadata is IERC721 {..."
            constructor_IERC721_26651()

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 37:206:4620  "interface IERC721 is IERC165 {..."
        function constructor_IERC721_26651() {

            /// @src 37:206:4620  "interface IERC721 is IERC165 {..."
            constructor_ERC165_34515()

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        function cleanup_t_rational_33540519_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_33540519_by_1_to_t_bytes4(value) -> converted {
            converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_33540519_by_1(value)))
        }

        /// @src 30:417:474  "bytes4 private constant _INTERFACE_ID_ERC165 = 0x01ffc9a7"
        function constant__INTERFACE_ID_ERC165_34467() -> ret {
            /// @src 30:464:474  "0x01ffc9a7"
            let expr_34466 := 0x01ffc9a7
            let _33 := convert_t_rational_33540519_by_1_to_t_bytes4(expr_34466)

            ret := _33
        }

        /// @ast-id 34480
        /// @src 30:627:835  "constructor () {..."
        function constructor_ERC165_34515() {

            /// @src 30:627:835  "constructor () {..."
            constructor_IERC165_36886()

            /// @src 30:807:827  "_INTERFACE_ID_ERC165"
            let expr_34476 := constant__INTERFACE_ID_ERC165_34467()
            fun__registerInterface_34514(expr_34476)

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 31:375:822  "interface IERC165 {..."
        function constructor_IERC165_36886() {

            /// @src 31:375:822  "interface IERC165 {..."
            constructor_IPeripheryImmutableState_12618()

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 137:199:455  "interface IPeripheryImmutableState {..."
        function constructor_IPeripheryImmutableState_12618() {

            /// @src 137:199:455  "interface IPeripheryImmutableState {..."
            constructor_IPeripheryPayments_12644()

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 138:200:1460  "interface IPeripheryPayments {..."
        function constructor_IPeripheryPayments_12644() {

            /// @src 138:200:1460  "interface IPeripheryPayments {..."
            constructor_IUniswapV3MintCallback_19771()

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 97:252:1016  "interface IUniswapV3MintCallback {..."
        function constructor_IUniswapV3MintCallback_19771() {

            /// @src 97:252:1016  "interface IUniswapV3MintCallback {..."
            constructor_IPoolInitializer_12663()

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 139:322:1198  "interface IPoolInitializer {..."
        function constructor_IPoolInitializer_12663() {

            /// @src 139:322:1198  "interface IPoolInitializer {..."
            constructor_Context_6014()

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 42:603:986  "abstract contract Context {..."
        function constructor_Context_6014() {

            /// @src 42:603:986  "abstract contract Context {..."
            constructor_BlockTimestamp_23801()

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        /// @src 123:207:464  "abstract contract BlockTimestamp {..."
        function constructor_BlockTimestamp_23801() {

            /// @src 123:207:464  "abstract contract BlockTimestamp {..."

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        function cleanup_t_rational_4294967295_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_4294967295_by_1_to_t_bytes4(value) -> converted {
            converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_4294967295_by_1(value)))
        }

        function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
            mstore(pos, length)
            updated_pos := add(pos, 0x20)
        }

        function store_literal_in_memory_282912c0dfceceb28d77d0333f496b83948f9ba5b3154358a8b140b849289dee(memPtr) {

            mstore(add(memPtr, 0), "ERC165: invalid interface id")

        }

        function abi_encode_t_stringliteral_282912c0dfceceb28d77d0333f496b83948f9ba5b3154358a8b140b849289dee_to_t_string_memory_ptr_fromStack(pos) -> end {
            pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 28)
            store_literal_in_memory_282912c0dfceceb28d77d0333f496b83948f9ba5b3154358a8b140b849289dee(pos)
            end := add(pos, 32)
        }

        function abi_encode_tuple_t_stringliteral_282912c0dfceceb28d77d0333f496b83948f9ba5b3154358a8b140b849289dee__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
            tail := add(headStart, 32)

            mstore(add(headStart, 0), sub(tail, headStart))
            tail := abi_encode_t_stringliteral_282912c0dfceceb28d77d0333f496b83948f9ba5b3154358a8b140b849289dee_to_t_string_memory_ptr_fromStack( tail)

        }

        function require_helper_t_stringliteral_282912c0dfceceb28d77d0333f496b83948f9ba5b3154358a8b140b849289dee(condition ) {
            if iszero(condition)
            {

                let memPtr := allocate_unbounded()

                mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                let end := abi_encode_tuple_t_stringliteral_282912c0dfceceb28d77d0333f496b83948f9ba5b3154358a8b140b849289dee__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                revert(memPtr, sub(end, memPtr))
            }
        }

        function convert_t_bytes4_to_t_bytes4(value) -> converted {
            converted := cleanup_t_bytes4(value)
        }

        function mapping_index_access_t_mapping$_t_bytes4_$_t_bool_$_of_t_bytes4(slot , key) -> dataSlot {
            mstore(0, convert_t_bytes4_to_t_bytes4(key))
            mstore(0x20, slot)
            dataSlot := keccak256(0, 0x40)
        }

        function update_byte_slice_1_shift_0(value, toInsert) -> result {
            let mask := 255
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function cleanup_t_bool(value) -> cleaned {
            cleaned := iszero(iszero(value))
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

        /// @ast-id 34514
        /// @src 30:1527:1725  "function _registerInterface(bytes4 interfaceId) internal virtual {..."
        function fun__registerInterface_34514(var_interfaceId_34497) {

            /// @src 30:1610:1621  "interfaceId"
            let _34 := var_interfaceId_34497
            let expr_34501 := _34
            /// @src 30:1625:1635  "0xffffffff"
            let expr_34502 := 0xffffffff
            /// @src 30:1610:1635  "interfaceId != 0xffffffff"
            let expr_34503 := iszero(eq(cleanup_t_bytes4(expr_34501), convert_t_rational_4294967295_by_1_to_t_bytes4(expr_34502)))
            /// @src 30:1602:1668  "require(interfaceId != 0xffffffff, \"ERC165: invalid interface id\")"
            require_helper_t_stringliteral_282912c0dfceceb28d77d0333f496b83948f9ba5b3154358a8b140b849289dee(expr_34503)
            /// @src 30:1714:1718  "true"
            let expr_34510 := 0x01
            /// @src 30:1678:1698  "_supportedInterfaces"
            let _35_slot := 0x00
            let expr_34507_slot := _35_slot
            /// @src 30:1699:1710  "interfaceId"
            let _36 := var_interfaceId_34497
            let expr_34508 := _36
            /// @src 30:1678:1711  "_supportedInterfaces[interfaceId]"
            let _37 := mapping_index_access_t_mapping$_t_bytes4_$_t_bool_$_of_t_bytes4(expr_34507_slot,expr_34508)
            /// @src 30:1678:1718  "_supportedInterfaces[interfaceId] = true"
            update_storage_value_offset_0_t_bool_to_t_bool(_37, expr_34510)
            let expr_34511 := expr_34510

        }
        /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

    }
    /// @use-src 30:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/introspection/ERC165.sol", 36:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/token/ERC721/ERC721.sol", 41:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/Address.sol", 42:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/Context.sol", 43:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/EnumerableMap.sol", 44:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/EnumerableSet.sol", 106:"uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint128.sol", 107:"uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint96.sol", 108:"uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol", 118:"uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol", 121:"uniswap/v3-periphery-1.3.0/contracts/NonfungiblePositionManager.sol", 123:"uniswap/v3-periphery-1.3.0/contracts/base/BlockTimestamp.sol", 124:"uniswap/v3-periphery-1.3.0/contracts/base/ERC721Permit.sol", 125:"uniswap/v3-periphery-1.3.0/contracts/base/LiquidityManagement.sol", 126:"uniswap/v3-periphery-1.3.0/contracts/base/Multicall.sol", 127:"uniswap/v3-periphery-1.3.0/contracts/base/PeripheryImmutableState.sol", 128:"uniswap/v3-periphery-1.3.0/contracts/base/PeripheryPayments.sol", 129:"uniswap/v3-periphery-1.3.0/contracts/base/PeripheryValidation.sol", 130:"uniswap/v3-periphery-1.3.0/contracts/base/PoolInitializer.sol", 131:"uniswap/v3-periphery-1.3.0/contracts/base/SelfPermit.sol", 144:"uniswap/v3-periphery-1.3.0/contracts/libraries/CallbackValidation.sol", 145:"uniswap/v3-periphery-1.3.0/contracts/libraries/ChainId.sol", 147:"uniswap/v3-periphery-1.3.0/contracts/libraries/LiquidityAmounts.sol", 150:"uniswap/v3-periphery-1.3.0/contracts/libraries/PoolAddress.sol", 151:"uniswap/v3-periphery-1.3.0/contracts/libraries/PositionKey.sol", 153:"uniswap/v3-periphery-1.3.0/contracts/libraries/TransferHelper.sol"
    object "NonfungiblePositionManager_3590_deployed" {
        code {
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x01ffc9a7
                {
                    // supportsInterface(bytes4)

                    external_fun_supportsInterface_34494()
                }

                case 0x06fdde03
                {
                    // name()

                    external_fun_name_22705()
                }

                case 0x081812fc
                {
                    // getApproved(uint256)

                    external_fun_getApproved_3563()
                }

                case 0x095ea7b3
                {
                    // approve(address,uint256)

                    external_fun_approve_22886()
                }

                case 0x0c49ccbe
                {
                    // decreaseLiquidity((uint256,uint128,uint256,uint256,uint256))

                    external_fun_decreaseLiquidity_3250()
                }

                case 0x12210e8a
                {
                    // refundETH()

                    external_fun_refundETH_23956()
                }

                case 0x13ead562
                {
                    // createAndInitializePoolIfNecessary(address,address,uint24,uint160)

                    external_fun_createAndInitializePoolIfNecessary_10089()
                }

                case 0x18160ddd
                {
                    // totalSupply()

                    external_fun_totalSupply_22823()
                }

                case 0x219f5d17
                {
                    // increaseLiquidity((uint256,uint256,uint256,uint256,uint256,uint256))

                    external_fun_increaseLiquidity_3055()
                }

                case 0x23b872dd
                {
                    // transferFrom(address,address,uint256)

                    external_fun_transferFrom_22986()
                }

                case 0x2f745c59
                {
                    // tokenOfOwnerByIndex(address,uint256)

                    external_fun_tokenOfOwnerByIndex_22811()
                }

                case 0x30adf81f
                {
                    // PERMIT_TYPEHASH()

                    external_fun_PERMIT_TYPEHASH_9523()
                }

                case 0x3644e515
                {
                    // DOMAIN_SEPARATOR()

                    external_fun_DOMAIN_SEPARATOR_9518()
                }

                case 0x42842e0e
                {
                    // safeTransferFrom(address,address,uint256)

                    external_fun_safeTransferFrom_23005()
                }

                case 0x42966c68
                {
                    // burn(uint256)

                    external_fun_burn_3521()
                }

                case 0x4659a494
                {
                    // selfPermitAllowed(address,uint256,uint256,uint8,bytes32,bytes32)

                    external_fun_selfPermitAllowed_10211()
                }

                case 0x49404b7c
                {
                    // unwrapWETH9(uint256,address)

                    external_fun_unwrapWETH9_23886()
                }

                case 0x4aa4a4fc
                {
                    // WETH9()

                    external_fun_WETH9_9961()
                }

                case 0x4f6ccce7
                {
                    // tokenByIndex(uint256)

                    external_fun_tokenByIndex_22842()
                }

                case 0x6352211e
                {
                    // ownerOf(uint256)

                    external_fun_ownerOf_22695()
                }

                case 0x6c0360eb
                {
                    // baseURI()

                    external_fun_baseURI_2894()
                }

                case 0x70a08231
                {
                    // balanceOf(address)

                    external_fun_balanceOf_22679()
                }

                case 0x7ac2ff7b
                {
                    // permit(address,uint256,uint256,uint8,bytes32,bytes32)

                    external_fun_permit_9641()
                }

                case 0x88316456
                {
                    // mint((address,address,uint24,int24,int24,uint256,uint256,uint256,uint256,address,uint256))

                    external_fun_mint_2847()
                }

                case 0x95d89b41
                {
                    // symbol()

                    external_fun_symbol_22715()
                }

                case 0x99fbab88
                {
                    // positions(uint256)

                    external_fun_positions_2670()
                }

                case 0xa22cb465
                {
                    // setApprovalForAll(address,bool)

                    external_fun_setApprovalForAll_22941()
                }

                case 0xa4a78f0c
                {
                    // selfPermitAllowedIfNecessary(address,uint256,uint256,uint8,bytes32,bytes32)

                    external_fun_selfPermitAllowedIfNecessary_10256()
                }

                case 0xac9650d8
                {
                    // multicall(bytes[])

                    external_fun_multicall_9946()
                }

                case 0xb88d4fde
                {
                    // safeTransferFrom(address,address,uint256,bytes)

                    external_fun_safeTransferFrom_23035()
                }

                case 0xc2e3140a
                {
                    // selfPermitIfNecessary(address,uint256,uint256,uint8,bytes32,bytes32)

                    external_fun_selfPermitIfNecessary_10175()
                }

                case 0xc45a0155
                {
                    // factory()

                    external_fun_factory_9957()
                }

                case 0xc87b56dd
                {
                    // tokenURI(uint256)

                    external_fun_tokenURI_2887()
                }

                case 0xd3487997
                {
                    // uniswapV3MintCallback(uint256,uint256,bytes)

                    external_fun_uniswapV3MintCallback_9726()
                }

                case 0xdf2ab5bb
                {
                    // sweepToken(address,uint256,address)

                    external_fun_sweepToken_23930()
                }

                case 0xe985e9c5
                {
                    // isApprovedForAll(address,address)

                    external_fun_isApprovedForAll_22959()
                }

                case 0xf3995c67
                {
                    // selfPermit(address,uint256,uint256,uint8,bytes32,bytes32)

                    external_fun_selfPermit_10134()
                }

                case 0xfc6f7865
                {
                    // collect((uint256,address,uint128,uint128))

                    external_fun_collect_3476()
                }

                default {}
            }
            if iszero(calldatasize()) { fun__23838() stop() }
            revert_error_d228b4ceac16d8e91d6dc7ca8d4a5394f524b2e550555324088cb23b86b87b98()

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

            function cleanup_t_bytes4(value) -> cleaned {
                cleaned := and(value, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            }

            function validator_revert_t_bytes4(value) {
                if iszero(eq(value, cleanup_t_bytes4(value))) { revert(0, 0) }
            }

            function abi_decode_t_bytes4(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bytes4(value)
            }

            function abi_decode_tuple_t_bytes4(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes4(add(headStart, offset), dataEnd)
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

            function external_fun_supportsInterface_34494() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bytes4(4, calldatasize())
                let ret_0 :=  fun_supportsInterface_34494(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

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

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
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

            function external_fun_name_22705() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_name_22705()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

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

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_getApproved_3563() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_getApproved_3563(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function abi_decode_t_address(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_address(value)
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

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_approve_22886() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                fun_approve_22886(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_21fe6b43b4db61d76a176e95bf1a6b9ede4c301f93a4246f41fecb96e160861d() {
                revert(0, 0)
            }

            // struct INonfungiblePositionManager.DecreaseLiquidityParams
            function abi_decode_t_struct$_DecreaseLiquidityParams_$4080_calldata_ptr(offset, end) -> value {
                if slt(sub(end, offset), 160) { revert_error_21fe6b43b4db61d76a176e95bf1a6b9ede4c301f93a4246f41fecb96e160861d() }
                value := offset
            }

            function abi_decode_tuple_t_struct$_DecreaseLiquidityParams_$4080_calldata_ptr(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 160) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_DecreaseLiquidityParams_$4080_calldata_ptr(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

            }

            function external_fun_decreaseLiquidity_3250() {

                let param_0 :=  abi_decode_tuple_t_struct$_DecreaseLiquidityParams_$4080_calldata_ptr(4, calldatasize())
                let ret_0, ret_1 :=  fun_decreaseLiquidity_3250(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(memPos , ret_0, ret_1)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_refundETH_23956() {

                abi_decode_tuple_(4, calldatasize())
                fun_refundETH_23956()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_uint24(value) -> cleaned {
                cleaned := and(value, 0xffffff)
            }

            function validator_revert_t_uint24(value) {
                if iszero(eq(value, cleanup_t_uint24(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint24(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint24(value)
            }

            function validator_revert_t_uint160(value) {
                if iszero(eq(value, cleanup_t_uint160(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint160(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint160(value)
            }

            function abi_decode_tuple_t_addresst_addresst_uint24t_uint160(headStart, dataEnd) -> value0, value1, value2, value3 {
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

                    let offset := 64

                    value2 := abi_decode_t_uint24(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_uint160(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_createAndInitializePoolIfNecessary_10089() {

                let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_addresst_addresst_uint24t_uint160(4, calldatasize())
                let ret_0 :=  fun_createAndInitializePoolIfNecessary_10089(param_0, param_1, param_2, param_3)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_totalSupply_22823() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_totalSupply_22823()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            // struct INonfungiblePositionManager.IncreaseLiquidityParams
            function abi_decode_t_struct$_IncreaseLiquidityParams_$4056_calldata_ptr(offset, end) -> value {
                if slt(sub(end, offset), 192) { revert_error_21fe6b43b4db61d76a176e95bf1a6b9ede4c301f93a4246f41fecb96e160861d() }
                value := offset
            }

            function abi_decode_tuple_t_struct$_IncreaseLiquidityParams_$4056_calldata_ptr(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 192) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_IncreaseLiquidityParams_$4056_calldata_ptr(add(headStart, offset), dataEnd)
                }

            }

            function cleanup_t_uint128(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffff)
            }

            function abi_encode_t_uint128_to_t_uint128_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint128(value))
            }

            function abi_encode_tuple_t_uint128_t_uint256_t_uint256__to_t_uint128_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_uint128_to_t_uint128_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

            }

            function external_fun_increaseLiquidity_3055() {

                let param_0 :=  abi_decode_tuple_t_struct$_IncreaseLiquidityParams_$4056_calldata_ptr(4, calldatasize())
                let ret_0, ret_1, ret_2 :=  fun_increaseLiquidity_3055(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint128_t_uint256_t_uint256__to_t_uint128_t_uint256_t_uint256__fromStack(memPos , ret_0, ret_1, ret_2)
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

            function external_fun_transferFrom_22986() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                fun_transferFrom_22986(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_tokenOfOwnerByIndex_22811() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                let ret_0 :=  fun_tokenOfOwnerByIndex_22811(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_rational_33437492377378226760087498811281282659873828549087316441254475749622436198829_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function convert_t_rational_33437492377378226760087498811281282659873828549087316441254475749622436198829_by_1_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_rational_33437492377378226760087498811281282659873828549087316441254475749622436198829_by_1(value)))
            }

            /// @src 124:1999:2124  "bytes32 public constant override PERMIT_TYPEHASH =..."
            function constant_PERMIT_TYPEHASH_9523() -> ret {
                /// @src 124:2058:2124  "0x49ecf333e5b8c95c40fdafc95c1ad136e8914a8fb55e9dc8bb01eaa83a2df9ad"
                let expr_9522 := 0x49ecf333e5b8c95c40fdafc95c1ad136e8914a8fb55e9dc8bb01eaa83a2df9ad
                let _1 := convert_t_rational_33437492377378226760087498811281282659873828549087316441254475749622436198829_by_1_to_t_bytes32(expr_9522)

                ret := _1
            }

            /// @ast-id 9523
            /// @src 124:1999:2124  "bytes32 public constant override PERMIT_TYPEHASH =..."
            function getter_fun_PERMIT_TYPEHASH_9523() -> ret_0 {
                ret_0 := constant_PERMIT_TYPEHASH_9523()
            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_PERMIT_TYPEHASH_9523() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_PERMIT_TYPEHASH_9523()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_DOMAIN_SEPARATOR_9518() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_DOMAIN_SEPARATOR_9518()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_safeTransferFrom_23005() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                fun_safeTransferFrom_23005(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_burn_3521() {

                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                fun_burn_3521(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

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

            function validator_revert_t_bytes32(value) {
                if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
            }

            function abi_decode_t_bytes32(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bytes32(value)
            }

            function abi_decode_tuple_t_addresst_uint256t_uint256t_uint8t_bytes32t_bytes32(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5 {
                if slt(sub(dataEnd, headStart), 192) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
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

                    value3 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 128

                    value4 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 160

                    value5 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_selfPermitAllowed_10211() {

                let param_0, param_1, param_2, param_3, param_4, param_5 :=  abi_decode_tuple_t_addresst_uint256t_uint256t_uint8t_bytes32t_bytes32(4, calldatasize())
                fun_selfPermitAllowed_10211(param_0, param_1, param_2, param_3, param_4, param_5)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
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

            function external_fun_unwrapWETH9_23886() {

                let param_0, param_1 :=  abi_decode_tuple_t_uint256t_address(4, calldatasize())
                fun_unwrapWETH9_23886(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 9961
            /// @src 127:457:496  "address public immutable override WETH9"
            function getter_fun_WETH9_9961() -> rval {

                rval := loadimmutable("9961")

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function external_fun_WETH9_9961() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_WETH9_9961()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_tokenByIndex_22842() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_tokenByIndex_22842(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_ownerOf_22695() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_ownerOf_22695(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_baseURI_2894() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_baseURI_2894()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_balanceOf_22679() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  fun_balanceOf_22679(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_permit_9641() {

                let param_0, param_1, param_2, param_3, param_4, param_5 :=  abi_decode_tuple_t_addresst_uint256t_uint256t_uint8t_bytes32t_bytes32(4, calldatasize())
                fun_permit_9641(param_0, param_1, param_2, param_3, param_4, param_5)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            // struct INonfungiblePositionManager.MintParams
            function abi_decode_t_struct$_MintParams_$4028_calldata_ptr(offset, end) -> value {
                if slt(sub(end, offset), 352) { revert_error_21fe6b43b4db61d76a176e95bf1a6b9ede4c301f93a4246f41fecb96e160861d() }
                value := offset
            }

            function abi_decode_tuple_t_struct$_MintParams_$4028_calldata_ptr(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 352) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_MintParams_$4028_calldata_ptr(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple_t_uint256_t_uint128_t_uint256_t_uint256__to_t_uint256_t_uint128_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint128_to_t_uint128_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

            }

            function external_fun_mint_2847() {

                let param_0 :=  abi_decode_tuple_t_struct$_MintParams_$4028_calldata_ptr(4, calldatasize())
                let ret_0, ret_1, ret_2, ret_3 :=  fun_mint_2847(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256_t_uint128_t_uint256_t_uint256__to_t_uint256_t_uint128_t_uint256_t_uint256__fromStack(memPos , ret_0, ret_1, ret_2, ret_3)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_symbol_22715() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_symbol_22715()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_uint96(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffff)
            }

            function abi_encode_t_uint96_to_t_uint96_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint96(value))
            }

            function abi_encode_t_uint24_to_t_uint24_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint24(value))
            }

            function cleanup_t_int24(value) -> cleaned {
                cleaned := signextend(2, value)
            }

            function abi_encode_t_int24_to_t_int24_fromStack(value, pos) {
                mstore(pos, cleanup_t_int24(value))
            }

            function abi_encode_tuple_t_uint96_t_address_t_address_t_address_t_uint24_t_int24_t_int24_t_uint128_t_uint256_t_uint256_t_uint128_t_uint128__to_t_uint96_t_address_t_address_t_address_t_uint24_t_int24_t_int24_t_uint128_t_uint256_t_uint256_t_uint128_t_uint128__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6, value7, value8, value9, value10, value11) -> tail {
                tail := add(headStart, 384)

                abi_encode_t_uint96_to_t_uint96_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_address_to_t_address_fromStack(value2,  add(headStart, 64))

                abi_encode_t_address_to_t_address_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint24_to_t_uint24_fromStack(value4,  add(headStart, 128))

                abi_encode_t_int24_to_t_int24_fromStack(value5,  add(headStart, 160))

                abi_encode_t_int24_to_t_int24_fromStack(value6,  add(headStart, 192))

                abi_encode_t_uint128_to_t_uint128_fromStack(value7,  add(headStart, 224))

                abi_encode_t_uint256_to_t_uint256_fromStack(value8,  add(headStart, 256))

                abi_encode_t_uint256_to_t_uint256_fromStack(value9,  add(headStart, 288))

                abi_encode_t_uint128_to_t_uint128_fromStack(value10,  add(headStart, 320))

                abi_encode_t_uint128_to_t_uint128_fromStack(value11,  add(headStart, 352))

            }

            function external_fun_positions_2670() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11 :=  fun_positions_2670(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint96_t_address_t_address_t_address_t_uint24_t_int24_t_int24_t_uint128_t_uint256_t_uint256_t_uint128_t_uint128__to_t_uint96_t_address_t_address_t_address_t_uint24_t_int24_t_int24_t_uint128_t_uint256_t_uint256_t_uint128_t_uint128__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11)
                return(memPos, sub(memEnd, memPos))

            }

            function validator_revert_t_bool(value) {
                if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
            }

            function abi_decode_t_bool(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bool(value)
            }

            function abi_decode_tuple_t_addresst_bool(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_setApprovalForAll_22941() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_bool(4, calldatasize())
                fun_setApprovalForAll_22941(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_selfPermitAllowedIfNecessary_10256() {

                let param_0, param_1, param_2, param_3, param_4, param_5 :=  abi_decode_tuple_t_addresst_uint256t_uint256t_uint8t_bytes32t_bytes32(4, calldatasize())
                fun_selfPermitAllowedIfNecessary_10256(param_0, param_1, param_2, param_3, param_4, param_5)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() {
                revert(0, 0)
            }

            function revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() {
                revert(0, 0)
            }

            // bytes[]
            function abi_decode_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(offset, end) -> arrayPos, length {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                length := calldataload(offset)
                if gt(length, 0xffffffffffffffff) { revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() }
                arrayPos := add(offset, 0x20)
                if gt(add(arrayPos, mul(length, 0x20)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
            }

            function abi_decode_tuple_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0, value1 := abi_decode_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(add(headStart, offset), dataEnd)
                }

            }

            function array_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_dataslot_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

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

            function abi_encodeUpdatedPos_t_bytes_memory_ptr_to_t_bytes_memory_ptr(value0, pos) -> updatedPos {
                updatedPos := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr(value0, pos)
            }

            function array_nextElement_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(ptr) -> next {
                next := add(ptr, 0x20)
            }

            // bytes[] -> bytes[]
            function abi_encode_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_to_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromStack(value, pos)  -> end  {
                let length := array_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromStack(pos, length)
                let headStart := pos
                let tail := add(pos, mul(length, 0x20))
                let baseRef := array_dataslot_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(value)
                let srcPtr := baseRef
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    mstore(pos, sub(tail, headStart))
                    let elementValue0 := mload(srcPtr)
                    tail := abi_encodeUpdatedPos_t_bytes_memory_ptr_to_t_bytes_memory_ptr(elementValue0, tail)
                    srcPtr := array_nextElement_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(srcPtr)
                    pos := add(pos, 0x20)
                }
                pos := tail
                end := pos
            }

            function abi_encode_tuple_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr__to_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_to_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromStack(value0,  tail)

            }

            function external_fun_multicall_9946() {

                let param_0, param_1 :=  abi_decode_tuple_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(4, calldatasize())
                let ret_0 :=  fun_multicall_9946(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr__to_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() {
                revert(0, 0)
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

            function abi_decode_tuple_t_addresst_addresst_uint256t_bytes_memory_ptr(headStart, dataEnd) -> value0, value1, value2, value3 {
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

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 96))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value3 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_safeTransferFrom_23035() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_addresst_addresst_uint256t_bytes_memory_ptr(4, calldatasize())
                fun_safeTransferFrom_23035(param_0, param_1, param_2, param_3)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_selfPermitIfNecessary_10175() {

                let param_0, param_1, param_2, param_3, param_4, param_5 :=  abi_decode_tuple_t_addresst_uint256t_uint256t_uint8t_bytes32t_bytes32(4, calldatasize())
                fun_selfPermitIfNecessary_10175(param_0, param_1, param_2, param_3, param_4, param_5)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 9957
            /// @src 127:365:406  "address public immutable override factory"
            function getter_fun_factory_9957() -> rval {

                rval := loadimmutable("9957")

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function external_fun_factory_9957() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_factory_9957()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_tokenURI_2887() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_tokenURI_2887(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

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

            function external_fun_uniswapV3MintCallback_9726() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_uint256t_uint256t_bytes_calldata_ptr(4, calldatasize())
                fun_uniswapV3MintCallback_9726(param_0, param_1, param_2, param_3)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_uint256t_address(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_sweepToken_23930() {

                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_uint256t_address(4, calldatasize())
                fun_sweepToken_23930(param_0, param_1, param_2)
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

            function external_fun_isApprovedForAll_22959() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_address(4, calldatasize())
                let ret_0 :=  fun_isApprovedForAll_22959(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_selfPermit_10134() {

                let param_0, param_1, param_2, param_3, param_4, param_5 :=  abi_decode_tuple_t_addresst_uint256t_uint256t_uint8t_bytes32t_bytes32(4, calldatasize())
                fun_selfPermit_10134(param_0, param_1, param_2, param_3, param_4, param_5)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            // struct INonfungiblePositionManager.CollectParams
            function abi_decode_t_struct$_CollectParams_$4100_calldata_ptr(offset, end) -> value {
                if slt(sub(end, offset), 128) { revert_error_21fe6b43b4db61d76a176e95bf1a6b9ede4c301f93a4246f41fecb96e160861d() }
                value := offset
            }

            function abi_decode_tuple_t_struct$_CollectParams_$4100_calldata_ptr(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_CollectParams_$4100_calldata_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_collect_3476() {

                let param_0 :=  abi_decode_tuple_t_struct$_CollectParams_$4100_calldata_ptr(4, calldatasize())
                let ret_0, ret_1 :=  fun_collect_3476(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(memPos , ret_0, ret_1)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_d228b4ceac16d8e91d6dc7ca8d4a5394f524b2e550555324088cb23b86b87b98() {
                revert(0, 0)
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function convert_t_bytes4_to_t_bytes4(value) -> converted {
                converted := cleanup_t_bytes4(value)
            }

            function mapping_index_access_t_mapping$_t_bytes4_$_t_bool_$_of_t_bytes4(slot , key) -> dataSlot {
                mstore(0, convert_t_bytes4_to_t_bytes4(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function cleanup_from_storage_t_bool(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function extract_from_storage_value_offset_0_t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_0_t_bool(sload(slot))

            }

            /// @ast-id 34494
            /// @src 30:985:1133  "function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {..."
            function fun_supportsInterface_34494(var_interfaceId_34483) -> var__34487 {
                /// @src 30:1070:1074  "bool"
                let zero_t_bool_2 := zero_value_for_split_t_bool()
                var__34487 := zero_t_bool_2

                /// @src 30:1093:1113  "_supportedInterfaces"
                let _3_slot := 0x00
                let expr_34489_slot := _3_slot
                /// @src 30:1114:1125  "interfaceId"
                let _4 := var_interfaceId_34483
                let expr_34490 := _4
                /// @src 30:1093:1126  "_supportedInterfaces[interfaceId]"
                let _5 := mapping_index_access_t_mapping$_t_bytes4_$_t_bool_$_of_t_bytes4(expr_34489_slot,expr_34490)
                let _6 := read_from_storage_split_offset_0_t_bool(_5)
                let expr_34491 := _6
                /// @src 30:1086:1126  "return _supportedInterfaces[interfaceId]"
                var__34487 := expr_34491
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function zero_value_for_split_t_string_memory_ptr() -> ret {
                ret := 96
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

            function copy_array_from_storage_to_memory_t_string_storage(slot) -> memPtr {
                memPtr := allocate_unbounded()
                let end := abi_encodeUpdatedPos_t_string_storage_to_t_string_memory_ptr(slot, memPtr)
                finalize_allocation(memPtr, sub(end, memPtr))
            }

            function convert_array_t_string_storage_to_t_string_memory_ptr(value) -> converted  {

                // Copy the array to a free position in memory
                converted :=

                copy_array_from_storage_to_memory_t_string_storage(value)

            }

            /// @ast-id 22705
            /// @src 36:4539:4637  "function name() public view virtual override returns (string memory) {..."
            function fun_name_22705() -> var__22700_mpos {
                /// @src 36:4593:4606  "string memory"
                let zero_t_string_memory_ptr_7_mpos := zero_value_for_split_t_string_memory_ptr()
                var__22700_mpos := zero_t_string_memory_ptr_7_mpos

                /// @src 36:4625:4630  "_name"
                let _8_slot := 0x06
                let expr_22702_slot := _8_slot
                /// @src 36:4618:4630  "return _name"
                var__22700_mpos := convert_array_t_string_storage_to_t_string_memory_ptr(expr_22702_slot)
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            function store_literal_in_memory_9291e0f44949204f2e9b40e6be090924979d6047b2365868f4e9f027722eb89d(memPtr) {

                mstore(add(memPtr, 0), "ERC721: approved query for nonex")

                mstore(add(memPtr, 32), "istent token")

            }

            function abi_encode_t_stringliteral_9291e0f44949204f2e9b40e6be090924979d6047b2365868f4e9f027722eb89d_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 44)
                store_literal_in_memory_9291e0f44949204f2e9b40e6be090924979d6047b2365868f4e9f027722eb89d(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_9291e0f44949204f2e9b40e6be090924979d6047b2365868f4e9f027722eb89d__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_9291e0f44949204f2e9b40e6be090924979d6047b2365868f4e9f027722eb89d_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_9291e0f44949204f2e9b40e6be090924979d6047b2365868f4e9f027722eb89d(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_9291e0f44949204f2e9b40e6be090924979d6047b2365868f4e9f027722eb89d__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Position_$2536_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function shift_right_96_unsigned(value) -> newValue {
                newValue :=

                shr(96, value)

            }

            function cleanup_from_storage_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_12_t_address(slot_value) -> value {
                value := cleanup_from_storage_t_address(shift_right_96_unsigned(slot_value))
            }

            function read_from_storage_split_offset_12_t_address(slot) -> value {
                value := extract_from_storage_value_offset_12_t_address(sload(slot))

            }

            /// @ast-id 3563
            /// @src 121:14834:15064  "function getApproved(uint256 tokenId) public view override(ERC721, IERC721) returns (address) {..."
            function fun_getApproved_3563(var_tokenId_3542) -> var__3548 {
                /// @src 121:14919:14926  "address"
                let zero_t_address_9 := zero_value_for_split_t_address()
                var__3548 := zero_t_address_9

                /// @src 121:14954:14961  "tokenId"
                let _10 := var_tokenId_3542
                let expr_3552 := _10
                /// @src 121:14946:14962  "_exists(tokenId)"
                let expr_3553 := fun__exists_23078(expr_3552)
                /// @src 121:14938:15011  "require(_exists(tokenId), 'ERC721: approved query for nonexistent token')"
                require_helper_t_stringliteral_9291e0f44949204f2e9b40e6be090924979d6047b2365868f4e9f027722eb89d(expr_3553)
                /// @src 121:15029:15039  "_positions"
                let _11_slot := 0x0c
                let expr_3557_slot := _11_slot
                /// @src 121:15040:15047  "tokenId"
                let _12 := var_tokenId_3542
                let expr_3558 := _12
                /// @src 121:15029:15048  "_positions[tokenId]"
                let _13 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Position_$2536_storage_$_of_t_uint256(expr_3557_slot,expr_3558)
                let _14_slot := _13
                let expr_3559_slot := _14_slot
                /// @src 121:15029:15057  "_positions[tokenId].operator"
                let _15 := add(expr_3559_slot, 0)
                let _16 := read_from_storage_split_offset_12_t_address(_15)
                let expr_3560 := _16
                /// @src 121:15022:15057  "return _positions[tokenId].operator"
                var__3548 := expr_3560
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function store_literal_in_memory_b51b4875eede07862961e8f9365c6749f5fe55c6ee5d7a9e42b6912ad0b15942(memPtr) {

                mstore(add(memPtr, 0), "ERC721: approval to current owne")

                mstore(add(memPtr, 32), "r")

            }

            function abi_encode_t_stringliteral_b51b4875eede07862961e8f9365c6749f5fe55c6ee5d7a9e42b6912ad0b15942_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 33)
                store_literal_in_memory_b51b4875eede07862961e8f9365c6749f5fe55c6ee5d7a9e42b6912ad0b15942(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_b51b4875eede07862961e8f9365c6749f5fe55c6ee5d7a9e42b6912ad0b15942__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_b51b4875eede07862961e8f9365c6749f5fe55c6ee5d7a9e42b6912ad0b15942_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_b51b4875eede07862961e8f9365c6749f5fe55c6ee5d7a9e42b6912ad0b15942(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_b51b4875eede07862961e8f9365c6749f5fe55c6ee5d7a9e42b6912ad0b15942__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_payable_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function store_literal_in_memory_6d83cef3e0cb19b8320a9c5feb26b56bbb08f152a8e61b12eca3302d8d68b23d(memPtr) {

                mstore(add(memPtr, 0), "ERC721: approve caller is not ow")

                mstore(add(memPtr, 32), "ner nor approved for all")

            }

            function abi_encode_t_stringliteral_6d83cef3e0cb19b8320a9c5feb26b56bbb08f152a8e61b12eca3302d8d68b23d_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 56)
                store_literal_in_memory_6d83cef3e0cb19b8320a9c5feb26b56bbb08f152a8e61b12eca3302d8d68b23d(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_6d83cef3e0cb19b8320a9c5feb26b56bbb08f152a8e61b12eca3302d8d68b23d__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_6d83cef3e0cb19b8320a9c5feb26b56bbb08f152a8e61b12eca3302d8d68b23d_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_6d83cef3e0cb19b8320a9c5feb26b56bbb08f152a8e61b12eca3302d8d68b23d(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_6d83cef3e0cb19b8320a9c5feb26b56bbb08f152a8e61b12eca3302d8d68b23d__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 22886
            /// @src 36:6788:7183  "function approve(address to, uint256 tokenId) public virtual override {..."
            function fun_approve_22886(var_to_22845, var_tokenId_22847) {

                /// @src 36:6899:6906  "tokenId"
                let _17 := var_tokenId_22847
                let expr_22855 := _17
                /// @src 36:6884:6907  "ERC721.ownerOf(tokenId)"
                let expr_22856 := fun_ownerOf_22695(expr_22855)
                /// @src 36:6868:6907  "address owner = ERC721.ownerOf(tokenId)"
                let var_owner_22852 := expr_22856
                /// @src 36:6925:6927  "to"
                let _18 := var_to_22845
                let expr_22859 := _18
                /// @src 36:6931:6936  "owner"
                let _19 := var_owner_22852
                let expr_22860 := _19
                /// @src 36:6925:6936  "to != owner"
                let expr_22861 := iszero(eq(cleanup_t_address(expr_22859), cleanup_t_address(expr_22860)))
                /// @src 36:6917:6974  "require(to != owner, \"ERC721: approval to current owner\")"
                require_helper_t_stringliteral_b51b4875eede07862961e8f9365c6749f5fe55c6ee5d7a9e42b6912ad0b15942(expr_22861)
                /// @src 36:6993:7005  "_msgSender()"
                let expr_22867 := fun__msgSender_6002()
                /// @src 36:7009:7014  "owner"
                let _20 := var_owner_22852
                let expr_22868 := _20
                /// @src 36:6993:7014  "_msgSender() == owner"
                let expr_22869 := eq(convert_t_address_payable_to_t_address(expr_22867), cleanup_t_address(expr_22868))
                /// @src 36:6993:7062  "_msgSender() == owner || ERC721.isApprovedForAll(owner, _msgSender())"
                let expr_22876 := expr_22869
                if iszero(expr_22876) {
                    /// @src 36:7042:7047  "owner"
                    let _21 := var_owner_22852
                    let expr_22872 := _21
                    /// @src 36:7049:7061  "_msgSender()"
                    let expr_22874 := fun__msgSender_6002()
                    /// @src 36:7018:7062  "ERC721.isApprovedForAll(owner, _msgSender())"
                    let _22 := convert_t_address_payable_to_t_address(expr_22874)
                    let expr_22875 := fun_isApprovedForAll_22959(expr_22872, _22)
                    /// @src 36:6993:7062  "_msgSender() == owner || ERC721.isApprovedForAll(owner, _msgSender())"
                    expr_22876 := expr_22875
                }
                /// @src 36:6985:7144  "require(_msgSender() == owner || ERC721.isApprovedForAll(owner, _msgSender()),..."
                require_helper_t_stringliteral_6d83cef3e0cb19b8320a9c5feb26b56bbb08f152a8e61b12eca3302d8d68b23d(expr_22876)
                /// @src 36:7164:7166  "to"
                let _23 := var_to_22845
                let expr_22881 := _23
                /// @src 36:7168:7175  "tokenId"
                let _24 := var_tokenId_22847
                let expr_22882 := _24
                fun__approve_3589(expr_22881, expr_22882)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function read_from_calldatat_uint256(ptr) -> returnValue {

                let value := calldataload(ptr)
                validator_revert_t_uint256(value)

                returnValue :=

                value

            }

            function store_literal_in_memory_70356c467a9713064077b7fa0ff1a074c93b1f7c48415be181b9cd799b628361(memPtr) {

                mstore(add(memPtr, 0), "Not approved")

            }

            function abi_encode_t_stringliteral_70356c467a9713064077b7fa0ff1a074c93b1f7c48415be181b9cd799b628361_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 12)
                store_literal_in_memory_70356c467a9713064077b7fa0ff1a074c93b1f7c48415be181b9cd799b628361(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_70356c467a9713064077b7fa0ff1a074c93b1f7c48415be181b9cd799b628361__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_70356c467a9713064077b7fa0ff1a074c93b1f7c48415be181b9cd799b628361_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_70356c467a9713064077b7fa0ff1a074c93b1f7c48415be181b9cd799b628361(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_70356c467a9713064077b7fa0ff1a074c93b1f7c48415be181b9cd799b628361__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 2862
            /// @src 121:6533:6672  "modifier isAuthorizedForToken(uint256 tokenId) {..."
            function modifier_isAuthorizedForToken_3065(var_amount0_3071, var_amount1_3073, var_params_3059_offset) -> _27, _28 {
                _27 := var_amount0_3071
                _28 := var_amount1_3073

                /// @src 121:9371:9377  "params"
                let _29_offset := var_params_3059_offset
                let expr_3063_offset := _29_offset
                /// @src 121:9371:9385  "params.tokenId"
                let _30 := add(expr_3063_offset, 0)
                let expr_3064 := read_from_calldatat_uint256(_30)
                let _31 := expr_3064
                let var_tokenId_2849 := _31

                /// @src 121:6617:6627  "msg.sender"
                let expr_2854 := caller()
                /// @src 121:6629:6636  "tokenId"
                let _32 := var_tokenId_2849
                let expr_2855 := _32
                /// @src 121:6598:6637  "_isApprovedOrOwner(msg.sender, tokenId)"
                let expr_2856 := fun__isApprovedOrOwner_23120(expr_2854, expr_2855)
                /// @src 121:6590:6654  "require(_isApprovedOrOwner(msg.sender, tokenId), 'Not approved')"
                require_helper_t_stringliteral_70356c467a9713064077b7fa0ff1a074c93b1f7c48415be181b9cd799b628361(expr_2856)
                /// @src 121:6664:6665  "_"
                _27, _28 := modifier_checkDeadline_3069(var_amount0_3071, var_amount1_3073, var_params_3059_offset)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function store_literal_in_memory_c2621685b6a86291a4533558eb72fba04db12a0363db47624d86d9bbb608d293(memPtr) {

                mstore(add(memPtr, 0), "Transaction too old")

            }

            function abi_encode_t_stringliteral_c2621685b6a86291a4533558eb72fba04db12a0363db47624d86d9bbb608d293_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 19)
                store_literal_in_memory_c2621685b6a86291a4533558eb72fba04db12a0363db47624d86d9bbb608d293(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_c2621685b6a86291a4533558eb72fba04db12a0363db47624d86d9bbb608d293__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_c2621685b6a86291a4533558eb72fba04db12a0363db47624d86d9bbb608d293_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_c2621685b6a86291a4533558eb72fba04db12a0363db47624d86d9bbb608d293(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_c2621685b6a86291a4533558eb72fba04db12a0363db47624d86d9bbb608d293__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 9997
            /// @src 129:201:331  "modifier checkDeadline(uint256 deadline) {..."
            function modifier_checkDeadline_3069(var_amount0_3071, var_amount1_3073, var_params_3059_offset) -> _33, _34 {
                _33 := var_amount0_3071
                _34 := var_amount1_3073

                /// @src 121:9409:9415  "params"
                let _35_offset := var_params_3059_offset
                let expr_3067_offset := _35_offset
                /// @src 121:9409:9424  "params.deadline"
                let _36 := add(expr_3067_offset, 128)
                let expr_3068 := read_from_calldatat_uint256(_36)
                let _37 := expr_3068
                let var_deadline_9985 := _37

                /// @src 129:260:277  "_blockTimestamp()"
                let expr_9989 := fun__blockTimestamp_23800()
                /// @src 129:281:289  "deadline"
                let _38 := var_deadline_9985
                let expr_9990 := _38
                /// @src 129:260:289  "_blockTimestamp() <= deadline"
                let expr_9991 := iszero(gt(cleanup_t_uint256(expr_9989), cleanup_t_uint256(expr_9990)))
                /// @src 129:252:313  "require(_blockTimestamp() <= deadline, 'Transaction too old')"
                require_helper_t_stringliteral_c2621685b6a86291a4533558eb72fba04db12a0363db47624d86d9bbb608d293(expr_9991)
                /// @src 129:323:324  "_"
                _33, _34 := fun_decreaseLiquidity_3250_inner(var_amount0_3071, var_amount1_3073, var_params_3059_offset)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function validator_revert_t_uint128(value) {
                if iszero(eq(value, cleanup_t_uint128(value))) { revert(0, 0) }
            }

            function read_from_calldatat_uint128(ptr) -> returnValue {

                let value := calldataload(ptr)
                validator_revert_t_uint128(value)

                returnValue :=

                value

            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint128(value) -> converted {
                converted := cleanup_t_uint128(identity(cleanup_t_rational_0_by_1(value)))
            }

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            function convert_t_struct$_Position_$2536_storage_to_t_struct$_Position_$2536_storage_ptr(value) -> converted {
                converted := value
            }

            function shift_right_128_unsigned(value) -> newValue {
                newValue :=

                shr(128, value)

            }

            function cleanup_from_storage_t_uint128(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_16_t_uint128(slot_value) -> value {
                value := cleanup_from_storage_t_uint128(shift_right_128_unsigned(slot_value))
            }

            function read_from_storage_split_offset_16_t_uint128(slot) -> value {
                value := extract_from_storage_value_offset_16_t_uint128(sload(slot))

            }

            function cleanup_from_storage_t_uint80(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_0_t_uint80(slot_value) -> value {
                value := cleanup_from_storage_t_uint80(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint80(slot) -> value {
                value := extract_from_storage_value_offset_0_t_uint80(sload(slot))

            }

            function cleanup_t_uint80(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffff)
            }

            function convert_t_uint80_to_t_uint80(value) -> converted {
                converted := cleanup_t_uint80(identity(cleanup_t_uint80(value)))
            }

            function mapping_index_access_t_mapping$_t_uint80_$_t_struct$_PoolKey_$10271_storage_$_of_t_uint80(slot , key) -> dataSlot {
                mstore(0, convert_t_uint80_to_t_uint80(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
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

            function write_to_memory_t_uint24(memPtr, value) {
                mstore(memPtr, cleanup_t_uint24(value))
            }

            function allocate_memory_struct_t_struct$_PoolKey_$10271_memory_ptr() -> memPtr {
                memPtr := allocate_memory(96)
            }

            function read_from_storage_reference_type_t_struct$_PoolKey_$10271_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_PoolKey_$10271_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_address(add(slot, 0))
                    write_to_memory_t_address(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_address(add(slot, 1))
                    write_to_memory_t_address(add(value, 32), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_20_t_uint24(add(slot, 1))
                    write_to_memory_t_uint24(add(value, 64), memberValue_0)
                }

            }

            function convert_t_struct$_PoolKey_$10271_storage_to_t_struct$_PoolKey_$10271_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_PoolKey_$10271_memory_ptr(value)

            }

            function convert_t_uint160_to_t_contract$_IUniswapV3Pool_$2481(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IUniswapV3Pool_$2481(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IUniswapV3Pool_$2481(value)
            }

            function convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function shift_right_80_unsigned(value) -> newValue {
                newValue :=

                shr(80, value)

            }

            function cleanup_from_storage_t_int24(value) -> cleaned {
                cleaned := signextend(2, value)
            }

            function extract_from_storage_value_offset_10_t_int24(slot_value) -> value {
                value := cleanup_from_storage_t_int24(shift_right_80_unsigned(slot_value))
            }

            function read_from_storage_split_offset_10_t_int24(slot) -> value {
                value := extract_from_storage_value_offset_10_t_int24(sload(slot))

            }

            function shift_right_104_unsigned(value) -> newValue {
                newValue :=

                shr(104, value)

            }

            function extract_from_storage_value_offset_13_t_int24(slot_value) -> value {
                value := cleanup_from_storage_t_int24(shift_right_104_unsigned(slot_value))
            }

            function read_from_storage_split_offset_13_t_int24(slot) -> value {
                value := extract_from_storage_value_offset_13_t_int24(sload(slot))

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

            function abi_encode_tuple_t_int24_t_int24_t_uint128__to_t_int24_t_int24_t_uint128__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_int24_to_t_int24_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int24_to_t_int24_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint128_to_t_uint128_fromStack(value2,  add(headStart, 64))

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            function store_literal_in_memory_b3c36da41fc4c1f9bee348a3f96d2cd392cf705e6518e56365210c90cbd48f34(memPtr) {

                mstore(add(memPtr, 0), "Price slippage check")

            }

            function abi_encode_t_stringliteral_b3c36da41fc4c1f9bee348a3f96d2cd392cf705e6518e56365210c90cbd48f34_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 20)
                store_literal_in_memory_b3c36da41fc4c1f9bee348a3f96d2cd392cf705e6518e56365210c90cbd48f34(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_b3c36da41fc4c1f9bee348a3f96d2cd392cf705e6518e56365210c90cbd48f34__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_b3c36da41fc4c1f9bee348a3f96d2cd392cf705e6518e56365210c90cbd48f34_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_b3c36da41fc4c1f9bee348a3f96d2cd392cf705e6518e56365210c90cbd48f34(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_b3c36da41fc4c1f9bee348a3f96d2cd392cf705e6518e56365210c90cbd48f34__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function convert_t_contract$_NonfungiblePositionManager_$3590_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
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

            function convert_t_uint256_to_t_uint128(value) -> converted {
                converted := cleanup_t_uint128(identity(cleanup_t_uint256(value)))
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

            function cleanup_t_rational_340282366920938463463374607431768211456_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938463463374607431768211456_by_1(value)))
            }

            /// @src 106:276:344  "uint256 internal constant Q128 = 0x100000000000000000000000000000000"
            function constant_Q128_9256() -> ret {
                /// @src 106:309:344  "0x100000000000000000000000000000000"
                let expr_9255 := 0x0100000000000000000000000000000000
                let _99 := convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(expr_9255)

                ret := _99
            }

            function convert_t_uint128_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint128(value)))
            }

            function checked_add_t_uint128(x, y) -> sum {
                x := cleanup_t_uint128(x)
                y := cleanup_t_uint128(y)
                sum := add(x, y)

                if gt(sum, 0xffffffffffffffffffffffffffffffff) { panic_error_0x11() }

            }

            function extract_from_storage_value_offset_0_t_uint128(slot_value) -> value {
                value := cleanup_from_storage_t_uint128(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint128(slot) -> value {
                value := extract_from_storage_value_offset_0_t_uint128(sload(slot))

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

            function checked_sub_t_uint128(x, y) -> diff {
                x := cleanup_t_uint128(x)
                y := cleanup_t_uint128(y)
                diff := sub(x, y)

                if gt(diff, 0xffffffffffffffffffffffffffffffff) { panic_error_0x11() }

            }

            /// @src 121:9224:11364  "function decreaseLiquidity(DecreaseLiquidityParams calldata params)..."
            function fun_decreaseLiquidity_3250_inner(_39, _40, var_params_3059_offset) -> var_amount0_3071, var_amount1_3073 {
                var_amount0_3071 := _39
                var_amount1_3073 := _40

                /// @src 121:9499:9505  "params"
                let _41_offset := var_params_3059_offset
                let expr_3076_offset := _41_offset
                /// @src 121:9499:9515  "params.liquidity"
                let _42 := add(expr_3076_offset, 32)
                let expr_3077 := read_from_calldatat_uint128(_42)
                /// @src 121:9518:9519  "0"
                let expr_3078 := 0x00
                /// @src 121:9499:9519  "params.liquidity > 0"
                let expr_3079 := gt(cleanup_t_uint128(expr_3077), convert_t_rational_0_by_1_to_t_uint128(expr_3078))
                /// @src 121:9491:9520  "require(params.liquidity > 0)"
                require_helper(expr_3079)
                /// @src 121:9558:9568  "_positions"
                let _43_slot := 0x0c
                let expr_3085_slot := _43_slot
                /// @src 121:9569:9575  "params"
                let _44_offset := var_params_3059_offset
                let expr_3086_offset := _44_offset
                /// @src 121:9569:9583  "params.tokenId"
                let _45 := add(expr_3086_offset, 0)
                let expr_3087 := read_from_calldatat_uint256(_45)
                /// @src 121:9558:9584  "_positions[params.tokenId]"
                let _46 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Position_$2536_storage_$_of_t_uint256(expr_3085_slot,expr_3087)
                let _47_slot := _46
                let expr_3088_slot := _47_slot
                /// @src 121:9530:9584  "Position storage position = _positions[params.tokenId]"
                let var_position_3084_slot := convert_t_struct$_Position_$2536_storage_to_t_struct$_Position_$2536_storage_ptr(expr_3088_slot)
                /// @src 121:9623:9631  "position"
                let _48_slot := var_position_3084_slot
                let expr_3092_slot := _48_slot
                /// @src 121:9623:9641  "position.liquidity"
                let _49 := add(expr_3092_slot, 1)
                let _50 := read_from_storage_split_offset_16_t_uint128(_49)
                let expr_3093 := _50
                /// @src 121:9595:9641  "uint128 positionLiquidity = position.liquidity"
                let var_positionLiquidity_3091 := expr_3093
                /// @src 121:9659:9676  "positionLiquidity"
                let _51 := var_positionLiquidity_3091
                let expr_3096 := _51
                /// @src 121:9680:9686  "params"
                let _52_offset := var_params_3059_offset
                let expr_3097_offset := _52_offset
                /// @src 121:9680:9696  "params.liquidity"
                let _53 := add(expr_3097_offset, 32)
                let expr_3098 := read_from_calldatat_uint128(_53)
                /// @src 121:9659:9696  "positionLiquidity >= params.liquidity"
                let expr_3099 := iszero(lt(cleanup_t_uint128(expr_3096), cleanup_t_uint128(expr_3098)))
                /// @src 121:9651:9697  "require(positionLiquidity >= params.liquidity)"
                require_helper(expr_3099)
                /// @src 121:9745:9761  "_poolIdToPoolKey"
                let _54_slot := 0x0b
                let expr_3107_slot := _54_slot
                /// @src 121:9762:9770  "position"
                let _55_slot := var_position_3084_slot
                let expr_3108_slot := _55_slot
                /// @src 121:9762:9777  "position.poolId"
                let _56 := add(expr_3108_slot, 1)
                let _57 := read_from_storage_split_offset_0_t_uint80(_56)
                let expr_3109 := _57
                /// @src 121:9745:9778  "_poolIdToPoolKey[position.poolId]"
                let _58 := mapping_index_access_t_mapping$_t_uint80_$_t_struct$_PoolKey_$10271_storage_$_of_t_uint80(expr_3107_slot,expr_3109)
                let _59_slot := _58
                let expr_3110_slot := _59_slot
                /// @src 121:9708:9778  "PoolAddress.PoolKey memory poolKey = _poolIdToPoolKey[position.poolId]"
                let var_poolKey_3106_mpos := convert_t_struct$_PoolKey_$10271_storage_to_t_struct$_PoolKey_$10271_memory_ptr(expr_3110_slot)
                /// @src 121:9825:9836  "PoolAddress"
                let expr_3116_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/PoolAddress.sol:PoolAddress")
                /// @src 121:9852:9859  "factory"
                let _60 := loadimmutable("9957")
                let expr_3118 := _60
                /// @src 121:9861:9868  "poolKey"
                let _61_mpos := var_poolKey_3106_mpos
                let expr_3119_mpos := _61_mpos
                /// @src 121:9825:9869  "PoolAddress.computeAddress(factory, poolKey)"
                let expr_3120 := fun_computeAddress_10354(expr_3118, expr_3119_mpos)
                /// @src 121:9810:9870  "IUniswapV3Pool(PoolAddress.computeAddress(factory, poolKey))"
                let expr_3121_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$2481(expr_3120)
                /// @src 121:9788:9870  "IUniswapV3Pool pool = IUniswapV3Pool(PoolAddress.computeAddress(factory, poolKey))"
                let var_pool_3114_address := expr_3121_address
                /// @src 121:9901:9905  "pool"
                let _62_address := var_pool_3114_address
                let expr_3126_address := _62_address
                /// @src 121:9901:9910  "pool.burn"
                let expr_3127_address := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_3126_address)
                let expr_3127_functionSelector := 0xa34123a7
                /// @src 121:9911:9919  "position"
                let _63_slot := var_position_3084_slot
                let expr_3128_slot := _63_slot
                /// @src 121:9911:9929  "position.tickLower"
                let _64 := add(expr_3128_slot, 1)
                let _65 := read_from_storage_split_offset_10_t_int24(_64)
                let expr_3129 := _65
                /// @src 121:9931:9939  "position"
                let _66_slot := var_position_3084_slot
                let expr_3130_slot := _66_slot
                /// @src 121:9931:9949  "position.tickUpper"
                let _67 := add(expr_3130_slot, 1)
                let _68 := read_from_storage_split_offset_13_t_int24(_67)
                let expr_3131 := _68
                /// @src 121:9951:9957  "params"
                let _69_offset := var_params_3059_offset
                let expr_3132_offset := _69_offset
                /// @src 121:9951:9967  "params.liquidity"
                let _70 := add(expr_3132_offset, 32)
                let expr_3133 := read_from_calldatat_uint128(_70)
                /// @src 121:9901:9968  "pool.burn(position.tickLower, position.tickUpper, params.liquidity)"

                // storage for arguments and returned data
                let _71 := allocate_unbounded()
                mstore(_71, shift_left_224(expr_3127_functionSelector))
                let _72 := abi_encode_tuple_t_int24_t_int24_t_uint128__to_t_int24_t_int24_t_uint128__fromStack(add(_71, 4) , expr_3129, expr_3131, expr_3133)

                let _73 := call(gas(), expr_3127_address,  0,  _71, sub(_72, _71), _71, 64)

                if iszero(_73) { revert_forward_1() }

                let expr_3134_component_1, expr_3134_component_2
                if _73 {

                    let _74 := 64

                    if gt(_74, returndatasize()) {
                        _74 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_71, _74)

                    // decode return parameters from external try-call into retVars
                    expr_3134_component_1, expr_3134_component_2 :=  abi_decode_tuple_t_uint256t_uint256_fromMemory(_71, add(_71, _74))
                }
                /// @src 121:9880:9968  "(amount0, amount1) = pool.burn(position.tickLower, position.tickUpper, params.liquidity)"
                var_amount1_3073 := expr_3134_component_2
                var_amount0_3071 := expr_3134_component_1
                /// @src 121:9987:9994  "amount0"
                let _75 := var_amount0_3071
                let expr_3138 := _75
                /// @src 121:9998:10004  "params"
                let _76_offset := var_params_3059_offset
                let expr_3139_offset := _76_offset
                /// @src 121:9998:10015  "params.amount0Min"
                let _77 := add(expr_3139_offset, 64)
                let expr_3140 := read_from_calldatat_uint256(_77)
                /// @src 121:9987:10015  "amount0 >= params.amount0Min"
                let expr_3141 := iszero(lt(cleanup_t_uint256(expr_3138), cleanup_t_uint256(expr_3140)))
                /// @src 121:9987:10047  "amount0 >= params.amount0Min && amount1 >= params.amount1Min"
                let expr_3146 := expr_3141
                if expr_3146 {
                    /// @src 121:10019:10026  "amount1"
                    let _78 := var_amount1_3073
                    let expr_3142 := _78
                    /// @src 121:10030:10036  "params"
                    let _79_offset := var_params_3059_offset
                    let expr_3143_offset := _79_offset
                    /// @src 121:10030:10047  "params.amount1Min"
                    let _80 := add(expr_3143_offset, 96)
                    let expr_3144 := read_from_calldatat_uint256(_80)
                    /// @src 121:10019:10047  "amount1 >= params.amount1Min"
                    let expr_3145 := iszero(lt(cleanup_t_uint256(expr_3142), cleanup_t_uint256(expr_3144)))
                    /// @src 121:9987:10047  "amount0 >= params.amount0Min && amount1 >= params.amount1Min"
                    expr_3146 := expr_3145
                }
                /// @src 121:9979:10072  "require(amount0 >= params.amount0Min && amount1 >= params.amount1Min, 'Price slippage check')"
                require_helper_t_stringliteral_b3c36da41fc4c1f9bee348a3f96d2cd392cf705e6518e56365210c90cbd48f34(expr_3146)
                /// @src 121:10105:10116  "PositionKey"
                let expr_3152_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/PositionKey.sol:PositionKey")
                /// @src 121:10133:10137  "this"
                let expr_3156_address := address()
                /// @src 121:10125:10138  "address(this)"
                let expr_3157 := convert_t_contract$_NonfungiblePositionManager_$3590_to_t_address(expr_3156_address)
                /// @src 121:10140:10148  "position"
                let _81_slot := var_position_3084_slot
                let expr_3158_slot := _81_slot
                /// @src 121:10140:10158  "position.tickLower"
                let _82 := add(expr_3158_slot, 1)
                let _83 := read_from_storage_split_offset_10_t_int24(_82)
                let expr_3159 := _83
                /// @src 121:10160:10168  "position"
                let _84_slot := var_position_3084_slot
                let expr_3160_slot := _84_slot
                /// @src 121:10160:10178  "position.tickUpper"
                let _85 := add(expr_3160_slot, 1)
                let _86 := read_from_storage_split_offset_13_t_int24(_85)
                let expr_3161 := _86
                /// @src 121:10105:10179  "PositionKey.compute(address(this), position.tickLower, position.tickUpper)"
                let expr_3162 := fun_compute_10379(expr_3157, expr_3159, expr_3161)
                /// @src 121:10083:10179  "bytes32 positionKey = PositionKey.compute(address(this), position.tickLower, position.tickUpper)"
                let var_positionKey_3151 := expr_3162
                /// @src 121:10324:10328  "pool"
                let _87_address := var_pool_3114_address
                let expr_3168_address := _87_address
                /// @src 121:10324:10338  "pool.positions"
                let expr_3169_address := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_3168_address)
                let expr_3169_functionSelector := 0x514ea4bf
                /// @src 121:10339:10350  "positionKey"
                let _88 := var_positionKey_3151
                let expr_3170 := _88
                /// @src 121:10324:10351  "pool.positions(positionKey)"

                // storage for arguments and returned data
                let _89 := allocate_unbounded()
                mstore(_89, shift_left_224(expr_3169_functionSelector))
                let _90 := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(add(_89, 4) , expr_3170)

                let _91 := staticcall(gas(), expr_3169_address,  _89, sub(_90, _89), _89, 160)

                if iszero(_91) { revert_forward_1() }

                let expr_3171_component_1, expr_3171_component_2, expr_3171_component_3, expr_3171_component_4, expr_3171_component_5
                if _91 {

                    let _92 := 160

                    if gt(_92, returndatasize()) {
                        _92 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_89, _92)

                    // decode return parameters from external try-call into retVars
                    expr_3171_component_1, expr_3171_component_2, expr_3171_component_3, expr_3171_component_4, expr_3171_component_5 :=  abi_decode_tuple_t_uint128t_uint256t_uint256t_uint128t_uint128_fromMemory(_89, add(_89, _92))
                }
                /// @src 121:10247:10351  "(, uint256 feeGrowthInside0LastX128, uint256 feeGrowthInside1LastX128, , ) = pool.positions(positionKey)"
                let var_feeGrowthInside0LastX128_3165 := expr_3171_component_2
                let var_feeGrowthInside1LastX128_3167 := expr_3171_component_3
                /// @src 121:10406:10413  "amount0"
                let _93 := var_amount0_3071
                let expr_3178 := _93
                /// @src 121:10398:10414  "uint128(amount0)"
                let expr_3179 := convert_t_uint256_to_t_uint128(expr_3178)
                /// @src 121:10454:10462  "FullMath"
                let expr_3182_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                /// @src 121:10491:10515  "feeGrowthInside0LastX128"
                let _94 := var_feeGrowthInside0LastX128_3165
                let expr_3184 := _94
                /// @src 121:10518:10526  "position"
                let _95_slot := var_position_3084_slot
                let expr_3185_slot := _95_slot
                /// @src 121:10518:10551  "position.feeGrowthInside0LastX128"
                let _96 := add(expr_3185_slot, 2)
                let _97 := read_from_storage_split_offset_0_t_uint256(_96)
                let expr_3186 := _97
                /// @src 121:10491:10551  "feeGrowthInside0LastX128 - position.feeGrowthInside0LastX128"
                let expr_3187 := checked_sub_t_uint256(expr_3184, expr_3186)

                /// @src 121:10573:10590  "positionLiquidity"
                let _98 := var_positionLiquidity_3091
                let expr_3188 := _98
                /// @src 121:10612:10625  "FixedPoint128"
                let expr_3189_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint128.sol:FixedPoint128")
                /// @src 121:10612:10630  "FixedPoint128.Q128"
                let expr_3190 := constant_Q128_9256()
                /// @src 121:10454:10648  "FullMath.mulDiv(..."
                let _100 := convert_t_uint128_to_t_uint256(expr_3188)
                let expr_3191 := fun_mulDiv_9388(expr_3187, _100, expr_3190)
                /// @src 121:10429:10662  "uint128(..."
                let expr_3192 := convert_t_uint256_to_t_uint128(expr_3191)
                /// @src 121:10398:10662  "uint128(amount0) +..."
                let expr_3193 := checked_add_t_uint128(expr_3179, expr_3192)

                /// @src 121:10362:10370  "position"
                let _101_slot := var_position_3084_slot
                let expr_3173_slot := _101_slot
                /// @src 121:10362:10382  "position.tokensOwed0"
                let _102 := add(expr_3173_slot, 4)
                /// @src 121:10362:10662  "position.tokensOwed0 +=..."
                let _103 := read_from_storage_split_offset_0_t_uint128(_102)
                let expr_3194 := checked_add_t_uint128(_103, expr_3193)

                update_storage_value_offset_0_t_uint128_to_t_uint128(_102, expr_3194)
                /// @src 121:10716:10723  "amount1"
                let _104 := var_amount1_3073
                let expr_3201 := _104
                /// @src 121:10708:10724  "uint128(amount1)"
                let expr_3202 := convert_t_uint256_to_t_uint128(expr_3201)
                /// @src 121:10764:10772  "FullMath"
                let expr_3205_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                /// @src 121:10801:10825  "feeGrowthInside1LastX128"
                let _105 := var_feeGrowthInside1LastX128_3167
                let expr_3207 := _105
                /// @src 121:10828:10836  "position"
                let _106_slot := var_position_3084_slot
                let expr_3208_slot := _106_slot
                /// @src 121:10828:10861  "position.feeGrowthInside1LastX128"
                let _107 := add(expr_3208_slot, 3)
                let _108 := read_from_storage_split_offset_0_t_uint256(_107)
                let expr_3209 := _108
                /// @src 121:10801:10861  "feeGrowthInside1LastX128 - position.feeGrowthInside1LastX128"
                let expr_3210 := checked_sub_t_uint256(expr_3207, expr_3209)

                /// @src 121:10883:10900  "positionLiquidity"
                let _109 := var_positionLiquidity_3091
                let expr_3211 := _109
                /// @src 121:10922:10935  "FixedPoint128"
                let expr_3212_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint128.sol:FixedPoint128")
                /// @src 121:10922:10940  "FixedPoint128.Q128"
                let expr_3213 := constant_Q128_9256()
                /// @src 121:10764:10958  "FullMath.mulDiv(..."
                let _110 := convert_t_uint128_to_t_uint256(expr_3211)
                let expr_3214 := fun_mulDiv_9388(expr_3210, _110, expr_3213)
                /// @src 121:10739:10972  "uint128(..."
                let expr_3215 := convert_t_uint256_to_t_uint128(expr_3214)
                /// @src 121:10708:10972  "uint128(amount1) +..."
                let expr_3216 := checked_add_t_uint128(expr_3202, expr_3215)

                /// @src 121:10672:10680  "position"
                let _111_slot := var_position_3084_slot
                let expr_3196_slot := _111_slot
                /// @src 121:10672:10692  "position.tokensOwed1"
                let _112 := add(expr_3196_slot, 4)
                /// @src 121:10672:10972  "position.tokensOwed1 +=..."
                let _113 := read_from_storage_split_offset_16_t_uint128(_112)
                let expr_3217 := checked_add_t_uint128(_113, expr_3216)

                update_storage_value_offset_16_t_uint128_to_t_uint128(_112, expr_3217)
                /// @src 121:11019:11043  "feeGrowthInside0LastX128"
                let _114 := var_feeGrowthInside0LastX128_3165
                let expr_3222 := _114
                /// @src 121:10983:10991  "position"
                let _115_slot := var_position_3084_slot
                let expr_3219_slot := _115_slot
                /// @src 121:10983:11016  "position.feeGrowthInside0LastX128"
                let _116 := add(expr_3219_slot, 2)
                /// @src 121:10983:11043  "position.feeGrowthInside0LastX128 = feeGrowthInside0LastX128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_116, expr_3222)
                let expr_3223 := expr_3222
                /// @src 121:11089:11113  "feeGrowthInside1LastX128"
                let _117 := var_feeGrowthInside1LastX128_3167
                let expr_3228 := _117
                /// @src 121:11053:11061  "position"
                let _118_slot := var_position_3084_slot
                let expr_3225_slot := _118_slot
                /// @src 121:11053:11086  "position.feeGrowthInside1LastX128"
                let _119 := add(expr_3225_slot, 3)
                /// @src 121:11053:11113  "position.feeGrowthInside1LastX128 = feeGrowthInside1LastX128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_119, expr_3228)
                let expr_3229 := expr_3228
                /// @src 121:11236:11253  "positionLiquidity"
                let _120 := var_positionLiquidity_3091
                let expr_3234 := _120
                /// @src 121:11256:11262  "params"
                let _121_offset := var_params_3059_offset
                let expr_3235_offset := _121_offset
                /// @src 121:11256:11272  "params.liquidity"
                let _122 := add(expr_3235_offset, 32)
                let expr_3236 := read_from_calldatat_uint128(_122)
                /// @src 121:11236:11272  "positionLiquidity - params.liquidity"
                let expr_3237 := checked_sub_t_uint128(expr_3234, expr_3236)

                /// @src 121:11215:11223  "position"
                let _123_slot := var_position_3084_slot
                let expr_3231_slot := _123_slot
                /// @src 121:11215:11233  "position.liquidity"
                let _124 := add(expr_3231_slot, 1)
                /// @src 121:11215:11272  "position.liquidity = positionLiquidity - params.liquidity"
                update_storage_value_offset_16_t_uint128_to_t_uint128(_124, expr_3237)
                let expr_3238 := expr_3237
                /// @src 121:11306:11312  "params"
                let _125_offset := var_params_3059_offset
                let expr_3241_offset := _125_offset
                /// @src 121:11306:11320  "params.tokenId"
                let _126 := add(expr_3241_offset, 0)
                let expr_3242 := read_from_calldatat_uint256(_126)
                /// @src 121:11322:11328  "params"
                let _127_offset := var_params_3059_offset
                let expr_3243_offset := _127_offset
                /// @src 121:11322:11338  "params.liquidity"
                let _128 := add(expr_3243_offset, 32)
                let expr_3244 := read_from_calldatat_uint128(_128)
                /// @src 121:11340:11347  "amount0"
                let _129 := var_amount0_3071
                let expr_3245 := _129
                /// @src 121:11349:11356  "amount1"
                let _130 := var_amount1_3073
                let expr_3246 := _130
                /// @src 121:11288:11357  "DecreaseLiquidity(params.tokenId, params.liquidity, amount0, amount1)"
                let _131 := 0x26f6a048ee9138f2c0ce266f322cb99228e8d619ae2bff30c67f8dcf9d2377b4
                let _132 := convert_t_uint256_to_t_uint256(expr_3242)
                {
                    let _133 := allocate_unbounded()
                    let _134 := abi_encode_tuple_t_uint128_t_uint256_t_uint256__to_t_uint128_t_uint256_t_uint256__fromStack(_133 , expr_3244, expr_3245, expr_3246)
                    log2(_133, sub(_134, _133) , _131, _132)
                }
            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 3250
            /// @src 121:9224:11364  "function decreaseLiquidity(DecreaseLiquidityParams calldata params)..."
            function fun_decreaseLiquidity_3250(var_params_3059_offset) -> var_amount0_3071, var_amount1_3073 {
                /// @src 121:9443:9458  "uint256 amount0"
                let zero_t_uint256_25 := zero_value_for_split_t_uint256()
                var_amount0_3071 := zero_t_uint256_25
                /// @src 121:9460:9475  "uint256 amount1"
                let zero_t_uint256_26 := zero_value_for_split_t_uint256()
                var_amount1_3073 := zero_t_uint256_26

                var_amount0_3071, var_amount1_3073 := modifier_isAuthorizedForToken_3065(var_amount0_3071, var_amount1_3073, var_params_3059_offset)
            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function convert_t_contract$_PeripheryPayments_$24025_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            /// @ast-id 23956
            /// @src 128:1443:1603  "function refundETH() external payable override {..."
            function fun_refundETH_23956() {

                /// @src 128:1512:1516  "this"
                let expr_23937_address := address()
                /// @src 128:1504:1517  "address(this)"
                let expr_23938 := convert_t_contract$_PeripheryPayments_$24025_to_t_address(expr_23937_address)
                /// @src 128:1504:1525  "address(this).balance"
                let expr_23939 := balance(expr_23938)
                /// @src 128:1528:1529  "0"
                let expr_23940 := 0x00
                /// @src 128:1504:1529  "address(this).balance > 0"
                let expr_23941 := gt(cleanup_t_uint256(expr_23939), convert_t_rational_0_by_1_to_t_uint256(expr_23940))
                /// @src 128:1500:1596  "if (address(this).balance > 0) TransferHelper.safeTransferETH(msg.sender, address(this).balance)"
                if expr_23941 {
                    /// @src 128:1531:1545  "TransferHelper"
                    let expr_23942_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/TransferHelper.sol:TransferHelper")
                    /// @src 128:1562:1572  "msg.sender"
                    let expr_23946 := caller()
                    /// @src 128:1582:1586  "this"
                    let expr_23949_address := address()
                    /// @src 128:1574:1587  "address(this)"
                    let expr_23950 := convert_t_contract$_PeripheryPayments_$24025_to_t_address(expr_23949_address)
                    /// @src 128:1574:1595  "address(this).balance"
                    let expr_23951 := balance(expr_23950)
                    fun_safeTransferETH_35902(expr_23946, expr_23951)
                    /// @src 128:1500:1596  "if (address(this).balance > 0) TransferHelper.safeTransferETH(msg.sender, address(this).balance)"
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function convert_t_uint160_to_t_contract$_IUniswapV3Factory_$8830(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IUniswapV3Factory_$8830(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IUniswapV3Factory_$8830(value)
            }

            function convert_t_contract$_IUniswapV3Factory_$8830_to_t_address(value) -> converted {
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

            function abi_encode_tuple_t_address_t_address_t_uint24__to_t_address_t_address_t_uint24__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint24_to_t_uint24_fromStack(value2,  add(headStart, 64))

            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
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

            function abi_decode_tuple__fromMemory(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function abi_encode_t_uint160_to_t_uint160_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint160(value))
            }

            function abi_encode_tuple_t_uint160__to_t_uint160__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint160_to_t_uint160_fromStack(value0,  add(headStart, 0))

            }

            /// @ast-id 10089
            /// @src 130:497:1216  "function createAndInitializePoolIfNecessary(..."
            function fun_createAndInitializePoolIfNecessary_10089(var_token0_10012, var_token1_10014, var_fee_10016, var_sqrtPriceX96_10018) -> var_pool_10022 {
                /// @src 130:680:692  "address pool"
                let zero_t_address_135 := zero_value_for_split_t_address()
                var_pool_10022 := zero_t_address_135

                /// @src 130:712:718  "token0"
                let _136 := var_token0_10012
                let expr_10025 := _136
                /// @src 130:721:727  "token1"
                let _137 := var_token1_10014
                let expr_10026 := _137
                /// @src 130:712:727  "token0 < token1"
                let expr_10027 := lt(cleanup_t_address(expr_10025), cleanup_t_address(expr_10026))
                /// @src 130:704:728  "require(token0 < token1)"
                require_helper(expr_10027)
                /// @src 130:763:770  "factory"
                let _138 := loadimmutable("9957")
                let expr_10032 := _138
                /// @src 130:745:771  "IUniswapV3Factory(factory)"
                let expr_10033_address := convert_t_address_to_t_contract$_IUniswapV3Factory_$8830(expr_10032)
                /// @src 130:745:779  "IUniswapV3Factory(factory).getPool"
                let expr_10034_address := convert_t_contract$_IUniswapV3Factory_$8830_to_t_address(expr_10033_address)
                let expr_10034_functionSelector := 0x1698ee82
                /// @src 130:780:786  "token0"
                let _139 := var_token0_10012
                let expr_10035 := _139
                /// @src 130:788:794  "token1"
                let _140 := var_token1_10014
                let expr_10036 := _140
                /// @src 130:796:799  "fee"
                let _141 := var_fee_10016
                let expr_10037 := _141
                /// @src 130:745:800  "IUniswapV3Factory(factory).getPool(token0, token1, fee)"

                // storage for arguments and returned data
                let _142 := allocate_unbounded()
                mstore(_142, shift_left_224(expr_10034_functionSelector))
                let _143 := abi_encode_tuple_t_address_t_address_t_uint24__to_t_address_t_address_t_uint24__fromStack(add(_142, 4) , expr_10035, expr_10036, expr_10037)

                let _144 := staticcall(gas(), expr_10034_address,  _142, sub(_143, _142), _142, 32)

                if iszero(_144) { revert_forward_1() }

                let expr_10038
                if _144 {

                    let _145 := 32

                    if gt(_145, returndatasize()) {
                        _145 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_142, _145)

                    // decode return parameters from external try-call into retVars
                    expr_10038 :=  abi_decode_tuple_t_address_fromMemory(_142, add(_142, _145))
                }
                /// @src 130:738:800  "pool = IUniswapV3Factory(factory).getPool(token0, token1, fee)"
                var_pool_10022 := expr_10038
                let expr_10039 := expr_10038
                /// @src 130:815:819  "pool"
                let _146 := var_pool_10022
                let expr_10041 := _146
                /// @src 130:831:832  "0"
                let expr_10044 := 0x00
                /// @src 130:823:833  "address(0)"
                let expr_10045 := convert_t_rational_0_by_1_to_t_address(expr_10044)
                /// @src 130:815:833  "pool == address(0)"
                let expr_10046 := eq(cleanup_t_address(expr_10041), cleanup_t_address(expr_10045))
                /// @src 130:811:1210  "if (pool == address(0)) {..."
                switch expr_10046
                case 0 {
                    /// @src 130:1064:1068  "pool"
                    let _147 := var_pool_10022
                    let expr_10069 := _147
                    /// @src 130:1049:1069  "IUniswapV3Pool(pool)"
                    let expr_10070_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$2481(expr_10069)
                    /// @src 130:1049:1075  "IUniswapV3Pool(pool).slot0"
                    let expr_10071_address := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_10070_address)
                    let expr_10071_functionSelector := 0x3850c7bd
                    /// @src 130:1049:1077  "IUniswapV3Pool(pool).slot0()"

                    // storage for arguments and returned data
                    let _148 := allocate_unbounded()
                    mstore(_148, shift_left_224(expr_10071_functionSelector))
                    let _149 := abi_encode_tuple__to__fromStack(add(_148, 4) )

                    let _150 := staticcall(gas(), expr_10071_address,  _148, sub(_149, _148), _148, 224)

                    if iszero(_150) { revert_forward_1() }

                    let expr_10072_component_1, expr_10072_component_2, expr_10072_component_3, expr_10072_component_4, expr_10072_component_5, expr_10072_component_6, expr_10072_component_7
                    if _150 {

                        let _151 := 224

                        if gt(_151, returndatasize()) {
                            _151 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_148, _151)

                        // decode return parameters from external try-call into retVars
                        expr_10072_component_1, expr_10072_component_2, expr_10072_component_3, expr_10072_component_4, expr_10072_component_5, expr_10072_component_6, expr_10072_component_7 :=  abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(_148, add(_148, _151))
                    }
                    /// @src 130:1004:1077  "(uint160 sqrtPriceX96Existing, , , , , , ) = IUniswapV3Pool(pool).slot0()"
                    let var_sqrtPriceX96Existing_10067 := expr_10072_component_1
                    /// @src 130:1095:1115  "sqrtPriceX96Existing"
                    let _152 := var_sqrtPriceX96Existing_10067
                    let expr_10074 := _152
                    /// @src 130:1119:1120  "0"
                    let expr_10075 := 0x00
                    /// @src 130:1095:1120  "sqrtPriceX96Existing == 0"
                    let expr_10076 := eq(cleanup_t_uint160(expr_10074), convert_t_rational_0_by_1_to_t_uint160(expr_10075))
                    /// @src 130:1091:1200  "if (sqrtPriceX96Existing == 0) {..."
                    if expr_10076 {
                        /// @src 130:1155:1159  "pool"
                        let _153 := var_pool_10022
                        let expr_10078 := _153
                        /// @src 130:1140:1160  "IUniswapV3Pool(pool)"
                        let expr_10079_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$2481(expr_10078)
                        /// @src 130:1140:1171  "IUniswapV3Pool(pool).initialize"
                        let expr_10080_address := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_10079_address)
                        let expr_10080_functionSelector := 0xf637731d
                        /// @src 130:1172:1184  "sqrtPriceX96"
                        let _154 := var_sqrtPriceX96_10018
                        let expr_10081 := _154
                        /// @src 130:1140:1185  "IUniswapV3Pool(pool).initialize(sqrtPriceX96)"

                        if iszero(extcodesize(expr_10080_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                        // storage for arguments and returned data
                        let _155 := allocate_unbounded()
                        mstore(_155, shift_left_224(expr_10080_functionSelector))
                        let _156 := abi_encode_tuple_t_uint160__to_t_uint160__fromStack(add(_155, 4) , expr_10081)

                        let _157 := call(gas(), expr_10080_address,  0,  _155, sub(_156, _155), _155, 0)

                        if iszero(_157) { revert_forward_1() }

                        if _157 {

                            let _158 := 0

                            if gt(_158, returndatasize()) {
                                _158 := returndatasize()
                            }

                            // update freeMemoryPointer according to dynamic return size
                            finalize_allocation(_155, _158)

                            // decode return parameters from external try-call into retVars
                            abi_decode_tuple__fromMemory(_155, add(_155, _158))
                        }
                        /// @src 130:1091:1200  "if (sqrtPriceX96Existing == 0) {..."
                    }
                    /// @src 130:811:1210  "if (pool == address(0)) {..."
                }
                default {
                    /// @src 130:874:881  "factory"
                    let _159 := loadimmutable("9957")
                    let expr_10049 := _159
                    /// @src 130:856:882  "IUniswapV3Factory(factory)"
                    let expr_10050_address := convert_t_address_to_t_contract$_IUniswapV3Factory_$8830(expr_10049)
                    /// @src 130:856:893  "IUniswapV3Factory(factory).createPool"
                    let expr_10051_address := convert_t_contract$_IUniswapV3Factory_$8830_to_t_address(expr_10050_address)
                    let expr_10051_functionSelector := 0xa1671295
                    /// @src 130:894:900  "token0"
                    let _160 := var_token0_10012
                    let expr_10052 := _160
                    /// @src 130:902:908  "token1"
                    let _161 := var_token1_10014
                    let expr_10053 := _161
                    /// @src 130:910:913  "fee"
                    let _162 := var_fee_10016
                    let expr_10054 := _162
                    /// @src 130:856:914  "IUniswapV3Factory(factory).createPool(token0, token1, fee)"

                    // storage for arguments and returned data
                    let _163 := allocate_unbounded()
                    mstore(_163, shift_left_224(expr_10051_functionSelector))
                    let _164 := abi_encode_tuple_t_address_t_address_t_uint24__to_t_address_t_address_t_uint24__fromStack(add(_163, 4) , expr_10052, expr_10053, expr_10054)

                    let _165 := call(gas(), expr_10051_address,  0,  _163, sub(_164, _163), _163, 32)

                    if iszero(_165) { revert_forward_1() }

                    let expr_10055
                    if _165 {

                        let _166 := 32

                        if gt(_166, returndatasize()) {
                            _166 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_163, _166)

                        // decode return parameters from external try-call into retVars
                        expr_10055 :=  abi_decode_tuple_t_address_fromMemory(_163, add(_163, _166))
                    }
                    /// @src 130:849:914  "pool = IUniswapV3Factory(factory).createPool(token0, token1, fee)"
                    var_pool_10022 := expr_10055
                    let expr_10056 := expr_10055
                    /// @src 130:943:947  "pool"
                    let _167 := var_pool_10022
                    let expr_10059 := _167
                    /// @src 130:928:948  "IUniswapV3Pool(pool)"
                    let expr_10060_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$2481(expr_10059)
                    /// @src 130:928:959  "IUniswapV3Pool(pool).initialize"
                    let expr_10061_address := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_10060_address)
                    let expr_10061_functionSelector := 0xf637731d
                    /// @src 130:960:972  "sqrtPriceX96"
                    let _168 := var_sqrtPriceX96_10018
                    let expr_10062 := _168
                    /// @src 130:928:973  "IUniswapV3Pool(pool).initialize(sqrtPriceX96)"

                    if iszero(extcodesize(expr_10061_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                    // storage for arguments and returned data
                    let _169 := allocate_unbounded()
                    mstore(_169, shift_left_224(expr_10061_functionSelector))
                    let _170 := abi_encode_tuple_t_uint160__to_t_uint160__fromStack(add(_169, 4) , expr_10062)

                    let _171 := call(gas(), expr_10061_address,  0,  _169, sub(_170, _169), _169, 0)

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
                    /// @src 130:811:1210  "if (pool == address(0)) {..."
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function convert_t_struct$_UintToAddressMap_$34879_storage_to_t_struct$_UintToAddressMap_$34879_storage_ptr(value) -> converted {
                converted := value
            }

            /// @ast-id 22823
            /// @src 36:6282:6490  "function totalSupply() public view virtual override returns (uint256) {..."
            function fun_totalSupply_22823() -> var__22816 {
                /// @src 36:6343:6350  "uint256"
                let zero_t_uint256_173 := zero_value_for_split_t_uint256()
                var__22816 := zero_t_uint256_173

                /// @src 36:6462:6474  "_tokenOwners"
                let _174_slot := 0x02
                let expr_22818_slot := _174_slot
                /// @src 36:6462:6481  "_tokenOwners.length"
                let expr_22819_self_slot := convert_t_struct$_UintToAddressMap_$34879_storage_to_t_struct$_UintToAddressMap_$34879_storage_ptr(expr_22818_slot)
                /// @src 36:6462:6483  "_tokenOwners.length()"
                let expr_22820 := fun_length_34969(expr_22819_self_slot)
                /// @src 36:6455:6483  "return _tokenOwners.length()"
                var__22816 := expr_22820
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function zero_value_for_split_t_uint128() -> ret {
                ret := 0
            }

            /// @ast-id 9997
            /// @src 129:201:331  "modifier checkDeadline(uint256 deadline) {..."
            function modifier_checkDeadline_2904(var_liquidity_2906, var_amount0_2908, var_amount1_2910, var_params_2898_offset) -> _178, _179, _180 {
                _178 := var_liquidity_2906
                _179 := var_amount0_2908
                _180 := var_amount1_2910

                /// @src 121:7250:7256  "params"
                let _181_offset := var_params_2898_offset
                let expr_2902_offset := _181_offset
                /// @src 121:7250:7265  "params.deadline"
                let _182 := add(expr_2902_offset, 160)
                let expr_2903 := read_from_calldatat_uint256(_182)
                let _183 := expr_2903
                let var_deadline_9985 := _183

                /// @src 129:260:277  "_blockTimestamp()"
                let expr_9989 := fun__blockTimestamp_23800()
                /// @src 129:281:289  "deadline"
                let _184 := var_deadline_9985
                let expr_9990 := _184
                /// @src 129:260:289  "_blockTimestamp() <= deadline"
                let expr_9991 := iszero(gt(cleanup_t_uint256(expr_9989), cleanup_t_uint256(expr_9990)))
                /// @src 129:252:313  "require(_blockTimestamp() <= deadline, 'Transaction too old')"
                require_helper_t_stringliteral_c2621685b6a86291a4533558eb72fba04db12a0363db47624d86d9bbb608d293(expr_9991)
                /// @src 129:323:324  "_"
                _178, _179, _180 := fun_increaseLiquidity_3055_inner(var_liquidity_2906, var_amount0_2908, var_amount1_2910, var_params_2898_offset)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function zero_value_for_split_t_contract$_IUniswapV3Pool_$2481() -> ret {
                ret := 0
            }

            function read_from_memoryt_address(ptr) -> returnValue {

                let value := cleanup_t_address(mload(ptr))

                returnValue :=

                value

            }

            function read_from_memoryt_uint24(ptr) -> returnValue {

                let value := cleanup_t_uint24(mload(ptr))

                returnValue :=

                value

            }

            function allocate_memory_struct_t_struct$_AddLiquidityParams_$9747_storage_ptr() -> memPtr {
                memPtr := allocate_memory(320)
            }

            function write_to_memory_t_int24(memPtr, value) {
                mstore(memPtr, cleanup_t_int24(value))
            }

            function write_to_memory_t_uint256(memPtr, value) {
                mstore(memPtr, cleanup_t_uint256(value))
            }

            /// @src 121:7110:9170  "function increaseLiquidity(IncreaseLiquidityParams calldata params)..."
            function fun_increaseLiquidity_3055_inner(_185, _186, _187, var_params_2898_offset) -> var_liquidity_2906, var_amount0_2908, var_amount1_2910 {
                var_liquidity_2906 := _185
                var_amount0_2908 := _186
                var_amount1_2910 := _187

                /// @src 121:7425:7435  "_positions"
                let _188_slot := 0x0c
                let expr_2915_slot := _188_slot
                /// @src 121:7436:7442  "params"
                let _189_offset := var_params_2898_offset
                let expr_2916_offset := _189_offset
                /// @src 121:7436:7450  "params.tokenId"
                let _190 := add(expr_2916_offset, 0)
                let expr_2917 := read_from_calldatat_uint256(_190)
                /// @src 121:7425:7451  "_positions[params.tokenId]"
                let _191 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Position_$2536_storage_$_of_t_uint256(expr_2915_slot,expr_2917)
                let _192_slot := _191
                let expr_2918_slot := _192_slot
                /// @src 121:7397:7451  "Position storage position = _positions[params.tokenId]"
                let var_position_2914_slot := convert_t_struct$_Position_$2536_storage_to_t_struct$_Position_$2536_storage_ptr(expr_2918_slot)
                /// @src 121:7499:7515  "_poolIdToPoolKey"
                let _193_slot := 0x0b
                let expr_2925_slot := _193_slot
                /// @src 121:7516:7524  "position"
                let _194_slot := var_position_2914_slot
                let expr_2926_slot := _194_slot
                /// @src 121:7516:7531  "position.poolId"
                let _195 := add(expr_2926_slot, 1)
                let _196 := read_from_storage_split_offset_0_t_uint80(_195)
                let expr_2927 := _196
                /// @src 121:7499:7532  "_poolIdToPoolKey[position.poolId]"
                let _197 := mapping_index_access_t_mapping$_t_uint80_$_t_struct$_PoolKey_$10271_storage_$_of_t_uint80(expr_2925_slot,expr_2927)
                let _198_slot := _197
                let expr_2928_slot := _198_slot
                /// @src 121:7462:7532  "PoolAddress.PoolKey memory poolKey = _poolIdToPoolKey[position.poolId]"
                let var_poolKey_2924_mpos := convert_t_struct$_PoolKey_$10271_storage_to_t_struct$_PoolKey_$10271_memory_ptr(expr_2928_slot)
                /// @src 121:7543:7562  "IUniswapV3Pool pool"
                let var_pool_2932_address
                let zero_t_contract$_IUniswapV3Pool_$2481_199_address := zero_value_for_split_t_contract$_IUniswapV3Pool_$2481()
                var_pool_2932_address := zero_t_contract$_IUniswapV3Pool_$2481_199_address
                /// @src 121:7681:7688  "poolKey"
                let _200_mpos := var_poolKey_2924_mpos
                let expr_2941_mpos := _200_mpos
                /// @src 121:7681:7695  "poolKey.token0"
                let _201 := add(expr_2941_mpos, 0)
                let _202 := read_from_memoryt_address(_201)
                let expr_2942 := _202
                /// @src 121:7721:7728  "poolKey"
                let _203_mpos := var_poolKey_2924_mpos
                let expr_2943_mpos := _203_mpos
                /// @src 121:7721:7735  "poolKey.token1"
                let _204 := add(expr_2943_mpos, 32)
                let _205 := read_from_memoryt_address(_204)
                let expr_2944 := _205
                /// @src 121:7758:7765  "poolKey"
                let _206_mpos := var_poolKey_2924_mpos
                let expr_2945_mpos := _206_mpos
                /// @src 121:7758:7769  "poolKey.fee"
                let _207 := add(expr_2945_mpos, 64)
                let _208 := read_from_memoryt_uint24(_207)
                let expr_2946 := _208
                /// @src 121:7798:7806  "position"
                let _209_slot := var_position_2914_slot
                let expr_2947_slot := _209_slot
                /// @src 121:7798:7816  "position.tickLower"
                let _210 := add(expr_2947_slot, 1)
                let _211 := read_from_storage_split_offset_10_t_int24(_210)
                let expr_2948 := _211
                /// @src 121:7845:7853  "position"
                let _212_slot := var_position_2914_slot
                let expr_2949_slot := _212_slot
                /// @src 121:7845:7863  "position.tickUpper"
                let _213 := add(expr_2949_slot, 1)
                let _214 := read_from_storage_split_offset_13_t_int24(_213)
                let expr_2950 := _214
                /// @src 121:7897:7903  "params"
                let _215_offset := var_params_2898_offset
                let expr_2951_offset := _215_offset
                /// @src 121:7897:7918  "params.amount0Desired"
                let _216 := add(expr_2951_offset, 32)
                let expr_2952 := read_from_calldatat_uint256(_216)
                /// @src 121:7952:7958  "params"
                let _217_offset := var_params_2898_offset
                let expr_2953_offset := _217_offset
                /// @src 121:7952:7973  "params.amount1Desired"
                let _218 := add(expr_2953_offset, 64)
                let expr_2954 := read_from_calldatat_uint256(_218)
                /// @src 121:8003:8009  "params"
                let _219_offset := var_params_2898_offset
                let expr_2955_offset := _219_offset
                /// @src 121:8003:8020  "params.amount0Min"
                let _220 := add(expr_2955_offset, 96)
                let expr_2956 := read_from_calldatat_uint256(_220)
                /// @src 121:8050:8056  "params"
                let _221_offset := var_params_2898_offset
                let expr_2957_offset := _221_offset
                /// @src 121:8050:8067  "params.amount1Min"
                let _222 := add(expr_2957_offset, 128)
                let expr_2958 := read_from_calldatat_uint256(_222)
                /// @src 121:8104:8108  "this"
                let expr_2961_address := address()
                /// @src 121:8096:8109  "address(this)"
                let expr_2962 := convert_t_contract$_NonfungiblePositionManager_$3590_to_t_address(expr_2961_address)
                /// @src 121:7636:8124  "AddLiquidityParams({..."
                let expr_2963_mpos := allocate_memory_struct_t_struct$_AddLiquidityParams_$9747_storage_ptr()
                write_to_memory_t_address(add(expr_2963_mpos, 0), expr_2942)
                write_to_memory_t_address(add(expr_2963_mpos, 32), expr_2944)
                write_to_memory_t_uint24(add(expr_2963_mpos, 64), expr_2946)
                write_to_memory_t_address(add(expr_2963_mpos, 96), expr_2962)
                write_to_memory_t_int24(add(expr_2963_mpos, 128), expr_2948)
                write_to_memory_t_int24(add(expr_2963_mpos, 160), expr_2950)
                write_to_memory_t_uint256(add(expr_2963_mpos, 192), expr_2952)
                write_to_memory_t_uint256(add(expr_2963_mpos, 224), expr_2954)
                write_to_memory_t_uint256(add(expr_2963_mpos, 256), expr_2956)
                write_to_memory_t_uint256(add(expr_2963_mpos, 288), expr_2958)
                /// @src 121:7610:8134  "addLiquidity(..."
                let expr_2964_component_1, expr_2964_component_2, expr_2964_component_3, expr_2964_component_4_address := fun_addLiquidity_9861(expr_2963_mpos)
                /// @src 121:7572:8134  "(liquidity, amount0, amount1, pool) = addLiquidity(..."
                var_pool_2932_address := expr_2964_component_4_address
                var_amount1_2910 := expr_2964_component_3
                var_amount0_2908 := expr_2964_component_2
                var_liquidity_2906 := expr_2964_component_1
                /// @src 121:8167:8178  "PositionKey"
                let expr_2969_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/PositionKey.sol:PositionKey")
                /// @src 121:8195:8199  "this"
                let expr_2973_address := address()
                /// @src 121:8187:8200  "address(this)"
                let expr_2974 := convert_t_contract$_NonfungiblePositionManager_$3590_to_t_address(expr_2973_address)
                /// @src 121:8202:8210  "position"
                let _223_slot := var_position_2914_slot
                let expr_2975_slot := _223_slot
                /// @src 121:8202:8220  "position.tickLower"
                let _224 := add(expr_2975_slot, 1)
                let _225 := read_from_storage_split_offset_10_t_int24(_224)
                let expr_2976 := _225
                /// @src 121:8222:8230  "position"
                let _226_slot := var_position_2914_slot
                let expr_2977_slot := _226_slot
                /// @src 121:8222:8240  "position.tickUpper"
                let _227 := add(expr_2977_slot, 1)
                let _228 := read_from_storage_split_offset_13_t_int24(_227)
                let expr_2978 := _228
                /// @src 121:8167:8241  "PositionKey.compute(address(this), position.tickLower, position.tickUpper)"
                let expr_2979 := fun_compute_10379(expr_2974, expr_2976, expr_2978)
                /// @src 121:8145:8241  "bytes32 positionKey = PositionKey.compute(address(this), position.tickLower, position.tickUpper)"
                let var_positionKey_2968 := expr_2979
                /// @src 121:8387:8391  "pool"
                let _229_address := var_pool_2932_address
                let expr_2985_address := _229_address
                /// @src 121:8387:8401  "pool.positions"
                let expr_2986_address := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_2985_address)
                let expr_2986_functionSelector := 0x514ea4bf
                /// @src 121:8402:8413  "positionKey"
                let _230 := var_positionKey_2968
                let expr_2987 := _230
                /// @src 121:8387:8414  "pool.positions(positionKey)"

                // storage for arguments and returned data
                let _231 := allocate_unbounded()
                mstore(_231, shift_left_224(expr_2986_functionSelector))
                let _232 := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(add(_231, 4) , expr_2987)

                let _233 := staticcall(gas(), expr_2986_address,  _231, sub(_232, _231), _231, 160)

                if iszero(_233) { revert_forward_1() }

                let expr_2988_component_1, expr_2988_component_2, expr_2988_component_3, expr_2988_component_4, expr_2988_component_5
                if _233 {

                    let _234 := 160

                    if gt(_234, returndatasize()) {
                        _234 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_231, _234)

                    // decode return parameters from external try-call into retVars
                    expr_2988_component_1, expr_2988_component_2, expr_2988_component_3, expr_2988_component_4, expr_2988_component_5 :=  abi_decode_tuple_t_uint128t_uint256t_uint256t_uint128t_uint128_fromMemory(_231, add(_231, _234))
                }
                /// @src 121:8310:8414  "(, uint256 feeGrowthInside0LastX128, uint256 feeGrowthInside1LastX128, , ) = pool.positions(positionKey)"
                let var_feeGrowthInside0LastX128_2982 := expr_2988_component_2
                let var_feeGrowthInside1LastX128_2984 := expr_2988_component_3
                /// @src 121:8470:8478  "FullMath"
                let expr_2995_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                /// @src 121:8503:8527  "feeGrowthInside0LastX128"
                let _235 := var_feeGrowthInside0LastX128_2982
                let expr_2997 := _235
                /// @src 121:8530:8538  "position"
                let _236_slot := var_position_2914_slot
                let expr_2998_slot := _236_slot
                /// @src 121:8530:8563  "position.feeGrowthInside0LastX128"
                let _237 := add(expr_2998_slot, 2)
                let _238 := read_from_storage_split_offset_0_t_uint256(_237)
                let expr_2999 := _238
                /// @src 121:8503:8563  "feeGrowthInside0LastX128 - position.feeGrowthInside0LastX128"
                let expr_3000 := checked_sub_t_uint256(expr_2997, expr_2999)

                /// @src 121:8581:8589  "position"
                let _239_slot := var_position_2914_slot
                let expr_3001_slot := _239_slot
                /// @src 121:8581:8599  "position.liquidity"
                let _240 := add(expr_3001_slot, 1)
                let _241 := read_from_storage_split_offset_16_t_uint128(_240)
                let expr_3002 := _241
                /// @src 121:8617:8630  "FixedPoint128"
                let expr_3003_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint128.sol:FixedPoint128")
                /// @src 121:8617:8635  "FixedPoint128.Q128"
                let expr_3004 := constant_Q128_9256()
                /// @src 121:8470:8649  "FullMath.mulDiv(..."
                let _242 := convert_t_uint128_to_t_uint256(expr_3002)
                let expr_3005 := fun_mulDiv_9388(expr_3000, _242, expr_3004)
                /// @src 121:8449:8659  "uint128(..."
                let expr_3006 := convert_t_uint256_to_t_uint128(expr_3005)
                /// @src 121:8425:8433  "position"
                let _243_slot := var_position_2914_slot
                let expr_2990_slot := _243_slot
                /// @src 121:8425:8445  "position.tokensOwed0"
                let _244 := add(expr_2990_slot, 4)
                /// @src 121:8425:8659  "position.tokensOwed0 += uint128(..."
                let _245 := read_from_storage_split_offset_0_t_uint128(_244)
                let expr_3007 := checked_add_t_uint128(_245, expr_3006)

                update_storage_value_offset_0_t_uint128_to_t_uint128(_244, expr_3007)
                /// @src 121:8714:8722  "FullMath"
                let expr_3014_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                /// @src 121:8747:8771  "feeGrowthInside1LastX128"
                let _246 := var_feeGrowthInside1LastX128_2984
                let expr_3016 := _246
                /// @src 121:8774:8782  "position"
                let _247_slot := var_position_2914_slot
                let expr_3017_slot := _247_slot
                /// @src 121:8774:8807  "position.feeGrowthInside1LastX128"
                let _248 := add(expr_3017_slot, 3)
                let _249 := read_from_storage_split_offset_0_t_uint256(_248)
                let expr_3018 := _249
                /// @src 121:8747:8807  "feeGrowthInside1LastX128 - position.feeGrowthInside1LastX128"
                let expr_3019 := checked_sub_t_uint256(expr_3016, expr_3018)

                /// @src 121:8825:8833  "position"
                let _250_slot := var_position_2914_slot
                let expr_3020_slot := _250_slot
                /// @src 121:8825:8843  "position.liquidity"
                let _251 := add(expr_3020_slot, 1)
                let _252 := read_from_storage_split_offset_16_t_uint128(_251)
                let expr_3021 := _252
                /// @src 121:8861:8874  "FixedPoint128"
                let expr_3022_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint128.sol:FixedPoint128")
                /// @src 121:8861:8879  "FixedPoint128.Q128"
                let expr_3023 := constant_Q128_9256()
                /// @src 121:8714:8893  "FullMath.mulDiv(..."
                let _253 := convert_t_uint128_to_t_uint256(expr_3021)
                let expr_3024 := fun_mulDiv_9388(expr_3019, _253, expr_3023)
                /// @src 121:8693:8903  "uint128(..."
                let expr_3025 := convert_t_uint256_to_t_uint128(expr_3024)
                /// @src 121:8669:8677  "position"
                let _254_slot := var_position_2914_slot
                let expr_3009_slot := _254_slot
                /// @src 121:8669:8689  "position.tokensOwed1"
                let _255 := add(expr_3009_slot, 4)
                /// @src 121:8669:8903  "position.tokensOwed1 += uint128(..."
                let _256 := read_from_storage_split_offset_16_t_uint128(_255)
                let expr_3026 := checked_add_t_uint128(_256, expr_3025)

                update_storage_value_offset_16_t_uint128_to_t_uint128(_255, expr_3026)
                /// @src 121:8950:8974  "feeGrowthInside0LastX128"
                let _257 := var_feeGrowthInside0LastX128_2982
                let expr_3031 := _257
                /// @src 121:8914:8922  "position"
                let _258_slot := var_position_2914_slot
                let expr_3028_slot := _258_slot
                /// @src 121:8914:8947  "position.feeGrowthInside0LastX128"
                let _259 := add(expr_3028_slot, 2)
                /// @src 121:8914:8974  "position.feeGrowthInside0LastX128 = feeGrowthInside0LastX128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_259, expr_3031)
                let expr_3032 := expr_3031
                /// @src 121:9020:9044  "feeGrowthInside1LastX128"
                let _260 := var_feeGrowthInside1LastX128_2984
                let expr_3037 := _260
                /// @src 121:8984:8992  "position"
                let _261_slot := var_position_2914_slot
                let expr_3034_slot := _261_slot
                /// @src 121:8984:9017  "position.feeGrowthInside1LastX128"
                let _262 := add(expr_3034_slot, 3)
                /// @src 121:8984:9044  "position.feeGrowthInside1LastX128 = feeGrowthInside1LastX128"
                update_storage_value_offset_0_t_uint256_to_t_uint256(_262, expr_3037)
                let expr_3038 := expr_3037
                /// @src 121:9076:9085  "liquidity"
                let _263 := var_liquidity_2906
                let expr_3043 := _263
                /// @src 121:9054:9062  "position"
                let _264_slot := var_position_2914_slot
                let expr_3040_slot := _264_slot
                /// @src 121:9054:9072  "position.liquidity"
                let _265 := add(expr_3040_slot, 1)
                /// @src 121:9054:9085  "position.liquidity += liquidity"
                let _266 := read_from_storage_split_offset_16_t_uint128(_265)
                let expr_3044 := checked_add_t_uint128(_266, expr_3043)

                update_storage_value_offset_16_t_uint128_to_t_uint128(_265, expr_3044)
                /// @src 121:9119:9125  "params"
                let _267_offset := var_params_2898_offset
                let expr_3047_offset := _267_offset
                /// @src 121:9119:9133  "params.tokenId"
                let _268 := add(expr_3047_offset, 0)
                let expr_3048 := read_from_calldatat_uint256(_268)
                /// @src 121:9135:9144  "liquidity"
                let _269 := var_liquidity_2906
                let expr_3049 := _269
                /// @src 121:9146:9153  "amount0"
                let _270 := var_amount0_2908
                let expr_3050 := _270
                /// @src 121:9155:9162  "amount1"
                let _271 := var_amount1_2910
                let expr_3051 := _271
                /// @src 121:9101:9163  "IncreaseLiquidity(params.tokenId, liquidity, amount0, amount1)"
                let _272 := 0x3067048beee31b25b2f1681f88dac838c8bba36af25bfb2b7cf7473a5847e35f
                let _273 := convert_t_uint256_to_t_uint256(expr_3048)
                {
                    let _274 := allocate_unbounded()
                    let _275 := abi_encode_tuple_t_uint128_t_uint256_t_uint256__to_t_uint128_t_uint256_t_uint256__fromStack(_274 , expr_3049, expr_3050, expr_3051)
                    log2(_274, sub(_275, _274) , _272, _273)
                }
            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 3055
            /// @src 121:7110:9170  "function increaseLiquidity(IncreaseLiquidityParams calldata params)..."
            function fun_increaseLiquidity_3055(var_params_2898_offset) -> var_liquidity_2906, var_amount0_2908, var_amount1_2910 {
                /// @src 121:7297:7314  "uint128 liquidity"
                let zero_t_uint128_175 := zero_value_for_split_t_uint128()
                var_liquidity_2906 := zero_t_uint128_175
                /// @src 121:7328:7343  "uint256 amount0"
                let zero_t_uint256_176 := zero_value_for_split_t_uint256()
                var_amount0_2908 := zero_t_uint256_176
                /// @src 121:7357:7372  "uint256 amount1"
                let zero_t_uint256_177 := zero_value_for_split_t_uint256()
                var_amount1_2910 := zero_t_uint256_177

                var_liquidity_2906, var_amount0_2908, var_amount1_2910 := modifier_checkDeadline_2904(var_liquidity_2906, var_amount0_2908, var_amount1_2910, var_params_2898_offset)
            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function store_literal_in_memory_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2(memPtr) {

                mstore(add(memPtr, 0), "ERC721: transfer caller is not o")

                mstore(add(memPtr, 32), "wner nor approved")

            }

            function abi_encode_t_stringliteral_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 49)
                store_literal_in_memory_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 22986
            /// @src 36:8108:8408  "function transferFrom(address from, address to, uint256 tokenId) public virtual override {..."
            function fun_transferFrom_22986(var_from_22962, var_to_22964, var_tokenId_22966) {

                /// @src 36:8286:8298  "_msgSender()"
                let expr_22973 := fun__msgSender_6002()
                /// @src 36:8300:8307  "tokenId"
                let _276 := var_tokenId_22966
                let expr_22974 := _276
                /// @src 36:8267:8308  "_isApprovedOrOwner(_msgSender(), tokenId)"
                let _277 := convert_t_address_payable_to_t_address(expr_22973)
                let expr_22975 := fun__isApprovedOrOwner_23120(_277, expr_22974)
                /// @src 36:8259:8362  "require(_isApprovedOrOwner(_msgSender(), tokenId), \"ERC721: transfer caller is not owner nor approved\")"
                require_helper_t_stringliteral_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2(expr_22975)
                /// @src 36:8383:8387  "from"
                let _278 := var_from_22962
                let expr_22980 := _278
                /// @src 36:8389:8391  "to"
                let _279 := var_to_22964
                let expr_22981 := _279
                /// @src 36:8393:8400  "tokenId"
                let _280 := var_tokenId_22966
                let expr_22982 := _280
                fun__transfer_23364(expr_22980, expr_22981, expr_22982)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_struct$_UintSet_$35528_storage_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function convert_t_struct$_UintSet_$35528_storage_to_t_struct$_UintSet_$35528_storage_ptr(value) -> converted {
                converted := value
            }

            /// @ast-id 22811
            /// @src 36:6051:6211  "function tokenOfOwnerByIndex(address owner, uint256 index) public view virtual override returns (uint256) {..."
            function fun_tokenOfOwnerByIndex_22811(var_owner_22795, var_index_22797) -> var__22801 {
                /// @src 36:6148:6155  "uint256"
                let zero_t_uint256_281 := zero_value_for_split_t_uint256()
                var__22801 := zero_t_uint256_281

                /// @src 36:6174:6187  "_holderTokens"
                let _282_slot := 0x01
                let expr_22803_slot := _282_slot
                /// @src 36:6188:6193  "owner"
                let _283 := var_owner_22795
                let expr_22804 := _283
                /// @src 36:6174:6194  "_holderTokens[owner]"
                let _284 := mapping_index_access_t_mapping$_t_address_$_t_struct$_UintSet_$35528_storage_$_of_t_address(expr_22803_slot,expr_22804)
                let _285_slot := _284
                let expr_22805_slot := _285_slot
                /// @src 36:6174:6197  "_holderTokens[owner].at"
                let expr_22806_self_slot := convert_t_struct$_UintSet_$35528_storage_to_t_struct$_UintSet_$35528_storage_ptr(expr_22805_slot)
                /// @src 36:6198:6203  "index"
                let _286 := var_index_22797
                let expr_22807 := _286
                /// @src 36:6174:6204  "_holderTokens[owner].at(index)"
                let expr_22808 := fun_at_35627(expr_22806_self_slot, expr_22807)
                /// @src 36:6167:6204  "return _holderTokens[owner].at(index)"
                var__22801 := expr_22808
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function zero_value_for_split_t_bytes32() -> ret {
                ret := 0
            }

            function convert_t_contract$_ERC721Permit_$9642_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function cleanup_t_rational_63076024560530113402979550242307453568063438748328787417531900361828837441551_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_63076024560530113402979550242307453568063438748328787417531900361828837441551_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_63076024560530113402979550242307453568063438748328787417531900361828837441551_by_1(value)))
            }

            function abi_encode_t_rational_63076024560530113402979550242307453568063438748328787417531900361828837441551_by_1_to_t_uint256_fromStack(value, pos) {
                mstore(pos, convert_t_rational_63076024560530113402979550242307453568063438748328787417531900361828837441551_by_1_to_t_uint256(value))
            }

            function abi_encode_tuple_t_rational_63076024560530113402979550242307453568063438748328787417531900361828837441551_by_1_t_bytes32_t_bytes32_t_uint256_t_address__to_t_uint256_t_bytes32_t_bytes32_t_uint256_t_address__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_rational_63076024560530113402979550242307453568063438748328787417531900361828837441551_by_1_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value1,  add(headStart, 32))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_address_to_t_address_fromStack(value4,  add(headStart, 128))

            }

            function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            /// @ast-id 9518
            /// @src 124:1331:1843  "function DOMAIN_SEPARATOR() public view override returns (bytes32) {..."
            function fun_DOMAIN_SEPARATOR_9518() -> var__9499 {
                /// @src 124:1389:1396  "bytes32"
                let zero_t_bytes32_287 := zero_value_for_split_t_bytes32()
                var__9499 := zero_t_bytes32_287

                /// @src 124:1605:1671  "0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f"
                let expr_9504 := 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
                /// @src 124:1693:1701  "nameHash"
                let _288 := loadimmutable("9458")
                let expr_9505 := _288
                /// @src 124:1723:1734  "versionHash"
                let _289 := loadimmutable("9461")
                let expr_9506 := _289
                /// @src 124:1756:1763  "ChainId"
                let expr_9507_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/ChainId.sol:ChainId")
                /// @src 124:1756:1769  "ChainId.get()"
                let expr_9509 := fun_get_10731()
                /// @src 124:1799:1803  "this"
                let expr_9512_address := address()
                /// @src 124:1791:1804  "address(this)"
                let expr_9513 := convert_t_contract$_ERC721Permit_$9642_to_t_address(expr_9512_address)
                /// @src 124:1454:1822  "abi.encode(..."

                let expr_9514_mpos := allocate_unbounded()
                let _290 := add(expr_9514_mpos, 0x20)

                let _291 := abi_encode_tuple_t_rational_63076024560530113402979550242307453568063438748328787417531900361828837441551_by_1_t_bytes32_t_bytes32_t_uint256_t_address__to_t_uint256_t_bytes32_t_bytes32_t_uint256_t_address__fromStack(_290, expr_9504, expr_9505, expr_9506, expr_9509, expr_9513)
                mstore(expr_9514_mpos, sub(_291, add(expr_9514_mpos, 0x20)))
                finalize_allocation(expr_9514_mpos, sub(_291, expr_9514_mpos))
                /// @src 124:1427:1836  "keccak256(..."
                let expr_9515 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_9514_mpos), array_length_t_bytes_memory_ptr(expr_9514_mpos))
                /// @src 124:1408:1836  "return..."
                var__9499 := expr_9515
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

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

            /// @ast-id 23005
            /// @src 36:8474:8623  "function safeTransferFrom(address from, address to, uint256 tokenId) public virtual override {..."
            function fun_safeTransferFrom_23005(var_from_22989, var_to_22991, var_tokenId_22993) {

                /// @src 36:8594:8598  "from"
                let _292 := var_from_22989
                let expr_22998 := _292
                /// @src 36:8600:8602  "to"
                let _293 := var_to_22991
                let expr_22999 := _293
                /// @src 36:8604:8611  "tokenId"
                let _294 := var_tokenId_22993
                let expr_23000 := _294
                /// @src 36:8577:8616  "safeTransferFrom(from, to, tokenId, \"\")"
                let _295_mpos := convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr()
                fun_safeTransferFrom_23035(expr_22998, expr_22999, expr_23000, _295_mpos)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 2862
            /// @src 121:6533:6672  "modifier isAuthorizedForToken(uint256 tokenId) {..."
            function modifier_isAuthorizedForToken_3484(var_tokenId_3479) {

                /// @src 121:14402:14409  "tokenId"
                let _296 := var_tokenId_3479
                let expr_3483 := _296
                let _297 := expr_3483
                let var_tokenId_2849 := _297

                /// @src 121:6617:6627  "msg.sender"
                let expr_2854 := caller()
                /// @src 121:6629:6636  "tokenId"
                let _298 := var_tokenId_2849
                let expr_2855 := _298
                /// @src 121:6598:6637  "_isApprovedOrOwner(msg.sender, tokenId)"
                let expr_2856 := fun__isApprovedOrOwner_23120(expr_2854, expr_2855)
                /// @src 121:6590:6654  "require(_isApprovedOrOwner(msg.sender, tokenId), 'Not approved')"
                require_helper_t_stringliteral_70356c467a9713064077b7fa0ff1a074c93b1f7c48415be181b9cd799b628361(expr_2856)
                /// @src 121:6664:6665  "_"
                fun_burn_3521_inner(var_tokenId_3479)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function store_literal_in_memory_fa1d7f5abfb64daa85ec56d31f717d114a9182c82071ec276fdb7487a00b013e(memPtr) {

                mstore(add(memPtr, 0), "Not cleared")

            }

            function abi_encode_t_stringliteral_fa1d7f5abfb64daa85ec56d31f717d114a9182c82071ec276fdb7487a00b013e_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 11)
                store_literal_in_memory_fa1d7f5abfb64daa85ec56d31f717d114a9182c82071ec276fdb7487a00b013e(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_fa1d7f5abfb64daa85ec56d31f717d114a9182c82071ec276fdb7487a00b013e__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_fa1d7f5abfb64daa85ec56d31f717d114a9182c82071ec276fdb7487a00b013e_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_fa1d7f5abfb64daa85ec56d31f717d114a9182c82071ec276fdb7487a00b013e(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_fa1d7f5abfb64daa85ec56d31f717d114a9182c82071ec276fdb7487a00b013e__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
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

            function update_storage_value_t_uint256_to_t_uint256(slot, offset, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_uint256(convertedValue_0)))
            }

            function storage_set_to_zero_t_uint256(slot, offset) {
                let zero_0 := zero_value_for_split_t_uint256()
                update_storage_value_t_uint256_to_t_uint256(slot, offset, zero_0)
            }

            function clear_struct_storage_t_struct$_Position_$2536_storage(slot) {

                sstore(add(slot, 0), 0)

                sstore(add(slot, 1), 0)

                storage_set_to_zero_t_uint256(add(slot, 2), 0)

                storage_set_to_zero_t_uint256(add(slot, 3), 0)

                sstore(add(slot, 4), 0)

            }

            function panic_error_0x00() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x00)
                revert(0, 0x24)
            }

            function storage_set_to_zero_t_struct$_Position_$2536_storage(slot, offset) {
                if iszero(eq(offset, 0)) { panic_error_0x00() }
                clear_struct_storage_t_struct$_Position_$2536_storage(slot)
            }

            /// @src 121:14324:14650  "function burn(uint256 tokenId) external payable override isAuthorizedForToken(tokenId) {..."
            function fun_burn_3521_inner(var_tokenId_3479) {

                /// @src 121:14449:14459  "_positions"
                let _299_slot := 0x0c
                let expr_3489_slot := _299_slot
                /// @src 121:14460:14467  "tokenId"
                let _300 := var_tokenId_3479
                let expr_3490 := _300
                /// @src 121:14449:14468  "_positions[tokenId]"
                let _301 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Position_$2536_storage_$_of_t_uint256(expr_3489_slot,expr_3490)
                let _302_slot := _301
                let expr_3491_slot := _302_slot
                /// @src 121:14421:14468  "Position storage position = _positions[tokenId]"
                let var_position_3488_slot := convert_t_struct$_Position_$2536_storage_to_t_struct$_Position_$2536_storage_ptr(expr_3491_slot)
                /// @src 121:14486:14494  "position"
                let _303_slot := var_position_3488_slot
                let expr_3494_slot := _303_slot
                /// @src 121:14486:14504  "position.liquidity"
                let _304 := add(expr_3494_slot, 1)
                let _305 := read_from_storage_split_offset_16_t_uint128(_304)
                let expr_3495 := _305
                /// @src 121:14508:14509  "0"
                let expr_3496 := 0x00
                /// @src 121:14486:14509  "position.liquidity == 0"
                let expr_3497 := eq(cleanup_t_uint128(expr_3495), convert_t_rational_0_by_1_to_t_uint128(expr_3496))
                /// @src 121:14486:14538  "position.liquidity == 0 && position.tokensOwed0 == 0"
                let expr_3502 := expr_3497
                if expr_3502 {
                    /// @src 121:14513:14521  "position"
                    let _306_slot := var_position_3488_slot
                    let expr_3498_slot := _306_slot
                    /// @src 121:14513:14533  "position.tokensOwed0"
                    let _307 := add(expr_3498_slot, 4)
                    let _308 := read_from_storage_split_offset_0_t_uint128(_307)
                    let expr_3499 := _308
                    /// @src 121:14537:14538  "0"
                    let expr_3500 := 0x00
                    /// @src 121:14513:14538  "position.tokensOwed0 == 0"
                    let expr_3501 := eq(cleanup_t_uint128(expr_3499), convert_t_rational_0_by_1_to_t_uint128(expr_3500))
                    /// @src 121:14486:14538  "position.liquidity == 0 && position.tokensOwed0 == 0"
                    expr_3502 := expr_3501
                }
                /// @src 121:14486:14567  "position.liquidity == 0 && position.tokensOwed0 == 0 && position.tokensOwed1 == 0"
                let expr_3507 := expr_3502
                if expr_3507 {
                    /// @src 121:14542:14550  "position"
                    let _309_slot := var_position_3488_slot
                    let expr_3503_slot := _309_slot
                    /// @src 121:14542:14562  "position.tokensOwed1"
                    let _310 := add(expr_3503_slot, 4)
                    let _311 := read_from_storage_split_offset_16_t_uint128(_310)
                    let expr_3504 := _311
                    /// @src 121:14566:14567  "0"
                    let expr_3505 := 0x00
                    /// @src 121:14542:14567  "position.tokensOwed1 == 0"
                    let expr_3506 := eq(cleanup_t_uint128(expr_3504), convert_t_rational_0_by_1_to_t_uint128(expr_3505))
                    /// @src 121:14486:14567  "position.liquidity == 0 && position.tokensOwed0 == 0 && position.tokensOwed1 == 0"
                    expr_3507 := expr_3506
                }
                /// @src 121:14478:14583  "require(position.liquidity == 0 && position.tokensOwed0 == 0 && position.tokensOwed1 == 0, 'Not cleared')"
                require_helper_t_stringliteral_fa1d7f5abfb64daa85ec56d31f717d114a9182c82071ec276fdb7487a00b013e(expr_3507)
                /// @src 121:14600:14610  "_positions"
                let _312_slot := 0x0c
                let expr_3511_slot := _312_slot
                /// @src 121:14611:14618  "tokenId"
                let _313 := var_tokenId_3479
                let expr_3512 := _313
                /// @src 121:14600:14619  "_positions[tokenId]"
                let _314 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Position_$2536_storage_$_of_t_uint256(expr_3511_slot,expr_3512)
                /// @src 121:14593:14619  "delete _positions[tokenId]"
                storage_set_to_zero_t_struct$_Position_$2536_storage(_314, 0)
                /// @src 121:14635:14642  "tokenId"
                let _315 := var_tokenId_3479
                let expr_3517 := _315
                fun__burn_23292(expr_3517)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 3521
            /// @src 121:14324:14650  "function burn(uint256 tokenId) external payable override isAuthorizedForToken(tokenId) {..."
            function fun_burn_3521(var_tokenId_3479) {

                modifier_isAuthorizedForToken_3484(var_tokenId_3479)
            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function convert_t_uint160_to_t_contract$_IERC20PermitAllowed_$24573(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IERC20PermitAllowed_$24573(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IERC20PermitAllowed_$24573(value)
            }

            function convert_t_contract$_IERC20PermitAllowed_$24573_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_contract$_SelfPermit_$10257_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_t_uint8_to_t_uint8_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
            }

            function abi_encode_tuple_t_address_t_address_t_uint256_t_uint256_t_bool_t_uint8_t_bytes32_t_bytes32__to_t_address_t_address_t_uint256_t_uint256_t_bool_t_uint8_t_bytes32_t_bytes32__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6, value7) -> tail {
                tail := add(headStart, 256)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_bool_to_t_bool_fromStack(value4,  add(headStart, 128))

                abi_encode_t_uint8_to_t_uint8_fromStack(value5,  add(headStart, 160))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value6,  add(headStart, 192))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value7,  add(headStart, 224))

            }

            /// @ast-id 10211
            /// @src 131:1362:1651  "function selfPermitAllowed(..."
            function fun_selfPermitAllowed_10211(var_token_10178, var_nonce_10180, var_expiry_10182, var_v_10184, var_r_10186, var_s_10188) {

                /// @src 131:1574:1579  "token"
                let _316 := var_token_10178
                let expr_10193 := _316
                /// @src 131:1554:1580  "IERC20PermitAllowed(token)"
                let expr_10194_address := convert_t_address_to_t_contract$_IERC20PermitAllowed_$24573(expr_10193)
                /// @src 131:1554:1587  "IERC20PermitAllowed(token).permit"
                let expr_10195_address := convert_t_contract$_IERC20PermitAllowed_$24573_to_t_address(expr_10194_address)
                let expr_10195_functionSelector := 0x8fcbaf0c
                /// @src 131:1588:1598  "msg.sender"
                let expr_10197 := caller()
                /// @src 131:1608:1612  "this"
                let expr_10200_address := address()
                /// @src 131:1600:1613  "address(this)"
                let expr_10201 := convert_t_contract$_SelfPermit_$10257_to_t_address(expr_10200_address)
                /// @src 131:1615:1620  "nonce"
                let _317 := var_nonce_10180
                let expr_10202 := _317
                /// @src 131:1622:1628  "expiry"
                let _318 := var_expiry_10182
                let expr_10203 := _318
                /// @src 131:1630:1634  "true"
                let expr_10204 := 0x01
                /// @src 131:1636:1637  "v"
                let _319 := var_v_10184
                let expr_10205 := _319
                /// @src 131:1639:1640  "r"
                let _320 := var_r_10186
                let expr_10206 := _320
                /// @src 131:1642:1643  "s"
                let _321 := var_s_10188
                let expr_10207 := _321
                /// @src 131:1554:1644  "IERC20PermitAllowed(token).permit(msg.sender, address(this), nonce, expiry, true, v, r, s)"

                if iszero(extcodesize(expr_10195_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _322 := allocate_unbounded()
                mstore(_322, shift_left_224(expr_10195_functionSelector))
                let _323 := abi_encode_tuple_t_address_t_address_t_uint256_t_uint256_t_bool_t_uint8_t_bytes32_t_bytes32__to_t_address_t_address_t_uint256_t_uint256_t_bool_t_uint8_t_bytes32_t_bytes32__fromStack(add(_322, 4) , expr_10197, expr_10201, expr_10202, expr_10203, expr_10204, expr_10205, expr_10206, expr_10207)

                let _324 := call(gas(), expr_10195_address,  0,  _322, sub(_323, _322), _322, 0)

                if iszero(_324) { revert_forward_1() }

                if _324 {

                    let _325 := 0

                    if gt(_325, returndatasize()) {
                        _325 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_322, _325)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_322, add(_322, _325))
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function convert_t_uint160_to_t_contract$_IWETH9_$35732(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IWETH9_$35732(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IWETH9_$35732(value)
            }

            function convert_t_contract$_IWETH9_$35732_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_decode_tuple_t_uint256_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function store_literal_in_memory_01e23337f78f001c03af3011e04e4dea54f4997ff97d41da263c1606bf0f9f73(memPtr) {

                mstore(add(memPtr, 0), "Insufficient WETH9")

            }

            function abi_encode_t_stringliteral_01e23337f78f001c03af3011e04e4dea54f4997ff97d41da263c1606bf0f9f73_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 18)
                store_literal_in_memory_01e23337f78f001c03af3011e04e4dea54f4997ff97d41da263c1606bf0f9f73(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_01e23337f78f001c03af3011e04e4dea54f4997ff97d41da263c1606bf0f9f73__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_01e23337f78f001c03af3011e04e4dea54f4997ff97d41da263c1606bf0f9f73_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_01e23337f78f001c03af3011e04e4dea54f4997ff97d41da263c1606bf0f9f73(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_01e23337f78f001c03af3011e04e4dea54f4997ff97d41da263c1606bf0f9f73__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 23886
            /// @src 128:561:958  "function unwrapWETH9(uint256 amountMinimum, address recipient) public payable override {..."
            function fun_unwrapWETH9_23886(var_amountMinimum_23841, var_recipient_23843) {

                /// @src 128:688:693  "WETH9"
                let _326 := loadimmutable("9961")
                let expr_23850 := _326
                /// @src 128:681:694  "IWETH9(WETH9)"
                let expr_23851_address := convert_t_address_to_t_contract$_IWETH9_$35732(expr_23850)
                /// @src 128:681:704  "IWETH9(WETH9).balanceOf"
                let expr_23852_address := convert_t_contract$_IWETH9_$35732_to_t_address(expr_23851_address)
                let expr_23852_functionSelector := 0x70a08231
                /// @src 128:713:717  "this"
                let expr_23855_address := address()
                /// @src 128:705:718  "address(this)"
                let expr_23856 := convert_t_contract$_PeripheryPayments_$24025_to_t_address(expr_23855_address)
                /// @src 128:681:719  "IWETH9(WETH9).balanceOf(address(this))"

                // storage for arguments and returned data
                let _327 := allocate_unbounded()
                mstore(_327, shift_left_224(expr_23852_functionSelector))
                let _328 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_327, 4) , expr_23856)

                let _329 := staticcall(gas(), expr_23852_address,  _327, sub(_328, _327), _327, 32)

                if iszero(_329) { revert_forward_1() }

                let expr_23857
                if _329 {

                    let _330 := 32

                    if gt(_330, returndatasize()) {
                        _330 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_327, _330)

                    // decode return parameters from external try-call into retVars
                    expr_23857 :=  abi_decode_tuple_t_uint256_fromMemory(_327, add(_327, _330))
                }
                /// @src 128:658:719  "uint256 balanceWETH9 = IWETH9(WETH9).balanceOf(address(this))"
                let var_balanceWETH9_23848 := expr_23857
                /// @src 128:737:749  "balanceWETH9"
                let _331 := var_balanceWETH9_23848
                let expr_23860 := _331
                /// @src 128:753:766  "amountMinimum"
                let _332 := var_amountMinimum_23841
                let expr_23861 := _332
                /// @src 128:737:766  "balanceWETH9 >= amountMinimum"
                let expr_23862 := iszero(lt(cleanup_t_uint256(expr_23860), cleanup_t_uint256(expr_23861)))
                /// @src 128:729:789  "require(balanceWETH9 >= amountMinimum, 'Insufficient WETH9')"
                require_helper_t_stringliteral_01e23337f78f001c03af3011e04e4dea54f4997ff97d41da263c1606bf0f9f73(expr_23862)
                /// @src 128:804:816  "balanceWETH9"
                let _333 := var_balanceWETH9_23848
                let expr_23866 := _333
                /// @src 128:819:820  "0"
                let expr_23867 := 0x00
                /// @src 128:804:820  "balanceWETH9 > 0"
                let expr_23868 := gt(cleanup_t_uint256(expr_23866), convert_t_rational_0_by_1_to_t_uint256(expr_23867))
                /// @src 128:800:952  "if (balanceWETH9 > 0) {..."
                if expr_23868 {
                    /// @src 128:843:848  "WETH9"
                    let _334 := loadimmutable("9961")
                    let expr_23870 := _334
                    /// @src 128:836:849  "IWETH9(WETH9)"
                    let expr_23871_address := convert_t_address_to_t_contract$_IWETH9_$35732(expr_23870)
                    /// @src 128:836:858  "IWETH9(WETH9).withdraw"
                    let expr_23872_address := convert_t_contract$_IWETH9_$35732_to_t_address(expr_23871_address)
                    let expr_23872_functionSelector := 0x2e1a7d4d
                    /// @src 128:859:871  "balanceWETH9"
                    let _335 := var_balanceWETH9_23848
                    let expr_23873 := _335
                    /// @src 128:836:872  "IWETH9(WETH9).withdraw(balanceWETH9)"

                    if iszero(extcodesize(expr_23872_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                    // storage for arguments and returned data
                    let _336 := allocate_unbounded()
                    mstore(_336, shift_left_224(expr_23872_functionSelector))
                    let _337 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_336, 4) , expr_23873)

                    let _338 := call(gas(), expr_23872_address,  0,  _336, sub(_337, _336), _336, 0)

                    if iszero(_338) { revert_forward_1() }

                    if _338 {

                        let _339 := 0

                        if gt(_339, returndatasize()) {
                            _339 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_336, _339)

                        // decode return parameters from external try-call into retVars
                        abi_decode_tuple__fromMemory(_336, add(_336, _339))
                    }
                    /// @src 128:886:900  "TransferHelper"
                    let expr_23876_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/TransferHelper.sol:TransferHelper")
                    /// @src 128:917:926  "recipient"
                    let _340 := var_recipient_23843
                    let expr_23879 := _340
                    /// @src 128:928:940  "balanceWETH9"
                    let _341 := var_balanceWETH9_23848
                    let expr_23880 := _341
                    fun_safeTransferETH_35902(expr_23879, expr_23880)
                    /// @src 128:800:952  "if (balanceWETH9 > 0) {..."
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 22842
            /// @src 36:6562:6731  "function tokenByIndex(uint256 index) public view virtual override returns (uint256) {..."
            function fun_tokenByIndex_22842(var_index_22826) -> var__22830 {
                /// @src 36:6637:6644  "uint256"
                let zero_t_uint256_342 := zero_value_for_split_t_uint256()
                var__22830 := zero_t_uint256_342

                /// @src 36:6678:6690  "_tokenOwners"
                let _343_slot := 0x02
                let expr_22834_slot := _343_slot
                /// @src 36:6678:6693  "_tokenOwners.at"
                let expr_22835_self_slot := convert_t_struct$_UintToAddressMap_$34879_storage_to_t_struct$_UintToAddressMap_$34879_storage_ptr(expr_22834_slot)
                /// @src 36:6694:6699  "index"
                let _344 := var_index_22826
                let expr_22836 := _344
                /// @src 36:6678:6700  "_tokenOwners.at(index)"
                let expr_22837_component_1, expr_22837_component_2 := fun_at_35009(expr_22835_self_slot, expr_22836)
                /// @src 36:6656:6700  "(uint256 tokenId, ) = _tokenOwners.at(index)"
                let var_tokenId_22833 := expr_22837_component_1
                /// @src 36:6717:6724  "tokenId"
                let _345 := var_tokenId_22833
                let expr_22839 := _345
                /// @src 36:6710:6724  "return tokenId"
                var__22830 := expr_22839
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function store_literal_in_memory_7481f3df2a424c0755a1ad2356614e9a5a358d461ea2eae1f89cb21cbad00397(memPtr) {

                mstore(add(memPtr, 0), "ERC721: owner query for nonexist")

                mstore(add(memPtr, 32), "ent token")

            }

            function copy_literal_to_memory_7481f3df2a424c0755a1ad2356614e9a5a358d461ea2eae1f89cb21cbad00397() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(41)
                store_literal_in_memory_7481f3df2a424c0755a1ad2356614e9a5a358d461ea2eae1f89cb21cbad00397(add(memPtr, 32))
            }

            function convert_t_stringliteral_7481f3df2a424c0755a1ad2356614e9a5a358d461ea2eae1f89cb21cbad00397_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_7481f3df2a424c0755a1ad2356614e9a5a358d461ea2eae1f89cb21cbad00397()
            }

            /// @ast-id 22695
            /// @src 36:4302:4477  "function ownerOf(uint256 tokenId) public view virtual override returns (address) {..."
            function fun_ownerOf_22695(var_tokenId_22682) -> var__22686 {
                /// @src 36:4374:4381  "address"
                let zero_t_address_346 := zero_value_for_split_t_address()
                var__22686 := zero_t_address_346

                /// @src 36:4400:4412  "_tokenOwners"
                let _347_slot := 0x02
                let expr_22688_slot := _347_slot
                /// @src 36:4400:4416  "_tokenOwners.get"
                let expr_22689_self_slot := convert_t_struct$_UintToAddressMap_$34879_storage_to_t_struct$_UintToAddressMap_$34879_storage_ptr(expr_22688_slot)
                /// @src 36:4417:4424  "tokenId"
                let _348 := var_tokenId_22682
                let expr_22690 := _348
                /// @src 36:4400:4470  "_tokenOwners.get(tokenId, \"ERC721: owner query for nonexistent token\")"
                let _349_mpos := convert_t_stringliteral_7481f3df2a424c0755a1ad2356614e9a5a358d461ea2eae1f89cb21cbad00397_to_t_string_memory_ptr()
                let expr_22692 := fun_get_35112(expr_22689_self_slot, expr_22690, _349_mpos)
                /// @src 36:4393:4470  "return _tokenOwners.get(tokenId, \"ERC721: owner query for nonexistent token\")"
                var__22686 := expr_22692
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 2894
            /// @src 121:6990:7056  "function baseURI() public pure override returns (string memory) {}"
            function fun_baseURI_2894() -> var__2891_mpos {
                /// @src 121:7039:7052  "string memory"
                let zero_t_string_memory_ptr_350_mpos := zero_value_for_split_t_string_memory_ptr()
                var__2891_mpos := zero_t_string_memory_ptr_350_mpos

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function store_literal_in_memory_7395d4d3901c50cdfcab223d072f9aa36241df5d883e62cbf147ee1b05a9e6ba(memPtr) {

                mstore(add(memPtr, 0), "ERC721: balance query for the ze")

                mstore(add(memPtr, 32), "ro address")

            }

            function abi_encode_t_stringliteral_7395d4d3901c50cdfcab223d072f9aa36241df5d883e62cbf147ee1b05a9e6ba_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 42)
                store_literal_in_memory_7395d4d3901c50cdfcab223d072f9aa36241df5d883e62cbf147ee1b05a9e6ba(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_7395d4d3901c50cdfcab223d072f9aa36241df5d883e62cbf147ee1b05a9e6ba__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_7395d4d3901c50cdfcab223d072f9aa36241df5d883e62cbf147ee1b05a9e6ba_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_7395d4d3901c50cdfcab223d072f9aa36241df5d883e62cbf147ee1b05a9e6ba(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_7395d4d3901c50cdfcab223d072f9aa36241df5d883e62cbf147ee1b05a9e6ba__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 22679
            /// @src 36:4027:4245  "function balanceOf(address owner) public view virtual override returns (uint256) {..."
            function fun_balanceOf_22679(var_owner_22656) -> var__22660 {
                /// @src 36:4099:4106  "uint256"
                let zero_t_uint256_351 := zero_value_for_split_t_uint256()
                var__22660 := zero_t_uint256_351

                /// @src 36:4126:4131  "owner"
                let _352 := var_owner_22656
                let expr_22663 := _352
                /// @src 36:4143:4144  "0"
                let expr_22666 := 0x00
                /// @src 36:4135:4145  "address(0)"
                let expr_22667 := convert_t_rational_0_by_1_to_t_address(expr_22666)
                /// @src 36:4126:4145  "owner != address(0)"
                let expr_22668 := iszero(eq(cleanup_t_address(expr_22663), cleanup_t_address(expr_22667)))
                /// @src 36:4118:4192  "require(owner != address(0), \"ERC721: balance query for the zero address\")"
                require_helper_t_stringliteral_7395d4d3901c50cdfcab223d072f9aa36241df5d883e62cbf147ee1b05a9e6ba(expr_22668)
                /// @src 36:4209:4222  "_holderTokens"
                let _353_slot := 0x01
                let expr_22672_slot := _353_slot
                /// @src 36:4223:4228  "owner"
                let _354 := var_owner_22656
                let expr_22673 := _354
                /// @src 36:4209:4229  "_holderTokens[owner]"
                let _355 := mapping_index_access_t_mapping$_t_address_$_t_struct$_UintSet_$35528_storage_$_of_t_address(expr_22672_slot,expr_22673)
                let _356_slot := _355
                let expr_22674_slot := _356_slot
                /// @src 36:4209:4236  "_holderTokens[owner].length"
                let expr_22675_self_slot := convert_t_struct$_UintSet_$35528_storage_to_t_struct$_UintSet_$35528_storage_ptr(expr_22674_slot)
                /// @src 36:4209:4238  "_holderTokens[owner].length()"
                let expr_22676 := fun_length_35606(expr_22675_self_slot)
                /// @src 36:4202:4238  "return _holderTokens[owner].length()"
                var__22660 := expr_22676
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function store_literal_in_memory_53b11e5c6d92c4ee8dcdc3fa4b1e917d15797fc920d394f51957eb1860bab31a(memPtr) {

                mstore(add(memPtr, 0), "Permit expired")

            }

            function abi_encode_t_stringliteral_53b11e5c6d92c4ee8dcdc3fa4b1e917d15797fc920d394f51957eb1860bab31a_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 14)
                store_literal_in_memory_53b11e5c6d92c4ee8dcdc3fa4b1e917d15797fc920d394f51957eb1860bab31a(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_53b11e5c6d92c4ee8dcdc3fa4b1e917d15797fc920d394f51957eb1860bab31a__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_53b11e5c6d92c4ee8dcdc3fa4b1e917d15797fc920d394f51957eb1860bab31a_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_53b11e5c6d92c4ee8dcdc3fa4b1e917d15797fc920d394f51957eb1860bab31a(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_53b11e5c6d92c4ee8dcdc3fa4b1e917d15797fc920d394f51957eb1860bab31a__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function abi_encode_tuple_t_bytes32_t_address_t_uint256_t_uint256_t_uint256__to_t_bytes32_t_address_t_uint256_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

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

            function store_literal_in_memory_3d02c5907340bfc85b183184e77cccd9fa6d10edb2b946e292395cc502b0f584(memPtr) {

                mstore(add(memPtr, 0), "ERC721Permit: approval to curren")

                mstore(add(memPtr, 32), "t owner")

            }

            function abi_encode_t_stringliteral_3d02c5907340bfc85b183184e77cccd9fa6d10edb2b946e292395cc502b0f584_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 39)
                store_literal_in_memory_3d02c5907340bfc85b183184e77cccd9fa6d10edb2b946e292395cc502b0f584(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_3d02c5907340bfc85b183184e77cccd9fa6d10edb2b946e292395cc502b0f584__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_3d02c5907340bfc85b183184e77cccd9fa6d10edb2b946e292395cc502b0f584_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_3d02c5907340bfc85b183184e77cccd9fa6d10edb2b946e292395cc502b0f584(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_3d02c5907340bfc85b183184e77cccd9fa6d10edb2b946e292395cc502b0f584__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function abi_encode_tuple_t_bytes32_t_uint8_t_bytes32_t_bytes32__to_t_bytes32_t_uint8_t_bytes32_t_bytes32__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint8_to_t_uint8_fromStack(value1,  add(headStart, 32))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value2,  add(headStart, 64))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value3,  add(headStart, 96))

            }

            function store_literal_in_memory_4f2d7dfcb27c0aafa13ae8c400de482c7832204d194018b6e45bd2bf244c74e7(memPtr) {

                mstore(add(memPtr, 0), "Invalid signature")

            }

            function abi_encode_t_stringliteral_4f2d7dfcb27c0aafa13ae8c400de482c7832204d194018b6e45bd2bf244c74e7_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 17)
                store_literal_in_memory_4f2d7dfcb27c0aafa13ae8c400de482c7832204d194018b6e45bd2bf244c74e7(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_4f2d7dfcb27c0aafa13ae8c400de482c7832204d194018b6e45bd2bf244c74e7__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_4f2d7dfcb27c0aafa13ae8c400de482c7832204d194018b6e45bd2bf244c74e7_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_4f2d7dfcb27c0aafa13ae8c400de482c7832204d194018b6e45bd2bf244c74e7(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_4f2d7dfcb27c0aafa13ae8c400de482c7832204d194018b6e45bd2bf244c74e7__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_1b2638459828301e8cd6c7c02856073bacf975379e0867f689bb14feacb780c5(memPtr) {

                mstore(add(memPtr, 0), "Unauthorized")

            }

            function abi_encode_t_stringliteral_1b2638459828301e8cd6c7c02856073bacf975379e0867f689bb14feacb780c5_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 12)
                store_literal_in_memory_1b2638459828301e8cd6c7c02856073bacf975379e0867f689bb14feacb780c5(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_1b2638459828301e8cd6c7c02856073bacf975379e0867f689bb14feacb780c5__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_1b2638459828301e8cd6c7c02856073bacf975379e0867f689bb14feacb780c5_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_1b2638459828301e8cd6c7c02856073bacf975379e0867f689bb14feacb780c5(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_1b2638459828301e8cd6c7c02856073bacf975379e0867f689bb14feacb780c5__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function convert_t_uint160_to_t_contract$_IERC1271_$23815(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IERC1271_$23815(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IERC1271_$23815(value)
            }

            function convert_t_contract$_IERC1271_$23815_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function shift_left_248(value) -> newValue {
                newValue :=

                shl(248, value)

            }

            function leftAlign_t_uint8(value) -> aligned {
                aligned := shift_left_248(value)
            }

            function abi_encode_t_uint8_to_t_uint8_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_uint8(cleanup_t_uint8(value)))
            }

            function abi_encode_tuple_packed_t_bytes32_t_bytes32_t_uint8__to_t_bytes32_t_bytes32_t_uint8__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 32)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 32)

                abi_encode_t_uint8_to_t_uint8_nonPadded_inplace_fromStack(value2,  pos)
                pos := add(pos, 1)

                end := pos
            }

            function abi_decode_t_bytes4_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_bytes4(value)
            }

            function abi_decode_tuple_t_bytes4_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes4_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_bytes32_t_bytes_memory_ptr__to_t_bytes32_t_bytes_memory_ptr__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                mstore(add(headStart, 32), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value1,  tail)

            }

            function cleanup_t_rational_371636862_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_371636862_by_1_to_t_bytes4(value) -> converted {
                converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_371636862_by_1(value)))
            }

            /// @ast-id 9641
            /// @src 124:2165:3275  "function permit(..."
            function fun_permit_9641(var_spender_9526, var_tokenId_9528, var_deadline_9530, var_v_9532, var_r_9534, var_s_9536) {

                /// @src 124:2362:2379  "_blockTimestamp()"
                let expr_9542 := fun__blockTimestamp_23800()
                /// @src 124:2383:2391  "deadline"
                let _357 := var_deadline_9530
                let expr_9543 := _357
                /// @src 124:2362:2391  "_blockTimestamp() <= deadline"
                let expr_9544 := iszero(gt(cleanup_t_uint256(expr_9542), cleanup_t_uint256(expr_9543)))
                /// @src 124:2354:2410  "require(_blockTimestamp() <= deadline, 'Permit expired')"
                require_helper_t_stringliteral_53b11e5c6d92c4ee8dcdc3fa4b1e917d15797fc920d394f51957eb1860bab31a(expr_9544)
                /// @src 124:2547:2565  "DOMAIN_SEPARATOR()"
                let expr_9555 := fun_DOMAIN_SEPARATOR_9518()
                /// @src 124:2608:2623  "PERMIT_TYPEHASH"
                let expr_9559 := constant_PERMIT_TYPEHASH_9523()
                /// @src 124:2625:2632  "spender"
                let _358 := var_spender_9526
                let expr_9560 := _358
                /// @src 124:2634:2641  "tokenId"
                let _359 := var_tokenId_9528
                let expr_9561 := _359
                /// @src 124:2665:2672  "tokenId"
                let _360 := var_tokenId_9528
                let expr_9563 := _360
                /// @src 124:2643:2673  "_getAndIncrementNonce(tokenId)"
                let expr_9564 := fun__getAndIncrementNonce_3539(expr_9563)
                /// @src 124:2675:2683  "deadline"
                let _361 := var_deadline_9530
                let expr_9565 := _361
                /// @src 124:2597:2684  "abi.encode(PERMIT_TYPEHASH, spender, tokenId, _getAndIncrementNonce(tokenId), deadline)"

                let expr_9566_mpos := allocate_unbounded()
                let _362 := add(expr_9566_mpos, 0x20)

                let _363 := abi_encode_tuple_t_bytes32_t_address_t_uint256_t_uint256_t_uint256__to_t_bytes32_t_address_t_uint256_t_uint256_t_uint256__fromStack(_362, expr_9559, expr_9560, expr_9561, expr_9564, expr_9565)
                mstore(expr_9566_mpos, sub(_363, add(expr_9566_mpos, 0x20)))
                finalize_allocation(expr_9566_mpos, sub(_363, expr_9566_mpos))
                /// @src 124:2587:2685  "keccak256(abi.encode(PERMIT_TYPEHASH, spender, tokenId, _getAndIncrementNonce(tokenId), deadline))"
                let expr_9567 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_9566_mpos), array_length_t_bytes_memory_ptr(expr_9566_mpos))
                /// @src 124:2477:2703  "abi.encodePacked(..."

                let expr_9568_mpos := allocate_unbounded()
                let _364 := add(expr_9568_mpos, 0x20)

                let _365 := abi_encode_tuple_packed_t_stringliteral_301a50b291d33ce1e8e9064e3f6a6c51d902ec22892b50d58abf6357c6a45541_t_bytes32_t_bytes32__to_t_string_memory_ptr_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(_364, expr_9555, expr_9567)
                mstore(expr_9568_mpos, sub(_365, add(expr_9568_mpos, 0x20)))
                finalize_allocation(expr_9568_mpos, sub(_365, expr_9568_mpos))
                /// @src 124:2450:2717  "keccak256(..."
                let expr_9569 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_9568_mpos), array_length_t_bytes_memory_ptr(expr_9568_mpos))
                /// @src 124:2421:2717  "bytes32 digest =..."
                let var_digest_9549 := expr_9569
                /// @src 124:2751:2758  "tokenId"
                let _366 := var_tokenId_9528
                let expr_9574 := _366
                /// @src 124:2743:2759  "ownerOf(tokenId)"
                let expr_9575 := fun_ownerOf_22695(expr_9574)
                /// @src 124:2727:2759  "address owner = ownerOf(tokenId)"
                let var_owner_9572 := expr_9575
                /// @src 124:2777:2784  "spender"
                let _367 := var_spender_9526
                let expr_9578 := _367
                /// @src 124:2788:2793  "owner"
                let _368 := var_owner_9572
                let expr_9579 := _368
                /// @src 124:2777:2793  "spender != owner"
                let expr_9580 := iszero(eq(cleanup_t_address(expr_9578), cleanup_t_address(expr_9579)))
                /// @src 124:2769:2837  "require(spender != owner, 'ERC721Permit: approval to current owner')"
                require_helper_t_stringliteral_3d02c5907340bfc85b183184e77cccd9fa6d10edb2b946e292395cc502b0f584(expr_9580)
                /// @src 124:2852:2859  "Address"
                let expr_9584_address := linkersymbol("openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/utils/Address.sol:Address")
                /// @src 124:2871:2876  "owner"
                let _369 := var_owner_9572
                let expr_9586 := _369
                /// @src 124:2852:2877  "Address.isContract(owner)"
                let expr_9587 := fun_isContract_23511(expr_9586)
                /// @src 124:2848:3232  "if (Address.isContract(owner)) {..."
                switch expr_9587
                case 0 {
                    /// @src 124:3067:3073  "digest"
                    let _370 := var_digest_9549
                    let expr_9610 := _370
                    /// @src 124:3075:3076  "v"
                    let _371 := var_v_9532
                    let expr_9611 := _371
                    /// @src 124:3078:3079  "r"
                    let _372 := var_r_9534
                    let expr_9612 := _372
                    /// @src 124:3081:3082  "s"
                    let _373 := var_s_9536
                    let expr_9613 := _373
                    /// @src 124:3057:3083  "ecrecover(digest, v, r, s)"

                    let _374 := allocate_unbounded()
                    let _375 := abi_encode_tuple_t_bytes32_t_uint8_t_bytes32_t_bytes32__to_t_bytes32_t_uint8_t_bytes32_t_bytes32__fromStack(_374 , expr_9610, expr_9611, expr_9612, expr_9613)

                    mstore(0, 0)

                    let _376 := staticcall(gas(), 1 , _374, sub(_375, _374), 0, 32)

                    if iszero(_376) { revert_forward_1() }

                    let expr_9614 := shift_left_0(mload(0))
                    /// @src 124:3030:3083  "address recoveredAddress = ecrecover(digest, v, r, s)"
                    let var_recoveredAddress_9608 := expr_9614
                    /// @src 124:3105:3121  "recoveredAddress"
                    let _377 := var_recoveredAddress_9608
                    let expr_9617 := _377
                    /// @src 124:3133:3134  "0"
                    let expr_9620 := 0x00
                    /// @src 124:3125:3135  "address(0)"
                    let expr_9621 := convert_t_rational_0_by_1_to_t_address(expr_9620)
                    /// @src 124:3105:3135  "recoveredAddress != address(0)"
                    let expr_9622 := iszero(eq(cleanup_t_address(expr_9617), cleanup_t_address(expr_9621)))
                    /// @src 124:3097:3157  "require(recoveredAddress != address(0), 'Invalid signature')"
                    require_helper_t_stringliteral_4f2d7dfcb27c0aafa13ae8c400de482c7832204d194018b6e45bd2bf244c74e7(expr_9622)
                    /// @src 124:3179:3195  "recoveredAddress"
                    let _378 := var_recoveredAddress_9608
                    let expr_9627 := _378
                    /// @src 124:3199:3204  "owner"
                    let _379 := var_owner_9572
                    let expr_9628 := _379
                    /// @src 124:3179:3204  "recoveredAddress == owner"
                    let expr_9629 := eq(cleanup_t_address(expr_9627), cleanup_t_address(expr_9628))
                    /// @src 124:3171:3221  "require(recoveredAddress == owner, 'Unauthorized')"
                    require_helper_t_stringliteral_1b2638459828301e8cd6c7c02856073bacf975379e0867f689bb14feacb780c5(expr_9629)
                    /// @src 124:2848:3232  "if (Address.isContract(owner)) {..."
                }
                default {
                    /// @src 124:2910:2915  "owner"
                    let _380 := var_owner_9572
                    let expr_9590 := _380
                    /// @src 124:2901:2916  "IERC1271(owner)"
                    let expr_9591_address := convert_t_address_to_t_contract$_IERC1271_$23815(expr_9590)
                    /// @src 124:2901:2933  "IERC1271(owner).isValidSignature"
                    let expr_9592_address := convert_t_contract$_IERC1271_$23815_to_t_address(expr_9591_address)
                    let expr_9592_functionSelector := 0x1626ba7e
                    /// @src 124:2934:2940  "digest"
                    let _381 := var_digest_9549
                    let expr_9593 := _381
                    /// @src 124:2959:2960  "r"
                    let _382 := var_r_9534
                    let expr_9596 := _382
                    /// @src 124:2962:2963  "s"
                    let _383 := var_s_9536
                    let expr_9597 := _383
                    /// @src 124:2965:2966  "v"
                    let _384 := var_v_9532
                    let expr_9598 := _384
                    /// @src 124:2942:2967  "abi.encodePacked(r, s, v)"

                    let expr_9599_mpos := allocate_unbounded()
                    let _385 := add(expr_9599_mpos, 0x20)

                    let _386 := abi_encode_tuple_packed_t_bytes32_t_bytes32_t_uint8__to_t_bytes32_t_bytes32_t_uint8__nonPadded_inplace_fromStack(_385, expr_9596, expr_9597, expr_9598)
                    mstore(expr_9599_mpos, sub(_386, add(expr_9599_mpos, 0x20)))
                    finalize_allocation(expr_9599_mpos, sub(_386, expr_9599_mpos))
                    /// @src 124:2901:2968  "IERC1271(owner).isValidSignature(digest, abi.encodePacked(r, s, v))"

                    // storage for arguments and returned data
                    let _387 := allocate_unbounded()
                    mstore(_387, shift_left_224(expr_9592_functionSelector))
                    let _388 := abi_encode_tuple_t_bytes32_t_bytes_memory_ptr__to_t_bytes32_t_bytes_memory_ptr__fromStack(add(_387, 4) , expr_9593, expr_9599_mpos)

                    let _389 := staticcall(gas(), expr_9592_address,  _387, sub(_388, _387), _387, 32)

                    if iszero(_389) { revert_forward_1() }

                    let expr_9600
                    if _389 {

                        let _390 := 32

                        if gt(_390, returndatasize()) {
                            _390 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_387, _390)

                        // decode return parameters from external try-call into retVars
                        expr_9600 :=  abi_decode_tuple_t_bytes4_fromMemory(_387, add(_387, _390))
                    }
                    /// @src 124:2972:2982  "0x1626ba7e"
                    let expr_9601 := 0x1626ba7e
                    /// @src 124:2901:2982  "IERC1271(owner).isValidSignature(digest, abi.encodePacked(r, s, v)) == 0x1626ba7e"
                    let expr_9602 := eq(cleanup_t_bytes4(expr_9600), convert_t_rational_371636862_by_1_to_t_bytes4(expr_9601))
                    /// @src 124:2893:2999  "require(IERC1271(owner).isValidSignature(digest, abi.encodePacked(r, s, v)) == 0x1626ba7e, 'Unauthorized')"
                    require_helper_t_stringliteral_1b2638459828301e8cd6c7c02856073bacf975379e0867f689bb14feacb780c5(expr_9602)
                    /// @src 124:2848:3232  "if (Address.isContract(owner)) {..."
                }
                /// @src 124:3251:3258  "spender"
                let _391 := var_spender_9526
                let expr_9636 := _391
                /// @src 124:3260:3267  "tokenId"
                let _392 := var_tokenId_9528
                let expr_9637 := _392
                fun__approve_3589(expr_9636, expr_9637)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 9997
            /// @src 129:201:331  "modifier checkDeadline(uint256 deadline) {..."
            function modifier_checkDeadline_2719(var_tokenId_2721, var_liquidity_2723, var_amount0_2725, var_amount1_2727, var_params_2713_offset) -> _397, _398, _399, _400 {
                _397 := var_tokenId_2721
                _398 := var_liquidity_2723
                _399 := var_amount0_2725
                _400 := var_amount1_2727

                /// @src 121:4553:4559  "params"
                let _401_offset := var_params_2713_offset
                let expr_2717_offset := _401_offset
                /// @src 121:4553:4568  "params.deadline"
                let _402 := add(expr_2717_offset, 320)
                let expr_2718 := read_from_calldatat_uint256(_402)
                let _403 := expr_2718
                let var_deadline_9985 := _403

                /// @src 129:260:277  "_blockTimestamp()"
                let expr_9989 := fun__blockTimestamp_23800()
                /// @src 129:281:289  "deadline"
                let _404 := var_deadline_9985
                let expr_9990 := _404
                /// @src 129:260:289  "_blockTimestamp() <= deadline"
                let expr_9991 := iszero(gt(cleanup_t_uint256(expr_9989), cleanup_t_uint256(expr_9990)))
                /// @src 129:252:313  "require(_blockTimestamp() <= deadline, 'Transaction too old')"
                require_helper_t_stringliteral_c2621685b6a86291a4533558eb72fba04db12a0363db47624d86d9bbb608d293(expr_9991)
                /// @src 129:323:324  "_"
                _397, _398, _399, _400 := fun_mint_2847_inner(var_tokenId_2721, var_liquidity_2723, var_amount0_2725, var_amount1_2727, var_params_2713_offset)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function read_from_calldatat_address(ptr) -> returnValue {

                let value := calldataload(ptr)
                validator_revert_t_address(value)

                returnValue :=

                value

            }

            function read_from_calldatat_uint24(ptr) -> returnValue {

                let value := calldataload(ptr)
                validator_revert_t_uint24(value)

                returnValue :=

                value

            }

            function read_from_calldatat_int24(ptr) -> returnValue {

                let value := calldataload(ptr)
                validator_revert_t_int24(value)

                returnValue :=

                value

            }

            function cleanup_from_storage_t_uint176(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_0_t_uint176(slot_value) -> value {
                value := cleanup_from_storage_t_uint176(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint176(slot) -> value {
                value := extract_from_storage_value_offset_0_t_uint176(sload(slot))

            }

            function cleanup_t_uint176(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffffffff)
            }

            function increment_t_uint176(value) -> ret {
                value := cleanup_t_uint176(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            function update_byte_slice_22_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint176_to_t_uint176(value) -> converted {
                converted := cleanup_t_uint176(identity(cleanup_t_uint176(value)))
            }

            function prepare_store_t_uint176(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_uint176_to_t_uint176(slot, value_0) {
                let convertedValue_0 := convert_t_uint176_to_t_uint176(value_0)
                sstore(slot, update_byte_slice_22_shift_0(sload(slot), prepare_store_t_uint176(convertedValue_0)))
            }

            function convert_t_uint176_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint176(value)))
            }

            function allocate_memory_struct_t_struct$_Position_$2536_storage_ptr() -> memPtr {
                memPtr := allocate_memory(320)
            }

            function convert_t_rational_0_by_1_to_t_uint96(value) -> converted {
                converted := cleanup_t_uint96(identity(cleanup_t_rational_0_by_1(value)))
            }

            function write_to_memory_t_uint96(memPtr, value) {
                mstore(memPtr, cleanup_t_uint96(value))
            }

            function write_to_memory_t_uint80(memPtr, value) {
                mstore(memPtr, cleanup_t_uint80(value))
            }

            function write_to_memory_t_uint128(memPtr, value) {
                mstore(memPtr, cleanup_t_uint128(value))
            }

            function read_from_memoryt_uint96(ptr) -> returnValue {

                let value := cleanup_t_uint96(mload(ptr))

                returnValue :=

                value

            }

            function update_byte_slice_12_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint96_to_t_uint96(value) -> converted {
                converted := cleanup_t_uint96(identity(cleanup_t_uint96(value)))
            }

            function prepare_store_t_uint96(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_uint96_to_t_uint96(slot, value_0) {
                let convertedValue_0 := convert_t_uint96_to_t_uint96(value_0)
                sstore(slot, update_byte_slice_12_shift_0(sload(slot), prepare_store_t_uint96(convertedValue_0)))
            }

            function shift_left_96(value) -> newValue {
                newValue :=

                shl(96, value)

            }

            function update_byte_slice_20_shift_12(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
                toInsert := shift_left_96(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function prepare_store_t_address(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_12_t_address_to_t_address(slot, value_0) {
                let convertedValue_0 := convert_t_address_to_t_address(value_0)
                sstore(slot, update_byte_slice_20_shift_12(sload(slot), prepare_store_t_address(convertedValue_0)))
            }

            function read_from_memoryt_uint80(ptr) -> returnValue {

                let value := cleanup_t_uint80(mload(ptr))

                returnValue :=

                value

            }

            function update_byte_slice_10_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function prepare_store_t_uint80(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0_t_uint80_to_t_uint80(slot, value_0) {
                let convertedValue_0 := convert_t_uint80_to_t_uint80(value_0)
                sstore(slot, update_byte_slice_10_shift_0(sload(slot), prepare_store_t_uint80(convertedValue_0)))
            }

            function read_from_memoryt_int24(ptr) -> returnValue {

                let value := cleanup_t_int24(mload(ptr))

                returnValue :=

                value

            }

            function shift_left_80(value) -> newValue {
                newValue :=

                shl(80, value)

            }

            function update_byte_slice_3_shift_10(value, toInsert) -> result {
                let mask := 0xffffff00000000000000000000
                toInsert := shift_left_80(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_int24_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_int24(value)))
            }

            function prepare_store_t_int24(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_10_t_int24_to_t_int24(slot, value_0) {
                let convertedValue_0 := convert_t_int24_to_t_int24(value_0)
                sstore(slot, update_byte_slice_3_shift_10(sload(slot), prepare_store_t_int24(convertedValue_0)))
            }

            function shift_left_104(value) -> newValue {
                newValue :=

                shl(104, value)

            }

            function update_byte_slice_3_shift_13(value, toInsert) -> result {
                let mask := 0xffffff00000000000000000000000000
                toInsert := shift_left_104(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_13_t_int24_to_t_int24(slot, value_0) {
                let convertedValue_0 := convert_t_int24_to_t_int24(value_0)
                sstore(slot, update_byte_slice_3_shift_13(sload(slot), prepare_store_t_int24(convertedValue_0)))
            }

            function read_from_memoryt_uint128(ptr) -> returnValue {

                let value := cleanup_t_uint128(mload(ptr))

                returnValue :=

                value

            }

            function read_from_memoryt_uint256(ptr) -> returnValue {

                let value := cleanup_t_uint256(mload(ptr))

                returnValue :=

                value

            }

            function copy_struct_to_storage_from_t_struct$_Position_$2536_memory_ptr_to_t_struct$_Position_$2536_storage(slot, value) {

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 0)

                    let memberValue_0 := read_from_memoryt_uint96(memberSrcPtr)

                    update_storage_value_offset_0_t_uint96_to_t_uint96(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 32)

                    let memberValue_0 := read_from_memoryt_address(memberSrcPtr)

                    update_storage_value_offset_12_t_address_to_t_address(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 64)

                    let memberValue_0 := read_from_memoryt_uint80(memberSrcPtr)

                    update_storage_value_offset_0_t_uint80_to_t_uint80(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 96)

                    let memberValue_0 := read_from_memoryt_int24(memberSrcPtr)

                    update_storage_value_offset_10_t_int24_to_t_int24(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 128)

                    let memberValue_0 := read_from_memoryt_int24(memberSrcPtr)

                    update_storage_value_offset_13_t_int24_to_t_int24(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 160)

                    let memberValue_0 := read_from_memoryt_uint128(memberSrcPtr)

                    update_storage_value_offset_16_t_uint128_to_t_uint128(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 2)
                    let memberSrcPtr := add(value, 192)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 3)
                    let memberSrcPtr := add(value, 224)

                    let memberValue_0 := read_from_memoryt_uint256(memberSrcPtr)

                    update_storage_value_offset_0_t_uint256_to_t_uint256(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 4)
                    let memberSrcPtr := add(value, 256)

                    let memberValue_0 := read_from_memoryt_uint128(memberSrcPtr)

                    update_storage_value_offset_0_t_uint128_to_t_uint128(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 4)
                    let memberSrcPtr := add(value, 288)

                    let memberValue_0 := read_from_memoryt_uint128(memberSrcPtr)

                    update_storage_value_offset_16_t_uint128_to_t_uint128(memberSlot, memberValue_0)

                }

            }

            function update_storage_value_offset_0_t_struct$_Position_$2536_memory_ptr_to_t_struct$_Position_$2536_storage(slot, value_0) {

                copy_struct_to_storage_from_t_struct$_Position_$2536_memory_ptr_to_t_struct$_Position_$2536_storage(slot, value_0)
            }

            /// @src 121:4439:6527  "function mint(MintParams calldata params)..."
            function fun_mint_2847_inner(_405, _406, _407, _408, var_params_2713_offset) -> var_tokenId_2721, var_liquidity_2723, var_amount0_2725, var_amount1_2727 {
                var_tokenId_2721 := _405
                var_liquidity_2723 := _406
                var_amount0_2725 := _407
                var_amount1_2727 := _408

                /// @src 121:4729:4748  "IUniswapV3Pool pool"
                let var_pool_2731_address
                let zero_t_contract$_IUniswapV3Pool_$2481_409_address := zero_value_for_split_t_contract$_IUniswapV3Pool_$2481()
                var_pool_2731_address := zero_t_contract$_IUniswapV3Pool_$2481_409_address
                /// @src 121:4867:4873  "params"
                let _410_offset := var_params_2713_offset
                let expr_2740_offset := _410_offset
                /// @src 121:4867:4880  "params.token0"
                let _411 := add(expr_2740_offset, 0)
                let expr_2741 := read_from_calldatat_address(_411)
                /// @src 121:4906:4912  "params"
                let _412_offset := var_params_2713_offset
                let expr_2742_offset := _412_offset
                /// @src 121:4906:4919  "params.token1"
                let _413 := add(expr_2742_offset, 32)
                let expr_2743 := read_from_calldatat_address(_413)
                /// @src 121:4942:4948  "params"
                let _414_offset := var_params_2713_offset
                let expr_2744_offset := _414_offset
                /// @src 121:4942:4952  "params.fee"
                let _415 := add(expr_2744_offset, 64)
                let expr_2745 := read_from_calldatat_uint24(_415)
                /// @src 121:4989:4993  "this"
                let expr_2748_address := address()
                /// @src 121:4981:4994  "address(this)"
                let expr_2749 := convert_t_contract$_NonfungiblePositionManager_$3590_to_t_address(expr_2748_address)
                /// @src 121:5023:5029  "params"
                let _416_offset := var_params_2713_offset
                let expr_2750_offset := _416_offset
                /// @src 121:5023:5039  "params.tickLower"
                let _417 := add(expr_2750_offset, 96)
                let expr_2751 := read_from_calldatat_int24(_417)
                /// @src 121:5068:5074  "params"
                let _418_offset := var_params_2713_offset
                let expr_2752_offset := _418_offset
                /// @src 121:5068:5084  "params.tickUpper"
                let _419 := add(expr_2752_offset, 128)
                let expr_2753 := read_from_calldatat_int24(_419)
                /// @src 121:5118:5124  "params"
                let _420_offset := var_params_2713_offset
                let expr_2754_offset := _420_offset
                /// @src 121:5118:5139  "params.amount0Desired"
                let _421 := add(expr_2754_offset, 160)
                let expr_2755 := read_from_calldatat_uint256(_421)
                /// @src 121:5173:5179  "params"
                let _422_offset := var_params_2713_offset
                let expr_2756_offset := _422_offset
                /// @src 121:5173:5194  "params.amount1Desired"
                let _423 := add(expr_2756_offset, 192)
                let expr_2757 := read_from_calldatat_uint256(_423)
                /// @src 121:5224:5230  "params"
                let _424_offset := var_params_2713_offset
                let expr_2758_offset := _424_offset
                /// @src 121:5224:5241  "params.amount0Min"
                let _425 := add(expr_2758_offset, 224)
                let expr_2759 := read_from_calldatat_uint256(_425)
                /// @src 121:5271:5277  "params"
                let _426_offset := var_params_2713_offset
                let expr_2760_offset := _426_offset
                /// @src 121:5271:5288  "params.amount1Min"
                let _427 := add(expr_2760_offset, 256)
                let expr_2761 := read_from_calldatat_uint256(_427)
                /// @src 121:4822:5303  "AddLiquidityParams({..."
                let expr_2762_mpos := allocate_memory_struct_t_struct$_AddLiquidityParams_$9747_storage_ptr()
                write_to_memory_t_address(add(expr_2762_mpos, 0), expr_2741)
                write_to_memory_t_address(add(expr_2762_mpos, 32), expr_2743)
                write_to_memory_t_uint24(add(expr_2762_mpos, 64), expr_2745)
                write_to_memory_t_address(add(expr_2762_mpos, 96), expr_2749)
                write_to_memory_t_int24(add(expr_2762_mpos, 128), expr_2751)
                write_to_memory_t_int24(add(expr_2762_mpos, 160), expr_2753)
                write_to_memory_t_uint256(add(expr_2762_mpos, 192), expr_2755)
                write_to_memory_t_uint256(add(expr_2762_mpos, 224), expr_2757)
                write_to_memory_t_uint256(add(expr_2762_mpos, 256), expr_2759)
                write_to_memory_t_uint256(add(expr_2762_mpos, 288), expr_2761)
                /// @src 121:4796:5313  "addLiquidity(..."
                let expr_2763_component_1, expr_2763_component_2, expr_2763_component_3, expr_2763_component_4_address := fun_addLiquidity_9861(expr_2762_mpos)
                /// @src 121:4758:5313  "(liquidity, amount0, amount1, pool) = addLiquidity(..."
                var_pool_2731_address := expr_2763_component_4_address
                var_amount1_2727 := expr_2763_component_3
                var_amount0_2725 := expr_2763_component_2
                var_liquidity_2723 := expr_2763_component_1
                /// @src 121:5330:5336  "params"
                let _428_offset := var_params_2713_offset
                let expr_2767_offset := _428_offset
                /// @src 121:5330:5346  "params.recipient"
                let _429 := add(expr_2767_offset, 288)
                let expr_2768 := read_from_calldatat_address(_429)
                /// @src 121:5359:5368  "_nextId++"
                let _431 := read_from_storage_split_offset_0_t_uint176(0x0d)
                let _430 := increment_t_uint176(_431)
                update_storage_value_offset_0_t_uint176_to_t_uint176(0x0d, _430)
                let expr_2771 := _431
                /// @src 121:5349:5368  "tokenId = _nextId++"
                let _432 := convert_t_uint176_to_t_uint256(expr_2771)
                var_tokenId_2721 := _432
                let expr_2772 := _432
                /// @src 121:5348:5369  "(tokenId = _nextId++)"
                let expr_2773 := expr_2772
                fun__mint_23223(expr_2768, expr_2773)
                /// @src 121:5403:5414  "PositionKey"
                let expr_2778_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/PositionKey.sol:PositionKey")
                /// @src 121:5431:5435  "this"
                let expr_2782_address := address()
                /// @src 121:5423:5436  "address(this)"
                let expr_2783 := convert_t_contract$_NonfungiblePositionManager_$3590_to_t_address(expr_2782_address)
                /// @src 121:5438:5444  "params"
                let _433_offset := var_params_2713_offset
                let expr_2784_offset := _433_offset
                /// @src 121:5438:5454  "params.tickLower"
                let _434 := add(expr_2784_offset, 96)
                let expr_2785 := read_from_calldatat_int24(_434)
                /// @src 121:5456:5462  "params"
                let _435_offset := var_params_2713_offset
                let expr_2786_offset := _435_offset
                /// @src 121:5456:5472  "params.tickUpper"
                let _436 := add(expr_2786_offset, 128)
                let expr_2787 := read_from_calldatat_int24(_436)
                /// @src 121:5403:5473  "PositionKey.compute(address(this), params.tickLower, params.tickUpper)"
                let expr_2788 := fun_compute_10379(expr_2783, expr_2785, expr_2787)
                /// @src 121:5381:5473  "bytes32 positionKey = PositionKey.compute(address(this), params.tickLower, params.tickUpper)"
                let var_positionKey_2777 := expr_2788
                /// @src 121:5560:5564  "pool"
                let _437_address := var_pool_2731_address
                let expr_2794_address := _437_address
                /// @src 121:5560:5574  "pool.positions"
                let expr_2795_address := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_2794_address)
                let expr_2795_functionSelector := 0x514ea4bf
                /// @src 121:5575:5586  "positionKey"
                let _438 := var_positionKey_2777
                let expr_2796 := _438
                /// @src 121:5560:5587  "pool.positions(positionKey)"

                // storage for arguments and returned data
                let _439 := allocate_unbounded()
                mstore(_439, shift_left_224(expr_2795_functionSelector))
                let _440 := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(add(_439, 4) , expr_2796)

                let _441 := staticcall(gas(), expr_2795_address,  _439, sub(_440, _439), _439, 160)

                if iszero(_441) { revert_forward_1() }

                let expr_2797_component_1, expr_2797_component_2, expr_2797_component_3, expr_2797_component_4, expr_2797_component_5
                if _441 {

                    let _442 := 160

                    if gt(_442, returndatasize()) {
                        _442 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_439, _442)

                    // decode return parameters from external try-call into retVars
                    expr_2797_component_1, expr_2797_component_2, expr_2797_component_3, expr_2797_component_4, expr_2797_component_5 :=  abi_decode_tuple_t_uint128t_uint256t_uint256t_uint128t_uint128_fromMemory(_439, add(_439, _442))
                }
                /// @src 121:5483:5587  "(, uint256 feeGrowthInside0LastX128, uint256 feeGrowthInside1LastX128, , ) = pool.positions(positionKey)"
                let var_feeGrowthInside0LastX128_2791 := expr_2797_component_2
                let var_feeGrowthInside1LastX128_2793 := expr_2797_component_3
                /// @src 121:5690:5694  "pool"
                let _443_address := var_pool_2731_address
                let expr_2804_address := _443_address
                /// @src 121:5682:5695  "address(pool)"
                let expr_2805 := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_2804_address)
                /// @src 121:5713:5724  "PoolAddress"
                let expr_2806_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/PoolAddress.sol:PoolAddress")
                /// @src 121:5736:5742  "params"
                let _444_offset := var_params_2713_offset
                let expr_2808_offset := _444_offset
                /// @src 121:5736:5749  "params.token0"
                let _445 := add(expr_2808_offset, 0)
                let expr_2809 := read_from_calldatat_address(_445)
                /// @src 121:5751:5757  "params"
                let _446_offset := var_params_2713_offset
                let expr_2810_offset := _446_offset
                /// @src 121:5751:5764  "params.token1"
                let _447 := add(expr_2810_offset, 32)
                let expr_2811 := read_from_calldatat_address(_447)
                /// @src 121:5766:5772  "params"
                let _448_offset := var_params_2713_offset
                let expr_2812_offset := _448_offset
                /// @src 121:5766:5776  "params.fee"
                let _449 := add(expr_2812_offset, 64)
                let expr_2813 := read_from_calldatat_uint24(_449)
                /// @src 121:5713:5777  "PoolAddress.getPoolKey(params.token0, params.token1, params.fee)"
                let expr_2814_mpos := fun_getPoolKey_10303(expr_2809, expr_2811, expr_2813)
                /// @src 121:5652:6012  "cachePoolKey(..."
                let expr_2815 := fun_cachePoolKey_2709(expr_2805, expr_2814_mpos)
                /// @src 121:5624:6012  "uint80 poolId =..."
                let var_poolId_2800 := expr_2815
                /// @src 121:6075:6076  "0"
                let expr_2821 := 0x00
                /// @src 121:6108:6109  "0"
                let expr_2824 := 0x00
                /// @src 121:6100:6110  "address(0)"
                let expr_2825 := convert_t_rational_0_by_1_to_t_address(expr_2824)
                /// @src 121:6132:6138  "poolId"
                let _450 := var_poolId_2800
                let expr_2826 := _450
                /// @src 121:6163:6169  "params"
                let _451_offset := var_params_2713_offset
                let expr_2827_offset := _451_offset
                /// @src 121:6163:6179  "params.tickLower"
                let _452 := add(expr_2827_offset, 96)
                let expr_2828 := read_from_calldatat_int24(_452)
                /// @src 121:6204:6210  "params"
                let _453_offset := var_params_2713_offset
                let expr_2829_offset := _453_offset
                /// @src 121:6204:6220  "params.tickUpper"
                let _454 := add(expr_2829_offset, 128)
                let expr_2830 := read_from_calldatat_int24(_454)
                /// @src 121:6245:6254  "liquidity"
                let _455 := var_liquidity_2723
                let expr_2831 := _455
                /// @src 121:6294:6318  "feeGrowthInside0LastX128"
                let _456 := var_feeGrowthInside0LastX128_2791
                let expr_2832 := _456
                /// @src 121:6358:6382  "feeGrowthInside1LastX128"
                let _457 := var_feeGrowthInside1LastX128_2793
                let expr_2833 := _457
                /// @src 121:6409:6410  "0"
                let expr_2834 := 0x00
                /// @src 121:6437:6438  "0"
                let expr_2835 := 0x00
                /// @src 121:6045:6449  "Position({..."
                let expr_2836_mpos := allocate_memory_struct_t_struct$_Position_$2536_storage_ptr()
                let _458 := convert_t_rational_0_by_1_to_t_uint96(expr_2821)
                write_to_memory_t_uint96(add(expr_2836_mpos, 0), _458)
                write_to_memory_t_address(add(expr_2836_mpos, 32), expr_2825)
                write_to_memory_t_uint80(add(expr_2836_mpos, 64), expr_2826)
                write_to_memory_t_int24(add(expr_2836_mpos, 96), expr_2828)
                write_to_memory_t_int24(add(expr_2836_mpos, 128), expr_2830)
                write_to_memory_t_uint128(add(expr_2836_mpos, 160), expr_2831)
                write_to_memory_t_uint256(add(expr_2836_mpos, 192), expr_2832)
                write_to_memory_t_uint256(add(expr_2836_mpos, 224), expr_2833)
                let _459 := convert_t_rational_0_by_1_to_t_uint128(expr_2834)
                write_to_memory_t_uint128(add(expr_2836_mpos, 256), _459)
                let _460 := convert_t_rational_0_by_1_to_t_uint128(expr_2835)
                write_to_memory_t_uint128(add(expr_2836_mpos, 288), _460)
                /// @src 121:6023:6033  "_positions"
                let _461_slot := 0x0c
                let expr_2817_slot := _461_slot
                /// @src 121:6034:6041  "tokenId"
                let _462 := var_tokenId_2721
                let expr_2818 := _462
                /// @src 121:6023:6042  "_positions[tokenId]"
                let _463 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Position_$2536_storage_$_of_t_uint256(expr_2817_slot,expr_2818)
                /// @src 121:6023:6449  "_positions[tokenId] = Position({..."
                update_storage_value_offset_0_t_struct$_Position_$2536_memory_ptr_to_t_struct$_Position_$2536_storage(_463, expr_2836_mpos)
                let _464_slot := _463
                let expr_2837_slot := _464_slot
                /// @src 121:6483:6490  "tokenId"
                let _465 := var_tokenId_2721
                let expr_2840 := _465
                /// @src 121:6492:6501  "liquidity"
                let _466 := var_liquidity_2723
                let expr_2841 := _466
                /// @src 121:6503:6510  "amount0"
                let _467 := var_amount0_2725
                let expr_2842 := _467
                /// @src 121:6512:6519  "amount1"
                let _468 := var_amount1_2727
                let expr_2843 := _468
                /// @src 121:6465:6520  "IncreaseLiquidity(tokenId, liquidity, amount0, amount1)"
                let _469 := 0x3067048beee31b25b2f1681f88dac838c8bba36af25bfb2b7cf7473a5847e35f
                let _470 := convert_t_uint256_to_t_uint256(expr_2840)
                {
                    let _471 := allocate_unbounded()
                    let _472 := abi_encode_tuple_t_uint128_t_uint256_t_uint256__to_t_uint128_t_uint256_t_uint256__fromStack(_471 , expr_2841, expr_2842, expr_2843)
                    log2(_471, sub(_472, _471) , _469, _470)
                }
            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 2847
            /// @src 121:4439:6527  "function mint(MintParams calldata params)..."
            function fun_mint_2847(var_params_2713_offset) -> var_tokenId_2721, var_liquidity_2723, var_amount0_2725, var_amount1_2727 {
                /// @src 121:4600:4615  "uint256 tokenId"
                let zero_t_uint256_393 := zero_value_for_split_t_uint256()
                var_tokenId_2721 := zero_t_uint256_393
                /// @src 121:4629:4646  "uint128 liquidity"
                let zero_t_uint128_394 := zero_value_for_split_t_uint128()
                var_liquidity_2723 := zero_t_uint128_394
                /// @src 121:4660:4675  "uint256 amount0"
                let zero_t_uint256_395 := zero_value_for_split_t_uint256()
                var_amount0_2725 := zero_t_uint256_395
                /// @src 121:4689:4704  "uint256 amount1"
                let zero_t_uint256_396 := zero_value_for_split_t_uint256()
                var_amount1_2727 := zero_t_uint256_396

                var_tokenId_2721, var_liquidity_2723, var_amount0_2725, var_amount1_2727 := modifier_checkDeadline_2719(var_tokenId_2721, var_liquidity_2723, var_amount0_2725, var_amount1_2727, var_params_2713_offset)
            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 22715
            /// @src 36:4701:4803  "function symbol() public view virtual override returns (string memory) {..."
            function fun_symbol_22715() -> var__22710_mpos {
                /// @src 36:4757:4770  "string memory"
                let zero_t_string_memory_ptr_473_mpos := zero_value_for_split_t_string_memory_ptr()
                var__22710_mpos := zero_t_string_memory_ptr_473_mpos

                /// @src 36:4789:4796  "_symbol"
                let _474_slot := 0x07
                let expr_22712_slot := _474_slot
                /// @src 36:4782:4796  "return _symbol"
                var__22710_mpos := convert_array_t_string_storage_to_t_string_memory_ptr(expr_22712_slot)
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function zero_value_for_split_t_uint96() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_uint24() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_int24() -> ret {
                ret := 0
            }

            function cleanup_from_storage_t_uint96(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_0_t_uint96(slot_value) -> value {
                value := cleanup_from_storage_t_uint96(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint96(slot) -> value {
                value := extract_from_storage_value_offset_0_t_uint96(sload(slot))

            }

            function allocate_memory_struct_t_struct$_Position_$2536_memory_ptr() -> memPtr {
                memPtr := allocate_memory(320)
            }

            function read_from_storage_reference_type_t_struct$_Position_$2536_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_Position_$2536_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint96(add(slot, 0))
                    write_to_memory_t_uint96(add(value, 0), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_12_t_address(add(slot, 0))
                    write_to_memory_t_address(add(value, 32), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint80(add(slot, 1))
                    write_to_memory_t_uint80(add(value, 64), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_10_t_int24(add(slot, 1))
                    write_to_memory_t_int24(add(value, 96), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_13_t_int24(add(slot, 1))
                    write_to_memory_t_int24(add(value, 128), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_16_t_uint128(add(slot, 1))
                    write_to_memory_t_uint128(add(value, 160), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 2))
                    write_to_memory_t_uint256(add(value, 192), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 3))
                    write_to_memory_t_uint256(add(value, 224), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_0_t_uint128(add(slot, 4))
                    write_to_memory_t_uint128(add(value, 256), memberValue_0)
                }

                {
                    let memberValue_0 := read_from_storage_split_offset_16_t_uint128(add(slot, 4))
                    write_to_memory_t_uint128(add(value, 288), memberValue_0)
                }

            }

            function convert_t_struct$_Position_$2536_storage_to_t_struct$_Position_$2536_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_Position_$2536_memory_ptr(value)

            }

            function convert_t_rational_0_by_1_to_t_uint80(value) -> converted {
                converted := cleanup_t_uint80(identity(cleanup_t_rational_0_by_1(value)))
            }

            function store_literal_in_memory_b44e5a2e76d616f71f124d91f8560c46215c55a45ba6a1b6e492edf2295dcc48(memPtr) {

                mstore(add(memPtr, 0), "Invalid token ID")

            }

            function abi_encode_t_stringliteral_b44e5a2e76d616f71f124d91f8560c46215c55a45ba6a1b6e492edf2295dcc48_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 16)
                store_literal_in_memory_b44e5a2e76d616f71f124d91f8560c46215c55a45ba6a1b6e492edf2295dcc48(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_b44e5a2e76d616f71f124d91f8560c46215c55a45ba6a1b6e492edf2295dcc48__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_b44e5a2e76d616f71f124d91f8560c46215c55a45ba6a1b6e492edf2295dcc48_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_b44e5a2e76d616f71f124d91f8560c46215c55a45ba6a1b6e492edf2295dcc48(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_b44e5a2e76d616f71f124d91f8560c46215c55a45ba6a1b6e492edf2295dcc48__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 2670
            /// @src 121:2940:4064  "function positions(uint256 tokenId)..."
            function fun_positions_2670(var_tokenId_2590) -> var_nonce_2594, var_operator_2596, var_token0_2598, var_token1_2600, var_fee_2602, var_tickLower_2604, var_tickUpper_2606, var_liquidity_2608, var_feeGrowthInside0LastX128_2610, var_feeGrowthInside1LastX128_2612, var_tokensOwed0_2614, var_tokensOwed1_2616 {
                /// @src 121:3053:3065  "uint96 nonce"
                let zero_t_uint96_475 := zero_value_for_split_t_uint96()
                var_nonce_2594 := zero_t_uint96_475
                /// @src 121:3079:3095  "address operator"
                let zero_t_address_476 := zero_value_for_split_t_address()
                var_operator_2596 := zero_t_address_476
                /// @src 121:3109:3123  "address token0"
                let zero_t_address_477 := zero_value_for_split_t_address()
                var_token0_2598 := zero_t_address_477
                /// @src 121:3137:3151  "address token1"
                let zero_t_address_478 := zero_value_for_split_t_address()
                var_token1_2600 := zero_t_address_478
                /// @src 121:3165:3175  "uint24 fee"
                let zero_t_uint24_479 := zero_value_for_split_t_uint24()
                var_fee_2602 := zero_t_uint24_479
                /// @src 121:3189:3204  "int24 tickLower"
                let zero_t_int24_480 := zero_value_for_split_t_int24()
                var_tickLower_2604 := zero_t_int24_480
                /// @src 121:3218:3233  "int24 tickUpper"
                let zero_t_int24_481 := zero_value_for_split_t_int24()
                var_tickUpper_2606 := zero_t_int24_481
                /// @src 121:3247:3264  "uint128 liquidity"
                let zero_t_uint128_482 := zero_value_for_split_t_uint128()
                var_liquidity_2608 := zero_t_uint128_482
                /// @src 121:3278:3310  "uint256 feeGrowthInside0LastX128"
                let zero_t_uint256_483 := zero_value_for_split_t_uint256()
                var_feeGrowthInside0LastX128_2610 := zero_t_uint256_483
                /// @src 121:3324:3356  "uint256 feeGrowthInside1LastX128"
                let zero_t_uint256_484 := zero_value_for_split_t_uint256()
                var_feeGrowthInside1LastX128_2612 := zero_t_uint256_484
                /// @src 121:3370:3389  "uint128 tokensOwed0"
                let zero_t_uint128_485 := zero_value_for_split_t_uint128()
                var_tokensOwed0_2614 := zero_t_uint128_485
                /// @src 121:3403:3422  "uint128 tokensOwed1"
                let zero_t_uint128_486 := zero_value_for_split_t_uint128()
                var_tokensOwed1_2616 := zero_t_uint128_486

                /// @src 121:3474:3484  "_positions"
                let _487_slot := 0x0c
                let expr_2621_slot := _487_slot
                /// @src 121:3485:3492  "tokenId"
                let _488 := var_tokenId_2590
                let expr_2622 := _488
                /// @src 121:3474:3493  "_positions[tokenId]"
                let _489 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Position_$2536_storage_$_of_t_uint256(expr_2621_slot,expr_2622)
                let _490_slot := _489
                let expr_2623_slot := _490_slot
                /// @src 121:3447:3493  "Position memory position = _positions[tokenId]"
                let var_position_2620_mpos := convert_t_struct$_Position_$2536_storage_to_t_struct$_Position_$2536_memory_ptr(expr_2623_slot)
                /// @src 121:3511:3519  "position"
                let _491_mpos := var_position_2620_mpos
                let expr_2626_mpos := _491_mpos
                /// @src 121:3511:3526  "position.poolId"
                let _492 := add(expr_2626_mpos, 64)
                let _493 := read_from_memoryt_uint80(_492)
                let expr_2627 := _493
                /// @src 121:3530:3531  "0"
                let expr_2628 := 0x00
                /// @src 121:3511:3531  "position.poolId != 0"
                let expr_2629 := iszero(eq(cleanup_t_uint80(expr_2627), convert_t_rational_0_by_1_to_t_uint80(expr_2628)))
                /// @src 121:3503:3552  "require(position.poolId != 0, 'Invalid token ID')"
                require_helper_t_stringliteral_b44e5a2e76d616f71f124d91f8560c46215c55a45ba6a1b6e492edf2295dcc48(expr_2629)
                /// @src 121:3599:3615  "_poolIdToPoolKey"
                let _494_slot := 0x0b
                let expr_2638_slot := _494_slot
                /// @src 121:3616:3624  "position"
                let _495_mpos := var_position_2620_mpos
                let expr_2639_mpos := _495_mpos
                /// @src 121:3616:3631  "position.poolId"
                let _496 := add(expr_2639_mpos, 64)
                let _497 := read_from_memoryt_uint80(_496)
                let expr_2640 := _497
                /// @src 121:3599:3632  "_poolIdToPoolKey[position.poolId]"
                let _498 := mapping_index_access_t_mapping$_t_uint80_$_t_struct$_PoolKey_$10271_storage_$_of_t_uint80(expr_2638_slot,expr_2640)
                let _499_slot := _498
                let expr_2641_slot := _499_slot
                /// @src 121:3562:3632  "PoolAddress.PoolKey memory poolKey = _poolIdToPoolKey[position.poolId]"
                let var_poolKey_2637_mpos := convert_t_struct$_PoolKey_$10271_storage_to_t_struct$_PoolKey_$10271_memory_ptr(expr_2641_slot)
                /// @src 121:3663:3671  "position"
                let _500_mpos := var_position_2620_mpos
                let expr_2643_mpos := _500_mpos
                /// @src 121:3663:3677  "position.nonce"
                let _501 := add(expr_2643_mpos, 0)
                let _502 := read_from_memoryt_uint96(_501)
                let expr_2644 := _502
                /// @src 121:3649:4057  "(..."
                let expr_2667_component_1 := expr_2644
                /// @src 121:3691:3699  "position"
                let _503_mpos := var_position_2620_mpos
                let expr_2645_mpos := _503_mpos
                /// @src 121:3691:3708  "position.operator"
                let _504 := add(expr_2645_mpos, 32)
                let _505 := read_from_memoryt_address(_504)
                let expr_2646 := _505
                /// @src 121:3649:4057  "(..."
                let expr_2667_component_2 := expr_2646
                /// @src 121:3722:3729  "poolKey"
                let _506_mpos := var_poolKey_2637_mpos
                let expr_2647_mpos := _506_mpos
                /// @src 121:3722:3736  "poolKey.token0"
                let _507 := add(expr_2647_mpos, 0)
                let _508 := read_from_memoryt_address(_507)
                let expr_2648 := _508
                /// @src 121:3649:4057  "(..."
                let expr_2667_component_3 := expr_2648
                /// @src 121:3750:3757  "poolKey"
                let _509_mpos := var_poolKey_2637_mpos
                let expr_2649_mpos := _509_mpos
                /// @src 121:3750:3764  "poolKey.token1"
                let _510 := add(expr_2649_mpos, 32)
                let _511 := read_from_memoryt_address(_510)
                let expr_2650 := _511
                /// @src 121:3649:4057  "(..."
                let expr_2667_component_4 := expr_2650
                /// @src 121:3778:3785  "poolKey"
                let _512_mpos := var_poolKey_2637_mpos
                let expr_2651_mpos := _512_mpos
                /// @src 121:3778:3789  "poolKey.fee"
                let _513 := add(expr_2651_mpos, 64)
                let _514 := read_from_memoryt_uint24(_513)
                let expr_2652 := _514
                /// @src 121:3649:4057  "(..."
                let expr_2667_component_5 := expr_2652
                /// @src 121:3803:3811  "position"
                let _515_mpos := var_position_2620_mpos
                let expr_2653_mpos := _515_mpos
                /// @src 121:3803:3821  "position.tickLower"
                let _516 := add(expr_2653_mpos, 96)
                let _517 := read_from_memoryt_int24(_516)
                let expr_2654 := _517
                /// @src 121:3649:4057  "(..."
                let expr_2667_component_6 := expr_2654
                /// @src 121:3835:3843  "position"
                let _518_mpos := var_position_2620_mpos
                let expr_2655_mpos := _518_mpos
                /// @src 121:3835:3853  "position.tickUpper"
                let _519 := add(expr_2655_mpos, 128)
                let _520 := read_from_memoryt_int24(_519)
                let expr_2656 := _520
                /// @src 121:3649:4057  "(..."
                let expr_2667_component_7 := expr_2656
                /// @src 121:3867:3875  "position"
                let _521_mpos := var_position_2620_mpos
                let expr_2657_mpos := _521_mpos
                /// @src 121:3867:3885  "position.liquidity"
                let _522 := add(expr_2657_mpos, 160)
                let _523 := read_from_memoryt_uint128(_522)
                let expr_2658 := _523
                /// @src 121:3649:4057  "(..."
                let expr_2667_component_8 := expr_2658
                /// @src 121:3899:3907  "position"
                let _524_mpos := var_position_2620_mpos
                let expr_2659_mpos := _524_mpos
                /// @src 121:3899:3932  "position.feeGrowthInside0LastX128"
                let _525 := add(expr_2659_mpos, 192)
                let _526 := read_from_memoryt_uint256(_525)
                let expr_2660 := _526
                /// @src 121:3649:4057  "(..."
                let expr_2667_component_9 := expr_2660
                /// @src 121:3946:3954  "position"
                let _527_mpos := var_position_2620_mpos
                let expr_2661_mpos := _527_mpos
                /// @src 121:3946:3979  "position.feeGrowthInside1LastX128"
                let _528 := add(expr_2661_mpos, 224)
                let _529 := read_from_memoryt_uint256(_528)
                let expr_2662 := _529
                /// @src 121:3649:4057  "(..."
                let expr_2667_component_10 := expr_2662
                /// @src 121:3993:4001  "position"
                let _530_mpos := var_position_2620_mpos
                let expr_2663_mpos := _530_mpos
                /// @src 121:3993:4013  "position.tokensOwed0"
                let _531 := add(expr_2663_mpos, 256)
                let _532 := read_from_memoryt_uint128(_531)
                let expr_2664 := _532
                /// @src 121:3649:4057  "(..."
                let expr_2667_component_11 := expr_2664
                /// @src 121:4027:4035  "position"
                let _533_mpos := var_position_2620_mpos
                let expr_2665_mpos := _533_mpos
                /// @src 121:4027:4047  "position.tokensOwed1"
                let _534 := add(expr_2665_mpos, 288)
                let _535 := read_from_memoryt_uint128(_534)
                let expr_2666 := _535
                /// @src 121:3649:4057  "(..."
                let expr_2667_component_12 := expr_2666
                /// @src 121:3642:4057  "return (..."
                var_nonce_2594 := expr_2667_component_1
                var_operator_2596 := expr_2667_component_2
                var_token0_2598 := expr_2667_component_3
                var_token1_2600 := expr_2667_component_4
                var_fee_2602 := expr_2667_component_5
                var_tickLower_2604 := expr_2667_component_6
                var_tickUpper_2606 := expr_2667_component_7
                var_liquidity_2608 := expr_2667_component_8
                var_feeGrowthInside0LastX128_2610 := expr_2667_component_9
                var_feeGrowthInside1LastX128_2612 := expr_2667_component_10
                var_tokensOwed0_2614 := expr_2667_component_11
                var_tokensOwed1_2616 := expr_2667_component_12
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function store_literal_in_memory_45fe4329685be5ecd250fd0e6a25aea0ea4d0e30fb6a73c118b95749e6d70d05(memPtr) {

                mstore(add(memPtr, 0), "ERC721: approve to caller")

            }

            function abi_encode_t_stringliteral_45fe4329685be5ecd250fd0e6a25aea0ea4d0e30fb6a73c118b95749e6d70d05_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 25)
                store_literal_in_memory_45fe4329685be5ecd250fd0e6a25aea0ea4d0e30fb6a73c118b95749e6d70d05(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_45fe4329685be5ecd250fd0e6a25aea0ea4d0e30fb6a73c118b95749e6d70d05__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_45fe4329685be5ecd250fd0e6a25aea0ea4d0e30fb6a73c118b95749e6d70d05_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_45fe4329685be5ecd250fd0e6a25aea0ea4d0e30fb6a73c118b95749e6d70d05(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_45fe4329685be5ecd250fd0e6a25aea0ea4d0e30fb6a73c118b95749e6d70d05__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_bool_$_$_of_t_address_payable(slot , key) -> dataSlot {
                mstore(0, convert_t_address_payable_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
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

            /// @ast-id 22941
            /// @src 36:7528:7818  "function setApprovalForAll(address operator, bool approved) public virtual override {..."
            function fun_setApprovalForAll_22941(var_operator_22910, var_approved_22912) {

                /// @src 36:7630:7638  "operator"
                let _536 := var_operator_22910
                let expr_22917 := _536
                /// @src 36:7642:7654  "_msgSender()"
                let expr_22919 := fun__msgSender_6002()
                /// @src 36:7630:7654  "operator != _msgSender()"
                let expr_22920 := iszero(eq(cleanup_t_address(expr_22917), convert_t_address_payable_to_t_address(expr_22919)))
                /// @src 36:7622:7684  "require(operator != _msgSender(), \"ERC721: approve to caller\")"
                require_helper_t_stringliteral_45fe4329685be5ecd250fd0e6a25aea0ea4d0e30fb6a73c118b95749e6d70d05(expr_22920)
                /// @src 36:7740:7748  "approved"
                let _537 := var_approved_22912
                let expr_22930 := _537
                /// @src 36:7695:7713  "_operatorApprovals"
                let _538_slot := 0x05
                let expr_22924_slot := _538_slot
                /// @src 36:7714:7726  "_msgSender()"
                let expr_22926 := fun__msgSender_6002()
                /// @src 36:7695:7727  "_operatorApprovals[_msgSender()]"
                let _539 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_bool_$_$_of_t_address_payable(expr_22924_slot,expr_22926)
                let _540_slot := _539
                let expr_22928_slot := _540_slot
                /// @src 36:7728:7736  "operator"
                let _541 := var_operator_22910
                let expr_22927 := _541
                /// @src 36:7695:7737  "_operatorApprovals[_msgSender()][operator]"
                let _542 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_22928_slot,expr_22927)
                /// @src 36:7695:7748  "_operatorApprovals[_msgSender()][operator] = approved"
                update_storage_value_offset_0_t_bool_to_t_bool(_542, expr_22930)
                let expr_22931 := expr_22930
                /// @src 36:7778:7790  "_msgSender()"
                let expr_22935 := fun__msgSender_6002()
                /// @src 36:7792:7800  "operator"
                let _543 := var_operator_22910
                let expr_22936 := _543
                /// @src 36:7802:7810  "approved"
                let _544 := var_approved_22912
                let expr_22937 := _544
                /// @src 36:7763:7811  "ApprovalForAll(_msgSender(), operator, approved)"
                let _545 := 0x17307eab39ab6107e8899845ad3d59bd9653f200f220920489ca2b5937696c31
                let _546 := convert_t_address_payable_to_t_address(expr_22935)
                let _547 := convert_t_address_to_t_address(expr_22936)
                {
                    let _548 := allocate_unbounded()
                    let _549 := abi_encode_tuple_t_bool__to_t_bool__fromStack(_548 , expr_22937)
                    log3(_548, sub(_549, _548) , _545, _546, _547)
                }
            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function convert_t_uint160_to_t_contract$_IERC20_$1962(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IERC20_$1962(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IERC20_$1962(value)
            }

            function convert_t_contract$_IERC20_$1962_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_tuple_t_address_t_address__to_t_address_t_address__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

            }

            /// @ast-id 10256
            /// @src 131:1689:2037  "function selfPermitAllowedIfNecessary(..."
            function fun_selfPermitAllowedIfNecessary_10256(var_token_10214, var_nonce_10216, var_expiry_10218, var_v_10220, var_r_10222, var_s_10224) {

                /// @src 131:1905:1910  "token"
                let _550 := var_token_10214
                let expr_10229 := _550
                /// @src 131:1898:1911  "IERC20(token)"
                let expr_10230_address := convert_t_address_to_t_contract$_IERC20_$1962(expr_10229)
                /// @src 131:1898:1921  "IERC20(token).allowance"
                let expr_10231_address := convert_t_contract$_IERC20_$1962_to_t_address(expr_10230_address)
                let expr_10231_functionSelector := 0xdd62ed3e
                /// @src 131:1922:1932  "msg.sender"
                let expr_10233 := caller()
                /// @src 131:1942:1946  "this"
                let expr_10236_address := address()
                /// @src 131:1934:1947  "address(this)"
                let expr_10237 := convert_t_contract$_SelfPermit_$10257_to_t_address(expr_10236_address)
                /// @src 131:1898:1948  "IERC20(token).allowance(msg.sender, address(this))"

                // storage for arguments and returned data
                let _551 := allocate_unbounded()
                mstore(_551, shift_left_224(expr_10231_functionSelector))
                let _552 := abi_encode_tuple_t_address_t_address__to_t_address_t_address__fromStack(add(_551, 4) , expr_10233, expr_10237)

                let _553 := staticcall(gas(), expr_10231_address,  _551, sub(_552, _551), _551, 32)

                if iszero(_553) { revert_forward_1() }

                let expr_10238
                if _553 {

                    let _554 := 32

                    if gt(_554, returndatasize()) {
                        _554 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_551, _554)

                    // decode return parameters from external try-call into retVars
                    expr_10238 :=  abi_decode_tuple_t_uint256_fromMemory(_551, add(_551, _554))
                }
                /// @src 131:1951:1968  "type(uint256).max"
                let expr_10243 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                /// @src 131:1898:1968  "IERC20(token).allowance(msg.sender, address(this)) < type(uint256).max"
                let expr_10244 := lt(cleanup_t_uint256(expr_10238), cleanup_t_uint256(expr_10243))
                /// @src 131:1894:2030  "if (IERC20(token).allowance(msg.sender, address(this)) < type(uint256).max)..."
                if expr_10244 {
                    /// @src 131:2000:2005  "token"
                    let _555 := var_token_10214
                    let expr_10246 := _555
                    /// @src 131:2007:2012  "nonce"
                    let _556 := var_nonce_10216
                    let expr_10247 := _556
                    /// @src 131:2014:2020  "expiry"
                    let _557 := var_expiry_10218
                    let expr_10248 := _557
                    /// @src 131:2022:2023  "v"
                    let _558 := var_v_10220
                    let expr_10249 := _558
                    /// @src 131:2025:2026  "r"
                    let _559 := var_r_10222
                    let expr_10250 := _559
                    /// @src 131:2028:2029  "s"
                    let _560 := var_s_10224
                    let expr_10251 := _560
                    fun_selfPermitAllowed_10211(expr_10246, expr_10247, expr_10248, expr_10249, expr_10250, expr_10251)
                    /// @src 131:1894:2030  "if (IERC20(token).allowance(msg.sender, address(this)) < type(uint256).max)..."
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function zero_value_for_split_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr() -> ret {
                ret := 96
            }

            function array_length_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(value, len) -> length {

                length := len

            }

            function array_allocation_size_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_value_for_t_bytes_memory_ptr() -> ret {
                ret := 96
            }

            function zero_complex_memory_array_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(dataStart, dataSizeInBytes) {
                for {let i := 0} lt(i, dataSizeInBytes) { i := add(i, 32) } {
                    mstore(add(dataStart, i), zero_value_for_t_bytes_memory_ptr())
                }
            }

            function allocate_and_zero_memory_array_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_complex_memory_array_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(dataStart, dataSize)
            }

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            function convert_t_contract$_Multicall_$9947_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
            }

            function revert_error_356d538aaf70fba12156cc466564b792649f8f3befb07b071c91142253e175ad() {
                revert(0, 0)
            }

            function revert_error_1e55d03107e9c4f1b5e21c76a16fba166a461117ab153bcce65e6a4ea8e5fc8a() {
                revert(0, 0)
            }

            function revert_error_977805620ff29572292dee35f70b0f3f3f73d3fdd0e9f4d7a901c2e43ab18a2e() {
                revert(0, 0)
            }

            function access_calldata_tail_t_bytes_calldata_ptr(base_ref, ptr_to_tail) -> addr, length {
                let rel_offset_of_tail := calldataload(ptr_to_tail)
                if iszero(slt(rel_offset_of_tail, sub(sub(calldatasize(), base_ref), sub(0x20, 1)))) { revert_error_356d538aaf70fba12156cc466564b792649f8f3befb07b071c91142253e175ad() }
                addr := add(base_ref, rel_offset_of_tail)

                length := calldataload(addr)
                if gt(length, 0xffffffffffffffff) { revert_error_1e55d03107e9c4f1b5e21c76a16fba166a461117ab153bcce65e6a4ea8e5fc8a() }
                addr := add(addr, 32)
                if sgt(addr, sub(calldatasize(), mul(length, 0x01))) { revert_error_977805620ff29572292dee35f70b0f3f3f73d3fdd0e9f4d7a901c2e43ab18a2e() }

            }

            function calldata_array_index_access_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(base_ref, length, index) -> addr, len {
                if iszero(lt(index, length)) { panic_error_0x32() }
                addr := add(base_ref, mul(index, 32))

                addr, len := access_calldata_tail_t_bytes_calldata_ptr(base_ref, addr)

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            // bytes -> bytes
            function abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(start, length, pos) -> end {
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length)

                copy_calldata_to_memory_with_cleanup(start, pos, length)
                end := add(pos, length)
            }

            function abi_encode_tuple_packed_t_bytes_calldata_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1) -> end {

                pos := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value0, value1,  pos)

                end := pos
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

            function cleanup_t_rational_68_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_68_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_68_by_1(value)))
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

            function memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            /// @ast-id 9946
            /// @src 126:345:998  "function multicall(bytes[] calldata data) public payable override returns (bytes[] memory results) {..."
            function fun_multicall_9946(var_data_9873_offset, var_data_9873_length) -> var_results_9878_mpos {
                /// @src 126:420:442  "bytes[] memory results"
                let zero_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_561_mpos := zero_value_for_split_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr()
                var_results_9878_mpos := zero_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_561_mpos

                /// @src 126:476:480  "data"
                let _562_offset := var_data_9873_offset
                let _562_length := var_data_9873_length
                let expr_9884_offset := _562_offset
                let expr_9884_length := _562_length
                /// @src 126:476:487  "data.length"
                let expr_9885 := array_length_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(expr_9884_offset, expr_9884_length)
                /// @src 126:464:488  "new bytes[](data.length)"
                let expr_9886_mpos := allocate_and_zero_memory_array_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_9885)
                /// @src 126:454:488  "results = new bytes[](data.length)"
                var_results_9878_mpos := expr_9886_mpos
                let _563_mpos := var_results_9878_mpos
                let expr_9887_mpos := _563_mpos
                /// @src 126:498:992  "for (uint256 i = 0; i < data.length; i++) {..."
                for {
                    /// @src 126:515:516  "0"
                    let expr_9891 := 0x00
                    /// @src 126:503:516  "uint256 i = 0"
                    let var_i_9890 := convert_t_rational_0_by_1_to_t_uint256(expr_9891)
                    } 1 {
                    /// @src 126:535:538  "i++"
                    let _565 := var_i_9890
                    let _564 := increment_wrapping_t_uint256(_565)
                    var_i_9890 := _564
                    let expr_9898 := _565
                }
                {
                    /// @src 126:518:519  "i"
                    let _566 := var_i_9890
                    let expr_9893 := _566
                    /// @src 126:522:526  "data"
                    let _567_offset := var_data_9873_offset
                    let _567_length := var_data_9873_length
                    let expr_9894_offset := _567_offset
                    let expr_9894_length := _567_length
                    /// @src 126:522:533  "data.length"
                    let expr_9895 := array_length_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(expr_9894_offset, expr_9894_length)
                    /// @src 126:518:533  "i < data.length"
                    let expr_9896 := lt(cleanup_t_uint256(expr_9893), cleanup_t_uint256(expr_9895))
                    if iszero(expr_9896) { break }
                    /// @src 126:600:604  "this"
                    let expr_9906_address := address()
                    /// @src 126:592:605  "address(this)"
                    let expr_9907 := convert_t_contract$_Multicall_$9947_to_t_address(expr_9906_address)
                    /// @src 126:592:618  "address(this).delegatecall"
                    let expr_9908_address := expr_9907
                    /// @src 126:619:623  "data"
                    let _568_offset := var_data_9873_offset
                    let _568_length := var_data_9873_length
                    let expr_9909_offset := _568_offset
                    let expr_9909_length := _568_length
                    /// @src 126:624:625  "i"
                    let _569 := var_i_9890
                    let expr_9910 := _569
                    /// @src 126:619:626  "data[i]"
                    let expr_9911_offset, expr_9911_length := calldata_array_index_access_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(expr_9909_offset, expr_9909_length, expr_9910)
                    /// @src 126:592:627  "address(this).delegatecall(data[i])"

                    let _570 := allocate_unbounded()
                    let _571 := sub(abi_encode_tuple_packed_t_bytes_calldata_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_570 , expr_9911_offset, expr_9911_length), _570)

                    let expr_9912_component_1 := delegatecall(gas(), expr_9908_address,  _570, _571, 0, 0)

                    let expr_9912_component_2_mpos := extract_returndata()
                    /// @src 126:554:627  "(bool success, bytes memory result) = address(this).delegatecall(data[i])"
                    let var_success_9901 := expr_9912_component_1
                    let var_result_9903_mpos := expr_9912_component_2_mpos
                    /// @src 126:647:654  "success"
                    let _572 := var_success_9901
                    let expr_9914 := _572
                    /// @src 126:646:654  "!success"
                    let expr_9915 := cleanup_t_bool(iszero(expr_9914))
                    /// @src 126:642:948  "if (!success) {..."
                    if expr_9915 {
                        /// @src 126:758:764  "result"
                        let _573_mpos := var_result_9903_mpos
                        let expr_9916_mpos := _573_mpos
                        /// @src 126:758:771  "result.length"
                        let expr_9917 := array_length_t_bytes_memory_ptr(expr_9916_mpos)
                        /// @src 126:774:776  "68"
                        let expr_9918 := 0x44
                        /// @src 126:758:776  "result.length < 68"
                        let expr_9919 := lt(cleanup_t_uint256(expr_9917), convert_t_rational_68_by_1_to_t_uint256(expr_9918))
                        /// @src 126:754:786  "if (result.length < 68) revert()"
                        if expr_9919 {
                            /// @src 126:778:786  "revert()"
                            revert(0, 0)
                            /// @src 126:754:786  "if (result.length < 68) revert()"
                        }
                        /// @src 126:804:880  "assembly {..."
                        {
                            var_result_9903_mpos := add(var_result_9903_mpos, 0x04)
                        }
                        /// @src 126:915:921  "result"
                        let _574_mpos := var_result_9903_mpos
                        let expr_9928_mpos := _574_mpos
                        /// @src 126:904:932  "abi.decode(result, (string))"

                        let expr_9932_mpos :=  abi_decode_tuple_t_string_memory_ptr_fromMemory(add(expr_9928_mpos, 32), add(add(expr_9928_mpos, 32), array_length_t_bytes_memory_ptr(expr_9928_mpos)))
                        /// @src 126:897:933  "revert(abi.decode(result, (string)))"
                        {

                            let _576 := allocate_unbounded()

                            mstore(_576, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                            let _575 := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(add(_576, 4) , expr_9932_mpos)
                            revert(_576, sub(_575, _576))
                        }/// @src 126:642:948  "if (!success) {..."
                    }
                    /// @src 126:975:981  "result"
                    let _577_mpos := var_result_9903_mpos
                    let expr_9940_mpos := _577_mpos
                    /// @src 126:962:969  "results"
                    let _578_mpos := var_results_9878_mpos
                    let expr_9937_mpos := _578_mpos
                    /// @src 126:970:971  "i"
                    let _579 := var_i_9890
                    let expr_9938 := _579
                    /// @src 126:962:981  "results[i] = result"
                    mstore(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_9937_mpos, expr_9938), expr_9940_mpos)
                    let _580_mpos := mload(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_9937_mpos, expr_9938))
                    let expr_9941_mpos := _580_mpos
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 23035
            /// @src 36:8689:8971  "function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory _data) public virtual override {..."
            function fun_safeTransferFrom_23035(var_from_23008, var_to_23010, var_tokenId_23012, var__data_23014_mpos) {

                /// @src 36:8839:8851  "_msgSender()"
                let expr_23021 := fun__msgSender_6002()
                /// @src 36:8853:8860  "tokenId"
                let _581 := var_tokenId_23012
                let expr_23022 := _581
                /// @src 36:8820:8861  "_isApprovedOrOwner(_msgSender(), tokenId)"
                let _582 := convert_t_address_payable_to_t_address(expr_23021)
                let expr_23023 := fun__isApprovedOrOwner_23120(_582, expr_23022)
                /// @src 36:8812:8915  "require(_isApprovedOrOwner(_msgSender(), tokenId), \"ERC721: transfer caller is not owner nor approved\")"
                require_helper_t_stringliteral_c8682f3ad98807db59a6ec6bb812b72fed0a66e3150fa8239699ee83885247f2(expr_23023)
                /// @src 36:8939:8943  "from"
                let _583 := var_from_23008
                let expr_23028 := _583
                /// @src 36:8945:8947  "to"
                let _584 := var_to_23010
                let expr_23029 := _584
                /// @src 36:8949:8956  "tokenId"
                let _585 := var_tokenId_23012
                let expr_23030 := _585
                /// @src 36:8958:8963  "_data"
                let _586_mpos := var__data_23014_mpos
                let expr_23031_mpos := _586_mpos
                fun__safeTransfer_23064(expr_23028, expr_23029, expr_23030, expr_23031_mpos)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 10175
            /// @src 131:1010:1324  "function selfPermitIfNecessary(..."
            function fun_selfPermitIfNecessary_10175(var_token_10137, var_value_10139, var_deadline_10141, var_v_10143, var_r_10145, var_s_10147) {

                /// @src 131:1221:1226  "token"
                let _587 := var_token_10137
                let expr_10152 := _587
                /// @src 131:1214:1227  "IERC20(token)"
                let expr_10153_address := convert_t_address_to_t_contract$_IERC20_$1962(expr_10152)
                /// @src 131:1214:1237  "IERC20(token).allowance"
                let expr_10154_address := convert_t_contract$_IERC20_$1962_to_t_address(expr_10153_address)
                let expr_10154_functionSelector := 0xdd62ed3e
                /// @src 131:1238:1248  "msg.sender"
                let expr_10156 := caller()
                /// @src 131:1258:1262  "this"
                let expr_10159_address := address()
                /// @src 131:1250:1263  "address(this)"
                let expr_10160 := convert_t_contract$_SelfPermit_$10257_to_t_address(expr_10159_address)
                /// @src 131:1214:1264  "IERC20(token).allowance(msg.sender, address(this))"

                // storage for arguments and returned data
                let _588 := allocate_unbounded()
                mstore(_588, shift_left_224(expr_10154_functionSelector))
                let _589 := abi_encode_tuple_t_address_t_address__to_t_address_t_address__fromStack(add(_588, 4) , expr_10156, expr_10160)

                let _590 := staticcall(gas(), expr_10154_address,  _588, sub(_589, _588), _588, 32)

                if iszero(_590) { revert_forward_1() }

                let expr_10161
                if _590 {

                    let _591 := 32

                    if gt(_591, returndatasize()) {
                        _591 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_588, _591)

                    // decode return parameters from external try-call into retVars
                    expr_10161 :=  abi_decode_tuple_t_uint256_fromMemory(_588, add(_588, _591))
                }
                /// @src 131:1267:1272  "value"
                let _592 := var_value_10139
                let expr_10162 := _592
                /// @src 131:1214:1272  "IERC20(token).allowance(msg.sender, address(this)) < value"
                let expr_10163 := lt(cleanup_t_uint256(expr_10161), cleanup_t_uint256(expr_10162))
                /// @src 131:1210:1317  "if (IERC20(token).allowance(msg.sender, address(this)) < value) selfPermit(token, value, deadline, v, r, s)"
                if expr_10163 {
                    /// @src 131:1285:1290  "token"
                    let _593 := var_token_10137
                    let expr_10165 := _593
                    /// @src 131:1292:1297  "value"
                    let _594 := var_value_10139
                    let expr_10166 := _594
                    /// @src 131:1299:1307  "deadline"
                    let _595 := var_deadline_10141
                    let expr_10167 := _595
                    /// @src 131:1309:1310  "v"
                    let _596 := var_v_10143
                    let expr_10168 := _596
                    /// @src 131:1312:1313  "r"
                    let _597 := var_r_10145
                    let expr_10169 := _597
                    /// @src 131:1315:1316  "s"
                    let _598 := var_s_10147
                    let expr_10170 := _598
                    fun_selfPermit_10134(expr_10165, expr_10166, expr_10167, expr_10168, expr_10169, expr_10170)
                    /// @src 131:1210:1317  "if (IERC20(token).allowance(msg.sender, address(this)) < value) selfPermit(token, value, deadline, v, r, s)"
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function convert_t_uint160_to_t_contract$_INonfungibleTokenPositionDescriptor_$4134(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_INonfungibleTokenPositionDescriptor_$4134(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_INonfungibleTokenPositionDescriptor_$4134(value)
            }

            function convert_t_contract$_INonfungibleTokenPositionDescriptor_$4134_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_t_contract$_NonfungiblePositionManager_$3590_to_t_address_fromStack(value, pos) {
                mstore(pos, convert_t_contract$_NonfungiblePositionManager_$3590_to_t_address(value))
            }

            function abi_encode_tuple_t_contract$_NonfungiblePositionManager_$3590_t_uint256__to_t_address_t_uint256__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_contract$_NonfungiblePositionManager_$3590_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

            }

            /// @ast-id 2887
            /// @src 121:6678:6919  "function tokenURI(uint256 tokenId) public view override(ERC721, IERC721Metadata) returns (string memory) {..."
            function fun_tokenURI_2887(var_tokenId_2864) -> var__2870_mpos {
                /// @src 121:6768:6781  "string memory"
                let zero_t_string_memory_ptr_599_mpos := zero_value_for_split_t_string_memory_ptr()
                var__2870_mpos := zero_t_string_memory_ptr_599_mpos

                /// @src 121:6809:6816  "tokenId"
                let _600 := var_tokenId_2864
                let expr_2874 := _600
                /// @src 121:6801:6817  "_exists(tokenId)"
                let expr_2875 := fun__exists_23078(expr_2874)
                /// @src 121:6793:6818  "require(_exists(tokenId))"
                require_helper(expr_2875)
                /// @src 121:6871:6887  "_tokenDescriptor"
                let _601 := loadimmutable("2564")
                let expr_2879 := _601
                /// @src 121:6835:6888  "INonfungibleTokenPositionDescriptor(_tokenDescriptor)"
                let expr_2880_address := convert_t_address_to_t_contract$_INonfungibleTokenPositionDescriptor_$4134(expr_2879)
                /// @src 121:6835:6897  "INonfungibleTokenPositionDescriptor(_tokenDescriptor).tokenURI"
                let expr_2881_address := convert_t_contract$_INonfungibleTokenPositionDescriptor_$4134_to_t_address(expr_2880_address)
                let expr_2881_functionSelector := 0xe9dc6375
                /// @src 121:6898:6902  "this"
                let expr_2882_address := address()
                /// @src 121:6904:6911  "tokenId"
                let _602 := var_tokenId_2864
                let expr_2883 := _602
                /// @src 121:6835:6912  "INonfungibleTokenPositionDescriptor(_tokenDescriptor).tokenURI(this, tokenId)"

                // storage for arguments and returned data
                let _603 := allocate_unbounded()
                mstore(_603, shift_left_224(expr_2881_functionSelector))
                let _604 := abi_encode_tuple_t_contract$_NonfungiblePositionManager_$3590_t_uint256__to_t_address_t_uint256__fromStack(add(_603, 4) , expr_2882_address, expr_2883)

                let _605 := staticcall(gas(), expr_2881_address,  _603, sub(_604, _603), _603, 0)

                if iszero(_605) { revert_forward_1() }

                let expr_2884_mpos
                if _605 {

                    let _606 := returndatasize()
                    returndatacopy(_603, 0, _606)

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_603, _606)

                    // decode return parameters from external try-call into retVars
                    expr_2884_mpos :=  abi_decode_tuple_t_string_memory_ptr_fromMemory(_603, add(_603, _606))
                }
                /// @src 121:6828:6912  "return INonfungibleTokenPositionDescriptor(_tokenDescriptor).tokenURI(this, tokenId)"
                var__2870_mpos := expr_2884_mpos
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() {
                revert(0, 0)
            }

            function revert_error_5e8f644817bc4960744f35c15999b6eff64ae702f94b1c46297cfd4e1aec2421() {
                revert(0, 0)
            }

            // struct PoolAddress.PoolKey
            function abi_decode_t_struct$_PoolKey_$10271_memory_ptr(headStart, end) -> value {
                if slt(sub(end, headStart), 0x60) { revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() }
                value := allocate_memory(0x60)

                {
                    // token0

                    let offset := 0

                    mstore(add(value, 0x00), abi_decode_t_address(add(headStart, offset), end))

                }

                {
                    // token1

                    let offset := 32

                    mstore(add(value, 0x20), abi_decode_t_address(add(headStart, offset), end))

                }

                {
                    // fee

                    let offset := 64

                    mstore(add(value, 0x40), abi_decode_t_uint24(add(headStart, offset), end))

                }

            }

            // struct LiquidityManagement.MintCallbackData
            function abi_decode_t_struct$_MintCallbackData_$9666_memory_ptr(headStart, end) -> value {
                if slt(sub(end, headStart), 0x80) { revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() }
                value := allocate_memory(0x40)

                {
                    // poolKey

                    let offset := 0

                    mstore(add(value, 0x00), abi_decode_t_struct$_PoolKey_$10271_memory_ptr(add(headStart, offset), end))

                }

                {
                    // payer

                    let offset := 96

                    mstore(add(value, 0x20), abi_decode_t_address(add(headStart, offset), end))

                }

            }

            function abi_decode_tuple_t_struct$_MintCallbackData_$9666_memory_ptr(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_struct$_MintCallbackData_$9666_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            /// @ast-id 9726
            /// @src 125:918:1413  "function uniswapV3MintCallback(..."
            function fun_uniswapV3MintCallback_9726(var_amount0Owed_9669, var_amount1Owed_9671, var_data_9673_offset, var_data_9673_length) {

                /// @src 125:1115:1119  "data"
                let _607_offset := var_data_9673_offset
                let _607_length := var_data_9673_length
                let expr_9682_offset := _607_offset
                let expr_9682_length := _607_length
                /// @src 125:1104:1140  "abi.decode(data, (MintCallbackData))"

                let expr_9685_mpos :=  abi_decode_tuple_t_struct$_MintCallbackData_$9666_memory_ptr(expr_9682_offset, add(expr_9682_offset, expr_9682_length))
                /// @src 125:1070:1140  "MintCallbackData memory decoded = abi.decode(data, (MintCallbackData))"
                let var_decoded_9679_mpos := expr_9685_mpos
                /// @src 125:1150:1168  "CallbackValidation"
                let expr_9687_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/CallbackValidation.sol:CallbackValidation")
                /// @src 125:1184:1191  "factory"
                let _608 := loadimmutable("9957")
                let expr_9690 := _608
                /// @src 125:1193:1200  "decoded"
                let _609_mpos := var_decoded_9679_mpos
                let expr_9691_mpos := _609_mpos
                /// @src 125:1193:1208  "decoded.poolKey"
                let _610 := add(expr_9691_mpos, 0)
                let _611_mpos := mload(_610)
                let expr_9692_mpos := _611_mpos
                /// @src 125:1150:1209  "CallbackValidation.verifyCallback(factory, decoded.poolKey)"
                let expr_9693_address := fun_verifyCallback_24089(expr_9690, expr_9692_mpos)
                /// @src 125:1224:1235  "amount0Owed"
                let _612 := var_amount0Owed_9669
                let expr_9695 := _612
                /// @src 125:1238:1239  "0"
                let expr_9696 := 0x00
                /// @src 125:1224:1239  "amount0Owed > 0"
                let expr_9697 := gt(cleanup_t_uint256(expr_9695), convert_t_rational_0_by_1_to_t_uint256(expr_9696))
                /// @src 125:1220:1308  "if (amount0Owed > 0) pay(decoded.poolKey.token0, decoded.payer, msg.sender, amount0Owed)"
                if expr_9697 {
                    /// @src 125:1245:1252  "decoded"
                    let _613_mpos := var_decoded_9679_mpos
                    let expr_9699_mpos := _613_mpos
                    /// @src 125:1245:1260  "decoded.poolKey"
                    let _614 := add(expr_9699_mpos, 0)
                    let _615_mpos := mload(_614)
                    let expr_9700_mpos := _615_mpos
                    /// @src 125:1245:1267  "decoded.poolKey.token0"
                    let _616 := add(expr_9700_mpos, 0)
                    let _617 := read_from_memoryt_address(_616)
                    let expr_9701 := _617
                    /// @src 125:1269:1276  "decoded"
                    let _618_mpos := var_decoded_9679_mpos
                    let expr_9702_mpos := _618_mpos
                    /// @src 125:1269:1282  "decoded.payer"
                    let _619 := add(expr_9702_mpos, 32)
                    let _620 := read_from_memoryt_address(_619)
                    let expr_9703 := _620
                    /// @src 125:1284:1294  "msg.sender"
                    let expr_9705 := caller()
                    /// @src 125:1296:1307  "amount0Owed"
                    let _621 := var_amount0Owed_9669
                    let expr_9706 := _621
                    fun_pay_24024(expr_9701, expr_9703, expr_9705, expr_9706)
                    /// @src 125:1220:1308  "if (amount0Owed > 0) pay(decoded.poolKey.token0, decoded.payer, msg.sender, amount0Owed)"
                }
                /// @src 125:1322:1333  "amount1Owed"
                let _622 := var_amount1Owed_9671
                let expr_9710 := _622
                /// @src 125:1336:1337  "0"
                let expr_9711 := 0x00
                /// @src 125:1322:1337  "amount1Owed > 0"
                let expr_9712 := gt(cleanup_t_uint256(expr_9710), convert_t_rational_0_by_1_to_t_uint256(expr_9711))
                /// @src 125:1318:1406  "if (amount1Owed > 0) pay(decoded.poolKey.token1, decoded.payer, msg.sender, amount1Owed)"
                if expr_9712 {
                    /// @src 125:1343:1350  "decoded"
                    let _623_mpos := var_decoded_9679_mpos
                    let expr_9714_mpos := _623_mpos
                    /// @src 125:1343:1358  "decoded.poolKey"
                    let _624 := add(expr_9714_mpos, 0)
                    let _625_mpos := mload(_624)
                    let expr_9715_mpos := _625_mpos
                    /// @src 125:1343:1365  "decoded.poolKey.token1"
                    let _626 := add(expr_9715_mpos, 32)
                    let _627 := read_from_memoryt_address(_626)
                    let expr_9716 := _627
                    /// @src 125:1367:1374  "decoded"
                    let _628_mpos := var_decoded_9679_mpos
                    let expr_9717_mpos := _628_mpos
                    /// @src 125:1367:1380  "decoded.payer"
                    let _629 := add(expr_9717_mpos, 32)
                    let _630 := read_from_memoryt_address(_629)
                    let expr_9718 := _630
                    /// @src 125:1382:1392  "msg.sender"
                    let expr_9720 := caller()
                    /// @src 125:1394:1405  "amount1Owed"
                    let _631 := var_amount1Owed_9671
                    let expr_9721 := _631
                    fun_pay_24024(expr_9716, expr_9718, expr_9720, expr_9721)
                    /// @src 125:1318:1406  "if (amount1Owed > 0) pay(decoded.poolKey.token1, decoded.payer, msg.sender, amount1Owed)"
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function store_literal_in_memory_2cf3b53843c7738cfb0b95230b455802cee89f2ea29be4a30eee707228c97571(memPtr) {

                mstore(add(memPtr, 0), "Insufficient token")

            }

            function abi_encode_t_stringliteral_2cf3b53843c7738cfb0b95230b455802cee89f2ea29be4a30eee707228c97571_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 18)
                store_literal_in_memory_2cf3b53843c7738cfb0b95230b455802cee89f2ea29be4a30eee707228c97571(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_2cf3b53843c7738cfb0b95230b455802cee89f2ea29be4a30eee707228c97571__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_2cf3b53843c7738cfb0b95230b455802cee89f2ea29be4a30eee707228c97571_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_2cf3b53843c7738cfb0b95230b455802cee89f2ea29be4a30eee707228c97571(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_2cf3b53843c7738cfb0b95230b455802cee89f2ea29be4a30eee707228c97571__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 23930
            /// @src 128:1003:1398  "function sweepToken(..."
            function fun_sweepToken_23930(var_token_23889, var_amountMinimum_23891, var_recipient_23893) {

                /// @src 128:1174:1179  "token"
                let _632 := var_token_23889
                let expr_23900 := _632
                /// @src 128:1167:1180  "IERC20(token)"
                let expr_23901_address := convert_t_address_to_t_contract$_IERC20_$1962(expr_23900)
                /// @src 128:1167:1190  "IERC20(token).balanceOf"
                let expr_23902_address := convert_t_contract$_IERC20_$1962_to_t_address(expr_23901_address)
                let expr_23902_functionSelector := 0x70a08231
                /// @src 128:1199:1203  "this"
                let expr_23905_address := address()
                /// @src 128:1191:1204  "address(this)"
                let expr_23906 := convert_t_contract$_PeripheryPayments_$24025_to_t_address(expr_23905_address)
                /// @src 128:1167:1205  "IERC20(token).balanceOf(address(this))"

                // storage for arguments and returned data
                let _633 := allocate_unbounded()
                mstore(_633, shift_left_224(expr_23902_functionSelector))
                let _634 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_633, 4) , expr_23906)

                let _635 := staticcall(gas(), expr_23902_address,  _633, sub(_634, _633), _633, 32)

                if iszero(_635) { revert_forward_1() }

                let expr_23907
                if _635 {

                    let _636 := 32

                    if gt(_636, returndatasize()) {
                        _636 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_633, _636)

                    // decode return parameters from external try-call into retVars
                    expr_23907 :=  abi_decode_tuple_t_uint256_fromMemory(_633, add(_633, _636))
                }
                /// @src 128:1144:1205  "uint256 balanceToken = IERC20(token).balanceOf(address(this))"
                let var_balanceToken_23898 := expr_23907
                /// @src 128:1223:1235  "balanceToken"
                let _637 := var_balanceToken_23898
                let expr_23910 := _637
                /// @src 128:1239:1252  "amountMinimum"
                let _638 := var_amountMinimum_23891
                let expr_23911 := _638
                /// @src 128:1223:1252  "balanceToken >= amountMinimum"
                let expr_23912 := iszero(lt(cleanup_t_uint256(expr_23910), cleanup_t_uint256(expr_23911)))
                /// @src 128:1215:1275  "require(balanceToken >= amountMinimum, 'Insufficient token')"
                require_helper_t_stringliteral_2cf3b53843c7738cfb0b95230b455802cee89f2ea29be4a30eee707228c97571(expr_23912)
                /// @src 128:1290:1302  "balanceToken"
                let _639 := var_balanceToken_23898
                let expr_23916 := _639
                /// @src 128:1305:1306  "0"
                let expr_23917 := 0x00
                /// @src 128:1290:1306  "balanceToken > 0"
                let expr_23918 := gt(cleanup_t_uint256(expr_23916), convert_t_rational_0_by_1_to_t_uint256(expr_23917))
                /// @src 128:1286:1392  "if (balanceToken > 0) {..."
                if expr_23918 {
                    /// @src 128:1322:1336  "TransferHelper"
                    let expr_23919_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/TransferHelper.sol:TransferHelper")
                    /// @src 128:1350:1355  "token"
                    let _640 := var_token_23889
                    let expr_23922 := _640
                    /// @src 128:1357:1366  "recipient"
                    let _641 := var_recipient_23893
                    let expr_23923 := _641
                    /// @src 128:1368:1380  "balanceToken"
                    let _642 := var_balanceToken_23898
                    let expr_23924 := _642
                    fun_safeTransfer_35830(expr_23922, expr_23923, expr_23924)
                    /// @src 128:1286:1392  "if (balanceToken > 0) {..."
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_bool_$_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @ast-id 22959
            /// @src 36:7884:8046  "function isApprovedForAll(address owner, address operator) public view virtual override returns (bool) {..."
            function fun_isApprovedForAll_22959(var_owner_22944, var_operator_22946) -> var__22950 {
                /// @src 36:7981:7985  "bool"
                let zero_t_bool_643 := zero_value_for_split_t_bool()
                var__22950 := zero_t_bool_643

                /// @src 36:8004:8022  "_operatorApprovals"
                let _644_slot := 0x05
                let expr_22952_slot := _644_slot
                /// @src 36:8023:8028  "owner"
                let _645 := var_owner_22944
                let expr_22953 := _645
                /// @src 36:8004:8029  "_operatorApprovals[owner]"
                let _646 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_bool_$_$_of_t_address(expr_22952_slot,expr_22953)
                let _647_slot := _646
                let expr_22954_slot := _647_slot
                /// @src 36:8030:8038  "operator"
                let _648 := var_operator_22946
                let expr_22955 := _648
                /// @src 36:8004:8039  "_operatorApprovals[owner][operator]"
                let _649 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_22954_slot,expr_22955)
                let _650 := read_from_storage_split_offset_0_t_bool(_649)
                let expr_22956 := _650
                /// @src 36:7997:8039  "return _operatorApprovals[owner][operator]"
                var__22950 := expr_22956
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function convert_t_uint160_to_t_contract$_IERC20Permit_$24481(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IERC20Permit_$24481(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IERC20Permit_$24481(value)
            }

            function convert_t_contract$_IERC20Permit_$24481_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_tuple_t_address_t_address_t_uint256_t_uint256_t_uint8_t_bytes32_t_bytes32__to_t_address_t_address_t_uint256_t_uint256_t_uint8_t_bytes32_t_bytes32__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6) -> tail {
                tail := add(headStart, 224)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint8_to_t_uint8_fromStack(value4,  add(headStart, 128))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value5,  add(headStart, 160))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value6,  add(headStart, 192))

            }

            /// @ast-id 10134
            /// @src 131:699:972  "function selfPermit(..."
            function fun_selfPermit_10134(var_token_10102, var_value_10104, var_deadline_10106, var_v_10108, var_r_10110, var_s_10112) {

                /// @src 131:899:904  "token"
                let _651 := var_token_10102
                let expr_10117 := _651
                /// @src 131:886:905  "IERC20Permit(token)"
                let expr_10118_address := convert_t_address_to_t_contract$_IERC20Permit_$24481(expr_10117)
                /// @src 131:886:912  "IERC20Permit(token).permit"
                let expr_10119_address := convert_t_contract$_IERC20Permit_$24481_to_t_address(expr_10118_address)
                let expr_10119_functionSelector := 0xd505accf
                /// @src 131:913:923  "msg.sender"
                let expr_10121 := caller()
                /// @src 131:933:937  "this"
                let expr_10124_address := address()
                /// @src 131:925:938  "address(this)"
                let expr_10125 := convert_t_contract$_SelfPermit_$10257_to_t_address(expr_10124_address)
                /// @src 131:940:945  "value"
                let _652 := var_value_10104
                let expr_10126 := _652
                /// @src 131:947:955  "deadline"
                let _653 := var_deadline_10106
                let expr_10127 := _653
                /// @src 131:957:958  "v"
                let _654 := var_v_10108
                let expr_10128 := _654
                /// @src 131:960:961  "r"
                let _655 := var_r_10110
                let expr_10129 := _655
                /// @src 131:963:964  "s"
                let _656 := var_s_10112
                let expr_10130 := _656
                /// @src 131:886:965  "IERC20Permit(token).permit(msg.sender, address(this), value, deadline, v, r, s)"

                if iszero(extcodesize(expr_10119_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _657 := allocate_unbounded()
                mstore(_657, shift_left_224(expr_10119_functionSelector))
                let _658 := abi_encode_tuple_t_address_t_address_t_uint256_t_uint256_t_uint8_t_bytes32_t_bytes32__to_t_address_t_address_t_uint256_t_uint256_t_uint8_t_bytes32_t_bytes32__fromStack(add(_657, 4) , expr_10121, expr_10125, expr_10126, expr_10127, expr_10128, expr_10129, expr_10130)

                let _659 := call(gas(), expr_10119_address,  0,  _657, sub(_658, _657), _657, 0)

                if iszero(_659) { revert_forward_1() }

                if _659 {

                    let _660 := 0

                    if gt(_660, returndatasize()) {
                        _660 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_657, _660)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_657, add(_657, _660))
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 2862
            /// @src 121:6533:6672  "modifier isAuthorizedForToken(uint256 tokenId) {..."
            function modifier_isAuthorizedForToken_3260(var_amount0_3262, var_amount1_3264, var_params_3254_offset) -> _663, _664 {
                _663 := var_amount0_3262
                _664 := var_amount1_3264

                /// @src 121:11545:11551  "params"
                let _665_offset := var_params_3254_offset
                let expr_3258_offset := _665_offset
                /// @src 121:11545:11559  "params.tokenId"
                let _666 := add(expr_3258_offset, 0)
                let expr_3259 := read_from_calldatat_uint256(_666)
                let _667 := expr_3259
                let var_tokenId_2849 := _667

                /// @src 121:6617:6627  "msg.sender"
                let expr_2854 := caller()
                /// @src 121:6629:6636  "tokenId"
                let _668 := var_tokenId_2849
                let expr_2855 := _668
                /// @src 121:6598:6637  "_isApprovedOrOwner(msg.sender, tokenId)"
                let expr_2856 := fun__isApprovedOrOwner_23120(expr_2854, expr_2855)
                /// @src 121:6590:6654  "require(_isApprovedOrOwner(msg.sender, tokenId), 'Not approved')"
                require_helper_t_stringliteral_70356c467a9713064077b7fa0ff1a074c93b1f7c48415be181b9cd799b628361(expr_2856)
                /// @src 121:6664:6665  "_"
                _663, _664 := fun_collect_3476_inner(var_amount0_3262, var_amount1_3264, var_params_3254_offset)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function abi_encode_t_rational_0_by_1_to_t_uint128_fromStack(value, pos) {
                mstore(pos, convert_t_rational_0_by_1_to_t_uint128(value))
            }

            function abi_encode_tuple_t_int24_t_int24_t_rational_0_by_1__to_t_int24_t_int24_t_uint128__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_int24_to_t_int24_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int24_to_t_int24_fromStack(value1,  add(headStart, 32))

                abi_encode_t_rational_0_by_1_to_t_uint128_fromStack(value2,  add(headStart, 64))

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

            function abi_encode_t_uint128_to_t_uint256_fromStack(value, pos) {
                mstore(pos, convert_t_uint128_to_t_uint256(value))
            }

            function abi_encode_tuple_t_address_t_uint128_t_uint128__to_t_address_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint128_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint128_to_t_uint256_fromStack(value2,  add(headStart, 64))

            }

            /// @src 121:11418:14270  "function collect(CollectParams calldata params)..."
            function fun_collect_3476_inner(_669, _670, var_params_3254_offset) -> var_amount0_3262, var_amount1_3264 {
                var_amount0_3262 := _669
                var_amount1_3264 := _670

                /// @src 121:11634:11640  "params"
                let _671_offset := var_params_3254_offset
                let expr_3267_offset := _671_offset
                /// @src 121:11634:11651  "params.amount0Max"
                let _672 := add(expr_3267_offset, 64)
                let expr_3268 := read_from_calldatat_uint128(_672)
                /// @src 121:11654:11655  "0"
                let expr_3269 := 0x00
                /// @src 121:11634:11655  "params.amount0Max > 0"
                let expr_3270 := gt(cleanup_t_uint128(expr_3268), convert_t_rational_0_by_1_to_t_uint128(expr_3269))
                /// @src 121:11634:11680  "params.amount0Max > 0 || params.amount1Max > 0"
                let expr_3275 := expr_3270
                if iszero(expr_3275) {
                    /// @src 121:11659:11665  "params"
                    let _673_offset := var_params_3254_offset
                    let expr_3271_offset := _673_offset
                    /// @src 121:11659:11676  "params.amount1Max"
                    let _674 := add(expr_3271_offset, 96)
                    let expr_3272 := read_from_calldatat_uint128(_674)
                    /// @src 121:11679:11680  "0"
                    let expr_3273 := 0x00
                    /// @src 121:11659:11680  "params.amount1Max > 0"
                    let expr_3274 := gt(cleanup_t_uint128(expr_3272), convert_t_rational_0_by_1_to_t_uint128(expr_3273))
                    /// @src 121:11634:11680  "params.amount0Max > 0 || params.amount1Max > 0"
                    expr_3275 := expr_3274
                }
                /// @src 121:11626:11681  "require(params.amount0Max > 0 || params.amount1Max > 0)"
                require_helper(expr_3275)
                /// @src 121:11790:11796  "params"
                let _675_offset := var_params_3254_offset
                let expr_3280_offset := _675_offset
                /// @src 121:11790:11806  "params.recipient"
                let _676 := add(expr_3280_offset, 32)
                let expr_3281 := read_from_calldatat_address(_676)
                /// @src 121:11818:11819  "0"
                let expr_3284 := 0x00
                /// @src 121:11810:11820  "address(0)"
                let expr_3285 := convert_t_rational_0_by_1_to_t_address(expr_3284)
                /// @src 121:11790:11820  "params.recipient == address(0)"
                let expr_3286 := eq(cleanup_t_address(expr_3281), cleanup_t_address(expr_3285))
                /// @src 121:11790:11855  "params.recipient == address(0) ? address(this) : params.recipient"
                let expr_3293
                switch expr_3286
                case 0 {
                    /// @src 121:11839:11845  "params"
                    let _677_offset := var_params_3254_offset
                    let expr_3291_offset := _677_offset
                    /// @src 121:11839:11855  "params.recipient"
                    let _678 := add(expr_3291_offset, 32)
                    let expr_3292 := read_from_calldatat_address(_678)
                    /// @src 121:11790:11855  "params.recipient == address(0) ? address(this) : params.recipient"
                    expr_3293 := expr_3292
                }
                default {
                    /// @src 121:11831:11835  "this"
                    let expr_3289_address := address()
                    /// @src 121:11823:11836  "address(this)"
                    let expr_3290 := convert_t_contract$_NonfungiblePositionManager_$3590_to_t_address(expr_3289_address)
                    /// @src 121:11790:11855  "params.recipient == address(0) ? address(this) : params.recipient"
                    expr_3293 := expr_3290
                }
                /// @src 121:11770:11855  "address recipient = params.recipient == address(0) ? address(this) : params.recipient"
                let var_recipient_3279 := expr_3293
                /// @src 121:11894:11904  "_positions"
                let _679_slot := 0x0c
                let expr_3298_slot := _679_slot
                /// @src 121:11905:11911  "params"
                let _680_offset := var_params_3254_offset
                let expr_3299_offset := _680_offset
                /// @src 121:11905:11919  "params.tokenId"
                let _681 := add(expr_3299_offset, 0)
                let expr_3300 := read_from_calldatat_uint256(_681)
                /// @src 121:11894:11920  "_positions[params.tokenId]"
                let _682 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Position_$2536_storage_$_of_t_uint256(expr_3298_slot,expr_3300)
                let _683_slot := _682
                let expr_3301_slot := _683_slot
                /// @src 121:11866:11920  "Position storage position = _positions[params.tokenId]"
                let var_position_3297_slot := convert_t_struct$_Position_$2536_storage_to_t_struct$_Position_$2536_storage_ptr(expr_3301_slot)
                /// @src 121:11968:11984  "_poolIdToPoolKey"
                let _684_slot := 0x0b
                let expr_3308_slot := _684_slot
                /// @src 121:11985:11993  "position"
                let _685_slot := var_position_3297_slot
                let expr_3309_slot := _685_slot
                /// @src 121:11985:12000  "position.poolId"
                let _686 := add(expr_3309_slot, 1)
                let _687 := read_from_storage_split_offset_0_t_uint80(_686)
                let expr_3310 := _687
                /// @src 121:11968:12001  "_poolIdToPoolKey[position.poolId]"
                let _688 := mapping_index_access_t_mapping$_t_uint80_$_t_struct$_PoolKey_$10271_storage_$_of_t_uint80(expr_3308_slot,expr_3310)
                let _689_slot := _688
                let expr_3311_slot := _689_slot
                /// @src 121:11931:12001  "PoolAddress.PoolKey memory poolKey = _poolIdToPoolKey[position.poolId]"
                let var_poolKey_3307_mpos := convert_t_struct$_PoolKey_$10271_storage_to_t_struct$_PoolKey_$10271_memory_ptr(expr_3311_slot)
                /// @src 121:12049:12060  "PoolAddress"
                let expr_3317_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/PoolAddress.sol:PoolAddress")
                /// @src 121:12076:12083  "factory"
                let _690 := loadimmutable("9957")
                let expr_3319 := _690
                /// @src 121:12085:12092  "poolKey"
                let _691_mpos := var_poolKey_3307_mpos
                let expr_3320_mpos := _691_mpos
                /// @src 121:12049:12093  "PoolAddress.computeAddress(factory, poolKey)"
                let expr_3321 := fun_computeAddress_10354(expr_3319, expr_3320_mpos)
                /// @src 121:12034:12094  "IUniswapV3Pool(PoolAddress.computeAddress(factory, poolKey))"
                let expr_3322_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$2481(expr_3321)
                /// @src 121:12012:12094  "IUniswapV3Pool pool = IUniswapV3Pool(PoolAddress.computeAddress(factory, poolKey))"
                let var_pool_3315_address := expr_3322_address
                /// @src 121:12151:12159  "position"
                let _692_slot := var_position_3297_slot
                let expr_3328_slot := _692_slot
                /// @src 121:12151:12171  "position.tokensOwed0"
                let _693 := add(expr_3328_slot, 4)
                let _694 := read_from_storage_split_offset_0_t_uint128(_693)
                let expr_3329 := _694
                /// @src 121:12150:12194  "(position.tokensOwed0, position.tokensOwed1)"
                let expr_3332_component_1 := expr_3329
                /// @src 121:12173:12181  "position"
                let _695_slot := var_position_3297_slot
                let expr_3330_slot := _695_slot
                /// @src 121:12173:12193  "position.tokensOwed1"
                let _696 := add(expr_3330_slot, 4)
                let _697 := read_from_storage_split_offset_16_t_uint128(_696)
                let expr_3331 := _697
                /// @src 121:12150:12194  "(position.tokensOwed0, position.tokensOwed1)"
                let expr_3332_component_2 := expr_3331
                /// @src 121:12105:12194  "(uint128 tokensOwed0, uint128 tokensOwed1) = (position.tokensOwed0, position.tokensOwed1)"
                let var_tokensOwed0_3325 := expr_3332_component_1
                let var_tokensOwed1_3327 := expr_3332_component_2
                /// @src 121:12313:12321  "position"
                let _698_slot := var_position_3297_slot
                let expr_3334_slot := _698_slot
                /// @src 121:12313:12331  "position.liquidity"
                let _699 := add(expr_3334_slot, 1)
                let _700 := read_from_storage_split_offset_16_t_uint128(_699)
                let expr_3335 := _700
                /// @src 121:12334:12335  "0"
                let expr_3336 := 0x00
                /// @src 121:12313:12335  "position.liquidity > 0"
                let expr_3337 := gt(cleanup_t_uint128(expr_3335), convert_t_rational_0_by_1_to_t_uint128(expr_3336))
                /// @src 121:12309:13287  "if (position.liquidity > 0) {..."
                if expr_3337 {
                    /// @src 121:12351:12355  "pool"
                    let _701_address := var_pool_3315_address
                    let expr_3338_address := _701_address
                    /// @src 121:12351:12360  "pool.burn"
                    let expr_3340_address := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_3338_address)
                    let expr_3340_functionSelector := 0xa34123a7
                    /// @src 121:12361:12369  "position"
                    let _702_slot := var_position_3297_slot
                    let expr_3341_slot := _702_slot
                    /// @src 121:12361:12379  "position.tickLower"
                    let _703 := add(expr_3341_slot, 1)
                    let _704 := read_from_storage_split_offset_10_t_int24(_703)
                    let expr_3342 := _704
                    /// @src 121:12381:12389  "position"
                    let _705_slot := var_position_3297_slot
                    let expr_3343_slot := _705_slot
                    /// @src 121:12381:12399  "position.tickUpper"
                    let _706 := add(expr_3343_slot, 1)
                    let _707 := read_from_storage_split_offset_13_t_int24(_706)
                    let expr_3344 := _707
                    /// @src 121:12401:12402  "0"
                    let expr_3345 := 0x00
                    /// @src 121:12351:12403  "pool.burn(position.tickLower, position.tickUpper, 0)"

                    // storage for arguments and returned data
                    let _708 := allocate_unbounded()
                    mstore(_708, shift_left_224(expr_3340_functionSelector))
                    let _709 := abi_encode_tuple_t_int24_t_int24_t_rational_0_by_1__to_t_int24_t_int24_t_uint128__fromStack(add(_708, 4) , expr_3342, expr_3344, expr_3345)

                    let _710 := call(gas(), expr_3340_address,  0,  _708, sub(_709, _708), _708, 64)

                    if iszero(_710) { revert_forward_1() }

                    let expr_3346_component_1, expr_3346_component_2
                    if _710 {

                        let _711 := 64

                        if gt(_711, returndatasize()) {
                            _711 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_708, _711)

                        // decode return parameters from external try-call into retVars
                        expr_3346_component_1, expr_3346_component_2 :=  abi_decode_tuple_t_uint256t_uint256_fromMemory(_708, add(_708, _711))
                    }
                    /// @src 121:12510:12514  "pool"
                    let _712_address := var_pool_3315_address
                    let expr_3352_address := _712_address
                    /// @src 121:12510:12524  "pool.positions"
                    let expr_3353_address := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_3352_address)
                    let expr_3353_functionSelector := 0x514ea4bf
                    /// @src 121:12525:12536  "PositionKey"
                    let expr_3354_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/PositionKey.sol:PositionKey")
                    /// @src 121:12553:12557  "this"
                    let expr_3358_address := address()
                    /// @src 121:12545:12558  "address(this)"
                    let expr_3359 := convert_t_contract$_NonfungiblePositionManager_$3590_to_t_address(expr_3358_address)
                    /// @src 121:12560:12568  "position"
                    let _713_slot := var_position_3297_slot
                    let expr_3360_slot := _713_slot
                    /// @src 121:12560:12578  "position.tickLower"
                    let _714 := add(expr_3360_slot, 1)
                    let _715 := read_from_storage_split_offset_10_t_int24(_714)
                    let expr_3361 := _715
                    /// @src 121:12580:12588  "position"
                    let _716_slot := var_position_3297_slot
                    let expr_3362_slot := _716_slot
                    /// @src 121:12580:12598  "position.tickUpper"
                    let _717 := add(expr_3362_slot, 1)
                    let _718 := read_from_storage_split_offset_13_t_int24(_717)
                    let expr_3363 := _718
                    /// @src 121:12525:12599  "PositionKey.compute(address(this), position.tickLower, position.tickUpper)"
                    let expr_3364 := fun_compute_10379(expr_3359, expr_3361, expr_3363)
                    /// @src 121:12510:12600  "pool.positions(PositionKey.compute(address(this), position.tickLower, position.tickUpper))"

                    // storage for arguments and returned data
                    let _719 := allocate_unbounded()
                    mstore(_719, shift_left_224(expr_3353_functionSelector))
                    let _720 := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(add(_719, 4) , expr_3364)

                    let _721 := staticcall(gas(), expr_3353_address,  _719, sub(_720, _719), _719, 160)

                    if iszero(_721) { revert_forward_1() }

                    let expr_3365_component_1, expr_3365_component_2, expr_3365_component_3, expr_3365_component_4, expr_3365_component_5
                    if _721 {

                        let _722 := 160

                        if gt(_722, returndatasize()) {
                            _722 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_719, _722)

                        // decode return parameters from external try-call into retVars
                        expr_3365_component_1, expr_3365_component_2, expr_3365_component_3, expr_3365_component_4, expr_3365_component_5 :=  abi_decode_tuple_t_uint128t_uint256t_uint256t_uint128t_uint128_fromMemory(_719, add(_719, _722))
                    }
                    /// @src 121:12417:12600  "(, uint256 feeGrowthInside0LastX128, uint256 feeGrowthInside1LastX128, , ) =..."
                    let var_feeGrowthInside0LastX128_3349 := expr_3365_component_2
                    let var_feeGrowthInside1LastX128_3351 := expr_3365_component_3
                    /// @src 121:12655:12663  "FullMath"
                    let expr_3370_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 121:12692:12716  "feeGrowthInside0LastX128"
                    let _723 := var_feeGrowthInside0LastX128_3349
                    let expr_3372 := _723
                    /// @src 121:12719:12727  "position"
                    let _724_slot := var_position_3297_slot
                    let expr_3373_slot := _724_slot
                    /// @src 121:12719:12752  "position.feeGrowthInside0LastX128"
                    let _725 := add(expr_3373_slot, 2)
                    let _726 := read_from_storage_split_offset_0_t_uint256(_725)
                    let expr_3374 := _726
                    /// @src 121:12692:12752  "feeGrowthInside0LastX128 - position.feeGrowthInside0LastX128"
                    let expr_3375 := checked_sub_t_uint256(expr_3372, expr_3374)

                    /// @src 121:12774:12782  "position"
                    let _727_slot := var_position_3297_slot
                    let expr_3376_slot := _727_slot
                    /// @src 121:12774:12792  "position.liquidity"
                    let _728 := add(expr_3376_slot, 1)
                    let _729 := read_from_storage_split_offset_16_t_uint128(_728)
                    let expr_3377 := _729
                    /// @src 121:12814:12827  "FixedPoint128"
                    let expr_3378_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint128.sol:FixedPoint128")
                    /// @src 121:12814:12832  "FixedPoint128.Q128"
                    let expr_3379 := constant_Q128_9256()
                    /// @src 121:12655:12850  "FullMath.mulDiv(..."
                    let _730 := convert_t_uint128_to_t_uint256(expr_3377)
                    let expr_3380 := fun_mulDiv_9388(expr_3375, _730, expr_3379)
                    /// @src 121:12630:12864  "uint128(..."
                    let expr_3381 := convert_t_uint256_to_t_uint128(expr_3380)
                    /// @src 121:12615:12864  "tokensOwed0 += uint128(..."
                    let _731 := var_tokensOwed0_3325
                    let expr_3382 := checked_add_t_uint128(_731, expr_3381)

                    var_tokensOwed0_3325 := expr_3382
                    /// @src 121:12918:12926  "FullMath"
                    let expr_3387_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 121:12955:12979  "feeGrowthInside1LastX128"
                    let _732 := var_feeGrowthInside1LastX128_3351
                    let expr_3389 := _732
                    /// @src 121:12982:12990  "position"
                    let _733_slot := var_position_3297_slot
                    let expr_3390_slot := _733_slot
                    /// @src 121:12982:13015  "position.feeGrowthInside1LastX128"
                    let _734 := add(expr_3390_slot, 3)
                    let _735 := read_from_storage_split_offset_0_t_uint256(_734)
                    let expr_3391 := _735
                    /// @src 121:12955:13015  "feeGrowthInside1LastX128 - position.feeGrowthInside1LastX128"
                    let expr_3392 := checked_sub_t_uint256(expr_3389, expr_3391)

                    /// @src 121:13037:13045  "position"
                    let _736_slot := var_position_3297_slot
                    let expr_3393_slot := _736_slot
                    /// @src 121:13037:13055  "position.liquidity"
                    let _737 := add(expr_3393_slot, 1)
                    let _738 := read_from_storage_split_offset_16_t_uint128(_737)
                    let expr_3394 := _738
                    /// @src 121:13077:13090  "FixedPoint128"
                    let expr_3395_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint128.sol:FixedPoint128")
                    /// @src 121:13077:13095  "FixedPoint128.Q128"
                    let expr_3396 := constant_Q128_9256()
                    /// @src 121:12918:13113  "FullMath.mulDiv(..."
                    let _739 := convert_t_uint128_to_t_uint256(expr_3394)
                    let expr_3397 := fun_mulDiv_9388(expr_3392, _739, expr_3396)
                    /// @src 121:12893:13127  "uint128(..."
                    let expr_3398 := convert_t_uint256_to_t_uint128(expr_3397)
                    /// @src 121:12878:13127  "tokensOwed1 += uint128(..."
                    let _740 := var_tokensOwed1_3327
                    let expr_3399 := checked_add_t_uint128(_740, expr_3398)

                    var_tokensOwed1_3327 := expr_3399
                    /// @src 121:13178:13202  "feeGrowthInside0LastX128"
                    let _741 := var_feeGrowthInside0LastX128_3349
                    let expr_3404 := _741
                    /// @src 121:13142:13150  "position"
                    let _742_slot := var_position_3297_slot
                    let expr_3401_slot := _742_slot
                    /// @src 121:13142:13175  "position.feeGrowthInside0LastX128"
                    let _743 := add(expr_3401_slot, 2)
                    /// @src 121:13142:13202  "position.feeGrowthInside0LastX128 = feeGrowthInside0LastX128"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_743, expr_3404)
                    let expr_3405 := expr_3404
                    /// @src 121:13252:13276  "feeGrowthInside1LastX128"
                    let _744 := var_feeGrowthInside1LastX128_3351
                    let expr_3410 := _744
                    /// @src 121:13216:13224  "position"
                    let _745_slot := var_position_3297_slot
                    let expr_3407_slot := _745_slot
                    /// @src 121:13216:13249  "position.feeGrowthInside1LastX128"
                    let _746 := add(expr_3407_slot, 3)
                    /// @src 121:13216:13276  "position.feeGrowthInside1LastX128 = feeGrowthInside1LastX128"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_746, expr_3410)
                    let expr_3411 := expr_3410
                    /// @src 121:12309:13287  "if (position.liquidity > 0) {..."
                }
                /// @src 121:13446:13452  "params"
                let _747_offset := var_params_3254_offset
                let expr_3419_offset := _747_offset
                /// @src 121:13446:13463  "params.amount0Max"
                let _748 := add(expr_3419_offset, 64)
                let expr_3420 := read_from_calldatat_uint128(_748)
                /// @src 121:13466:13477  "tokensOwed0"
                let _749 := var_tokensOwed0_3325
                let expr_3421 := _749
                /// @src 121:13446:13477  "params.amount0Max > tokensOwed0"
                let expr_3422 := gt(cleanup_t_uint128(expr_3420), cleanup_t_uint128(expr_3421))
                /// @src 121:13446:13511  "params.amount0Max > tokensOwed0 ? tokensOwed0 : params.amount0Max"
                let expr_3426
                switch expr_3422
                case 0 {
                    /// @src 121:13494:13500  "params"
                    let _750_offset := var_params_3254_offset
                    let expr_3424_offset := _750_offset
                    /// @src 121:13494:13511  "params.amount0Max"
                    let _751 := add(expr_3424_offset, 64)
                    let expr_3425 := read_from_calldatat_uint128(_751)
                    /// @src 121:13446:13511  "params.amount0Max > tokensOwed0 ? tokensOwed0 : params.amount0Max"
                    expr_3426 := expr_3425
                }
                default {
                    /// @src 121:13480:13491  "tokensOwed0"
                    let _752 := var_tokensOwed0_3325
                    let expr_3423 := _752
                    /// @src 121:13446:13511  "params.amount0Max > tokensOwed0 ? tokensOwed0 : params.amount0Max"
                    expr_3426 := expr_3423
                }
                /// @src 121:13428:13608  "(..."
                let expr_3435_component_1 := expr_3426
                /// @src 121:13529:13535  "params"
                let _753_offset := var_params_3254_offset
                let expr_3427_offset := _753_offset
                /// @src 121:13529:13546  "params.amount1Max"
                let _754 := add(expr_3427_offset, 96)
                let expr_3428 := read_from_calldatat_uint128(_754)
                /// @src 121:13549:13560  "tokensOwed1"
                let _755 := var_tokensOwed1_3327
                let expr_3429 := _755
                /// @src 121:13529:13560  "params.amount1Max > tokensOwed1"
                let expr_3430 := gt(cleanup_t_uint128(expr_3428), cleanup_t_uint128(expr_3429))
                /// @src 121:13529:13594  "params.amount1Max > tokensOwed1 ? tokensOwed1 : params.amount1Max"
                let expr_3434
                switch expr_3430
                case 0 {
                    /// @src 121:13577:13583  "params"
                    let _756_offset := var_params_3254_offset
                    let expr_3432_offset := _756_offset
                    /// @src 121:13577:13594  "params.amount1Max"
                    let _757 := add(expr_3432_offset, 96)
                    let expr_3433 := read_from_calldatat_uint128(_757)
                    /// @src 121:13529:13594  "params.amount1Max > tokensOwed1 ? tokensOwed1 : params.amount1Max"
                    expr_3434 := expr_3433
                }
                default {
                    /// @src 121:13563:13574  "tokensOwed1"
                    let _758 := var_tokensOwed1_3327
                    let expr_3431 := _758
                    /// @src 121:13529:13594  "params.amount1Max > tokensOwed1 ? tokensOwed1 : params.amount1Max"
                    expr_3434 := expr_3431
                }
                /// @src 121:13428:13608  "(..."
                let expr_3435_component_2 := expr_3434
                /// @src 121:13365:13608  "(uint128 amount0Collect, uint128 amount1Collect) =..."
                let var_amount0Collect_3416 := expr_3435_component_1
                let var_amount1Collect_3418 := expr_3435_component_2
                /// @src 121:13693:13697  "pool"
                let _759_address := var_pool_3315_address
                let expr_3440_address := _759_address
                /// @src 121:13693:13705  "pool.collect"
                let expr_3441_address := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_3440_address)
                let expr_3441_functionSelector := 0x4f1eb3d8
                /// @src 121:13719:13728  "recipient"
                let _760 := var_recipient_3279
                let expr_3442 := _760
                /// @src 121:13742:13750  "position"
                let _761_slot := var_position_3297_slot
                let expr_3443_slot := _761_slot
                /// @src 121:13742:13760  "position.tickLower"
                let _762 := add(expr_3443_slot, 1)
                let _763 := read_from_storage_split_offset_10_t_int24(_762)
                let expr_3444 := _763
                /// @src 121:13774:13782  "position"
                let _764_slot := var_position_3297_slot
                let expr_3445_slot := _764_slot
                /// @src 121:13774:13792  "position.tickUpper"
                let _765 := add(expr_3445_slot, 1)
                let _766 := read_from_storage_split_offset_13_t_int24(_765)
                let expr_3446 := _766
                /// @src 121:13806:13820  "amount0Collect"
                let _767 := var_amount0Collect_3416
                let expr_3447 := _767
                /// @src 121:13834:13848  "amount1Collect"
                let _768 := var_amount1Collect_3418
                let expr_3448 := _768
                /// @src 121:13693:13858  "pool.collect(..."

                // storage for arguments and returned data
                let _769 := allocate_unbounded()
                mstore(_769, shift_left_224(expr_3441_functionSelector))
                let _770 := abi_encode_tuple_t_address_t_int24_t_int24_t_uint128_t_uint128__to_t_address_t_int24_t_int24_t_uint128_t_uint128__fromStack(add(_769, 4) , expr_3442, expr_3444, expr_3446, expr_3447, expr_3448)

                let _771 := call(gas(), expr_3441_address,  0,  _769, sub(_770, _769), _769, 64)

                if iszero(_771) { revert_forward_1() }

                let expr_3449_component_1, expr_3449_component_2
                if _771 {

                    let _772 := 64

                    if gt(_772, returndatasize()) {
                        _772 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_769, _772)

                    // decode return parameters from external try-call into retVars
                    expr_3449_component_1, expr_3449_component_2 :=  abi_decode_tuple_t_uint128t_uint128_fromMemory(_769, add(_769, _772))
                }
                /// @src 121:13672:13858  "(amount0, amount1) = pool.collect(..."
                var_amount1_3264 := convert_t_uint128_to_t_uint256(expr_3449_component_2)
                var_amount0_3262 := convert_t_uint128_to_t_uint256(expr_3449_component_1)
                /// @src 121:14122:14133  "tokensOwed0"
                let _773 := var_tokensOwed0_3325
                let expr_3458 := _773
                /// @src 121:14136:14150  "amount0Collect"
                let _774 := var_amount0Collect_3416
                let expr_3459 := _774
                /// @src 121:14122:14150  "tokensOwed0 - amount0Collect"
                let expr_3460 := checked_sub_t_uint128(expr_3458, expr_3459)

                /// @src 121:14121:14181  "(tokensOwed0 - amount0Collect, tokensOwed1 - amount1Collect)"
                let expr_3464_component_1 := expr_3460
                /// @src 121:14152:14163  "tokensOwed1"
                let _775 := var_tokensOwed1_3327
                let expr_3461 := _775
                /// @src 121:14166:14180  "amount1Collect"
                let _776 := var_amount1Collect_3418
                let expr_3462 := _776
                /// @src 121:14152:14180  "tokensOwed1 - amount1Collect"
                let expr_3463 := checked_sub_t_uint128(expr_3461, expr_3462)

                /// @src 121:14121:14181  "(tokensOwed0 - amount0Collect, tokensOwed1 - amount1Collect)"
                let expr_3464_component_2 := expr_3463
                /// @src 121:14075:14083  "position"
                let _777_slot := var_position_3297_slot
                let expr_3452_slot := _777_slot
                /// @src 121:14075:14095  "position.tokensOwed0"
                let _778 := add(expr_3452_slot, 4)
                /// @src 121:14097:14105  "position"
                let _779_slot := var_position_3297_slot
                let expr_3455_slot := _779_slot
                /// @src 121:14097:14117  "position.tokensOwed1"
                let _780 := add(expr_3455_slot, 4)
                /// @src 121:14074:14181  "(position.tokensOwed0, position.tokensOwed1) = (tokensOwed0 - amount0Collect, tokensOwed1 - amount1Collect)"
                update_storage_value_offset_16_t_uint128_to_t_uint128(_780, expr_3464_component_2)
                update_storage_value_offset_0_t_uint128_to_t_uint128(_778, expr_3464_component_1)
                /// @src 121:14205:14211  "params"
                let _781_offset := var_params_3254_offset
                let expr_3468_offset := _781_offset
                /// @src 121:14205:14219  "params.tokenId"
                let _782 := add(expr_3468_offset, 0)
                let expr_3469 := read_from_calldatat_uint256(_782)
                /// @src 121:14221:14230  "recipient"
                let _783 := var_recipient_3279
                let expr_3470 := _783
                /// @src 121:14232:14246  "amount0Collect"
                let _784 := var_amount0Collect_3416
                let expr_3471 := _784
                /// @src 121:14248:14262  "amount1Collect"
                let _785 := var_amount1Collect_3418
                let expr_3472 := _785
                /// @src 121:14197:14263  "Collect(params.tokenId, recipient, amount0Collect, amount1Collect)"
                let _786 := 0x40d0efd1a53d60ecbf40971b9daf7dc90178c3aadc7aab1765632738fa8b8f01
                let _787 := convert_t_uint256_to_t_uint256(expr_3469)
                {
                    let _788 := allocate_unbounded()
                    let _789 := abi_encode_tuple_t_address_t_uint128_t_uint128__to_t_address_t_uint256_t_uint256__fromStack(_788 , expr_3470, expr_3471, expr_3472)
                    log2(_788, sub(_789, _788) , _786, _787)
                }
            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 3476
            /// @src 121:11418:14270  "function collect(CollectParams calldata params)..."
            function fun_collect_3476(var_params_3254_offset) -> var_amount0_3262, var_amount1_3264 {
                /// @src 121:11578:11593  "uint256 amount0"
                let zero_t_uint256_661 := zero_value_for_split_t_uint256()
                var_amount0_3262 := zero_t_uint256_661
                /// @src 121:11595:11610  "uint256 amount1"
                let zero_t_uint256_662 := zero_value_for_split_t_uint256()
                var_amount1_3264 := zero_t_uint256_662

                var_amount0_3262, var_amount1_3264 := modifier_isAuthorizedForToken_3260(var_amount0_3262, var_amount1_3264, var_params_3254_offset)
            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function store_literal_in_memory_9a5f12903ee10b20c1ea1ca8d6f6723d553112d744fe8db2bc5453efb990e6b1(memPtr) {

                mstore(add(memPtr, 0), "Not WETH9")

            }

            function abi_encode_t_stringliteral_9a5f12903ee10b20c1ea1ca8d6f6723d553112d744fe8db2bc5453efb990e6b1_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 9)
                store_literal_in_memory_9a5f12903ee10b20c1ea1ca8d6f6723d553112d744fe8db2bc5453efb990e6b1(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_9a5f12903ee10b20c1ea1ca8d6f6723d553112d744fe8db2bc5453efb990e6b1__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_9a5f12903ee10b20c1ea1ca8d6f6723d553112d744fe8db2bc5453efb990e6b1_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_9a5f12903ee10b20c1ea1ca8d6f6723d553112d744fe8db2bc5453efb990e6b1(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_9a5f12903ee10b20c1ea1ca8d6f6723d553112d744fe8db2bc5453efb990e6b1__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 23838
            /// @src 128:431:516  "receive() external payable {..."
            function fun__23838() {

                /// @src 128:476:486  "msg.sender"
                let expr_23831 := caller()
                /// @src 128:490:495  "WETH9"
                let _790 := loadimmutable("9961")
                let expr_23832 := _790
                /// @src 128:476:495  "msg.sender == WETH9"
                let expr_23833 := eq(cleanup_t_address(expr_23831), cleanup_t_address(expr_23832))
                /// @src 128:468:509  "require(msg.sender == WETH9, 'Not WETH9')"
                require_helper_t_stringliteral_9a5f12903ee10b20c1ea1ca8d6f6723d553112d744fe8db2bc5453efb990e6b1(expr_23833)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 23078
            /// @src 36:10405:10530  "function _exists(uint256 tokenId) internal view virtual returns (bool) {..."
            function fun__exists_23078(var_tokenId_23067) -> var__23070 {
                /// @src 36:10470:10474  "bool"
                let zero_t_bool_791 := zero_value_for_split_t_bool()
                var__23070 := zero_t_bool_791

                /// @src 36:10493:10505  "_tokenOwners"
                let _792_slot := 0x02
                let expr_23072_slot := _792_slot
                /// @src 36:10493:10514  "_tokenOwners.contains"
                let expr_23073_self_slot := convert_t_struct$_UintToAddressMap_$34879_storage_to_t_struct$_UintToAddressMap_$34879_storage_ptr(expr_23072_slot)
                /// @src 36:10515:10522  "tokenId"
                let _793 := var_tokenId_23067
                let expr_23074 := _793
                /// @src 36:10493:10523  "_tokenOwners.contains(tokenId)"
                let expr_23075 := fun_contains_34954(expr_23073_self_slot, expr_23074)
                /// @src 36:10486:10523  "return _tokenOwners.contains(tokenId)"
                var__23070 := expr_23075
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function zero_value_for_split_t_address_payable() -> ret {
                ret := 0
            }

            function convert_t_uint160_to_t_address_payable(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_address_payable(value) -> converted {
                converted := convert_t_uint160_to_t_address_payable(value)
            }

            /// @ast-id 6002
            /// @src 42:635:748  "function _msgSender() internal view virtual returns (address payable) {..."
            function fun__msgSender_6002() -> var__5993 {
                /// @src 42:688:703  "address payable"
                let zero_t_address_payable_794 := zero_value_for_split_t_address_payable()
                var__5993 := zero_t_address_payable_794

                /// @src 42:730:740  "msg.sender"
                let expr_5998 := caller()
                /// @src 42:722:741  "payable(msg.sender)"
                let expr_5999 := convert_t_address_to_t_address_payable(expr_5998)
                /// @src 42:715:741  "return payable(msg.sender)"
                var__5993 := expr_5999
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 3589
            /// @src 121:15186:15363  "function _approve(address to, uint256 tokenId) internal override(ERC721) {..."
            function fun__approve_3589(var_to_3566, var_tokenId_3568) {

                /// @src 121:15300:15302  "to"
                let _795 := var_to_3566
                let expr_3577 := _795
                /// @src 121:15269:15279  "_positions"
                let _796_slot := 0x0c
                let expr_3573_slot := _796_slot
                /// @src 121:15280:15287  "tokenId"
                let _797 := var_tokenId_3568
                let expr_3574 := _797
                /// @src 121:15269:15288  "_positions[tokenId]"
                let _798 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Position_$2536_storage_$_of_t_uint256(expr_3573_slot,expr_3574)
                let _799_slot := _798
                let expr_3575_slot := _799_slot
                /// @src 121:15269:15297  "_positions[tokenId].operator"
                let _800 := add(expr_3575_slot, 0)
                /// @src 121:15269:15302  "_positions[tokenId].operator = to"
                update_storage_value_offset_12_t_address_to_t_address(_800, expr_3577)
                let expr_3578 := expr_3577
                /// @src 121:15334:15341  "tokenId"
                let _801 := var_tokenId_3568
                let expr_3582 := _801
                /// @src 121:15326:15342  "ownerOf(tokenId)"
                let expr_3583 := fun_ownerOf_22695(expr_3582)
                /// @src 121:15344:15346  "to"
                let _802 := var_to_3566
                let expr_3584 := _802
                /// @src 121:15348:15355  "tokenId"
                let _803 := var_tokenId_3568
                let expr_3585 := _803
                /// @src 121:15317:15356  "Approval(ownerOf(tokenId), to, tokenId)"
                let _804 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                let _805 := convert_t_address_to_t_address(expr_3583)
                let _806 := convert_t_address_to_t_address(expr_3584)
                let _807 := convert_t_uint256_to_t_uint256(expr_3585)
                {
                    let _808 := allocate_unbounded()
                    let _809 := abi_encode_tuple__to__fromStack(_808 )
                    log4(_808, sub(_809, _808) , _804, _805, _806, _807)
                }
            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function store_literal_in_memory_5797d1ccb08b83980dd0c07ea40d8f6a64d35fff736a19bdd17522954cb0899c(memPtr) {

                mstore(add(memPtr, 0), "ERC721: operator query for nonex")

                mstore(add(memPtr, 32), "istent token")

            }

            function abi_encode_t_stringliteral_5797d1ccb08b83980dd0c07ea40d8f6a64d35fff736a19bdd17522954cb0899c_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 44)
                store_literal_in_memory_5797d1ccb08b83980dd0c07ea40d8f6a64d35fff736a19bdd17522954cb0899c(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_5797d1ccb08b83980dd0c07ea40d8f6a64d35fff736a19bdd17522954cb0899c__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_5797d1ccb08b83980dd0c07ea40d8f6a64d35fff736a19bdd17522954cb0899c_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_5797d1ccb08b83980dd0c07ea40d8f6a64d35fff736a19bdd17522954cb0899c(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_5797d1ccb08b83980dd0c07ea40d8f6a64d35fff736a19bdd17522954cb0899c__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 23120
            /// @src 36:10688:11039  "function _isApprovedOrOwner(address spender, uint256 tokenId) internal view virtual returns (bool) {..."
            function fun__isApprovedOrOwner_23120(var_spender_23081, var_tokenId_23083) -> var__23086 {
                /// @src 36:10781:10785  "bool"
                let zero_t_bool_810 := zero_value_for_split_t_bool()
                var__23086 := zero_t_bool_810

                /// @src 36:10813:10820  "tokenId"
                let _811 := var_tokenId_23083
                let expr_23090 := _811
                /// @src 36:10805:10821  "_exists(tokenId)"
                let expr_23091 := fun__exists_23078(expr_23090)
                /// @src 36:10797:10870  "require(_exists(tokenId), \"ERC721: operator query for nonexistent token\")"
                require_helper_t_stringliteral_5797d1ccb08b83980dd0c07ea40d8f6a64d35fff736a19bdd17522954cb0899c(expr_23091)
                /// @src 36:10911:10918  "tokenId"
                let _812 := var_tokenId_23083
                let expr_23099 := _812
                /// @src 36:10896:10919  "ERC721.ownerOf(tokenId)"
                let expr_23100 := fun_ownerOf_22695(expr_23099)
                /// @src 36:10880:10919  "address owner = ERC721.ownerOf(tokenId)"
                let var_owner_23096 := expr_23100
                /// @src 36:10937:10944  "spender"
                let _813 := var_spender_23081
                let expr_23102 := _813
                /// @src 36:10948:10953  "owner"
                let _814 := var_owner_23096
                let expr_23103 := _814
                /// @src 36:10937:10953  "spender == owner"
                let expr_23104 := eq(cleanup_t_address(expr_23102), cleanup_t_address(expr_23103))
                /// @src 36:10937:10988  "spender == owner || getApproved(tokenId) == spender"
                let expr_23110 := expr_23104
                if iszero(expr_23110) {
                    /// @src 36:10969:10976  "tokenId"
                    let _815 := var_tokenId_23083
                    let expr_23106 := _815
                    /// @src 36:10957:10977  "getApproved(tokenId)"
                    let expr_23107 := fun_getApproved_3563(expr_23106)
                    /// @src 36:10981:10988  "spender"
                    let _816 := var_spender_23081
                    let expr_23108 := _816
                    /// @src 36:10957:10988  "getApproved(tokenId) == spender"
                    let expr_23109 := eq(cleanup_t_address(expr_23107), cleanup_t_address(expr_23108))
                    /// @src 36:10937:10988  "spender == owner || getApproved(tokenId) == spender"
                    expr_23110 := expr_23109
                }
                /// @src 36:10937:11031  "spender == owner || getApproved(tokenId) == spender || ERC721.isApprovedForAll(owner, spender)"
                let expr_23116 := expr_23110
                if iszero(expr_23116) {
                    /// @src 36:11016:11021  "owner"
                    let _817 := var_owner_23096
                    let expr_23113 := _817
                    /// @src 36:11023:11030  "spender"
                    let _818 := var_spender_23081
                    let expr_23114 := _818
                    /// @src 36:10992:11031  "ERC721.isApprovedForAll(owner, spender)"
                    let expr_23115 := fun_isApprovedForAll_22959(expr_23113, expr_23114)
                    /// @src 36:10937:11031  "spender == owner || getApproved(tokenId) == spender || ERC721.isApprovedForAll(owner, spender)"
                    expr_23116 := expr_23115
                }
                /// @src 36:10936:11032  "(spender == owner || getApproved(tokenId) == spender || ERC721.isApprovedForAll(owner, spender))"
                let expr_23117 := expr_23116
                /// @src 36:10929:11032  "return (spender == owner || getApproved(tokenId) == spender || ERC721.isApprovedForAll(owner, spender))"
                var__23086 := expr_23117
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 23800
            /// @src 123:356:462  "function _blockTimestamp() internal view virtual returns (uint256) {..."
            function fun__blockTimestamp_23800() -> var__23794 {
                /// @src 123:414:421  "uint256"
                let zero_t_uint256_819 := zero_value_for_split_t_uint256()
                var__23794 := zero_t_uint256_819

                /// @src 123:440:455  "block.timestamp"
                let expr_23797 := timestamp()
                /// @src 123:433:455  "return block.timestamp"
                var__23794 := expr_23797
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function cleanup_t_rational_6435762369149880793144289087658240527799312872955058363844139844524577174150_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_6435762369149880793144289087658240527799312872955058363844139844524577174150_by_1_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_rational_6435762369149880793144289087658240527799312872955058363844139844524577174150_by_1(value)))
            }

            /// @src 150:522:636  "bytes32 internal constant POOL_INIT_CODE_HASH = 0x0e3a832da3dfd081d69b94d94f3338902e03ab48de274facdb45434f27c4b286"
            function constant_POOL_INIT_CODE_HASH_10263() -> ret {
                /// @src 150:570:636  "0x0e3a832da3dfd081d69b94d94f3338902e03ab48de274facdb45434f27c4b286"
                let expr_10262 := 0x0e3a832da3dfd081d69b94d94f3338902e03ab48de274facdb45434f27c4b286
                let _839 := convert_t_rational_6435762369149880793144289087658240527799312872955058363844139844524577174150_by_1_to_t_bytes32(expr_10262)

                ret := _839
            }

            function store_literal_in_memory_8b1a944cf13a9a1c08facb2c9e98623ef3254d2ddb48113885c3e8e97fec8db9(memPtr) {

                mstore(add(memPtr, 0), 0xff00000000000000000000000000000000000000000000000000000000000000)

            }

            function abi_encode_t_stringliteral_8b1a944cf13a9a1c08facb2c9e98623ef3254d2ddb48113885c3e8e97fec8db9_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 1)
                store_literal_in_memory_8b1a944cf13a9a1c08facb2c9e98623ef3254d2ddb48113885c3e8e97fec8db9(pos)
                end := add(pos, 1)
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

            function abi_encode_tuple_packed_t_stringliteral_8b1a944cf13a9a1c08facb2c9e98623ef3254d2ddb48113885c3e8e97fec8db9_t_address_t_bytes32_t_bytes32__to_t_string_memory_ptr_t_address_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                pos := abi_encode_t_stringliteral_8b1a944cf13a9a1c08facb2c9e98623ef3254d2ddb48113885c3e8e97fec8db9_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                abi_encode_t_address_to_t_address_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 20)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 32)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value2,  pos)
                pos := add(pos, 32)

                end := pos
            }

            function convert_t_bytes32_to_t_uint256(value) -> converted {
                converted := convert_t_uint256_to_t_uint256(shift_right_0_unsigned(value))
            }

            function convert_t_uint256_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint256(value)))
            }

            /// @ast-id 10354
            /// @src 150:1634:2155  "function computeAddress(address factory, PoolKey memory key) internal pure returns (address pool) {..."
            function fun_computeAddress_10354(var_factory_10306, var_key_10309_mpos) -> var_pool_10312 {
                /// @src 150:1718:1730  "address pool"
                let zero_t_address_820 := zero_value_for_split_t_address()
                var_pool_10312 := zero_t_address_820

                /// @src 150:1750:1753  "key"
                let _821_mpos := var_key_10309_mpos
                let expr_10315_mpos := _821_mpos
                /// @src 150:1750:1760  "key.token0"
                let _822 := add(expr_10315_mpos, 0)
                let _823 := read_from_memoryt_address(_822)
                let expr_10316 := _823
                /// @src 150:1763:1766  "key"
                let _824_mpos := var_key_10309_mpos
                let expr_10317_mpos := _824_mpos
                /// @src 150:1763:1773  "key.token1"
                let _825 := add(expr_10317_mpos, 32)
                let _826 := read_from_memoryt_address(_825)
                let expr_10318 := _826
                /// @src 150:1750:1773  "key.token0 < key.token1"
                let expr_10319 := lt(cleanup_t_address(expr_10316), cleanup_t_address(expr_10318))
                /// @src 150:1742:1774  "require(key.token0 < key.token1)"
                require_helper(expr_10319)
                /// @src 150:1951:1958  "factory"
                let _827 := var_factory_10306
                let expr_10333 := _827
                /// @src 150:2005:2008  "key"
                let _828_mpos := var_key_10309_mpos
                let expr_10337_mpos := _828_mpos
                /// @src 150:2005:2015  "key.token0"
                let _829 := add(expr_10337_mpos, 0)
                let _830 := read_from_memoryt_address(_829)
                let expr_10338 := _830
                /// @src 150:2017:2020  "key"
                let _831_mpos := var_key_10309_mpos
                let expr_10339_mpos := _831_mpos
                /// @src 150:2017:2027  "key.token1"
                let _832 := add(expr_10339_mpos, 32)
                let _833 := read_from_memoryt_address(_832)
                let expr_10340 := _833
                /// @src 150:2029:2032  "key"
                let _834_mpos := var_key_10309_mpos
                let expr_10341_mpos := _834_mpos
                /// @src 150:2029:2036  "key.fee"
                let _835 := add(expr_10341_mpos, 64)
                let _836 := read_from_memoryt_uint24(_835)
                let expr_10342 := _836
                /// @src 150:1994:2037  "abi.encode(key.token0, key.token1, key.fee)"

                let expr_10343_mpos := allocate_unbounded()
                let _837 := add(expr_10343_mpos, 0x20)

                let _838 := abi_encode_tuple_t_address_t_address_t_uint24__to_t_address_t_address_t_uint24__fromStack(_837, expr_10338, expr_10340, expr_10342)
                mstore(expr_10343_mpos, sub(_838, add(expr_10343_mpos, 0x20)))
                finalize_allocation(expr_10343_mpos, sub(_838, expr_10343_mpos))
                /// @src 150:1984:2038  "keccak256(abi.encode(key.token0, key.token1, key.fee))"
                let expr_10344 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_10343_mpos), array_length_t_bytes_memory_ptr(expr_10343_mpos))
                /// @src 150:2064:2083  "POOL_INIT_CODE_HASH"
                let expr_10345 := constant_POOL_INIT_CODE_HASH_10263()
                /// @src 150:1876:2105  "abi.encodePacked(..."

                let expr_10346_mpos := allocate_unbounded()
                let _840 := add(expr_10346_mpos, 0x20)

                let _841 := abi_encode_tuple_packed_t_stringliteral_8b1a944cf13a9a1c08facb2c9e98623ef3254d2ddb48113885c3e8e97fec8db9_t_address_t_bytes32_t_bytes32__to_t_string_memory_ptr_t_address_t_bytes32_t_bytes32__nonPadded_inplace_fromStack(_840, expr_10333, expr_10344, expr_10345)
                mstore(expr_10346_mpos, sub(_841, add(expr_10346_mpos, 0x20)))
                finalize_allocation(expr_10346_mpos, sub(_841, expr_10346_mpos))
                /// @src 150:1845:2123  "keccak256(..."
                let expr_10347 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_10346_mpos), array_length_t_bytes_memory_ptr(expr_10346_mpos))
                /// @src 150:1820:2137  "uint256(..."
                let expr_10348 := convert_t_bytes32_to_t_uint256(expr_10347)
                /// @src 150:1799:2147  "uint160(..."
                let expr_10349 := convert_t_uint256_to_t_uint160(expr_10348)
                /// @src 150:1791:2148  "address(uint160(..."
                let expr_10350 := convert_t_uint160_to_t_address(expr_10349)
                /// @src 150:1784:2148  "pool = address(uint160(..."
                var_pool_10312 := expr_10350
                let expr_10351 := expr_10350

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

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

            /// @ast-id 10379
            /// @src 151:199:407  "function compute(..."
            function fun_compute_10379(var_owner_10360, var_tickLower_10362, var_tickUpper_10364) -> var__10367 {
                /// @src 151:318:325  "bytes32"
                let zero_t_bytes32_842 := zero_value_for_split_t_bytes32()
                var__10367 := zero_t_bytes32_842

                /// @src 151:371:376  "owner"
                let _843 := var_owner_10360
                let expr_10372 := _843
                /// @src 151:378:387  "tickLower"
                let _844 := var_tickLower_10362
                let expr_10373 := _844
                /// @src 151:389:398  "tickUpper"
                let _845 := var_tickUpper_10364
                let expr_10374 := _845
                /// @src 151:354:399  "abi.encodePacked(owner, tickLower, tickUpper)"

                let expr_10375_mpos := allocate_unbounded()
                let _846 := add(expr_10375_mpos, 0x20)

                let _847 := abi_encode_tuple_packed_t_address_t_int24_t_int24__to_t_address_t_int24_t_int24__nonPadded_inplace_fromStack(_846, expr_10372, expr_10373, expr_10374)
                mstore(expr_10375_mpos, sub(_847, add(expr_10375_mpos, 0x20)))
                finalize_allocation(expr_10375_mpos, sub(_847, expr_10375_mpos))
                /// @src 151:344:400  "keccak256(abi.encodePacked(owner, tickLower, tickUpper))"
                let expr_10376 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_10375_mpos), array_length_t_bytes_memory_ptr(expr_10375_mpos))
                /// @src 151:337:400  "return keccak256(abi.encodePacked(owner, tickLower, tickUpper))"
                var__10367 := expr_10376
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

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

            function cleanup_t_rational_3_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_3_by_1(value)))
            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            /// @ast-id 9388
            /// @src 108:779:4558  "function mulDiv(..."
            function fun_mulDiv_9388(var_a_9263, var_b_9265, var_denominator_9267) -> var_result_9270 {
                /// @src 108:891:905  "uint256 result"
                let zero_t_uint256_848 := zero_value_for_split_t_uint256()
                var_result_9270 := zero_t_uint256_848

                /// @src 108:1220:1233  "uint256 prod0"
                let var_prod0_9273
                let zero_t_uint256_849 := zero_value_for_split_t_uint256()
                var_prod0_9273 := zero_t_uint256_849
                /// @src 108:1288:1301  "uint256 prod1"
                let var_prod1_9276
                let zero_t_uint256_850 := zero_value_for_split_t_uint256()
                var_prod1_9276 := zero_t_uint256_850
                /// @src 108:1355:1505  "assembly {..."
                {
                    let usr$mm := mulmod(var_a_9263, var_b_9265, not(0))
                    var_prod0_9273 := mul(var_a_9263, var_b_9265)
                    var_prod1_9276 := sub(sub(usr$mm, var_prod0_9273), lt(usr$mm, var_prod0_9273))
                }
                /// @src 108:1577:1582  "prod1"
                let _851 := var_prod1_9276
                let expr_9279 := _851
                /// @src 108:1586:1587  "0"
                let expr_9280 := 0x00
                /// @src 108:1577:1587  "prod1 == 0"
                let expr_9281 := eq(cleanup_t_uint256(expr_9279), convert_t_rational_0_by_1_to_t_uint256(expr_9280))
                /// @src 108:1573:1752  "if (prod1 == 0) {..."
                if expr_9281 {
                    /// @src 108:1611:1622  "denominator"
                    let _852 := var_denominator_9267
                    let expr_9283 := _852
                    /// @src 108:1625:1626  "0"
                    let expr_9284 := 0x00
                    /// @src 108:1611:1626  "denominator > 0"
                    let expr_9285 := gt(cleanup_t_uint256(expr_9283), convert_t_rational_0_by_1_to_t_uint256(expr_9284))
                    /// @src 108:1603:1627  "require(denominator > 0)"
                    require_helper(expr_9285)
                    /// @src 108:1641:1715  "assembly {..."
                    {
                        var_result_9270 := div(var_prod0_9273, var_denominator_9267)
                    }
                    /// @src 108:1735:1741  "result"
                    let _853 := var_result_9270
                    let expr_9289 := _853
                    /// @src 108:1728:1741  "return result"
                    var_result_9270 := expr_9289
                    leave
                    /// @src 108:1573:1752  "if (prod1 == 0) {..."
                }
                /// @src 108:1865:1876  "denominator"
                let _854 := var_denominator_9267
                let expr_9294 := _854
                /// @src 108:1879:1884  "prod1"
                let _855 := var_prod1_9276
                let expr_9295 := _855
                /// @src 108:1865:1884  "denominator > prod1"
                let expr_9296 := gt(cleanup_t_uint256(expr_9294), cleanup_t_uint256(expr_9295))
                /// @src 108:1857:1885  "require(denominator > prod1)"
                require_helper(expr_9296)
                /// @src 108:2162:2179  "uint256 remainder"
                let var_remainder_9300
                let zero_t_uint256_856 := zero_value_for_split_t_uint256()
                var_remainder_9300 := zero_t_uint256_856
                /// @src 108:2189:2260  "assembly {..."
                {
                    var_remainder_9300 := mulmod(var_a_9263, var_b_9265, var_denominator_9267)
                }
                /// @src 108:2324:2441  "assembly {..."
                {
                    var_prod1_9276 := sub(var_prod1_9276, gt(var_remainder_9300, var_prod0_9273))
                    var_prod0_9273 := sub(var_prod0_9273, var_remainder_9300)
                }
                /// @src 108:2606:2607  "0"
                let expr_9306 := 0x00
                /// @src 108:2608:2619  "denominator"
                let _857 := var_denominator_9267
                let expr_9307 := _857
                /// @src 108:2606:2619  "0-denominator"
                let expr_9308 := checked_sub_t_uint256(convert_t_rational_0_by_1_to_t_uint256(expr_9306), expr_9307)

                /// @src 108:2605:2620  "(0-denominator)"
                let expr_9309 := expr_9308
                /// @src 108:2623:2634  "denominator"
                let _858 := var_denominator_9267
                let expr_9310 := _858
                /// @src 108:2605:2634  "(0-denominator) & denominator"
                let expr_9311 := and(expr_9309, expr_9310)

                /// @src 108:2590:2634  "uint256 twos = (0-denominator) & denominator"
                let var_twos_9305 := expr_9311
                /// @src 108:2690:2760  "assembly {..."
                {
                    var_denominator_9267 := div(var_denominator_9267, var_twos_9305)
                }
                /// @src 108:2824:2882  "assembly {..."
                {
                    var_prod0_9273 := div(var_prod0_9273, var_twos_9305)
                }
                /// @src 108:3061:3133  "assembly {..."
                {
                    var_twos_9305 := add(div(sub(0, var_twos_9305), var_twos_9305), 1)
                }
                /// @src 108:3151:3156  "prod1"
                let _859 := var_prod1_9276
                let expr_9317 := _859
                /// @src 108:3159:3163  "twos"
                let _860 := var_twos_9305
                let expr_9318 := _860
                /// @src 108:3151:3163  "prod1 * twos"
                let expr_9319 := checked_mul_t_uint256(expr_9317, expr_9318)

                /// @src 108:3142:3163  "prod0 |= prod1 * twos"
                let _861 := var_prod0_9273
                let expr_9320 := or(_861, expr_9319)

                var_prod0_9273 := expr_9320
                /// @src 108:3512:3513  "3"
                let expr_9324 := 0x03
                /// @src 108:3516:3527  "denominator"
                let _862 := var_denominator_9267
                let expr_9325 := _862
                /// @src 108:3512:3527  "3 * denominator"
                let expr_9326 := checked_mul_t_uint256(convert_t_rational_3_by_1_to_t_uint256(expr_9324), expr_9325)

                /// @src 108:3511:3528  "(3 * denominator)"
                let expr_9327 := expr_9326
                /// @src 108:3531:3532  "2"
                let expr_9328 := 0x02
                /// @src 108:3511:3532  "(3 * denominator) ^ 2"
                let expr_9329 := xor(expr_9327, convert_t_rational_2_by_1_to_t_uint256(expr_9328))

                /// @src 108:3497:3532  "uint256 inv = (3 * denominator) ^ 2"
                let var_inv_9323 := expr_9329
                /// @src 108:3754:3755  "2"
                let expr_9332 := 0x02
                /// @src 108:3758:3769  "denominator"
                let _863 := var_denominator_9267
                let expr_9333 := _863
                /// @src 108:3772:3775  "inv"
                let _864 := var_inv_9323
                let expr_9334 := _864
                /// @src 108:3758:3775  "denominator * inv"
                let expr_9335 := checked_mul_t_uint256(expr_9333, expr_9334)

                /// @src 108:3754:3775  "2 - denominator * inv"
                let expr_9336 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9332), expr_9335)

                /// @src 108:3747:3775  "inv *= 2 - denominator * inv"
                let _865 := var_inv_9323
                let expr_9337 := checked_mul_t_uint256(_865, expr_9336)

                var_inv_9323 := expr_9337
                /// @src 108:3812:3813  "2"
                let expr_9340 := 0x02
                /// @src 108:3816:3827  "denominator"
                let _866 := var_denominator_9267
                let expr_9341 := _866
                /// @src 108:3830:3833  "inv"
                let _867 := var_inv_9323
                let expr_9342 := _867
                /// @src 108:3816:3833  "denominator * inv"
                let expr_9343 := checked_mul_t_uint256(expr_9341, expr_9342)

                /// @src 108:3812:3833  "2 - denominator * inv"
                let expr_9344 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9340), expr_9343)

                /// @src 108:3805:3833  "inv *= 2 - denominator * inv"
                let _868 := var_inv_9323
                let expr_9345 := checked_mul_t_uint256(_868, expr_9344)

                var_inv_9323 := expr_9345
                /// @src 108:3871:3872  "2"
                let expr_9348 := 0x02
                /// @src 108:3875:3886  "denominator"
                let _869 := var_denominator_9267
                let expr_9349 := _869
                /// @src 108:3889:3892  "inv"
                let _870 := var_inv_9323
                let expr_9350 := _870
                /// @src 108:3875:3892  "denominator * inv"
                let expr_9351 := checked_mul_t_uint256(expr_9349, expr_9350)

                /// @src 108:3871:3892  "2 - denominator * inv"
                let expr_9352 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9348), expr_9351)

                /// @src 108:3864:3892  "inv *= 2 - denominator * inv"
                let _871 := var_inv_9323
                let expr_9353 := checked_mul_t_uint256(_871, expr_9352)

                var_inv_9323 := expr_9353
                /// @src 108:3930:3931  "2"
                let expr_9356 := 0x02
                /// @src 108:3934:3945  "denominator"
                let _872 := var_denominator_9267
                let expr_9357 := _872
                /// @src 108:3948:3951  "inv"
                let _873 := var_inv_9323
                let expr_9358 := _873
                /// @src 108:3934:3951  "denominator * inv"
                let expr_9359 := checked_mul_t_uint256(expr_9357, expr_9358)

                /// @src 108:3930:3951  "2 - denominator * inv"
                let expr_9360 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9356), expr_9359)

                /// @src 108:3923:3951  "inv *= 2 - denominator * inv"
                let _874 := var_inv_9323
                let expr_9361 := checked_mul_t_uint256(_874, expr_9360)

                var_inv_9323 := expr_9361
                /// @src 108:3989:3990  "2"
                let expr_9364 := 0x02
                /// @src 108:3993:4004  "denominator"
                let _875 := var_denominator_9267
                let expr_9365 := _875
                /// @src 108:4007:4010  "inv"
                let _876 := var_inv_9323
                let expr_9366 := _876
                /// @src 108:3993:4010  "denominator * inv"
                let expr_9367 := checked_mul_t_uint256(expr_9365, expr_9366)

                /// @src 108:3989:4010  "2 - denominator * inv"
                let expr_9368 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9364), expr_9367)

                /// @src 108:3982:4010  "inv *= 2 - denominator * inv"
                let _877 := var_inv_9323
                let expr_9369 := checked_mul_t_uint256(_877, expr_9368)

                var_inv_9323 := expr_9369
                /// @src 108:4049:4050  "2"
                let expr_9372 := 0x02
                /// @src 108:4053:4064  "denominator"
                let _878 := var_denominator_9267
                let expr_9373 := _878
                /// @src 108:4067:4070  "inv"
                let _879 := var_inv_9323
                let expr_9374 := _879
                /// @src 108:4053:4070  "denominator * inv"
                let expr_9375 := checked_mul_t_uint256(expr_9373, expr_9374)

                /// @src 108:4049:4070  "2 - denominator * inv"
                let expr_9376 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9372), expr_9375)

                /// @src 108:4042:4070  "inv *= 2 - denominator * inv"
                let _880 := var_inv_9323
                let expr_9377 := checked_mul_t_uint256(_880, expr_9376)

                var_inv_9323 := expr_9377
                /// @src 108:4517:4522  "prod0"
                let _881 := var_prod0_9273
                let expr_9380 := _881
                /// @src 108:4525:4528  "inv"
                let _882 := var_inv_9323
                let expr_9381 := _882
                /// @src 108:4517:4528  "prod0 * inv"
                let expr_9382 := checked_mul_t_uint256(expr_9380, expr_9381)

                /// @src 108:4508:4528  "result = prod0 * inv"
                var_result_9270 := expr_9382
                let expr_9383 := expr_9382
                /// @src 108:4545:4551  "result"
                let _883 := var_result_9270
                let expr_9385 := _883
                /// @src 108:4538:4551  "return result"
                var_result_9270 := expr_9385
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function zero_memory_chunk_t_bytes1(dataStart, dataSizeInBytes) {
                calldatacopy(dataStart, calldatasize(), dataSizeInBytes)
            }

            function allocate_and_zero_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_bytes_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_bytes_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_bytes1(dataStart, dataSize)
            }

            function store_literal_in_memory_48541fce89df928ec30caa1aed6c0cd94b8e2ef76b3c68b10b9a184ceadb93d4(memPtr) {

                mstore(add(memPtr, 0), "STE")

            }

            function abi_encode_t_stringliteral_48541fce89df928ec30caa1aed6c0cd94b8e2ef76b3c68b10b9a184ceadb93d4_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 3)
                store_literal_in_memory_48541fce89df928ec30caa1aed6c0cd94b8e2ef76b3c68b10b9a184ceadb93d4(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_48541fce89df928ec30caa1aed6c0cd94b8e2ef76b3c68b10b9a184ceadb93d4__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_48541fce89df928ec30caa1aed6c0cd94b8e2ef76b3c68b10b9a184ceadb93d4_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_48541fce89df928ec30caa1aed6c0cd94b8e2ef76b3c68b10b9a184ceadb93d4(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_48541fce89df928ec30caa1aed6c0cd94b8e2ef76b3c68b10b9a184ceadb93d4__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 35902
            /// @src 153:2407:2572  "function safeTransferETH(address to, uint256 value) internal {..."
            function fun_safeTransferETH_35902(var_to_35879, var_value_35881) {

                /// @src 153:2497:2499  "to"
                let _884 := var_to_35879
                let expr_35886 := _884
                /// @src 153:2497:2504  "to.call"
                let expr_35887_address := expr_35886
                /// @src 153:2512:2517  "value"
                let _885 := var_value_35881
                let expr_35888 := _885
                /// @src 153:2497:2518  "to.call{value: value}"
                let expr_35889_address := expr_35887_address
                let expr_35889_value := expr_35888
                /// @src 153:2529:2530  "0"
                let expr_35892 := 0x00
                /// @src 153:2519:2531  "new bytes(0)"
                let _886 := convert_t_rational_0_by_1_to_t_uint256(expr_35892)
                let expr_35893_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(_886)
                /// @src 153:2497:2532  "to.call{value: value}(new bytes(0))"

                let _887 := add(expr_35893_mpos, 0x20)
                let _888 := mload(expr_35893_mpos)

                let expr_35894_component_1 := call(gas(), expr_35889_address,  expr_35889_value,  _887, _888, 0, 0)

                let expr_35894_component_2_mpos := extract_returndata()
                /// @src 153:2478:2532  "(bool success, ) = to.call{value: value}(new bytes(0))"
                let var_success_35885 := expr_35894_component_1
                /// @src 153:2550:2557  "success"
                let _889 := var_success_35885
                let expr_35897 := _889
                /// @src 153:2542:2565  "require(success, 'STE')"
                require_helper_t_stringliteral_48541fce89df928ec30caa1aed6c0cd94b8e2ef76b3c68b10b9a184ceadb93d4(expr_35897)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function convert_t_struct$_Map_$34550_storage_to_t_struct$_Map_$34550_storage_ptr(value) -> converted {
                converted := value
            }

            /// @ast-id 34969
            /// @src 43:7849:7970  "function length(UintToAddressMap storage map) internal view returns (uint256) {..."
            function fun_length_34969(var_map_34958_slot) -> var__34961 {
                /// @src 43:7918:7925  "uint256"
                let zero_t_uint256_890 := zero_value_for_split_t_uint256()
                var__34961 := zero_t_uint256_890

                /// @src 43:7952:7955  "map"
                let _891_slot := var_map_34958_slot
                let expr_34964_slot := _891_slot
                /// @src 43:7952:7962  "map._inner"
                let _892 := add(expr_34964_slot, 0)
                let _893_slot := _892
                let expr_34965_slot := _893_slot
                /// @src 43:7944:7963  "_length(map._inner)"
                let _894_slot := convert_t_struct$_Map_$34550_storage_to_t_struct$_Map_$34550_storage_ptr(expr_34965_slot)
                let expr_34966 := fun__length_34729(_894_slot)
                /// @src 43:7937:7963  "return _length(map._inner)"
                var__34961 := expr_34966
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function allocate_memory_struct_t_struct$_MintCallbackData_$9666_storage_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function write_to_memory_t_struct$_PoolKey_$10271_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function abi_encode_t_address_to_t_address(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_t_uint24_to_t_uint24(value, pos) {
                mstore(pos, cleanup_t_uint24(value))
            }

            // struct PoolAddress.PoolKey -> struct PoolAddress.PoolKey
            function abi_encode_t_struct$_PoolKey_$10271_memory_ptr_to_t_struct$_PoolKey_$10271_memory_ptr(value, pos)  {
                let tail := add(pos, 0x60)

                {
                    // token0

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_address_to_t_address(memberValue0, add(pos, 0x00))
                }

                {
                    // token1

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_address_to_t_address(memberValue0, add(pos, 0x20))
                }

                {
                    // fee

                    let memberValue0 := mload(add(value, 0x40))
                    abi_encode_t_uint24_to_t_uint24(memberValue0, add(pos, 0x40))
                }

            }

            // struct LiquidityManagement.MintCallbackData -> struct LiquidityManagement.MintCallbackData
            function abi_encode_t_struct$_MintCallbackData_$9666_memory_ptr_to_t_struct$_MintCallbackData_$9666_memory_ptr_fromStack(value, pos)  {
                let tail := add(pos, 0x80)

                {
                    // poolKey

                    let memberValue0 := mload(add(value, 0x00))
                    abi_encode_t_struct$_PoolKey_$10271_memory_ptr_to_t_struct$_PoolKey_$10271_memory_ptr(memberValue0, add(pos, 0x00))
                }

                {
                    // payer

                    let memberValue0 := mload(add(value, 0x20))
                    abi_encode_t_address_to_t_address(memberValue0, add(pos, 0x60))
                }

            }

            function abi_encode_tuple_t_struct$_MintCallbackData_$9666_memory_ptr__to_t_struct$_MintCallbackData_$9666_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_struct$_MintCallbackData_$9666_memory_ptr_to_t_struct$_MintCallbackData_$9666_memory_ptr_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_address_t_int24_t_int24_t_uint128_t_bytes_memory_ptr__to_t_address_t_int24_t_int24_t_uint128_t_bytes_memory_ptr__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_int24_to_t_int24_fromStack(value1,  add(headStart, 32))

                abi_encode_t_int24_to_t_int24_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint128_to_t_uint128_fromStack(value3,  add(headStart, 96))

                mstore(add(headStart, 128), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value4,  tail)

            }

            /// @ast-id 9861
            /// @src 125:1776:3320  "function addLiquidity(AddLiquidityParams memory params)..."
            function fun_addLiquidity_9861(var_params_9751_mpos) -> var_liquidity_9754, var_amount0_9756, var_amount1_9758, var_pool_9761_address {
                /// @src 125:1879:1896  "uint128 liquidity"
                let zero_t_uint128_895 := zero_value_for_split_t_uint128()
                var_liquidity_9754 := zero_t_uint128_895
                /// @src 125:1910:1925  "uint256 amount0"
                let zero_t_uint256_896 := zero_value_for_split_t_uint256()
                var_amount0_9756 := zero_t_uint256_896
                /// @src 125:1939:1954  "uint256 amount1"
                let zero_t_uint256_897 := zero_value_for_split_t_uint256()
                var_amount1_9758 := zero_t_uint256_897
                /// @src 125:1968:1987  "IUniswapV3Pool pool"
                let zero_t_contract$_IUniswapV3Pool_$2481_898_address := zero_value_for_split_t_contract$_IUniswapV3Pool_$2481()
                var_pool_9761_address := zero_t_contract$_IUniswapV3Pool_$2481_898_address

                /// @src 125:2061:2072  "PoolAddress"
                let expr_9768_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/PoolAddress.sol:PoolAddress")
                /// @src 125:2084:2090  "params"
                let _899_mpos := var_params_9751_mpos
                let expr_9770_mpos := _899_mpos
                /// @src 125:2084:2097  "params.token0"
                let _900 := add(expr_9770_mpos, 0)
                let _901 := read_from_memoryt_address(_900)
                let expr_9771 := _901
                /// @src 125:2099:2105  "params"
                let _902_mpos := var_params_9751_mpos
                let expr_9772_mpos := _902_mpos
                /// @src 125:2099:2112  "params.token1"
                let _903 := add(expr_9772_mpos, 32)
                let _904 := read_from_memoryt_address(_903)
                let expr_9773 := _904
                /// @src 125:2114:2120  "params"
                let _905_mpos := var_params_9751_mpos
                let expr_9774_mpos := _905_mpos
                /// @src 125:2114:2124  "params.fee"
                let _906 := add(expr_9774_mpos, 64)
                let _907 := read_from_memoryt_uint24(_906)
                let expr_9775 := _907
                /// @src 125:2061:2125  "PoolAddress.getPoolKey(params.token0, params.token1, params.fee)"
                let expr_9776_mpos := fun_getPoolKey_10303(expr_9771, expr_9773, expr_9775)
                /// @src 125:2012:2125  "PoolAddress.PoolKey memory poolKey =..."
                let var_poolKey_9767_mpos := expr_9776_mpos
                /// @src 125:2379:2390  "PoolAddress"
                let expr_9780_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/PoolAddress.sol:PoolAddress")
                /// @src 125:2406:2413  "factory"
                let _908 := loadimmutable("9957")
                let expr_9782 := _908
                /// @src 125:2415:2422  "poolKey"
                let _909_mpos := var_poolKey_9767_mpos
                let expr_9783_mpos := _909_mpos
                /// @src 125:2379:2423  "PoolAddress.computeAddress(factory, poolKey)"
                let expr_9784 := fun_computeAddress_10354(expr_9782, expr_9783_mpos)
                /// @src 125:2364:2424  "IUniswapV3Pool(PoolAddress.computeAddress(factory, poolKey))"
                let expr_9785_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$2481(expr_9784)
                /// @src 125:2357:2424  "pool = IUniswapV3Pool(PoolAddress.computeAddress(factory, poolKey))"
                var_pool_9761_address := expr_9785_address
                let expr_9786_address := expr_9785_address
                /// @src 125:2526:2530  "pool"
                let _910_address := var_pool_9761_address
                let expr_9790_address := _910_address
                /// @src 125:2526:2536  "pool.slot0"
                let expr_9791_address := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_9790_address)
                let expr_9791_functionSelector := 0x3850c7bd
                /// @src 125:2526:2538  "pool.slot0()"

                // storage for arguments and returned data
                let _911 := allocate_unbounded()
                mstore(_911, shift_left_224(expr_9791_functionSelector))
                let _912 := abi_encode_tuple__to__fromStack(add(_911, 4) )

                let _913 := staticcall(gas(), expr_9791_address,  _911, sub(_912, _911), _911, 224)

                if iszero(_913) { revert_forward_1() }

                let expr_9792_component_1, expr_9792_component_2, expr_9792_component_3, expr_9792_component_4, expr_9792_component_5, expr_9792_component_6, expr_9792_component_7
                if _913 {

                    let _914 := 224

                    if gt(_914, returndatasize()) {
                        _914 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_911, _914)

                    // decode return parameters from external try-call into retVars
                    expr_9792_component_1, expr_9792_component_2, expr_9792_component_3, expr_9792_component_4, expr_9792_component_5, expr_9792_component_6, expr_9792_component_7 :=  abi_decode_tuple_t_uint160t_int24t_uint16t_uint16t_uint16t_uint8t_bool_fromMemory(_911, add(_911, _914))
                }
                /// @src 125:2489:2538  "(uint160 sqrtPriceX96, , , , , , ) = pool.slot0()"
                let var_sqrtPriceX96_9789 := expr_9792_component_1
                /// @src 125:2576:2584  "TickMath"
                let expr_9796_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                /// @src 125:2604:2610  "params"
                let _915_mpos := var_params_9751_mpos
                let expr_9798_mpos := _915_mpos
                /// @src 125:2604:2620  "params.tickLower"
                let _916 := add(expr_9798_mpos, 128)
                let _917 := read_from_memoryt_int24(_916)
                let expr_9799 := _917
                /// @src 125:2576:2621  "TickMath.getSqrtRatioAtTick(params.tickLower)"
                let expr_9800 := fun_getSqrtRatioAtTick_5493(expr_9799)
                /// @src 125:2552:2621  "uint160 sqrtRatioAX96 = TickMath.getSqrtRatioAtTick(params.tickLower)"
                let var_sqrtRatioAX96_9795 := expr_9800
                /// @src 125:2659:2667  "TickMath"
                let expr_9804_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                /// @src 125:2687:2693  "params"
                let _918_mpos := var_params_9751_mpos
                let expr_9806_mpos := _918_mpos
                /// @src 125:2687:2703  "params.tickUpper"
                let _919 := add(expr_9806_mpos, 160)
                let _920 := read_from_memoryt_int24(_919)
                let expr_9807 := _920
                /// @src 125:2659:2704  "TickMath.getSqrtRatioAtTick(params.tickUpper)"
                let expr_9808 := fun_getSqrtRatioAtTick_5493(expr_9807)
                /// @src 125:2635:2704  "uint160 sqrtRatioBX96 = TickMath.getSqrtRatioAtTick(params.tickUpper)"
                let var_sqrtRatioBX96_9803 := expr_9808
                /// @src 125:2731:2747  "LiquidityAmounts"
                let expr_9811_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/LiquidityAmounts.sol:LiquidityAmounts")
                /// @src 125:2788:2800  "sqrtPriceX96"
                let _921 := var_sqrtPriceX96_9789
                let expr_9813 := _921
                /// @src 125:2818:2831  "sqrtRatioAX96"
                let _922 := var_sqrtRatioAX96_9795
                let expr_9814 := _922
                /// @src 125:2849:2862  "sqrtRatioBX96"
                let _923 := var_sqrtRatioBX96_9803
                let expr_9815 := _923
                /// @src 125:2880:2886  "params"
                let _924_mpos := var_params_9751_mpos
                let expr_9816_mpos := _924_mpos
                /// @src 125:2880:2901  "params.amount0Desired"
                let _925 := add(expr_9816_mpos, 192)
                let _926 := read_from_memoryt_uint256(_925)
                let expr_9817 := _926
                /// @src 125:2919:2925  "params"
                let _927_mpos := var_params_9751_mpos
                let expr_9818_mpos := _927_mpos
                /// @src 125:2919:2940  "params.amount1Desired"
                let _928 := add(expr_9818_mpos, 224)
                let _929 := read_from_memoryt_uint256(_928)
                let expr_9819 := _929
                /// @src 125:2731:2954  "LiquidityAmounts.getLiquidityForAmounts(..."
                let expr_9820 := fun_getLiquidityForAmounts_24280(expr_9813, expr_9814, expr_9815, expr_9817, expr_9819)
                /// @src 125:2719:2954  "liquidity = LiquidityAmounts.getLiquidityForAmounts(..."
                var_liquidity_9754 := expr_9820
                let expr_9821 := expr_9820
                /// @src 125:2996:3000  "pool"
                let _930_address := var_pool_9761_address
                let expr_9827_address := _930_address
                /// @src 125:2996:3005  "pool.mint"
                let expr_9828_address := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_9827_address)
                let expr_9828_functionSelector := 0x3c8a7d8d
                /// @src 125:3019:3025  "params"
                let _931_mpos := var_params_9751_mpos
                let expr_9829_mpos := _931_mpos
                /// @src 125:3019:3035  "params.recipient"
                let _932 := add(expr_9829_mpos, 96)
                let _933 := read_from_memoryt_address(_932)
                let expr_9830 := _933
                /// @src 125:3049:3055  "params"
                let _934_mpos := var_params_9751_mpos
                let expr_9831_mpos := _934_mpos
                /// @src 125:3049:3065  "params.tickLower"
                let _935 := add(expr_9831_mpos, 128)
                let _936 := read_from_memoryt_int24(_935)
                let expr_9832 := _936
                /// @src 125:3079:3085  "params"
                let _937_mpos := var_params_9751_mpos
                let expr_9833_mpos := _937_mpos
                /// @src 125:3079:3095  "params.tickUpper"
                let _938 := add(expr_9833_mpos, 160)
                let _939 := read_from_memoryt_int24(_938)
                let expr_9834 := _939
                /// @src 125:3109:3118  "liquidity"
                let _940 := var_liquidity_9754
                let expr_9835 := _940
                /// @src 125:3170:3177  "poolKey"
                let _941_mpos := var_poolKey_9767_mpos
                let expr_9839_mpos := _941_mpos
                /// @src 125:3186:3196  "msg.sender"
                let expr_9841 := caller()
                /// @src 125:3143:3198  "MintCallbackData({poolKey: poolKey, payer: msg.sender})"
                let expr_9842_mpos := allocate_memory_struct_t_struct$_MintCallbackData_$9666_storage_ptr()
                write_to_memory_t_struct$_PoolKey_$10271_memory_ptr(add(expr_9842_mpos, 0), expr_9839_mpos)
                write_to_memory_t_address(add(expr_9842_mpos, 32), expr_9841)
                /// @src 125:3132:3199  "abi.encode(MintCallbackData({poolKey: poolKey, payer: msg.sender}))"

                let expr_9843_mpos := allocate_unbounded()
                let _942 := add(expr_9843_mpos, 0x20)

                let _943 := abi_encode_tuple_t_struct$_MintCallbackData_$9666_memory_ptr__to_t_struct$_MintCallbackData_$9666_memory_ptr__fromStack(_942, expr_9842_mpos)
                mstore(expr_9843_mpos, sub(_943, add(expr_9843_mpos, 0x20)))
                finalize_allocation(expr_9843_mpos, sub(_943, expr_9843_mpos))
                /// @src 125:2996:3209  "pool.mint(..."

                // storage for arguments and returned data
                let _944 := allocate_unbounded()
                mstore(_944, shift_left_224(expr_9828_functionSelector))
                let _945 := abi_encode_tuple_t_address_t_int24_t_int24_t_uint128_t_bytes_memory_ptr__to_t_address_t_int24_t_int24_t_uint128_t_bytes_memory_ptr__fromStack(add(_944, 4) , expr_9830, expr_9832, expr_9834, expr_9835, expr_9843_mpos)

                let _946 := call(gas(), expr_9828_address,  0,  _944, sub(_945, _944), _944, 64)

                if iszero(_946) { revert_forward_1() }

                let expr_9844_component_1, expr_9844_component_2
                if _946 {

                    let _947 := 64

                    if gt(_947, returndatasize()) {
                        _947 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_944, _947)

                    // decode return parameters from external try-call into retVars
                    expr_9844_component_1, expr_9844_component_2 :=  abi_decode_tuple_t_uint256t_uint256_fromMemory(_944, add(_944, _947))
                }
                /// @src 125:2975:3209  "(amount0, amount1) = pool.mint(..."
                var_amount1_9758 := expr_9844_component_2
                var_amount0_9756 := expr_9844_component_1
                /// @src 125:3228:3235  "amount0"
                let _948 := var_amount0_9756
                let expr_9848 := _948
                /// @src 125:3239:3245  "params"
                let _949_mpos := var_params_9751_mpos
                let expr_9849_mpos := _949_mpos
                /// @src 125:3239:3256  "params.amount0Min"
                let _950 := add(expr_9849_mpos, 256)
                let _951 := read_from_memoryt_uint256(_950)
                let expr_9850 := _951
                /// @src 125:3228:3256  "amount0 >= params.amount0Min"
                let expr_9851 := iszero(lt(cleanup_t_uint256(expr_9848), cleanup_t_uint256(expr_9850)))
                /// @src 125:3228:3288  "amount0 >= params.amount0Min && amount1 >= params.amount1Min"
                let expr_9856 := expr_9851
                if expr_9856 {
                    /// @src 125:3260:3267  "amount1"
                    let _952 := var_amount1_9758
                    let expr_9852 := _952
                    /// @src 125:3271:3277  "params"
                    let _953_mpos := var_params_9751_mpos
                    let expr_9853_mpos := _953_mpos
                    /// @src 125:3271:3288  "params.amount1Min"
                    let _954 := add(expr_9853_mpos, 288)
                    let _955 := read_from_memoryt_uint256(_954)
                    let expr_9854 := _955
                    /// @src 125:3260:3288  "amount1 >= params.amount1Min"
                    let expr_9855 := iszero(lt(cleanup_t_uint256(expr_9852), cleanup_t_uint256(expr_9854)))
                    /// @src 125:3228:3288  "amount0 >= params.amount0Min && amount1 >= params.amount1Min"
                    expr_9856 := expr_9855
                }
                /// @src 125:3220:3313  "require(amount0 >= params.amount0Min && amount1 >= params.amount1Min, 'Price slippage check')"
                require_helper_t_stringliteral_b3c36da41fc4c1f9bee348a3f96d2cd392cf705e6518e56365210c90cbd48f34(expr_9856)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function store_literal_in_memory_a01073130a885d6c1c1af6ac75fc3b1c4f9403c235362962bbf528e2bd87d950(memPtr) {

                mstore(add(memPtr, 0), "ERC721: transfer of token that i")

                mstore(add(memPtr, 32), "s not own")

            }

            function abi_encode_t_stringliteral_a01073130a885d6c1c1af6ac75fc3b1c4f9403c235362962bbf528e2bd87d950_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 41)
                store_literal_in_memory_a01073130a885d6c1c1af6ac75fc3b1c4f9403c235362962bbf528e2bd87d950(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_a01073130a885d6c1c1af6ac75fc3b1c4f9403c235362962bbf528e2bd87d950__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_a01073130a885d6c1c1af6ac75fc3b1c4f9403c235362962bbf528e2bd87d950_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_a01073130a885d6c1c1af6ac75fc3b1c4f9403c235362962bbf528e2bd87d950(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_a01073130a885d6c1c1af6ac75fc3b1c4f9403c235362962bbf528e2bd87d950__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_455fea98ea03c32d7dd1a6f1426917d80529bf47b3ccbde74e7206e889e709f4(memPtr) {

                mstore(add(memPtr, 0), "ERC721: transfer to the zero add")

                mstore(add(memPtr, 32), "ress")

            }

            function abi_encode_t_stringliteral_455fea98ea03c32d7dd1a6f1426917d80529bf47b3ccbde74e7206e889e709f4_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 36)
                store_literal_in_memory_455fea98ea03c32d7dd1a6f1426917d80529bf47b3ccbde74e7206e889e709f4(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_455fea98ea03c32d7dd1a6f1426917d80529bf47b3ccbde74e7206e889e709f4__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_455fea98ea03c32d7dd1a6f1426917d80529bf47b3ccbde74e7206e889e709f4_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_455fea98ea03c32d7dd1a6f1426917d80529bf47b3ccbde74e7206e889e709f4(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_455fea98ea03c32d7dd1a6f1426917d80529bf47b3ccbde74e7206e889e709f4__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 23364
            /// @src 36:13729:14313  "function _transfer(address from, address to, uint256 tokenId) internal virtual {..."
            function fun__transfer_23364(var_from_23295, var_to_23297, var_tokenId_23299) {

                /// @src 36:13841:13848  "tokenId"
                let _956 := var_tokenId_23299
                let expr_23305 := _956
                /// @src 36:13826:13849  "ERC721.ownerOf(tokenId)"
                let expr_23306 := fun_ownerOf_22695(expr_23305)
                /// @src 36:13853:13857  "from"
                let _957 := var_from_23295
                let expr_23307 := _957
                /// @src 36:13826:13857  "ERC721.ownerOf(tokenId) == from"
                let expr_23308 := eq(cleanup_t_address(expr_23306), cleanup_t_address(expr_23307))
                /// @src 36:13818:13903  "require(ERC721.ownerOf(tokenId) == from, \"ERC721: transfer of token that is not own\")"
                require_helper_t_stringliteral_a01073130a885d6c1c1af6ac75fc3b1c4f9403c235362962bbf528e2bd87d950(expr_23308)
                /// @src 36:13939:13941  "to"
                let _958 := var_to_23297
                let expr_23313 := _958
                /// @src 36:13953:13954  "0"
                let expr_23316 := 0x00
                /// @src 36:13945:13955  "address(0)"
                let expr_23317 := convert_t_rational_0_by_1_to_t_address(expr_23316)
                /// @src 36:13939:13955  "to != address(0)"
                let expr_23318 := iszero(eq(cleanup_t_address(expr_23313), cleanup_t_address(expr_23317)))
                /// @src 36:13931:13996  "require(to != address(0), \"ERC721: transfer to the zero address\")"
                require_helper_t_stringliteral_455fea98ea03c32d7dd1a6f1426917d80529bf47b3ccbde74e7206e889e709f4(expr_23318)
                /// @src 36:14028:14032  "from"
                let _959 := var_from_23295
                let expr_23323 := _959
                /// @src 36:14034:14036  "to"
                let _960 := var_to_23297
                let expr_23324 := _960
                /// @src 36:14038:14045  "tokenId"
                let _961 := var_tokenId_23299
                let expr_23325 := _961
                fun__beforeTokenTransfer_23490(expr_23323, expr_23324, expr_23325)
                /// @src 36:14125:14126  "0"
                let expr_23331 := 0x00
                /// @src 36:14117:14127  "address(0)"
                let expr_23332 := convert_t_rational_0_by_1_to_t_address(expr_23331)
                /// @src 36:14129:14136  "tokenId"
                let _962 := var_tokenId_23299
                let expr_23333 := _962
                fun__approve_3589(expr_23332, expr_23333)
                /// @src 36:14148:14161  "_holderTokens"
                let _963_slot := 0x01
                let expr_23336_slot := _963_slot
                /// @src 36:14162:14166  "from"
                let _964 := var_from_23295
                let expr_23337 := _964
                /// @src 36:14148:14167  "_holderTokens[from]"
                let _965 := mapping_index_access_t_mapping$_t_address_$_t_struct$_UintSet_$35528_storage_$_of_t_address(expr_23336_slot,expr_23337)
                let _966_slot := _965
                let expr_23338_slot := _966_slot
                /// @src 36:14148:14174  "_holderTokens[from].remove"
                let expr_23339_self_slot := convert_t_struct$_UintSet_$35528_storage_to_t_struct$_UintSet_$35528_storage_ptr(expr_23338_slot)
                /// @src 36:14175:14182  "tokenId"
                let _967 := var_tokenId_23299
                let expr_23340 := _967
                /// @src 36:14148:14183  "_holderTokens[from].remove(tokenId)"
                let expr_23341 := fun_remove_35570(expr_23339_self_slot, expr_23340)
                /// @src 36:14193:14206  "_holderTokens"
                let _968_slot := 0x01
                let expr_23343_slot := _968_slot
                /// @src 36:14207:14209  "to"
                let _969 := var_to_23297
                let expr_23344 := _969
                /// @src 36:14193:14210  "_holderTokens[to]"
                let _970 := mapping_index_access_t_mapping$_t_address_$_t_struct$_UintSet_$35528_storage_$_of_t_address(expr_23343_slot,expr_23344)
                let _971_slot := _970
                let expr_23345_slot := _971_slot
                /// @src 36:14193:14214  "_holderTokens[to].add"
                let expr_23346_self_slot := convert_t_struct$_UintSet_$35528_storage_to_t_struct$_UintSet_$35528_storage_ptr(expr_23345_slot)
                /// @src 36:14215:14222  "tokenId"
                let _972 := var_tokenId_23299
                let expr_23347 := _972
                /// @src 36:14193:14223  "_holderTokens[to].add(tokenId)"
                let expr_23348 := fun_add_35549(expr_23346_self_slot, expr_23347)
                /// @src 36:14234:14246  "_tokenOwners"
                let _973_slot := 0x02
                let expr_23350_slot := _973_slot
                /// @src 36:14234:14250  "_tokenOwners.set"
                let expr_23352_self_slot := convert_t_struct$_UintToAddressMap_$34879_storage_to_t_struct$_UintToAddressMap_$34879_storage_ptr(expr_23350_slot)
                /// @src 36:14251:14258  "tokenId"
                let _974 := var_tokenId_23299
                let expr_23353 := _974
                /// @src 36:14260:14262  "to"
                let _975 := var_to_23297
                let expr_23354 := _975
                /// @src 36:14234:14263  "_tokenOwners.set(tokenId, to)"
                let expr_23355 := fun_set_34912(expr_23352_self_slot, expr_23353, expr_23354)
                /// @src 36:14288:14292  "from"
                let _976 := var_from_23295
                let expr_23358 := _976
                /// @src 36:14294:14296  "to"
                let _977 := var_to_23297
                let expr_23359 := _977
                /// @src 36:14298:14305  "tokenId"
                let _978 := var_tokenId_23299
                let expr_23360 := _978
                /// @src 36:14279:14306  "Transfer(from, to, tokenId)"
                let _979 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _980 := convert_t_address_to_t_address(expr_23358)
                let _981 := convert_t_address_to_t_address(expr_23359)
                let _982 := convert_t_uint256_to_t_uint256(expr_23360)
                {
                    let _983 := allocate_unbounded()
                    let _984 := abi_encode_tuple__to__fromStack(_983 )
                    log4(_983, sub(_984, _983) , _979, _980, _981, _982)
                }
            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function convert_t_struct$_Set_$35124_storage_to_t_struct$_Set_$35124_storage_ptr(value) -> converted {
                converted := value
            }

            /// @ast-id 35627
            /// @src 44:9279:9414  "function at(UintSet storage set, uint256 index) internal view returns (uint256) {..."
            function fun_at_35627(var_set_35610_slot, var_index_35612) -> var__35615 {
                /// @src 44:9350:9357  "uint256"
                let zero_t_uint256_985 := zero_value_for_split_t_uint256()
                var__35615 := zero_t_uint256_985

                /// @src 44:9388:9391  "set"
                let _986_slot := var_set_35610_slot
                let expr_35620_slot := _986_slot
                /// @src 44:9388:9398  "set._inner"
                let _987 := add(expr_35620_slot, 0)
                let _988_slot := _987
                let expr_35621_slot := _988_slot
                /// @src 44:9400:9405  "index"
                let _989 := var_index_35612
                let expr_35622 := _989
                /// @src 44:9384:9406  "_at(set._inner, index)"
                let _990_slot := convert_t_struct$_Set_$35124_storage_to_t_struct$_Set_$35124_storage_ptr(expr_35621_slot)
                let expr_35623 := fun__at_35306(_990_slot, expr_35622)
                /// @src 44:9376:9407  "uint256(_at(set._inner, index))"
                let expr_35624 := convert_t_bytes32_to_t_uint256(expr_35623)
                /// @src 44:9369:9407  "return uint256(_at(set._inner, index))"
                var__35615 := expr_35624
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 10731
            /// @src 145:267:391  "function get() internal view returns (uint256 chainId) {..."
            function fun_get_10731() -> var_chainId_10727 {
                /// @src 145:305:320  "uint256 chainId"
                let zero_t_uint256_991 := zero_value_for_split_t_uint256()
                var_chainId_10727 := zero_t_uint256_991

                /// @src 145:332:385  "assembly {..."
                {
                    var_chainId_10727 := chainid()
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function mapping_index_access_t_mapping$_t_uint256_$_t_string_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function convert_array_t_string_storage_to_t_bytes_storage_ptr(value) -> converted  {
                converted := value

            }

            function array_length_t_bytes_storage_ptr(value) -> length {

                length := sload(value)

                length := extract_byte_array_length(length)

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function partial_clear_storage_slot(slot, offset) {
                let mask := shift_right_unsigned_dynamic(mul(8, sub(32, offset)), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                sstore(slot, and(mask, sload(slot)))
            }

            function clear_storage_range_t_bytes1(start, end) {
                for {} lt(start, end) { start := add(start, 1) }
                {
                    storage_set_to_zero_t_uint256(start, 0)
                }
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
            function transit_byte_array_long_to_short_t_string_storage(array, len) {
                // we need to copy elements from old array to new
                // we want to copy only elements that are part of the array after resizing
                let dataPos := array_dataslot_t_string_storage(array)
                let data := extract_used_part_and_set_length_of_short_byte_array(sload(dataPos), len)
                sstore(array, data)
                sstore(dataPos, 0)
            }
            function divide_by_32_ceil(value) -> result {
                result := div(add(value, 31), 32)
            }

            function byte_array_decrease_size_t_string_storage(array, data, oldLen, newLen) {
                switch lt(newLen, 32)
                case  0 {
                    let arrayDataStart := array_dataslot_t_string_storage(array)
                    let deleteStart := add(arrayDataStart, divide_by_32_ceil(newLen))

                    // we have to partially clear last slot that is still used
                    let offset := and(newLen, 0x1f)
                    if offset { partial_clear_storage_slot(sub(deleteStart, 1), offset) }

                    clear_storage_range_t_bytes1(deleteStart, add(arrayDataStart, divide_by_32_ceil(oldLen)))

                    sstore(array, or(mul(2, newLen), 1))
                }
                default {
                    switch gt(oldLen, 31)
                    case 1 {
                        let arrayDataStart := array_dataslot_t_string_storage(array)
                        // clear whole old array, as we are transforming to short bytes array
                        clear_storage_range_t_bytes1(add(arrayDataStart, 1), add(arrayDataStart, divide_by_32_ceil(oldLen)))
                        transit_byte_array_long_to_short_t_string_storage(array, newLen)
                    }
                    default {
                        sstore(array, extract_used_part_and_set_length_of_short_byte_array(data, newLen))
                    }
                }
            }
            function byte_array_increase_size_t_string_storage(array, data, oldLen, newLen) {

                if gt(newLen, 18446744073709551616) { panic_error_0x41() }

                switch lt(oldLen, 32)
                case 0 {
                    // in this case array stays unpacked, so we just set new length
                    sstore(array, add(mul(2, newLen), 1))
                }
                default {
                    switch lt(newLen, 32)
                    case 0 {
                        // we need to copy elements to data area as we changed array from packed to unpacked
                        data := and(not(0xff), data)
                        sstore(array_dataslot_t_string_storage(array), data)
                        sstore(array, add(mul(2, newLen), 1))
                    }
                    default {
                        // here array stays packed, we just need to increase length
                        sstore(array, extract_used_part_and_set_length_of_short_byte_array(data, newLen))
                    }
                }

            }

            function resize_array_t_string_storage(array, newLen) {

                let data := sload(array)
                let oldLen := extract_byte_array_length(data)

                if gt(newLen, oldLen) {
                    byte_array_increase_size_t_string_storage(array, data, oldLen, newLen)
                }

                if lt(newLen, oldLen) {
                    byte_array_decrease_size_t_string_storage(array, data, oldLen, newLen)
                }

            }

            function clear_storage_range_t_uint256(start, end) {
                for {} lt(start, end) { start := add(start, 1) }
                {
                    storage_set_to_zero_t_uint256(start, 0)
                }
            }

            function array_convert_length_to_size_t_string_storage(length) -> size {
                size := length

                // Number of slots rounded up
                size := div(add(length, sub(32, 1)), 32)

            }
            function clear_storage_array_t_string_storage(slot) {

                resize_array_t_string_storage(slot, 0)

            }

            function storage_set_to_zero_t_string_storage(slot, offset) {
                if iszero(eq(offset, 0)) { panic_error_0x00() }
                clear_storage_array_t_string_storage(slot)
            }

            /// @ast-id 23292
            /// @src 36:12878:13405  "function _burn(uint256 tokenId) internal virtual {..."
            function fun__burn_23292(var_tokenId_23226) {

                /// @src 36:12968:12975  "tokenId"
                let _992 := var_tokenId_23226
                let expr_23233 := _992
                /// @src 36:12953:12976  "ERC721.ownerOf(tokenId)"
                let expr_23234 := fun_ownerOf_22695(expr_23233)
                /// @src 36:12937:12976  "address owner = ERC721.ownerOf(tokenId)"
                let var_owner_23230 := expr_23234
                /// @src 36:13026:13031  "owner"
                let _993 := var_owner_23230
                let expr_23237 := _993
                /// @src 36:13041:13042  "0"
                let expr_23240 := 0x00
                /// @src 36:13033:13043  "address(0)"
                let expr_23241 := convert_t_rational_0_by_1_to_t_address(expr_23240)
                /// @src 36:13045:13052  "tokenId"
                let _994 := var_tokenId_23226
                let expr_23242 := _994
                fun__beforeTokenTransfer_23490(expr_23237, expr_23241, expr_23242)
                /// @src 36:13108:13109  "0"
                let expr_23248 := 0x00
                /// @src 36:13100:13110  "address(0)"
                let expr_23249 := convert_t_rational_0_by_1_to_t_address(expr_23248)
                /// @src 36:13112:13119  "tokenId"
                let _995 := var_tokenId_23226
                let expr_23250 := _995
                fun__approve_3589(expr_23249, expr_23250)
                /// @src 36:13176:13186  "_tokenURIs"
                let _996_slot := 0x08
                let expr_23255_slot := _996_slot
                /// @src 36:13187:13194  "tokenId"
                let _997 := var_tokenId_23226
                let expr_23256 := _997
                /// @src 36:13176:13195  "_tokenURIs[tokenId]"
                let _998 := mapping_index_access_t_mapping$_t_uint256_$_t_string_storage_$_of_t_uint256(expr_23255_slot,expr_23256)
                let _999_slot := _998
                let expr_23257_slot := _999_slot
                /// @src 36:13170:13196  "bytes(_tokenURIs[tokenId])"
                let expr_23258_slot := convert_array_t_string_storage_to_t_bytes_storage_ptr(expr_23257_slot)
                /// @src 36:13170:13203  "bytes(_tokenURIs[tokenId]).length"
                let expr_23259 := array_length_t_bytes_storage_ptr(expr_23258_slot)
                /// @src 36:13207:13208  "0"
                let expr_23260 := 0x00
                /// @src 36:13170:13208  "bytes(_tokenURIs[tokenId]).length != 0"
                let expr_23261 := iszero(eq(cleanup_t_uint256(expr_23259), convert_t_rational_0_by_1_to_t_uint256(expr_23260)))
                /// @src 36:13166:13261  "if (bytes(_tokenURIs[tokenId]).length != 0) {..."
                if expr_23261 {
                    /// @src 36:13231:13241  "_tokenURIs"
                    let _1000_slot := 0x08
                    let expr_23262_slot := _1000_slot
                    /// @src 36:13242:13249  "tokenId"
                    let _1001 := var_tokenId_23226
                    let expr_23263 := _1001
                    /// @src 36:13231:13250  "_tokenURIs[tokenId]"
                    let _1002 := mapping_index_access_t_mapping$_t_uint256_$_t_string_storage_$_of_t_uint256(expr_23262_slot,expr_23263)
                    /// @src 36:13224:13250  "delete _tokenURIs[tokenId]"
                    storage_set_to_zero_t_string_storage(_1002, 0)
                    /// @src 36:13166:13261  "if (bytes(_tokenURIs[tokenId]).length != 0) {..."
                }
                /// @src 36:13271:13284  "_holderTokens"
                let _1003_slot := 0x01
                let expr_23269_slot := _1003_slot
                /// @src 36:13285:13290  "owner"
                let _1004 := var_owner_23230
                let expr_23270 := _1004
                /// @src 36:13271:13291  "_holderTokens[owner]"
                let _1005 := mapping_index_access_t_mapping$_t_address_$_t_struct$_UintSet_$35528_storage_$_of_t_address(expr_23269_slot,expr_23270)
                let _1006_slot := _1005
                let expr_23271_slot := _1006_slot
                /// @src 36:13271:13298  "_holderTokens[owner].remove"
                let expr_23272_self_slot := convert_t_struct$_UintSet_$35528_storage_to_t_struct$_UintSet_$35528_storage_ptr(expr_23271_slot)
                /// @src 36:13299:13306  "tokenId"
                let _1007 := var_tokenId_23226
                let expr_23273 := _1007
                /// @src 36:13271:13307  "_holderTokens[owner].remove(tokenId)"
                let expr_23274 := fun_remove_35570(expr_23272_self_slot, expr_23273)
                /// @src 36:13318:13330  "_tokenOwners"
                let _1008_slot := 0x02
                let expr_23276_slot := _1008_slot
                /// @src 36:13318:13337  "_tokenOwners.remove"
                let expr_23278_self_slot := convert_t_struct$_UintToAddressMap_$34879_storage_to_t_struct$_UintToAddressMap_$34879_storage_ptr(expr_23276_slot)
                /// @src 36:13338:13345  "tokenId"
                let _1009 := var_tokenId_23226
                let expr_23279 := _1009
                /// @src 36:13318:13346  "_tokenOwners.remove(tokenId)"
                let expr_23280 := fun_remove_34933(expr_23278_self_slot, expr_23279)
                /// @src 36:13371:13376  "owner"
                let _1010 := var_owner_23230
                let expr_23283 := _1010
                /// @src 36:13386:13387  "0"
                let expr_23286 := 0x00
                /// @src 36:13378:13388  "address(0)"
                let expr_23287 := convert_t_rational_0_by_1_to_t_address(expr_23286)
                /// @src 36:13390:13397  "tokenId"
                let _1011 := var_tokenId_23226
                let expr_23288 := _1011
                /// @src 36:13362:13398  "Transfer(owner, address(0), tokenId)"
                let _1012 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _1013 := convert_t_address_to_t_address(expr_23283)
                let _1014 := convert_t_address_to_t_address(expr_23287)
                let _1015 := convert_t_uint256_to_t_uint256(expr_23288)
                {
                    let _1016 := allocate_unbounded()
                    let _1017 := abi_encode_tuple__to__fromStack(_1016 )
                    log4(_1016, sub(_1017, _1016) , _1012, _1013, _1014, _1015)
                }
            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 35009
            /// @src 43:8298:8531  "function at(UintToAddressMap storage map, uint256 index) internal view returns (uint256, address) {..."
            function fun_at_35009(var_map_34973_slot, var_index_34975) -> var__34978, var__34980 {
                /// @src 43:8378:8385  "uint256"
                let zero_t_uint256_1018 := zero_value_for_split_t_uint256()
                var__34978 := zero_t_uint256_1018
                /// @src 43:8387:8394  "address"
                let zero_t_address_1019 := zero_value_for_split_t_address()
                var__34980 := zero_t_address_1019

                /// @src 43:8441:8444  "map"
                let _1020_slot := var_map_34973_slot
                let expr_34987_slot := _1020_slot
                /// @src 43:8441:8451  "map._inner"
                let _1021 := add(expr_34987_slot, 0)
                let _1022_slot := _1021
                let expr_34988_slot := _1022_slot
                /// @src 43:8453:8458  "index"
                let _1023 := var_index_34975
                let expr_34989 := _1023
                /// @src 43:8437:8459  "_at(map._inner, index)"
                let _1024_slot := convert_t_struct$_Map_$34550_storage_to_t_struct$_Map_$34550_storage_ptr(expr_34988_slot)
                let expr_34990_component_1, expr_34990_component_2 := fun__at_34766(_1024_slot, expr_34989)
                /// @src 43:8406:8459  "(bytes32 key, bytes32 value) = _at(map._inner, index)"
                let var_key_34983 := expr_34990_component_1
                let var_value_34985 := expr_34990_component_2
                /// @src 43:8485:8488  "key"
                let _1025 := var_key_34983
                let expr_34994 := _1025
                /// @src 43:8477:8489  "uint256(key)"
                let expr_34995 := convert_t_bytes32_to_t_uint256(expr_34994)
                /// @src 43:8476:8524  "(uint256(key), address(uint160(uint256(value))))"
                let expr_35006_component_1 := expr_34995
                /// @src 43:8515:8520  "value"
                let _1026 := var_value_34985
                let expr_35002 := _1026
                /// @src 43:8507:8521  "uint256(value)"
                let expr_35003 := convert_t_bytes32_to_t_uint256(expr_35002)
                /// @src 43:8499:8522  "uint160(uint256(value))"
                let expr_35004 := convert_t_uint256_to_t_uint160(expr_35003)
                /// @src 43:8491:8523  "address(uint160(uint256(value)))"
                let expr_35005 := convert_t_uint160_to_t_address(expr_35004)
                /// @src 43:8476:8524  "(uint256(key), address(uint160(uint256(value))))"
                let expr_35006_component_2 := expr_35005
                /// @src 43:8469:8524  "return (uint256(key), address(uint160(uint256(value))))"
                var__34978 := expr_35006_component_1
                var__34980 := expr_35006_component_2
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function convert_t_uint256_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_uint256(value)))
            }

            /// @ast-id 35112
            /// @src 43:9551:9762  "function get(UintToAddressMap storage map, uint256 key, string memory errorMessage) internal view returns (address) {..."
            function fun_get_35112(var_map_35083_slot, var_key_35085, var_errorMessage_35087_mpos) -> var__35090 {
                /// @src 43:9658:9665  "address"
                let zero_t_address_1027 := zero_value_for_split_t_address()
                var__35090 := zero_t_address_1027

                /// @src 43:9713:9716  "map"
                let _1028_slot := var_map_35083_slot
                let expr_35099_slot := _1028_slot
                /// @src 43:9713:9723  "map._inner"
                let _1029 := add(expr_35099_slot, 0)
                let _1030_slot := _1029
                let expr_35100_slot := _1030_slot
                /// @src 43:9733:9736  "key"
                let _1031 := var_key_35085
                let expr_35103 := _1031
                /// @src 43:9725:9737  "bytes32(key)"
                let expr_35104 := convert_t_uint256_to_t_bytes32(expr_35103)
                /// @src 43:9739:9751  "errorMessage"
                let _1032_mpos := var_errorMessage_35087_mpos
                let expr_35105_mpos := _1032_mpos
                /// @src 43:9708:9752  "_get(map._inner, bytes32(key), errorMessage)"
                let _1033_slot := convert_t_struct$_Map_$34550_storage_to_t_struct$_Map_$34550_storage_ptr(expr_35100_slot)
                let expr_35106 := fun__get_34875(_1033_slot, expr_35104, expr_35105_mpos)
                /// @src 43:9700:9753  "uint256(_get(map._inner, bytes32(key), errorMessage))"
                let expr_35107 := convert_t_bytes32_to_t_uint256(expr_35106)
                /// @src 43:9692:9754  "uint160(uint256(_get(map._inner, bytes32(key), errorMessage)))"
                let expr_35108 := convert_t_uint256_to_t_uint160(expr_35107)
                /// @src 43:9684:9755  "address(uint160(uint256(_get(map._inner, bytes32(key), errorMessage))))"
                let expr_35109 := convert_t_uint160_to_t_address(expr_35108)
                /// @src 43:9677:9755  "return address(uint160(uint256(_get(map._inner, bytes32(key), errorMessage))))"
                var__35090 := expr_35109
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 35606
            /// @src 44:8835:8947  "function length(UintSet storage set) internal view returns (uint256) {..."
            function fun_length_35606(var_set_35595_slot) -> var__35598 {
                /// @src 44:8895:8902  "uint256"
                let zero_t_uint256_1034 := zero_value_for_split_t_uint256()
                var__35598 := zero_t_uint256_1034

                /// @src 44:8929:8932  "set"
                let _1035_slot := var_set_35595_slot
                let expr_35601_slot := _1035_slot
                /// @src 44:8929:8939  "set._inner"
                let _1036 := add(expr_35601_slot, 0)
                let _1037_slot := _1036
                let expr_35602_slot := _1037_slot
                /// @src 44:8921:8940  "_length(set._inner)"
                let _1038_slot := convert_t_struct$_Set_$35124_storage_to_t_struct$_Set_$35124_storage_ptr(expr_35602_slot)
                let expr_35603 := fun__length_35280(_1038_slot)
                /// @src 44:8914:8940  "return _length(set._inner)"
                var__35598 := expr_35603
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function increment_t_uint96(value) -> ret {
                value := cleanup_t_uint96(value)
                if eq(value, 0xffffffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            function convert_t_uint96_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint96(value)))
            }

            /// @ast-id 3539
            /// @src 121:14656:14800  "function _getAndIncrementNonce(uint256 tokenId) internal override returns (uint256) {..."
            function fun__getAndIncrementNonce_3539(var_tokenId_3523) -> var__3527 {
                /// @src 121:14731:14738  "uint256"
                let zero_t_uint256_1039 := zero_value_for_split_t_uint256()
                var__3527 := zero_t_uint256_1039

                /// @src 121:14765:14775  "_positions"
                let _1040_slot := 0x0c
                let expr_3531_slot := _1040_slot
                /// @src 121:14776:14783  "tokenId"
                let _1041 := var_tokenId_3523
                let expr_3532 := _1041
                /// @src 121:14765:14784  "_positions[tokenId]"
                let _1042 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Position_$2536_storage_$_of_t_uint256(expr_3531_slot,expr_3532)
                let _1043_slot := _1042
                let expr_3533_slot := _1043_slot
                /// @src 121:14765:14790  "_positions[tokenId].nonce"
                let _1044 := add(expr_3533_slot, 0)
                /// @src 121:14765:14792  "_positions[tokenId].nonce++"
                let _1046 := read_from_storage_split_offset_0_t_uint96(_1044)
                let _1045 := increment_t_uint96(_1046)
                update_storage_value_offset_0_t_uint96_to_t_uint96(_1044, _1045)
                let expr_3535 := _1046
                /// @src 121:14757:14793  "uint256(_positions[tokenId].nonce++)"
                let expr_3536 := convert_t_uint96_to_t_uint256(expr_3535)
                /// @src 121:14750:14793  "return uint256(_positions[tokenId].nonce++)"
                var__3527 := expr_3536
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 23511
            /// @src 41:755:1168  "function isContract(address account) internal view returns (bool) {..."
            function fun_isContract_23511(var_account_23497) -> var__23500 {
                /// @src 41:815:819  "bool"
                let zero_t_bool_1047 := zero_value_for_split_t_bool()
                var__23500 := zero_t_bool_1047

                /// @src 41:1018:1030  "uint256 size"
                let var_size_23503
                let zero_t_uint256_1048 := zero_value_for_split_t_uint256()
                var_size_23503 := zero_t_uint256_1048
                /// @src 41:1096:1137  "assembly { size := extcodesize(account) }"
                {
                    var_size_23503 := extcodesize(var_account_23497)
                }
                /// @src 41:1153:1157  "size"
                let _1049 := var_size_23503
                let expr_23506 := _1049
                /// @src 41:1160:1161  "0"
                let expr_23507 := 0x00
                /// @src 41:1153:1161  "size > 0"
                let expr_23508 := gt(cleanup_t_uint256(expr_23506), convert_t_rational_0_by_1_to_t_uint256(expr_23507))
                /// @src 41:1146:1161  "return size > 0"
                var__23500 := expr_23508
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function store_literal_in_memory_8a66f4bb6512ffbfcc3db9b42318eb65f26ac15163eaa9a1e5cfa7bee9d1c7c6(memPtr) {

                mstore(add(memPtr, 0), "ERC721: mint to the zero address")

            }

            function abi_encode_t_stringliteral_8a66f4bb6512ffbfcc3db9b42318eb65f26ac15163eaa9a1e5cfa7bee9d1c7c6_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 32)
                store_literal_in_memory_8a66f4bb6512ffbfcc3db9b42318eb65f26ac15163eaa9a1e5cfa7bee9d1c7c6(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_8a66f4bb6512ffbfcc3db9b42318eb65f26ac15163eaa9a1e5cfa7bee9d1c7c6__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_8a66f4bb6512ffbfcc3db9b42318eb65f26ac15163eaa9a1e5cfa7bee9d1c7c6_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_8a66f4bb6512ffbfcc3db9b42318eb65f26ac15163eaa9a1e5cfa7bee9d1c7c6(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_8a66f4bb6512ffbfcc3db9b42318eb65f26ac15163eaa9a1e5cfa7bee9d1c7c6__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_2a63ce106ef95058ed21fd07c42a10f11dc5c32ac13a4e847923f7759f635d57(memPtr) {

                mstore(add(memPtr, 0), "ERC721: token already minted")

            }

            function abi_encode_t_stringliteral_2a63ce106ef95058ed21fd07c42a10f11dc5c32ac13a4e847923f7759f635d57_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 28)
                store_literal_in_memory_2a63ce106ef95058ed21fd07c42a10f11dc5c32ac13a4e847923f7759f635d57(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_2a63ce106ef95058ed21fd07c42a10f11dc5c32ac13a4e847923f7759f635d57__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_2a63ce106ef95058ed21fd07c42a10f11dc5c32ac13a4e847923f7759f635d57_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_2a63ce106ef95058ed21fd07c42a10f11dc5c32ac13a4e847923f7759f635d57(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_2a63ce106ef95058ed21fd07c42a10f11dc5c32ac13a4e847923f7759f635d57__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 23223
            /// @src 36:12268:12661  "function _mint(address to, uint256 tokenId) internal virtual {..."
            function fun__mint_23223(var_to_23167, var_tokenId_23169) {

                /// @src 36:12347:12349  "to"
                let _1050 := var_to_23167
                let expr_23173 := _1050
                /// @src 36:12361:12362  "0"
                let expr_23176 := 0x00
                /// @src 36:12353:12363  "address(0)"
                let expr_23177 := convert_t_rational_0_by_1_to_t_address(expr_23176)
                /// @src 36:12347:12363  "to != address(0)"
                let expr_23178 := iszero(eq(cleanup_t_address(expr_23173), cleanup_t_address(expr_23177)))
                /// @src 36:12339:12400  "require(to != address(0), \"ERC721: mint to the zero address\")"
                require_helper_t_stringliteral_8a66f4bb6512ffbfcc3db9b42318eb65f26ac15163eaa9a1e5cfa7bee9d1c7c6(expr_23178)
                /// @src 36:12427:12434  "tokenId"
                let _1051 := var_tokenId_23169
                let expr_23184 := _1051
                /// @src 36:12419:12435  "_exists(tokenId)"
                let expr_23185 := fun__exists_23078(expr_23184)
                /// @src 36:12418:12435  "!_exists(tokenId)"
                let expr_23186 := cleanup_t_bool(iszero(expr_23185))
                /// @src 36:12410:12468  "require(!_exists(tokenId), \"ERC721: token already minted\")"
                require_helper_t_stringliteral_2a63ce106ef95058ed21fd07c42a10f11dc5c32ac13a4e847923f7759f635d57(expr_23186)
                /// @src 36:12508:12509  "0"
                let expr_23193 := 0x00
                /// @src 36:12500:12510  "address(0)"
                let expr_23194 := convert_t_rational_0_by_1_to_t_address(expr_23193)
                /// @src 36:12512:12514  "to"
                let _1052 := var_to_23167
                let expr_23195 := _1052
                /// @src 36:12516:12523  "tokenId"
                let _1053 := var_tokenId_23169
                let expr_23196 := _1053
                fun__beforeTokenTransfer_23490(expr_23194, expr_23195, expr_23196)
                /// @src 36:12535:12548  "_holderTokens"
                let _1054_slot := 0x01
                let expr_23199_slot := _1054_slot
                /// @src 36:12549:12551  "to"
                let _1055 := var_to_23167
                let expr_23200 := _1055
                /// @src 36:12535:12552  "_holderTokens[to]"
                let _1056 := mapping_index_access_t_mapping$_t_address_$_t_struct$_UintSet_$35528_storage_$_of_t_address(expr_23199_slot,expr_23200)
                let _1057_slot := _1056
                let expr_23201_slot := _1057_slot
                /// @src 36:12535:12556  "_holderTokens[to].add"
                let expr_23202_self_slot := convert_t_struct$_UintSet_$35528_storage_to_t_struct$_UintSet_$35528_storage_ptr(expr_23201_slot)
                /// @src 36:12557:12564  "tokenId"
                let _1058 := var_tokenId_23169
                let expr_23203 := _1058
                /// @src 36:12535:12565  "_holderTokens[to].add(tokenId)"
                let expr_23204 := fun_add_35549(expr_23202_self_slot, expr_23203)
                /// @src 36:12576:12588  "_tokenOwners"
                let _1059_slot := 0x02
                let expr_23206_slot := _1059_slot
                /// @src 36:12576:12592  "_tokenOwners.set"
                let expr_23208_self_slot := convert_t_struct$_UintToAddressMap_$34879_storage_to_t_struct$_UintToAddressMap_$34879_storage_ptr(expr_23206_slot)
                /// @src 36:12593:12600  "tokenId"
                let _1060 := var_tokenId_23169
                let expr_23209 := _1060
                /// @src 36:12602:12604  "to"
                let _1061 := var_to_23167
                let expr_23210 := _1061
                /// @src 36:12576:12605  "_tokenOwners.set(tokenId, to)"
                let expr_23211 := fun_set_34912(expr_23208_self_slot, expr_23209, expr_23210)
                /// @src 36:12638:12639  "0"
                let expr_23216 := 0x00
                /// @src 36:12630:12640  "address(0)"
                let expr_23217 := convert_t_rational_0_by_1_to_t_address(expr_23216)
                /// @src 36:12642:12644  "to"
                let _1062 := var_to_23167
                let expr_23218 := _1062
                /// @src 36:12646:12653  "tokenId"
                let _1063 := var_tokenId_23169
                let expr_23219 := _1063
                /// @src 36:12621:12654  "Transfer(address(0), to, tokenId)"
                let _1064 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                let _1065 := convert_t_address_to_t_address(expr_23217)
                let _1066 := convert_t_address_to_t_address(expr_23218)
                let _1067 := convert_t_uint256_to_t_uint256(expr_23219)
                {
                    let _1068 := allocate_unbounded()
                    let _1069 := abi_encode_tuple__to__fromStack(_1068 )
                    log4(_1068, sub(_1069, _1068) , _1064, _1065, _1066, _1067)
                }
            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function zero_value_for_t_address() -> ret {
                ret := 0
            }

            function zero_value_for_t_uint24() -> ret {
                ret := 0
            }

            function allocate_and_zero_memory_struct_t_struct$_PoolKey_$10271_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_PoolKey_$10271_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_address())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_address())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint24())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_PoolKey_$10271_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_PoolKey_$10271_memory_ptr()
            }

            function allocate_memory_struct_t_struct$_PoolKey_$10271_storage_ptr() -> memPtr {
                memPtr := allocate_memory(96)
            }

            /// @ast-id 10303
            /// @src 150:1113:1387  "function getPoolKey(..."
            function fun_getPoolKey_10303(var_tokenA_10274, var_tokenB_10276, var_fee_10278) -> var__10282_mpos {
                /// @src 150:1230:1244  "PoolKey memory"
                let zero_t_struct$_PoolKey_$10271_memory_ptr_1070_mpos := zero_value_for_split_t_struct$_PoolKey_$10271_memory_ptr()
                var__10282_mpos := zero_t_struct$_PoolKey_$10271_memory_ptr_1070_mpos

                /// @src 150:1260:1266  "tokenA"
                let _1071 := var_tokenA_10274
                let expr_10284 := _1071
                /// @src 150:1269:1275  "tokenB"
                let _1072 := var_tokenB_10276
                let expr_10285 := _1072
                /// @src 150:1260:1275  "tokenA > tokenB"
                let expr_10286 := gt(cleanup_t_address(expr_10284), cleanup_t_address(expr_10285))
                /// @src 150:1256:1312  "if (tokenA > tokenB) (tokenA, tokenB) = (tokenB, tokenA)"
                if expr_10286 {
                    /// @src 150:1297:1303  "tokenB"
                    let _1073 := var_tokenB_10276
                    let expr_10290 := _1073
                    /// @src 150:1296:1312  "(tokenB, tokenA)"
                    let expr_10292_component_1 := expr_10290
                    /// @src 150:1305:1311  "tokenA"
                    let _1074 := var_tokenA_10274
                    let expr_10291 := _1074
                    /// @src 150:1296:1312  "(tokenB, tokenA)"
                    let expr_10292_component_2 := expr_10291
                    /// @src 150:1277:1312  "(tokenA, tokenB) = (tokenB, tokenA)"
                    var_tokenB_10276 := expr_10292_component_2
                    var_tokenA_10274 := expr_10292_component_1
                    /// @src 150:1256:1312  "if (tokenA > tokenB) (tokenA, tokenB) = (tokenB, tokenA)"
                }
                /// @src 150:1346:1352  "tokenA"
                let _1075 := var_tokenA_10274
                let expr_10297 := _1075
                /// @src 150:1362:1368  "tokenB"
                let _1076 := var_tokenB_10276
                let expr_10298 := _1076
                /// @src 150:1375:1378  "fee"
                let _1077 := var_fee_10278
                let expr_10299 := _1077
                /// @src 150:1329:1380  "PoolKey({token0: tokenA, token1: tokenB, fee: fee})"
                let expr_10300_mpos := allocate_memory_struct_t_struct$_PoolKey_$10271_storage_ptr()
                write_to_memory_t_address(add(expr_10300_mpos, 0), expr_10297)
                write_to_memory_t_address(add(expr_10300_mpos, 32), expr_10298)
                write_to_memory_t_uint24(add(expr_10300_mpos, 64), expr_10299)
                /// @src 150:1322:1380  "return PoolKey({token0: tokenA, token1: tokenB, fee: fee})"
                var__10282_mpos := expr_10300_mpos
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function zero_value_for_split_t_uint80() -> ret {
                ret := 0
            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint80_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function shift_right_176_unsigned(value) -> newValue {
                newValue :=

                shr(176, value)

            }

            function extract_from_storage_value_offset_22_t_uint80(slot_value) -> value {
                value := cleanup_from_storage_t_uint80(shift_right_176_unsigned(slot_value))
            }

            function read_from_storage_split_offset_22_t_uint80(slot) -> value {
                value := extract_from_storage_value_offset_22_t_uint80(sload(slot))

            }

            function increment_t_uint80(value) -> ret {
                value := cleanup_t_uint80(value)
                if eq(value, 0xffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            function shift_left_176(value) -> newValue {
                newValue :=

                shl(176, value)

            }

            function update_byte_slice_10_shift_22(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffff00000000000000000000000000000000000000000000
                toInsert := shift_left_176(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_22_t_uint80_to_t_uint80(slot, value_0) {
                let convertedValue_0 := convert_t_uint80_to_t_uint80(value_0)
                sstore(slot, update_byte_slice_10_shift_22(sload(slot), prepare_store_t_uint80(convertedValue_0)))
            }

            function update_byte_slice_20_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_0_t_address_to_t_address(slot, value_0) {
                let convertedValue_0 := convert_t_address_to_t_address(value_0)
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(convertedValue_0)))
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

            function convert_t_uint24_to_t_uint24(value) -> converted {
                converted := cleanup_t_uint24(identity(cleanup_t_uint24(value)))
            }

            function prepare_store_t_uint24(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_20_t_uint24_to_t_uint24(slot, value_0) {
                let convertedValue_0 := convert_t_uint24_to_t_uint24(value_0)
                sstore(slot, update_byte_slice_3_shift_20(sload(slot), prepare_store_t_uint24(convertedValue_0)))
            }

            function copy_struct_to_storage_from_t_struct$_PoolKey_$10271_memory_ptr_to_t_struct$_PoolKey_$10271_storage(slot, value) {

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

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 64)

                    let memberValue_0 := read_from_memoryt_uint24(memberSrcPtr)

                    update_storage_value_offset_20_t_uint24_to_t_uint24(memberSlot, memberValue_0)

                }

            }

            function update_storage_value_offset_0_t_struct$_PoolKey_$10271_memory_ptr_to_t_struct$_PoolKey_$10271_storage(slot, value_0) {

                copy_struct_to_storage_from_t_struct$_PoolKey_$10271_memory_ptr_to_t_struct$_PoolKey_$10271_storage(slot, value_0)
            }

            /// @ast-id 2709
            /// @src 121:4101:4385  "function cachePoolKey(address pool, PoolAddress.PoolKey memory poolKey) private returns (uint80 poolId) {..."
            function fun_cachePoolKey_2709(var_pool_2673, var_poolKey_2676_mpos) -> var_poolId_2679 {
                /// @src 121:4190:4203  "uint80 poolId"
                let zero_t_uint80_1078 := zero_value_for_split_t_uint80()
                var_poolId_2679 := zero_t_uint80_1078

                /// @src 121:4224:4232  "_poolIds"
                let _1079_slot := 0x0a
                let expr_2682_slot := _1079_slot
                /// @src 121:4233:4237  "pool"
                let _1080 := var_pool_2673
                let expr_2683 := _1080
                /// @src 121:4224:4238  "_poolIds[pool]"
                let _1081 := mapping_index_access_t_mapping$_t_address_$_t_uint80_$_of_t_address(expr_2682_slot,expr_2683)
                let _1082 := read_from_storage_split_offset_0_t_uint80(_1081)
                let expr_2684 := _1082
                /// @src 121:4215:4238  "poolId = _poolIds[pool]"
                var_poolId_2679 := expr_2684
                let expr_2685 := expr_2684
                /// @src 121:4252:4258  "poolId"
                let _1083 := var_poolId_2679
                let expr_2687 := _1083
                /// @src 121:4262:4263  "0"
                let expr_2688 := 0x00
                /// @src 121:4252:4263  "poolId == 0"
                let expr_2689 := eq(cleanup_t_uint80(expr_2687), convert_t_rational_0_by_1_to_t_uint80(expr_2688))
                /// @src 121:4248:4379  "if (poolId == 0) {..."
                if expr_2689 {
                    /// @src 121:4306:4319  "_nextPoolId++"
                    let _1085 := read_from_storage_split_offset_22_t_uint80(0x0d)
                    let _1084 := increment_t_uint80(_1085)
                    update_storage_value_offset_22_t_uint80_to_t_uint80(0x0d, _1084)
                    let expr_2695 := _1085
                    /// @src 121:4297:4319  "poolId = _nextPoolId++"
                    var_poolId_2679 := expr_2695
                    let expr_2696 := expr_2695
                    /// @src 121:4296:4320  "(poolId = _nextPoolId++)"
                    let expr_2697 := expr_2696
                    /// @src 121:4279:4287  "_poolIds"
                    let _1086_slot := 0x0a
                    let expr_2690_slot := _1086_slot
                    /// @src 121:4288:4292  "pool"
                    let _1087 := var_pool_2673
                    let expr_2691 := _1087
                    /// @src 121:4279:4293  "_poolIds[pool]"
                    let _1088 := mapping_index_access_t_mapping$_t_address_$_t_uint80_$_of_t_address(expr_2690_slot,expr_2691)
                    /// @src 121:4279:4320  "_poolIds[pool] = (poolId = _nextPoolId++)"
                    update_storage_value_offset_0_t_uint80_to_t_uint80(_1088, expr_2697)
                    let expr_2698 := expr_2697
                    /// @src 121:4361:4368  "poolKey"
                    let _1089_mpos := var_poolKey_2676_mpos
                    let expr_2703_mpos := _1089_mpos
                    /// @src 121:4334:4350  "_poolIdToPoolKey"
                    let _1090_slot := 0x0b
                    let expr_2700_slot := _1090_slot
                    /// @src 121:4351:4357  "poolId"
                    let _1091 := var_poolId_2679
                    let expr_2701 := _1091
                    /// @src 121:4334:4358  "_poolIdToPoolKey[poolId]"
                    let _1092 := mapping_index_access_t_mapping$_t_uint80_$_t_struct$_PoolKey_$10271_storage_$_of_t_uint80(expr_2700_slot,expr_2701)
                    /// @src 121:4334:4368  "_poolIdToPoolKey[poolId] = poolKey"
                    update_storage_value_offset_0_t_struct$_PoolKey_$10271_memory_ptr_to_t_struct$_PoolKey_$10271_storage(_1092, expr_2703_mpos)
                    let _1093_slot := _1092
                    let expr_2704_slot := _1093_slot
                    /// @src 121:4248:4379  "if (poolId == 0) {..."
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function store_literal_in_memory_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e(memPtr) {

                mstore(add(memPtr, 0), "ERC721: transfer to non ERC721Re")

                mstore(add(memPtr, 32), "ceiver implementer")

            }

            function abi_encode_t_stringliteral_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 50)
                store_literal_in_memory_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 23064
            /// @src 36:9833:10102  "function _safeTransfer(address from, address to, uint256 tokenId, bytes memory _data) internal virtual {..."
            function fun__safeTransfer_23064(var_from_23038, var_to_23040, var_tokenId_23042, var__data_23044_mpos) {

                /// @src 36:9956:9960  "from"
                let _1094 := var_from_23038
                let expr_23048 := _1094
                /// @src 36:9962:9964  "to"
                let _1095 := var_to_23040
                let expr_23049 := _1095
                /// @src 36:9966:9973  "tokenId"
                let _1096 := var_tokenId_23042
                let expr_23050 := _1096
                fun__transfer_23364(expr_23048, expr_23049, expr_23050)
                /// @src 36:10015:10019  "from"
                let _1097 := var_from_23038
                let expr_23055 := _1097
                /// @src 36:10021:10023  "to"
                let _1098 := var_to_23040
                let expr_23056 := _1098
                /// @src 36:10025:10032  "tokenId"
                let _1099 := var_tokenId_23042
                let expr_23057 := _1099
                /// @src 36:10034:10039  "_data"
                let _1100_mpos := var__data_23044_mpos
                let expr_23058_mpos := _1100_mpos
                /// @src 36:9992:10040  "_checkOnERC721Received(from, to, tokenId, _data)"
                let expr_23059 := fun__checkOnERC721Received_23455(expr_23055, expr_23056, expr_23057, expr_23058_mpos)
                /// @src 36:9984:10095  "require(_checkOnERC721Received(from, to, tokenId, _data), \"ERC721: transfer to non ERC721Receiver implementer\")"
                require_helper_t_stringliteral_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e(expr_23059)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 24089
            /// @src 144:1226:1505  "function verifyCallback(address factory, PoolAddress.PoolKey memory poolKey)..."
            function fun_verifyCallback_24089(var_factory_24059, var_poolKey_24062_mpos) -> var_pool_24066_address {
                /// @src 144:1350:1369  "IUniswapV3Pool pool"
                let zero_t_contract$_IUniswapV3Pool_$2481_1101_address := zero_value_for_split_t_contract$_IUniswapV3Pool_$2481()
                var_pool_24066_address := zero_t_contract$_IUniswapV3Pool_$2481_1101_address

                /// @src 144:1407:1418  "PoolAddress"
                let expr_24070_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/PoolAddress.sol:PoolAddress")
                /// @src 144:1434:1441  "factory"
                let _1102 := var_factory_24059
                let expr_24072 := _1102
                /// @src 144:1443:1450  "poolKey"
                let _1103_mpos := var_poolKey_24062_mpos
                let expr_24073_mpos := _1103_mpos
                /// @src 144:1407:1451  "PoolAddress.computeAddress(factory, poolKey)"
                let expr_24074 := fun_computeAddress_10354(expr_24072, expr_24073_mpos)
                /// @src 144:1392:1452  "IUniswapV3Pool(PoolAddress.computeAddress(factory, poolKey))"
                let expr_24075_address := convert_t_address_to_t_contract$_IUniswapV3Pool_$2481(expr_24074)
                /// @src 144:1385:1452  "pool = IUniswapV3Pool(PoolAddress.computeAddress(factory, poolKey))"
                var_pool_24066_address := expr_24075_address
                let expr_24076_address := expr_24075_address
                /// @src 144:1470:1480  "msg.sender"
                let expr_24080 := caller()
                /// @src 144:1492:1496  "pool"
                let _1104_address := var_pool_24066_address
                let expr_24083_address := _1104_address
                /// @src 144:1484:1497  "address(pool)"
                let expr_24084 := convert_t_contract$_IUniswapV3Pool_$2481_to_t_address(expr_24083_address)
                /// @src 144:1470:1497  "msg.sender == address(pool)"
                let expr_24085 := eq(cleanup_t_address(expr_24080), cleanup_t_address(expr_24084))
                /// @src 144:1462:1498  "require(msg.sender == address(pool))"
                require_helper(expr_24085)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

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

            /// @ast-id 24024
            /// @src 128:1794:2493  "function pay(..."
            function fun_pay_24024(var_token_23959, var_payer_23961, var_recipient_23963, var_value_23965) {

                /// @src 128:1932:1937  "token"
                let _1105 := var_token_23959
                let expr_23968 := _1105
                /// @src 128:1941:1946  "WETH9"
                let _1106 := loadimmutable("9961")
                let expr_23969 := _1106
                /// @src 128:1932:1946  "token == WETH9"
                let expr_23970 := eq(cleanup_t_address(expr_23968), cleanup_t_address(expr_23969))
                /// @src 128:1932:1980  "token == WETH9 && address(this).balance >= value"
                let expr_23978 := expr_23970
                if expr_23978 {
                    /// @src 128:1958:1962  "this"
                    let expr_23973_address := address()
                    /// @src 128:1950:1963  "address(this)"
                    let expr_23974 := convert_t_contract$_PeripheryPayments_$24025_to_t_address(expr_23973_address)
                    /// @src 128:1950:1971  "address(this).balance"
                    let expr_23975 := balance(expr_23974)
                    /// @src 128:1975:1980  "value"
                    let _1107 := var_value_23965
                    let expr_23976 := _1107
                    /// @src 128:1950:1980  "address(this).balance >= value"
                    let expr_23977 := iszero(lt(cleanup_t_uint256(expr_23975), cleanup_t_uint256(expr_23976)))
                    /// @src 128:1932:1980  "token == WETH9 && address(this).balance >= value"
                    expr_23978 := expr_23977
                }
                /// @src 128:1928:2487  "if (token == WETH9 && address(this).balance >= value) {..."
                switch expr_23978
                case 0 {
                    /// @src 128:2173:2178  "payer"
                    let _1108 := var_payer_23961
                    let expr_23996 := _1108
                    /// @src 128:2190:2194  "this"
                    let expr_23999_address := address()
                    /// @src 128:2182:2195  "address(this)"
                    let expr_24000 := convert_t_contract$_PeripheryPayments_$24025_to_t_address(expr_23999_address)
                    /// @src 128:2173:2195  "payer == address(this)"
                    let expr_24001 := eq(cleanup_t_address(expr_23996), cleanup_t_address(expr_24000))
                    /// @src 128:2169:2487  "if (payer == address(this)) {..."
                    switch expr_24001
                    case 0 {
                        /// @src 128:2413:2427  "TransferHelper"
                        let expr_24011_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/TransferHelper.sol:TransferHelper")
                        /// @src 128:2445:2450  "token"
                        let _1109 := var_token_23959
                        let expr_24014 := _1109
                        /// @src 128:2452:2457  "payer"
                        let _1110 := var_payer_23961
                        let expr_24015 := _1110
                        /// @src 128:2459:2468  "recipient"
                        let _1111 := var_recipient_23963
                        let expr_24016 := _1111
                        /// @src 128:2470:2475  "value"
                        let _1112 := var_value_23965
                        let expr_24017 := _1112
                        fun_safeTransferFrom_35784(expr_24014, expr_24015, expr_24016, expr_24017)
                        /// @src 128:2169:2487  "if (payer == address(this)) {..."
                    }
                    default {
                        /// @src 128:2302:2316  "TransferHelper"
                        let expr_24002_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/TransferHelper.sol:TransferHelper")
                        /// @src 128:2330:2335  "token"
                        let _1113 := var_token_23959
                        let expr_24005 := _1113
                        /// @src 128:2337:2346  "recipient"
                        let _1114 := var_recipient_23963
                        let expr_24006 := _1114
                        /// @src 128:2348:2353  "value"
                        let _1115 := var_value_23965
                        let expr_24007 := _1115
                        fun_safeTransfer_35830(expr_24005, expr_24006, expr_24007)
                        /// @src 128:2169:2487  "if (payer == address(this)) {..."
                    }
                    /// @src 128:1928:2487  "if (token == WETH9 && address(this).balance >= value) {..."
                }
                default {
                    /// @src 128:2033:2038  "WETH9"
                    let _1116 := loadimmutable("9961")
                    let expr_23980 := _1116
                    /// @src 128:2026:2039  "IWETH9(WETH9)"
                    let expr_23981_address := convert_t_address_to_t_contract$_IWETH9_$35732(expr_23980)
                    /// @src 128:2026:2047  "IWETH9(WETH9).deposit"
                    let expr_23982_address := convert_t_contract$_IWETH9_$35732_to_t_address(expr_23981_address)
                    let expr_23982_functionSelector := 0xd0e30db0
                    /// @src 128:2055:2060  "value"
                    let _1117 := var_value_23965
                    let expr_23983 := _1117
                    /// @src 128:2026:2061  "IWETH9(WETH9).deposit{value: value}"
                    let expr_23984_address := expr_23982_address
                    let expr_23984_functionSelector := expr_23982_functionSelector
                    let expr_23984_value := expr_23983
                    /// @src 128:2026:2063  "IWETH9(WETH9).deposit{value: value}()"

                    if iszero(extcodesize(expr_23984_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                    // storage for arguments and returned data
                    let _1118 := allocate_unbounded()
                    mstore(_1118, shift_left_224(expr_23984_functionSelector))
                    let _1119 := abi_encode_tuple__to__fromStack(add(_1118, 4) )

                    let _1120 := call(gas(), expr_23984_address,  expr_23984_value,  _1118, sub(_1119, _1118), _1118, 0)

                    if iszero(_1120) { revert_forward_1() }

                    if _1120 {

                        let _1121 := 0

                        if gt(_1121, returndatasize()) {
                            _1121 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_1118, _1121)

                        // decode return parameters from external try-call into retVars
                        abi_decode_tuple__fromMemory(_1118, add(_1118, _1121))
                    }
                    /// @src 128:2119:2124  "WETH9"
                    let _1122 := loadimmutable("9961")
                    let expr_23988 := _1122
                    /// @src 128:2112:2125  "IWETH9(WETH9)"
                    let expr_23989_address := convert_t_address_to_t_contract$_IWETH9_$35732(expr_23988)
                    /// @src 128:2112:2134  "IWETH9(WETH9).transfer"
                    let expr_23990_address := convert_t_contract$_IWETH9_$35732_to_t_address(expr_23989_address)
                    let expr_23990_functionSelector := 0xa9059cbb
                    /// @src 128:2135:2144  "recipient"
                    let _1123 := var_recipient_23963
                    let expr_23991 := _1123
                    /// @src 128:2146:2151  "value"
                    let _1124 := var_value_23965
                    let expr_23992 := _1124
                    /// @src 128:2112:2152  "IWETH9(WETH9).transfer(recipient, value)"

                    // storage for arguments and returned data
                    let _1125 := allocate_unbounded()
                    mstore(_1125, shift_left_224(expr_23990_functionSelector))
                    let _1126 := abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(add(_1125, 4) , expr_23991, expr_23992)

                    let _1127 := call(gas(), expr_23990_address,  0,  _1125, sub(_1126, _1125), _1125, 32)

                    if iszero(_1127) { revert_forward_1() }

                    let expr_23993
                    if _1127 {

                        let _1128 := 32

                        if gt(_1128, returndatasize()) {
                            _1128 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_1125, _1128)

                        // decode return parameters from external try-call into retVars
                        expr_23993 :=  abi_decode_tuple_t_bool_fromMemory(_1125, add(_1125, _1128))
                    }
                    /// @src 128:1928:2487  "if (token == WETH9 && address(this).balance >= value) {..."
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function store_literal_in_memory_8e992d6a09e3feb7936717fa482f3a7086f18407e19b697f3153d17fd25870ca(memPtr) {

                mstore(add(memPtr, 0), "ST")

            }

            function abi_encode_t_stringliteral_8e992d6a09e3feb7936717fa482f3a7086f18407e19b697f3153d17fd25870ca_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 2)
                store_literal_in_memory_8e992d6a09e3feb7936717fa482f3a7086f18407e19b697f3153d17fd25870ca(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_8e992d6a09e3feb7936717fa482f3a7086f18407e19b697f3153d17fd25870ca__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_8e992d6a09e3feb7936717fa482f3a7086f18407e19b697f3153d17fd25870ca_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_8e992d6a09e3feb7936717fa482f3a7086f18407e19b697f3153d17fd25870ca(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_8e992d6a09e3feb7936717fa482f3a7086f18407e19b697f3153d17fd25870ca__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 35830
            /// @src 153:1248:1557  "function safeTransfer(..."
            function fun_safeTransfer_35830(var_token_35787, var_to_35789, var_value_35791) {

                /// @src 153:1397:1402  "token"
                let _1129 := var_token_35787
                let expr_35798 := _1129
                /// @src 153:1397:1407  "token.call"
                let expr_35799_address := expr_35798
                /// @src 153:1431:1455  "IERC20.transfer.selector"
                let expr_35804 := 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                /// @src 153:1457:1459  "to"
                let _1130 := var_to_35789
                let expr_35805 := _1130
                /// @src 153:1461:1466  "value"
                let _1131 := var_value_35791
                let expr_35806 := _1131
                /// @src 153:1408:1467  "abi.encodeWithSelector(IERC20.transfer.selector, to, value)"

                let expr_35807_mpos := allocate_unbounded()
                let _1132 := add(expr_35807_mpos, 0x20)

                mstore(_1132, expr_35804)
                _1132 := add(_1132, 4)

                let _1133 := abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(_1132, expr_35805, expr_35806)
                mstore(expr_35807_mpos, sub(_1133, add(expr_35807_mpos, 0x20)))
                finalize_allocation(expr_35807_mpos, sub(_1133, expr_35807_mpos))
                /// @src 153:1397:1468  "token.call(abi.encodeWithSelector(IERC20.transfer.selector, to, value))"

                let _1134 := add(expr_35807_mpos, 0x20)
                let _1135 := mload(expr_35807_mpos)

                let expr_35808_component_1 := call(gas(), expr_35799_address,  0,  _1134, _1135, 0, 0)

                let expr_35808_component_2_mpos := extract_returndata()
                /// @src 153:1361:1468  "(bool success, bytes memory data) = token.call(abi.encodeWithSelector(IERC20.transfer.selector, to, value))"
                let var_success_35795 := expr_35808_component_1
                let var_data_35797_mpos := expr_35808_component_2_mpos
                /// @src 153:1486:1493  "success"
                let _1136 := var_success_35795
                let expr_35811 := _1136
                /// @src 153:1486:1543  "success && (data.length == 0 || abi.decode(data, (bool)))"
                let expr_35825 := expr_35811
                if expr_35825 {
                    /// @src 153:1498:1502  "data"
                    let _1137_mpos := var_data_35797_mpos
                    let expr_35812_mpos := _1137_mpos
                    /// @src 153:1498:1509  "data.length"
                    let expr_35813 := array_length_t_bytes_memory_ptr(expr_35812_mpos)
                    /// @src 153:1513:1514  "0"
                    let expr_35814 := 0x00
                    /// @src 153:1498:1514  "data.length == 0"
                    let expr_35815 := eq(cleanup_t_uint256(expr_35813), convert_t_rational_0_by_1_to_t_uint256(expr_35814))
                    /// @src 153:1498:1542  "data.length == 0 || abi.decode(data, (bool))"
                    let expr_35823 := expr_35815
                    if iszero(expr_35823) {
                        /// @src 153:1529:1533  "data"
                        let _1138_mpos := var_data_35797_mpos
                        let expr_35818_mpos := _1138_mpos
                        /// @src 153:1518:1542  "abi.decode(data, (bool))"

                        let expr_35822 :=  abi_decode_tuple_t_bool_fromMemory(add(expr_35818_mpos, 32), add(add(expr_35818_mpos, 32), array_length_t_bytes_memory_ptr(expr_35818_mpos)))
                        /// @src 153:1498:1542  "data.length == 0 || abi.decode(data, (bool))"
                        expr_35823 := expr_35822
                    }
                    /// @src 153:1497:1543  "(data.length == 0 || abi.decode(data, (bool)))"
                    let expr_35824 := expr_35823
                    /// @src 153:1486:1543  "success && (data.length == 0 || abi.decode(data, (bool)))"
                    expr_35825 := expr_35824
                }
                /// @src 153:1478:1550  "require(success && (data.length == 0 || abi.decode(data, (bool))), 'ST')"
                require_helper_t_stringliteral_8e992d6a09e3feb7936717fa482f3a7086f18407e19b697f3153d17fd25870ca(expr_35825)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 34954
            /// @src 43:7617:7766  "function contains(UintToAddressMap storage map, uint256 key) internal view returns (bool) {..."
            function fun_contains_34954(var_map_34937_slot, var_key_34939) -> var__34942 {
                /// @src 43:7701:7705  "bool"
                let zero_t_bool_1139 := zero_value_for_split_t_bool()
                var__34942 := zero_t_bool_1139

                /// @src 43:7734:7737  "map"
                let _1140_slot := var_map_34937_slot
                let expr_34945_slot := _1140_slot
                /// @src 43:7734:7744  "map._inner"
                let _1141 := add(expr_34945_slot, 0)
                let _1142_slot := _1141
                let expr_34946_slot := _1142_slot
                /// @src 43:7754:7757  "key"
                let _1143 := var_key_34939
                let expr_34949 := _1143
                /// @src 43:7746:7758  "bytes32(key)"
                let expr_34950 := convert_t_uint256_to_t_bytes32(expr_34949)
                /// @src 43:7724:7759  "_contains(map._inner, bytes32(key))"
                let _1144_slot := convert_t_struct$_Map_$34550_storage_to_t_struct$_Map_$34550_storage_ptr(expr_34946_slot)
                let expr_34951 := fun__contains_34715(_1144_slot, expr_34950)
                /// @src 43:7717:7759  "return _contains(map._inner, bytes32(key))"
                var__34942 := expr_34951
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function array_length_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(value) -> length {

                length := sload(value)

            }

            /// @ast-id 34729
            /// @src 43:4520:4628  "function _length(Map storage map) private view returns (uint256) {..."
            function fun__length_34729(var_map_34719_slot) -> var__34722 {
                /// @src 43:4576:4583  "uint256"
                let zero_t_uint256_1145 := zero_value_for_split_t_uint256()
                var__34722 := zero_t_uint256_1145

                /// @src 43:4602:4605  "map"
                let _1146_slot := var_map_34719_slot
                let expr_34724_slot := _1146_slot
                /// @src 43:4602:4614  "map._entries"
                let _1147 := add(expr_34724_slot, 0)
                let _1148_slot := _1147
                let expr_34725_slot := _1148_slot
                /// @src 43:4602:4621  "map._entries.length"
                let expr_34726 := array_length_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(expr_34725_slot)
                /// @src 43:4595:4621  "return map._entries.length"
                var__34722 := expr_34726
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function zero_value_for_split_t_uint160() -> ret {
                ret := 0
            }

            function convert_t_rational_0_by_1_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_rational_0_by_1(value)))
            }

            function cleanup_t_int256(value) -> cleaned {
                cleaned := value
            }

            function convert_t_int24_to_t_int256(value) -> converted {
                converted := cleanup_t_int256(identity(cleanup_t_int24(value)))
            }

            function convert_t_int256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_int256(value)))
            }

            function negate_t_int256(value) -> ret {
                value := cleanup_t_int256(value)
                if eq(value, 0x8000000000000000000000000000000000000000000000000000000000000000) { panic_error_0x11() }
                ret := sub(0, value)
            }

            function cleanup_t_rational_minus_887272_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_minus_887272_by_1_to_t_int24(value) -> converted {
                converted := cleanup_t_int24(identity(cleanup_t_rational_minus_887272_by_1(value)))
            }

            /// @src 118:479:521  "int24 internal constant MIN_TICK = -887272"
            function constant_MIN_TICK_5103() -> ret {
                /// @src 118:514:521  "-887272"
                let expr_5102 := 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffff27618
                let _1154 := convert_t_rational_minus_887272_by_1_to_t_int24(expr_5102)

                ret := _1154
            }

            function negate_t_int24(value) -> ret {
                value := cleanup_t_int24(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff800000) { panic_error_0x11() }
                ret := sub(0, value)
            }

            /// @src 118:639:683  "int24 internal constant MAX_TICK = -MIN_TICK"
            function constant_MAX_TICK_5108() -> ret {
                /// @src 118:675:683  "MIN_TICK"
                let expr_5106 := constant_MIN_TICK_5103()
                /// @src 118:674:683  "-MIN_TICK"
                let expr_5107 := negate_t_int24(expr_5106)
                let _1155 := expr_5107

                ret := _1155
            }

            function store_literal_in_memory_846b7b6deb1cfa110d0ea7ec6162a7123b761785528db70cceed5143183b11fc(memPtr) {

                mstore(add(memPtr, 0), "T")

            }

            function abi_encode_t_stringliteral_846b7b6deb1cfa110d0ea7ec6162a7123b761785528db70cceed5143183b11fc_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 1)
                store_literal_in_memory_846b7b6deb1cfa110d0ea7ec6162a7123b761785528db70cceed5143183b11fc(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_846b7b6deb1cfa110d0ea7ec6162a7123b761785528db70cceed5143183b11fc__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_846b7b6deb1cfa110d0ea7ec6162a7123b761785528db70cceed5143183b11fc_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_846b7b6deb1cfa110d0ea7ec6162a7123b761785528db70cceed5143183b11fc(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_846b7b6deb1cfa110d0ea7ec6162a7123b761785528db70cceed5143183b11fc__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
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

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            /// @ast-id 5493
            /// @src 118:1392:3980  "function getSqrtRatioAtTick(int24 tick) internal pure returns (uint160 sqrtPriceX96) {..."
            function fun_getSqrtRatioAtTick_5493(var_tick_5119) -> var_sqrtPriceX96_5122 {
                /// @src 118:1455:1475  "uint160 sqrtPriceX96"
                let zero_t_uint160_1149 := zero_value_for_split_t_uint160()
                var_sqrtPriceX96_5122 := zero_t_uint160_1149

                /// @src 118:1505:1509  "tick"
                let _1150 := var_tick_5119
                let expr_5126 := _1150
                /// @src 118:1512:1513  "0"
                let expr_5127 := 0x00
                /// @src 118:1505:1513  "tick < 0"
                let expr_5128 := slt(cleanup_t_int24(expr_5126), convert_t_rational_0_by_1_to_t_int24(expr_5127))
                /// @src 118:1505:1562  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                let expr_5144
                switch expr_5128
                case 0 {
                    /// @src 118:1556:1560  "tick"
                    let _1151 := var_tick_5119
                    let expr_5141 := _1151
                    /// @src 118:1549:1561  "int256(tick)"
                    let expr_5142 := convert_t_int24_to_t_int256(expr_5141)
                    /// @src 118:1541:1562  "uint256(int256(tick))"
                    let expr_5143 := convert_t_int256_to_t_uint256(expr_5142)
                    /// @src 118:1505:1562  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                    expr_5144 := expr_5143
                }
                default {
                    /// @src 118:1532:1536  "tick"
                    let _1152 := var_tick_5119
                    let expr_5133 := _1152
                    /// @src 118:1525:1537  "int256(tick)"
                    let expr_5134 := convert_t_int24_to_t_int256(expr_5133)
                    /// @src 118:1524:1537  "-int256(tick)"
                    let expr_5135 := negate_t_int256(expr_5134)
                    /// @src 118:1516:1538  "uint256(-int256(tick))"
                    let expr_5136 := convert_t_int256_to_t_uint256(expr_5135)
                    /// @src 118:1505:1562  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                    expr_5144 := expr_5136
                }
                /// @src 118:1487:1562  "uint256 absTick = tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                let var_absTick_5125 := expr_5144
                /// @src 118:1580:1587  "absTick"
                let _1153 := var_absTick_5125
                let expr_5147 := _1153
                /// @src 118:1606:1614  "MAX_TICK"
                let expr_5152 := constant_MAX_TICK_5108()
                /// @src 118:1599:1615  "int256(MAX_TICK)"
                let expr_5153 := convert_t_int24_to_t_int256(expr_5152)
                /// @src 118:1591:1616  "uint256(int256(MAX_TICK))"
                let expr_5154 := convert_t_int256_to_t_uint256(expr_5153)
                /// @src 118:1580:1616  "absTick <= uint256(int256(MAX_TICK))"
                let expr_5155 := iszero(gt(cleanup_t_uint256(expr_5147), cleanup_t_uint256(expr_5154)))
                /// @src 118:1572:1622  "require(absTick <= uint256(int256(MAX_TICK)), 'T')"
                require_helper_t_stringliteral_846b7b6deb1cfa110d0ea7ec6162a7123b761785528db70cceed5143183b11fc(expr_5155)
                /// @src 118:1649:1656  "absTick"
                let _1156 := var_absTick_5125
                let expr_5161 := _1156
                /// @src 118:1659:1662  "0x1"
                let expr_5162 := 0x01
                /// @src 118:1649:1662  "absTick & 0x1"
                let expr_5163 := and(expr_5161, convert_t_rational_1_by_1_to_t_uint256(expr_5162))

                /// @src 118:1666:1667  "0"
                let expr_5164 := 0x00
                /// @src 118:1649:1667  "absTick & 0x1 != 0"
                let expr_5165 := iszero(eq(cleanup_t_uint256(expr_5163), convert_t_rational_0_by_1_to_t_uint256(expr_5164)))
                /// @src 118:1649:1742  "absTick & 0x1 != 0 ? 0xfffcb933bd6fad37aa2d162d1a594001 : 0x100000000000000000000000000000000"
                let expr_5168
                switch expr_5165
                case 0 {
                    /// @src 118:1707:1742  "0x100000000000000000000000000000000"
                    let expr_5167 := 0x0100000000000000000000000000000000
                    /// @src 118:1649:1742  "absTick & 0x1 != 0 ? 0xfffcb933bd6fad37aa2d162d1a594001 : 0x100000000000000000000000000000000"
                    expr_5168 := convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint136(expr_5167)
                }
                default {
                    /// @src 118:1670:1704  "0xfffcb933bd6fad37aa2d162d1a594001"
                    let expr_5166 := 0xfffcb933bd6fad37aa2d162d1a594001
                    /// @src 118:1649:1742  "absTick & 0x1 != 0 ? 0xfffcb933bd6fad37aa2d162d1a594001 : 0x100000000000000000000000000000000"
                    expr_5168 := convert_t_rational_340265354078544963557816517032075149313_by_1_to_t_uint136(expr_5166)
                }
                /// @src 118:1633:1742  "uint256 ratio = absTick & 0x1 != 0 ? 0xfffcb933bd6fad37aa2d162d1a594001 : 0x100000000000000000000000000000000"
                let var_ratio_5160 := convert_t_uint136_to_t_uint256(expr_5168)
                /// @src 118:1756:1763  "absTick"
                let _1157 := var_absTick_5125
                let expr_5170 := _1157
                /// @src 118:1766:1769  "0x2"
                let expr_5171 := 0x02
                /// @src 118:1756:1769  "absTick & 0x2"
                let expr_5172 := and(expr_5170, convert_t_rational_2_by_1_to_t_uint256(expr_5171))

                /// @src 118:1773:1774  "0"
                let expr_5173 := 0x00
                /// @src 118:1756:1774  "absTick & 0x2 != 0"
                let expr_5174 := iszero(eq(cleanup_t_uint256(expr_5172), convert_t_rational_0_by_1_to_t_uint256(expr_5173)))
                /// @src 118:1752:1835  "if (absTick & 0x2 != 0) ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                if expr_5174 {
                    /// @src 118:1785:1790  "ratio"
                    let _1158 := var_ratio_5160
                    let expr_5176 := _1158
                    /// @src 118:1793:1827  "0xfff97272373d413259a46990580e213a"
                    let expr_5177 := 0xfff97272373d413259a46990580e213a
                    /// @src 118:1785:1827  "ratio * 0xfff97272373d413259a46990580e213a"
                    let expr_5178 := checked_mul_t_uint256(expr_5176, convert_t_rational_340248342086729790484326174814286782778_by_1_to_t_uint256(expr_5177))

                    /// @src 118:1784:1828  "(ratio * 0xfff97272373d413259a46990580e213a)"
                    let expr_5179 := expr_5178
                    /// @src 118:1832:1835  "128"
                    let expr_5180 := 0x80
                    /// @src 118:1784:1835  "(ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                    let _1159 := convert_t_rational_128_by_1_to_t_uint8(expr_5180)
                    let expr_5181 :=
                    shift_right_t_uint256_t_uint8(expr_5179, _1159)

                    /// @src 118:1776:1835  "ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                    var_ratio_5160 := expr_5181
                    let expr_5182 := expr_5181
                    /// @src 118:1752:1835  "if (absTick & 0x2 != 0) ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                }
                /// @src 118:1849:1856  "absTick"
                let _1160 := var_absTick_5125
                let expr_5185 := _1160
                /// @src 118:1859:1862  "0x4"
                let expr_5186 := 0x04
                /// @src 118:1849:1862  "absTick & 0x4"
                let expr_5187 := and(expr_5185, convert_t_rational_4_by_1_to_t_uint256(expr_5186))

                /// @src 118:1866:1867  "0"
                let expr_5188 := 0x00
                /// @src 118:1849:1867  "absTick & 0x4 != 0"
                let expr_5189 := iszero(eq(cleanup_t_uint256(expr_5187), convert_t_rational_0_by_1_to_t_uint256(expr_5188)))
                /// @src 118:1845:1928  "if (absTick & 0x4 != 0) ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                if expr_5189 {
                    /// @src 118:1878:1883  "ratio"
                    let _1161 := var_ratio_5160
                    let expr_5191 := _1161
                    /// @src 118:1886:1920  "0xfff2e50f5f656932ef12357cf3c7fdcc"
                    let expr_5192 := 0xfff2e50f5f656932ef12357cf3c7fdcc
                    /// @src 118:1878:1920  "ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc"
                    let expr_5193 := checked_mul_t_uint256(expr_5191, convert_t_rational_340214320654664324051920982716015181260_by_1_to_t_uint256(expr_5192))

                    /// @src 118:1877:1921  "(ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc)"
                    let expr_5194 := expr_5193
                    /// @src 118:1925:1928  "128"
                    let expr_5195 := 0x80
                    /// @src 118:1877:1928  "(ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                    let _1162 := convert_t_rational_128_by_1_to_t_uint8(expr_5195)
                    let expr_5196 :=
                    shift_right_t_uint256_t_uint8(expr_5194, _1162)

                    /// @src 118:1869:1928  "ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                    var_ratio_5160 := expr_5196
                    let expr_5197 := expr_5196
                    /// @src 118:1845:1928  "if (absTick & 0x4 != 0) ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                }
                /// @src 118:1942:1949  "absTick"
                let _1163 := var_absTick_5125
                let expr_5200 := _1163
                /// @src 118:1952:1955  "0x8"
                let expr_5201 := 0x08
                /// @src 118:1942:1955  "absTick & 0x8"
                let expr_5202 := and(expr_5200, convert_t_rational_8_by_1_to_t_uint256(expr_5201))

                /// @src 118:1959:1960  "0"
                let expr_5203 := 0x00
                /// @src 118:1942:1960  "absTick & 0x8 != 0"
                let expr_5204 := iszero(eq(cleanup_t_uint256(expr_5202), convert_t_rational_0_by_1_to_t_uint256(expr_5203)))
                /// @src 118:1938:2021  "if (absTick & 0x8 != 0) ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                if expr_5204 {
                    /// @src 118:1971:1976  "ratio"
                    let _1164 := var_ratio_5160
                    let expr_5206 := _1164
                    /// @src 118:1979:2013  "0xffe5caca7e10e4e61c3624eaa0941cd0"
                    let expr_5207 := 0xffe5caca7e10e4e61c3624eaa0941cd0
                    /// @src 118:1971:2013  "ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0"
                    let expr_5208 := checked_mul_t_uint256(expr_5206, convert_t_rational_340146287995602323631171512101879684304_by_1_to_t_uint256(expr_5207))

                    /// @src 118:1970:2014  "(ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0)"
                    let expr_5209 := expr_5208
                    /// @src 118:2018:2021  "128"
                    let expr_5210 := 0x80
                    /// @src 118:1970:2021  "(ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                    let _1165 := convert_t_rational_128_by_1_to_t_uint8(expr_5210)
                    let expr_5211 :=
                    shift_right_t_uint256_t_uint8(expr_5209, _1165)

                    /// @src 118:1962:2021  "ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                    var_ratio_5160 := expr_5211
                    let expr_5212 := expr_5211
                    /// @src 118:1938:2021  "if (absTick & 0x8 != 0) ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                }
                /// @src 118:2035:2042  "absTick"
                let _1166 := var_absTick_5125
                let expr_5215 := _1166
                /// @src 118:2045:2049  "0x10"
                let expr_5216 := 0x10
                /// @src 118:2035:2049  "absTick & 0x10"
                let expr_5217 := and(expr_5215, convert_t_rational_16_by_1_to_t_uint256(expr_5216))

                /// @src 118:2053:2054  "0"
                let expr_5218 := 0x00
                /// @src 118:2035:2054  "absTick & 0x10 != 0"
                let expr_5219 := iszero(eq(cleanup_t_uint256(expr_5217), convert_t_rational_0_by_1_to_t_uint256(expr_5218)))
                /// @src 118:2031:2115  "if (absTick & 0x10 != 0) ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                if expr_5219 {
                    /// @src 118:2065:2070  "ratio"
                    let _1167 := var_ratio_5160
                    let expr_5221 := _1167
                    /// @src 118:2073:2107  "0xffcb9843d60f6159c9db58835c926644"
                    let expr_5222 := 0xffcb9843d60f6159c9db58835c926644
                    /// @src 118:2065:2107  "ratio * 0xffcb9843d60f6159c9db58835c926644"
                    let expr_5223 := checked_mul_t_uint256(expr_5221, convert_t_rational_340010263488231146823593991679159461444_by_1_to_t_uint256(expr_5222))

                    /// @src 118:2064:2108  "(ratio * 0xffcb9843d60f6159c9db58835c926644)"
                    let expr_5224 := expr_5223
                    /// @src 118:2112:2115  "128"
                    let expr_5225 := 0x80
                    /// @src 118:2064:2115  "(ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                    let _1168 := convert_t_rational_128_by_1_to_t_uint8(expr_5225)
                    let expr_5226 :=
                    shift_right_t_uint256_t_uint8(expr_5224, _1168)

                    /// @src 118:2056:2115  "ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                    var_ratio_5160 := expr_5226
                    let expr_5227 := expr_5226
                    /// @src 118:2031:2115  "if (absTick & 0x10 != 0) ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                }
                /// @src 118:2129:2136  "absTick"
                let _1169 := var_absTick_5125
                let expr_5230 := _1169
                /// @src 118:2139:2143  "0x20"
                let expr_5231 := 0x20
                /// @src 118:2129:2143  "absTick & 0x20"
                let expr_5232 := and(expr_5230, convert_t_rational_32_by_1_to_t_uint256(expr_5231))

                /// @src 118:2147:2148  "0"
                let expr_5233 := 0x00
                /// @src 118:2129:2148  "absTick & 0x20 != 0"
                let expr_5234 := iszero(eq(cleanup_t_uint256(expr_5232), convert_t_rational_0_by_1_to_t_uint256(expr_5233)))
                /// @src 118:2125:2209  "if (absTick & 0x20 != 0) ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                if expr_5234 {
                    /// @src 118:2159:2164  "ratio"
                    let _1170 := var_ratio_5160
                    let expr_5236 := _1170
                    /// @src 118:2167:2201  "0xff973b41fa98c081472e6896dfb254c0"
                    let expr_5237 := 0xff973b41fa98c081472e6896dfb254c0
                    /// @src 118:2159:2201  "ratio * 0xff973b41fa98c081472e6896dfb254c0"
                    let expr_5238 := checked_mul_t_uint256(expr_5236, convert_t_rational_339738377640345403697157401104375502016_by_1_to_t_uint256(expr_5237))

                    /// @src 118:2158:2202  "(ratio * 0xff973b41fa98c081472e6896dfb254c0)"
                    let expr_5239 := expr_5238
                    /// @src 118:2206:2209  "128"
                    let expr_5240 := 0x80
                    /// @src 118:2158:2209  "(ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                    let _1171 := convert_t_rational_128_by_1_to_t_uint8(expr_5240)
                    let expr_5241 :=
                    shift_right_t_uint256_t_uint8(expr_5239, _1171)

                    /// @src 118:2150:2209  "ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                    var_ratio_5160 := expr_5241
                    let expr_5242 := expr_5241
                    /// @src 118:2125:2209  "if (absTick & 0x20 != 0) ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                }
                /// @src 118:2223:2230  "absTick"
                let _1172 := var_absTick_5125
                let expr_5245 := _1172
                /// @src 118:2233:2237  "0x40"
                let expr_5246 := 0x40
                /// @src 118:2223:2237  "absTick & 0x40"
                let expr_5247 := and(expr_5245, convert_t_rational_64_by_1_to_t_uint256(expr_5246))

                /// @src 118:2241:2242  "0"
                let expr_5248 := 0x00
                /// @src 118:2223:2242  "absTick & 0x40 != 0"
                let expr_5249 := iszero(eq(cleanup_t_uint256(expr_5247), convert_t_rational_0_by_1_to_t_uint256(expr_5248)))
                /// @src 118:2219:2303  "if (absTick & 0x40 != 0) ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                if expr_5249 {
                    /// @src 118:2253:2258  "ratio"
                    let _1173 := var_ratio_5160
                    let expr_5251 := _1173
                    /// @src 118:2261:2295  "0xff2ea16466c96a3843ec78b326b52861"
                    let expr_5252 := 0xff2ea16466c96a3843ec78b326b52861
                    /// @src 118:2253:2295  "ratio * 0xff2ea16466c96a3843ec78b326b52861"
                    let expr_5253 := checked_mul_t_uint256(expr_5251, convert_t_rational_339195258003219555707034227454543997025_by_1_to_t_uint256(expr_5252))

                    /// @src 118:2252:2296  "(ratio * 0xff2ea16466c96a3843ec78b326b52861)"
                    let expr_5254 := expr_5253
                    /// @src 118:2300:2303  "128"
                    let expr_5255 := 0x80
                    /// @src 118:2252:2303  "(ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                    let _1174 := convert_t_rational_128_by_1_to_t_uint8(expr_5255)
                    let expr_5256 :=
                    shift_right_t_uint256_t_uint8(expr_5254, _1174)

                    /// @src 118:2244:2303  "ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                    var_ratio_5160 := expr_5256
                    let expr_5257 := expr_5256
                    /// @src 118:2219:2303  "if (absTick & 0x40 != 0) ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                }
                /// @src 118:2317:2324  "absTick"
                let _1175 := var_absTick_5125
                let expr_5260 := _1175
                /// @src 118:2327:2331  "0x80"
                let expr_5261 := 0x80
                /// @src 118:2317:2331  "absTick & 0x80"
                let expr_5262 := and(expr_5260, convert_t_rational_128_by_1_to_t_uint256(expr_5261))

                /// @src 118:2335:2336  "0"
                let expr_5263 := 0x00
                /// @src 118:2317:2336  "absTick & 0x80 != 0"
                let expr_5264 := iszero(eq(cleanup_t_uint256(expr_5262), convert_t_rational_0_by_1_to_t_uint256(expr_5263)))
                /// @src 118:2313:2397  "if (absTick & 0x80 != 0) ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                if expr_5264 {
                    /// @src 118:2347:2352  "ratio"
                    let _1176 := var_ratio_5160
                    let expr_5266 := _1176
                    /// @src 118:2355:2389  "0xfe5dee046a99a2a811c461f1969c3053"
                    let expr_5267 := 0xfe5dee046a99a2a811c461f1969c3053
                    /// @src 118:2347:2389  "ratio * 0xfe5dee046a99a2a811c461f1969c3053"
                    let expr_5268 := checked_mul_t_uint256(expr_5266, convert_t_rational_338111622100601834656805679988414885971_by_1_to_t_uint256(expr_5267))

                    /// @src 118:2346:2390  "(ratio * 0xfe5dee046a99a2a811c461f1969c3053)"
                    let expr_5269 := expr_5268
                    /// @src 118:2394:2397  "128"
                    let expr_5270 := 0x80
                    /// @src 118:2346:2397  "(ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                    let _1177 := convert_t_rational_128_by_1_to_t_uint8(expr_5270)
                    let expr_5271 :=
                    shift_right_t_uint256_t_uint8(expr_5269, _1177)

                    /// @src 118:2338:2397  "ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                    var_ratio_5160 := expr_5271
                    let expr_5272 := expr_5271
                    /// @src 118:2313:2397  "if (absTick & 0x80 != 0) ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                }
                /// @src 118:2411:2418  "absTick"
                let _1178 := var_absTick_5125
                let expr_5275 := _1178
                /// @src 118:2421:2426  "0x100"
                let expr_5276 := 0x0100
                /// @src 118:2411:2426  "absTick & 0x100"
                let expr_5277 := and(expr_5275, convert_t_rational_256_by_1_to_t_uint256(expr_5276))

                /// @src 118:2430:2431  "0"
                let expr_5278 := 0x00
                /// @src 118:2411:2431  "absTick & 0x100 != 0"
                let expr_5279 := iszero(eq(cleanup_t_uint256(expr_5277), convert_t_rational_0_by_1_to_t_uint256(expr_5278)))
                /// @src 118:2407:2492  "if (absTick & 0x100 != 0) ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                if expr_5279 {
                    /// @src 118:2442:2447  "ratio"
                    let _1179 := var_ratio_5160
                    let expr_5281 := _1179
                    /// @src 118:2450:2484  "0xfcbe86c7900a88aedcffc83b479aa3a4"
                    let expr_5282 := 0xfcbe86c7900a88aedcffc83b479aa3a4
                    /// @src 118:2442:2484  "ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4"
                    let expr_5283 := checked_mul_t_uint256(expr_5281, convert_t_rational_335954724994790223023589805789778977700_by_1_to_t_uint256(expr_5282))

                    /// @src 118:2441:2485  "(ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4)"
                    let expr_5284 := expr_5283
                    /// @src 118:2489:2492  "128"
                    let expr_5285 := 0x80
                    /// @src 118:2441:2492  "(ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                    let _1180 := convert_t_rational_128_by_1_to_t_uint8(expr_5285)
                    let expr_5286 :=
                    shift_right_t_uint256_t_uint8(expr_5284, _1180)

                    /// @src 118:2433:2492  "ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                    var_ratio_5160 := expr_5286
                    let expr_5287 := expr_5286
                    /// @src 118:2407:2492  "if (absTick & 0x100 != 0) ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                }
                /// @src 118:2506:2513  "absTick"
                let _1181 := var_absTick_5125
                let expr_5290 := _1181
                /// @src 118:2516:2521  "0x200"
                let expr_5291 := 0x0200
                /// @src 118:2506:2521  "absTick & 0x200"
                let expr_5292 := and(expr_5290, convert_t_rational_512_by_1_to_t_uint256(expr_5291))

                /// @src 118:2525:2526  "0"
                let expr_5293 := 0x00
                /// @src 118:2506:2526  "absTick & 0x200 != 0"
                let expr_5294 := iszero(eq(cleanup_t_uint256(expr_5292), convert_t_rational_0_by_1_to_t_uint256(expr_5293)))
                /// @src 118:2502:2587  "if (absTick & 0x200 != 0) ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                if expr_5294 {
                    /// @src 118:2537:2542  "ratio"
                    let _1182 := var_ratio_5160
                    let expr_5296 := _1182
                    /// @src 118:2545:2579  "0xf987a7253ac413176f2b074cf7815e54"
                    let expr_5297 := 0xf987a7253ac413176f2b074cf7815e54
                    /// @src 118:2537:2579  "ratio * 0xf987a7253ac413176f2b074cf7815e54"
                    let expr_5298 := checked_mul_t_uint256(expr_5296, convert_t_rational_331682121138379247127172139078559817300_by_1_to_t_uint256(expr_5297))

                    /// @src 118:2536:2580  "(ratio * 0xf987a7253ac413176f2b074cf7815e54)"
                    let expr_5299 := expr_5298
                    /// @src 118:2584:2587  "128"
                    let expr_5300 := 0x80
                    /// @src 118:2536:2587  "(ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                    let _1183 := convert_t_rational_128_by_1_to_t_uint8(expr_5300)
                    let expr_5301 :=
                    shift_right_t_uint256_t_uint8(expr_5299, _1183)

                    /// @src 118:2528:2587  "ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                    var_ratio_5160 := expr_5301
                    let expr_5302 := expr_5301
                    /// @src 118:2502:2587  "if (absTick & 0x200 != 0) ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                }
                /// @src 118:2601:2608  "absTick"
                let _1184 := var_absTick_5125
                let expr_5305 := _1184
                /// @src 118:2611:2616  "0x400"
                let expr_5306 := 0x0400
                /// @src 118:2601:2616  "absTick & 0x400"
                let expr_5307 := and(expr_5305, convert_t_rational_1024_by_1_to_t_uint256(expr_5306))

                /// @src 118:2620:2621  "0"
                let expr_5308 := 0x00
                /// @src 118:2601:2621  "absTick & 0x400 != 0"
                let expr_5309 := iszero(eq(cleanup_t_uint256(expr_5307), convert_t_rational_0_by_1_to_t_uint256(expr_5308)))
                /// @src 118:2597:2682  "if (absTick & 0x400 != 0) ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                if expr_5309 {
                    /// @src 118:2632:2637  "ratio"
                    let _1185 := var_ratio_5160
                    let expr_5311 := _1185
                    /// @src 118:2640:2674  "0xf3392b0822b70005940c7a398e4b70f3"
                    let expr_5312 := 0xf3392b0822b70005940c7a398e4b70f3
                    /// @src 118:2632:2674  "ratio * 0xf3392b0822b70005940c7a398e4b70f3"
                    let expr_5313 := checked_mul_t_uint256(expr_5311, convert_t_rational_323299236684853023288211250268160618739_by_1_to_t_uint256(expr_5312))

                    /// @src 118:2631:2675  "(ratio * 0xf3392b0822b70005940c7a398e4b70f3)"
                    let expr_5314 := expr_5313
                    /// @src 118:2679:2682  "128"
                    let expr_5315 := 0x80
                    /// @src 118:2631:2682  "(ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                    let _1186 := convert_t_rational_128_by_1_to_t_uint8(expr_5315)
                    let expr_5316 :=
                    shift_right_t_uint256_t_uint8(expr_5314, _1186)

                    /// @src 118:2623:2682  "ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                    var_ratio_5160 := expr_5316
                    let expr_5317 := expr_5316
                    /// @src 118:2597:2682  "if (absTick & 0x400 != 0) ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                }
                /// @src 118:2696:2703  "absTick"
                let _1187 := var_absTick_5125
                let expr_5320 := _1187
                /// @src 118:2706:2711  "0x800"
                let expr_5321 := 0x0800
                /// @src 118:2696:2711  "absTick & 0x800"
                let expr_5322 := and(expr_5320, convert_t_rational_2048_by_1_to_t_uint256(expr_5321))

                /// @src 118:2715:2716  "0"
                let expr_5323 := 0x00
                /// @src 118:2696:2716  "absTick & 0x800 != 0"
                let expr_5324 := iszero(eq(cleanup_t_uint256(expr_5322), convert_t_rational_0_by_1_to_t_uint256(expr_5323)))
                /// @src 118:2692:2777  "if (absTick & 0x800 != 0) ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                if expr_5324 {
                    /// @src 118:2727:2732  "ratio"
                    let _1188 := var_ratio_5160
                    let expr_5326 := _1188
                    /// @src 118:2735:2769  "0xe7159475a2c29b7443b29c7fa6e889d9"
                    let expr_5327 := 0xe7159475a2c29b7443b29c7fa6e889d9
                    /// @src 118:2727:2769  "ratio * 0xe7159475a2c29b7443b29c7fa6e889d9"
                    let expr_5328 := checked_mul_t_uint256(expr_5326, convert_t_rational_307163716377032989948697243942600083929_by_1_to_t_uint256(expr_5327))

                    /// @src 118:2726:2770  "(ratio * 0xe7159475a2c29b7443b29c7fa6e889d9)"
                    let expr_5329 := expr_5328
                    /// @src 118:2774:2777  "128"
                    let expr_5330 := 0x80
                    /// @src 118:2726:2777  "(ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                    let _1189 := convert_t_rational_128_by_1_to_t_uint8(expr_5330)
                    let expr_5331 :=
                    shift_right_t_uint256_t_uint8(expr_5329, _1189)

                    /// @src 118:2718:2777  "ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                    var_ratio_5160 := expr_5331
                    let expr_5332 := expr_5331
                    /// @src 118:2692:2777  "if (absTick & 0x800 != 0) ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                }
                /// @src 118:2791:2798  "absTick"
                let _1190 := var_absTick_5125
                let expr_5335 := _1190
                /// @src 118:2801:2807  "0x1000"
                let expr_5336 := 0x1000
                /// @src 118:2791:2807  "absTick & 0x1000"
                let expr_5337 := and(expr_5335, convert_t_rational_4096_by_1_to_t_uint256(expr_5336))

                /// @src 118:2811:2812  "0"
                let expr_5338 := 0x00
                /// @src 118:2791:2812  "absTick & 0x1000 != 0"
                let expr_5339 := iszero(eq(cleanup_t_uint256(expr_5337), convert_t_rational_0_by_1_to_t_uint256(expr_5338)))
                /// @src 118:2787:2873  "if (absTick & 0x1000 != 0) ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                if expr_5339 {
                    /// @src 118:2823:2828  "ratio"
                    let _1191 := var_ratio_5160
                    let expr_5341 := _1191
                    /// @src 118:2831:2865  "0xd097f3bdfd2022b8845ad8f792aa5825"
                    let expr_5342 := 0xd097f3bdfd2022b8845ad8f792aa5825
                    /// @src 118:2823:2865  "ratio * 0xd097f3bdfd2022b8845ad8f792aa5825"
                    let expr_5343 := checked_mul_t_uint256(expr_5341, convert_t_rational_277268403626896220162999269216087595045_by_1_to_t_uint256(expr_5342))

                    /// @src 118:2822:2866  "(ratio * 0xd097f3bdfd2022b8845ad8f792aa5825)"
                    let expr_5344 := expr_5343
                    /// @src 118:2870:2873  "128"
                    let expr_5345 := 0x80
                    /// @src 118:2822:2873  "(ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                    let _1192 := convert_t_rational_128_by_1_to_t_uint8(expr_5345)
                    let expr_5346 :=
                    shift_right_t_uint256_t_uint8(expr_5344, _1192)

                    /// @src 118:2814:2873  "ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                    var_ratio_5160 := expr_5346
                    let expr_5347 := expr_5346
                    /// @src 118:2787:2873  "if (absTick & 0x1000 != 0) ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                }
                /// @src 118:2887:2894  "absTick"
                let _1193 := var_absTick_5125
                let expr_5350 := _1193
                /// @src 118:2897:2903  "0x2000"
                let expr_5351 := 0x2000
                /// @src 118:2887:2903  "absTick & 0x2000"
                let expr_5352 := and(expr_5350, convert_t_rational_8192_by_1_to_t_uint256(expr_5351))

                /// @src 118:2907:2908  "0"
                let expr_5353 := 0x00
                /// @src 118:2887:2908  "absTick & 0x2000 != 0"
                let expr_5354 := iszero(eq(cleanup_t_uint256(expr_5352), convert_t_rational_0_by_1_to_t_uint256(expr_5353)))
                /// @src 118:2883:2969  "if (absTick & 0x2000 != 0) ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                if expr_5354 {
                    /// @src 118:2919:2924  "ratio"
                    let _1194 := var_ratio_5160
                    let expr_5356 := _1194
                    /// @src 118:2927:2961  "0xa9f746462d870fdf8a65dc1f90e061e5"
                    let expr_5357 := 0xa9f746462d870fdf8a65dc1f90e061e5
                    /// @src 118:2919:2961  "ratio * 0xa9f746462d870fdf8a65dc1f90e061e5"
                    let expr_5358 := checked_mul_t_uint256(expr_5356, convert_t_rational_225923453940442621947126027127485391333_by_1_to_t_uint256(expr_5357))

                    /// @src 118:2918:2962  "(ratio * 0xa9f746462d870fdf8a65dc1f90e061e5)"
                    let expr_5359 := expr_5358
                    /// @src 118:2966:2969  "128"
                    let expr_5360 := 0x80
                    /// @src 118:2918:2969  "(ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                    let _1195 := convert_t_rational_128_by_1_to_t_uint8(expr_5360)
                    let expr_5361 :=
                    shift_right_t_uint256_t_uint8(expr_5359, _1195)

                    /// @src 118:2910:2969  "ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                    var_ratio_5160 := expr_5361
                    let expr_5362 := expr_5361
                    /// @src 118:2883:2969  "if (absTick & 0x2000 != 0) ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                }
                /// @src 118:2983:2990  "absTick"
                let _1196 := var_absTick_5125
                let expr_5365 := _1196
                /// @src 118:2993:2999  "0x4000"
                let expr_5366 := 0x4000
                /// @src 118:2983:2999  "absTick & 0x4000"
                let expr_5367 := and(expr_5365, convert_t_rational_16384_by_1_to_t_uint256(expr_5366))

                /// @src 118:3003:3004  "0"
                let expr_5368 := 0x00
                /// @src 118:2983:3004  "absTick & 0x4000 != 0"
                let expr_5369 := iszero(eq(cleanup_t_uint256(expr_5367), convert_t_rational_0_by_1_to_t_uint256(expr_5368)))
                /// @src 118:2979:3065  "if (absTick & 0x4000 != 0) ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                if expr_5369 {
                    /// @src 118:3015:3020  "ratio"
                    let _1197 := var_ratio_5160
                    let expr_5371 := _1197
                    /// @src 118:3023:3057  "0x70d869a156d2a1b890bb3df62baf32f7"
                    let expr_5372 := 0x70d869a156d2a1b890bb3df62baf32f7
                    /// @src 118:3015:3057  "ratio * 0x70d869a156d2a1b890bb3df62baf32f7"
                    let expr_5373 := checked_mul_t_uint256(expr_5371, convert_t_rational_149997214084966997727330242082538205943_by_1_to_t_uint256(expr_5372))

                    /// @src 118:3014:3058  "(ratio * 0x70d869a156d2a1b890bb3df62baf32f7)"
                    let expr_5374 := expr_5373
                    /// @src 118:3062:3065  "128"
                    let expr_5375 := 0x80
                    /// @src 118:3014:3065  "(ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                    let _1198 := convert_t_rational_128_by_1_to_t_uint8(expr_5375)
                    let expr_5376 :=
                    shift_right_t_uint256_t_uint8(expr_5374, _1198)

                    /// @src 118:3006:3065  "ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                    var_ratio_5160 := expr_5376
                    let expr_5377 := expr_5376
                    /// @src 118:2979:3065  "if (absTick & 0x4000 != 0) ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                }
                /// @src 118:3079:3086  "absTick"
                let _1199 := var_absTick_5125
                let expr_5380 := _1199
                /// @src 118:3089:3095  "0x8000"
                let expr_5381 := 0x8000
                /// @src 118:3079:3095  "absTick & 0x8000"
                let expr_5382 := and(expr_5380, convert_t_rational_32768_by_1_to_t_uint256(expr_5381))

                /// @src 118:3099:3100  "0"
                let expr_5383 := 0x00
                /// @src 118:3079:3100  "absTick & 0x8000 != 0"
                let expr_5384 := iszero(eq(cleanup_t_uint256(expr_5382), convert_t_rational_0_by_1_to_t_uint256(expr_5383)))
                /// @src 118:3075:3161  "if (absTick & 0x8000 != 0) ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                if expr_5384 {
                    /// @src 118:3111:3116  "ratio"
                    let _1200 := var_ratio_5160
                    let expr_5386 := _1200
                    /// @src 118:3119:3153  "0x31be135f97d08fd981231505542fcfa6"
                    let expr_5387 := 0x31be135f97d08fd981231505542fcfa6
                    /// @src 118:3111:3153  "ratio * 0x31be135f97d08fd981231505542fcfa6"
                    let expr_5388 := checked_mul_t_uint256(expr_5386, convert_t_rational_66119101136024775622716233608466517926_by_1_to_t_uint256(expr_5387))

                    /// @src 118:3110:3154  "(ratio * 0x31be135f97d08fd981231505542fcfa6)"
                    let expr_5389 := expr_5388
                    /// @src 118:3158:3161  "128"
                    let expr_5390 := 0x80
                    /// @src 118:3110:3161  "(ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                    let _1201 := convert_t_rational_128_by_1_to_t_uint8(expr_5390)
                    let expr_5391 :=
                    shift_right_t_uint256_t_uint8(expr_5389, _1201)

                    /// @src 118:3102:3161  "ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                    var_ratio_5160 := expr_5391
                    let expr_5392 := expr_5391
                    /// @src 118:3075:3161  "if (absTick & 0x8000 != 0) ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                }
                /// @src 118:3175:3182  "absTick"
                let _1202 := var_absTick_5125
                let expr_5395 := _1202
                /// @src 118:3185:3192  "0x10000"
                let expr_5396 := 0x010000
                /// @src 118:3175:3192  "absTick & 0x10000"
                let expr_5397 := and(expr_5395, convert_t_rational_65536_by_1_to_t_uint256(expr_5396))

                /// @src 118:3196:3197  "0"
                let expr_5398 := 0x00
                /// @src 118:3175:3197  "absTick & 0x10000 != 0"
                let expr_5399 := iszero(eq(cleanup_t_uint256(expr_5397), convert_t_rational_0_by_1_to_t_uint256(expr_5398)))
                /// @src 118:3171:3257  "if (absTick & 0x10000 != 0) ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                if expr_5399 {
                    /// @src 118:3208:3213  "ratio"
                    let _1203 := var_ratio_5160
                    let expr_5401 := _1203
                    /// @src 118:3216:3249  "0x9aa508b5b7a84e1c677de54f3e99bc9"
                    let expr_5402 := 0x09aa508b5b7a84e1c677de54f3e99bc9
                    /// @src 118:3208:3249  "ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9"
                    let expr_5403 := checked_mul_t_uint256(expr_5401, convert_t_rational_12847376061809297530290974190478138313_by_1_to_t_uint256(expr_5402))

                    /// @src 118:3207:3250  "(ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9)"
                    let expr_5404 := expr_5403
                    /// @src 118:3254:3257  "128"
                    let expr_5405 := 0x80
                    /// @src 118:3207:3257  "(ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                    let _1204 := convert_t_rational_128_by_1_to_t_uint8(expr_5405)
                    let expr_5406 :=
                    shift_right_t_uint256_t_uint8(expr_5404, _1204)

                    /// @src 118:3199:3257  "ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                    var_ratio_5160 := expr_5406
                    let expr_5407 := expr_5406
                    /// @src 118:3171:3257  "if (absTick & 0x10000 != 0) ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                }
                /// @src 118:3271:3278  "absTick"
                let _1205 := var_absTick_5125
                let expr_5410 := _1205
                /// @src 118:3281:3288  "0x20000"
                let expr_5411 := 0x020000
                /// @src 118:3271:3288  "absTick & 0x20000"
                let expr_5412 := and(expr_5410, convert_t_rational_131072_by_1_to_t_uint256(expr_5411))

                /// @src 118:3292:3293  "0"
                let expr_5413 := 0x00
                /// @src 118:3271:3293  "absTick & 0x20000 != 0"
                let expr_5414 := iszero(eq(cleanup_t_uint256(expr_5412), convert_t_rational_0_by_1_to_t_uint256(expr_5413)))
                /// @src 118:3267:3352  "if (absTick & 0x20000 != 0) ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                if expr_5414 {
                    /// @src 118:3304:3309  "ratio"
                    let _1206 := var_ratio_5160
                    let expr_5416 := _1206
                    /// @src 118:3312:3344  "0x5d6af8dedb81196699c329225ee604"
                    let expr_5417 := 0x5d6af8dedb81196699c329225ee604
                    /// @src 118:3304:3344  "ratio * 0x5d6af8dedb81196699c329225ee604"
                    let expr_5418 := checked_mul_t_uint256(expr_5416, convert_t_rational_485053260817066172746253684029974020_by_1_to_t_uint256(expr_5417))

                    /// @src 118:3303:3345  "(ratio * 0x5d6af8dedb81196699c329225ee604)"
                    let expr_5419 := expr_5418
                    /// @src 118:3349:3352  "128"
                    let expr_5420 := 0x80
                    /// @src 118:3303:3352  "(ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                    let _1207 := convert_t_rational_128_by_1_to_t_uint8(expr_5420)
                    let expr_5421 :=
                    shift_right_t_uint256_t_uint8(expr_5419, _1207)

                    /// @src 118:3295:3352  "ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                    var_ratio_5160 := expr_5421
                    let expr_5422 := expr_5421
                    /// @src 118:3267:3352  "if (absTick & 0x20000 != 0) ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                }
                /// @src 118:3366:3373  "absTick"
                let _1208 := var_absTick_5125
                let expr_5425 := _1208
                /// @src 118:3376:3383  "0x40000"
                let expr_5426 := 0x040000
                /// @src 118:3366:3383  "absTick & 0x40000"
                let expr_5427 := and(expr_5425, convert_t_rational_262144_by_1_to_t_uint256(expr_5426))

                /// @src 118:3387:3388  "0"
                let expr_5428 := 0x00
                /// @src 118:3366:3388  "absTick & 0x40000 != 0"
                let expr_5429 := iszero(eq(cleanup_t_uint256(expr_5427), convert_t_rational_0_by_1_to_t_uint256(expr_5428)))
                /// @src 118:3362:3445  "if (absTick & 0x40000 != 0) ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                if expr_5429 {
                    /// @src 118:3399:3404  "ratio"
                    let _1209 := var_ratio_5160
                    let expr_5431 := _1209
                    /// @src 118:3407:3437  "0x2216e584f5fa1ea926041bedfe98"
                    let expr_5432 := 0x2216e584f5fa1ea926041bedfe98
                    /// @src 118:3399:3437  "ratio * 0x2216e584f5fa1ea926041bedfe98"
                    let expr_5433 := checked_mul_t_uint256(expr_5431, convert_t_rational_691415978906521570653435304214168_by_1_to_t_uint256(expr_5432))

                    /// @src 118:3398:3438  "(ratio * 0x2216e584f5fa1ea926041bedfe98)"
                    let expr_5434 := expr_5433
                    /// @src 118:3442:3445  "128"
                    let expr_5435 := 0x80
                    /// @src 118:3398:3445  "(ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                    let _1210 := convert_t_rational_128_by_1_to_t_uint8(expr_5435)
                    let expr_5436 :=
                    shift_right_t_uint256_t_uint8(expr_5434, _1210)

                    /// @src 118:3390:3445  "ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                    var_ratio_5160 := expr_5436
                    let expr_5437 := expr_5436
                    /// @src 118:3362:3445  "if (absTick & 0x40000 != 0) ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                }
                /// @src 118:3459:3466  "absTick"
                let _1211 := var_absTick_5125
                let expr_5440 := _1211
                /// @src 118:3469:3476  "0x80000"
                let expr_5441 := 0x080000
                /// @src 118:3459:3476  "absTick & 0x80000"
                let expr_5442 := and(expr_5440, convert_t_rational_524288_by_1_to_t_uint256(expr_5441))

                /// @src 118:3480:3481  "0"
                let expr_5443 := 0x00
                /// @src 118:3459:3481  "absTick & 0x80000 != 0"
                let expr_5444 := iszero(eq(cleanup_t_uint256(expr_5442), convert_t_rational_0_by_1_to_t_uint256(expr_5443)))
                /// @src 118:3455:3533  "if (absTick & 0x80000 != 0) ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                if expr_5444 {
                    /// @src 118:3492:3497  "ratio"
                    let _1212 := var_ratio_5160
                    let expr_5446 := _1212
                    /// @src 118:3500:3525  "0x48a170391f7dc42444e8fa2"
                    let expr_5447 := 0x048a170391f7dc42444e8fa2
                    /// @src 118:3492:3525  "ratio * 0x48a170391f7dc42444e8fa2"
                    let expr_5448 := checked_mul_t_uint256(expr_5446, convert_t_rational_1404880482679654955896180642_by_1_to_t_uint256(expr_5447))

                    /// @src 118:3491:3526  "(ratio * 0x48a170391f7dc42444e8fa2)"
                    let expr_5449 := expr_5448
                    /// @src 118:3530:3533  "128"
                    let expr_5450 := 0x80
                    /// @src 118:3491:3533  "(ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                    let _1213 := convert_t_rational_128_by_1_to_t_uint8(expr_5450)
                    let expr_5451 :=
                    shift_right_t_uint256_t_uint8(expr_5449, _1213)

                    /// @src 118:3483:3533  "ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                    var_ratio_5160 := expr_5451
                    let expr_5452 := expr_5451
                    /// @src 118:3455:3533  "if (absTick & 0x80000 != 0) ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                }
                /// @src 118:3548:3552  "tick"
                let _1214 := var_tick_5119
                let expr_5455 := _1214
                /// @src 118:3555:3556  "0"
                let expr_5456 := 0x00
                /// @src 118:3548:3556  "tick > 0"
                let expr_5457 := sgt(cleanup_t_int24(expr_5455), convert_t_rational_0_by_1_to_t_int24(expr_5456))
                /// @src 118:3544:3591  "if (tick > 0) ratio = type(uint256).max / ratio"
                if expr_5457 {
                    /// @src 118:3566:3583  "type(uint256).max"
                    let expr_5463 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 118:3586:3591  "ratio"
                    let _1215 := var_ratio_5160
                    let expr_5464 := _1215
                    /// @src 118:3566:3591  "type(uint256).max / ratio"
                    let expr_5465 := checked_div_t_uint256(expr_5463, expr_5464)

                    /// @src 118:3558:3591  "ratio = type(uint256).max / ratio"
                    var_ratio_5160 := expr_5465
                    let expr_5466 := expr_5465
                    /// @src 118:3544:3591  "if (tick > 0) ratio = type(uint256).max / ratio"
                }
                /// @src 118:3925:3930  "ratio"
                let _1216 := var_ratio_5160
                let expr_5472 := _1216
                /// @src 118:3934:3936  "32"
                let expr_5473 := 0x20
                /// @src 118:3925:3936  "ratio >> 32"
                let _1217 := convert_t_rational_32_by_1_to_t_uint8(expr_5473)
                let expr_5474 :=
                shift_right_t_uint256_t_uint8(expr_5472, _1217)

                /// @src 118:3924:3937  "(ratio >> 32)"
                let expr_5475 := expr_5474
                /// @src 118:3941:3946  "ratio"
                let _1218 := var_ratio_5160
                let expr_5476 := _1218
                /// @src 118:3950:3957  "1 << 32"
                let expr_5479 := 0x0100000000
                /// @src 118:3949:3958  "(1 << 32)"
                let expr_5480 := expr_5479
                /// @src 118:3941:3958  "ratio % (1 << 32)"
                let expr_5481 := mod_t_uint256(expr_5476, convert_t_rational_4294967296_by_1_to_t_uint256(expr_5480))

                /// @src 118:3962:3963  "0"
                let expr_5482 := 0x00
                /// @src 118:3941:3963  "ratio % (1 << 32) == 0"
                let expr_5483 := eq(cleanup_t_uint256(expr_5481), convert_t_rational_0_by_1_to_t_uint256(expr_5482))
                /// @src 118:3941:3971  "ratio % (1 << 32) == 0 ? 0 : 1"
                let expr_5486
                switch expr_5483
                case 0 {
                    /// @src 118:3970:3971  "1"
                    let expr_5485 := 0x01
                    /// @src 118:3941:3971  "ratio % (1 << 32) == 0 ? 0 : 1"
                    expr_5486 := convert_t_rational_1_by_1_to_t_uint8(expr_5485)
                }
                default {
                    /// @src 118:3966:3967  "0"
                    let expr_5484 := 0x00
                    /// @src 118:3941:3971  "ratio % (1 << 32) == 0 ? 0 : 1"
                    expr_5486 := convert_t_rational_0_by_1_to_t_uint8(expr_5484)
                }
                /// @src 118:3940:3972  "(ratio % (1 << 32) == 0 ? 0 : 1)"
                let expr_5487 := expr_5486
                /// @src 118:3924:3972  "(ratio >> 32) + (ratio % (1 << 32) == 0 ? 0 : 1)"
                let expr_5488 := checked_add_t_uint256(expr_5475, convert_t_uint8_to_t_uint256(expr_5487))

                /// @src 118:3916:3973  "uint160((ratio >> 32) + (ratio % (1 << 32) == 0 ? 0 : 1))"
                let expr_5489 := convert_t_uint256_to_t_uint160(expr_5488)
                /// @src 118:3901:3973  "sqrtPriceX96 = uint160((ratio >> 32) + (ratio % (1 << 32) == 0 ? 0 : 1))"
                var_sqrtPriceX96_5122 := expr_5489
                let expr_5490 := expr_5489

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 24280
            /// @src 147:3019:3920  "function getLiquidityForAmounts(..."
            function fun_getLiquidityForAmounts_24280(var_sqrtRatioX96_24202, var_sqrtRatioAX96_24204, var_sqrtRatioBX96_24206, var_amount0_24208, var_amount1_24210) -> var_liquidity_24213 {
                /// @src 147:3222:3239  "uint128 liquidity"
                let zero_t_uint128_1219 := zero_value_for_split_t_uint128()
                var_liquidity_24213 := zero_t_uint128_1219

                /// @src 147:3255:3268  "sqrtRatioAX96"
                let _1220 := var_sqrtRatioAX96_24204
                let expr_24215 := _1220
                /// @src 147:3271:3284  "sqrtRatioBX96"
                let _1221 := var_sqrtRatioBX96_24206
                let expr_24216 := _1221
                /// @src 147:3255:3284  "sqrtRatioAX96 > sqrtRatioBX96"
                let expr_24217 := gt(cleanup_t_uint160(expr_24215), cleanup_t_uint160(expr_24216))
                /// @src 147:3251:3349  "if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96)"
                if expr_24217 {
                    /// @src 147:3320:3333  "sqrtRatioBX96"
                    let _1222 := var_sqrtRatioBX96_24206
                    let expr_24221 := _1222
                    /// @src 147:3319:3349  "(sqrtRatioBX96, sqrtRatioAX96)"
                    let expr_24223_component_1 := expr_24221
                    /// @src 147:3335:3348  "sqrtRatioAX96"
                    let _1223 := var_sqrtRatioAX96_24204
                    let expr_24222 := _1223
                    /// @src 147:3319:3349  "(sqrtRatioBX96, sqrtRatioAX96)"
                    let expr_24223_component_2 := expr_24222
                    /// @src 147:3286:3349  "(sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96)"
                    var_sqrtRatioBX96_24206 := expr_24223_component_2
                    var_sqrtRatioAX96_24204 := expr_24223_component_1
                    /// @src 147:3251:3349  "if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96)"
                }
                /// @src 147:3364:3376  "sqrtRatioX96"
                let _1224 := var_sqrtRatioX96_24202
                let expr_24227 := _1224
                /// @src 147:3380:3393  "sqrtRatioAX96"
                let _1225 := var_sqrtRatioAX96_24204
                let expr_24228 := _1225
                /// @src 147:3364:3393  "sqrtRatioX96 <= sqrtRatioAX96"
                let expr_24229 := iszero(gt(cleanup_t_uint160(expr_24227), cleanup_t_uint160(expr_24228)))
                /// @src 147:3360:3914  "if (sqrtRatioX96 <= sqrtRatioAX96) {..."
                switch expr_24229
                case 0 {
                    /// @src 147:3503:3515  "sqrtRatioX96"
                    let _1226 := var_sqrtRatioX96_24202
                    let expr_24239 := _1226
                    /// @src 147:3518:3531  "sqrtRatioBX96"
                    let _1227 := var_sqrtRatioBX96_24206
                    let expr_24240 := _1227
                    /// @src 147:3503:3531  "sqrtRatioX96 < sqrtRatioBX96"
                    let expr_24241 := lt(cleanup_t_uint160(expr_24239), cleanup_t_uint160(expr_24240))
                    /// @src 147:3499:3914  "if (sqrtRatioX96 < sqrtRatioBX96) {..."
                    switch expr_24241
                    case 0 {
                        /// @src 147:3865:3878  "sqrtRatioAX96"
                        let _1228 := var_sqrtRatioAX96_24204
                        let expr_24270 := _1228
                        /// @src 147:3880:3893  "sqrtRatioBX96"
                        let _1229 := var_sqrtRatioBX96_24206
                        let expr_24271 := _1229
                        /// @src 147:3895:3902  "amount1"
                        let _1230 := var_amount1_24210
                        let expr_24272 := _1230
                        /// @src 147:3842:3903  "getLiquidityForAmount1(sqrtRatioAX96, sqrtRatioBX96, amount1)"
                        let expr_24273 := fun_getLiquidityForAmount1_24199(expr_24270, expr_24271, expr_24272)
                        /// @src 147:3830:3903  "liquidity = getLiquidityForAmount1(sqrtRatioAX96, sqrtRatioBX96, amount1)"
                        var_liquidity_24213 := expr_24273
                        let expr_24274 := expr_24273
                        /// @src 147:3499:3914  "if (sqrtRatioX96 < sqrtRatioBX96) {..."
                    }
                    default {
                        /// @src 147:3591:3603  "sqrtRatioX96"
                        let _1231 := var_sqrtRatioX96_24202
                        let expr_24245 := _1231
                        /// @src 147:3605:3618  "sqrtRatioBX96"
                        let _1232 := var_sqrtRatioBX96_24206
                        let expr_24246 := _1232
                        /// @src 147:3620:3627  "amount0"
                        let _1233 := var_amount0_24208
                        let expr_24247 := _1233
                        /// @src 147:3568:3628  "getLiquidityForAmount0(sqrtRatioX96, sqrtRatioBX96, amount0)"
                        let expr_24248 := fun_getLiquidityForAmount0_24162(expr_24245, expr_24246, expr_24247)
                        /// @src 147:3547:3628  "uint128 liquidity0 = getLiquidityForAmount0(sqrtRatioX96, sqrtRatioBX96, amount0)"
                        let var_liquidity0_24243 := expr_24248
                        /// @src 147:3686:3699  "sqrtRatioAX96"
                        let _1234 := var_sqrtRatioAX96_24204
                        let expr_24253 := _1234
                        /// @src 147:3701:3713  "sqrtRatioX96"
                        let _1235 := var_sqrtRatioX96_24202
                        let expr_24254 := _1235
                        /// @src 147:3715:3722  "amount1"
                        let _1236 := var_amount1_24210
                        let expr_24255 := _1236
                        /// @src 147:3663:3723  "getLiquidityForAmount1(sqrtRatioAX96, sqrtRatioX96, amount1)"
                        let expr_24256 := fun_getLiquidityForAmount1_24199(expr_24253, expr_24254, expr_24255)
                        /// @src 147:3642:3723  "uint128 liquidity1 = getLiquidityForAmount1(sqrtRatioAX96, sqrtRatioX96, amount1)"
                        let var_liquidity1_24251 := expr_24256
                        /// @src 147:3750:3760  "liquidity0"
                        let _1237 := var_liquidity0_24243
                        let expr_24259 := _1237
                        /// @src 147:3763:3773  "liquidity1"
                        let _1238 := var_liquidity1_24251
                        let expr_24260 := _1238
                        /// @src 147:3750:3773  "liquidity0 < liquidity1"
                        let expr_24261 := lt(cleanup_t_uint128(expr_24259), cleanup_t_uint128(expr_24260))
                        /// @src 147:3750:3799  "liquidity0 < liquidity1 ? liquidity0 : liquidity1"
                        let expr_24264
                        switch expr_24261
                        case 0 {
                            /// @src 147:3789:3799  "liquidity1"
                            let _1239 := var_liquidity1_24251
                            let expr_24263 := _1239
                            /// @src 147:3750:3799  "liquidity0 < liquidity1 ? liquidity0 : liquidity1"
                            expr_24264 := expr_24263
                        }
                        default {
                            /// @src 147:3776:3786  "liquidity0"
                            let _1240 := var_liquidity0_24243
                            let expr_24262 := _1240
                            /// @src 147:3750:3799  "liquidity0 < liquidity1 ? liquidity0 : liquidity1"
                            expr_24264 := expr_24262
                        }
                        /// @src 147:3738:3799  "liquidity = liquidity0 < liquidity1 ? liquidity0 : liquidity1"
                        var_liquidity_24213 := expr_24264
                        let expr_24265 := expr_24264
                        /// @src 147:3499:3914  "if (sqrtRatioX96 < sqrtRatioBX96) {..."
                    }
                    /// @src 147:3360:3914  "if (sqrtRatioX96 <= sqrtRatioAX96) {..."
                }
                default {
                    /// @src 147:3444:3457  "sqrtRatioAX96"
                    let _1241 := var_sqrtRatioAX96_24204
                    let expr_24232 := _1241
                    /// @src 147:3459:3472  "sqrtRatioBX96"
                    let _1242 := var_sqrtRatioBX96_24206
                    let expr_24233 := _1242
                    /// @src 147:3474:3481  "amount0"
                    let _1243 := var_amount0_24208
                    let expr_24234 := _1243
                    /// @src 147:3421:3482  "getLiquidityForAmount0(sqrtRatioAX96, sqrtRatioBX96, amount0)"
                    let expr_24235 := fun_getLiquidityForAmount0_24162(expr_24232, expr_24233, expr_24234)
                    /// @src 147:3409:3482  "liquidity = getLiquidityForAmount0(sqrtRatioAX96, sqrtRatioBX96, amount0)"
                    var_liquidity_24213 := expr_24235
                    let expr_24236 := expr_24235
                    /// @src 147:3360:3914  "if (sqrtRatioX96 <= sqrtRatioAX96) {..."
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 23490
            /// @src 36:17032:17125  "function _beforeTokenTransfer(address from, address to, uint256 tokenId) internal virtual { }"
            function fun__beforeTokenTransfer_23490(var_from_23482, var_to_23484, var_tokenId_23486) {

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 35570
            /// @src 44:8394:8529  "function remove(UintSet storage set, uint256 value) internal returns (bool) {..."
            function fun_remove_35570(var_set_35553_slot, var_value_35555) -> var__35558 {
                /// @src 44:8464:8468  "bool"
                let zero_t_bool_1244 := zero_value_for_split_t_bool()
                var__35558 := zero_t_bool_1244

                /// @src 44:8495:8498  "set"
                let _1245_slot := var_set_35553_slot
                let expr_35561_slot := _1245_slot
                /// @src 44:8495:8505  "set._inner"
                let _1246 := add(expr_35561_slot, 0)
                let _1247_slot := _1246
                let expr_35562_slot := _1247_slot
                /// @src 44:8515:8520  "value"
                let _1248 := var_value_35555
                let expr_35565 := _1248
                /// @src 44:8507:8521  "bytes32(value)"
                let expr_35566 := convert_t_uint256_to_t_bytes32(expr_35565)
                /// @src 44:8487:8522  "_remove(set._inner, bytes32(value))"
                let _1249_slot := convert_t_struct$_Set_$35124_storage_to_t_struct$_Set_$35124_storage_ptr(expr_35562_slot)
                let expr_35567 := fun__remove_35247(_1249_slot, expr_35566)
                /// @src 44:8480:8522  "return _remove(set._inner, bytes32(value))"
                var__35558 := expr_35567
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 35549
            /// @src 44:8097:8226  "function add(UintSet storage set, uint256 value) internal returns (bool) {..."
            function fun_add_35549(var_set_35532_slot, var_value_35534) -> var__35537 {
                /// @src 44:8164:8168  "bool"
                let zero_t_bool_1250 := zero_value_for_split_t_bool()
                var__35537 := zero_t_bool_1250

                /// @src 44:8192:8195  "set"
                let _1251_slot := var_set_35532_slot
                let expr_35540_slot := _1251_slot
                /// @src 44:8192:8202  "set._inner"
                let _1252 := add(expr_35540_slot, 0)
                let _1253_slot := _1252
                let expr_35541_slot := _1253_slot
                /// @src 44:8212:8217  "value"
                let _1254 := var_value_35534
                let expr_35544 := _1254
                /// @src 44:8204:8218  "bytes32(value)"
                let expr_35545 := convert_t_uint256_to_t_bytes32(expr_35544)
                /// @src 44:8187:8219  "_add(set._inner, bytes32(value))"
                let _1255_slot := convert_t_struct$_Set_$35124_storage_to_t_struct$_Set_$35124_storage_ptr(expr_35541_slot)
                let expr_35546 := fun__add_35166(_1255_slot, expr_35545)
                /// @src 44:8180:8219  "return _add(set._inner, bytes32(value))"
                var__35537 := expr_35546
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function convert_t_address_to_t_uint160(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_uint160_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint160(value)))
            }

            /// @ast-id 34912
            /// @src 43:7056:7239  "function set(UintToAddressMap storage map, uint256 key, address value) internal returns (bool) {..."
            function fun_set_34912(var_map_34883_slot, var_key_34885, var_value_34887) -> var__34890 {
                /// @src 43:7145:7149  "bool"
                let zero_t_bool_1256 := zero_value_for_split_t_bool()
                var__34890 := zero_t_bool_1256

                /// @src 43:7173:7176  "map"
                let _1257_slot := var_map_34883_slot
                let expr_34893_slot := _1257_slot
                /// @src 43:7173:7183  "map._inner"
                let _1258 := add(expr_34893_slot, 0)
                let _1259_slot := _1258
                let expr_34894_slot := _1259_slot
                /// @src 43:7193:7196  "key"
                let _1260 := var_key_34885
                let expr_34897 := _1260
                /// @src 43:7185:7197  "bytes32(key)"
                let expr_34898 := convert_t_uint256_to_t_bytes32(expr_34897)
                /// @src 43:7223:7228  "value"
                let _1261 := var_value_34887
                let expr_34905 := _1261
                /// @src 43:7215:7229  "uint160(value)"
                let expr_34906 := convert_t_address_to_t_uint160(expr_34905)
                /// @src 43:7207:7230  "uint256(uint160(value))"
                let expr_34907 := convert_t_uint160_to_t_uint256(expr_34906)
                /// @src 43:7199:7231  "bytes32(uint256(uint160(value)))"
                let expr_34908 := convert_t_uint256_to_t_bytes32(expr_34907)
                /// @src 43:7168:7232  "_set(map._inner, bytes32(key), bytes32(uint256(uint160(value))))"
                let _1262_slot := convert_t_struct$_Map_$34550_storage_to_t_struct$_Map_$34550_storage_ptr(expr_34894_slot)
                let expr_34909 := fun__set_34613(_1262_slot, expr_34898, expr_34908)
                /// @src 43:7161:7232  "return _set(map._inner, bytes32(key), bytes32(uint256(uint160(value))))"
                var__34890 := expr_34909
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function array_length_t_array$_t_bytes32_$dyn_storage(value) -> length {

                length := sload(value)

            }

            function store_literal_in_memory_045d6834e6193a687012a3ad777f612279e549b6945364d9d2324f48610d3cbb(memPtr) {

                mstore(add(memPtr, 0), "EnumerableSet: index out of boun")

                mstore(add(memPtr, 32), "ds")

            }

            function abi_encode_t_stringliteral_045d6834e6193a687012a3ad777f612279e549b6945364d9d2324f48610d3cbb_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 34)
                store_literal_in_memory_045d6834e6193a687012a3ad777f612279e549b6945364d9d2324f48610d3cbb(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_045d6834e6193a687012a3ad777f612279e549b6945364d9d2324f48610d3cbb__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_045d6834e6193a687012a3ad777f612279e549b6945364d9d2324f48610d3cbb_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_045d6834e6193a687012a3ad777f612279e549b6945364d9d2324f48610d3cbb(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_045d6834e6193a687012a3ad777f612279e549b6945364d9d2324f48610d3cbb__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function array_dataslot_t_array$_t_bytes32_$dyn_storage(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function array_dataslot_t_bytes_storage_ptr(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function long_byte_array_index_access_no_checks(array, index) -> slot, offset {

                offset := sub(31, mod(index, 0x20))
                let dataArea := array_dataslot_t_bytes_storage_ptr(array)
                slot := add(dataArea, div(index, 0x20))

            }

            function storage_array_index_access_t_array$_t_bytes32_$dyn_storage(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_bytes32_$dyn_storage(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_bytes32_$dyn_storage(array)
                slot := add(dataArea, mul(index, 1))
                offset := 0

            }

            function cleanup_from_storage_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_dynamict_bytes32(slot_value, offset) -> value {
                value := cleanup_from_storage_t_bytes32(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_bytes32(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_bytes32(sload(slot), offset)

            }

            /// @ast-id 35306
            /// @src 44:4481:4682  "function _at(Set storage set, uint256 index) private view returns (bytes32) {..."
            function fun__at_35306(var_set_35284_slot, var_index_35286) -> var__35289 {
                /// @src 44:4548:4555  "bytes32"
                let zero_t_bytes32_1263 := zero_value_for_split_t_bytes32()
                var__35289 := zero_t_bytes32_1263

                /// @src 44:4575:4578  "set"
                let _1264_slot := var_set_35284_slot
                let expr_35292_slot := _1264_slot
                /// @src 44:4575:4586  "set._values"
                let _1265 := add(expr_35292_slot, 0)
                let _1266_slot := _1265
                let expr_35293_slot := _1266_slot
                /// @src 44:4575:4593  "set._values.length"
                let expr_35294 := array_length_t_array$_t_bytes32_$dyn_storage(expr_35293_slot)
                /// @src 44:4596:4601  "index"
                let _1267 := var_index_35286
                let expr_35295 := _1267
                /// @src 44:4575:4601  "set._values.length > index"
                let expr_35296 := gt(cleanup_t_uint256(expr_35294), cleanup_t_uint256(expr_35295))
                /// @src 44:4567:4640  "require(set._values.length > index, \"EnumerableSet: index out of bounds\")"
                require_helper_t_stringliteral_045d6834e6193a687012a3ad777f612279e549b6945364d9d2324f48610d3cbb(expr_35296)
                /// @src 44:4657:4660  "set"
                let _1268_slot := var_set_35284_slot
                let expr_35300_slot := _1268_slot
                /// @src 44:4657:4668  "set._values"
                let _1269 := add(expr_35300_slot, 0)
                let _1270_slot := _1269
                let expr_35301_slot := _1270_slot
                /// @src 44:4669:4674  "index"
                let _1271 := var_index_35286
                let expr_35302 := _1271
                /// @src 44:4657:4675  "set._values[index]"

                let _1272, _1273 := storage_array_index_access_t_array$_t_bytes32_$dyn_storage(expr_35301_slot, expr_35302)
                let _1274 := read_from_storage_split_dynamic_t_bytes32(_1272, _1273)
                let expr_35303 := _1274
                /// @src 44:4650:4675  "return set._values[index]"
                var__35289 := expr_35303
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 34933
            /// @src 43:7398:7538  "function remove(UintToAddressMap storage map, uint256 key) internal returns (bool) {..."
            function fun_remove_34933(var_map_34916_slot, var_key_34918) -> var__34921 {
                /// @src 43:7475:7479  "bool"
                let zero_t_bool_1275 := zero_value_for_split_t_bool()
                var__34921 := zero_t_bool_1275

                /// @src 43:7506:7509  "map"
                let _1276_slot := var_map_34916_slot
                let expr_34924_slot := _1276_slot
                /// @src 43:7506:7516  "map._inner"
                let _1277 := add(expr_34924_slot, 0)
                let _1278_slot := _1277
                let expr_34925_slot := _1278_slot
                /// @src 43:7526:7529  "key"
                let _1279 := var_key_34918
                let expr_34928 := _1279
                /// @src 43:7518:7530  "bytes32(key)"
                let expr_34929 := convert_t_uint256_to_t_bytes32(expr_34928)
                /// @src 43:7498:7531  "_remove(map._inner, bytes32(key))"
                let _1280_slot := convert_t_struct$_Map_$34550_storage_to_t_struct$_Map_$34550_storage_ptr(expr_34925_slot)
                let expr_34930 := fun__remove_34696(_1280_slot, expr_34929)
                /// @src 43:7491:7531  "return _remove(map._inner, bytes32(key))"
                var__34921 := expr_34930
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function store_literal_in_memory_86631030b9066a18616a068fc09fce83d18af4765cb1d2166fa475228f4db155(memPtr) {

                mstore(add(memPtr, 0), "EnumerableMap: index out of boun")

                mstore(add(memPtr, 32), "ds")

            }

            function abi_encode_t_stringliteral_86631030b9066a18616a068fc09fce83d18af4765cb1d2166fa475228f4db155_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 34)
                store_literal_in_memory_86631030b9066a18616a068fc09fce83d18af4765cb1d2166fa475228f4db155(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_86631030b9066a18616a068fc09fce83d18af4765cb1d2166fa475228f4db155__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_86631030b9066a18616a068fc09fce83d18af4765cb1d2166fa475228f4db155_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_86631030b9066a18616a068fc09fce83d18af4765cb1d2166fa475228f4db155(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_86631030b9066a18616a068fc09fce83d18af4765cb1d2166fa475228f4db155__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function array_dataslot_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function storage_array_index_access_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(array)
                slot := add(dataArea, mul(index, 2))
                offset := 0

            }

            function convert_t_struct$_MapEntry_$34541_storage_to_t_struct$_MapEntry_$34541_storage_ptr(value) -> converted {
                converted := value
            }

            function extract_from_storage_value_offset_0_t_bytes32(slot_value) -> value {
                value := cleanup_from_storage_t_bytes32(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_bytes32(slot) -> value {
                value := extract_from_storage_value_offset_0_t_bytes32(sload(slot))

            }

            /// @ast-id 34766
            /// @src 43:4971:5245  "function _at(Map storage map, uint256 index) private view returns (bytes32, bytes32) {..."
            function fun__at_34766(var_map_34733_slot, var_index_34735) -> var__34738, var__34740 {
                /// @src 43:5038:5045  "bytes32"
                let zero_t_bytes32_1281 := zero_value_for_split_t_bytes32()
                var__34738 := zero_t_bytes32_1281
                /// @src 43:5047:5054  "bytes32"
                let zero_t_bytes32_1282 := zero_value_for_split_t_bytes32()
                var__34740 := zero_t_bytes32_1282

                /// @src 43:5074:5077  "map"
                let _1283_slot := var_map_34733_slot
                let expr_34743_slot := _1283_slot
                /// @src 43:5074:5086  "map._entries"
                let _1284 := add(expr_34743_slot, 0)
                let _1285_slot := _1284
                let expr_34744_slot := _1285_slot
                /// @src 43:5074:5093  "map._entries.length"
                let expr_34745 := array_length_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(expr_34744_slot)
                /// @src 43:5096:5101  "index"
                let _1286 := var_index_34735
                let expr_34746 := _1286
                /// @src 43:5074:5101  "map._entries.length > index"
                let expr_34747 := gt(cleanup_t_uint256(expr_34745), cleanup_t_uint256(expr_34746))
                /// @src 43:5066:5140  "require(map._entries.length > index, \"EnumerableMap: index out of bounds\")"
                require_helper_t_stringliteral_86631030b9066a18616a068fc09fce83d18af4765cb1d2166fa475228f4db155(expr_34747)
                /// @src 43:5176:5179  "map"
                let _1287_slot := var_map_34733_slot
                let expr_34754_slot := _1287_slot
                /// @src 43:5176:5188  "map._entries"
                let _1288 := add(expr_34754_slot, 0)
                let _1289_slot := _1288
                let expr_34755_slot := _1289_slot
                /// @src 43:5189:5194  "index"
                let _1290 := var_index_34735
                let expr_34756 := _1290
                /// @src 43:5176:5195  "map._entries[index]"

                let _1291, _1292 := storage_array_index_access_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(expr_34755_slot, expr_34756)
                let _1293_slot := _1291
                let expr_34757_slot := _1293_slot
                /// @src 43:5151:5195  "MapEntry storage entry = map._entries[index]"
                let var_entry_34753_slot := convert_t_struct$_MapEntry_$34541_storage_to_t_struct$_MapEntry_$34541_storage_ptr(expr_34757_slot)
                /// @src 43:5213:5218  "entry"
                let _1294_slot := var_entry_34753_slot
                let expr_34759_slot := _1294_slot
                /// @src 43:5213:5223  "entry._key"
                let _1295 := add(expr_34759_slot, 0)
                let _1296 := read_from_storage_split_offset_0_t_bytes32(_1295)
                let expr_34760 := _1296
                /// @src 43:5212:5238  "(entry._key, entry._value)"
                let expr_34763_component_1 := expr_34760
                /// @src 43:5225:5230  "entry"
                let _1297_slot := var_entry_34753_slot
                let expr_34761_slot := _1297_slot
                /// @src 43:5225:5237  "entry._value"
                let _1298 := add(expr_34761_slot, 1)
                let _1299 := read_from_storage_split_offset_0_t_bytes32(_1298)
                let expr_34762 := _1299
                /// @src 43:5212:5238  "(entry._key, entry._value)"
                let expr_34763_component_2 := expr_34762
                /// @src 43:5205:5238  "return (entry._key, entry._value)"
                var__34738 := expr_34763_component_1
                var__34740 := expr_34763_component_2
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function convert_t_bytes32_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(value)
            }

            function mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(slot , key) -> dataSlot {
                mstore(0, convert_t_bytes32_to_t_bytes32(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function require_helper_t_string_memory_ptr(condition , expr_34863_mpos) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(add(memPtr, 4) , expr_34863_mpos)
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 34875
            /// @src 43:6432:6747  "function _get(Map storage map, bytes32 key, string memory errorMessage) private view returns (bytes32) {..."
            function fun__get_34875(var_map_34843_slot, var_key_34845, var_errorMessage_34847_mpos) -> var__34850 {
                /// @src 43:6526:6533  "bytes32"
                let zero_t_bytes32_1300 := zero_value_for_split_t_bytes32()
                var__34850 := zero_t_bytes32_1300

                /// @src 43:6564:6567  "map"
                let _1301_slot := var_map_34843_slot
                let expr_34854_slot := _1301_slot
                /// @src 43:6564:6576  "map._indexes"
                let _1302 := add(expr_34854_slot, 1)
                let _1303_slot := _1302
                let expr_34855_slot := _1303_slot
                /// @src 43:6577:6580  "key"
                let _1304 := var_key_34845
                let expr_34856 := _1304
                /// @src 43:6564:6581  "map._indexes[key]"
                let _1305 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_34855_slot,expr_34856)
                let _1306 := read_from_storage_split_offset_0_t_uint256(_1305)
                let expr_34857 := _1306
                /// @src 43:6545:6581  "uint256 keyIndex = map._indexes[key]"
                let var_keyIndex_34853 := expr_34857
                /// @src 43:6599:6607  "keyIndex"
                let _1307 := var_keyIndex_34853
                let expr_34860 := _1307
                /// @src 43:6611:6612  "0"
                let expr_34861 := 0x00
                /// @src 43:6599:6612  "keyIndex != 0"
                let expr_34862 := iszero(eq(cleanup_t_uint256(expr_34860), convert_t_rational_0_by_1_to_t_uint256(expr_34861)))
                /// @src 43:6614:6626  "errorMessage"
                let _1308_mpos := var_errorMessage_34847_mpos
                let expr_34863_mpos := _1308_mpos
                /// @src 43:6591:6627  "require(keyIndex != 0, errorMessage)"
                require_helper_t_string_memory_ptr(expr_34862, expr_34863_mpos)
                /// @src 43:6680:6683  "map"
                let _1309_slot := var_map_34843_slot
                let expr_34866_slot := _1309_slot
                /// @src 43:6680:6692  "map._entries"
                let _1310 := add(expr_34866_slot, 0)
                let _1311_slot := _1310
                let expr_34867_slot := _1311_slot
                /// @src 43:6693:6701  "keyIndex"
                let _1312 := var_keyIndex_34853
                let expr_34868 := _1312
                /// @src 43:6704:6705  "1"
                let expr_34869 := 0x01
                /// @src 43:6693:6705  "keyIndex - 1"
                let expr_34870 := checked_sub_t_uint256(expr_34868, convert_t_rational_1_by_1_to_t_uint256(expr_34869))

                /// @src 43:6680:6706  "map._entries[keyIndex - 1]"

                let _1313, _1314 := storage_array_index_access_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(expr_34867_slot, expr_34870)
                let _1315_slot := _1313
                let expr_34871_slot := _1315_slot
                /// @src 43:6680:6713  "map._entries[keyIndex - 1]._value"
                let _1316 := add(expr_34871_slot, 1)
                let _1317 := read_from_storage_split_offset_0_t_bytes32(_1316)
                let expr_34872 := _1317
                /// @src 43:6673:6713  "return map._entries[keyIndex - 1]._value"
                var__34850 := expr_34872
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 35280
            /// @src 44:4042:4149  "function _length(Set storage set) private view returns (uint256) {..."
            function fun__length_35280(var_set_35270_slot) -> var__35273 {
                /// @src 44:4098:4105  "uint256"
                let zero_t_uint256_1318 := zero_value_for_split_t_uint256()
                var__35273 := zero_t_uint256_1318

                /// @src 44:4124:4127  "set"
                let _1319_slot := var_set_35270_slot
                let expr_35275_slot := _1319_slot
                /// @src 44:4124:4135  "set._values"
                let _1320 := add(expr_35275_slot, 0)
                let _1321_slot := _1320
                let expr_35276_slot := _1321_slot
                /// @src 44:4124:4142  "set._values.length"
                let expr_35277 := array_length_t_array$_t_bytes32_$dyn_storage(expr_35276_slot)
                /// @src 44:4117:4142  "return set._values.length"
                var__35273 := expr_35277
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function convert_t_uint160_to_t_contract$_IERC721Receiver_$34533(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IERC721Receiver_$34533(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IERC721Receiver_$34533(value)
            }

            function convert_t_contract$_IERC721Receiver_$34533_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function cleanup_t_uint32(value) -> cleaned {
                cleaned := and(value, 0xffffffff)
            }

            function convert_t_uint32_to_t_bytes4(value) -> converted {
                converted := cleanup_t_bytes4(shift_left_224(cleanup_t_uint32(value)))
            }

            function cleanup_t_address_payable(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function abi_encode_t_address_payable_to_t_address_payable_fromStack(value, pos) {
                mstore(pos, cleanup_t_address_payable(value))
            }

            function abi_encode_tuple_t_address_payable_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_payable_t_address_t_uint256_t_bytes_memory_ptr__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_address_payable_to_t_address_payable_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                mstore(add(headStart, 96), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value3,  tail)

            }

            function copy_literal_to_memory_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(50)
                store_literal_in_memory_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e(add(memPtr, 32))
            }

            function convert_t_stringliteral_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e()
            }

            function cleanup_t_rational_353073666_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_353073666_by_1_to_t_bytes4(value) -> converted {
                converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_353073666_by_1(value)))
            }

            /// @src 36:1064:1117  "bytes4 private constant _ERC721_RECEIVED = 0x150b7a02"
            function constant__ERC721_RECEIVED_22587() -> ret {
                /// @src 36:1107:1117  "0x150b7a02"
                let expr_22586 := 0x150b7a02
                let _1334 := convert_t_rational_353073666_by_1_to_t_bytes4(expr_22586)

                ret := _1334
            }

            /// @ast-id 23455
            /// @src 36:15546:16135  "function _checkOnERC721Received(address from, address to, uint256 tokenId, bytes memory _data)..."
            function fun__checkOnERC721Received_23455(var_from_23400, var_to_23402, var_tokenId_23404, var__data_23406_mpos) -> var__23409 {
                /// @src 36:15666:15670  "bool"
                let zero_t_bool_1322 := zero_value_for_split_t_bool()
                var__23409 := zero_t_bool_1322

                /// @src 36:15691:15693  "to"
                let _1323 := var_to_23402
                let expr_23411 := _1323
                /// @src 36:15691:15704  "to.isContract"
                let expr_23412_self := expr_23411
                /// @src 36:15691:15706  "to.isContract()"
                let expr_23413 := fun_isContract_23511(expr_23412_self)
                /// @src 36:15690:15706  "!to.isContract()"
                let expr_23414 := cleanup_t_bool(iszero(expr_23413))
                /// @src 36:15686:15744  "if (!to.isContract()) {..."
                if expr_23414 {
                    /// @src 36:15729:15733  "true"
                    let expr_23415 := 0x01
                    /// @src 36:15722:15733  "return true"
                    var__23409 := expr_23415
                    leave
                    /// @src 36:15686:15744  "if (!to.isContract()) {..."
                }
                /// @src 36:15779:15781  "to"
                let _1324 := var_to_23402
                let expr_23421 := _1324
                /// @src 36:15779:15794  "to.functionCall"
                let expr_23422_self := expr_23421
                /// @src 36:15847:15849  "to"
                let _1325 := var_to_23402
                let expr_23426 := _1325
                /// @src 36:15831:15850  "IERC721Receiver(to)"
                let expr_23427_address := convert_t_address_to_t_contract$_IERC721Receiver_$34533(expr_23426)
                /// @src 36:15831:15867  "IERC721Receiver(to).onERC721Received"
                let expr_23428_address := convert_t_contract$_IERC721Receiver_$34533_to_t_address(expr_23427_address)
                let expr_23428_functionSelector := 0x150b7a02
                /// @src 36:15831:15876  "IERC721Receiver(to).onERC721Received.selector"
                let expr_23429 := convert_t_uint32_to_t_bytes4(expr_23428_functionSelector)
                /// @src 36:15890:15902  "_msgSender()"
                let expr_23431 := fun__msgSender_6002()
                /// @src 36:15916:15920  "from"
                let _1326 := var_from_23400
                let expr_23432 := _1326
                /// @src 36:15934:15941  "tokenId"
                let _1327 := var_tokenId_23404
                let expr_23433 := _1327
                /// @src 36:15955:15960  "_data"
                let _1328_mpos := var__data_23406_mpos
                let expr_23434_mpos := _1328_mpos
                /// @src 36:15795:15970  "abi.encodeWithSelector(..."

                let expr_23435_mpos := allocate_unbounded()
                let _1329 := add(expr_23435_mpos, 0x20)

                mstore(_1329, expr_23429)
                _1329 := add(_1329, 4)

                let _1330 := abi_encode_tuple_t_address_payable_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_payable_t_address_t_uint256_t_bytes_memory_ptr__fromStack(_1329, expr_23431, expr_23432, expr_23433, expr_23434_mpos)
                mstore(expr_23435_mpos, sub(_1330, add(expr_23435_mpos, 0x20)))
                finalize_allocation(expr_23435_mpos, sub(_1330, expr_23435_mpos))
                /// @src 36:15779:16025  "to.functionCall(abi.encodeWithSelector(..."
                let _1331_mpos := convert_t_stringliteral_1e766a06da43a53d0f4c380e06e5a342e14d5af1bf8501996c844905530ca84e_to_t_string_memory_ptr()
                let expr_23437_mpos := fun_functionCall_23582(expr_23422_self, expr_23435_mpos, _1331_mpos)
                /// @src 36:15753:16025  "bytes memory returndata = to.functionCall(abi.encodeWithSelector(..."
                let var_returndata_23420_mpos := expr_23437_mpos
                /// @src 36:16062:16072  "returndata"
                let _1332_mpos := var_returndata_23420_mpos
                let expr_23443_mpos := _1332_mpos
                /// @src 36:16051:16083  "abi.decode(returndata, (bytes4))"

                let expr_23447 :=  abi_decode_tuple_t_bytes4_fromMemory(add(expr_23443_mpos, 32), add(add(expr_23443_mpos, 32), array_length_t_bytes_memory_ptr(expr_23443_mpos)))
                /// @src 36:16035:16083  "bytes4 retval = abi.decode(returndata, (bytes4))"
                let var_retval_23440 := expr_23447
                /// @src 36:16101:16107  "retval"
                let _1333 := var_retval_23440
                let expr_23449 := _1333
                /// @src 36:16111:16127  "_ERC721_RECEIVED"
                let expr_23450 := constant__ERC721_RECEIVED_22587()
                /// @src 36:16101:16127  "retval == _ERC721_RECEIVED"
                let expr_23451 := eq(cleanup_t_bytes4(expr_23449), cleanup_t_bytes4(expr_23450))
                /// @src 36:16100:16128  "(retval == _ERC721_RECEIVED)"
                let expr_23452 := expr_23451
                /// @src 36:16093:16128  "return (retval == _ERC721_RECEIVED)"
                var__23409 := expr_23452
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function abi_encode_tuple_t_address_t_address_t_uint256__to_t_address_t_address_t_uint256__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

            }

            function store_literal_in_memory_a1c4b1d67db284650e7cfb49cb11ce76848206ad466478425bd3418f8bbb9a86(memPtr) {

                mstore(add(memPtr, 0), "STF")

            }

            function abi_encode_t_stringliteral_a1c4b1d67db284650e7cfb49cb11ce76848206ad466478425bd3418f8bbb9a86_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 3)
                store_literal_in_memory_a1c4b1d67db284650e7cfb49cb11ce76848206ad466478425bd3418f8bbb9a86(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_a1c4b1d67db284650e7cfb49cb11ce76848206ad466478425bd3418f8bbb9a86__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_a1c4b1d67db284650e7cfb49cb11ce76848206ad466478425bd3418f8bbb9a86_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_a1c4b1d67db284650e7cfb49cb11ce76848206ad466478425bd3418f8bbb9a86(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_a1c4b1d67db284650e7cfb49cb11ce76848206ad466478425bd3418f8bbb9a86__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 35784
            /// @src 153:598:956  "function safeTransferFrom(..."
            function fun_safeTransferFrom_35784(var_token_35738, var_from_35740, var_to_35742, var_value_35744) {

                /// @src 153:785:790  "token"
                let _1335 := var_token_35738
                let expr_35751 := _1335
                /// @src 153:785:795  "token.call"
                let expr_35752_address := expr_35751
                /// @src 153:819:847  "IERC20.transferFrom.selector"
                let expr_35757 := 0x23b872dd00000000000000000000000000000000000000000000000000000000
                /// @src 153:849:853  "from"
                let _1336 := var_from_35740
                let expr_35758 := _1336
                /// @src 153:855:857  "to"
                let _1337 := var_to_35742
                let expr_35759 := _1337
                /// @src 153:859:864  "value"
                let _1338 := var_value_35744
                let expr_35760 := _1338
                /// @src 153:796:865  "abi.encodeWithSelector(IERC20.transferFrom.selector, from, to, value)"

                let expr_35761_mpos := allocate_unbounded()
                let _1339 := add(expr_35761_mpos, 0x20)

                mstore(_1339, expr_35757)
                _1339 := add(_1339, 4)

                let _1340 := abi_encode_tuple_t_address_t_address_t_uint256__to_t_address_t_address_t_uint256__fromStack(_1339, expr_35758, expr_35759, expr_35760)
                mstore(expr_35761_mpos, sub(_1340, add(expr_35761_mpos, 0x20)))
                finalize_allocation(expr_35761_mpos, sub(_1340, expr_35761_mpos))
                /// @src 153:785:866  "token.call(abi.encodeWithSelector(IERC20.transferFrom.selector, from, to, value))"

                let _1341 := add(expr_35761_mpos, 0x20)
                let _1342 := mload(expr_35761_mpos)

                let expr_35762_component_1 := call(gas(), expr_35752_address,  0,  _1341, _1342, 0, 0)

                let expr_35762_component_2_mpos := extract_returndata()
                /// @src 153:737:866  "(bool success, bytes memory data) =..."
                let var_success_35748 := expr_35762_component_1
                let var_data_35750_mpos := expr_35762_component_2_mpos
                /// @src 153:884:891  "success"
                let _1343 := var_success_35748
                let expr_35765 := _1343
                /// @src 153:884:941  "success && (data.length == 0 || abi.decode(data, (bool)))"
                let expr_35779 := expr_35765
                if expr_35779 {
                    /// @src 153:896:900  "data"
                    let _1344_mpos := var_data_35750_mpos
                    let expr_35766_mpos := _1344_mpos
                    /// @src 153:896:907  "data.length"
                    let expr_35767 := array_length_t_bytes_memory_ptr(expr_35766_mpos)
                    /// @src 153:911:912  "0"
                    let expr_35768 := 0x00
                    /// @src 153:896:912  "data.length == 0"
                    let expr_35769 := eq(cleanup_t_uint256(expr_35767), convert_t_rational_0_by_1_to_t_uint256(expr_35768))
                    /// @src 153:896:940  "data.length == 0 || abi.decode(data, (bool))"
                    let expr_35777 := expr_35769
                    if iszero(expr_35777) {
                        /// @src 153:927:931  "data"
                        let _1345_mpos := var_data_35750_mpos
                        let expr_35772_mpos := _1345_mpos
                        /// @src 153:916:940  "abi.decode(data, (bool))"

                        let expr_35776 :=  abi_decode_tuple_t_bool_fromMemory(add(expr_35772_mpos, 32), add(add(expr_35772_mpos, 32), array_length_t_bytes_memory_ptr(expr_35772_mpos)))
                        /// @src 153:896:940  "data.length == 0 || abi.decode(data, (bool))"
                        expr_35777 := expr_35776
                    }
                    /// @src 153:895:941  "(data.length == 0 || abi.decode(data, (bool)))"
                    let expr_35778 := expr_35777
                    /// @src 153:884:941  "success && (data.length == 0 || abi.decode(data, (bool)))"
                    expr_35779 := expr_35778
                }
                /// @src 153:876:949  "require(success && (data.length == 0 || abi.decode(data, (bool))), 'STF')"
                require_helper_t_stringliteral_a1c4b1d67db284650e7cfb49cb11ce76848206ad466478425bd3418f8bbb9a86(expr_35779)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 34715
            /// @src 43:4307:4430  "function _contains(Map storage map, bytes32 key) private view returns (bool) {..."
            function fun__contains_34715(var_map_34700_slot, var_key_34702) -> var__34705 {
                /// @src 43:4378:4382  "bool"
                let zero_t_bool_1346 := zero_value_for_split_t_bool()
                var__34705 := zero_t_bool_1346

                /// @src 43:4401:4404  "map"
                let _1347_slot := var_map_34700_slot
                let expr_34707_slot := _1347_slot
                /// @src 43:4401:4413  "map._indexes"
                let _1348 := add(expr_34707_slot, 1)
                let _1349_slot := _1348
                let expr_34708_slot := _1349_slot
                /// @src 43:4414:4417  "key"
                let _1350 := var_key_34702
                let expr_34709 := _1350
                /// @src 43:4401:4418  "map._indexes[key]"
                let _1351 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_34708_slot,expr_34709)
                let _1352 := read_from_storage_split_offset_0_t_uint256(_1351)
                let expr_34710 := _1352
                /// @src 43:4422:4423  "0"
                let expr_34711 := 0x00
                /// @src 43:4401:4423  "map._indexes[key] != 0"
                let expr_34712 := iszero(eq(cleanup_t_uint256(expr_34710), convert_t_rational_0_by_1_to_t_uint256(expr_34711)))
                /// @src 43:4394:4423  "return map._indexes[key] != 0"
                var__34705 := expr_34712
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function cleanup_t_rational_79228162514264337593543950336_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_79228162514264337593543950336_by_1(value)))
            }

            /// @src 107:354:413  "uint256 internal constant Q96 = 0x1000000000000000000000000"
            function constant_Q96_34441() -> ret {
                /// @src 107:386:413  "0x1000000000000000000000000"
                let expr_34440 := 0x01000000000000000000000000
                let _1359 := convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(expr_34440)

                ret := _1359
            }

            function checked_sub_t_uint160(x, y) -> diff {
                x := cleanup_t_uint160(x)
                y := cleanup_t_uint160(y)
                diff := sub(x, y)

                if gt(diff, 0xffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }

            }

            /// @ast-id 24199
            /// @src 147:2036:2419  "function getLiquidityForAmount1(..."
            function fun_getLiquidityForAmount1_24199(var_sqrtRatioAX96_24165, var_sqrtRatioBX96_24167, var_amount1_24169) -> var_liquidity_24172 {
                /// @src 147:2184:2201  "uint128 liquidity"
                let zero_t_uint128_1353 := zero_value_for_split_t_uint128()
                var_liquidity_24172 := zero_t_uint128_1353

                /// @src 147:2217:2230  "sqrtRatioAX96"
                let _1354 := var_sqrtRatioAX96_24165
                let expr_24174 := _1354
                /// @src 147:2233:2246  "sqrtRatioBX96"
                let _1355 := var_sqrtRatioBX96_24167
                let expr_24175 := _1355
                /// @src 147:2217:2246  "sqrtRatioAX96 > sqrtRatioBX96"
                let expr_24176 := gt(cleanup_t_uint160(expr_24174), cleanup_t_uint160(expr_24175))
                /// @src 147:2213:2311  "if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96)"
                if expr_24176 {
                    /// @src 147:2282:2295  "sqrtRatioBX96"
                    let _1356 := var_sqrtRatioBX96_24167
                    let expr_24180 := _1356
                    /// @src 147:2281:2311  "(sqrtRatioBX96, sqrtRatioAX96)"
                    let expr_24182_component_1 := expr_24180
                    /// @src 147:2297:2310  "sqrtRatioAX96"
                    let _1357 := var_sqrtRatioAX96_24165
                    let expr_24181 := _1357
                    /// @src 147:2281:2311  "(sqrtRatioBX96, sqrtRatioAX96)"
                    let expr_24182_component_2 := expr_24181
                    /// @src 147:2248:2311  "(sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96)"
                    var_sqrtRatioBX96_24167 := expr_24182_component_2
                    var_sqrtRatioAX96_24165 := expr_24182_component_1
                    /// @src 147:2213:2311  "if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96)"
                }
                /// @src 147:2338:2346  "FullMath"
                let expr_24187_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                /// @src 147:2354:2361  "amount1"
                let _1358 := var_amount1_24169
                let expr_24189 := _1358
                /// @src 147:2363:2375  "FixedPoint96"
                let expr_24190_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                /// @src 147:2363:2379  "FixedPoint96.Q96"
                let expr_24191 := constant_Q96_34441()
                /// @src 147:2381:2394  "sqrtRatioBX96"
                let _1360 := var_sqrtRatioBX96_24167
                let expr_24192 := _1360
                /// @src 147:2397:2410  "sqrtRatioAX96"
                let _1361 := var_sqrtRatioAX96_24165
                let expr_24193 := _1361
                /// @src 147:2381:2410  "sqrtRatioBX96 - sqrtRatioAX96"
                let expr_24194 := checked_sub_t_uint160(expr_24192, expr_24193)

                /// @src 147:2338:2411  "FullMath.mulDiv(amount1, FixedPoint96.Q96, sqrtRatioBX96 - sqrtRatioAX96)"
                let _1362 := convert_t_uint160_to_t_uint256(expr_24194)
                let expr_24195 := fun_mulDiv_9388(expr_24189, expr_24191, _1362)
                /// @src 147:2328:2412  "toUint128(FullMath.mulDiv(amount1, FixedPoint96.Q96, sqrtRatioBX96 - sqrtRatioAX96))"
                let expr_24196 := fun_toUint128_24116(expr_24195)
                /// @src 147:2321:2412  "return toUint128(FullMath.mulDiv(amount1, FixedPoint96.Q96, sqrtRatioBX96 - sqrtRatioAX96))"
                var_liquidity_24172 := expr_24196
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 24162
            /// @src 147:1122:1597  "function getLiquidityForAmount0(..."
            function fun_getLiquidityForAmount0_24162(var_sqrtRatioAX96_24119, var_sqrtRatioBX96_24121, var_amount0_24123) -> var_liquidity_24126 {
                /// @src 147:1270:1287  "uint128 liquidity"
                let zero_t_uint128_1363 := zero_value_for_split_t_uint128()
                var_liquidity_24126 := zero_t_uint128_1363

                /// @src 147:1303:1316  "sqrtRatioAX96"
                let _1364 := var_sqrtRatioAX96_24119
                let expr_24128 := _1364
                /// @src 147:1319:1332  "sqrtRatioBX96"
                let _1365 := var_sqrtRatioBX96_24121
                let expr_24129 := _1365
                /// @src 147:1303:1332  "sqrtRatioAX96 > sqrtRatioBX96"
                let expr_24130 := gt(cleanup_t_uint160(expr_24128), cleanup_t_uint160(expr_24129))
                /// @src 147:1299:1397  "if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96)"
                if expr_24130 {
                    /// @src 147:1368:1381  "sqrtRatioBX96"
                    let _1366 := var_sqrtRatioBX96_24121
                    let expr_24134 := _1366
                    /// @src 147:1367:1397  "(sqrtRatioBX96, sqrtRatioAX96)"
                    let expr_24136_component_1 := expr_24134
                    /// @src 147:1383:1396  "sqrtRatioAX96"
                    let _1367 := var_sqrtRatioAX96_24119
                    let expr_24135 := _1367
                    /// @src 147:1367:1397  "(sqrtRatioBX96, sqrtRatioAX96)"
                    let expr_24136_component_2 := expr_24135
                    /// @src 147:1334:1397  "(sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96)"
                    var_sqrtRatioBX96_24121 := expr_24136_component_2
                    var_sqrtRatioAX96_24119 := expr_24136_component_1
                    /// @src 147:1299:1397  "if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96)"
                }
                /// @src 147:1430:1438  "FullMath"
                let expr_24142_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                /// @src 147:1446:1459  "sqrtRatioAX96"
                let _1368 := var_sqrtRatioAX96_24119
                let expr_24144 := _1368
                /// @src 147:1461:1474  "sqrtRatioBX96"
                let _1369 := var_sqrtRatioBX96_24121
                let expr_24145 := _1369
                /// @src 147:1476:1488  "FixedPoint96"
                let expr_24146_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FixedPoint96.sol:FixedPoint96")
                /// @src 147:1476:1492  "FixedPoint96.Q96"
                let expr_24147 := constant_Q96_34441()
                /// @src 147:1430:1493  "FullMath.mulDiv(sqrtRatioAX96, sqrtRatioBX96, FixedPoint96.Q96)"
                let _1370 := convert_t_uint160_to_t_uint256(expr_24144)
                let _1371 := convert_t_uint160_to_t_uint256(expr_24145)
                let expr_24148 := fun_mulDiv_9388(_1370, _1371, expr_24147)
                /// @src 147:1407:1493  "uint256 intermediate = FullMath.mulDiv(sqrtRatioAX96, sqrtRatioBX96, FixedPoint96.Q96)"
                let var_intermediate_24141 := expr_24148
                /// @src 147:1520:1528  "FullMath"
                let expr_24151_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                /// @src 147:1536:1543  "amount0"
                let _1372 := var_amount0_24123
                let expr_24153 := _1372
                /// @src 147:1545:1557  "intermediate"
                let _1373 := var_intermediate_24141
                let expr_24154 := _1373
                /// @src 147:1559:1572  "sqrtRatioBX96"
                let _1374 := var_sqrtRatioBX96_24121
                let expr_24155 := _1374
                /// @src 147:1575:1588  "sqrtRatioAX96"
                let _1375 := var_sqrtRatioAX96_24119
                let expr_24156 := _1375
                /// @src 147:1559:1588  "sqrtRatioBX96 - sqrtRatioAX96"
                let expr_24157 := checked_sub_t_uint160(expr_24155, expr_24156)

                /// @src 147:1520:1589  "FullMath.mulDiv(amount0, intermediate, sqrtRatioBX96 - sqrtRatioAX96)"
                let _1376 := convert_t_uint160_to_t_uint256(expr_24157)
                let expr_24158 := fun_mulDiv_9388(expr_24153, expr_24154, _1376)
                /// @src 147:1510:1590  "toUint128(FullMath.mulDiv(amount0, intermediate, sqrtRatioBX96 - sqrtRatioAX96))"
                let expr_24159 := fun_toUint128_24116(expr_24158)
                /// @src 147:1503:1590  "return toUint128(FullMath.mulDiv(amount0, intermediate, sqrtRatioBX96 - sqrtRatioAX96))"
                var_liquidity_24126 := expr_24159
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function prepare_store_t_bytes32(value) -> ret {
                ret := shift_right_0_unsigned(value)
            }

            function update_storage_value_t_bytes32_to_t_bytes32(slot, offset, value_0) {
                let convertedValue_0 := convert_t_bytes32_to_t_bytes32(value_0)
                sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_bytes32(convertedValue_0)))
            }

            function convert_array_t_array$_t_bytes32_$dyn_storage_to_t_array$_t_bytes32_$dyn_storage_ptr(value) -> converted  {
                converted := value

            }

            function panic_error_0x31() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x31)
                revert(0, 0x24)
            }

            function array_length_t_array$_t_bytes32_$dyn_storage_ptr(value) -> length {

                length := sload(value)

            }

            function array_dataslot_t_array$_t_bytes32_$dyn_storage_ptr(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function storage_array_index_access_t_array$_t_bytes32_$dyn_storage_ptr(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_bytes32_$dyn_storage_ptr(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_bytes32_$dyn_storage_ptr(array)
                slot := add(dataArea, mul(index, 1))
                offset := 0

            }

            function storage_set_to_zero_t_bytes32(slot, offset) {
                let zero_0 := zero_value_for_split_t_bytes32()
                update_storage_value_t_bytes32_to_t_bytes32(slot, offset, zero_0)
            }

            function array_pop_t_array$_t_bytes32_$dyn_storage_ptr(array) {
                let oldLen := array_length_t_array$_t_bytes32_$dyn_storage_ptr(array)
                if iszero(oldLen) { panic_error_0x31() }
                let newLen := sub(oldLen, 1)
                let slot, offset := storage_array_index_access_t_array$_t_bytes32_$dyn_storage_ptr(array, newLen)
                storage_set_to_zero_t_bytes32(slot, offset)
                sstore(array, newLen)
            }
            /// @ast-id 35247
            /// @src 44:2241:3753  "function _remove(Set storage set, bytes32 value) private returns (bool) {..."
            function fun__remove_35247(var_set_35170_slot, var_value_35172) -> var__35175 {
                /// @src 44:2307:2311  "bool"
                let zero_t_bool_1377 := zero_value_for_split_t_bool()
                var__35175 := zero_t_bool_1377

                /// @src 44:2444:2447  "set"
                let _1378_slot := var_set_35170_slot
                let expr_35179_slot := _1378_slot
                /// @src 44:2444:2456  "set._indexes"
                let _1379 := add(expr_35179_slot, 1)
                let _1380_slot := _1379
                let expr_35180_slot := _1380_slot
                /// @src 44:2457:2462  "value"
                let _1381 := var_value_35172
                let expr_35181 := _1381
                /// @src 44:2444:2463  "set._indexes[value]"
                let _1382 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_35180_slot,expr_35181)
                let _1383 := read_from_storage_split_offset_0_t_uint256(_1382)
                let expr_35182 := _1383
                /// @src 44:2423:2463  "uint256 valueIndex = set._indexes[value]"
                let var_valueIndex_35178 := expr_35182
                /// @src 44:2478:2488  "valueIndex"
                let _1384 := var_valueIndex_35178
                let expr_35184 := _1384
                /// @src 44:2492:2493  "0"
                let expr_35185 := 0x00
                /// @src 44:2478:2493  "valueIndex != 0"
                let expr_35186 := iszero(eq(cleanup_t_uint256(expr_35184), convert_t_rational_0_by_1_to_t_uint256(expr_35185)))
                /// @src 44:2474:3747  "if (valueIndex != 0) { // Equivalent to contains(set, value)..."
                switch expr_35186
                case 0 {
                    /// @src 44:3731:3736  "false"
                    let expr_35242 := 0x00
                    /// @src 44:3724:3736  "return false"
                    var__35175 := expr_35242
                    leave
                    /// @src 44:2474:3747  "if (valueIndex != 0) { // Equivalent to contains(set, value)..."
                }
                default {
                    /// @src 44:2859:2869  "valueIndex"
                    let _1385 := var_valueIndex_35178
                    let expr_35189 := _1385
                    /// @src 44:2872:2873  "1"
                    let expr_35190 := 0x01
                    /// @src 44:2859:2873  "valueIndex - 1"
                    let expr_35191 := checked_sub_t_uint256(expr_35189, convert_t_rational_1_by_1_to_t_uint256(expr_35190))

                    /// @src 44:2835:2873  "uint256 toDeleteIndex = valueIndex - 1"
                    let var_toDeleteIndex_35188 := expr_35191
                    /// @src 44:2907:2910  "set"
                    let _1386_slot := var_set_35170_slot
                    let expr_35195_slot := _1386_slot
                    /// @src 44:2907:2918  "set._values"
                    let _1387 := add(expr_35195_slot, 0)
                    let _1388_slot := _1387
                    let expr_35196_slot := _1388_slot
                    /// @src 44:2907:2925  "set._values.length"
                    let expr_35197 := array_length_t_array$_t_bytes32_$dyn_storage(expr_35196_slot)
                    /// @src 44:2928:2929  "1"
                    let expr_35198 := 0x01
                    /// @src 44:2907:2929  "set._values.length - 1"
                    let expr_35199 := checked_sub_t_uint256(expr_35197, convert_t_rational_1_by_1_to_t_uint256(expr_35198))

                    /// @src 44:2887:2929  "uint256 lastIndex = set._values.length - 1"
                    let var_lastIndex_35194 := expr_35199
                    /// @src 44:3189:3192  "set"
                    let _1389_slot := var_set_35170_slot
                    let expr_35203_slot := _1389_slot
                    /// @src 44:3189:3200  "set._values"
                    let _1390 := add(expr_35203_slot, 0)
                    let _1391_slot := _1390
                    let expr_35204_slot := _1391_slot
                    /// @src 44:3201:3210  "lastIndex"
                    let _1392 := var_lastIndex_35194
                    let expr_35205 := _1392
                    /// @src 44:3189:3211  "set._values[lastIndex]"

                    let _1393, _1394 := storage_array_index_access_t_array$_t_bytes32_$dyn_storage(expr_35204_slot, expr_35205)
                    let _1395 := read_from_storage_split_dynamic_t_bytes32(_1393, _1394)
                    let expr_35206 := _1395
                    /// @src 44:3169:3211  "bytes32 lastvalue = set._values[lastIndex]"
                    let var_lastvalue_35202 := expr_35206
                    /// @src 44:3332:3341  "lastvalue"
                    let _1396 := var_lastvalue_35202
                    let expr_35213 := _1396
                    /// @src 44:3303:3306  "set"
                    let _1397_slot := var_set_35170_slot
                    let expr_35208_slot := _1397_slot
                    /// @src 44:3303:3314  "set._values"
                    let _1398 := add(expr_35208_slot, 0)
                    let _1399_slot := _1398
                    let expr_35211_slot := _1399_slot
                    /// @src 44:3315:3328  "toDeleteIndex"
                    let _1400 := var_toDeleteIndex_35188
                    let expr_35210 := _1400
                    /// @src 44:3303:3329  "set._values[toDeleteIndex]"

                    let _1401, _1402 := storage_array_index_access_t_array$_t_bytes32_$dyn_storage(expr_35211_slot, expr_35210)
                    /// @src 44:3303:3341  "set._values[toDeleteIndex] = lastvalue"
                    update_storage_value_t_bytes32_to_t_bytes32(_1401, _1402, expr_35213)
                    let expr_35214 := expr_35213
                    /// @src 44:3433:3446  "toDeleteIndex"
                    let _1403 := var_toDeleteIndex_35188
                    let expr_35221 := _1403
                    /// @src 44:3449:3450  "1"
                    let expr_35222 := 0x01
                    /// @src 44:3433:3450  "toDeleteIndex + 1"
                    let expr_35223 := checked_add_t_uint256(expr_35221, convert_t_rational_1_by_1_to_t_uint256(expr_35222))

                    /// @src 44:3407:3410  "set"
                    let _1404_slot := var_set_35170_slot
                    let expr_35216_slot := _1404_slot
                    /// @src 44:3407:3419  "set._indexes"
                    let _1405 := add(expr_35216_slot, 1)
                    let _1406_slot := _1405
                    let expr_35219_slot := _1406_slot
                    /// @src 44:3420:3429  "lastvalue"
                    let _1407 := var_lastvalue_35202
                    let expr_35218 := _1407
                    /// @src 44:3407:3430  "set._indexes[lastvalue]"
                    let _1408 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_35219_slot,expr_35218)
                    /// @src 44:3407:3450  "set._indexes[lastvalue] = toDeleteIndex + 1"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_1408, expr_35223)
                    let expr_35224 := expr_35223
                    /// @src 44:3556:3559  "set"
                    let _1409_slot := var_set_35170_slot
                    let expr_35226_slot := _1409_slot
                    /// @src 44:3556:3567  "set._values"
                    let _1410 := add(expr_35226_slot, 0)
                    let _1411_slot := _1410
                    let expr_35229_slot := _1411_slot
                    /// @src 44:3556:3571  "set._values.pop"
                    let expr_35230_self_slot := convert_array_t_array$_t_bytes32_$dyn_storage_to_t_array$_t_bytes32_$dyn_storage_ptr(expr_35229_slot)
                    array_pop_t_array$_t_bytes32_$dyn_storage_ptr(expr_35230_self_slot)
                    /// @src 44:3648:3651  "set"
                    let _1412_slot := var_set_35170_slot
                    let expr_35233_slot := _1412_slot
                    /// @src 44:3648:3660  "set._indexes"
                    let _1413 := add(expr_35233_slot, 1)
                    let _1414_slot := _1413
                    let expr_35234_slot := _1414_slot
                    /// @src 44:3661:3666  "value"
                    let _1415 := var_value_35172
                    let expr_35235 := _1415
                    /// @src 44:3648:3667  "set._indexes[value]"
                    let _1416 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_35234_slot,expr_35235)
                    /// @src 44:3641:3667  "delete set._indexes[value]"
                    storage_set_to_zero_t_uint256(_1416, 0)
                    /// @src 44:3689:3693  "true"
                    let expr_35239 := 0x01
                    /// @src 44:3682:3693  "return true"
                    var__35175 := expr_35239
                    leave
                    /// @src 44:2474:3747  "if (valueIndex != 0) { // Equivalent to contains(set, value)..."
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function array_push_from_t_bytes32_to_t_array$_t_bytes32_$dyn_storage_ptr(array , value0) {

                let oldLen := sload(array)
                if iszero(lt(oldLen, 18446744073709551616)) { panic_error_0x41() }
                sstore(array, add(oldLen, 1))
                let slot, offset := storage_array_index_access_t_array$_t_bytes32_$dyn_storage_ptr(array, oldLen)
                update_storage_value_t_bytes32_to_t_bytes32(slot, offset , value0)

            }
            /// @ast-id 35166
            /// @src 44:1669:2073  "function _add(Set storage set, bytes32 value) private returns (bool) {..."
            function fun__add_35166(var_set_35128_slot, var_value_35130) -> var__35133 {
                /// @src 44:1732:1736  "bool"
                let zero_t_bool_1417 := zero_value_for_split_t_bool()
                var__35133 := zero_t_bool_1417

                /// @src 44:1763:1766  "set"
                let _1418_slot := var_set_35128_slot
                let expr_35136_slot := _1418_slot
                /// @src 44:1768:1773  "value"
                let _1419 := var_value_35130
                let expr_35137 := _1419
                /// @src 44:1753:1774  "_contains(set, value)"
                let expr_35138 := fun__contains_35266(expr_35136_slot, expr_35137)
                /// @src 44:1752:1774  "!_contains(set, value)"
                let expr_35139 := cleanup_t_bool(iszero(expr_35138))
                /// @src 44:1748:2067  "if (!_contains(set, value)) {..."
                switch expr_35139
                case 0 {
                    /// @src 44:2051:2056  "false"
                    let expr_35161 := 0x00
                    /// @src 44:2044:2056  "return false"
                    var__35133 := expr_35161
                    leave
                    /// @src 44:1748:2067  "if (!_contains(set, value)) {..."
                }
                default {
                    /// @src 44:1790:1793  "set"
                    let _1420_slot := var_set_35128_slot
                    let expr_35140_slot := _1420_slot
                    /// @src 44:1790:1801  "set._values"
                    let _1421 := add(expr_35140_slot, 0)
                    let _1422_slot := _1421
                    let expr_35143_slot := _1422_slot
                    /// @src 44:1790:1806  "set._values.push"
                    let expr_35144_self_slot := convert_array_t_array$_t_bytes32_$dyn_storage_to_t_array$_t_bytes32_$dyn_storage_ptr(expr_35143_slot)
                    /// @src 44:1807:1812  "value"
                    let _1423 := var_value_35130
                    let expr_35145 := _1423
                    /// @src 44:1790:1813  "set._values.push(value)"
                    array_push_from_t_bytes32_to_t_array$_t_bytes32_$dyn_storage_ptr(expr_35144_self_slot, expr_35145)
                    /// @src 44:1970:1973  "set"
                    let _1424_slot := var_set_35128_slot
                    let expr_35153_slot := _1424_slot
                    /// @src 44:1970:1981  "set._values"
                    let _1425 := add(expr_35153_slot, 0)
                    let _1426_slot := _1425
                    let expr_35154_slot := _1426_slot
                    /// @src 44:1970:1988  "set._values.length"
                    let expr_35155 := array_length_t_array$_t_bytes32_$dyn_storage(expr_35154_slot)
                    /// @src 44:1948:1951  "set"
                    let _1427_slot := var_set_35128_slot
                    let expr_35148_slot := _1427_slot
                    /// @src 44:1948:1960  "set._indexes"
                    let _1428 := add(expr_35148_slot, 1)
                    let _1429_slot := _1428
                    let expr_35151_slot := _1429_slot
                    /// @src 44:1961:1966  "value"
                    let _1430 := var_value_35130
                    let expr_35150 := _1430
                    /// @src 44:1948:1967  "set._indexes[value]"
                    let _1431 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_35151_slot,expr_35150)
                    /// @src 44:1948:1988  "set._indexes[value] = set._values.length"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_1431, expr_35155)
                    let expr_35156 := expr_35155
                    /// @src 44:2009:2013  "true"
                    let expr_35158 := 0x01
                    /// @src 44:2002:2013  "return true"
                    var__35133 := expr_35158
                    leave
                    /// @src 44:1748:2067  "if (!_contains(set, value)) {..."
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function update_storage_value_offset_0_t_bytes32_to_t_bytes32(slot, value_0) {
                let convertedValue_0 := convert_t_bytes32_to_t_bytes32(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_bytes32(convertedValue_0)))
            }

            function convert_array_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_to_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(value) -> converted  {
                converted := value

            }

            function allocate_memory_struct_t_struct$_MapEntry_$34541_storage_ptr() -> memPtr {
                memPtr := allocate_memory(64)
            }

            function write_to_memory_t_bytes32(memPtr, value) {
                mstore(memPtr, cleanup_t_bytes32(value))
            }

            function array_dataslot_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function array_length_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(value) -> length {

                length := sload(value)

            }

            function storage_array_index_access_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(array)
                slot := add(dataArea, mul(index, 2))
                offset := 0

            }

            function read_from_memoryt_bytes32(ptr) -> returnValue {

                let value := cleanup_t_bytes32(mload(ptr))

                returnValue :=

                value

            }

            function copy_struct_to_storage_from_t_struct$_MapEntry_$34541_memory_ptr_to_t_struct$_MapEntry_$34541_storage(slot, value) {

                {

                    let memberSlot := add(slot, 0)
                    let memberSrcPtr := add(value, 0)

                    let memberValue_0 := read_from_memoryt_bytes32(memberSrcPtr)

                    update_storage_value_offset_0_t_bytes32_to_t_bytes32(memberSlot, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)
                    let memberSrcPtr := add(value, 32)

                    let memberValue_0 := read_from_memoryt_bytes32(memberSrcPtr)

                    update_storage_value_offset_0_t_bytes32_to_t_bytes32(memberSlot, memberValue_0)

                }

            }

            function update_storage_value_t_struct$_MapEntry_$34541_memory_ptr_to_t_struct$_MapEntry_$34541_storage(slot, offset, value_0) {
                if offset { panic_error_0x00() }
                copy_struct_to_storage_from_t_struct$_MapEntry_$34541_memory_ptr_to_t_struct$_MapEntry_$34541_storage(slot, value_0)
            }

            function array_push_from_t_struct$_MapEntry_$34541_memory_ptr_to_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(array , value0) {

                let oldLen := sload(array)
                if iszero(lt(oldLen, 18446744073709551616)) { panic_error_0x41() }
                sstore(array, add(oldLen, 1))
                let slot, offset := storage_array_index_access_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(array, oldLen)
                update_storage_value_t_struct$_MapEntry_$34541_memory_ptr_to_t_struct$_MapEntry_$34541_storage(slot, offset , value0)

            }
            /// @ast-id 34613
            /// @src 43:1865:2543  "function _set(Map storage map, bytes32 key, bytes32 value) private returns (bool) {..."
            function fun__set_34613(var_map_34554_slot, var_key_34556, var_value_34558) -> var__34561 {
                /// @src 43:1941:1945  "bool"
                let zero_t_bool_1432 := zero_value_for_split_t_bool()
                var__34561 := zero_t_bool_1432

                /// @src 43:2074:2077  "map"
                let _1433_slot := var_map_34554_slot
                let expr_34565_slot := _1433_slot
                /// @src 43:2074:2086  "map._indexes"
                let _1434 := add(expr_34565_slot, 1)
                let _1435_slot := _1434
                let expr_34566_slot := _1435_slot
                /// @src 43:2087:2090  "key"
                let _1436 := var_key_34556
                let expr_34567 := _1436
                /// @src 43:2074:2091  "map._indexes[key]"
                let _1437 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_34566_slot,expr_34567)
                let _1438 := read_from_storage_split_offset_0_t_uint256(_1437)
                let expr_34568 := _1438
                /// @src 43:2055:2091  "uint256 keyIndex = map._indexes[key]"
                let var_keyIndex_34564 := expr_34568
                /// @src 43:2106:2114  "keyIndex"
                let _1439 := var_keyIndex_34564
                let expr_34570 := _1439
                /// @src 43:2118:2119  "0"
                let expr_34571 := 0x00
                /// @src 43:2106:2119  "keyIndex == 0"
                let expr_34572 := eq(cleanup_t_uint256(expr_34570), convert_t_rational_0_by_1_to_t_uint256(expr_34571))
                /// @src 43:2102:2537  "if (keyIndex == 0) { // Equivalent to !contains(map, key)..."
                switch expr_34572
                case 0 {
                    /// @src 43:2495:2500  "value"
                    let _1440 := var_value_34558
                    let expr_34605 := _1440
                    /// @src 43:2459:2462  "map"
                    let _1441_slot := var_map_34554_slot
                    let expr_34597_slot := _1441_slot
                    /// @src 43:2459:2471  "map._entries"
                    let _1442 := add(expr_34597_slot, 0)
                    let _1443_slot := _1442
                    let expr_34602_slot := _1443_slot
                    /// @src 43:2472:2480  "keyIndex"
                    let _1444 := var_keyIndex_34564
                    let expr_34599 := _1444
                    /// @src 43:2483:2484  "1"
                    let expr_34600 := 0x01
                    /// @src 43:2472:2484  "keyIndex - 1"
                    let expr_34601 := checked_sub_t_uint256(expr_34599, convert_t_rational_1_by_1_to_t_uint256(expr_34600))

                    /// @src 43:2459:2485  "map._entries[keyIndex - 1]"

                    let _1445, _1446 := storage_array_index_access_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(expr_34602_slot, expr_34601)
                    let _1447_slot := _1445
                    let expr_34603_slot := _1447_slot
                    /// @src 43:2459:2492  "map._entries[keyIndex - 1]._value"
                    let _1448 := add(expr_34603_slot, 1)
                    /// @src 43:2459:2500  "map._entries[keyIndex - 1]._value = value"
                    update_storage_value_offset_0_t_bytes32_to_t_bytes32(_1448, expr_34605)
                    let expr_34606 := expr_34605
                    /// @src 43:2521:2526  "false"
                    let expr_34608 := 0x00
                    /// @src 43:2514:2526  "return false"
                    var__34561 := expr_34608
                    leave
                    /// @src 43:2102:2537  "if (keyIndex == 0) { // Equivalent to !contains(map, key)..."
                }
                default {
                    /// @src 43:2172:2175  "map"
                    let _1449_slot := var_map_34554_slot
                    let expr_34573_slot := _1449_slot
                    /// @src 43:2172:2184  "map._entries"
                    let _1450 := add(expr_34573_slot, 0)
                    let _1451_slot := _1450
                    let expr_34576_slot := _1451_slot
                    /// @src 43:2172:2189  "map._entries.push"
                    let expr_34577_self_slot := convert_array_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_to_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(expr_34576_slot)
                    /// @src 43:2207:2210  "key"
                    let _1452 := var_key_34556
                    let expr_34579 := _1452
                    /// @src 43:2220:2225  "value"
                    let _1453 := var_value_34558
                    let expr_34580 := _1453
                    /// @src 43:2190:2228  "MapEntry({ _key: key, _value: value })"
                    let expr_34581_mpos := allocate_memory_struct_t_struct$_MapEntry_$34541_storage_ptr()
                    write_to_memory_t_bytes32(add(expr_34581_mpos, 0), expr_34579)
                    write_to_memory_t_bytes32(add(expr_34581_mpos, 32), expr_34580)
                    /// @src 43:2172:2229  "map._entries.push(MapEntry({ _key: key, _value: value }))"
                    array_push_from_t_struct$_MapEntry_$34541_memory_ptr_to_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(expr_34577_self_slot, expr_34581_mpos)
                    /// @src 43:2384:2387  "map"
                    let _1454_slot := var_map_34554_slot
                    let expr_34589_slot := _1454_slot
                    /// @src 43:2384:2396  "map._entries"
                    let _1455 := add(expr_34589_slot, 0)
                    let _1456_slot := _1455
                    let expr_34590_slot := _1456_slot
                    /// @src 43:2384:2403  "map._entries.length"
                    let expr_34591 := array_length_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(expr_34590_slot)
                    /// @src 43:2364:2367  "map"
                    let _1457_slot := var_map_34554_slot
                    let expr_34584_slot := _1457_slot
                    /// @src 43:2364:2376  "map._indexes"
                    let _1458 := add(expr_34584_slot, 1)
                    let _1459_slot := _1458
                    let expr_34587_slot := _1459_slot
                    /// @src 43:2377:2380  "key"
                    let _1460 := var_key_34556
                    let expr_34586 := _1460
                    /// @src 43:2364:2381  "map._indexes[key]"
                    let _1461 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_34587_slot,expr_34586)
                    /// @src 43:2364:2403  "map._indexes[key] = map._entries.length"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_1461, expr_34591)
                    let expr_34592 := expr_34591
                    /// @src 43:2424:2428  "true"
                    let expr_34594 := 0x01
                    /// @src 43:2417:2428  "return true"
                    var__34561 := expr_34594
                    leave
                    /// @src 43:2102:2537  "if (keyIndex == 0) { // Equivalent to !contains(map, key)..."
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function copy_struct_to_storage_from_t_struct$_MapEntry_$34541_storage_ptr_to_t_struct$_MapEntry_$34541_storage(slot, value) {

                if iszero(eq(slot, value)) {

                    {

                        let memberSlot := add(slot, 0)
                        let memberSrcPtr := add(value, 0)

                        let memberValue_0 :=

                        read_from_storage_split_offset_0_t_bytes32(memberSrcPtr)

                        update_storage_value_offset_0_t_bytes32_to_t_bytes32(memberSlot, memberValue_0)

                    }

                    {

                        let memberSlot := add(slot, 1)
                        let memberSrcPtr := add(value, 1)

                        let memberValue_0 :=

                        read_from_storage_split_offset_0_t_bytes32(memberSrcPtr)

                        update_storage_value_offset_0_t_bytes32_to_t_bytes32(memberSlot, memberValue_0)

                    }

                }

            }

            function update_storage_value_t_struct$_MapEntry_$34541_storage_ptr_to_t_struct$_MapEntry_$34541_storage(slot, offset, value_0) {
                if offset { panic_error_0x00() }
                copy_struct_to_storage_from_t_struct$_MapEntry_$34541_storage_ptr_to_t_struct$_MapEntry_$34541_storage(slot, value_0)
            }

            function clear_struct_storage_t_struct$_MapEntry_$34541_storage(slot) {

                storage_set_to_zero_t_bytes32(add(slot, 0), 0)

                storage_set_to_zero_t_bytes32(add(slot, 1), 0)

            }

            function storage_set_to_zero_t_struct$_MapEntry_$34541_storage(slot, offset) {
                if iszero(eq(offset, 0)) { panic_error_0x00() }
                clear_struct_storage_t_struct$_MapEntry_$34541_storage(slot)
            }

            function array_pop_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(array) {
                let oldLen := array_length_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(array)
                if iszero(oldLen) { panic_error_0x31() }
                let newLen := sub(oldLen, 1)
                let slot, offset := storage_array_index_access_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(array, newLen)
                storage_set_to_zero_t_struct$_MapEntry_$34541_storage(slot, offset)
                sstore(array, newLen)
            }
            /// @ast-id 34696
            /// @src 43:2711:4228  "function _remove(Map storage map, bytes32 key) private returns (bool) {..."
            function fun__remove_34696(var_map_34617_slot, var_key_34619) -> var__34622 {
                /// @src 43:2775:2779  "bool"
                let zero_t_bool_1462 := zero_value_for_split_t_bool()
                var__34622 := zero_t_bool_1462

                /// @src 43:2908:2911  "map"
                let _1463_slot := var_map_34617_slot
                let expr_34626_slot := _1463_slot
                /// @src 43:2908:2920  "map._indexes"
                let _1464 := add(expr_34626_slot, 1)
                let _1465_slot := _1464
                let expr_34627_slot := _1465_slot
                /// @src 43:2921:2924  "key"
                let _1466 := var_key_34619
                let expr_34628 := _1466
                /// @src 43:2908:2925  "map._indexes[key]"
                let _1467 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_34627_slot,expr_34628)
                let _1468 := read_from_storage_split_offset_0_t_uint256(_1467)
                let expr_34629 := _1468
                /// @src 43:2889:2925  "uint256 keyIndex = map._indexes[key]"
                let var_keyIndex_34625 := expr_34629
                /// @src 43:2940:2948  "keyIndex"
                let _1469 := var_keyIndex_34625
                let expr_34631 := _1469
                /// @src 43:2952:2953  "0"
                let expr_34632 := 0x00
                /// @src 43:2940:2953  "keyIndex != 0"
                let expr_34633 := iszero(eq(cleanup_t_uint256(expr_34631), convert_t_rational_0_by_1_to_t_uint256(expr_34632)))
                /// @src 43:2936:4222  "if (keyIndex != 0) { // Equivalent to contains(map, key)..."
                switch expr_34633
                case 0 {
                    /// @src 43:4206:4211  "false"
                    let expr_34691 := 0x00
                    /// @src 43:4199:4211  "return false"
                    var__34622 := expr_34691
                    leave
                    /// @src 43:2936:4222  "if (keyIndex != 0) { // Equivalent to contains(map, key)..."
                }
                default {
                    /// @src 43:3320:3328  "keyIndex"
                    let _1470 := var_keyIndex_34625
                    let expr_34636 := _1470
                    /// @src 43:3331:3332  "1"
                    let expr_34637 := 0x01
                    /// @src 43:3320:3332  "keyIndex - 1"
                    let expr_34638 := checked_sub_t_uint256(expr_34636, convert_t_rational_1_by_1_to_t_uint256(expr_34637))

                    /// @src 43:3296:3332  "uint256 toDeleteIndex = keyIndex - 1"
                    let var_toDeleteIndex_34635 := expr_34638
                    /// @src 43:3366:3369  "map"
                    let _1471_slot := var_map_34617_slot
                    let expr_34642_slot := _1471_slot
                    /// @src 43:3366:3378  "map._entries"
                    let _1472 := add(expr_34642_slot, 0)
                    let _1473_slot := _1472
                    let expr_34643_slot := _1473_slot
                    /// @src 43:3366:3385  "map._entries.length"
                    let expr_34644 := array_length_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(expr_34643_slot)
                    /// @src 43:3388:3389  "1"
                    let expr_34645 := 0x01
                    /// @src 43:3366:3389  "map._entries.length - 1"
                    let expr_34646 := checked_sub_t_uint256(expr_34644, convert_t_rational_1_by_1_to_t_uint256(expr_34645))

                    /// @src 43:3346:3389  "uint256 lastIndex = map._entries.length - 1"
                    let var_lastIndex_34641 := expr_34646
                    /// @src 43:3658:3661  "map"
                    let _1474_slot := var_map_34617_slot
                    let expr_34651_slot := _1474_slot
                    /// @src 43:3658:3670  "map._entries"
                    let _1475 := add(expr_34651_slot, 0)
                    let _1476_slot := _1475
                    let expr_34652_slot := _1476_slot
                    /// @src 43:3671:3680  "lastIndex"
                    let _1477 := var_lastIndex_34641
                    let expr_34653 := _1477
                    /// @src 43:3658:3681  "map._entries[lastIndex]"

                    let _1478, _1479 := storage_array_index_access_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(expr_34652_slot, expr_34653)
                    let _1480_slot := _1478
                    let expr_34654_slot := _1480_slot
                    /// @src 43:3629:3681  "MapEntry storage lastEntry = map._entries[lastIndex]"
                    let var_lastEntry_34650_slot := convert_t_struct$_MapEntry_$34541_storage_to_t_struct$_MapEntry_$34541_storage_ptr(expr_34654_slot)
                    /// @src 43:3803:3812  "lastEntry"
                    let _1481_slot := var_lastEntry_34650_slot
                    let expr_34661_slot := _1481_slot
                    /// @src 43:3773:3776  "map"
                    let _1482_slot := var_map_34617_slot
                    let expr_34656_slot := _1482_slot
                    /// @src 43:3773:3785  "map._entries"
                    let _1483 := add(expr_34656_slot, 0)
                    let _1484_slot := _1483
                    let expr_34659_slot := _1484_slot
                    /// @src 43:3786:3799  "toDeleteIndex"
                    let _1485 := var_toDeleteIndex_34635
                    let expr_34658 := _1485
                    /// @src 43:3773:3800  "map._entries[toDeleteIndex]"

                    let _1486, _1487 := storage_array_index_access_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage(expr_34659_slot, expr_34658)
                    /// @src 43:3773:3812  "map._entries[toDeleteIndex] = lastEntry"
                    update_storage_value_t_struct$_MapEntry_$34541_storage_ptr_to_t_struct$_MapEntry_$34541_storage(_1486, _1487, expr_34661_slot)
                    let _1488_slot := _1486
                    let expr_34662_slot := _1488_slot
                    /// @src 43:3909:3922  "toDeleteIndex"
                    let _1489 := var_toDeleteIndex_34635
                    let expr_34670 := _1489
                    /// @src 43:3925:3926  "1"
                    let expr_34671 := 0x01
                    /// @src 43:3909:3926  "toDeleteIndex + 1"
                    let expr_34672 := checked_add_t_uint256(expr_34670, convert_t_rational_1_by_1_to_t_uint256(expr_34671))

                    /// @src 43:3878:3881  "map"
                    let _1490_slot := var_map_34617_slot
                    let expr_34664_slot := _1490_slot
                    /// @src 43:3878:3890  "map._indexes"
                    let _1491 := add(expr_34664_slot, 1)
                    let _1492_slot := _1491
                    let expr_34668_slot := _1492_slot
                    /// @src 43:3891:3900  "lastEntry"
                    let _1493_slot := var_lastEntry_34650_slot
                    let expr_34666_slot := _1493_slot
                    /// @src 43:3891:3905  "lastEntry._key"
                    let _1494 := add(expr_34666_slot, 0)
                    let _1495 := read_from_storage_split_offset_0_t_bytes32(_1494)
                    let expr_34667 := _1495
                    /// @src 43:3878:3906  "map._indexes[lastEntry._key]"
                    let _1496 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_34668_slot,expr_34667)
                    /// @src 43:3878:3926  "map._indexes[lastEntry._key] = toDeleteIndex + 1"
                    update_storage_value_offset_0_t_uint256_to_t_uint256(_1496, expr_34672)
                    let expr_34673 := expr_34672
                    /// @src 43:4032:4035  "map"
                    let _1497_slot := var_map_34617_slot
                    let expr_34675_slot := _1497_slot
                    /// @src 43:4032:4044  "map._entries"
                    let _1498 := add(expr_34675_slot, 0)
                    let _1499_slot := _1498
                    let expr_34678_slot := _1499_slot
                    /// @src 43:4032:4048  "map._entries.pop"
                    let expr_34679_self_slot := convert_array_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_to_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(expr_34678_slot)
                    array_pop_t_array$_t_struct$_MapEntry_$34541_storage_$dyn_storage_ptr(expr_34679_self_slot)
                    /// @src 43:4125:4128  "map"
                    let _1500_slot := var_map_34617_slot
                    let expr_34682_slot := _1500_slot
                    /// @src 43:4125:4137  "map._indexes"
                    let _1501 := add(expr_34682_slot, 1)
                    let _1502_slot := _1501
                    let expr_34683_slot := _1502_slot
                    /// @src 43:4138:4141  "key"
                    let _1503 := var_key_34619
                    let expr_34684 := _1503
                    /// @src 43:4125:4142  "map._indexes[key]"
                    let _1504 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_34683_slot,expr_34684)
                    /// @src 43:4118:4142  "delete map._indexes[key]"
                    storage_set_to_zero_t_uint256(_1504, 0)
                    /// @src 43:4164:4168  "true"
                    let expr_34688 := 0x01
                    /// @src 43:4157:4168  "return true"
                    var__34622 := expr_34688
                    leave
                    /// @src 43:2936:4222  "if (keyIndex != 0) { // Equivalent to contains(map, key)..."
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 23582
            /// @src 41:3610:3803  "function functionCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {..."
            function fun_functionCall_23582(var_target_23565, var_data_23567_mpos, var_errorMessage_23569_mpos) -> var__23572_mpos {
                /// @src 41:3713:3725  "bytes memory"
                let zero_t_bytes_memory_ptr_1505_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var__23572_mpos := zero_t_bytes_memory_ptr_1505_mpos

                /// @src 41:3766:3772  "target"
                let _1506 := var_target_23565
                let expr_23575 := _1506
                /// @src 41:3774:3778  "data"
                let _1507_mpos := var_data_23567_mpos
                let expr_23576_mpos := _1507_mpos
                /// @src 41:3780:3781  "0"
                let expr_23577 := 0x00
                /// @src 41:3783:3795  "errorMessage"
                let _1508_mpos := var_errorMessage_23569_mpos
                let expr_23578_mpos := _1508_mpos
                /// @src 41:3744:3796  "functionCallWithValue(target, data, 0, errorMessage)"
                let _1509 := convert_t_rational_0_by_1_to_t_uint256(expr_23577)
                let expr_23579_mpos := fun_functionCallWithValue_23652(expr_23575, expr_23576_mpos, _1509, expr_23578_mpos)
                /// @src 41:3737:3796  "return functionCallWithValue(target, data, 0, errorMessage)"
                var__23572_mpos := expr_23579_mpos
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 24116
            /// @src 147:544:654  "function toUint128(uint256 x) private pure returns (uint128 y) {..."
            function fun_toUint128_24116(var_x_24098) -> var_y_24101 {
                /// @src 147:596:605  "uint128 y"
                let zero_t_uint128_1510 := zero_value_for_split_t_uint128()
                var_y_24101 := zero_t_uint128_1510

                /// @src 147:638:639  "x"
                let _1511 := var_x_24098
                let expr_24107 := _1511
                /// @src 147:630:640  "uint128(x)"
                let expr_24108 := convert_t_uint256_to_t_uint128(expr_24107)
                /// @src 147:626:640  "y = uint128(x)"
                var_y_24101 := expr_24108
                let expr_24109 := expr_24108
                /// @src 147:625:641  "(y = uint128(x))"
                let expr_24110 := expr_24109
                /// @src 147:645:646  "x"
                let _1512 := var_x_24098
                let expr_24111 := _1512
                /// @src 147:625:646  "(y = uint128(x)) == x"
                let expr_24112 := eq(convert_t_uint128_to_t_uint256(expr_24110), cleanup_t_uint256(expr_24111))
                /// @src 147:617:647  "require((y = uint128(x)) == x)"
                require_helper(expr_24112)

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 35266
            /// @src 44:3834:3961  "function _contains(Set storage set, bytes32 value) private view returns (bool) {..."
            function fun__contains_35266(var_set_35251_slot, var_value_35253) -> var__35256 {
                /// @src 44:3907:3911  "bool"
                let zero_t_bool_1513 := zero_value_for_split_t_bool()
                var__35256 := zero_t_bool_1513

                /// @src 44:3930:3933  "set"
                let _1514_slot := var_set_35251_slot
                let expr_35258_slot := _1514_slot
                /// @src 44:3930:3942  "set._indexes"
                let _1515 := add(expr_35258_slot, 1)
                let _1516_slot := _1515
                let expr_35259_slot := _1516_slot
                /// @src 44:3943:3948  "value"
                let _1517 := var_value_35253
                let expr_35260 := _1517
                /// @src 44:3930:3949  "set._indexes[value]"
                let _1518 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_35259_slot,expr_35260)
                let _1519 := read_from_storage_split_offset_0_t_uint256(_1518)
                let expr_35261 := _1519
                /// @src 44:3953:3954  "0"
                let expr_35262 := 0x00
                /// @src 44:3930:3954  "set._indexes[value] != 0"
                let expr_35263 := iszero(eq(cleanup_t_uint256(expr_35261), convert_t_rational_0_by_1_to_t_uint256(expr_35262)))
                /// @src 44:3923:3954  "return set._indexes[value] != 0"
                var__35256 := expr_35263
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            function convert_t_contract$_Address_$23787_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function store_literal_in_memory_565f1a77334fc4792800921178c71e4521acffab18ff9e7885b49377ee80ab4c(memPtr) {

                mstore(add(memPtr, 0), "Address: insufficient balance fo")

                mstore(add(memPtr, 32), "r call")

            }

            function abi_encode_t_stringliteral_565f1a77334fc4792800921178c71e4521acffab18ff9e7885b49377ee80ab4c_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 38)
                store_literal_in_memory_565f1a77334fc4792800921178c71e4521acffab18ff9e7885b49377ee80ab4c(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_565f1a77334fc4792800921178c71e4521acffab18ff9e7885b49377ee80ab4c__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_565f1a77334fc4792800921178c71e4521acffab18ff9e7885b49377ee80ab4c_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_565f1a77334fc4792800921178c71e4521acffab18ff9e7885b49377ee80ab4c(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_565f1a77334fc4792800921178c71e4521acffab18ff9e7885b49377ee80ab4c__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_cc2e4e38850b7c0a3e942cfed89b71c77302df25bcb2ec297a0c4ff9ff6b90ad(memPtr) {

                mstore(add(memPtr, 0), "Address: call to non-contract")

            }

            function abi_encode_t_stringliteral_cc2e4e38850b7c0a3e942cfed89b71c77302df25bcb2ec297a0c4ff9ff6b90ad_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 29)
                store_literal_in_memory_cc2e4e38850b7c0a3e942cfed89b71c77302df25bcb2ec297a0c4ff9ff6b90ad(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_cc2e4e38850b7c0a3e942cfed89b71c77302df25bcb2ec297a0c4ff9ff6b90ad__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_cc2e4e38850b7c0a3e942cfed89b71c77302df25bcb2ec297a0c4ff9ff6b90ad_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_cc2e4e38850b7c0a3e942cfed89b71c77302df25bcb2ec297a0c4ff9ff6b90ad(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_cc2e4e38850b7c0a3e942cfed89b71c77302df25bcb2ec297a0c4ff9ff6b90ad__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 23652
            /// @src 41:4637:5160  "function functionCallWithValue(address target, bytes memory data, uint256 value, string memory errorMessage) internal returns (bytes memory) {..."
            function fun_functionCallWithValue_23652(var_target_23605, var_data_23607_mpos, var_value_23609, var_errorMessage_23611_mpos) -> var__23614_mpos {
                /// @src 41:4764:4776  "bytes memory"
                let zero_t_bytes_memory_ptr_1520_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var__23614_mpos := zero_t_bytes_memory_ptr_1520_mpos

                /// @src 41:4804:4808  "this"
                let expr_23619_address := address()
                /// @src 41:4796:4809  "address(this)"
                let expr_23620 := convert_t_contract$_Address_$23787_to_t_address(expr_23619_address)
                /// @src 41:4796:4817  "address(this).balance"
                let expr_23621 := balance(expr_23620)
                /// @src 41:4821:4826  "value"
                let _1521 := var_value_23609
                let expr_23622 := _1521
                /// @src 41:4796:4826  "address(this).balance >= value"
                let expr_23623 := iszero(lt(cleanup_t_uint256(expr_23621), cleanup_t_uint256(expr_23622)))
                /// @src 41:4788:4869  "require(address(this).balance >= value, \"Address: insufficient balance for call\")"
                require_helper_t_stringliteral_565f1a77334fc4792800921178c71e4521acffab18ff9e7885b49377ee80ab4c(expr_23623)
                /// @src 41:4898:4904  "target"
                let _1522 := var_target_23605
                let expr_23629 := _1522
                /// @src 41:4887:4905  "isContract(target)"
                let expr_23630 := fun_isContract_23511(expr_23629)
                /// @src 41:4879:4939  "require(isContract(target), \"Address: call to non-contract\")"
                require_helper_t_stringliteral_cc2e4e38850b7c0a3e942cfed89b71c77302df25bcb2ec297a0c4ff9ff6b90ad(expr_23630)
                /// @src 41:5051:5057  "target"
                let _1523 := var_target_23605
                let expr_23638 := _1523
                /// @src 41:5051:5062  "target.call"
                let expr_23639_address := expr_23638
                /// @src 41:5071:5076  "value"
                let _1524 := var_value_23609
                let expr_23640 := _1524
                /// @src 41:5051:5078  "target.call{ value: value }"
                let expr_23641_address := expr_23639_address
                let expr_23641_value := expr_23640
                /// @src 41:5079:5083  "data"
                let _1525_mpos := var_data_23607_mpos
                let expr_23642_mpos := _1525_mpos
                /// @src 41:5051:5084  "target.call{ value: value }(data)"

                let _1526 := add(expr_23642_mpos, 0x20)
                let _1527 := mload(expr_23642_mpos)

                let expr_23643_component_1 := call(gas(), expr_23641_address,  expr_23641_value,  _1526, _1527, 0, 0)

                let expr_23643_component_2_mpos := extract_returndata()
                /// @src 41:5009:5084  "(bool success, bytes memory returndata) = target.call{ value: value }(data)"
                let var_success_23635 := expr_23643_component_1
                let var_returndata_23637_mpos := expr_23643_component_2_mpos
                /// @src 41:5119:5126  "success"
                let _1528 := var_success_23635
                let expr_23646 := _1528
                /// @src 41:5128:5138  "returndata"
                let _1529_mpos := var_returndata_23637_mpos
                let expr_23647_mpos := _1529_mpos
                /// @src 41:5140:5152  "errorMessage"
                let _1530_mpos := var_errorMessage_23611_mpos
                let expr_23648_mpos := _1530_mpos
                /// @src 41:5101:5153  "_verifyCallResult(success, returndata, errorMessage)"
                let expr_23649_mpos := fun__verifyCallResult_23786(expr_23646, expr_23647_mpos, expr_23648_mpos)
                /// @src 41:5094:5153  "return _verifyCallResult(success, returndata, errorMessage)"
                var__23614_mpos := expr_23649_mpos
                leave

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

            /// @ast-id 23786
            /// @src 41:7120:7845  "function _verifyCallResult(bool success, bytes memory returndata, string memory errorMessage) private pure returns(bytes memory) {..."
            function fun__verifyCallResult_23786(var_success_23758, var_returndata_23760_mpos, var_errorMessage_23762_mpos) -> var__23765_mpos {
                /// @src 41:7235:7247  "bytes memory"
                let zero_t_bytes_memory_ptr_1531_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var__23765_mpos := zero_t_bytes_memory_ptr_1531_mpos

                /// @src 41:7263:7270  "success"
                let _1532 := var_success_23758
                let expr_23767 := _1532
                /// @src 41:7259:7839  "if (success) {..."
                switch expr_23767
                case 0 {
                    /// @src 41:7404:7414  "returndata"
                    let _1533_mpos := var_returndata_23760_mpos
                    let expr_23771_mpos := _1533_mpos
                    /// @src 41:7404:7421  "returndata.length"
                    let expr_23772 := array_length_t_bytes_memory_ptr(expr_23771_mpos)
                    /// @src 41:7424:7425  "0"
                    let expr_23773 := 0x00
                    /// @src 41:7404:7425  "returndata.length > 0"
                    let expr_23774 := gt(cleanup_t_uint256(expr_23772), convert_t_rational_0_by_1_to_t_uint256(expr_23773))
                    /// @src 41:7400:7829  "if (returndata.length > 0) {..."
                    switch expr_23774
                    case 0 {
                        /// @src 41:7801:7813  "errorMessage"
                        let _1534_mpos := var_errorMessage_23762_mpos
                        let expr_23778_mpos := _1534_mpos
                        /// @src 41:7794:7814  "revert(errorMessage)"
                        {

                            let _1536 := allocate_unbounded()

                            mstore(_1536, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                            let _1535 := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(add(_1536, 4) , expr_23778_mpos)
                            revert(_1536, sub(_1535, _1536))
                        }/// @src 41:7400:7829  "if (returndata.length > 0) {..."
                    }
                    default {
                        /// @src 41:7602:7756  "assembly {..."
                        {
                            let usr$returndata_size := mload(var_returndata_23760_mpos)
                            revert(add(32, var_returndata_23760_mpos), usr$returndata_size)
                        }
                        /// @src 41:7400:7829  "if (returndata.length > 0) {..."
                    }
                    /// @src 41:7259:7839  "if (success) {..."
                }
                default {
                    /// @src 41:7293:7303  "returndata"
                    let _1537_mpos := var_returndata_23760_mpos
                    let expr_23768_mpos := _1537_mpos
                    /// @src 41:7286:7303  "return returndata"
                    var__23765_mpos := expr_23768_mpos
                    leave
                    /// @src 41:7259:7839  "if (success) {..."
                }

            }
            /// @src 121:883:15365  "contract NonfungiblePositionManager is..."

        }

        data ".metadata" hex"a264697066735822122091bfbc2baf49b750d8dc172a50fafada6901fffd00fe5cc8487af2eac561392464736f6c634300081e0033"
    }

}

