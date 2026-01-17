
/// @use-src 0:"src/LedgerChannel.sol"
object "ECTools_645" {
    code {
        /// @src 0:2827:7488  "library ECTools {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("ECTools_645_deployed"), datasize("ECTools_645_deployed"))

        setimmutable(_1, "library_deploy_address", address())

        return(_1, datasize("ECTools_645_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:2827:7488  "library ECTools {..."
        function constructor_ECTools_645() {

            /// @src 0:2827:7488  "library ECTools {..."

        }
        /// @src 0:2827:7488  "library ECTools {..."

    }
    /// @use-src 0:"src/LedgerChannel.sol"
    object "ECTools_645_deployed" {
        code {
            /// @src 0:2827:7488  "library ECTools {..."
            mstore(64, 128)

            let called_via_delegatecall := iszero(eq(loadimmutable("library_deploy_address"), address()))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x1052506f
                {
                    // isSignedBy(bytes32,string,address)

                    external_fun_isSignedBy_193()
                }

                case 0x1445f713
                {
                    // hexstrToBytes(string)

                    external_fun_hexstrToBytes_299()
                }

                case 0x1dcd9b55
                {
                    // substring(string,uint256,uint256)

                    external_fun_substring_644()
                }

                case 0x38b025b2
                {
                    // parseInt16Char(string)

                    external_fun_parseInt16Char_435()
                }

                case 0x886d3db9
                {
                    // uintToBytes32(uint256)

                    external_fun_uintToBytes32_451()
                }

                case 0xdae21454
                {
                    // toEthereumSignedMessage(string)

                    external_fun_toEthereumSignedMessage_488()
                }

                case 0xdca95419
                {
                    // recoverSigner(bytes32,string)

                    external_fun_recoverSigner_165()
                }

                case 0xe9395679
                {
                    // uintToString(uint256)

                    external_fun_uintToString_570()
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

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_bytes32(value) {
                if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
            }

            function abi_decode_t_bytes32(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bytes32(value)
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

            function abi_decode_tuple_t_bytes32t_string_memory_ptrt_address(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value1 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_address(add(headStart, offset), dataEnd)
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

            function external_fun_isSignedBy_193() {

                let param_0, param_1, param_2 :=  abi_decode_tuple_t_bytes32t_string_memory_ptrt_address(4, calldatasize())
                let ret_0 :=  fun_isSignedBy_193(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_string_memory_ptr(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
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

            function abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack_library(value0,  tail)

            }

            function external_fun_hexstrToBytes_299() {

                let param_0 :=  abi_decode_tuple_t_string_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_hexstrToBytes_299(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack_library(memPos , ret_0)
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

            function abi_decode_tuple_t_string_memory_ptrt_uint256t_uint256(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack_library(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
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

            function external_fun_substring_644() {

                let param_0, param_1, param_2 :=  abi_decode_tuple_t_string_memory_ptrt_uint256t_uint256(4, calldatasize())
                let ret_0 :=  fun_substring_644(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack_library(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack_library(value0,  add(headStart, 0))

            }

            function external_fun_parseInt16Char_435() {

                let param_0 :=  abi_decode_tuple_t_string_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_parseInt16Char_435(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_uintToBytes32_451() {

                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_uintToBytes32_451(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack_library(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bytes32_to_t_bytes32_fromStack_library(value0,  add(headStart, 0))

            }

            function external_fun_toEthereumSignedMessage_488() {

                let param_0 :=  abi_decode_tuple_t_string_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_toEthereumSignedMessage_488(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_bytes32t_string_memory_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value1 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_address_to_t_address_fromStack_library(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_address__to_t_address__fromStack_library(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack_library(value0,  add(headStart, 0))

            }

            function external_fun_recoverSigner_165() {

                let param_0, param_1 :=  abi_decode_tuple_t_bytes32t_string_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_recoverSigner_165(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_uintToString_570() {

                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_uintToString_570(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack_library(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            /// @ast-id 193
            /// @src 0:3933:4143  "function isSignedBy(bytes32 _hashedMsg, string memory _sig, address _addr) public pure returns (bool) {..."
            function fun_isSignedBy_193(var__hashedMsg_167, var__sig_169_mpos, var__addr_171) -> var__174 {
                /// @src 0:4029:4033  "bool"
                let zero_t_bool_1 := zero_value_for_split_t_bool()
                var__174 := zero_t_bool_1

                /// @src 0:4054:4059  "_addr"
                let _2 := var__addr_171
                let expr_177 := _2
                /// @src 0:4071:4074  "0x0"
                let expr_180 := 0x00
                /// @src 0:4063:4075  "address(0x0)"
                let expr_181 := convert_t_rational_0_by_1_to_t_address(expr_180)
                /// @src 0:4054:4075  "_addr != address(0x0)"
                let expr_182 := iszero(eq(cleanup_t_address(expr_177), cleanup_t_address(expr_181)))
                /// @src 0:4046:4076  "require(_addr != address(0x0))"
                require_helper(expr_182)
                /// @src 0:4095:4100  "_addr"
                let _3 := var__addr_171
                let expr_185 := _3
                /// @src 0:4118:4128  "_hashedMsg"
                let _4 := var__hashedMsg_167
                let expr_187 := _4
                /// @src 0:4130:4134  "_sig"
                let _5_mpos := var__sig_169_mpos
                let expr_188_mpos := _5_mpos
                /// @src 0:4104:4135  "recoverSigner(_hashedMsg, _sig)"
                let expr_189 := fun_recoverSigner_165(expr_187, expr_188_mpos)
                /// @src 0:4095:4135  "_addr == recoverSigner(_hashedMsg, _sig)"
                let expr_190 := eq(cleanup_t_address(expr_185), cleanup_t_address(expr_189))
                /// @src 0:4088:4135  "return _addr == recoverSigner(_hashedMsg, _sig)"
                var__174 := expr_190
                leave

            }
            /// @src 0:2827:7488  "library ECTools {..."

            function zero_value_for_split_t_bytes_memory_ptr() -> ret {
                ret := 96
            }

            function convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(value) -> converted  {
                converted := value

            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            function panic_error_0x12() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x12)
                revert(0, 0x24)
            }

            function mod_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }
                r := mod(x, y)
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
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

            function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_string_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_memory_chunk_t_bytes1(dataStart, dataSizeInBytes) {
                calldatacopy(dataStart, calldatasize(), dataSizeInBytes)
            }

            function allocate_and_zero_memory_array_t_string_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_string_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_bytes1(dataStart, dataSize)
            }

            function zero_value_for_split_t_string_memory_ptr() -> ret {
                ret := 96
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function cleanup_t_rational_16_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_16_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_16_by_1(value)))
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

            function cleanup_t_rational_31_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_31_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_31_by_1(value)))
            }

            function cleanup_t_bytes1(value) -> cleaned {
                cleaned := and(value, 0xff00000000000000000000000000000000000000000000000000000000000000)
            }

            function read_from_memoryt_bytes1(ptr) -> returnValue {

                let value := cleanup_t_bytes1(mload(ptr))

                returnValue :=

                value

            }

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            /// @ast-id 299
            /// @src 0:4194:4790  "function hexstrToBytes(string memory _hexstr) public pure returns (bytes memory) {..."
            function fun_hexstrToBytes_299(var__hexstr_195_mpos) -> var__198_mpos {
                /// @src 0:4261:4273  "bytes memory"
                let zero_t_bytes_memory_ptr_6_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var__198_mpos := zero_t_bytes_memory_ptr_6_mpos

                /// @src 0:4306:4313  "_hexstr"
                let _7_mpos := var__hexstr_195_mpos
                let expr_204_mpos := _7_mpos
                /// @src 0:4300:4314  "bytes(_hexstr)"
                let expr_205_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_204_mpos)
                /// @src 0:4300:4321  "bytes(_hexstr).length"
                let expr_206 := array_length_t_bytes_memory_ptr(expr_205_mpos)
                /// @src 0:4286:4321  "uint256 len = bytes(_hexstr).length"
                let var_len_201 := expr_206
                /// @src 0:4340:4343  "len"
                let _8 := var_len_201
                let expr_209 := _8
                /// @src 0:4346:4347  "2"
                let expr_210 := 0x02
                /// @src 0:4340:4347  "len % 2"
                let expr_211 := mod_t_uint256(expr_209, convert_t_rational_2_by_1_to_t_uint256(expr_210))

                /// @src 0:4351:4352  "0"
                let expr_212 := 0x00
                /// @src 0:4340:4352  "len % 2 == 0"
                let expr_213 := eq(cleanup_t_uint256(expr_211), convert_t_rational_0_by_1_to_t_uint256(expr_212))
                /// @src 0:4332:4353  "require(len % 2 == 0)"
                require_helper(expr_213)
                /// @src 0:4402:4405  "len"
                let _9 := var_len_201
                let expr_222 := _9
                /// @src 0:4408:4409  "2"
                let expr_223 := 0x02
                /// @src 0:4402:4409  "len / 2"
                let expr_224 := checked_div_t_uint256(expr_222, convert_t_rational_2_by_1_to_t_uint256(expr_223))

                /// @src 0:4391:4410  "new string(len / 2)"
                let expr_225_mpos := allocate_and_zero_memory_array_t_string_memory_ptr(expr_224)
                /// @src 0:4385:4411  "bytes(new string(len / 2))"
                let expr_226_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_225_mpos)
                /// @src 0:4365:4411  "bytes memory bstr = bytes(new string(len / 2))"
                let var_bstr_217_mpos := expr_226_mpos
                /// @src 0:4434:4435  "0"
                let expr_230 := 0x00
                /// @src 0:4422:4435  "uint256 k = 0"
                let var_k_229 := convert_t_rational_0_by_1_to_t_uint256(expr_230)
                /// @src 0:4446:4461  "string memory s"
                let var_s_233_mpos
                let zero_t_string_memory_ptr_10_mpos := zero_value_for_split_t_string_memory_ptr()
                var_s_233_mpos := zero_t_string_memory_ptr_10_mpos
                /// @src 0:4472:4487  "string memory r"
                let var_r_236_mpos
                let zero_t_string_memory_ptr_11_mpos := zero_value_for_split_t_string_memory_ptr()
                var_r_236_mpos := zero_t_string_memory_ptr_11_mpos
                /// @src 0:4498:4761  "for (uint256 i = 0; i < len; i += 2) {..."
                for {
                    /// @src 0:4515:4516  "0"
                    let expr_240 := 0x00
                    /// @src 0:4503:4516  "uint256 i = 0"
                    let var_i_239 := convert_t_rational_0_by_1_to_t_uint256(expr_240)
                    } 1 {
                    /// @src 0:4532:4533  "2"
                    let expr_246 := 0x02
                    /// @src 0:4527:4533  "i += 2"
                    let _12 := convert_t_rational_2_by_1_to_t_uint256(expr_246)
                    let _13 := var_i_239
                    let expr_247 := checked_add_t_uint256(_13, _12)

                    var_i_239 := expr_247
                }
                {
                    /// @src 0:4518:4519  "i"
                    let _14 := var_i_239
                    let expr_242 := _14
                    /// @src 0:4522:4525  "len"
                    let _15 := var_len_201
                    let expr_243 := _15
                    /// @src 0:4518:4525  "i < len"
                    let expr_244 := lt(cleanup_t_uint256(expr_242), cleanup_t_uint256(expr_243))
                    if iszero(expr_244) { break }
                    /// @src 0:4564:4571  "_hexstr"
                    let _16_mpos := var__hexstr_195_mpos
                    let expr_251_mpos := _16_mpos
                    /// @src 0:4573:4574  "i"
                    let _17 := var_i_239
                    let expr_252 := _17
                    /// @src 0:4576:4577  "i"
                    let _18 := var_i_239
                    let expr_253 := _18
                    /// @src 0:4580:4581  "1"
                    let expr_254 := 0x01
                    /// @src 0:4576:4581  "i + 1"
                    let expr_255 := checked_add_t_uint256(expr_253, convert_t_rational_1_by_1_to_t_uint256(expr_254))

                    /// @src 0:4554:4582  "substring(_hexstr, i, i + 1)"
                    let expr_256_mpos := fun_substring_644(expr_251_mpos, expr_252, expr_255)
                    /// @src 0:4550:4582  "s = substring(_hexstr, i, i + 1)"
                    var_s_233_mpos := expr_256_mpos
                    let _19_mpos := var_s_233_mpos
                    let expr_257_mpos := _19_mpos
                    /// @src 0:4611:4618  "_hexstr"
                    let _20_mpos := var__hexstr_195_mpos
                    let expr_261_mpos := _20_mpos
                    /// @src 0:4620:4621  "i"
                    let _21 := var_i_239
                    let expr_262 := _21
                    /// @src 0:4624:4625  "1"
                    let expr_263 := 0x01
                    /// @src 0:4620:4625  "i + 1"
                    let expr_264 := checked_add_t_uint256(expr_262, convert_t_rational_1_by_1_to_t_uint256(expr_263))

                    /// @src 0:4627:4628  "i"
                    let _22 := var_i_239
                    let expr_265 := _22
                    /// @src 0:4631:4632  "2"
                    let expr_266 := 0x02
                    /// @src 0:4627:4632  "i + 2"
                    let expr_267 := checked_add_t_uint256(expr_265, convert_t_rational_2_by_1_to_t_uint256(expr_266))

                    /// @src 0:4601:4633  "substring(_hexstr, i + 1, i + 2)"
                    let expr_268_mpos := fun_substring_644(expr_261_mpos, expr_264, expr_267)
                    /// @src 0:4597:4633  "r = substring(_hexstr, i + 1, i + 2)"
                    var_r_236_mpos := expr_268_mpos
                    let _23_mpos := var_r_236_mpos
                    let expr_269_mpos := _23_mpos
                    /// @src 0:4675:4676  "s"
                    let _24_mpos := var_s_233_mpos
                    let expr_274_mpos := _24_mpos
                    /// @src 0:4660:4677  "parseInt16Char(s)"
                    let expr_275 := fun_parseInt16Char_435(expr_274_mpos)
                    /// @src 0:4680:4682  "16"
                    let expr_276 := 0x10
                    /// @src 0:4660:4682  "parseInt16Char(s) * 16"
                    let expr_277 := checked_mul_t_uint256(expr_275, convert_t_rational_16_by_1_to_t_uint256(expr_276))

                    /// @src 0:4700:4701  "r"
                    let _25_mpos := var_r_236_mpos
                    let expr_279_mpos := _25_mpos
                    /// @src 0:4685:4702  "parseInt16Char(r)"
                    let expr_280 := fun_parseInt16Char_435(expr_279_mpos)
                    /// @src 0:4660:4702  "parseInt16Char(s) * 16 + parseInt16Char(r)"
                    let expr_281 := checked_add_t_uint256(expr_277, expr_280)

                    /// @src 0:4648:4702  "uint256 p = parseInt16Char(s) * 16 + parseInt16Char(r)"
                    let var_p_272 := expr_281
                    /// @src 0:4743:4744  "p"
                    let _26 := var_p_272
                    let expr_288 := _26
                    /// @src 0:4729:4745  "uintToBytes32(p)"
                    let expr_289_mpos := fun_uintToBytes32_451(expr_288)
                    /// @src 0:4746:4748  "31"
                    let expr_290 := 0x1f
                    /// @src 0:4729:4749  "uintToBytes32(p)[31]"
                    let _27 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_289_mpos, convert_t_rational_31_by_1_to_t_uint256(expr_290)))
                    let expr_291 := _27
                    /// @src 0:4717:4721  "bstr"
                    let _28_mpos := var_bstr_217_mpos
                    let expr_283_mpos := _28_mpos
                    /// @src 0:4722:4725  "k++"
                    let _30 := var_k_229
                    let _29 := increment_t_uint256(_30)
                    var_k_229 := _29
                    let expr_285 := _30
                    /// @src 0:4717:4749  "bstr[k++] = uintToBytes32(p)[31]"
                    let _31 := expr_291
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_283_mpos, expr_285), byte(0, _31))
                    let expr_292 := expr_291
                }
                /// @src 0:4778:4782  "bstr"
                let _32_mpos := var_bstr_217_mpos
                let expr_296_mpos := _32_mpos
                /// @src 0:4771:4782  "return bstr"
                var__198_mpos := expr_296_mpos
                leave

            }
            /// @src 0:2827:7488  "library ECTools {..."

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

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

            function allocate_and_zero_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_bytes_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_bytes_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_bytes1(dataStart, dataSize)
            }

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            function convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(value) -> converted  {
                converted := value

            }

            /// @ast-id 644
            /// @src 0:6964:7485  "function substring(string memory _str, uint256 _startIndex, uint256 _endIndex) public pure returns (string memory) {..."
            function fun_substring_644(var__str_572_mpos, var__startIndex_574, var__endIndex_576) -> var__579_mpos {
                /// @src 0:7064:7077  "string memory"
                let zero_t_string_memory_ptr_33_mpos := zero_value_for_split_t_string_memory_ptr()
                var__579_mpos := zero_t_string_memory_ptr_33_mpos

                /// @src 0:7120:7124  "_str"
                let _34_mpos := var__str_572_mpos
                let expr_585_mpos := _34_mpos
                /// @src 0:7114:7125  "bytes(_str)"
                let expr_586_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_585_mpos)
                /// @src 0:7090:7125  "bytes memory strBytes = bytes(_str)"
                let var_strBytes_582_mpos := expr_586_mpos
                /// @src 0:7144:7155  "_startIndex"
                let _35 := var__startIndex_574
                let expr_589 := _35
                /// @src 0:7159:7168  "_endIndex"
                let _36 := var__endIndex_576
                let expr_590 := _36
                /// @src 0:7144:7168  "_startIndex <= _endIndex"
                let expr_591 := iszero(gt(cleanup_t_uint256(expr_589), cleanup_t_uint256(expr_590)))
                /// @src 0:7136:7169  "require(_startIndex <= _endIndex)"
                require_helper(expr_591)
                /// @src 0:7188:7199  "_startIndex"
                let _37 := var__startIndex_574
                let expr_595 := _37
                /// @src 0:7203:7204  "0"
                let expr_596 := 0x00
                /// @src 0:7188:7204  "_startIndex >= 0"
                let expr_597 := iszero(lt(cleanup_t_uint256(expr_595), convert_t_rational_0_by_1_to_t_uint256(expr_596)))
                /// @src 0:7180:7205  "require(_startIndex >= 0)"
                require_helper(expr_597)
                /// @src 0:7224:7233  "_endIndex"
                let _38 := var__endIndex_576
                let expr_601 := _38
                /// @src 0:7237:7245  "strBytes"
                let _39_mpos := var_strBytes_582_mpos
                let expr_602_mpos := _39_mpos
                /// @src 0:7237:7252  "strBytes.length"
                let expr_603 := array_length_t_bytes_memory_ptr(expr_602_mpos)
                /// @src 0:7224:7252  "_endIndex <= strBytes.length"
                let expr_604 := iszero(gt(cleanup_t_uint256(expr_601), cleanup_t_uint256(expr_603)))
                /// @src 0:7216:7253  "require(_endIndex <= strBytes.length)"
                require_helper(expr_604)
                /// @src 0:7297:7306  "_endIndex"
                let _40 := var__endIndex_576
                let expr_611 := _40
                /// @src 0:7309:7320  "_startIndex"
                let _41 := var__startIndex_574
                let expr_612 := _41
                /// @src 0:7297:7320  "_endIndex - _startIndex"
                let expr_613 := checked_sub_t_uint256(expr_611, expr_612)

                /// @src 0:7287:7321  "new bytes(_endIndex - _startIndex)"
                let expr_614_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(expr_613)
                /// @src 0:7265:7321  "bytes memory result = new bytes(_endIndex - _startIndex)"
                let var_result_608_mpos := expr_614_mpos
                /// @src 0:7332:7446  "for (uint256 i = _startIndex; i < _endIndex; i++) {..."
                for {
                    /// @src 0:7349:7360  "_startIndex"
                    let _42 := var__startIndex_574
                    let expr_618 := _42
                    /// @src 0:7337:7360  "uint256 i = _startIndex"
                    let var_i_617 := expr_618
                    } 1 {
                    /// @src 0:7377:7380  "i++"
                    let _44 := var_i_617
                    let _43 := increment_wrapping_t_uint256(_44)
                    var_i_617 := _43
                    let expr_624 := _44
                }
                {
                    /// @src 0:7362:7363  "i"
                    let _45 := var_i_617
                    let expr_620 := _45
                    /// @src 0:7366:7375  "_endIndex"
                    let _46 := var__endIndex_576
                    let expr_621 := _46
                    /// @src 0:7362:7375  "i < _endIndex"
                    let expr_622 := lt(cleanup_t_uint256(expr_620), cleanup_t_uint256(expr_621))
                    if iszero(expr_622) { break }
                    /// @src 0:7423:7431  "strBytes"
                    let _47_mpos := var_strBytes_582_mpos
                    let expr_631_mpos := _47_mpos
                    /// @src 0:7432:7433  "i"
                    let _48 := var_i_617
                    let expr_632 := _48
                    /// @src 0:7423:7434  "strBytes[i]"
                    let _49 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_631_mpos, expr_632))
                    let expr_633 := _49
                    /// @src 0:7397:7403  "result"
                    let _50_mpos := var_result_608_mpos
                    let expr_626_mpos := _50_mpos
                    /// @src 0:7404:7405  "i"
                    let _51 := var_i_617
                    let expr_627 := _51
                    /// @src 0:7408:7419  "_startIndex"
                    let _52 := var__startIndex_574
                    let expr_628 := _52
                    /// @src 0:7404:7419  "i - _startIndex"
                    let expr_629 := checked_sub_t_uint256(expr_627, expr_628)

                    /// @src 0:7397:7434  "result[i - _startIndex] = strBytes[i]"
                    let _53 := expr_633
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_626_mpos, expr_629), byte(0, _53))
                    let expr_634 := expr_633
                }
                /// @src 0:7470:7476  "result"
                let _54_mpos := var_result_608_mpos
                let expr_640_mpos := _54_mpos
                /// @src 0:7463:7477  "string(result)"
                let expr_641_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_640_mpos)
                /// @src 0:7456:7477  "return string(result)"
                var__579_mpos := expr_641_mpos
                leave

            }
            /// @src 0:2827:7488  "library ECTools {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function cleanup_t_rational_48_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
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

            function cleanup_t_rational_57_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_57_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_57_by_1(value)))
            }

            function cleanup_t_rational_65_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_65_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_65_by_1(value)))
            }

            function cleanup_t_rational_70_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_70_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_70_by_1(value)))
            }

            function cleanup_t_rational_97_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_97_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_97_by_1(value)))
            }

            function cleanup_t_rational_102_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_102_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_102_by_1(value)))
            }

            function shift_right_248_unsigned(value) -> newValue {
                newValue :=

                shr(248, value)

            }

            function convert_t_uint8_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_uint8(value)))
            }

            function convert_t_bytes1_to_t_uint8(value) -> converted {
                converted := convert_t_uint8_to_t_uint8(shift_right_248_unsigned(value))
            }

            function convert_t_uint8_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint8(value)))
            }

            function cleanup_t_rational_87_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_87_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_87_by_1(value)))
            }

            function cleanup_t_rational_55_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_55_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_55_by_1(value)))
            }

            function convert_t_rational_48_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_48_by_1(value)))
            }

            /// @ast-id 435
            /// @src 0:4881:5532  "function parseInt16Char(string memory _char) public pure returns (uint256) {..."
            function fun_parseInt16Char_435(var__char_301_mpos) -> var__304 {
                /// @src 0:4947:4954  "uint256"
                let zero_t_uint256_55 := zero_value_for_split_t_uint256()
                var__304 := zero_t_uint256_55

                /// @src 0:4996:5001  "_char"
                let _56_mpos := var__char_301_mpos
                let expr_310_mpos := _56_mpos
                /// @src 0:4990:5002  "bytes(_char)"
                let expr_311_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_310_mpos)
                /// @src 0:4967:5002  "bytes memory bresult = bytes(_char)"
                let var_bresult_307_mpos := expr_311_mpos
                /// @src 0:5053:5060  "bresult"
                let _57_mpos := var_bresult_307_mpos
                let expr_313_mpos := _57_mpos
                /// @src 0:5061:5062  "0"
                let expr_314 := 0x00
                /// @src 0:5053:5063  "bresult[0]"
                let _58 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_313_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_314)))
                let expr_315 := _58
                /// @src 0:5080:5082  "48"
                let expr_320 := 0x30
                /// @src 0:5074:5083  "uint8(48)"
                let expr_321 := convert_t_rational_48_by_1_to_t_uint8(expr_320)
                /// @src 0:5067:5084  "bytes1(uint8(48))"
                let expr_322 := convert_t_uint8_to_t_bytes1(expr_321)
                /// @src 0:5053:5084  "bresult[0] >= bytes1(uint8(48))"
                let expr_323 := iszero(lt(cleanup_t_bytes1(expr_315), cleanup_t_bytes1(expr_322)))
                /// @src 0:5052:5085  "(bresult[0] >= bytes1(uint8(48)))"
                let expr_324 := expr_323
                /// @src 0:5052:5122  "(bresult[0] >= bytes1(uint8(48))) && (bresult[0] <= bytes1(uint8(57)))"
                let expr_337 := expr_324
                if expr_337 {
                    /// @src 0:5090:5097  "bresult"
                    let _59_mpos := var_bresult_307_mpos
                    let expr_325_mpos := _59_mpos
                    /// @src 0:5098:5099  "0"
                    let expr_326 := 0x00
                    /// @src 0:5090:5100  "bresult[0]"
                    let _60 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_325_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_326)))
                    let expr_327 := _60
                    /// @src 0:5117:5119  "57"
                    let expr_332 := 0x39
                    /// @src 0:5111:5120  "uint8(57)"
                    let expr_333 := convert_t_rational_57_by_1_to_t_uint8(expr_332)
                    /// @src 0:5104:5121  "bytes1(uint8(57))"
                    let expr_334 := convert_t_uint8_to_t_bytes1(expr_333)
                    /// @src 0:5090:5121  "bresult[0] <= bytes1(uint8(57))"
                    let expr_335 := iszero(gt(cleanup_t_bytes1(expr_327), cleanup_t_bytes1(expr_334)))
                    /// @src 0:5089:5122  "(bresult[0] <= bytes1(uint8(57)))"
                    let expr_336 := expr_335
                    /// @src 0:5052:5122  "(bresult[0] >= bytes1(uint8(48))) && (bresult[0] <= bytes1(uint8(57)))"
                    expr_337 := expr_336
                }
                /// @src 0:5048:5525  "if ((bresult[0] >= bytes1(uint8(48))) && (bresult[0] <= bytes1(uint8(57)))) {..."
                switch expr_337
                case 0 {
                    /// @src 0:5200:5207  "bresult"
                    let _61_mpos := var_bresult_307_mpos
                    let expr_351_mpos := _61_mpos
                    /// @src 0:5208:5209  "0"
                    let expr_352 := 0x00
                    /// @src 0:5200:5210  "bresult[0]"
                    let _62 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_351_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_352)))
                    let expr_353 := _62
                    /// @src 0:5227:5229  "65"
                    let expr_358 := 0x41
                    /// @src 0:5221:5230  "uint8(65)"
                    let expr_359 := convert_t_rational_65_by_1_to_t_uint8(expr_358)
                    /// @src 0:5214:5231  "bytes1(uint8(65))"
                    let expr_360 := convert_t_uint8_to_t_bytes1(expr_359)
                    /// @src 0:5200:5231  "bresult[0] >= bytes1(uint8(65))"
                    let expr_361 := iszero(lt(cleanup_t_bytes1(expr_353), cleanup_t_bytes1(expr_360)))
                    /// @src 0:5199:5232  "(bresult[0] >= bytes1(uint8(65)))"
                    let expr_362 := expr_361
                    /// @src 0:5199:5269  "(bresult[0] >= bytes1(uint8(65))) && (bresult[0] <= bytes1(uint8(70)))"
                    let expr_375 := expr_362
                    if expr_375 {
                        /// @src 0:5237:5244  "bresult"
                        let _63_mpos := var_bresult_307_mpos
                        let expr_363_mpos := _63_mpos
                        /// @src 0:5245:5246  "0"
                        let expr_364 := 0x00
                        /// @src 0:5237:5247  "bresult[0]"
                        let _64 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_363_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_364)))
                        let expr_365 := _64
                        /// @src 0:5264:5266  "70"
                        let expr_370 := 0x46
                        /// @src 0:5258:5267  "uint8(70)"
                        let expr_371 := convert_t_rational_70_by_1_to_t_uint8(expr_370)
                        /// @src 0:5251:5268  "bytes1(uint8(70))"
                        let expr_372 := convert_t_uint8_to_t_bytes1(expr_371)
                        /// @src 0:5237:5268  "bresult[0] <= bytes1(uint8(70))"
                        let expr_373 := iszero(gt(cleanup_t_bytes1(expr_365), cleanup_t_bytes1(expr_372)))
                        /// @src 0:5236:5269  "(bresult[0] <= bytes1(uint8(70)))"
                        let expr_374 := expr_373
                        /// @src 0:5199:5269  "(bresult[0] >= bytes1(uint8(65))) && (bresult[0] <= bytes1(uint8(70)))"
                        expr_375 := expr_374
                    }
                    /// @src 0:5195:5525  "if ((bresult[0] >= bytes1(uint8(65))) && (bresult[0] <= bytes1(uint8(70)))) {..."
                    switch expr_375
                    case 0 {
                        /// @src 0:5347:5354  "bresult"
                        let _65_mpos := var_bresult_307_mpos
                        let expr_389_mpos := _65_mpos
                        /// @src 0:5355:5356  "0"
                        let expr_390 := 0x00
                        /// @src 0:5347:5357  "bresult[0]"
                        let _66 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_389_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_390)))
                        let expr_391 := _66
                        /// @src 0:5374:5376  "97"
                        let expr_396 := 0x61
                        /// @src 0:5368:5377  "uint8(97)"
                        let expr_397 := convert_t_rational_97_by_1_to_t_uint8(expr_396)
                        /// @src 0:5361:5378  "bytes1(uint8(97))"
                        let expr_398 := convert_t_uint8_to_t_bytes1(expr_397)
                        /// @src 0:5347:5378  "bresult[0] >= bytes1(uint8(97))"
                        let expr_399 := iszero(lt(cleanup_t_bytes1(expr_391), cleanup_t_bytes1(expr_398)))
                        /// @src 0:5346:5379  "(bresult[0] >= bytes1(uint8(97)))"
                        let expr_400 := expr_399
                        /// @src 0:5346:5417  "(bresult[0] >= bytes1(uint8(97))) && (bresult[0] <= bytes1(uint8(102)))"
                        let expr_413 := expr_400
                        if expr_413 {
                            /// @src 0:5384:5391  "bresult"
                            let _67_mpos := var_bresult_307_mpos
                            let expr_401_mpos := _67_mpos
                            /// @src 0:5392:5393  "0"
                            let expr_402 := 0x00
                            /// @src 0:5384:5394  "bresult[0]"
                            let _68 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_401_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_402)))
                            let expr_403 := _68
                            /// @src 0:5411:5414  "102"
                            let expr_408 := 0x66
                            /// @src 0:5405:5415  "uint8(102)"
                            let expr_409 := convert_t_rational_102_by_1_to_t_uint8(expr_408)
                            /// @src 0:5398:5416  "bytes1(uint8(102))"
                            let expr_410 := convert_t_uint8_to_t_bytes1(expr_409)
                            /// @src 0:5384:5416  "bresult[0] <= bytes1(uint8(102))"
                            let expr_411 := iszero(gt(cleanup_t_bytes1(expr_403), cleanup_t_bytes1(expr_410)))
                            /// @src 0:5383:5417  "(bresult[0] <= bytes1(uint8(102)))"
                            let expr_412 := expr_411
                            /// @src 0:5346:5417  "(bresult[0] >= bytes1(uint8(97))) && (bresult[0] <= bytes1(uint8(102)))"
                            expr_413 := expr_412
                        }
                        /// @src 0:5342:5525  "if ((bresult[0] >= bytes1(uint8(97))) && (bresult[0] <= bytes1(uint8(102)))) {..."
                        switch expr_413
                        case 0 {
                            /// @src 0:5505:5513  "revert()"
                            revert(0, 0)
                            /// @src 0:5342:5525  "if ((bresult[0] >= bytes1(uint8(97))) && (bresult[0] <= bytes1(uint8(102)))) {..."
                        }
                        default {
                            /// @src 0:5455:5462  "bresult"
                            let _69_mpos := var_bresult_307_mpos
                            let expr_418_mpos := _69_mpos
                            /// @src 0:5463:5464  "0"
                            let expr_419 := 0x00
                            /// @src 0:5455:5465  "bresult[0]"
                            let _70 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_418_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_419)))
                            let expr_420 := _70
                            /// @src 0:5449:5466  "uint8(bresult[0])"
                            let expr_421 := convert_t_bytes1_to_t_uint8(expr_420)
                            /// @src 0:5441:5467  "uint256(uint8(bresult[0]))"
                            let expr_422 := convert_t_uint8_to_t_uint256(expr_421)
                            /// @src 0:5470:5472  "87"
                            let expr_423 := 0x57
                            /// @src 0:5441:5472  "uint256(uint8(bresult[0])) - 87"
                            let expr_424 := checked_sub_t_uint256(expr_422, convert_t_rational_87_by_1_to_t_uint256(expr_423))

                            /// @src 0:5434:5472  "return uint256(uint8(bresult[0])) - 87"
                            var__304 := expr_424
                            leave
                            /// @src 0:5342:5525  "if ((bresult[0] >= bytes1(uint8(97))) && (bresult[0] <= bytes1(uint8(102)))) {..."
                        }
                        /// @src 0:5195:5525  "if ((bresult[0] >= bytes1(uint8(65))) && (bresult[0] <= bytes1(uint8(70)))) {..."
                    }
                    default {
                        /// @src 0:5307:5314  "bresult"
                        let _71_mpos := var_bresult_307_mpos
                        let expr_380_mpos := _71_mpos
                        /// @src 0:5315:5316  "0"
                        let expr_381 := 0x00
                        /// @src 0:5307:5317  "bresult[0]"
                        let _72 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_380_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_381)))
                        let expr_382 := _72
                        /// @src 0:5301:5318  "uint8(bresult[0])"
                        let expr_383 := convert_t_bytes1_to_t_uint8(expr_382)
                        /// @src 0:5293:5319  "uint256(uint8(bresult[0]))"
                        let expr_384 := convert_t_uint8_to_t_uint256(expr_383)
                        /// @src 0:5322:5324  "55"
                        let expr_385 := 0x37
                        /// @src 0:5293:5324  "uint256(uint8(bresult[0])) - 55"
                        let expr_386 := checked_sub_t_uint256(expr_384, convert_t_rational_55_by_1_to_t_uint256(expr_385))

                        /// @src 0:5286:5324  "return uint256(uint8(bresult[0])) - 55"
                        var__304 := expr_386
                        leave
                        /// @src 0:5195:5525  "if ((bresult[0] >= bytes1(uint8(65))) && (bresult[0] <= bytes1(uint8(70)))) {..."
                    }
                    /// @src 0:5048:5525  "if ((bresult[0] >= bytes1(uint8(48))) && (bresult[0] <= bytes1(uint8(57)))) {..."
                }
                default {
                    /// @src 0:5160:5167  "bresult"
                    let _73_mpos := var_bresult_307_mpos
                    let expr_342_mpos := _73_mpos
                    /// @src 0:5168:5169  "0"
                    let expr_343 := 0x00
                    /// @src 0:5160:5170  "bresult[0]"
                    let _74 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_342_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_343)))
                    let expr_344 := _74
                    /// @src 0:5154:5171  "uint8(bresult[0])"
                    let expr_345 := convert_t_bytes1_to_t_uint8(expr_344)
                    /// @src 0:5146:5172  "uint256(uint8(bresult[0]))"
                    let expr_346 := convert_t_uint8_to_t_uint256(expr_345)
                    /// @src 0:5175:5177  "48"
                    let expr_347 := 0x30
                    /// @src 0:5146:5177  "uint256(uint8(bresult[0])) - 48"
                    let expr_348 := checked_sub_t_uint256(expr_346, convert_t_rational_48_by_1_to_t_uint256(expr_347))

                    /// @src 0:5139:5177  "return uint256(uint8(bresult[0])) - 48"
                    var__304 := expr_348
                    leave
                    /// @src 0:5048:5525  "if ((bresult[0] >= bytes1(uint8(48))) && (bresult[0] <= bytes1(uint8(57)))) {..."
                }

            }
            /// @src 0:2827:7488  "library ECTools {..."

            function cleanup_t_rational_32_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_32_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_32_by_1(value)))
            }

            /// @ast-id 451
            /// @src 0:5696:5853  "function uintToBytes32(uint256 _uint) public pure returns (bytes memory b) {..."
            function fun_uintToBytes32_451(var__uint_437) -> var_b_440_mpos {
                /// @src 0:5755:5769  "bytes memory b"
                let zero_t_bytes_memory_ptr_75_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var_b_440_mpos := zero_t_bytes_memory_ptr_75_mpos

                /// @src 0:5796:5798  "32"
                let expr_445 := 0x20
                /// @src 0:5786:5799  "new bytes(32)"
                let _76 := convert_t_rational_32_by_1_to_t_uint256(expr_445)
                let expr_446_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(_76)
                /// @src 0:5782:5799  "b = new bytes(32)"
                var_b_440_mpos := expr_446_mpos
                let _77_mpos := var_b_440_mpos
                let expr_447_mpos := _77_mpos
                /// @src 0:5810:5846  "assembly {mstore(add(b, 32), _uint)}"
                {
                    mstore(add(var_b_440_mpos, 32), var__uint_437)
                }

            }
            /// @src 0:2827:7488  "library ECTools {..."

            function zero_value_for_split_t_bytes32() -> ret {
                ret := 0
            }

            function store_literal_in_memory_9af2d9c228f6cfddaa6d1e5b94e0bce4ab16bd9a472a2b7fbfd74ebff4c720b4(memPtr) {

                mstore(add(memPtr, 0), 0x19457468657265756d205369676e6564204d6573736167653a0a000000000000)

            }

            function copy_literal_to_memory_9af2d9c228f6cfddaa6d1e5b94e0bce4ab16bd9a472a2b7fbfd74ebff4c720b4() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(26)
                store_literal_in_memory_9af2d9c228f6cfddaa6d1e5b94e0bce4ab16bd9a472a2b7fbfd74ebff4c720b4(add(memPtr, 32))
            }

            function convert_t_stringliteral_9af2d9c228f6cfddaa6d1e5b94e0bce4ab16bd9a472a2b7fbfd74ebff4c720b4_to_t_bytes_memory_ptr() -> converted {
                converted := copy_literal_to_memory_9af2d9c228f6cfddaa6d1e5b94e0bce4ab16bd9a472a2b7fbfd74ebff4c720b4()
            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, length)
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

            function abi_encode_tuple_packed_t_bytes_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__to_t_bytes_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                pos := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                pos := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                end := pos
            }

            function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            /// @ast-id 488
            /// @src 0:5987:6291  "function toEthereumSignedMessage(string memory _msg) public pure returns (bytes32) {..."
            function fun_toEthereumSignedMessage_488(var__msg_453_mpos) -> var__456 {
                /// @src 0:6061:6068  "bytes32"
                let zero_t_bytes32_78 := zero_value_for_split_t_bytes32()
                var__456 := zero_t_bytes32_78

                /// @src 0:6101:6105  "_msg"
                let _79_mpos := var__msg_453_mpos
                let expr_462_mpos := _79_mpos
                /// @src 0:6095:6106  "bytes(_msg)"
                let expr_463_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_462_mpos)
                /// @src 0:6095:6113  "bytes(_msg).length"
                let expr_464 := array_length_t_bytes_memory_ptr(expr_463_mpos)
                /// @src 0:6081:6113  "uint256 len = bytes(_msg).length"
                let var_len_459 := expr_464
                /// @src 0:6132:6135  "len"
                let _80 := var_len_459
                let expr_467 := _80
                /// @src 0:6138:6139  "0"
                let expr_468 := 0x00
                /// @src 0:6132:6139  "len > 0"
                let expr_469 := gt(cleanup_t_uint256(expr_467), convert_t_rational_0_by_1_to_t_uint256(expr_468))
                /// @src 0:6124:6140  "require(len > 0)"
                require_helper(expr_469)
                /// @src 0:6151:6205  "bytes memory prefix = \"\\x19Ethereum Signed Message:\\n\""
                let var_prefix_473_mpos := convert_t_stringliteral_9af2d9c228f6cfddaa6d1e5b94e0bce4ab16bd9a472a2b7fbfd74ebff4c720b4_to_t_bytes_memory_ptr()
                /// @src 0:6250:6256  "prefix"
                let _81_mpos := var_prefix_473_mpos
                let expr_479_mpos := _81_mpos
                /// @src 0:6271:6274  "len"
                let _82 := var_len_459
                let expr_481 := _82
                /// @src 0:6258:6275  "uintToString(len)"
                let expr_482_mpos := fun_uintToString_570(expr_481)
                /// @src 0:6277:6281  "_msg"
                let _83_mpos := var__msg_453_mpos
                let expr_483_mpos := _83_mpos
                /// @src 0:6233:6282  "abi.encodePacked(prefix, uintToString(len), _msg)"

                let expr_484_mpos := allocate_unbounded()
                let _84 := add(expr_484_mpos, 0x20)

                let _85 := abi_encode_tuple_packed_t_bytes_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__to_t_bytes_memory_ptr_t_string_memory_ptr_t_string_memory_ptr__nonPadded_inplace_fromStack(_84, expr_479_mpos, expr_482_mpos, expr_483_mpos)
                mstore(expr_484_mpos, sub(_85, add(expr_484_mpos, 0x20)))
                finalize_allocation(expr_484_mpos, sub(_85, expr_484_mpos))
                /// @src 0:6223:6283  "keccak256(abi.encodePacked(prefix, uintToString(len), _msg))"
                let expr_485 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_484_mpos), array_length_t_bytes_memory_ptr(expr_484_mpos))
                /// @src 0:6216:6283  "return keccak256(abi.encodePacked(prefix, uintToString(len), _msg))"
                var__456 := expr_485
                leave

            }
            /// @src 0:2827:7488  "library ECTools {..."

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function convert_t_rational_0_by_1_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_rational_0_by_1(value)))
            }

            function store_literal_in_memory_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73(memPtr) {

                mstore(add(memPtr, 0), 0x19457468657265756d205369676e6564204d6573736167653a0a333200000000)

            }

            function copy_literal_to_memory_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(28)
                store_literal_in_memory_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73(add(memPtr, 32))
            }

            function convert_t_stringliteral_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73_to_t_bytes_memory_ptr() -> converted {
                converted := copy_literal_to_memory_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73()
            }

            function leftAlign_t_bytes32(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes32(cleanup_t_bytes32(value)))
            }

            function abi_encode_tuple_packed_t_bytes_memory_ptr_t_bytes32__to_t_bytes_memory_ptr_t_bytes32__nonPadded_inplace_fromStack(pos , value0, value1) -> end {

                pos := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value0,  pos)

                abi_encode_t_bytes32_to_t_bytes32_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 32)

                end := pos
            }

            function cleanup_t_rational_132_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_132_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_132_by_1(value)))
            }

            function zero_value_for_split_t_uint8() -> ret {
                ret := 0
            }

            function cleanup_t_rational_27_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_27_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_27_by_1(value)))
            }

            function checked_add_t_uint8(x, y) -> sum {
                x := cleanup_t_uint8(x)
                y := cleanup_t_uint8(y)
                sum := add(x, y)

                if gt(sum, 0xff) { panic_error_0x11() }

            }

            function cleanup_t_rational_28_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_28_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_28_by_1(value)))
            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_t_uint8_to_t_uint8_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
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

            /// @ast-id 165
            /// @src 0:2990:3865  "function recoverSigner(bytes32 _hashedMsg, string memory _sig) public pure returns (address) {..."
            function fun_recoverSigner_165(var__hashedMsg_73, var__sig_75_mpos) -> var__78 {
                /// @src 0:3074:3081  "address"
                let zero_t_address_86 := zero_value_for_split_t_address()
                var__78 := zero_t_address_86

                /// @src 0:3102:3112  "_hashedMsg"
                let _87 := var__hashedMsg_73
                let expr_81 := _87
                /// @src 0:3116:3120  "0x00"
                let expr_82 := 0x00
                /// @src 0:3102:3120  "_hashedMsg != 0x00"
                let expr_83 := iszero(eq(cleanup_t_bytes32(expr_81), convert_t_rational_0_by_1_to_t_bytes32(expr_82)))
                /// @src 0:3094:3121  "require(_hashedMsg != 0x00)"
                require_helper(expr_83)
                /// @src 0:3168:3224  "bytes memory prefix = \"\\x19Ethereum Signed Message:\\n32\""
                let var_prefix_87_mpos := convert_t_stringliteral_178a2411ab6fbc1ba11064408972259c558d0e82fd48b0aba3ad81d14f065e73_to_t_bytes_memory_ptr()
                /// @src 0:3285:3291  "prefix"
                let _88_mpos := var_prefix_87_mpos
                let expr_95_mpos := _88_mpos
                /// @src 0:3293:3303  "_hashedMsg"
                let _89 := var__hashedMsg_73
                let expr_96 := _89
                /// @src 0:3268:3304  "abi.encodePacked(prefix, _hashedMsg)"

                let expr_97_mpos := allocate_unbounded()
                let _90 := add(expr_97_mpos, 0x20)

                let _91 := abi_encode_tuple_packed_t_bytes_memory_ptr_t_bytes32__to_t_bytes_memory_ptr_t_bytes32__nonPadded_inplace_fromStack(_90, expr_95_mpos, expr_96)
                mstore(expr_97_mpos, sub(_91, add(expr_97_mpos, 0x20)))
                finalize_allocation(expr_97_mpos, sub(_91, expr_97_mpos))
                /// @src 0:3258:3305  "keccak256(abi.encodePacked(prefix, _hashedMsg))"
                let expr_98 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_97_mpos), array_length_t_bytes_memory_ptr(expr_97_mpos))
                /// @src 0:3235:3305  "bytes32 prefixedHash = keccak256(abi.encodePacked(prefix, _hashedMsg))"
                let var_prefixedHash_91 := expr_98
                /// @src 0:3327:3331  "_sig"
                let _92_mpos := var__sig_75_mpos
                let expr_102_mpos := _92_mpos
                /// @src 0:3321:3332  "bytes(_sig)"
                let expr_103_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_102_mpos)
                /// @src 0:3321:3339  "bytes(_sig).length"
                let expr_104 := array_length_t_bytes_memory_ptr(expr_103_mpos)
                /// @src 0:3343:3346  "132"
                let expr_105 := 0x84
                /// @src 0:3321:3346  "bytes(_sig).length != 132"
                let expr_106 := iszero(eq(cleanup_t_uint256(expr_104), convert_t_rational_132_by_1_to_t_uint256(expr_105)))
                /// @src 0:3317:3394  "if (bytes(_sig).length != 132) {..."
                if expr_106 {
                    /// @src 0:3378:3381  "0x0"
                    let expr_109 := 0x00
                    /// @src 0:3370:3382  "address(0x0)"
                    let expr_110 := convert_t_rational_0_by_1_to_t_address(expr_109)
                    /// @src 0:3363:3382  "return address(0x0)"
                    var__78 := expr_110
                    leave
                    /// @src 0:3317:3394  "if (bytes(_sig).length != 132) {..."
                }
                /// @src 0:3404:3413  "bytes32 r"
                let var_r_115
                let zero_t_bytes32_93 := zero_value_for_split_t_bytes32()
                var_r_115 := zero_t_bytes32_93
                /// @src 0:3424:3433  "bytes32 s"
                let var_s_118
                let zero_t_bytes32_94 := zero_value_for_split_t_bytes32()
                var_s_118 := zero_t_bytes32_94
                /// @src 0:3444:3451  "uint8 v"
                let var_v_121
                let zero_t_uint8_95 := zero_value_for_split_t_uint8()
                var_v_121 := zero_t_uint8_95
                /// @src 0:3505:3509  "_sig"
                let _96_mpos := var__sig_75_mpos
                let expr_127_mpos := _96_mpos
                /// @src 0:3511:3512  "2"
                let expr_128 := 0x02
                /// @src 0:3514:3517  "132"
                let expr_129 := 0x84
                /// @src 0:3495:3518  "substring(_sig, 2, 132)"
                let _97 := convert_t_rational_2_by_1_to_t_uint256(expr_128)
                let _98 := convert_t_rational_132_by_1_to_t_uint256(expr_129)
                let expr_130_mpos := fun_substring_644(expr_127_mpos, _97, _98)
                /// @src 0:3481:3519  "hexstrToBytes(substring(_sig, 2, 132))"
                let expr_131_mpos := fun_hexstrToBytes_299(expr_130_mpos)
                /// @src 0:3462:3519  "bytes memory sig = hexstrToBytes(substring(_sig, 2, 132))"
                let var_sig_124_mpos := expr_131_mpos
                /// @src 0:3530:3674  "assembly {..."
                {
                    var_r_115 := mload(add(var_sig_124_mpos, 32))
                    var_s_118 := mload(add(var_sig_124_mpos, 64))
                    var_v_121 := byte(0, mload(add(var_sig_124_mpos, 96)))
                }
                /// @src 0:3688:3689  "v"
                let _99 := var_v_121
                let expr_134 := _99
                /// @src 0:3692:3694  "27"
                let expr_135 := 0x1b
                /// @src 0:3688:3694  "v < 27"
                let expr_136 := lt(cleanup_t_uint8(expr_134), convert_t_rational_27_by_1_to_t_uint8(expr_135))
                /// @src 0:3684:3730  "if (v < 27) {..."
                if expr_136 {
                    /// @src 0:3716:3718  "27"
                    let expr_138 := 0x1b
                    /// @src 0:3711:3718  "v += 27"
                    let _100 := convert_t_rational_27_by_1_to_t_uint8(expr_138)
                    let _101 := var_v_121
                    let expr_139 := checked_add_t_uint8(_101, _100)

                    var_v_121 := expr_139
                    /// @src 0:3684:3730  "if (v < 27) {..."
                }
                /// @src 0:3744:3745  "v"
                let _102 := var_v_121
                let expr_143 := _102
                /// @src 0:3748:3750  "27"
                let expr_144 := 0x1b
                /// @src 0:3744:3750  "v < 27"
                let expr_145 := lt(cleanup_t_uint8(expr_143), convert_t_rational_27_by_1_to_t_uint8(expr_144))
                /// @src 0:3744:3760  "v < 27 || v > 28"
                let expr_149 := expr_145
                if iszero(expr_149) {
                    /// @src 0:3754:3755  "v"
                    let _103 := var_v_121
                    let expr_146 := _103
                    /// @src 0:3758:3760  "28"
                    let expr_147 := 0x1c
                    /// @src 0:3754:3760  "v > 28"
                    let expr_148 := gt(cleanup_t_uint8(expr_146), convert_t_rational_28_by_1_to_t_uint8(expr_147))
                    /// @src 0:3744:3760  "v < 27 || v > 28"
                    expr_149 := expr_148
                }
                /// @src 0:3740:3808  "if (v < 27 || v > 28) {..."
                if expr_149 {
                    /// @src 0:3792:3795  "0x0"
                    let expr_152 := 0x00
                    /// @src 0:3784:3796  "address(0x0)"
                    let expr_153 := convert_t_rational_0_by_1_to_t_address(expr_152)
                    /// @src 0:3777:3796  "return address(0x0)"
                    var__78 := expr_153
                    leave
                    /// @src 0:3740:3808  "if (v < 27 || v > 28) {..."
                }
                /// @src 0:3835:3847  "prefixedHash"
                let _104 := var_prefixedHash_91
                let expr_158 := _104
                /// @src 0:3849:3850  "v"
                let _105 := var_v_121
                let expr_159 := _105
                /// @src 0:3852:3853  "r"
                let _106 := var_r_115
                let expr_160 := _106
                /// @src 0:3855:3856  "s"
                let _107 := var_s_118
                let expr_161 := _107
                /// @src 0:3825:3857  "ecrecover(prefixedHash, v, r, s)"

                let _108 := allocate_unbounded()
                let _109 := abi_encode_tuple_t_bytes32_t_uint8_t_bytes32_t_bytes32__to_t_bytes32_t_uint8_t_bytes32_t_bytes32__fromStack(_108 , expr_158, expr_159, expr_160, expr_161)

                mstore(0, 0)

                let _110 := staticcall(gas(), 1 , _108, sub(_109, _108), 0, 32)

                if iszero(_110) { revert_forward_1() }

                let expr_162 := shift_left_0(mload(0))
                /// @src 0:3818:3857  "return ecrecover(prefixedHash, v, r, s)"
                var__78 := expr_162
                leave

            }
            /// @src 0:2827:7488  "library ECTools {..."

            function cleanup_t_rational_10_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_10_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_10_by_1(value)))
            }

            function convert_t_uint256_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_uint256(value)))
            }

            function decrement_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0x00) { panic_error_0x11() }
                ret := sub(value, 1)
            }

            /// @ast-id 570
            /// @src 0:6342:6834  "function uintToString(uint256 _uint) public pure returns (string memory str) {..."
            function fun_uintToString_570(var__uint_490) -> var_str_493_mpos {
                /// @src 0:6400:6417  "string memory str"
                let zero_t_string_memory_ptr_111_mpos := zero_value_for_split_t_string_memory_ptr()
                var_str_493_mpos := zero_t_string_memory_ptr_111_mpos

                /// @src 0:6444:6445  "0"
                let expr_497 := 0x00
                /// @src 0:6430:6445  "uint256 len = 0"
                let var_len_496 := convert_t_rational_0_by_1_to_t_uint256(expr_497)
                /// @src 0:6468:6473  "_uint"
                let _112 := var__uint_490
                let expr_501 := _112
                /// @src 0:6476:6477  "0"
                let expr_502 := 0x00
                /// @src 0:6468:6477  "_uint + 0"
                let expr_503 := checked_add_t_uint256(expr_501, convert_t_rational_0_by_1_to_t_uint256(expr_502))

                /// @src 0:6456:6477  "uint256 m = _uint + 0"
                let var_m_500 := expr_503
                /// @src 0:6488:6557  "while (m != 0) {..."
                for {
                    } 1 {
                }
                {
                    /// @src 0:6495:6496  "m"
                    let _113 := var_m_500
                    let expr_505 := _113
                    /// @src 0:6500:6501  "0"
                    let expr_506 := 0x00
                    /// @src 0:6495:6501  "m != 0"
                    let expr_507 := iszero(eq(cleanup_t_uint256(expr_505), convert_t_rational_0_by_1_to_t_uint256(expr_506)))
                    if iszero(expr_507) { break }
                    /// @src 0:6518:6523  "len++"
                    let _115 := var_len_496
                    let _114 := increment_t_uint256(_115)
                    var_len_496 := _114
                    let expr_509 := _115
                    /// @src 0:6543:6545  "10"
                    let expr_512 := 0x0a
                    /// @src 0:6538:6545  "m /= 10"
                    let _116 := convert_t_rational_10_by_1_to_t_uint256(expr_512)
                    let _117 := var_m_500
                    let expr_513 := checked_div_t_uint256(_117, _116)

                    var_m_500 := expr_513
                }
                /// @src 0:6594:6597  "len"
                let _118 := var_len_496
                let expr_521 := _118
                /// @src 0:6584:6598  "new bytes(len)"
                let expr_522_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(expr_521)
                /// @src 0:6567:6598  "bytes memory b = new bytes(len)"
                let var_b_518_mpos := expr_522_mpos
                /// @src 0:6621:6624  "len"
                let _119 := var_len_496
                let expr_526 := _119
                /// @src 0:6627:6628  "1"
                let expr_527 := 0x01
                /// @src 0:6621:6628  "len - 1"
                let expr_528 := checked_sub_t_uint256(expr_526, convert_t_rational_1_by_1_to_t_uint256(expr_527))

                /// @src 0:6609:6628  "uint256 i = len - 1"
                let var_i_525 := expr_528
                /// @src 0:6639:6801  "while (_uint != 0) {..."
                for {
                    } 1 {
                }
                {
                    /// @src 0:6646:6651  "_uint"
                    let _120 := var__uint_490
                    let expr_530 := _120
                    /// @src 0:6655:6656  "0"
                    let expr_531 := 0x00
                    /// @src 0:6646:6656  "_uint != 0"
                    let expr_532 := iszero(eq(cleanup_t_uint256(expr_530), convert_t_rational_0_by_1_to_t_uint256(expr_531)))
                    if iszero(expr_532) { break }
                    /// @src 0:6693:6698  "_uint"
                    let _121 := var__uint_490
                    let expr_535 := _121
                    /// @src 0:6701:6703  "10"
                    let expr_536 := 0x0a
                    /// @src 0:6693:6703  "_uint % 10"
                    let expr_537 := mod_t_uint256(expr_535, convert_t_rational_10_by_1_to_t_uint256(expr_536))

                    /// @src 0:6673:6703  "uint256 remainder = _uint % 10"
                    let var_remainder_534 := expr_537
                    /// @src 0:6726:6731  "_uint"
                    let _122 := var__uint_490
                    let expr_540 := _122
                    /// @src 0:6734:6736  "10"
                    let expr_541 := 0x0a
                    /// @src 0:6726:6736  "_uint / 10"
                    let expr_542 := checked_div_t_uint256(expr_540, convert_t_rational_10_by_1_to_t_uint256(expr_541))

                    /// @src 0:6718:6736  "_uint = _uint / 10"
                    var__uint_490 := expr_542
                    let expr_543 := expr_542
                    /// @src 0:6773:6775  "48"
                    let expr_553 := 0x30
                    /// @src 0:6778:6787  "remainder"
                    let _123 := var_remainder_534
                    let expr_554 := _123
                    /// @src 0:6773:6787  "48 + remainder"
                    let expr_555 := checked_add_t_uint256(convert_t_rational_48_by_1_to_t_uint256(expr_553), expr_554)

                    /// @src 0:6767:6788  "uint8(48 + remainder)"
                    let expr_556 := convert_t_uint256_to_t_uint8(expr_555)
                    /// @src 0:6760:6789  "bytes1(uint8(48 + remainder))"
                    let expr_557 := convert_t_uint8_to_t_bytes1(expr_556)
                    /// @src 0:6751:6752  "b"
                    let _124_mpos := var_b_518_mpos
                    let expr_545_mpos := _124_mpos
                    /// @src 0:6753:6756  "i--"
                    let _126 := var_i_525
                    let _125 := decrement_t_uint256(_126)
                    var_i_525 := _125
                    let expr_547 := _126
                    /// @src 0:6751:6789  "b[i--] = bytes1(uint8(48 + remainder))"
                    let _127 := expr_557
                    mstore8(memory_array_index_access_t_bytes_memory_ptr(expr_545_mpos, expr_547), byte(0, _127))
                    let expr_558 := expr_557
                }
                /// @src 0:6824:6825  "b"
                let _128_mpos := var_b_518_mpos
                let expr_565_mpos := _128_mpos
                /// @src 0:6817:6826  "string(b)"
                let expr_566_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_565_mpos)
                /// @src 0:6811:6826  "str = string(b)"
                var_str_493_mpos := expr_566_mpos
                let _129_mpos := var_str_493_mpos
                let expr_567_mpos := _129_mpos

            }
            /// @src 0:2827:7488  "library ECTools {..."

        }

        data ".metadata" hex"a26469706673582212200280c049f2a2f1519281b75e036b4725af5693dbd0c57e498128d06d7820df6f64736f6c634300081e0033"
    }

}

