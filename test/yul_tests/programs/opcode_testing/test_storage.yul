
object "TestStorage" {
    code {
        function testStorage() {
            let value1 := 0x123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0
            let value2 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            let value3 := 0x0

            // Store values in different slots
            sstore(0, value1)
            sstore(1, value2)
            sstore(2, value3)

            // Load the values from storage
            let loadedValue1 := sload(0)
            let loadedValue2 := sload(1)
            let loadedValue3 := sload(2)

            // Print values
            print(loadedValue1)
            // 8234104123542484900769178205574010627627573691361805720124810878238590820080_10
            print(loadedValue2)
            // 115792089237316195423570985008687907853269984665640564039457584007913129639935_10
            print(loadedValue3)
            // 0_10
        }

        // Call the test function
        testStorage()
    }

}

