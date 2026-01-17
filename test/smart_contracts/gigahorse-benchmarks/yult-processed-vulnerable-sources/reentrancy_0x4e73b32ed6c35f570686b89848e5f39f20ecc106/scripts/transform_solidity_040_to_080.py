#!/usr/bin/env python3
import re
import sys

def transform_solidity(source_code: str) -> str:
    transformed = source_code

    # 1) Update version pragma
    transformed = re.sub(
        r'pragma solidity\s+\^?0\.4\.19\s*;',
        'pragma solidity ^0.8.0;',
        transformed
    )

    # 2) Replace untyped uint → uint256
    transformed = re.sub(r'\buint\b', 'uint256', transformed)

    # 3) Replace now → block.timestamp
    transformed = re.sub(r'\bnow\b', 'block.timestamp', transformed)

    # 4) Rewrite call.value(...)() → checks‑effects‑interactions form
    transformed = re.sub(
        r'if\s*\(\s*msg\.sender\.call\.value\(\s*([^\)]+)\s*\)\s*\(\s*\)\s*\)',
        r'(bool sent, ) = msg.sender.call{value: \1}("");\n            if (sent)',
        transformed
    )

    # 5) Fallback → receive()
    transformed = re.sub(
        r'function\(\)\s*public\s*payable\s*\{\s*Deposit\(\);\s*\}',
        'receive() external payable { Deposit(); }',
        transformed
    )

    # 6) Inject `memory` only into `string` parameters of functions
    def fix_params(match):
        prefix = match.group(1)    # e.g. "function AddMessage("
        params = match.group(2)    # e.g. "address _adr, uint256 _val, string _data"
        suffix = match.group(3)    # the closing ")"
        # process each comma-separated param
        parts = [p.strip() for p in params.split(',')] if params.strip() else []
        out = []
        for p in parts:
            # only replace bare `string name` → `string memory name`
            p = re.sub(r'^\s*string\s+(\w+)\s*$', r'string memory \1', p)
            out.append(p)
        return prefix + ', '.join(out) + suffix

    # apply to every function signature
    transformed = re.sub(
        r'(function\s+[A-Za-z_]\w*\s*\()'   # group1: "function Name("
        r'([^)]*)'                          # group2: everything up to closing paren
        r'(\))',                            # group3: ")"
        fix_params,
        transformed
    )

    return transformed

def main():
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} <input.sol> <output.sol>")
        sys.exit(1)

    infile, outfile = sys.argv[1], sys.argv[2]
    with open(infile, 'r') as f:
        src = f.read()

    dst = transform_solidity(src)

    with open(outfile, 'w') as f:
        f.write(dst)

    print(f"✅ Transformed code written to {outfile}")

if __name__ == "__main__":
    main()
