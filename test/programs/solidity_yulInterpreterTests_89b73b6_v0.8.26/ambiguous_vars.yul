{
  {
     let a := 0x20
     mstore(a, 2)
  }
  let a
  mstore(a, 3)

  // Added memory dump:
  printhex(mload(0x0))
  printhex(mload(0x20))
}
// ----
// Trace:
// Memory dump:
//      0: 0000000000000000000000000000000000000000000000000000000000000003
//     20: 0000000000000000000000000000000000000000000000000000000000000002
// Storage dump:
// Transient storage dump:
