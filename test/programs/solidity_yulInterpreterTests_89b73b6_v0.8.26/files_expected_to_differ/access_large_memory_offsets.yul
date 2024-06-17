// This test runs out of GAS in normal execution. The Solidity Yul interpreter appears to
// not consume gas for the purpose it was implemented for. Since we implement the EVM specs
// as written in Python, our interpreter runs out of GAS trying to access position sub(0, 1).
{
  mstore(0, 7)
  sstore(0, mload(0))
  mstore(sub(0, 1), sub(0, 1))
  sstore(1, mload(sub(0, 1)))

  // Added memory dump:
  printhex(mload(0x0))
  printhex(mload(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0))

  // Added storage dump:
  printhex(sload(0x0))
  printhex(sload(0x1))
}
// ----
// Trace:
// Memory dump:
//      0: ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff07
//   FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0: 00000000000000000000000000000000000000000000000000000000000000ff
// Storage dump:
//   0000000000000000000000000000000000000000000000000000000000000000: 0000000000000000000000000000000000000000000000000000000000000007
//   0000000000000000000000000000000000000000000000000000000000000001: ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
// Transient storage dump:
