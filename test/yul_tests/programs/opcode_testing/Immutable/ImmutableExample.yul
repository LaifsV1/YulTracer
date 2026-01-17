
/// @use-src 0:"immutable.sol"
object "ImmutableExample_23" {
    code {
        /// @src 0:57:252  "contract ImmutableExample {..."
        mstore(64, memoryguard(192))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        let _1 := copy_arguments_for_constructor_22_object_ImmutableExample_23()
        constructor_ImmutableExample_23(_1)

        let _2 := allocate_unbounded()
        codecopy(_2, dataoffset("ImmutableExample_23_deployed"), datasize("ImmutableExample_23_deployed"))

        setimmutable(_2, "3", mload(128))

        setimmutable(_2, "5", mload(160))

        return(_2, datasize("ImmutableExample_23_deployed"))

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

        function copy_arguments_for_constructor_22_object_ImmutableExample_23() -> ret_param_0 {

            let programSize := datasize("ImmutableExample_23")
            let argSize := sub(codesize(), programSize)

            let memoryDataOffset := allocate_memory(argSize)
            codecopy(memoryDataOffset, programSize, argSize)

            ret_param_0 := abi_decode_tuple_t_address_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
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

        function convert_t_contract$_ImmutableExample_$23_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_address(value)
        }

        /// @ast-id 22
        /// @src 0:161:250  "constructor(address _owner) {..."
        function constructor_ImmutableExample_23(var__owner_7) {

            /// @src 0:161:250  "constructor(address _owner) {..."

            /// @src 0:207:213  "_owner"
            let _3 := var__owner_7
            let expr_11 := _3
            /// @src 0:199:213  "owner = _owner"
            let _4 := expr_11
            mstore(128, _4)
            let expr_12 := expr_11
            /// @src 0:238:242  "this"
            let expr_17_address := address()
            /// @src 0:230:243  "address(this)"
            let expr_18 := convert_t_contract$_ImmutableExample_$23_to_t_address(expr_17_address)
            /// @src 0:223:243  "self = address(this)"
            let _5 := expr_18
            mstore(160, _5)
            let expr_19 := expr_18

        }
        /// @src 0:57:252  "contract ImmutableExample {..."

    }
    /// @use-src 0:"immutable.sol"
    object "ImmutableExample_23_deployed" {
        code {
            /// @src 0:57:252  "contract ImmutableExample {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x7104ddb2
                {
                    // self()

                    external_fun_self_5()
                }

                case 0x8da5cb5b
                {
                    // owner()

                    external_fun_owner_3()
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

            /// @ast-id 5
            /// @src 0:125:154  "address public immutable self"
            function getter_fun_self_5() -> rval {

                rval := loadimmutable("5")

            }
            /// @src 0:57:252  "contract ImmutableExample {..."

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

            function external_fun_self_5() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_self_5()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 3
            /// @src 0:89:119  "address public immutable owner"
            function getter_fun_owner_3() -> rval {

                rval := loadimmutable("3")

            }
            /// @src 0:57:252  "contract ImmutableExample {..."

            function external_fun_owner_3() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_owner_3()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

        }

        data ".metadata" hex"a2646970667358221220b01ca37436c4ae5463360646fa8ce24bf02ac70c200d7a79b985557a0f72bec164736f6c634300081e0033"
    }

}

