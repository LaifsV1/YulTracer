#!/usr/bin/env bash
set -euo pipefail

# Adds our own assertions by replacing the dummy function `__yult__assert` call with `ASSERT`

sed -i'.bak' '/function[[:space:]]\{1,\}fun___yult__assert_[0-9]\{1,\}(/! s/fun___yult__assert_[0-9]\{1,\}(/ASSERT(/g' "$1" && rm "$1.bak"
echo "⤷ Processing __yult__assert"

sed -i'.bak' '/function[[:space:]]\{1,\}fun___yult__wait_[0-9]\{1,\}(/! s/fun___yult__wait_[0-9]\{1,\}(/WAIT(/g' "$1" && rm "$1.bak"
echo "⤷ Processing __yult__wait"

sed -i'.bak' '/function[[:space:]]\{1,\}fun___yult__print_[0-9]\{1,\}(/! s/fun___yult__print_[0-9]\{1,\}(/PRINT(/g' "$1" && rm "$1.bak"
echo "⤷ Processing __yult__print"

sed -i'.bak' '/function[[:space:]]\{1,\}fun___yult__printHex_[0-9]\{1,\}(/! s/fun___yult__printHex_[0-9]\{1,\}(/PRINT_hex(/g' "$1" && rm "$1.bak"
echo "⤷ Processing __yult__print_hex"
