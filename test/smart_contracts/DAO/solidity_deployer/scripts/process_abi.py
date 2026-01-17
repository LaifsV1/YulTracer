#!/usr/bin/env python3
import re
import sys
import json
from pathlib import Path
from Crypto.Hash import keccak

# ANSI color codes
GREEN = "\033[92m"
RED = "\033[91m"
YELLOW = "\033[93m"
RESET = "\033[0m"


def extract_objects(yul_file):
    results = []
    prev_line = ""

    with open(yul_file, 'r') as f:
        for line in f:
            m = re.search(r'object\s+"([^"]+)"', line)
            if m:
                full = m.group(1)
                if full.endswith("_deployed"):
                    # skip deployed stubs
                    prev_line = line
                    continue

                # split into obj & number
                parts = full.rsplit("_", 1)
                obj, num = parts if len(parts) == 2 else (full, None)

                # pull *all* quoted paths from prev_line
                paths = re.findall(r'"([^"]+)"', prev_line)
                if paths:
                    results.append((paths, obj, num))

            prev_line = line

    return results


def load_contracts(json_file):
    try:
        with open(json_file, 'r') as f:
            data = json.load(f)
        return data.get("contracts", {})
    except Exception as e:
        print(f"{RED}Error reading JSON:{RESET} {e}", file=sys.stderr)
        sys.exit(1)


def _abi_type(inp):
    t = inp["type"]
    # detect array suffixes, e.g. "tuple[][]"
    array_suffix = ""
    while t.endswith("]"):
        array_suffix = t[t.rfind("["):] + array_suffix
        t = t[: t.rfind("[")]

    if t == "tuple":
        # build "(T1,T2,...)"
        inner = ",".join(_abi_type(c) for c in inp.get("components", []))
        return f"({inner})" + array_suffix
    else:
        return t + array_suffix


def add_signature_hash(obj):
    if isinstance(obj, dict):
        typ = obj.get("type")
        if typ in ("function", "event"):
            fname = obj.get("name", "")
            inputs = obj.get("inputs", [])
            # use helper for each input
            types = [_abi_type(inp) for inp in inputs if isinstance(inp, dict)]
            sig = f"{fname}({','.join(types)})"
            obj["signature"] = sig

            h = keccak.new(digest_bits=256, data=sig.encode()).hexdigest()
            # functions only need first 8 hex digits
            if typ == "function":
                h = h[:8]
            obj["hash"] = "0x" + h

        # recurse
        return {k: add_signature_hash(v) for k, v in obj.items()}
    elif isinstance(obj, list):
        return [add_signature_hash(v) for v in obj]
    else:
        return obj


def main():
    if not (3 <= len(sys.argv) <= 4):
        print(f"Usage: {sys.argv[0]} <path-to-yul> <path-to-abi-json> [<output-json>]", file=sys.stderr)
        print("default <output-json> = 'deployed_contracts.json']", file=sys.stderr)
        sys.exit(1)

    yul_path = Path(sys.argv[1])
    json_path = Path(sys.argv[2])
    out_path = Path(sys.argv[3] if len(sys.argv) == 4 else "deployed_contracts.json")

    for p in (yul_path, json_path):
        if not p.exists():
            print(f"{RED}Error:{RESET} '{p}' not found.", file=sys.stderr)
            sys.exit(1)

    contracts = load_contracts(json_path)
    extracted = extract_objects(yul_path)

    output_list = []
    for paths, obj, num in extracted:
        name_key = f"{obj}_{num}"
        candidates = [f"{p}:{obj}" for p in paths]
        matches = [c for c in candidates if c in contracts]

        if len(matches) == 1:
            key = matches[0]
            abi = contracts[key].get("abi")
            if abi is None:
                print(f"{YELLOW}Warning:{RESET} no ABI field for '{key}'")
                continue

            output_list.append({
                "name": f"{name_key}_deployed",
                "abi": abi
            })

        elif len(matches) == 0:
            print(f"❌ {RED}Warning: MISSING{RESET} – no match for '{name_key}'. Tried:")
            for c in candidates:
                print(f"  → {c}")

        else:
            print(f"❌ {YELLOW}Warning: DUPLICATES{RESET} – multiple matches for '{name_key}':")
            for m in matches:
                print(f"  → {m}")

    output_list = add_signature_hash(output_list)
    # write out
    with open(out_path, 'w') as f:
        json.dump(output_list, f, indent=2)

    print(f"✅ Done: Wrote {len(output_list)} contrants to '{out_path}'")


if __name__ == "__main__":
    main()
