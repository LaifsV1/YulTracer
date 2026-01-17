#!/usr/bin/env python3
import re
import sys

def transform_solidity(src: str) -> str:
    t = src

    # 1) Update version pragma
    t = re.sub(
        r'(?m)^\s*pragma solidity\s+[\^~]?[0-9]+\.[0-9]+\.[0-9]+\s*;',
        'pragma solidity ^0.8.0;',
        t
    )

    # 1.5) constant → view (Solidity ≥0.6.0)
    t = re.sub(
        r'(function\s+[A-Za-z_]\w*\s*\([^)]*\)\s*)(public|external|internal|private)?\s*constant',
        r'\1\2 view',
        t
    )

    # 2) uint → uint256
    t = re.sub(r'\buint\b', 'uint256', t)

    # 3) now → block.timestamp
    t = re.sub(r'\bnow\b', 'block.timestamp', t)

    # 3.5) replace throw with require
    t = re.sub(
        r'if\s*\(\s*([A-Za-z_]\w*)\s*\)\s*throw\s*;',
        r'require(!\1);',
        t
    )

    # 4.5) replace `if (!(msg.sender.call.value(x)())) { throw; }`
    #     with a checked call + require
    def _fix_throw_call(m):
        indent = m.group('indent') or ''
        amount = m.group('amount')
        return (
            f"{indent}(bool success, ) = msg.sender.call{{value: {amount}}}(\"\");\n"
            f"{indent}require(success);\n"
        )

    t = re.sub(
        # capture leading indent and the amount expression
        r'(?m)^(?P<indent>[ \t]*)if\s*\(\s*!\s*\(\s*msg\.sender\.call\.value\(\s*'
        r'(?P<amount>[^\)]+)\s*\)\s*\(\s*\)\s*\)\s*\)\s*\{\s*throw\s*;\s*\}',
        _fix_throw_call,
        t
    )
    
    # 4.6) replace `require(msg.sender.call.value(x)());` with checked call + require
    def _fix_require_call(m):
        indent = m.group('indent') or ''
        amount = m.group('amount')
        return (
            f"{indent}(bool success, ) = msg.sender.call{{value: {amount}}}(\"\");\n"
            f"{indent}require(success);\n"
        )

    t = re.sub(
        r'(?m)^(?P<indent>[ \t]*)require\s*\(\s*msg\.sender\.call\.value\(\s*'
        r'(?P<amount>[^\)]+)\s*\)\s*\(\s*\)\s*\)\s*;',
        _fix_require_call,
        t
    )

    # 4) Replace *any* `.call.value(expr)` with `.call{value: expr}`
    t = re.sub(
        r'(?P<prefix>\.call)\.value\(\s*(?P<amt>[^)]+?)\s*\)',
        lambda m: f"{m.group('prefix')}{{value: {m.group('amt').strip()}}}",
        t
    )

    # 5) Replace any old unnamed fallback (single‐ or multi‐line) with receive()
    def _fix_fallback(m):
        body = m.group(1).rstrip()
        return f"receive() external payable {{\n{body}\n}}"
    t = re.sub(
        r'function\s*\(\)\s*(?:public|external)?\s*payable\s*\{\s*([\s\S]*?)\s*\}',
        _fix_fallback,
        t,
        flags=re.DOTALL
    )

    # 6) old‐style constructors → constructor
    contract_names = set(re.findall(r'contract\s+([A-Za-z_]\w*)', t))
    for name in contract_names:
        t = re.sub(
            rf'function\s+{re.escape(name)}\s*\(',
            'constructor(',
            t
        )

    # 7) add default 'public' visibility to functions missing one
    def _add_visibility(m):
        sig, mods = m.group(1), m.group(2)
        if re.search(r'\b(public|external|private|internal)\b', mods):
            return m.group(0)
        return f"{sig}public {mods}{{"
    t = re.sub(
        r'(function\s+(?!constructor|receive|fallback)\w+\s*\([^)]*\)\s*)([^{]*?)\{',
        _add_visibility,
        t
    )
    
    # 7.5) add `payable` only to functions whose bodies contain `msg.value`
    def _add_payable_if_needed(m):
        signature = m.group('sig')
        body      = m.group('body')
        # already payable? nothing to do
        if 'payable' in signature:
            return m.group(0)
        # only mark payable if we actually see msg.value in the body
        if 'msg.value' in body:
            return f"{signature} payable {{\n{body}}}"
        else:
            return m.group(0)
    
    # capture full signature up to the `{`, plus the body in a second group
    t = re.sub(
        r'(?ms)^(?P<sig>\s*function\s+\w+\s*\([^)]*\)\s*'
        r'(?:public|external|private|internal)[^{]*?)\{'
        r'(?P<body>[^}]*?)\}',
        _add_payable_if_needed,
        t
    )
    
    # 8) inject `memory` only on string parameters in function signatures
    def _fix_params(m):
        prefix, params, suffix = m.group(1), m.group(2), m.group(3)
        if not params.strip():
            return prefix + suffix
        parts = [p.strip() for p in params.split(',')]
        out = []
        for p in parts:
            p = re.sub(r'^\s*string\s+(\w+)\s*$', r'string memory \1', p)
            out.append(p)
        return prefix + ', '.join(out) + suffix
    t = re.sub(
        r'(function\s+(?:constructor|receive|fallback|\w+)\s*\()'  # fn start
        r'([^)]*)'                                                # params
        r'(\))',                                                  # ")"
        _fix_params,
        t
    )

    # 9) replace old `var x = …;` with `uint256 x = …;`
    t = re.sub(
        r'\bvar\s+([A-Za-z_]\w*)\s*=',
        r'uint256 \1 =',
        t
    )

    return t

def main():
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} <input.sol> <output.sol>")
        sys.exit(1)

    infile, outfile = sys.argv[1], sys.argv[2]
    with open(infile, 'r') as f:
        src = f.read()
    transformed = transform_solidity(src)
    with open(outfile, 'w') as f:
        f.write(transformed)
    print(f"✅ Transformed code written to {outfile}")

if __name__ == "__main__":
    main()
