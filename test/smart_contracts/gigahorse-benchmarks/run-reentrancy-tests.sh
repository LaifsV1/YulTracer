#!/usr/bin/env bash
# run-reentrancy-tests.sh
# For each immediate subdirectory:
#   - run `make run`
#   - ✅ if output contains "[EVM ASSERTION ERROR]", else ❌
#   - capture the last "real ..." line and show it in a final summary
#   - run `make clean`
#
# Usage:
#   ./run-reentrancy-tests.sh [-v|--verbose] [PARENT_DIR]
#     -v / --verbose  Stream output live and keep logs in ./reentrancy-logs-YYYYmmdd-HHMMSS
#     PARENT_DIR      Defaults to "yult-processed-vulnerable-sources"

# Require bash (arrays, PIPESTATUS)
if [[ -z "${BASH_VERSION-}" ]]; then
  echo "Please run with bash: bash $0 ..." >&2
  exit 2
fi

set -uo pipefail
shopt -s nullglob

SHOW_OUTPUT=0
PARENT_DIR="yult-processed-vulnerable-sources"

while [[ $# -gt 0 ]]; do
  case "$1" in
    -v|--verbose) SHOW_OUTPUT=1; shift ;;
    -h|--help)
      cat <<'EOF'
Usage: ./run-reentrancy-tests.sh [-v|--verbose] [PARENT_DIR]
Runs `make run` in each immediate subdirectory.
✅ if output contains "[EVM ASSERTION ERROR]"; ❌ otherwise.
Captures the last "real ..." timing line for the summary.
EOF
      exit 0 ;;
    *) PARENT_DIR="$1"; shift ;;
  esac
done

# Where to store logs
if (( SHOW_OUTPUT )); then
  LOG_DIR="$(pwd)/reentrancy-logs-$(date +%Y%m%d-%H%M%S)"
  mkdir -p "$LOG_DIR"
  CLEANUP_LOGS=0
else
  LOG_DIR="$(mktemp -d -t gh-reentrancy-logs.XXXXXX)"
  CLEANUP_LOGS=1
fi

# Tracking
declare -a NAMES=()
declare -a ASSERT_OK=()   # 1 if [EVM ASSERTION ERROR] found, else 0
declare -a REAL_TIMES=()

start_pwd="$PWD"

for dir in "$PARENT_DIR"/*/; do
  [[ -d "$dir" ]] || continue
  cd "$dir" || continue
  name="$(basename "$dir")"
  logfile="${LOG_DIR}/${name}.log"

  if (( SHOW_OUTPUT )); then
    echo "===== ${name} ====="
    # Stream and capture
    make -s run 2>&1 | tee "$logfile"
    rc=${PIPESTATUS[0]}   # not used for summary logic, but kept if you need it
  else
    # Quiet: capture only
    make -s run >"$logfile" 2>&1
    rc=$?
  fi

  # Clean regardless of outcome (quietly)
  make -s clean >/dev/null 2>&1 || true

  # Detect the assertion error (literal match)
  if grep -Fq '[game semantics]' "$logfile"; then
    ASSERT_OK+=(1)
  else
    ASSERT_OK+=(0)
  fi

  # Grab the LAST "real ..." line (handles tab or spaces)
  real_line="$(grep -E '^real[[:space:]]' "$logfile" | tail -n 1)"
  if [[ -z "$real_line" ]]; then
    real_line="<no real time found>"
  fi

  NAMES+=("$name")
  REAL_TIMES+=("$real_line")

  cd "$start_pwd" || exit 1
done

# Build a TSV and pretty-print with column(1)
echo
echo "===== Summary ====="
{
  printf "Benchmark\tError\tTime\n"
  for i in "${!NAMES[@]}"; do
    mark=$([[ ${ASSERT_OK[$i]} -eq 1 ]] && echo "✅" || echo "❌")
    printf "%s\t%s\t%s\n" "${NAMES[$i]}" "$mark" "${REAL_TIMES[$i]}"
  done
} | column -t -s $'\t'

# Totals
ok=0; missing=0
for v in "${ASSERT_OK[@]}"; do
  if [[ $v -eq 1 ]]; then ((ok++)); else ((missing++)); fi
done
echo
echo "Assertion violation found (✅): $ok"
echo "Assertion violation not found (❌): $missing"

exit $(( missing > 0 ))
