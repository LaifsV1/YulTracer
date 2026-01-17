
/// @use-src 51:"src/PriceFeed.sol"
object "PriceFeedFactory_32629" {
    code {
        /// @src 51:316:884  "contract PriceFeedFactory {..."
        mstore(64, memoryguard(160))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := copy_arguments_for_constructor_32589_object_PriceFeedFactory_32629()
        constructor_PriceFeedFactory_32629(_1)

        let _2 := allocate_unbounded()
        codecopy(_2, dataoffset("PriceFeedFactory_32629_deployed"), datasize("PriceFeedFactory_32629_deployed"))

        setimmutable(_2, "32569", mload(128))

        return(_2, datasize("PriceFeedFactory_32629_deployed"))

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

        function abi_decode_tuple_t_address_fromMemory(headStart, dataEnd) -> value0 {
            if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            {

                let offset := 0

                value0 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
            }

        }

        function copy_arguments_for_constructor_32589_object_PriceFeedFactory_32629() -> ret_param_0 {

            let programSize := datasize("PriceFeedFactory_32629")
            let argSize := sub(codesize(), programSize)

            let memoryDataOffset := allocate_memory(argSize)
            codecopy(memoryDataOffset, programSize, argSize)

            ret_param_0 := abi_decode_tuple_t_address_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
        }

        /// @ast-id 32589
        /// @src 51:493:548  "constructor(address pyth) {..."
        function constructor_PriceFeedFactory_32629(var_pyth_32581) {

            /// @src 51:493:548  "constructor(address pyth) {..."

            /// @src 51:537:541  "pyth"
            let _3 := var_pyth_32581
            let expr_32585 := _3
            /// @src 51:529:541  "_pyth = pyth"
            let _4 := expr_32585
            mstore(128, _4)
            let expr_32586 := expr_32585

        }
        /// @src 51:316:884  "contract PriceFeedFactory {..."

    }
    /// @use-src 51:"src/PriceFeed.sol"
    object "PriceFeedFactory_32629_deployed" {
        code {
            /// @src 51:316:884  "contract PriceFeedFactory {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x2aa97d07
                {
                    // createPriceFeed(address,bytes32,uint256)

                    external_fun_createPriceFeed_32628()
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

            function abi_decode_tuple_t_addresst_bytes32t_uint256(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_createPriceFeed_32628() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_bytes32t_uint256(4, calldatasize())
                let ret_0 :=  fun_createPriceFeed_32628(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            function panic_error_0x41() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x41)
                revert(0, 0x24)
            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_address_t_address_t_bytes32_t_uint256__to_t_address_t_address_t_bytes32_t_uint256__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
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

            function convert_t_contract$_PriceFeed_$32754_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_tuple_t_address_t_bytes32_t_uint256_t_address__to_t_address_t_bytes32_t_uint256_t_address__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_address_to_t_address_fromStack(value3,  add(headStart, 96))

            }

            /// @ast-id 32628
            /// @src 51:554:882  "function createPriceFeed(address quotePrice, bytes32 priceId, uint256 decimalsDiff) external returns (address) {..."
            function fun_createPriceFeed_32628(var_quotePrice_32591, var_priceId_32593, var_decimalsDiff_32595) -> var__32598 {
                /// @src 51:656:663  "address"
                let zero_t_address_1 := zero_value_for_split_t_address()
                var__32598 := zero_t_address_1

                /// @src 51:711:721  "quotePrice"
                let _2 := var_quotePrice_32591
                let expr_32606 := _2
                /// @src 51:723:728  "_pyth"
                let _3 := loadimmutable("32569")
                let expr_32607 := _3
                /// @src 51:730:737  "priceId"
                let _4 := var_priceId_32593
                let expr_32608 := _4
                /// @src 51:739:751  "decimalsDiff"
                let _5 := var_decimalsDiff_32595
                let expr_32609 := _5
                /// @src 51:697:752  "new PriceFeed(quotePrice, _pyth, priceId, decimalsDiff)"

                let _6 := allocate_unbounded()
                let _7 := add(_6, datasize("PriceFeed_32754"))
                if or(gt(_7, 0xffffffffffffffff), lt(_7, _6)) { panic_error_0x41() }
                datacopy(_6, dataoffset("PriceFeed_32754"), datasize("PriceFeed_32754"))
                _7 := abi_encode_tuple_t_address_t_address_t_bytes32_t_uint256__to_t_address_t_address_t_bytes32_t_uint256__fromStack(_7, expr_32606, expr_32607, expr_32608, expr_32609)

                let expr_32610_address := create(0, _6, sub(_7, _6))

                if iszero(expr_32610_address) { revert_forward_1() }

                /// @src 51:675:752  "PriceFeed priceFeed = new PriceFeed(quotePrice, _pyth, priceId, decimalsDiff)"
                let var_priceFeed_32602_address := expr_32610_address
                /// @src 51:785:795  "quotePrice"
                let _8 := var_quotePrice_32591
                let expr_32613 := _8
                /// @src 51:797:804  "priceId"
                let _9 := var_priceId_32593
                let expr_32614 := _9
                /// @src 51:806:818  "decimalsDiff"
                let _10 := var_decimalsDiff_32595
                let expr_32615 := _10
                /// @src 51:828:837  "priceFeed"
                let _11_address := var_priceFeed_32602_address
                let expr_32618_address := _11_address
                /// @src 51:820:838  "address(priceFeed)"
                let expr_32619 := convert_t_contract$_PriceFeed_$32754_to_t_address(expr_32618_address)
                /// @src 51:768:839  "PriceFeedCreated(quotePrice, priceId, decimalsDiff, address(priceFeed))"
                let _12 := 0x7e02b60fa9e1000bb541a612e2ebe7f9d932336769e4d5ad33b415f95600ff
                {
                    let _13 := allocate_unbounded()
                    let _14 := abi_encode_tuple_t_address_t_bytes32_t_uint256_t_address__to_t_address_t_bytes32_t_uint256_t_address__fromStack(_13 , expr_32613, expr_32614, expr_32615, expr_32619)
                    log1(_13, sub(_14, _13) , _12)
                }/// @src 51:865:874  "priceFeed"
                let _15_address := var_priceFeed_32602_address
                let expr_32624_address := _15_address
                /// @src 51:857:875  "address(priceFeed)"
                let expr_32625 := convert_t_contract$_PriceFeed_$32754_to_t_address(expr_32624_address)
                /// @src 51:850:875  "return address(priceFeed)"
                var__32598 := expr_32625
                leave

            }
            /// @src 51:316:884  "contract PriceFeedFactory {..."

        }

        /// @use-src 51:"src/PriceFeed.sol"
        object "PriceFeed_32754" {
            code {
                /// @src 51:1009:2076  "contract PriceFeed {..."
                mstore(64, memoryguard(256))
                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

                let _1, _2, _3, _4 := copy_arguments_for_constructor_32671_object_PriceFeed_32754()
                constructor_PriceFeed_32754(_1, _2, _3, _4)

                let _5 := allocate_unbounded()
                codecopy(_5, dataoffset("PriceFeed_32754_deployed"), datasize("PriceFeed_32754_deployed"))

                setimmutable(_5, "32632", mload(128))

                setimmutable(_5, "32634", mload(160))

                setimmutable(_5, "32636", mload(192))

                setimmutable(_5, "32638", mload(224))

                return(_5, datasize("PriceFeed_32754_deployed"))

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

                function cleanup_t_bytes32(value) -> cleaned {
                    cleaned := value
                }

                function validator_revert_t_bytes32(value) {
                    if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
                }

                function abi_decode_t_bytes32_fromMemory(offset, end) -> value {
                    value := mload(offset)
                    validator_revert_t_bytes32(value)
                }

                function cleanup_t_uint256(value) -> cleaned {
                    cleaned := value
                }

                function validator_revert_t_uint256(value) {
                    if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
                }

                function abi_decode_t_uint256_fromMemory(offset, end) -> value {
                    value := mload(offset)
                    validator_revert_t_uint256(value)
                }

                function abi_decode_tuple_t_addresst_addresst_bytes32t_uint256_fromMemory(headStart, dataEnd) -> value0, value1, value2, value3 {
                    if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

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

                        value2 := abi_decode_t_bytes32_fromMemory(add(headStart, offset), dataEnd)
                    }

                    {

                        let offset := 96

                        value3 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                    }

                }

                function copy_arguments_for_constructor_32671_object_PriceFeed_32754() -> ret_param_0, ret_param_1, ret_param_2, ret_param_3 {

                    let programSize := datasize("PriceFeed_32754")
                    let argSize := sub(codesize(), programSize)

                    let memoryDataOffset := allocate_memory(argSize)
                    codecopy(memoryDataOffset, programSize, argSize)

                    ret_param_0, ret_param_1, ret_param_2, ret_param_3 := abi_decode_tuple_t_addresst_addresst_bytes32t_uint256_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
                }

                /// @ast-id 32671
                /// @src 51:1262:1480  "constructor(address quotePrice, address pyth, bytes32 priceId, uint256 decimalsDiff) {..."
                function constructor_PriceFeed_32754(var_quotePrice_32645, var_pyth_32647, var_priceId_32649, var_decimalsDiff_32651) {

                    /// @src 51:1262:1480  "constructor(address quotePrice, address pyth, bytes32 priceId, uint256 decimalsDiff) {..."

                    /// @src 51:1375:1385  "quotePrice"
                    let _6 := var_quotePrice_32645
                    let expr_32655 := _6
                    /// @src 51:1357:1385  "_quotePriceFeed = quotePrice"
                    let _7 := expr_32655
                    mstore(128, _7)
                    let expr_32656 := expr_32655
                    /// @src 51:1403:1407  "pyth"
                    let _8 := var_pyth_32647
                    let expr_32659 := _8
                    /// @src 51:1395:1407  "_pyth = pyth"
                    let _9 := expr_32659
                    mstore(160, _9)
                    let expr_32660 := expr_32659
                    /// @src 51:1428:1435  "priceId"
                    let _10 := var_priceId_32649
                    let expr_32663 := _10
                    /// @src 51:1417:1435  "_priceId = priceId"
                    let _11 := expr_32663
                    mstore(224, _11)
                    let expr_32664 := expr_32663
                    /// @src 51:1461:1473  "decimalsDiff"
                    let _12 := var_decimalsDiff_32651
                    let expr_32667 := _12
                    /// @src 51:1445:1473  "_decimalsDiff = decimalsDiff"
                    let _13 := expr_32667
                    mstore(192, _13)
                    let expr_32668 := expr_32667

                }
                /// @src 51:1009:2076  "contract PriceFeed {..."

            }
            /// @use-src 12:"lib/solmate/src/utils/FixedPointMathLib.sol", 51:"src/PriceFeed.sol", 57:"src/libraries/Constants.sol"
            object "PriceFeed_32754_deployed" {
                code {
                    /// @src 51:1009:2076  "contract PriceFeed {..."
                    mstore(64, memoryguard(128))

                    if iszero(lt(calldatasize(), 4))
                    {
                        let selector := shift_right_224_unsigned(calldataload(0))
                        switch selector

                        case 0x86e6862d
                        {
                            // getSqrtPrice()

                            external_fun_getSqrtPrice_32753()
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

                    function cleanup_t_uint256(value) -> cleaned {
                        cleaned := value
                    }

                    function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                        mstore(pos, cleanup_t_uint256(value))
                    }

                    function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                        tail := add(headStart, 32)

                        abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                    }

                    function external_fun_getSqrtPrice_32753() {

                        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                        abi_decode_tuple_(4, calldatasize())
                        let ret_0 :=  fun_getSqrtPrice_32753()
                        let memPos := allocate_unbounded()
                        let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                        return(memPos, sub(memEnd, memPos))

                    }

                    function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                        revert(0, 0)
                    }

                    function zero_value_for_split_t_uint256() -> ret {
                        ret := 0
                    }

                    function cleanup_t_uint160(value) -> cleaned {
                        cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
                    }

                    function identity(value) -> ret {
                        ret := value
                    }

                    function convert_t_uint160_to_t_uint160(value) -> converted {
                        converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
                    }

                    function convert_t_uint160_to_t_contract$_AggregatorV3Interface_$37091(value) -> converted {
                        converted := convert_t_uint160_to_t_uint160(value)
                    }

                    function convert_t_address_to_t_contract$_AggregatorV3Interface_$37091(value) -> converted {
                        converted := convert_t_uint160_to_t_contract$_AggregatorV3Interface_$37091(value)
                    }

                    function convert_t_uint160_to_t_address(value) -> converted {
                        converted := convert_t_uint160_to_t_uint160(value)
                    }

                    function convert_t_contract$_AggregatorV3Interface_$37091_to_t_address(value) -> converted {
                        converted := convert_t_uint160_to_t_address(value)
                    }

                    function revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() {
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

                    function shift_left_224(value) -> newValue {
                        newValue :=

                        shl(224, value)

                    }

                    function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                        revert(0, 0)
                    }

                    function cleanup_t_uint80(value) -> cleaned {
                        cleaned := and(value, 0xffffffffffffffffffff)
                    }

                    function validator_revert_t_uint80(value) {
                        if iszero(eq(value, cleanup_t_uint80(value))) { revert(0, 0) }
                    }

                    function abi_decode_t_uint80_fromMemory(offset, end) -> value {
                        value := mload(offset)
                        validator_revert_t_uint80(value)
                    }

                    function cleanup_t_int256(value) -> cleaned {
                        cleaned := value
                    }

                    function validator_revert_t_int256(value) {
                        if iszero(eq(value, cleanup_t_int256(value))) { revert(0, 0) }
                    }

                    function abi_decode_t_int256_fromMemory(offset, end) -> value {
                        value := mload(offset)
                        validator_revert_t_int256(value)
                    }

                    function validator_revert_t_uint256(value) {
                        if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
                    }

                    function abi_decode_t_uint256_fromMemory(offset, end) -> value {
                        value := mload(offset)
                        validator_revert_t_uint256(value)
                    }

                    function abi_decode_tuple_t_uint80t_int256t_uint256t_uint256t_uint80_fromMemory(headStart, dataEnd) -> value0, value1, value2, value3, value4 {
                        if slt(sub(dataEnd, headStart), 160) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                        {

                            let offset := 0

                            value0 := abi_decode_t_uint80_fromMemory(add(headStart, offset), dataEnd)
                        }

                        {

                            let offset := 32

                            value1 := abi_decode_t_int256_fromMemory(add(headStart, offset), dataEnd)
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

                            value4 := abi_decode_t_uint80_fromMemory(add(headStart, offset), dataEnd)
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

                    function convert_t_uint160_to_t_contract$_IPyth_$37122(value) -> converted {
                        converted := convert_t_uint160_to_t_uint160(value)
                    }

                    function convert_t_address_to_t_contract$_IPyth_$37122(value) -> converted {
                        converted := convert_t_uint160_to_t_contract$_IPyth_$37122(value)
                    }

                    function convert_t_contract$_IPyth_$37122_to_t_address(value) -> converted {
                        converted := convert_t_uint160_to_t_address(value)
                    }

                    function cleanup_t_rational_300_by_1(value) -> cleaned {
                        cleaned := value
                    }

                    function convert_t_rational_300_by_1_to_t_uint256(value) -> converted {
                        converted := cleanup_t_uint256(identity(cleanup_t_rational_300_by_1(value)))
                    }

                    /// @src 51:1204:1255  "uint256 private constant VALID_TIME_PERIOD = 5 * 60"
                    function constant_VALID_TIME_PERIOD_32643() -> ret {
                        /// @src 51:1249:1255  "5 * 60"
                        let expr_32642 := 0x012c
                        let _9 := convert_t_rational_300_by_1_to_t_uint256(expr_32642)

                        ret := _9
                    }

                    function revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() {
                        revert(0, 0)
                    }

                    function allocate_memory(size) -> memPtr {
                        memPtr := allocate_unbounded()
                        finalize_allocation(memPtr, size)
                    }

                    function revert_error_5e8f644817bc4960744f35c15999b6eff64ae702f94b1c46297cfd4e1aec2421() {
                        revert(0, 0)
                    }

                    function cleanup_t_int64(value) -> cleaned {
                        cleaned := signextend(7, value)
                    }

                    function validator_revert_t_int64(value) {
                        if iszero(eq(value, cleanup_t_int64(value))) { revert(0, 0) }
                    }

                    function abi_decode_t_int64_fromMemory(offset, end) -> value {
                        value := mload(offset)
                        validator_revert_t_int64(value)
                    }

                    function cleanup_t_uint64(value) -> cleaned {
                        cleaned := and(value, 0xffffffffffffffff)
                    }

                    function validator_revert_t_uint64(value) {
                        if iszero(eq(value, cleanup_t_uint64(value))) { revert(0, 0) }
                    }

                    function abi_decode_t_uint64_fromMemory(offset, end) -> value {
                        value := mload(offset)
                        validator_revert_t_uint64(value)
                    }

                    function cleanup_t_int32(value) -> cleaned {
                        cleaned := signextend(3, value)
                    }

                    function validator_revert_t_int32(value) {
                        if iszero(eq(value, cleanup_t_int32(value))) { revert(0, 0) }
                    }

                    function abi_decode_t_int32_fromMemory(offset, end) -> value {
                        value := mload(offset)
                        validator_revert_t_int32(value)
                    }

                    // struct IPyth.Price
                    function abi_decode_t_struct$_Price_$37102_memory_ptr_fromMemory(headStart, end) -> value {
                        if slt(sub(end, headStart), 0x80) { revert_error_3538a459e4a0eb828f1aed5ebe5dc96fe59620a31d9b33e41259bb820cae769f() }
                        value := allocate_memory(0x80)

                        {
                            // price

                            let offset := 0

                            mstore(add(value, 0x00), abi_decode_t_int64_fromMemory(add(headStart, offset), end))

                        }

                        {
                            // conf

                            let offset := 32

                            mstore(add(value, 0x20), abi_decode_t_uint64_fromMemory(add(headStart, offset), end))

                        }

                        {
                            // expo

                            let offset := 64

                            mstore(add(value, 0x40), abi_decode_t_int32_fromMemory(add(headStart, offset), end))

                        }

                        {
                            // publishTime

                            let offset := 96

                            mstore(add(value, 0x60), abi_decode_t_uint256_fromMemory(add(headStart, offset), end))

                        }

                    }

                    function abi_decode_tuple_t_struct$_Price_$37102_memory_ptr_fromMemory(headStart, dataEnd) -> value0 {
                        if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                        {

                            let offset := 0

                            value0 := abi_decode_t_struct$_Price_$37102_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
                        }

                    }

                    function cleanup_t_bytes32(value) -> cleaned {
                        cleaned := value
                    }

                    function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                        mstore(pos, cleanup_t_bytes32(value))
                    }

                    function abi_encode_tuple_t_bytes32_t_uint256__to_t_bytes32_t_uint256__fromStack(headStart , value0, value1) -> tail {
                        tail := add(headStart, 64)

                        abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                        abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                    }

                    function read_from_memoryt_int32(ptr) -> returnValue {

                        let value := cleanup_t_int32(mload(ptr))

                        returnValue :=

                        value

                    }

                    function cleanup_t_rational_minus_8_by_1(value) -> cleaned {
                        cleaned := value
                    }

                    function convert_t_rational_minus_8_by_1_to_t_int32(value) -> converted {
                        converted := cleanup_t_int32(identity(cleanup_t_rational_minus_8_by_1(value)))
                    }

                    function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                        mstore(pos, length)
                        updated_pos := add(pos, 0x20)
                    }

                    function store_literal_in_memory_c7e8c5f86ea5c9c850114d14e3d8042c9d9f4fd58a0d39289d50d536d411e2ec(memPtr) {

                        mstore(add(memPtr, 0), "INVALID_EXP")

                    }

                    function abi_encode_t_stringliteral_c7e8c5f86ea5c9c850114d14e3d8042c9d9f4fd58a0d39289d50d536d411e2ec_to_t_string_memory_ptr_fromStack(pos) -> end {
                        pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 11)
                        store_literal_in_memory_c7e8c5f86ea5c9c850114d14e3d8042c9d9f4fd58a0d39289d50d536d411e2ec(pos)
                        end := add(pos, 32)
                    }

                    function abi_encode_tuple_t_stringliteral_c7e8c5f86ea5c9c850114d14e3d8042c9d9f4fd58a0d39289d50d536d411e2ec__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                        tail := add(headStart, 32)

                        mstore(add(headStart, 0), sub(tail, headStart))
                        tail := abi_encode_t_stringliteral_c7e8c5f86ea5c9c850114d14e3d8042c9d9f4fd58a0d39289d50d536d411e2ec_to_t_string_memory_ptr_fromStack( tail)

                    }

                    function require_helper_t_stringliteral_c7e8c5f86ea5c9c850114d14e3d8042c9d9f4fd58a0d39289d50d536d411e2ec(condition ) {
                        if iszero(condition)
                        {

                            let memPtr := allocate_unbounded()

                            mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                            let end := abi_encode_tuple_t_stringliteral_c7e8c5f86ea5c9c850114d14e3d8042c9d9f4fd58a0d39289d50d536d411e2ec__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                            revert(memPtr, sub(end, memPtr))
                        }
                    }

                    function cleanup_t_rational_0_by_1(value) -> cleaned {
                        cleaned := value
                    }

                    function convert_t_rational_0_by_1_to_t_int256(value) -> converted {
                        converted := cleanup_t_int256(identity(cleanup_t_rational_0_by_1(value)))
                    }

                    function read_from_memoryt_int64(ptr) -> returnValue {

                        let value := cleanup_t_int64(mload(ptr))

                        returnValue :=

                        value

                    }

                    function convert_t_rational_0_by_1_to_t_int64(value) -> converted {
                        converted := cleanup_t_int64(identity(cleanup_t_rational_0_by_1(value)))
                    }

                    function require_helper(condition) {
                        if iszero(condition) { revert(0, 0) }
                    }

                    function convert_t_int64_to_t_int256(value) -> converted {
                        converted := cleanup_t_int256(identity(cleanup_t_int64(value)))
                    }

                    function convert_t_int256_to_t_uint256(value) -> converted {
                        converted := cleanup_t_uint256(identity(cleanup_t_int256(value)))
                    }

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
                        let _24 := convert_t_rational_79228162514264337593543950336_by_1_to_t_uint256(expr_30296)

                        ret := _24
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

                    /// @ast-id 32753
                    /// @src 51:1486:2074  "function getSqrtPrice() external view returns (uint256 sqrtPrice) {..."
                    function fun_getSqrtPrice_32753() -> var_sqrtPrice_32674 {
                        /// @src 51:1533:1550  "uint256 sqrtPrice"
                        let zero_t_uint256_1 := zero_value_for_split_t_uint256()
                        var_sqrtPrice_32674 := zero_t_uint256_1

                        /// @src 51:1612:1627  "_quotePriceFeed"
                        let _2 := loadimmutable("32632")
                        let expr_32679 := _2
                        /// @src 51:1590:1628  "AggregatorV3Interface(_quotePriceFeed)"
                        let expr_32680_address := convert_t_address_to_t_contract$_AggregatorV3Interface_$37091(expr_32679)
                        /// @src 51:1590:1644  "AggregatorV3Interface(_quotePriceFeed).latestRoundData"
                        let expr_32681_address := convert_t_contract$_AggregatorV3Interface_$37091_to_t_address(expr_32680_address)
                        let expr_32681_functionSelector := 0xfeaf968c
                        /// @src 51:1590:1646  "AggregatorV3Interface(_quotePriceFeed).latestRoundData()"

                        // storage for arguments and returned data
                        let _3 := allocate_unbounded()
                        mstore(_3, shift_left_224(expr_32681_functionSelector))
                        let _4 := abi_encode_tuple__to__fromStack(add(_3, 4) )

                        let _5 := staticcall(gas(), expr_32681_address,  _3, sub(_4, _3), _3, 160)

                        if iszero(_5) { revert_forward_1() }

                        let expr_32682_component_1, expr_32682_component_2, expr_32682_component_3, expr_32682_component_4, expr_32682_component_5
                        if _5 {

                            let _6 := 160

                            if gt(_6, returndatasize()) {
                                _6 := returndatasize()
                            }

                            // update freeMemoryPointer according to dynamic return size
                            finalize_allocation(_3, _6)

                            // decode return parameters from external try-call into retVars
                            expr_32682_component_1, expr_32682_component_2, expr_32682_component_3, expr_32682_component_4, expr_32682_component_5 :=  abi_decode_tuple_t_uint80t_int256t_uint256t_uint256t_uint80_fromMemory(_3, add(_3, _6))
                        }
                        /// @src 51:1562:1646  "(, int256 quoteAnswer,,,) = AggregatorV3Interface(_quotePriceFeed).latestRoundData()"
                        let var_quoteAnswer_32677 := expr_32682_component_2
                        /// @src 51:1694:1699  "_pyth"
                        let _7 := loadimmutable("32634")
                        let expr_32690 := _7
                        /// @src 51:1688:1700  "IPyth(_pyth)"
                        let expr_32691_address := convert_t_address_to_t_contract$_IPyth_$37122(expr_32690)
                        /// @src 51:1688:1720  "IPyth(_pyth).getPriceNoOlderThan"
                        let expr_32692_address := convert_t_contract$_IPyth_$37122_to_t_address(expr_32691_address)
                        let expr_32692_functionSelector := 0xa4ae35e0
                        /// @src 51:1721:1729  "_priceId"
                        let _8 := loadimmutable("32638")
                        let expr_32693 := _8
                        /// @src 51:1731:1748  "VALID_TIME_PERIOD"
                        let expr_32694 := constant_VALID_TIME_PERIOD_32643()
                        /// @src 51:1688:1749  "IPyth(_pyth).getPriceNoOlderThan(_priceId, VALID_TIME_PERIOD)"

                        // storage for arguments and returned data
                        let _10 := allocate_unbounded()
                        mstore(_10, shift_left_224(expr_32692_functionSelector))
                        let _11 := abi_encode_tuple_t_bytes32_t_uint256__to_t_bytes32_t_uint256__fromStack(add(_10, 4) , expr_32693, expr_32694)

                        let _12 := staticcall(gas(), expr_32692_address,  _10, sub(_11, _10), _10, 128)

                        if iszero(_12) { revert_forward_1() }

                        let expr_32695_mpos
                        if _12 {

                            let _13 := 128

                            if gt(_13, returndatasize()) {
                                _13 := returndatasize()
                            }

                            // update freeMemoryPointer according to dynamic return size
                            finalize_allocation(_10, _13)

                            // decode return parameters from external try-call into retVars
                            expr_32695_mpos :=  abi_decode_tuple_t_struct$_Price_$37102_memory_ptr_fromMemory(_10, add(_10, _13))
                        }
                        /// @src 51:1657:1749  "IPyth.Price memory basePrice = IPyth(_pyth).getPriceNoOlderThan(_priceId, VALID_TIME_PERIOD)"
                        let var_basePrice_32688_mpos := expr_32695_mpos
                        /// @src 51:1768:1777  "basePrice"
                        let _14_mpos := var_basePrice_32688_mpos
                        let expr_32698_mpos := _14_mpos
                        /// @src 51:1768:1782  "basePrice.expo"
                        let _15 := add(expr_32698_mpos, 64)
                        let _16 := read_from_memoryt_int32(_15)
                        let expr_32699 := _16
                        /// @src 51:1786:1788  "-8"
                        let expr_32701 := 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8
                        /// @src 51:1768:1788  "basePrice.expo == -8"
                        let expr_32702 := eq(cleanup_t_int32(expr_32699), convert_t_rational_minus_8_by_1_to_t_int32(expr_32701))
                        /// @src 51:1760:1804  "require(basePrice.expo == -8, \"INVALID_EXP\")"
                        require_helper_t_stringliteral_c7e8c5f86ea5c9c850114d14e3d8042c9d9f4fd58a0d39289d50d536d411e2ec(expr_32702)
                        /// @src 51:1823:1834  "quoteAnswer"
                        let _17 := var_quoteAnswer_32677
                        let expr_32707 := _17
                        /// @src 51:1837:1838  "0"
                        let expr_32708 := 0x00
                        /// @src 51:1823:1838  "quoteAnswer > 0"
                        let expr_32709 := sgt(cleanup_t_int256(expr_32707), convert_t_rational_0_by_1_to_t_int256(expr_32708))
                        /// @src 51:1823:1861  "quoteAnswer > 0 && basePrice.price > 0"
                        let expr_32714 := expr_32709
                        if expr_32714 {
                            /// @src 51:1842:1851  "basePrice"
                            let _18_mpos := var_basePrice_32688_mpos
                            let expr_32710_mpos := _18_mpos
                            /// @src 51:1842:1857  "basePrice.price"
                            let _19 := add(expr_32710_mpos, 0)
                            let _20 := read_from_memoryt_int64(_19)
                            let expr_32711 := _20
                            /// @src 51:1860:1861  "0"
                            let expr_32712 := 0x00
                            /// @src 51:1842:1861  "basePrice.price > 0"
                            let expr_32713 := sgt(cleanup_t_int64(expr_32711), convert_t_rational_0_by_1_to_t_int64(expr_32712))
                            /// @src 51:1823:1861  "quoteAnswer > 0 && basePrice.price > 0"
                            expr_32714 := expr_32713
                        }
                        /// @src 51:1815:1862  "require(quoteAnswer > 0 && basePrice.price > 0)"
                        require_helper(expr_32714)
                        /// @src 51:1904:1913  "basePrice"
                        let _21_mpos := var_basePrice_32688_mpos
                        let expr_32723_mpos := _21_mpos
                        /// @src 51:1904:1919  "basePrice.price"
                        let _22 := add(expr_32723_mpos, 0)
                        let _23 := read_from_memoryt_int64(_22)
                        let expr_32724 := _23
                        /// @src 51:1897:1920  "int256(basePrice.price)"
                        let expr_32725 := convert_t_int64_to_t_int256(expr_32724)
                        /// @src 51:1889:1921  "uint256(int256(basePrice.price))"
                        let expr_32726 := convert_t_int256_to_t_uint256(expr_32725)
                        /// @src 51:1924:1933  "Constants"
                        let expr_32727_address := linkersymbol("src/libraries/Constants.sol:Constants")
                        /// @src 51:1924:1937  "Constants.Q96"
                        let expr_32728 := constant_Q96_30297()
                        /// @src 51:1889:1937  "uint256(int256(basePrice.price)) * Constants.Q96"
                        let expr_32729 := checked_mul_t_uint256(expr_32726, expr_32728)

                        /// @src 51:1948:1959  "quoteAnswer"
                        let _25 := var_quoteAnswer_32677
                        let expr_32732 := _25
                        /// @src 51:1940:1960  "uint256(quoteAnswer)"
                        let expr_32733 := convert_t_int256_to_t_uint256(expr_32732)
                        /// @src 51:1889:1960  "uint256(int256(basePrice.price)) * Constants.Q96 / uint256(quoteAnswer)"
                        let expr_32734 := checked_div_t_uint256(expr_32729, expr_32733)

                        /// @src 51:1873:1960  "uint256 price = uint256(int256(basePrice.price)) * Constants.Q96 / uint256(quoteAnswer)"
                        let var_price_32718 := expr_32734
                        /// @src 51:1978:1983  "price"
                        let _26 := var_price_32718
                        let expr_32737 := _26
                        /// @src 51:1986:1995  "Constants"
                        let expr_32738_address := linkersymbol("src/libraries/Constants.sol:Constants")
                        /// @src 51:1986:1999  "Constants.Q96"
                        let expr_32739 := constant_Q96_30297()
                        /// @src 51:1978:1999  "price * Constants.Q96"
                        let expr_32740 := checked_mul_t_uint256(expr_32737, expr_32739)

                        /// @src 51:2002:2015  "_decimalsDiff"
                        let _27 := loadimmutable("32636")
                        let expr_32741 := _27
                        /// @src 51:1978:2015  "price * Constants.Q96 / _decimalsDiff"
                        let expr_32742 := checked_div_t_uint256(expr_32740, expr_32741)

                        /// @src 51:1970:2015  "price = price * Constants.Q96 / _decimalsDiff"
                        var_price_32718 := expr_32742
                        let expr_32743 := expr_32742
                        /// @src 51:2038:2055  "FixedPointMathLib"
                        let expr_32746_address := linkersymbol("lib/solmate/src/utils/FixedPointMathLib.sol:FixedPointMathLib")
                        /// @src 51:2061:2066  "price"
                        let _28 := var_price_32718
                        let expr_32748 := _28
                        /// @src 51:2038:2067  "FixedPointMathLib.sqrt(price)"
                        let expr_32749 := fun_sqrt_37011(expr_32748)
                        /// @src 51:2026:2067  "sqrtPrice = FixedPointMathLib.sqrt(price)"
                        var_sqrtPrice_32674 := expr_32749
                        let expr_32750 := expr_32749

                    }
                    /// @src 51:1009:2076  "contract PriceFeed {..."

                    /// @ast-id 37011
                    /// @src 12:5746:9142  "function sqrt(uint256 x) internal pure returns (uint256 z) {..."
                    function fun_sqrt_37011(var_x_37004) -> var_z_37007 {
                        /// @src 12:5794:5803  "uint256 z"
                        let zero_t_uint256_29 := zero_value_for_split_t_uint256()
                        var_z_37007 := zero_t_uint256_29

                        /// @src 12:5858:9136  "assembly {..."
                        {
                            let usr$y := var_x_37004
                            var_z_37007 := 181
                            if iszero(lt(usr$y, 0x10000000000000000000000000000000000))
                            {
                                usr$y := shr(128, usr$y)
                                var_z_37007 := shl(64, var_z_37007)
                            }
                            if iszero(lt(usr$y, 0x1000000000000000000))
                            {
                                usr$y := shr(64, usr$y)
                                var_z_37007 := shl(32, var_z_37007)
                            }
                            if iszero(lt(usr$y, 0x10000000000))
                            {
                                usr$y := shr(32, usr$y)
                                var_z_37007 := shl(16, var_z_37007)
                            }
                            if iszero(lt(usr$y, 0x1000000))
                            {
                                usr$y := shr(16, usr$y)
                                var_z_37007 := shl(8, var_z_37007)
                            }
                            var_z_37007 := shr(18, mul(var_z_37007, add(usr$y, 65536)))
                            var_z_37007 := shr(1, add(var_z_37007, div(var_x_37004, var_z_37007)))
                            var_z_37007 := shr(1, add(var_z_37007, div(var_x_37004, var_z_37007)))
                            var_z_37007 := shr(1, add(var_z_37007, div(var_x_37004, var_z_37007)))
                            var_z_37007 := shr(1, add(var_z_37007, div(var_x_37004, var_z_37007)))
                            var_z_37007 := shr(1, add(var_z_37007, div(var_x_37004, var_z_37007)))
                            var_z_37007 := shr(1, add(var_z_37007, div(var_x_37004, var_z_37007)))
                            var_z_37007 := shr(1, add(var_z_37007, div(var_x_37004, var_z_37007)))
                            var_z_37007 := sub(var_z_37007, lt(div(var_x_37004, var_z_37007), var_z_37007))
                        }

                    }
                    /// @src 51:1009:2076  "contract PriceFeed {..."

                }

                data ".metadata" hex"a2646970667358221220c5ef1b670148576943bd150089dd7bd8b02b64f43982bff04d2a3003f0d6d59c64736f6c634300081e0033"
            }

        }

        data ".metadata" hex"a2646970667358221220636567cab0e013c2aef6b7bee620bcdd7c94fbe18a9d965eb831f4143159bc4764736f6c634300081e0033"
    }

}

