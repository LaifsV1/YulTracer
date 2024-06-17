
object "ShellSort" {
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
        print(11111111111111111111111111111111111)

        // Shell sort function
        function shellSort(arrOffset) {
            let n := mload(arrOffset) // Array length

            // Start with a large gap, then reduce the gap
            for { let gap := div(n, 2) } sgt(gap, 0) { gap := div(gap, 2) }
            {
                // Do a gapped insertion sort for this gap size.
                for { let i := gap } slt(i, n) { i := add(i, 1) }
                {
                    let temp := mload(add(arrOffset, mul(0x20, add(i, 1))))
                    let j := i
                    for { } sgt(j, sub(gap, 1)) { }
                    {
                        if iszero(sgt(mload(add(arrOffset,mul(0x20, add(sub(j, gap), 1)))), temp))
                        { break }
                        mstore(add(arrOffset, mul(0x20, add(j, 1))),
                            mload(add(arrOffset, mul(0x20, add(sub(j, gap), 1)))))
                        j := sub(j, gap)
                    }
                    mstore(add(arrOffset, mul(0x20, add(j, 1))), temp)
                }
            }
        }

        // Call the shell sort function
        shellSort(arrayOffset)
        
        // Function to debug print the sorted array
        function debugPrintArray(arrOffset) {
            let len := mload(arrOffset)
            for { let i := 0 } slt(i, len) { i := add(i, 1) } {
                let value := mload(add(arrOffset, mul(0x20, add(i, 1))))
                print(value)
            }
        }

        // Print
        debugPrintArray(arrayOffset) // took 0m9.501s
    }

}

