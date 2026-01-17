#!/usr/bin/env python3
import re
import sys

def transform_solidity(src: str) -> str:
    t = src

    # 1) Update version pragma
    t = re.sub(
        r'pragma solidity\s+\^?0\.4\.19\s*;',
        'pragma solidity ^0.8.0;',
        t
    )

    # 2) uint → uint256
    t = re.sub(r'\buint\b', 'uint256', t)

    # 3) now → block.timestamp
    t = re.sub(r'\bnow\b', 'block.timestamp', t)

    # 4) call.value(...)() → checks‑effects‑interactions
    t = re.sub(
        r'if\s*\(\s*msg\.sender\.call\.value\(\s*([^\)]+)\s*\)\s*\(\s*\)\s*\)',
        r'(bool sent, ) = msg.sender.call{value: \1}("");\n            if (sent)',
        t
    )

    # 5) unnamed fallback → receive()
    def _fix_fallback(m):
        body = m.group(1) or ''
        return f"receive() external payable {{ {body}}}"
    t = re.sub(
        r'function\(\)\s*public\s*payable\s*\{\s*(Deposit\(\);\s*)?\}',
        _fix_fallback,
        t
    )

    # 6) old‑style constructors → constructor
    names = re.findall(r'contract\s+([A-Za-z_]\w*)', t)
    for name in set(names):
        t = re.sub(
            rf'function\s+{re.escape(name)}\s*\(',
            'constructor(',
            t
        )

    # 7) add default 'public' to missing visibilities
    def _add_visibility(m):
        signature, mods = m.group(1), m.group(2)
        if re.search(r'\b(public|external|private|internal)\b', mods):
            return m.group(0)
        return f"{signature}public {mods}{{"
    t = re.sub(
        r'(function\s+(?!constructor|receive|fallback)\w+\s*\([^)]*\)\s*)([^{]*?)\{',
        _add_visibility,
        t
    )

    # 8) **Only** inject `memory` on string **parameters** in function signatures
    def _fix_params(m):
        prefix, params, suffix = m.group(1), m.group(2), m.group(3)
        if not params.strip():
            return prefix + suffix
        parts = [p.strip() for p in params.split(',')]
        out = []
        for p in parts:
            # only transform `string name` → `string memory name`
            p = re.sub(r'^\s*string\s+(\w+)\s*$', r'string memory \1', p)
            out.append(p)
        return prefix + ', '.join(out) + suffix

    t = re.sub(
        r'(function\s+(?:constructor|receive|fallback|\w+)\s*\()'  # group1: fn start
        r'([^)]*)'                                                # group2: params
        r'(\))',                                                  # group3: closing paren
        _fix_params,
        t
    )

    return t

def main():
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} <in.sol> <out.sol>")
        sys.exit(1)

    with open(sys.argv[1], 'r') as f:
        src = f.read()
    out = transform_solidity(src)
    with open(sys.argv[2], 'w') as f:
        f.write(out)
    print(f"✅ Transformed code written to {sys.argv[2]}")

if __name__ == "__main__":
    main()
