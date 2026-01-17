
object "Catalan" {
    code {
        // Function to calculate factorial of a number
        function factorial(n) -> result {
            result := 1
            if gt(n, 1) {
                let i := 2
                for { } lt(i, n) { i := add(i, 1) }
                {
                    result := mul(result, i)
                }
                result := mul(result, n)
            }
        }

        // Function to calculate the nth Catalan number using the factorial
        // C(n) = (2n)! / (n! * (n + 1)!)
        function catalan(n) -> result {
            if iszero(n) {
                result := 1
            }
            if gt(n, 0) {
                let num := factorial(mul(2, n)) // (2n)!
                let denom := mul(factorial(n), factorial(add(n, 1))) // n! * (n + 1)!
                result := div(num, denom)
            }
        }

        // Main entry point
        function main() -> result {
            let n := 5 // Calculate the 5th Catalan number
            result := catalan(n)
        }

        // Print
        PRINT(main())

    }

}
