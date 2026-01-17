
object "Test1" {
    code {
        function fun(m) -> res {
            res := 5
        }
        let n := 10
        n := add(n, 1)
        n := add(n, 1)
        n := add(n, 1)
        n := add(n, 1)
        n := add(n, 1)
        n := add(n, fun(0))
    }

}

