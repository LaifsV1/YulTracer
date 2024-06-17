
object "HeapSort" {
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
            if and(slt(l, n), sgt(mload(add(arrOffset, mul(0x20, add(l, 1)))),
                    mload(add(arrOffset, mul(0x20, add(largest, 1))))))
            {
                largest := l
            }

            // If right child is larger than largest so far
            if and(slt(r, n), sgt(mload(add(arrOffset, mul(0x20, add(r, 1)))),
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

            // Build heap (rearrange array)
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
        
        // Assume we have a function to debug output (not part of standard Yul)
        function debugPrintArray(arrOffset) {
            let len := mload(arrOffset)
            for { let i := 0 } slt(i, len) { i := add(i, 1) } {
                let value := mload(add(arrOffset, mul(0x20, add(i, 1))))
                print(value)
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

