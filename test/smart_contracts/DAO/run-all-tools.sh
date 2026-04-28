#!/usr/bin/env bash
# Run gigahorse-bench tools on the splitDAO_assertion (vuln) and safe DAO variants.

set -euo pipefail
cd "$(dirname "$0")"

export YULTRACER_ROOT="${YULTRACER_ROOT:-$(cd ../../.. && pwd)}"
INCLUDE_DIR="$YULTRACER_ROOT/include"
HERE="$(pwd)"

usage() {
  cat <<EOF
Usage: $(basename "$0") [--timeout N] <tool> [<tool> ...]

Tools:
  --mythril      Run Mythril
  --chc          Run SMTChecker (CHC engine)
  --bmc          Run SMTChecker (BMC engine)
  --slither      Run Slither
  --yultracer    Run YulTracer
  --all          Run all tools

Options:
  --timeout N    Per-tool timeout in seconds (default: 1800)
  -h, --help     Show this help message

Results are written to results/<variant>-<tool>/.
Variants: vuln (splitDAO_assertion/), safe (safe/).
EOF
}

if [[ $# -eq 0 ]]; then
  usage; exit 0
fi

# Prevent sleep during long runs (wall-clock time skews timeout measurements)
if [[ -z "${CAFFEINATED:-}" ]] && command -v caffeinate &>/dev/null; then
  CAFFEINATED=1 exec caffeinate -i "$0" "$@"
fi

cleanup() { trap '' INT TERM; kill 0 2>/dev/null; wait; exit 130; }
trap cleanup INT TERM

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

# ---------------------------------------------------------------------------
# Argument parsing
# ---------------------------------------------------------------------------
TIMEOUT=1800
RUN_MYTHRIL=0; RUN_CHC=0; RUN_BMC=0; RUN_SLITHER=0; RUN_YULTRACER=0

while [[ $# -gt 0 ]]; do
  case "$1" in
    -h|--help)   usage; exit 0 ;;
    --timeout)   TIMEOUT="$2"; shift 2 ;;
    --all)       RUN_MYTHRIL=1; RUN_CHC=1; RUN_BMC=1; RUN_SLITHER=1; RUN_YULTRACER=1; shift ;;
    --mythril)   RUN_MYTHRIL=1;   shift ;;
    --chc)       RUN_CHC=1;       shift ;;
    --bmc)       RUN_BMC=1;       shift ;;
    --slither)   RUN_SLITHER=1;   shift ;;
    --yultracer) RUN_YULTRACER=1; shift ;;
    *) echo "Unknown option: $1" >&2; usage >&2; exit 1 ;;
  esac
done

if [[ $((RUN_MYTHRIL + RUN_CHC + RUN_BMC + RUN_SLITHER + RUN_YULTRACER)) -eq 0 ]]; then
  echo "Error: no tool selected." >&2; usage >&2; exit 1
fi

# Variants: "label:directory" pairs
VARIANTS=("vuln:splitDAO_assertion" "safe:safe")

MAIN_SOL="DAO.sol"
OUT="$HERE/results"
mkdir -p "$OUT"

# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------
banner() {
  echo ""
  echo "============================================================"
  echo "  $*"
  echo "============================================================"
}

timestamp() { date '+%Y-%m-%d %H:%M:%S'; }

make_build_dir() {
  local dir="$1"
  rm -rf "$dir/build"
  cp -r "$dir/src/" "$dir/build/"
  cp "$INCLUDE_DIR/YulTracerLib.sol" "$dir/build/" 2>/dev/null || true
}

# ---------------------------------------------------------------------------
# Mythril
# ---------------------------------------------------------------------------
if [[ $RUN_MYTHRIL -eq 1 ]]; then
  for variant in "${VARIANTS[@]}"; do
    label="${variant%%:*}"; dir="${variant##*:}"
    banner "*** MYTHRIL *** ($label)"
    out="$OUT/$label-mythril"
    mkdir -p "$out"
    make_build_dir "$dir"
    start_ts="$(timestamp)"
    echo "    [started at $start_ts]"
    (
      cd "$dir/build"
      echo "[started at $start_ts]" > "$out/${MAIN_SOL}.full.log"
      pg_timeout $((TIMEOUT + 20)) \
        myth analyze "$MAIN_SOL" \
          -m UnexpectedEther,UserAssertions,Exceptions,StateChangeAfterCall \
          -o json --execution-timeout "$TIMEOUT" \
        > "$out/${MAIN_SOL}.json" 2>> "$out/${MAIN_SOL}.full.log"
    )
    rc=$?
    end_ts="$(timestamp)"
    if [[ $rc -eq 124 ]]; then outcome="timeout"; else outcome="completed"; fi
    echo "    [$outcome at $end_ts]"
    echo "[$outcome at $end_ts]" >> "$out/${MAIN_SOL}.full.log"
    rm -rf "$dir/build"
  done
fi

# ---------------------------------------------------------------------------
# SMTChecker CHC
# ---------------------------------------------------------------------------
if [[ $RUN_CHC -eq 1 ]]; then
  for variant in "${VARIANTS[@]}"; do
    label="${variant%%:*}"; dir="${variant##*:}"
    banner "*** SOLC SMTCHECKER (CHC) *** ($label)"
    out="$OUT/$label-smtchecker-chc"
    mkdir -p "$out"
    start_ts="$(timestamp)"
    echo "    [started at $start_ts]"
    (
      cd "$dir/src"
      echo "[started at $start_ts]" > "$out/${MAIN_SOL}.full.log"
      pg_timeout $((TIMEOUT + 20)) \
        solc --no-color \
          --base-path . \
          --include-path . \
          --include-path "$INCLUDE_DIR" \
          --allow-paths ".,${INCLUDE_DIR}" \
          --model-checker-engine chc \
          --model-checker-targets balance,assert \
          --model-checker-timeout $((TIMEOUT * 1000)) \
          --model-checker-ext-calls untrusted \
          --model-checker-invariants reentrancy \
          --model-checker-show-proved-safe \
          --model-checker-show-unproved \
          "$MAIN_SOL" \
        >> "$out/${MAIN_SOL}.full.log" 2>&1
    )
    rc=$?
    end_ts="$(timestamp)"
    if [[ $rc -eq 124 ]]; then outcome="timeout"; else outcome="completed"; fi
    echo "    [$outcome at $end_ts]"
    echo "[$outcome at $end_ts]" >> "$out/${MAIN_SOL}.full.log"
  done
fi

# ---------------------------------------------------------------------------
# SMTChecker BMC
# ---------------------------------------------------------------------------
if [[ $RUN_BMC -eq 1 ]]; then
  for variant in "${VARIANTS[@]}"; do
    label="${variant%%:*}"; dir="${variant##*:}"
    banner "*** SOLC SMTCHECKER (BMC) *** ($label)"
    out="$OUT/$label-smtchecker-bmc"
    mkdir -p "$out"
    start_ts="$(timestamp)"
    echo "    [started at $start_ts]"
    (
      cd "$dir/src"
      echo "[started at $start_ts]" > "$out/${MAIN_SOL}.full.log"
      pg_timeout $((TIMEOUT + 20)) \
        solc --no-color \
          --base-path . \
          --include-path . \
          --include-path "$INCLUDE_DIR" \
          --allow-paths ".,${INCLUDE_DIR}" \
          --model-checker-engine bmc \
          --model-checker-targets balance,assert \
          --model-checker-timeout $((TIMEOUT * 1000)) \
          --model-checker-ext-calls untrusted \
          --model-checker-invariants reentrancy \
          --model-checker-show-proved-safe \
          --model-checker-show-unproved \
          "$MAIN_SOL" \
        >> "$out/${MAIN_SOL}.full.log" 2>&1
    )
    rc=$?
    end_ts="$(timestamp)"
    if [[ $rc -eq 124 ]]; then outcome="timeout"; else outcome="completed"; fi
    echo "    [$outcome at $end_ts]"
    echo "[$outcome at $end_ts]" >> "$out/${MAIN_SOL}.full.log"
  done
fi

# ---------------------------------------------------------------------------
# Slither
# ---------------------------------------------------------------------------
if [[ $RUN_SLITHER -eq 1 ]]; then
  for variant in "${VARIANTS[@]}"; do
    label="${variant%%:*}"; dir="${variant##*:}"
    banner "*** SLITHER *** ($label)"
    out="$OUT/$label-slither"
    mkdir -p "$out"
    make_build_dir "$dir"
    start_ts="$(timestamp)"
    echo "    [started at $start_ts]"
    (
      cd "$dir/build"
      echo "[started at $start_ts]" > "$out/${MAIN_SOL}.full.log"
      pg_timeout $((TIMEOUT + 20)) \
        slither "$MAIN_SOL" \
          --detect reentrancy-eth,reentrancy-no-eth,reentrancy-balance \
          --json "$out/${MAIN_SOL}.json" \
          --no-fail-pedantic \
        >> "$out/${MAIN_SOL}.full.log" 2>&1
    )
    rc=$?
    end_ts="$(timestamp)"
    if [[ $rc -eq 124 ]]; then outcome="timeout"; else outcome="completed"; fi
    echo "    [$outcome at $end_ts]"
    echo "[$outcome at $end_ts]" >> "$out/${MAIN_SOL}.full.log"
    rm -rf "$dir/build"
  done
fi

# ---------------------------------------------------------------------------
# YulTracer
# ---------------------------------------------------------------------------
if [[ $RUN_YULTRACER -eq 1 ]]; then
  for variant in "${VARIANTS[@]}"; do
    label="${variant%%:*}"; dir="${variant##*:}"
    banner "*** YULTRACER *** ($label)"
    out="$OUT/$label-yultracer"
    mkdir -p "$out"
    make -s -C "$dir"
    start_ts="$(timestamp)"
    echo "    [started at $start_ts]"
    echo "[started at $start_ts]" > "$out/run.full.log"
    pg_timeout $((TIMEOUT + 20)) \
      make -s -C "$dir" run \
      >> "$out/run.full.log" 2>&1
    rc=$?
    end_ts="$(timestamp)"
    if [[ $rc -eq 124 ]]; then outcome="timeout"; else outcome="completed"; fi
    echo "    [$outcome at $end_ts]"
    echo "[$outcome at $end_ts]" >> "$out/run.full.log"
    make -s -C "$dir" clean
  done
fi

echo ""
echo "============================================================"
echo "  Done. Results in results/"
echo "============================================================"
