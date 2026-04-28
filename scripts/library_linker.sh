#!/usr/bin/env bash
set -euo pipefail

RED=$'\033[0;31m'
GREEN=$'\033[0;32m'
YELLOW=$'\033[1;33m'
BLUE=$'\033[0;34m'
RESET=$'\033[0m'
ERROR="${RED}[ERROR]${RESET} "
DONE="${GREEN}[DONE]${RESET} "
WARN="${YELLOW}[WARN]${RESET} "
INFO="${BLUE}[INFO]${RESET} "
STEP="${GREEN}->${RESET} "

# 0) Max number of iterations the linker will tolerate
MAX_LINKER_ITERS=3

# 0) Files:

if [ $# -lt 2 ]; then
  echo "Usage: $0 <combined-yul-file> <build-dir-with-all-yul-files>" >&2
  exit 1
fi

src_yul="$1"
build_dir="$2"

if [[ ! -f $src_yul ]]; then
  echo "${ERROR}$src_yul not found!"
  exit 1
fi

if [[ ! -d $build_dir ]]; then
  echo "${ERROR}$build_dir not found or not a directory!"
  exit 1
fi


base=$(basename "$src_yul" .yul)               # “Deployer”
linker_0="$build_dir/${base}_linker_0.yul"          # build/linker_1.yul
linker_1="$build_dir/${base}_linker_1.yul"          # build/linker_1.yul
linker_2="$build_dir/${base}_linker_2.yul"          # build/linker_2.yul

#echo "${INFO}Source:    $src_yul"
#echo "${INFO}Step 1 out: $linker_1"
#echo "${INFO}Final out: $linker_2"

# make a backup copy of the starting yul file
cp -f "$src_yul" "$linker_0"

#
# 1) delete the last non-empty line from the deployer. It should contain a closing brace } of the top-level object
#

last_line=$(grep -n '[^[:space:]]' $src_yul | tail -1 | cut -d: -f1)
head -n $(( last_line - 1 )) $linker_0 > $linker_1

# Declare an associative array to hold raw → object_name mappings
declare -A mapping


#
# Steps (2) a d (3) below must repeat because each library we bring in may contain other libraries too
# To be on the safe size we have a max number of repetitions.
#

# keep track of which raws we’ve already seen
declare -A seen_raws

# iteration counter
iters=0

# loop until no new raws *or* we hit max iters
while (( iters < MAX_LINKER_ITERS )); do
  echo "${STEP}Linking Iteration $((iters + 1))"


  #
  # 2) Extract all unique raw strings mentioned in linkersymbol("...") calls in Deployer.yul
  #
  mapfile -t raw_strings < <(
    grep -Erho 'linkersymbol\("[^"]*"\)' $linker_1 \
      | sed -E 's/^linkersymbol\("([^"]*)"\)$/\1/' \
      | sort -u \
    || true
    ) # the "|| true" here is because if grep returns no match, it returns an error code and "set -euo pipefail" above would terminate the script


  # filter to only NEW raws
  new_raws=()
  for raw in "${raw_strings[@]}"; do
    if [[ -z ${seen_raws[$raw]:-} ]]; then
      new_raws+=("$raw")
      seen_raws["$raw"]=1
    fi
  done

  # if none new, break early
  if [[ ${#new_raws[@]} -eq 0 ]]; then
    echo "${DONE}No new linkersymbols found; stopping after $((iters + 1)) iterations."
    break
  fi

  echo "${INFO}Found ${#new_raws[@]} new library uses to process."

  #
  # 3) For each raw string, find the corresponding object name in the files inside the build dir
  #
  for raw in "${new_raws[@]}"; do
    prefix=${raw%%:*}   # strip off the colon-suffix for matching in comments
    object_root=${raw#*:} # this is the root of the object name

    found=0                  # initialize flag as not found
    for file in "$build_dir"/*; do
      [[ -f $file ]] || continue

      # grab the first '///' comment line, if any
      first_comment=$(grep -m1 -E '^/// @use-src [0-9]+:"[^"]+"$' "$file" || true)

      # if that comment contains our prefix…
      if [[ -n $first_comment && $first_comment == *\""$prefix"\"* ]]; then
        # extract the object name
        object_name=$(grep -m1 '^object ' "$file" \
        | sed -E 's/^object "([^"]+)".*$/\1/')

        # Check if object_name matches the pattern: object_root + "_" + number
        if [[ $object_name =~ ^${object_root}_[0-9]+$ ]]; then
          found=1
          mapping["$raw"]=$object_name
          cat "$file" >> "$linker_1"
          break  # stop searching other files once we’ve found a matching one
        fi
        # if it doesn't match, continue searching
      fi
    done
    if [[ $found -eq 0 ]]; then
      echo "${ERROR}No matching object found for $raw"
      exit 1
    fi
  done
  iters=$(( iters + 1 ))
done

# check for iteration-cap
if (( iters >= MAX_LINKER_ITERS )); then
  echo "${ERROR}Reached maximum linker iterations ($MAX_LINKER_ITERS) before resolving all linkersymbols."
  exit 1
fi

#
# 4) Replace in linker_1.yul: linkersymbol("raw") → linkersymbol("object_name")
#
echo "${STEP}Appending library objects in $linker_1"
for raw in "${!mapping[@]}"; do
  obj="${mapping[$raw]}"

  # escape forward-slashes for sed
  raw_esc=${raw//\//\\/}
  obj_esc=${obj//\//\\/}

  echo "  ->'$obj' replaces '$raw'"
  
  tmp=$(mktemp)
  sed -E \
    "s/linkersymbol\\(\"$raw_esc\"\\)/linkersymbol\\(\"$obj_esc\"\\)/g" \
    $linker_1 \
    > "$tmp" \
    && mv "$tmp" $linker_1
done

echo "${DONE}Library objects linked in $linker_1"

# 
# 4) put back the last closing brace of the top-level object in linker_1.yul
#
echo "}" >> $linker_1


#
# 5) Expand the top-level constructor in linker_2.yul by inserting create/SETLINKER blocks after the first
#    mstore(64, memoryguard(128)) line, with incrementing lib_i names
#

# try primary pattern in lines 1–15 (matches both decimal 128 and hex 0x80)
split_line=$(
  head -n15 "$linker_1" \
    | grep -En -m1 'mstore\(64, memoryguard\((128|0x80)\)\)' \
    | cut -d: -f1 \
    || true
)

if [[ -n $split_line ]]; then
  echo "${DONE}Found primary constructor pattern at line $split_line"
else
  # secondary pattern (matches both decimal 128 and hex 0x80)
  split_line=$(
    head -n15 "$linker_1" \
      | grep -En -m1 'mstore\(64, (128|0x80)\)' \
      | cut -d: -f1 \
      || true
    )
    if [[ -n $split_line ]]; then
      echo "${WARN}Primary constructor pattern not found; used secondary at line $split_line"
    else
      # fallback pattern
      split_line=$(
        head -n15 "$linker_1" \
          | grep -n -m1 'mstore(64, _1)' \
          | cut -d: -f1 \
          || true
        )
        if [[ -n $split_line ]]; then
          echo "${WARN}Primary and secondary constructor pattern not found; used fallback at line $split_line"
        else
          echo "${ERROR}Could not find either 'mstore(64, memoryguard(128/0x80))' or 'mstore(64, _1)' in the first 15 lines of $linker_1"
          exit 1
        fi
    fi
fi

echo "${STEP}Inserting Linker code after line $split_line"

# write the head (until and including the split line)
head -n "$split_line" $linker_1 > $linker_2

# append one block per object_name, with an incrementing counter
i=1
for obj in "${mapping[@]}"; do
  {
    echo "        let lib_${i} := mload(64)"
    echo "        codecopy(lib_${i}, dataoffset(\"$obj\"), datasize(\"$obj\"))"
    echo "        let lib_${i}_address := create(0, lib_${i}, datasize(\"$obj\"))"
    echo "        SETLINKER(\"$obj\", lib_${i}_address)"
  } >> $linker_2
  i=$((i + 1))
done

# append the rest of the file
tail -n +$((split_line + 1)) $linker_1 >> $linker_2

echo "${DONE}Linker code written to $linker_2"

cp -f "$linker_2" "$src_yul"

echo "${DONE}$linker_2 copied to $src_yul (backup kept at $linker_0)"


