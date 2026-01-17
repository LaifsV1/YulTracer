
object "PellNumbers" {
    code {
        // Function to calculate the nth Pell number
        function pell(n) -> result {
            switch n
            case 0 { result := 0 }
            case 1 { result := 1 }
            default {
                let p0 := 0 // P(0)
                let p1 := 1 // P(1)
                // Iteratively compute Pell numbers until n
                for { let i := 2 } lt(i, n) { i := add(i, 1) } {
                    let pNext := add(mul(2, p1), p0) // P(i) = 2*P(i-1) + P(i-2)
                    p0 := p1
                    p1 := pNext
                }
                result := add(mul(2, p1), p0) // Result after final iteration
            }
        }

        // Main entry point
        function main() -> result {
            let n := 10 // Calculate the 10th Pell number
            result := pell(n)
        }

        // Print: pell = 0,1,2,5,12,29,70,169,408,985,2378
        PRINT(main()) 
    }

}

