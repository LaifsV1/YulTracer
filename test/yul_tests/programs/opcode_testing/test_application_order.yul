
object "TestOrder" {
    code {
        function times(x) -> result {
            print(x)
            result := 1
        }

        function plus(x) -> result {
            print(x)
            result := 1
        }
        
        function test(x1, x2, x3) {
            print(0)
        }
        test(plus(1), plus(2), times(3))
    }
}

