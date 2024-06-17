
object "InsertionSort" {
    code {
        // Initialize an array in memory
        // Assume the array starts at memory position 0x80 and has length 6
        let arrayOffset := 0x80
        mstore(arrayOffset, 6) // Length of the array
        mstore(add(arrayOffset, 0x20), 5) // array[0] = 5
        mstore(add(arrayOffset, 0x40), 3) // array[1] = 3
        mstore(add(arrayOffset, 0x60), 8) // array[2] = 8
        mstore(add(arrayOffset, 0x80), 7) // array[3] = 7
        mstore(add(arrayOffset, 0xA0), 2) // array[4] = 2
        mstore(add(arrayOffset, 0xC0), 4) // array[5] = 4
        
        // Insertion sort algorithm
        function insertionSort(arrOffset) {
            let len := mload(arrOffset) // Load the length of the array
            // Start from the second element (index 1)
            for { let i := 1 } lt(i, len) { i := add(i, 1) } {

                // Current element to be inserted
                let key := mload(add(arrOffset, mul(0x20, add(i, 1))))

                let j := sub(i, 1)
                
                // Find the insertion point. We use SGT because we need signed numbers.
                // sub(0,1) because Yul doesn't parse negative numbers.
                // all numbers in Yul are UINT256 so negative numbers are in 2's complement.
                for { } and(sgt(j, sub(0,1)), gt(mload(add(arrOffset, mul(0x20, add(j, 1)))), key))
                { j := sub(j, 1) }
                {
                    mstore(add(arrOffset, mul(0x20, add(add(j, 1), 1))),
                        mload(add(arrOffset, mul(0x20, add(j, 1)))))
                }

                // Insert the element at the found position
                mstore(add(arrOffset, mul(0x20, add(add(j, 1), 1))), key)
            }
        }

        // Sort the array
        insertionSort(arrayOffset)

        // Assume we have a function to debug output (not part of standard Yul)
        function debugPrintArray(arrOffset) {
            let len := mload(arrOffset)
            for { let i := 0 } lt(i, len) { i := add(i, 1) } {
                let value := mload(add(arrOffset, mul(0x20, add(i, 1))))
                print(value) //custom function
            }
        }

        // Print
        debugPrintArray(arrayOffset)
        // 2                                     
        // 3
        // 4
        // 5
        // 7
        // 8
    }


}

