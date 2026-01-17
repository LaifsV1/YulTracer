
object "Fibonacci" {
    code {
        // Function that computes Fibonacci via recursive branching
        function fibonacci_rec(n) -> result {
            if lt(n,3) {
                result := 1
            }
            if gt(n,2) {
                result := add(fibonacci_rec(sub(n,1)),fibonacci_rec(sub(n,2)))
            }
        }

        // Main entry point
        function main() -> result {
            let n := 10 // Calculate the 10th Fibonacci number
            result := fibonacci_rec(n)
        }

        // Print
        PRINT(main())
    }

}

