
object "InsertionSort" {
    code {
        // Initialize an array in memory, assuming the array starts at memory position 0x80
        let arrayOffset := 0x80
        let arr_len := 300
        mstore(arrayOffset, arr_len) // Length of the array

        // Populate the array with sample data
        let dataOffset := add(arrayOffset, 0x20) // Start storing data 32 bytes after the start
        let n := arr_len // Number of elements in the array
        for { let i := 0 } slt(i, n) { i := add(i, 1) } {
            mstore(add(dataOffset, mul(i, 0x20)), mod(mul(i, 3), 23))
            // Just some arbitrary data generation: mod(i*3, 23)
        }
        debugPrintArray(arrayOffset)
        PRINT(11111111111111111111111111111111111)

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

        // Function to debug print the sorted array
        function debugPrintArray(arrOffset) {
            let len := mload(arrOffset)
            for { let i := 0 } slt(i, len) { i := add(i, 1) } {
                let value := mload(add(arrOffset, mul(0x20, add(i, 1))))
                PRINT(value)
            }
        }

        // Print
        debugPrintArray(arrayOffset) // took 0m3.678s
    }

}

