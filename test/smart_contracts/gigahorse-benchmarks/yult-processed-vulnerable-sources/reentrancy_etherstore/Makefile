#
#
# Change the following for each new code analysed
#
#

# In case of used external libraries
SOLC_INCLUDES := 
SOLC_REMAPS   := 

# Main directories
BASE_DIR  := .
BUILD_DIR := yul
ABI_DIR	  := abi
SRC_DIR   := src

ENTRY_OBJECT_NAME := EtherStore

# which .sol to compile
MAIN_SOL  := $(SRC_DIR)/$(ENTRY_OBJECT_NAME).sol
MAIN_STEM := $(basename $(notdir $(MAIN_SOL)))

# In case there is a deterministic opponent exhibiting an error
MAIN_DET := $(SRC_DIR)/Deployer.sol
DET_STEM := $(basename $(notdir $(MAIN_DET)))

# where the ABI to explore lives
EXPLORE_ABI := $(ABI_DIR)/$(ENTRY_OBJECT_NAME)_pruned.json
# Object Names in the Exprole ABI file that have to have consistent names with compiled ABI
EXPLORE_ABI_PATTERN:=$(ENTRY_OBJECT_NAME)_


#
#
# Computed Variables
#
#

# Full ABI
FULL_ABI       := $(BUILD_DIR)/$(MAIN_STEM).json
TARGET_YUL     ?= $(BUILD_DIR)/$(MAIN_STEM).yul
TARGET_YUL_OPT := $(BUILD_DIR)/$(MAIN_STEM)_opt.yul
TARGET_YUL_DET := $(BUILD_DIR)/$(DET_STEM).yul



# all the source files
SOL_FILES := $(shell find $(BASE_DIR) \
						 -type d \( -name '.vim*' -o -name '.nvim*' \) -prune -o \
						 -type f -name '*.sol' -print)

# default optimisation flags (you can override in the cmd-line or via the optimise target)
OPT_SOLC_FLAGS   := --optimize --ir-optimized
UNOPT_SOLC_FLAGS := --ir
SOLC_FLAGS       ?= $(UNOPT_SOLC_FLAGS)
#
# Default arguments passed to yult; you can override on the CLI:
CORE_ARGS  ?= -g -b 2 -o-call-stack 3 -deploy-value 0 -o-uint-domain "1000000000000000000" -o-default-spending 1000000000000000000 -max-time 1
ARGS ?=

# programs and scripts
SOLC     := solc
MAKE_CMD := $(MAKE) --no-print-directory

SCRIPTS_DIR := scripts
YULT_FUNCTIONS_SCRIPT := $(SCRIPTS_DIR)/process_yult_functions.sh
YULT_OBJECT_SCRIPT := $(SCRIPTS_DIR)/run_awk_inplace.sh $(SCRIPTS_DIR)/process_yult_objects.awk
STRIP_PANIC_SCRIPT := $(SCRIPTS_DIR)/run_awk_inplace.sh $(SCRIPTS_DIR)/remove_checked_arith.awk
ABIPROCESSOR   := $(SCRIPTS_DIR)/process_abi.py
LINKER         := $(SCRIPTS_DIR)/library_linker.sh
UPDATE_EXPLORE_ABI   := $(SCRIPTS_DIR)/update_explore_abi_names.sh

BOLD   := $(shell tput bold 2>/dev/null || echo)
NORMAL := $(shell tput sgr0 2>/dev/null || echo)


# non-optimised build
.PHONY: normal
normal: $(TARGET_YUL)

.PHONY: deterministic
deterministic: $(TARGET_YUL_DET)

# explicitly optimised
.PHONY: optimised
optimised: $(TARGET_YUL_OPT)

$(TARGET_YUL): $(SOL_FILES)
	@echo "ℹ️ ${BOLD}Building GAME EXPLORATION version, WITHOUT optimisation flags${NORMAL}"
	$(MAKE_CMD) SOLC_FLAGS="$(UNOPT_SOLC_FLAGS)" SOURCE="$(MAIN_SOL)" compile link postprocess abi update_explore_abi

$(TARGET_YUL_OPT): $(SOL_FILES)
	@echo "ℹ️ ${BOLD}Building GAME EXPLORATION version, WITH optimisation flags${NORMAL}"
	$(MAKE_CMD) SOLC_FLAGS="$(OPT_SOLC_FLAGS)" SOURCE="$(MAIN_SOL)" TARGET_YUL="$(TARGET_YUL_OPT)" compile link postprocess abi update_explore_abi

$(TARGET_YUL_DET): $(SOL_FILES)
	@echo "ℹ️ ${BOLD}Building DETERMINISTIC GAME version, WITHOUT optimisation flags${NORMAL}"
	$(MAKE_CMD) SOLC_FLAGS="$(UNOPT_SOLC_FLAGS)" SOURCE="$(MAIN_DET)" compile link postprocess abi update_explore_abi

.PHONY: compile
compile: 
	@echo "⏩ ${BOLD}Compiling $(SOURCE) ... ${NORMAL}"
	@mkdir -p $(BUILD_DIR)
	@$(SOLC) \
	  $(SOLC_INCLUDES) \
	  --base-path $(BASE_DIR) \
	  --output-dir $(BUILD_DIR) \
	  --overwrite \
		$(SOLC_REMAPS) \
	  $(SOLC_FLAGS) \
	  $(SOURCE)

.PHONY: link
link:
	@echo "⏩ ${BOLD}Linking $(TARGET_YUL) ... ${NORMAL}"
	@mkdir -p $(BUILD_DIR)
	$(LINKER) $(TARGET_YUL) $(BUILD_DIR)

.PHONY: abi
abi:
	@echo "⏩ ${BOLD}Creating Full ABI... ${NORMAL}"
	@mkdir -p $(BUILD_DIR)
	@$(SOLC) \
	  $(SOLC_INCLUDES) \
	  --base-path $(BASE_DIR) \
		--combined-json abi \
		--pretty-json \
		$(SOLC_REMAPS) \
	  $(SOURCE) > "$(FULL_ABI).tmp"
	@$(ABIPROCESSOR) $(TARGET_YUL) "$(FULL_ABI).tmp" "$(FULL_ABI)"
	cp $(FULL_ABI) $(EXPLORE_ABI)

.PHONY: update_explore_abi
update_explore_abi: 
	@echo "⏩ ${BOLD}Updating object names matching $(EXPLORE_ABI_PATTERN) inside $(EXPLORE_ABI) ${NORMAL}"
	@bash $(UPDATE_EXPLORE_ABI) $(EXPLORE_ABI_PATTERN) $(FULL_ABI) $(EXPLORE_ABI)


# Alias `make postprocess` to do postprocess steps
.PHONY: postprocess
postprocess: postprocess_yult_functions postprocess_yult_objects remove_checked_arith

# Turn fun___yult__... placeholders into opcodes
.PHONY: postprocess_yult_functions
postprocess_yult_functions:
	@echo "⏩ ${BOLD}Activating __yult__functions(bool)${NORMAL}"
	@bash $(YULT_FUNCTIONS_SCRIPT) $(TARGET_YUL)

# Turn "call(..." inside "__Yult__..._deployed" objects into "IMPERSONATECALL(caller(), .."
.PHONY: postprocess_yult_objects
postprocess_yult_objects:
	@echo "⏩ ${BOLD}postprocessing __Yult__... objects${NORMAL}"
	@$(YULT_OBJECT_SCRIPT) $(TARGET_YUL)

# Strip out the Solidity-0.8 panic checks (overflow guards)
.PHONY: remove_checked_arith
remove_checked_arith:
	@echo "⏩ ${BOLD}Disabling checked arithmetic (legacy mode)${NORMAL}"
	@$(STRIP_PANIC_SCRIPT) $(TARGET_YUL)

.PHONY: run
run: $(TARGET_YUL)
	@echo "⏩ ${BOLD}Starting YulTracer UNOPTIMISED exploration ...${NORMAL}"
	@/bin/bash -c 'time dune exec -- yult -i $(TARGET_YUL) -full-abi $(FULL_ABI) -abi $(EXPLORE_ABI) $(CORE_ARGS) $(ARGS)'

.PHONY: run-full-abi
run-full-abi: $(TARGET_YUL_OPT)
	@echo "⏩ ${BOLD}Starting YulTracer OPTIMISED exploration of the FULL ABI ...${NORMAL}"
	@/bin/bash -c 'time dune exec -- yult -i $(TARGET_YUL_OPT) -full-abi $(FULL_ABI) -abi $(FULL_ABI) $(CORE_ARGS) $(ARGS)'

.PHONY: run-opt
run-opt: $(TARGET_YUL_OPT)
	@echo "⏩ ${BOLD}Starting YulTracer OPTIMISED exploration ...${NORMAL}"
	@/bin/bash -c 'time dune exec -- yult -i $(TARGET_YUL_OPT) -full-abi $(FULL_ABI) -abi $(EXPLORE_ABI) $(CORE_ARGS) $(ARGS)'

.PHONY: run-det
run-det: $(TARGET_YUL_OPT)
	@echo "⏩ ${BOLD}Starting YulTracer OPTIMISED exploration ...${NORMAL}"
	/bin/bash -c 'time dune exec -- yult -i $(TARGET_YUL_DET) -full-abi $(FULL_ABI) -abi $(EXPLORE_ABI) $(CORE_ARGS) $(ARGS)'

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
