{
  function f(x) -> y
  {
    // 31 nested additions are computed in
    // exactly 64 expression evaluation steps
    y := add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,x)))))))))))))))))))))))))))))))
  }
  mstore(0,f(0))

  // Added memory dump:
  printhex(mload(0))
}
// ----
// Trace:
// Memory dump:
//      0: 000000000000000000000000000000000000000000000000000000000000001f
// Storage dump:
// Transient storage dump:
