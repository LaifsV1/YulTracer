#!/bin/bash

# Define color codes
GREEN='\033[0;32m'
TEAL='\033[0;36m'
RED='\033[0;31m'
BOLD_GREEN="\033[1;32m"
BOLD_TEAL="\033[1;38;5;36m"
NC='\033[0m' # No Color

# Define input/output directory
BASEDIR="solidity_yulInterpreterTests_89b73b6_v0.8.26/"
INPUT_DIR="../programs/$BASEDIR"
OUTPUT_DIR="out/$BASEDIR"

# Print message indicating the start of file processing
echo -e "${TEAL}Running interpreter on $INPUT_DIR...${NC}"

# Run the process_files.sh script
bash process_files.sh $INPUT_DIR $OUTPUT_DIR 2

# Hardcoded dummy directory path for comparison
EXPECTED_OUTPUT_DIR="${INPUT_DIR}expected_output/"

# Print message indicating the start of file comparison
echo -e "${TEAL}Comparing outputs...${NC}"

echo $OUTPUT_DIR
echo $EXPECTED_OUTPUT_DIR

# Run the compare_directories.sh script
bash compare_directories.sh $OUTPUT_DIR $EXPECTED_OUTPUT_DIR
