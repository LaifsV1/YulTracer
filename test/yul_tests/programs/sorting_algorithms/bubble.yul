
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

        // Assume we have a function to debug output (not part of standard Yul)
        function debugPrintArray(arrOffset) {
            let len := mload(arrOffset)
            for { let i := 0 } lt(i, len) { i := add(i, 1) } {
                let value := mload(add(arrOffset, mul(0x20, add(i, 1))))
                PRINT(value)
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

