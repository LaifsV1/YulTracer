// 1 = 2
// 3 = 6
// 4 = 5 = 7
// 8 = 9 = 10
object "Keccak1" {
    code {
        mstore(0x0, sub(0,1))
        let _1 := keccak256(0,32)
        print(1)
        print(_1)
        
        mstore(0x0, sub(0,1))
        let _2 := keccak256(0,32)
        print(2)
        print(_2)
        
        let _3 := keccak256(0,31)
        print(3)
        print(_3)
        
        let _4 := keccak256(0,30)
        print(4)
        print(_4)
        
        let _5 := keccak256(0,30)
        print(5)
        print(_5)
        
        let _6 := keccak256(1,31)
        print(6)
        print(_6)

        let _7 := keccak256(1,30)
        print(7)
        print(_7)

        let _8 := keccak256(1,10)
        print(8)
        print(_8)

        let _9 := keccak256(2,10)
        print(9)
        print(_9)

        let _10 := keccak256(5,10)
        print(10)
        print(_10)
    }

}

