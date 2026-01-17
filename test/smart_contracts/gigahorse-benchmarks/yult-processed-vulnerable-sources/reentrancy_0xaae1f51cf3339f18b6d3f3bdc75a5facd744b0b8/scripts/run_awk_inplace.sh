#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 awk_script inputfile"
  exit 1
fi

awk_script="$1"
inputfile="$2"
tmpfile="$(mktemp)"

awk -f "$awk_script" "$inputfile" > "$tmpfile" && mv "$tmpfile" "$inputfile"
