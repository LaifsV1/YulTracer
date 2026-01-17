#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 inputfile"
  exit 1
fi

inputfile="$1"

# 1) __yult__assert → ASSERT
./scripts/run_awk_inplace.sh <(cat <<'AWK'
{
  if ($0 !~ /function[[:space:]]+fun___yult__assert_[0-9]+/)
    gsub(/fun___yult__assert_[0-9]+\(/, "ASSERT(")
  print
}
AWK
) "$inputfile"
echo "⤷ Processing __yult__assert"

# 2) __yult__wait → WAIT
./scripts/run_awk_inplace.sh <(cat <<'AWK'
{
  if ($0 !~ /function[[:space:]]+fun___yult__wait_[0-9]+/)
    gsub(/fun___yult__wait_[0-9]+\(/, "WAIT(")
  print
}
AWK
) "$inputfile"
echo "⤷ Processing __yult__wait"

# 3) __yult__print → PRINT
./scripts/run_awk_inplace.sh <(cat <<'AWK'
{
  if ($0 !~ /function[[:space:]]+fun___yult__print_[0-9]+/)
    gsub(/fun___yult__print_[0-9]+\(/, "PRINT(")
  print
}
AWK
) "$inputfile"
echo "⤷ Processing __yult__print"

# 4) __yult__printHex → PRINT_hex
./scripts/run_awk_inplace.sh <(cat <<'AWK'
{
  if ($0 !~ /function[[:space:]]+fun___yult__printHex_[0-9]+/)
    gsub(/fun___yult__printHex_[0-9]+\(/, "PRINT_hex(")
  print
}
AWK
) "$inputfile"
echo "⤷ Processing __yult__printHex"

# 5) __yult__revealUint → REVEAL_UINT
./scripts/run_awk_inplace.sh <(cat <<'AWK'
{
  if ($0 !~ /function[[:space:]]+fun___yult__revealUint_[0-9]+/)
    gsub(/fun___yult__revealUint_[0-9]+\(/, "REVEAL_UINT(")
  print
}
AWK
) "$inputfile"
echo "⤷ Processing __yult__revealUint"

# 6) __yult__revealAddress → REVEAL_ADDR
./scripts/run_awk_inplace.sh <(cat <<'AWK'
{
  if ($0 !~ /function[[:space:]]+fun___yult__revealAddress_[0-9]+/)
    gsub(/fun___yult__revealAddress_[0-9]+\(/, "REVEAL_ADDR(")
  print
}
AWK
) "$inputfile"
echo "⤷ Processing __yult__revealAddress"
