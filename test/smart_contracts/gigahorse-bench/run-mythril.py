#!/usr/bin/env python3
"""Run mythril on a benchmark suite."""

import argparse
import shutil
import csv
import json
import os
import signal
import subprocess
import time
from datetime import datetime
from pathlib import Path



def _run(cmd, timeout=None, **kwargs):
    """Run *cmd* with a reliable wall-clock timeout.

    Uses a dedicated process group so that the entire process tree is
    killed on timeout — unlike the external ``timeout`` command, which
    can leave orphaned children on macOS.  Returns exit-code 124 on
    timeout (matching GNU timeout).
    """
    proc = subprocess.Popen(
        cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
        start_new_session=True, **kwargs,
    )
    try:
        stdout, stderr = proc.communicate(timeout=timeout)
        return subprocess.CompletedProcess(cmd, proc.returncode, stdout, stderr)
    except subprocess.TimeoutExpired:
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
    parser = argparse.ArgumentParser(description="Run mythril on a benchmark suite.")
    parser.add_argument("--root", required=True,
                        help="Root directory containing benchmark sources")
    parser.add_argument("--out", required=True,
                        help="Output directory for results and timings CSV")
    parser.add_argument("--old-reentrancy-files", action="store_true", default=False,
                        help="Run only reentrancy_*.sol files (default: exclude them)")
    parser.add_argument("--modules", metavar="M1,M2,...", default=None,
                        help="Comma-separated list of mythril detector modules to enable (-m flag)")
    parser.add_argument("--timeout", type=int, default=600, metavar="SECONDS",
                        help="Mythril execution timeout in seconds (default: 600)")
    parser.add_argument("--rerun-timeouts", action="store_true", default=False,
                        help="Re-run benchmarks that previously timed out (default: skip them)")
    args = parser.parse_args()

    ROOT         = args.root
    OUT          = args.out
    EXEC_TIMEOUT = args.timeout

    SCRIPT_NUM   = os.environ.get("SCRIPT_NUM", "?")
    SCRIPT_TOTAL = os.environ.get("SCRIPT_TOTAL", "?")

    print(f"\n{'='*60}")
    print(f"  *** MYTHRIL *** — running on {ROOT}")
    print(f"{'='*60}\n")
    os.makedirs(OUT, exist_ok=True)

    TIMINGS_CSV = os.path.join(OUT, "timings.csv")
    if not os.path.exists(TIMINGS_CSV):
        with open(TIMINGS_CSV, "w") as f:
            f.write("benchmark,main,ms,exit_code,issues_count,issue_titles\n")

    cached = load_cache(TIMINGS_CSV)

    all_sols = list(Path(ROOT).rglob("*/src/*.sol"))
    if args.old_reentrancy_files:
        sols = sorted(s for s in all_sols if s.name.startswith("reentrancy_"))
    else:
        sols = sorted(s for s in all_sols if not s.name.startswith("reentrancy_"))

    # Group by benchmark and keep only those with exactly one matching .sol file
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
    include_dir = str(yult_include_dir())

    for i, sol in enumerate(sols, 1):
        benchmark  = sol.parent.parent.name  # dir above src/
        mainbase = sol.name

        print(f"==> script {SCRIPT_NUM}/{SCRIPT_TOTAL}; benchmark {i}/{total}"
              f" [timeout {fmt_timeout(EXEC_TIMEOUT)}]: {benchmark}/{mainbase}")

        if benchmark in cached:
            if cached[benchmark] != "124" or not args.rerun_timeouts:
                print(f"    [skipped: cached (exit {cached[benchmark]})]")
                continue

        out_dir  = Path(OUT) / benchmark
        out_dir.mkdir(parents=True, exist_ok=True)
        out_json = out_dir / f"{mainbase}.json"
        out_full = out_dir / f"{mainbase}.full.log"

        build_dir = sol.parent.parent / "build"
        shutil.copytree(sol.parent, build_dir)
        shutil.copy2(Path(include_dir) / "YulTracerLib.sol", build_dir)
        try:
            t0 = time.time()
            start_msg = f"[started at {datetime.fromtimestamp(t0).strftime('%Y-%m-%d %H:%M:%S')}]"
            print(f"    {start_msg}")
            modules = ["-m", args.modules] if args.modules else []
            caffeinate = []  # caffeinate is already applied by the wrapper shell script
            result = _run(
                caffeinate + [
                 "myth", "analyze", mainbase] + modules + [
                 "-o", "json", "--execution-timeout", str(EXEC_TIMEOUT)],
                timeout=EXEC_TIMEOUT + 20,
                cwd=build_dir,
            )
        finally:
            shutil.rmtree(build_dir)
        t1 = time.time()
        elapsed_ms = int((t1 - t0) * 1000)

        outcome = "timeout" if result.returncode == 124 else "completed"
        end_msg = f"[{outcome} at {datetime.fromtimestamp(t1).strftime('%Y-%m-%d %H:%M:%S')}, {elapsed_ms}ms]"
        print(f"    {end_msg}")

        out_json.write_bytes(result.stdout)
        out_full.write_bytes(
            f"{start_msg}\n".encode() + result.stderr + result.stdout + f"\n{end_msg}\n".encode()
        )

        try:
            data   = json.loads(result.stdout)
            issues = [iss["title"] for iss in data.get("issues", [])]
        except Exception:
            issues = []

        unique_titles = ";".join(sorted(set(issues)))

        if benchmark in cached:
            remove_from_csv(TIMINGS_CSV, benchmark)
        with open(TIMINGS_CSV, "a") as f:
            f.write(f"{benchmark},{mainbase},{elapsed_ms},{result.returncode},"
                    f"{len(issues)},{unique_titles}\n")

        cached[benchmark] = str(result.returncode)


if __name__ == "__main__":
    main()
