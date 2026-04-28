#!/usr/bin/env python3
"""Run YulTracer on a benchmark suite via make."""

import argparse
import csv
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


CSV_HEADER = "benchmark,main,ms,exit_code,issues_count,issue_titles"
VIOLATION_MARKER = "[game semantics]"


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


def main():
    parser = argparse.ArgumentParser(description="Run YulTracer on a benchmark suite via make.")
    parser.add_argument("--root", required=True,
                        help="Root directory containing benchmark subdirectories")
    parser.add_argument("--out", required=True,
                        help="Output directory for results and timings CSV")
    parser.add_argument("--timeout", type=int, default=600, metavar="SECONDS",
                        help="Outer process timeout for make run in seconds (default: 600)")
    parser.add_argument("--rerun-timeouts", action="store_true", default=False,
                        help="Re-run benchmarks that previously timed out (default: skip them)")
    args = parser.parse_args()

    ROOT         = args.root
    OUT          = args.out
    EXEC_TIMEOUT = args.timeout

    if "YULTRACER_ROOT" not in os.environ:
        raise SystemExit(
            "error: YULTRACER_ROOT is not set. "
            "Export it from your shell: export YULTRACER_ROOT=$(git rev-parse --show-toplevel)"
        )

    SCRIPT_NUM   = os.environ.get("SCRIPT_NUM", "?")
    SCRIPT_TOTAL = os.environ.get("SCRIPT_TOTAL", "?")

    print(f"\n{'='*60}")
    print(f"  *** YULTRACER *** — running on {ROOT}")
    print(f"{'='*60}\n")
    os.makedirs(OUT, exist_ok=True)

    TIMINGS_CSV = os.path.join(OUT, "timings.csv")
    if not os.path.exists(TIMINGS_CSV):
        with open(TIMINGS_CSV, "w") as f:
            f.write(CSV_HEADER + "\n")

    cached = load_cache(TIMINGS_CSV)

    benchmarks = sorted(d for d in Path(ROOT).iterdir() if d.is_dir())
    total = len(benchmarks)

    for i, subdir in enumerate(benchmarks, 1):
        benchmark = subdir.name

        print(f"==> script {SCRIPT_NUM}/{SCRIPT_TOTAL}; benchmark {i}/{total}"
              f" [running timeout {fmt_timeout(EXEC_TIMEOUT)}]: {benchmark}")

        if benchmark in cached:
            if cached[benchmark] != "124" or not args.rerun_timeouts:
                print(f"    [skipped: cached (exit {cached[benchmark]})]")
                continue

        out_dir = Path(OUT) / benchmark
        out_dir.mkdir(parents=True, exist_ok=True)

        # Build
        print("    [building]")
        build = _run(
            ["make", "-s", "clean", "build"],
            cwd=subdir,
        )
        (out_dir / "build.full.log").write_bytes(build.stderr + build.stdout)

        if build.returncode != 0:
            print(f"    [build failed (exit {build.returncode})]")
            continue


        # Run
        t0 = time.time()
        start_msg = f"[started at {datetime.fromtimestamp(t0).strftime('%Y-%m-%d %H:%M:%S')}]"
        print(f"    {start_msg}")
        result = _run(
            ["make", "-s", "run"],
            timeout=EXEC_TIMEOUT + 20,
            cwd=subdir,
        )
        t1 = time.time()
        elapsed_ms = int((t1 - t0) * 1000)

        outcome = "timeout" if result.returncode == 124 else "completed"
        end_msg = f"[{outcome} at {datetime.fromtimestamp(t1).strftime('%Y-%m-%d %H:%M:%S')}, {elapsed_ms}ms]"
        print(f"    {end_msg}")

        (out_dir / "run.full.log").write_bytes(
            f"{start_msg}\n".encode() + result.stdout + result.stderr + f"\n{end_msg}\n".encode()
        )

        text = (result.stderr + result.stdout).decode(errors="replace")
        issues = []
        for line in text.splitlines():
            idx = line.find(VIOLATION_MARKER)
            if idx != -1:
                issues.append(line[idx + len(VIOLATION_MARKER):].strip().rstrip("."))
        count = len(issues)
        unique_titles = ";".join(sorted(set(issues)))

        if benchmark in cached:
            remove_from_csv(TIMINGS_CSV, benchmark)
        with open(TIMINGS_CSV, "a") as f:
            f.write(f"{benchmark},Makefile,{elapsed_ms},{result.returncode},"
                    f"{count},{unique_titles}\n")

        cached[benchmark] = str(result.returncode)

        # Clean
        print("    [cleaning]")
        _run(["make", "-s", "clean"], cwd=subdir,
             stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)


if __name__ == "__main__":
    main()
