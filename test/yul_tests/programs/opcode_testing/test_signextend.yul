
object "TestSignextend" {
    code {
        function performSignextend(bytePos, value) -> result {
            result := signextend(bytePos, value)
        }

        function testSignextend() {
            // Store results in subsequent storage slots
            let index := 0x00

            // Test cases
            // Example values might need adjustment for clarity in real scenario tests
            let testValue1 := 0x7F // 01111111 (127 in decimal)
            let testValue2 := 0xFF // 11111111 (-1 in decimal when considered signed)

            // Extending different bytes
            print(performSignextend(0, testValue1))
            index := add(index, 0x01)
            print(performSignextend(0, testValue2))
            index := add(index, 0x01)

            // print separator
            print(5555)
            
            // Using larger numbers to see the effect on multiple bytes
            let largeValuePositive := 0x7FFFFFFF // Largest 32-bit positive integer
            let largeValueNegative := 0xFFFFFFFF // -1 in 32-bit

            // Iterate over several byte positions for a larger value
            for { let i := 0 } lt(i, 10) { i := add(i, 1) } {
                print(performSignextend(i, largeValuePositive))
                index := add(index, 0x01)
                print(performSignextend(i, largeValueNegative))
                index := add(index, 0x01)
            }
        }

        // Run tests
        testSignextend()
        // Should print:
        // (127 , -1) 
        // (-1 , -1) x3
        // (2147483647, -1)
        // (2147483647, 4294967295) x6
    }

}

