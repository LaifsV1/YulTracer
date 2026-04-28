#!/usr/bin/env bash
set -euo pipefail

RED=$'\033[0;31m'
GREEN=$'\033[0;32m'
YELLOW=$'\033[1;33m'
BLUE=$'\033[0;34m'
RESET=$'\033[0m'
ERROR="${RED}[ERROR]${RESET} "
DONE="${GREEN}[DONE]${RESET} "
WARN="${YELLOW}[WARN]${RESET} "
INFO="${BLUE}[INFO]${RESET} "
STEP="${GREEN}->${RESET} "
SUBSTEP="${GREEN}  +${RESET} "

# replace_yult_guard <file> <hexcode> <opcode> <name>
# Matches the inlined assembly guard:
#   if eq(calldatasize(), <hexcode>) { revert(<arg>, 1) }
# and replaces it with:
#   <opcode>(<arg>)
# The argument is captured from the first parameter of revert().
replace_yult_guard() {
  local file="$1" hexcode="$2" opcode="$3" name="$4"
  printf "${SUBSTEP}${name}"
  sed -i'.bak' \
    's/if eq(calldatasize(), *'"${hexcode}"') *{ *revert(\([^,]*\), *1) *}/'"${opcode}"'(\1)/g' \
    "$file" && rm "$file.bak"
}

# replace_yult_guard_noarg <file> <hexcode> <opcode> <name>
# Same as above but for functions without parameters.
# Matches revert(0, 0) and replaces with <opcode>().
replace_yult_guard_noarg() {
  local file="$1" hexcode="$2" opcode="$3" name="$4"
  printf "${SUBSTEP}${name}"
  sed -i'.bak' \
    's/if eq(calldatasize(), *'"${hexcode}"') *{ *revert(0, *0) *}/'"${opcode}"'()/g' \
    "$file" && rm "$file.bak"
}

echo "${STEP}Processing YulTracer assertions"
replace_yult_guard "$1" 0xff661be255  ASSERT  "Assert"
echo ""


# Printing functions (with argument)
echo "${STEP}Processing printing functions"
replace_yult_guard "$1" 0xffdb70adb4  PRINT          "print"
replace_yult_guard "$1" 0xff2640ab95  PRINT_signed   "printSigned"
replace_yult_guard "$1" 0xffd376890e  PRINT_HEX      "printHEX"
replace_yult_guard "$1" 0xffb4359cd6  PRINT_hex      "printHex"
replace_yult_guard "$1" 0xffc6c3aaba  PRINT_bin      "printBin"
replace_yult_guard "$1" 0xff51233fd3  PRINT_ascii    "printAscii"
replace_yult_guard "$1" 0xffa5963bbb  PRINT_object   "printObject"

# Printing functions (no argument)
replace_yult_guard_noarg "$1" 0xff1b39d683  PRINT_IDS    "printIDs"
replace_yult_guard_noarg "$1" 0xff433a7706  PRINT_names  "printNames"
replace_yult_guard_noarg "$1" 0xffde7a90e3  PRINT_sigma  "printSigma"
replace_yult_guard_noarg "$1" 0xffae96021f  PRINT_z3     "printZ3"
replace_yult_guard_noarg "$1" 0xffd91d862c  PRINT_mem    "printMem"
echo ""

echo "${STEP}Processing game-guiding functions"
replace_yult_guard "$1" 0xff2f377f38  REVEAL_UINT      "revealUint"
replace_yult_guard "$1" 0xff45ce5e79  REVEAL_ADDR      "revealAddress"
replace_yult_guard "$1" 0xff76125b94  IMPERSONATECALL  "impersonateCall"
replace_yult_guard "$1" 0xffc84589d8  WAIT             "wait"
replace_yult_guard "$1" 0xff3c257306  EXT_FUND         "extFund"
echo ""

echo "${STEP}Processing symbolic execution functions"
replace_yult_guard "$1" 0xffbd235a68  MK_SYMBOL  "mkSymbol"
echo ""

echo "${STEP}Processing internal functions"
replace_yult_guard       "$1" 0xff51457b3c  SETLINKER        "setLinker"
replace_yult_guard_noarg "$1" 0xff9d18d1cd  START_ANALYSIS   "startAnalysis"
replace_yult_guard       "$1" 0xff06f3c7c0  LAUNCH_OPPONENT  "launchOpponent"
echo ""

echo "${DONE}Yult functions processed"
