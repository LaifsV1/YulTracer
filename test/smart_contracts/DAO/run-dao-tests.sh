#!/usr/bin/env bash
# run-deployer-variants.sh
# For each of these directories (hard-coded):
#   - splitDAO
#   - safe
#   - transfer
# it will:
#   - run `make run`
#   - [OK]/[FAIL] in summary:
#       * non-safe variants: [OK] if assertion violation is FOUND
#       * _safe variants:    [OK] if assertion violation is NOT found
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
TIMEOUT_MIN=60

while [[ $# -gt 0 ]]; do
  case "$1" in
    -v|--verbose) SHOW_OUTPUT=1; shift ;;
    -t|--timeout)
      [[ -n "${2-}" ]] || { echo "Error: --timeout requires a value in minutes" >&2; exit 2; }
      TIMEOUT_MIN="$2"; shift 2 ;;
    -h|--help)
      cat <<'EOF'
Usage: ./run-deployer-variants.sh [-v|--verbose] [-t|--timeout MINUTES]
Runs `make run` in each of:
  splitDAO, safe, transfer

Options:
  -v / --verbose          Stream output live and keep logs
  -t / --timeout MINUTES  Per-benchmark timeout in minutes (default: 30)

Summary marks:
  - Non-safe variants: [OK] if assertion violation is FOUND
  - safe variants:     [OK] if assertion violation is NOT found

Captures the last "real ..." timing line for the summary.
Final count prints only how many assertion violations were found.
Exit code is non-zero if any variant fails its expected outcome.
EOF
      exit 0 ;;
    *) echo "Unknown option: $1" >&2; exit 2 ;;
  esac
done

# Check required environment
if [[ -z "${YULTRACER_ROOT-}" ]]; then
  echo "Error: YULTRACER_ROOT is not set. Export it first, e.g.:" >&2
  echo "  export YULTRACER_ROOT=/path/to/YulTracer" >&2
  exit 1
fi

# Where to store logs
LOG_DIR="$(pwd)/dao-logs-$(date +%Y%m%d-%H%M%S)"
mkdir -p "$LOG_DIR"

# Tracking
declare -a DIRS=(
  "splitDAO"
  "transfer"
  "safe"
)
declare -a NAMES=()
declare -a ASSERT_OK=()   # 1 if '[game semantics]' marker found, else 0
declare -a REAL_TIMES=()
declare -a MISSING=()     # 1 if dir missing or cd failed, else 0
declare -a TRACE_OPP=()   # opponent move count from error trace (non-safe only)
declare -a TRACE_TOT=()   # total move count from error trace (non-safe only)

# Run a command with a reliable process-group timeout (in seconds).
# Uses Python to put the child in its own session and kill the whole
# group — unlike GNU timeout, which can leave orphans on macOS.
# Exit code 124 on timeout (matching GNU timeout convention).
pg_timeout() {
    local secs="$1"; shift
    python3 -c "
import os, signal, subprocess, sys
proc = subprocess.Popen(sys.argv[2:], start_new_session=True)
try:
    proc.wait(timeout=int(sys.argv[1]))
    sys.exit(proc.returncode)
except subprocess.TimeoutExpired:
    try: os.killpg(os.getpgid(proc.pid), signal.SIGTERM)
    except ProcessLookupError: pass
    try: proc.wait(timeout=10)
    except subprocess.TimeoutExpired:
        try: os.killpg(os.getpgid(proc.pid), signal.SIGKILL)
        except ProcessLookupError: pass
        proc.wait()
    sys.exit(124)
" "$secs" "$@"
}

timestamp() { date '+%Y-%m-%d %H:%M:%S'; }

start_pwd="$PWD"

for name in "${DIRS[@]}"; do
  dir="$name"
  logfile="${LOG_DIR}/${name}.log"

  if [[ ! -d "$dir" ]]; then
    echo "WARN: Directory '$dir' not found; marking as [FAIL]." >&2
    NAMES+=("$name")
    ASSERT_OK+=(0)
    REAL_TIMES+=("<missing directory>")
    MISSING+=(1)
    TRACE_OPP+=("-"); TRACE_TOT+=("-")
    continue
  fi

  cd "$dir" || {
    echo "ERR: Cannot enter '$dir'; marking as [FAIL]." >&2
    NAMES+=("$name"); ASSERT_OK+=(0); REAL_TIMES+=("<cd failed>"); MISSING+=(1)
    TRACE_OPP+=("-"); TRACE_TOT+=("-")
    continue
  }

  banner_compile="$(printf '=%.0s' {1..60})\n  COMPILING: ${name}\n$(printf '=%.0s' {1..60})"
  banner_run="$(printf '=%.0s' {1..60})\n  RUNNING: ${name}\n$(printf '=%.0s' {1..60})"

  echo "===== ${name} =====" | tee "$logfile"
  if (( SHOW_OUTPUT )); then

      # Build (no timeout)
      printf '%b\n' "$banner_compile" | tee -a "$logfile"
      make -s build 2>&1 | tee -a "$logfile"
      if [[ ${PIPESTATUS[0]} -ne 0 ]]; then
          rc=1
      else
          # Run (with timeout)
          printf '%b\n' "$banner_run" | tee -a "$logfile"
          start_ts="$(timestamp)"
          echo "    [started at $start_ts]" | tee -a "$logfile"
          pg_timeout $(( TIMEOUT_MIN * 60 + 20 )) make -s run 2>&1 | tee -a "$logfile"
          rc=${PIPESTATUS[0]}
          end_ts="$(timestamp)"
          if [[ $rc -eq 124 ]]; then outcome="timeout"; else outcome="completed"; fi
          echo "    [$outcome at $end_ts]" | tee -a "$logfile"
      fi
  else

      # Build (no timeout)
      echo "  [compiling]"
      printf '%b\n' "$banner_compile" >>"$logfile"
      make -s build >>"$logfile" 2>&1
      if [[ $? -ne 0 ]]; then
          rc=1
      else
          # Run (with timeout)
          start_ts="$(timestamp)"
          echo "    [started at $start_ts]"
          echo "[started at $start_ts]" >>"$logfile"
          printf '%b\n' "$banner_run" >>"$logfile"
          pg_timeout $(( TIMEOUT_MIN * 60 + 20 )) make -s run >>"$logfile" 2>&1
          rc=$?
          end_ts="$(timestamp)"
          if [[ $rc -eq 124 ]]; then outcome="timeout"; else outcome="completed"; fi
          echo "    [$outcome at $end_ts]"
          echo "[$outcome at $end_ts]" >>"$logfile"
      fi
  fi
  # Clean regardless of outcome (quietly)
  make -s clean >/dev/null 2>&1 || true

  # Detect the marker (literal match)
  if grep -Fq '[game semantics]' "$logfile"; then
      ASSERT_OK+=(1)
  else
      ASSERT_OK+=(0)
  fi

  # Grab timing: report timeout if rc=124, otherwise use the "real ..." line
  if [[ $rc -eq 124 ]]; then
      real_line="timeout at ${TIMEOUT_MIN} minutes"
  else
      real_line="$(grep -E '^real[[:space:]]' "$logfile" | tail -n 1)"
      if [[ -z "$real_line" ]]; then
          real_line="<no real time found>"
      fi
  fi

  # Compute mark for inline output
  found="${ASSERT_OK[-1]}"
  if [[ "$name" == *safe* ]]; then
    if [[ "$found" -eq 0 ]]; then inline_mark="[OK]"; else inline_mark="[FAIL]"; fi
    TRACE_OPP+=("-")
    TRACE_TOT+=("-")
  else
    if [[ "$found" -eq 1 ]]; then inline_mark="[OK]"; else inline_mark="[FAIL]"; fi
    # Extract trace move counts from the log
    trace_opp="$(awk '/\[printing trace\]:/{flag=1; next} /ERROR/{flag=0} flag' "$logfile" \
                 | grep -E 'o-call|o-ret|o-wait' | grep -v 'po-' | wc -l | tr -d ' ')"
    trace_tot="$(awk '/\[printing trace\]:/{flag=1; next} /ERROR/{flag=0} flag' "$logfile" \
                 | wc -l | tr -d ' ')"
    TRACE_OPP+=("$trace_opp")
    TRACE_TOT+=("$trace_tot")
  fi
  echo "  => ${inline_mark}  ${real_line}"
  if [[ "$name" != *safe* ]]; then
    echo "  Error Trace found:"
    echo "    Opponent moves (o-call/o-ret/o-wait): ${trace_opp}"
    echo "    Total moves: ${trace_tot}"
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
  printf "Benchmark\tStatus\tTime\tTrace (opponent/total)\n"
  for i in "${!NAMES[@]}"; do
    name="${NAMES[$i]}"
    found="${ASSERT_OK[$i]}"
    miss="${MISSING[$i]}"

    if [[ "$miss" -eq 1 ]]; then
      mark="[FAIL]"
    elif [[ "$name" == *safe* ]]; then
      # SAFE variants: [OK] if NOT found
      if [[ "$found" -eq 0 ]]; then mark="[OK]"; else mark="[FAIL]"; fi
    else
      # Non-safe variants: [OK] if found
      if [[ "$found" -eq 1 ]]; then mark="[OK]"; else mark="[FAIL]"; fi
    fi

    trace="${TRACE_OPP[$i]}/${TRACE_TOT[$i]}"
    printf "%s\t%s\t%s\t%s\n" "$name" "$mark" "${REAL_TIMES[$i]}" "$trace"
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
  elif [[ "${NAMES[$i]}" == *safe* ]]; then
    # safe expects NOT found
    if [[ "${ASSERT_OK[$i]}" -ne 0 ]]; then (( expected_failures++ )); fi
  else
    # non-safe expects found
    if [[ "${ASSERT_OK[$i]}" -ne 1 ]]; then (( expected_failures++ )); fi
  fi
done

echo
echo "Total assertion violations found: ${total_found}"
echo "Logs saved in: ${LOG_DIR}"

# Exit non-zero if any expected outcome not met
exit $(( expected_failures > 0 ))
