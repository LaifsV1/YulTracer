{
  switch 7
  case 7 { mstore(1, 2) }
  case 3 { mstore(6, 7) }
  default { mstore(8, 9) }

  // Added memory dump:
  printhex(mload(0x20))
}
// ----
// Trace:
// Memory dump:
//     20: 0200000000000000000000000000000000000000000000000000000000000000
// Storage dump:
// Transient storage dump:
