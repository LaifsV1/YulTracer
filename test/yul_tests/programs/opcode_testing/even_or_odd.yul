 {
    // set a test number and check if it's even
    let testnumber := 3
    let evenCheckResult := isEven(testnumber)

    // store the result in memory
    mstore(0x0, evenCheckResult)

    // Yul function to check if a number is even or odd
    function isEven(number) -> result {
        // check if the number is divisible by 2
        if eq(mod(number, 2), 0) {
            // assign result to 1 for even
            result := 1
        }
        // No else branch, check if not divisible by 2
        if iszero(eq(mod(number, 2), 0))
        {
            // assign result to 0 for odd
            result := 0
        }
    }
 }





