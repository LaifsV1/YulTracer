{
  function f(a, b) -> x, y {
    x := add(a, b)
    y := mul(a, b)
  }
  let r, t := f(6, 7)
  sstore(r, t)

  // Added storage dump:
  PRINT_hex(sload(0xd))
}
// ----
// Trace:
// Memory dump:
// Storage dump:
//   000000000000000000000000000000000000000000000000000000000000000d: 000000000000000000000000000000000000000000000000000000000000002a
// Transient storage dump:
