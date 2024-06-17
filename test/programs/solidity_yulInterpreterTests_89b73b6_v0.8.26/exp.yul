{
  mstore(0, exp(3,not(1)))

  // Added memory dump:
  printhex(mload(0))
}
// ----
// Trace:
// Memory dump:
//      0: 8e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e39
// Storage dump:
// Transient storage dump:
