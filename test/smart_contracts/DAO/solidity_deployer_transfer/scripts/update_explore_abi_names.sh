#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 2 ]]; then
  echo "Usage: $0 <source-json> <target-json>"
  exit 1
fi

src="$1"
dst="$2"

if [[ ! -f "$src" ]]; then
  echo "❌ $src not found"; exit 1
fi
if [[ ! -f "$dst" ]]; then
  echo "❌ $dst not found"; exit 1
fi

echo "ℹ️  Building mapping from $src …"

# build an associative array: map[prefix]=num1
declare -A map
while IFS= read -r name; do
  if [[ $name =~ ^([^_]+)_([0-9]+)_deployed$ ]]; then
    prefix=${BASH_REMATCH[1]}
    num1=${BASH_REMATCH[2]}
    map[$prefix]=$num1
  fi
done < <(
  # extract every "name": "X_N_deployed" → X_N_deployed
  grep -o '"name":[[:space:]]*"[^"]*_deployed"' "$src" \
    | awk -F'"' '{print $4}'
)

if [[ ${#map[@]} -eq 0 ]]; then
  echo "❌ No deployed-name patterns found in $src"; exit 1
fi

echo "ℹ️  Found ${#map[@]} prefixes in source. Applying to $dst …"

# make a backup
cp "$dst"{,.bak}

# for each prefix, replace any <prefix>_<anynum>_deployed → <prefix>_<num1>_deployed
for prefix in "${!map[@]}"; do
  num1=${map[$prefix]}

  # portable mktemp (works on macOS)
  tmpfile="$(mktemp "${TMPDIR:-/tmp}/deployed_map.XXXXXX")"

  awk -v pre="$prefix" -v num="$num1" '
    {
      line = $0
      # regex: pre_[0-9]+_deployed
      pat  = pre "_[0-9]+_deployed"
      repl = pre "_" num "_deployed"

      gsub(pat, repl, line)
      print line
    }
  ' "$dst" > "$tmpfile"

  mv "$tmpfile" "$dst"
done

echo "✅ Done.  Updated $(basename "$dst"), backed up at $(basename "$dst").bak"
