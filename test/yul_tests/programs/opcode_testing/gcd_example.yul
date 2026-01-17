{
    function computeGCD(a, b) -> result {
        for {} iszero(eq(b, 0)) {} {
            let temp := b
            b := mod(a, b)
            a := temp
        }
        result := a
    }
}

