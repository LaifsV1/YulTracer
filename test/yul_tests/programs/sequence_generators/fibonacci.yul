
object "Fibonacci" {
    code {
        // Function that computes Fibonacci linearly via looping
        function fibonacci(n) -> result {
            if n {
                // Base cases
                switch n
                case 1 { result := 1 }
                default {
                    let a := 1 // F(1)
                    let b := 1 // F(2)
                    for { let i := 2 } lt(i, n) { i := add(i, 1) } {
                        let temp := add(a, b)
                        a := b
                        b := temp
                    }
                    result := b
                }
            }
        }
        
        // Main entry point
        function main() -> result {
            let n := 10 // Calculate the 10th Fibonacci number
            result := fibonacci(n)
        }

        // Print
        PRINT(main())
    }

}

