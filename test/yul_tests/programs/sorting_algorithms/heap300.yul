
object "HeapSort" {
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

        // Helper function to swap two elements in the array
        function swap(arrOffset, i, j) {
            let pos1 := add(arrOffset, mul(0x20, add(i, 1)))
            let pos2 := add(arrOffset, mul(0x20, add(j, 1)))
            let temp := mload(pos1)
            mstore(pos1, mload(pos2))
            mstore(pos2, temp)
        }

        // Helper function to "heapify" a subtree rooted with node i
        function heapify(arrOffset, n, i) {
            let largest := i // Initialize largest as root
            let l := add(add(i, i), 1) // left = 2*i + 1
            let r := add(l, 1) // right = 2*i + 2
            
            // If left child is larger than root
            if and(lt(l, n), gt(mload(add(arrOffset, mul(0x20, add(l, 1)))),
                    mload(add(arrOffset, mul(0x20, add(largest, 1))))))
            {
                largest := l
            }

            // If right child is larger than largest so far
            if and(lt(r, n), gt(mload(add(arrOffset, mul(0x20, add(r, 1)))),
                    mload(add(arrOffset, mul(0x20, add(largest, 1))))))
            {
                largest := r
            }

            // If largest is not root
            if iszero(eq(largest, i))
            {
                swap(arrOffset, i, largest)
                // Recursively heapify the affected sub-tree
                heapify(arrOffset, n, largest)
            }
        }

        // Main function to do heap sort
        function heapSort(arrOffset) {
            let n := mload(arrOffset) // Array length

            // Build heap (rearrange array) note: slt(i,0) is necessary or it goes negative
            for { let i := div(sub(n, 2), 2) } iszero(slt(i, 0)) { i := sub(i, 1) }
            {
                heapify(arrOffset, n, i)
            }

            // One by one extract an element from heap
            for { let i := sub(n, 1) } sgt(i, 0) { i := sub(i, 1) }
            {
                // Move current root to end
                swap(arrOffset, 0, i)
                // call max heapify on the reduced heap
                heapify(arrOffset, i, 0)
            }
        }

        // Call the heap sort function
        heapSort(arrayOffset)

        // Function to debug print the sorted array
        function debugPrintArray(arrOffset) {
            let len := mload(arrOffset)
            for { let i := 0 } slt(i, len) { i := add(i, 1) } {
                let value := mload(add(arrOffset, mul(0x20, add(i, 1))))
                PRINT(value)
            }
        }

        // Print
        debugPrintArray(arrayOffset) // took 0m2.928s
    }

}

