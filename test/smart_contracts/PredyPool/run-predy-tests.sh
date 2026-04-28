#!/usr/bin/env bash
# run-predy-tests.sh
# Runs three variants of the PredyPool benchmark in the current directory:
#   - normal:        game exploration on the vulnerable version  (expect violation FOUND)
#   - fixed:         game exploration on the patched version     (expect violation NOT found)
#   - deterministic: deterministic attack replay                 (expect violation FOUND)
#
# Each variant: make <variant>, then make run (with timeout).
# Prints per-variant stats inline and a final summary table.
# Exit status is non-zero if any variant does not meet its expected outcome.

# Require bash (arrays, PIPESTATUS)
if [[ -z "${BASH_VERSION-}" ]]; then
  echo "Please run with bash: bash $0 ..." >&2
  exit 2
fi

set -uo pipefail
shopt -s nullglob

SHOW_OUTPUT=0
TIMEOUT_MIN=60

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

while [[ $# -gt 0 ]]; do
  case "$1" in
    -v|--verbose) SHOW_OUTPUT=1; shift ;;
    -t|--timeout)
      [[ -n "${2-}" ]] || { echo "Error: --timeout requires a value in minutes" >&2; exit 2; }
      TIMEOUT_MIN="$2"; shift 2 ;;
    -h|--help)
      cat <<'EOF'
Usage: ./run-predy-tests.sh [-v|--verbose] [-t|--timeout MINUTES]
Runs make <variant> + make run for each of: normal, fixed, deterministic

Options:
  -v / --verbose          Stream output live and keep logs
  -t / --timeout MINUTES  Per-variant timeout for make run in minutes (default: 60)

Summary marks:
  - normal, deterministic: [OK] if assertion violation is FOUND
  - fixed:                 [OK] if assertion violation is NOT found

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

# Must be run from the PredyPool directory (where the Makefile lives)
if [[ ! -f Makefile ]]; then
  echo "Error: no Makefile found in $(pwd). Run this script from the PredyPool directory." >&2
  exit 1
fi

# Where to store logs
LOG_DIR="$(pwd)/predy-logs-$(date +%Y%m%d-%H%M%S)"
mkdir -p "$LOG_DIR"

# Variants: build-target / is-safe (1=safe/fixed, 0=non-safe)
declare -a VARIANTS=("normal" "deterministic" "fixed")
declare -a IS_SAFE=(0 0 1)

# Tracking
declare -a NAMES=()
declare -a ASSERT_OK=()   # 1 if '[game semantics]' marker found, else 0
declare -a REAL_TIMES=()
declare -a MISSING=()     # 1 if build/run could not be attempted, else 0
declare -a TRACE_OPP=()   # opponent move count from error trace (non-safe only)
declare -a TRACE_TOT=()   # total move count from error trace (non-safe only)

timestamp() { date '+%Y-%m-%d %H:%M:%S'; }

for i in "${!VARIANTS[@]}"; do
  name="${VARIANTS[$i]}"
  safe="${IS_SAFE[$i]}"
  logfile="${LOG_DIR}/${name}.log"

  banner_compile="$(printf '=%.0s' {1..60})\n  BUILDING: ${name}\n$(printf '=%.0s' {1..60})"
  banner_run="$(printf '=%.0s' {1..60})\n  RUNNING: ${name}\n$(printf '=%.0s' {1..60})"

  echo "===== ${name} =====" | tee "$logfile"

  if (( SHOW_OUTPUT )); then
      # Build (no timeout)
      printf '%b\n' "$banner_compile" | tee -a "$logfile"
      make -s "$name" 2>&1 | tee -a "$logfile"
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
      make -s "$name" >>"$logfile" 2>&1
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

  # Compute mark and trace stats
  found="${ASSERT_OK[-1]}"
  if [[ "$safe" -eq 1 ]]; then
      if [[ "$found" -eq 0 ]]; then inline_mark="[OK]"; else inline_mark="[FAIL]"; fi
      TRACE_OPP+=("-")
      TRACE_TOT+=("-")
  else
      if [[ "$found" -eq 1 ]]; then inline_mark="[OK]"; else inline_mark="[FAIL]"; fi
      trace_opp="$(awk '/\[printing trace\]:/{flag=1; next} /ERROR/{flag=0} flag' "$logfile" \
                   | grep -E 'o-call|o-ret|o-wait' | grep -v 'po-' | wc -l | tr -d ' ')"
      trace_tot="$(awk '/\[printing trace\]:/{flag=1; next} /ERROR/{flag=0} flag' "$logfile" \
                   | wc -l | tr -d ' ')"
      TRACE_OPP+=("$trace_opp")
      TRACE_TOT+=("$trace_tot")
  fi

  echo "  => ${inline_mark}  ${real_line}"
  if [[ "$safe" -eq 0 ]]; then
      echo "  Error Trace found:"
      echo "    Opponent moves (o-call/o-ret/o-wait): ${trace_opp}"
      echo "    Total moves: ${trace_tot}"
  fi

  NAMES+=("$name")
  REAL_TIMES+=("$real_line")
  MISSING+=(0)
done

# Build a TSV and pretty-print with column(1)
echo
echo "===== Summary ====="
{
  printf "Variant\tStatus\tTime\tTrace (opponent/total)\n"
  for i in "${!NAMES[@]}"; do
    name="${NAMES[$i]}"
    found="${ASSERT_OK[$i]}"
    safe="${IS_SAFE[$i]}"

    if [[ "${MISSING[$i]}" -eq 1 ]]; then
      mark="[FAIL]"
    elif [[ "$safe" -eq 1 ]]; then
      if [[ "$found" -eq 0 ]]; then mark="[OK]"; else mark="[FAIL]"; fi
    else
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

  if [[ "${MISSING[$i]}" -eq 1 ]]; then
    (( expected_failures++ ))
  elif [[ "${IS_SAFE[$i]}" -eq 1 ]]; then
    if [[ "${ASSERT_OK[$i]}" -ne 0 ]]; then (( expected_failures++ )); fi
  else
    if [[ "${ASSERT_OK[$i]}" -ne 1 ]]; then (( expected_failures++ )); fi
  fi
done

echo
echo "Total assertion violations found: ${total_found}"
echo "Logs saved in: ${LOG_DIR}"

# Exit non-zero if any expected outcome not met
exit $(( expected_failures > 0 ))
