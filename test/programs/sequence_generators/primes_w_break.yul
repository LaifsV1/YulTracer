object "Primes" {
    code {
        // Function to check if a number is prime
        function isPrime(num) -> result {
            result := 1 // Assume the number is prime
            if or(lt(num, 2), eq(num, 2)) {
                result := eq(num, 2) // 0 if num is less than 2, 1 if num is exactly 2
            }
            if gt(num, 2) {
                for { let d := 2 } lt(mul(d, d), add(num, 1)) { d := add(d, 1) }
                {
                    if iszero(mod(num, d)) {
                        result := 0 // num is not prime
                        break
                    }
                }
            }
        }

        // Function to 'print' all prime numbers up to a given number
        function printPrimes(n) {
            for { let num := 2 } lt(num, n) { num := add(num, 1) }
            {
                //print(isPrime(num))
                if isPrime(num) {
                    print(num) // Simulate printing each prime number
                }
            }
        }

        // Main entry point
        function main() {
            let n := 20 // 'Print' primes up to 20
            printPrimes(n)
        }

        main()
    }

    
}
