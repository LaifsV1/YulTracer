{
  function f() -> x { mstore(0, 0x1337) }
  pop(byte(0, shr(0x8, f())))

  // Added memory dump:
  PRINT_hex(mload(0x0))
}
// ====
// EVMVersion: >=constantinople
// ----
// Trace:
// Memory dump:
//      0: 0000000000000000000000000000000000000000000000000000000000001337
// Storage dump:
// Transient storage dump:
