// The Solidity Compiler implementation of Yul appears to have a nesting depth
// limit. Since this is not specified in official documentation of Yul and it's
// not part of the EVM execution specs, we differ in expected output.
{
  function f(x) -> y
  {
    // 32 nested additions are computed in
    // exactly 66 expression evaluation steps
    y := add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,x))))))))))))))))))))))))))))))))
  }
  mstore(0,f(0))

  // Added memory dump:
  printhex(mload(0))
}
// ----
// Trace:
//   Maximum expression nesting level reached.
// Memory dump:
// Storage dump:
// Transient storage dump:
