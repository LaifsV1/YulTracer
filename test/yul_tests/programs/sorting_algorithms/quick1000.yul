
object "QuickSort" {
    code {
        // Initialize an array in memory, assuming the array starts at memory position 0x80
        let arrayOffset := 0x80
        let arr_len := 1000
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

        // Function to swap elements in the array
        function swap(arrOffset, i, j) {
            let temp := mload(add(arrOffset, mul(0x20, add(i, 1))))
            mstore(add(arrOffset, mul(0x20, add(i, 1))), mload(add(arrOffset, mul(0x20, add(j, 1)))))
            mstore(add(arrOffset, mul(0x20, add(j, 1))), temp)
        }

        // Function to partition the array
        function partition(arrOffset, low, high) -> i {
            let pivot := mload(add(arrOffset, mul(0x20, add(high, 1))))
            i := sub(low, 1)
            for { let j := low } slt(j, high) { j := add(j, 1) } {
                if slt(mload(add(arrOffset, mul(0x20, add(j, 1)))), pivot) {
                    i := add(i, 1)
                    swap(arrOffset, i, j)
                }
            }
            swap(arrOffset, add(i, 1), high)
            i := add(i, 1)
        }

        // Quick sort function
        function quickSort(arrOffset, low, high) {
            if slt(low, high) {
                let p := partition(arrOffset, low, high)
                quickSort(arrOffset, low, sub(p, 1))
                quickSort(arrOffset, add(p, 1), high)
            }
        }

        // Start quick sorting
        let len := mload(arrayOffset) // Load the length of the array
        quickSort(arrayOffset, 0, sub(len, 1))

        // Function to debug print the sorted array
        function debugPrintArray(arrOffset) {
            let len := mload(arrOffset)
            for { let i := 0 } slt(i, len) { i := add(i, 1) } {
                let value := mload(add(arrOffset, mul(0x20, add(i, 1))))
                PRINT(value)
            }
        }

        // Print
        debugPrintArray(arrayOffset) // took 0m11.463s
    }

}

