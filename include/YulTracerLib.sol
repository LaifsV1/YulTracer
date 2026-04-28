// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Each function below contains a unique assembly guard that survives the optimiser:
 *
 *    assembly { if eq(calldatasize(), 0xffHEXCODE) { revert(x, 1) } }
 *
 * HEXCODE is the 4-byte keccak256 selector of the function's qualified signature.
 * The 0xff prefix pushes the constant into the ~1 TB range.
 *
 * calldatasize() ensures the guard never fires. The parameter (x, b, a, addr)
 * appears in revert(x, 1) so that solc preserves the argument variable in the
 * Yul output — the non-zero length (1) prevents the optimiser from dropping the
 * offset argument. The build pipeline needs it to emit the corresponding opcode call.
 * Functions without parameters use revert(0, 0).
 *
 * This assembly is replaced by a call to a special YulTracer opcode during the YulTracer build pipeline.
 */

library Yult {

  /* Assert that b is non-zero; YulTracer will flag assertion violations.
   * keccak256("Yult.Assert(bool)")[:4] = 0x661be255
   */
  function Assert(bool b) internal pure { assembly { if eq(calldatasize(), 0xff661be255) { revert(b, 1) } } }

  /* The following print functions are provided to aid debugging.
   * All slot words are uint256 by default.
   */

  /* Print a slot word as an unsigned decimal integer.
   * keccak256("Yult.print(uint256)")[:4] = 0xdb70adb4
   */
  // slither-disable-next-line dead-code
  function print(uint256 x) internal pure { assembly { if eq(calldatasize(), 0xffdb70adb4) { revert(x, 1) } } }

  /* Print a slot word as a signed decimal integer.
   * keccak256("Yult.printSigned(uint256)")[:4] = 0x2640ab95
   */
  // slither-disable-next-line dead-code
  function printSigned(uint256 x) internal pure { assembly { if eq(calldatasize(), 0xff2640ab95) { revert(x, 1) } } }

  /* Print a slot word in uppercase hexadecimal.
   * keccak256("Yult.printHEX(uint256)")[:4] = 0xd376890e
   */
  // slither-disable-next-line dead-code
  function printHEX(uint256 x) internal pure { assembly { if eq(calldatasize(), 0xffd376890e) { revert(x, 1) } } }

  /* Print a slot word in lowercase hexadecimal.
   * keccak256("Yult.printHex(uint256)")[:4] = 0xb4359cd6
   */
  // slither-disable-next-line dead-code
  function printHex(uint256 x) internal pure { assembly { if eq(calldatasize(), 0xffb4359cd6) { revert(x, 1) } } }

  /* Print a slot word in binary.
   * keccak256("Yult.printBin(uint256)")[:4] = 0xc6c3aaba
   */
  // slither-disable-next-line dead-code
  function printBin(uint256 x) internal pure { assembly { if eq(calldatasize(), 0xffc6c3aaba) { revert(x, 1) } } }

  /* Print the ASCII string interpretation of a slot word.
   * keccak256("Yult.printAscii(uint256)")[:4] = 0x51233fd3
   */
  // slither-disable-next-line dead-code
  function printAscii(uint256 x) internal pure { assembly { if eq(calldatasize(), 0xff51233fd3) { revert(x, 1) } } }

  /* Print a slot word as an object.
   * keccak256("Yult.printObject(uint256)")[:4] = 0xa5963bbb
   */
  // slither-disable-next-line dead-code
  function printObject(uint256 x) internal pure { assembly { if eq(calldatasize(), 0xffa5963bbb) { revert(x, 1) } } }

  /* Print all discovered object IDs.
   * keccak256("Yult.printIDs()")[:4] = 0x1b39d683
   */
  // slither-disable-next-line dead-code
  function printIDs() internal pure { assembly { if eq(calldatasize(), 0xff1b39d683) { revert(0, 0) } } }

  /* Print all discovered object names.
   * keccak256("Yult.printNames()")[:4] = 0x433a7706
   */
  // slither-disable-next-line dead-code
  function printNames() internal pure { assembly { if eq(calldatasize(), 0xff433a7706) { revert(0, 0) } } }

  /* Print the symbolic environment (sigma / decls).
   * keccak256("Yult.printSigma()")[:4] = 0xde7a90e3
   */
  // slither-disable-next-line dead-code
  function printSigma() internal pure { assembly { if eq(calldatasize(), 0xffde7a90e3) { revert(0, 0) } } }

  /* Print the Z3 representation.
   * keccak256("Yult.printZ3()")[:4] = 0xae96021f
   */
  // slither-disable-next-line dead-code
  function printZ3() internal pure { assembly { if eq(calldatasize(), 0xffae96021f) { revert(0, 0) } } }

  /* Print the current memory.
   * keccak256("Yult.printMem()")[:4] = 0xd91d862c
   */
  // slither-disable-next-line dead-code
  function printMem() internal pure { assembly { if eq(calldatasize(), 0xffd91d862c) { revert(0, 0) } } }


  /* Functions to guide the game */

  /* Increase the current timestamp by x seconds.
   * keccak256("Yult.wait(uint256)")[:4] = 0xc84589d8
   */
  // slither-disable-next-line dead-code
  function wait(uint256 x) internal pure { assembly { if eq(calldatasize(), 0xffc84589d8) { revert(x, 1) } } }

  /* Create a fresh symbolic uint.
   * keccak256("Yult.mkSymbol(uint256)")[:4] = 0xbd235a68
   */
  // slither-disable-next-line dead-code
  function mkSymbol(uint256 x) internal pure returns (uint256 r) { assembly { if eq(calldatasize(), 0xffbd235a68) { revert(x, 1) } } }

  /* Increase the balance of the current address by x wei.
   * keccak256("Yult.extFund(uint256)")[:4] = 0x3c257306
   */
  // slither-disable-next-line dead-code
  function extFund(uint256 x) internal pure { assembly { if eq(calldatasize(), 0xff3c257306) { revert(x, 1) } } }

  /* Place the slot word x to the opponent as a value — the opponent remembers x and will be able to use it as a value.
   * keccak256("Yult.revealUint(bool)")[:4] = 0x2f377f38
   */
  // slither-disable-next-line dead-code
  function revealUint(bool b) internal pure { assembly { if eq(calldatasize(), 0xff2f377f38) { revert(b, 1) } } }

  /* Place the slot word x to the opponent as an address — the opponent remembers x and will be able to use it as an address.
   * keccak256("Yult.revealAddress(address)")[:4] = 0x45ce5e79
   */
  // slither-disable-next-line dead-code
  function revealAddress(address a) internal pure { assembly { if eq(calldatasize(), 0xff45ce5e79) { revert(a, 1) } } }

  /* Act like a call(0,a,0,...) from a different address — "move to" a call that spoofs the calling address.
   * keccak256("Yult.impersonateCall(uint256)")[:4] = 0x76125b94
   */
  // slither-disable-next-line dead-code
  function impersonateCall(uint256 x) internal pure { assembly { if eq(calldatasize(), 0xff76125b94) { revert(x, 1) } } }


  /* Internal functions that are unlikely to be useful */

  /* Set a linker table entry: point name at addr.
   * keccak256("Yult.setLinker(string,uint256)")[:4] = 0x51457b3c
   */
  // slither-disable-next-line dead-code
  function setLinker(string memory name, uint256 addr) internal pure { assembly { if eq(calldatasize(), 0xff51457b3c) { revert(addr, 1) } } }

  /* Pass control to the opponent to start the analysis.
   * keccak256("Yult.startAnalysis()")[:4] = 0x9d18d1cd
   */
  // slither-disable-next-line dead-code
  function startAnalysis() internal pure { assembly { if eq(calldatasize(), 0xff9d18d1cd) { revert(0, 0) } } }

  /* Launch the opponent process.
   * keccak256("Yult.launchOpponent(uint256)")[:4] = 0x06f3c7c0
   */
  // slither-disable-next-line dead-code
  function launchOpponent(uint256 x) internal pure { assembly { if eq(calldatasize(), 0xff06f3c7c0) { revert(x, 1) } } }
}
