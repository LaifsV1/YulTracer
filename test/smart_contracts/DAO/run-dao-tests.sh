#!/usr/bin/env bash
# run-deployer-variants.sh
# For each of these directories (hard-coded):
#   - solidity_deployer
#   - solidity_deployer_safe
#   - solidity_deployer_transfer
#   - solidity_deployer_transfer_dummy
# it will:
#   - run `make run`
#   - ✅/❌ in summary:
#       * non-safe variants: ✅ if assertion violation is FOUND
#       * _safe variants:    ✅ if assertion violation is NOT found
#   - capture the last "real ..." line and show it in a final summary
#   - run `make clean`
#
# Final count shows only how many assertion violations were found
# (number of '[game semantics]' markers across all logs).
#
# Exit status is non-zero if any variant does not meet its expected outcome.

# Usage:
#   ./run-deployer-variants.sh [-v|--verbose]
#     -v / --verbose  Stream output live and keep logs in ./dao-logs-YYYYmmdd-HHMMSS

# Require bash (arrays, PIPESTATUS)
if [[ -z "${BASH_VERSION-}" ]]; then
  echo "Please run with bash: bash $0 ..." >&2
  exit 2
fi

set -uo pipefail
shopt -s nullglob

SHOW_OUTPUT=0

while [[ $# -gt 0 ]]; do
  case "$1" in
    -v|--verbose) SHOW_OUTPUT=1; shift ;;
    -h|--help)
      cat <<'EOF'
Usage: ./run-deployer-variants.sh [-v|--verbose]
Runs `make run` in each of:
  solidity_deployer, solidity_deployer_safe,
  solidity_deployer_transfer, solidity_deployer_transfer_dummy

Summary marks:
  - Non-safe variants: ✅ if assertion violation is FOUND
  - _safe variants:    ✅ if assertion violation is NOT found

Captures the last "real ..." timing line for the summary.
Final count prints only how many assertion violations were found.
Exit code is non-zero if any variant fails its expected outcome.
EOF
      exit 0 ;;
    *) echo "Unknown option: $1" >&2; exit 2 ;;
  esac
done

# Where to store logs
if (( SHOW_OUTPUT )); then
  LOG_DIR="$(pwd)/dao-logs-$(date +%Y%m%d-%H%M%S)"
  mkdir -p "$LOG_DIR"
  CLEANUP_LOGS=0
else
  LOG_DIR="$(mktemp -d -t gh-dao-logs.XXXXXX)"
  CLEANUP_LOGS=1
fi

# Tracking
declare -a DIRS=(
  "solidity_deployer"
  "solidity_deployer_safe"
  "solidity_deployer_transfer"
  "solidity_deployer_transfer_dummy"
)
declare -a NAMES=()
declare -a ASSERT_OK=()   # 1 if '[game semantics]' marker found, else 0
declare -a REAL_TIMES=()
declare -a MISSING=()     # 1 if dir missing or cd failed, else 0

start_pwd="$PWD"

for name in "${DIRS[@]}"; do
  dir="$name"
  logfile="${LOG_DIR}/${name}.log"

  if [[ ! -d "$dir" ]]; then
    echo "WARN: Directory '$dir' not found; marking as ❌." >&2
    NAMES+=("$name")
    ASSERT_OK+=(0)
    REAL_TIMES+=("<missing directory>")
    MISSING+=(1)
    continue
  fi

  cd "$dir" || {
    echo "ERR: Cannot enter '$dir'; marking as ❌." >&2
    NAMES+=("$name"); ASSERT_OK+=(0); REAL_TIMES+=("<cd failed>"); MISSING+=(1)
    continue
  }

  if (( SHOW_OUTPUT )); then
    echo "===== ${name} ====="
    # Stream and capture
    make -s run 2>&1 | tee "$logfile"
    rc=${PIPESTATUS[0]}   # not used for summary logic
  else
    # Quiet: capture only
    make -s run >"$logfile" 2>&1
    rc=$?
  fi

  # Clean regardless of outcome (quietly)
  make -s clean >/dev/null 2>&1 || true

  # Detect the marker (literal match)
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
  MISSING+=(0)

  cd "$start_pwd" || exit 1
done

# Build a TSV and pretty-print with column(1)
echo
echo "===== Summary ====="
{
  printf "Benchmark\tOK\tTime\n"
  for i in "${!NAMES[@]}"; do
    name="${NAMES[$i]}"
    found="${ASSERT_OK[$i]}"
    miss="${MISSING[$i]}"

    if [[ "$miss" -eq 1 ]]; then
      mark="❌"
    elif [[ "$name" == *_safe* ]]; then
      # SAFE variants: ✅ if NOT found
      if [[ "$found" -eq 0 ]]; then mark="✅"; else mark="❌"; fi
    else
      # Non-safe variants: ✅ if found
      if [[ "$found" -eq 1 ]]; then mark="✅"; else mark="❌"; fi
    fi

    printf "%s\t%s\t%s\n" "$name" "$mark" "${REAL_TIMES[$i]}"
  done
} | column -t -s $'\t'

# Totals
total_found=0
expected_failures=0
for i in "${!NAMES[@]}"; do
  (( total_found += ASSERT_OK[$i] ))

  # Track any variant that did NOT meet the expected outcome for exit status
  if [[ "${MISSING[$i]}" -eq 1 ]]; then
    (( expected_failures++ ))
  elif [[ "${NAMES[$i]}" == *_safe* ]]; then
    # safe expects NOT found
    if [[ "${ASSERT_OK[$i]}" -ne 0 ]]; then (( expected_failures++ )); fi
  else
    # non-safe expects found
    if [[ "${ASSERT_OK[$i]}" -ne 1 ]]; then (( expected_failures++ )); fi
  fi
done

echo
echo "Total assertion violations found: ${total_found}"

# Clean up temp logs if not verbose
if (( CLEANUP_LOGS )); then
  rm -rf "$LOG_DIR"
fi

# Exit non-zero if any expected outcome not met
exit $(( expected_failures > 0 ))
