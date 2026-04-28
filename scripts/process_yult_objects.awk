#!/usr/bin/env awk -f
#
# process_yult_objects.awk
#
# Replaces "call(...)" inside objects named "__Yult__..." with "IMPERSONATECALL(caller(), ...)"
# This allows the opponent to call methods of these objects and have the calls inside these methods do other calls as if the opponent address did them.

BEGIN {
    # State for the top-level target object
    inside_target       = 0   # are we inside __Yult…_deployed ?
    waiting_for_target  = 0   # saw its header but not the '{' yet
    target_depth        = 0   # brace‐depth within that object

    # State for any nested object we should skip
    inside_nested       = 0   # are we inside a nested object?
    waiting_for_nested  = 0   # saw nested-object header but not its '{'
    nested_depth        = 0   # brace‐depth of that nested object

    in_comment          = 0   # /* … */ tracking
}

# Strip comments & strings into a clean buffer
function make_clean(line, i, c, clean) {
    clean = ""
    i = 1
    while (i <= length(line)) {
        c = substr(line,i,1)
        cc = substr(line,i,2)
        if (in_comment) {
            if (cc=="*/") {
                in_comment=0; i+=2
            } else i++
        }
        else if (cc=="/*") {
            in_comment=1; i+=2
        }
        else if (cc=="//") {
            break                      # skip rest
        }
        else if (c=="\"") {            # double-quoted string
            clean = clean c; i++
            while (i<=length(line)) {
                c = substr(line,i,1); clean = clean c
                if (c=="\\") { i+=2; clean = clean substr(line,i-1,1) }
                else if (c=="\"") { i++; break }
                else i++
            }
        }
        else if (c=="'") {          # single-quoted string
            clean = clean c; i++
            while (i<=length(line)) {
                c = substr(line,i,1); clean = clean c
                if (c=="\\") { i+=2; clean = clean substr(line,i-1,1) }
                else if (c=="'") { i++; break }
                else i++
            }
        }
        else {
            clean = clean c
            i++
        }
    }
    return clean
}

{
    original = $0
    clean    = make_clean(original)

    # Count braces in the *code* (i.e. clean)
    # but use a copy so we don't destroy `clean` for pattern tests
    code = clean
    inc  = gsub(/\{/, "", code)
    dec  = gsub(/\}/, "", code)

    # ── Detect the target object header ─────────────────────────
    if (!inside_target && !waiting_for_target) {
        if (clean ~ /^[[:space:]]*object[[:space:]]+"__Yult[[:alnum:]_]*_deployed"[[:space:]]*$/) {
            waiting_for_target = 1
            # grab the name into target_name
            # Check if 'clean' contains the pattern: object followed by spaces and then a quoted name
            if (match(clean, /object[[:space:]]+"[[:alnum:]_]+"/)) {
              # Extract the matched substring from 'clean' using RSTART and RLENGTH set by match()
              matched = substr(clean, RSTART, RLENGTH)
              # Find the first quote
              first_quote = index(matched, "\"")
              # Extract substring after first quote
              rest = substr(matched, first_quote + 1)
              # Find the second quote in the remainder
              second_quote = index(rest, "\"")
              # Extract the string inside the quotes
              target_name = substr(rest, 1, second_quote - 1)
            }
            #match(clean,
            #      /object[[:space:]]+"([[:alnum:]_]*)"/,
            #      arr)
            #target_name = arr[1]
            print "⤷ Processing object: " target_name > "/dev/stderr"
            print original; next
        }
        if (clean ~ /^[[:space:]]*object[[:space:]]+"__Yult[[:alnum:]_]*_deployed"[[:space:]]*\{/) {
            inside_target      = 1
            target_depth       = inc - dec
            # grab the name into target_name
            # Check if 'clean' contains the pattern: object followed by spaces and then a quoted name
            if (match(clean, /object[[:space:]]+"[[:alnum:]_]+"/)) {
              # Extract the matched substring from 'clean' using RSTART and RLENGTH set by match()
              matched = substr(clean, RSTART, RLENGTH)
              # Find the first quote
              first_quote = index(matched, "\"")
              # Extract substring after first quote
              rest = substr(matched, first_quote + 1)
              # Find the second quote in the remainder
              second_quote = index(rest, "\"")
              # Extract the string inside the quotes
              target_name = substr(rest, 1, second_quote - 1)
            }
            #match(clean,
            #      /object[[:space:]]+"([[:alnum:]_]*)"/,
            #      arr)
            #target_name = arr[1]
            print "⤷ Processing object: " target_name > "/dev/stderr"
            print original; next
        }
    }
    else if (waiting_for_target) {
        if (clean ~ /\{/) {
            inside_target      = 1
            waiting_for_target = 0
            target_depth       = inc - dec
        }
        print original; next
    }

    # ── If inside the target, maybe enter/exit nested, do replacement ──
    if (inside_target) {
        # First handle nested-object detection (only when not already nested)
        if (!inside_nested && !waiting_for_nested) {
            # nested header on its own line
            if (clean ~ /^[[:space:]]*object[[:space:]]+"[[:alnum:]_]+"[[:space:]]*$/) {
                waiting_for_nested = 1
                print original; 
                # still update target depth to know when target ends
                target_depth += inc - dec
                next
            }
            # nested header + brace
            if (clean ~ /^[[:space:]]*object[[:space:]]+"[[:alnum:]_]+"[[:space:]]*\{/) {
                inside_nested      = 1
                nested_depth       = inc - dec
                print original
                target_depth      += inc - dec
                # grab the name into target_name
                next
            }
        }
        else if (waiting_for_nested) {
            if (clean ~ /\{/) {
                inside_nested      = 1
                waiting_for_nested = 0
                nested_depth       = inc - dec
            }
            print original
            target_depth += inc - dec
            next
        }

        # now update depths
        target_depth += inc - dec
        if (inside_nested) {
            nested_depth += inc - dec
        }

        # perform replacement only when *not* inside a nested object
        if (!inside_nested) {
          # Replace call( at start of line
          if (original ~ /^call\(/) {
            sub(/^call\(/, "IMPERSONATECALL(caller(), ", original)
          }
          # Replace call( preceded by non-word char
          while (match(original, /[^a-zA-Z0-9_]call\(/)) {
            pos = RSTART
            original = substr(original, 1, pos) "IMPERSONATECALL(caller(), " substr(original, pos + 6)
          }
        }

        print original

        # exit nested if we're done with it
        if (inside_nested && nested_depth <= 0) {
            inside_nested = 0
        }
        # exit target if done
        if (target_depth <= 0) {
            inside_target = 0
        }
        next
    }

    # ── Outside the target: just print ─────────────────────────────
    print original
}
