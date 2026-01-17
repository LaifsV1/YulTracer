#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory1> <directory2>"
    exit 1
fi

DIR1="$1"
DIR2="$2"

# Define color codes
GREEN='\033[0;32m'
BOLD_GREEN="\033[1;32m"
YELLOW='\033[1;33m'
RED='\033[0;31m'
BOLD_RED='\033[1;31m'
TEAL='\033[0;36m'
BOLD_TEAL="\033[1;38;5;36m"
BOLD_LIGHT_BLUE="\033[1;36m"
NC='\033[0m' # No Color

# Initialize a flag to indicate if any mismatches or errors were found
ANY_ERRORS=0

# Function to check if files in one directory match the files in another directory
check_files_match() {
    local dir1="$1"
    local dir2="$2"
    local direction="$3"

    echo -e "${TEAL}${direction}${NC}"

    # Iterate over all files in the first directory
    for FILE1 in "$dir1"/*; do
        # Check if it is a file
        if [ -f "$FILE1" ]; then
            # Get the base filename
            BASENAME=$(basename "$FILE1")
            FILE2="$dir2/$BASENAME"
            
            # Check if the corresponding file exists in the second directory
            if [ -f "$FILE2" ]; then
                # Compare the files
                if cmp -s "$FILE1" "$FILE2"; then
                    echo -e "File $BASENAME: ${GREEN}OK${NC}"
                else
                    echo -e "File $BASENAME: ${YELLOW}FAIL${NC}"
                    ANY_ERRORS=1
                fi
            else
                echo -e "File $BASENAME: ${RED}ERROR - File $FILE2 does not exist.${NC}"
                ANY_ERRORS=1
            fi
        fi
    done
}

# Check files in both directions
check_files_match "$DIR1" "$DIR2" "Checking files from $DIR1 to $DIR2..."
check_files_match "$DIR2" "$DIR1" "Checking files from $DIR2 to $DIR1..."

# Print message for overall result
echo -e "${TEAL}Outcome:${NC}"

# Provide a final summary based on the results
if [ $ANY_ERRORS -eq 0 ]; then
    echo -e "All files match between $DIR1 and $DIR2."
    echo -e "${BOLD_LIGHT_BLUE}All tests passed!${NC}"
else
    echo -e "There are differences between files in $DIR1 and $DIR2."
    echo -e "${BOLD_RED}Some tests failed!${NC}"
fi

exit $ANY_ERRORS
