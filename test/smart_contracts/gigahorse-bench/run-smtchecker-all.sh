#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

# Prevent sleep during long runs (wall-clock time skews timeout measurements)
if [[ -z "${CAFFEINATED:-}" ]] && command -v caffeinate &>/dev/null; then
  CAFFEINATED=1 exec caffeinate -i "$0" "$@"
fi

cleanup() { trap '' INT TERM; kill 0 2>/dev/null; wait; exit 130; }
trap cleanup INT TERM

OUT_DIR="results"
TIMEOUT=3600
RERUN_TIMEOUTS=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --out)     OUT_DIR="$2";  shift 2 ;;
    --timeout) TIMEOUT="$2";  shift 2 ;;
    --rerun-timeouts) RERUN_TIMEOUTS="--rerun-timeouts"; shift ;;
    *) echo "Unknown argument: $1" >&2; exit 1 ;;
  esac
done

RESULTS_DIR="${OUT_DIR}/reentr-assert"
mkdir -p "$RESULTS_DIR"

# for showing progress messages
SCRIPT_TOTAL=4
# BMC on vulnerable benchmarks
SCRIPT_NUM=1 SCRIPT_TOTAL=$SCRIPT_TOTAL python3 run-smtchecker.py \
  --engine bmc \
  --root reentr-assert-vuln \
  --out $RESULTS_DIR/vuln-smtchecker-bmc \
  --timeout "$TIMEOUT" $RERUN_TIMEOUTS
# BMC on safe benchmarks
SCRIPT_NUM=2 SCRIPT_TOTAL=$SCRIPT_TOTAL python3 run-smtchecker.py \
  --engine bmc \
  --root reentr-assert-safe \
  --out $RESULTS_DIR/safe-smtchecker-bmc \
  --timeout "$TIMEOUT" $RERUN_TIMEOUTS
# CHC on vulnerable benchmarks
SCRIPT_NUM=3 SCRIPT_TOTAL=$SCRIPT_TOTAL python3 run-smtchecker.py \
  --engine chc \
  --root reentr-assert-vuln \
  --out $RESULTS_DIR/vuln-smtchecker-chc \
  --timeout "$TIMEOUT" $RERUN_TIMEOUTS
# CHC on safe benchmarks
SCRIPT_NUM=4 SCRIPT_TOTAL=$SCRIPT_TOTAL python3 run-smtchecker.py \
  --engine chc \
  --root reentr-assert-safe \
  --out $RESULTS_DIR/safe-smtchecker-chc \
  --timeout "$TIMEOUT" $RERUN_TIMEOUTS

# Strip absolute paths from results so outputs are machine-independent
YULTRACER_ROOT="$(cd ../../.. && pwd)"
find "${OUT_DIR}/" -type f \( -name '*.json' -o -name '*.log' \) -exec \
  perl -pi -e "s|\Q${YULTRACER_ROOT}/\E||g; s|\Q${HOME}/\E[^ '\"]*lib/[^ '\"]*python[0-9.]*/||g" {} +
