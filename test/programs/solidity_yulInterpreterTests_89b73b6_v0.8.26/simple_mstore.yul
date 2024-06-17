{
  mstore(10, 11)

  // Added memory dump:
  printhex(mload(0x20))
}
// ----
// Trace:
// Memory dump:
//     20: 0000000000000000000b00000000000000000000000000000000000000000000
// Storage dump:
// Transient storage dump:
