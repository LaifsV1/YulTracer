
object "ShellSort" {
    code {
        // Initialize an array in memory, assume the array starts at memory position 0x80
        let arrayOffset := 0x80
        mstore(arrayOffset, 10) // Length of the array
        // Populate the array with example data
        mstore(add(arrayOffset, 0x20), 9) // array[0] = 9
        mstore(add(arrayOffset, 0x40), 8) // array[1] = 8
        mstore(add(arrayOffset, 0x60), 7) // array[2] = 7
        mstore(add(arrayOffset, 0x80), 6) // array[3] = 6
        mstore(add(arrayOffset, 0xA0), 5) // array[4] = 5
        mstore(add(arrayOffset, 0xC0), 4) // array[5] = 4
        mstore(add(arrayOffset, 0xE0), 3) // array[6] = 3
        mstore(add(arrayOffset, 0x100), 2) // array[7] = 2
        mstore(add(arrayOffset, 0x120), 1) // array[8] = 1
        mstore(add(arrayOffset, 0x140), 0) // array[9] = 0

        // Shell sort function
        function shellSort(arrOffset) {
            let n := mload(arrOffset) // Array length

            // Start with a large gap, then reduce the gap
            for { let gap := div(n, 2) } sgt(gap, 0) { gap := div(gap, 2) }
            {
                // Do a gapped insertion sort for this gap size.
                // The first gap elements a[0..gap-1] are already in gapped order
                // keep adding one more element until the entire array is gap sorted
                for { let i := gap } slt(i, n) { i := add(i, 1) }
                {
                    let temp := mload(add(arrOffset, mul(0x20, add(i, 1))))
                    let j
                    // Shift earlier gap-sorted elements up until the correct location for a[i] is found
                    for { j := i } and(sgt(j, sub(gap,1)), sgt(mload(add(arrOffset,
                                    mul(0x20, add(sub(j, gap), 1)))), temp))
                    { j := sub(j, gap) }
                    {
                        mstore(add(arrOffset, mul(0x20, add(j, 1))),
                            mload(add(arrOffset, mul(0x20, add(sub(j, gap), 1)))))
                    }
                    // Put temp (the original a[i]) in its correct location
                    mstore(add(arrOffset, mul(0x20, add(j, 1))), temp)
                }
            }
        }

        // Call the shell sort function
        shellSort(arrayOffset)

        // Function to output sorted array (for testing purposes, hypothetical)
        function debugPrintArray(arrOffset) {
            let len := mload(arrOffset)
            for { let i := 0 } slt(i, len) { i := add(i, 1) } {
                let value := mload(add(arrOffset, mul(0x20, add(i, 1))))
                print(value)
            }
        }

        // Optionally, print the sorted array to verify correctness
        debugPrintArray(arrayOffset)
    }

}


        // // Assume we have a function to debug output (not part of standard Yul)
        // function debugPrintArray(arrOffset) {
        //     let len := mload(arrOffset)
        //     for { let i := 0 } slt(i, len) { i := add(i, 1) } {
        //         let value := mload(add(arrOffset, mul(0x20, add(i, 1))))
        //         print(value)
        //     }
        // }
