#!/bin/bash

usage() {
  echo "Usage: $0 \"pattern\" file1 file2"
  echo "Example:"
  echo "  $0 \"PredyParticipant_\" build/Deployer_2.json explore.json"
  exit 1
}

if [ "$#" -ne 3 ]; then
  echo "Error: Exactly 3 arguments required."
  usage
fi

pattern=$1
file1=$2
file2=$3

# Check if files exist
if [ ! -f "$file1" ]; then
  echo "❌ Error: File '$file1' does not exist."
  exit 1
fi
if [ ! -f "$file2" ]; then
  echo "❌ Error: File '$file2' does not exist."
  exit 1
fi

echo "ℹ️ Extracting matching names from '$file1' and '$file2' with pattern '$pattern'..."

names1=($(grep -E "$pattern" "$file1" | grep -o '"name": *"[^"]*"' | sed 's/"name": *"\([^"]*\)"/\1/'))
names2=($(grep -E "$pattern" "$file2" | grep -o '"name": *"[^"]*"' | sed 's/"name": *"\([^"]*\)"/\1/'))

if [ ${#names1[@]} -eq 0 ]; then
  echo "❌ No matching names found in '$file1'. Exiting."
  exit 0
fi

if [ ${#names2[@]} -eq 0 ]; then
  echo "❌ No matching names found in '$file2'. Exiting."
  exit 0
fi

if [ ${#names1[@]} -ne ${#names2[@]} ]; then
  echo "⚠️  Warning: Number of matching names differ between files."
  echo "⚠️  $file1 has ${#names1[@]} matches, $file2 has ${#names2[@]} matches."
  echo "⚠️  Proceeding with replacement for minimum count of matches: $(( ${#names1[@]} < ${#names2[@]} ? ${#names1[@]} : ${#names2[@]} ))"
fi

count=0
max=$(( ${#names1[@]} < ${#names2[@]} ? ${#names1[@]} : ${#names2[@]} ))

for i in $(seq 0 $((max - 1))); do
  old_name=${names2[i]}
  new_name=${names1[i]}
  if [ "$old_name" != "$new_name" ]; then
    sed -i'.bak' "s/$old_name/$new_name/g" "$file2" && rm "$file2.bak"
    echo "⤷ Replaced '$old_name' with '$new_name' in '$file2'."
    count=$((count + 1))
  fi
done

echo "✅ Done. $count replacements made."
