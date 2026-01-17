// tests if we can create a keccak out of a given symbolic value 
{
    let _0 := mk_symbolic()
    mstore(0x0,_0)
    let _1 := keccak256(0,32)
    print(_1)
    print_z3()
}
