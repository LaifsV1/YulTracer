{
  function fib(i) -> y {
    y := 1
    if gt(i, 2) {
      y := add(fib(sub(i, 1)), fib(sub(i, 2)))
    }
  }
  sstore(0, fib(8))

  // Added storage dump:
  printhex(sload(0x0))
}
// ----
// Trace:
// Memory dump:
// Storage dump:
//   0000000000000000000000000000000000000000000000000000000000000000: 0000000000000000000000000000000000000000000000000000000000000015
// Transient storage dump:
