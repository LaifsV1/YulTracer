#!/usr/bin/env python3
import argparse
import json
import re
import sys
from fnmatch import fnmatch
from pathlib import Path

# ANSI color codes
GREEN = "\033[92m"
RED = "\033[91m"
YELLOW = "\033[93m"
RESET = "\033[0m"
ERROR   = f"{RED}[ERROR]{RESET} "
WARNING = f"{YELLOW}[WARNING]{RESET} "
DONE    = f"{GREEN}[DONE]{RESET} "


def extract_base_name(contract_name):
    """Extract base name from contract name by removing _<number>_deployed suffix."""
    match = re.match(r'^(.+?)_\d+_deployed$', contract_name)
    return match.group(1) if match else contract_name


def format_abi_entry(entry):
    """Format an ABI entry for display in --list output."""
    entry_type = entry.get("type", "unknown")
    name = entry.get("name", "")

    if entry_type == "constructor":
        return "constructor()"
    elif entry_type == "fallback":
        return "fallback()"
    elif entry_type == "receive":
        return "receive()"
    elif entry_type in ("function", "event"):
        inputs = entry.get("inputs", [])
        input_types = [inp.get("type", "") for inp in inputs]
        outputs = entry.get("outputs", [])
        output_types = [out.get("type", "") for out in outputs]

        sig = f"{name}({', '.join(input_types)})"
        if entry_type == "function" and output_types:
            sig += f" → {', '.join(output_types)}"
        return f"{entry_type} {sig}"
    else:
        return f"{entry_type} {name}" if name else entry_type


def list_contracts(data):
    """List all contracts with their ABI entries."""
    for idx, contract in enumerate(data):
        name = contract.get("name", "unknown")
        abi = contract.get("abi", [])

        print(f"[{idx}] {name}")
        for entry in abi:
            formatted = format_abi_entry(entry)
            print(f"    {formatted}")
        print()


def matches_pattern(name, patterns):
    """Check if name matches any of the glob patterns."""
    return any(fnmatch(name, pattern) for pattern in patterns)


def parse_contract_function_spec(spec):
    """Parse a contract:function specification.

    Args:
        spec: String like "ContractPattern:func1,func2" or "Pattern:set*"

    Returns:
        Tuple of (contract_pattern, function_list)
    """
    if ":" not in spec:
        print(f"{ERROR}Invalid --contract-function format: '{spec}'", file=sys.stderr)
        print(f"Expected format: 'ContractPattern:function1,function2'", file=sys.stderr)
        sys.exit(1)

    contract_pattern, function_spec = spec.split(":", 1)
    functions = [f.strip() for f in function_spec.split(",") if f.strip()]

    if not functions:
        print(f"{ERROR}No functions specified in --contract-function: '{spec}'", file=sys.stderr)
        sys.exit(1)

    return contract_pattern, functions


def filter_contracts(data, args):
    """Filter contracts based on inclusion/exclusion criteria."""
    # Start with all contracts if no inclusion flags, otherwise empty
    if args.keep or args.keep_pattern or args.indices:
        filtered = []
    else:
        filtered = list(data)

    # Apply inclusion filters
    if args.keep:
        for contract in data:
            if contract.get("name") in args.keep and contract not in filtered:
                filtered.append(contract)

    if args.keep_pattern:
        for contract in data:
            base_name = extract_base_name(contract.get("name", ""))
            if matches_pattern(base_name, args.keep_pattern) and contract not in filtered:
                filtered.append(contract)

    if args.indices:
        indices_to_keep = set(args.indices)
        for idx, contract in enumerate(data):
            if idx in indices_to_keep and contract not in filtered:
                filtered.append(contract)

    # Apply exclusion filters
    if args.exclude:
        filtered = [c for c in filtered if c.get("name") not in args.exclude]

    if args.exclude_pattern:
        filtered = [
            c for c in filtered
            if not matches_pattern(extract_base_name(c.get("name", "")), args.exclude_pattern)
        ]

    return filtered


def filter_abi_entries(contract, global_filters, contract_specific_filters):
    """Filter ABI entries for a contract.

    Args:
        contract: Contract object with 'abi' field
        global_filters: Dictionary with global function filter settings
        contract_specific_filters: List of function names/patterns for this specific contract, or None

    Returns:
        Filtered list of ABI entries
    """
    abi = contract.get("abi", [])

    # Check if we have contract-specific filters
    if contract_specific_filters is not None:
        # Use contract-specific filters only
        filters = {
            'keep_function': [],
            'keep_function_pattern': contract_specific_filters,
            'exclude_function': [],
            'exclude_function_pattern': [],
            'keep_types': [],
            'exclude_types': []
        }
    else:
        # Use global filters
        filters = global_filters

    # Start with all entries if no inclusion flags, otherwise empty
    has_inclusion = (filters['keep_function'] or filters['keep_function_pattern'] or
                     filters['keep_types'])

    if has_inclusion:
        filtered = []
    else:
        filtered = list(abi)

    # Apply inclusion filters
    for entry in abi:
        if entry in filtered and has_inclusion:
            continue

        entry_name = entry.get("name", "")
        entry_type = entry.get("type", "")

        # Check exact name match
        if filters['keep_function'] and entry_name in filters['keep_function']:
            if entry not in filtered:
                filtered.append(entry)
            continue

        # Check pattern match
        if filters['keep_function_pattern'] and entry_name:
            if matches_pattern(entry_name, filters['keep_function_pattern']):
                if entry not in filtered:
                    filtered.append(entry)
                continue

        # Check type match
        if filters['keep_types'] and entry_type in filters['keep_types']:
            if entry not in filtered:
                filtered.append(entry)
            continue

    # Apply exclusion filters
    if filters['exclude_function']:
        filtered = [e for e in filtered if e.get("name", "") not in filters['exclude_function']]

    if filters['exclude_function_pattern']:
        filtered = [
            e for e in filtered
            if not (e.get("name") and matches_pattern(e.get("name"), filters['exclude_function_pattern']))
        ]

    if filters['exclude_types']:
        filtered = [e for e in filtered if e.get("type", "") not in filters['exclude_types']]

    return filtered


def build_contract_function_map(contract_function_specs):
    """Build a map from contract patterns to their specific function filters.

    Returns:
        Dictionary mapping contract patterns to lists of function names/patterns
    """
    result = {}
    for spec in contract_function_specs or []:
        contract_pattern, functions = parse_contract_function_spec(spec)
        if contract_pattern in result:
            result[contract_pattern].extend(functions)
        else:
            result[contract_pattern] = functions
    return result


def get_contract_specific_filters(contract_name, contract_function_map):
    """Get contract-specific function filters if they exist.

    Returns:
        List of function names/patterns, or None if no specific filters
    """
    base_name = extract_base_name(contract_name)

    for pattern, functions in contract_function_map.items():
        if fnmatch(base_name, pattern):
            return functions

    return None


def main():
    parser = argparse.ArgumentParser(
        description="Filter a Solidity ABI JSON file by selectively keeping or excluding contracts and their ABI entries (functions, events, etc.). Supports exact names, glob patterns, entry types, and per-contract function lists.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  # List all contracts
  %(prog)s abi/file.json --list

  # Keep specific contract by exact name
  %(prog)s abi/file.json --keep "FibonacciBalance_135_deployed"

  # Keep contracts matching pattern
  %(prog)s abi/file.json --keep-pattern "Fib*"

  # Keep only withdraw function in all contracts
  %(prog)s abi/file.json --keep-function "withdraw"

  # Different functions for different contracts
  %(prog)s abi/file.json \\
    --contract-function "FibonacciBalance:withdraw,start" \\
    --contract-function "FibonacciLib:setFibonacci"

  # Keep FibonacciBalance contracts with only withdraw function
  %(prog)s abi/file.json \\
    --keep-pattern "FibonacciBalance" \\
    --keep-function "withdraw"
        """
    )

    parser.add_argument("input_file", help="Input ABI JSON file")
    parser.add_argument("-o", "--output", help="Output file (default: stdout)")

    # Listing option
    parser.add_argument("--list", action="store_true",
                        help="List all contracts with their functions and exit")

    # Contract-level filtering
    contract_group = parser.add_argument_group("contract filtering")
    contract_group.add_argument("--keep", nargs="+", metavar="NAME",
                                help="Keep contracts with exact name matches")
    contract_group.add_argument("--keep-pattern", nargs="+", metavar="PATTERN",
                                help="Keep contracts where base name matches glob patterns")
    contract_group.add_argument("--exclude", nargs="+", metavar="NAME",
                                help="Exclude contracts with exact name matches")
    contract_group.add_argument("--exclude-pattern", nargs="+", metavar="PATTERN",
                                help="Exclude contracts where base name matches glob patterns")
    contract_group.add_argument("--indices", nargs="+", type=int, metavar="INDEX",
                                help="Keep only contracts at specified indices (0-based)")

    # Global function-level filtering
    function_group = parser.add_argument_group("global function filtering (applies to all contracts)")
    function_group.add_argument("--keep-function", nargs="+", metavar="NAME",
                                help="Keep only ABI entries with exact function name matches")
    function_group.add_argument("--keep-function-pattern", nargs="+", metavar="PATTERN",
                                help="Keep ABI entries where function name matches glob patterns")
    function_group.add_argument("--exclude-function", nargs="+", metavar="NAME",
                                help="Exclude ABI entries with exact function name matches")
    function_group.add_argument("--exclude-function-pattern", nargs="+", metavar="PATTERN",
                                help="Exclude ABI entries where function name matches glob patterns")
    function_group.add_argument("--keep-types", nargs="+", metavar="TYPE",
                                choices=["constructor", "fallback", "function", "event", "receive"],
                                help="Keep only specific ABI entry types")
    function_group.add_argument("--exclude-types", nargs="+", metavar="TYPE",
                                choices=["constructor", "fallback", "function", "event", "receive"],
                                help="Exclude specific ABI entry types")

    # Per-contract function filtering
    per_contract_group = parser.add_argument_group("per-contract function filtering (overrides global filters)")
    per_contract_group.add_argument("--contract-function", action="append", metavar="SPEC",
                                    help='Specify functions for specific contracts. '
                                         'Format: "ContractPattern:func1,func2" or "Pattern:set*"')

    args = parser.parse_args()

    # Validate input file
    input_path = Path(args.input_file)
    if not input_path.exists():
        print(f"{ERROR}Input file '{input_path}' not found.", file=sys.stderr)
        sys.exit(1)

    # Load JSON
    try:
        with open(input_path, 'r') as f:
            data = json.load(f)
    except json.JSONDecodeError as e:
        print(f"{ERROR}Invalid JSON in '{input_path}': {e}", file=sys.stderr)
        sys.exit(1)
    except Exception as e:
        print(f"{ERROR}Failed to read '{input_path}': {e}", file=sys.stderr)
        sys.exit(1)

    if not isinstance(data, list):
        print(f"{ERROR}Expected JSON array at top level, got {type(data).__name__}", file=sys.stderr)
        sys.exit(1)

    # Handle --list option
    if args.list:
        list_contracts(data)
        return

    # Filter contracts
    original_count = len(data)
    filtered_contracts = filter_contracts(data, args)

    if not filtered_contracts:
        print(f"{WARNING}No contracts matched the filter criteria.", file=sys.stderr)
        filtered_data = []
    else:
        # Build global function filters
        global_filters = {
            'keep_function': args.keep_function or [],
            'keep_function_pattern': args.keep_function_pattern or [],
            'exclude_function': args.exclude_function or [],
            'exclude_function_pattern': args.exclude_function_pattern or [],
            'keep_types': args.keep_types or [],
            'exclude_types': args.exclude_types or []
        }

        # Build contract-specific function filters
        contract_function_map = build_contract_function_map(args.contract_function)

        # Filter functions in each contract
        filtered_data = []
        total_abi_entries = 0
        empty_abi_contracts = []

        for contract in filtered_contracts:
            contract_name = contract.get("name", "")

            # Get contract-specific filters if they exist
            specific_filters = get_contract_specific_filters(contract_name, contract_function_map)

            # Filter ABI entries
            filtered_abi = filter_abi_entries(contract, global_filters, specific_filters)

            # Track empty ABIs
            if not filtered_abi:
                empty_abi_contracts.append(contract_name)

            total_abi_entries += len(filtered_abi)

            # Create filtered contract
            filtered_contract = {
                "name": contract_name,
                "abi": filtered_abi
            }
            filtered_data.append(filtered_contract)

        # Show warnings for empty ABIs
        if empty_abi_contracts:
            print(f"{WARNING}Function filtering resulted in empty ABI for {len(empty_abi_contracts)} contract(s):",
                  file=sys.stderr)
            for name in empty_abi_contracts:
                print(f"  -> {name}", file=sys.stderr)

    # Output results
    output_json = json.dumps(filtered_data, indent=2)

    if args.output:
        output_path = Path(args.output)
        try:
            with open(output_path, 'w') as f:
                f.write(output_json)
            print(f"{DONE}Wrote {len(filtered_data)} contract(s) to '{output_path}'", file=sys.stderr)
        except Exception as e:
            print(f"{ERROR}Failed to write to '{output_path}': {e}", file=sys.stderr)
            sys.exit(1)
    else:
        print(output_json)

    # Show summary statistics
    if filtered_data:
        total_abi_entries = sum(len(c.get("abi", [])) for c in filtered_data)
        print(f"{DONE}Kept {len(filtered_data)}/{original_count} contracts, "
              f"{total_abi_entries} total ABI entries", file=sys.stderr)


if __name__ == "__main__":
    main()
