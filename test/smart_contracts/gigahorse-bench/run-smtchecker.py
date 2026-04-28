#!/usr/bin/env python3
"""Run solc's SMTChecker on a benchmark suite."""

import argparse
import csv
import os
import re
import signal
import subprocess
import time
from datetime import datetime
from pathlib import Path



def _run(cmd, timeout=None, **kwargs):
    """Run *cmd* with a reliable wall-clock timeout.

    Uses a dedicated process group so that the entire process tree
    (including solc's SMT solver) is killed on timeout — unlike the
    external ``timeout`` command, which can leave orphaned children on
    macOS.  Returns exit-code 124 on timeout (matching GNU timeout).
    """
    proc = subprocess.Popen(
        cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
        start_new_session=True, **kwargs,
    )
    try:
        stdout, stderr = proc.communicate(timeout=timeout)
        return subprocess.CompletedProcess(cmd, proc.returncode, stdout, stderr)
    except subprocess.TimeoutExpired:
        # Kill the whole process group
        try:
            os.killpg(os.getpgid(proc.pid), signal.SIGTERM)
        except ProcessLookupError:
            pass
        try:
            stdout, stderr = proc.communicate(timeout=10)
        except subprocess.TimeoutExpired:
            try:
                os.killpg(os.getpgid(proc.pid), signal.SIGKILL)
            except ProcessLookupError:
                pass
            stdout, stderr = proc.communicate()
        return subprocess.CompletedProcess(cmd, 124, stdout, stderr)


# ---------------------------------------------------------------------------
# Engine-specific configuration
# ---------------------------------------------------------------------------

# issue_lines: maps exact output line -> short title (each occurrence = one issue)
ENGINE_DEFAULTS = {
    "bmc": {
        "targets":          "balance,assert",
        "show_proved_safe": True,
        "show_unproved":    True,
        "show_unsupported": False,
        "smt_re":           r"SMTChecker|model checker|Counterexample|Assertion violation|Insufficient funds"
                            r"|proved safe|unproved|unknown|unsupported|BMC|CHC",
        "issue_prefix": "BMC:",
    },
    "chc": {
        "targets":          "balance,assert",
        "show_proved_safe": True,
        "show_unproved":    True,
        "show_unsupported": False,
        "smt_re":           r"SMTChecker|model checker|Counterexample|Assertion violation|Insufficient funds"
                            r"|proved safe|unproved|unknown|unsupported|BMC|CHC",
        "issue_prefix": "CHC:",
    },
}

CSV_HEADER = "benchmark,main,ms,exit_code,issues_count,issue_titles"


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def fmt_timeout(s):
    m, r = divmod(s, 60)
    return f"{m}m" if r == 0 else f"{m}m{r}s"


def load_cache(timings_csv):
    cached = {}
    if os.path.exists(timings_csv):
        with open(timings_csv) as f:
            for row in csv.DictReader(f):
                cached[row["benchmark"]] = row["exit_code"]
    return cached


def remove_from_csv(timings_csv, benchmark):
    """Remove all rows for `benchmark` from the CSV (keeps header)."""
    with open(timings_csv) as f:
        lines = f.readlines()
    header = lines[0]
    kept = [l for l in lines[1:] if not l.startswith(benchmark + ",")]
    with open(timings_csv, "w") as f:
        f.write(header)
        f.writelines(kept)


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def yult_include_dir():
    """Return the YulTracer include/ directory via $YULTRACER_ROOT."""
    root = os.environ.get("YULTRACER_ROOT")
    if not root:
        raise SystemExit(
            "Error: YULTRACER_ROOT is not set. "
            "Set it to the YulTracer root, e.g.: export YULTRACER_ROOT=/path/to/YulTracer"
        )
    return Path(root) / "include"


def main():
    parser = argparse.ArgumentParser(description="Run solc SMTChecker on a benchmark suite.")
    parser.add_argument("--root", required=True,
                        help="Root directory containing benchmark sources")
    parser.add_argument("--out", required=True,
                        help="Output directory for results and timings CSV")
    parser.add_argument("--engine", required=True, choices=["bmc", "chc"],
                        help="SMTChecker engine to use")
    parser.add_argument("--targets",
                        help="--model-checker-targets value (default: balance,assert)")
    parser.add_argument("--show-proved-safe", action="store_true", default=None,
                        help="Pass --model-checker-show-proved-safe to solc")
    parser.add_argument("--show-unproved", action="store_true", default=None,
                        help="Pass --model-checker-show-unproved to solc")
    parser.add_argument("--show-unsupported", action="store_true", default=None,
                        help="Pass --model-checker-show-unsupported to solc")
    parser.add_argument("--ext-calls", default="untrusted", metavar="MODE",
                        help="--model-checker-ext-calls value (default: untrusted)")
    parser.add_argument("--invariants", default="reentrancy", metavar="LIST",
                        help="--model-checker-invariants value (default: reentrancy)")
    parser.add_argument("--file-glob", default="[A-Z]*.sol", metavar="PATTERN",
                        help="Glob pattern for .sol files within src/ dirs (default: [A-Z]*.sol)")
    parser.add_argument("--timeout", type=int, default=600, metavar="SECONDS",
                        help="Outer process timeout in seconds; also used as --model-checker-timeout (default: 600)")
    parser.add_argument("--rerun-timeouts", action="store_true", default=False,
                        help="Re-run benchmarks that previously timed out (default: skip them)")
    args = parser.parse_args()

    cfg = ENGINE_DEFAULTS[args.engine]

    ROOT         = args.root
    OUT          = args.out
    EXEC_TIMEOUT = args.timeout

    targets          = args.targets or cfg["targets"]
    show_proved_safe = args.show_proved_safe if args.show_proved_safe is not None \
                       else cfg["show_proved_safe"]
    show_unproved    = args.show_unproved if args.show_unproved is not None \
                       else cfg["show_unproved"]
    show_unsupported = args.show_unsupported if args.show_unsupported is not None \
                       else cfg["show_unsupported"]

    SCRIPT_NUM   = os.environ.get("SCRIPT_NUM", "?")
    SCRIPT_TOTAL = os.environ.get("SCRIPT_TOTAL", "?")

    print(f"\n{'='*60}")
    print(f"  *** SOLC SMTCHECKER ({args.engine.upper()}) *** — running on {ROOT}")
    print(f"{'='*60}\n")
    os.makedirs(OUT, exist_ok=True)

    TIMINGS_CSV = os.path.join(OUT, "timings.csv")
    if not os.path.exists(TIMINGS_CSV):
        with open(TIMINGS_CSV, "w") as f:
            f.write(CSV_HEADER + "\n")

    cached = load_cache(TIMINGS_CSV)

    sols = sorted(Path(ROOT).rglob(f"*/src/{args.file_glob}"))

    # Keep only benchmarks with exactly one matching .sol file
    by_benchmark = {}
    for s in sols:
        by_benchmark.setdefault(s.parent.parent.name, []).append(s)
    sols = []
    for benchmark, files in sorted(by_benchmark.items()):
        if len(files) == 1:
            sols.append(files[0])
        else:
            print(f"[skipped: {benchmark} has {len(files)} matching .sol files, expected 1]")

    total = len(sols)
    smt_re = re.compile(cfg["smt_re"], re.IGNORECASE)

    include_dir = str(yult_include_dir())

    # Build the solc sub-command (filename appended per benchmark)
    solc_cmd = ["solc", "--no-color",
                "--base-path", ".",
                "--include-path", ".",
                "--include-path", include_dir,
                "--allow-paths", f".,{include_dir}",
                "--model-checker-engine", args.engine,
                "--model-checker-targets", targets,
                "--model-checker-timeout", str(EXEC_TIMEOUT * 1000),
                "--model-checker-ext-calls", args.ext_calls,
                "--model-checker-invariants", args.invariants]
    if show_proved_safe:
        solc_cmd.append("--model-checker-show-proved-safe")
    if show_unproved:
        solc_cmd.append("--model-checker-show-unproved")
    if show_unsupported:
        solc_cmd.append("--model-checker-show-unsupported")

    for i, sol in enumerate(sols, 1):
        benchmark  = sol.parent.parent.name
        mainbase = sol.name

        print(f"==> script {SCRIPT_NUM}/{SCRIPT_TOTAL}; benchmark {i}/{total}"
              f" [timeout {fmt_timeout(EXEC_TIMEOUT)}]: {benchmark}/{mainbase}")

        if benchmark in cached:
            if cached[benchmark] != "124" or not args.rerun_timeouts:
                print(f"    [skipped: cached (exit {cached[benchmark]})]")
                continue

        out_dir  = Path(OUT) / benchmark
        out_dir.mkdir(parents=True, exist_ok=True)
        out_full = out_dir / f"{mainbase}.full.log"
        out_smt  = out_dir / f"{mainbase}.smt.log"

        t0 = time.time()
        start_msg = f"[started at {datetime.fromtimestamp(t0).strftime('%Y-%m-%d %H:%M:%S')}]"
        print(f"    {start_msg}")
        result = _run(
            solc_cmd + [mainbase],
            timeout=EXEC_TIMEOUT + 20,
            cwd=sol.parent,
        )
        t1 = time.time()
        elapsed_ms = int((t1 - t0) * 1000)

        outcome = "timeout" if result.returncode == 124 else "completed"
        end_msg = f"[{outcome} at {datetime.fromtimestamp(t1).strftime('%Y-%m-%d %H:%M:%S')}, {elapsed_ms}ms]"
        print(f"    {end_msg}")

        # solc writes diagnostics to stderr; stdout may carry other output
        combined = result.stderr + result.stdout
        out_full.write_bytes(
            f"{start_msg}\n".encode() + combined + f"\n{end_msg}\n".encode()
        )

        # Filter SMT-relevant lines for the .smt.log
        text = combined.decode(errors="replace")
        smt_lines = [line for line in text.splitlines() if smt_re.search(line)]
        out_smt.write_text("\n".join(smt_lines) + ("\n" if smt_lines else ""))

        # Extract issues: for each line containing the engine prefix, take the text after it
        prefix = cfg["issue_prefix"]
        issues = []
        for line in text.splitlines():
            idx = line.find(prefix)
            if idx != -1:
                issues.append(line[idx + len(prefix):].strip().rstrip("."))
        unique_titles = ";".join(sorted(set(issues)))

        if benchmark in cached:
            remove_from_csv(TIMINGS_CSV, benchmark)
        with open(TIMINGS_CSV, "a") as f:
            f.write(f"{benchmark},{mainbase},{elapsed_ms},{result.returncode},"
                    f"{len(issues)},{unique_titles}\n")

        cached[benchmark] = str(result.returncode)


if __name__ == "__main__":
    main()
