
object "BubbleSort" {
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

        // Bubble Sort algorithm
        function bubbleSort(arrOffset) {
            let len := mload(arrOffset)
            let end := sub(len, 1)
            let sorted := 0

            for { let i := 0 } iszero(sorted) { i := add(i, 1) } {
                sorted := 1  // Assume sorted unless a swap happens

                for { let j := 0 } lt(j, end) { j := add(j, 1) } {
                    let elem1 := mload(add(arrOffset, mul(0x20, add(j, 1))))
                    let elem2 := mload(add(arrOffset, mul(0x20, add(add(j, 1), 1))))

                    if gt(elem1, elem2) {
                        // Swap elements
                        mstore(add(arrOffset, mul(0x20, add(j, 1))), elem2)
                        mstore(add(arrOffset, mul(0x20, add(add(j, 1), 1))), elem1)
                        sorted := 0  // Mark as not sorted
                    }
                }
            }
        }

        // Sort the array
        bubbleSort(arrayOffset)

        // Function to debug print the sorted array
        function debugPrintArray(arrOffset) {
            let len := mload(arrOffset)
            for { let i := 0 } slt(i, len) { i := add(i, 1) } {
                let value := mload(add(arrOffset, mul(0x20, add(i, 1))))
                PRINT(value)
            }
        }

        // Print
        debugPrintArray(arrayOffset) // took 0m12.125s
    }

}

