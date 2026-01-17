#!/usr/bin/env python3
import re
import sys

def transform_functions(src: str) -> str:
    t = src

    # 1) constant → view (Solidity ≥0.6.0)
    t = re.sub(
        r'(function\s+[A-Za-z_]\w*\s*\([^)]*\)\s*)(public|external|internal|private)?\s*constant',
        lambda m: f"{m.group(1)}{(m.group(2) + ' ') if m.group(2) else ''}view",
        t
    )

    # 2) old-style constructors → constructor
    contract_names = set(re.findall(r'contract\s+([A-Za-z_]\w*)', t))
    for name in contract_names:
        # Replace function <ContractName>(... declaration with constructor(
        t = re.sub(
            rf'\bfunction\s+{re.escape(name)}\s*\(',
            'constructor(',
            t
        )

    # 3) add default visibility to functions missing one (skip constructor/receive/fallback)
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

    # 4) add `payable` to functions whose bodies use msg.value (if not already payable)
    def _add_payable_if_needed(m):
        signature = m.group('sig')
        body = m.group('body')
        if 'payable' in signature:
            return m.group(0)
        if 'msg.value' in body:
            return f"{signature} payable {{\n{body}}}"
        return m.group(0)
    t = re.sub(
        r'(?ms)^(?P<sig>\s*function\s+\w+\s*\([^)]*\)\s*'
        r'(?:public|external|private|internal)[^{]*?)\{'
        r'(?P<body>[^}]*?)\}',
        _add_payable_if_needed,
        t
    )

    # 5) inject `memory` for bare string/bytes and array parameters in function/constructor signatures (preserves original EOLs)
    def _fix_params(m):
        prefix = m.group(1)  # e.g., "function foo(" or "constructor("
        params = m.group(2)  # contents inside parentheses, possibly multiline
        suffix = m.group(3)  # closing ")"
        p = params
        # 1) string/bytes without location → string memory / bytes memory
        p = re.sub(
            r'\b(string|bytes)\s+(?!memory\b|calldata\b|storage\b)([A-Za-z_]\w*)\b',
            r'\1 memory \2',
            p
        )
        # 2) array types without location → e.g., uint256[2] name  -> uint256[2] memory name
        p = re.sub(
            r'\b([A-Za-z_]\w*(?:\s*\[[^\]]*\])+)\s+(?!memory\b|calldata\b|storage\b)([A-Za-z_]\w*)\b',
            r'\1 memory \2',
            p
        )
        return prefix + p + suffix
    t = re.sub(
        r'(?ms)(\b(?:function\s+(?:receive|fallback|\w+)|constructor)\s*\()'  # function/constructor start with "("
        r'([^)]*)'                                                          # params (multiline safe)
        r'(\))',                                                            # ")"
        _fix_params,
        t
    )    # 6) replace any old unnamed fallback (function() payable { ... }) with receive()

    def _fix_fallback(m):
        body = m.group(1).rstrip()
        return f"receive() external payable {{\n{body}\n}}"
    t = re.sub(
        r'function\s*\(\)\s*(?:public|external)?\s*payable\s*\{\s*([\s\S]*?)\s*\}',
        _fix_fallback,
        t,
        flags=re.DOTALL
    )

    # fix return parameters: ensure reference types (string, bytes, any array) have explicit data location (memory)
    def _fix_return_locations(m):
        inner = m.group(1)  # contents inside returns(...)
        # split by commas but respect nesting of (), [], {}
        parts = []
        buf = []
        depth_paren = depth_bracket = depth_brace = 0
        for ch in inner:
            if ch == ',' and depth_paren == depth_bracket == depth_brace == 0:
                parts.append(''.join(buf))
                buf = []
                continue
            buf.append(ch)
            if ch == '(':
                depth_paren += 1
            elif ch == ')':
                depth_paren = max(0, depth_paren - 1)
            elif ch == '[':
                depth_bracket += 1
            elif ch == ']':
                depth_bracket = max(0, depth_bracket - 1)
            elif ch == '{':
                depth_brace += 1
            elif ch == '}':
                depth_brace = max(0, depth_brace - 1)
        if buf:
            parts.append(''.join(buf))
        fixed_parts = []
        for part in parts:
            orig = part
            part = part.strip()
            # skip if already has an explicit location
            if re.search(r'\b(memory|calldata|storage)\b', part):
                fixed_parts.append(orig)
                continue
            # match reference types: string, bytes, or any type with brackets (arrays)
            m_type_name = re.match(
                r'^(\s*(?:string|bytes|\w+(?:\s*\[[^\]]*\])+))'  # type or array type
                r'(\s+[A-Za-z_]\w*)?\s*$',  # optional name
                part
            )
            if m_type_name:
                type_with_suffix = m_type_name.group(1).strip()
                name = m_type_name.group(2) or ''
                # insert memory after the type (before the name)
                replacement = f"{type_with_suffix} memory{name}"
                # preserve original surrounding whitespace as much as possible
                fixed_parts.append(orig.replace(part, replacement))
            else:
                # not a reference type needing location (or complex), leave as-is
                fixed_parts.append(orig)
        return f"returns ({', '.join(fixed_parts)})"
    # apply it
    t = re.sub(
        r'returns\s*\(\s*([^)]*?)\s*\)',
        _fix_return_locations,
        t,
    )

    # 7) replace `if (!(msg.sender.call.value(x)())) { throw; }` with checked call + require
    def _fix_throw_call(m):
        indent = m.group('indent') or ''
        amount = m.group('amount')
        return (
            f"{indent}(bool success, ) = msg.sender.call{{value: {amount}}}(\"\");\n"
            f"{indent}require(success);\n"
        )
    t = re.sub(
        r'(?m)^(?P<indent>[ \t]*)if\s*\(\s*!\s*\(\s*msg\.sender\.call\.value\(\s*'
        r'(?P<amount>[^\)]+)\s*\)\s*\(\s*\)\s*\)\s*\)\s*\{\s*throw\s*;\s*\}',
        _fix_throw_call,
        t
    )

    # 8) replace `require(msg.sender.call.value(x)());` with checked call + require
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

    # 9) for function declarations without a body (ending with ';'), ensure they have 'virtual'
    def _add_virtual_to_declaration(m):
        decl = m.group(1)
        semicolon = m.group(2)
        if 'virtual' in decl.split():
            return m.group(0)  # already has it
        if 'override' in decl:
            # insert virtual before first override
            return re.sub(r'\boverride\b', 'virtual override', decl, count=1) + semicolon
        elif 'returns' in decl:
            # insert virtual before returns
            return re.sub(r'\breturns\b', 'virtual returns', decl, count=1) + semicolon
        else:
            # no returns/override: append virtual before semicolon
            return decl.rstrip() + ' virtual' + semicolon

    t = re.sub(
        r'(?m)(function\s+[A-Za-z_]\w*\s*\([^)]*\)\s*(?:[^;{]*?))(;)',
        _add_virtual_to_declaration,
        t
    )

    # 10) if a /// @return line immediately precedes a function declaration with a named return,
    #     prepend that return name to the @return description (unless it's already there)
    def _sync_return_name(m):
        comment = m.group('comment')  # e.g., "   /// @return The balance\n"
        desc = m.group('desc').strip()  # "The balance"
        func_line = m.group('func_line')  # the following function line

        # extract the inside of returns(...)
        ret_match = re.search(r'returns\s*\(\s*([^)]*)\)', func_line)
        if not ret_match:
            return m.group(0)  # no returns clause; skip

        returns_inner = ret_match.group(1)
        # split top-level by commas (naively; acceptable since return lists are usually flat)
        parts = [p.strip() for p in returns_inner.split(',') if p.strip()]
        if len(parts) != 1:
            return m.group(0)  # only handle single return value for now

        part = parts[0]
        # try to extract the name (e.g., "uint256 balance" or "string memory s")
        name_match = re.match(r'(?:[\w\[\]\s]+?\s+)?([A-Za-z_]\w*)\s*$', part)
        if not name_match:
            return m.group(0)  # unnamed return or unrecognized; skip
        ret_name = name_match.group(1)

        # if description already starts with the name (case-insensitive), skip
        if desc.lower().startswith(ret_name.lower() + ' ' ) or desc.lower() == ret_name.lower():
            return m.group(0)

        # rebuild comment: preserve original indent
        indent = re.match(r'^(\s*)///', comment).group(1) if re.match(r'^(\s*)///', comment) else ''
        new_comment = f"{indent}/// @return {ret_name} {desc}\n"
        return new_comment + func_line

    t = re.sub(
        r'(?m)^(?P<comment>\s*///\s*@return\s+(?P<desc>[^\n]+)\n)(?P<func_line>\s*function[^\n]*returns\s*\([^)]*\)[^\n;{]*;)',
        _sync_return_name,
        t
    )

    # 1) constant → view (including declarations ending in ';')
    # replace 'constant' with 'view' anywhere in a function header (before the body or semicolon)
    t = re.sub(
        r'(?ms)(\bfunction\b[^;{]*?)\bconstant\b',
        lambda m: m.group(1) + 'view',
        t
    )
    return t


def transform_solidity(src: str) -> str:
    t = src

    # 1) Update version pragma to ^0.8.0 (unless already that)
    t = re.sub(
        r'(?m)^\s*pragma solidity\s+(?!\^?0\.8\.0)[\^~=]?[0-9]+\.[0-9]+\.[0-9]+\s*;',
        'pragma solidity ^0.8.0;',
        t
    )

    # 1.5) replace old `if (cond) throw;` with require(!cond);
    t = re.sub(
        r'if\s*\(\s*([A-Za-z_]\w*)\s*\)\s*throw\s*;',
        r'require(!\1);',
        t
    )

    # 2) uint → uint256 (word boundary)
    t = re.sub(r'\buint\b', 'uint256', t)

    # 3) now → block.timestamp
    t = re.sub(r'\bnow\b', 'block.timestamp', t)

    # 4) Replace any `.call.value(expr)` with `.call{value: expr}`
    t = re.sub(
        r'(?P<prefix>\.call)\.value\(\s*(?P<amt>[^)]+?)\s*\)',
        lambda m: f"{m.group('prefix')}{{value: {m.group('amt').strip()}}}",
        t
    )

    # 5) Merge all function-related rewrites
    t = transform_functions(t)

    # 6) replace old `var x = …;` with `uint256 x = …;`
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
    with open(infile, 'r', encoding='utf-8') as f:
        src = f.read()
    transformed = transform_solidity(src)
    with open(outfile, 'w', encoding='utf-8') as f:
        f.write(transformed)
    print(f"✅ Transformed code written to {outfile}")

if __name__ == "__main__":
    main()
