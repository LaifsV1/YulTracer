
/// @use-src 148:"uniswap/v3-periphery-1.3.0/contracts/libraries/NFTDescriptor.sol"
object "NFTDescriptor_12485" {
    code {
        /// @src 148:613:18548  "library NFTDescriptor {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("NFTDescriptor_12485_deployed"), datasize("NFTDescriptor_12485_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("NFTDescriptor_12485_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 148:613:18548  "library NFTDescriptor {..."
        function constructor_NFTDescriptor_12485() {

            /// @src 148:613:18548  "library NFTDescriptor {..."

        }
        /// @src 148:613:18548  "library NFTDescriptor {..."

    }
    /// @use-src 3:"base64-sol-1.0.1/base64.sol", 32:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/math/SafeMath.sol", 33:"openzeppelin-contracts-3.4.1-solc-0.7-2/contracts/math/SignedSafeMath.sol", 46:"openzeppelin-contracts-4.9.3/contracts/utils/Strings.sol", 47:"openzeppelin-contracts-4.9.3/contracts/utils/math/Math.sol", 105:"uniswap/v3-core-1.0.0/contracts/libraries/BitMath.sol", 108:"uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol", 118:"uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol", 146:"uniswap/v3-periphery-1.3.0/contracts/libraries/HexStrings.sol", 148:"uniswap/v3-periphery-1.3.0/contracts/libraries/NFTDescriptor.sol", 149:"uniswap/v3-periphery-1.3.0/contracts/libraries/NFTSVG.sol"
    object "NFTDescriptor_12485_deployed" {
        code {
            /// @src 148:613:18548  "library NFTDescriptor {..."
            mstore(64, 128)

            let called_via_delegatecall := iszero(eq(loadimmutable("library_deploy_address"), address()))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0xc49917d7
                {
                    // constructTokenURI(NFTDescriptor.ConstructTokenURIParams)

                    external_fun_constructTokenURI_10897()
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

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
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

            function array_allocation_size_t_string_memory_ptr(length) -> size {
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

            function abi_decode_available_length_t_string_memory_ptr(src, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_string_memory_ptr(length))
                mstore(array, length)
                let dst := add(array, 0x20)
                if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
                copy_calldata_to_memory_with_cleanup(src, dst, length)
            }

            // string
            function abi_decode_t_string_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := calldataload(offset)
                array := abi_decode_available_length_t_string_memory_ptr(add(offset, 0x20), length, end)
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

            // struct NFTDescriptor.ConstructTokenURIParams
            function abi_decode_t_struct$_ConstructTokenURIParams_$10798_memory_ptr(headStart, end) -> value {
                if slt(sub(end, headStart), 0x01c0) { revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() }
                value := allocate_memory(0x01c0)

                {
                    // tokenId

                    let offset := 0

                    mstore(add(value, 0x00), abi_decode_t_uint256(add(headStart, offset), end))

                }

                {
                    // quoteTokenAddress

                    let offset := 32

                    mstore(add(value, 0x20), abi_decode_t_address(add(headStart, offset), end))

                }

                {
                    // baseTokenAddress

                    let offset := 64

                    mstore(add(value, 0x40), abi_decode_t_address(add(headStart, offset), end))

                }

                {
                    // quoteTokenSymbol

                    let offset := calldataload(add(headStart, 96))
                    if gt(offset, 0xffffffffffffffff) { revert_error_5e8f644817bc4960744f35c15999b6eff64ae702f94b1c46297cfd4e1aec2421() }

                    mstore(add(value, 0x60), abi_decode_t_string_memory_ptr(add(headStart, offset), end))

                }

                {
                    // baseTokenSymbol

                    let offset := calldataload(add(headStart, 128))
                    if gt(offset, 0xffffffffffffffff) { revert_error_5e8f644817bc4960744f35c15999b6eff64ae702f94b1c46297cfd4e1aec2421() }

                    mstore(add(value, 0x80), abi_decode_t_string_memory_ptr(add(headStart, offset), end))

                }

                {
                    // quoteTokenDecimals

                    let offset := 160

                    mstore(add(value, 0xa0), abi_decode_t_uint8(add(headStart, offset), end))

                }

                {
                    // baseTokenDecimals

                    let offset := 192

                    mstore(add(value, 0xc0), abi_decode_t_uint8(add(headStart, offset), end))

                }

                {
                    // flipRatio

                    let offset := 224

                    mstore(add(value, 0xe0), abi_decode_t_bool(add(headStart, offset), end))

                }

                {
                    // tickLower

                    let offset := 256

                    mstore(add(value, 0x0100), abi_decode_t_int24(add(headStart, offset), end))

                }

                {
                    // tickUpper

                    let offset := 288

                    mstore(add(value, 0x0120), abi_decode_t_int24(add(headStart, offset), end))

                }

                {
                    // tickCurrent

                    let offset := 320

                    mstore(add(value, 0x0140), abi_decode_t_int24(add(headStart, offset), end))

                }

                {
                    // tickSpacing

                    let offset := 352

                    mstore(add(value, 0x0160), abi_decode_t_int24(add(headStart, offset), end))

                }

                {
                    // fee

                    let offset := 384

                    mstore(add(value, 0x0180), abi_decode_t_uint24(add(headStart, offset), end))

                }

                {
                    // poolAddress

                    let offset := 416

                    mstore(add(value, 0x01a0), abi_decode_t_address(add(headStart, offset), end))

                }

            }

            function abi_decode_tuple_t_struct$_ConstructTokenURIParams_$10798_memory_ptr(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_struct$_ConstructTokenURIParams_$10798_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack_library(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function copy_memory_to_memory_with_cleanup(src, dst, length) {

                mcopy(dst, src, length)
                mstore(add(dst, length), 0)

            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack_library(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack_library(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack_library(value0,  tail)

            }

            function external_fun_constructTokenURI_10897() {

                let param_0 :=  abi_decode_tuple_t_struct$_ConstructTokenURIParams_$10798_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_constructTokenURI_10897(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_string_memory_ptr() -> ret {
                ret := 96
            }

            function read_from_memoryt_uint24(ptr) -> returnValue {

                let value := cleanup_t_uint24(mload(ptr))

                returnValue :=

                value

            }

            function read_from_memoryt_address(ptr) -> returnValue {

                let value := cleanup_t_address(mload(ptr))

                returnValue :=

                value

            }

            function read_from_memoryt_uint256(ptr) -> returnValue {

                let value := cleanup_t_uint256(mload(ptr))

                returnValue :=

                value

            }

            function convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(value) -> converted  {
                converted := value

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function store_literal_in_memory_14271abadab347880c45d45d3abf3dce36bb4aa23c658e4207d08ac9b3f38832(memPtr) {

                mstore(add(memPtr, 0), 0x7b226e616d65223a220000000000000000000000000000000000000000000000)

            }

            function abi_encode_t_stringliteral_14271abadab347880c45d45d3abf3dce36bb4aa23c658e4207d08ac9b3f38832_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 9)
                store_literal_in_memory_14271abadab347880c45d45d3abf3dce36bb4aa23c658e4207d08ac9b3f38832(pos)
                end := add(pos, 9)
            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, length)
            }

            function store_literal_in_memory_9780691b4087a1893a28b24020f5f6d0c7583060bd6cfeb54b8284a5bf55f11f(memPtr) {

                mstore(add(memPtr, 0), 0x222c20226465736372697074696f6e223a220000000000000000000000000000)

            }

            function abi_encode_t_stringliteral_9780691b4087a1893a28b24020f5f6d0c7583060bd6cfeb54b8284a5bf55f11f_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 18)
                store_literal_in_memory_9780691b4087a1893a28b24020f5f6d0c7583060bd6cfeb54b8284a5bf55f11f(pos)
                end := add(pos, 18)
            }

            function store_literal_in_memory_8d0de490dde571af103e878aa265925a94dd83b4f74e62b617db5ad43a4f76af(memPtr) {

                mstore(add(memPtr, 0), 0x222c2022696d616765223a202200000000000000000000000000000000000000)

            }

            function abi_encode_t_stringliteral_8d0de490dde571af103e878aa265925a94dd83b4f74e62b617db5ad43a4f76af_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 13)
                store_literal_in_memory_8d0de490dde571af103e878aa265925a94dd83b4f74e62b617db5ad43a4f76af(pos)
                end := add(pos, 13)
            }

            function store_literal_in_memory_f90ae014c41cb48231e1f02c314087ff9c479133697911d25c5fe231e237dd14(memPtr) {

                mstore(add(memPtr, 0), "data:image/svg+xml;base64,")

            }

            function abi_encode_t_stringliteral_f90ae014c41cb48231e1f02c314087ff9c479133697911d25c5fe231e237dd14_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 26)
                store_literal_in_memory_f90ae014c41cb48231e1f02c314087ff9c479133697911d25c5fe231e237dd14(pos)
                end := add(pos, 26)
            }

            function store_literal_in_memory_835b459273672627bbafc3a2eded65187a632f4128bdc79e126c7ef579a27475(memPtr) {

                mstore(add(memPtr, 0), 0x227d000000000000000000000000000000000000000000000000000000000000)

            }

            function abi_encode_t_stringliteral_835b459273672627bbafc3a2eded65187a632f4128bdc79e126c7ef579a27475_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 2)
                store_literal_in_memory_835b459273672627bbafc3a2eded65187a632f4128bdc79e126c7ef579a27475(pos)
                end := add(pos, 2)
            }

            function abi_encode_tuple_packed_t_stringliteral_14271abadab347880c45d45d3abf3dce36bb4aa23c658e4207d08ac9b3f38832_t_string_memory_ptr_t_stringliteral_9780691b4087a1893a28b24020f5f6d0c7583060bd6cfeb54b8284a5bf55f11f_t_string_memory_ptr_t_string_memory_ptr_t_stringliteral_8d0de490dde571af103e878aa265925a94dd83b4f74e62b617db5ad43a4f76af_t_stringliteral_f90ae014c41cb48231e1f02c314087ff9c479133697911d25c5fe231e237dd14_t_string_memory_ptr_t_stringliteral_835b459273672627bbafc3a2eded65187a632f4128bdc79e126c7ef579a27475__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2, value3) -> end {

                pos := abi_encode_t_stringliteral_14271abadab347880c45d45d3abf3dce36bb4aa23c658e4207d08ac9b3f38832_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                pos := abi_encode_t_stringliteral_9780691b4087a1893a28b24020f5f6d0c7583060bd6cfeb54b8284a5bf55f11f_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                pos := abi_encode_t_stringliteral_8d0de490dde571af103e878aa265925a94dd83b4f74e62b617db5ad43a4f76af_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_stringliteral_f90ae014c41cb48231e1f02c314087ff9c479133697911d25c5fe231e237dd14_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value3,  pos)

                pos := abi_encode_t_stringliteral_835b459273672627bbafc3a2eded65187a632f4128bdc79e126c7ef579a27475_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                end := pos
            }

            function store_literal_in_memory_bccab2d885f86fda81bfd84dd4248d31f8073b473d187111d36536db073076fa(memPtr) {

                mstore(add(memPtr, 0), "data:application/json;base64,")

            }

            function abi_encode_t_stringliteral_bccab2d885f86fda81bfd84dd4248d31f8073b473d187111d36536db073076fa_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 29)
                store_literal_in_memory_bccab2d885f86fda81bfd84dd4248d31f8073b473d187111d36536db073076fa(pos)
                end := add(pos, 29)
            }

            function abi_encode_tuple_packed_t_stringliteral_bccab2d885f86fda81bfd84dd4248d31f8073b473d187111d36536db073076fa_t_string_memory_ptr__to_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0) -> end {

                pos := abi_encode_t_stringliteral_bccab2d885f86fda81bfd84dd4248d31f8073b473d187111d36536db073076fa_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                end := pos
            }

            function convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(value) -> converted  {
                converted := value

            }

            /// @ast-id 10897
            /// @src 148:1392:3054  "function constructTokenURI(ConstructTokenURIParams memory params) public pure returns (string memory) {..."
            function fun_constructTokenURI_10897(var_params_10801_mpos) -> var__10804_mpos {
                /// @src 148:1479:1492  "string memory"
                let zero_t_string_memory_ptr_1_mpos := zero_value_for_split_t_string_memory_ptr()
                var__10804_mpos := zero_t_string_memory_ptr_1_mpos

                /// @src 148:1538:1544  "params"
                let _2_mpos := var_params_10801_mpos
                let expr_10809_mpos := _2_mpos
                /// @src 148:1565:1571  "params"
                let _3_mpos := var_params_10801_mpos
                let expr_10811_mpos := _3_mpos
                /// @src 148:1565:1575  "params.fee"
                let _4 := add(expr_10811_mpos, 384)
                let _5 := read_from_memoryt_uint24(_4)
                let expr_10812 := _5
                /// @src 148:1546:1576  "feeToPercentString(params.fee)"
                let expr_10813_mpos := fun_feeToPercentString_12117(expr_10812)
                /// @src 148:1525:1577  "generateName(params, feeToPercentString(params.fee))"
                let expr_10814_mpos := fun_generateName_11133(expr_10809_mpos, expr_10813_mpos)
                /// @src 148:1504:1577  "string memory name = generateName(params, feeToPercentString(params.fee))"
                let var_name_10807_mpos := expr_10814_mpos
                /// @src 148:1691:1697  "params"
                let _6_mpos := var_params_10801_mpos
                let expr_10820_mpos := _6_mpos
                /// @src 148:1691:1714  "params.quoteTokenSymbol"
                let _7 := add(expr_10820_mpos, 96)
                let _8_mpos := mload(_7)
                let expr_10821_mpos := _8_mpos
                /// @src 148:1678:1715  "escapeQuotes(params.quoteTokenSymbol)"
                let expr_10822_mpos := fun_escapeQuotes_11001(expr_10821_mpos)
                /// @src 148:1746:1752  "params"
                let _9_mpos := var_params_10801_mpos
                let expr_10824_mpos := _9_mpos
                /// @src 148:1746:1768  "params.baseTokenSymbol"
                let _10 := add(expr_10824_mpos, 128)
                let _11_mpos := mload(_10)
                let expr_10825_mpos := _11_mpos
                /// @src 148:1733:1769  "escapeQuotes(params.baseTokenSymbol)"
                let expr_10826_mpos := fun_escapeQuotes_11001(expr_10825_mpos)
                /// @src 148:1803:1809  "params"
                let _12_mpos := var_params_10801_mpos
                let expr_10828_mpos := _12_mpos
                /// @src 148:1803:1821  "params.poolAddress"
                let _13 := add(expr_10828_mpos, 416)
                let _14 := read_from_memoryt_address(_13)
                let expr_10829 := _14
                /// @src 148:1787:1822  "addressToString(params.poolAddress)"
                let expr_10830_mpos := fun_addressToString_12137(expr_10829)
                /// @src 148:1634:1836  "generateDescriptionPartOne(..."
                let expr_10831_mpos := fun_generateDescriptionPartOne_11030(expr_10822_mpos, expr_10826_mpos, expr_10830_mpos)
                /// @src 148:1587:1836  "string memory descriptionPartOne =..."
                let var_descriptionPartOne_10817_mpos := expr_10831_mpos
                /// @src 148:1937:1943  "params"
                let _15_mpos := var_params_10801_mpos
                let expr_10836_mpos := _15_mpos
                /// @src 148:1937:1951  "params.tokenId"
                let _16 := add(expr_10836_mpos, 0)
                let _17 := read_from_memoryt_uint256(_16)
                let expr_10837 := _17
                /// @src 148:1937:1960  "params.tokenId.toString"
                let expr_10838_self := expr_10837
                /// @src 148:1937:1962  "params.tokenId.toString()"
                let expr_10839_mpos := fun_toString_25008(expr_10838_self)
                /// @src 148:1993:1999  "params"
                let _18_mpos := var_params_10801_mpos
                let expr_10841_mpos := _18_mpos
                /// @src 148:1993:2015  "params.baseTokenSymbol"
                let _19 := add(expr_10841_mpos, 128)
                let _20_mpos := mload(_19)
                let expr_10842_mpos := _20_mpos
                /// @src 148:1980:2016  "escapeQuotes(params.baseTokenSymbol)"
                let expr_10843_mpos := fun_escapeQuotes_11001(expr_10842_mpos)
                /// @src 148:2050:2056  "params"
                let _21_mpos := var_params_10801_mpos
                let expr_10845_mpos := _21_mpos
                /// @src 148:2050:2074  "params.quoteTokenAddress"
                let _22 := add(expr_10845_mpos, 32)
                let _23 := read_from_memoryt_address(_22)
                let expr_10846 := _23
                /// @src 148:2034:2075  "addressToString(params.quoteTokenAddress)"
                let expr_10847_mpos := fun_addressToString_12137(expr_10846)
                /// @src 148:2109:2115  "params"
                let _24_mpos := var_params_10801_mpos
                let expr_10849_mpos := _24_mpos
                /// @src 148:2109:2132  "params.baseTokenAddress"
                let _25 := add(expr_10849_mpos, 64)
                let _26 := read_from_memoryt_address(_25)
                let expr_10850 := _26
                /// @src 148:2093:2133  "addressToString(params.baseTokenAddress)"
                let expr_10851_mpos := fun_addressToString_12137(expr_10850)
                /// @src 148:2170:2176  "params"
                let _27_mpos := var_params_10801_mpos
                let expr_10853_mpos := _27_mpos
                /// @src 148:2170:2180  "params.fee"
                let _28 := add(expr_10853_mpos, 384)
                let _29 := read_from_memoryt_uint24(_28)
                let expr_10854 := _29
                /// @src 148:2151:2181  "feeToPercentString(params.fee)"
                let expr_10855_mpos := fun_feeToPercentString_12117(expr_10854)
                /// @src 148:1893:2195  "generateDescriptionPartTwo(..."
                let expr_10856_mpos := fun_generateDescriptionPartTwo_11065(expr_10839_mpos, expr_10843_mpos, expr_10847_mpos, expr_10851_mpos, expr_10855_mpos)
                /// @src 148:1846:2195  "string memory descriptionPartTwo =..."
                let var_descriptionPartTwo_10834_mpos := expr_10856_mpos
                /// @src 148:2227:2233  "Base64"
                let expr_10860_address := linkersymbol("base64-sol-1.0.1/base64.sol:Base64")
                /// @src 148:2264:2270  "params"
                let _30_mpos := var_params_10801_mpos
                let expr_10865_mpos := _30_mpos
                /// @src 148:2247:2271  "generateSVGImage(params)"
                let expr_10866_mpos := fun_generateSVGImage_12352(expr_10865_mpos)
                /// @src 148:2241:2272  "bytes(generateSVGImage(params))"
                let expr_10867_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_10866_mpos)
                /// @src 148:2227:2273  "Base64.encode(bytes(generateSVGImage(params)))"
                let expr_10868_mpos := fun_encode_24769(expr_10867_mpos)
                /// @src 148:2205:2273  "string memory image = Base64.encode(bytes(generateSVGImage(params)))"
                let var_image_10859_mpos := expr_10868_mpos
                /// @src 148:2418:2424  "Base64"
                let expr_10875_address := linkersymbol("base64-sol-1.0.1/base64.sol:Base64")
                /// @src 148:2587:2591  "name"
                let _31_mpos := var_name_10807_mpos
                let expr_10882_mpos := _31_mpos
                /// @src 148:2679:2697  "descriptionPartOne"
                let _32_mpos := var_descriptionPartOne_10817_mpos
                let expr_10884_mpos := _32_mpos
                /// @src 148:2731:2749  "descriptionPartTwo"
                let _33_mpos := var_descriptionPartTwo_10834_mpos
                let expr_10885_mpos := _33_mpos
                /// @src 148:2894:2899  "image"
                let _34_mpos := var_image_10859_mpos
                let expr_10888_mpos := _34_mpos
                /// @src 148:2492:2967  "abi.encodePacked(..."

                let expr_10890_mpos := allocate_unbounded()
                let _35 := add(expr_10890_mpos, 0x20)

                let _36 := abi_encode_tuple_packed_t_stringliteral_14271abadab347880c45d45d3abf3dce36bb4aa23c658e4207d08ac9b3f38832_t_string_memory_ptr_t_stringliteral_9780691b4087a1893a28b24020f5f6d0c7583060bd6cfeb54b8284a5bf55f11f_t_string_memory_ptr_t_string_memory_ptr_t_stringliteral_8d0de490dde571af103e878aa265925a94dd83b4f74e62b617db5ad43a4f76af_t_stringliteral_f90ae014c41cb48231e1f02c314087ff9c479133697911d25c5fe231e237dd14_t_string_memory_ptr_t_stringliteral_835b459273672627bbafc3a2eded65187a632f4128bdc79e126c7ef579a27475__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_35, expr_10882_mpos, expr_10884_mpos, expr_10885_mpos, expr_10888_mpos)
                mstore(expr_10890_mpos, sub(_36, add(expr_10890_mpos, 0x20)))
                finalize_allocation(expr_10890_mpos, sub(_36, expr_10890_mpos))
                /// @src 148:2457:2993  "bytes(..."
                let expr_10891_mpos := expr_10890_mpos
                /// @src 148:2418:3015  "Base64.encode(..."
                let expr_10892_mpos := fun_encode_24769(expr_10891_mpos)
                /// @src 148:2327:3033  "abi.encodePacked(..."

                let expr_10893_mpos := allocate_unbounded()
                let _37 := add(expr_10893_mpos, 0x20)

                let _38 := abi_encode_tuple_packed_t_stringliteral_bccab2d885f86fda81bfd84dd4248d31f8073b473d187111d36536db073076fa_t_string_memory_ptr__to_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_37, expr_10892_mpos)
                mstore(expr_10893_mpos, sub(_38, add(expr_10893_mpos, 0x20)))
                finalize_allocation(expr_10893_mpos, sub(_38, expr_10893_mpos))
                /// @src 148:2303:3047  "string(..."
                let expr_10894_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_10893_mpos)
                /// @src 148:2284:3047  "return..."
                var__10804_mpos := expr_10894_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_0_by_1_to_t_uint24(value) -> converted {
                converted := cleanup_t_uint24(identity(cleanup_t_rational_0_by_1(value)))
            }

            function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_string_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function store_literal_in_memory_a7ef1a83e8174e17057da195644760ff4d11bbec8ce4f147d9d209eec4ba0d01(memPtr) {

                mstore(add(memPtr, 0), "0%")

            }

            function copy_literal_to_memory_a7ef1a83e8174e17057da195644760ff4d11bbec8ce4f147d9d209eec4ba0d01() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(2)
                store_literal_in_memory_a7ef1a83e8174e17057da195644760ff4d11bbec8ce4f147d9d209eec4ba0d01(add(memPtr, 32))
            }

            function convert_t_stringliteral_a7ef1a83e8174e17057da195644760ff4d11bbec8ce4f147d9d209eec4ba0d01_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_a7ef1a83e8174e17057da195644760ff4d11bbec8ce4f147d9d209eec4ba0d01()
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_uint8() -> ret {
                ret := 0
            }

            function convert_t_rational_0_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_0_by_1(value)))
            }

            function cleanup_t_rational_10_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10_by_1_to_t_uint24(value) -> converted {
                converted := cleanup_t_uint24(identity(cleanup_t_rational_10_by_1(value)))
            }

            function panic_error_0x12() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x12)
                revert(0, 0x24)
            }

            function mod_t_uint24(x, y) -> r {
                x := cleanup_t_uint24(x)
                y := cleanup_t_uint24(y)
                if iszero(y) { panic_error_0x12() }
                r := mod(x, y)
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function increment_t_uint8(value) -> ret {
                value := cleanup_t_uint8(value)
                if eq(value, 0xff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            function checked_div_t_uint24(x, y) -> r {
                x := cleanup_t_uint24(x)
                y := cleanup_t_uint24(y)
                if iszero(y) { panic_error_0x12() }

                r := div(x, y)
            }

            function allocate_memory_struct_t_struct$_DecimalStringParams_$11150_memory_ptr() -> memPtr {
                memPtr := allocate_memory(256)
            }

            function zero_value_for_t_uint256() -> ret {
                ret := 0
            }

            function zero_value_for_t_uint8() -> ret {
                ret := 0
            }

            function zero_value_for_t_bool() -> ret {
                ret := 0
            }

            function allocate_and_zero_memory_struct_t_struct$_DecimalStringParams_$11150_memory_ptr() -> memPtr {
                memPtr := allocate_memory_struct_t_struct$_DecimalStringParams_$11150_memory_ptr()
                let offset := memPtr

                mstore(offset, zero_value_for_t_uint256())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint8())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint8())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint8())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint8())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_uint8())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_bool())
                offset := add(offset, 32)

                mstore(offset, zero_value_for_t_bool())
                offset := add(offset, 32)

            }

            function zero_value_for_split_t_struct$_DecimalStringParams_$11150_memory_ptr() -> ret {
                ret := allocate_and_zero_memory_struct_t_struct$_DecimalStringParams_$11150_memory_ptr()
            }

            function cleanup_t_rational_5_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_5_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_5_by_1(value)))
            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_2_by_1(value)))
            }

            function write_to_memory_t_uint8(memPtr, value) {
                mstore(memPtr, cleanup_t_uint8(value))
            }

            function read_from_memoryt_uint8(ptr) -> returnValue {

                let value := cleanup_t_uint8(mload(ptr))

                returnValue :=

                value

            }

            function convert_t_uint8_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint8(value)))
            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function convert_t_uint256_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_uint256(value)))
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            function write_to_memory_t_bool(memPtr, value) {
                mstore(memPtr, cleanup_t_bool(value))
            }

            function cleanup_t_rational_4_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4_by_1(value)))
            }

            function convert_t_rational_1_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_1_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_uint24_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint24(value)))
            }

            function convert_t_rational_10_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10_by_1(value)))
            }

            function checked_exp_t_rational_10_by_1_t_uint256(exponent) -> power {
                exponent := cleanup_t_uint256(exponent)

                if gt(exponent, 77) { panic_error_0x11() }

                power := exp(10, exponent)
            }

            function write_to_memory_t_uint256(memPtr, value) {
                mstore(memPtr, cleanup_t_uint256(value))
            }

            /// @ast-id 12117
            /// @src 148:13396:15199  "function feeToPercentString(uint24 fee) internal pure returns (string memory) {..."
            function fun_feeToPercentString_12117(var_fee_11846) -> var__11849_mpos {
                /// @src 148:13459:13472  "string memory"
                let zero_t_string_memory_ptr_39_mpos := zero_value_for_split_t_string_memory_ptr()
                var__11849_mpos := zero_t_string_memory_ptr_39_mpos

                /// @src 148:13488:13491  "fee"
                let _40 := var_fee_11846
                let expr_11851 := _40
                /// @src 148:13495:13496  "0"
                let expr_11852 := 0x00
                /// @src 148:13488:13496  "fee == 0"
                let expr_11853 := eq(cleanup_t_uint24(expr_11851), convert_t_rational_0_by_1_to_t_uint24(expr_11852))
                /// @src 148:13484:13534  "if (fee == 0) {..."
                if expr_11853 {
                    /// @src 148:13512:13523  "return '0%'"
                    var__11849_mpos := convert_t_stringliteral_a7ef1a83e8174e17057da195644760ff4d11bbec8ce4f147d9d209eec4ba0d01_to_t_string_memory_ptr()
                    leave
                    /// @src 148:13484:13534  "if (fee == 0) {..."
                }
                /// @src 148:13557:13560  "fee"
                let _41 := var_fee_11846
                let expr_11860 := _41
                /// @src 148:13543:13560  "uint24 temp = fee"
                let var_temp_11859 := expr_11860
                /// @src 148:13570:13584  "uint256 digits"
                let var_digits_11863
                let zero_t_uint256_42 := zero_value_for_split_t_uint256()
                var_digits_11863 := zero_t_uint256_42
                /// @src 148:13594:13610  "uint8 numSigfigs"
                let var_numSigfigs_11866
                let zero_t_uint8_43 := zero_value_for_split_t_uint8()
                var_numSigfigs_11866 := zero_t_uint8_43
                /// @src 148:13620:13915  "while (temp != 0) {..."
                for {
                    } 1 {
                }
                {
                    /// @src 148:13627:13631  "temp"
                    let _44 := var_temp_11859
                    let expr_11868 := _44
                    /// @src 148:13635:13636  "0"
                    let expr_11869 := 0x00
                    /// @src 148:13627:13636  "temp != 0"
                    let expr_11870 := iszero(eq(cleanup_t_uint24(expr_11868), convert_t_rational_0_by_1_to_t_uint24(expr_11869)))
                    if iszero(expr_11870) { break }
                    /// @src 148:13656:13666  "numSigfigs"
                    let _45 := var_numSigfigs_11866
                    let expr_11871 := _45
                    /// @src 148:13669:13670  "0"
                    let expr_11872 := 0x00
                    /// @src 148:13656:13670  "numSigfigs > 0"
                    let expr_11873 := gt(cleanup_t_uint8(expr_11871), convert_t_rational_0_by_1_to_t_uint8(expr_11872))
                    /// @src 148:13652:13859  "if (numSigfigs > 0) {..."
                    switch expr_11873
                    case 0 {
                        /// @src 148:13798:13802  "temp"
                        let _46 := var_temp_11859
                        let expr_11878 := _46
                        /// @src 148:13805:13807  "10"
                        let expr_11879 := 0x0a
                        /// @src 148:13798:13807  "temp % 10"
                        let expr_11880 := mod_t_uint24(expr_11878, convert_t_rational_10_by_1_to_t_uint24(expr_11879))

                        /// @src 148:13811:13812  "0"
                        let expr_11881 := 0x00
                        /// @src 148:13798:13812  "temp % 10 != 0"
                        let expr_11882 := iszero(eq(cleanup_t_uint24(expr_11880), convert_t_rational_0_by_1_to_t_uint24(expr_11881)))
                        /// @src 148:13794:13859  "if (temp % 10 != 0) {..."
                        if expr_11882 {
                            /// @src 148:13832:13844  "numSigfigs++"
                            let _48 := var_numSigfigs_11866
                            let _47 := increment_t_uint8(_48)
                            var_numSigfigs_11866 := _47
                            let expr_11884 := _48
                            /// @src 148:13794:13859  "if (temp % 10 != 0) {..."
                        }
                        /// @src 148:13652:13859  "if (numSigfigs > 0) {..."
                    }
                    default {
                        /// @src 148:13761:13773  "numSigfigs++"
                        let _50 := var_numSigfigs_11866
                        let _49 := increment_t_uint8(_50)
                        var_numSigfigs_11866 := _49
                        let expr_11875 := _50
                        /// @src 148:13652:13859  "if (numSigfigs > 0) {..."
                    }
                    /// @src 148:13872:13880  "digits++"
                    let _52 := var_digits_11863
                    let _51 := increment_t_uint256(_52)
                    var_digits_11863 := _51
                    let expr_11890 := _52
                    /// @src 148:13902:13904  "10"
                    let expr_11893 := 0x0a
                    /// @src 148:13894:13904  "temp /= 10"
                    let _53 := convert_t_rational_10_by_1_to_t_uint24(expr_11893)
                    let _54 := var_temp_11859
                    let expr_11894 := checked_div_t_uint24(_54, _53)

                    var_temp_11859 := expr_11894
                }
                /// @src 148:13925:13958  "DecimalStringParams memory params"
                let var_params_11900_mpos
                let zero_t_struct$_DecimalStringParams_$11150_memory_ptr_55_mpos := zero_value_for_split_t_struct$_DecimalStringParams_$11150_memory_ptr()
                var_params_11900_mpos := zero_t_struct$_DecimalStringParams_$11150_memory_ptr_55_mpos
                /// @src 148:13968:13982  "uint256 nZeros"
                let var_nZeros_11903
                let zero_t_uint256_56 := zero_value_for_split_t_uint256()
                var_nZeros_11903 := zero_t_uint256_56
                /// @src 148:13996:14002  "digits"
                let _57 := var_digits_11863
                let expr_11905 := _57
                /// @src 148:14006:14007  "5"
                let expr_11906 := 0x05
                /// @src 148:13996:14007  "digits >= 5"
                let expr_11907 := iszero(lt(cleanup_t_uint256(expr_11905), convert_t_rational_5_by_1_to_t_uint256(expr_11906)))
                /// @src 148:13992:14971  "if (digits >= 5) {..."
                switch expr_11907
                case 0 {
                    /// @src 148:14638:14639  "5"
                    let expr_12005 := 0x05
                    /// @src 148:14630:14640  "uint256(5)"
                    let expr_12006 := convert_t_rational_5_by_1_to_t_uint256(expr_12005)
                    /// @src 148:14630:14644  "uint256(5).sub"
                    let expr_12007_self := expr_12006
                    /// @src 148:14645:14651  "digits"
                    let _58 := var_digits_11863
                    let expr_12008 := _58
                    /// @src 148:14630:14652  "uint256(5).sub(digits)"
                    let expr_12009 := fun_sub_5837(expr_12007_self, expr_12008)
                    /// @src 148:14621:14652  "nZeros = uint256(5).sub(digits)"
                    var_nZeros_11903 := expr_12009
                    let expr_12010 := expr_12009
                    /// @src 148:14691:14692  "2"
                    let expr_12015 := 0x02
                    /// @src 148:14666:14692  "params.zerosStartIndex = 2"
                    let _59 := convert_t_rational_2_by_1_to_t_uint8(expr_12015)
                    /// @src 148:14666:14672  "params"
                    let _60_mpos := var_params_11900_mpos
                    let expr_12012_mpos := _60_mpos
                    /// @src 148:14666:14688  "params.zerosStartIndex"
                    let _61 := add(expr_12012_mpos, 128)
                    /// @src 148:14666:14692  "params.zerosStartIndex = 2"
                    let _62 := _59
                    write_to_memory_t_uint8(_61, _62)
                    let expr_12016 := _59
                    /// @src 148:14735:14741  "nZeros"
                    let _63 := var_nZeros_11903
                    let expr_12023 := _63
                    /// @src 148:14735:14745  "nZeros.add"
                    let expr_12024_self := expr_12023
                    /// @src 148:14746:14752  "params"
                    let _64_mpos := var_params_11900_mpos
                    let expr_12025_mpos := _64_mpos
                    /// @src 148:14746:14768  "params.zerosStartIndex"
                    let _65 := add(expr_12025_mpos, 128)
                    let _66 := read_from_memoryt_uint8(_65)
                    let expr_12026 := _66
                    /// @src 148:14735:14769  "nZeros.add(params.zerosStartIndex)"
                    let _67 := convert_t_uint8_to_t_uint256(expr_12026)
                    let expr_12027 := fun_add_5815(expr_12024_self, _67)
                    /// @src 148:14735:14773  "nZeros.add(params.zerosStartIndex).sub"
                    let expr_12028_self := expr_12027
                    /// @src 148:14774:14775  "1"
                    let expr_12029 := 0x01
                    /// @src 148:14735:14776  "nZeros.add(params.zerosStartIndex).sub(1)"
                    let _68 := convert_t_rational_1_by_1_to_t_uint256(expr_12029)
                    let expr_12030 := fun_sub_5837(expr_12028_self, _68)
                    /// @src 148:14729:14777  "uint8(nZeros.add(params.zerosStartIndex).sub(1))"
                    let expr_12031 := convert_t_uint256_to_t_uint8(expr_12030)
                    /// @src 148:14706:14712  "params"
                    let _69_mpos := var_params_11900_mpos
                    let expr_12018_mpos := _69_mpos
                    /// @src 148:14706:14726  "params.zerosEndIndex"
                    let _70 := add(expr_12018_mpos, 160)
                    /// @src 148:14706:14777  "params.zerosEndIndex = uint8(nZeros.add(params.zerosStartIndex).sub(1))"
                    let _71 := expr_12031
                    write_to_memory_t_uint8(_70, _71)
                    let expr_12032 := expr_12031
                    /// @src 148:14819:14825  "nZeros"
                    let _72 := var_nZeros_11903
                    let expr_12039 := _72
                    /// @src 148:14819:14829  "nZeros.add"
                    let expr_12040_self := expr_12039
                    /// @src 148:14830:14840  "numSigfigs"
                    let _73 := var_numSigfigs_11866
                    let expr_12041 := _73
                    /// @src 148:14830:14844  "numSigfigs.add"
                    let expr_12042_self := convert_t_uint8_to_t_uint256(expr_12041)
                    /// @src 148:14845:14846  "2"
                    let expr_12043 := 0x02
                    /// @src 148:14830:14847  "numSigfigs.add(2)"
                    let _74 := convert_t_rational_2_by_1_to_t_uint256(expr_12043)
                    let expr_12044 := fun_add_5815(expr_12042_self, _74)
                    /// @src 148:14819:14848  "nZeros.add(numSigfigs.add(2))"
                    let expr_12045 := fun_add_5815(expr_12040_self, expr_12044)
                    /// @src 148:14813:14849  "uint8(nZeros.add(numSigfigs.add(2)))"
                    let expr_12046 := convert_t_uint256_to_t_uint8(expr_12045)
                    /// @src 148:14791:14797  "params"
                    let _75_mpos := var_params_11900_mpos
                    let expr_12034_mpos := _75_mpos
                    /// @src 148:14791:14810  "params.bufferLength"
                    let _76 := add(expr_12034_mpos, 32)
                    /// @src 148:14791:14849  "params.bufferLength = uint8(nZeros.add(numSigfigs.add(2)))"
                    let _77 := expr_12046
                    write_to_memory_t_uint8(_76, _77)
                    let expr_12047 := expr_12046
                    /// @src 148:14891:14897  "params"
                    let _78_mpos := var_params_11900_mpos
                    let expr_12054_mpos := _78_mpos
                    /// @src 148:14891:14910  "params.bufferLength"
                    let _79 := add(expr_12054_mpos, 32)
                    let _80 := read_from_memoryt_uint8(_79)
                    let expr_12055 := _80
                    /// @src 148:14890:14911  "(params.bufferLength)"
                    let expr_12056 := expr_12055
                    /// @src 148:14890:14915  "(params.bufferLength).sub"
                    let expr_12057_self := convert_t_uint8_to_t_uint256(expr_12056)
                    /// @src 148:14916:14917  "2"
                    let expr_12058 := 0x02
                    /// @src 148:14890:14918  "(params.bufferLength).sub(2)"
                    let _81 := convert_t_rational_2_by_1_to_t_uint256(expr_12058)
                    let expr_12059 := fun_sub_5837(expr_12057_self, _81)
                    /// @src 148:14884:14919  "uint8((params.bufferLength).sub(2))"
                    let expr_12060 := convert_t_uint256_to_t_uint8(expr_12059)
                    /// @src 148:14863:14869  "params"
                    let _82_mpos := var_params_11900_mpos
                    let expr_12049_mpos := _82_mpos
                    /// @src 148:14863:14881  "params.sigfigIndex"
                    let _83 := add(expr_12049_mpos, 64)
                    /// @src 148:14863:14919  "params.sigfigIndex = uint8((params.bufferLength).sub(2))"
                    let _84 := expr_12060
                    write_to_memory_t_uint8(_83, _84)
                    let expr_12061 := expr_12060
                    /// @src 148:14956:14960  "true"
                    let expr_12066 := 0x01
                    /// @src 148:14933:14939  "params"
                    let _85_mpos := var_params_11900_mpos
                    let expr_12063_mpos := _85_mpos
                    /// @src 148:14933:14953  "params.isLessThanOne"
                    let _86 := add(expr_12063_mpos, 192)
                    /// @src 148:14933:14960  "params.isLessThanOne = true"
                    let _87 := expr_12066
                    write_to_memory_t_bool(_86, _87)
                    let expr_12067 := expr_12066
                    /// @src 148:13992:14971  "if (digits >= 5) {..."
                }
                default {
                    /// @src 148:14106:14112  "digits"
                    let _88 := var_digits_11863
                    let expr_11910 := _88
                    /// @src 148:14106:14116  "digits.sub"
                    let expr_11911_self := expr_11910
                    /// @src 148:14117:14127  "numSigfigs"
                    let _89 := var_numSigfigs_11866
                    let expr_11912 := _89
                    /// @src 148:14106:14128  "digits.sub(numSigfigs)"
                    let _90 := convert_t_uint8_to_t_uint256(expr_11912)
                    let expr_11913 := fun_sub_5837(expr_11911_self, _90)
                    /// @src 148:14132:14133  "4"
                    let expr_11914 := 0x04
                    /// @src 148:14106:14133  "digits.sub(numSigfigs) >= 4"
                    let expr_11915 := iszero(lt(cleanup_t_uint256(expr_11913), convert_t_rational_4_by_1_to_t_uint256(expr_11914)))
                    /// @src 148:14106:14141  "digits.sub(numSigfigs) >= 4 ? 0 : 1"
                    let expr_11918
                    switch expr_11915
                    case 0 {
                        /// @src 148:14140:14141  "1"
                        let expr_11917 := 0x01
                        /// @src 148:14106:14141  "digits.sub(numSigfigs) >= 4 ? 0 : 1"
                        expr_11918 := convert_t_rational_1_by_1_to_t_uint8(expr_11917)
                    }
                    default {
                        /// @src 148:14136:14137  "0"
                        let expr_11916 := 0x00
                        /// @src 148:14106:14141  "digits.sub(numSigfigs) >= 4 ? 0 : 1"
                        expr_11918 := convert_t_rational_0_by_1_to_t_uint8(expr_11916)
                    }
                    /// @src 148:14083:14141  "uint256 decimalPlace = digits.sub(numSigfigs) >= 4 ? 0 : 1"
                    let var_decimalPlace_11909 := convert_t_uint8_to_t_uint256(expr_11918)
                    /// @src 148:14164:14170  "digits"
                    let _91 := var_digits_11863
                    let expr_11921 := _91
                    /// @src 148:14164:14174  "digits.sub"
                    let expr_11922_self := expr_11921
                    /// @src 148:14175:14176  "5"
                    let expr_11923 := 0x05
                    /// @src 148:14164:14177  "digits.sub(5)"
                    let _92 := convert_t_rational_5_by_1_to_t_uint256(expr_11923)
                    let expr_11924 := fun_sub_5837(expr_11922_self, _92)
                    /// @src 148:14181:14191  "numSigfigs"
                    let _93 := var_numSigfigs_11866
                    let expr_11925 := _93
                    /// @src 148:14181:14195  "numSigfigs.sub"
                    let expr_11926_self := convert_t_uint8_to_t_uint256(expr_11925)
                    /// @src 148:14196:14197  "1"
                    let expr_11927 := 0x01
                    /// @src 148:14181:14198  "numSigfigs.sub(1)"
                    let _94 := convert_t_rational_1_by_1_to_t_uint256(expr_11927)
                    let expr_11928 := fun_sub_5837(expr_11926_self, _94)
                    /// @src 148:14180:14199  "(numSigfigs.sub(1))"
                    let expr_11929 := expr_11928
                    /// @src 148:14164:14199  "digits.sub(5) < (numSigfigs.sub(1))"
                    let expr_11930 := lt(cleanup_t_uint256(expr_11924), cleanup_t_uint256(expr_11929))
                    /// @src 148:14164:14242  "digits.sub(5) < (numSigfigs.sub(1)) ? 0 : digits.sub(5).sub(numSigfigs.sub(1))"
                    let expr_11942
                    switch expr_11930
                    case 0 {
                        /// @src 148:14206:14212  "digits"
                        let _95 := var_digits_11863
                        let expr_11932 := _95
                        /// @src 148:14206:14216  "digits.sub"
                        let expr_11933_self := expr_11932
                        /// @src 148:14217:14218  "5"
                        let expr_11934 := 0x05
                        /// @src 148:14206:14219  "digits.sub(5)"
                        let _96 := convert_t_rational_5_by_1_to_t_uint256(expr_11934)
                        let expr_11935 := fun_sub_5837(expr_11933_self, _96)
                        /// @src 148:14206:14223  "digits.sub(5).sub"
                        let expr_11936_self := expr_11935
                        /// @src 148:14224:14234  "numSigfigs"
                        let _97 := var_numSigfigs_11866
                        let expr_11937 := _97
                        /// @src 148:14224:14238  "numSigfigs.sub"
                        let expr_11938_self := convert_t_uint8_to_t_uint256(expr_11937)
                        /// @src 148:14239:14240  "1"
                        let expr_11939 := 0x01
                        /// @src 148:14224:14241  "numSigfigs.sub(1)"
                        let _98 := convert_t_rational_1_by_1_to_t_uint256(expr_11939)
                        let expr_11940 := fun_sub_5837(expr_11938_self, _98)
                        /// @src 148:14206:14242  "digits.sub(5).sub(numSigfigs.sub(1))"
                        let expr_11941 := fun_sub_5837(expr_11936_self, expr_11940)
                        /// @src 148:14164:14242  "digits.sub(5) < (numSigfigs.sub(1)) ? 0 : digits.sub(5).sub(numSigfigs.sub(1))"
                        expr_11942 := expr_11941
                    }
                    default {
                        /// @src 148:14202:14203  "0"
                        let expr_11931 := 0x00
                        /// @src 148:14164:14242  "digits.sub(5) < (numSigfigs.sub(1)) ? 0 : digits.sub(5).sub(numSigfigs.sub(1))"
                        expr_11942 := convert_t_rational_0_by_1_to_t_uint256(expr_11931)
                    }
                    /// @src 148:14155:14242  "nZeros = digits.sub(5) < (numSigfigs.sub(1)) ? 0 : digits.sub(5).sub(numSigfigs.sub(1))"
                    var_nZeros_11903 := expr_11942
                    let expr_11943 := expr_11942
                    /// @src 148:14281:14291  "numSigfigs"
                    let _99 := var_numSigfigs_11866
                    let expr_11948 := _99
                    /// @src 148:14256:14262  "params"
                    let _100_mpos := var_params_11900_mpos
                    let expr_11945_mpos := _100_mpos
                    /// @src 148:14256:14278  "params.zerosStartIndex"
                    let _101 := add(expr_11945_mpos, 128)
                    /// @src 148:14256:14291  "params.zerosStartIndex = numSigfigs"
                    let _102 := expr_11948
                    write_to_memory_t_uint8(_101, _102)
                    let expr_11949 := expr_11948
                    /// @src 148:14334:14340  "params"
                    let _103_mpos := var_params_11900_mpos
                    let expr_11956_mpos := _103_mpos
                    /// @src 148:14334:14356  "params.zerosStartIndex"
                    let _104 := add(expr_11956_mpos, 128)
                    let _105 := read_from_memoryt_uint8(_104)
                    let expr_11957 := _105
                    /// @src 148:14334:14360  "params.zerosStartIndex.add"
                    let expr_11958_self := convert_t_uint8_to_t_uint256(expr_11957)
                    /// @src 148:14361:14367  "nZeros"
                    let _106 := var_nZeros_11903
                    let expr_11959 := _106
                    /// @src 148:14334:14368  "params.zerosStartIndex.add(nZeros)"
                    let expr_11960 := fun_add_5815(expr_11958_self, expr_11959)
                    /// @src 148:14334:14372  "params.zerosStartIndex.add(nZeros).sub"
                    let expr_11961_self := expr_11960
                    /// @src 148:14373:14374  "1"
                    let expr_11962 := 0x01
                    /// @src 148:14334:14375  "params.zerosStartIndex.add(nZeros).sub(1)"
                    let _107 := convert_t_rational_1_by_1_to_t_uint256(expr_11962)
                    let expr_11963 := fun_sub_5837(expr_11961_self, _107)
                    /// @src 148:14328:14376  "uint8(params.zerosStartIndex.add(nZeros).sub(1))"
                    let expr_11964 := convert_t_uint256_to_t_uint8(expr_11963)
                    /// @src 148:14305:14311  "params"
                    let _108_mpos := var_params_11900_mpos
                    let expr_11951_mpos := _108_mpos
                    /// @src 148:14305:14325  "params.zerosEndIndex"
                    let _109 := add(expr_11951_mpos, 160)
                    /// @src 148:14305:14376  "params.zerosEndIndex = uint8(params.zerosStartIndex.add(nZeros).sub(1))"
                    let _110 := expr_11964
                    write_to_memory_t_uint8(_109, _110)
                    let expr_11965 := expr_11964
                    /// @src 148:14417:14423  "params"
                    let _111_mpos := var_params_11900_mpos
                    let expr_11972_mpos := _111_mpos
                    /// @src 148:14417:14439  "params.zerosStartIndex"
                    let _112 := add(expr_11972_mpos, 128)
                    let _113 := read_from_memoryt_uint8(_112)
                    let expr_11973 := _113
                    /// @src 148:14417:14443  "params.zerosStartIndex.sub"
                    let expr_11974_self := convert_t_uint8_to_t_uint256(expr_11973)
                    /// @src 148:14444:14445  "1"
                    let expr_11975 := 0x01
                    /// @src 148:14417:14446  "params.zerosStartIndex.sub(1)"
                    let _114 := convert_t_rational_1_by_1_to_t_uint256(expr_11975)
                    let expr_11976 := fun_sub_5837(expr_11974_self, _114)
                    /// @src 148:14417:14450  "params.zerosStartIndex.sub(1).add"
                    let expr_11977_self := expr_11976
                    /// @src 148:14451:14463  "decimalPlace"
                    let _115 := var_decimalPlace_11909
                    let expr_11978 := _115
                    /// @src 148:14417:14464  "params.zerosStartIndex.sub(1).add(decimalPlace)"
                    let expr_11979 := fun_add_5815(expr_11977_self, expr_11978)
                    /// @src 148:14411:14465  "uint8(params.zerosStartIndex.sub(1).add(decimalPlace))"
                    let expr_11980 := convert_t_uint256_to_t_uint8(expr_11979)
                    /// @src 148:14390:14396  "params"
                    let _116_mpos := var_params_11900_mpos
                    let expr_11967_mpos := _116_mpos
                    /// @src 148:14390:14408  "params.sigfigIndex"
                    let _117 := add(expr_11967_mpos, 64)
                    /// @src 148:14390:14465  "params.sigfigIndex = uint8(params.zerosStartIndex.sub(1).add(decimalPlace))"
                    let _118 := expr_11980
                    write_to_memory_t_uint8(_117, _118)
                    let expr_11981 := expr_11980
                    /// @src 148:14507:14513  "nZeros"
                    let _119 := var_nZeros_11903
                    let expr_11988 := _119
                    /// @src 148:14507:14517  "nZeros.add"
                    let expr_11989_self := expr_11988
                    /// @src 148:14518:14528  "numSigfigs"
                    let _120 := var_numSigfigs_11866
                    let expr_11990 := _120
                    /// @src 148:14518:14532  "numSigfigs.add"
                    let expr_11991_self := convert_t_uint8_to_t_uint256(expr_11990)
                    /// @src 148:14533:14534  "1"
                    let expr_11992 := 0x01
                    /// @src 148:14518:14535  "numSigfigs.add(1)"
                    let _121 := convert_t_rational_1_by_1_to_t_uint256(expr_11992)
                    let expr_11993 := fun_add_5815(expr_11991_self, _121)
                    /// @src 148:14507:14536  "nZeros.add(numSigfigs.add(1))"
                    let expr_11994 := fun_add_5815(expr_11989_self, expr_11993)
                    /// @src 148:14507:14540  "nZeros.add(numSigfigs.add(1)).add"
                    let expr_11995_self := expr_11994
                    /// @src 148:14541:14553  "decimalPlace"
                    let _122 := var_decimalPlace_11909
                    let expr_11996 := _122
                    /// @src 148:14507:14554  "nZeros.add(numSigfigs.add(1)).add(decimalPlace)"
                    let expr_11997 := fun_add_5815(expr_11995_self, expr_11996)
                    /// @src 148:14501:14555  "uint8(nZeros.add(numSigfigs.add(1)).add(decimalPlace))"
                    let expr_11998 := convert_t_uint256_to_t_uint8(expr_11997)
                    /// @src 148:14479:14485  "params"
                    let _123_mpos := var_params_11900_mpos
                    let expr_11983_mpos := _123_mpos
                    /// @src 148:14479:14498  "params.bufferLength"
                    let _124 := add(expr_11983_mpos, 32)
                    /// @src 148:14479:14555  "params.bufferLength = uint8(nZeros.add(numSigfigs.add(1)).add(decimalPlace))"
                    let _125 := expr_11998
                    write_to_memory_t_uint8(_124, _125)
                    let expr_11999 := expr_11998
                    /// @src 148:13992:14971  "if (digits >= 5) {..."
                }
                /// @src 148:15005:15008  "fee"
                let _126 := var_fee_11846
                let expr_12076 := _126
                /// @src 148:14997:15009  "uint256(fee)"
                let expr_12077 := convert_t_uint24_to_t_uint256(expr_12076)
                /// @src 148:14997:15013  "uint256(fee).div"
                let expr_12078_self := expr_12077
                /// @src 148:15014:15016  "10"
                let expr_12079 := 0x0a
                /// @src 148:15019:15025  "digits"
                let _127 := var_digits_11863
                let expr_12080 := _127
                /// @src 148:15019:15029  "digits.sub"
                let expr_12081_self := expr_12080
                /// @src 148:15030:15040  "numSigfigs"
                let _128 := var_numSigfigs_11866
                let expr_12082 := _128
                /// @src 148:15019:15041  "digits.sub(numSigfigs)"
                let _129 := convert_t_uint8_to_t_uint256(expr_12082)
                let expr_12083 := fun_sub_5837(expr_12081_self, _129)
                /// @src 148:15018:15042  "(digits.sub(numSigfigs))"
                let expr_12084 := expr_12083
                /// @src 148:15014:15042  "10**(digits.sub(numSigfigs))"
                let _130 := convert_t_rational_10_by_1_to_t_uint256(expr_12079)
                let expr_12085 := checked_exp_t_rational_10_by_1_t_uint256(expr_12084)
                /// @src 148:14997:15043  "uint256(fee).div(10**(digits.sub(numSigfigs)))"
                let expr_12086 := fun_div_5893(expr_12078_self, expr_12085)
                /// @src 148:14980:14986  "params"
                let _131_mpos := var_params_11900_mpos
                let expr_12071_mpos := _131_mpos
                /// @src 148:14980:14994  "params.sigfigs"
                let _132 := add(expr_12071_mpos, 0)
                /// @src 148:14980:15043  "params.sigfigs = uint256(fee).div(10**(digits.sub(numSigfigs)))"
                let _133 := expr_12086
                write_to_memory_t_uint256(_132, _133)
                let expr_12087 := expr_12086
                /// @src 148:15072:15076  "true"
                let expr_12092 := 0x01
                /// @src 148:15053:15059  "params"
                let _134_mpos := var_params_11900_mpos
                let expr_12089_mpos := _134_mpos
                /// @src 148:15053:15069  "params.isPercent"
                let _135 := add(expr_12089_mpos, 224)
                /// @src 148:15053:15076  "params.isPercent = true"
                let _136 := expr_12092
                write_to_memory_t_bool(_135, _136)
                let expr_12093 := expr_12092
                /// @src 148:15108:15114  "digits"
                let _137 := var_digits_11863
                let expr_12098 := _137
                /// @src 148:15117:15118  "4"
                let expr_12099 := 0x04
                /// @src 148:15108:15118  "digits > 4"
                let expr_12100 := gt(cleanup_t_uint256(expr_12098), convert_t_rational_4_by_1_to_t_uint256(expr_12099))
                /// @src 148:15108:15145  "digits > 4 ? uint8(digits.sub(4)) : 0"
                let expr_12109
                switch expr_12100
                case 0 {
                    /// @src 148:15144:15145  "0"
                    let expr_12108 := 0x00
                    /// @src 148:15108:15145  "digits > 4 ? uint8(digits.sub(4)) : 0"
                    expr_12109 := convert_t_rational_0_by_1_to_t_uint8(expr_12108)
                }
                default {
                    /// @src 148:15127:15133  "digits"
                    let _138 := var_digits_11863
                    let expr_12103 := _138
                    /// @src 148:15127:15137  "digits.sub"
                    let expr_12104_self := expr_12103
                    /// @src 148:15138:15139  "4"
                    let expr_12105 := 0x04
                    /// @src 148:15127:15140  "digits.sub(4)"
                    let _139 := convert_t_rational_4_by_1_to_t_uint256(expr_12105)
                    let expr_12106 := fun_sub_5837(expr_12104_self, _139)
                    /// @src 148:15121:15141  "uint8(digits.sub(4))"
                    let expr_12107 := convert_t_uint256_to_t_uint8(expr_12106)
                    /// @src 148:15108:15145  "digits > 4 ? uint8(digits.sub(4)) : 0"
                    expr_12109 := expr_12107
                }
                /// @src 148:15086:15092  "params"
                let _140_mpos := var_params_11900_mpos
                let expr_12095_mpos := _140_mpos
                /// @src 148:15086:15105  "params.decimalIndex"
                let _141 := add(expr_12095_mpos, 96)
                /// @src 148:15086:15145  "params.decimalIndex = digits > 4 ? uint8(digits.sub(4)) : 0"
                let _142 := expr_12109
                write_to_memory_t_uint8(_141, _142)
                let expr_12110 := expr_12109
                /// @src 148:15185:15191  "params"
                let _143_mpos := var_params_11900_mpos
                let expr_12113_mpos := _143_mpos
                /// @src 148:15163:15192  "generateDecimalString(params)"
                let expr_12114_mpos := fun_generateDecimalString_11285(expr_12113_mpos)
                /// @src 148:15156:15192  "return generateDecimalString(params)"
                var__11849_mpos := expr_12114_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function read_from_memoryt_bool(ptr) -> returnValue {

                let value := cleanup_t_bool(mload(ptr))

                returnValue :=

                value

            }

            function read_from_memoryt_int24(ptr) -> returnValue {

                let value := cleanup_t_int24(mload(ptr))

                returnValue :=

                value

            }

            function store_literal_in_memory_226dfc1a5fe9e290d6e9f3f9428a87273742abf3197214e7da2101e3357db97d(memPtr) {

                mstore(add(memPtr, 0), "Uniswap - ")

            }

            function abi_encode_t_stringliteral_226dfc1a5fe9e290d6e9f3f9428a87273742abf3197214e7da2101e3357db97d_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 10)
                store_literal_in_memory_226dfc1a5fe9e290d6e9f3f9428a87273742abf3197214e7da2101e3357db97d(pos)
                end := add(pos, 10)
            }

            function store_literal_in_memory_9e7b109ea8329776b4d3d2e2c2bf39b3f7e02ce64c66994d3a0db4ff2e229f54(memPtr) {

                mstore(add(memPtr, 0), " - ")

            }

            function abi_encode_t_stringliteral_9e7b109ea8329776b4d3d2e2c2bf39b3f7e02ce64c66994d3a0db4ff2e229f54_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 3)
                store_literal_in_memory_9e7b109ea8329776b4d3d2e2c2bf39b3f7e02ce64c66994d3a0db4ff2e229f54(pos)
                end := add(pos, 3)
            }

            function store_literal_in_memory_fba9715e477e68952d3f1df7a185b3708aadad50ec10cc793973864023868527(memPtr) {

                mstore(add(memPtr, 0), "/")

            }

            function abi_encode_t_stringliteral_fba9715e477e68952d3f1df7a185b3708aadad50ec10cc793973864023868527_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 1)
                store_literal_in_memory_fba9715e477e68952d3f1df7a185b3708aadad50ec10cc793973864023868527(pos)
                end := add(pos, 1)
            }

            function store_literal_in_memory_63ddde264cc2685372ed87a1dd423ce643b51225262aecd1e20b2c3e7a1c2462(memPtr) {

                mstore(add(memPtr, 0), "<>")

            }

            function abi_encode_t_stringliteral_63ddde264cc2685372ed87a1dd423ce643b51225262aecd1e20b2c3e7a1c2462_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 2)
                store_literal_in_memory_63ddde264cc2685372ed87a1dd423ce643b51225262aecd1e20b2c3e7a1c2462(pos)
                end := add(pos, 2)
            }

            function abi_encode_tuple_packed_t_stringliteral_226dfc1a5fe9e290d6e9f3f9428a87273742abf3197214e7da2101e3357db97d_t_string_memory_ptr_t_stringliteral_9e7b109ea8329776b4d3d2e2c2bf39b3f7e02ce64c66994d3a0db4ff2e229f54_t_string_memory_ptr_t_stringliteral_fba9715e477e68952d3f1df7a185b3708aadad50ec10cc793973864023868527_t_string_memory_ptr_t_stringliteral_9e7b109ea8329776b4d3d2e2c2bf39b3f7e02ce64c66994d3a0db4ff2e229f54_t_string_memory_ptr_t_stringliteral_63ddde264cc2685372ed87a1dd423ce643b51225262aecd1e20b2c3e7a1c2462_t_string_memory_ptr__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2, value3, value4) -> end {

                pos := abi_encode_t_stringliteral_226dfc1a5fe9e290d6e9f3f9428a87273742abf3197214e7da2101e3357db97d_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                pos := abi_encode_t_stringliteral_9e7b109ea8329776b4d3d2e2c2bf39b3f7e02ce64c66994d3a0db4ff2e229f54_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                pos := abi_encode_t_stringliteral_fba9715e477e68952d3f1df7a185b3708aadad50ec10cc793973864023868527_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                pos := abi_encode_t_stringliteral_9e7b109ea8329776b4d3d2e2c2bf39b3f7e02ce64c66994d3a0db4ff2e229f54_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value3,  pos)

                pos := abi_encode_t_stringliteral_63ddde264cc2685372ed87a1dd423ce643b51225262aecd1e20b2c3e7a1c2462_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value4,  pos)

                end := pos
            }

            /// @ast-id 11133
            /// @src 148:5528:6732  "function generateName(ConstructTokenURIParams memory params, string memory feeTier)..."
            function fun_generateName_11133(var_params_11068_mpos, var_feeTier_11070_mpos) -> var__11073_mpos {
                /// @src 148:5658:5671  "string memory"
                let zero_t_string_memory_ptr_144_mpos := zero_value_for_split_t_string_memory_ptr()
                var__11073_mpos := zero_t_string_memory_ptr_144_mpos

                /// @src 148:5802:5809  "feeTier"
                let _145_mpos := var_feeTier_11070_mpos
                let expr_11080_mpos := _145_mpos
                /// @src 148:5871:5877  "params"
                let _146_mpos := var_params_11068_mpos
                let expr_11083_mpos := _146_mpos
                /// @src 148:5871:5894  "params.quoteTokenSymbol"
                let _147 := add(expr_11083_mpos, 96)
                let _148_mpos := mload(_147)
                let expr_11084_mpos := _148_mpos
                /// @src 148:5858:5895  "escapeQuotes(params.quoteTokenSymbol)"
                let expr_11085_mpos := fun_escapeQuotes_11001(expr_11084_mpos)
                /// @src 148:5955:5961  "params"
                let _149_mpos := var_params_11068_mpos
                let expr_11088_mpos := _149_mpos
                /// @src 148:5955:5977  "params.baseTokenSymbol"
                let _150 := add(expr_11088_mpos, 128)
                let _151_mpos := mload(_150)
                let expr_11089_mpos := _151_mpos
                /// @src 148:5942:5978  "escapeQuotes(params.baseTokenSymbol)"
                let expr_11090_mpos := fun_escapeQuotes_11001(expr_11089_mpos)
                /// @src 148:6073:6079  "params"
                let _152_mpos := var_params_11068_mpos
                let expr_11093_mpos := _152_mpos
                /// @src 148:6073:6089  "params.flipRatio"
                let _153 := add(expr_11093_mpos, 224)
                let _154 := read_from_memoryt_bool(_153)
                let expr_11094 := _154
                /// @src 148:6072:6089  "!params.flipRatio"
                let expr_11095 := cleanup_t_bool(iszero(expr_11094))
                /// @src 148:6072:6127  "!params.flipRatio ? params.tickLower : params.tickUpper"
                let expr_11100
                switch expr_11095
                case 0 {
                    /// @src 148:6111:6117  "params"
                    let _155_mpos := var_params_11068_mpos
                    let expr_11098_mpos := _155_mpos
                    /// @src 148:6111:6127  "params.tickUpper"
                    let _156 := add(expr_11098_mpos, 288)
                    let _157 := read_from_memoryt_int24(_156)
                    let expr_11099 := _157
                    /// @src 148:6072:6127  "!params.flipRatio ? params.tickLower : params.tickUpper"
                    expr_11100 := expr_11099
                }
                default {
                    /// @src 148:6092:6098  "params"
                    let _158_mpos := var_params_11068_mpos
                    let expr_11096_mpos := _158_mpos
                    /// @src 148:6092:6108  "params.tickLower"
                    let _159 := add(expr_11096_mpos, 256)
                    let _160 := read_from_memoryt_int24(_159)
                    let expr_11097 := _160
                    /// @src 148:6072:6127  "!params.flipRatio ? params.tickLower : params.tickUpper"
                    expr_11100 := expr_11097
                }
                /// @src 148:6153:6159  "params"
                let _161_mpos := var_params_11068_mpos
                let expr_11101_mpos := _161_mpos
                /// @src 148:6153:6171  "params.tickSpacing"
                let _162 := add(expr_11101_mpos, 352)
                let _163 := read_from_memoryt_int24(_162)
                let expr_11102 := _163
                /// @src 148:6197:6203  "params"
                let _164_mpos := var_params_11068_mpos
                let expr_11103_mpos := _164_mpos
                /// @src 148:6197:6221  "params.baseTokenDecimals"
                let _165 := add(expr_11103_mpos, 192)
                let _166 := read_from_memoryt_uint8(_165)
                let expr_11104 := _166
                /// @src 148:6247:6253  "params"
                let _167_mpos := var_params_11068_mpos
                let expr_11105_mpos := _167_mpos
                /// @src 148:6247:6272  "params.quoteTokenDecimals"
                let _168 := add(expr_11105_mpos, 160)
                let _169 := read_from_memoryt_uint8(_168)
                let expr_11106 := _169
                /// @src 148:6298:6304  "params"
                let _170_mpos := var_params_11068_mpos
                let expr_11107_mpos := _170_mpos
                /// @src 148:6298:6314  "params.flipRatio"
                let _171 := add(expr_11107_mpos, 224)
                let _172 := read_from_memoryt_bool(_171)
                let expr_11108 := _172
                /// @src 148:6027:6336  "tickToDecimalString(..."
                let expr_11109_mpos := fun_tickToDecimalString_11367(expr_11100, expr_11102, expr_11104, expr_11106, expr_11108)
                /// @src 148:6430:6436  "params"
                let _173_mpos := var_params_11068_mpos
                let expr_11112_mpos := _173_mpos
                /// @src 148:6430:6446  "params.flipRatio"
                let _174 := add(expr_11112_mpos, 224)
                let _175 := read_from_memoryt_bool(_174)
                let expr_11113 := _175
                /// @src 148:6429:6446  "!params.flipRatio"
                let expr_11114 := cleanup_t_bool(iszero(expr_11113))
                /// @src 148:6429:6484  "!params.flipRatio ? params.tickUpper : params.tickLower"
                let expr_11119
                switch expr_11114
                case 0 {
                    /// @src 148:6468:6474  "params"
                    let _176_mpos := var_params_11068_mpos
                    let expr_11117_mpos := _176_mpos
                    /// @src 148:6468:6484  "params.tickLower"
                    let _177 := add(expr_11117_mpos, 256)
                    let _178 := read_from_memoryt_int24(_177)
                    let expr_11118 := _178
                    /// @src 148:6429:6484  "!params.flipRatio ? params.tickUpper : params.tickLower"
                    expr_11119 := expr_11118
                }
                default {
                    /// @src 148:6449:6455  "params"
                    let _179_mpos := var_params_11068_mpos
                    let expr_11115_mpos := _179_mpos
                    /// @src 148:6449:6465  "params.tickUpper"
                    let _180 := add(expr_11115_mpos, 288)
                    let _181 := read_from_memoryt_int24(_180)
                    let expr_11116 := _181
                    /// @src 148:6429:6484  "!params.flipRatio ? params.tickUpper : params.tickLower"
                    expr_11119 := expr_11116
                }
                /// @src 148:6510:6516  "params"
                let _182_mpos := var_params_11068_mpos
                let expr_11120_mpos := _182_mpos
                /// @src 148:6510:6528  "params.tickSpacing"
                let _183 := add(expr_11120_mpos, 352)
                let _184 := read_from_memoryt_int24(_183)
                let expr_11121 := _184
                /// @src 148:6554:6560  "params"
                let _185_mpos := var_params_11068_mpos
                let expr_11122_mpos := _185_mpos
                /// @src 148:6554:6578  "params.baseTokenDecimals"
                let _186 := add(expr_11122_mpos, 192)
                let _187 := read_from_memoryt_uint8(_186)
                let expr_11123 := _187
                /// @src 148:6604:6610  "params"
                let _188_mpos := var_params_11068_mpos
                let expr_11124_mpos := _188_mpos
                /// @src 148:6604:6629  "params.quoteTokenDecimals"
                let _189 := add(expr_11124_mpos, 160)
                let _190 := read_from_memoryt_uint8(_189)
                let expr_11125 := _190
                /// @src 148:6655:6661  "params"
                let _191_mpos := var_params_11068_mpos
                let expr_11126_mpos := _191_mpos
                /// @src 148:6655:6671  "params.flipRatio"
                let _192 := add(expr_11126_mpos, 224)
                let _193 := read_from_memoryt_bool(_192)
                let expr_11127 := _193
                /// @src 148:6384:6693  "tickToDecimalString(..."
                let expr_11128_mpos := fun_tickToDecimalString_11367(expr_11119, expr_11121, expr_11123, expr_11125, expr_11127)
                /// @src 148:5730:6711  "abi.encodePacked(..."

                let expr_11129_mpos := allocate_unbounded()
                let _194 := add(expr_11129_mpos, 0x20)

                let _195 := abi_encode_tuple_packed_t_stringliteral_226dfc1a5fe9e290d6e9f3f9428a87273742abf3197214e7da2101e3357db97d_t_string_memory_ptr_t_stringliteral_9e7b109ea8329776b4d3d2e2c2bf39b3f7e02ce64c66994d3a0db4ff2e229f54_t_string_memory_ptr_t_stringliteral_fba9715e477e68952d3f1df7a185b3708aadad50ec10cc793973864023868527_t_string_memory_ptr_t_stringliteral_9e7b109ea8329776b4d3d2e2c2bf39b3f7e02ce64c66994d3a0db4ff2e229f54_t_string_memory_ptr_t_stringliteral_63ddde264cc2685372ed87a1dd423ce643b51225262aecd1e20b2c3e7a1c2462_t_string_memory_ptr__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_194, expr_11080_mpos, expr_11085_mpos, expr_11090_mpos, expr_11109_mpos, expr_11128_mpos)
                mstore(expr_11129_mpos, sub(_195, add(expr_11129_mpos, 0x20)))
                finalize_allocation(expr_11129_mpos, sub(_195, expr_11129_mpos))
                /// @src 148:5706:6725  "string(..."
                let expr_11130_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_11129_mpos)
                /// @src 148:5687:6725  "return..."
                var__11073_mpos := expr_11130_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
            }

            function memory_array_index_access_t_bytes_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_bytes_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 1)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function cleanup_t_bytes1(value) -> cleaned {
                cleaned := and(value, 0xff00000000000000000000000000000000000000000000000000000000000000)
            }

            function read_from_memoryt_bytes1(ptr) -> returnValue {

                let value := cleanup_t_bytes1(mload(ptr))

                returnValue :=

                value

            }

            function convert_t_stringliteral_6e9f33448a4153023cdaf3eb759f1afdc24aba433a3e18b683f8c04a6eaa69f0_to_t_bytes1() -> converted {
                converted := 0x2200000000000000000000000000000000000000000000000000000000000000
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

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

            function convert_t_stringliteral_731553fa98541ade8b78284229adfe09a819380dee9244baac20dd1e0aa24095_to_t_bytes1() -> converted {
                converted := 0x5c00000000000000000000000000000000000000000000000000000000000000
            }

            /// @ast-id 11001
            /// @src 148:3060:3846  "function escapeQuotes(string memory symbol) internal pure returns (string memory) {..."
            function fun_escapeQuotes_11001(var_symbol_10899_mpos) -> var__10902_mpos {
                /// @src 148:3127:3140  "string memory"
                let zero_t_string_memory_ptr_196_mpos := zero_value_for_split_t_string_memory_ptr()
                var__10902_mpos := zero_t_string_memory_ptr_196_mpos

                /// @src 148:3185:3191  "symbol"
                let _197_mpos := var_symbol_10899_mpos
                let expr_10908_mpos := _197_mpos
                /// @src 148:3179:3192  "bytes(symbol)"
                let expr_10909_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_10908_mpos)
                /// @src 148:3152:3192  "bytes memory symbolBytes = bytes(symbol)"
                let var_symbolBytes_10905_mpos := expr_10909_mpos
                /// @src 148:3222:3223  "0"
                let expr_10913 := 0x00
                /// @src 148:3202:3223  "uint8 quotesCount = 0"
                let var_quotesCount_10912 := convert_t_rational_0_by_1_to_t_uint8(expr_10913)
                /// @src 148:3233:3377  "for (uint8 i = 0; i < symbolBytes.length; i++) {..."
                for {
                    /// @src 148:3248:3249  "0"
                    let expr_10917 := 0x00
                    /// @src 148:3238:3249  "uint8 i = 0"
                    let var_i_10916 := convert_t_rational_0_by_1_to_t_uint8(expr_10917)
                    } 1 {
                    /// @src 148:3275:3278  "i++"
                    let _199 := var_i_10916
                    let _198 := increment_t_uint8(_199)
                    var_i_10916 := _198
                    let expr_10924 := _199
                }
                {
                    /// @src 148:3251:3252  "i"
                    let _200 := var_i_10916
                    let expr_10919 := _200
                    /// @src 148:3255:3266  "symbolBytes"
                    let _201_mpos := var_symbolBytes_10905_mpos
                    let expr_10920_mpos := _201_mpos
                    /// @src 148:3255:3273  "symbolBytes.length"
                    let expr_10921 := array_length_t_bytes_memory_ptr(expr_10920_mpos)
                    /// @src 148:3251:3273  "i < symbolBytes.length"
                    let expr_10922 := lt(convert_t_uint8_to_t_uint256(expr_10919), cleanup_t_uint256(expr_10921))
                    if iszero(expr_10922) { break }
                    /// @src 148:3298:3309  "symbolBytes"
                    let _202_mpos := var_symbolBytes_10905_mpos
                    let expr_10926_mpos := _202_mpos
                    /// @src 148:3310:3311  "i"
                    let _203 := var_i_10916
                    let expr_10927 := _203
                    /// @src 148:3298:3312  "symbolBytes[i]"
                    let _204 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_10926_mpos, convert_t_uint8_to_t_uint256(expr_10927)))
                    let expr_10928 := _204
                    /// @src 148:3298:3319  "symbolBytes[i] == '\"'"
                    let expr_10930 := eq(cleanup_t_bytes1(expr_10928), convert_t_stringliteral_6e9f33448a4153023cdaf3eb759f1afdc24aba433a3e18b683f8c04a6eaa69f0_to_t_bytes1())
                    /// @src 148:3294:3367  "if (symbolBytes[i] == '\"') {..."
                    if expr_10930 {
                        /// @src 148:3339:3352  "quotesCount++"
                        let _206 := var_quotesCount_10912
                        let _205 := increment_t_uint8(_206)
                        var_quotesCount_10912 := _205
                        let expr_10932 := _206
                        /// @src 148:3294:3367  "if (symbolBytes[i] == '\"') {..."
                    }
                }
                /// @src 148:3390:3401  "quotesCount"
                let _207 := var_quotesCount_10912
                let expr_10938 := _207
                /// @src 148:3404:3405  "0"
                let expr_10939 := 0x00
                /// @src 148:3390:3405  "quotesCount > 0"
                let expr_10940 := gt(cleanup_t_uint8(expr_10938), convert_t_rational_0_by_1_to_t_uint8(expr_10939))
                /// @src 148:3386:3817  "if (quotesCount > 0) {..."
                if expr_10940 {
                    /// @src 148:3459:3470  "symbolBytes"
                    let _208_mpos := var_symbolBytes_10905_mpos
                    let expr_10945_mpos := _208_mpos
                    /// @src 148:3459:3477  "symbolBytes.length"
                    let expr_10946 := array_length_t_bytes_memory_ptr(expr_10945_mpos)
                    /// @src 148:3481:3492  "quotesCount"
                    let _209 := var_quotesCount_10912
                    let expr_10947 := _209
                    /// @src 148:3480:3493  "(quotesCount)"
                    let expr_10948 := expr_10947
                    /// @src 148:3459:3493  "symbolBytes.length + (quotesCount)"
                    let expr_10949 := checked_add_t_uint256(expr_10946, convert_t_uint8_to_t_uint256(expr_10948))

                    /// @src 148:3449:3494  "new bytes(symbolBytes.length + (quotesCount))"
                    let expr_10950_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(expr_10949)
                    /// @src 148:3421:3494  "bytes memory escapedBytes = new bytes(symbolBytes.length + (quotesCount))"
                    let var_escapedBytes_10942_mpos := expr_10950_mpos
                    /// @src 148:3508:3521  "uint256 index"
                    let var_index_10953
                    let zero_t_uint256_210 := zero_value_for_split_t_uint256()
                    var_index_10953 := zero_t_uint256_210
                    /// @src 148:3535:3766  "for (uint8 i = 0; i < symbolBytes.length; i++) {..."
                    for {
                        /// @src 148:3550:3551  "0"
                        let expr_10957 := 0x00
                        /// @src 148:3540:3551  "uint8 i = 0"
                        let var_i_10956 := convert_t_rational_0_by_1_to_t_uint8(expr_10957)
                        } 1 {
                        /// @src 148:3577:3580  "i++"
                        let _212 := var_i_10956
                        let _211 := increment_t_uint8(_212)
                        var_i_10956 := _211
                        let expr_10964 := _212
                    }
                    {
                        /// @src 148:3553:3554  "i"
                        let _213 := var_i_10956
                        let expr_10959 := _213
                        /// @src 148:3557:3568  "symbolBytes"
                        let _214_mpos := var_symbolBytes_10905_mpos
                        let expr_10960_mpos := _214_mpos
                        /// @src 148:3557:3575  "symbolBytes.length"
                        let expr_10961 := array_length_t_bytes_memory_ptr(expr_10960_mpos)
                        /// @src 148:3553:3575  "i < symbolBytes.length"
                        let expr_10962 := lt(convert_t_uint8_to_t_uint256(expr_10959), cleanup_t_uint256(expr_10961))
                        if iszero(expr_10962) { break }
                        /// @src 148:3604:3615  "symbolBytes"
                        let _215_mpos := var_symbolBytes_10905_mpos
                        let expr_10966_mpos := _215_mpos
                        /// @src 148:3616:3617  "i"
                        let _216 := var_i_10956
                        let expr_10967 := _216
                        /// @src 148:3604:3618  "symbolBytes[i]"
                        let _217 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_10966_mpos, convert_t_uint8_to_t_uint256(expr_10967)))
                        let expr_10968 := _217
                        /// @src 148:3604:3625  "symbolBytes[i] == '\"'"
                        let expr_10970 := eq(cleanup_t_bytes1(expr_10968), convert_t_stringliteral_6e9f33448a4153023cdaf3eb759f1afdc24aba433a3e18b683f8c04a6eaa69f0_to_t_bytes1())
                        /// @src 148:3600:3696  "if (symbolBytes[i] == '\"') {..."
                        if expr_10970 {
                            /// @src 148:3649:3677  "escapedBytes[index++] = '\\\\'"
                            let _218 := convert_t_stringliteral_731553fa98541ade8b78284229adfe09a819380dee9244baac20dd1e0aa24095_to_t_bytes1()
                            /// @src 148:3649:3661  "escapedBytes"
                            let _219_mpos := var_escapedBytes_10942_mpos
                            let expr_10971_mpos := _219_mpos
                            /// @src 148:3662:3669  "index++"
                            let _221 := var_index_10953
                            let _220 := increment_t_uint256(_221)
                            var_index_10953 := _220
                            let expr_10973 := _221
                            /// @src 148:3649:3677  "escapedBytes[index++] = '\\\\'"
                            let _222 := _218
                            mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_10971_mpos, expr_10973), byte(0, _222))
                            let expr_10976 := _218
                            /// @src 148:3600:3696  "if (symbolBytes[i] == '\"') {..."
                        }
                        /// @src 148:3737:3748  "symbolBytes"
                        let _223_mpos := var_symbolBytes_10905_mpos
                        let expr_10984_mpos := _223_mpos
                        /// @src 148:3749:3750  "i"
                        let _224 := var_i_10956
                        let expr_10985 := _224
                        /// @src 148:3737:3751  "symbolBytes[i]"
                        let _225 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_10984_mpos, convert_t_uint8_to_t_uint256(expr_10985)))
                        let expr_10986 := _225
                        /// @src 148:3713:3725  "escapedBytes"
                        let _226_mpos := var_escapedBytes_10942_mpos
                        let expr_10980_mpos := _226_mpos
                        /// @src 148:3726:3733  "index++"
                        let _228 := var_index_10953
                        let _227 := increment_t_uint256(_228)
                        var_index_10953 := _227
                        let expr_10982 := _228
                        /// @src 148:3713:3751  "escapedBytes[index++] = symbolBytes[i]"
                        let _229 := expr_10986
                        mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_10980_mpos, expr_10982), byte(0, _229))
                        let expr_10987 := expr_10986
                    }
                    /// @src 148:3793:3805  "escapedBytes"
                    let _230_mpos := var_escapedBytes_10942_mpos
                    let expr_10993_mpos := _230_mpos
                    /// @src 148:3786:3806  "string(escapedBytes)"
                    let expr_10994_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_10993_mpos)
                    /// @src 148:3779:3806  "return string(escapedBytes)"
                    var__10902_mpos := expr_10994_mpos
                    leave
                    /// @src 148:3386:3817  "if (quotesCount > 0) {..."
                }
                /// @src 148:3833:3839  "symbol"
                let _231_mpos := var_symbol_10899_mpos
                let expr_10998_mpos := _231_mpos
                /// @src 148:3826:3839  "return symbol"
                var__10902_mpos := expr_10998_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_address_to_t_uint160(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_uint160_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint160(value)))
            }

            function cleanup_t_rational_20_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_20_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_20_by_1(value)))
            }

            /// @ast-id 12137
            /// @src 148:15205:15412  "function addressToString(address addr) internal pure returns (string memory) {..."
            function fun_addressToString_12137(var_addr_12119) -> var__12122_mpos {
                /// @src 148:15267:15280  "string memory"
                let zero_t_string_memory_ptr_232_mpos := zero_value_for_split_t_string_memory_ptr()
                var__12122_mpos := zero_t_string_memory_ptr_232_mpos

                /// @src 148:15358:15365  "Strings"
                let expr_12124_address := linkersymbol("openzeppelin-contracts-4.9.3/contracts/utils/Strings.sol:Strings")
                /// @src 148:15394:15398  "addr"
                let _233 := var_addr_12119
                let expr_12130 := _233
                /// @src 148:15386:15399  "uint160(addr)"
                let expr_12131 := convert_t_address_to_t_uint160(expr_12130)
                /// @src 148:15378:15400  "uint256(uint160(addr))"
                let expr_12132 := convert_t_uint160_to_t_uint256(expr_12131)
                /// @src 148:15402:15404  "20"
                let expr_12133 := 0x14
                /// @src 148:15358:15405  "Strings.toHexString(uint256(uint160(addr)), 20)"
                let _234 := convert_t_rational_20_by_1_to_t_uint256(expr_12133)
                let expr_12134_mpos := fun_toHexString_25132(expr_12132, _234)
                /// @src 148:15351:15405  "return Strings.toHexString(uint256(uint160(addr)), 20)"
                var__12122_mpos := expr_12134_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function store_literal_in_memory_09a21db7510bd97ee8023a21a0b9ca7b50d308bca96b671a849b1fed9d0ab663(memPtr) {

                mstore(add(memPtr, 0), "This NFT represents a liquidity ")

                mstore(add(memPtr, 32), "position in a Uniswap V3 ")

            }

            function abi_encode_t_stringliteral_09a21db7510bd97ee8023a21a0b9ca7b50d308bca96b671a849b1fed9d0ab663_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 57)
                store_literal_in_memory_09a21db7510bd97ee8023a21a0b9ca7b50d308bca96b671a849b1fed9d0ab663(pos)
                end := add(pos, 57)
            }

            function store_literal_in_memory_d3b8281179950f98149eefdb158d0e1acb56f56e8e343aa9fefafa7e36959561(memPtr) {

                mstore(add(memPtr, 0), "-")

            }

            function abi_encode_t_stringliteral_d3b8281179950f98149eefdb158d0e1acb56f56e8e343aa9fefafa7e36959561_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 1)
                store_literal_in_memory_d3b8281179950f98149eefdb158d0e1acb56f56e8e343aa9fefafa7e36959561(pos)
                end := add(pos, 1)
            }

            function store_literal_in_memory_653c56b4082275492c676e2e8a392152fd3797ddaf9258db7bb55df6f1109f07(memPtr) {

                mstore(add(memPtr, 0), " pool. ")

            }

            function abi_encode_t_stringliteral_653c56b4082275492c676e2e8a392152fd3797ddaf9258db7bb55df6f1109f07_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 7)
                store_literal_in_memory_653c56b4082275492c676e2e8a392152fd3797ddaf9258db7bb55df6f1109f07(pos)
                end := add(pos, 7)
            }

            function store_literal_in_memory_9013e84e1527194f2724f9cc76ecfb22d8c29795e059cbfa4956303bf5e4e20a(memPtr) {

                mstore(add(memPtr, 0), "The owner of this NFT can modify")

                mstore(add(memPtr, 32), " or redeem the position.\\n")

            }

            function abi_encode_t_stringliteral_9013e84e1527194f2724f9cc76ecfb22d8c29795e059cbfa4956303bf5e4e20a_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 58)
                store_literal_in_memory_9013e84e1527194f2724f9cc76ecfb22d8c29795e059cbfa4956303bf5e4e20a(pos)
                end := add(pos, 58)
            }

            function store_literal_in_memory_4517a570da75b0bbae4ccef80790cc987c9b97b99c62e75a69fa04f38ace8fc6(memPtr) {

                mstore(add(memPtr, 0), "\\nPool Address: ")

            }

            function abi_encode_t_stringliteral_4517a570da75b0bbae4ccef80790cc987c9b97b99c62e75a69fa04f38ace8fc6_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 16)
                store_literal_in_memory_4517a570da75b0bbae4ccef80790cc987c9b97b99c62e75a69fa04f38ace8fc6(pos)
                end := add(pos, 16)
            }

            function store_literal_in_memory_90249a63b806acad050a60c81f8cc82fb6e7ebc3575d78119a9b4c5568b02cd2(memPtr) {

                mstore(add(memPtr, 0), "\\n")

            }

            function abi_encode_t_stringliteral_90249a63b806acad050a60c81f8cc82fb6e7ebc3575d78119a9b4c5568b02cd2_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 2)
                store_literal_in_memory_90249a63b806acad050a60c81f8cc82fb6e7ebc3575d78119a9b4c5568b02cd2(pos)
                end := add(pos, 2)
            }

            function abi_encode_tuple_packed_t_stringliteral_09a21db7510bd97ee8023a21a0b9ca7b50d308bca96b671a849b1fed9d0ab663_t_string_memory_ptr_t_stringliteral_d3b8281179950f98149eefdb158d0e1acb56f56e8e343aa9fefafa7e36959561_t_string_memory_ptr_t_stringliteral_653c56b4082275492c676e2e8a392152fd3797ddaf9258db7bb55df6f1109f07_t_stringliteral_9013e84e1527194f2724f9cc76ecfb22d8c29795e059cbfa4956303bf5e4e20a_t_stringliteral_4517a570da75b0bbae4ccef80790cc987c9b97b99c62e75a69fa04f38ace8fc6_t_string_memory_ptr_t_stringliteral_90249a63b806acad050a60c81f8cc82fb6e7ebc3575d78119a9b4c5568b02cd2_t_string_memory_ptr__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2, value3) -> end {

                pos := abi_encode_t_stringliteral_09a21db7510bd97ee8023a21a0b9ca7b50d308bca96b671a849b1fed9d0ab663_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                pos := abi_encode_t_stringliteral_d3b8281179950f98149eefdb158d0e1acb56f56e8e343aa9fefafa7e36959561_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                pos := abi_encode_t_stringliteral_653c56b4082275492c676e2e8a392152fd3797ddaf9258db7bb55df6f1109f07_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_stringliteral_9013e84e1527194f2724f9cc76ecfb22d8c29795e059cbfa4956303bf5e4e20a_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_stringliteral_4517a570da75b0bbae4ccef80790cc987c9b97b99c62e75a69fa04f38ace8fc6_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                pos := abi_encode_t_stringliteral_90249a63b806acad050a60c81f8cc82fb6e7ebc3575d78119a9b4c5568b02cd2_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value3,  pos)

                end := pos
            }

            /// @ast-id 11030
            /// @src 148:3852:4587  "function generateDescriptionPartOne(..."
            function fun_generateDescriptionPartOne_11030(var_quoteTokenSymbol_11003_mpos, var_baseTokenSymbol_11005_mpos, var_poolAddress_11007_mpos) -> var__11010_mpos {
                /// @src 148:4030:4043  "string memory"
                let zero_t_string_memory_ptr_235_mpos := zero_value_for_split_t_string_memory_ptr()
                var__11010_mpos := zero_t_string_memory_ptr_235_mpos

                /// @src 148:4217:4233  "quoteTokenSymbol"
                let _236_mpos := var_quoteTokenSymbol_11003_mpos
                let expr_11017_mpos := _236_mpos
                /// @src 148:4280:4295  "baseTokenSymbol"
                let _237_mpos := var_baseTokenSymbol_11005_mpos
                let expr_11019_mpos := _237_mpos
                /// @src 148:4472:4483  "poolAddress"
                let _238_mpos := var_poolAddress_11007_mpos
                let expr_11023_mpos := _238_mpos
                /// @src 148:4532:4548  "quoteTokenSymbol"
                let _239_mpos := var_quoteTokenSymbol_11003_mpos
                let expr_11025_mpos := _239_mpos
                /// @src 148:4098:4566  "abi.encodePacked(..."

                let expr_11026_mpos := allocate_unbounded()
                let _240 := add(expr_11026_mpos, 0x20)

                let _241 := abi_encode_tuple_packed_t_stringliteral_09a21db7510bd97ee8023a21a0b9ca7b50d308bca96b671a849b1fed9d0ab663_t_string_memory_ptr_t_stringliteral_d3b8281179950f98149eefdb158d0e1acb56f56e8e343aa9fefafa7e36959561_t_string_memory_ptr_t_stringliteral_653c56b4082275492c676e2e8a392152fd3797ddaf9258db7bb55df6f1109f07_t_stringliteral_9013e84e1527194f2724f9cc76ecfb22d8c29795e059cbfa4956303bf5e4e20a_t_stringliteral_4517a570da75b0bbae4ccef80790cc987c9b97b99c62e75a69fa04f38ace8fc6_t_string_memory_ptr_t_stringliteral_90249a63b806acad050a60c81f8cc82fb6e7ebc3575d78119a9b4c5568b02cd2_t_string_memory_ptr__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_240, expr_11017_mpos, expr_11019_mpos, expr_11023_mpos, expr_11025_mpos)
                mstore(expr_11026_mpos, sub(_241, add(expr_11026_mpos, 0x20)))
                finalize_allocation(expr_11026_mpos, sub(_241, expr_11026_mpos))
                /// @src 148:4074:4580  "string(..."
                let expr_11027_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_11026_mpos)
                /// @src 148:4055:4580  "return..."
                var__11010_mpos := expr_11027_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function wrapping_add_t_uint256(x, y) -> sum {
                sum := cleanup_t_uint256(add(x, y))
            }

            function allocate_and_zero_memory_array_t_string_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_string_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_bytes1(dataStart, dataSize)
            }

            function decrement_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(sub(value, 1))
            }

            function wrapping_div_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }
                r := div(x, y)
            }

            /// @ast-id 25008
            /// @src 46:447:1143  "function toString(uint256 value) internal pure returns (string memory) {..."
            function fun_toString_25008(var_value_24963) -> var__24966_mpos {
                /// @src 46:503:516  "string memory"
                let zero_t_string_memory_ptr_242_mpos := zero_value_for_split_t_string_memory_ptr()
                var__24966_mpos := zero_t_string_memory_ptr_242_mpos

                /// @src 46:569:573  "Math"
                let expr_24970_address := linkersymbol("openzeppelin-contracts-4.9.3/contracts/utils/math/Math.sol:Math")
                /// @src 46:580:585  "value"
                let _243 := var_value_24963
                let expr_24972 := _243
                /// @src 46:569:586  "Math.log10(value)"
                let expr_24973 := fun_log10_36606(expr_24972)
                /// @src 46:589:590  "1"
                let expr_24974 := 0x01
                /// @src 46:569:590  "Math.log10(value) + 1"
                let expr_24975 := wrapping_add_t_uint256(expr_24973, convert_t_rational_1_by_1_to_t_uint256(expr_24974))

                /// @src 46:552:590  "uint256 length = Math.log10(value) + 1"
                let var_length_24969 := expr_24975
                /// @src 46:638:644  "length"
                let _244 := var_length_24969
                let expr_24981 := _244
                /// @src 46:627:645  "new string(length)"
                let expr_24982_mpos := allocate_and_zero_memory_array_t_string_memory_ptr(expr_24981)
                /// @src 46:604:645  "string memory buffer = new string(length)"
                let var_buffer_24978_mpos := expr_24982_mpos
                /// @src 46:659:670  "uint256 ptr"
                let var_ptr_24985
                let zero_t_uint256_245 := zero_value_for_split_t_uint256()
                var_ptr_24985 := zero_t_uint256_245
                /// @src 46:731:807  "assembly {..."
                {
                    var_ptr_24985 := add(var_buffer_24978_mpos, add(32, var_length_24969))
                }
                /// @src 46:820:1100  "while (true) {..."
                for {
                    } 1 {
                }
                {
                    /// @src 46:827:831  "true"
                    let expr_24988 := 0x01
                    if iszero(expr_24988) { break }
                    /// @src 46:851:856  "ptr--"
                    let _247 := var_ptr_24985
                    let _246 := decrement_wrapping_t_uint256(_247)
                    var_ptr_24985 := _246
                    let expr_24990 := _247
                    /// @src 46:925:1018  "assembly {..."
                    {
                        mstore8(var_ptr_24985, byte(mod(var_value_24963, 10), 0x3031323334353637383961626364656600000000000000000000000000000000))
                    }
                    /// @src 46:1044:1046  "10"
                    let expr_24994 := 0x0a
                    /// @src 46:1035:1046  "value /= 10"
                    let _248 := convert_t_rational_10_by_1_to_t_uint256(expr_24994)
                    let _249 := var_value_24963
                    let expr_24995 := wrapping_div_t_uint256(_249, _248)

                    var_value_24963 := expr_24995
                    /// @src 46:1068:1073  "value"
                    let _250 := var_value_24963
                    let expr_24997 := _250
                    /// @src 46:1077:1078  "0"
                    let expr_24998 := 0x00
                    /// @src 46:1068:1078  "value == 0"
                    let expr_24999 := eq(cleanup_t_uint256(expr_24997), convert_t_rational_0_by_1_to_t_uint256(expr_24998))
                    /// @src 46:1064:1085  "if (value == 0) break"
                    if expr_24999 {
                        /// @src 46:1080:1085  "break"
                        break
                        /// @src 46:1064:1085  "if (value == 0) break"
                    }
                }
                /// @src 46:1120:1126  "buffer"
                let _251_mpos := var_buffer_24978_mpos
                let expr_25004_mpos := _251_mpos
                /// @src 46:1113:1126  "return buffer"
                var__24966_mpos := expr_25004_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function store_literal_in_memory_7aa660bcf8ae0b7203360b6321d9d065d9e5aa33ec33d36eb947d624b5c3b3b0(memPtr) {

                mstore(add(memPtr, 0), " Address: ")

            }

            function abi_encode_t_stringliteral_7aa660bcf8ae0b7203360b6321d9d065d9e5aa33ec33d36eb947d624b5c3b3b0_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 10)
                store_literal_in_memory_7aa660bcf8ae0b7203360b6321d9d065d9e5aa33ec33d36eb947d624b5c3b3b0(pos)
                end := add(pos, 10)
            }

            function store_literal_in_memory_aded885378cc6538f3bd3ce068731b0abae76fa7bf8dbda35e1058e85aa79ab2(memPtr) {

                mstore(add(memPtr, 0), "\\nFee Tier: ")

            }

            function abi_encode_t_stringliteral_aded885378cc6538f3bd3ce068731b0abae76fa7bf8dbda35e1058e85aa79ab2_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 12)
                store_literal_in_memory_aded885378cc6538f3bd3ce068731b0abae76fa7bf8dbda35e1058e85aa79ab2(pos)
                end := add(pos, 12)
            }

            function store_literal_in_memory_a2bfa4136760740c1452b04d79f8a1bc2d4b66a227d5106d32849e904d06aff9(memPtr) {

                mstore(add(memPtr, 0), "\\nToken ID: ")

            }

            function abi_encode_t_stringliteral_a2bfa4136760740c1452b04d79f8a1bc2d4b66a227d5106d32849e904d06aff9_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 12)
                store_literal_in_memory_a2bfa4136760740c1452b04d79f8a1bc2d4b66a227d5106d32849e904d06aff9(pos)
                end := add(pos, 12)
            }

            function store_literal_in_memory_c61933a8d2be5d811f4efe562efc05b21b97e6174fab5f4c4a9e0d70fcc60e1b(memPtr) {

                mstore(add(memPtr, 0), "\\n\\n")

            }

            function abi_encode_t_stringliteral_c61933a8d2be5d811f4efe562efc05b21b97e6174fab5f4c4a9e0d70fcc60e1b_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 4)
                store_literal_in_memory_c61933a8d2be5d811f4efe562efc05b21b97e6174fab5f4c4a9e0d70fcc60e1b(pos)
                end := add(pos, 4)
            }

            function store_literal_in_memory_3378df0222f0793f0de1d8213e14093d5e40c9a86dac387a423dca1fb6175d77(memPtr) {

                mstore(add(memPtr, 0), 0xe29aa0efb88f20444953434c41494d45523a204475652064696c6967656e6365)

                mstore(add(memPtr, 32), " is imperative when assessing th")

                mstore(add(memPtr, 64), "is NFT. Make sure token addresse")

                mstore(add(memPtr, 96), "s match the expected tokens, as ")

                mstore(add(memPtr, 128), "token symbols may be imitated.")

            }

            function abi_encode_t_stringliteral_3378df0222f0793f0de1d8213e14093d5e40c9a86dac387a423dca1fb6175d77_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 158)
                store_literal_in_memory_3378df0222f0793f0de1d8213e14093d5e40c9a86dac387a423dca1fb6175d77(pos)
                end := add(pos, 158)
            }

            function abi_encode_tuple_packed_t_stringliteral_7aa660bcf8ae0b7203360b6321d9d065d9e5aa33ec33d36eb947d624b5c3b3b0_t_string_memory_ptr_t_stringliteral_90249a63b806acad050a60c81f8cc82fb6e7ebc3575d78119a9b4c5568b02cd2_t_string_memory_ptr_t_stringliteral_7aa660bcf8ae0b7203360b6321d9d065d9e5aa33ec33d36eb947d624b5c3b3b0_t_string_memory_ptr_t_stringliteral_aded885378cc6538f3bd3ce068731b0abae76fa7bf8dbda35e1058e85aa79ab2_t_string_memory_ptr_t_stringliteral_a2bfa4136760740c1452b04d79f8a1bc2d4b66a227d5106d32849e904d06aff9_t_string_memory_ptr_t_stringliteral_c61933a8d2be5d811f4efe562efc05b21b97e6174fab5f4c4a9e0d70fcc60e1b_t_stringliteral_3378df0222f0793f0de1d8213e14093d5e40c9a86dac387a423dca1fb6175d77__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2, value3, value4) -> end {

                pos := abi_encode_t_stringliteral_7aa660bcf8ae0b7203360b6321d9d065d9e5aa33ec33d36eb947d624b5c3b3b0_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                pos := abi_encode_t_stringliteral_90249a63b806acad050a60c81f8cc82fb6e7ebc3575d78119a9b4c5568b02cd2_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                pos := abi_encode_t_stringliteral_7aa660bcf8ae0b7203360b6321d9d065d9e5aa33ec33d36eb947d624b5c3b3b0_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                pos := abi_encode_t_stringliteral_aded885378cc6538f3bd3ce068731b0abae76fa7bf8dbda35e1058e85aa79ab2_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value3,  pos)

                pos := abi_encode_t_stringliteral_a2bfa4136760740c1452b04d79f8a1bc2d4b66a227d5106d32849e904d06aff9_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value4,  pos)

                pos := abi_encode_t_stringliteral_c61933a8d2be5d811f4efe562efc05b21b97e6174fab5f4c4a9e0d70fcc60e1b_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                pos := abi_encode_t_stringliteral_3378df0222f0793f0de1d8213e14093d5e40c9a86dac387a423dca1fb6175d77_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                end := pos
            }

            /// @ast-id 11065
            /// @src 148:4593:5522  "function generateDescriptionPartTwo(..."
            function fun_generateDescriptionPartTwo_11065(var_tokenId_11032_mpos, var_baseTokenSymbol_11034_mpos, var_quoteTokenAddress_11036_mpos, var_baseTokenAddress_11038_mpos, var_feeTier_11040_mpos) -> var__11043_mpos {
                /// @src 148:4839:4852  "string memory"
                let zero_t_string_memory_ptr_252_mpos := zero_value_for_split_t_string_memory_ptr()
                var__11043_mpos := zero_t_string_memory_ptr_252_mpos

                /// @src 148:4979:4996  "quoteTokenAddress"
                let _253_mpos := var_quoteTokenAddress_11036_mpos
                let expr_11050_mpos := _253_mpos
                /// @src 148:5045:5060  "baseTokenSymbol"
                let _254_mpos := var_baseTokenSymbol_11034_mpos
                let expr_11052_mpos := _254_mpos
                /// @src 148:5116:5132  "baseTokenAddress"
                let _255_mpos := var_baseTokenAddress_11038_mpos
                let expr_11054_mpos := _255_mpos
                /// @src 148:5191:5198  "feeTier"
                let _256_mpos := var_feeTier_11040_mpos
                let expr_11056_mpos := _256_mpos
                /// @src 148:5257:5264  "tokenId"
                let _257_mpos := var_tokenId_11032_mpos
                let expr_11058_mpos := _257_mpos
                /// @src 148:4907:5501  "abi.encodePacked(..."

                let expr_11061_mpos := allocate_unbounded()
                let _258 := add(expr_11061_mpos, 0x20)

                let _259 := abi_encode_tuple_packed_t_stringliteral_7aa660bcf8ae0b7203360b6321d9d065d9e5aa33ec33d36eb947d624b5c3b3b0_t_string_memory_ptr_t_stringliteral_90249a63b806acad050a60c81f8cc82fb6e7ebc3575d78119a9b4c5568b02cd2_t_string_memory_ptr_t_stringliteral_7aa660bcf8ae0b7203360b6321d9d065d9e5aa33ec33d36eb947d624b5c3b3b0_t_string_memory_ptr_t_stringliteral_aded885378cc6538f3bd3ce068731b0abae76fa7bf8dbda35e1058e85aa79ab2_t_string_memory_ptr_t_stringliteral_a2bfa4136760740c1452b04d79f8a1bc2d4b66a227d5106d32849e904d06aff9_t_string_memory_ptr_t_stringliteral_c61933a8d2be5d811f4efe562efc05b21b97e6174fab5f4c4a9e0d70fcc60e1b_t_stringliteral_3378df0222f0793f0de1d8213e14093d5e40c9a86dac387a423dca1fb6175d77__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_258, expr_11050_mpos, expr_11052_mpos, expr_11054_mpos, expr_11056_mpos, expr_11058_mpos)
                mstore(expr_11061_mpos, sub(_259, add(expr_11061_mpos, 0x20)))
                finalize_allocation(expr_11061_mpos, sub(_259, expr_11061_mpos))
                /// @src 148:4883:5515  "string(..."
                let expr_11062_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_11061_mpos)
                /// @src 148:4864:5515  "return..."
                var__11043_mpos := expr_11062_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function cleanup_t_rational_136_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_136_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_136_by_1(value)))
            }

            function cleanup_t_rational_16_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_16_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_16_by_1(value)))
            }

            function cleanup_t_rational_255_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_255_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_255_by_1(value)))
            }

            function cleanup_t_rational_274_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_274_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_274_by_1(value)))
            }

            function cleanup_t_rational_100_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_100_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_100_by_1(value)))
            }

            function cleanup_t_rational_484_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_484_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_484_by_1(value)))
            }

            function cleanup_t_rational_32_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_32_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_32_by_1(value)))
            }

            function cleanup_t_rational_48_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_48_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_48_by_1(value)))
            }

            function allocate_memory_struct_t_struct$_SVGParams_$25668_storage_ptr() -> memPtr {
                memPtr := allocate_memory(672)
            }

            function write_to_memory_t_string_memory_ptr(memPtr, value) {
                mstore(memPtr, value)
            }

            function write_to_memory_t_address(memPtr, value) {
                mstore(memPtr, cleanup_t_address(value))
            }

            function write_to_memory_t_int24(memPtr, value) {
                mstore(memPtr, cleanup_t_int24(value))
            }

            function cleanup_t_int8(value) -> cleaned {
                cleaned := signextend(0, value)
            }

            function write_to_memory_t_int8(memPtr, value) {
                mstore(memPtr, cleanup_t_int8(value))
            }

            /// @ast-id 12352
            /// @src 148:15418:17403  "function generateSVGImage(ConstructTokenURIParams memory params) internal pure returns (string memory svg) {..."
            function fun_generateSVGImage_12352(var_params_12140_mpos) -> var_svg_12143_mpos {
                /// @src 148:15506:15523  "string memory svg"
                let zero_t_string_memory_ptr_260_mpos := zero_value_for_split_t_string_memory_ptr()
                var_svg_12143_mpos := zero_t_string_memory_ptr_260_mpos

                /// @src 148:15583:15589  "NFTSVG"
                let expr_12150_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/NFTSVG.sol:NFTSVG")
                /// @src 148:15646:15652  "params"
                let _261_mpos := var_params_12140_mpos
                let expr_12153_mpos := _261_mpos
                /// @src 148:15646:15670  "params.quoteTokenAddress"
                let _262 := add(expr_12153_mpos, 32)
                let _263 := read_from_memoryt_address(_262)
                let expr_12154 := _263
                /// @src 148:15630:15671  "addressToString(params.quoteTokenAddress)"
                let expr_12155_mpos := fun_addressToString_12137(expr_12154)
                /// @src 148:15716:15722  "params"
                let _264_mpos := var_params_12140_mpos
                let expr_12157_mpos := _264_mpos
                /// @src 148:15716:15739  "params.baseTokenAddress"
                let _265 := add(expr_12157_mpos, 64)
                let _266 := read_from_memoryt_address(_265)
                let expr_12158 := _266
                /// @src 148:15700:15740  "addressToString(params.baseTokenAddress)"
                let expr_12159_mpos := fun_addressToString_12137(expr_12158)
                /// @src 148:15771:15777  "params"
                let _267_mpos := var_params_12140_mpos
                let expr_12160_mpos := _267_mpos
                /// @src 148:15771:15789  "params.poolAddress"
                let _268 := add(expr_12160_mpos, 416)
                let _269 := read_from_memoryt_address(_268)
                let expr_12161 := _269
                /// @src 148:15825:15831  "params"
                let _270_mpos := var_params_12140_mpos
                let expr_12162_mpos := _270_mpos
                /// @src 148:15825:15848  "params.quoteTokenSymbol"
                let _271 := add(expr_12162_mpos, 96)
                let _272_mpos := mload(_271)
                let expr_12163_mpos := _272_mpos
                /// @src 148:15883:15889  "params"
                let _273_mpos := var_params_12140_mpos
                let expr_12164_mpos := _273_mpos
                /// @src 148:15883:15905  "params.baseTokenSymbol"
                let _274 := add(expr_12164_mpos, 128)
                let _275_mpos := mload(_274)
                let expr_12165_mpos := _275_mpos
                /// @src 148:15951:15957  "params"
                let _276_mpos := var_params_12140_mpos
                let expr_12167_mpos := _276_mpos
                /// @src 148:15951:15961  "params.fee"
                let _277 := add(expr_12167_mpos, 384)
                let _278 := read_from_memoryt_uint24(_277)
                let expr_12168 := _278
                /// @src 148:15932:15962  "feeToPercentString(params.fee)"
                let expr_12169_mpos := fun_feeToPercentString_12117(expr_12168)
                /// @src 148:15991:15997  "params"
                let _279_mpos := var_params_12140_mpos
                let expr_12170_mpos := _279_mpos
                /// @src 148:15991:16007  "params.tickLower"
                let _280 := add(expr_12170_mpos, 256)
                let _281 := read_from_memoryt_int24(_280)
                let expr_12171 := _281
                /// @src 148:16036:16042  "params"
                let _282_mpos := var_params_12140_mpos
                let expr_12172_mpos := _282_mpos
                /// @src 148:16036:16052  "params.tickUpper"
                let _283 := add(expr_12172_mpos, 288)
                let _284 := read_from_memoryt_int24(_283)
                let expr_12173 := _284
                /// @src 148:16083:16089  "params"
                let _285_mpos := var_params_12140_mpos
                let expr_12174_mpos := _285_mpos
                /// @src 148:16083:16101  "params.tickSpacing"
                let _286 := add(expr_12174_mpos, 352)
                let _287 := read_from_memoryt_int24(_286)
                let expr_12175 := _287
                /// @src 148:16140:16146  "params"
                let _288_mpos := var_params_12140_mpos
                let expr_12177_mpos := _288_mpos
                /// @src 148:16140:16156  "params.tickLower"
                let _289 := add(expr_12177_mpos, 256)
                let _290 := read_from_memoryt_int24(_289)
                let expr_12178 := _290
                /// @src 148:16158:16164  "params"
                let _291_mpos := var_params_12140_mpos
                let expr_12179_mpos := _291_mpos
                /// @src 148:16158:16174  "params.tickUpper"
                let _292 := add(expr_12179_mpos, 288)
                let _293 := read_from_memoryt_int24(_292)
                let expr_12180 := _293
                /// @src 148:16176:16182  "params"
                let _294_mpos := var_params_12140_mpos
                let expr_12181_mpos := _294_mpos
                /// @src 148:16176:16194  "params.tickCurrent"
                let _295 := add(expr_12181_mpos, 320)
                let _296 := read_from_memoryt_int24(_295)
                let expr_12182 := _296
                /// @src 148:16130:16195  "overRange(params.tickLower, params.tickUpper, params.tickCurrent)"
                let expr_12183 := fun_overRange_12382(expr_12178, expr_12180, expr_12182)
                /// @src 148:16222:16228  "params"
                let _297_mpos := var_params_12140_mpos
                let expr_12184_mpos := _297_mpos
                /// @src 148:16222:16236  "params.tokenId"
                let _298 := add(expr_12184_mpos, 0)
                let _299 := read_from_memoryt_uint256(_298)
                let expr_12185 := _299
                /// @src 148:16294:16300  "params"
                let _300_mpos := var_params_12140_mpos
                let expr_12191_mpos := _300_mpos
                /// @src 148:16294:16318  "params.quoteTokenAddress"
                let _301 := add(expr_12191_mpos, 32)
                let _302 := read_from_memoryt_address(_301)
                let expr_12192 := _302
                /// @src 148:16286:16319  "uint160(params.quoteTokenAddress)"
                let expr_12193 := convert_t_address_to_t_uint160(expr_12192)
                /// @src 148:16278:16320  "uint256(uint160(params.quoteTokenAddress))"
                let expr_12194 := convert_t_uint160_to_t_uint256(expr_12193)
                /// @src 148:16322:16325  "136"
                let expr_12195 := 0x88
                /// @src 148:16262:16326  "tokenToColorHex(uint256(uint160(params.quoteTokenAddress)), 136)"
                let _303 := convert_t_rational_136_by_1_to_t_uint256(expr_12195)
                let expr_12196_mpos := fun_tokenToColorHex_12442(expr_12194, _303)
                /// @src 148:16384:16390  "params"
                let _304_mpos := var_params_12140_mpos
                let expr_12202_mpos := _304_mpos
                /// @src 148:16384:16407  "params.baseTokenAddress"
                let _305 := add(expr_12202_mpos, 64)
                let _306 := read_from_memoryt_address(_305)
                let expr_12203 := _306
                /// @src 148:16376:16408  "uint160(params.baseTokenAddress)"
                let expr_12204 := convert_t_address_to_t_uint160(expr_12203)
                /// @src 148:16368:16409  "uint256(uint160(params.baseTokenAddress))"
                let expr_12205 := convert_t_uint160_to_t_uint256(expr_12204)
                /// @src 148:16411:16414  "136"
                let expr_12206 := 0x88
                /// @src 148:16352:16415  "tokenToColorHex(uint256(uint160(params.baseTokenAddress)), 136)"
                let _307 := convert_t_rational_136_by_1_to_t_uint256(expr_12206)
                let expr_12207_mpos := fun_tokenToColorHex_12442(expr_12205, _307)
                /// @src 148:16473:16479  "params"
                let _308_mpos := var_params_12140_mpos
                let expr_12213_mpos := _308_mpos
                /// @src 148:16473:16497  "params.quoteTokenAddress"
                let _309 := add(expr_12213_mpos, 32)
                let _310 := read_from_memoryt_address(_309)
                let expr_12214 := _310
                /// @src 148:16465:16498  "uint160(params.quoteTokenAddress)"
                let expr_12215 := convert_t_address_to_t_uint160(expr_12214)
                /// @src 148:16457:16499  "uint256(uint160(params.quoteTokenAddress))"
                let expr_12216 := convert_t_uint160_to_t_uint256(expr_12215)
                /// @src 148:16501:16502  "0"
                let expr_12217 := 0x00
                /// @src 148:16441:16503  "tokenToColorHex(uint256(uint160(params.quoteTokenAddress)), 0)"
                let _311 := convert_t_rational_0_by_1_to_t_uint256(expr_12217)
                let expr_12218_mpos := fun_tokenToColorHex_12442(expr_12216, _311)
                /// @src 148:16561:16567  "params"
                let _312_mpos := var_params_12140_mpos
                let expr_12224_mpos := _312_mpos
                /// @src 148:16561:16584  "params.baseTokenAddress"
                let _313 := add(expr_12224_mpos, 64)
                let _314 := read_from_memoryt_address(_313)
                let expr_12225 := _314
                /// @src 148:16553:16585  "uint160(params.baseTokenAddress)"
                let expr_12226 := convert_t_address_to_t_uint160(expr_12225)
                /// @src 148:16545:16586  "uint256(uint160(params.baseTokenAddress))"
                let expr_12227 := convert_t_uint160_to_t_uint256(expr_12226)
                /// @src 148:16588:16589  "0"
                let expr_12228 := 0x00
                /// @src 148:16529:16590  "tokenToColorHex(uint256(uint160(params.baseTokenAddress)), 0)"
                let _315 := convert_t_rational_0_by_1_to_t_uint256(expr_12228)
                let expr_12229_mpos := fun_tokenToColorHex_12442(expr_12227, _315)
                /// @src 148:16649:16655  "params"
                let _316_mpos := var_params_12140_mpos
                let expr_12236_mpos := _316_mpos
                /// @src 148:16649:16673  "params.quoteTokenAddress"
                let _317 := add(expr_12236_mpos, 32)
                let _318 := read_from_memoryt_address(_317)
                let expr_12237 := _318
                /// @src 148:16641:16674  "uint160(params.quoteTokenAddress)"
                let expr_12238 := convert_t_address_to_t_uint160(expr_12237)
                /// @src 148:16633:16675  "uint256(uint160(params.quoteTokenAddress))"
                let expr_12239 := convert_t_uint160_to_t_uint256(expr_12238)
                /// @src 148:16677:16679  "16"
                let expr_12240 := 0x10
                /// @src 148:16681:16687  "params"
                let _319_mpos := var_params_12140_mpos
                let expr_12241_mpos := _319_mpos
                /// @src 148:16681:16695  "params.tokenId"
                let _320 := add(expr_12241_mpos, 0)
                let _321 := read_from_memoryt_uint256(_320)
                let expr_12242 := _321
                /// @src 148:16618:16696  "getCircleCoord(uint256(uint160(params.quoteTokenAddress)), 16, params.tokenId)"
                let _322 := convert_t_rational_16_by_1_to_t_uint256(expr_12240)
                let expr_12243 := fun_getCircleCoord_12464(expr_12239, _322, expr_12242)
                /// @src 148:16698:16699  "0"
                let expr_12244 := 0x00
                /// @src 148:16701:16704  "255"
                let expr_12245 := 0xff
                /// @src 148:16706:16708  "16"
                let expr_12246 := 0x10
                /// @src 148:16710:16713  "274"
                let expr_12247 := 0x0112
                /// @src 148:16612:16714  "scale(getCircleCoord(uint256(uint160(params.quoteTokenAddress)), 16, params.tokenId), 0, 255, 16, 274)"
                let _323 := convert_t_rational_0_by_1_to_t_uint256(expr_12244)
                let _324 := convert_t_rational_255_by_1_to_t_uint256(expr_12245)
                let _325 := convert_t_rational_16_by_1_to_t_uint256(expr_12246)
                let _326 := convert_t_rational_274_by_1_to_t_uint256(expr_12247)
                let expr_12248_mpos := fun_scale_12421(expr_12243, _323, _324, _325, _326)
                /// @src 148:16773:16779  "params"
                let _327_mpos := var_params_12140_mpos
                let expr_12255_mpos := _327_mpos
                /// @src 148:16773:16796  "params.baseTokenAddress"
                let _328 := add(expr_12255_mpos, 64)
                let _329 := read_from_memoryt_address(_328)
                let expr_12256 := _329
                /// @src 148:16765:16797  "uint160(params.baseTokenAddress)"
                let expr_12257 := convert_t_address_to_t_uint160(expr_12256)
                /// @src 148:16757:16798  "uint256(uint160(params.baseTokenAddress))"
                let expr_12258 := convert_t_uint160_to_t_uint256(expr_12257)
                /// @src 148:16800:16802  "16"
                let expr_12259 := 0x10
                /// @src 148:16804:16810  "params"
                let _330_mpos := var_params_12140_mpos
                let expr_12260_mpos := _330_mpos
                /// @src 148:16804:16818  "params.tokenId"
                let _331 := add(expr_12260_mpos, 0)
                let _332 := read_from_memoryt_uint256(_331)
                let expr_12261 := _332
                /// @src 148:16742:16819  "getCircleCoord(uint256(uint160(params.baseTokenAddress)), 16, params.tokenId)"
                let _333 := convert_t_rational_16_by_1_to_t_uint256(expr_12259)
                let expr_12262 := fun_getCircleCoord_12464(expr_12258, _333, expr_12261)
                /// @src 148:16821:16822  "0"
                let expr_12263 := 0x00
                /// @src 148:16824:16827  "255"
                let expr_12264 := 0xff
                /// @src 148:16829:16832  "100"
                let expr_12265 := 0x64
                /// @src 148:16834:16837  "484"
                let expr_12266 := 0x01e4
                /// @src 148:16736:16838  "scale(getCircleCoord(uint256(uint160(params.baseTokenAddress)), 16, params.tokenId), 0, 255, 100, 484)"
                let _334 := convert_t_rational_0_by_1_to_t_uint256(expr_12263)
                let _335 := convert_t_rational_255_by_1_to_t_uint256(expr_12264)
                let _336 := convert_t_rational_100_by_1_to_t_uint256(expr_12265)
                let _337 := convert_t_rational_484_by_1_to_t_uint256(expr_12266)
                let expr_12267_mpos := fun_scale_12421(expr_12262, _334, _335, _336, _337)
                /// @src 148:16897:16903  "params"
                let _338_mpos := var_params_12140_mpos
                let expr_12274_mpos := _338_mpos
                /// @src 148:16897:16921  "params.quoteTokenAddress"
                let _339 := add(expr_12274_mpos, 32)
                let _340 := read_from_memoryt_address(_339)
                let expr_12275 := _340
                /// @src 148:16889:16922  "uint160(params.quoteTokenAddress)"
                let expr_12276 := convert_t_address_to_t_uint160(expr_12275)
                /// @src 148:16881:16923  "uint256(uint160(params.quoteTokenAddress))"
                let expr_12277 := convert_t_uint160_to_t_uint256(expr_12276)
                /// @src 148:16925:16927  "32"
                let expr_12278 := 0x20
                /// @src 148:16929:16935  "params"
                let _341_mpos := var_params_12140_mpos
                let expr_12279_mpos := _341_mpos
                /// @src 148:16929:16943  "params.tokenId"
                let _342 := add(expr_12279_mpos, 0)
                let _343 := read_from_memoryt_uint256(_342)
                let expr_12280 := _343
                /// @src 148:16866:16944  "getCircleCoord(uint256(uint160(params.quoteTokenAddress)), 32, params.tokenId)"
                let _344 := convert_t_rational_32_by_1_to_t_uint256(expr_12278)
                let expr_12281 := fun_getCircleCoord_12464(expr_12277, _344, expr_12280)
                /// @src 148:16946:16947  "0"
                let expr_12282 := 0x00
                /// @src 148:16949:16952  "255"
                let expr_12283 := 0xff
                /// @src 148:16954:16956  "16"
                let expr_12284 := 0x10
                /// @src 148:16958:16961  "274"
                let expr_12285 := 0x0112
                /// @src 148:16860:16962  "scale(getCircleCoord(uint256(uint160(params.quoteTokenAddress)), 32, params.tokenId), 0, 255, 16, 274)"
                let _345 := convert_t_rational_0_by_1_to_t_uint256(expr_12282)
                let _346 := convert_t_rational_255_by_1_to_t_uint256(expr_12283)
                let _347 := convert_t_rational_16_by_1_to_t_uint256(expr_12284)
                let _348 := convert_t_rational_274_by_1_to_t_uint256(expr_12285)
                let expr_12286_mpos := fun_scale_12421(expr_12281, _345, _346, _347, _348)
                /// @src 148:17021:17027  "params"
                let _349_mpos := var_params_12140_mpos
                let expr_12293_mpos := _349_mpos
                /// @src 148:17021:17044  "params.baseTokenAddress"
                let _350 := add(expr_12293_mpos, 64)
                let _351 := read_from_memoryt_address(_350)
                let expr_12294 := _351
                /// @src 148:17013:17045  "uint160(params.baseTokenAddress)"
                let expr_12295 := convert_t_address_to_t_uint160(expr_12294)
                /// @src 148:17005:17046  "uint256(uint160(params.baseTokenAddress))"
                let expr_12296 := convert_t_uint160_to_t_uint256(expr_12295)
                /// @src 148:17048:17050  "32"
                let expr_12297 := 0x20
                /// @src 148:17052:17058  "params"
                let _352_mpos := var_params_12140_mpos
                let expr_12298_mpos := _352_mpos
                /// @src 148:17052:17066  "params.tokenId"
                let _353 := add(expr_12298_mpos, 0)
                let _354 := read_from_memoryt_uint256(_353)
                let expr_12299 := _354
                /// @src 148:16990:17067  "getCircleCoord(uint256(uint160(params.baseTokenAddress)), 32, params.tokenId)"
                let _355 := convert_t_rational_32_by_1_to_t_uint256(expr_12297)
                let expr_12300 := fun_getCircleCoord_12464(expr_12296, _355, expr_12299)
                /// @src 148:17069:17070  "0"
                let expr_12301 := 0x00
                /// @src 148:17072:17075  "255"
                let expr_12302 := 0xff
                /// @src 148:17077:17080  "100"
                let expr_12303 := 0x64
                /// @src 148:17082:17085  "484"
                let expr_12304 := 0x01e4
                /// @src 148:16984:17086  "scale(getCircleCoord(uint256(uint160(params.baseTokenAddress)), 32, params.tokenId), 0, 255, 100, 484)"
                let _356 := convert_t_rational_0_by_1_to_t_uint256(expr_12301)
                let _357 := convert_t_rational_255_by_1_to_t_uint256(expr_12302)
                let _358 := convert_t_rational_100_by_1_to_t_uint256(expr_12303)
                let _359 := convert_t_rational_484_by_1_to_t_uint256(expr_12304)
                let expr_12305_mpos := fun_scale_12421(expr_12300, _356, _357, _358, _359)
                /// @src 148:17145:17151  "params"
                let _360_mpos := var_params_12140_mpos
                let expr_12312_mpos := _360_mpos
                /// @src 148:17145:17169  "params.quoteTokenAddress"
                let _361 := add(expr_12312_mpos, 32)
                let _362 := read_from_memoryt_address(_361)
                let expr_12313 := _362
                /// @src 148:17137:17170  "uint160(params.quoteTokenAddress)"
                let expr_12314 := convert_t_address_to_t_uint160(expr_12313)
                /// @src 148:17129:17171  "uint256(uint160(params.quoteTokenAddress))"
                let expr_12315 := convert_t_uint160_to_t_uint256(expr_12314)
                /// @src 148:17173:17175  "48"
                let expr_12316 := 0x30
                /// @src 148:17177:17183  "params"
                let _363_mpos := var_params_12140_mpos
                let expr_12317_mpos := _363_mpos
                /// @src 148:17177:17191  "params.tokenId"
                let _364 := add(expr_12317_mpos, 0)
                let _365 := read_from_memoryt_uint256(_364)
                let expr_12318 := _365
                /// @src 148:17114:17192  "getCircleCoord(uint256(uint160(params.quoteTokenAddress)), 48, params.tokenId)"
                let _366 := convert_t_rational_48_by_1_to_t_uint256(expr_12316)
                let expr_12319 := fun_getCircleCoord_12464(expr_12315, _366, expr_12318)
                /// @src 148:17194:17195  "0"
                let expr_12320 := 0x00
                /// @src 148:17197:17200  "255"
                let expr_12321 := 0xff
                /// @src 148:17202:17204  "16"
                let expr_12322 := 0x10
                /// @src 148:17206:17209  "274"
                let expr_12323 := 0x0112
                /// @src 148:17108:17210  "scale(getCircleCoord(uint256(uint160(params.quoteTokenAddress)), 48, params.tokenId), 0, 255, 16, 274)"
                let _367 := convert_t_rational_0_by_1_to_t_uint256(expr_12320)
                let _368 := convert_t_rational_255_by_1_to_t_uint256(expr_12321)
                let _369 := convert_t_rational_16_by_1_to_t_uint256(expr_12322)
                let _370 := convert_t_rational_274_by_1_to_t_uint256(expr_12323)
                let expr_12324_mpos := fun_scale_12421(expr_12319, _367, _368, _369, _370)
                /// @src 148:17269:17275  "params"
                let _371_mpos := var_params_12140_mpos
                let expr_12331_mpos := _371_mpos
                /// @src 148:17269:17292  "params.baseTokenAddress"
                let _372 := add(expr_12331_mpos, 64)
                let _373 := read_from_memoryt_address(_372)
                let expr_12332 := _373
                /// @src 148:17261:17293  "uint160(params.baseTokenAddress)"
                let expr_12333 := convert_t_address_to_t_uint160(expr_12332)
                /// @src 148:17253:17294  "uint256(uint160(params.baseTokenAddress))"
                let expr_12334 := convert_t_uint160_to_t_uint256(expr_12333)
                /// @src 148:17296:17298  "48"
                let expr_12335 := 0x30
                /// @src 148:17300:17306  "params"
                let _374_mpos := var_params_12140_mpos
                let expr_12336_mpos := _374_mpos
                /// @src 148:17300:17314  "params.tokenId"
                let _375 := add(expr_12336_mpos, 0)
                let _376 := read_from_memoryt_uint256(_375)
                let expr_12337 := _376
                /// @src 148:17238:17315  "getCircleCoord(uint256(uint160(params.baseTokenAddress)), 48, params.tokenId)"
                let _377 := convert_t_rational_48_by_1_to_t_uint256(expr_12335)
                let expr_12338 := fun_getCircleCoord_12464(expr_12334, _377, expr_12337)
                /// @src 148:17317:17318  "0"
                let expr_12339 := 0x00
                /// @src 148:17320:17323  "255"
                let expr_12340 := 0xff
                /// @src 148:17325:17328  "100"
                let expr_12341 := 0x64
                /// @src 148:17330:17333  "484"
                let expr_12342 := 0x01e4
                /// @src 148:17232:17334  "scale(getCircleCoord(uint256(uint160(params.baseTokenAddress)), 48, params.tokenId), 0, 255, 100, 484)"
                let _378 := convert_t_rational_0_by_1_to_t_uint256(expr_12339)
                let _379 := convert_t_rational_255_by_1_to_t_uint256(expr_12340)
                let _380 := convert_t_rational_100_by_1_to_t_uint256(expr_12341)
                let _381 := convert_t_rational_484_by_1_to_t_uint256(expr_12342)
                let expr_12343_mpos := fun_scale_12421(expr_12338, _378, _379, _380, _381)
                /// @src 148:15583:17349  "NFTSVG.SVGParams({..."
                let expr_12344_mpos := allocate_memory_struct_t_struct$_SVGParams_$25668_storage_ptr()
                write_to_memory_t_string_memory_ptr(add(expr_12344_mpos, 0), expr_12155_mpos)
                write_to_memory_t_string_memory_ptr(add(expr_12344_mpos, 32), expr_12159_mpos)
                write_to_memory_t_address(add(expr_12344_mpos, 64), expr_12161)
                write_to_memory_t_string_memory_ptr(add(expr_12344_mpos, 96), expr_12163_mpos)
                write_to_memory_t_string_memory_ptr(add(expr_12344_mpos, 128), expr_12165_mpos)
                write_to_memory_t_string_memory_ptr(add(expr_12344_mpos, 160), expr_12169_mpos)
                write_to_memory_t_int24(add(expr_12344_mpos, 192), expr_12171)
                write_to_memory_t_int24(add(expr_12344_mpos, 224), expr_12173)
                write_to_memory_t_int24(add(expr_12344_mpos, 256), expr_12175)
                write_to_memory_t_int8(add(expr_12344_mpos, 288), expr_12183)
                write_to_memory_t_uint256(add(expr_12344_mpos, 320), expr_12185)
                write_to_memory_t_string_memory_ptr(add(expr_12344_mpos, 352), expr_12196_mpos)
                write_to_memory_t_string_memory_ptr(add(expr_12344_mpos, 384), expr_12207_mpos)
                write_to_memory_t_string_memory_ptr(add(expr_12344_mpos, 416), expr_12218_mpos)
                write_to_memory_t_string_memory_ptr(add(expr_12344_mpos, 448), expr_12229_mpos)
                write_to_memory_t_string_memory_ptr(add(expr_12344_mpos, 480), expr_12248_mpos)
                write_to_memory_t_string_memory_ptr(add(expr_12344_mpos, 512), expr_12267_mpos)
                write_to_memory_t_string_memory_ptr(add(expr_12344_mpos, 544), expr_12286_mpos)
                write_to_memory_t_string_memory_ptr(add(expr_12344_mpos, 576), expr_12305_mpos)
                write_to_memory_t_string_memory_ptr(add(expr_12344_mpos, 608), expr_12324_mpos)
                write_to_memory_t_string_memory_ptr(add(expr_12344_mpos, 640), expr_12343_mpos)
                /// @src 148:15535:17349  "NFTSVG.SVGParams memory svgParams =..."
                let var_svgParams_12149_mpos := expr_12344_mpos
                /// @src 148:17367:17373  "NFTSVG"
                let expr_12346_address := linkersymbol("uniswap/v3-periphery-1.3.0/contracts/libraries/NFTSVG.sol:NFTSVG")
                /// @src 148:17386:17395  "svgParams"
                let _382_mpos := var_svgParams_12149_mpos
                let expr_12348_mpos := _382_mpos
                /// @src 148:17367:17396  "NFTSVG.generateSVG(svgParams)"
                let expr_12349_mpos := fun_generateSVG_25732(expr_12348_mpos)
                /// @src 148:17360:17396  "return NFTSVG.generateSVG(svgParams)"
                var_svg_12143_mpos := expr_12349_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(memPtr) {

            }

            function copy_literal_to_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(0)
                store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(add(memPtr, 32))
            }

            function convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470()
            }

            function store_literal_in_memory_84d8a590de33e00cbdc16e1f28c3506f5ec15c599fab9a6a4bcd575cc2f110ce(memPtr) {

                mstore(add(memPtr, 0), "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef")

                mstore(add(memPtr, 32), "ghijklmnopqrstuvwxyz0123456789+/")

            }

            function copy_literal_to_memory_84d8a590de33e00cbdc16e1f28c3506f5ec15c599fab9a6a4bcd575cc2f110ce() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(64)
                store_literal_in_memory_84d8a590de33e00cbdc16e1f28c3506f5ec15c599fab9a6a4bcd575cc2f110ce(add(memPtr, 32))
            }

            function convert_t_stringliteral_84d8a590de33e00cbdc16e1f28c3506f5ec15c599fab9a6a4bcd575cc2f110ce_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_84d8a590de33e00cbdc16e1f28c3506f5ec15c599fab9a6a4bcd575cc2f110ce()
            }

            /// @src 3:211:310  "string internal constant TABLE = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'"
            function constant_TABLE_24725() -> ret_mpos {
                /// @src 3:244:310  "'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'"
                let _385_mpos := convert_t_stringliteral_84d8a590de33e00cbdc16e1f28c3506f5ec15c599fab9a6a4bcd575cc2f110ce_to_t_string_memory_ptr()

                ret_mpos := _385_mpos
            }

            function cleanup_t_rational_3_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_3_by_1(value)))
            }

            function checked_div_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }

                r := div(x, y)
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

            /// @ast-id 24769
            /// @src 3:317:2302  "function encode(bytes memory data) internal pure returns (string memory) {..."
            function fun_encode_24769(var_data_24727_mpos) -> var__24730_mpos {
                /// @src 3:375:388  "string memory"
                let zero_t_string_memory_ptr_383_mpos := zero_value_for_split_t_string_memory_ptr()
                var__24730_mpos := zero_t_string_memory_ptr_383_mpos

                /// @src 3:404:408  "data"
                let _384_mpos := var_data_24727_mpos
                let expr_24732_mpos := _384_mpos
                /// @src 3:404:415  "data.length"
                let expr_24733 := array_length_t_bytes_memory_ptr(expr_24732_mpos)
                /// @src 3:419:420  "0"
                let expr_24734 := 0x00
                /// @src 3:404:420  "data.length == 0"
                let expr_24735 := eq(cleanup_t_uint256(expr_24733), convert_t_rational_0_by_1_to_t_uint256(expr_24734))
                /// @src 3:400:431  "if (data.length == 0) return ''"
                if expr_24735 {
                    /// @src 3:422:431  "return ''"
                    var__24730_mpos := convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_string_memory_ptr()
                    leave
                    /// @src 3:400:431  "if (data.length == 0) return ''"
                }
                /// @src 3:510:515  "TABLE"
                let expr_24741_mpos := constant_TABLE_24725()
                /// @src 3:488:515  "string memory table = TABLE"
                let var_table_24740_mpos := expr_24741_mpos
                /// @src 3:585:586  "4"
                let expr_24745 := 0x04
                /// @src 3:591:595  "data"
                let _386_mpos := var_data_24727_mpos
                let expr_24746_mpos := _386_mpos
                /// @src 3:591:602  "data.length"
                let expr_24747 := array_length_t_bytes_memory_ptr(expr_24746_mpos)
                /// @src 3:605:606  "2"
                let expr_24748 := 0x02
                /// @src 3:591:606  "data.length + 2"
                let expr_24749 := checked_add_t_uint256(expr_24747, convert_t_rational_2_by_1_to_t_uint256(expr_24748))

                /// @src 3:590:607  "(data.length + 2)"
                let expr_24750 := expr_24749
                /// @src 3:610:611  "3"
                let expr_24751 := 0x03
                /// @src 3:590:611  "(data.length + 2) / 3"
                let expr_24752 := checked_div_t_uint256(expr_24750, convert_t_rational_3_by_1_to_t_uint256(expr_24751))

                /// @src 3:589:612  "((data.length + 2) / 3)"
                let expr_24753 := expr_24752
                /// @src 3:585:612  "4 * ((data.length + 2) / 3)"
                let expr_24754 := checked_mul_t_uint256(convert_t_rational_4_by_1_to_t_uint256(expr_24745), expr_24753)

                /// @src 3:564:612  "uint256 encodedLen = 4 * ((data.length + 2) / 3)"
                let var_encodedLen_24744 := expr_24754
                /// @src 3:726:736  "encodedLen"
                let _387 := var_encodedLen_24744
                let expr_24760 := _387
                /// @src 3:739:741  "32"
                let expr_24761 := 0x20
                /// @src 3:726:741  "encodedLen + 32"
                let expr_24762 := checked_add_t_uint256(expr_24760, convert_t_rational_32_by_1_to_t_uint256(expr_24761))

                /// @src 3:715:742  "new string(encodedLen + 32)"
                let expr_24763_mpos := allocate_and_zero_memory_array_t_string_memory_ptr(expr_24762)
                /// @src 3:692:742  "string memory result = new string(encodedLen + 32)"
                let var_result_24757_mpos := expr_24763_mpos
                /// @src 3:753:2264  "assembly {..."
                {
                    mstore(var_result_24757_mpos, var_encodedLen_24744)
                    let usr$tablePtr := add(var_table_24740_mpos, 1)
                    let usr$dataPtr := var_data_24727_mpos
                    let usr$endPtr := add(usr$dataPtr, mload(var_data_24727_mpos))
                    let usr$resultPtr := add(var_result_24757_mpos, 32)
                    for { } lt(usr$dataPtr, usr$endPtr) { }
                    {
                        usr$dataPtr := add(usr$dataPtr, 3)
                        let usr$input := mload(usr$dataPtr)
                        mstore(usr$resultPtr, shl(248, mload(add(usr$tablePtr, and(shr(18, usr$input), 0x3F)))))
                        usr$resultPtr := add(usr$resultPtr, 1)
                        mstore(usr$resultPtr, shl(248, mload(add(usr$tablePtr, and(shr(12, usr$input), 0x3F)))))
                        usr$resultPtr := add(usr$resultPtr, 1)
                        mstore(usr$resultPtr, shl(248, mload(add(usr$tablePtr, and(shr(6, usr$input), 0x3F)))))
                        usr$resultPtr := add(usr$resultPtr, 1)
                        mstore(usr$resultPtr, shl(248, mload(add(usr$tablePtr, and(usr$input, 0x3F)))))
                        usr$resultPtr := add(usr$resultPtr, 1)
                    }
                    switch mod(mload(var_data_24727_mpos), 3)
                    case 1 {
                        mstore(sub(usr$resultPtr, 2), shl(240, 0x3d3d))
                    }
                    case 2 {
                        mstore(sub(usr$resultPtr, 1), shl(248, 0x3d))
                    }
                }
                /// @src 3:2289:2295  "result"
                let _388_mpos := var_result_24757_mpos
                let expr_24766_mpos := _388_mpos
                /// @src 3:2282:2295  "return result"
                var__24730_mpos := expr_24766_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function store_literal_in_memory_50b058e9b5320e58880d88223c9801cd9eecdcf90323d5c2318bc1b6b916e862(memPtr) {

                mstore(add(memPtr, 0), "SafeMath: subtraction overflow")

            }

            function abi_encode_t_stringliteral_50b058e9b5320e58880d88223c9801cd9eecdcf90323d5c2318bc1b6b916e862_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 30)
                store_literal_in_memory_50b058e9b5320e58880d88223c9801cd9eecdcf90323d5c2318bc1b6b916e862(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_50b058e9b5320e58880d88223c9801cd9eecdcf90323d5c2318bc1b6b916e862__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_50b058e9b5320e58880d88223c9801cd9eecdcf90323d5c2318bc1b6b916e862_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_50b058e9b5320e58880d88223c9801cd9eecdcf90323d5c2318bc1b6b916e862(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_50b058e9b5320e58880d88223c9801cd9eecdcf90323d5c2318bc1b6b916e862__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            /// @ast-id 5837
            /// @src 32:3165:3320  "function sub(uint256 a, uint256 b) internal pure returns (uint256) {..."
            function fun_sub_5837(var_a_5818, var_b_5820) -> var__5823 {
                /// @src 32:3223:3230  "uint256"
                let zero_t_uint256_389 := zero_value_for_split_t_uint256()
                var__5823 := zero_t_uint256_389

                /// @src 32:3250:3251  "b"
                let _390 := var_b_5820
                let expr_5826 := _390
                /// @src 32:3255:3256  "a"
                let _391 := var_a_5818
                let expr_5827 := _391
                /// @src 32:3250:3256  "b <= a"
                let expr_5828 := iszero(gt(cleanup_t_uint256(expr_5826), cleanup_t_uint256(expr_5827)))
                /// @src 32:3242:3291  "require(b <= a, \"SafeMath: subtraction overflow\")"
                require_helper_t_stringliteral_50b058e9b5320e58880d88223c9801cd9eecdcf90323d5c2318bc1b6b916e862(expr_5828)
                /// @src 32:3308:3309  "a"
                let _392 := var_a_5818
                let expr_5832 := _392
                /// @src 32:3312:3313  "b"
                let _393 := var_b_5820
                let expr_5833 := _393
                /// @src 32:3308:3313  "a - b"
                let expr_5834 := checked_sub_t_uint256(expr_5832, expr_5833)

                /// @src 32:3301:3313  "return a - b"
                var__5823 := expr_5834
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function store_literal_in_memory_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a(memPtr) {

                mstore(add(memPtr, 0), "SafeMath: addition overflow")

            }

            function abi_encode_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 27)
                store_literal_in_memory_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 5815
            /// @src 32:2719:2894  "function add(uint256 a, uint256 b) internal pure returns (uint256) {..."
            function fun_add_5815(var_a_5792, var_b_5794) -> var__5797 {
                /// @src 32:2777:2784  "uint256"
                let zero_t_uint256_394 := zero_value_for_split_t_uint256()
                var__5797 := zero_t_uint256_394

                /// @src 32:2808:2809  "a"
                let _395 := var_a_5792
                let expr_5801 := _395
                /// @src 32:2812:2813  "b"
                let _396 := var_b_5794
                let expr_5802 := _396
                /// @src 32:2808:2813  "a + b"
                let expr_5803 := checked_add_t_uint256(expr_5801, expr_5802)

                /// @src 32:2796:2813  "uint256 c = a + b"
                let var_c_5800 := expr_5803
                /// @src 32:2831:2832  "c"
                let _397 := var_c_5800
                let expr_5806 := _397
                /// @src 32:2836:2837  "a"
                let _398 := var_a_5792
                let expr_5807 := _398
                /// @src 32:2831:2837  "c >= a"
                let expr_5808 := iszero(lt(cleanup_t_uint256(expr_5806), cleanup_t_uint256(expr_5807)))
                /// @src 32:2823:2869  "require(c >= a, \"SafeMath: addition overflow\")"
                require_helper_t_stringliteral_30cc447bcc13b3e22b45cef0dd9b0b514842d836dd9b6eb384e20dedfb47723a(expr_5808)
                /// @src 32:2886:2887  "c"
                let _399 := var_c_5800
                let expr_5812 := _399
                /// @src 32:2879:2887  "return c"
                var__5797 := expr_5812
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function store_literal_in_memory_5b7cc70dda4dc2143e5adb63bd5d1f349504f461dbdfd9bc76fac1f8ca6d019f(memPtr) {

                mstore(add(memPtr, 0), "SafeMath: division by zero")

            }

            function abi_encode_t_stringliteral_5b7cc70dda4dc2143e5adb63bd5d1f349504f461dbdfd9bc76fac1f8ca6d019f_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 26)
                store_literal_in_memory_5b7cc70dda4dc2143e5adb63bd5d1f349504f461dbdfd9bc76fac1f8ca6d019f(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_5b7cc70dda4dc2143e5adb63bd5d1f349504f461dbdfd9bc76fac1f8ca6d019f__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_5b7cc70dda4dc2143e5adb63bd5d1f349504f461dbdfd9bc76fac1f8ca6d019f_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_5b7cc70dda4dc2143e5adb63bd5d1f349504f461dbdfd9bc76fac1f8ca6d019f(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_5b7cc70dda4dc2143e5adb63bd5d1f349504f461dbdfd9bc76fac1f8ca6d019f__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 5893
            /// @src 32:4246:4396  "function div(uint256 a, uint256 b) internal pure returns (uint256) {..."
            function fun_div_5893(var_a_5874, var_b_5876) -> var__5879 {
                /// @src 32:4304:4311  "uint256"
                let zero_t_uint256_400 := zero_value_for_split_t_uint256()
                var__5879 := zero_t_uint256_400

                /// @src 32:4331:4332  "b"
                let _401 := var_b_5876
                let expr_5882 := _401
                /// @src 32:4335:4336  "0"
                let expr_5883 := 0x00
                /// @src 32:4331:4336  "b > 0"
                let expr_5884 := gt(cleanup_t_uint256(expr_5882), convert_t_rational_0_by_1_to_t_uint256(expr_5883))
                /// @src 32:4323:4367  "require(b > 0, \"SafeMath: division by zero\")"
                require_helper_t_stringliteral_5b7cc70dda4dc2143e5adb63bd5d1f349504f461dbdfd9bc76fac1f8ca6d019f(expr_5884)
                /// @src 32:4384:4385  "a"
                let _402 := var_a_5874
                let expr_5888 := _402
                /// @src 32:4388:4389  "b"
                let _403 := var_b_5876
                let expr_5889 := _403
                /// @src 32:4384:4389  "a / b"
                let expr_5890 := checked_div_t_uint256(expr_5888, expr_5889)

                /// @src 32:4377:4389  "return a / b"
                var__5879 := expr_5890
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function convert_t_stringliteral_43b2f7df8a0d3a744d9a3126411ef3787d9e447a59b458310e828119cf8614ad_to_t_bytes1() -> converted {
                converted := 0x2500000000000000000000000000000000000000000000000000000000000000
            }

            function convert_t_stringliteral_044852b2a670ade5407e78fb2863c51de9fcb96542a07186fe3aeda6bb8a116d_to_t_bytes1() -> converted {
                converted := 0x3000000000000000000000000000000000000000000000000000000000000000
            }

            function convert_t_stringliteral_6f010af653ebe3cb07d297a4ef13366103d392ceffa68dd48232e6e9ff2187bf_to_t_bytes1() -> converted {
                converted := 0x2e00000000000000000000000000000000000000000000000000000000000000
            }

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            function convert_t_rational_48_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_48_by_1(value)))
            }

            function shift_left_248(value) -> newValue {
                newValue :=

                shl(248, value)

            }

            function convert_t_uint8_to_t_bytes1(value) -> converted {
                converted := cleanup_t_bytes1(shift_left_248(cleanup_t_uint8(value)))
            }

            function decrement_t_uint8(value) -> ret {
                value := cleanup_t_uint8(value)
                if eq(value, 0x00) { panic_error_0x11() }
                ret := sub(value, 1)
            }

            function mod_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }
                r := mod(x, y)
            }

            /// @ast-id 11285
            /// @src 148:7471:8438  "function generateDecimalString(DecimalStringParams memory params) private pure returns (string memory) {..."
            function fun_generateDecimalString_11285(var_params_11153_mpos) -> var__11156_mpos {
                /// @src 148:7559:7572  "string memory"
                let zero_t_string_memory_ptr_404_mpos := zero_value_for_split_t_string_memory_ptr()
                var__11156_mpos := zero_t_string_memory_ptr_404_mpos

                /// @src 148:7616:7622  "params"
                let _405_mpos := var_params_11153_mpos
                let expr_11162_mpos := _405_mpos
                /// @src 148:7616:7635  "params.bufferLength"
                let _406 := add(expr_11162_mpos, 32)
                let _407 := read_from_memoryt_uint8(_406)
                let expr_11163 := _407
                /// @src 148:7606:7636  "new bytes(params.bufferLength)"
                let _408 := convert_t_uint8_to_t_uint256(expr_11163)
                let expr_11164_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(_408)
                /// @src 148:7584:7636  "bytes memory buffer = new bytes(params.bufferLength)"
                let var_buffer_11159_mpos := expr_11164_mpos
                /// @src 148:7650:7656  "params"
                let _409_mpos := var_params_11153_mpos
                let expr_11166_mpos := _409_mpos
                /// @src 148:7650:7666  "params.isPercent"
                let _410 := add(expr_11166_mpos, 224)
                let _411 := read_from_memoryt_bool(_410)
                let expr_11167 := _411
                /// @src 148:7646:7724  "if (params.isPercent) {..."
                if expr_11167 {
                    /// @src 148:7682:7713  "buffer[buffer.length - 1] = '%'"
                    let _412 := convert_t_stringliteral_43b2f7df8a0d3a744d9a3126411ef3787d9e447a59b458310e828119cf8614ad_to_t_bytes1()
                    /// @src 148:7682:7688  "buffer"
                    let _413_mpos := var_buffer_11159_mpos
                    let expr_11168_mpos := _413_mpos
                    /// @src 148:7689:7695  "buffer"
                    let _414_mpos := var_buffer_11159_mpos
                    let expr_11169_mpos := _414_mpos
                    /// @src 148:7689:7702  "buffer.length"
                    let expr_11170 := array_length_t_bytes_memory_ptr(expr_11169_mpos)
                    /// @src 148:7705:7706  "1"
                    let expr_11171 := 0x01
                    /// @src 148:7689:7706  "buffer.length - 1"
                    let expr_11172 := checked_sub_t_uint256(expr_11170, convert_t_rational_1_by_1_to_t_uint256(expr_11171))

                    /// @src 148:7682:7713  "buffer[buffer.length - 1] = '%'"
                    let _415 := _412
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_11168_mpos, expr_11172), byte(0, _415))
                    let expr_11175 := _412
                    /// @src 148:7646:7724  "if (params.isPercent) {..."
                }
                /// @src 148:7737:7743  "params"
                let _416_mpos := var_params_11153_mpos
                let expr_11179_mpos := _416_mpos
                /// @src 148:7737:7757  "params.isLessThanOne"
                let _417 := add(expr_11179_mpos, 192)
                let _418 := read_from_memoryt_bool(_417)
                let expr_11180 := _418
                /// @src 148:7733:7828  "if (params.isLessThanOne) {..."
                if expr_11180 {
                    /// @src 148:7773:7788  "buffer[0] = '0'"
                    let _419 := convert_t_stringliteral_044852b2a670ade5407e78fb2863c51de9fcb96542a07186fe3aeda6bb8a116d_to_t_bytes1()
                    /// @src 148:7773:7779  "buffer"
                    let _420_mpos := var_buffer_11159_mpos
                    let expr_11181_mpos := _420_mpos
                    /// @src 148:7780:7781  "0"
                    let expr_11182 := 0x00
                    /// @src 148:7773:7788  "buffer[0] = '0'"
                    let _421 := _419
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_11181_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_11182)), byte(0, _421))
                    let expr_11185 := _419
                    /// @src 148:7802:7817  "buffer[1] = '.'"
                    let _422 := convert_t_stringliteral_6f010af653ebe3cb07d297a4ef13366103d392ceffa68dd48232e6e9ff2187bf_to_t_bytes1()
                    /// @src 148:7802:7808  "buffer"
                    let _423_mpos := var_buffer_11159_mpos
                    let expr_11187_mpos := _423_mpos
                    /// @src 148:7809:7810  "1"
                    let expr_11188 := 0x01
                    /// @src 148:7802:7817  "buffer[1] = '.'"
                    let _424 := _422
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_11187_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_11188)), byte(0, _424))
                    let expr_11191 := _422
                    /// @src 148:7733:7828  "if (params.isLessThanOne) {..."
                }
                /// @src 148:7874:8047  "for (uint256 zerosCursor = params.zerosStartIndex; zerosCursor < params.zerosEndIndex.add(1); zerosCursor++) {..."
                for {
                    /// @src 148:7901:7907  "params"
                    let _425_mpos := var_params_11153_mpos
                    let expr_11197_mpos := _425_mpos
                    /// @src 148:7901:7923  "params.zerosStartIndex"
                    let _426 := add(expr_11197_mpos, 128)
                    let _427 := read_from_memoryt_uint8(_426)
                    let expr_11198 := _427
                    /// @src 148:7879:7923  "uint256 zerosCursor = params.zerosStartIndex"
                    let var_zerosCursor_11196 := convert_t_uint8_to_t_uint256(expr_11198)
                    } 1 {
                    /// @src 148:7968:7981  "zerosCursor++"
                    let _429 := var_zerosCursor_11196
                    let _428 := increment_wrapping_t_uint256(_429)
                    var_zerosCursor_11196 := _428
                    let expr_11208 := _429
                }
                {
                    /// @src 148:7925:7936  "zerosCursor"
                    let _430 := var_zerosCursor_11196
                    let expr_11200 := _430
                    /// @src 148:7939:7945  "params"
                    let _431_mpos := var_params_11153_mpos
                    let expr_11201_mpos := _431_mpos
                    /// @src 148:7939:7959  "params.zerosEndIndex"
                    let _432 := add(expr_11201_mpos, 160)
                    let _433 := read_from_memoryt_uint8(_432)
                    let expr_11202 := _433
                    /// @src 148:7939:7963  "params.zerosEndIndex.add"
                    let expr_11203_self := convert_t_uint8_to_t_uint256(expr_11202)
                    /// @src 148:7964:7965  "1"
                    let expr_11204 := 0x01
                    /// @src 148:7939:7966  "params.zerosEndIndex.add(1)"
                    let _434 := convert_t_rational_1_by_1_to_t_uint256(expr_11204)
                    let expr_11205 := fun_add_5815(expr_11203_self, _434)
                    /// @src 148:7925:7966  "zerosCursor < params.zerosEndIndex.add(1)"
                    let expr_11206 := lt(cleanup_t_uint256(expr_11200), cleanup_t_uint256(expr_11205))
                    if iszero(expr_11206) { break }
                    /// @src 148:8032:8034  "48"
                    let expr_11217 := 0x30
                    /// @src 148:8026:8035  "uint8(48)"
                    let expr_11218 := convert_t_rational_48_by_1_to_t_uint8(expr_11217)
                    /// @src 148:8019:8036  "bytes1(uint8(48))"
                    let expr_11219 := convert_t_uint8_to_t_bytes1(expr_11218)
                    /// @src 148:7997:8003  "buffer"
                    let _435_mpos := var_buffer_11159_mpos
                    let expr_11210_mpos := _435_mpos
                    /// @src 148:8004:8015  "zerosCursor"
                    let _436 := var_zerosCursor_11196
                    let expr_11211 := _436
                    /// @src 148:7997:8036  "buffer[zerosCursor] = bytes1(uint8(48))"
                    let _437 := expr_11219
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_11210_mpos, expr_11211), byte(0, _437))
                    let expr_11220 := expr_11219
                }
                /// @src 148:8079:8401  "while (params.sigfigs > 0) {..."
                for {
                    } 1 {
                }
                {
                    /// @src 148:8086:8092  "params"
                    let _438_mpos := var_params_11153_mpos
                    let expr_11224_mpos := _438_mpos
                    /// @src 148:8086:8100  "params.sigfigs"
                    let _439 := add(expr_11224_mpos, 0)
                    let _440 := read_from_memoryt_uint256(_439)
                    let expr_11225 := _440
                    /// @src 148:8103:8104  "0"
                    let expr_11226 := 0x00
                    /// @src 148:8086:8104  "params.sigfigs > 0"
                    let expr_11227 := gt(cleanup_t_uint256(expr_11225), convert_t_rational_0_by_1_to_t_uint256(expr_11226))
                    if iszero(expr_11227) { break }
                    /// @src 148:8124:8130  "params"
                    let _441_mpos := var_params_11153_mpos
                    let expr_11228_mpos := _441_mpos
                    /// @src 148:8124:8143  "params.decimalIndex"
                    let _442 := add(expr_11228_mpos, 96)
                    let _443 := read_from_memoryt_uint8(_442)
                    let expr_11229 := _443
                    /// @src 148:8146:8147  "0"
                    let expr_11230 := 0x00
                    /// @src 148:8124:8147  "params.decimalIndex > 0"
                    let expr_11231 := gt(cleanup_t_uint8(expr_11229), convert_t_rational_0_by_1_to_t_uint8(expr_11230))
                    /// @src 148:8124:8192  "params.decimalIndex > 0 && params.sigfigIndex == params.decimalIndex"
                    let expr_11237 := expr_11231
                    if expr_11237 {
                        /// @src 148:8151:8157  "params"
                        let _444_mpos := var_params_11153_mpos
                        let expr_11232_mpos := _444_mpos
                        /// @src 148:8151:8169  "params.sigfigIndex"
                        let _445 := add(expr_11232_mpos, 64)
                        let _446 := read_from_memoryt_uint8(_445)
                        let expr_11233 := _446
                        /// @src 148:8173:8179  "params"
                        let _447_mpos := var_params_11153_mpos
                        let expr_11234_mpos := _447_mpos
                        /// @src 148:8173:8192  "params.decimalIndex"
                        let _448 := add(expr_11234_mpos, 96)
                        let _449 := read_from_memoryt_uint8(_448)
                        let expr_11235 := _449
                        /// @src 148:8151:8192  "params.sigfigIndex == params.decimalIndex"
                        let expr_11236 := eq(cleanup_t_uint8(expr_11233), cleanup_t_uint8(expr_11235))
                        /// @src 148:8124:8192  "params.decimalIndex > 0 && params.sigfigIndex == params.decimalIndex"
                        expr_11237 := expr_11236
                    }
                    /// @src 148:8120:8261  "if (params.decimalIndex > 0 && params.sigfigIndex == params.decimalIndex) {..."
                    if expr_11237 {
                        /// @src 148:8212:8246  "buffer[params.sigfigIndex--] = '.'"
                        let _450 := convert_t_stringliteral_6f010af653ebe3cb07d297a4ef13366103d392ceffa68dd48232e6e9ff2187bf_to_t_bytes1()
                        /// @src 148:8212:8218  "buffer"
                        let _451_mpos := var_buffer_11159_mpos
                        let expr_11238_mpos := _451_mpos
                        /// @src 148:8219:8225  "params"
                        let _452_mpos := var_params_11153_mpos
                        let expr_11239_mpos := _452_mpos
                        /// @src 148:8219:8237  "params.sigfigIndex"
                        let _453 := add(expr_11239_mpos, 64)
                        /// @src 148:8219:8239  "params.sigfigIndex--"
                        let _455 := read_from_memoryt_uint8(_453)
                        let _454 := decrement_t_uint8(_455)
                        let _456 := _454
                        write_to_memory_t_uint8(_453, _456)
                        let expr_11241 := _455
                        /// @src 148:8212:8246  "buffer[params.sigfigIndex--] = '.'"
                        let _457 := _450
                        mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_11238_mpos, convert_t_uint8_to_t_uint256(expr_11241)), byte(0, _457))
                        let expr_11244 := _450
                        /// @src 148:8120:8261  "if (params.decimalIndex > 0 && params.sigfigIndex == params.decimalIndex) {..."
                    }
                    /// @src 148:8326:8328  "48"
                    let expr_11259 := 0x30
                    /// @src 148:8318:8329  "uint256(48)"
                    let expr_11260 := convert_t_rational_48_by_1_to_t_uint256(expr_11259)
                    /// @src 148:8318:8333  "uint256(48).add"
                    let expr_11261_self := expr_11260
                    /// @src 148:8334:8340  "params"
                    let _458_mpos := var_params_11153_mpos
                    let expr_11262_mpos := _458_mpos
                    /// @src 148:8334:8348  "params.sigfigs"
                    let _459 := add(expr_11262_mpos, 0)
                    let _460 := read_from_memoryt_uint256(_459)
                    let expr_11263 := _460
                    /// @src 148:8351:8353  "10"
                    let expr_11264 := 0x0a
                    /// @src 148:8334:8353  "params.sigfigs % 10"
                    let expr_11265 := mod_t_uint256(expr_11263, convert_t_rational_10_by_1_to_t_uint256(expr_11264))

                    /// @src 148:8318:8354  "uint256(48).add(params.sigfigs % 10)"
                    let expr_11266 := fun_add_5815(expr_11261_self, expr_11265)
                    /// @src 148:8312:8355  "uint8(uint256(48).add(params.sigfigs % 10))"
                    let expr_11267 := convert_t_uint256_to_t_uint8(expr_11266)
                    /// @src 148:8305:8356  "bytes1(uint8(uint256(48).add(params.sigfigs % 10)))"
                    let expr_11268 := convert_t_uint8_to_t_bytes1(expr_11267)
                    /// @src 148:8274:8280  "buffer"
                    let _461_mpos := var_buffer_11159_mpos
                    let expr_11248_mpos := _461_mpos
                    /// @src 148:8281:8287  "params"
                    let _462_mpos := var_params_11153_mpos
                    let expr_11249_mpos := _462_mpos
                    /// @src 148:8281:8299  "params.sigfigIndex"
                    let _463 := add(expr_11249_mpos, 64)
                    /// @src 148:8281:8301  "params.sigfigIndex--"
                    let _465 := read_from_memoryt_uint8(_463)
                    let _464 := decrement_t_uint8(_465)
                    let _466 := _464
                    write_to_memory_t_uint8(_463, _466)
                    let expr_11251 := _465
                    /// @src 148:8274:8356  "buffer[params.sigfigIndex--] = bytes1(uint8(uint256(48).add(params.sigfigs % 10)))"
                    let _467 := expr_11268
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_11248_mpos, convert_t_uint8_to_t_uint256(expr_11251)), byte(0, _467))
                    let expr_11269 := expr_11268
                    /// @src 148:8388:8390  "10"
                    let expr_11274 := 0x0a
                    /// @src 148:8370:8390  "params.sigfigs /= 10"
                    let _468 := convert_t_rational_10_by_1_to_t_uint256(expr_11274)
                    /// @src 148:8370:8376  "params"
                    let _469_mpos := var_params_11153_mpos
                    let expr_11271_mpos := _469_mpos
                    /// @src 148:8370:8384  "params.sigfigs"
                    let _470 := add(expr_11271_mpos, 0)
                    /// @src 148:8370:8390  "params.sigfigs /= 10"
                    let _471 := read_from_memoryt_uint256(_470)
                    let expr_11275 := checked_div_t_uint256(_471, _468)

                    let _472 := expr_11275
                    write_to_memory_t_uint256(_470, _472)
                }
                /// @src 148:8424:8430  "buffer"
                let _473_mpos := var_buffer_11159_mpos
                let expr_11281_mpos := _473_mpos
                /// @src 148:8417:8431  "string(buffer)"
                let expr_11282_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_11281_mpos)
                /// @src 148:8410:8431  "return string(buffer)"
                var__11156_mpos := expr_11282_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

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
                let _476 := convert_t_rational_minus_887272_by_1_to_t_int24(expr_5102)

                ret := _476
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
                let _480 := expr_5107

                ret := _480
            }

            function cleanup_t_rational_6277101735386680763835789423207666416102355444464034512896_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_6277101735386680763835789423207666416102355444464034512896_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_6277101735386680763835789423207666416102355444464034512896_by_1(value)))
            }

            function convert_t_uint256_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint256(value)))
            }

            function store_literal_in_memory_871eebeccaa432de5f38a72c534eb2fa59c2c3b49e3c6629c16c11981ee74f2a(memPtr) {

                mstore(add(memPtr, 0), "MIN")

            }

            function copy_literal_to_memory_871eebeccaa432de5f38a72c534eb2fa59c2c3b49e3c6629c16c11981ee74f2a() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(3)
                store_literal_in_memory_871eebeccaa432de5f38a72c534eb2fa59c2c3b49e3c6629c16c11981ee74f2a(add(memPtr, 32))
            }

            function convert_t_stringliteral_871eebeccaa432de5f38a72c534eb2fa59c2c3b49e3c6629c16c11981ee74f2a_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_871eebeccaa432de5f38a72c534eb2fa59c2c3b49e3c6629c16c11981ee74f2a()
            }

            function store_literal_in_memory_a42787877dd247913f847bc654d767d1919585674d8f1a26ea00084043233daa(memPtr) {

                mstore(add(memPtr, 0), "MAX")

            }

            function copy_literal_to_memory_a42787877dd247913f847bc654d767d1919585674d8f1a26ea00084043233daa() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(3)
                store_literal_in_memory_a42787877dd247913f847bc654d767d1919585674d8f1a26ea00084043233daa(add(memPtr, 32))
            }

            function convert_t_stringliteral_a42787877dd247913f847bc654d767d1919585674d8f1a26ea00084043233daa_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_a42787877dd247913f847bc654d767d1919585674d8f1a26ea00084043233daa()
            }

            /// @ast-id 11367
            /// @src 148:8444:9221  "function tickToDecimalString(..."
            function fun_tickToDecimalString_11367(var_tick_11287, var_tickSpacing_11289, var_baseTokenDecimals_11291, var_quoteTokenDecimals_11293, var_flipRatio_11295) -> var__11298_mpos {
                /// @src 148:8640:8653  "string memory"
                let zero_t_string_memory_ptr_474_mpos := zero_value_for_split_t_string_memory_ptr()
                var__11298_mpos := zero_t_string_memory_ptr_474_mpos

                /// @src 148:8669:8673  "tick"
                let _475 := var_tick_11287
                let expr_11300 := _475
                /// @src 148:8678:8686  "TickMath"
                let expr_11301_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                /// @src 148:8678:8695  "TickMath.MIN_TICK"
                let expr_11302 := constant_MIN_TICK_5103()
                /// @src 148:8698:8709  "tickSpacing"
                let _477 := var_tickSpacing_11289
                let expr_11303 := _477
                /// @src 148:8678:8709  "TickMath.MIN_TICK / tickSpacing"
                let expr_11304 := checked_div_t_int24(expr_11302, expr_11303)

                /// @src 148:8677:8710  "(TickMath.MIN_TICK / tickSpacing)"
                let expr_11305 := expr_11304
                /// @src 148:8713:8724  "tickSpacing"
                let _478 := var_tickSpacing_11289
                let expr_11306 := _478
                /// @src 148:8677:8724  "(TickMath.MIN_TICK / tickSpacing) * tickSpacing"
                let expr_11307 := checked_mul_t_int24(expr_11305, expr_11306)

                /// @src 148:8669:8724  "tick == (TickMath.MIN_TICK / tickSpacing) * tickSpacing"
                let expr_11308 := eq(cleanup_t_int24(expr_11300), cleanup_t_int24(expr_11307))
                /// @src 148:8665:9215  "if (tick == (TickMath.MIN_TICK / tickSpacing) * tickSpacing) {..."
                switch expr_11308
                case 0 {
                    /// @src 148:8794:8798  "tick"
                    let _479 := var_tick_11287
                    let expr_11316 := _479
                    /// @src 148:8803:8811  "TickMath"
                    let expr_11317_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                    /// @src 148:8803:8820  "TickMath.MAX_TICK"
                    let expr_11318 := constant_MAX_TICK_5108()
                    /// @src 148:8823:8834  "tickSpacing"
                    let _481 := var_tickSpacing_11289
                    let expr_11319 := _481
                    /// @src 148:8803:8834  "TickMath.MAX_TICK / tickSpacing"
                    let expr_11320 := checked_div_t_int24(expr_11318, expr_11319)

                    /// @src 148:8802:8835  "(TickMath.MAX_TICK / tickSpacing)"
                    let expr_11321 := expr_11320
                    /// @src 148:8838:8849  "tickSpacing"
                    let _482 := var_tickSpacing_11289
                    let expr_11322 := _482
                    /// @src 148:8802:8849  "(TickMath.MAX_TICK / tickSpacing) * tickSpacing"
                    let expr_11323 := checked_mul_t_int24(expr_11321, expr_11322)

                    /// @src 148:8794:8849  "tick == (TickMath.MAX_TICK / tickSpacing) * tickSpacing"
                    let expr_11324 := eq(cleanup_t_int24(expr_11316), cleanup_t_int24(expr_11323))
                    /// @src 148:8790:9215  "if (tick == (TickMath.MAX_TICK / tickSpacing) * tickSpacing) {..."
                    switch expr_11324
                    case 0 {
                        /// @src 148:8952:8960  "TickMath"
                        let expr_11334_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/TickMath.sol:TickMath")
                        /// @src 148:8980:8984  "tick"
                        let _483 := var_tick_11287
                        let expr_11336 := _483
                        /// @src 148:8952:8985  "TickMath.getSqrtRatioAtTick(tick)"
                        let expr_11337 := fun_getSqrtRatioAtTick_5493(expr_11336)
                        /// @src 148:8929:8985  "uint160 sqrtRatioX96 = TickMath.getSqrtRatioAtTick(tick)"
                        let var_sqrtRatioX96_11333 := expr_11337
                        /// @src 148:9003:9012  "flipRatio"
                        let _484 := var_flipRatio_11295
                        let expr_11339 := _484
                        /// @src 148:8999:9106  "if (flipRatio) {..."
                        if expr_11339 {
                            /// @src 148:9063:9071  "1 << 192"
                            let expr_11347 := 0x01000000000000000000000000000000000000000000000000
                            /// @src 148:9055:9072  "uint256(1 << 192)"
                            let expr_11348 := convert_t_rational_6277101735386680763835789423207666416102355444464034512896_by_1_to_t_uint256(expr_11347)
                            /// @src 148:9055:9076  "uint256(1 << 192).div"
                            let expr_11349_self := expr_11348
                            /// @src 148:9077:9089  "sqrtRatioX96"
                            let _485 := var_sqrtRatioX96_11333
                            let expr_11350 := _485
                            /// @src 148:9055:9090  "uint256(1 << 192).div(sqrtRatioX96)"
                            let _486 := convert_t_uint160_to_t_uint256(expr_11350)
                            let expr_11351 := fun_div_5893(expr_11349_self, _486)
                            /// @src 148:9047:9091  "uint160(uint256(1 << 192).div(sqrtRatioX96))"
                            let expr_11352 := convert_t_uint256_to_t_uint160(expr_11351)
                            /// @src 148:9032:9091  "sqrtRatioX96 = uint160(uint256(1 << 192).div(sqrtRatioX96))"
                            var_sqrtRatioX96_11333 := expr_11352
                            let expr_11353 := expr_11352
                            /// @src 148:8999:9106  "if (flipRatio) {..."
                        }
                        /// @src 148:9152:9164  "sqrtRatioX96"
                        let _487 := var_sqrtRatioX96_11333
                        let expr_11358 := _487
                        /// @src 148:9166:9183  "baseTokenDecimals"
                        let _488 := var_baseTokenDecimals_11291
                        let expr_11359 := _488
                        /// @src 148:9185:9203  "quoteTokenDecimals"
                        let _489 := var_quoteTokenDecimals_11293
                        let expr_11360 := _489
                        /// @src 148:9126:9204  "fixedPointToDecimalString(sqrtRatioX96, baseTokenDecimals, quoteTokenDecimals)"
                        let expr_11361_mpos := fun_fixedPointToDecimalString_11844(expr_11358, expr_11359, expr_11360)
                        /// @src 148:9119:9204  "return fixedPointToDecimalString(sqrtRatioX96, baseTokenDecimals, quoteTokenDecimals)"
                        var__11298_mpos := expr_11361_mpos
                        leave
                        /// @src 148:8790:9215  "if (tick == (TickMath.MAX_TICK / tickSpacing) * tickSpacing) {..."
                    }
                    default {
                        /// @src 148:8873:8882  "flipRatio"
                        let _490 := var_flipRatio_11295
                        let expr_11325 := _490
                        /// @src 148:8872:8882  "!flipRatio"
                        let expr_11326 := cleanup_t_bool(iszero(expr_11325))
                        /// @src 148:8872:8898  "!flipRatio ? 'MAX' : 'MIN'"
                        let expr_11329_mpos
                        switch expr_11326
                        case 0 {
                            expr_11329_mpos := convert_t_stringliteral_871eebeccaa432de5f38a72c534eb2fa59c2c3b49e3c6629c16c11981ee74f2a_to_t_string_memory_ptr()
                        }
                        default {
                            expr_11329_mpos := convert_t_stringliteral_a42787877dd247913f847bc654d767d1919585674d8f1a26ea00084043233daa_to_t_string_memory_ptr()
                        }
                        /// @src 148:8865:8898  "return !flipRatio ? 'MAX' : 'MIN'"
                        var__11298_mpos := expr_11329_mpos
                        leave
                        /// @src 148:8790:9215  "if (tick == (TickMath.MAX_TICK / tickSpacing) * tickSpacing) {..."
                    }
                    /// @src 148:8665:9215  "if (tick == (TickMath.MIN_TICK / tickSpacing) * tickSpacing) {..."
                }
                default {
                    /// @src 148:8748:8757  "flipRatio"
                    let _491 := var_flipRatio_11295
                    let expr_11309 := _491
                    /// @src 148:8747:8757  "!flipRatio"
                    let expr_11310 := cleanup_t_bool(iszero(expr_11309))
                    /// @src 148:8747:8773  "!flipRatio ? 'MIN' : 'MAX'"
                    let expr_11313_mpos
                    switch expr_11310
                    case 0 {
                        expr_11313_mpos := convert_t_stringliteral_a42787877dd247913f847bc654d767d1919585674d8f1a26ea00084043233daa_to_t_string_memory_ptr()
                    }
                    default {
                        expr_11313_mpos := convert_t_stringliteral_871eebeccaa432de5f38a72c534eb2fa59c2c3b49e3c6629c16c11981ee74f2a_to_t_string_memory_ptr()
                    }
                    /// @src 148:8740:8773  "return !flipRatio ? 'MIN' : 'MAX'"
                    var__11298_mpos := expr_11313_mpos
                    leave
                    /// @src 148:8665:9215  "if (tick == (TickMath.MIN_TICK / tickSpacing) * tickSpacing) {..."
                }

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function convert_t_stringliteral_7521d1cadbcfa91eec65aa16715b94ffc1c9654ba57ea2ef1a2127bca1127a83_to_t_bytes1() -> converted {
                converted := 0x7800000000000000000000000000000000000000000000000000000000000000
            }

            function decrement_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0x00) { panic_error_0x11() }
                ret := sub(value, 1)
            }

            function convert_t_stringliteral_cb29997ed99ead0db59ce4d12b7d3723198c827273e5796737c926d78019c39f_to_t_bytes16() -> converted {
                converted := 0x3031323334353637383961626364656600000000000000000000000000000000
            }

            /// @src 46:242:296  "bytes16 private constant _SYMBOLS = \"0123456789abcdef\""
            function constant__SYMBOLS_24957() -> ret {
                /// @src 46:278:296  "\"0123456789abcdef\""
                let _504 := convert_t_stringliteral_cb29997ed99ead0db59ce4d12b7d3723198c827273e5796737c926d78019c39f_to_t_bytes16()

                ret := _504
            }

            function cleanup_t_rational_15_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_15_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_15_by_1(value)))
            }

            function convert_t_rational_4_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_4_by_1(value)))
            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function shift_right_t_uint256_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_uint256(shift_right_unsigned_dynamic(bits, cleanup_t_uint256(value)))
            }

            function store_literal_in_memory_04fc88320d7c9f639317c75102c103ff0044d3075a5c627e24e76e5bbb2733c2(memPtr) {

                mstore(add(memPtr, 0), "Strings: hex length insufficient")

            }

            function abi_encode_t_stringliteral_04fc88320d7c9f639317c75102c103ff0044d3075a5c627e24e76e5bbb2733c2_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 32)
                store_literal_in_memory_04fc88320d7c9f639317c75102c103ff0044d3075a5c627e24e76e5bbb2733c2(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_04fc88320d7c9f639317c75102c103ff0044d3075a5c627e24e76e5bbb2733c2__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_04fc88320d7c9f639317c75102c103ff0044d3075a5c627e24e76e5bbb2733c2_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_04fc88320d7c9f639317c75102c103ff0044d3075a5c627e24e76e5bbb2733c2(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_04fc88320d7c9f639317c75102c103ff0044d3075a5c627e24e76e5bbb2733c2__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 25132
            /// @src 46:1818:2255  "function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {..."
            function fun_toHexString_25132(var_value_25059, var_length_25061) -> var__25064_mpos {
                /// @src 46:1893:1906  "string memory"
                let zero_t_string_memory_ptr_492_mpos := zero_value_for_split_t_string_memory_ptr()
                var__25064_mpos := zero_t_string_memory_ptr_492_mpos

                /// @src 46:1950:1951  "2"
                let expr_25070 := 0x02
                /// @src 46:1954:1960  "length"
                let _493 := var_length_25061
                let expr_25071 := _493
                /// @src 46:1950:1960  "2 * length"
                let expr_25072 := checked_mul_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_25070), expr_25071)

                /// @src 46:1963:1964  "2"
                let expr_25073 := 0x02
                /// @src 46:1950:1964  "2 * length + 2"
                let expr_25074 := checked_add_t_uint256(expr_25072, convert_t_rational_2_by_1_to_t_uint256(expr_25073))

                /// @src 46:1940:1965  "new bytes(2 * length + 2)"
                let expr_25075_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(expr_25074)
                /// @src 46:1918:1965  "bytes memory buffer = new bytes(2 * length + 2)"
                let var_buffer_25067_mpos := expr_25075_mpos
                /// @src 46:1975:1990  "buffer[0] = \"0\""
                let _494 := convert_t_stringliteral_044852b2a670ade5407e78fb2863c51de9fcb96542a07186fe3aeda6bb8a116d_to_t_bytes1()
                /// @src 46:1975:1981  "buffer"
                let _495_mpos := var_buffer_25067_mpos
                let expr_25077_mpos := _495_mpos
                /// @src 46:1982:1983  "0"
                let expr_25078 := 0x00
                /// @src 46:1975:1990  "buffer[0] = \"0\""
                let _496 := _494
                mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_25077_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_25078)), byte(0, _496))
                let expr_25081 := _494
                /// @src 46:2000:2015  "buffer[1] = \"x\""
                let _497 := convert_t_stringliteral_7521d1cadbcfa91eec65aa16715b94ffc1c9654ba57ea2ef1a2127bca1127a83_to_t_bytes1()
                /// @src 46:2000:2006  "buffer"
                let _498_mpos := var_buffer_25067_mpos
                let expr_25083_mpos := _498_mpos
                /// @src 46:2007:2008  "1"
                let expr_25084 := 0x01
                /// @src 46:2000:2015  "buffer[1] = \"x\""
                let _499 := _497
                mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_25083_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_25084)), byte(0, _499))
                let expr_25087 := _497
                /// @src 46:2025:2153  "for (uint256 i = 2 * length + 1; i > 1; --i) {..."
                for {
                    /// @src 46:2042:2043  "2"
                    let expr_25091 := 0x02
                    /// @src 46:2046:2052  "length"
                    let _500 := var_length_25061
                    let expr_25092 := _500
                    /// @src 46:2042:2052  "2 * length"
                    let expr_25093 := checked_mul_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_25091), expr_25092)

                    /// @src 46:2055:2056  "1"
                    let expr_25094 := 0x01
                    /// @src 46:2042:2056  "2 * length + 1"
                    let expr_25095 := checked_add_t_uint256(expr_25093, convert_t_rational_1_by_1_to_t_uint256(expr_25094))

                    /// @src 46:2030:2056  "uint256 i = 2 * length + 1"
                    let var_i_25090 := expr_25095
                    } 1 {
                    /// @src 46:2065:2068  "--i"
                    let _502 := var_i_25090
                    let _501 := decrement_t_uint256(_502)
                    var_i_25090 := _501
                    let expr_25101 := _501
                }
                {
                    /// @src 46:2058:2059  "i"
                    let _503 := var_i_25090
                    let expr_25097 := _503
                    /// @src 46:2062:2063  "1"
                    let expr_25098 := 0x01
                    /// @src 46:2058:2063  "i > 1"
                    let expr_25099 := gt(cleanup_t_uint256(expr_25097), convert_t_rational_1_by_1_to_t_uint256(expr_25098))
                    if iszero(expr_25099) { break }
                    /// @src 46:2096:2104  "_SYMBOLS"
                    let expr_25106 := constant__SYMBOLS_24957()
                    /// @src 46:2105:2110  "value"
                    let _505 := var_value_25059
                    let expr_25107 := _505
                    /// @src 46:2113:2116  "0xf"
                    let expr_25108 := 0x0f
                    /// @src 46:2105:2116  "value & 0xf"
                    let expr_25109 := and(expr_25107, convert_t_rational_15_by_1_to_t_uint256(expr_25108))

                    /// @src 46:2096:2117  "_SYMBOLS[value & 0xf]"
                    let _506 := expr_25109

                    if iszero(lt(_506, 16)) { panic_error_0x32() }
                    let expr_25110 := shift_left_248(byte(_506, expr_25106))
                    /// @src 46:2084:2090  "buffer"
                    let _507_mpos := var_buffer_25067_mpos
                    let expr_25103_mpos := _507_mpos
                    /// @src 46:2091:2092  "i"
                    let _508 := var_i_25090
                    let expr_25104 := _508
                    /// @src 46:2084:2117  "buffer[i] = _SYMBOLS[value & 0xf]"
                    let _509 := expr_25110
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_25103_mpos, expr_25104), byte(0, _509))
                    let expr_25111 := expr_25110
                    /// @src 46:2141:2142  "4"
                    let expr_25114 := 0x04
                    /// @src 46:2131:2142  "value >>= 4"
                    let _510 := convert_t_rational_4_by_1_to_t_uint8(expr_25114)
                    let _511 := var_value_25059
                    let expr_25115 :=
                    shift_right_t_uint256_t_uint8(_511, _510)

                    var_value_25059 := expr_25115
                }
                /// @src 46:2170:2175  "value"
                let _512 := var_value_25059
                let expr_25120 := _512
                /// @src 46:2179:2180  "0"
                let expr_25121 := 0x00
                /// @src 46:2170:2180  "value == 0"
                let expr_25122 := eq(cleanup_t_uint256(expr_25120), convert_t_rational_0_by_1_to_t_uint256(expr_25121))
                /// @src 46:2162:2217  "require(value == 0, \"Strings: hex length insufficient\")"
                require_helper_t_stringliteral_04fc88320d7c9f639317c75102c103ff0044d3075a5c627e24e76e5bbb2733c2(expr_25122)
                /// @src 46:2241:2247  "buffer"
                let _513_mpos := var_buffer_25067_mpos
                let expr_25128_mpos := _513_mpos
                /// @src 46:2234:2248  "string(buffer)"
                let expr_25129_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_25128_mpos)
                /// @src 46:2227:2248  "return string(buffer)"
                var__25064_mpos := expr_25129_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function cleanup_t_rational_10000000000000000000000000000000000000000000000000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10000000000000000000000000000000000000000000000000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10000000000000000000000000000000000000000000000000000000000000000_by_1(value)))
            }

            function cleanup_t_rational_64_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_64_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_64_by_1(value)))
            }

            function cleanup_t_rational_100000000000000000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_100000000000000000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_100000000000000000000000000000000_by_1(value)))
            }

            function cleanup_t_rational_10000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10000000000000000_by_1(value)))
            }

            function cleanup_t_rational_100000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_100000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_100000000_by_1(value)))
            }

            function cleanup_t_rational_8_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_8_by_1(value)))
            }

            function cleanup_t_rational_10000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10000_by_1(value)))
            }

            /// @ast-id 36606
            /// @src 47:10139:11055  "function log10(uint256 value) internal pure returns (uint256) {..."
            function fun_log10_36606(var_value_36480) -> var__36483 {
                /// @src 47:10192:10199  "uint256"
                let zero_t_uint256_514 := zero_value_for_split_t_uint256()
                var__36483 := zero_t_uint256_514

                /// @src 47:10228:10229  "0"
                let expr_36487 := 0x00
                /// @src 47:10211:10229  "uint256 result = 0"
                let var_result_36486 := convert_t_rational_0_by_1_to_t_uint256(expr_36487)
                /// @src 47:10267:10272  "value"
                let _515 := var_value_36480
                let expr_36489 := _515
                /// @src 47:10276:10284  "10 ** 64"
                let expr_36492 := 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                /// @src 47:10267:10284  "value >= 10 ** 64"
                let expr_36493 := iszero(lt(cleanup_t_uint256(expr_36489), convert_t_rational_10000000000000000000000000000000000000000000000000000000000000000_by_1_to_t_uint256(expr_36492)))
                /// @src 47:10263:10366  "if (value >= 10 ** 64) {..."
                if expr_36493 {
                    /// @src 47:10313:10321  "10 ** 64"
                    let expr_36497 := 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000
                    /// @src 47:10304:10321  "value /= 10 ** 64"
                    let _516 := convert_t_rational_10000000000000000000000000000000000000000000000000000000000000000_by_1_to_t_uint256(expr_36497)
                    let _517 := var_value_36480
                    let expr_36498 := wrapping_div_t_uint256(_517, _516)

                    var_value_36480 := expr_36498
                    /// @src 47:10349:10351  "64"
                    let expr_36501 := 0x40
                    /// @src 47:10339:10351  "result += 64"
                    let _518 := convert_t_rational_64_by_1_to_t_uint256(expr_36501)
                    let _519 := var_result_36486
                    let expr_36502 := wrapping_add_t_uint256(_519, _518)

                    var_result_36486 := expr_36502
                    /// @src 47:10263:10366  "if (value >= 10 ** 64) {..."
                }
                /// @src 47:10383:10388  "value"
                let _520 := var_value_36480
                let expr_36506 := _520
                /// @src 47:10392:10400  "10 ** 32"
                let expr_36509 := 0x04ee2d6d415b85acef8100000000
                /// @src 47:10383:10400  "value >= 10 ** 32"
                let expr_36510 := iszero(lt(cleanup_t_uint256(expr_36506), convert_t_rational_100000000000000000000000000000000_by_1_to_t_uint256(expr_36509)))
                /// @src 47:10379:10482  "if (value >= 10 ** 32) {..."
                if expr_36510 {
                    /// @src 47:10429:10437  "10 ** 32"
                    let expr_36514 := 0x04ee2d6d415b85acef8100000000
                    /// @src 47:10420:10437  "value /= 10 ** 32"
                    let _521 := convert_t_rational_100000000000000000000000000000000_by_1_to_t_uint256(expr_36514)
                    let _522 := var_value_36480
                    let expr_36515 := wrapping_div_t_uint256(_522, _521)

                    var_value_36480 := expr_36515
                    /// @src 47:10465:10467  "32"
                    let expr_36518 := 0x20
                    /// @src 47:10455:10467  "result += 32"
                    let _523 := convert_t_rational_32_by_1_to_t_uint256(expr_36518)
                    let _524 := var_result_36486
                    let expr_36519 := wrapping_add_t_uint256(_524, _523)

                    var_result_36486 := expr_36519
                    /// @src 47:10379:10482  "if (value >= 10 ** 32) {..."
                }
                /// @src 47:10499:10504  "value"
                let _525 := var_value_36480
                let expr_36523 := _525
                /// @src 47:10508:10516  "10 ** 16"
                let expr_36526 := 0x2386f26fc10000
                /// @src 47:10499:10516  "value >= 10 ** 16"
                let expr_36527 := iszero(lt(cleanup_t_uint256(expr_36523), convert_t_rational_10000000000000000_by_1_to_t_uint256(expr_36526)))
                /// @src 47:10495:10598  "if (value >= 10 ** 16) {..."
                if expr_36527 {
                    /// @src 47:10545:10553  "10 ** 16"
                    let expr_36531 := 0x2386f26fc10000
                    /// @src 47:10536:10553  "value /= 10 ** 16"
                    let _526 := convert_t_rational_10000000000000000_by_1_to_t_uint256(expr_36531)
                    let _527 := var_value_36480
                    let expr_36532 := wrapping_div_t_uint256(_527, _526)

                    var_value_36480 := expr_36532
                    /// @src 47:10581:10583  "16"
                    let expr_36535 := 0x10
                    /// @src 47:10571:10583  "result += 16"
                    let _528 := convert_t_rational_16_by_1_to_t_uint256(expr_36535)
                    let _529 := var_result_36486
                    let expr_36536 := wrapping_add_t_uint256(_529, _528)

                    var_result_36486 := expr_36536
                    /// @src 47:10495:10598  "if (value >= 10 ** 16) {..."
                }
                /// @src 47:10615:10620  "value"
                let _530 := var_value_36480
                let expr_36540 := _530
                /// @src 47:10624:10631  "10 ** 8"
                let expr_36543 := 0x05f5e100
                /// @src 47:10615:10631  "value >= 10 ** 8"
                let expr_36544 := iszero(lt(cleanup_t_uint256(expr_36540), convert_t_rational_100000000_by_1_to_t_uint256(expr_36543)))
                /// @src 47:10611:10711  "if (value >= 10 ** 8) {..."
                if expr_36544 {
                    /// @src 47:10660:10667  "10 ** 8"
                    let expr_36548 := 0x05f5e100
                    /// @src 47:10651:10667  "value /= 10 ** 8"
                    let _531 := convert_t_rational_100000000_by_1_to_t_uint256(expr_36548)
                    let _532 := var_value_36480
                    let expr_36549 := wrapping_div_t_uint256(_532, _531)

                    var_value_36480 := expr_36549
                    /// @src 47:10695:10696  "8"
                    let expr_36552 := 0x08
                    /// @src 47:10685:10696  "result += 8"
                    let _533 := convert_t_rational_8_by_1_to_t_uint256(expr_36552)
                    let _534 := var_result_36486
                    let expr_36553 := wrapping_add_t_uint256(_534, _533)

                    var_result_36486 := expr_36553
                    /// @src 47:10611:10711  "if (value >= 10 ** 8) {..."
                }
                /// @src 47:10728:10733  "value"
                let _535 := var_value_36480
                let expr_36557 := _535
                /// @src 47:10737:10744  "10 ** 4"
                let expr_36560 := 0x2710
                /// @src 47:10728:10744  "value >= 10 ** 4"
                let expr_36561 := iszero(lt(cleanup_t_uint256(expr_36557), convert_t_rational_10000_by_1_to_t_uint256(expr_36560)))
                /// @src 47:10724:10824  "if (value >= 10 ** 4) {..."
                if expr_36561 {
                    /// @src 47:10773:10780  "10 ** 4"
                    let expr_36565 := 0x2710
                    /// @src 47:10764:10780  "value /= 10 ** 4"
                    let _536 := convert_t_rational_10000_by_1_to_t_uint256(expr_36565)
                    let _537 := var_value_36480
                    let expr_36566 := wrapping_div_t_uint256(_537, _536)

                    var_value_36480 := expr_36566
                    /// @src 47:10808:10809  "4"
                    let expr_36569 := 0x04
                    /// @src 47:10798:10809  "result += 4"
                    let _538 := convert_t_rational_4_by_1_to_t_uint256(expr_36569)
                    let _539 := var_result_36486
                    let expr_36570 := wrapping_add_t_uint256(_539, _538)

                    var_result_36486 := expr_36570
                    /// @src 47:10724:10824  "if (value >= 10 ** 4) {..."
                }
                /// @src 47:10841:10846  "value"
                let _540 := var_value_36480
                let expr_36574 := _540
                /// @src 47:10850:10857  "10 ** 2"
                let expr_36577 := 0x64
                /// @src 47:10841:10857  "value >= 10 ** 2"
                let expr_36578 := iszero(lt(cleanup_t_uint256(expr_36574), convert_t_rational_100_by_1_to_t_uint256(expr_36577)))
                /// @src 47:10837:10937  "if (value >= 10 ** 2) {..."
                if expr_36578 {
                    /// @src 47:10886:10893  "10 ** 2"
                    let expr_36582 := 0x64
                    /// @src 47:10877:10893  "value /= 10 ** 2"
                    let _541 := convert_t_rational_100_by_1_to_t_uint256(expr_36582)
                    let _542 := var_value_36480
                    let expr_36583 := wrapping_div_t_uint256(_542, _541)

                    var_value_36480 := expr_36583
                    /// @src 47:10921:10922  "2"
                    let expr_36586 := 0x02
                    /// @src 47:10911:10922  "result += 2"
                    let _543 := convert_t_rational_2_by_1_to_t_uint256(expr_36586)
                    let _544 := var_result_36486
                    let expr_36587 := wrapping_add_t_uint256(_544, _543)

                    var_result_36486 := expr_36587
                    /// @src 47:10837:10937  "if (value >= 10 ** 2) {..."
                }
                /// @src 47:10954:10959  "value"
                let _545 := var_value_36480
                let expr_36591 := _545
                /// @src 47:10963:10970  "10 ** 1"
                let expr_36594 := 0x0a
                /// @src 47:10954:10970  "value >= 10 ** 1"
                let expr_36595 := iszero(lt(cleanup_t_uint256(expr_36591), convert_t_rational_10_by_1_to_t_uint256(expr_36594)))
                /// @src 47:10950:11016  "if (value >= 10 ** 1) {..."
                if expr_36595 {
                    /// @src 47:11000:11001  "1"
                    let expr_36597 := 0x01
                    /// @src 47:10990:11001  "result += 1"
                    let _546 := convert_t_rational_1_by_1_to_t_uint256(expr_36597)
                    let _547 := var_result_36486
                    let expr_36598 := wrapping_add_t_uint256(_547, _546)

                    var_result_36486 := expr_36598
                    /// @src 47:10950:11016  "if (value >= 10 ** 1) {..."
                }
                /// @src 47:11042:11048  "result"
                let _548 := var_result_36486
                let expr_36603 := _548
                /// @src 47:11035:11048  "return result"
                var__36483 := expr_36603
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function zero_value_for_split_t_int8() -> ret {
                ret := 0
            }

            function convert_t_rational_0_by_1_to_t_int8(value) -> converted {
                converted := cleanup_t_int8(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_1_by_1_to_t_int8(value) -> converted {
                converted := cleanup_t_int8(identity(cleanup_t_rational_1_by_1(value)))
            }

            function cleanup_t_rational_minus_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_minus_1_by_1_to_t_int8(value) -> converted {
                converted := cleanup_t_int8(identity(cleanup_t_rational_minus_1_by_1(value)))
            }

            /// @ast-id 12382
            /// @src 148:17409:17725  "function overRange(..."
            function fun_overRange_12382(var_tickLower_12354, var_tickUpper_12356, var_tickCurrent_12358) -> var__12361 {
                /// @src 148:17533:17537  "int8"
                let zero_t_int8_549 := zero_value_for_split_t_int8()
                var__12361 := zero_t_int8_549

                /// @src 148:17553:17564  "tickCurrent"
                let _550 := var_tickCurrent_12358
                let expr_12363 := _550
                /// @src 148:17567:17576  "tickLower"
                let _551 := var_tickLower_12354
                let expr_12364 := _551
                /// @src 148:17553:17576  "tickCurrent < tickLower"
                let expr_12365 := slt(cleanup_t_int24(expr_12363), cleanup_t_int24(expr_12364))
                /// @src 148:17549:17719  "if (tickCurrent < tickLower) {..."
                switch expr_12365
                case 0 {
                    /// @src 148:17622:17633  "tickCurrent"
                    let _552 := var_tickCurrent_12358
                    let expr_12370 := _552
                    /// @src 148:17636:17645  "tickUpper"
                    let _553 := var_tickUpper_12356
                    let expr_12371 := _553
                    /// @src 148:17622:17645  "tickCurrent > tickUpper"
                    let expr_12372 := sgt(cleanup_t_int24(expr_12370), cleanup_t_int24(expr_12371))
                    /// @src 148:17618:17719  "if (tickCurrent > tickUpper) {..."
                    switch expr_12372
                    case 0 {
                        /// @src 148:17707:17708  "0"
                        let expr_12376 := 0x00
                        /// @src 148:17700:17708  "return 0"
                        var__12361 := convert_t_rational_0_by_1_to_t_int8(expr_12376)
                        leave
                        /// @src 148:17618:17719  "if (tickCurrent > tickUpper) {..."
                    }
                    default {
                        /// @src 148:17668:17669  "1"
                        let expr_12373 := 0x01
                        /// @src 148:17661:17669  "return 1"
                        var__12361 := convert_t_rational_1_by_1_to_t_int8(expr_12373)
                        leave
                        /// @src 148:17618:17719  "if (tickCurrent > tickUpper) {..."
                    }
                    /// @src 148:17549:17719  "if (tickCurrent < tickLower) {..."
                }
                default {
                    /// @src 148:17599:17601  "-1"
                    let expr_12367 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 148:17592:17601  "return -1"
                    var__12361 := convert_t_rational_minus_1_by_1_to_t_int8(expr_12367)
                    leave
                    /// @src 148:17549:17719  "if (tickCurrent < tickLower) {..."
                }

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function shift_right_t_uint256_t_uint256(value, bits) -> result {
                bits := cleanup_t_uint256(bits)
                result := cleanup_t_uint256(shift_right_unsigned_dynamic(bits, cleanup_t_uint256(value)))
            }

            /// @ast-id 12442
            /// @src 148:18005:18175  "function tokenToColorHex(uint256 token, uint256 offset) internal pure returns (string memory str) {..."
            function fun_tokenToColorHex_12442(var_token_12423, var_offset_12425) -> var_str_12428_mpos {
                /// @src 148:18084:18101  "string memory str"
                let zero_t_string_memory_ptr_554_mpos := zero_value_for_split_t_string_memory_ptr()
                var_str_12428_mpos := zero_t_string_memory_ptr_554_mpos

                /// @src 148:18128:18133  "token"
                let _555 := var_token_12423
                let expr_12432 := _555
                /// @src 148:18137:18143  "offset"
                let _556 := var_offset_12425
                let expr_12433 := _556
                /// @src 148:18128:18143  "token >> offset"
                let expr_12434 :=
                shift_right_t_uint256_t_uint256(expr_12432, expr_12433)

                /// @src 148:18127:18144  "(token >> offset)"
                let expr_12435 := expr_12434
                /// @src 148:18127:18164  "(token >> offset).toHexStringNoPrefix"
                let expr_12436_self := expr_12435
                /// @src 148:18165:18166  "3"
                let expr_12437 := 0x03
                /// @src 148:18127:18167  "(token >> offset).toHexStringNoPrefix(3)"
                let _557 := convert_t_rational_3_by_1_to_t_uint256(expr_12437)
                let expr_12438_mpos := fun_toHexStringNoPrefix_25591(expr_12436_self, _557)
                /// @src 148:18120:18168  "string((token >> offset).toHexStringNoPrefix(3))"
                let expr_12439_mpos := expr_12438_mpos
                /// @src 148:18113:18168  "return string((token >> offset).toHexStringNoPrefix(3))"
                var_str_12428_mpos := expr_12439_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            /// @ast-id 12464
            /// @src 148:18181:18399  "function getCircleCoord(..."
            function fun_getCircleCoord_12464(var_tokenAddress_12444, var_offset_12446, var_tokenId_12448) -> var__12451 {
                /// @src 148:18313:18320  "uint256"
                let zero_t_uint256_558 := zero_value_for_split_t_uint256()
                var__12451 := zero_t_uint256_558

                /// @src 148:18354:18366  "tokenAddress"
                let _559 := var_tokenAddress_12444
                let expr_12454 := _559
                /// @src 148:18368:18374  "offset"
                let _560 := var_offset_12446
                let expr_12455 := _560
                /// @src 148:18340:18375  "sliceTokenHex(tokenAddress, offset)"
                let expr_12456 := fun_sliceTokenHex_12484(expr_12454, expr_12455)
                /// @src 148:18378:18385  "tokenId"
                let _561 := var_tokenId_12448
                let expr_12457 := _561
                /// @src 148:18340:18385  "sliceTokenHex(tokenAddress, offset) * tokenId"
                let expr_12458 := checked_mul_t_uint256(expr_12456, expr_12457)

                /// @src 148:18339:18386  "(sliceTokenHex(tokenAddress, offset) * tokenId)"
                let expr_12459 := expr_12458
                /// @src 148:18389:18392  "255"
                let expr_12460 := 0xff
                /// @src 148:18339:18392  "(sliceTokenHex(tokenAddress, offset) * tokenId) % 255"
                let expr_12461 := mod_t_uint256(expr_12459, convert_t_rational_255_by_1_to_t_uint256(expr_12460))

                /// @src 148:18332:18392  "return (sliceTokenHex(tokenAddress, offset) * tokenId) % 255"
                var__12451 := expr_12461
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            /// @ast-id 12421
            /// @src 148:17731:17999  "function scale(..."
            function fun_scale_12421(var_n_12384, var_inMn_12386, var_inMx_12388, var_outMn_12390, var_outMx_12392) -> var__12395_mpos {
                /// @src 148:17883:17896  "string memory"
                let zero_t_string_memory_ptr_562_mpos := zero_value_for_split_t_string_memory_ptr()
                var__12395_mpos := zero_t_string_memory_ptr_562_mpos

                /// @src 148:17916:17917  "n"
                let _563 := var_n_12384
                let expr_12397 := _563
                /// @src 148:17916:17921  "n.sub"
                let expr_12398_self := expr_12397
                /// @src 148:17922:17926  "inMn"
                let _564 := var_inMn_12386
                let expr_12399 := _564
                /// @src 148:17916:17927  "n.sub(inMn)"
                let expr_12400 := fun_sub_5837(expr_12398_self, expr_12399)
                /// @src 148:17916:17931  "n.sub(inMn).mul"
                let expr_12401_self := expr_12400
                /// @src 148:17932:17937  "outMx"
                let _565 := var_outMx_12392
                let expr_12402 := _565
                /// @src 148:17932:17941  "outMx.sub"
                let expr_12403_self := expr_12402
                /// @src 148:17942:17947  "outMn"
                let _566 := var_outMn_12390
                let expr_12404 := _566
                /// @src 148:17932:17948  "outMx.sub(outMn)"
                let expr_12405 := fun_sub_5837(expr_12403_self, expr_12404)
                /// @src 148:17916:17949  "n.sub(inMn).mul(outMx.sub(outMn))"
                let expr_12406 := fun_mul_5871(expr_12401_self, expr_12405)
                /// @src 148:17916:17953  "n.sub(inMn).mul(outMx.sub(outMn)).div"
                let expr_12407_self := expr_12406
                /// @src 148:17954:17958  "inMx"
                let _567 := var_inMx_12388
                let expr_12408 := _567
                /// @src 148:17954:17962  "inMx.sub"
                let expr_12409_self := expr_12408
                /// @src 148:17963:17967  "inMn"
                let _568 := var_inMn_12386
                let expr_12410 := _568
                /// @src 148:17954:17968  "inMx.sub(inMn)"
                let expr_12411 := fun_sub_5837(expr_12409_self, expr_12410)
                /// @src 148:17916:17969  "n.sub(inMn).mul(outMx.sub(outMn)).div(inMx.sub(inMn))"
                let expr_12412 := fun_div_5893(expr_12407_self, expr_12411)
                /// @src 148:17916:17973  "n.sub(inMn).mul(outMx.sub(outMn)).div(inMx.sub(inMn)).add"
                let expr_12413_self := expr_12412
                /// @src 148:17974:17979  "outMn"
                let _569 := var_outMn_12390
                let expr_12414 := _569
                /// @src 148:17916:17980  "n.sub(inMn).mul(outMx.sub(outMn)).div(inMx.sub(inMn)).add(outMn)"
                let expr_12415 := fun_add_5815(expr_12413_self, expr_12414)
                /// @src 148:17915:17981  "(n.sub(inMn).mul(outMx.sub(outMn)).div(inMx.sub(inMn)).add(outMn))"
                let expr_12416 := expr_12415
                /// @src 148:17915:17990  "(n.sub(inMn).mul(outMx.sub(outMn)).div(inMx.sub(inMn)).add(outMn)).toString"
                let expr_12417_self := expr_12416
                /// @src 148:17915:17992  "(n.sub(inMn).mul(outMx.sub(outMn)).div(inMx.sub(inMn)).add(outMn)).toString()"
                let expr_12418_mpos := fun_toString_25008(expr_12417_self)
                /// @src 148:17908:17992  "return (n.sub(inMn).mul(outMx.sub(outMn)).div(inMx.sub(inMn)).add(outMn)).toString()"
                var__12395_mpos := expr_12418_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function read_from_memoryt_int8(ptr) -> returnValue {

                let value := cleanup_t_int8(mload(ptr))

                returnValue :=

                value

            }

            function store_literal_in_memory_ed942a74eccce931b7661b37252dffca8561e3a8bdec86f6da31d97d858c9292(memPtr) {

                mstore(add(memPtr, 0), "</svg>")

            }

            function abi_encode_t_stringliteral_ed942a74eccce931b7661b37252dffca8561e3a8bdec86f6da31d97d858c9292_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 6)
                store_literal_in_memory_ed942a74eccce931b7661b37252dffca8561e3a8bdec86f6da31d97d858c9292(pos)
                end := add(pos, 6)
            }

            function abi_encode_tuple_packed_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_stringliteral_ed942a74eccce931b7661b37252dffca8561e3a8bdec86f6da31d97d858c9292__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2, value3, value4, value5) -> end {

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value3,  pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value4,  pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value5,  pos)

                pos := abi_encode_t_stringliteral_ed942a74eccce931b7661b37252dffca8561e3a8bdec86f6da31d97d858c9292_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                end := pos
            }

            /// @ast-id 25732
            /// @src 149:1405:2792  "function generateSVG(SVGParams memory params) internal pure returns (string memory svg) {..."
            function fun_generateSVG_25732(var_params_25671_mpos) -> var_svg_25674_mpos {
                /// @src 149:1474:1491  "string memory svg"
                let zero_t_string_memory_ptr_570_mpos := zero_value_for_split_t_string_memory_ptr()
                var_svg_25674_mpos := zero_t_string_memory_ptr_570_mpos

                /// @src 149:1951:1957  "params"
                let _571_mpos := var_params_25671_mpos
                let expr_25681_mpos := _571_mpos
                /// @src 149:1935:1958  "generateSVGDefs(params)"
                let expr_25682_mpos := fun_generateSVGDefs_25851(expr_25681_mpos)
                /// @src 149:2027:2033  "params"
                let _572_mpos := var_params_25671_mpos
                let expr_25684_mpos := _572_mpos
                /// @src 149:2027:2044  "params.quoteToken"
                let _573 := add(expr_25684_mpos, 0)
                let _574_mpos := mload(_573)
                let expr_25685_mpos := _574_mpos
                /// @src 149:2070:2076  "params"
                let _575_mpos := var_params_25671_mpos
                let expr_25686_mpos := _575_mpos
                /// @src 149:2070:2086  "params.baseToken"
                let _576 := add(expr_25686_mpos, 32)
                let _577_mpos := mload(_576)
                let expr_25687_mpos := _577_mpos
                /// @src 149:2112:2118  "params"
                let _578_mpos := var_params_25671_mpos
                let expr_25688_mpos := _578_mpos
                /// @src 149:2112:2135  "params.quoteTokenSymbol"
                let _579 := add(expr_25688_mpos, 96)
                let _580_mpos := mload(_579)
                let expr_25689_mpos := _580_mpos
                /// @src 149:2161:2167  "params"
                let _581_mpos := var_params_25671_mpos
                let expr_25690_mpos := _581_mpos
                /// @src 149:2161:2183  "params.baseTokenSymbol"
                let _582 := add(expr_25690_mpos, 128)
                let _583_mpos := mload(_582)
                let expr_25691_mpos := _583_mpos
                /// @src 149:1980:2205  "generateSVGBorderText(..."
                let expr_25692_mpos := fun_generateSVGBorderText_25895(expr_25685_mpos, expr_25687_mpos, expr_25689_mpos, expr_25691_mpos)
                /// @src 149:2249:2255  "params"
                let _584_mpos := var_params_25671_mpos
                let expr_25694_mpos := _584_mpos
                /// @src 149:2249:2272  "params.quoteTokenSymbol"
                let _585 := add(expr_25694_mpos, 96)
                let _586_mpos := mload(_585)
                let expr_25695_mpos := _586_mpos
                /// @src 149:2274:2280  "params"
                let _587_mpos := var_params_25671_mpos
                let expr_25696_mpos := _587_mpos
                /// @src 149:2274:2296  "params.baseTokenSymbol"
                let _588 := add(expr_25696_mpos, 128)
                let _589_mpos := mload(_588)
                let expr_25697_mpos := _589_mpos
                /// @src 149:2298:2304  "params"
                let _590_mpos := var_params_25671_mpos
                let expr_25698_mpos := _590_mpos
                /// @src 149:2298:2312  "params.feeTier"
                let _591 := add(expr_25698_mpos, 160)
                let _592_mpos := mload(_591)
                let expr_25699_mpos := _592_mpos
                /// @src 149:2227:2313  "generateSVGCardMantle(params.quoteTokenSymbol, params.baseTokenSymbol, params.feeTier)"
                let expr_25700_mpos := fun_generateSVGCardMantle_25924(expr_25695_mpos, expr_25697_mpos, expr_25699_mpos)
                /// @src 149:2352:2358  "params"
                let _593_mpos := var_params_25671_mpos
                let expr_25702_mpos := _593_mpos
                /// @src 149:2352:2368  "params.tickLower"
                let _594 := add(expr_25702_mpos, 192)
                let _595 := read_from_memoryt_int24(_594)
                let expr_25703 := _595
                /// @src 149:2370:2376  "params"
                let _596_mpos := var_params_25671_mpos
                let expr_25704_mpos := _596_mpos
                /// @src 149:2370:2386  "params.tickUpper"
                let _597 := add(expr_25704_mpos, 224)
                let _598 := read_from_memoryt_int24(_597)
                let expr_25705 := _598
                /// @src 149:2388:2394  "params"
                let _599_mpos := var_params_25671_mpos
                let expr_25706_mpos := _599_mpos
                /// @src 149:2388:2406  "params.tickSpacing"
                let _600 := add(expr_25706_mpos, 256)
                let _601 := read_from_memoryt_int24(_600)
                let expr_25707 := _601
                /// @src 149:2408:2414  "params"
                let _602_mpos := var_params_25671_mpos
                let expr_25708_mpos := _602_mpos
                /// @src 149:2408:2424  "params.overRange"
                let _603 := add(expr_25708_mpos, 288)
                let _604 := read_from_memoryt_int8(_603)
                let expr_25709 := _604
                /// @src 149:2335:2425  "generageSvgCurve(params.tickLower, params.tickUpper, params.tickSpacing, params.overRange)"
                let expr_25710_mpos := fun_generageSvgCurve_25987(expr_25703, expr_25705, expr_25707, expr_25709)
                /// @src 149:2512:2518  "params"
                let _605_mpos := var_params_25671_mpos
                let expr_25712_mpos := _605_mpos
                /// @src 149:2512:2526  "params.tokenId"
                let _606 := add(expr_25712_mpos, 320)
                let _607 := read_from_memoryt_uint256(_606)
                let expr_25713 := _607
                /// @src 149:2512:2535  "params.tokenId.toString"
                let expr_25714_self := expr_25713
                /// @src 149:2512:2537  "params.tokenId.toString()"
                let expr_25715_mpos := fun_toString_25008(expr_25714_self)
                /// @src 149:2563:2569  "params"
                let _608_mpos := var_params_25671_mpos
                let expr_25716_mpos := _608_mpos
                /// @src 149:2563:2579  "params.tickLower"
                let _609 := add(expr_25716_mpos, 192)
                let _610 := read_from_memoryt_int24(_609)
                let expr_25717 := _610
                /// @src 149:2605:2611  "params"
                let _611_mpos := var_params_25671_mpos
                let expr_25718_mpos := _611_mpos
                /// @src 149:2605:2621  "params.tickUpper"
                let _612 := add(expr_25718_mpos, 224)
                let _613 := read_from_memoryt_int24(_612)
                let expr_25719 := _613
                /// @src 149:2447:2643  "generateSVGPositionDataAndLocationCurve(..."
                let expr_25720_mpos := fun_generateSVGPositionDataAndLocationCurve_26302(expr_25715_mpos, expr_25717, expr_25719)
                /// @src 149:2688:2694  "params"
                let _614_mpos := var_params_25671_mpos
                let expr_25722_mpos := _614_mpos
                /// @src 149:2688:2702  "params.tokenId"
                let _615 := add(expr_25722_mpos, 320)
                let _616 := read_from_memoryt_uint256(_615)
                let expr_25723 := _616
                /// @src 149:2704:2710  "params"
                let _617_mpos := var_params_25671_mpos
                let expr_25724_mpos := _617_mpos
                /// @src 149:2704:2722  "params.poolAddress"
                let _618 := add(expr_25724_mpos, 64)
                let _619 := read_from_memoryt_address(_618)
                let expr_25725 := _619
                /// @src 149:2665:2723  "generateSVGRareSparkle(params.tokenId, params.poolAddress)"
                let expr_25726_mpos := fun_generateSVGRareSparkle_26493(expr_25723, expr_25725)
                /// @src 149:1897:2771  "abi.encodePacked(..."

                let expr_25728_mpos := allocate_unbounded()
                let _620 := add(expr_25728_mpos, 0x20)

                let _621 := abi_encode_tuple_packed_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_stringliteral_ed942a74eccce931b7661b37252dffca8561e3a8bdec86f6da31d97d858c9292__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_620, expr_25682_mpos, expr_25692_mpos, expr_25700_mpos, expr_25710_mpos, expr_25720_mpos, expr_25726_mpos)
                mstore(expr_25728_mpos, sub(_621, add(expr_25728_mpos, 0x20)))
                finalize_allocation(expr_25728_mpos, sub(_621, expr_25728_mpos))
                /// @src 149:1873:2785  "string(..."
                let expr_25729_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_25728_mpos)
                /// @src 149:1854:2785  "return..."
                var_svg_25674_mpos := expr_25729_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

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

            function cleanup_t_rational_340214320654664324051920982716015181260_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340214320654664324051920982716015181260_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340214320654664324051920982716015181260_by_1(value)))
            }

            function cleanup_t_rational_340146287995602323631171512101879684304_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340146287995602323631171512101879684304_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340146287995602323631171512101879684304_by_1(value)))
            }

            function cleanup_t_rational_340010263488231146823593991679159461444_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_340010263488231146823593991679159461444_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340010263488231146823593991679159461444_by_1(value)))
            }

            function cleanup_t_rational_339738377640345403697157401104375502016_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_339738377640345403697157401104375502016_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_339738377640345403697157401104375502016_by_1(value)))
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

            function convert_t_rational_32_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_32_by_1(value)))
            }

            function cleanup_t_rational_4294967296_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4294967296_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4294967296_by_1(value)))
            }

            /// @ast-id 5493
            /// @src 118:1392:3980  "function getSqrtRatioAtTick(int24 tick) internal pure returns (uint160 sqrtPriceX96) {..."
            function fun_getSqrtRatioAtTick_5493(var_tick_5119) -> var_sqrtPriceX96_5122 {
                /// @src 118:1455:1475  "uint160 sqrtPriceX96"
                let zero_t_uint160_622 := zero_value_for_split_t_uint160()
                var_sqrtPriceX96_5122 := zero_t_uint160_622

                /// @src 118:1505:1509  "tick"
                let _623 := var_tick_5119
                let expr_5126 := _623
                /// @src 118:1512:1513  "0"
                let expr_5127 := 0x00
                /// @src 118:1505:1513  "tick < 0"
                let expr_5128 := slt(cleanup_t_int24(expr_5126), convert_t_rational_0_by_1_to_t_int24(expr_5127))
                /// @src 118:1505:1562  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                let expr_5144
                switch expr_5128
                case 0 {
                    /// @src 118:1556:1560  "tick"
                    let _624 := var_tick_5119
                    let expr_5141 := _624
                    /// @src 118:1549:1561  "int256(tick)"
                    let expr_5142 := convert_t_int24_to_t_int256(expr_5141)
                    /// @src 118:1541:1562  "uint256(int256(tick))"
                    let expr_5143 := convert_t_int256_to_t_uint256(expr_5142)
                    /// @src 118:1505:1562  "tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick))"
                    expr_5144 := expr_5143
                }
                default {
                    /// @src 118:1532:1536  "tick"
                    let _625 := var_tick_5119
                    let expr_5133 := _625
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
                let _626 := var_absTick_5125
                let expr_5147 := _626
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
                let _627 := var_absTick_5125
                let expr_5161 := _627
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
                let _628 := var_absTick_5125
                let expr_5170 := _628
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
                    let _629 := var_ratio_5160
                    let expr_5176 := _629
                    /// @src 118:1793:1827  "0xfff97272373d413259a46990580e213a"
                    let expr_5177 := 0xfff97272373d413259a46990580e213a
                    /// @src 118:1785:1827  "ratio * 0xfff97272373d413259a46990580e213a"
                    let expr_5178 := checked_mul_t_uint256(expr_5176, convert_t_rational_340248342086729790484326174814286782778_by_1_to_t_uint256(expr_5177))

                    /// @src 118:1784:1828  "(ratio * 0xfff97272373d413259a46990580e213a)"
                    let expr_5179 := expr_5178
                    /// @src 118:1832:1835  "128"
                    let expr_5180 := 0x80
                    /// @src 118:1784:1835  "(ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                    let _630 := convert_t_rational_128_by_1_to_t_uint8(expr_5180)
                    let expr_5181 :=
                    shift_right_t_uint256_t_uint8(expr_5179, _630)

                    /// @src 118:1776:1835  "ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                    var_ratio_5160 := expr_5181
                    let expr_5182 := expr_5181
                    /// @src 118:1752:1835  "if (absTick & 0x2 != 0) ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128"
                }
                /// @src 118:1849:1856  "absTick"
                let _631 := var_absTick_5125
                let expr_5185 := _631
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
                    let _632 := var_ratio_5160
                    let expr_5191 := _632
                    /// @src 118:1886:1920  "0xfff2e50f5f656932ef12357cf3c7fdcc"
                    let expr_5192 := 0xfff2e50f5f656932ef12357cf3c7fdcc
                    /// @src 118:1878:1920  "ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc"
                    let expr_5193 := checked_mul_t_uint256(expr_5191, convert_t_rational_340214320654664324051920982716015181260_by_1_to_t_uint256(expr_5192))

                    /// @src 118:1877:1921  "(ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc)"
                    let expr_5194 := expr_5193
                    /// @src 118:1925:1928  "128"
                    let expr_5195 := 0x80
                    /// @src 118:1877:1928  "(ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                    let _633 := convert_t_rational_128_by_1_to_t_uint8(expr_5195)
                    let expr_5196 :=
                    shift_right_t_uint256_t_uint8(expr_5194, _633)

                    /// @src 118:1869:1928  "ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                    var_ratio_5160 := expr_5196
                    let expr_5197 := expr_5196
                    /// @src 118:1845:1928  "if (absTick & 0x4 != 0) ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128"
                }
                /// @src 118:1942:1949  "absTick"
                let _634 := var_absTick_5125
                let expr_5200 := _634
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
                    let _635 := var_ratio_5160
                    let expr_5206 := _635
                    /// @src 118:1979:2013  "0xffe5caca7e10e4e61c3624eaa0941cd0"
                    let expr_5207 := 0xffe5caca7e10e4e61c3624eaa0941cd0
                    /// @src 118:1971:2013  "ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0"
                    let expr_5208 := checked_mul_t_uint256(expr_5206, convert_t_rational_340146287995602323631171512101879684304_by_1_to_t_uint256(expr_5207))

                    /// @src 118:1970:2014  "(ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0)"
                    let expr_5209 := expr_5208
                    /// @src 118:2018:2021  "128"
                    let expr_5210 := 0x80
                    /// @src 118:1970:2021  "(ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                    let _636 := convert_t_rational_128_by_1_to_t_uint8(expr_5210)
                    let expr_5211 :=
                    shift_right_t_uint256_t_uint8(expr_5209, _636)

                    /// @src 118:1962:2021  "ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                    var_ratio_5160 := expr_5211
                    let expr_5212 := expr_5211
                    /// @src 118:1938:2021  "if (absTick & 0x8 != 0) ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128"
                }
                /// @src 118:2035:2042  "absTick"
                let _637 := var_absTick_5125
                let expr_5215 := _637
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
                    let _638 := var_ratio_5160
                    let expr_5221 := _638
                    /// @src 118:2073:2107  "0xffcb9843d60f6159c9db58835c926644"
                    let expr_5222 := 0xffcb9843d60f6159c9db58835c926644
                    /// @src 118:2065:2107  "ratio * 0xffcb9843d60f6159c9db58835c926644"
                    let expr_5223 := checked_mul_t_uint256(expr_5221, convert_t_rational_340010263488231146823593991679159461444_by_1_to_t_uint256(expr_5222))

                    /// @src 118:2064:2108  "(ratio * 0xffcb9843d60f6159c9db58835c926644)"
                    let expr_5224 := expr_5223
                    /// @src 118:2112:2115  "128"
                    let expr_5225 := 0x80
                    /// @src 118:2064:2115  "(ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                    let _639 := convert_t_rational_128_by_1_to_t_uint8(expr_5225)
                    let expr_5226 :=
                    shift_right_t_uint256_t_uint8(expr_5224, _639)

                    /// @src 118:2056:2115  "ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                    var_ratio_5160 := expr_5226
                    let expr_5227 := expr_5226
                    /// @src 118:2031:2115  "if (absTick & 0x10 != 0) ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128"
                }
                /// @src 118:2129:2136  "absTick"
                let _640 := var_absTick_5125
                let expr_5230 := _640
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
                    let _641 := var_ratio_5160
                    let expr_5236 := _641
                    /// @src 118:2167:2201  "0xff973b41fa98c081472e6896dfb254c0"
                    let expr_5237 := 0xff973b41fa98c081472e6896dfb254c0
                    /// @src 118:2159:2201  "ratio * 0xff973b41fa98c081472e6896dfb254c0"
                    let expr_5238 := checked_mul_t_uint256(expr_5236, convert_t_rational_339738377640345403697157401104375502016_by_1_to_t_uint256(expr_5237))

                    /// @src 118:2158:2202  "(ratio * 0xff973b41fa98c081472e6896dfb254c0)"
                    let expr_5239 := expr_5238
                    /// @src 118:2206:2209  "128"
                    let expr_5240 := 0x80
                    /// @src 118:2158:2209  "(ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                    let _642 := convert_t_rational_128_by_1_to_t_uint8(expr_5240)
                    let expr_5241 :=
                    shift_right_t_uint256_t_uint8(expr_5239, _642)

                    /// @src 118:2150:2209  "ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                    var_ratio_5160 := expr_5241
                    let expr_5242 := expr_5241
                    /// @src 118:2125:2209  "if (absTick & 0x20 != 0) ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128"
                }
                /// @src 118:2223:2230  "absTick"
                let _643 := var_absTick_5125
                let expr_5245 := _643
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
                    let _644 := var_ratio_5160
                    let expr_5251 := _644
                    /// @src 118:2261:2295  "0xff2ea16466c96a3843ec78b326b52861"
                    let expr_5252 := 0xff2ea16466c96a3843ec78b326b52861
                    /// @src 118:2253:2295  "ratio * 0xff2ea16466c96a3843ec78b326b52861"
                    let expr_5253 := checked_mul_t_uint256(expr_5251, convert_t_rational_339195258003219555707034227454543997025_by_1_to_t_uint256(expr_5252))

                    /// @src 118:2252:2296  "(ratio * 0xff2ea16466c96a3843ec78b326b52861)"
                    let expr_5254 := expr_5253
                    /// @src 118:2300:2303  "128"
                    let expr_5255 := 0x80
                    /// @src 118:2252:2303  "(ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                    let _645 := convert_t_rational_128_by_1_to_t_uint8(expr_5255)
                    let expr_5256 :=
                    shift_right_t_uint256_t_uint8(expr_5254, _645)

                    /// @src 118:2244:2303  "ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                    var_ratio_5160 := expr_5256
                    let expr_5257 := expr_5256
                    /// @src 118:2219:2303  "if (absTick & 0x40 != 0) ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128"
                }
                /// @src 118:2317:2324  "absTick"
                let _646 := var_absTick_5125
                let expr_5260 := _646
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
                    let _647 := var_ratio_5160
                    let expr_5266 := _647
                    /// @src 118:2355:2389  "0xfe5dee046a99a2a811c461f1969c3053"
                    let expr_5267 := 0xfe5dee046a99a2a811c461f1969c3053
                    /// @src 118:2347:2389  "ratio * 0xfe5dee046a99a2a811c461f1969c3053"
                    let expr_5268 := checked_mul_t_uint256(expr_5266, convert_t_rational_338111622100601834656805679988414885971_by_1_to_t_uint256(expr_5267))

                    /// @src 118:2346:2390  "(ratio * 0xfe5dee046a99a2a811c461f1969c3053)"
                    let expr_5269 := expr_5268
                    /// @src 118:2394:2397  "128"
                    let expr_5270 := 0x80
                    /// @src 118:2346:2397  "(ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                    let _648 := convert_t_rational_128_by_1_to_t_uint8(expr_5270)
                    let expr_5271 :=
                    shift_right_t_uint256_t_uint8(expr_5269, _648)

                    /// @src 118:2338:2397  "ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                    var_ratio_5160 := expr_5271
                    let expr_5272 := expr_5271
                    /// @src 118:2313:2397  "if (absTick & 0x80 != 0) ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128"
                }
                /// @src 118:2411:2418  "absTick"
                let _649 := var_absTick_5125
                let expr_5275 := _649
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
                    let _650 := var_ratio_5160
                    let expr_5281 := _650
                    /// @src 118:2450:2484  "0xfcbe86c7900a88aedcffc83b479aa3a4"
                    let expr_5282 := 0xfcbe86c7900a88aedcffc83b479aa3a4
                    /// @src 118:2442:2484  "ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4"
                    let expr_5283 := checked_mul_t_uint256(expr_5281, convert_t_rational_335954724994790223023589805789778977700_by_1_to_t_uint256(expr_5282))

                    /// @src 118:2441:2485  "(ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4)"
                    let expr_5284 := expr_5283
                    /// @src 118:2489:2492  "128"
                    let expr_5285 := 0x80
                    /// @src 118:2441:2492  "(ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                    let _651 := convert_t_rational_128_by_1_to_t_uint8(expr_5285)
                    let expr_5286 :=
                    shift_right_t_uint256_t_uint8(expr_5284, _651)

                    /// @src 118:2433:2492  "ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                    var_ratio_5160 := expr_5286
                    let expr_5287 := expr_5286
                    /// @src 118:2407:2492  "if (absTick & 0x100 != 0) ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128"
                }
                /// @src 118:2506:2513  "absTick"
                let _652 := var_absTick_5125
                let expr_5290 := _652
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
                    let _653 := var_ratio_5160
                    let expr_5296 := _653
                    /// @src 118:2545:2579  "0xf987a7253ac413176f2b074cf7815e54"
                    let expr_5297 := 0xf987a7253ac413176f2b074cf7815e54
                    /// @src 118:2537:2579  "ratio * 0xf987a7253ac413176f2b074cf7815e54"
                    let expr_5298 := checked_mul_t_uint256(expr_5296, convert_t_rational_331682121138379247127172139078559817300_by_1_to_t_uint256(expr_5297))

                    /// @src 118:2536:2580  "(ratio * 0xf987a7253ac413176f2b074cf7815e54)"
                    let expr_5299 := expr_5298
                    /// @src 118:2584:2587  "128"
                    let expr_5300 := 0x80
                    /// @src 118:2536:2587  "(ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                    let _654 := convert_t_rational_128_by_1_to_t_uint8(expr_5300)
                    let expr_5301 :=
                    shift_right_t_uint256_t_uint8(expr_5299, _654)

                    /// @src 118:2528:2587  "ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                    var_ratio_5160 := expr_5301
                    let expr_5302 := expr_5301
                    /// @src 118:2502:2587  "if (absTick & 0x200 != 0) ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128"
                }
                /// @src 118:2601:2608  "absTick"
                let _655 := var_absTick_5125
                let expr_5305 := _655
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
                    let _656 := var_ratio_5160
                    let expr_5311 := _656
                    /// @src 118:2640:2674  "0xf3392b0822b70005940c7a398e4b70f3"
                    let expr_5312 := 0xf3392b0822b70005940c7a398e4b70f3
                    /// @src 118:2632:2674  "ratio * 0xf3392b0822b70005940c7a398e4b70f3"
                    let expr_5313 := checked_mul_t_uint256(expr_5311, convert_t_rational_323299236684853023288211250268160618739_by_1_to_t_uint256(expr_5312))

                    /// @src 118:2631:2675  "(ratio * 0xf3392b0822b70005940c7a398e4b70f3)"
                    let expr_5314 := expr_5313
                    /// @src 118:2679:2682  "128"
                    let expr_5315 := 0x80
                    /// @src 118:2631:2682  "(ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                    let _657 := convert_t_rational_128_by_1_to_t_uint8(expr_5315)
                    let expr_5316 :=
                    shift_right_t_uint256_t_uint8(expr_5314, _657)

                    /// @src 118:2623:2682  "ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                    var_ratio_5160 := expr_5316
                    let expr_5317 := expr_5316
                    /// @src 118:2597:2682  "if (absTick & 0x400 != 0) ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128"
                }
                /// @src 118:2696:2703  "absTick"
                let _658 := var_absTick_5125
                let expr_5320 := _658
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
                    let _659 := var_ratio_5160
                    let expr_5326 := _659
                    /// @src 118:2735:2769  "0xe7159475a2c29b7443b29c7fa6e889d9"
                    let expr_5327 := 0xe7159475a2c29b7443b29c7fa6e889d9
                    /// @src 118:2727:2769  "ratio * 0xe7159475a2c29b7443b29c7fa6e889d9"
                    let expr_5328 := checked_mul_t_uint256(expr_5326, convert_t_rational_307163716377032989948697243942600083929_by_1_to_t_uint256(expr_5327))

                    /// @src 118:2726:2770  "(ratio * 0xe7159475a2c29b7443b29c7fa6e889d9)"
                    let expr_5329 := expr_5328
                    /// @src 118:2774:2777  "128"
                    let expr_5330 := 0x80
                    /// @src 118:2726:2777  "(ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                    let _660 := convert_t_rational_128_by_1_to_t_uint8(expr_5330)
                    let expr_5331 :=
                    shift_right_t_uint256_t_uint8(expr_5329, _660)

                    /// @src 118:2718:2777  "ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                    var_ratio_5160 := expr_5331
                    let expr_5332 := expr_5331
                    /// @src 118:2692:2777  "if (absTick & 0x800 != 0) ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128"
                }
                /// @src 118:2791:2798  "absTick"
                let _661 := var_absTick_5125
                let expr_5335 := _661
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
                    let _662 := var_ratio_5160
                    let expr_5341 := _662
                    /// @src 118:2831:2865  "0xd097f3bdfd2022b8845ad8f792aa5825"
                    let expr_5342 := 0xd097f3bdfd2022b8845ad8f792aa5825
                    /// @src 118:2823:2865  "ratio * 0xd097f3bdfd2022b8845ad8f792aa5825"
                    let expr_5343 := checked_mul_t_uint256(expr_5341, convert_t_rational_277268403626896220162999269216087595045_by_1_to_t_uint256(expr_5342))

                    /// @src 118:2822:2866  "(ratio * 0xd097f3bdfd2022b8845ad8f792aa5825)"
                    let expr_5344 := expr_5343
                    /// @src 118:2870:2873  "128"
                    let expr_5345 := 0x80
                    /// @src 118:2822:2873  "(ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                    let _663 := convert_t_rational_128_by_1_to_t_uint8(expr_5345)
                    let expr_5346 :=
                    shift_right_t_uint256_t_uint8(expr_5344, _663)

                    /// @src 118:2814:2873  "ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                    var_ratio_5160 := expr_5346
                    let expr_5347 := expr_5346
                    /// @src 118:2787:2873  "if (absTick & 0x1000 != 0) ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128"
                }
                /// @src 118:2887:2894  "absTick"
                let _664 := var_absTick_5125
                let expr_5350 := _664
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
                    let _665 := var_ratio_5160
                    let expr_5356 := _665
                    /// @src 118:2927:2961  "0xa9f746462d870fdf8a65dc1f90e061e5"
                    let expr_5357 := 0xa9f746462d870fdf8a65dc1f90e061e5
                    /// @src 118:2919:2961  "ratio * 0xa9f746462d870fdf8a65dc1f90e061e5"
                    let expr_5358 := checked_mul_t_uint256(expr_5356, convert_t_rational_225923453940442621947126027127485391333_by_1_to_t_uint256(expr_5357))

                    /// @src 118:2918:2962  "(ratio * 0xa9f746462d870fdf8a65dc1f90e061e5)"
                    let expr_5359 := expr_5358
                    /// @src 118:2966:2969  "128"
                    let expr_5360 := 0x80
                    /// @src 118:2918:2969  "(ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                    let _666 := convert_t_rational_128_by_1_to_t_uint8(expr_5360)
                    let expr_5361 :=
                    shift_right_t_uint256_t_uint8(expr_5359, _666)

                    /// @src 118:2910:2969  "ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                    var_ratio_5160 := expr_5361
                    let expr_5362 := expr_5361
                    /// @src 118:2883:2969  "if (absTick & 0x2000 != 0) ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128"
                }
                /// @src 118:2983:2990  "absTick"
                let _667 := var_absTick_5125
                let expr_5365 := _667
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
                    let _668 := var_ratio_5160
                    let expr_5371 := _668
                    /// @src 118:3023:3057  "0x70d869a156d2a1b890bb3df62baf32f7"
                    let expr_5372 := 0x70d869a156d2a1b890bb3df62baf32f7
                    /// @src 118:3015:3057  "ratio * 0x70d869a156d2a1b890bb3df62baf32f7"
                    let expr_5373 := checked_mul_t_uint256(expr_5371, convert_t_rational_149997214084966997727330242082538205943_by_1_to_t_uint256(expr_5372))

                    /// @src 118:3014:3058  "(ratio * 0x70d869a156d2a1b890bb3df62baf32f7)"
                    let expr_5374 := expr_5373
                    /// @src 118:3062:3065  "128"
                    let expr_5375 := 0x80
                    /// @src 118:3014:3065  "(ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                    let _669 := convert_t_rational_128_by_1_to_t_uint8(expr_5375)
                    let expr_5376 :=
                    shift_right_t_uint256_t_uint8(expr_5374, _669)

                    /// @src 118:3006:3065  "ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                    var_ratio_5160 := expr_5376
                    let expr_5377 := expr_5376
                    /// @src 118:2979:3065  "if (absTick & 0x4000 != 0) ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128"
                }
                /// @src 118:3079:3086  "absTick"
                let _670 := var_absTick_5125
                let expr_5380 := _670
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
                    let _671 := var_ratio_5160
                    let expr_5386 := _671
                    /// @src 118:3119:3153  "0x31be135f97d08fd981231505542fcfa6"
                    let expr_5387 := 0x31be135f97d08fd981231505542fcfa6
                    /// @src 118:3111:3153  "ratio * 0x31be135f97d08fd981231505542fcfa6"
                    let expr_5388 := checked_mul_t_uint256(expr_5386, convert_t_rational_66119101136024775622716233608466517926_by_1_to_t_uint256(expr_5387))

                    /// @src 118:3110:3154  "(ratio * 0x31be135f97d08fd981231505542fcfa6)"
                    let expr_5389 := expr_5388
                    /// @src 118:3158:3161  "128"
                    let expr_5390 := 0x80
                    /// @src 118:3110:3161  "(ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                    let _672 := convert_t_rational_128_by_1_to_t_uint8(expr_5390)
                    let expr_5391 :=
                    shift_right_t_uint256_t_uint8(expr_5389, _672)

                    /// @src 118:3102:3161  "ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                    var_ratio_5160 := expr_5391
                    let expr_5392 := expr_5391
                    /// @src 118:3075:3161  "if (absTick & 0x8000 != 0) ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128"
                }
                /// @src 118:3175:3182  "absTick"
                let _673 := var_absTick_5125
                let expr_5395 := _673
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
                    let _674 := var_ratio_5160
                    let expr_5401 := _674
                    /// @src 118:3216:3249  "0x9aa508b5b7a84e1c677de54f3e99bc9"
                    let expr_5402 := 0x09aa508b5b7a84e1c677de54f3e99bc9
                    /// @src 118:3208:3249  "ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9"
                    let expr_5403 := checked_mul_t_uint256(expr_5401, convert_t_rational_12847376061809297530290974190478138313_by_1_to_t_uint256(expr_5402))

                    /// @src 118:3207:3250  "(ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9)"
                    let expr_5404 := expr_5403
                    /// @src 118:3254:3257  "128"
                    let expr_5405 := 0x80
                    /// @src 118:3207:3257  "(ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                    let _675 := convert_t_rational_128_by_1_to_t_uint8(expr_5405)
                    let expr_5406 :=
                    shift_right_t_uint256_t_uint8(expr_5404, _675)

                    /// @src 118:3199:3257  "ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                    var_ratio_5160 := expr_5406
                    let expr_5407 := expr_5406
                    /// @src 118:3171:3257  "if (absTick & 0x10000 != 0) ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128"
                }
                /// @src 118:3271:3278  "absTick"
                let _676 := var_absTick_5125
                let expr_5410 := _676
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
                    let _677 := var_ratio_5160
                    let expr_5416 := _677
                    /// @src 118:3312:3344  "0x5d6af8dedb81196699c329225ee604"
                    let expr_5417 := 0x5d6af8dedb81196699c329225ee604
                    /// @src 118:3304:3344  "ratio * 0x5d6af8dedb81196699c329225ee604"
                    let expr_5418 := checked_mul_t_uint256(expr_5416, convert_t_rational_485053260817066172746253684029974020_by_1_to_t_uint256(expr_5417))

                    /// @src 118:3303:3345  "(ratio * 0x5d6af8dedb81196699c329225ee604)"
                    let expr_5419 := expr_5418
                    /// @src 118:3349:3352  "128"
                    let expr_5420 := 0x80
                    /// @src 118:3303:3352  "(ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                    let _678 := convert_t_rational_128_by_1_to_t_uint8(expr_5420)
                    let expr_5421 :=
                    shift_right_t_uint256_t_uint8(expr_5419, _678)

                    /// @src 118:3295:3352  "ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                    var_ratio_5160 := expr_5421
                    let expr_5422 := expr_5421
                    /// @src 118:3267:3352  "if (absTick & 0x20000 != 0) ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128"
                }
                /// @src 118:3366:3373  "absTick"
                let _679 := var_absTick_5125
                let expr_5425 := _679
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
                    let _680 := var_ratio_5160
                    let expr_5431 := _680
                    /// @src 118:3407:3437  "0x2216e584f5fa1ea926041bedfe98"
                    let expr_5432 := 0x2216e584f5fa1ea926041bedfe98
                    /// @src 118:3399:3437  "ratio * 0x2216e584f5fa1ea926041bedfe98"
                    let expr_5433 := checked_mul_t_uint256(expr_5431, convert_t_rational_691415978906521570653435304214168_by_1_to_t_uint256(expr_5432))

                    /// @src 118:3398:3438  "(ratio * 0x2216e584f5fa1ea926041bedfe98)"
                    let expr_5434 := expr_5433
                    /// @src 118:3442:3445  "128"
                    let expr_5435 := 0x80
                    /// @src 118:3398:3445  "(ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                    let _681 := convert_t_rational_128_by_1_to_t_uint8(expr_5435)
                    let expr_5436 :=
                    shift_right_t_uint256_t_uint8(expr_5434, _681)

                    /// @src 118:3390:3445  "ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                    var_ratio_5160 := expr_5436
                    let expr_5437 := expr_5436
                    /// @src 118:3362:3445  "if (absTick & 0x40000 != 0) ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128"
                }
                /// @src 118:3459:3466  "absTick"
                let _682 := var_absTick_5125
                let expr_5440 := _682
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
                    let _683 := var_ratio_5160
                    let expr_5446 := _683
                    /// @src 118:3500:3525  "0x48a170391f7dc42444e8fa2"
                    let expr_5447 := 0x048a170391f7dc42444e8fa2
                    /// @src 118:3492:3525  "ratio * 0x48a170391f7dc42444e8fa2"
                    let expr_5448 := checked_mul_t_uint256(expr_5446, convert_t_rational_1404880482679654955896180642_by_1_to_t_uint256(expr_5447))

                    /// @src 118:3491:3526  "(ratio * 0x48a170391f7dc42444e8fa2)"
                    let expr_5449 := expr_5448
                    /// @src 118:3530:3533  "128"
                    let expr_5450 := 0x80
                    /// @src 118:3491:3533  "(ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                    let _684 := convert_t_rational_128_by_1_to_t_uint8(expr_5450)
                    let expr_5451 :=
                    shift_right_t_uint256_t_uint8(expr_5449, _684)

                    /// @src 118:3483:3533  "ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                    var_ratio_5160 := expr_5451
                    let expr_5452 := expr_5451
                    /// @src 118:3455:3533  "if (absTick & 0x80000 != 0) ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128"
                }
                /// @src 118:3548:3552  "tick"
                let _685 := var_tick_5119
                let expr_5455 := _685
                /// @src 118:3555:3556  "0"
                let expr_5456 := 0x00
                /// @src 118:3548:3556  "tick > 0"
                let expr_5457 := sgt(cleanup_t_int24(expr_5455), convert_t_rational_0_by_1_to_t_int24(expr_5456))
                /// @src 118:3544:3591  "if (tick > 0) ratio = type(uint256).max / ratio"
                if expr_5457 {
                    /// @src 118:3566:3583  "type(uint256).max"
                    let expr_5463 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    /// @src 118:3586:3591  "ratio"
                    let _686 := var_ratio_5160
                    let expr_5464 := _686
                    /// @src 118:3566:3591  "type(uint256).max / ratio"
                    let expr_5465 := checked_div_t_uint256(expr_5463, expr_5464)

                    /// @src 118:3558:3591  "ratio = type(uint256).max / ratio"
                    var_ratio_5160 := expr_5465
                    let expr_5466 := expr_5465
                    /// @src 118:3544:3591  "if (tick > 0) ratio = type(uint256).max / ratio"
                }
                /// @src 118:3925:3930  "ratio"
                let _687 := var_ratio_5160
                let expr_5472 := _687
                /// @src 118:3934:3936  "32"
                let expr_5473 := 0x20
                /// @src 118:3925:3936  "ratio >> 32"
                let _688 := convert_t_rational_32_by_1_to_t_uint8(expr_5473)
                let expr_5474 :=
                shift_right_t_uint256_t_uint8(expr_5472, _688)

                /// @src 118:3924:3937  "(ratio >> 32)"
                let expr_5475 := expr_5474
                /// @src 118:3941:3946  "ratio"
                let _689 := var_ratio_5160
                let expr_5476 := _689
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
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function cleanup_t_rational_18446744073709551616_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_18446744073709551616_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_18446744073709551616_by_1(value)))
            }

            function cleanup_t_rational_79228162514264337593543950336_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_79228162514264337593543950336_by_1(value)))
            }

            function cleanup_t_rational_100000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_100000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_100000_by_1(value)))
            }

            function convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_340282366920938463463374607431768211456_by_1(value)))
            }

            function cleanup_t_rational_100000000000000000000000000000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_100000000000000000000000000000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_100000000000000000000000000000000000000000000_by_1(value)))
            }

            function checked_sub_t_uint8(x, y) -> diff {
                x := cleanup_t_uint8(x)
                y := cleanup_t_uint8(y)
                diff := sub(x, y)

                if gt(diff, 0xff) { panic_error_0x11() }

            }

            function cleanup_t_rational_9_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_9_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_9_by_1(value)))
            }

            function cleanup_t_rational_6_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_6_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_6_by_1(value)))
            }

            function convert_t_rational_5_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_5_by_1(value)))
            }

            function cleanup_t_rational_7_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_7_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_7_by_1(value)))
            }

            function cleanup_t_rational_43_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_43_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_43_by_1(value)))
            }

            function convert_t_rational_43_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_43_by_1(value)))
            }

            /// @ast-id 11844
            /// @src 148:11031:13294  "function fixedPointToDecimalString(..."
            function fun_fixedPointToDecimalString_11844(var_sqrtRatioX96_11580, var_baseTokenDecimals_11582, var_quoteTokenDecimals_11584) -> var__11587_mpos {
                /// @src 148:11192:11205  "string memory"
                let zero_t_string_memory_ptr_690_mpos := zero_value_for_split_t_string_memory_ptr()
                var__11587_mpos := zero_t_string_memory_ptr_690_mpos

                /// @src 148:11274:11286  "sqrtRatioX96"
                let _691 := var_sqrtRatioX96_11580
                let expr_11592 := _691
                /// @src 148:11288:11305  "baseTokenDecimals"
                let _692 := var_baseTokenDecimals_11582
                let expr_11593 := _692
                /// @src 148:11307:11325  "quoteTokenDecimals"
                let _693 := var_quoteTokenDecimals_11584
                let expr_11594 := _693
                /// @src 148:11248:11326  "adjustForDecimalPrecision(sqrtRatioX96, baseTokenDecimals, quoteTokenDecimals)"
                let expr_11595 := fun_adjustForDecimalPrecision_11559(expr_11592, expr_11593, expr_11594)
                /// @src 148:11217:11326  "uint256 adjustedSqrtRatioX96 = adjustForDecimalPrecision(sqrtRatioX96, baseTokenDecimals, quoteTokenDecimals)"
                let var_adjustedSqrtRatioX96_11590 := expr_11595
                /// @src 148:11352:11360  "FullMath"
                let expr_11599_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                /// @src 148:11368:11388  "adjustedSqrtRatioX96"
                let _694 := var_adjustedSqrtRatioX96_11590
                let expr_11601 := _694
                /// @src 148:11390:11410  "adjustedSqrtRatioX96"
                let _695 := var_adjustedSqrtRatioX96_11590
                let expr_11602 := _695
                /// @src 148:11412:11419  "1 << 64"
                let expr_11605 := 0x010000000000000000
                /// @src 148:11352:11420  "FullMath.mulDiv(adjustedSqrtRatioX96, adjustedSqrtRatioX96, 1 << 64)"
                let _696 := convert_t_rational_18446744073709551616_by_1_to_t_uint256(expr_11605)
                let expr_11606 := fun_mulDiv_9388(expr_11601, expr_11602, _696)
                /// @src 148:11336:11420  "uint256 value = FullMath.mulDiv(adjustedSqrtRatioX96, adjustedSqrtRatioX96, 1 << 64)"
                let var_value_11598 := expr_11606
                /// @src 148:11450:11470  "adjustedSqrtRatioX96"
                let _697 := var_adjustedSqrtRatioX96_11590
                let expr_11610 := _697
                /// @src 148:11473:11478  "2**96"
                let expr_11613 := 0x01000000000000000000000000
                /// @src 148:11450:11478  "adjustedSqrtRatioX96 < 2**96"
                let expr_11614 := lt(cleanup_t_uint256(expr_11610), convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(expr_11613))
                /// @src 148:11431:11478  "bool priceBelow1 = adjustedSqrtRatioX96 < 2**96"
                let var_priceBelow1_11609 := expr_11614
                /// @src 148:11492:11503  "priceBelow1"
                let _698 := var_priceBelow1_11609
                let expr_11616 := _698
                /// @src 148:11488:11841  "if (priceBelow1) {..."
                switch expr_11616
                case 0 {
                    /// @src 148:11791:11799  "FullMath"
                    let expr_11632_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 148:11807:11812  "value"
                    let _699 := var_value_11598
                    let expr_11634 := _699
                    /// @src 148:11814:11819  "10**5"
                    let expr_11637 := 0x0186a0
                    /// @src 148:11821:11829  "1 << 128"
                    let expr_11640 := 0x0100000000000000000000000000000000
                    /// @src 148:11791:11830  "FullMath.mulDiv(value, 10**5, 1 << 128)"
                    let _700 := convert_t_rational_100000_by_1_to_t_uint256(expr_11637)
                    let _701 := convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(expr_11640)
                    let expr_11641 := fun_mulDiv_9388(expr_11634, _700, _701)
                    /// @src 148:11783:11830  "value = FullMath.mulDiv(value, 10**5, 1 << 128)"
                    var_value_11598 := expr_11641
                    let expr_11642 := expr_11641
                    /// @src 148:11488:11841  "if (priceBelow1) {..."
                }
                default {
                    /// @src 148:11637:11645  "FullMath"
                    let expr_11618_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                    /// @src 148:11653:11658  "value"
                    let _702 := var_value_11598
                    let expr_11620 := _702
                    /// @src 148:11660:11666  "10**44"
                    let expr_11623 := 0x047bf19673df52e37f2410011d100000000000
                    /// @src 148:11668:11676  "1 << 128"
                    let expr_11626 := 0x0100000000000000000000000000000000
                    /// @src 148:11637:11677  "FullMath.mulDiv(value, 10**44, 1 << 128)"
                    let _703 := convert_t_rational_100000000000000000000000000000000000000000000_by_1_to_t_uint256(expr_11623)
                    let _704 := convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(expr_11626)
                    let expr_11627 := fun_mulDiv_9388(expr_11620, _703, _704)
                    /// @src 148:11629:11677  "value = FullMath.mulDiv(value, 10**44, 1 << 128)"
                    var_value_11598 := expr_11627
                    let expr_11628 := expr_11627
                    /// @src 148:11488:11841  "if (priceBelow1) {..."
                }
                /// @src 148:11893:11898  "value"
                let _705 := var_value_11598
                let expr_11648 := _705
                /// @src 148:11878:11898  "uint256 temp = value"
                let var_temp_11647 := expr_11648
                /// @src 148:11908:11920  "uint8 digits"
                let var_digits_11651
                let zero_t_uint8_706 := zero_value_for_split_t_uint8()
                var_digits_11651 := zero_t_uint8_706
                /// @src 148:11930:12005  "while (temp != 0) {..."
                for {
                    } 1 {
                }
                {
                    /// @src 148:11937:11941  "temp"
                    let _707 := var_temp_11647
                    let expr_11653 := _707
                    /// @src 148:11945:11946  "0"
                    let expr_11654 := 0x00
                    /// @src 148:11937:11946  "temp != 0"
                    let expr_11655 := iszero(eq(cleanup_t_uint256(expr_11653), convert_t_rational_0_by_1_to_t_uint256(expr_11654)))
                    if iszero(expr_11655) { break }
                    /// @src 148:11962:11970  "digits++"
                    let _709 := var_digits_11651
                    let _708 := increment_t_uint8(_709)
                    var_digits_11651 := _708
                    let expr_11657 := _709
                    /// @src 148:11992:11994  "10"
                    let expr_11660 := 0x0a
                    /// @src 148:11984:11994  "temp /= 10"
                    let _710 := convert_t_rational_10_by_1_to_t_uint256(expr_11660)
                    let _711 := var_temp_11647
                    let expr_11661 := checked_div_t_uint256(_711, _710)

                    var_temp_11647 := expr_11661
                }
                /// @src 148:12076:12082  "digits"
                let _712 := var_digits_11651
                let expr_11666 := _712
                /// @src 148:12085:12086  "1"
                let expr_11667 := 0x01
                /// @src 148:12076:12086  "digits - 1"
                let expr_11668 := checked_sub_t_uint8(expr_11666, convert_t_rational_1_by_1_to_t_uint8(expr_11667))

                /// @src 148:12067:12086  "digits = digits - 1"
                var_digits_11651 := expr_11668
                let expr_11669 := expr_11668
                /// @src 148:12177:12182  "value"
                let _713 := var_value_11598
                let expr_11676 := _713
                /// @src 148:12184:12190  "digits"
                let _714 := var_digits_11651
                let expr_11677 := _714
                /// @src 148:12162:12191  "sigfigsRounded(value, digits)"
                let expr_11678_component_1, expr_11678_component_2 := fun_sigfigsRounded_11441(expr_11676, expr_11677)
                /// @src 148:12125:12191  "(uint256 sigfigs, bool extraDigit) = sigfigsRounded(value, digits)"
                let var_sigfigs_11672 := expr_11678_component_1
                let var_extraDigit_11674 := expr_11678_component_2
                /// @src 148:12205:12215  "extraDigit"
                let _715 := var_extraDigit_11674
                let expr_11680 := _715
                /// @src 148:12201:12250  "if (extraDigit) {..."
                if expr_11680 {
                    /// @src 148:12231:12239  "digits++"
                    let _717 := var_digits_11651
                    let _716 := increment_t_uint8(_717)
                    var_digits_11651 := _716
                    let expr_11682 := _717
                    /// @src 148:12201:12250  "if (extraDigit) {..."
                }
                /// @src 148:12260:12293  "DecimalStringParams memory params"
                let var_params_11688_mpos
                let zero_t_struct$_DecimalStringParams_$11150_memory_ptr_718_mpos := zero_value_for_split_t_struct$_DecimalStringParams_$11150_memory_ptr()
                var_params_11688_mpos := zero_t_struct$_DecimalStringParams_$11150_memory_ptr_718_mpos
                /// @src 148:12307:12318  "priceBelow1"
                let _719 := var_priceBelow1_11609
                let expr_11690 := _719
                /// @src 148:12303:13129  "if (priceBelow1) {..."
                switch expr_11690
                case 0 {
                    /// @src 148:12666:12672  "digits"
                    let _720 := var_digits_11651
                    let expr_11750 := _720
                    /// @src 148:12676:12677  "9"
                    let expr_11751 := 0x09
                    /// @src 148:12666:12677  "digits >= 9"
                    let expr_11752 := iszero(lt(cleanup_t_uint8(expr_11750), convert_t_rational_9_by_1_to_t_uint8(expr_11751)))
                    /// @src 148:12662:13129  "if (digits >= 9) {..."
                    switch expr_11752
                    case 0 {
                        /// @src 148:13018:13019  "6"
                        let expr_11794 := 0x06
                        /// @src 148:12996:13019  "params.bufferLength = 6"
                        let _721 := convert_t_rational_6_by_1_to_t_uint8(expr_11794)
                        /// @src 148:12996:13002  "params"
                        let _722_mpos := var_params_11688_mpos
                        let expr_11791_mpos := _722_mpos
                        /// @src 148:12996:13015  "params.bufferLength"
                        let _723 := add(expr_11791_mpos, 32)
                        /// @src 148:12996:13019  "params.bufferLength = 6"
                        let _724 := _721
                        write_to_memory_t_uint8(_723, _724)
                        let expr_11795 := _721
                        /// @src 148:13054:13055  "5"
                        let expr_11800 := 0x05
                        /// @src 148:13033:13055  "params.sigfigIndex = 5"
                        let _725 := convert_t_rational_5_by_1_to_t_uint8(expr_11800)
                        /// @src 148:13033:13039  "params"
                        let _726_mpos := var_params_11688_mpos
                        let expr_11797_mpos := _726_mpos
                        /// @src 148:13033:13051  "params.sigfigIndex"
                        let _727 := add(expr_11797_mpos, 64)
                        /// @src 148:13033:13055  "params.sigfigIndex = 5"
                        let _728 := _725
                        write_to_memory_t_uint8(_727, _728)
                        let expr_11801 := _725
                        /// @src 148:13097:13103  "digits"
                        let _729 := var_digits_11651
                        let expr_11808 := _729
                        /// @src 148:13097:13107  "digits.sub"
                        let expr_11809_self := convert_t_uint8_to_t_uint256(expr_11808)
                        /// @src 148:13108:13109  "5"
                        let expr_11810 := 0x05
                        /// @src 148:13097:13110  "digits.sub(5)"
                        let _730 := convert_t_rational_5_by_1_to_t_uint256(expr_11810)
                        let expr_11811 := fun_sub_5837(expr_11809_self, _730)
                        /// @src 148:13097:13114  "digits.sub(5).add"
                        let expr_11812_self := expr_11811
                        /// @src 148:13115:13116  "1"
                        let expr_11813 := 0x01
                        /// @src 148:13097:13117  "digits.sub(5).add(1)"
                        let _731 := convert_t_rational_1_by_1_to_t_uint256(expr_11813)
                        let expr_11814 := fun_add_5815(expr_11812_self, _731)
                        /// @src 148:13091:13118  "uint8(digits.sub(5).add(1))"
                        let expr_11815 := convert_t_uint256_to_t_uint8(expr_11814)
                        /// @src 148:13069:13075  "params"
                        let _732_mpos := var_params_11688_mpos
                        let expr_11803_mpos := _732_mpos
                        /// @src 148:13069:13088  "params.decimalIndex"
                        let _733 := add(expr_11803_mpos, 96)
                        /// @src 148:13069:13118  "params.decimalIndex = uint8(digits.sub(5).add(1))"
                        let _734 := expr_11815
                        write_to_memory_t_uint8(_733, _734)
                        let expr_11816 := expr_11815
                        /// @src 148:12662:13129  "if (digits >= 9) {..."
                    }
                    default {
                        /// @src 148:12763:12769  "digits"
                        let _735 := var_digits_11651
                        let expr_11758 := _735
                        /// @src 148:12763:12773  "digits.sub"
                        let expr_11759_self := convert_t_uint8_to_t_uint256(expr_11758)
                        /// @src 148:12774:12775  "4"
                        let expr_11760 := 0x04
                        /// @src 148:12763:12776  "digits.sub(4)"
                        let _736 := convert_t_rational_4_by_1_to_t_uint256(expr_11760)
                        let expr_11761 := fun_sub_5837(expr_11759_self, _736)
                        /// @src 148:12757:12777  "uint8(digits.sub(4))"
                        let expr_11762 := convert_t_uint256_to_t_uint8(expr_11761)
                        /// @src 148:12735:12741  "params"
                        let _737_mpos := var_params_11688_mpos
                        let expr_11753_mpos := _737_mpos
                        /// @src 148:12735:12754  "params.bufferLength"
                        let _738 := add(expr_11753_mpos, 32)
                        /// @src 148:12735:12777  "params.bufferLength = uint8(digits.sub(4))"
                        let _739 := expr_11762
                        write_to_memory_t_uint8(_738, _739)
                        let expr_11763 := expr_11762
                        /// @src 148:12816:12817  "5"
                        let expr_11768 := 0x05
                        /// @src 148:12791:12817  "params.zerosStartIndex = 5"
                        let _740 := convert_t_rational_5_by_1_to_t_uint8(expr_11768)
                        /// @src 148:12791:12797  "params"
                        let _741_mpos := var_params_11688_mpos
                        let expr_11765_mpos := _741_mpos
                        /// @src 148:12791:12813  "params.zerosStartIndex"
                        let _742 := add(expr_11765_mpos, 128)
                        /// @src 148:12791:12817  "params.zerosStartIndex = 5"
                        let _743 := _740
                        write_to_memory_t_uint8(_742, _743)
                        let expr_11769 := _740
                        /// @src 148:12860:12866  "params"
                        let _744_mpos := var_params_11688_mpos
                        let expr_11776_mpos := _744_mpos
                        /// @src 148:12860:12879  "params.bufferLength"
                        let _745 := add(expr_11776_mpos, 32)
                        let _746 := read_from_memoryt_uint8(_745)
                        let expr_11777 := _746
                        /// @src 148:12860:12883  "params.bufferLength.sub"
                        let expr_11778_self := convert_t_uint8_to_t_uint256(expr_11777)
                        /// @src 148:12884:12885  "1"
                        let expr_11779 := 0x01
                        /// @src 148:12860:12886  "params.bufferLength.sub(1)"
                        let _747 := convert_t_rational_1_by_1_to_t_uint256(expr_11779)
                        let expr_11780 := fun_sub_5837(expr_11778_self, _747)
                        /// @src 148:12854:12887  "uint8(params.bufferLength.sub(1))"
                        let expr_11781 := convert_t_uint256_to_t_uint8(expr_11780)
                        /// @src 148:12831:12837  "params"
                        let _748_mpos := var_params_11688_mpos
                        let expr_11771_mpos := _748_mpos
                        /// @src 148:12831:12851  "params.zerosEndIndex"
                        let _749 := add(expr_11771_mpos, 160)
                        /// @src 148:12831:12887  "params.zerosEndIndex = uint8(params.bufferLength.sub(1))"
                        let _750 := expr_11781
                        write_to_memory_t_uint8(_749, _750)
                        let expr_11782 := expr_11781
                        /// @src 148:12922:12923  "4"
                        let expr_11787 := 0x04
                        /// @src 148:12901:12923  "params.sigfigIndex = 4"
                        let _751 := convert_t_rational_4_by_1_to_t_uint8(expr_11787)
                        /// @src 148:12901:12907  "params"
                        let _752_mpos := var_params_11688_mpos
                        let expr_11784_mpos := _752_mpos
                        /// @src 148:12901:12919  "params.sigfigIndex"
                        let _753 := add(expr_11784_mpos, 64)
                        /// @src 148:12901:12923  "params.sigfigIndex = 4"
                        let _754 := _751
                        write_to_memory_t_uint8(_753, _754)
                        let expr_11788 := _751
                        /// @src 148:12662:13129  "if (digits >= 9) {..."
                    }
                    /// @src 148:12303:13129  "if (priceBelow1) {..."
                }
                default {
                    /// @src 148:12433:12434  "7"
                    let expr_11698 := 0x07
                    /// @src 148:12427:12435  "uint8(7)"
                    let expr_11699 := convert_t_rational_7_by_1_to_t_uint8(expr_11698)
                    /// @src 148:12427:12439  "uint8(7).add"
                    let expr_11700_self := convert_t_uint8_to_t_uint256(expr_11699)
                    /// @src 148:12446:12448  "43"
                    let expr_11703 := 0x2b
                    /// @src 148:12440:12449  "uint8(43)"
                    let expr_11704 := convert_t_rational_43_by_1_to_t_uint8(expr_11703)
                    /// @src 148:12440:12453  "uint8(43).sub"
                    let expr_11705_self := convert_t_uint8_to_t_uint256(expr_11704)
                    /// @src 148:12454:12460  "digits"
                    let _755 := var_digits_11651
                    let expr_11706 := _755
                    /// @src 148:12440:12461  "uint8(43).sub(digits)"
                    let _756 := convert_t_uint8_to_t_uint256(expr_11706)
                    let expr_11707 := fun_sub_5837(expr_11705_self, _756)
                    /// @src 148:12427:12462  "uint8(7).add(uint8(43).sub(digits))"
                    let expr_11708 := fun_add_5815(expr_11700_self, expr_11707)
                    /// @src 148:12421:12463  "uint8(uint8(7).add(uint8(43).sub(digits)))"
                    let expr_11709 := convert_t_uint256_to_t_uint8(expr_11708)
                    /// @src 148:12399:12405  "params"
                    let _757_mpos := var_params_11688_mpos
                    let expr_11691_mpos := _757_mpos
                    /// @src 148:12399:12418  "params.bufferLength"
                    let _758 := add(expr_11691_mpos, 32)
                    /// @src 148:12399:12463  "params.bufferLength = uint8(uint8(7).add(uint8(43).sub(digits)))"
                    let _759 := expr_11709
                    write_to_memory_t_uint8(_758, _759)
                    let expr_11710 := expr_11709
                    /// @src 148:12502:12503  "2"
                    let expr_11715 := 0x02
                    /// @src 148:12477:12503  "params.zerosStartIndex = 2"
                    let _760 := convert_t_rational_2_by_1_to_t_uint8(expr_11715)
                    /// @src 148:12477:12483  "params"
                    let _761_mpos := var_params_11688_mpos
                    let expr_11712_mpos := _761_mpos
                    /// @src 148:12477:12499  "params.zerosStartIndex"
                    let _762 := add(expr_11712_mpos, 128)
                    /// @src 148:12477:12503  "params.zerosStartIndex = 2"
                    let _763 := _760
                    write_to_memory_t_uint8(_762, _763)
                    let expr_11716 := _760
                    /// @src 148:12554:12556  "43"
                    let expr_11725 := 0x2b
                    /// @src 148:12546:12557  "uint256(43)"
                    let expr_11726 := convert_t_rational_43_by_1_to_t_uint256(expr_11725)
                    /// @src 148:12546:12561  "uint256(43).sub"
                    let expr_11727_self := expr_11726
                    /// @src 148:12562:12568  "digits"
                    let _764 := var_digits_11651
                    let expr_11728 := _764
                    /// @src 148:12546:12569  "uint256(43).sub(digits)"
                    let _765 := convert_t_uint8_to_t_uint256(expr_11728)
                    let expr_11729 := fun_sub_5837(expr_11727_self, _765)
                    /// @src 148:12546:12573  "uint256(43).sub(digits).add"
                    let expr_11730_self := expr_11729
                    /// @src 148:12574:12575  "1"
                    let expr_11731 := 0x01
                    /// @src 148:12546:12576  "uint256(43).sub(digits).add(1)"
                    let _766 := convert_t_rational_1_by_1_to_t_uint256(expr_11731)
                    let expr_11732 := fun_add_5815(expr_11730_self, _766)
                    /// @src 148:12540:12577  "uint8(uint256(43).sub(digits).add(1))"
                    let expr_11733 := convert_t_uint256_to_t_uint8(expr_11732)
                    /// @src 148:12517:12523  "params"
                    let _767_mpos := var_params_11688_mpos
                    let expr_11718_mpos := _767_mpos
                    /// @src 148:12517:12537  "params.zerosEndIndex"
                    let _768 := add(expr_11718_mpos, 160)
                    /// @src 148:12517:12577  "params.zerosEndIndex = uint8(uint256(43).sub(digits).add(1))"
                    let _769 := expr_11733
                    write_to_memory_t_uint8(_768, _769)
                    let expr_11734 := expr_11733
                    /// @src 148:12618:12624  "params"
                    let _770_mpos := var_params_11688_mpos
                    let expr_11741_mpos := _770_mpos
                    /// @src 148:12618:12637  "params.bufferLength"
                    let _771 := add(expr_11741_mpos, 32)
                    let _772 := read_from_memoryt_uint8(_771)
                    let expr_11742 := _772
                    /// @src 148:12618:12641  "params.bufferLength.sub"
                    let expr_11743_self := convert_t_uint8_to_t_uint256(expr_11742)
                    /// @src 148:12642:12643  "1"
                    let expr_11744 := 0x01
                    /// @src 148:12618:12644  "params.bufferLength.sub(1)"
                    let _773 := convert_t_rational_1_by_1_to_t_uint256(expr_11744)
                    let expr_11745 := fun_sub_5837(expr_11743_self, _773)
                    /// @src 148:12612:12645  "uint8(params.bufferLength.sub(1))"
                    let expr_11746 := convert_t_uint256_to_t_uint8(expr_11745)
                    /// @src 148:12591:12597  "params"
                    let _774_mpos := var_params_11688_mpos
                    let expr_11736_mpos := _774_mpos
                    /// @src 148:12591:12609  "params.sigfigIndex"
                    let _775 := add(expr_11736_mpos, 64)
                    /// @src 148:12591:12645  "params.sigfigIndex = uint8(params.bufferLength.sub(1))"
                    let _776 := expr_11746
                    write_to_memory_t_uint8(_775, _776)
                    let expr_11747 := expr_11746
                    /// @src 148:12303:13129  "if (priceBelow1) {..."
                }
                /// @src 148:13155:13162  "sigfigs"
                let _777 := var_sigfigs_11672
                let expr_11824 := _777
                /// @src 148:13138:13144  "params"
                let _778_mpos := var_params_11688_mpos
                let expr_11821_mpos := _778_mpos
                /// @src 148:13138:13152  "params.sigfigs"
                let _779 := add(expr_11821_mpos, 0)
                /// @src 148:13138:13162  "params.sigfigs = sigfigs"
                let _780 := expr_11824
                write_to_memory_t_uint256(_779, _780)
                let expr_11825 := expr_11824
                /// @src 148:13195:13206  "priceBelow1"
                let _781 := var_priceBelow1_11609
                let expr_11830 := _781
                /// @src 148:13172:13178  "params"
                let _782_mpos := var_params_11688_mpos
                let expr_11827_mpos := _782_mpos
                /// @src 148:13172:13192  "params.isLessThanOne"
                let _783 := add(expr_11827_mpos, 192)
                /// @src 148:13172:13206  "params.isLessThanOne = priceBelow1"
                let _784 := expr_11830
                write_to_memory_t_bool(_783, _784)
                let expr_11831 := expr_11830
                /// @src 148:13235:13240  "false"
                let expr_11836 := 0x00
                /// @src 148:13216:13222  "params"
                let _785_mpos := var_params_11688_mpos
                let expr_11833_mpos := _785_mpos
                /// @src 148:13216:13232  "params.isPercent"
                let _786 := add(expr_11833_mpos, 224)
                /// @src 148:13216:13240  "params.isPercent = false"
                let _787 := expr_11836
                write_to_memory_t_bool(_786, _787)
                let expr_11837 := expr_11836
                /// @src 148:13280:13286  "params"
                let _788_mpos := var_params_11688_mpos
                let expr_11840_mpos := _788_mpos
                /// @src 148:13258:13287  "generateDecimalString(params)"
                let expr_11841_mpos := fun_generateDecimalString_11285(expr_11840_mpos)
                /// @src 148:13251:13287  "return generateDecimalString(params)"
                var__11587_mpos := expr_11841_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            /// @src 146:119:174  "bytes16 internal constant ALPHABET = '0123456789abcdef'"
            function constant_ALPHABET_25462() -> ret {
                /// @src 146:156:174  "'0123456789abcdef'"
                let _795 := convert_t_stringliteral_cb29997ed99ead0db59ce4d12b7d3723198c827273e5796737c926d78019c39f_to_t_bytes16()

                ret := _795
            }

            /// @ast-id 25591
            /// @src 146:917:1246  "function toHexStringNoPrefix(uint256 value, uint256 length) internal pure returns (string memory) {..."
            function fun_toHexStringNoPrefix_25591(var_value_25540, var_length_25542) -> var__25545_mpos {
                /// @src 146:1000:1013  "string memory"
                let zero_t_string_memory_ptr_789_mpos := zero_value_for_split_t_string_memory_ptr()
                var__25545_mpos := zero_t_string_memory_ptr_789_mpos

                /// @src 146:1057:1058  "2"
                let expr_25551 := 0x02
                /// @src 146:1061:1067  "length"
                let _790 := var_length_25542
                let expr_25552 := _790
                /// @src 146:1057:1067  "2 * length"
                let expr_25553 := checked_mul_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_25551), expr_25552)

                /// @src 146:1047:1068  "new bytes(2 * length)"
                let expr_25554_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(expr_25553)
                /// @src 146:1025:1068  "bytes memory buffer = new bytes(2 * length)"
                let var_buffer_25548_mpos := expr_25554_mpos
                /// @src 146:1078:1209  "for (uint256 i = buffer.length; i > 0; i--) {..."
                for {
                    /// @src 146:1095:1101  "buffer"
                    let _791_mpos := var_buffer_25548_mpos
                    let expr_25558_mpos := _791_mpos
                    /// @src 146:1095:1108  "buffer.length"
                    let expr_25559 := array_length_t_bytes_memory_ptr(expr_25558_mpos)
                    /// @src 146:1083:1108  "uint256 i = buffer.length"
                    let var_i_25557 := expr_25559
                    } 1 {
                    /// @src 146:1117:1120  "i--"
                    let _793 := var_i_25557
                    let _792 := decrement_t_uint256(_793)
                    var_i_25557 := _792
                    let expr_25565 := _793
                }
                {
                    /// @src 146:1110:1111  "i"
                    let _794 := var_i_25557
                    let expr_25561 := _794
                    /// @src 146:1114:1115  "0"
                    let expr_25562 := 0x00
                    /// @src 146:1110:1115  "i > 0"
                    let expr_25563 := gt(cleanup_t_uint256(expr_25561), convert_t_rational_0_by_1_to_t_uint256(expr_25562))
                    if iszero(expr_25563) { break }
                    /// @src 146:1152:1160  "ALPHABET"
                    let expr_25572 := constant_ALPHABET_25462()
                    /// @src 146:1161:1166  "value"
                    let _796 := var_value_25540
                    let expr_25573 := _796
                    /// @src 146:1169:1172  "0xf"
                    let expr_25574 := 0x0f
                    /// @src 146:1161:1172  "value & 0xf"
                    let expr_25575 := and(expr_25573, convert_t_rational_15_by_1_to_t_uint256(expr_25574))

                    /// @src 146:1152:1173  "ALPHABET[value & 0xf]"
                    let _797 := expr_25575

                    if iszero(lt(_797, 16)) { panic_error_0x32() }
                    let expr_25576 := shift_left_248(byte(_797, expr_25572))
                    /// @src 146:1136:1142  "buffer"
                    let _798_mpos := var_buffer_25548_mpos
                    let expr_25567_mpos := _798_mpos
                    /// @src 146:1143:1144  "i"
                    let _799 := var_i_25557
                    let expr_25568 := _799
                    /// @src 146:1147:1148  "1"
                    let expr_25569 := 0x01
                    /// @src 146:1143:1148  "i - 1"
                    let expr_25570 := checked_sub_t_uint256(expr_25568, convert_t_rational_1_by_1_to_t_uint256(expr_25569))

                    /// @src 146:1136:1173  "buffer[i - 1] = ALPHABET[value & 0xf]"
                    let _800 := expr_25576
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_25567_mpos, expr_25570), byte(0, _800))
                    let expr_25577 := expr_25576
                    /// @src 146:1197:1198  "4"
                    let expr_25580 := 0x04
                    /// @src 146:1187:1198  "value >>= 4"
                    let _801 := convert_t_rational_4_by_1_to_t_uint8(expr_25580)
                    let _802 := var_value_25540
                    let expr_25581 :=
                    shift_right_t_uint256_t_uint8(_802, _801)

                    var_value_25540 := expr_25581
                }
                /// @src 146:1232:1238  "buffer"
                let _803_mpos := var_buffer_25548_mpos
                let expr_25587_mpos := _803_mpos
                /// @src 146:1225:1239  "string(buffer)"
                let expr_25588_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_25587_mpos)
                /// @src 146:1218:1239  "return string(buffer)"
                var__25545_mpos := expr_25588_mpos
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            /// @ast-id 12484
            /// @src 148:18405:18546  "function sliceTokenHex(uint256 token, uint256 offset) internal pure returns (uint256) {..."
            function fun_sliceTokenHex_12484(var_token_12466, var_offset_12468) -> var__12471 {
                /// @src 148:18482:18489  "uint256"
                let zero_t_uint256_804 := zero_value_for_split_t_uint256()
                var__12471 := zero_t_uint256_804

                /// @src 148:18522:18527  "token"
                let _805 := var_token_12466
                let expr_12477 := _805
                /// @src 148:18531:18537  "offset"
                let _806 := var_offset_12468
                let expr_12478 := _806
                /// @src 148:18522:18537  "token >> offset"
                let expr_12479 :=
                shift_right_t_uint256_t_uint256(expr_12477, expr_12478)

                /// @src 148:18516:18538  "uint8(token >> offset)"
                let expr_12480 := convert_t_uint256_to_t_uint8(expr_12479)
                /// @src 148:18508:18539  "uint256(uint8(token >> offset))"
                let expr_12481 := convert_t_uint8_to_t_uint256(expr_12480)
                /// @src 148:18501:18539  "return uint256(uint8(token >> offset))"
                var__12471 := expr_12481
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function store_literal_in_memory_9113bb53c2876a3805b2c9242029423fc540a728243ce887ab24c82cf119fba3(memPtr) {

                mstore(add(memPtr, 0), "SafeMath: multiplication overflo")

                mstore(add(memPtr, 32), "w")

            }

            function abi_encode_t_stringliteral_9113bb53c2876a3805b2c9242029423fc540a728243ce887ab24c82cf119fba3_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 33)
                store_literal_in_memory_9113bb53c2876a3805b2c9242029423fc540a728243ce887ab24c82cf119fba3(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_9113bb53c2876a3805b2c9242029423fc540a728243ce887ab24c82cf119fba3__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_9113bb53c2876a3805b2c9242029423fc540a728243ce887ab24c82cf119fba3_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_9113bb53c2876a3805b2c9242029423fc540a728243ce887ab24c82cf119fba3(condition ) {
                if iszero(condition)
                {

                    let memPtr := allocate_unbounded()

                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_9113bb53c2876a3805b2c9242029423fc540a728243ce887ab24c82cf119fba3__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 5871
            /// @src 32:3567:3782  "function mul(uint256 a, uint256 b) internal pure returns (uint256) {..."
            function fun_mul_5871(var_a_5840, var_b_5842) -> var__5845 {
                /// @src 32:3625:3632  "uint256"
                let zero_t_uint256_807 := zero_value_for_split_t_uint256()
                var__5845 := zero_t_uint256_807

                /// @src 32:3648:3649  "a"
                let _808 := var_a_5840
                let expr_5847 := _808
                /// @src 32:3653:3654  "0"
                let expr_5848 := 0x00
                /// @src 32:3648:3654  "a == 0"
                let expr_5849 := eq(cleanup_t_uint256(expr_5847), convert_t_rational_0_by_1_to_t_uint256(expr_5848))
                /// @src 32:3644:3664  "if (a == 0) return 0"
                if expr_5849 {
                    /// @src 32:3663:3664  "0"
                    let expr_5850 := 0x00
                    /// @src 32:3656:3664  "return 0"
                    var__5845 := convert_t_rational_0_by_1_to_t_uint256(expr_5850)
                    leave
                    /// @src 32:3644:3664  "if (a == 0) return 0"
                }
                /// @src 32:3686:3687  "a"
                let _809 := var_a_5840
                let expr_5855 := _809
                /// @src 32:3690:3691  "b"
                let _810 := var_b_5842
                let expr_5856 := _810
                /// @src 32:3686:3691  "a * b"
                let expr_5857 := checked_mul_t_uint256(expr_5855, expr_5856)

                /// @src 32:3674:3691  "uint256 c = a * b"
                let var_c_5854 := expr_5857
                /// @src 32:3709:3710  "c"
                let _811 := var_c_5854
                let expr_5860 := _811
                /// @src 32:3713:3714  "a"
                let _812 := var_a_5840
                let expr_5861 := _812
                /// @src 32:3709:3714  "c / a"
                let expr_5862 := checked_div_t_uint256(expr_5860, expr_5861)

                /// @src 32:3718:3719  "b"
                let _813 := var_b_5842
                let expr_5863 := _813
                /// @src 32:3709:3719  "c / a == b"
                let expr_5864 := eq(cleanup_t_uint256(expr_5862), cleanup_t_uint256(expr_5863))
                /// @src 32:3701:3757  "require(c / a == b, \"SafeMath: multiplication overflow\")"
                require_helper_t_stringliteral_9113bb53c2876a3805b2c9242029423fc540a728243ce887ab24c82cf119fba3(expr_5864)
                /// @src 32:3774:3775  "c"
                let _814 := var_c_5854
                let expr_5868 := _814
                /// @src 32:3767:3775  "return c"
                var__5845 := expr_5868
                leave

            }
            /// @src 148:613:18548  "library NFTDescriptor {..."

            function store_literal_in_memory_6d360492c387efc9efda370d7689d5bdc8d71342f56e5194b111ebf036750734(memPtr) {

                mstore(add(memPtr, 0), "<svg width='290' height='500' vi")

                mstore(add(memPtr, 32), "ewBox='0 0 290 500' xmlns='http:")

                mstore(add(memPtr, 64), "//www.w3.org/2000/svg'><rect wid")

                    mstore(add(memPtr, 96), "th='290px' height='500px' fill='")

                    mstore(add(memPtr, 128), "#")

                }

                function abi_encode_t_stringliteral_6d360492c387efc9efda370d7689d5bdc8d71342f56e5194b111ebf036750734_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                    pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 129)
                    store_literal_in_memory_6d360492c387efc9efda370d7689d5bdc8d71342f56e5194b111ebf036750734(pos)
                    end := add(pos, 129)
                }

                function store_literal_in_memory_6257da6d84399769a55eb558312555cad32511f19c4548b9e85f811c5fc99e3b(memPtr) {

                    mstore(add(memPtr, 0), "'/></svg>")

                }

                function abi_encode_t_stringliteral_6257da6d84399769a55eb558312555cad32511f19c4548b9e85f811c5fc99e3b_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                    pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 9)
                    store_literal_in_memory_6257da6d84399769a55eb558312555cad32511f19c4548b9e85f811c5fc99e3b(pos)
                    end := add(pos, 9)
                }

                function abi_encode_tuple_packed_t_stringliteral_6d360492c387efc9efda370d7689d5bdc8d71342f56e5194b111ebf036750734_t_string_memory_ptr_t_stringliteral_6257da6d84399769a55eb558312555cad32511f19c4548b9e85f811c5fc99e3b__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0) -> end {

                    pos := abi_encode_t_stringliteral_6d360492c387efc9efda370d7689d5bdc8d71342f56e5194b111ebf036750734_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                    pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                    pos := abi_encode_t_stringliteral_6257da6d84399769a55eb558312555cad32511f19c4548b9e85f811c5fc99e3b_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                    end := pos
                }

                function store_literal_in_memory_3c48d7b755ef30478f9fcb7df9667e587d5469eaab81f8e56e6c358f2f43959f(memPtr) {

                    mstore(add(memPtr, 0), "<svg width='290' height='500' vi")

                    mstore(add(memPtr, 32), "ewBox='0 0 290 500' xmlns='http:")

                    mstore(add(memPtr, 64), "//www.w3.org/2000/svg'><circle c")

                        mstore(add(memPtr, 96), "x='")

                    }

                    function abi_encode_t_stringliteral_3c48d7b755ef30478f9fcb7df9667e587d5469eaab81f8e56e6c358f2f43959f_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 99)
                        store_literal_in_memory_3c48d7b755ef30478f9fcb7df9667e587d5469eaab81f8e56e6c358f2f43959f(pos)
                        end := add(pos, 99)
                    }

                    function store_literal_in_memory_c122f56fb29fd1b2692bf38cf7def21d4f86567365fb92790a69e1dc6942704f(memPtr) {

                        mstore(add(memPtr, 0), "' cy='")

                    }

                    function abi_encode_t_stringliteral_c122f56fb29fd1b2692bf38cf7def21d4f86567365fb92790a69e1dc6942704f_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 6)
                        store_literal_in_memory_c122f56fb29fd1b2692bf38cf7def21d4f86567365fb92790a69e1dc6942704f(pos)
                        end := add(pos, 6)
                    }

                    function store_literal_in_memory_ee35ad264095963cb3d9258d9ab9354d54cabfc55aaceacbd7ebd9fec3d8f96a(memPtr) {

                        mstore(add(memPtr, 0), "' r='120px' fill='#")

                    }

                    function abi_encode_t_stringliteral_ee35ad264095963cb3d9258d9ab9354d54cabfc55aaceacbd7ebd9fec3d8f96a_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 19)
                        store_literal_in_memory_ee35ad264095963cb3d9258d9ab9354d54cabfc55aaceacbd7ebd9fec3d8f96a(pos)
                        end := add(pos, 19)
                    }

                    function abi_encode_tuple_packed_t_stringliteral_3c48d7b755ef30478f9fcb7df9667e587d5469eaab81f8e56e6c358f2f43959f_t_string_memory_ptr_t_stringliteral_c122f56fb29fd1b2692bf38cf7def21d4f86567365fb92790a69e1dc6942704f_t_string_memory_ptr_t_stringliteral_ee35ad264095963cb3d9258d9ab9354d54cabfc55aaceacbd7ebd9fec3d8f96a_t_string_memory_ptr_t_stringliteral_6257da6d84399769a55eb558312555cad32511f19c4548b9e85f811c5fc99e3b__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                        pos := abi_encode_t_stringliteral_3c48d7b755ef30478f9fcb7df9667e587d5469eaab81f8e56e6c358f2f43959f_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                        pos := abi_encode_t_stringliteral_c122f56fb29fd1b2692bf38cf7def21d4f86567365fb92790a69e1dc6942704f_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                        pos := abi_encode_t_stringliteral_ee35ad264095963cb3d9258d9ab9354d54cabfc55aaceacbd7ebd9fec3d8f96a_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                        pos := abi_encode_t_stringliteral_6257da6d84399769a55eb558312555cad32511f19c4548b9e85f811c5fc99e3b_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        end := pos
                    }

                    function store_literal_in_memory_fa7e81ce29c44abe3185d042987960e602335452077f02be3f9233e7ae91d760(memPtr) {

                        mstore(add(memPtr, 0), "' r='100px' fill='#")

                    }

                    function abi_encode_t_stringliteral_fa7e81ce29c44abe3185d042987960e602335452077f02be3f9233e7ae91d760_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 19)
                        store_literal_in_memory_fa7e81ce29c44abe3185d042987960e602335452077f02be3f9233e7ae91d760(pos)
                        end := add(pos, 19)
                    }

                    function abi_encode_tuple_packed_t_stringliteral_3c48d7b755ef30478f9fcb7df9667e587d5469eaab81f8e56e6c358f2f43959f_t_string_memory_ptr_t_stringliteral_c122f56fb29fd1b2692bf38cf7def21d4f86567365fb92790a69e1dc6942704f_t_string_memory_ptr_t_stringliteral_fa7e81ce29c44abe3185d042987960e602335452077f02be3f9233e7ae91d760_t_string_memory_ptr_t_stringliteral_6257da6d84399769a55eb558312555cad32511f19c4548b9e85f811c5fc99e3b__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                        pos := abi_encode_t_stringliteral_3c48d7b755ef30478f9fcb7df9667e587d5469eaab81f8e56e6c358f2f43959f_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                        pos := abi_encode_t_stringliteral_c122f56fb29fd1b2692bf38cf7def21d4f86567365fb92790a69e1dc6942704f_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                        pos := abi_encode_t_stringliteral_fa7e81ce29c44abe3185d042987960e602335452077f02be3f9233e7ae91d760_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                        pos := abi_encode_t_stringliteral_6257da6d84399769a55eb558312555cad32511f19c4548b9e85f811c5fc99e3b_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        end := pos
                    }

                    function store_literal_in_memory_12907fa788c43c090d50faf378fd6f9ac466c604e59cc51ff30ae1bbbc38c8bd(memPtr) {

                        mstore(add(memPtr, 0), 0x3c7376672077696474683d2232393022206865696768743d2235303022207669)

                        mstore(add(memPtr, 32), 0x6577426f783d2230203020323930203530302220786d6c6e733d22687474703a)

                        mstore(add(memPtr, 64), 0x2f2f7777772e77332e6f72672f323030302f7376672200000000000000000000)

                    }

                    function abi_encode_t_stringliteral_12907fa788c43c090d50faf378fd6f9ac466c604e59cc51ff30ae1bbbc38c8bd_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 86)
                        store_literal_in_memory_12907fa788c43c090d50faf378fd6f9ac466c604e59cc51ff30ae1bbbc38c8bd(pos)
                        end := add(pos, 86)
                    }

                    function store_literal_in_memory_84f36e7e631ec50512631a7d2b642e3c86e37c99d02e185264181ea0fe53feba(memPtr) {

                        mstore(add(memPtr, 0), " xmlns:xlink='http://www.w3.org/")

                            mstore(add(memPtr, 32), "1999/xlink'>")

                        }

                        function abi_encode_t_stringliteral_84f36e7e631ec50512631a7d2b642e3c86e37c99d02e185264181ea0fe53feba_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 44)
                            store_literal_in_memory_84f36e7e631ec50512631a7d2b642e3c86e37c99d02e185264181ea0fe53feba(pos)
                            end := add(pos, 44)
                        }

                        function store_literal_in_memory_c9d6f35adafbd6db05cf66701a579ef4e1499ac0364b80726ad93d0f9855ba3a(memPtr) {

                            mstore(add(memPtr, 0), "<defs>")

                        }

                        function abi_encode_t_stringliteral_c9d6f35adafbd6db05cf66701a579ef4e1499ac0364b80726ad93d0f9855ba3a_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 6)
                            store_literal_in_memory_c9d6f35adafbd6db05cf66701a579ef4e1499ac0364b80726ad93d0f9855ba3a(pos)
                            end := add(pos, 6)
                        }

                        function store_literal_in_memory_5f5eeeecaa6e9906b36c9738130fb3306daeecaf7d327c054480dbfce019ef56(memPtr) {

                            mstore(add(memPtr, 0), 0x3c66696c7465722069643d226631223e3c6665496d61676520726573756c743d)

                            mstore(add(memPtr, 32), 0x2270302220786c696e6b3a687265663d22646174613a696d6167652f7376672b)

                            mstore(add(memPtr, 64), "xml;base64,")

                        }

                        function abi_encode_t_stringliteral_5f5eeeecaa6e9906b36c9738130fb3306daeecaf7d327c054480dbfce019ef56_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 75)
                            store_literal_in_memory_5f5eeeecaa6e9906b36c9738130fb3306daeecaf7d327c054480dbfce019ef56(pos)
                            end := add(pos, 75)
                        }

                        function store_literal_in_memory_c8625c4ff6c954b2db14bd1706ddcdc7c7bbd2e8489b900eeea309e5e9154d1f(memPtr) {

                            mstore(add(memPtr, 0), 0x222f3e3c6665496d61676520726573756c743d2270312220786c696e6b3a6872)

                            mstore(add(memPtr, 32), 0x65663d22646174613a696d6167652f7376672b786d6c3b6261736536342c0000)

                        }

                        function abi_encode_t_stringliteral_c8625c4ff6c954b2db14bd1706ddcdc7c7bbd2e8489b900eeea309e5e9154d1f_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 62)
                            store_literal_in_memory_c8625c4ff6c954b2db14bd1706ddcdc7c7bbd2e8489b900eeea309e5e9154d1f(pos)
                            end := add(pos, 62)
                        }

                        function store_literal_in_memory_735ef1ca53a2b4f5317a913b38868565c310f491134932b2790ac296eda48267(memPtr) {

                            mstore(add(memPtr, 0), 0x222f3e3c6665496d61676520726573756c743d2270322220786c696e6b3a6872)

                            mstore(add(memPtr, 32), 0x65663d22646174613a696d6167652f7376672b786d6c3b6261736536342c0000)

                        }

                        function abi_encode_t_stringliteral_735ef1ca53a2b4f5317a913b38868565c310f491134932b2790ac296eda48267_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 62)
                            store_literal_in_memory_735ef1ca53a2b4f5317a913b38868565c310f491134932b2790ac296eda48267(pos)
                            end := add(pos, 62)
                        }

                        function store_literal_in_memory_72725e47f491f4a2a7cef9977dd6b3ea1a81d838d9448981484a063dc011d6ba(memPtr) {

                            mstore(add(memPtr, 0), 0x22202f3e00000000000000000000000000000000000000000000000000000000)

                        }

                        function abi_encode_t_stringliteral_72725e47f491f4a2a7cef9977dd6b3ea1a81d838d9448981484a063dc011d6ba_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 4)
                            store_literal_in_memory_72725e47f491f4a2a7cef9977dd6b3ea1a81d838d9448981484a063dc011d6ba(pos)
                            end := add(pos, 4)
                        }

                        function store_literal_in_memory_0b30bb9ee6214545b9ea9097efb5de130600391f40197f097cab945da2430220(memPtr) {

                            mstore(add(memPtr, 0), 0x3c6665496d61676520726573756c743d2270332220786c696e6b3a687265663d)

                            mstore(add(memPtr, 32), 0x22646174613a696d6167652f7376672b786d6c3b6261736536342c0000000000)

                        }

                        function abi_encode_t_stringliteral_0b30bb9ee6214545b9ea9097efb5de130600391f40197f097cab945da2430220_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 59)
                            store_literal_in_memory_0b30bb9ee6214545b9ea9097efb5de130600391f40197f097cab945da2430220(pos)
                            end := add(pos, 59)
                        }

                        function store_literal_in_memory_483cd74bda08c7fcbdbb6c7b6985427b6812d47c5633f98b9e7615f669d7fafd(memPtr) {

                            mstore(add(memPtr, 0), 0x22202f3e3c6665426c656e64206d6f64653d226f7665726c61792220696e3d22)

                            mstore(add(memPtr, 32), 0x70302220696e323d22703122202f3e3c6665426c656e64206d6f64653d226578)

                            mstore(add(memPtr, 64), 0x636c7573696f6e2220696e323d22703222202f3e3c6665426c656e64206d6f64)

                            mstore(add(memPtr, 96), 0x653d226f7665726c61792220696e323d2270332220726573756c743d22626c65)

                            mstore(add(memPtr, 128), 0x6e644f757422202f3e3c6665476175737369616e426c75722000000000000000)

                        }

                        function abi_encode_t_stringliteral_483cd74bda08c7fcbdbb6c7b6985427b6812d47c5633f98b9e7615f669d7fafd_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 153)
                            store_literal_in_memory_483cd74bda08c7fcbdbb6c7b6985427b6812d47c5633f98b9e7615f669d7fafd(pos)
                            end := add(pos, 153)
                        }

                        function store_literal_in_memory_9f99c7530ff67b359dedbad02f868664b6089e4d686e89626dd44608ff6aab0f(memPtr) {

                            mstore(add(memPtr, 0), 0x696e3d22626c656e644f75742220737464446576696174696f6e3d2234322220)

                            mstore(add(memPtr, 32), 0x2f3e3c2f66696c7465723e203c636c6970506174682069643d22636f726e6572)

                            mstore(add(memPtr, 64), 0x73223e3c726563742077696474683d2232393022206865696768743d22353030)

                            mstore(add(memPtr, 96), 0x222072783d223432222072793d22343222202f3e3c2f636c6970506174683e00)

                        }

                        function abi_encode_t_stringliteral_9f99c7530ff67b359dedbad02f868664b6089e4d686e89626dd44608ff6aab0f_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 127)
                            store_literal_in_memory_9f99c7530ff67b359dedbad02f868664b6089e4d686e89626dd44608ff6aab0f(pos)
                            end := add(pos, 127)
                        }

                        function store_literal_in_memory_c5b5eb1e85523a3353e56e3248818f208aaa79b1a09fe2e08149ce0068d90fe9(memPtr) {

                            mstore(add(memPtr, 0), 0x3c706174682069643d22746578742d706174682d612220643d224d3430203132)

                            mstore(add(memPtr, 32), " H250 A28 28 0 0 1 278 40 V460 A")

                            mstore(add(memPtr, 64), "28 28 0 0 1 250 488 H40 A28 28 0")

                            mstore(add(memPtr, 96), " 0 1 12 460 V40 A28 28 0 0 1 40 ")

                            mstore(add(memPtr, 128), 0x3132207a22202f3e000000000000000000000000000000000000000000000000)

                        }

                        function abi_encode_t_stringliteral_c5b5eb1e85523a3353e56e3248818f208aaa79b1a09fe2e08149ce0068d90fe9_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 136)
                            store_literal_in_memory_c5b5eb1e85523a3353e56e3248818f208aaa79b1a09fe2e08149ce0068d90fe9(pos)
                            end := add(pos, 136)
                        }

                        function store_literal_in_memory_4b758653276e34b83f020b245d8a586eaf9cd26fbd97d7d3714c690e304e5721(memPtr) {

                            mstore(add(memPtr, 0), 0x3c706174682069643d226d696e696d61702220643d224d323334203434344332)

                            mstore(add(memPtr, 32), 0x3334203435372e393439203234322e323120343633203235332034363322202f)

                            mstore(add(memPtr, 64), ">")

                        }

                        function abi_encode_t_stringliteral_4b758653276e34b83f020b245d8a586eaf9cd26fbd97d7d3714c690e304e5721_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 65)
                            store_literal_in_memory_4b758653276e34b83f020b245d8a586eaf9cd26fbd97d7d3714c690e304e5721(pos)
                            end := add(pos, 65)
                        }

                        function store_literal_in_memory_cce19a9de29f73714bae13db1d73ac08b59c78313444c83363cfef09d838c0c4(memPtr) {

                            mstore(add(memPtr, 0), 0x3c66696c7465722069643d22746f702d726567696f6e2d626c7572223e3c6665)

                            mstore(add(memPtr, 32), 0x476175737369616e426c757220696e3d22536f75726365477261706869632220)

                            mstore(add(memPtr, 64), 0x737464446576696174696f6e3d22323422202f3e3c2f66696c7465723e000000)

                        }

                        function abi_encode_t_stringliteral_cce19a9de29f73714bae13db1d73ac08b59c78313444c83363cfef09d838c0c4_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 93)
                            store_literal_in_memory_cce19a9de29f73714bae13db1d73ac08b59c78313444c83363cfef09d838c0c4(pos)
                            end := add(pos, 93)
                        }

                        function store_literal_in_memory_a48f5f7836be870d77eac2feb87ec3732b4080b65a510a3f3cf11dab86d57166(memPtr) {

                            mstore(add(memPtr, 0), 0x3c6c696e6561724772616469656e742069643d22677261642d7570222078313d)

                            mstore(add(memPtr, 32), 0x2231222078323d2230222079313d2231222079323d2230223e3c73746f70206f)

                            mstore(add(memPtr, 64), 0x66667365743d22302e30222073746f702d636f6c6f723d227768697465222073)

                            mstore(add(memPtr, 96), 0x746f702d6f7061636974793d223122202f3e0000000000000000000000000000)

                        }

                        function abi_encode_t_stringliteral_a48f5f7836be870d77eac2feb87ec3732b4080b65a510a3f3cf11dab86d57166_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 114)
                            store_literal_in_memory_a48f5f7836be870d77eac2feb87ec3732b4080b65a510a3f3cf11dab86d57166(pos)
                            end := add(pos, 114)
                        }

                        function store_literal_in_memory_07d6b453733dfcd6acccdef8bdba430d27327460b66a4169d73ced361868fbe9(memPtr) {

                            mstore(add(memPtr, 0), 0x3c73746f70206f66667365743d222e39222073746f702d636f6c6f723d227768)

                            mstore(add(memPtr, 32), 0x697465222073746f702d6f7061636974793d223022202f3e3c2f6c696e656172)

                            mstore(add(memPtr, 64), "Gradient>")

                        }

                        function abi_encode_t_stringliteral_07d6b453733dfcd6acccdef8bdba430d27327460b66a4169d73ced361868fbe9_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 73)
                            store_literal_in_memory_07d6b453733dfcd6acccdef8bdba430d27327460b66a4169d73ced361868fbe9(pos)
                            end := add(pos, 73)
                        }

                        function store_literal_in_memory_5d5eff5a3ee8c17e11f3f4661e6d1155f39e626dc52ccd2ee80907a3b00329d4(memPtr) {

                            mstore(add(memPtr, 0), 0x3c6c696e6561724772616469656e742069643d22677261642d646f776e222078)

                            mstore(add(memPtr, 32), 0x313d2230222078323d2231222079313d2230222079323d2231223e3c73746f70)

                            mstore(add(memPtr, 64), 0x206f66667365743d22302e30222073746f702d636f6c6f723d22776869746522)

                            mstore(add(memPtr, 96), 0x2073746f702d6f7061636974793d223122202f3e3c73746f70206f6666736574)

                            mstore(add(memPtr, 128), 0x3d22302e39222073746f702d636f6c6f723d227768697465222073746f702d6f)

                            mstore(add(memPtr, 160), 0x7061636974793d223022202f3e3c2f6c696e6561724772616469656e743e0000)

                        }

                        function abi_encode_t_stringliteral_5d5eff5a3ee8c17e11f3f4661e6d1155f39e626dc52ccd2ee80907a3b00329d4_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 190)
                            store_literal_in_memory_5d5eff5a3ee8c17e11f3f4661e6d1155f39e626dc52ccd2ee80907a3b00329d4(pos)
                            end := add(pos, 190)
                        }

                        function store_literal_in_memory_1bdc0da2fd5d7002fb2e67d70b3a4672d03997001c86f1c58ba784d0bc3656db(memPtr) {

                            mstore(add(memPtr, 0), 0x3c6d61736b2069643d22666164652d757022206d61736b436f6e74656e74556e)

                            mstore(add(memPtr, 32), 0x6974733d226f626a656374426f756e64696e67426f78223e3c72656374207769)

                            mstore(add(memPtr, 64), 0x6474683d223122206865696768743d2231222066696c6c3d2275726c28236772)

                            mstore(add(memPtr, 96), 0x61642d75702922202f3e3c2f6d61736b3e000000000000000000000000000000)

                        }

                        function abi_encode_t_stringliteral_1bdc0da2fd5d7002fb2e67d70b3a4672d03997001c86f1c58ba784d0bc3656db_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 113)
                            store_literal_in_memory_1bdc0da2fd5d7002fb2e67d70b3a4672d03997001c86f1c58ba784d0bc3656db(pos)
                            end := add(pos, 113)
                        }

                        function store_literal_in_memory_9981a2a43c36ee7e45e960c26200a8b379d01168693d5029bb6fd776ef3ff2b1(memPtr) {

                            mstore(add(memPtr, 0), 0x3c6d61736b2069643d22666164652d646f776e22206d61736b436f6e74656e74)

                            mstore(add(memPtr, 32), 0x556e6974733d226f626a656374426f756e64696e67426f78223e3c7265637420)

                            mstore(add(memPtr, 64), 0x77696474683d223122206865696768743d2231222066696c6c3d2275726c2823)

                            mstore(add(memPtr, 96), 0x677261642d646f776e2922202f3e3c2f6d61736b3e0000000000000000000000)

                        }

                        function abi_encode_t_stringliteral_9981a2a43c36ee7e45e960c26200a8b379d01168693d5029bb6fd776ef3ff2b1_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 117)
                            store_literal_in_memory_9981a2a43c36ee7e45e960c26200a8b379d01168693d5029bb6fd776ef3ff2b1(pos)
                            end := add(pos, 117)
                        }

                        function store_literal_in_memory_4e169cb09c58f4c64bb0df0614abdbc124a0076dcd8783c87e43cbd0d73facd1(memPtr) {

                            mstore(add(memPtr, 0), 0x3c6d61736b2069643d226e6f6e6522206d61736b436f6e74656e74556e697473)

                            mstore(add(memPtr, 32), 0x3d226f626a656374426f756e64696e67426f78223e3c72656374207769647468)

                            mstore(add(memPtr, 64), 0x3d223122206865696768743d2231222066696c6c3d22776869746522202f3e3c)

                            mstore(add(memPtr, 96), "/mask>")

                        }

                        function abi_encode_t_stringliteral_4e169cb09c58f4c64bb0df0614abdbc124a0076dcd8783c87e43cbd0d73facd1_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 102)
                            store_literal_in_memory_4e169cb09c58f4c64bb0df0614abdbc124a0076dcd8783c87e43cbd0d73facd1(pos)
                            end := add(pos, 102)
                        }

                        function store_literal_in_memory_870e80063d91f6eff2750dd8a16316f934ba72da9e645a88b6f89454be1f4aef(memPtr) {

                            mstore(add(memPtr, 0), 0x3c6c696e6561724772616469656e742069643d22677261642d73796d626f6c22)

                            mstore(add(memPtr, 32), 0x3e3c73746f70206f66667365743d22302e37222073746f702d636f6c6f723d22)

                            mstore(add(memPtr, 64), 0x7768697465222073746f702d6f7061636974793d223122202f3e3c73746f7020)

                            mstore(add(memPtr, 96), 0x6f66667365743d222e3935222073746f702d636f6c6f723d2277686974652220)

                            mstore(add(memPtr, 128), 0x73746f702d6f7061636974793d223022202f3e3c2f6c696e6561724772616469)

                            mstore(add(memPtr, 160), "ent>")

                        }

                        function abi_encode_t_stringliteral_870e80063d91f6eff2750dd8a16316f934ba72da9e645a88b6f89454be1f4aef_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 164)
                            store_literal_in_memory_870e80063d91f6eff2750dd8a16316f934ba72da9e645a88b6f89454be1f4aef(pos)
                            end := add(pos, 164)
                        }

                        function store_literal_in_memory_ca0f24c57a59db85f494ba6c0b8c49c5859b9cc88ba864c52bba19e858e653dd(memPtr) {

                            mstore(add(memPtr, 0), 0x3c6d61736b2069643d22666164652d73796d626f6c22206d61736b436f6e7465)

                            mstore(add(memPtr, 32), 0x6e74556e6974733d227573657253706163654f6e557365223e3c726563742077)

                            mstore(add(memPtr, 64), 0x696474683d22323930707822206865696768743d223230307078222066696c6c)

                            mstore(add(memPtr, 96), 0x3d2275726c2823677261642d73796d626f6c2922202f3e3c2f6d61736b3e3c2f)

                            mstore(add(memPtr, 128), "defs>")

                        }

                        function abi_encode_t_stringliteral_ca0f24c57a59db85f494ba6c0b8c49c5859b9cc88ba864c52bba19e858e653dd_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 133)
                            store_literal_in_memory_ca0f24c57a59db85f494ba6c0b8c49c5859b9cc88ba864c52bba19e858e653dd(pos)
                            end := add(pos, 133)
                        }

                        function store_literal_in_memory_f091cfa977578cc3d31efb8591842fc4f1d1db02114f63fef964dafa0922c62d(memPtr) {

                            mstore(add(memPtr, 0), 0x3c6720636c69702d706174683d2275726c2823636f726e65727329223e000000)

                        }

                        function abi_encode_t_stringliteral_f091cfa977578cc3d31efb8591842fc4f1d1db02114f63fef964dafa0922c62d_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 29)
                            store_literal_in_memory_f091cfa977578cc3d31efb8591842fc4f1d1db02114f63fef964dafa0922c62d(pos)
                            end := add(pos, 29)
                        }

                        function store_literal_in_memory_84a823de185a2fe7015241c324f6c784eee47f2e7607badbd7abefa617433556(memPtr) {

                            mstore(add(memPtr, 0), 0x3c726563742066696c6c3d220000000000000000000000000000000000000000)

                        }

                        function abi_encode_t_stringliteral_84a823de185a2fe7015241c324f6c784eee47f2e7607badbd7abefa617433556_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 12)
                            store_literal_in_memory_84a823de185a2fe7015241c324f6c784eee47f2e7607badbd7abefa617433556(pos)
                            end := add(pos, 12)
                        }

                        function store_literal_in_memory_53fd26dadfe66b5102855d57af8e557a2267beae8def1e64f35bbd9a2d281ff9(memPtr) {

                            mstore(add(memPtr, 0), 0x2220783d223070782220793d22307078222077696474683d2232393070782220)

                            mstore(add(memPtr, 32), 0x6865696768743d22353030707822202f3e000000000000000000000000000000)

                        }

                        function abi_encode_t_stringliteral_53fd26dadfe66b5102855d57af8e557a2267beae8def1e64f35bbd9a2d281ff9_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 49)
                            store_literal_in_memory_53fd26dadfe66b5102855d57af8e557a2267beae8def1e64f35bbd9a2d281ff9(pos)
                            end := add(pos, 49)
                        }

                        function store_literal_in_memory_09b07dfc70a17fef45f6fe3d38c10da942afae7501f50d1fe821bf1419a6c973(memPtr) {

                            mstore(add(memPtr, 0), 0x3c72656374207374796c653d2266696c7465723a2075726c2823663129222078)

                            mstore(add(memPtr, 32), 0x3d223070782220793d22307078222077696474683d2232393070782220686569)

                            mstore(add(memPtr, 64), 0x6768743d22353030707822202f3e000000000000000000000000000000000000)

                        }

                        function abi_encode_t_stringliteral_09b07dfc70a17fef45f6fe3d38c10da942afae7501f50d1fe821bf1419a6c973_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 78)
                            store_literal_in_memory_09b07dfc70a17fef45f6fe3d38c10da942afae7501f50d1fe821bf1419a6c973(pos)
                            end := add(pos, 78)
                        }

                        function store_literal_in_memory_4639f96f89d1ef49f25e5140ee8e04694d126a00020aebcb2df7e75b5d9e8ff8(memPtr) {

                            mstore(add(memPtr, 0), 0x203c67207374796c653d2266696c7465723a75726c2823746f702d726567696f)

                        mstore(add(memPtr, 32), "n-blur); transform:scale(1.5); t")

                        mstore(add(memPtr, 64), 0x72616e73666f726d2d6f726967696e3a63656e74657220746f703b223e000000)

                    }

                    function abi_encode_t_stringliteral_4639f96f89d1ef49f25e5140ee8e04694d126a00020aebcb2df7e75b5d9e8ff8_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 93)
                        store_literal_in_memory_4639f96f89d1ef49f25e5140ee8e04694d126a00020aebcb2df7e75b5d9e8ff8(pos)
                        end := add(pos, 93)
                    }

                    function store_literal_in_memory_8341c95578aab9bb12f989782d4cab355e9933e289241d0b82aafe9fda945df1(memPtr) {

                        mstore(add(memPtr, 0), 0x3c726563742066696c6c3d226e6f6e652220783d223070782220793d22307078)

                        mstore(add(memPtr, 32), 0x222077696474683d22323930707822206865696768743d22353030707822202f)

                        mstore(add(memPtr, 64), ">")

                    }

                    function abi_encode_t_stringliteral_8341c95578aab9bb12f989782d4cab355e9933e289241d0b82aafe9fda945df1_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 65)
                        store_literal_in_memory_8341c95578aab9bb12f989782d4cab355e9933e289241d0b82aafe9fda945df1(pos)
                        end := add(pos, 65)
                    }

                    function store_literal_in_memory_79d1157f01e06698bf30fbcaee454ea514c61e81bedfc1aec9b48b048d03b463(memPtr) {

                        mstore(add(memPtr, 0), 0x3c656c6c697073652063783d22353025222063793d22307078222072783d2231)

                        mstore(add(memPtr, 32), 0x38307078222072793d223132307078222066696c6c3d222330303022206f7061)

                        mstore(add(memPtr, 64), 0x636974793d22302e383522202f3e3c2f673e0000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_79d1157f01e06698bf30fbcaee454ea514c61e81bedfc1aec9b48b048d03b463_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 82)
                        store_literal_in_memory_79d1157f01e06698bf30fbcaee454ea514c61e81bedfc1aec9b48b048d03b463(pos)
                        end := add(pos, 82)
                    }

                    function store_literal_in_memory_ca91dbc17e7b32a20d9c61bf3a31fc39e1843cdda3f9b6d132c3190c832ad888(memPtr) {

                        mstore(add(memPtr, 0), 0x3c7265637420783d22302220793d2230222077696474683d2232393022206865)

                        mstore(add(memPtr, 32), 0x696768743d22353030222072783d223432222072793d223432222066696c6c3d)

                        mstore(add(memPtr, 64), 0x227267626128302c302c302c302922207374726f6b653d227267626128323535)

                        mstore(add(memPtr, 96), 0x2c3235352c3235352c302e322922202f3e3c2f673e0000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_ca91dbc17e7b32a20d9c61bf3a31fc39e1843cdda3f9b6d132c3190c832ad888_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 117)
                        store_literal_in_memory_ca91dbc17e7b32a20d9c61bf3a31fc39e1843cdda3f9b6d132c3190c832ad888(pos)
                        end := add(pos, 117)
                    }

                    function abi_encode_tuple_packed_t_stringliteral_12907fa788c43c090d50faf378fd6f9ac466c604e59cc51ff30ae1bbbc38c8bd_t_stringliteral_84f36e7e631ec50512631a7d2b642e3c86e37c99d02e185264181ea0fe53feba_t_stringliteral_c9d6f35adafbd6db05cf66701a579ef4e1499ac0364b80726ad93d0f9855ba3a_t_stringliteral_5f5eeeecaa6e9906b36c9738130fb3306daeecaf7d327c054480dbfce019ef56_t_string_memory_ptr_t_stringliteral_c8625c4ff6c954b2db14bd1706ddcdc7c7bbd2e8489b900eeea309e5e9154d1f_t_string_memory_ptr_t_stringliteral_735ef1ca53a2b4f5317a913b38868565c310f491134932b2790ac296eda48267_t_string_memory_ptr_t_stringliteral_72725e47f491f4a2a7cef9977dd6b3ea1a81d838d9448981484a063dc011d6ba_t_stringliteral_0b30bb9ee6214545b9ea9097efb5de130600391f40197f097cab945da2430220_t_string_memory_ptr_t_stringliteral_483cd74bda08c7fcbdbb6c7b6985427b6812d47c5633f98b9e7615f669d7fafd_t_stringliteral_9f99c7530ff67b359dedbad02f868664b6089e4d686e89626dd44608ff6aab0f_t_stringliteral_c5b5eb1e85523a3353e56e3248818f208aaa79b1a09fe2e08149ce0068d90fe9_t_stringliteral_4b758653276e34b83f020b245d8a586eaf9cd26fbd97d7d3714c690e304e5721_t_stringliteral_cce19a9de29f73714bae13db1d73ac08b59c78313444c83363cfef09d838c0c4_t_stringliteral_a48f5f7836be870d77eac2feb87ec3732b4080b65a510a3f3cf11dab86d57166_t_stringliteral_07d6b453733dfcd6acccdef8bdba430d27327460b66a4169d73ced361868fbe9_t_stringliteral_5d5eff5a3ee8c17e11f3f4661e6d1155f39e626dc52ccd2ee80907a3b00329d4_t_stringliteral_1bdc0da2fd5d7002fb2e67d70b3a4672d03997001c86f1c58ba784d0bc3656db_t_stringliteral_9981a2a43c36ee7e45e960c26200a8b379d01168693d5029bb6fd776ef3ff2b1_t_stringliteral_4e169cb09c58f4c64bb0df0614abdbc124a0076dcd8783c87e43cbd0d73facd1_t_stringliteral_870e80063d91f6eff2750dd8a16316f934ba72da9e645a88b6f89454be1f4aef_t_stringliteral_ca0f24c57a59db85f494ba6c0b8c49c5859b9cc88ba864c52bba19e858e653dd_t_stringliteral_f091cfa977578cc3d31efb8591842fc4f1d1db02114f63fef964dafa0922c62d_t_stringliteral_84a823de185a2fe7015241c324f6c784eee47f2e7607badbd7abefa617433556_t_string_memory_ptr_t_stringliteral_53fd26dadfe66b5102855d57af8e557a2267beae8def1e64f35bbd9a2d281ff9_t_stringliteral_09b07dfc70a17fef45f6fe3d38c10da942afae7501f50d1fe821bf1419a6c973_t_stringliteral_4639f96f89d1ef49f25e5140ee8e04694d126a00020aebcb2df7e75b5d9e8ff8_t_stringliteral_8341c95578aab9bb12f989782d4cab355e9933e289241d0b82aafe9fda945df1_t_stringliteral_79d1157f01e06698bf30fbcaee454ea514c61e81bedfc1aec9b48b048d03b463_t_stringliteral_ca91dbc17e7b32a20d9c61bf3a31fc39e1843cdda3f9b6d132c3190c832ad888__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2, value3, value4) -> end {

                        pos := abi_encode_t_stringliteral_12907fa788c43c090d50faf378fd6f9ac466c604e59cc51ff30ae1bbbc38c8bd_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_84f36e7e631ec50512631a7d2b642e3c86e37c99d02e185264181ea0fe53feba_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_c9d6f35adafbd6db05cf66701a579ef4e1499ac0364b80726ad93d0f9855ba3a_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_5f5eeeecaa6e9906b36c9738130fb3306daeecaf7d327c054480dbfce019ef56_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                        pos := abi_encode_t_stringliteral_c8625c4ff6c954b2db14bd1706ddcdc7c7bbd2e8489b900eeea309e5e9154d1f_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                        pos := abi_encode_t_stringliteral_735ef1ca53a2b4f5317a913b38868565c310f491134932b2790ac296eda48267_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                        pos := abi_encode_t_stringliteral_72725e47f491f4a2a7cef9977dd6b3ea1a81d838d9448981484a063dc011d6ba_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_0b30bb9ee6214545b9ea9097efb5de130600391f40197f097cab945da2430220_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value3,  pos)

                        pos := abi_encode_t_stringliteral_483cd74bda08c7fcbdbb6c7b6985427b6812d47c5633f98b9e7615f669d7fafd_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_9f99c7530ff67b359dedbad02f868664b6089e4d686e89626dd44608ff6aab0f_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_c5b5eb1e85523a3353e56e3248818f208aaa79b1a09fe2e08149ce0068d90fe9_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_4b758653276e34b83f020b245d8a586eaf9cd26fbd97d7d3714c690e304e5721_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_cce19a9de29f73714bae13db1d73ac08b59c78313444c83363cfef09d838c0c4_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_a48f5f7836be870d77eac2feb87ec3732b4080b65a510a3f3cf11dab86d57166_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_07d6b453733dfcd6acccdef8bdba430d27327460b66a4169d73ced361868fbe9_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_5d5eff5a3ee8c17e11f3f4661e6d1155f39e626dc52ccd2ee80907a3b00329d4_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_1bdc0da2fd5d7002fb2e67d70b3a4672d03997001c86f1c58ba784d0bc3656db_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_9981a2a43c36ee7e45e960c26200a8b379d01168693d5029bb6fd776ef3ff2b1_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_4e169cb09c58f4c64bb0df0614abdbc124a0076dcd8783c87e43cbd0d73facd1_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_870e80063d91f6eff2750dd8a16316f934ba72da9e645a88b6f89454be1f4aef_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_ca0f24c57a59db85f494ba6c0b8c49c5859b9cc88ba864c52bba19e858e653dd_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_f091cfa977578cc3d31efb8591842fc4f1d1db02114f63fef964dafa0922c62d_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_84a823de185a2fe7015241c324f6c784eee47f2e7607badbd7abefa617433556_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value4,  pos)

                        pos := abi_encode_t_stringliteral_53fd26dadfe66b5102855d57af8e557a2267beae8def1e64f35bbd9a2d281ff9_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_09b07dfc70a17fef45f6fe3d38c10da942afae7501f50d1fe821bf1419a6c973_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_4639f96f89d1ef49f25e5140ee8e04694d126a00020aebcb2df7e75b5d9e8ff8_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_8341c95578aab9bb12f989782d4cab355e9933e289241d0b82aafe9fda945df1_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_79d1157f01e06698bf30fbcaee454ea514c61e81bedfc1aec9b48b048d03b463_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_ca91dbc17e7b32a20d9c61bf3a31fc39e1843cdda3f9b6d132c3190c832ad888_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        end := pos
                    }

                    /// @ast-id 25851
                    /// @src 149:2798:8141  "function generateSVGDefs(SVGParams memory params) private pure returns (string memory svg) {..."
                    function fun_generateSVGDefs_25851(var_params_25735_mpos) -> var_svg_25738_mpos {
                        /// @src 149:2870:2887  "string memory svg"
                        let zero_t_string_memory_ptr_815_mpos := zero_value_for_split_t_string_memory_ptr()
                        var_svg_25738_mpos := zero_t_string_memory_ptr_815_mpos

                        /// @src 149:3250:3256  "Base64"
                        let expr_25749_address := linkersymbol("base64-sol-1.0.1/base64.sol:Base64")
                        /// @src 149:3523:3529  "params"
                        let _816_mpos := var_params_25735_mpos
                        let expr_25756_mpos := _816_mpos
                        /// @src 149:3523:3536  "params.color0"
                        let _817 := add(expr_25756_mpos, 352)
                        let _818_mpos := mload(_817)
                        let expr_25757_mpos := _818_mpos
                        /// @src 149:3316:3603  "abi.encodePacked(..."

                        let expr_25759_mpos := allocate_unbounded()
                        let _819 := add(expr_25759_mpos, 0x20)

                        let _820 := abi_encode_tuple_packed_t_stringliteral_6d360492c387efc9efda370d7689d5bdc8d71342f56e5194b111ebf036750734_t_string_memory_ptr_t_stringliteral_6257da6d84399769a55eb558312555cad32511f19c4548b9e85f811c5fc99e3b__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_819, expr_25757_mpos)
                        mstore(expr_25759_mpos, sub(_820, add(expr_25759_mpos, 0x20)))
                        finalize_allocation(expr_25759_mpos, sub(_820, expr_25759_mpos))
                        /// @src 149:3285:3625  "bytes(..."
                        let expr_25760_mpos := expr_25759_mpos
                        /// @src 149:3250:3643  "Base64.encode(..."
                        let expr_25761_mpos := fun_encode_24769(expr_25760_mpos)
                        /// @src 149:3743:3749  "Base64"
                        let expr_25763_address := linkersymbol("base64-sol-1.0.1/base64.sol:Base64")
                        /// @src 149:3986:3992  "params"
                        let _821_mpos := var_params_25735_mpos
                        let expr_25770_mpos := _821_mpos
                        /// @src 149:3986:3995  "params.x1"
                        let _822 := add(expr_25770_mpos, 480)
                        let _823_mpos := mload(_822)
                        let expr_25771_mpos := _823_mpos
                        /// @src 149:4063:4069  "params"
                        let _824_mpos := var_params_25735_mpos
                        let expr_25773_mpos := _824_mpos
                        /// @src 149:4063:4072  "params.y1"
                        let _825 := add(expr_25773_mpos, 512)
                        let _826_mpos := mload(_825)
                        let expr_25774_mpos := _826_mpos
                        /// @src 149:4153:4159  "params"
                        let _827_mpos := var_params_25735_mpos
                        let expr_25776_mpos := _827_mpos
                        /// @src 149:4153:4166  "params.color1"
                        let _828 := add(expr_25776_mpos, 384)
                        let _829_mpos := mload(_828)
                        let expr_25777_mpos := _829_mpos
                        /// @src 149:3809:4233  "abi.encodePacked(..."

                        let expr_25779_mpos := allocate_unbounded()
                        let _830 := add(expr_25779_mpos, 0x20)

                        let _831 := abi_encode_tuple_packed_t_stringliteral_3c48d7b755ef30478f9fcb7df9667e587d5469eaab81f8e56e6c358f2f43959f_t_string_memory_ptr_t_stringliteral_c122f56fb29fd1b2692bf38cf7def21d4f86567365fb92790a69e1dc6942704f_t_string_memory_ptr_t_stringliteral_ee35ad264095963cb3d9258d9ab9354d54cabfc55aaceacbd7ebd9fec3d8f96a_t_string_memory_ptr_t_stringliteral_6257da6d84399769a55eb558312555cad32511f19c4548b9e85f811c5fc99e3b__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_830, expr_25771_mpos, expr_25774_mpos, expr_25777_mpos)
                        mstore(expr_25779_mpos, sub(_831, add(expr_25779_mpos, 0x20)))
                        finalize_allocation(expr_25779_mpos, sub(_831, expr_25779_mpos))
                        /// @src 149:3778:4255  "bytes(..."
                        let expr_25780_mpos := expr_25779_mpos
                        /// @src 149:3743:4273  "Base64.encode(..."
                        let expr_25781_mpos := fun_encode_24769(expr_25780_mpos)
                        /// @src 149:4373:4379  "Base64"
                        let expr_25783_address := linkersymbol("base64-sol-1.0.1/base64.sol:Base64")
                        /// @src 149:4616:4622  "params"
                        let _832_mpos := var_params_25735_mpos
                        let expr_25790_mpos := _832_mpos
                        /// @src 149:4616:4625  "params.x2"
                        let _833 := add(expr_25790_mpos, 544)
                        let _834_mpos := mload(_833)
                        let expr_25791_mpos := _834_mpos
                        /// @src 149:4693:4699  "params"
                        let _835_mpos := var_params_25735_mpos
                        let expr_25793_mpos := _835_mpos
                        /// @src 149:4693:4702  "params.y2"
                        let _836 := add(expr_25793_mpos, 576)
                        let _837_mpos := mload(_836)
                        let expr_25794_mpos := _837_mpos
                        /// @src 149:4783:4789  "params"
                        let _838_mpos := var_params_25735_mpos
                        let expr_25796_mpos := _838_mpos
                        /// @src 149:4783:4796  "params.color2"
                        let _839 := add(expr_25796_mpos, 416)
                        let _840_mpos := mload(_839)
                        let expr_25797_mpos := _840_mpos
                        /// @src 149:4439:4863  "abi.encodePacked(..."

                        let expr_25799_mpos := allocate_unbounded()
                        let _841 := add(expr_25799_mpos, 0x20)

                        let _842 := abi_encode_tuple_packed_t_stringliteral_3c48d7b755ef30478f9fcb7df9667e587d5469eaab81f8e56e6c358f2f43959f_t_string_memory_ptr_t_stringliteral_c122f56fb29fd1b2692bf38cf7def21d4f86567365fb92790a69e1dc6942704f_t_string_memory_ptr_t_stringliteral_ee35ad264095963cb3d9258d9ab9354d54cabfc55aaceacbd7ebd9fec3d8f96a_t_string_memory_ptr_t_stringliteral_6257da6d84399769a55eb558312555cad32511f19c4548b9e85f811c5fc99e3b__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_841, expr_25791_mpos, expr_25794_mpos, expr_25797_mpos)
                        mstore(expr_25799_mpos, sub(_842, add(expr_25799_mpos, 0x20)))
                        finalize_allocation(expr_25799_mpos, sub(_842, expr_25799_mpos))
                        /// @src 149:4408:4885  "bytes(..."
                        let expr_25800_mpos := expr_25799_mpos
                        /// @src 149:4373:4903  "Base64.encode(..."
                        let expr_25801_mpos := fun_encode_24769(expr_25800_mpos)
                        /// @src 149:5024:5030  "Base64"
                        let expr_25804_address := linkersymbol("base64-sol-1.0.1/base64.sol:Base64")
                        /// @src 149:5267:5273  "params"
                        let _843_mpos := var_params_25735_mpos
                        let expr_25811_mpos := _843_mpos
                        /// @src 149:5267:5276  "params.x3"
                        let _844 := add(expr_25811_mpos, 608)
                        let _845_mpos := mload(_844)
                        let expr_25812_mpos := _845_mpos
                        /// @src 149:5344:5350  "params"
                        let _846_mpos := var_params_25735_mpos
                        let expr_25814_mpos := _846_mpos
                        /// @src 149:5344:5353  "params.y3"
                        let _847 := add(expr_25814_mpos, 640)
                        let _848_mpos := mload(_847)
                        let expr_25815_mpos := _848_mpos
                        /// @src 149:5434:5440  "params"
                        let _849_mpos := var_params_25735_mpos
                        let expr_25817_mpos := _849_mpos
                        /// @src 149:5434:5447  "params.color3"
                        let _850 := add(expr_25817_mpos, 448)
                        let _851_mpos := mload(_850)
                        let expr_25818_mpos := _851_mpos
                        /// @src 149:5090:5514  "abi.encodePacked(..."

                        let expr_25820_mpos := allocate_unbounded()
                        let _852 := add(expr_25820_mpos, 0x20)

                        let _853 := abi_encode_tuple_packed_t_stringliteral_3c48d7b755ef30478f9fcb7df9667e587d5469eaab81f8e56e6c358f2f43959f_t_string_memory_ptr_t_stringliteral_c122f56fb29fd1b2692bf38cf7def21d4f86567365fb92790a69e1dc6942704f_t_string_memory_ptr_t_stringliteral_fa7e81ce29c44abe3185d042987960e602335452077f02be3f9233e7ae91d760_t_string_memory_ptr_t_stringliteral_6257da6d84399769a55eb558312555cad32511f19c4548b9e85f811c5fc99e3b__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_852, expr_25812_mpos, expr_25815_mpos, expr_25818_mpos)
                        mstore(expr_25820_mpos, sub(_853, add(expr_25820_mpos, 0x20)))
                        finalize_allocation(expr_25820_mpos, sub(_853, expr_25820_mpos))
                        /// @src 149:5059:5536  "bytes(..."
                        let expr_25821_mpos := expr_25820_mpos
                        /// @src 149:5024:5554  "Base64.encode(..."
                        let expr_25822_mpos := fun_encode_24769(expr_25821_mpos)
                        /// @src 149:7493:7499  "params"
                        let _854_mpos := var_params_25735_mpos
                        let expr_25838_mpos := _854_mpos
                        /// @src 149:7493:7506  "params.color0"
                        let _855 := add(expr_25838_mpos, 352)
                        let _856_mpos := mload(_855)
                        let expr_25839_mpos := _856_mpos
                        /// @src 149:2925:8124  "abi.encodePacked(..."

                        let expr_25846_mpos := allocate_unbounded()
                        let _857 := add(expr_25846_mpos, 0x20)

                        let _858 := abi_encode_tuple_packed_t_stringliteral_12907fa788c43c090d50faf378fd6f9ac466c604e59cc51ff30ae1bbbc38c8bd_t_stringliteral_84f36e7e631ec50512631a7d2b642e3c86e37c99d02e185264181ea0fe53feba_t_stringliteral_c9d6f35adafbd6db05cf66701a579ef4e1499ac0364b80726ad93d0f9855ba3a_t_stringliteral_5f5eeeecaa6e9906b36c9738130fb3306daeecaf7d327c054480dbfce019ef56_t_string_memory_ptr_t_stringliteral_c8625c4ff6c954b2db14bd1706ddcdc7c7bbd2e8489b900eeea309e5e9154d1f_t_string_memory_ptr_t_stringliteral_735ef1ca53a2b4f5317a913b38868565c310f491134932b2790ac296eda48267_t_string_memory_ptr_t_stringliteral_72725e47f491f4a2a7cef9977dd6b3ea1a81d838d9448981484a063dc011d6ba_t_stringliteral_0b30bb9ee6214545b9ea9097efb5de130600391f40197f097cab945da2430220_t_string_memory_ptr_t_stringliteral_483cd74bda08c7fcbdbb6c7b6985427b6812d47c5633f98b9e7615f669d7fafd_t_stringliteral_9f99c7530ff67b359dedbad02f868664b6089e4d686e89626dd44608ff6aab0f_t_stringliteral_c5b5eb1e85523a3353e56e3248818f208aaa79b1a09fe2e08149ce0068d90fe9_t_stringliteral_4b758653276e34b83f020b245d8a586eaf9cd26fbd97d7d3714c690e304e5721_t_stringliteral_cce19a9de29f73714bae13db1d73ac08b59c78313444c83363cfef09d838c0c4_t_stringliteral_a48f5f7836be870d77eac2feb87ec3732b4080b65a510a3f3cf11dab86d57166_t_stringliteral_07d6b453733dfcd6acccdef8bdba430d27327460b66a4169d73ced361868fbe9_t_stringliteral_5d5eff5a3ee8c17e11f3f4661e6d1155f39e626dc52ccd2ee80907a3b00329d4_t_stringliteral_1bdc0da2fd5d7002fb2e67d70b3a4672d03997001c86f1c58ba784d0bc3656db_t_stringliteral_9981a2a43c36ee7e45e960c26200a8b379d01168693d5029bb6fd776ef3ff2b1_t_stringliteral_4e169cb09c58f4c64bb0df0614abdbc124a0076dcd8783c87e43cbd0d73facd1_t_stringliteral_870e80063d91f6eff2750dd8a16316f934ba72da9e645a88b6f89454be1f4aef_t_stringliteral_ca0f24c57a59db85f494ba6c0b8c49c5859b9cc88ba864c52bba19e858e653dd_t_stringliteral_f091cfa977578cc3d31efb8591842fc4f1d1db02114f63fef964dafa0922c62d_t_stringliteral_84a823de185a2fe7015241c324f6c784eee47f2e7607badbd7abefa617433556_t_string_memory_ptr_t_stringliteral_53fd26dadfe66b5102855d57af8e557a2267beae8def1e64f35bbd9a2d281ff9_t_stringliteral_09b07dfc70a17fef45f6fe3d38c10da942afae7501f50d1fe821bf1419a6c973_t_stringliteral_4639f96f89d1ef49f25e5140ee8e04694d126a00020aebcb2df7e75b5d9e8ff8_t_stringliteral_8341c95578aab9bb12f989782d4cab355e9933e289241d0b82aafe9fda945df1_t_stringliteral_79d1157f01e06698bf30fbcaee454ea514c61e81bedfc1aec9b48b048d03b463_t_stringliteral_ca91dbc17e7b32a20d9c61bf3a31fc39e1843cdda3f9b6d132c3190c832ad888__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_857, expr_25761_mpos, expr_25781_mpos, expr_25801_mpos, expr_25822_mpos, expr_25839_mpos)
                        mstore(expr_25846_mpos, sub(_858, add(expr_25846_mpos, 0x20)))
                        finalize_allocation(expr_25846_mpos, sub(_858, expr_25846_mpos))
                        /// @src 149:2905:8134  "string(..."
                        let expr_25847_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_25846_mpos)
                        /// @src 149:2899:8134  "svg = string(..."
                        var_svg_25738_mpos := expr_25847_mpos
                        let _859_mpos := var_svg_25738_mpos
                        let expr_25848_mpos := _859_mpos

                    }
                    /// @src 148:613:18548  "library NFTDescriptor {..."

                    function store_literal_in_memory_def1de1dcd58e9459a64156d5380ddffd45a29faa565a4062a201283a4b86c28(memPtr) {

                        mstore(add(memPtr, 0), 0x3c7465787420746578742d72656e646572696e673d226f7074696d697a655370)

                        mstore(add(memPtr, 32), 0x656564223e000000000000000000000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_def1de1dcd58e9459a64156d5380ddffd45a29faa565a4062a201283a4b86c28_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 37)
                        store_literal_in_memory_def1de1dcd58e9459a64156d5380ddffd45a29faa565a4062a201283a4b86c28(pos)
                        end := add(pos, 37)
                    }

                    function store_literal_in_memory_5c021e382e7c7104a13e2471955db1e88164a0a2701d8def1c530fbda61a37dc(memPtr) {

                        mstore(add(memPtr, 0), 0x3c74657874506174682073746172744f66667365743d222d3130302522206669)

                        mstore(add(memPtr, 32), 0x6c6c3d2277686974652220666f6e742d66616d696c793d2227436f7572696572)

                        mstore(add(memPtr, 64), 0x204e6577272c206d6f6e6f73706163652220666f6e742d73697a653d22313070)

                        mstore(add(memPtr, 96), 0x782220786c696e6b3a687265663d2223746578742d706174682d61223e000000)

                    }

                    function abi_encode_t_stringliteral_5c021e382e7c7104a13e2471955db1e88164a0a2701d8def1c530fbda61a37dc_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 125)
                        store_literal_in_memory_5c021e382e7c7104a13e2471955db1e88164a0a2701d8def1c530fbda61a37dc(pos)
                        end := add(pos, 125)
                    }

                    function store_literal_in_memory_e95eeea5856ede1036273fb77d6c19f7ed6ad714c1773e773c8cd40b496df17b(memPtr) {

                        mstore(add(memPtr, 0), 0x20e280a220000000000000000000000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_e95eeea5856ede1036273fb77d6c19f7ed6ad714c1773e773c8cd40b496df17b_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 5)
                        store_literal_in_memory_e95eeea5856ede1036273fb77d6c19f7ed6ad714c1773e773c8cd40b496df17b(pos)
                        end := add(pos, 5)
                    }

                    function store_literal_in_memory_5ac049306c61d2605d500baef9423dd59101a8acd4643a030e0b4b8780979a7f(memPtr) {

                        mstore(add(memPtr, 0), 0x203c616e696d6174652061646469746976653d2273756d222061747472696275)

                        mstore(add(memPtr, 32), 0x74654e616d653d2273746172744f6666736574222066726f6d3d223025222074)

                        mstore(add(memPtr, 64), 0x6f3d22313030252220626567696e3d22307322206475723d2233307322207265)

                        mstore(add(memPtr, 96), 0x70656174436f756e743d22696e646566696e69746522202f3e00000000000000)

                    }

                    function abi_encode_t_stringliteral_5ac049306c61d2605d500baef9423dd59101a8acd4643a030e0b4b8780979a7f_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 121)
                        store_literal_in_memory_5ac049306c61d2605d500baef9423dd59101a8acd4643a030e0b4b8780979a7f(pos)
                        end := add(pos, 121)
                    }

                    function store_literal_in_memory_dd2dd1ce2446da3135b69075c1bfb5ae217a66fb97ea23bbfa9101533f005eee(memPtr) {

                        mstore(add(memPtr, 0), "</textPath> <textPath startOffse")

                        mstore(add(memPtr, 32), 0x743d223025222066696c6c3d2277686974652220666f6e742d66616d696c793d)

                        mstore(add(memPtr, 64), 0x2227436f7572696572204e6577272c206d6f6e6f73706163652220666f6e742d)

                        mstore(add(memPtr, 96), 0x73697a653d22313070782220786c696e6b3a687265663d2223746578742d7061)

                        mstore(add(memPtr, 128), 0x74682d61223e0000000000000000000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_dd2dd1ce2446da3135b69075c1bfb5ae217a66fb97ea23bbfa9101533f005eee_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 134)
                        store_literal_in_memory_dd2dd1ce2446da3135b69075c1bfb5ae217a66fb97ea23bbfa9101533f005eee(pos)
                        end := add(pos, 134)
                    }

                    function store_literal_in_memory_12e5d23ac3d5565fca6e18679427bcbe328ab78094fc30d5dc29018e64601f05(memPtr) {

                        mstore(add(memPtr, 0), 0x203c616e696d6174652061646469746976653d2273756d222061747472696275)

                        mstore(add(memPtr, 32), 0x74654e616d653d2273746172744f6666736574222066726f6d3d223025222074)

                        mstore(add(memPtr, 64), 0x6f3d22313030252220626567696e3d22307322206475723d2233307322207265)

                        mstore(add(memPtr, 96), 0x70656174436f756e743d22696e646566696e69746522202f3e203c2f74657874)

                        mstore(add(memPtr, 128), "Path>")

                    }

                    function abi_encode_t_stringliteral_12e5d23ac3d5565fca6e18679427bcbe328ab78094fc30d5dc29018e64601f05_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 133)
                        store_literal_in_memory_12e5d23ac3d5565fca6e18679427bcbe328ab78094fc30d5dc29018e64601f05(pos)
                        end := add(pos, 133)
                    }

                    function store_literal_in_memory_bba7d0e9c87f4fc07285d3901f65b11169f0a648c5503e2a93e1438c905d75bd(memPtr) {

                        mstore(add(memPtr, 0), 0x3c74657874506174682073746172744f66667365743d22353025222066696c6c)

                        mstore(add(memPtr, 32), 0x3d2277686974652220666f6e742d66616d696c793d2227436f7572696572204e)

                        mstore(add(memPtr, 64), 0x6577272c206d6f6e6f73706163652220666f6e742d73697a653d223130707822)

                        mstore(add(memPtr, 96), 0x20786c696e6b3a687265663d2223746578742d706174682d61223e0000000000)

                    }

                    function abi_encode_t_stringliteral_bba7d0e9c87f4fc07285d3901f65b11169f0a648c5503e2a93e1438c905d75bd_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 123)
                        store_literal_in_memory_bba7d0e9c87f4fc07285d3901f65b11169f0a648c5503e2a93e1438c905d75bd(pos)
                        end := add(pos, 123)
                    }

                    function store_literal_in_memory_2150a1c8c321a12bc9aebef62dce6760f1d4a6152ca8e7d1cfc2a91709c86ed3(memPtr) {

                        mstore(add(memPtr, 0), 0x203c616e696d6174652061646469746976653d2273756d222061747472696275)

                        mstore(add(memPtr, 32), 0x74654e616d653d2273746172744f6666736574222066726f6d3d223025222074)

                        mstore(add(memPtr, 64), 0x6f3d22313030252220626567696e3d22307322206475723d2233307322000000)

                    }

                    function abi_encode_t_stringliteral_2150a1c8c321a12bc9aebef62dce6760f1d4a6152ca8e7d1cfc2a91709c86ed3_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 93)
                        store_literal_in_memory_2150a1c8c321a12bc9aebef62dce6760f1d4a6152ca8e7d1cfc2a91709c86ed3(pos)
                        end := add(pos, 93)
                    }

                    function store_literal_in_memory_9421d2b325b171273133fcca90ccbe277797196ba10501e62827c87ba1f00867(memPtr) {

                        mstore(add(memPtr, 0), 0x20726570656174436f756e743d22696e646566696e69746522202f3e3c2f7465)

                        mstore(add(memPtr, 32), 0x7874506174683e3c74657874506174682073746172744f66667365743d222d35)

                        mstore(add(memPtr, 64), 0x3025222066696c6c3d2277686974652220666f6e742d66616d696c793d222743)

                        mstore(add(memPtr, 96), 0x6f7572696572204e6577272c206d6f6e6f73706163652220666f6e742d73697a)

                        mstore(add(memPtr, 128), 0x653d22313070782220786c696e6b3a687265663d2223746578742d706174682d)

                        mstore(add(memPtr, 160), 0x61223e0000000000000000000000000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_9421d2b325b171273133fcca90ccbe277797196ba10501e62827c87ba1f00867_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 163)
                        store_literal_in_memory_9421d2b325b171273133fcca90ccbe277797196ba10501e62827c87ba1f00867(pos)
                        end := add(pos, 163)
                    }

                    function store_literal_in_memory_02f06577ff640a7b9a57b4040afd931b573e563f869bd83106611dd7f5abd304(memPtr) {

                        mstore(add(memPtr, 0), 0x203c616e696d6174652061646469746976653d2273756d222061747472696275)

                        mstore(add(memPtr, 32), 0x74654e616d653d2273746172744f6666736574222066726f6d3d223025222074)

                        mstore(add(memPtr, 64), 0x6f3d22313030252220626567696e3d22307322206475723d2233307322207265)

                        mstore(add(memPtr, 96), 0x70656174436f756e743d22696e646566696e69746522202f3e3c2f7465787450)

                        mstore(add(memPtr, 128), "ath></text>")

                    }

                    function abi_encode_t_stringliteral_02f06577ff640a7b9a57b4040afd931b573e563f869bd83106611dd7f5abd304_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 139)
                        store_literal_in_memory_02f06577ff640a7b9a57b4040afd931b573e563f869bd83106611dd7f5abd304(pos)
                        end := add(pos, 139)
                    }

                    function abi_encode_tuple_packed_t_stringliteral_def1de1dcd58e9459a64156d5380ddffd45a29faa565a4062a201283a4b86c28_t_stringliteral_5c021e382e7c7104a13e2471955db1e88164a0a2701d8def1c530fbda61a37dc_t_string_memory_ptr_t_stringliteral_e95eeea5856ede1036273fb77d6c19f7ed6ad714c1773e773c8cd40b496df17b_t_string_memory_ptr_t_stringliteral_5ac049306c61d2605d500baef9423dd59101a8acd4643a030e0b4b8780979a7f_t_stringliteral_dd2dd1ce2446da3135b69075c1bfb5ae217a66fb97ea23bbfa9101533f005eee_t_string_memory_ptr_t_stringliteral_e95eeea5856ede1036273fb77d6c19f7ed6ad714c1773e773c8cd40b496df17b_t_string_memory_ptr_t_stringliteral_12e5d23ac3d5565fca6e18679427bcbe328ab78094fc30d5dc29018e64601f05_t_stringliteral_bba7d0e9c87f4fc07285d3901f65b11169f0a648c5503e2a93e1438c905d75bd_t_string_memory_ptr_t_stringliteral_e95eeea5856ede1036273fb77d6c19f7ed6ad714c1773e773c8cd40b496df17b_t_string_memory_ptr_t_stringliteral_2150a1c8c321a12bc9aebef62dce6760f1d4a6152ca8e7d1cfc2a91709c86ed3_t_stringliteral_9421d2b325b171273133fcca90ccbe277797196ba10501e62827c87ba1f00867_t_string_memory_ptr_t_stringliteral_e95eeea5856ede1036273fb77d6c19f7ed6ad714c1773e773c8cd40b496df17b_t_string_memory_ptr_t_stringliteral_02f06577ff640a7b9a57b4040afd931b573e563f869bd83106611dd7f5abd304__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2, value3, value4, value5, value6, value7) -> end {

                        pos := abi_encode_t_stringliteral_def1de1dcd58e9459a64156d5380ddffd45a29faa565a4062a201283a4b86c28_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_5c021e382e7c7104a13e2471955db1e88164a0a2701d8def1c530fbda61a37dc_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                        pos := abi_encode_t_stringliteral_e95eeea5856ede1036273fb77d6c19f7ed6ad714c1773e773c8cd40b496df17b_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                        pos := abi_encode_t_stringliteral_5ac049306c61d2605d500baef9423dd59101a8acd4643a030e0b4b8780979a7f_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_dd2dd1ce2446da3135b69075c1bfb5ae217a66fb97ea23bbfa9101533f005eee_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                        pos := abi_encode_t_stringliteral_e95eeea5856ede1036273fb77d6c19f7ed6ad714c1773e773c8cd40b496df17b_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value3,  pos)

                        pos := abi_encode_t_stringliteral_12e5d23ac3d5565fca6e18679427bcbe328ab78094fc30d5dc29018e64601f05_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_bba7d0e9c87f4fc07285d3901f65b11169f0a648c5503e2a93e1438c905d75bd_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value4,  pos)

                        pos := abi_encode_t_stringliteral_e95eeea5856ede1036273fb77d6c19f7ed6ad714c1773e773c8cd40b496df17b_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value5,  pos)

                        pos := abi_encode_t_stringliteral_2150a1c8c321a12bc9aebef62dce6760f1d4a6152ca8e7d1cfc2a91709c86ed3_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_9421d2b325b171273133fcca90ccbe277797196ba10501e62827c87ba1f00867_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value6,  pos)

                        pos := abi_encode_t_stringliteral_e95eeea5856ede1036273fb77d6c19f7ed6ad714c1773e773c8cd40b496df17b_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value7,  pos)

                        pos := abi_encode_t_stringliteral_02f06577ff640a7b9a57b4040afd931b573e563f869bd83106611dd7f5abd304_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        end := pos
                    }

                    /// @ast-id 25895
                    /// @src 149:8147:10082  "function generateSVGBorderText(..."
                    function fun_generateSVGBorderText_25895(var_quoteToken_25853_mpos, var_baseToken_25855_mpos, var_quoteTokenSymbol_25857_mpos, var_baseTokenSymbol_25859_mpos) -> var_svg_25862_mpos {
                        /// @src 149:8352:8369  "string memory svg"
                        let zero_t_string_memory_ptr_860_mpos := zero_value_for_split_t_string_memory_ptr()
                        var_svg_25862_mpos := zero_t_string_memory_ptr_860_mpos

                        /// @src 149:8645:8654  "baseToken"
                        let _861_mpos := var_baseToken_25855_mpos
                        let expr_25871_mpos := _861_mpos
                        /// @src 149:8704:8719  "baseTokenSymbol"
                        let _862_mpos := var_baseTokenSymbol_25859_mpos
                        let expr_25873_mpos := _862_mpos
                        /// @src 149:9034:9043  "baseToken"
                        let _863_mpos := var_baseToken_25855_mpos
                        let expr_25876_mpos := _863_mpos
                        /// @src 149:9093:9108  "baseTokenSymbol"
                        let _864_mpos := var_baseTokenSymbol_25859_mpos
                        let expr_25878_mpos := _864_mpos
                        /// @src 149:9424:9434  "quoteToken"
                        let _865_mpos := var_quoteToken_25853_mpos
                        let expr_25881_mpos := _865_mpos
                        /// @src 149:9484:9500  "quoteTokenSymbol"
                        let _866_mpos := var_quoteTokenSymbol_25857_mpos
                        let expr_25883_mpos := _866_mpos
                        /// @src 149:9816:9826  "quoteToken"
                        let _867_mpos := var_quoteToken_25853_mpos
                        let expr_25886_mpos := _867_mpos
                        /// @src 149:9876:9892  "quoteTokenSymbol"
                        let _868_mpos := var_quoteTokenSymbol_25857_mpos
                        let expr_25888_mpos := _868_mpos
                        /// @src 149:8407:10065  "abi.encodePacked(..."

                        let expr_25890_mpos := allocate_unbounded()
                        let _869 := add(expr_25890_mpos, 0x20)

                        let _870 := abi_encode_tuple_packed_t_stringliteral_def1de1dcd58e9459a64156d5380ddffd45a29faa565a4062a201283a4b86c28_t_stringliteral_5c021e382e7c7104a13e2471955db1e88164a0a2701d8def1c530fbda61a37dc_t_string_memory_ptr_t_stringliteral_e95eeea5856ede1036273fb77d6c19f7ed6ad714c1773e773c8cd40b496df17b_t_string_memory_ptr_t_stringliteral_5ac049306c61d2605d500baef9423dd59101a8acd4643a030e0b4b8780979a7f_t_stringliteral_dd2dd1ce2446da3135b69075c1bfb5ae217a66fb97ea23bbfa9101533f005eee_t_string_memory_ptr_t_stringliteral_e95eeea5856ede1036273fb77d6c19f7ed6ad714c1773e773c8cd40b496df17b_t_string_memory_ptr_t_stringliteral_12e5d23ac3d5565fca6e18679427bcbe328ab78094fc30d5dc29018e64601f05_t_stringliteral_bba7d0e9c87f4fc07285d3901f65b11169f0a648c5503e2a93e1438c905d75bd_t_string_memory_ptr_t_stringliteral_e95eeea5856ede1036273fb77d6c19f7ed6ad714c1773e773c8cd40b496df17b_t_string_memory_ptr_t_stringliteral_2150a1c8c321a12bc9aebef62dce6760f1d4a6152ca8e7d1cfc2a91709c86ed3_t_stringliteral_9421d2b325b171273133fcca90ccbe277797196ba10501e62827c87ba1f00867_t_string_memory_ptr_t_stringliteral_e95eeea5856ede1036273fb77d6c19f7ed6ad714c1773e773c8cd40b496df17b_t_string_memory_ptr_t_stringliteral_02f06577ff640a7b9a57b4040afd931b573e563f869bd83106611dd7f5abd304__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_869, expr_25871_mpos, expr_25873_mpos, expr_25876_mpos, expr_25878_mpos, expr_25881_mpos, expr_25883_mpos, expr_25886_mpos, expr_25888_mpos)
                        mstore(expr_25890_mpos, sub(_870, add(expr_25890_mpos, 0x20)))
                        finalize_allocation(expr_25890_mpos, sub(_870, expr_25890_mpos))
                        /// @src 149:8387:10075  "string(..."
                        let expr_25891_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_25890_mpos)
                        /// @src 149:8381:10075  "svg = string(..."
                        var_svg_25862_mpos := expr_25891_mpos
                        let _871_mpos := var_svg_25862_mpos
                        let expr_25892_mpos := _871_mpos

                    }
                    /// @src 148:613:18548  "library NFTDescriptor {..."

                    function store_literal_in_memory_0f48c6991d8370b108e265feefc6212179a011d404515a1dce8a57af40b85b7f(memPtr) {

                        mstore(add(memPtr, 0), 0x3c67206d61736b3d2275726c2823666164652d73796d626f6c29223e3c726563)

                        mstore(add(memPtr, 32), 0x742066696c6c3d226e6f6e652220783d223070782220793d2230707822207769)

                        mstore(add(memPtr, 64), 0x6474683d22323930707822206865696768743d22323030707822202f3e203c74)

                        mstore(add(memPtr, 96), 0x65787420793d22373070782220783d2233327078222066696c6c3d2277686974)

                        mstore(add(memPtr, 128), 0x652220666f6e742d66616d696c793d2227436f7572696572204e6577272c206d)

                        mstore(add(memPtr, 160), 0x6f6e6f73706163652220666f6e742d7765696768743d223230302220666f6e74)

                        mstore(add(memPtr, 192), 0x2d73697a653d2233367078223e00000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_0f48c6991d8370b108e265feefc6212179a011d404515a1dce8a57af40b85b7f_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 205)
                        store_literal_in_memory_0f48c6991d8370b108e265feefc6212179a011d404515a1dce8a57af40b85b7f(pos)
                        end := add(pos, 205)
                    }

                    function store_literal_in_memory_f6a4c28d3a8f91939e9dde8d20603d72bf408bb3a4810ebf3bb6c06742d8297b(memPtr) {

                        mstore(add(memPtr, 0), 0x3c2f746578743e3c7465787420793d2231313570782220783d22333270782220)

                        mstore(add(memPtr, 32), 0x66696c6c3d2277686974652220666f6e742d66616d696c793d2227436f757269)

                        mstore(add(memPtr, 64), 0x6572204e6577272c206d6f6e6f73706163652220666f6e742d7765696768743d)

                        mstore(add(memPtr, 96), 0x223230302220666f6e742d73697a653d2233367078223e000000000000000000)

                    }

                    function abi_encode_t_stringliteral_f6a4c28d3a8f91939e9dde8d20603d72bf408bb3a4810ebf3bb6c06742d8297b_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 119)
                        store_literal_in_memory_f6a4c28d3a8f91939e9dde8d20603d72bf408bb3a4810ebf3bb6c06742d8297b(pos)
                        end := add(pos, 119)
                    }

                    function store_literal_in_memory_0b7427e2f769aaaa13bde5b715b09255dc5398714a59a798afc7999c8e6ae7f0(memPtr) {

                        mstore(add(memPtr, 0), "</text></g>")

                    }

                    function abi_encode_t_stringliteral_0b7427e2f769aaaa13bde5b715b09255dc5398714a59a798afc7999c8e6ae7f0_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 11)
                        store_literal_in_memory_0b7427e2f769aaaa13bde5b715b09255dc5398714a59a798afc7999c8e6ae7f0(pos)
                        end := add(pos, 11)
                    }

                    function store_literal_in_memory_e0b4a009558fed53d8b93645952b1120d122982ebf4ca4d1136598e7708bf775(memPtr) {

                        mstore(add(memPtr, 0), 0x3c7265637420783d2231362220793d223136222077696474683d223235382220)

                        mstore(add(memPtr, 32), 0x6865696768743d22343638222072783d223236222072793d223236222066696c)

                        mstore(add(memPtr, 64), 0x6c3d227267626128302c302c302c302922207374726f6b653d22726762612832)

                        mstore(add(memPtr, 96), 0x35352c3235352c3235352c302e322922202f3e00000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_e0b4a009558fed53d8b93645952b1120d122982ebf4ca4d1136598e7708bf775_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 115)
                        store_literal_in_memory_e0b4a009558fed53d8b93645952b1120d122982ebf4ca4d1136598e7708bf775(pos)
                        end := add(pos, 115)
                    }

                    function abi_encode_tuple_packed_t_stringliteral_0f48c6991d8370b108e265feefc6212179a011d404515a1dce8a57af40b85b7f_t_string_memory_ptr_t_stringliteral_fba9715e477e68952d3f1df7a185b3708aadad50ec10cc793973864023868527_t_string_memory_ptr_t_stringliteral_f6a4c28d3a8f91939e9dde8d20603d72bf408bb3a4810ebf3bb6c06742d8297b_t_string_memory_ptr_t_stringliteral_0b7427e2f769aaaa13bde5b715b09255dc5398714a59a798afc7999c8e6ae7f0_t_stringliteral_e0b4a009558fed53d8b93645952b1120d122982ebf4ca4d1136598e7708bf775__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                        pos := abi_encode_t_stringliteral_0f48c6991d8370b108e265feefc6212179a011d404515a1dce8a57af40b85b7f_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                        pos := abi_encode_t_stringliteral_fba9715e477e68952d3f1df7a185b3708aadad50ec10cc793973864023868527_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                        pos := abi_encode_t_stringliteral_f6a4c28d3a8f91939e9dde8d20603d72bf408bb3a4810ebf3bb6c06742d8297b_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                        pos := abi_encode_t_stringliteral_0b7427e2f769aaaa13bde5b715b09255dc5398714a59a798afc7999c8e6ae7f0_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_e0b4a009558fed53d8b93645952b1120d122982ebf4ca4d1136598e7708bf775_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        end := pos
                    }

                    /// @ast-id 25924
                    /// @src 149:10088:11006  "function generateSVGCardMantle(..."
                    function fun_generateSVGCardMantle_25924(var_quoteTokenSymbol_25897_mpos, var_baseTokenSymbol_25899_mpos, var_feeTier_25901_mpos) -> var_svg_25904_mpos {
                        /// @src 149:10257:10274  "string memory svg"
                        let zero_t_string_memory_ptr_872_mpos := zero_value_for_split_t_string_memory_ptr()
                        var_svg_25904_mpos := zero_t_string_memory_ptr_872_mpos

                        /// @src 149:10573:10589  "quoteTokenSymbol"
                        let _873_mpos := var_quoteTokenSymbol_25897_mpos
                        let expr_25912_mpos := _873_mpos
                        /// @src 149:10628:10643  "baseTokenSymbol"
                        let _874_mpos := var_baseTokenSymbol_25899_mpos
                        let expr_25914_mpos := _874_mpos
                        /// @src 149:10802:10809  "feeTier"
                        let _875_mpos := var_feeTier_25901_mpos
                        let expr_25916_mpos := _875_mpos
                        /// @src 149:10312:10989  "abi.encodePacked(..."

                        let expr_25919_mpos := allocate_unbounded()
                        let _876 := add(expr_25919_mpos, 0x20)

                        let _877 := abi_encode_tuple_packed_t_stringliteral_0f48c6991d8370b108e265feefc6212179a011d404515a1dce8a57af40b85b7f_t_string_memory_ptr_t_stringliteral_fba9715e477e68952d3f1df7a185b3708aadad50ec10cc793973864023868527_t_string_memory_ptr_t_stringliteral_f6a4c28d3a8f91939e9dde8d20603d72bf408bb3a4810ebf3bb6c06742d8297b_t_string_memory_ptr_t_stringliteral_0b7427e2f769aaaa13bde5b715b09255dc5398714a59a798afc7999c8e6ae7f0_t_stringliteral_e0b4a009558fed53d8b93645952b1120d122982ebf4ca4d1136598e7708bf775__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_876, expr_25912_mpos, expr_25914_mpos, expr_25916_mpos)
                        mstore(expr_25919_mpos, sub(_877, add(expr_25919_mpos, 0x20)))
                        finalize_allocation(expr_25919_mpos, sub(_877, expr_25919_mpos))
                        /// @src 149:10292:10999  "string(..."
                        let expr_25920_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_25919_mpos)
                        /// @src 149:10286:10999  "svg = string(..."
                        var_svg_25904_mpos := expr_25920_mpos
                        let _878_mpos := var_svg_25904_mpos
                        let expr_25921_mpos := _878_mpos

                    }
                    /// @src 148:613:18548  "library NFTDescriptor {..."

                    function store_literal_in_memory_de3d54d0009a30de6574658fe768c121745861e4ddbc47fa69ea53fecbbb0a0c(memPtr) {

                        mstore(add(memPtr, 0), "#none")

                    }

                    function copy_literal_to_memory_de3d54d0009a30de6574658fe768c121745861e4ddbc47fa69ea53fecbbb0a0c() -> memPtr {
                        memPtr := allocate_memory_array_t_string_memory_ptr(5)
                        store_literal_in_memory_de3d54d0009a30de6574658fe768c121745861e4ddbc47fa69ea53fecbbb0a0c(add(memPtr, 32))
                    }

                    function convert_t_stringliteral_de3d54d0009a30de6574658fe768c121745861e4ddbc47fa69ea53fecbbb0a0c_to_t_string_memory_ptr() -> converted {
                        converted := copy_literal_to_memory_de3d54d0009a30de6574658fe768c121745861e4ddbc47fa69ea53fecbbb0a0c()
                    }

                    function store_literal_in_memory_2b01e6fb7a2c53cd6a7605ccb24831699c60989eff7007eb7c3036e4ed9f56e1(memPtr) {

                        mstore(add(memPtr, 0), "#fade-down")

                    }

                    function copy_literal_to_memory_2b01e6fb7a2c53cd6a7605ccb24831699c60989eff7007eb7c3036e4ed9f56e1() -> memPtr {
                        memPtr := allocate_memory_array_t_string_memory_ptr(10)
                        store_literal_in_memory_2b01e6fb7a2c53cd6a7605ccb24831699c60989eff7007eb7c3036e4ed9f56e1(add(memPtr, 32))
                    }

                    function convert_t_stringliteral_2b01e6fb7a2c53cd6a7605ccb24831699c60989eff7007eb7c3036e4ed9f56e1_to_t_string_memory_ptr() -> converted {
                        converted := copy_literal_to_memory_2b01e6fb7a2c53cd6a7605ccb24831699c60989eff7007eb7c3036e4ed9f56e1()
                    }

                    function store_literal_in_memory_d462c7626c0238db39d4f1d403630879f178b4bb0ebe2e10a6b1998122e55d72(memPtr) {

                        mstore(add(memPtr, 0), "#fade-up")

                    }

                    function copy_literal_to_memory_d462c7626c0238db39d4f1d403630879f178b4bb0ebe2e10a6b1998122e55d72() -> memPtr {
                        memPtr := allocate_memory_array_t_string_memory_ptr(8)
                        store_literal_in_memory_d462c7626c0238db39d4f1d403630879f178b4bb0ebe2e10a6b1998122e55d72(add(memPtr, 32))
                    }

                    function convert_t_stringliteral_d462c7626c0238db39d4f1d403630879f178b4bb0ebe2e10a6b1998122e55d72_to_t_string_memory_ptr() -> converted {
                        converted := copy_literal_to_memory_d462c7626c0238db39d4f1d403630879f178b4bb0ebe2e10a6b1998122e55d72()
                    }

                    function store_literal_in_memory_073f6ea16f7ccb68c2d82384c98a49ffe08e4d0cca470dd7b597850d3360adf1(memPtr) {

                        mstore(add(memPtr, 0), 0x3c67206d61736b3d2275726c2800000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_073f6ea16f7ccb68c2d82384c98a49ffe08e4d0cca470dd7b597850d3360adf1_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 13)
                        store_literal_in_memory_073f6ea16f7ccb68c2d82384c98a49ffe08e4d0cca470dd7b597850d3360adf1(pos)
                        end := add(pos, 13)
                    }

                    function store_literal_in_memory_c4b4594b062b8dfb6eaf7db997d942d04b66dec75ec258222a814ab915492f07(memPtr) {

                        mstore(add(memPtr, 0), 0x2922000000000000000000000000000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_c4b4594b062b8dfb6eaf7db997d942d04b66dec75ec258222a814ab915492f07_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 2)
                        store_literal_in_memory_c4b4594b062b8dfb6eaf7db997d942d04b66dec75ec258222a814ab915492f07(pos)
                        end := add(pos, 2)
                    }

                    function store_literal_in_memory_8d38c449c54623af115300f0b4cd575c9ad248d96fa963ffbc8a5d10a537195e(memPtr) {

                        mstore(add(memPtr, 0), 0x207374796c653d227472616e73666f726d3a7472616e736c6174652837327078)

                        mstore(add(memPtr, 32), 0x2c313839707829223e3c7265637420783d222d313670782220793d222d313670)

                        mstore(add(memPtr, 64), 0x78222077696474683d22313830707822206865696768743d2231383070782220)

                        mstore(add(memPtr, 96), 0x66696c6c3d226e6f6e6522202f3e3c7061746820643d22000000000000000000)

                    }

                    function abi_encode_t_stringliteral_8d38c449c54623af115300f0b4cd575c9ad248d96fa963ffbc8a5d10a537195e_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 119)
                        store_literal_in_memory_8d38c449c54623af115300f0b4cd575c9ad248d96fa963ffbc8a5d10a537195e(pos)
                        end := add(pos, 119)
                    }

                    function store_literal_in_memory_20b18c33024e2e0e17abfb47072fb69fd233a084a9b52e7077234344339ef1d2(memPtr) {

                        mstore(add(memPtr, 0), 0x22207374726f6b653d227267626128302c302c302c302e332922207374726f6b)

                        mstore(add(memPtr, 32), 0x652d77696474683d2233327078222066696c6c3d226e6f6e6522207374726f6b)

                        mstore(add(memPtr, 64), 0x652d6c696e656361703d22726f756e6422202f3e000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_20b18c33024e2e0e17abfb47072fb69fd233a084a9b52e7077234344339ef1d2_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 84)
                        store_literal_in_memory_20b18c33024e2e0e17abfb47072fb69fd233a084a9b52e7077234344339ef1d2(pos)
                        end := add(pos, 84)
                    }

                    function store_literal_in_memory_5d5b8544d6c3a0963cab785f7bfd6c7e8729a866fc2c71a9b519c74a2851ad8e(memPtr) {

                        mstore(add(memPtr, 0), 0x3c2f673e3c67206d61736b3d2275726c28000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_5d5b8544d6c3a0963cab785f7bfd6c7e8729a866fc2c71a9b519c74a2851ad8e_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 17)
                        store_literal_in_memory_5d5b8544d6c3a0963cab785f7bfd6c7e8729a866fc2c71a9b519c74a2851ad8e(pos)
                        end := add(pos, 17)
                    }

                    function store_literal_in_memory_8e24499475377ebfea88a8b66ad4852ff14fea8d70bdbc3a7eceb1a729240226(memPtr) {

                        mstore(add(memPtr, 0), 0x207374796c653d227472616e73666f726d3a7472616e736c6174652837327078)

                        mstore(add(memPtr, 32), 0x2c313839707829223e0000000000000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_8e24499475377ebfea88a8b66ad4852ff14fea8d70bdbc3a7eceb1a729240226_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 41)
                        store_literal_in_memory_8e24499475377ebfea88a8b66ad4852ff14fea8d70bdbc3a7eceb1a729240226(pos)
                        end := add(pos, 41)
                    }

                    function store_literal_in_memory_8f43f63d6c112f03be0e24ed0ecb0994a71907eacdd7bbe72850d1059fbd6fa7(memPtr) {

                        mstore(add(memPtr, 0), 0x3c7265637420783d222d313670782220793d222d31367078222077696474683d)

                        mstore(add(memPtr, 32), 0x22313830707822206865696768743d223138307078222066696c6c3d226e6f6e)

                        mstore(add(memPtr, 64), 0x6522202f3e000000000000000000000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_8f43f63d6c112f03be0e24ed0ecb0994a71907eacdd7bbe72850d1059fbd6fa7_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 69)
                        store_literal_in_memory_8f43f63d6c112f03be0e24ed0ecb0994a71907eacdd7bbe72850d1059fbd6fa7(pos)
                        end := add(pos, 69)
                    }

                    function store_literal_in_memory_8435fbe25d8e10dc1b7fa802b6ce492013481bf38ccb57fac98cd4034d9fca4a(memPtr) {

                        mstore(add(memPtr, 0), 0x3c7061746820643d220000000000000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_8435fbe25d8e10dc1b7fa802b6ce492013481bf38ccb57fac98cd4034d9fca4a_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 9)
                        store_literal_in_memory_8435fbe25d8e10dc1b7fa802b6ce492013481bf38ccb57fac98cd4034d9fca4a(pos)
                        end := add(pos, 9)
                    }

                    function store_literal_in_memory_9bb25be920b258880439ec0b834ec0e12e09bcc9295c9fb6ea92333a2947269b(memPtr) {

                        mstore(add(memPtr, 0), 0x22207374726f6b653d2272676261283235352c3235352c3235352c3129222066)

                        mstore(add(memPtr, 32), 0x696c6c3d226e6f6e6522207374726f6b652d6c696e656361703d22726f756e64)

                        mstore(add(memPtr, 64), 0x22202f3e3c2f673e000000000000000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_9bb25be920b258880439ec0b834ec0e12e09bcc9295c9fb6ea92333a2947269b_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 72)
                        store_literal_in_memory_9bb25be920b258880439ec0b834ec0e12e09bcc9295c9fb6ea92333a2947269b(pos)
                        end := add(pos, 72)
                    }

                    function abi_encode_tuple_packed_t_stringliteral_073f6ea16f7ccb68c2d82384c98a49ffe08e4d0cca470dd7b597850d3360adf1_t_string_memory_ptr_t_stringliteral_c4b4594b062b8dfb6eaf7db997d942d04b66dec75ec258222a814ab915492f07_t_stringliteral_8d38c449c54623af115300f0b4cd575c9ad248d96fa963ffbc8a5d10a537195e_t_string_memory_ptr_t_stringliteral_20b18c33024e2e0e17abfb47072fb69fd233a084a9b52e7077234344339ef1d2_t_stringliteral_5d5b8544d6c3a0963cab785f7bfd6c7e8729a866fc2c71a9b519c74a2851ad8e_t_string_memory_ptr_t_stringliteral_c4b4594b062b8dfb6eaf7db997d942d04b66dec75ec258222a814ab915492f07_t_stringliteral_8e24499475377ebfea88a8b66ad4852ff14fea8d70bdbc3a7eceb1a729240226_t_stringliteral_8f43f63d6c112f03be0e24ed0ecb0994a71907eacdd7bbe72850d1059fbd6fa7_t_stringliteral_8435fbe25d8e10dc1b7fa802b6ce492013481bf38ccb57fac98cd4034d9fca4a_t_string_memory_ptr_t_stringliteral_9bb25be920b258880439ec0b834ec0e12e09bcc9295c9fb6ea92333a2947269b_t_string_memory_ptr__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2, value3, value4) -> end {

                        pos := abi_encode_t_stringliteral_073f6ea16f7ccb68c2d82384c98a49ffe08e4d0cca470dd7b597850d3360adf1_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                        pos := abi_encode_t_stringliteral_c4b4594b062b8dfb6eaf7db997d942d04b66dec75ec258222a814ab915492f07_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_8d38c449c54623af115300f0b4cd575c9ad248d96fa963ffbc8a5d10a537195e_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                        pos := abi_encode_t_stringliteral_20b18c33024e2e0e17abfb47072fb69fd233a084a9b52e7077234344339ef1d2_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_5d5b8544d6c3a0963cab785f7bfd6c7e8729a866fc2c71a9b519c74a2851ad8e_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                        pos := abi_encode_t_stringliteral_c4b4594b062b8dfb6eaf7db997d942d04b66dec75ec258222a814ab915492f07_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_8e24499475377ebfea88a8b66ad4852ff14fea8d70bdbc3a7eceb1a729240226_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_8f43f63d6c112f03be0e24ed0ecb0994a71907eacdd7bbe72850d1059fbd6fa7_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_stringliteral_8435fbe25d8e10dc1b7fa802b6ce492013481bf38ccb57fac98cd4034d9fca4a_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value3,  pos)

                        pos := abi_encode_t_stringliteral_9bb25be920b258880439ec0b834ec0e12e09bcc9295c9fb6ea92333a2947269b_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                        pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value4,  pos)

                        end := pos
                    }

                    /// @ast-id 25987
                    /// @src 149:11012:12252  "function generageSvgCurve(..."
                    function fun_generageSvgCurve_25987(var_tickLower_25926, var_tickUpper_25928, var_tickSpacing_25930, var_overRange_25932) -> var_svg_25935_mpos {
                        /// @src 149:11167:11184  "string memory svg"
                        let zero_t_string_memory_ptr_879_mpos := zero_value_for_split_t_string_memory_ptr()
                        var_svg_25935_mpos := zero_t_string_memory_ptr_879_mpos

                        /// @src 149:11217:11226  "overRange"
                        let _880 := var_overRange_25932
                        let expr_25939 := _880
                        /// @src 149:11230:11231  "1"
                        let expr_25940 := 0x01
                        /// @src 149:11217:11231  "overRange == 1"
                        let expr_25941 := eq(cleanup_t_int8(expr_25939), convert_t_rational_1_by_1_to_t_int8(expr_25940))
                        /// @src 149:11217:11287  "overRange == 1 ? '#fade-up' : overRange == -1 ? '#fade-down' : '#none'"
                        let expr_25950_mpos
                        switch expr_25941
                        case 0 {
                            /// @src 149:11247:11256  "overRange"
                            let _881 := var_overRange_25932
                            let expr_25943 := _881
                            /// @src 149:11260:11262  "-1"
                            let expr_25945 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            /// @src 149:11247:11262  "overRange == -1"
                            let expr_25946 := eq(cleanup_t_int8(expr_25943), convert_t_rational_minus_1_by_1_to_t_int8(expr_25945))
                            /// @src 149:11247:11287  "overRange == -1 ? '#fade-down' : '#none'"
                            let expr_25949_mpos
                            switch expr_25946
                            case 0 {
                                expr_25949_mpos := convert_t_stringliteral_de3d54d0009a30de6574658fe768c121745861e4ddbc47fa69ea53fecbbb0a0c_to_t_string_memory_ptr()
                            }
                            default {
                                expr_25949_mpos := convert_t_stringliteral_2b01e6fb7a2c53cd6a7605ccb24831699c60989eff7007eb7c3036e4ed9f56e1_to_t_string_memory_ptr()
                            }
                            /// @src 149:11217:11287  "overRange == 1 ? '#fade-up' : overRange == -1 ? '#fade-down' : '#none'"
                            expr_25950_mpos := expr_25949_mpos
                        }
                        default {
                            expr_25950_mpos := convert_t_stringliteral_d462c7626c0238db39d4f1d403630879f178b4bb0ebe2e10a6b1998122e55d72_to_t_string_memory_ptr()
                        }
                        /// @src 149:11196:11287  "string memory fade = overRange == 1 ? '#fade-up' : overRange == -1 ? '#fade-down' : '#none'"
                        let var_fade_25938_mpos := expr_25950_mpos
                        /// @src 149:11328:11337  "tickLower"
                        let _882 := var_tickLower_25926
                        let expr_25955 := _882
                        /// @src 149:11339:11348  "tickUpper"
                        let _883 := var_tickUpper_25928
                        let expr_25956 := _883
                        /// @src 149:11350:11361  "tickSpacing"
                        let _884 := var_tickSpacing_25930
                        let expr_25957 := _884
                        /// @src 149:11319:11362  "getCurve(tickLower, tickUpper, tickSpacing)"
                        let expr_25958_mpos := fun_getCurve_26076(expr_25955, expr_25956, expr_25957)
                        /// @src 149:11297:11362  "string memory curve = getCurve(tickLower, tickUpper, tickSpacing)"
                        let var_curve_25953_mpos := expr_25958_mpos
                        /// @src 149:11465:11469  "fade"
                        let _885_mpos := var_fade_25938_mpos
                        let expr_25966_mpos := _885_mpos
                        /// @src 149:11686:11691  "curve"
                        let _886_mpos := var_curve_25953_mpos
                        let expr_25969_mpos := _886_mpos
                        /// @src 149:11850:11854  "fade"
                        let _887_mpos := var_fade_25938_mpos
                        let expr_25972_mpos := _887_mpos
                        /// @src 149:12073:12078  "curve"
                        let _888_mpos := var_curve_25953_mpos
                        let expr_25977_mpos := _888_mpos
                        /// @src 149:12211:12220  "overRange"
                        let _889 := var_overRange_25932
                        let expr_25980 := _889
                        /// @src 149:12188:12221  "generateSVGCurveCircle(overRange)"
                        let expr_25981_mpos := fun_generateSVGCurveCircle_26172(expr_25980)
                        /// @src 149:11398:12235  "abi.encodePacked(..."

                        let expr_25982_mpos := allocate_unbounded()
                        let _890 := add(expr_25982_mpos, 0x20)

                        let _891 := abi_encode_tuple_packed_t_stringliteral_073f6ea16f7ccb68c2d82384c98a49ffe08e4d0cca470dd7b597850d3360adf1_t_string_memory_ptr_t_stringliteral_c4b4594b062b8dfb6eaf7db997d942d04b66dec75ec258222a814ab915492f07_t_stringliteral_8d38c449c54623af115300f0b4cd575c9ad248d96fa963ffbc8a5d10a537195e_t_string_memory_ptr_t_stringliteral_20b18c33024e2e0e17abfb47072fb69fd233a084a9b52e7077234344339ef1d2_t_stringliteral_5d5b8544d6c3a0963cab785f7bfd6c7e8729a866fc2c71a9b519c74a2851ad8e_t_string_memory_ptr_t_stringliteral_c4b4594b062b8dfb6eaf7db997d942d04b66dec75ec258222a814ab915492f07_t_stringliteral_8e24499475377ebfea88a8b66ad4852ff14fea8d70bdbc3a7eceb1a729240226_t_stringliteral_8f43f63d6c112f03be0e24ed0ecb0994a71907eacdd7bbe72850d1059fbd6fa7_t_stringliteral_8435fbe25d8e10dc1b7fa802b6ce492013481bf38ccb57fac98cd4034d9fca4a_t_string_memory_ptr_t_stringliteral_9bb25be920b258880439ec0b834ec0e12e09bcc9295c9fb6ea92333a2947269b_t_string_memory_ptr__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_890, expr_25966_mpos, expr_25969_mpos, expr_25972_mpos, expr_25977_mpos, expr_25981_mpos)
                        mstore(expr_25982_mpos, sub(_891, add(expr_25982_mpos, 0x20)))
                        finalize_allocation(expr_25982_mpos, sub(_891, expr_25982_mpos))
                        /// @src 149:11378:12245  "string(..."
                        let expr_25983_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_25982_mpos)
                        /// @src 149:11372:12245  "svg = string(..."
                        var_svg_25935_mpos := expr_25983_mpos
                        let _892_mpos := var_svg_25935_mpos
                        let expr_25984_mpos := _892_mpos

                    }
                    /// @src 148:613:18548  "library NFTDescriptor {..."

                    function convert_t_rational_7_by_1_to_t_uint256(value) -> converted {
                        converted := cleanup_t_uint256(identity(cleanup_t_rational_7_by_1(value)))
                    }

                    function store_literal_in_memory_a1d35662f193c8dca60ea626415bf453b6eb6f19f995eb4e725506bddb1c9b3c(memPtr) {

                        mstore(add(memPtr, 0), 0x203c67207374796c653d227472616e73666f726d3a7472616e736c6174652832)

                        mstore(add(memPtr, 32), 0x3970782c20333834707829223e00000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_a1d35662f193c8dca60ea626415bf453b6eb6f19f995eb4e725506bddb1c9b3c_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 45)
                        store_literal_in_memory_a1d35662f193c8dca60ea626415bf453b6eb6f19f995eb4e725506bddb1c9b3c(pos)
                        end := add(pos, 45)
                    }

                    function store_literal_in_memory_ea677e503ab4e967d2570a008dd897c1687e0426ee06ab367778d22358bbd498(memPtr) {

                        mstore(add(memPtr, 0), 0x3c726563742077696474683d2200000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_ea677e503ab4e967d2570a008dd897c1687e0426ee06ab367778d22358bbd498_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 13)
                        store_literal_in_memory_ea677e503ab4e967d2570a008dd897c1687e0426ee06ab367778d22358bbd498(pos)
                        end := add(pos, 13)
                    }

                    function store_literal_in_memory_800ca0756ff976e45c222900c67e79662594eea8a3ec66e3bbb8af53bd09f4e4(memPtr) {

                        mstore(add(memPtr, 0), 0x707822206865696768743d2232367078222072783d22387078222072793d2238)

                        mstore(add(memPtr, 32), 0x7078222066696c6c3d227267626128302c302c302c302e362922202f3e000000)

                    }

                    function abi_encode_t_stringliteral_800ca0756ff976e45c222900c67e79662594eea8a3ec66e3bbb8af53bd09f4e4_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 61)
                        store_literal_in_memory_800ca0756ff976e45c222900c67e79662594eea8a3ec66e3bbb8af53bd09f4e4(pos)
                        end := add(pos, 61)
                    }

                    function store_literal_in_memory_e48f616382bc4db7da9436f22e091c88340d840be14446bdcabee6fb3c9ef913(memPtr) {

                        mstore(add(memPtr, 0), 0x3c7465787420783d22313270782220793d22313770782220666f6e742d66616d)

                        mstore(add(memPtr, 32), 0x696c793d2227436f7572696572204e6577272c206d6f6e6f7370616365222066)

                        mstore(add(memPtr, 64), 0x6f6e742d73697a653d2231327078222066696c6c3d227768697465223e3c7473)

                        mstore(add(memPtr, 96), 0x70616e2066696c6c3d2272676261283235352c3235352c3235352c302e362922)

                        mstore(add(memPtr, 128), ">ID: </tspan>")

                    }

                    function abi_encode_t_stringliteral_e48f616382bc4db7da9436f22e091c88340d840be14446bdcabee6fb3c9ef913_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 141)
                        store_literal_in_memory_e48f616382bc4db7da9436f22e091c88340d840be14446bdcabee6fb3c9ef913(pos)
                        end := add(pos, 141)
                    }

                    function store_literal_in_memory_fab582159965dc3537eef15a4898cfd495cdf6178ad5c39fe4f14de95021bcdd(memPtr) {

                        mstore(add(memPtr, 0), 0x203c67207374796c653d227472616e73666f726d3a7472616e736c6174652832)

                        mstore(add(memPtr, 32), 0x3970782c20343134707829223e00000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_fab582159965dc3537eef15a4898cfd495cdf6178ad5c39fe4f14de95021bcdd_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 45)
                        store_literal_in_memory_fab582159965dc3537eef15a4898cfd495cdf6178ad5c39fe4f14de95021bcdd(pos)
                        end := add(pos, 45)
                    }

                    function store_literal_in_memory_5bc1bf3d11aae697778119ef346ad4842b7aeee3b48245084fb03eaf191c89a0(memPtr) {

                        mstore(add(memPtr, 0), 0x3c7465787420783d22313270782220793d22313770782220666f6e742d66616d)

                        mstore(add(memPtr, 32), 0x696c793d2227436f7572696572204e6577272c206d6f6e6f7370616365222066)

                        mstore(add(memPtr, 64), 0x6f6e742d73697a653d2231327078222066696c6c3d227768697465223e3c7473)

                        mstore(add(memPtr, 96), 0x70616e2066696c6c3d2272676261283235352c3235352c3235352c302e362922)

                        mstore(add(memPtr, 128), ">Min Tick: </tspan>")

                    }

                    function abi_encode_t_stringliteral_5bc1bf3d11aae697778119ef346ad4842b7aeee3b48245084fb03eaf191c89a0_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 147)
                        store_literal_in_memory_5bc1bf3d11aae697778119ef346ad4842b7aeee3b48245084fb03eaf191c89a0(pos)
                        end := add(pos, 147)
                    }

                    function store_literal_in_memory_220105d546304f5c5e6ab619f93ed0540d9e75da2d2186101f3be7105ff28a8a(memPtr) {

                        mstore(add(memPtr, 0), 0x203c67207374796c653d227472616e73666f726d3a7472616e736c6174652832)

                        mstore(add(memPtr, 32), 0x3970782c20343434707829223e00000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_220105d546304f5c5e6ab619f93ed0540d9e75da2d2186101f3be7105ff28a8a_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 45)
                        store_literal_in_memory_220105d546304f5c5e6ab619f93ed0540d9e75da2d2186101f3be7105ff28a8a(pos)
                        end := add(pos, 45)
                    }

                    function store_literal_in_memory_bef0de1b6ab64a87365883910640202cc923019a0642c3dc3ce8c92f70e2aec2(memPtr) {

                        mstore(add(memPtr, 0), 0x3c7465787420783d22313270782220793d22313770782220666f6e742d66616d)

                        mstore(add(memPtr, 32), 0x696c793d2227436f7572696572204e6577272c206d6f6e6f7370616365222066)

                        mstore(add(memPtr, 64), 0x6f6e742d73697a653d2231327078222066696c6c3d227768697465223e3c7473)

                        mstore(add(memPtr, 96), 0x70616e2066696c6c3d2272676261283235352c3235352c3235352c302e362922)

                        mstore(add(memPtr, 128), ">Max Tick: </tspan>")

                    }

                    function abi_encode_t_stringliteral_bef0de1b6ab64a87365883910640202cc923019a0642c3dc3ce8c92f70e2aec2_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 147)
                        store_literal_in_memory_bef0de1b6ab64a87365883910640202cc923019a0642c3dc3ce8c92f70e2aec2(pos)
                        end := add(pos, 147)
                    }

                    function store_literal_in_memory_f779b01e2c11d50446559da8a96e840c35be2177455b0699985122c52b0d1f4e(memPtr) {

                        mstore(add(memPtr, 0), 0x3c2f746578743e3c2f673e3c67207374796c653d227472616e73666f726d3a74)

                        mstore(add(memPtr, 32), 0x72616e736c6174652832323670782c20343333707829223e0000000000000000)

                    }

                    function abi_encode_t_stringliteral_f779b01e2c11d50446559da8a96e840c35be2177455b0699985122c52b0d1f4e_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 56)
                        store_literal_in_memory_f779b01e2c11d50446559da8a96e840c35be2177455b0699985122c52b0d1f4e(pos)
                        end := add(pos, 56)
                    }

                    function store_literal_in_memory_ec66f735b9269156d2621c7cb2e179cbb93736ea6dfc7db8bdd4441a81eb1f64(memPtr) {

                        mstore(add(memPtr, 0), 0x3c726563742077696474683d223336707822206865696768743d223336707822)

                        mstore(add(memPtr, 32), 0x2072783d22387078222072793d22387078222066696c6c3d226e6f6e65222073)

                        mstore(add(memPtr, 64), 0x74726f6b653d2272676261283235352c3235352c3235352c302e322922202f3e)

                    }

                    function abi_encode_t_stringliteral_ec66f735b9269156d2621c7cb2e179cbb93736ea6dfc7db8bdd4441a81eb1f64_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 96)
                        store_literal_in_memory_ec66f735b9269156d2621c7cb2e179cbb93736ea6dfc7db8bdd4441a81eb1f64(pos)
                        end := add(pos, 96)
                    }

                    function store_literal_in_memory_9172aa3905273de2038748a8a21d4c0caf162952597ab7af5f83d1a3c63cec1a(memPtr) {

                        mstore(add(memPtr, 0), 0x3c70617468207374726f6b652d6c696e656361703d22726f756e642220643d22)

                        mstore(add(memPtr, 32), "M8 9C8.00004 22.9494 16.2099 28 ")

                        mstore(add(memPtr, 64), 0x3237203238222066696c6c3d226e6f6e6522207374726f6b653d227768697465)

                        mstore(add(memPtr, 96), 0x22202f3e00000000000000000000000000000000000000000000000000000000)

                    }

                    function abi_encode_t_stringliteral_9172aa3905273de2038748a8a21d4c0caf162952597ab7af5f83d1a3c63cec1a_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 100)
                        store_literal_in_memory_9172aa3905273de2038748a8a21d4c0caf162952597ab7af5f83d1a3c63cec1a(pos)
                        end := add(pos, 100)
                    }

                    function store_literal_in_memory_2f31b113ee3d3056d0911a5e394047e1383278908d2c52df748865318956703e(memPtr) {

                        mstore(add(memPtr, 0), 0x3c636972636c65207374796c653d227472616e73666f726d3a7472616e736c61)

                        mstore(add(memPtr, 32), "te3d(")

                        }

                        function abi_encode_t_stringliteral_2f31b113ee3d3056d0911a5e394047e1383278908d2c52df748865318956703e_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 37)
                            store_literal_in_memory_2f31b113ee3d3056d0911a5e394047e1383278908d2c52df748865318956703e(pos)
                            end := add(pos, 37)
                        }

                        function store_literal_in_memory_b6aaa2c0b71922b19b9b8b146cc93d2f4e231e6b961d744f30cad118bc857ef8(memPtr) {

                            mstore(add(memPtr, 0), "px, ")

                        }

                        function abi_encode_t_stringliteral_b6aaa2c0b71922b19b9b8b146cc93d2f4e231e6b961d744f30cad118bc857ef8_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 4)
                            store_literal_in_memory_b6aaa2c0b71922b19b9b8b146cc93d2f4e231e6b961d744f30cad118bc857ef8(pos)
                            end := add(pos, 4)
                        }

                        function store_literal_in_memory_12c8706c8ed81675e674ab6c512d5560a6aee02a6795723026211fc0112724ea(memPtr) {

                            mstore(add(memPtr, 0), 0x70782c2030707829222063783d22307078222063793d223070782220723d2234)

                            mstore(add(memPtr, 32), 0x7078222066696c6c3d227768697465222f3e3c2f673e00000000000000000000)

                        }

                        function abi_encode_t_stringliteral_12c8706c8ed81675e674ab6c512d5560a6aee02a6795723026211fc0112724ea_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 54)
                            store_literal_in_memory_12c8706c8ed81675e674ab6c512d5560a6aee02a6795723026211fc0112724ea(pos)
                            end := add(pos, 54)
                        }

                        function abi_encode_tuple_packed_t_stringliteral_a1d35662f193c8dca60ea626415bf453b6eb6f19f995eb4e725506bddb1c9b3c_t_stringliteral_ea677e503ab4e967d2570a008dd897c1687e0426ee06ab367778d22358bbd498_t_string_memory_ptr_t_stringliteral_800ca0756ff976e45c222900c67e79662594eea8a3ec66e3bbb8af53bd09f4e4_t_stringliteral_e48f616382bc4db7da9436f22e091c88340d840be14446bdcabee6fb3c9ef913_t_string_memory_ptr_t_stringliteral_0b7427e2f769aaaa13bde5b715b09255dc5398714a59a798afc7999c8e6ae7f0_t_stringliteral_fab582159965dc3537eef15a4898cfd495cdf6178ad5c39fe4f14de95021bcdd_t_stringliteral_ea677e503ab4e967d2570a008dd897c1687e0426ee06ab367778d22358bbd498_t_string_memory_ptr_t_stringliteral_800ca0756ff976e45c222900c67e79662594eea8a3ec66e3bbb8af53bd09f4e4_t_stringliteral_5bc1bf3d11aae697778119ef346ad4842b7aeee3b48245084fb03eaf191c89a0_t_string_memory_ptr_t_stringliteral_0b7427e2f769aaaa13bde5b715b09255dc5398714a59a798afc7999c8e6ae7f0_t_stringliteral_220105d546304f5c5e6ab619f93ed0540d9e75da2d2186101f3be7105ff28a8a_t_stringliteral_ea677e503ab4e967d2570a008dd897c1687e0426ee06ab367778d22358bbd498_t_string_memory_ptr_t_stringliteral_800ca0756ff976e45c222900c67e79662594eea8a3ec66e3bbb8af53bd09f4e4_t_stringliteral_bef0de1b6ab64a87365883910640202cc923019a0642c3dc3ce8c92f70e2aec2_t_string_memory_ptr_t_stringliteral_f779b01e2c11d50446559da8a96e840c35be2177455b0699985122c52b0d1f4e_t_stringliteral_ec66f735b9269156d2621c7cb2e179cbb93736ea6dfc7db8bdd4441a81eb1f64_t_stringliteral_9172aa3905273de2038748a8a21d4c0caf162952597ab7af5f83d1a3c63cec1a_t_stringliteral_2f31b113ee3d3056d0911a5e394047e1383278908d2c52df748865318956703e_t_string_memory_ptr_t_stringliteral_b6aaa2c0b71922b19b9b8b146cc93d2f4e231e6b961d744f30cad118bc857ef8_t_string_memory_ptr_t_stringliteral_12c8706c8ed81675e674ab6c512d5560a6aee02a6795723026211fc0112724ea__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2, value3, value4, value5, value6, value7) -> end {

                            pos := abi_encode_t_stringliteral_a1d35662f193c8dca60ea626415bf453b6eb6f19f995eb4e725506bddb1c9b3c_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_stringliteral_ea677e503ab4e967d2570a008dd897c1687e0426ee06ab367778d22358bbd498_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                            pos := abi_encode_t_stringliteral_800ca0756ff976e45c222900c67e79662594eea8a3ec66e3bbb8af53bd09f4e4_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_stringliteral_e48f616382bc4db7da9436f22e091c88340d840be14446bdcabee6fb3c9ef913_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                            pos := abi_encode_t_stringliteral_0b7427e2f769aaaa13bde5b715b09255dc5398714a59a798afc7999c8e6ae7f0_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_stringliteral_fab582159965dc3537eef15a4898cfd495cdf6178ad5c39fe4f14de95021bcdd_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_stringliteral_ea677e503ab4e967d2570a008dd897c1687e0426ee06ab367778d22358bbd498_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                            pos := abi_encode_t_stringliteral_800ca0756ff976e45c222900c67e79662594eea8a3ec66e3bbb8af53bd09f4e4_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_stringliteral_5bc1bf3d11aae697778119ef346ad4842b7aeee3b48245084fb03eaf191c89a0_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value3,  pos)

                            pos := abi_encode_t_stringliteral_0b7427e2f769aaaa13bde5b715b09255dc5398714a59a798afc7999c8e6ae7f0_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_stringliteral_220105d546304f5c5e6ab619f93ed0540d9e75da2d2186101f3be7105ff28a8a_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_stringliteral_ea677e503ab4e967d2570a008dd897c1687e0426ee06ab367778d22358bbd498_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value4,  pos)

                            pos := abi_encode_t_stringliteral_800ca0756ff976e45c222900c67e79662594eea8a3ec66e3bbb8af53bd09f4e4_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_stringliteral_bef0de1b6ab64a87365883910640202cc923019a0642c3dc3ce8c92f70e2aec2_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value5,  pos)

                            pos := abi_encode_t_stringliteral_f779b01e2c11d50446559da8a96e840c35be2177455b0699985122c52b0d1f4e_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_stringliteral_ec66f735b9269156d2621c7cb2e179cbb93736ea6dfc7db8bdd4441a81eb1f64_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_stringliteral_9172aa3905273de2038748a8a21d4c0caf162952597ab7af5f83d1a3c63cec1a_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_stringliteral_2f31b113ee3d3056d0911a5e394047e1383278908d2c52df748865318956703e_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value6,  pos)

                            pos := abi_encode_t_stringliteral_b6aaa2c0b71922b19b9b8b146cc93d2f4e231e6b961d744f30cad118bc857ef8_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value7,  pos)

                            pos := abi_encode_t_stringliteral_12c8706c8ed81675e674ab6c512d5560a6aee02a6795723026211fc0112724ea_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            end := pos
                        }

                        /// @ast-id 26302
                        /// @src 149:14320:16869  "function generateSVGPositionDataAndLocationCurve(..."
                        function fun_generateSVGPositionDataAndLocationCurve_26302(var_tokenId_26174_mpos, var_tickLower_26176, var_tickUpper_26178) -> var_svg_26181_mpos {
                            /// @src 149:14478:14495  "string memory svg"
                            let zero_t_string_memory_ptr_893_mpos := zero_value_for_split_t_string_memory_ptr()
                            var_svg_26181_mpos := zero_t_string_memory_ptr_893_mpos

                            /// @src 149:14549:14558  "tickLower"
                            let _894 := var_tickLower_26176
                            let expr_26186 := _894
                            /// @src 149:14536:14559  "tickToString(tickLower)"
                            let expr_26187_mpos := fun_tickToString_26347(expr_26186)
                            /// @src 149:14507:14559  "string memory tickLowerStr = tickToString(tickLower)"
                            let var_tickLowerStr_26184_mpos := expr_26187_mpos
                            /// @src 149:14611:14620  "tickUpper"
                            let _895 := var_tickUpper_26178
                            let expr_26192 := _895
                            /// @src 149:14598:14621  "tickToString(tickUpper)"
                            let expr_26193_mpos := fun_tickToString_26347(expr_26192)
                            /// @src 149:14569:14621  "string memory tickUpperStr = tickToString(tickUpper)"
                            let var_tickUpperStr_26190_mpos := expr_26193_mpos
                            /// @src 149:14658:14665  "tokenId"
                            let _896_mpos := var_tokenId_26174_mpos
                            let expr_26199_mpos := _896_mpos
                            /// @src 149:14652:14666  "bytes(tokenId)"
                            let expr_26200_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_26199_mpos)
                            /// @src 149:14652:14673  "bytes(tokenId).length"
                            let expr_26201 := array_length_t_bytes_memory_ptr(expr_26200_mpos)
                            /// @src 149:14676:14677  "4"
                            let expr_26202 := 0x04
                            /// @src 149:14652:14677  "bytes(tokenId).length + 4"
                            let expr_26203 := checked_add_t_uint256(expr_26201, convert_t_rational_4_by_1_to_t_uint256(expr_26202))

                            /// @src 149:14631:14677  "uint256 str1length = bytes(tokenId).length + 4"
                            let var_str1length_26196 := expr_26203
                            /// @src 149:14714:14726  "tickLowerStr"
                            let _897_mpos := var_tickLowerStr_26184_mpos
                            let expr_26209_mpos := _897_mpos
                            /// @src 149:14708:14727  "bytes(tickLowerStr)"
                            let expr_26210_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_26209_mpos)
                            /// @src 149:14708:14734  "bytes(tickLowerStr).length"
                            let expr_26211 := array_length_t_bytes_memory_ptr(expr_26210_mpos)
                            /// @src 149:14737:14739  "10"
                            let expr_26212 := 0x0a
                            /// @src 149:14708:14739  "bytes(tickLowerStr).length + 10"
                            let expr_26213 := checked_add_t_uint256(expr_26211, convert_t_rational_10_by_1_to_t_uint256(expr_26212))

                            /// @src 149:14687:14739  "uint256 str2length = bytes(tickLowerStr).length + 10"
                            let var_str2length_26206 := expr_26213
                            /// @src 149:14776:14788  "tickUpperStr"
                            let _898_mpos := var_tickUpperStr_26190_mpos
                            let expr_26219_mpos := _898_mpos
                            /// @src 149:14770:14789  "bytes(tickUpperStr)"
                            let expr_26220_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_26219_mpos)
                            /// @src 149:14770:14796  "bytes(tickUpperStr).length"
                            let expr_26221 := array_length_t_bytes_memory_ptr(expr_26220_mpos)
                            /// @src 149:14799:14801  "10"
                            let expr_26222 := 0x0a
                            /// @src 149:14770:14801  "bytes(tickUpperStr).length + 10"
                            let expr_26223 := checked_add_t_uint256(expr_26221, convert_t_rational_10_by_1_to_t_uint256(expr_26222))

                            /// @src 149:14749:14801  "uint256 str3length = bytes(tickUpperStr).length + 10"
                            let var_str3length_26216 := expr_26223
                            /// @src 149:14872:14881  "tickLower"
                            let _899 := var_tickLower_26176
                            let expr_26230 := _899
                            /// @src 149:14883:14892  "tickUpper"
                            let _900 := var_tickUpper_26178
                            let expr_26231 := _900
                            /// @src 149:14858:14893  "rangeLocation(tickLower, tickUpper)"
                            let expr_26232_component_1_mpos, expr_26232_component_2_mpos := fun_rangeLocation_26458(expr_26230, expr_26231)
                            /// @src 149:14811:14893  "(string memory xCoord, string memory yCoord) = rangeLocation(tickLower, tickUpper)"
                            let var_xCoord_26226_mpos := expr_26232_component_1_mpos
                            let var_yCoord_26228_mpos := expr_26232_component_2_mpos
                            /// @src 149:15069:15070  "7"
                            let expr_26243 := 0x07
                            /// @src 149:15074:15084  "str1length"
                            let _901 := var_str1length_26196
                            let expr_26244 := _901
                            /// @src 149:15087:15088  "4"
                            let expr_26245 := 0x04
                            /// @src 149:15074:15088  "str1length + 4"
                            let expr_26246 := checked_add_t_uint256(expr_26244, convert_t_rational_4_by_1_to_t_uint256(expr_26245))

                            /// @src 149:15073:15089  "(str1length + 4)"
                            let expr_26247 := expr_26246
                            /// @src 149:15069:15089  "7 * (str1length + 4)"
                            let expr_26248 := checked_mul_t_uint256(convert_t_rational_7_by_1_to_t_uint256(expr_26243), expr_26247)

                            /// @src 149:15061:15090  "uint256(7 * (str1length + 4))"
                            let expr_26249 := expr_26248
                            /// @src 149:15061:15099  "uint256(7 * (str1length + 4)).toString"
                            let expr_26250_self := expr_26249
                            /// @src 149:15061:15101  "uint256(7 * (str1length + 4)).toString()"
                            let expr_26251_mpos := fun_toString_25008(expr_26250_self)
                            /// @src 149:15363:15370  "tokenId"
                            let _902_mpos := var_tokenId_26174_mpos
                            let expr_26254_mpos := _902_mpos
                            /// @src 149:15525:15526  "7"
                            let expr_26260 := 0x07
                            /// @src 149:15530:15540  "str2length"
                            let _903 := var_str2length_26206
                            let expr_26261 := _903
                            /// @src 149:15543:15544  "4"
                            let expr_26262 := 0x04
                            /// @src 149:15530:15544  "str2length + 4"
                            let expr_26263 := checked_add_t_uint256(expr_26261, convert_t_rational_4_by_1_to_t_uint256(expr_26262))

                            /// @src 149:15529:15545  "(str2length + 4)"
                            let expr_26264 := expr_26263
                            /// @src 149:15525:15545  "7 * (str2length + 4)"
                            let expr_26265 := checked_mul_t_uint256(convert_t_rational_7_by_1_to_t_uint256(expr_26260), expr_26264)

                            /// @src 149:15517:15546  "uint256(7 * (str2length + 4))"
                            let expr_26266 := expr_26265
                            /// @src 149:15517:15555  "uint256(7 * (str2length + 4)).toString"
                            let expr_26267_self := expr_26266
                            /// @src 149:15517:15557  "uint256(7 * (str2length + 4)).toString()"
                            let expr_26268_mpos := fun_toString_25008(expr_26267_self)
                            /// @src 149:15825:15837  "tickLowerStr"
                            let _904_mpos := var_tickLowerStr_26184_mpos
                            let expr_26271_mpos := _904_mpos
                            /// @src 149:15992:15993  "7"
                            let expr_26277 := 0x07
                            /// @src 149:15997:16007  "str3length"
                            let _905 := var_str3length_26216
                            let expr_26278 := _905
                            /// @src 149:16010:16011  "4"
                            let expr_26279 := 0x04
                            /// @src 149:15997:16011  "str3length + 4"
                            let expr_26280 := checked_add_t_uint256(expr_26278, convert_t_rational_4_by_1_to_t_uint256(expr_26279))

                            /// @src 149:15996:16012  "(str3length + 4)"
                            let expr_26281 := expr_26280
                            /// @src 149:15992:16012  "7 * (str3length + 4)"
                            let expr_26282 := checked_mul_t_uint256(convert_t_rational_7_by_1_to_t_uint256(expr_26277), expr_26281)

                            /// @src 149:15984:16013  "uint256(7 * (str3length + 4))"
                            let expr_26283 := expr_26282
                            /// @src 149:15984:16022  "uint256(7 * (str3length + 4)).toString"
                            let expr_26284_self := expr_26283
                            /// @src 149:15984:16024  "uint256(7 * (str3length + 4)).toString()"
                            let expr_26285_mpos := fun_toString_25008(expr_26284_self)
                            /// @src 149:16292:16304  "tickUpperStr"
                            let _906_mpos := var_tickUpperStr_26190_mpos
                            let expr_26288_mpos := _906_mpos
                            /// @src 149:16710:16716  "xCoord"
                            let _907_mpos := var_xCoord_26226_mpos
                            let expr_26293_mpos := _907_mpos
                            /// @src 149:16758:16764  "yCoord"
                            let _908_mpos := var_yCoord_26228_mpos
                            let expr_26295_mpos := _908_mpos
                            /// @src 149:14929:16852  "abi.encodePacked(..."

                            let expr_26297_mpos := allocate_unbounded()
                            let _909 := add(expr_26297_mpos, 0x20)

                            let _910 := abi_encode_tuple_packed_t_stringliteral_a1d35662f193c8dca60ea626415bf453b6eb6f19f995eb4e725506bddb1c9b3c_t_stringliteral_ea677e503ab4e967d2570a008dd897c1687e0426ee06ab367778d22358bbd498_t_string_memory_ptr_t_stringliteral_800ca0756ff976e45c222900c67e79662594eea8a3ec66e3bbb8af53bd09f4e4_t_stringliteral_e48f616382bc4db7da9436f22e091c88340d840be14446bdcabee6fb3c9ef913_t_string_memory_ptr_t_stringliteral_0b7427e2f769aaaa13bde5b715b09255dc5398714a59a798afc7999c8e6ae7f0_t_stringliteral_fab582159965dc3537eef15a4898cfd495cdf6178ad5c39fe4f14de95021bcdd_t_stringliteral_ea677e503ab4e967d2570a008dd897c1687e0426ee06ab367778d22358bbd498_t_string_memory_ptr_t_stringliteral_800ca0756ff976e45c222900c67e79662594eea8a3ec66e3bbb8af53bd09f4e4_t_stringliteral_5bc1bf3d11aae697778119ef346ad4842b7aeee3b48245084fb03eaf191c89a0_t_string_memory_ptr_t_stringliteral_0b7427e2f769aaaa13bde5b715b09255dc5398714a59a798afc7999c8e6ae7f0_t_stringliteral_220105d546304f5c5e6ab619f93ed0540d9e75da2d2186101f3be7105ff28a8a_t_stringliteral_ea677e503ab4e967d2570a008dd897c1687e0426ee06ab367778d22358bbd498_t_string_memory_ptr_t_stringliteral_800ca0756ff976e45c222900c67e79662594eea8a3ec66e3bbb8af53bd09f4e4_t_stringliteral_bef0de1b6ab64a87365883910640202cc923019a0642c3dc3ce8c92f70e2aec2_t_string_memory_ptr_t_stringliteral_f779b01e2c11d50446559da8a96e840c35be2177455b0699985122c52b0d1f4e_t_stringliteral_ec66f735b9269156d2621c7cb2e179cbb93736ea6dfc7db8bdd4441a81eb1f64_t_stringliteral_9172aa3905273de2038748a8a21d4c0caf162952597ab7af5f83d1a3c63cec1a_t_stringliteral_2f31b113ee3d3056d0911a5e394047e1383278908d2c52df748865318956703e_t_string_memory_ptr_t_stringliteral_b6aaa2c0b71922b19b9b8b146cc93d2f4e231e6b961d744f30cad118bc857ef8_t_string_memory_ptr_t_stringliteral_12c8706c8ed81675e674ab6c512d5560a6aee02a6795723026211fc0112724ea__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_909, expr_26251_mpos, expr_26254_mpos, expr_26268_mpos, expr_26271_mpos, expr_26285_mpos, expr_26288_mpos, expr_26293_mpos, expr_26295_mpos)
                            mstore(expr_26297_mpos, sub(_910, add(expr_26297_mpos, 0x20)))
                            finalize_allocation(expr_26297_mpos, sub(_910, expr_26297_mpos))
                            /// @src 149:14909:16862  "string(..."
                            let expr_26298_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_26297_mpos)
                            /// @src 149:14903:16862  "svg = string(..."
                            var_svg_26181_mpos := expr_26298_mpos
                            let _911_mpos := var_svg_26181_mpos
                            let expr_26299_mpos := _911_mpos

                        }
                        /// @src 148:613:18548  "library NFTDescriptor {..."

                        function store_literal_in_memory_b620537f4b9141f0600bc5c47da368c069fd5940c0d18c49f45f4f60c38c7276(memPtr) {

                            mstore(add(memPtr, 0), 0x3c67207374796c653d227472616e73666f726d3a7472616e736c617465283232)

                            mstore(add(memPtr, 32), 0x3670782c20333932707829223e3c726563742077696474683d22333670782220)

                            mstore(add(memPtr, 64), 0x6865696768743d2233367078222072783d22387078222072793d223870782220)

                            mstore(add(memPtr, 96), 0x66696c6c3d226e6f6e6522207374726f6b653d2272676261283235352c323535)

                            mstore(add(memPtr, 128), 0x2c3235352c302e322922202f3e00000000000000000000000000000000000000)

                        }

                        function abi_encode_t_stringliteral_b620537f4b9141f0600bc5c47da368c069fd5940c0d18c49f45f4f60c38c7276_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 141)
                            store_literal_in_memory_b620537f4b9141f0600bc5c47da368c069fd5940c0d18c49f45f4f60c38c7276(pos)
                            end := add(pos, 141)
                        }

                        function store_literal_in_memory_9146626b6016e55f44ab5e9e5bfcf47636d35086d1ea0e9bce56b7a6f4831ef4(memPtr) {

                            mstore(add(memPtr, 0), 0x3c673e3c70617468207374796c653d227472616e73666f726d3a7472616e736c)

                            mstore(add(memPtr, 32), 0x617465283670782c367078292220643d224d313220304c31322e363532322039)

                            mstore(add(memPtr, 64), ".56587L18 1.6077L13.7819 10.2181")

                            mstore(add(memPtr, 96), "L22.3923 6L14.4341 ")

                        }

                        function abi_encode_t_stringliteral_9146626b6016e55f44ab5e9e5bfcf47636d35086d1ea0e9bce56b7a6f4831ef4_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 115)
                            store_literal_in_memory_9146626b6016e55f44ab5e9e5bfcf47636d35086d1ea0e9bce56b7a6f4831ef4(pos)
                            end := add(pos, 115)
                        }

                        function store_literal_in_memory_80e2be066469ac86e096e4a497c1f8a9fc0d1b11356ae8a905f38331737d0215(memPtr) {

                            mstore(add(memPtr, 0), "11.3478L24 12L14.4341 12.6522L22")

                            mstore(add(memPtr, 32), ".3923 18L13.7819 13.7819L18 22.3")

                            mstore(add(memPtr, 64), "923L12.6522 14.4341L12 24L11.347")

                            mstore(add(memPtr, 96), "8 14.4341L6 22.39")

                        }

                        function abi_encode_t_stringliteral_80e2be066469ac86e096e4a497c1f8a9fc0d1b11356ae8a905f38331737d0215_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 113)
                            store_literal_in_memory_80e2be066469ac86e096e4a497c1f8a9fc0d1b11356ae8a905f38331737d0215(pos)
                            end := add(pos, 113)
                        }

                        function store_literal_in_memory_b5bc46fc2ed1d11f843f24feabdc206cab85902b15b95b355214f44b7cfde8e7(memPtr) {

                            mstore(add(memPtr, 0), "23L10.2181 13.7819L1.6077 18L9.5")

                            mstore(add(memPtr, 32), "6587 12.6522L0 12L9.56587 11.347")

                            mstore(add(memPtr, 64), "8L1.6077 6L10.2181 10.2181L6 1.6")

                            mstore(add(memPtr, 96), 0x3037374c31312e3334373820392e35363538374c313220305a222066696c6c3d)

                            mstore(add(memPtr, 128), 0x22776869746522202f3e00000000000000000000000000000000000000000000)

                        }

                        function abi_encode_t_stringliteral_b5bc46fc2ed1d11f843f24feabdc206cab85902b15b95b355214f44b7cfde8e7_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 138)
                            store_literal_in_memory_b5bc46fc2ed1d11f843f24feabdc206cab85902b15b95b355214f44b7cfde8e7(pos)
                            end := add(pos, 138)
                        }

                        function store_literal_in_memory_c4a75554270cae0d3a87478224f34b210600c80765754e633311ca3866647bf9(memPtr) {

                            mstore(add(memPtr, 0), "<animateTransform attributeName=")

                            mstore(add(memPtr, 32), 0x227472616e73666f726d2220747970653d22726f74617465222066726f6d3d22)

                            mstore(add(memPtr, 64), 0x302031382031382220746f3d2233363020313820313822206475723d22313073)

                            mstore(add(memPtr, 96), 0x2220726570656174436f756e743d22696e646566696e697465222f3e3c2f673e)

                            mstore(add(memPtr, 128), "</g>")

                        }

                        function abi_encode_t_stringliteral_c4a75554270cae0d3a87478224f34b210600c80765754e633311ca3866647bf9_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 132)
                            store_literal_in_memory_c4a75554270cae0d3a87478224f34b210600c80765754e633311ca3866647bf9(pos)
                            end := add(pos, 132)
                        }

                        function abi_encode_tuple_packed_t_stringliteral_b620537f4b9141f0600bc5c47da368c069fd5940c0d18c49f45f4f60c38c7276_t_stringliteral_9146626b6016e55f44ab5e9e5bfcf47636d35086d1ea0e9bce56b7a6f4831ef4_t_stringliteral_80e2be066469ac86e096e4a497c1f8a9fc0d1b11356ae8a905f38331737d0215_t_stringliteral_b5bc46fc2ed1d11f843f24feabdc206cab85902b15b95b355214f44b7cfde8e7_t_stringliteral_c4a75554270cae0d3a87478224f34b210600c80765754e633311ca3866647bf9__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos ) -> end {

                            pos := abi_encode_t_stringliteral_b620537f4b9141f0600bc5c47da368c069fd5940c0d18c49f45f4f60c38c7276_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_stringliteral_9146626b6016e55f44ab5e9e5bfcf47636d35086d1ea0e9bce56b7a6f4831ef4_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_stringliteral_80e2be066469ac86e096e4a497c1f8a9fc0d1b11356ae8a905f38331737d0215_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_stringliteral_b5bc46fc2ed1d11f843f24feabdc206cab85902b15b95b355214f44b7cfde8e7_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_stringliteral_c4a75554270cae0d3a87478224f34b210600c80765754e633311ca3866647bf9_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            end := pos
                        }

                        /// @ast-id 26493
                        /// @src 149:18048:19110  "function generateSVGRareSparkle(uint256 tokenId, address poolAddress) private pure returns (string memory svg) {..."
                        function fun_generateSVGRareSparkle_26493(var_tokenId_26460, var_poolAddress_26462) -> var_svg_26465_mpos {
                            /// @src 149:18140:18157  "string memory svg"
                            let zero_t_string_memory_ptr_912_mpos := zero_value_for_split_t_string_memory_ptr()
                            var_svg_26465_mpos := zero_t_string_memory_ptr_912_mpos

                            /// @src 149:18180:18187  "tokenId"
                            let _913 := var_tokenId_26460
                            let expr_26468 := _913
                            /// @src 149:18189:18200  "poolAddress"
                            let _914 := var_poolAddress_26462
                            let expr_26469 := _914
                            /// @src 149:18173:18201  "isRare(tokenId, poolAddress)"
                            let expr_26470 := fun_isRare_26534(expr_26468, expr_26469)
                            /// @src 149:18169:19104  "if (isRare(tokenId, poolAddress)) {..."
                            switch expr_26470
                            case 0 {
                                /// @src 149:19085:19093  "svg = ''"
                                var_svg_26465_mpos := convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_string_memory_ptr()
                                let _915_mpos := var_svg_26465_mpos
                                let expr_26488_mpos := _915_mpos
                                /// @src 149:18169:19104  "if (isRare(tokenId, poolAddress)) {..."
                            }
                            default {
                                /// @src 149:18247:19040  "abi.encodePacked(..."

                                let expr_26481_mpos := allocate_unbounded()
                                let _916 := add(expr_26481_mpos, 0x20)

                                let _917 := abi_encode_tuple_packed_t_stringliteral_b620537f4b9141f0600bc5c47da368c069fd5940c0d18c49f45f4f60c38c7276_t_stringliteral_9146626b6016e55f44ab5e9e5bfcf47636d35086d1ea0e9bce56b7a6f4831ef4_t_stringliteral_80e2be066469ac86e096e4a497c1f8a9fc0d1b11356ae8a905f38331737d0215_t_stringliteral_b5bc46fc2ed1d11f843f24feabdc206cab85902b15b95b355214f44b7cfde8e7_t_stringliteral_c4a75554270cae0d3a87478224f34b210600c80765754e633311ca3866647bf9__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_916)
                                mstore(expr_26481_mpos, sub(_917, add(expr_26481_mpos, 0x20)))
                                finalize_allocation(expr_26481_mpos, sub(_917, expr_26481_mpos))
                                /// @src 149:18223:19054  "string(..."
                                let expr_26482_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_26481_mpos)
                                /// @src 149:18217:19054  "svg = string(..."
                                var_svg_26465_mpos := expr_26482_mpos
                                let _918_mpos := var_svg_26465_mpos
                                let expr_26483_mpos := _918_mpos
                                /// @src 149:18169:19104  "if (isRare(tokenId, poolAddress)) {..."
                            }

                        }
                        /// @src 148:613:18548  "library NFTDescriptor {..."

                        function convert_t_uint256_to_t_int256(value) -> converted {
                            converted := cleanup_t_int256(identity(cleanup_t_uint256(value)))
                        }

                        function cleanup_t_rational_18_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_18_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_18_by_1(value)))
                        }

                        function cleanup_t_rational_1076067327063303206878105757264492625226_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_1076067327063303206878105757264492625226_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_1076067327063303206878105757264492625226_by_1(value)))
                        }

                        /// @src 148:868:938  "uint256 constant sqrt10X128 = 1076067327063303206878105757264492625226"
                        function constant_sqrt10X128_10769() -> ret {
                            /// @src 148:898:938  "1076067327063303206878105757264492625226"
                            let expr_10768 := 0x03298b075b4b6a5240945790619b37fd4a
                            let _933 := convert_t_rational_1076067327063303206878105757264492625226_by_1_to_t_uint256(expr_10768)

                            ret := _933
                        }

                        /// @ast-id 11559
                        /// @src 148:9758:10785  "function adjustForDecimalPrecision(..."
                        function fun_adjustForDecimalPrecision_11559(var_sqrtRatioX96_11443, var_baseTokenDecimals_11445, var_quoteTokenDecimals_11447) -> var_adjustedSqrtRatioX96_11450 {
                            /// @src 148:9918:9946  "uint256 adjustedSqrtRatioX96"
                            let zero_t_uint256_919 := zero_value_for_split_t_uint256()
                            var_adjustedSqrtRatioX96_11450 := zero_t_uint256_919

                            /// @src 148:9998:10015  "baseTokenDecimals"
                            let _920 := var_baseTokenDecimals_11445
                            let expr_11459 := _920
                            /// @src 148:9990:10016  "uint256(baseTokenDecimals)"
                            let expr_11460 := convert_t_uint8_to_t_uint256(expr_11459)
                            /// @src 148:9983:10017  "int256(uint256(baseTokenDecimals))"
                            let expr_11461 := convert_t_uint256_to_t_int256(expr_11460)
                            /// @src 148:9983:10021  "int256(uint256(baseTokenDecimals)).sub"
                            let expr_11462_self := expr_11461
                            /// @src 148:10034:10052  "quoteTokenDecimals"
                            let _921 := var_quoteTokenDecimals_11447
                            let expr_11467 := _921
                            /// @src 148:10029:10053  "uint(quoteTokenDecimals)"
                            let expr_11468 := convert_t_uint8_to_t_uint256(expr_11467)
                            /// @src 148:10022:10054  "int256(uint(quoteTokenDecimals))"
                            let expr_11469 := convert_t_uint256_to_t_int256(expr_11468)
                            /// @src 148:9983:10055  "int256(uint256(baseTokenDecimals)).sub(int256(uint(quoteTokenDecimals)))"
                            let expr_11470 := fun_sub_24908(expr_11462_self, expr_11469)
                            /// @src 148:9979:10056  "abs(int256(uint256(baseTokenDecimals)).sub(int256(uint(quoteTokenDecimals))))"
                            let expr_11471 := fun_abs_11578(expr_11470)
                            /// @src 148:9958:10056  "uint256 difference = abs(int256(uint256(baseTokenDecimals)).sub(int256(uint(quoteTokenDecimals))))"
                            let var_difference_11453 := expr_11471
                            /// @src 148:10070:10080  "difference"
                            let _922 := var_difference_11453
                            let expr_11473 := _922
                            /// @src 148:10083:10084  "0"
                            let expr_11474 := 0x00
                            /// @src 148:10070:10084  "difference > 0"
                            let expr_11475 := gt(cleanup_t_uint256(expr_11473), convert_t_rational_0_by_1_to_t_uint256(expr_11474))
                            /// @src 148:10070:10104  "difference > 0 && difference <= 18"
                            let expr_11479 := expr_11475
                            if expr_11479 {
                                /// @src 148:10088:10098  "difference"
                                let _923 := var_difference_11453
                                let expr_11476 := _923
                                /// @src 148:10102:10104  "18"
                                let expr_11477 := 0x12
                                /// @src 148:10088:10104  "difference <= 18"
                                let expr_11478 := iszero(gt(cleanup_t_uint256(expr_11476), convert_t_rational_18_by_1_to_t_uint256(expr_11477)))
                                /// @src 148:10070:10104  "difference > 0 && difference <= 18"
                                expr_11479 := expr_11478
                            }
                            /// @src 148:10066:10779  "if (difference > 0 && difference <= 18) {..."
                            switch expr_11479
                            case 0 {
                                /// @src 148:10755:10767  "sqrtRatioX96"
                                let _924 := var_sqrtRatioX96_11443
                                let expr_11552 := _924
                                /// @src 148:10747:10768  "uint256(sqrtRatioX96)"
                                let expr_11553 := convert_t_uint160_to_t_uint256(expr_11552)
                                /// @src 148:10724:10768  "adjustedSqrtRatioX96 = uint256(sqrtRatioX96)"
                                var_adjustedSqrtRatioX96_11450 := expr_11553
                                let expr_11554 := expr_11553
                                /// @src 148:10066:10779  "if (difference > 0 && difference <= 18) {..."
                            }
                            default {
                                /// @src 148:10124:10141  "baseTokenDecimals"
                                let _925 := var_baseTokenDecimals_11445
                                let expr_11480 := _925
                                /// @src 148:10144:10162  "quoteTokenDecimals"
                                let _926 := var_quoteTokenDecimals_11447
                                let expr_11481 := _926
                                /// @src 148:10124:10162  "baseTokenDecimals > quoteTokenDecimals"
                                let expr_11482 := gt(cleanup_t_uint8(expr_11480), cleanup_t_uint8(expr_11481))
                                /// @src 148:10120:10694  "if (baseTokenDecimals > quoteTokenDecimals) {..."
                                switch expr_11482
                                case 0 {
                                    /// @src 148:10473:10485  "sqrtRatioX96"
                                    let _927 := var_sqrtRatioX96_11443
                                    let expr_11516 := _927
                                    /// @src 148:10473:10489  "sqrtRatioX96.div"
                                    let expr_11517_self := convert_t_uint160_to_t_uint256(expr_11516)
                                    /// @src 148:10490:10492  "10"
                                    let expr_11518 := 0x0a
                                    /// @src 148:10495:10505  "difference"
                                    let _928 := var_difference_11453
                                    let expr_11519 := _928
                                    /// @src 148:10495:10509  "difference.div"
                                    let expr_11520_self := expr_11519
                                    /// @src 148:10510:10511  "2"
                                    let expr_11521 := 0x02
                                    /// @src 148:10495:10512  "difference.div(2)"
                                    let _929 := convert_t_rational_2_by_1_to_t_uint256(expr_11521)
                                    let expr_11522 := fun_div_5893(expr_11520_self, _929)
                                    /// @src 148:10494:10513  "(difference.div(2))"
                                    let expr_11523 := expr_11522
                                    /// @src 148:10490:10513  "10**(difference.div(2))"
                                    let _930 := convert_t_rational_10_by_1_to_t_uint256(expr_11518)
                                    let expr_11524 := checked_exp_t_rational_10_by_1_t_uint256(expr_11523)
                                    /// @src 148:10473:10514  "sqrtRatioX96.div(10**(difference.div(2)))"
                                    let expr_11525 := fun_div_5893(expr_11517_self, expr_11524)
                                    /// @src 148:10450:10514  "adjustedSqrtRatioX96 = sqrtRatioX96.div(10**(difference.div(2)))"
                                    var_adjustedSqrtRatioX96_11450 := expr_11525
                                    let expr_11526 := expr_11525
                                    /// @src 148:10536:10546  "difference"
                                    let _931 := var_difference_11453
                                    let expr_11528 := _931
                                    /// @src 148:10549:10550  "2"
                                    let expr_11529 := 0x02
                                    /// @src 148:10536:10550  "difference % 2"
                                    let expr_11530 := mod_t_uint256(expr_11528, convert_t_rational_2_by_1_to_t_uint256(expr_11529))

                                    /// @src 148:10554:10555  "1"
                                    let expr_11531 := 0x01
                                    /// @src 148:10536:10555  "difference % 2 == 1"
                                    let expr_11532 := eq(cleanup_t_uint256(expr_11530), convert_t_rational_1_by_1_to_t_uint256(expr_11531))
                                    /// @src 148:10532:10680  "if (difference % 2 == 1) {..."
                                    if expr_11532 {
                                        /// @src 148:10602:10610  "FullMath"
                                        let expr_11534_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                                        /// @src 148:10618:10638  "adjustedSqrtRatioX96"
                                        let _932 := var_adjustedSqrtRatioX96_11450
                                        let expr_11536 := _932
                                        /// @src 148:10640:10648  "1 << 128"
                                        let expr_11539 := 0x0100000000000000000000000000000000
                                        /// @src 148:10650:10660  "sqrt10X128"
                                        let expr_11540 := constant_sqrt10X128_10769()
                                        /// @src 148:10602:10661  "FullMath.mulDiv(adjustedSqrtRatioX96, 1 << 128, sqrt10X128)"
                                        let _934 := convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(expr_11539)
                                        let expr_11541 := fun_mulDiv_9388(expr_11536, _934, expr_11540)
                                        /// @src 148:10579:10661  "adjustedSqrtRatioX96 = FullMath.mulDiv(adjustedSqrtRatioX96, 1 << 128, sqrt10X128)"
                                        var_adjustedSqrtRatioX96_11450 := expr_11541
                                        let expr_11542 := expr_11541
                                        /// @src 148:10532:10680  "if (difference % 2 == 1) {..."
                                    }
                                    /// @src 148:10120:10694  "if (baseTokenDecimals > quoteTokenDecimals) {..."
                                }
                                default {
                                    /// @src 148:10205:10217  "sqrtRatioX96"
                                    let _935 := var_sqrtRatioX96_11443
                                    let expr_11484 := _935
                                    /// @src 148:10205:10221  "sqrtRatioX96.mul"
                                    let expr_11485_self := convert_t_uint160_to_t_uint256(expr_11484)
                                    /// @src 148:10222:10224  "10"
                                    let expr_11486 := 0x0a
                                    /// @src 148:10227:10237  "difference"
                                    let _936 := var_difference_11453
                                    let expr_11487 := _936
                                    /// @src 148:10227:10241  "difference.div"
                                    let expr_11488_self := expr_11487
                                    /// @src 148:10242:10243  "2"
                                    let expr_11489 := 0x02
                                    /// @src 148:10227:10244  "difference.div(2)"
                                    let _937 := convert_t_rational_2_by_1_to_t_uint256(expr_11489)
                                    let expr_11490 := fun_div_5893(expr_11488_self, _937)
                                    /// @src 148:10226:10245  "(difference.div(2))"
                                    let expr_11491 := expr_11490
                                    /// @src 148:10222:10245  "10**(difference.div(2))"
                                    let _938 := convert_t_rational_10_by_1_to_t_uint256(expr_11486)
                                    let expr_11492 := checked_exp_t_rational_10_by_1_t_uint256(expr_11491)
                                    /// @src 148:10205:10246  "sqrtRatioX96.mul(10**(difference.div(2)))"
                                    let expr_11493 := fun_mul_5871(expr_11485_self, expr_11492)
                                    /// @src 148:10182:10246  "adjustedSqrtRatioX96 = sqrtRatioX96.mul(10**(difference.div(2)))"
                                    var_adjustedSqrtRatioX96_11450 := expr_11493
                                    let expr_11494 := expr_11493
                                    /// @src 148:10268:10278  "difference"
                                    let _939 := var_difference_11453
                                    let expr_11496 := _939
                                    /// @src 148:10281:10282  "2"
                                    let expr_11497 := 0x02
                                    /// @src 148:10268:10282  "difference % 2"
                                    let expr_11498 := mod_t_uint256(expr_11496, convert_t_rational_2_by_1_to_t_uint256(expr_11497))

                                    /// @src 148:10286:10287  "1"
                                    let expr_11499 := 0x01
                                    /// @src 148:10268:10287  "difference % 2 == 1"
                                    let expr_11500 := eq(cleanup_t_uint256(expr_11498), convert_t_rational_1_by_1_to_t_uint256(expr_11499))
                                    /// @src 148:10264:10412  "if (difference % 2 == 1) {..."
                                    if expr_11500 {
                                        /// @src 148:10334:10342  "FullMath"
                                        let expr_11502_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/FullMath.sol:FullMath")
                                        /// @src 148:10350:10370  "adjustedSqrtRatioX96"
                                        let _940 := var_adjustedSqrtRatioX96_11450
                                        let expr_11504 := _940
                                        /// @src 148:10372:10382  "sqrt10X128"
                                        let expr_11505 := constant_sqrt10X128_10769()
                                        /// @src 148:10384:10392  "1 << 128"
                                        let expr_11508 := 0x0100000000000000000000000000000000
                                        /// @src 148:10334:10393  "FullMath.mulDiv(adjustedSqrtRatioX96, sqrt10X128, 1 << 128)"
                                        let _941 := convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(expr_11508)
                                        let expr_11509 := fun_mulDiv_9388(expr_11504, expr_11505, _941)
                                        /// @src 148:10311:10393  "adjustedSqrtRatioX96 = FullMath.mulDiv(adjustedSqrtRatioX96, sqrt10X128, 1 << 128)"
                                        var_adjustedSqrtRatioX96_11450 := expr_11509
                                        let expr_11510 := expr_11509
                                        /// @src 148:10264:10412  "if (difference % 2 == 1) {..."
                                    }
                                    /// @src 148:10120:10694  "if (baseTokenDecimals > quoteTokenDecimals) {..."
                                }
                                /// @src 148:10066:10779  "if (difference > 0 && difference <= 18) {..."
                            }

                        }
                        /// @src 148:613:18548  "library NFTDescriptor {..."

                        function require_helper(condition) {
                            if iszero(condition) { revert(0, 0) }
                        }

                        /// @ast-id 9388
                        /// @src 108:779:4558  "function mulDiv(..."
                        function fun_mulDiv_9388(var_a_9263, var_b_9265, var_denominator_9267) -> var_result_9270 {
                            /// @src 108:891:905  "uint256 result"
                            let zero_t_uint256_942 := zero_value_for_split_t_uint256()
                            var_result_9270 := zero_t_uint256_942

                            /// @src 108:1220:1233  "uint256 prod0"
                            let var_prod0_9273
                            let zero_t_uint256_943 := zero_value_for_split_t_uint256()
                            var_prod0_9273 := zero_t_uint256_943
                            /// @src 108:1288:1301  "uint256 prod1"
                            let var_prod1_9276
                            let zero_t_uint256_944 := zero_value_for_split_t_uint256()
                            var_prod1_9276 := zero_t_uint256_944
                            /// @src 108:1355:1505  "assembly {..."
                            {
                                let usr$mm := mulmod(var_a_9263, var_b_9265, not(0))
                                var_prod0_9273 := mul(var_a_9263, var_b_9265)
                                var_prod1_9276 := sub(sub(usr$mm, var_prod0_9273), lt(usr$mm, var_prod0_9273))
                            }
                            /// @src 108:1577:1582  "prod1"
                            let _945 := var_prod1_9276
                            let expr_9279 := _945
                            /// @src 108:1586:1587  "0"
                            let expr_9280 := 0x00
                            /// @src 108:1577:1587  "prod1 == 0"
                            let expr_9281 := eq(cleanup_t_uint256(expr_9279), convert_t_rational_0_by_1_to_t_uint256(expr_9280))
                            /// @src 108:1573:1752  "if (prod1 == 0) {..."
                            if expr_9281 {
                                /// @src 108:1611:1622  "denominator"
                                let _946 := var_denominator_9267
                                let expr_9283 := _946
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
                                let _947 := var_result_9270
                                let expr_9289 := _947
                                /// @src 108:1728:1741  "return result"
                                var_result_9270 := expr_9289
                                leave
                                /// @src 108:1573:1752  "if (prod1 == 0) {..."
                            }
                            /// @src 108:1865:1876  "denominator"
                            let _948 := var_denominator_9267
                            let expr_9294 := _948
                            /// @src 108:1879:1884  "prod1"
                            let _949 := var_prod1_9276
                            let expr_9295 := _949
                            /// @src 108:1865:1884  "denominator > prod1"
                            let expr_9296 := gt(cleanup_t_uint256(expr_9294), cleanup_t_uint256(expr_9295))
                            /// @src 108:1857:1885  "require(denominator > prod1)"
                            require_helper(expr_9296)
                            /// @src 108:2162:2179  "uint256 remainder"
                            let var_remainder_9300
                            let zero_t_uint256_950 := zero_value_for_split_t_uint256()
                            var_remainder_9300 := zero_t_uint256_950
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
                            let _951 := var_denominator_9267
                            let expr_9307 := _951
                            /// @src 108:2606:2619  "0-denominator"
                            let expr_9308 := checked_sub_t_uint256(convert_t_rational_0_by_1_to_t_uint256(expr_9306), expr_9307)

                            /// @src 108:2605:2620  "(0-denominator)"
                            let expr_9309 := expr_9308
                            /// @src 108:2623:2634  "denominator"
                            let _952 := var_denominator_9267
                            let expr_9310 := _952
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
                            let _953 := var_prod1_9276
                            let expr_9317 := _953
                            /// @src 108:3159:3163  "twos"
                            let _954 := var_twos_9305
                            let expr_9318 := _954
                            /// @src 108:3151:3163  "prod1 * twos"
                            let expr_9319 := checked_mul_t_uint256(expr_9317, expr_9318)

                            /// @src 108:3142:3163  "prod0 |= prod1 * twos"
                            let _955 := var_prod0_9273
                            let expr_9320 := or(_955, expr_9319)

                            var_prod0_9273 := expr_9320
                            /// @src 108:3512:3513  "3"
                            let expr_9324 := 0x03
                            /// @src 108:3516:3527  "denominator"
                            let _956 := var_denominator_9267
                            let expr_9325 := _956
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
                            let _957 := var_denominator_9267
                            let expr_9333 := _957
                            /// @src 108:3772:3775  "inv"
                            let _958 := var_inv_9323
                            let expr_9334 := _958
                            /// @src 108:3758:3775  "denominator * inv"
                            let expr_9335 := checked_mul_t_uint256(expr_9333, expr_9334)

                            /// @src 108:3754:3775  "2 - denominator * inv"
                            let expr_9336 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9332), expr_9335)

                            /// @src 108:3747:3775  "inv *= 2 - denominator * inv"
                            let _959 := var_inv_9323
                            let expr_9337 := checked_mul_t_uint256(_959, expr_9336)

                            var_inv_9323 := expr_9337
                            /// @src 108:3812:3813  "2"
                            let expr_9340 := 0x02
                            /// @src 108:3816:3827  "denominator"
                            let _960 := var_denominator_9267
                            let expr_9341 := _960
                            /// @src 108:3830:3833  "inv"
                            let _961 := var_inv_9323
                            let expr_9342 := _961
                            /// @src 108:3816:3833  "denominator * inv"
                            let expr_9343 := checked_mul_t_uint256(expr_9341, expr_9342)

                            /// @src 108:3812:3833  "2 - denominator * inv"
                            let expr_9344 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9340), expr_9343)

                            /// @src 108:3805:3833  "inv *= 2 - denominator * inv"
                            let _962 := var_inv_9323
                            let expr_9345 := checked_mul_t_uint256(_962, expr_9344)

                            var_inv_9323 := expr_9345
                            /// @src 108:3871:3872  "2"
                            let expr_9348 := 0x02
                            /// @src 108:3875:3886  "denominator"
                            let _963 := var_denominator_9267
                            let expr_9349 := _963
                            /// @src 108:3889:3892  "inv"
                            let _964 := var_inv_9323
                            let expr_9350 := _964
                            /// @src 108:3875:3892  "denominator * inv"
                            let expr_9351 := checked_mul_t_uint256(expr_9349, expr_9350)

                            /// @src 108:3871:3892  "2 - denominator * inv"
                            let expr_9352 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9348), expr_9351)

                            /// @src 108:3864:3892  "inv *= 2 - denominator * inv"
                            let _965 := var_inv_9323
                            let expr_9353 := checked_mul_t_uint256(_965, expr_9352)

                            var_inv_9323 := expr_9353
                            /// @src 108:3930:3931  "2"
                            let expr_9356 := 0x02
                            /// @src 108:3934:3945  "denominator"
                            let _966 := var_denominator_9267
                            let expr_9357 := _966
                            /// @src 108:3948:3951  "inv"
                            let _967 := var_inv_9323
                            let expr_9358 := _967
                            /// @src 108:3934:3951  "denominator * inv"
                            let expr_9359 := checked_mul_t_uint256(expr_9357, expr_9358)

                            /// @src 108:3930:3951  "2 - denominator * inv"
                            let expr_9360 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9356), expr_9359)

                            /// @src 108:3923:3951  "inv *= 2 - denominator * inv"
                            let _968 := var_inv_9323
                            let expr_9361 := checked_mul_t_uint256(_968, expr_9360)

                            var_inv_9323 := expr_9361
                            /// @src 108:3989:3990  "2"
                            let expr_9364 := 0x02
                            /// @src 108:3993:4004  "denominator"
                            let _969 := var_denominator_9267
                            let expr_9365 := _969
                            /// @src 108:4007:4010  "inv"
                            let _970 := var_inv_9323
                            let expr_9366 := _970
                            /// @src 108:3993:4010  "denominator * inv"
                            let expr_9367 := checked_mul_t_uint256(expr_9365, expr_9366)

                            /// @src 108:3989:4010  "2 - denominator * inv"
                            let expr_9368 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9364), expr_9367)

                            /// @src 108:3982:4010  "inv *= 2 - denominator * inv"
                            let _971 := var_inv_9323
                            let expr_9369 := checked_mul_t_uint256(_971, expr_9368)

                            var_inv_9323 := expr_9369
                            /// @src 108:4049:4050  "2"
                            let expr_9372 := 0x02
                            /// @src 108:4053:4064  "denominator"
                            let _972 := var_denominator_9267
                            let expr_9373 := _972
                            /// @src 108:4067:4070  "inv"
                            let _973 := var_inv_9323
                            let expr_9374 := _973
                            /// @src 108:4053:4070  "denominator * inv"
                            let expr_9375 := checked_mul_t_uint256(expr_9373, expr_9374)

                            /// @src 108:4049:4070  "2 - denominator * inv"
                            let expr_9376 := checked_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_9372), expr_9375)

                            /// @src 108:4042:4070  "inv *= 2 - denominator * inv"
                            let _974 := var_inv_9323
                            let expr_9377 := checked_mul_t_uint256(_974, expr_9376)

                            var_inv_9323 := expr_9377
                            /// @src 108:4517:4522  "prod0"
                            let _975 := var_prod0_9273
                            let expr_9380 := _975
                            /// @src 108:4525:4528  "inv"
                            let _976 := var_inv_9323
                            let expr_9381 := _976
                            /// @src 108:4517:4528  "prod0 * inv"
                            let expr_9382 := checked_mul_t_uint256(expr_9380, expr_9381)

                            /// @src 108:4508:4528  "result = prod0 * inv"
                            var_result_9270 := expr_9382
                            let expr_9383 := expr_9382
                            /// @src 108:4545:4551  "result"
                            let _977 := var_result_9270
                            let expr_9385 := _977
                            /// @src 108:4538:4551  "return result"
                            var_result_9270 := expr_9385
                            leave

                        }
                        /// @src 148:613:18548  "library NFTDescriptor {..."

                        function zero_value_for_split_t_bool() -> ret {
                            ret := 0
                        }

                        function checked_exp_t_rational_10_by_1_t_uint8(exponent) -> power {
                            exponent := cleanup_t_uint8(exponent)

                            if gt(exponent, 77) { panic_error_0x11() }

                            power := exp(10, exponent)
                        }

                        /// @ast-id 11441
                        /// @src 148:9227:9752  "function sigfigsRounded(uint256 value, uint8 digits) private pure returns (uint256, bool) {..."
                        function fun_sigfigsRounded_11441(var_value_11369, var_digits_11371) -> var__11374, var__11376 {
                            /// @src 148:9302:9309  "uint256"
                            let zero_t_uint256_978 := zero_value_for_split_t_uint256()
                            var__11374 := zero_t_uint256_978
                            /// @src 148:9311:9315  "bool"
                            let zero_t_bool_979 := zero_value_for_split_t_bool()
                            var__11376 := zero_t_bool_979

                            /// @src 148:9327:9342  "bool extraDigit"
                            let var_extraDigit_11379
                            let zero_t_bool_980 := zero_value_for_split_t_bool()
                            var_extraDigit_11379 := zero_t_bool_980
                            /// @src 148:9356:9362  "digits"
                            let _981 := var_digits_11371
                            let expr_11381 := _981
                            /// @src 148:9365:9366  "5"
                            let expr_11382 := 0x05
                            /// @src 148:9356:9366  "digits > 5"
                            let expr_11383 := gt(cleanup_t_uint8(expr_11381), convert_t_rational_5_by_1_to_t_uint8(expr_11382))
                            /// @src 148:9352:9430  "if (digits > 5) {..."
                            if expr_11383 {
                                /// @src 148:9390:9395  "value"
                                let _982 := var_value_11369
                                let expr_11385 := _982
                                /// @src 148:9390:9399  "value.div"
                                let expr_11386_self := expr_11385
                                /// @src 148:9401:9403  "10"
                                let expr_11387 := 0x0a
                                /// @src 148:9406:9412  "digits"
                                let _983 := var_digits_11371
                                let expr_11388 := _983
                                /// @src 148:9415:9416  "5"
                                let expr_11389 := 0x05
                                /// @src 148:9406:9416  "digits - 5"
                                let expr_11390 := checked_sub_t_uint8(expr_11388, convert_t_rational_5_by_1_to_t_uint8(expr_11389))

                                /// @src 148:9405:9417  "(digits - 5)"
                                let expr_11391 := expr_11390
                                /// @src 148:9401:9417  "10**(digits - 5)"
                                let _984 := convert_t_rational_10_by_1_to_t_uint256(expr_11387)
                                let expr_11392 := checked_exp_t_rational_10_by_1_t_uint8(expr_11391)
                                /// @src 148:9400:9418  "(10**(digits - 5))"
                                let expr_11393 := expr_11392
                                /// @src 148:9390:9419  "value.div((10**(digits - 5)))"
                                let expr_11394 := fun_div_5893(expr_11386_self, expr_11393)
                                /// @src 148:9382:9419  "value = value.div((10**(digits - 5)))"
                                var_value_11369 := expr_11394
                                let expr_11395 := expr_11394
                                /// @src 148:9352:9430  "if (digits > 5) {..."
                            }
                            /// @src 148:9454:9459  "value"
                            let _985 := var_value_11369
                            let expr_11401 := _985
                            /// @src 148:9462:9464  "10"
                            let expr_11402 := 0x0a
                            /// @src 148:9454:9464  "value % 10"
                            let expr_11403 := mod_t_uint256(expr_11401, convert_t_rational_10_by_1_to_t_uint256(expr_11402))

                            /// @src 148:9467:9468  "4"
                            let expr_11404 := 0x04
                            /// @src 148:9454:9468  "value % 10 > 4"
                            let expr_11405 := gt(cleanup_t_uint256(expr_11403), convert_t_rational_4_by_1_to_t_uint256(expr_11404))
                            /// @src 148:9439:9468  "bool roundUp = value % 10 > 4"
                            let var_roundUp_11400 := expr_11405
                            /// @src 148:9486:9491  "value"
                            let _986 := var_value_11369
                            let expr_11408 := _986
                            /// @src 148:9486:9495  "value.div"
                            let expr_11409_self := expr_11408
                            /// @src 148:9496:9498  "10"
                            let expr_11410 := 0x0a
                            /// @src 148:9486:9499  "value.div(10)"
                            let _987 := convert_t_rational_10_by_1_to_t_uint256(expr_11410)
                            let expr_11411 := fun_div_5893(expr_11409_self, _987)
                            /// @src 148:9478:9499  "value = value.div(10)"
                            var_value_11369 := expr_11411
                            let expr_11412 := expr_11411
                            /// @src 148:9513:9520  "roundUp"
                            let _988 := var_roundUp_11400
                            let expr_11414 := _988
                            /// @src 148:9509:9564  "if (roundUp) {..."
                            if expr_11414 {
                                /// @src 148:9544:9549  "value"
                                let _989 := var_value_11369
                                let expr_11416 := _989
                                /// @src 148:9552:9553  "1"
                                let expr_11417 := 0x01
                                /// @src 148:9544:9553  "value + 1"
                                let expr_11418 := checked_add_t_uint256(expr_11416, convert_t_rational_1_by_1_to_t_uint256(expr_11417))

                                /// @src 148:9536:9553  "value = value + 1"
                                var_value_11369 := expr_11418
                                let expr_11419 := expr_11418
                                /// @src 148:9509:9564  "if (roundUp) {..."
                            }
                            /// @src 148:9626:9631  "value"
                            let _990 := var_value_11369
                            let expr_11423 := _990
                            /// @src 148:9635:9641  "100000"
                            let expr_11424 := 0x0186a0
                            /// @src 148:9626:9641  "value == 100000"
                            let expr_11425 := eq(cleanup_t_uint256(expr_11423), convert_t_rational_100000_by_1_to_t_uint256(expr_11424))
                            /// @src 148:9622:9710  "if (value == 100000) {..."
                            if expr_11425 {
                                /// @src 148:9666:9668  "10"
                                let expr_11427 := 0x0a
                                /// @src 148:9657:9668  "value /= 10"
                                let _991 := convert_t_rational_10_by_1_to_t_uint256(expr_11427)
                                let _992 := var_value_11369
                                let expr_11428 := checked_div_t_uint256(_992, _991)

                                var_value_11369 := expr_11428
                                /// @src 148:9695:9699  "true"
                                let expr_11431 := 0x01
                                /// @src 148:9682:9699  "extraDigit = true"
                                var_extraDigit_11379 := expr_11431
                                let expr_11432 := expr_11431
                                /// @src 148:9622:9710  "if (value == 100000) {..."
                            }
                            /// @src 148:9727:9732  "value"
                            let _993 := var_value_11369
                            let expr_11436 := _993
                            /// @src 148:9726:9745  "(value, extraDigit)"
                            let expr_11438_component_1 := expr_11436
                            /// @src 148:9734:9744  "extraDigit"
                            let _994 := var_extraDigit_11379
                            let expr_11437 := _994
                            /// @src 148:9726:9745  "(value, extraDigit)"
                            let expr_11438_component_2 := expr_11437
                            /// @src 148:9719:9745  "return (value, extraDigit)"
                            var__11374 := expr_11438_component_1
                            var__11376 := expr_11438_component_2
                            leave

                        }
                        /// @src 148:613:18548  "library NFTDescriptor {..."

                        function checked_sub_t_int24(x, y) -> diff {
                            x := cleanup_t_int24(x)
                            y := cleanup_t_int24(y)
                            diff := sub(x, y)

                            if or(
                                slt(diff, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff800000),
                                sgt(diff, 0x7fffff)
                            ) { panic_error_0x11() }

                        }

                        function convert_t_rational_4_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_4_by_1(value)))
                        }

                        function convert_t_rational_8_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_8_by_1(value)))
                        }

                        function convert_t_rational_16_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_16_by_1(value)))
                        }

                        function convert_t_rational_32_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_32_by_1(value)))
                        }

                        function convert_t_rational_64_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_64_by_1(value)))
                        }

                        function convert_t_rational_128_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_128_by_1(value)))
                        }

                        function convert_t_rational_256_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_256_by_1(value)))
                        }

                        function store_literal_in_memory_f1e029a7f41ea102af4e57ea0d785f94c25b7ac793220e0d87921d75f54f4efb(memPtr) {

                            mstore(add(memPtr, 0), "M1 1C1 97 49 145 145 145")

                        }

                        function copy_literal_to_memory_f1e029a7f41ea102af4e57ea0d785f94c25b7ac793220e0d87921d75f54f4efb() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(24)
                            store_literal_in_memory_f1e029a7f41ea102af4e57ea0d785f94c25b7ac793220e0d87921d75f54f4efb(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_f1e029a7f41ea102af4e57ea0d785f94c25b7ac793220e0d87921d75f54f4efb_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_f1e029a7f41ea102af4e57ea0d785f94c25b7ac793220e0d87921d75f54f4efb()
                        }

                        /// @src 149:814:865  "string constant curve8 = 'M1 1C1 97 49 145 145 145'"
                        function constant_curve8_25625() -> ret_mpos {
                            /// @src 149:839:865  "'M1 1C1 97 49 145 145 145'"
                            let _1006_mpos := convert_t_stringliteral_f1e029a7f41ea102af4e57ea0d785f94c25b7ac793220e0d87921d75f54f4efb_to_t_string_memory_ptr()

                            ret_mpos := _1006_mpos
                        }

                        function store_literal_in_memory_1db24bbb939047c658a72481b4226e8a8e415c26fa4e6ddd83d47b63a606cb86(memPtr) {

                            mstore(add(memPtr, 0), "M1 1C1 89 57.5 145 145 145")

                        }

                        function copy_literal_to_memory_1db24bbb939047c658a72481b4226e8a8e415c26fa4e6ddd83d47b63a606cb86() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(26)
                            store_literal_in_memory_1db24bbb939047c658a72481b4226e8a8e415c26fa4e6ddd83d47b63a606cb86(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_1db24bbb939047c658a72481b4226e8a8e415c26fa4e6ddd83d47b63a606cb86_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_1db24bbb939047c658a72481b4226e8a8e415c26fa4e6ddd83d47b63a606cb86()
                        }

                        /// @src 149:755:808  "string constant curve7 = 'M1 1C1 89 57.5 145 145 145'"
                        function constant_curve7_25622() -> ret_mpos {
                            /// @src 149:780:808  "'M1 1C1 89 57.5 145 145 145'"
                            let _1008_mpos := convert_t_stringliteral_1db24bbb939047c658a72481b4226e8a8e415c26fa4e6ddd83d47b63a606cb86_to_t_string_memory_ptr()

                            ret_mpos := _1008_mpos
                        }

                        function store_literal_in_memory_3f7e53cb3d26a3b491cbe62836312e9b657aaf452ae18b92a58db671182a062e(memPtr) {

                            mstore(add(memPtr, 0), "M1 1C9 81 65 137 145 145")

                        }

                        function copy_literal_to_memory_3f7e53cb3d26a3b491cbe62836312e9b657aaf452ae18b92a58db671182a062e() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(24)
                            store_literal_in_memory_3f7e53cb3d26a3b491cbe62836312e9b657aaf452ae18b92a58db671182a062e(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_3f7e53cb3d26a3b491cbe62836312e9b657aaf452ae18b92a58db671182a062e_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_3f7e53cb3d26a3b491cbe62836312e9b657aaf452ae18b92a58db671182a062e()
                        }

                        /// @src 149:698:749  "string constant curve6 = 'M1 1C9 81 65 137 145 145'"
                        function constant_curve6_25619() -> ret_mpos {
                            /// @src 149:723:749  "'M1 1C9 81 65 137 145 145'"
                            let _1010_mpos := convert_t_stringliteral_3f7e53cb3d26a3b491cbe62836312e9b657aaf452ae18b92a58db671182a062e_to_t_string_memory_ptr()

                            ret_mpos := _1010_mpos
                        }

                        function store_literal_in_memory_9b14335fc8297fb7eb065580ff702df1c930607443996beb2a1041afecea2de5(memPtr) {

                            mstore(add(memPtr, 0), "M1 1C17 73 73 129 145 145")

                        }

                        function copy_literal_to_memory_9b14335fc8297fb7eb065580ff702df1c930607443996beb2a1041afecea2de5() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(25)
                            store_literal_in_memory_9b14335fc8297fb7eb065580ff702df1c930607443996beb2a1041afecea2de5(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_9b14335fc8297fb7eb065580ff702df1c930607443996beb2a1041afecea2de5_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_9b14335fc8297fb7eb065580ff702df1c930607443996beb2a1041afecea2de5()
                        }

                        /// @src 149:640:692  "string constant curve5 = 'M1 1C17 73 73 129 145 145'"
                        function constant_curve5_25616() -> ret_mpos {
                            /// @src 149:665:692  "'M1 1C17 73 73 129 145 145'"
                            let _1012_mpos := convert_t_stringliteral_9b14335fc8297fb7eb065580ff702df1c930607443996beb2a1041afecea2de5_to_t_string_memory_ptr()

                            ret_mpos := _1012_mpos
                        }

                        function store_literal_in_memory_176a8aa92d47a058781a8c38ccdb1b7b196beb23d2ad8fe5144af0387029d040(memPtr) {

                            mstore(add(memPtr, 0), "M1 1C25 65 81 121 145 145")

                        }

                        function copy_literal_to_memory_176a8aa92d47a058781a8c38ccdb1b7b196beb23d2ad8fe5144af0387029d040() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(25)
                            store_literal_in_memory_176a8aa92d47a058781a8c38ccdb1b7b196beb23d2ad8fe5144af0387029d040(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_176a8aa92d47a058781a8c38ccdb1b7b196beb23d2ad8fe5144af0387029d040_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_176a8aa92d47a058781a8c38ccdb1b7b196beb23d2ad8fe5144af0387029d040()
                        }

                        /// @src 149:582:634  "string constant curve4 = 'M1 1C25 65 81 121 145 145'"
                        function constant_curve4_25613() -> ret_mpos {
                            /// @src 149:607:634  "'M1 1C25 65 81 121 145 145'"
                            let _1014_mpos := convert_t_stringliteral_176a8aa92d47a058781a8c38ccdb1b7b196beb23d2ad8fe5144af0387029d040_to_t_string_memory_ptr()

                            ret_mpos := _1014_mpos
                        }

                        function store_literal_in_memory_df31787d08efb6acaccc83f64f6323b4714f6733838404303a9a0981b3fb6ff9(memPtr) {

                            mstore(add(memPtr, 0), "M1 1C33 57 89 113 145 145")

                        }

                        function copy_literal_to_memory_df31787d08efb6acaccc83f64f6323b4714f6733838404303a9a0981b3fb6ff9() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(25)
                            store_literal_in_memory_df31787d08efb6acaccc83f64f6323b4714f6733838404303a9a0981b3fb6ff9(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_df31787d08efb6acaccc83f64f6323b4714f6733838404303a9a0981b3fb6ff9_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_df31787d08efb6acaccc83f64f6323b4714f6733838404303a9a0981b3fb6ff9()
                        }

                        /// @src 149:524:576  "string constant curve3 = 'M1 1C33 57 89 113 145 145'"
                        function constant_curve3_25610() -> ret_mpos {
                            /// @src 149:549:576  "'M1 1C33 57 89 113 145 145'"
                            let _1016_mpos := convert_t_stringliteral_df31787d08efb6acaccc83f64f6323b4714f6733838404303a9a0981b3fb6ff9_to_t_string_memory_ptr()

                            ret_mpos := _1016_mpos
                        }

                        function store_literal_in_memory_00db9d9afe99bb6dcfba7c65bef94d4ed27e35a8501f24018ed2633644b9d668(memPtr) {

                            mstore(add(memPtr, 0), "M1 1C33 49 97 113 145 145")

                        }

                        function copy_literal_to_memory_00db9d9afe99bb6dcfba7c65bef94d4ed27e35a8501f24018ed2633644b9d668() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(25)
                            store_literal_in_memory_00db9d9afe99bb6dcfba7c65bef94d4ed27e35a8501f24018ed2633644b9d668(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_00db9d9afe99bb6dcfba7c65bef94d4ed27e35a8501f24018ed2633644b9d668_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_00db9d9afe99bb6dcfba7c65bef94d4ed27e35a8501f24018ed2633644b9d668()
                        }

                        /// @src 149:466:518  "string constant curve2 = 'M1 1C33 49 97 113 145 145'"
                        function constant_curve2_25607() -> ret_mpos {
                            /// @src 149:491:518  "'M1 1C33 49 97 113 145 145'"
                            let _1018_mpos := convert_t_stringliteral_00db9d9afe99bb6dcfba7c65bef94d4ed27e35a8501f24018ed2633644b9d668_to_t_string_memory_ptr()

                            ret_mpos := _1018_mpos
                        }

                        function store_literal_in_memory_66d27e6fba11b882c8a0a5dee852b079822cbe90182b76c6fa8851fffde22b4c(memPtr) {

                            mstore(add(memPtr, 0), "M1 1C41 41 105 105 145 145")

                        }

                        function copy_literal_to_memory_66d27e6fba11b882c8a0a5dee852b079822cbe90182b76c6fa8851fffde22b4c() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(26)
                            store_literal_in_memory_66d27e6fba11b882c8a0a5dee852b079822cbe90182b76c6fa8851fffde22b4c(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_66d27e6fba11b882c8a0a5dee852b079822cbe90182b76c6fa8851fffde22b4c_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_66d27e6fba11b882c8a0a5dee852b079822cbe90182b76c6fa8851fffde22b4c()
                        }

                        /// @src 149:407:460  "string constant curve1 = 'M1 1C41 41 105 105 145 145'"
                        function constant_curve1_25604() -> ret_mpos {
                            /// @src 149:432:460  "'M1 1C41 41 105 105 145 145'"
                            let _1020_mpos := convert_t_stringliteral_66d27e6fba11b882c8a0a5dee852b079822cbe90182b76c6fa8851fffde22b4c_to_t_string_memory_ptr()

                            ret_mpos := _1020_mpos
                        }

                        /// @ast-id 26076
                        /// @src 149:12258:12985  "function getCurve(..."
                        function fun_getCurve_26076(var_tickLower_25989, var_tickUpper_25991, var_tickSpacing_25993) -> var_curve_25996_mpos {
                            /// @src 149:12382:12401  "string memory curve"
                            let zero_t_string_memory_ptr_995_mpos := zero_value_for_split_t_string_memory_ptr()
                            var_curve_25996_mpos := zero_t_string_memory_ptr_995_mpos

                            /// @src 149:12432:12441  "tickUpper"
                            let _996 := var_tickUpper_25991
                            let expr_26000 := _996
                            /// @src 149:12444:12453  "tickLower"
                            let _997 := var_tickLower_25989
                            let expr_26001 := _997
                            /// @src 149:12432:12453  "tickUpper - tickLower"
                            let expr_26002 := checked_sub_t_int24(expr_26000, expr_26001)

                            /// @src 149:12431:12454  "(tickUpper - tickLower)"
                            let expr_26003 := expr_26002
                            /// @src 149:12457:12468  "tickSpacing"
                            let _998 := var_tickSpacing_25993
                            let expr_26004 := _998
                            /// @src 149:12431:12468  "(tickUpper - tickLower) / tickSpacing"
                            let expr_26005 := checked_div_t_int24(expr_26003, expr_26004)

                            /// @src 149:12413:12468  "int24 tickRange = (tickUpper - tickLower) / tickSpacing"
                            let var_tickRange_25999 := expr_26005
                            /// @src 149:12482:12491  "tickRange"
                            let _999 := var_tickRange_25999
                            let expr_26007 := _999
                            /// @src 149:12495:12496  "4"
                            let expr_26008 := 0x04
                            /// @src 149:12482:12496  "tickRange <= 4"
                            let expr_26009 := iszero(sgt(cleanup_t_int24(expr_26007), convert_t_rational_4_by_1_to_t_int24(expr_26008)))
                            /// @src 149:12478:12979  "if (tickRange <= 4) {..."
                            switch expr_26009
                            case 0 {
                                /// @src 149:12547:12556  "tickRange"
                                let _1000 := var_tickRange_25999
                                let expr_26015 := _1000
                                /// @src 149:12560:12561  "8"
                                let expr_26016 := 0x08
                                /// @src 149:12547:12561  "tickRange <= 8"
                                let expr_26017 := iszero(sgt(cleanup_t_int24(expr_26015), convert_t_rational_8_by_1_to_t_int24(expr_26016)))
                                /// @src 149:12543:12979  "if (tickRange <= 8) {..."
                                switch expr_26017
                                case 0 {
                                    /// @src 149:12612:12621  "tickRange"
                                    let _1001 := var_tickRange_25999
                                    let expr_26023 := _1001
                                    /// @src 149:12625:12627  "16"
                                    let expr_26024 := 0x10
                                    /// @src 149:12612:12627  "tickRange <= 16"
                                    let expr_26025 := iszero(sgt(cleanup_t_int24(expr_26023), convert_t_rational_16_by_1_to_t_int24(expr_26024)))
                                    /// @src 149:12608:12979  "if (tickRange <= 16) {..."
                                    switch expr_26025
                                    case 0 {
                                        /// @src 149:12678:12687  "tickRange"
                                        let _1002 := var_tickRange_25999
                                        let expr_26031 := _1002
                                        /// @src 149:12691:12693  "32"
                                        let expr_26032 := 0x20
                                        /// @src 149:12678:12693  "tickRange <= 32"
                                        let expr_26033 := iszero(sgt(cleanup_t_int24(expr_26031), convert_t_rational_32_by_1_to_t_int24(expr_26032)))
                                        /// @src 149:12674:12979  "if (tickRange <= 32) {..."
                                        switch expr_26033
                                        case 0 {
                                            /// @src 149:12744:12753  "tickRange"
                                            let _1003 := var_tickRange_25999
                                            let expr_26039 := _1003
                                            /// @src 149:12757:12759  "64"
                                            let expr_26040 := 0x40
                                            /// @src 149:12744:12759  "tickRange <= 64"
                                            let expr_26041 := iszero(sgt(cleanup_t_int24(expr_26039), convert_t_rational_64_by_1_to_t_int24(expr_26040)))
                                            /// @src 149:12740:12979  "if (tickRange <= 64) {..."
                                            switch expr_26041
                                            case 0 {
                                                /// @src 149:12810:12819  "tickRange"
                                                let _1004 := var_tickRange_25999
                                                let expr_26047 := _1004
                                                /// @src 149:12823:12826  "128"
                                                let expr_26048 := 0x80
                                                /// @src 149:12810:12826  "tickRange <= 128"
                                                let expr_26049 := iszero(sgt(cleanup_t_int24(expr_26047), convert_t_rational_128_by_1_to_t_int24(expr_26048)))
                                                /// @src 149:12806:12979  "if (tickRange <= 128) {..."
                                                switch expr_26049
                                                case 0 {
                                                    /// @src 149:12877:12886  "tickRange"
                                                    let _1005 := var_tickRange_25999
                                                    let expr_26055 := _1005
                                                    /// @src 149:12890:12893  "256"
                                                    let expr_26056 := 0x0100
                                                    /// @src 149:12877:12893  "tickRange <= 256"
                                                    let expr_26057 := iszero(sgt(cleanup_t_int24(expr_26055), convert_t_rational_256_by_1_to_t_int24(expr_26056)))
                                                    /// @src 149:12873:12979  "if (tickRange <= 256) {..."
                                                    switch expr_26057
                                                    case 0 {
                                                        /// @src 149:12962:12968  "curve8"
                                                        let expr_26064_mpos := constant_curve8_25625()
                                                        /// @src 149:12954:12968  "curve = curve8"
                                                        var_curve_25996_mpos := expr_26064_mpos
                                                        let _1007_mpos := var_curve_25996_mpos
                                                        let expr_26065_mpos := _1007_mpos
                                                        /// @src 149:12873:12979  "if (tickRange <= 256) {..."
                                                    }
                                                    default {
                                                        /// @src 149:12917:12923  "curve7"
                                                        let expr_26059_mpos := constant_curve7_25622()
                                                        /// @src 149:12909:12923  "curve = curve7"
                                                        var_curve_25996_mpos := expr_26059_mpos
                                                        let _1009_mpos := var_curve_25996_mpos
                                                        let expr_26060_mpos := _1009_mpos
                                                        /// @src 149:12873:12979  "if (tickRange <= 256) {..."
                                                    }
                                                    /// @src 149:12806:12979  "if (tickRange <= 128) {..."
                                                }
                                                default {
                                                    /// @src 149:12850:12856  "curve6"
                                                    let expr_26051_mpos := constant_curve6_25619()
                                                    /// @src 149:12842:12856  "curve = curve6"
                                                    var_curve_25996_mpos := expr_26051_mpos
                                                    let _1011_mpos := var_curve_25996_mpos
                                                    let expr_26052_mpos := _1011_mpos
                                                    /// @src 149:12806:12979  "if (tickRange <= 128) {..."
                                                }
                                                /// @src 149:12740:12979  "if (tickRange <= 64) {..."
                                            }
                                            default {
                                                /// @src 149:12783:12789  "curve5"
                                                let expr_26043_mpos := constant_curve5_25616()
                                                /// @src 149:12775:12789  "curve = curve5"
                                                var_curve_25996_mpos := expr_26043_mpos
                                                let _1013_mpos := var_curve_25996_mpos
                                                let expr_26044_mpos := _1013_mpos
                                                /// @src 149:12740:12979  "if (tickRange <= 64) {..."
                                            }
                                            /// @src 149:12674:12979  "if (tickRange <= 32) {..."
                                        }
                                        default {
                                            /// @src 149:12717:12723  "curve4"
                                            let expr_26035_mpos := constant_curve4_25613()
                                            /// @src 149:12709:12723  "curve = curve4"
                                            var_curve_25996_mpos := expr_26035_mpos
                                            let _1015_mpos := var_curve_25996_mpos
                                            let expr_26036_mpos := _1015_mpos
                                            /// @src 149:12674:12979  "if (tickRange <= 32) {..."
                                        }
                                        /// @src 149:12608:12979  "if (tickRange <= 16) {..."
                                    }
                                    default {
                                        /// @src 149:12651:12657  "curve3"
                                        let expr_26027_mpos := constant_curve3_25610()
                                        /// @src 149:12643:12657  "curve = curve3"
                                        var_curve_25996_mpos := expr_26027_mpos
                                        let _1017_mpos := var_curve_25996_mpos
                                        let expr_26028_mpos := _1017_mpos
                                        /// @src 149:12608:12979  "if (tickRange <= 16) {..."
                                    }
                                    /// @src 149:12543:12979  "if (tickRange <= 8) {..."
                                }
                                default {
                                    /// @src 149:12585:12591  "curve2"
                                    let expr_26019_mpos := constant_curve2_25607()
                                    /// @src 149:12577:12591  "curve = curve2"
                                    var_curve_25996_mpos := expr_26019_mpos
                                    let _1019_mpos := var_curve_25996_mpos
                                    let expr_26020_mpos := _1019_mpos
                                    /// @src 149:12543:12979  "if (tickRange <= 8) {..."
                                }
                                /// @src 149:12478:12979  "if (tickRange <= 4) {..."
                            }
                            default {
                                /// @src 149:12520:12526  "curve1"
                                let expr_26011_mpos := constant_curve1_25604()
                                /// @src 149:12512:12526  "curve = curve1"
                                var_curve_25996_mpos := expr_26011_mpos
                                let _1021_mpos := var_curve_25996_mpos
                                let expr_26012_mpos := _1021_mpos
                                /// @src 149:12478:12979  "if (tickRange <= 4) {..."
                            }

                        }
                        /// @src 148:613:18548  "library NFTDescriptor {..."

                        function store_literal_in_memory_b2219b801710730437d0358146c829b62297a059eceaa0b40b27aea2daecf595(memPtr) {

                            mstore(add(memPtr, 0), "73")

                        }

                        function copy_literal_to_memory_b2219b801710730437d0358146c829b62297a059eceaa0b40b27aea2daecf595() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(2)
                            store_literal_in_memory_b2219b801710730437d0358146c829b62297a059eceaa0b40b27aea2daecf595(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_b2219b801710730437d0358146c829b62297a059eceaa0b40b27aea2daecf595_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_b2219b801710730437d0358146c829b62297a059eceaa0b40b27aea2daecf595()
                        }

                        function store_literal_in_memory_e056e162080d5da78663154decfd308f0383b8d138d504e8a4cde93086ac2fef(memPtr) {

                            mstore(add(memPtr, 0), "190")

                        }

                        function copy_literal_to_memory_e056e162080d5da78663154decfd308f0383b8d138d504e8a4cde93086ac2fef() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(3)
                            store_literal_in_memory_e056e162080d5da78663154decfd308f0383b8d138d504e8a4cde93086ac2fef(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_e056e162080d5da78663154decfd308f0383b8d138d504e8a4cde93086ac2fef_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_e056e162080d5da78663154decfd308f0383b8d138d504e8a4cde93086ac2fef()
                        }

                        function store_literal_in_memory_aaf3f8a03bf981e82bfa1e6e69fda395c89cda31e9dff74038d977f68cce1756(memPtr) {

                            mstore(add(memPtr, 0), "217")

                        }

                        function copy_literal_to_memory_aaf3f8a03bf981e82bfa1e6e69fda395c89cda31e9dff74038d977f68cce1756() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(3)
                            store_literal_in_memory_aaf3f8a03bf981e82bfa1e6e69fda395c89cda31e9dff74038d977f68cce1756(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_aaf3f8a03bf981e82bfa1e6e69fda395c89cda31e9dff74038d977f68cce1756_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_aaf3f8a03bf981e82bfa1e6e69fda395c89cda31e9dff74038d977f68cce1756()
                        }

                        function store_literal_in_memory_f9bbcd66573bf3c1f4cc184d2152e0dd1704bf0095e444b842e9e57042cbafba(memPtr) {

                            mstore(add(memPtr, 0), "334")

                        }

                        function copy_literal_to_memory_f9bbcd66573bf3c1f4cc184d2152e0dd1704bf0095e444b842e9e57042cbafba() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(3)
                            store_literal_in_memory_f9bbcd66573bf3c1f4cc184d2152e0dd1704bf0095e444b842e9e57042cbafba(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_f9bbcd66573bf3c1f4cc184d2152e0dd1704bf0095e444b842e9e57042cbafba_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_f9bbcd66573bf3c1f4cc184d2152e0dd1704bf0095e444b842e9e57042cbafba()
                        }

                        function store_literal_in_memory_0cfb64137c1b932845c13a5b9099e70707981c3c97fcffefd9a9dc3cb4822b2a(memPtr) {

                            mstore(add(memPtr, 0), 0x3c636972636c652063783d220000000000000000000000000000000000000000)

                        }

                        function abi_encode_t_stringliteral_0cfb64137c1b932845c13a5b9099e70707981c3c97fcffefd9a9dc3cb4822b2a_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 12)
                            store_literal_in_memory_0cfb64137c1b932845c13a5b9099e70707981c3c97fcffefd9a9dc3cb4822b2a(pos)
                            end := add(pos, 12)
                        }

                        function store_literal_in_memory_04df0b57098eaa746dd457aea178f76fd2ba5ac64e69b33f7dbdf88159fd9066(memPtr) {

                            mstore(add(memPtr, 0), 0x7078222063793d22000000000000000000000000000000000000000000000000)

                        }

                        function abi_encode_t_stringliteral_04df0b57098eaa746dd457aea178f76fd2ba5ac64e69b33f7dbdf88159fd9066_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 8)
                            store_literal_in_memory_04df0b57098eaa746dd457aea178f76fd2ba5ac64e69b33f7dbdf88159fd9066(pos)
                            end := add(pos, 8)
                        }

                        function store_literal_in_memory_9688ea6eac52256e23e98de0d885a67cbdda4b4d8cf2999e296a56007ffef501(memPtr) {

                            mstore(add(memPtr, 0), 0x70782220723d22347078222066696c6c3d22776869746522202f3e0000000000)

                        }

                        function abi_encode_t_stringliteral_9688ea6eac52256e23e98de0d885a67cbdda4b4d8cf2999e296a56007ffef501_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 27)
                            store_literal_in_memory_9688ea6eac52256e23e98de0d885a67cbdda4b4d8cf2999e296a56007ffef501(pos)
                            end := add(pos, 27)
                        }

                        function abi_encode_tuple_packed_t_stringliteral_0cfb64137c1b932845c13a5b9099e70707981c3c97fcffefd9a9dc3cb4822b2a_t_string_memory_ptr_t_stringliteral_04df0b57098eaa746dd457aea178f76fd2ba5ac64e69b33f7dbdf88159fd9066_t_string_memory_ptr_t_stringliteral_9688ea6eac52256e23e98de0d885a67cbdda4b4d8cf2999e296a56007ffef501_t_stringliteral_0cfb64137c1b932845c13a5b9099e70707981c3c97fcffefd9a9dc3cb4822b2a_t_string_memory_ptr_t_stringliteral_04df0b57098eaa746dd457aea178f76fd2ba5ac64e69b33f7dbdf88159fd9066_t_string_memory_ptr_t_stringliteral_9688ea6eac52256e23e98de0d885a67cbdda4b4d8cf2999e296a56007ffef501__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2, value3) -> end {

                            pos := abi_encode_t_stringliteral_0cfb64137c1b932845c13a5b9099e70707981c3c97fcffefd9a9dc3cb4822b2a_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                            pos := abi_encode_t_stringliteral_04df0b57098eaa746dd457aea178f76fd2ba5ac64e69b33f7dbdf88159fd9066_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                            pos := abi_encode_t_stringliteral_9688ea6eac52256e23e98de0d885a67cbdda4b4d8cf2999e296a56007ffef501_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_stringliteral_0cfb64137c1b932845c13a5b9099e70707981c3c97fcffefd9a9dc3cb4822b2a_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                            pos := abi_encode_t_stringliteral_04df0b57098eaa746dd457aea178f76fd2ba5ac64e69b33f7dbdf88159fd9066_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value3,  pos)

                            pos := abi_encode_t_stringliteral_9688ea6eac52256e23e98de0d885a67cbdda4b4d8cf2999e296a56007ffef501_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            end := pos
                        }

                        function store_literal_in_memory_805d2dfd72788fbd262dae04ab03ec6490a808b57ad0f61b37e39bca57c9434b(memPtr) {

                            mstore(add(memPtr, 0), 0x70782220723d22347078222066696c6c3d22776869746522202f3e3c63697263)

                            mstore(add(memPtr, 32), 0x6c652063783d2200000000000000000000000000000000000000000000000000)

                        }

                        function abi_encode_t_stringliteral_805d2dfd72788fbd262dae04ab03ec6490a808b57ad0f61b37e39bca57c9434b_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 39)
                            store_literal_in_memory_805d2dfd72788fbd262dae04ab03ec6490a808b57ad0f61b37e39bca57c9434b(pos)
                            end := add(pos, 39)
                        }

                        function store_literal_in_memory_8f39c2ef49d5b31ddb2a6f4b9d03a6a799196af85cc95b7c0148ca8f2d6c3143(memPtr) {

                            mstore(add(memPtr, 0), 0x70782220723d2232347078222066696c6c3d226e6f6e6522207374726f6b653d)

                            mstore(add(memPtr, 32), 0x22776869746522202f3e00000000000000000000000000000000000000000000)

                        }

                        function abi_encode_t_stringliteral_8f39c2ef49d5b31ddb2a6f4b9d03a6a799196af85cc95b7c0148ca8f2d6c3143_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 42)
                            store_literal_in_memory_8f39c2ef49d5b31ddb2a6f4b9d03a6a799196af85cc95b7c0148ca8f2d6c3143(pos)
                            end := add(pos, 42)
                        }

                        function abi_encode_tuple_packed_t_stringliteral_0cfb64137c1b932845c13a5b9099e70707981c3c97fcffefd9a9dc3cb4822b2a_t_string_memory_ptr_t_stringliteral_04df0b57098eaa746dd457aea178f76fd2ba5ac64e69b33f7dbdf88159fd9066_t_string_memory_ptr_t_stringliteral_805d2dfd72788fbd262dae04ab03ec6490a808b57ad0f61b37e39bca57c9434b_t_string_memory_ptr_t_stringliteral_04df0b57098eaa746dd457aea178f76fd2ba5ac64e69b33f7dbdf88159fd9066_t_string_memory_ptr_t_stringliteral_8f39c2ef49d5b31ddb2a6f4b9d03a6a799196af85cc95b7c0148ca8f2d6c3143__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2, value3) -> end {

                            pos := abi_encode_t_stringliteral_0cfb64137c1b932845c13a5b9099e70707981c3c97fcffefd9a9dc3cb4822b2a_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                            pos := abi_encode_t_stringliteral_04df0b57098eaa746dd457aea178f76fd2ba5ac64e69b33f7dbdf88159fd9066_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                            pos := abi_encode_t_stringliteral_805d2dfd72788fbd262dae04ab03ec6490a808b57ad0f61b37e39bca57c9434b_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                            pos := abi_encode_t_stringliteral_04df0b57098eaa746dd457aea178f76fd2ba5ac64e69b33f7dbdf88159fd9066_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value3,  pos)

                            pos := abi_encode_t_stringliteral_8f39c2ef49d5b31ddb2a6f4b9d03a6a799196af85cc95b7c0148ca8f2d6c3143_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                            end := pos
                        }

                        /// @ast-id 26172
                        /// @src 149:12991:14314  "function generateSVGCurveCircle(int8 overRange) internal pure returns (string memory svg) {..."
                        function fun_generateSVGCurveCircle_26172(var_overRange_26078) -> var_svg_26081_mpos {
                            /// @src 149:13062:13079  "string memory svg"
                            let zero_t_string_memory_ptr_1022_mpos := zero_value_for_split_t_string_memory_ptr()
                            var_svg_26081_mpos := zero_t_string_memory_ptr_1022_mpos

                            /// @src 149:13091:13119  "string memory curvex1 = '73'"
                            let var_curvex1_26084_mpos := convert_t_stringliteral_b2219b801710730437d0358146c829b62297a059eceaa0b40b27aea2daecf595_to_t_string_memory_ptr()
                            /// @src 149:13129:13158  "string memory curvey1 = '190'"
                            let var_curvey1_26088_mpos := convert_t_stringliteral_e056e162080d5da78663154decfd308f0383b8d138d504e8a4cde93086ac2fef_to_t_string_memory_ptr()
                            /// @src 149:13168:13197  "string memory curvex2 = '217'"
                            let var_curvex2_26092_mpos := convert_t_stringliteral_aaf3f8a03bf981e82bfa1e6e69fda395c89cda31e9dff74038d977f68cce1756_to_t_string_memory_ptr()
                            /// @src 149:13207:13236  "string memory curvey2 = '334'"
                            let var_curvey2_26096_mpos := convert_t_stringliteral_f9bbcd66573bf3c1f4cc184d2152e0dd1704bf0095e444b842e9e57042cbafba_to_t_string_memory_ptr()
                            /// @src 149:13250:13259  "overRange"
                            let _1023 := var_overRange_26078
                            let expr_26099 := _1023
                            /// @src 149:13263:13264  "1"
                            let expr_26100 := 0x01
                            /// @src 149:13250:13264  "overRange == 1"
                            let expr_26101 := eq(cleanup_t_int8(expr_26099), convert_t_rational_1_by_1_to_t_int8(expr_26100))
                            /// @src 149:13250:13283  "overRange == 1 || overRange == -1"
                            let expr_26106 := expr_26101
                            if iszero(expr_26106) {
                                /// @src 149:13268:13277  "overRange"
                                let _1024 := var_overRange_26078
                                let expr_26102 := _1024
                                /// @src 149:13281:13283  "-1"
                                let expr_26104 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                /// @src 149:13268:13283  "overRange == -1"
                                let expr_26105 := eq(cleanup_t_int8(expr_26102), convert_t_rational_minus_1_by_1_to_t_int8(expr_26104))
                                /// @src 149:13250:13283  "overRange == 1 || overRange == -1"
                                expr_26106 := expr_26105
                            }
                            /// @src 149:13246:14308  "if (overRange == 1 || overRange == -1) {..."
                            switch expr_26106
                            case 0 {
                                /// @src 149:13969:13976  "curvex1"
                                let _1025_mpos := var_curvex1_26084_mpos
                                let expr_26156_mpos := _1025_mpos
                                /// @src 149:14030:14037  "curvey1"
                                let _1026_mpos := var_curvey1_26088_mpos
                                let expr_26158_mpos := _1026_mpos
                                /// @src 149:14146:14153  "curvex2"
                                let _1027_mpos := var_curvex2_26092_mpos
                                let expr_26161_mpos := _1027_mpos
                                /// @src 149:14207:14214  "curvey2"
                                let _1028_mpos := var_curvey2_26096_mpos
                                let expr_26163_mpos := _1028_mpos
                                /// @src 149:13895:14283  "abi.encodePacked(..."

                                let expr_26165_mpos := allocate_unbounded()
                                let _1029 := add(expr_26165_mpos, 0x20)

                                let _1030 := abi_encode_tuple_packed_t_stringliteral_0cfb64137c1b932845c13a5b9099e70707981c3c97fcffefd9a9dc3cb4822b2a_t_string_memory_ptr_t_stringliteral_04df0b57098eaa746dd457aea178f76fd2ba5ac64e69b33f7dbdf88159fd9066_t_string_memory_ptr_t_stringliteral_9688ea6eac52256e23e98de0d885a67cbdda4b4d8cf2999e296a56007ffef501_t_stringliteral_0cfb64137c1b932845c13a5b9099e70707981c3c97fcffefd9a9dc3cb4822b2a_t_string_memory_ptr_t_stringliteral_04df0b57098eaa746dd457aea178f76fd2ba5ac64e69b33f7dbdf88159fd9066_t_string_memory_ptr_t_stringliteral_9688ea6eac52256e23e98de0d885a67cbdda4b4d8cf2999e296a56007ffef501__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_1029, expr_26156_mpos, expr_26158_mpos, expr_26161_mpos, expr_26163_mpos)
                                mstore(expr_26165_mpos, sub(_1030, add(expr_26165_mpos, 0x20)))
                                finalize_allocation(expr_26165_mpos, sub(_1030, expr_26165_mpos))
                                /// @src 149:13871:14297  "string(..."
                                let expr_26166_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_26165_mpos)
                                /// @src 149:13865:14297  "svg = string(..."
                                var_svg_26081_mpos := expr_26166_mpos
                                let _1031_mpos := var_svg_26081_mpos
                                let expr_26167_mpos := _1031_mpos
                                /// @src 149:13246:14308  "if (overRange == 1 || overRange == -1) {..."
                            }
                            default {
                                /// @src 149:13403:13412  "overRange"
                                let _1032 := var_overRange_26078
                                let expr_26113 := _1032
                                /// @src 149:13416:13418  "-1"
                                let expr_26115 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                /// @src 149:13403:13418  "overRange == -1"
                                let expr_26116 := eq(cleanup_t_int8(expr_26113), convert_t_rational_minus_1_by_1_to_t_int8(expr_26115))
                                /// @src 149:13403:13438  "overRange == -1 ? curvex1 : curvex2"
                                let expr_26119_mpos
                                switch expr_26116
                                case 0 {
                                    /// @src 149:13431:13438  "curvex2"
                                    let _1033_mpos := var_curvex2_26092_mpos
                                    let expr_26118_mpos := _1033_mpos
                                    /// @src 149:13403:13438  "overRange == -1 ? curvex1 : curvex2"
                                    expr_26119_mpos := expr_26118_mpos
                                }
                                default {
                                    /// @src 149:13421:13428  "curvex1"
                                    let _1034_mpos := var_curvex1_26084_mpos
                                    let expr_26117_mpos := _1034_mpos
                                    /// @src 149:13403:13438  "overRange == -1 ? curvex1 : curvex2"
                                    expr_26119_mpos := expr_26117_mpos
                                }
                                /// @src 149:13492:13501  "overRange"
                                let _1035 := var_overRange_26078
                                let expr_26121 := _1035
                                /// @src 149:13505:13507  "-1"
                                let expr_26123 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                /// @src 149:13492:13507  "overRange == -1"
                                let expr_26124 := eq(cleanup_t_int8(expr_26121), convert_t_rational_minus_1_by_1_to_t_int8(expr_26123))
                                /// @src 149:13492:13527  "overRange == -1 ? curvey1 : curvey2"
                                let expr_26127_mpos
                                switch expr_26124
                                case 0 {
                                    /// @src 149:13520:13527  "curvey2"
                                    let _1036_mpos := var_curvey2_26096_mpos
                                    let expr_26126_mpos := _1036_mpos
                                    /// @src 149:13492:13527  "overRange == -1 ? curvey1 : curvey2"
                                    expr_26127_mpos := expr_26126_mpos
                                }
                                default {
                                    /// @src 149:13510:13517  "curvey1"
                                    let _1037_mpos := var_curvey1_26088_mpos
                                    let expr_26125_mpos := _1037_mpos
                                    /// @src 149:13492:13527  "overRange == -1 ? curvey1 : curvey2"
                                    expr_26127_mpos := expr_26125_mpos
                                }
                                /// @src 149:13612:13621  "overRange"
                                let _1038 := var_overRange_26078
                                let expr_26129 := _1038
                                /// @src 149:13625:13627  "-1"
                                let expr_26131 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                /// @src 149:13612:13627  "overRange == -1"
                                let expr_26132 := eq(cleanup_t_int8(expr_26129), convert_t_rational_minus_1_by_1_to_t_int8(expr_26131))
                                /// @src 149:13612:13647  "overRange == -1 ? curvex1 : curvex2"
                                let expr_26135_mpos
                                switch expr_26132
                                case 0 {
                                    /// @src 149:13640:13647  "curvex2"
                                    let _1039_mpos := var_curvex2_26092_mpos
                                    let expr_26134_mpos := _1039_mpos
                                    /// @src 149:13612:13647  "overRange == -1 ? curvex1 : curvex2"
                                    expr_26135_mpos := expr_26134_mpos
                                }
                                default {
                                    /// @src 149:13630:13637  "curvex1"
                                    let _1040_mpos := var_curvex1_26084_mpos
                                    let expr_26133_mpos := _1040_mpos
                                    /// @src 149:13612:13647  "overRange == -1 ? curvex1 : curvex2"
                                    expr_26135_mpos := expr_26133_mpos
                                }
                                /// @src 149:13701:13710  "overRange"
                                let _1041 := var_overRange_26078
                                let expr_26137 := _1041
                                /// @src 149:13714:13716  "-1"
                                let expr_26139 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                /// @src 149:13701:13716  "overRange == -1"
                                let expr_26140 := eq(cleanup_t_int8(expr_26137), convert_t_rational_minus_1_by_1_to_t_int8(expr_26139))
                                /// @src 149:13701:13736  "overRange == -1 ? curvey1 : curvey2"
                                let expr_26143_mpos
                                switch expr_26140
                                case 0 {
                                    /// @src 149:13729:13736  "curvey2"
                                    let _1042_mpos := var_curvey2_26096_mpos
                                    let expr_26142_mpos := _1042_mpos
                                    /// @src 149:13701:13736  "overRange == -1 ? curvey1 : curvey2"
                                    expr_26143_mpos := expr_26142_mpos
                                }
                                default {
                                    /// @src 149:13719:13726  "curvey1"
                                    let _1043_mpos := var_curvey1_26088_mpos
                                    let expr_26141_mpos := _1043_mpos
                                    /// @src 149:13701:13736  "overRange == -1 ? curvey1 : curvey2"
                                    expr_26143_mpos := expr_26141_mpos
                                }
                                /// @src 149:13329:13820  "abi.encodePacked(..."

                                let expr_26145_mpos := allocate_unbounded()
                                let _1044 := add(expr_26145_mpos, 0x20)

                                let _1045 := abi_encode_tuple_packed_t_stringliteral_0cfb64137c1b932845c13a5b9099e70707981c3c97fcffefd9a9dc3cb4822b2a_t_string_memory_ptr_t_stringliteral_04df0b57098eaa746dd457aea178f76fd2ba5ac64e69b33f7dbdf88159fd9066_t_string_memory_ptr_t_stringliteral_805d2dfd72788fbd262dae04ab03ec6490a808b57ad0f61b37e39bca57c9434b_t_string_memory_ptr_t_stringliteral_04df0b57098eaa746dd457aea178f76fd2ba5ac64e69b33f7dbdf88159fd9066_t_string_memory_ptr_t_stringliteral_8f39c2ef49d5b31ddb2a6f4b9d03a6a799196af85cc95b7c0148ca8f2d6c3143__to_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_1044, expr_26119_mpos, expr_26127_mpos, expr_26135_mpos, expr_26143_mpos)
                                mstore(expr_26145_mpos, sub(_1045, add(expr_26145_mpos, 0x20)))
                                finalize_allocation(expr_26145_mpos, sub(_1045, expr_26145_mpos))
                                /// @src 149:13305:13834  "string(..."
                                let expr_26146_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_26145_mpos)
                                /// @src 149:13299:13834  "svg = string(..."
                                var_svg_26081_mpos := expr_26146_mpos
                                let _1046_mpos := var_svg_26081_mpos
                                let expr_26147_mpos := _1046_mpos
                                /// @src 149:13246:14308  "if (overRange == 1 || overRange == -1) {..."
                            }

                        }
                        /// @src 148:613:18548  "library NFTDescriptor {..."

                        function convert_t_rational_minus_1_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_minus_1_by_1(value)))
                        }

                        function copy_literal_to_memory_d3b8281179950f98149eefdb158d0e1acb56f56e8e343aa9fefafa7e36959561() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(1)
                            store_literal_in_memory_d3b8281179950f98149eefdb158d0e1acb56f56e8e343aa9fefafa7e36959561(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_d3b8281179950f98149eefdb158d0e1acb56f56e8e343aa9fefafa7e36959561_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_d3b8281179950f98149eefdb158d0e1acb56f56e8e343aa9fefafa7e36959561()
                        }

                        function abi_encode_tuple_packed_t_string_memory_ptr_t_string_memory_ptr__to_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1) -> end {

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                            pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                            end := pos
                        }

                        /// @ast-id 26347
                        /// @src 149:16875:17155  "function tickToString(int24 tick) private pure returns (string memory) {..."
                        function fun_tickToString_26347(var_tick_26304) -> var__26307_mpos {
                            /// @src 149:16931:16944  "string memory"
                            let zero_t_string_memory_ptr_1047_mpos := zero_value_for_split_t_string_memory_ptr()
                            var__26307_mpos := zero_t_string_memory_ptr_1047_mpos

                            /// @src 149:16956:16979  "string memory sign = ''"
                            let var_sign_26310_mpos := convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_string_memory_ptr()
                            /// @src 149:16993:16997  "tick"
                            let _1048 := var_tick_26304
                            let expr_26313 := _1048
                            /// @src 149:17000:17001  "0"
                            let expr_26314 := 0x00
                            /// @src 149:16993:17001  "tick < 0"
                            let expr_26315 := slt(cleanup_t_int24(expr_26313), convert_t_rational_0_by_1_to_t_int24(expr_26314))
                            /// @src 149:16989:17068  "if (tick < 0) {..."
                            if expr_26315 {
                                /// @src 149:17024:17028  "tick"
                                let _1049 := var_tick_26304
                                let expr_26317 := _1049
                                /// @src 149:17031:17033  "-1"
                                let expr_26319 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                /// @src 149:17024:17033  "tick * -1"
                                let expr_26320 := checked_mul_t_int24(expr_26317, convert_t_rational_minus_1_by_1_to_t_int24(expr_26319))

                                /// @src 149:17017:17033  "tick = tick * -1"
                                var_tick_26304 := expr_26320
                                let expr_26321 := expr_26320
                                /// @src 149:17047:17057  "sign = '-'"
                                var_sign_26310_mpos := convert_t_stringliteral_d3b8281179950f98149eefdb158d0e1acb56f56e8e343aa9fefafa7e36959561_to_t_string_memory_ptr()
                                let _1050_mpos := var_sign_26310_mpos
                                let expr_26325_mpos := _1050_mpos
                                /// @src 149:16989:17068  "if (tick < 0) {..."
                            }
                            /// @src 149:17108:17112  "sign"
                            let _1051_mpos := var_sign_26310_mpos
                            let expr_26333_mpos := _1051_mpos
                            /// @src 149:17129:17133  "tick"
                            let _1052 := var_tick_26304
                            let expr_26338 := _1052
                            /// @src 149:17122:17134  "int256(tick)"
                            let expr_26339 := convert_t_int24_to_t_int256(expr_26338)
                            /// @src 149:17114:17135  "uint256(int256(tick))"
                            let expr_26340 := convert_t_int256_to_t_uint256(expr_26339)
                            /// @src 149:17114:17144  "uint256(int256(tick)).toString"
                            let expr_26341_self := expr_26340
                            /// @src 149:17114:17146  "uint256(int256(tick)).toString()"
                            let expr_26342_mpos := fun_toString_25008(expr_26341_self)
                            /// @src 149:17091:17147  "abi.encodePacked(sign, uint256(int256(tick)).toString())"

                            let expr_26343_mpos := allocate_unbounded()
                            let _1053 := add(expr_26343_mpos, 0x20)

                            let _1054 := abi_encode_tuple_packed_t_string_memory_ptr_t_string_memory_ptr__to_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_1053, expr_26333_mpos, expr_26342_mpos)
                            mstore(expr_26343_mpos, sub(_1054, add(expr_26343_mpos, 0x20)))
                            finalize_allocation(expr_26343_mpos, sub(_1054, expr_26343_mpos))
                            /// @src 149:17084:17148  "string(abi.encodePacked(sign, uint256(int256(tick)).toString()))"
                            let expr_26344_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_26343_mpos)
                            /// @src 149:17077:17148  "return string(abi.encodePacked(sign, uint256(int256(tick)).toString()))"
                            var__26307_mpos := expr_26344_mpos
                            leave

                        }
                        /// @src 148:613:18548  "library NFTDescriptor {..."

                        function checked_add_t_int24(x, y) -> sum {
                            x := cleanup_t_int24(x)
                            y := cleanup_t_int24(y)
                            sum := add(x, y)

                            if or(
                                sgt(sum, 0x7fffff),
                                slt(sum, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff800000)
                            ) { panic_error_0x11() }

                        }

                        function convert_t_rational_2_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_2_by_1(value)))
                        }

                        function cleanup_t_rational_minus_125000_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_minus_125000_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_minus_125000_by_1(value)))
                        }

                        function cleanup_t_rational_minus_75000_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_minus_75000_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_minus_75000_by_1(value)))
                        }

                        function cleanup_t_rational_minus_25000_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_minus_25000_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_minus_25000_by_1(value)))
                        }

                        function cleanup_t_rational_minus_5000_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_minus_5000_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_minus_5000_by_1(value)))
                        }

                        function cleanup_t_rational_5000_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_5000_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_5000_by_1(value)))
                        }

                        function cleanup_t_rational_25000_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_25000_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_25000_by_1(value)))
                        }

                        function cleanup_t_rational_75000_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_75000_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_75000_by_1(value)))
                        }

                        function cleanup_t_rational_125000_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_125000_by_1_to_t_int24(value) -> converted {
                            converted := cleanup_t_int24(identity(cleanup_t_rational_125000_by_1(value)))
                        }

                        function store_literal_in_memory_6585423cb6456b1d4957f6454d2f004f0c4f58d53a00082412d5c2ef4b1b31fd(memPtr) {

                            mstore(add(memPtr, 0), "24")

                        }

                        function copy_literal_to_memory_6585423cb6456b1d4957f6454d2f004f0c4f58d53a00082412d5c2ef4b1b31fd() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(2)
                            store_literal_in_memory_6585423cb6456b1d4957f6454d2f004f0c4f58d53a00082412d5c2ef4b1b31fd(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_6585423cb6456b1d4957f6454d2f004f0c4f58d53a00082412d5c2ef4b1b31fd_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_6585423cb6456b1d4957f6454d2f004f0c4f58d53a00082412d5c2ef4b1b31fd()
                        }

                        function store_literal_in_memory_58a280f74f57bf051c40f060139dc747e015be52f68c57e2c4ab2e4bd4146f43(memPtr) {

                            mstore(add(memPtr, 0), "27")

                        }

                        function copy_literal_to_memory_58a280f74f57bf051c40f060139dc747e015be52f68c57e2c4ab2e4bd4146f43() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(2)
                            store_literal_in_memory_58a280f74f57bf051c40f060139dc747e015be52f68c57e2c4ab2e4bd4146f43(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_58a280f74f57bf051c40f060139dc747e015be52f68c57e2c4ab2e4bd4146f43_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_58a280f74f57bf051c40f060139dc747e015be52f68c57e2c4ab2e4bd4146f43()
                        }

                        function store_literal_in_memory_f4c2b5de886427473655d4c904c743576dc2d53249b7535d96c06cc97ae7216b(memPtr) {

                            mstore(add(memPtr, 0), "21")

                        }

                        function copy_literal_to_memory_f4c2b5de886427473655d4c904c743576dc2d53249b7535d96c06cc97ae7216b() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(2)
                            store_literal_in_memory_f4c2b5de886427473655d4c904c743576dc2d53249b7535d96c06cc97ae7216b(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_f4c2b5de886427473655d4c904c743576dc2d53249b7535d96c06cc97ae7216b_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_f4c2b5de886427473655d4c904c743576dc2d53249b7535d96c06cc97ae7216b()
                        }

                        function store_literal_in_memory_8fef2229291b68be841adf029e58b87f39ba144b2d3b0af1760243d0a9bc6a1c(memPtr) {

                            mstore(add(memPtr, 0), "18")

                        }

                        function copy_literal_to_memory_8fef2229291b68be841adf029e58b87f39ba144b2d3b0af1760243d0a9bc6a1c() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(2)
                            store_literal_in_memory_8fef2229291b68be841adf029e58b87f39ba144b2d3b0af1760243d0a9bc6a1c(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_8fef2229291b68be841adf029e58b87f39ba144b2d3b0af1760243d0a9bc6a1c_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_8fef2229291b68be841adf029e58b87f39ba144b2d3b0af1760243d0a9bc6a1c()
                        }

                        function store_literal_in_memory_9cce9eb03c9f29c6481fca9f0f942b15bef0bbbc47fda0ddb44df157019835d9(memPtr) {

                            mstore(add(memPtr, 0), "26")

                        }

                        function copy_literal_to_memory_9cce9eb03c9f29c6481fca9f0f942b15bef0bbbc47fda0ddb44df157019835d9() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(2)
                            store_literal_in_memory_9cce9eb03c9f29c6481fca9f0f942b15bef0bbbc47fda0ddb44df157019835d9(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_9cce9eb03c9f29c6481fca9f0f942b15bef0bbbc47fda0ddb44df157019835d9_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_9cce9eb03c9f29c6481fca9f0f942b15bef0bbbc47fda0ddb44df157019835d9()
                        }

                        function store_literal_in_memory_1d3be50b2bb17407dd170f1d5da128d1def30c6b1598d6a629e79b4775265526(memPtr) {

                            mstore(add(memPtr, 0), "15")

                        }

                        function copy_literal_to_memory_1d3be50b2bb17407dd170f1d5da128d1def30c6b1598d6a629e79b4775265526() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(2)
                            store_literal_in_memory_1d3be50b2bb17407dd170f1d5da128d1def30c6b1598d6a629e79b4775265526(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_1d3be50b2bb17407dd170f1d5da128d1def30c6b1598d6a629e79b4775265526_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_1d3be50b2bb17407dd170f1d5da128d1def30c6b1598d6a629e79b4775265526()
                        }

                        function store_literal_in_memory_81e080ffc23e8b8d44dd829bc823229e92b893eb1d8f624419d3f5682eb97fc3(memPtr) {

                            mstore(add(memPtr, 0), "25")

                        }

                        function copy_literal_to_memory_81e080ffc23e8b8d44dd829bc823229e92b893eb1d8f624419d3f5682eb97fc3() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(2)
                            store_literal_in_memory_81e080ffc23e8b8d44dd829bc823229e92b893eb1d8f624419d3f5682eb97fc3(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_81e080ffc23e8b8d44dd829bc823229e92b893eb1d8f624419d3f5682eb97fc3_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_81e080ffc23e8b8d44dd829bc823229e92b893eb1d8f624419d3f5682eb97fc3()
                        }

                        function store_literal_in_memory_789bcdf275fa270780a52ae3b79bb1ce0fda7e0aaad87b57b74bb99ac290714a(memPtr) {

                            mstore(add(memPtr, 0), "13")

                        }

                        function copy_literal_to_memory_789bcdf275fa270780a52ae3b79bb1ce0fda7e0aaad87b57b74bb99ac290714a() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(2)
                            store_literal_in_memory_789bcdf275fa270780a52ae3b79bb1ce0fda7e0aaad87b57b74bb99ac290714a(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_789bcdf275fa270780a52ae3b79bb1ce0fda7e0aaad87b57b74bb99ac290714a_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_789bcdf275fa270780a52ae3b79bb1ce0fda7e0aaad87b57b74bb99ac290714a()
                        }

                        function store_literal_in_memory_1572b593c53d839d80004aa4b8c51211864104f06ace9e22be9c4365b50655ea(memPtr) {

                            mstore(add(memPtr, 0), "23")

                        }

                        function copy_literal_to_memory_1572b593c53d839d80004aa4b8c51211864104f06ace9e22be9c4365b50655ea() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(2)
                            store_literal_in_memory_1572b593c53d839d80004aa4b8c51211864104f06ace9e22be9c4365b50655ea(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_1572b593c53d839d80004aa4b8c51211864104f06ace9e22be9c4365b50655ea_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_1572b593c53d839d80004aa4b8c51211864104f06ace9e22be9c4365b50655ea()
                        }

                        function store_literal_in_memory_7880aec93413f117ef14bd4e6d130875ab2c7d7d55a064fac3c2f7bd51516380(memPtr) {

                            mstore(add(memPtr, 0), "11")

                        }

                        function copy_literal_to_memory_7880aec93413f117ef14bd4e6d130875ab2c7d7d55a064fac3c2f7bd51516380() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(2)
                            store_literal_in_memory_7880aec93413f117ef14bd4e6d130875ab2c7d7d55a064fac3c2f7bd51516380(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_7880aec93413f117ef14bd4e6d130875ab2c7d7d55a064fac3c2f7bd51516380_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_7880aec93413f117ef14bd4e6d130875ab2c7d7d55a064fac3c2f7bd51516380()
                        }

                        function store_literal_in_memory_1a192fabce13988b84994d4296e6cdc418d55e2f1d7f942188d4040b94fc57ac(memPtr) {

                            mstore(add(memPtr, 0), "10")

                        }

                        function copy_literal_to_memory_1a192fabce13988b84994d4296e6cdc418d55e2f1d7f942188d4040b94fc57ac() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(2)
                            store_literal_in_memory_1a192fabce13988b84994d4296e6cdc418d55e2f1d7f942188d4040b94fc57ac(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_1a192fabce13988b84994d4296e6cdc418d55e2f1d7f942188d4040b94fc57ac_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_1a192fabce13988b84994d4296e6cdc418d55e2f1d7f942188d4040b94fc57ac()
                        }

                        function store_literal_in_memory_e4b1702d9298fee62dfeccc57d322a463ad55ca201256d01f62b45b2e1c21c10(memPtr) {

                            mstore(add(memPtr, 0), "8")

                        }

                        function copy_literal_to_memory_e4b1702d9298fee62dfeccc57d322a463ad55ca201256d01f62b45b2e1c21c10() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(1)
                            store_literal_in_memory_e4b1702d9298fee62dfeccc57d322a463ad55ca201256d01f62b45b2e1c21c10(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_e4b1702d9298fee62dfeccc57d322a463ad55ca201256d01f62b45b2e1c21c10_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_e4b1702d9298fee62dfeccc57d322a463ad55ca201256d01f62b45b2e1c21c10()
                        }

                        function store_literal_in_memory_8fe7b983c83186f2bb4fe7874403b14e48744b4c5f28219cbc58c32323190062(memPtr) {

                            mstore(add(memPtr, 0), "14.25")

                        }

                        function copy_literal_to_memory_8fe7b983c83186f2bb4fe7874403b14e48744b4c5f28219cbc58c32323190062() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(5)
                            store_literal_in_memory_8fe7b983c83186f2bb4fe7874403b14e48744b4c5f28219cbc58c32323190062(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_8fe7b983c83186f2bb4fe7874403b14e48744b4c5f28219cbc58c32323190062_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_8fe7b983c83186f2bb4fe7874403b14e48744b4c5f28219cbc58c32323190062()
                        }

                        function store_literal_in_memory_da3d464687fba60756c7debf376611beed660b85b1a8cc9153373d2756ff3096(memPtr) {

                            mstore(add(memPtr, 0), "10.5")

                        }

                        function copy_literal_to_memory_da3d464687fba60756c7debf376611beed660b85b1a8cc9153373d2756ff3096() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(4)
                            store_literal_in_memory_da3d464687fba60756c7debf376611beed660b85b1a8cc9153373d2756ff3096(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_da3d464687fba60756c7debf376611beed660b85b1a8cc9153373d2756ff3096_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_da3d464687fba60756c7debf376611beed660b85b1a8cc9153373d2756ff3096()
                        }

                        function store_literal_in_memory_52f1a9b320cab38e5da8a8f97989383aab0a49165fc91c737310e4f7e9821021(memPtr) {

                            mstore(add(memPtr, 0), "7")

                        }

                        function copy_literal_to_memory_52f1a9b320cab38e5da8a8f97989383aab0a49165fc91c737310e4f7e9821021() -> memPtr {
                            memPtr := allocate_memory_array_t_string_memory_ptr(1)
                            store_literal_in_memory_52f1a9b320cab38e5da8a8f97989383aab0a49165fc91c737310e4f7e9821021(add(memPtr, 32))
                        }

                        function convert_t_stringliteral_52f1a9b320cab38e5da8a8f97989383aab0a49165fc91c737310e4f7e9821021_to_t_string_memory_ptr() -> converted {
                            converted := copy_literal_to_memory_52f1a9b320cab38e5da8a8f97989383aab0a49165fc91c737310e4f7e9821021()
                        }

                        /// @ast-id 26458
                        /// @src 149:17161:18042  "function rangeLocation(int24 tickLower, int24 tickUpper) internal pure returns (string memory, string memory) {..."
                        function fun_rangeLocation_26458(var_tickLower_26349, var_tickUpper_26351) -> var__26354_mpos, var__26356_mpos {
                            /// @src 149:17241:17254  "string memory"
                            let zero_t_string_memory_ptr_1055_mpos := zero_value_for_split_t_string_memory_ptr()
                            var__26354_mpos := zero_t_string_memory_ptr_1055_mpos
                            /// @src 149:17256:17269  "string memory"
                            let zero_t_string_memory_ptr_1056_mpos := zero_value_for_split_t_string_memory_ptr()
                            var__26356_mpos := zero_t_string_memory_ptr_1056_mpos

                            /// @src 149:17299:17308  "tickLower"
                            let _1057 := var_tickLower_26349
                            let expr_26360 := _1057
                            /// @src 149:17311:17320  "tickUpper"
                            let _1058 := var_tickUpper_26351
                            let expr_26361 := _1058
                            /// @src 149:17299:17320  "tickLower + tickUpper"
                            let expr_26362 := checked_add_t_int24(expr_26360, expr_26361)

                            /// @src 149:17298:17321  "(tickLower + tickUpper)"
                            let expr_26363 := expr_26362
                            /// @src 149:17324:17325  "2"
                            let expr_26364 := 0x02
                            /// @src 149:17298:17325  "(tickLower + tickUpper) / 2"
                            let expr_26365 := checked_div_t_int24(expr_26363, convert_t_rational_2_by_1_to_t_int24(expr_26364))

                            /// @src 149:17281:17325  "int24 midPoint = (tickLower + tickUpper) / 2"
                            let var_midPoint_26359 := expr_26365
                            /// @src 149:17339:17347  "midPoint"
                            let _1059 := var_midPoint_26359
                            let expr_26367 := _1059
                            /// @src 149:17350:17358  "-125_000"
                            let expr_26369 := 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe17b8
                            /// @src 149:17339:17358  "midPoint < -125_000"
                            let expr_26370 := slt(cleanup_t_int24(expr_26367), convert_t_rational_minus_125000_by_1_to_t_int24(expr_26369))
                            /// @src 149:17335:18036  "if (midPoint < -125_000) {..."
                            switch expr_26370
                            case 0 {
                                /// @src 149:17412:17420  "midPoint"
                                let _1060 := var_midPoint_26359
                                let expr_26376 := _1060
                                /// @src 149:17423:17430  "-75_000"
                                let expr_26378 := 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffedb08
                                /// @src 149:17412:17430  "midPoint < -75_000"
                                let expr_26379 := slt(cleanup_t_int24(expr_26376), convert_t_rational_minus_75000_by_1_to_t_int24(expr_26378))
                                /// @src 149:17408:18036  "if (midPoint < -75_000) {..."
                                switch expr_26379
                                case 0 {
                                    /// @src 149:17487:17495  "midPoint"
                                    let _1061 := var_midPoint_26359
                                    let expr_26385 := _1061
                                    /// @src 149:17498:17505  "-25_000"
                                    let expr_26387 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff9e58
                                    /// @src 149:17487:17505  "midPoint < -25_000"
                                    let expr_26388 := slt(cleanup_t_int24(expr_26385), convert_t_rational_minus_25000_by_1_to_t_int24(expr_26387))
                                    /// @src 149:17483:18036  "if (midPoint < -25_000) {..."
                                    switch expr_26388
                                    case 0 {
                                        /// @src 149:17563:17571  "midPoint"
                                        let _1062 := var_midPoint_26359
                                        let expr_26394 := _1062
                                        /// @src 149:17574:17580  "-5_000"
                                        let expr_26396 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78
                                        /// @src 149:17563:17580  "midPoint < -5_000"
                                        let expr_26397 := slt(cleanup_t_int24(expr_26394), convert_t_rational_minus_5000_by_1_to_t_int24(expr_26396))
                                        /// @src 149:17559:18036  "if (midPoint < -5_000) {..."
                                        switch expr_26397
                                        case 0 {
                                            /// @src 149:17636:17644  "midPoint"
                                            let _1063 := var_midPoint_26359
                                            let expr_26403 := _1063
                                            /// @src 149:17647:17648  "0"
                                            let expr_26404 := 0x00
                                            /// @src 149:17636:17648  "midPoint < 0"
                                            let expr_26405 := slt(cleanup_t_int24(expr_26403), convert_t_rational_0_by_1_to_t_int24(expr_26404))
                                            /// @src 149:17632:18036  "if (midPoint < 0) {..."
                                            switch expr_26405
                                            case 0 {
                                                /// @src 149:17704:17712  "midPoint"
                                                let _1064 := var_midPoint_26359
                                                let expr_26411 := _1064
                                                /// @src 149:17715:17720  "5_000"
                                                let expr_26412 := 0x1388
                                                /// @src 149:17704:17720  "midPoint < 5_000"
                                                let expr_26413 := slt(cleanup_t_int24(expr_26411), convert_t_rational_5000_by_1_to_t_int24(expr_26412))
                                                /// @src 149:17700:18036  "if (midPoint < 5_000) {..."
                                                switch expr_26413
                                                case 0 {
                                                    /// @src 149:17776:17784  "midPoint"
                                                    let _1065 := var_midPoint_26359
                                                    let expr_26419 := _1065
                                                    /// @src 149:17787:17793  "25_000"
                                                    let expr_26420 := 0x61a8
                                                    /// @src 149:17776:17793  "midPoint < 25_000"
                                                    let expr_26421 := slt(cleanup_t_int24(expr_26419), convert_t_rational_25000_by_1_to_t_int24(expr_26420))
                                                    /// @src 149:17772:18036  "if (midPoint < 25_000) {..."
                                                    switch expr_26421
                                                    case 0 {
                                                        /// @src 149:17849:17857  "midPoint"
                                                        let _1066 := var_midPoint_26359
                                                        let expr_26427 := _1066
                                                        /// @src 149:17860:17866  "75_000"
                                                        let expr_26428 := 0x0124f8
                                                        /// @src 149:17849:17866  "midPoint < 75_000"
                                                        let expr_26429 := slt(cleanup_t_int24(expr_26427), convert_t_rational_75000_by_1_to_t_int24(expr_26428))
                                                        /// @src 149:17845:18036  "if (midPoint < 75_000) {..."
                                                        switch expr_26429
                                                        case 0 {
                                                            /// @src 149:17922:17930  "midPoint"
                                                            let _1067 := var_midPoint_26359
                                                            let expr_26435 := _1067
                                                            /// @src 149:17933:17940  "125_000"
                                                            let expr_26436 := 0x01e848
                                                            /// @src 149:17922:17940  "midPoint < 125_000"
                                                            let expr_26437 := slt(cleanup_t_int24(expr_26435), convert_t_rational_125000_by_1_to_t_int24(expr_26436))
                                                            /// @src 149:17918:18036  "if (midPoint < 125_000) {..."
                                                            switch expr_26437
                                                            case 0 {
                                                                /// @src 149:18006:18025  "return ('24', '27')"
                                                                var__26354_mpos := convert_t_stringliteral_6585423cb6456b1d4957f6454d2f004f0c4f58d53a00082412d5c2ef4b1b31fd_to_t_string_memory_ptr()
                                                                var__26356_mpos := convert_t_stringliteral_58a280f74f57bf051c40f060139dc747e015be52f68c57e2c4ab2e4bd4146f43_to_t_string_memory_ptr()
                                                                leave
                                                                /// @src 149:17918:18036  "if (midPoint < 125_000) {..."
                                                            }
                                                            default {
                                                                /// @src 149:17956:17975  "return ('21', '27')"
                                                                var__26354_mpos := convert_t_stringliteral_f4c2b5de886427473655d4c904c743576dc2d53249b7535d96c06cc97ae7216b_to_t_string_memory_ptr()
                                                                var__26356_mpos := convert_t_stringliteral_58a280f74f57bf051c40f060139dc747e015be52f68c57e2c4ab2e4bd4146f43_to_t_string_memory_ptr()
                                                                leave
                                                                /// @src 149:17918:18036  "if (midPoint < 125_000) {..."
                                                            }
                                                            /// @src 149:17845:18036  "if (midPoint < 75_000) {..."
                                                        }
                                                        default {
                                                            /// @src 149:17882:17901  "return ('18', '26')"
                                                            var__26354_mpos := convert_t_stringliteral_8fef2229291b68be841adf029e58b87f39ba144b2d3b0af1760243d0a9bc6a1c_to_t_string_memory_ptr()
                                                            var__26356_mpos := convert_t_stringliteral_9cce9eb03c9f29c6481fca9f0f942b15bef0bbbc47fda0ddb44df157019835d9_to_t_string_memory_ptr()
                                                            leave
                                                            /// @src 149:17845:18036  "if (midPoint < 75_000) {..."
                                                        }
                                                        /// @src 149:17772:18036  "if (midPoint < 25_000) {..."
                                                    }
                                                    default {
                                                        /// @src 149:17809:17828  "return ('15', '25')"
                                                        var__26354_mpos := convert_t_stringliteral_1d3be50b2bb17407dd170f1d5da128d1def30c6b1598d6a629e79b4775265526_to_t_string_memory_ptr()
                                                        var__26356_mpos := convert_t_stringliteral_81e080ffc23e8b8d44dd829bc823229e92b893eb1d8f624419d3f5682eb97fc3_to_t_string_memory_ptr()
                                                        leave
                                                        /// @src 149:17772:18036  "if (midPoint < 25_000) {..."
                                                    }
                                                    /// @src 149:17700:18036  "if (midPoint < 5_000) {..."
                                                }
                                                default {
                                                    /// @src 149:17736:17755  "return ('13', '23')"
                                                    var__26354_mpos := convert_t_stringliteral_789bcdf275fa270780a52ae3b79bb1ce0fda7e0aaad87b57b74bb99ac290714a_to_t_string_memory_ptr()
                                                    var__26356_mpos := convert_t_stringliteral_1572b593c53d839d80004aa4b8c51211864104f06ace9e22be9c4365b50655ea_to_t_string_memory_ptr()
                                                    leave
                                                    /// @src 149:17700:18036  "if (midPoint < 5_000) {..."
                                                }
                                                /// @src 149:17632:18036  "if (midPoint < 0) {..."
                                            }
                                            default {
                                                /// @src 149:17664:17683  "return ('11', '21')"
                                                var__26354_mpos := convert_t_stringliteral_7880aec93413f117ef14bd4e6d130875ab2c7d7d55a064fac3c2f7bd51516380_to_t_string_memory_ptr()
                                                var__26356_mpos := convert_t_stringliteral_f4c2b5de886427473655d4c904c743576dc2d53249b7535d96c06cc97ae7216b_to_t_string_memory_ptr()
                                                leave
                                                /// @src 149:17632:18036  "if (midPoint < 0) {..."
                                            }
                                            /// @src 149:17559:18036  "if (midPoint < -5_000) {..."
                                        }
                                        default {
                                            /// @src 149:17596:17615  "return ('10', '18')"
                                            var__26354_mpos := convert_t_stringliteral_1a192fabce13988b84994d4296e6cdc418d55e2f1d7f942188d4040b94fc57ac_to_t_string_memory_ptr()
                                            var__26356_mpos := convert_t_stringliteral_8fef2229291b68be841adf029e58b87f39ba144b2d3b0af1760243d0a9bc6a1c_to_t_string_memory_ptr()
                                            leave
                                            /// @src 149:17559:18036  "if (midPoint < -5_000) {..."
                                        }
                                        /// @src 149:17483:18036  "if (midPoint < -25_000) {..."
                                    }
                                    default {
                                        /// @src 149:17521:17542  "return ('8', '14.25')"
                                        var__26354_mpos := convert_t_stringliteral_e4b1702d9298fee62dfeccc57d322a463ad55ca201256d01f62b45b2e1c21c10_to_t_string_memory_ptr()
                                        var__26356_mpos := convert_t_stringliteral_8fe7b983c83186f2bb4fe7874403b14e48744b4c5f28219cbc58c32323190062_to_t_string_memory_ptr()
                                        leave
                                        /// @src 149:17483:18036  "if (midPoint < -25_000) {..."
                                    }
                                    /// @src 149:17408:18036  "if (midPoint < -75_000) {..."
                                }
                                default {
                                    /// @src 149:17446:17466  "return ('8', '10.5')"
                                    var__26354_mpos := convert_t_stringliteral_e4b1702d9298fee62dfeccc57d322a463ad55ca201256d01f62b45b2e1c21c10_to_t_string_memory_ptr()
                                    var__26356_mpos := convert_t_stringliteral_da3d464687fba60756c7debf376611beed660b85b1a8cc9153373d2756ff3096_to_t_string_memory_ptr()
                                    leave
                                    /// @src 149:17408:18036  "if (midPoint < -75_000) {..."
                                }
                                /// @src 149:17335:18036  "if (midPoint < -125_000) {..."
                            }
                            default {
                                /// @src 149:17374:17391  "return ('8', '7')"
                                var__26354_mpos := convert_t_stringliteral_e4b1702d9298fee62dfeccc57d322a463ad55ca201256d01f62b45b2e1c21c10_to_t_string_memory_ptr()
                                var__26356_mpos := convert_t_stringliteral_52f1a9b320cab38e5da8a8f97989383aab0a49165fc91c737310e4f7e9821021_to_t_string_memory_ptr()
                                leave
                                /// @src 149:17335:18036  "if (midPoint < -125_000) {..."
                            }

                        }
                        /// @src 148:613:18548  "library NFTDescriptor {..."

                        function leftAlign_t_uint256(value) -> aligned {
                            aligned := value
                        }

                        function abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value, pos) {
                            mstore(pos, leftAlign_t_uint256(cleanup_t_uint256(value)))
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

                        function abi_encode_tuple_packed_t_uint256_t_address__to_t_uint256_t_address__nonPadded_inplace_fromStack(pos , value0, value1) -> end {

                            abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value0,  pos)
                            pos := add(pos, 32)

                            abi_encode_t_address_to_t_address_nonPadded_inplace_fromStack(value1,  pos)
                            pos := add(pos, 20)

                            end := pos
                        }

                        function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                            data := ptr

                            data := add(ptr, 0x20)

                        }

                        function shift_right_0_unsigned(value) -> newValue {
                            newValue :=

                            shr(0, value)

                        }

                        function convert_t_uint256_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
                        }

                        function convert_t_bytes32_to_t_uint256(value) -> converted {
                            converted := convert_t_uint256_to_t_uint256(shift_right_0_unsigned(value))
                        }

                        function checked_mul_t_uint8(x, y) -> product {
                            x := cleanup_t_uint8(x)
                            y := cleanup_t_uint8(y)
                            let product_raw := mul(x, y)
                            product := cleanup_t_uint8(product_raw)

                            if iszero(eq(product, product_raw)) { panic_error_0x11() }

                        }

                        function checked_add_t_uint8(x, y) -> sum {
                            x := cleanup_t_uint8(x)
                            y := cleanup_t_uint8(y)
                            sum := add(x, y)

                            if gt(sum, 0xff) { panic_error_0x11() }

                        }

                        /// @ast-id 26534
                        /// @src 149:19116:19372  "function isRare(uint256 tokenId, address poolAddress) internal pure returns (bool) {..."
                        function fun_isRare_26534(var_tokenId_26495, var_poolAddress_26497) -> var__26500 {
                            /// @src 149:19193:19197  "bool"
                            let zero_t_bool_1068 := zero_value_for_split_t_bool()
                            var__26500 := zero_t_bool_1068

                            /// @src 149:19248:19255  "tokenId"
                            let _1069 := var_tokenId_26495
                            let expr_26507 := _1069
                            /// @src 149:19257:19268  "poolAddress"
                            let _1070 := var_poolAddress_26497
                            let expr_26508 := _1070
                            /// @src 149:19231:19269  "abi.encodePacked(tokenId, poolAddress)"

                            let expr_26509_mpos := allocate_unbounded()
                            let _1071 := add(expr_26509_mpos, 0x20)

                            let _1072 := abi_encode_tuple_packed_t_uint256_t_address__to_t_uint256_t_address__nonPadded_inplace_fromStack(_1071, expr_26507, expr_26508)
                            mstore(expr_26509_mpos, sub(_1072, add(expr_26509_mpos, 0x20)))
                            finalize_allocation(expr_26509_mpos, sub(_1072, expr_26509_mpos))
                            /// @src 149:19221:19270  "keccak256(abi.encodePacked(tokenId, poolAddress))"
                            let expr_26510 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_26509_mpos), array_length_t_bytes_memory_ptr(expr_26509_mpos))
                            /// @src 149:19209:19270  "bytes32 h = keccak256(abi.encodePacked(tokenId, poolAddress))"
                            let var_h_26503 := expr_26510
                            /// @src 149:19295:19296  "h"
                            let _1073 := var_h_26503
                            let expr_26514 := _1073
                            /// @src 149:19287:19297  "uint256(h)"
                            let expr_26515 := convert_t_bytes32_to_t_uint256(expr_26514)
                            /// @src 149:19300:19317  "type(uint256).max"
                            let expr_26520 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            /// @src 149:19321:19322  "1"
                            let expr_26521 := 0x01
                            /// @src 149:19325:19332  "BitMath"
                            let expr_26522_address := linkersymbol("uniswap/v3-core-1.0.0/contracts/libraries/BitMath.sol:BitMath")
                            /// @src 149:19352:19359  "tokenId"
                            let _1074 := var_tokenId_26495
                            let expr_26524 := _1074
                            /// @src 149:19325:19360  "BitMath.mostSignificantBit(tokenId)"
                            let expr_26525 := fun_mostSignificantBit_25295(expr_26524)
                            /// @src 149:19363:19364  "2"
                            let expr_26526 := 0x02
                            /// @src 149:19325:19364  "BitMath.mostSignificantBit(tokenId) * 2"
                            let expr_26527 := checked_mul_t_uint8(expr_26525, convert_t_rational_2_by_1_to_t_uint8(expr_26526))

                            /// @src 149:19321:19364  "1 + BitMath.mostSignificantBit(tokenId) * 2"
                            let expr_26528 := checked_add_t_uint8(convert_t_rational_1_by_1_to_t_uint8(expr_26521), expr_26527)

                            /// @src 149:19320:19365  "(1 + BitMath.mostSignificantBit(tokenId) * 2)"
                            let expr_26529 := expr_26528
                            /// @src 149:19300:19365  "type(uint256).max / (1 + BitMath.mostSignificantBit(tokenId) * 2)"
                            let expr_26530 := checked_div_t_uint256(expr_26520, convert_t_uint8_to_t_uint256(expr_26529))

                            /// @src 149:19287:19365  "uint256(h) < type(uint256).max / (1 + BitMath.mostSignificantBit(tokenId) * 2)"
                            let expr_26531 := lt(cleanup_t_uint256(expr_26515), cleanup_t_uint256(expr_26530))
                            /// @src 149:19280:19365  "return uint256(h) < type(uint256).max / (1 + BitMath.mostSignificantBit(tokenId) * 2)"
                            var__26500 := expr_26531
                            leave

                        }
                        /// @src 148:613:18548  "library NFTDescriptor {..."

                        function zero_value_for_split_t_int256() -> ret {
                            ret := 0
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

                        function convert_t_rational_0_by_1_to_t_int256(value) -> converted {
                            converted := cleanup_t_int256(identity(cleanup_t_rational_0_by_1(value)))
                        }

                        function store_literal_in_memory_dfe37ab0612d67daeef366062296f3ebcaf7e2cc3eb392bf66a6cb5a7bed3bcd(memPtr) {

                            mstore(add(memPtr, 0), "SignedSafeMath: subtraction over")

                            mstore(add(memPtr, 32), "flow")

                        }

                        function abi_encode_t_stringliteral_dfe37ab0612d67daeef366062296f3ebcaf7e2cc3eb392bf66a6cb5a7bed3bcd_to_t_string_memory_ptr_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 36)
                            store_literal_in_memory_dfe37ab0612d67daeef366062296f3ebcaf7e2cc3eb392bf66a6cb5a7bed3bcd(pos)
                            end := add(pos, 64)
                        }

                        function abi_encode_tuple_t_stringliteral_dfe37ab0612d67daeef366062296f3ebcaf7e2cc3eb392bf66a6cb5a7bed3bcd__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                            tail := add(headStart, 32)

                            mstore(add(headStart, 0), sub(tail, headStart))
                            tail := abi_encode_t_stringliteral_dfe37ab0612d67daeef366062296f3ebcaf7e2cc3eb392bf66a6cb5a7bed3bcd_to_t_string_memory_ptr_fromStack( tail)

                        }

                        function require_helper_t_stringliteral_dfe37ab0612d67daeef366062296f3ebcaf7e2cc3eb392bf66a6cb5a7bed3bcd(condition ) {
                            if iszero(condition)
                            {

                                let memPtr := allocate_unbounded()

                                mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                                let end := abi_encode_tuple_t_stringliteral_dfe37ab0612d67daeef366062296f3ebcaf7e2cc3eb392bf66a6cb5a7bed3bcd__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                                revert(memPtr, sub(end, memPtr))
                            }
                        }

                        /// @ast-id 24908
                        /// @src 33:2037:2250  "function sub(int256 a, int256 b) internal pure returns (int256) {..."
                        function fun_sub_24908(var_a_24871, var_b_24873) -> var__24876 {
                            /// @src 33:2093:2099  "int256"
                            let zero_t_int256_1075 := zero_value_for_split_t_int256()
                            var__24876 := zero_t_int256_1075

                            /// @src 33:2122:2123  "a"
                            let _1076 := var_a_24871
                            let expr_24880 := _1076
                            /// @src 33:2126:2127  "b"
                            let _1077 := var_b_24873
                            let expr_24881 := _1077
                            /// @src 33:2122:2127  "a - b"
                            let expr_24882 := checked_sub_t_int256(expr_24880, expr_24881)

                            /// @src 33:2111:2127  "int256 c = a - b"
                            let var_c_24879 := expr_24882
                            /// @src 33:2146:2147  "b"
                            let _1078 := var_b_24873
                            let expr_24885 := _1078
                            /// @src 33:2151:2152  "0"
                            let expr_24886 := 0x00
                            /// @src 33:2146:2152  "b >= 0"
                            let expr_24887 := iszero(slt(cleanup_t_int256(expr_24885), convert_t_rational_0_by_1_to_t_int256(expr_24886)))
                            /// @src 33:2146:2162  "b >= 0 && c <= a"
                            let expr_24891 := expr_24887
                            if expr_24891 {
                                /// @src 33:2156:2157  "c"
                                let _1079 := var_c_24879
                                let expr_24888 := _1079
                                /// @src 33:2161:2162  "a"
                                let _1080 := var_a_24871
                                let expr_24889 := _1080
                                /// @src 33:2156:2162  "c <= a"
                                let expr_24890 := iszero(sgt(cleanup_t_int256(expr_24888), cleanup_t_int256(expr_24889)))
                                /// @src 33:2146:2162  "b >= 0 && c <= a"
                                expr_24891 := expr_24890
                            }
                            /// @src 33:2145:2163  "(b >= 0 && c <= a)"
                            let expr_24892 := expr_24891
                            /// @src 33:2145:2183  "(b >= 0 && c <= a) || (b < 0 && c > a)"
                            let expr_24901 := expr_24892
                            if iszero(expr_24901) {
                                /// @src 33:2168:2169  "b"
                                let _1081 := var_b_24873
                                let expr_24893 := _1081
                                /// @src 33:2172:2173  "0"
                                let expr_24894 := 0x00
                                /// @src 33:2168:2173  "b < 0"
                                let expr_24895 := slt(cleanup_t_int256(expr_24893), convert_t_rational_0_by_1_to_t_int256(expr_24894))
                                /// @src 33:2168:2182  "b < 0 && c > a"
                                let expr_24899 := expr_24895
                                if expr_24899 {
                                    /// @src 33:2177:2178  "c"
                                    let _1082 := var_c_24879
                                    let expr_24896 := _1082
                                    /// @src 33:2181:2182  "a"
                                    let _1083 := var_a_24871
                                    let expr_24897 := _1083
                                    /// @src 33:2177:2182  "c > a"
                                    let expr_24898 := sgt(cleanup_t_int256(expr_24896), cleanup_t_int256(expr_24897))
                                    /// @src 33:2168:2182  "b < 0 && c > a"
                                    expr_24899 := expr_24898
                                }
                                /// @src 33:2167:2183  "(b < 0 && c > a)"
                                let expr_24900 := expr_24899
                                /// @src 33:2145:2183  "(b >= 0 && c <= a) || (b < 0 && c > a)"
                                expr_24901 := expr_24900
                            }
                            /// @src 33:2137:2224  "require((b >= 0 && c <= a) || (b < 0 && c > a), \"SignedSafeMath: subtraction overflow\")"
                            require_helper_t_stringliteral_dfe37ab0612d67daeef366062296f3ebcaf7e2cc3eb392bf66a6cb5a7bed3bcd(expr_24901)
                            /// @src 33:2242:2243  "c"
                            let _1084 := var_c_24879
                            let expr_24905 := _1084
                            /// @src 33:2235:2243  "return c"
                            var__24876 := expr_24905
                            leave

                        }
                        /// @src 148:613:18548  "library NFTDescriptor {..."

                        /// @ast-id 11578
                        /// @src 148:10791:10893  "function abs(int256 x) private pure returns (uint256) {..."
                        function fun_abs_11578(var_x_11561) -> var__11564 {
                            /// @src 148:10836:10843  "uint256"
                            let zero_t_uint256_1085 := zero_value_for_split_t_uint256()
                            var__11564 := zero_t_uint256_1085

                            /// @src 148:10870:10871  "x"
                            let _1086 := var_x_11561
                            let expr_11568 := _1086
                            /// @src 148:10875:10876  "0"
                            let expr_11569 := 0x00
                            /// @src 148:10870:10876  "x >= 0"
                            let expr_11570 := iszero(slt(cleanup_t_int256(expr_11568), convert_t_rational_0_by_1_to_t_int256(expr_11569)))
                            /// @src 148:10870:10885  "x >= 0 ? x : -x"
                            let expr_11574
                            switch expr_11570
                            case 0 {
                                /// @src 148:10884:10885  "x"
                                let _1087 := var_x_11561
                                let expr_11572 := _1087
                                /// @src 148:10883:10885  "-x"
                                let expr_11573 := negate_t_int256(expr_11572)
                                /// @src 148:10870:10885  "x >= 0 ? x : -x"
                                expr_11574 := expr_11573
                            }
                            default {
                                /// @src 148:10879:10880  "x"
                                let _1088 := var_x_11561
                                let expr_11571 := _1088
                                /// @src 148:10870:10885  "x >= 0 ? x : -x"
                                expr_11574 := expr_11571
                            }
                            /// @src 148:10862:10886  "uint256(x >= 0 ? x : -x)"
                            let expr_11575 := convert_t_int256_to_t_uint256(expr_11574)
                            /// @src 148:10855:10886  "return uint256(x >= 0 ? x : -x)"
                            var__11564 := expr_11575
                            leave

                        }
                        /// @src 148:613:18548  "library NFTDescriptor {..."

                        function convert_t_rational_64_by_1_to_t_uint8(value) -> converted {
                            converted := cleanup_t_uint8(identity(cleanup_t_rational_64_by_1(value)))
                        }

                        function convert_t_rational_16_by_1_to_t_uint8(value) -> converted {
                            converted := cleanup_t_uint8(identity(cleanup_t_rational_16_by_1(value)))
                        }

                        function convert_t_rational_8_by_1_to_t_uint8(value) -> converted {
                            converted := cleanup_t_uint8(identity(cleanup_t_rational_8_by_1(value)))
                        }

                        /// @ast-id 25295
                        /// @src 105:708:1439  "function mostSignificantBit(uint256 x) internal pure returns (uint8 r) {..."
                        function fun_mostSignificantBit_25295(var_x_25184) -> var_r_25187 {
                            /// @src 105:770:777  "uint8 r"
                            let zero_t_uint8_1089 := zero_value_for_split_t_uint8()
                            var_r_25187 := zero_t_uint8_1089

                            /// @src 105:797:798  "x"
                            let _1090 := var_x_25184
                            let expr_25190 := _1090
                            /// @src 105:801:802  "0"
                            let expr_25191 := 0x00
                            /// @src 105:797:802  "x > 0"
                            let expr_25192 := gt(cleanup_t_uint256(expr_25190), convert_t_rational_0_by_1_to_t_uint256(expr_25191))
                            /// @src 105:789:803  "require(x > 0)"
                            require_helper(expr_25192)
                            /// @src 105:818:819  "x"
                            let _1091 := var_x_25184
                            let expr_25195 := _1091
                            /// @src 105:823:858  "0x100000000000000000000000000000000"
                            let expr_25196 := 0x0100000000000000000000000000000000
                            /// @src 105:818:858  "x >= 0x100000000000000000000000000000000"
                            let expr_25197 := iszero(lt(cleanup_t_uint256(expr_25195), convert_t_rational_340282366920938463463374607431768211456_by_1_to_t_uint256(expr_25196)))
                            /// @src 105:814:916  "if (x >= 0x100000000000000000000000000000000) {..."
                            if expr_25197 {
                                /// @src 105:880:883  "128"
                                let expr_25199 := 0x80
                                /// @src 105:874:883  "x >>= 128"
                                let _1092 := convert_t_rational_128_by_1_to_t_uint8(expr_25199)
                                let _1093 := var_x_25184
                                let expr_25200 :=
                                shift_right_t_uint256_t_uint8(_1093, _1092)

                                var_x_25184 := expr_25200
                                /// @src 105:902:905  "128"
                                let expr_25203 := 0x80
                                /// @src 105:897:905  "r += 128"
                                let _1094 := convert_t_rational_128_by_1_to_t_uint8(expr_25203)
                                let _1095 := var_r_25187
                                let expr_25204 := checked_add_t_uint8(_1095, _1094)

                                var_r_25187 := expr_25204
                                /// @src 105:814:916  "if (x >= 0x100000000000000000000000000000000) {..."
                            }
                            /// @src 105:929:930  "x"
                            let _1096 := var_x_25184
                            let expr_25208 := _1096
                            /// @src 105:934:953  "0x10000000000000000"
                            let expr_25209 := 0x010000000000000000
                            /// @src 105:929:953  "x >= 0x10000000000000000"
                            let expr_25210 := iszero(lt(cleanup_t_uint256(expr_25208), convert_t_rational_18446744073709551616_by_1_to_t_uint256(expr_25209)))
                            /// @src 105:925:1009  "if (x >= 0x10000000000000000) {..."
                            if expr_25210 {
                                /// @src 105:975:977  "64"
                                let expr_25212 := 0x40
                                /// @src 105:969:977  "x >>= 64"
                                let _1097 := convert_t_rational_64_by_1_to_t_uint8(expr_25212)
                                let _1098 := var_x_25184
                                let expr_25213 :=
                                shift_right_t_uint256_t_uint8(_1098, _1097)

                                var_x_25184 := expr_25213
                                /// @src 105:996:998  "64"
                                let expr_25216 := 0x40
                                /// @src 105:991:998  "r += 64"
                                let _1099 := convert_t_rational_64_by_1_to_t_uint8(expr_25216)
                                let _1100 := var_r_25187
                                let expr_25217 := checked_add_t_uint8(_1100, _1099)

                                var_r_25187 := expr_25217
                                /// @src 105:925:1009  "if (x >= 0x10000000000000000) {..."
                            }
                            /// @src 105:1022:1023  "x"
                            let _1101 := var_x_25184
                            let expr_25221 := _1101
                            /// @src 105:1027:1038  "0x100000000"
                            let expr_25222 := 0x0100000000
                            /// @src 105:1022:1038  "x >= 0x100000000"
                            let expr_25223 := iszero(lt(cleanup_t_uint256(expr_25221), convert_t_rational_4294967296_by_1_to_t_uint256(expr_25222)))
                            /// @src 105:1018:1094  "if (x >= 0x100000000) {..."
                            if expr_25223 {
                                /// @src 105:1060:1062  "32"
                                let expr_25225 := 0x20
                                /// @src 105:1054:1062  "x >>= 32"
                                let _1102 := convert_t_rational_32_by_1_to_t_uint8(expr_25225)
                                let _1103 := var_x_25184
                                let expr_25226 :=
                                shift_right_t_uint256_t_uint8(_1103, _1102)

                                var_x_25184 := expr_25226
                                /// @src 105:1081:1083  "32"
                                let expr_25229 := 0x20
                                /// @src 105:1076:1083  "r += 32"
                                let _1104 := convert_t_rational_32_by_1_to_t_uint8(expr_25229)
                                let _1105 := var_r_25187
                                let expr_25230 := checked_add_t_uint8(_1105, _1104)

                                var_r_25187 := expr_25230
                                /// @src 105:1018:1094  "if (x >= 0x100000000) {..."
                            }
                            /// @src 105:1107:1108  "x"
                            let _1106 := var_x_25184
                            let expr_25234 := _1106
                            /// @src 105:1112:1119  "0x10000"
                            let expr_25235 := 0x010000
                            /// @src 105:1107:1119  "x >= 0x10000"
                            let expr_25236 := iszero(lt(cleanup_t_uint256(expr_25234), convert_t_rational_65536_by_1_to_t_uint256(expr_25235)))
                            /// @src 105:1103:1175  "if (x >= 0x10000) {..."
                            if expr_25236 {
                                /// @src 105:1141:1143  "16"
                                let expr_25238 := 0x10
                                /// @src 105:1135:1143  "x >>= 16"
                                let _1107 := convert_t_rational_16_by_1_to_t_uint8(expr_25238)
                                let _1108 := var_x_25184
                                let expr_25239 :=
                                shift_right_t_uint256_t_uint8(_1108, _1107)

                                var_x_25184 := expr_25239
                                /// @src 105:1162:1164  "16"
                                let expr_25242 := 0x10
                                /// @src 105:1157:1164  "r += 16"
                                let _1109 := convert_t_rational_16_by_1_to_t_uint8(expr_25242)
                                let _1110 := var_r_25187
                                let expr_25243 := checked_add_t_uint8(_1110, _1109)

                                var_r_25187 := expr_25243
                                /// @src 105:1103:1175  "if (x >= 0x10000) {..."
                            }
                            /// @src 105:1188:1189  "x"
                            let _1111 := var_x_25184
                            let expr_25247 := _1111
                            /// @src 105:1193:1198  "0x100"
                            let expr_25248 := 0x0100
                            /// @src 105:1188:1198  "x >= 0x100"
                            let expr_25249 := iszero(lt(cleanup_t_uint256(expr_25247), convert_t_rational_256_by_1_to_t_uint256(expr_25248)))
                            /// @src 105:1184:1252  "if (x >= 0x100) {..."
                            if expr_25249 {
                                /// @src 105:1220:1221  "8"
                                let expr_25251 := 0x08
                                /// @src 105:1214:1221  "x >>= 8"
                                let _1112 := convert_t_rational_8_by_1_to_t_uint8(expr_25251)
                                let _1113 := var_x_25184
                                let expr_25252 :=
                                shift_right_t_uint256_t_uint8(_1113, _1112)

                                var_x_25184 := expr_25252
                                /// @src 105:1240:1241  "8"
                                let expr_25255 := 0x08
                                /// @src 105:1235:1241  "r += 8"
                                let _1114 := convert_t_rational_8_by_1_to_t_uint8(expr_25255)
                                let _1115 := var_r_25187
                                let expr_25256 := checked_add_t_uint8(_1115, _1114)

                                var_r_25187 := expr_25256
                                /// @src 105:1184:1252  "if (x >= 0x100) {..."
                            }
                            /// @src 105:1265:1266  "x"
                            let _1116 := var_x_25184
                            let expr_25260 := _1116
                            /// @src 105:1270:1274  "0x10"
                            let expr_25261 := 0x10
                            /// @src 105:1265:1274  "x >= 0x10"
                            let expr_25262 := iszero(lt(cleanup_t_uint256(expr_25260), convert_t_rational_16_by_1_to_t_uint256(expr_25261)))
                            /// @src 105:1261:1328  "if (x >= 0x10) {..."
                            if expr_25262 {
                                /// @src 105:1296:1297  "4"
                                let expr_25264 := 0x04
                                /// @src 105:1290:1297  "x >>= 4"
                                let _1117 := convert_t_rational_4_by_1_to_t_uint8(expr_25264)
                                let _1118 := var_x_25184
                                let expr_25265 :=
                                shift_right_t_uint256_t_uint8(_1118, _1117)

                                var_x_25184 := expr_25265
                                /// @src 105:1316:1317  "4"
                                let expr_25268 := 0x04
                                /// @src 105:1311:1317  "r += 4"
                                let _1119 := convert_t_rational_4_by_1_to_t_uint8(expr_25268)
                                let _1120 := var_r_25187
                                let expr_25269 := checked_add_t_uint8(_1120, _1119)

                                var_r_25187 := expr_25269
                                /// @src 105:1261:1328  "if (x >= 0x10) {..."
                            }
                            /// @src 105:1341:1342  "x"
                            let _1121 := var_x_25184
                            let expr_25273 := _1121
                            /// @src 105:1346:1349  "0x4"
                            let expr_25274 := 0x04
                            /// @src 105:1341:1349  "x >= 0x4"
                            let expr_25275 := iszero(lt(cleanup_t_uint256(expr_25273), convert_t_rational_4_by_1_to_t_uint256(expr_25274)))
                            /// @src 105:1337:1403  "if (x >= 0x4) {..."
                            if expr_25275 {
                                /// @src 105:1371:1372  "2"
                                let expr_25277 := 0x02
                                /// @src 105:1365:1372  "x >>= 2"
                                let _1122 := convert_t_rational_2_by_1_to_t_uint8(expr_25277)
                                let _1123 := var_x_25184
                                let expr_25278 :=
                                shift_right_t_uint256_t_uint8(_1123, _1122)

                                var_x_25184 := expr_25278
                                /// @src 105:1391:1392  "2"
                                let expr_25281 := 0x02
                                /// @src 105:1386:1392  "r += 2"
                                let _1124 := convert_t_rational_2_by_1_to_t_uint8(expr_25281)
                                let _1125 := var_r_25187
                                let expr_25282 := checked_add_t_uint8(_1125, _1124)

                                var_r_25187 := expr_25282
                                /// @src 105:1337:1403  "if (x >= 0x4) {..."
                            }
                            /// @src 105:1416:1417  "x"
                            let _1126 := var_x_25184
                            let expr_25286 := _1126
                            /// @src 105:1421:1424  "0x2"
                            let expr_25287 := 0x02
                            /// @src 105:1416:1424  "x >= 0x2"
                            let expr_25288 := iszero(lt(cleanup_t_uint256(expr_25286), convert_t_rational_2_by_1_to_t_uint256(expr_25287)))
                            /// @src 105:1412:1432  "if (x >= 0x2) r += 1"
                            if expr_25288 {
                                /// @src 105:1431:1432  "1"
                                let expr_25290 := 0x01
                                /// @src 105:1426:1432  "r += 1"
                                let _1127 := convert_t_rational_1_by_1_to_t_uint8(expr_25290)
                                let _1128 := var_r_25187
                                let expr_25291 := checked_add_t_uint8(_1128, _1127)

                                var_r_25187 := expr_25291
                                /// @src 105:1412:1432  "if (x >= 0x2) r += 1"
                            }

                        }
                        /// @src 148:613:18548  "library NFTDescriptor {..."

                    }

                    data ".metadata" hex"a26469706673582212200ea081bdb263046ec4b2fbaa3f8c2091c9540d996c009dd4f5f8b924fea94a1664736f6c634300081e0033"
                }

            }

