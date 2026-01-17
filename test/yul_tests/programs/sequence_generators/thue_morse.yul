
object "ThueMorse" {
    code {
        // Function to compute the Thue-Morse sequence up to the nth term
        function thueMorse(n) -> result {
            result := 0 // Start with the first term: 0

            // This variable will hold the number of terms generated so far
            let count := 1

            // Generate the sequence by building up the result bit by bit
            for { let m := 1 } lt(m, n) { m := shl(1, m) }
            // m doubles each time, denoting new bits to generate
            {
                // Each iteration calculates the new bits based on the current result
                let newBits := 0
                for { let i := 0 } lt(i, m) { i := add(i, 1) }
                {
                    // Get the ith bit from the current result
                    let bit := and(shr(i, result), 1)
                    // Flip the bit to compute its complement
                    let flippedBit := xor(bit, 1)
                    // Place the flipped bit in the correct position for newBits
                    newBits := or(newBits, shl(add(i, m), flippedBit))
                }
                // Combine the new bits with the current result to form
                // the updated sequence
                result := or(result, newBits)
                count := add(count, m) // Increase count by number of new bits added
                if gt(count, n) {
                    break // If we have enough terms, exit the loop
                }
            }
        }

        // Main entry point
        function main() -> result {
            // Specify the number of terms of the Thue-Morse sequence to generate
            let n := 16
            // Generate and get the sequence as a binary number in decimal form
            result := thueMorse(n) 
        }

        // Print: first 16 terms = 0110100110010110_2 = 27030_10
        PRINT(main())
    }

}

