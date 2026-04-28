#!/usr/bin/env awk -f
#
# Strips the body of every panic_error_0x11 or panic_error_0x12 function,
# leaving an empty-braced stub.
#
# Also strips inlined panic patterns (optimised Yul) of the form:
#     mstore(0, shl(224, 0x4e487b71))
#     mstore(4, 0x11)            — or 0x12
#     revert(0, 0x24)

BEGIN {
    # /* … */ comment state
    in_comment        = 0

    # panic-function state (covers both 0x11 and 0x12)
    waiting_for_panic = 0   # saw the signature line, awaiting the ‘{‘
    inside_panic      = 0   # we’re inside the panic body
    panic_depth       = 0   # brace depth within panic function

    # inlined-panic state: tracks the 3-line sequence
    inline_state      = 0   # 0=idle, 1=saw mstore(0,shl(224,0x4e487b71)), 2=saw mstore(4,0x11/0x12)
    inline_line1      = ""  # buffered first line
    inline_line2      = ""  # buffered second line
}

# Remove comments & string contents so {}/ counting is accurate
function make_clean(line,    i, c, cc, clean) {
    clean = ""; i = 1
    while (i <= length(line)) {
        c  = substr(line,i,1)
        cc = substr(line,i,2)
        if (in_comment) {
            if (cc == "*/") { in_comment=0; i+=2 }
            else             { i++ }
        }
        else if (cc == "/*")  { in_comment=1; i+=2 }
        else if (cc == "//")  { break }
        else if (c == "\"") {
            clean = clean c; i++
            while (i <= length(line)) {
                c = substr(line,i,1); clean = clean c
                if (c == "\\")      { i+=2 }
                else if (c == "\"") { i++; break }
                else                { i++ }
            }
        }
        else if (c == "'") {
            clean = clean c; i++
            while (i <= length(line)) {
                c = substr(line,i,1); clean = clean c
                if (c == "\\")      { i+=2 }
                else if (c == "'")  { i++; break }
                else                { i++ }
            }
        }
        else {
            clean = clean c; i++
        }
    }
    return clean
}

{
    orig  = $0
    clean = make_clean(orig)

    # count braces in code-only text
    code = clean
    inc  = gsub(/\{/, "", code)
    dec  = gsub(/\}/, "", code)

    #
    # 1) Signature + opening brace on same line for 0x11 or 0x12
    #
    if (!inside_panic && !waiting_for_panic && clean ~ /^[[:space:]]*function[[:space:]]+panic_error_0x(11|12)\(\)[[:space:]]*\{/) {
        print orig        # original signature+{
        print "}"         # immediate closing stub
        inside_panic = 1
        panic_depth  = inc - dec
        next
    }

    #
    # 2) Signature alone (no '{') for 0x11 or 0x12
    #
    if (!inside_panic && !waiting_for_panic && clean ~ /^[[:space:]]*function[[:space:]]+panic_error_0x(11|12)\(\)[[:space:]]*$/) {
        waiting_for_panic = 1
        print orig
        next
    }

    #
    # 3) Waiting for the '{' after signature
    #
    if (waiting_for_panic) {
        if (clean ~ /\{/) {
            inside_panic      = 1
            waiting_for_panic = 0
            panic_depth       = inc - dec
            print orig
            print "}"
            next
        }
        print orig
        next
    }

    #
    # 4) Inside panic body: skip until matching '}'
    #
    if (inside_panic) {
        panic_depth += (inc - dec)
        if (panic_depth <= 0) {
            inside_panic = 0
        }
        next
    }

    #
    # 5) Inlined panic pattern (optimised Yul) — 3-line sequence
    #

    # If we were mid-sequence but this line breaks the pattern, flush buffered lines
    if (inline_state == 1 && clean !~ /mstore\(4,[[:space:]]*0x(11|12)\)/) {
        print inline_line1
        inline_state = 0
    }
    if (inline_state == 2 && clean !~ /revert\(0,[[:space:]]*0x24\)/) {
        print inline_line1
        print inline_line2
        inline_state = 0
    }

    # Step 1: detect the panic selector line
    if (inline_state == 0 && clean ~ /mstore\(0,[[:space:]]*shl\(224,[[:space:]]*0x4e487b71\)\)/) {
        inline_line1 = orig
        inline_state = 1
        next
    }

    # Step 2: detect the panic code line (0x11 or 0x12)
    if (inline_state == 1 && clean ~ /mstore\(4,[[:space:]]*0x(11|12)\)/) {
        inline_line2 = orig
        inline_state = 2
        next
    }

    # Step 3: detect the revert — drop all three lines
    if (inline_state == 2 && clean ~ /revert\(0,[[:space:]]*0x24\)/) {
        inline_state = 0
        next
    }

    #
    # 6) Everything else: print unchanged
    #
    print orig
}
