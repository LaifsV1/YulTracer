#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <input_directory> <output_directory> <time_limit_in_seconds>"
    exit 1
fi

INPUT_DIR="$1"
OUTPUT_DIR="$2"
TIME_LIMIT="$3"

# Define color codes
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Create the output directory if it does not exist
mkdir -p "$OUTPUT_DIR"

# Iterate over all files in the input directory
for FILE in "$INPUT_DIR"/*; do
    # Check if it is a file and does not end with ~
    if [ -f "$FILE" ] && [[ "$FILE" != *~ ]]; then
        # Get the base filename without the extension
        BASENAME=$(basename "$FILE")
        FILENAME="${BASENAME%.*}"
        
        # Define the output file path
        OUTPUT_FILE="$OUTPUT_DIR/$FILENAME.out"

        # Print the name of the file being checked in green
        echo -e "Processing file: ${GREEN}$BASENAME${NC}"
        
        # Run the command on the file with a time limit and save the output
        if ! timeout "$TIME_LIMIT" dune exec -- yult -i "$FILE" > "$OUTPUT_FILE"; then
            echo "Execution time limit reached for file $FILE" > "$OUTPUT_FILE"
        fi
    fi
done
