#!/usr/bin/env awk -f
#
# Strips the body of every panic_error_0x11 or panic_error_0x12 function,
# leaving an empty-braced stub.

BEGIN {
    # /* … */ comment state
    in_comment        = 0

    # panic-function state (covers both 0x11 and 0x12)
    waiting_for_panic = 0   # saw the signature line, awaiting the '{'
    inside_panic      = 0   # we’re inside the panic body
    panic_depth       = 0   # brace depth within panic function
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
    # 5) Everything else: print unchanged
    #
    print orig
}
