
object "TestMemory" {
    code {
        function testMemoryFunctions() {
            let fullWord := 0x123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0
            let singleByte := 0xFF

            // Using mstore to store a 32-byte word at position 0
            mstore(0, fullWord)
            // Using mstore8 to store a single byte at position 32
            mstore8(32, singleByte)

            // Load the stored 32-byte word from position 0
            let loadFullWord := mload(0)
            // Load the single byte stored at position 32
            let loadSingleByte := mload(32)
            // This loads 32 bytes starting from position 32,
            // will have singleByte at least significant position

            // Check memory size
            let memorySize := msize()

            // Output the values to verify correctness
            //0x123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0
            debugPrint(fullWord)
            //0x123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0
            debugPrint(loadFullWord)
            //0xFF00000000000000000000000000000000000000000000000000000000000000
            debugPrint(loadSingleByte)
            //size should be 64 if nothing else has been assigned
            debugPrint(memorySize)
        }

        // Helper function to mimic output for demonstration (Yul itself has no such function)
        function debugPrint(value) {
            // This is a placeholder to indicate where values would be checked or used
            print(value)
        }

        // Call the test function
        testMemoryFunctions()
    }

}

