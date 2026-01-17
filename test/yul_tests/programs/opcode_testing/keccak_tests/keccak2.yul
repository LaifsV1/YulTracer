// this prints the same Keccak 28 times, then 4 different numbers, followed by the same keccak again:
// memory: uint(-1), i.e. ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
// takes chunks of 5 from 0 to 32. i.e.
// 0: (ffffffffff)ffffffffffffffffffffffffffffffffffffffffffffffffffffff
// 1: ff(ffffffffff)ffffffffffffffffffffffffffffffffffffffffffffffffffff
// 2: ffff(ffffffffff)ffffffffffffffffffffffffffffffffffffffffffffffffff
// 3: ffffff(ffffffffff)ffffffffffffffffffffffffffffffffffffffffffffffff
// ...
// 27: ffffffffffffffffffffffffffffffffffffffffffffffffffffff(ffffffffff)
// 28: ffffffffffffffffffffffffffffffffffffffffffffffffffffffff(ffffffff00)
// 29: ffffffffffffffffffffffffffffffffffffffffffffffffffffffffff(ffffff0000)
// 30: ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff(ffff000000)
// 31: ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff(ff00000000)
// 32: ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff(0000000000)
// 33: ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00(0000000000)
// 34: ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000(0000000000)
// ... so on
object "Keccak1" {
    code {
        printhex(sub(0,1))
        mstore(0x0, sub(0,1))

        for {let i := 0} lt(i,64) {i := add(i,1)} {
            let _1 := keccak256(i,5)
            print(i)
            print(_1)
        }
    }

}
