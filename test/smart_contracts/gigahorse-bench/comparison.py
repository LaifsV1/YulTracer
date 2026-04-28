#!/usr/bin/env python3
"""Produce comparison CSV tables from a results directory."""

import argparse
import csv
import os
import sys


def ms_to_human(ms):
    ms = int(ms)
    minutes = ms // 60000
    remaining_ms = ms % 60000
    seconds = remaining_ms // 1000
    millis = remaining_ms % 1000
    tenths = millis // 100
    return f"{minutes:02d}:{seconds:02d}.{tenths}"


def transform_name(raw):
    name = raw
    if name.startswith("reentrancy_"):
        name = name[len("reentrancy_"):]
    if name.startswith("reentrancy_"):
        name = name[len("reentrancy_"):]
    if name.startswith("spank_chain_payment"):
        name = "spank_chain" + name[len("spank_chain_payment"):]
    if name.startswith("0x"):
        return name[:5] + "..." + name[-3:]
    return name


def load_column(csv_path, is_hit):
    """Load a timings CSV into ({benchmark_name: display_value}, {benchmark_name: ms_int}).

    is_hit(row) -> bool: True if the row represents a found issue.
    Returns ({}, {}) if csv_path does not exist (column shows N/A for all benchmarks).
    ms_dict contains None for timed-out rows.
    """
    display, ms_data = {}, {}
    if not os.path.exists(csv_path):
        return display, ms_data
    with open(csv_path, newline="") as f:
        for row in csv.DictReader(f):
            key = transform_name(row["benchmark"])
            if row["exit_code"] == "124":
                display[key] = "t/o"
                ms_data[key] = None
            else:
                label = r"\rejected" if is_hit(row) else r"\passed"
                ms = int(row["ms"])
                display[key] = f"{label} {ms_to_human(ms)}"
                ms_data[key] = ms
    return display, ms_data


def mythril_hit(row):
    return "State access after external call" in row["issue_titles"]


def issues_hit(row):
    return int(row["issues_count"]) > 0


def smtchecker_hit(row):
    return "Assertion violation happens here" in row["issue_titles"]


def stat_percent(match, exclude="N/A"):
    """Returns a percentage of non-excluded cells that contain `match`."""
    def fn(cells):
        non_excluded = [c for c in cells if exclude not in c]
        if not non_excluded:
            return "N/A"
        count = sum(1 for c in non_excluded if match in c)
        return f"{count / len(non_excluded) * 100:.1f}\\%"
    return fn


SUMMARY_ROWS = [
    ("Rejected", stat_percent(r"\rejected")),
    ("Passed",   stat_percent(r"\passed")),
    ("Timeout",  stat_percent("t/o")),
]


def write_csv(path, benchmarks, col_data, ms_data, columns, strip_suffix=None):
    headers = []
    for header, _ in columns:
        h = header
        if strip_suffix and h.endswith(strip_suffix):
            h = h[:-len(strip_suffix)].rstrip()
        headers.append(h)
    with open(path, "w", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(["Benchmark"] + headers)
        for name in benchmarks:
            row = [name] + [col_data[header].get(name, "N/A") for header, _ in columns]
            writer.writerow(row)
        for label, stat_fn in SUMMARY_ROWS:
            row = [label] + [
                stat_fn([col_data[header].get(name, "N/A") for name in benchmarks])
                for header, _ in columns
            ]
            writer.writerow(row)
        avg_row = ["Average time"]
        total_row = ["Total time"]
        for header, _ in columns:
            times = [ms_data[header][n] for n in benchmarks
                     if n in ms_data[header] and ms_data[header][n] is not None]
            avg_row.append(ms_to_human(sum(times) / len(times)) if times else "N/A")
            total_row.append(ms_to_human(sum(times)) if times else "N/A")
        writer.writerow(avg_row)
        writer.writerow(total_row)
    print(f"Wrote {path} ({len(benchmarks)} rows)")


EXPECTED_SUBDIRS = [
    "vuln-mythril",
    "safe-mythril",
    "vuln-smtchecker-chc",
    "safe-smtchecker-chc",
    "vuln-smtchecker-bmc",
    "safe-smtchecker-bmc",
    "vuln-slither",
    "safe-slither",
    "vuln-yultracer",
    "safe-yultracer",
]


def main():
    parser = argparse.ArgumentParser(
        description="Produce comparison CSV tables from a results directory.")
    parser.add_argument("results_dir",
                        help="Results directory produced by the run-* scripts "
                             "(e.g. results/reentr-assert)")
    parser.add_argument("-o", "--output", default="comparison.csv",
                        help="Output CSV filename (default: comparison.csv)")
    args = parser.parse_args()

    rd = args.results_dir

    if not os.path.isdir(rd):
        print(f"Error: '{rd}' is not a directory.", file=sys.stderr)
        sys.exit(1)

    if not any(os.path.isdir(os.path.join(rd, s)) for s in EXPECTED_SUBDIRS):
        print(f"Error: '{rd}' does not contain any expected results subdirectory.",
              file=sys.stderr)
        print(f"Expected at least one of: {', '.join(EXPECTED_SUBDIRS)}", file=sys.stderr)
        print(f"Did you mean to pass a subdirectory of '{rd}'"
              f" (e.g. '{os.path.join(rd, 'reentr-assert')}')?", file=sys.stderr)
        sys.exit(1)

    def p(subdir):
        return os.path.join(rd, subdir, "timings.csv")

    COLUMNS = [
        ("mythril (v)",    lambda: load_column(p("vuln-mythril"),        mythril_hit)),
        ("mythril (s)",    lambda: load_column(p("safe-mythril"),        mythril_hit)),
        ("CHC (v)",        lambda: load_column(p("vuln-smtchecker-chc"), smtchecker_hit)),
        ("CHC (s)",        lambda: load_column(p("safe-smtchecker-chc"), smtchecker_hit)),
        ("BMC (v)",        lambda: load_column(p("vuln-smtchecker-bmc"), smtchecker_hit)),
        ("BMC (s)",        lambda: load_column(p("safe-smtchecker-bmc"), smtchecker_hit)),
        ("slither (v)",    lambda: load_column(p("vuln-slither"),        issues_hit)),
        ("slither (s)",    lambda: load_column(p("safe-slither"),        issues_hit)),
        ("yultracer (v)",  lambda: load_column(p("vuln-yultracer"),      issues_hit)),
        ("yultracer (s)",  lambda: load_column(p("safe-yultracer"),      issues_hit)),
    ]

    col_data, ms_data = {}, {}
    for header, loader in COLUMNS:
        col_data[header], ms_data[header] = loader()

    # Derive benchmark list from the union of all loaded CSVs
    all_names: set[str] = set()
    for data in col_data.values():
        all_names.update(data.keys())
    benchmarks = sorted(all_names)

    if not benchmarks:
        print("No results found in the given results directory.", file=sys.stderr)
        sys.exit(1)

    out_path = os.path.join(rd, args.output)
    write_csv(out_path, benchmarks, col_data, ms_data, COLUMNS)


if __name__ == "__main__":
    main()
