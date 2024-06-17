// author Yu-Yang Lin
object "Primes" {
    code {
        // Function to read and reverse the last `n` bits of a given number `x`
        function readAndReverseLastNBits(x, n) -> reversedBits {
            reversedBits := 0
            // Initialize the reversed bits holder
            let shift := sub(n, 1)
            // Start shift from the most significant bit position of the last `n` bits

            // Loop to extract and reverse the last `n` bits
            for { let i := 0 } lt(i, n) { i := add(i, 1) } {
                // Extract the `i-th` bit from the end
                if and(x, shl(i, 1)) {
                    // If the `i-th` bit is set, set the corresponding bit
                    // from the end in reversedBits
                    reversedBits := or(reversedBits, shl(shift, 1))
                }
                // Decrement shift to move to the next position from the end
                shift := sub(shift, 1)
            }
        }

        // Function to generate the nth iteration of the Dragon Curve via iterative folding
        function dragon_curve(n) -> res {
            // initial length to simulate a list using bits
            let length := 0

            // initial curve = [1]
            let ds := 1
            // updated length to reflect curve length
            length := add(length, 1)

            // fold the curve N times
            for {let i := 0} lt(i,n) {i := add(i,1)}
            {
                // remember previous length
                let previous_length := length
                // bitwise complement of the ds to flip the turns
                let not_ds := not(ds)
                // reverse first so we don't lose this
                let rev_not_ds := readAndReverseLastNBits(not_ds,previous_length)
                
                // append 1 at the end of the sequence:
                // shift ds left by one bit
                ds := shl(1, ds)
                // set the least significant bit to 1
                ds := or(ds, 1)
                // update length by 1
                length := add(length, 1)

                // append reversed negated previous iteration:
                // shift ds by length of previous curve
                ds := shl(previous_length, ds)
                // set the least significant bits to reversed negated curve
                ds := or(ds, rev_not_ds)
                // update length by length of previous curve
                length := add(length, previous_length)
            }

            res := ds
        }

        print(dragon_curve(0))
        // 1_2
        // = 1_10
        print(dragon_curve(1))
        // 110_2
        // = 6_10
        print(dragon_curve(2))
        // 1101100_2
        // = 108_10
        print(dragon_curve(3))
        // 110110011100100_2
        // = 27876_10
        print(dragon_curve(4))
        // 1101100111001001110110001100100_2
        // = 1826942052_10
        print(dragon_curve(5))
        // 110110011100100111011000110010011101100111001000110110001100100_2
        // = 7846656369001524324_10
        print(dragon_curve(6))
        // 1101100111001001110110001100100111011001110010001101100011001001110110011100100111011000110010001101100111001000110110001100100_2
        // = 144745261873314177475604083946266324068_10
        print(dragon_curve(7))
        // 110110011100100111011000110010011101100111001000110110001100100111011001110010011101100011001000110110011100100011011000110010011101100111001001110110001100100111011001110010001101100011001000110110011100100111011000110010001101100111001000110110001100100_2
        // = 49254260310842419635956203183145610297351659359183114324190902443509341776996_10
    }
    
}


                // function dragon_curve(n) -> res {
                //         // initial length to simulate a list using bits
                //         let length := 0

                //         // initial dragon curve = [1]
                //         let ds := 1
                //         // updated length to reflect curve length
                //         length := add(length, 1)

                //         for {let i := 0} lt(i,n) {i := add(i,1)}
                //         {
                //                 // remember previous length
                //                 let previous_length := length
                //                 // negate the ds to flip the turns
                //                 let negated_ds := not(ds)
                //                 // reverse first so we don't lose this
                //                 let reversed_nds := readAndReverseLastNBits(ds,negated_ds)

                //                 // append 1 at the end of the sequence:
                //                 // shift ds left by one bit
                //                 ds := shl(1, ds)
                //                 // set the least significant bit to 1
                //                 ds := or(ds, 1)
                //                 // update length by 1
                //                 length := add(length, 1)

                //                 // append reversed negated previous iteration:
                //                 // shift ds by length of previous curve
                //                 ds := shl(previous_length, ds)
                //                 // set the least significant bits to reversed negated curve
                //                 ds := or(ds, reversed_nds)
                //                 // update length by length of previous curve
                //                 length := add(length, previous_length)
                //         }

                //         res := ds
                // }

                // print(dragon_curve(2))


                // // Example usage
                // let original := 0x123456789101112
                // // Output handling is typically outside Yul, such as via debugging or other mechanism
                // print(readAndReverseLastNBits(original, 8))
                // print(readAndReverseLastNBits(original, 9))
                // print(readAndReverseLastNBits(original, 10))
                // print(readAndReverseLastNBits(original, 11))
                // print(readAndReverseLastNBits(original, 12))
                // print(readAndReverseLastNBits(original, 13))
                // print(readAndReverseLastNBits(original, 14))
                // print(readAndReverseLastNBits(original, 15))
                // print(readAndReverseLastNBits(original, 16))
                // print(readAndReverseLastNBits(original, 17))
                // print(readAndReverseLastNBits(original, 20))
                // print(readAndReverseLastNBits(original, 34))
                // print(readAndReverseLastNBits(original, 50))
                // print(readAndReverseLastNBits(original, 67))
                // print(readAndReverseLastNBits(original, 100))
                // print(readAndReverseLastNBits(original, 161))
                // print(readAndReverseLastNBits(original, 200))
                // print(readAndReverseLastNBits(original, 655))



