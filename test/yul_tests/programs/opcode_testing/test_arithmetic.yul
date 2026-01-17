
object "TestArithmetic" {
    code {
        function testArithmetic() {
            let a := 10
            let b := 3
            let k := 7
            
            // Basic arithmetic
            let addResult := add(a, b)
            let subResult := sub(a, b)
            let mulResult := mul(a, b)
            let divResult := div(a, b)
            let sdivResult := sdiv(a, b)
            
            // Modulus operations
            let modResult := mod(a, b)
            let smodResult := smod(a, b)
            
            // Advanced arithmetic
            let addmodResult := addmod(a, b, k)
            let mulmodResult := mulmod(a, b, k)
            
            // Exponentiation
            let expResult := exp(a, b)
            
            // Sign extension
            let signextendResult := signextend(1, b)
            
            // Outputs
            // Function             || Expected Output
            print(addResult)        // 13
            print(subResult)        // 7
            print(mulResult)        // 30
            print(divResult)        // 3
            print(sdivResult)       // 3
            print(modResult)        // 1
            print(smodResult)       // 1
            print(addmodResult)     // 6
            print(mulmodResult)     // 2
            print(expResult)        // 1000
            print(signextendResult) // 3
        }
        
        testArithmetic()
    }
}

