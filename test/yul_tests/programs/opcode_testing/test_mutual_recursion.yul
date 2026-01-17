{
    function isEven(n) -> result {
        if eq(n, 0) {
            result := 1  // True: 0 is even
        }
        if iszero(eq(n, 0)) {
            result := isOdd(sub(n, 1))
        }
    }

    function isOdd(n) -> result {
        if eq(n, 0) {
            result := 0  // False: 0 is not odd
        }
        if iszero(eq(n, 0)) {
            result := isEven(sub(n, 1))
        }
    }

    // Example usage:
    {
        let number := 1111

        // Check if the number is even
        let evenResult := isEven(number)
        // evenResult will be 0 (false)

        // Check if the number is odd
        let oddResult := isOdd(number)
        // oddResult will be 1 (true)

        print(evenResult)
        print(oddResult)
    }

    // Example usage:
    {
        let number := 22222

        // Check if the number is even
        let evenResult := isEven(number)
        // evenResult will be 1 (true)

        // Check if the number is odd
        let oddResult := isOdd(number)
        // oddResult will be 0 (false)

        print(evenResult)
        print(oddResult)
    }

    // Example usage:
    {
        let number := 222220

        // Check if the number is even
        let evenResult := isEven(number)
        // evenResult will be 1 (true)

        // Check if the number is odd
        let oddResult := isOdd(number)
        // oddResult will be 0 (false)

        print(evenResult)
        print(oddResult)
    }
}
