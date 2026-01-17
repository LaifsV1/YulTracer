// This faile contains a hex string `hex"1234_abcd"`. According to the Yul documentation online for
// vesrion 0.8.26, Hex Strings are specified as follows:
// HexLiteral = 'hex' ('"' ([0-9a-fA-F]{2})* '"' | '\'' ([0-9a-fA-F]{2})* '\'')
// This excludes underscore `_`, which this file contains. Since this is a compiler test, the compiler
// allows the use of `_` in hex strings. We chose to remain closer to the specifications. As such, we
// do not parse this file. 
{
	let x := hex"112233445566778899aabbccddeeff6677889900"
	let y := hex"1234_abcd"
	sstore(0, x)
	sstore(1, y)

  // Added storage dump:
  printhex(sload(0x0))
  printhex(sload(0x1))
  
}
// ----
// Trace:
// Memory dump:
// Storage dump:
//   0000000000000000000000000000000000000000000000000000000000000000: 112233445566778899aabbccddeeff6677889900000000000000000000000000
//   0000000000000000000000000000000000000000000000000000000000000001: 1234abcd00000000000000000000000000000000000000000000000000000000
// Transient storage dump:
