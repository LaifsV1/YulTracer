#!/usr/bin/env python3
import re
import sys

def transform_solidity(src: str) -> str:
    t = src

    # dedupe duplicate owner fields
    owner_count = 0
    def _dedup_owner(m):
        nonlocal owner_count
        owner_count += 1
        return m.group(0) if owner_count == 1 else ""
    t = re.sub(r'address\s+owner\s*=\s*msg\.sender\s*;\s*',
               _dedup_owner, t)

    # 1) pragma
    t = re.sub(r'pragma solidity\s+\^?0\.4\.19\s*;',
               'pragma solidity ^0.8.0;', t)

    # 2) uint → uint256
    t = re.sub(r'\buint\b', 'uint256', t)

    # 3) now → block.timestamp
    t = re.sub(r'\bnow\b', 'block.timestamp', t)

    # 3.5) throw → require(!cond)
    t = re.sub(r'if\s*\(\s*([^\)]+)\)\s*throw\s*;',
               r'require(!\1);', t)

    # 3.6) sha3 → keccak256
    t = re.sub(r'\bsha3\s*\(', 'keccak256(', t)

    # 4) Combined ERC‑20 call + require(VAR);
    def _fix_erc20(m):
        token = m.group('token')
        sig   = m.group('sig')
        to    = m.group('to')
        amt   = m.group('amt')
        return (
            f"(bool success, bytes memory data) = {token}.call(\n"
            f"    abi.encodeWithSignature(\"{sig}\", {to}, {amt})\n"
            f");\n"
            f"require(success);"
        )
    t = re.sub(
        r'^[ \t]*bool\s+(?P<var>\w+)\s*=\s*'
        r'(?P<token>[A-Za-z_]\w*)\.call\(\s*'
        r'bytes4\(\s*keccak256\("(?P<sig>[^"]+)"\)\)\s*,\s*'
        r'(?P<to>[^,()]+)\s*,\s*(?P<amt>[^)()]+)\)\s*;\s*\n'
        r'[ \t]*require\(\s*(?P=var)\s*\)\s*;',
        _fix_erc20,
        t,
        flags=re.MULTILINE
    )

    # 5) Generic call.value(...)() blocks → unflattened tuple + if
    def _fix_call_value_block(m):
        indent = m.group('indent')
        addr   = m.group('addr')
        val    = m.group('val')
        body   = m.group('body').rstrip()
        return (
            f"{indent}(bool sent, bytes memory data) = {addr}.call{{value: {val}}}(\"\");\n"
            f"{indent}if (sent) {{\n"
            f"{body}\n"
            f"{indent}}}"
        )
    t = re.sub(
        r'(?P<indent>^[ \t]*)if\s*\(\s*(?P<addr>[A-Za-z_]\w*)\.call\.value\(\s*(?P<val>[^\)]+)\)\s*\(\s*\)\s*\)\s*\{\n'
        r'(?P<body>[\s\S]*?)\n'
        r'(?P=indent)\}',
        _fix_call_value_block,
        t,
        flags=re.MULTILINE
    )

    # 6) unnamed fallback → receive()
    def _fix_fallback(m):
        body = m.group(1).strip()
        return f"receive() external payable {{\n    {body}\n}}"
    t = re.sub(
        r'function\s*\(\)\s*(?:public|external)?\s*payable\s*\{\s*([\s\S]*?)\s*\}',
        _fix_fallback,
        t,
        flags=re.DOTALL
    )

    # 7) constructors → constructor
    for name in set(re.findall(r'contract\s+([A-Za-z_]\w*)', t)):
        t = re.sub(rf'function\s+{re.escape(name)}\s*\(',
                   'constructor(', t)

    # 8) missing visibility → public
    def _add_vis(m):
        sig, mods = m.group(1), m.group(2)
        if re.search(r'\b(public|external|private|internal)\b', mods):
            return m.group(0)
        return f"{sig}public {mods}{{"
    t = re.sub(
        r'(function\s+(?!constructor|receive|fallback)\w+\s*\([^)]*\)\s*)([^{]*?)\{',
        _add_vis,
        t
    )

    # 9) string params → string memory
    def _fix_params(m):
        pre, ps, post = m.group(1), m.group(2), m.group(3)
        parts = [p.strip() for p in ps.split(',')] if ps.strip() else []
        out = []
        for p in parts:
            out.append(re.sub(r'^\s*string\s+(\w+)\s*$', r'string memory \1', p))
        return pre + (', '.join(out) if out else '') + post
    t = re.sub(
        r'(function\s+(?:constructor|receive|fallback|\w+)\s*\()'
        r'([^)]*)'
        r'(\))',
        _fix_params,
        t
    )

    # 10) var → uint256
    t = re.sub(r'\bvar\s+([A-Za-z_]\w*)\s*=', r'uint256 \1 =', t)

    return t

def main():
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} <in.sol> <out.sol>")
        sys.exit(1)
    src = open(sys.argv[1]).read()
    out = transform_solidity(src)
    open(sys.argv[2], 'w').write(out)
    print(f"✅ Transformed code written to {sys.argv[2]}")

if __name__ == "__main__":
    main()
