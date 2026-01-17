#!/usr/bin/env python3
import re
import sys
import json
from pathlib import Path

GREEN = "\033[92m"
RED = "\033[91m"
YELLOW = "\033[93m"
RESET = "\033[0m"


def extract_objects(yul_file):
    results = []
    prev_line = ""

    with open(yul_file) as f:
        for line in f:
            # Match object line
            match_obj = re.search(r'object\s+"([^"]+)"', line)
            if match_obj:
                full_obj_name = match_obj.group(1)

                if full_obj_name.endswith("_deployed"):
                    continue

                # Object name and number
                parts = full_obj_name.rsplit("_", 1)
                obj_name, number = parts if len(parts) == 2 else (full_obj_name,
                                                                  None)

                # All paths from previous line
                match_paths = re.findall(r'"([^"]+)"', prev_line)
                if match_paths:
                    results.append((match_paths, obj_name, number))

            prev_line = line

    return results


def load_json(json_file):
    try:
        with open(json_file) as f:
            data = json.load(f)
            return data.get("contracts", {})
    except Exception as e:
        print(f"Error reading JSON file: {e}", file=sys.stderr)
        sys.exit(1)


def print_status(paths, obj, number, matches):
    key_list = [f"{p}:{obj}" for p in paths]

    if len(matches) == 1:
        print(f"{GREEN}Found{RESET} - object: {obj}, number: {number}")
        print(f"  → {matches[0]}")
    elif len(matches) == 0:
        print(f"{RED}MISSING{RESET} - object: {obj}, number: {number}")
        for key in key_list:
            print(f"  → {key}")
    else:
        print(f"{YELLOW}DUPLICATES{RESET} - object: {obj}, number: {number}")
        for key in matches:
            print(f"  → {key}")


def main():
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} <path-to-yul-file> <path-to-json-file>",
              file=sys.stderr)
        sys.exit(1)

    yul_file = sys.argv[1]
    json_file = sys.argv[2]

    if not Path(yul_file).exists():
        print(f"Error: Yul file '{yul_file}' does not exist.", file=sys.stderr)
        sys.exit(1)

    if not Path(json_file).exists():
        print(f"Error: JSON file '{json_file}' does not exist.",
              file=sys.stderr)
        sys.exit(1)

    contracts = load_json(json_file)
    extracted = extract_objects(yul_file)

    for paths, obj, num in extracted:
        keys_to_check = [f"{p}:{obj}" for p in paths]
        found_matches = [key for key in keys_to_check if key in contracts]
        print_status(paths, obj, num, found_matches)


if __name__ == "__main__":
    main()
