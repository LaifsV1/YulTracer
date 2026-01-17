
#!/usr/bin/env bash
set -euo pipefail

# Hard‐coded new pragma version (include trailing semicolon)
NEW_PRAGMA='^0.8.0;'

# Extract numeric version components from NEW_PRAGMA
VER=${NEW_PRAGMA#^}     # strip leading ^
VER=${VER%;}             # strip trailing ;
IFS='.' read -r MAJOR MINOR PATCH <<< "$VER"
# Calculate minor threshold for exact-match regex (minor - 1)
if (( MINOR > 0 )); then
  MINOR_THRESH=$((MINOR - 1))
else
  MINOR_THRESH=0
fi

# Build dynamic regex patterns
# MAX_REGEX matches any '<' or '<=' constraint where the version is < target (including no patch)
MAX_REGEX="<=?${MAJOR}\\.([0-${MINOR}](\\.[0-9]+)?)"
# EQ_REGEX matches exact-version '=' constraints on versions strictly below target minor
EQ_REGEX="=[[:space:]]*${MAJOR}\\.[0-${MINOR_THRESH}]\\.[0-9]+"
# caret ^ version pinned below target minor
CARET_REGEX="\\^${MAJOR}\\.[0-${MINOR_THRESH}]\\.[0-9]+"
# only match un-commented pragma lines
GREP_PATTERN="^[[:space:]]*pragma solidity.*(${MAX_REGEX}|${EQ_REGEX}|${CARET_REGEX})[[:space:]]*;"


# Build dynamic regex patterns
# MAX_REGEX matches any '<' or '<=' constraint where the version is < target (including no patch)
# EQ_REGEX matches exact-version '=' constraints on versions strictly below target minor
# Only match non-commented pragma lines at start of line


echo "Target pragma version: $NEW_PRAGMA"
echo "Updating only pragmas requiring one of:"
echo "$MAX_REGEX"
echo "$CARET_REGEX"
echo "$EQ_REGEX"

# Usage: provide one or more directories to process
usage() {
  echo "Usage: $0 <dir1> [dir2…]"
  echo "Example: $0 v3-core v3-periphery"
  exit 1
}

if [ $# -lt 1 ]; then
  usage
fi

DIRS=( "$@" )

for DIR in "${DIRS[@]}"; do
  if [ ! -d "$DIR" ]; then
    echo "Warning: directory '$DIR' not found, skipping"
    continue
  fi
  find "$DIR" -type f -name '*.sol' -print0 | while IFS= read -r -d '' file; do
    if grep -Eq "$GREP_PATTERN" "$file"; then
      echo " → $file"
      # In-place edit with backup
      sed -E -i.bak "/${GREP_PATTERN}/ {\
            h;\
            s#(.*)#// original: \1#;\
            p;\
            g;\
            s#pragma solidity .*#pragma solidity ${NEW_PRAGMA}#;\
          }" "$file"
      rm -f "${file}.bak"
    fi
  done
done

echo "Done."

