
# Shared Makefile fragment for YulTracer benchmark programs.
# Include this file from a per-program Makefile after setting:
#
#   ENTRY_OBJECT_NAME   — main contract name (required)
#   EXPLORE_OBJECT_NAME — contract to explore (default: same as ENTRY_OBJECT_NAME)
#   CORE_ARGS           — yult exploration flags (required)
#   ARGS                — extra yult flags (optional)
#   SOLC_INCLUDES       — solc include paths (default: empty)
#   SOLC_REMAPS         — solc remappings (default: empty)
#   ABI_FILTER_ARGS     - a pattern for filtering the abi (default: --keep-pattern "$(EXPLORE_OBJECT_NAME)" keeps all functions); see usage of filter_abi.py
#
# The including Makefile must also define `empty`, `space`, and have validated
# YULTRACER_ROOT before the `include` line, e.g.:
#
#   ifndef YULTRACER_ROOT
#   $(error YULTRACER_ROOT is not set.)
#   endif
#   empty :=
#   space := $(empty) $(empty)
#   include $(subst $(space),\ ,$(YULTRACER_ROOT))/scripts/yultracer.mk
#

SHELL := /bin/bash

# Defaults for optional per-program variables
EXPLORE_OBJECT_NAME ?= $(ENTRY_OBJECT_NAME)
ARGS                ?=
SOLC_INCLUDES       ?=
SOLC_REMAPS         ?=

# Main directories
BASE_DIR  := .
BUILD_DIR := build
SRC_DIR   := src

# which .sol to compile (override when file name differs from ENTRY_OBJECT_NAME)
MAIN_SOL  ?= $(SRC_DIR)/$(ENTRY_OBJECT_NAME).sol
MAIN_STEM := $(basename $(notdir $(MAIN_SOL)))

# where the ABI to explore lives
EXPLORE_ABI := $(BUILD_DIR)/$(EXPLORE_OBJECT_NAME)_explored.json
FULL_EXPLORE_ABI := $(BUILD_DIR)/$(EXPLORE_OBJECT_NAME)_explored_full.json
ABI_FILTER_ARGS ?= --keep-pattern "$(EXPLORE_OBJECT_NAME)"
# Object Names in the Explore ABI file that have to have consistent names with compiled ABI
EXPLORE_ABI_PATTERN ?= $(EXPLORE_OBJECT_NAME)_

# Full ABI
FULL_ABI       := $(BUILD_DIR)/$(MAIN_STEM).json
TARGET_YUL     := $(BUILD_DIR)/$(MAIN_STEM).yul
TARGET_OPT_YUL := $(BUILD_DIR)/$(MAIN_STEM)_opt.yul

# all the source files
SOL_FILES := $(shell find $(BASE_DIR) \
                     -type d \( -name '.vim*' -o -name '.nvim*' \) -prune -o \
                     -type f -name '*.sol' -print)

# default optimisation flags (you can override in the cmd-line or via the optimise target)
OPT_SOLC_FLAGS   := --optimize --ir-optimized
UNOPT_SOLC_FLAGS := --ir
SOLC_FLAGS       ?= $(UNOPT_SOLC_FLAGS)

# programs and scripts
SOLC     := solc
MAKE_CMD := $(MAKE) --no-print-directory

SCRIPTS_DIR 					:= $(subst $(space),\ ,$(YULTRACER_ROOT))/scripts
YULT_FUNCTIONS_SCRIPT := $(SCRIPTS_DIR)/process_yult_functions.sh
YULT_OBJECT_SCRIPT    := $(SCRIPTS_DIR)/run_awk_inplace.sh $(SCRIPTS_DIR)/process_yult_objects.awk
STRIP_PANIC_SCRIPT    := $(SCRIPTS_DIR)/run_awk_inplace.sh $(SCRIPTS_DIR)/remove_checked_arith.awk
ABIPROCESSOR          := $(SCRIPTS_DIR)/process_abi.py
LINKER                := $(SCRIPTS_DIR)/library_linker.sh
UPDATE_EXPLORE_ABI    := $(SCRIPTS_DIR)/update_explore_abi_names.sh
FILTER_EXPLORE_ABI    := $(SCRIPTS_DIR)/filter_abi.py
YULT_INCLUDES         := --include-path $(subst $(space),\ ,$(YULTRACER_ROOT))/include

BOLD   := $(shell tput bold 2>/dev/null || echo)
NORMAL := $(shell tput sgr0 2>/dev/null || echo)
BLUE   := $(shell tput setaf 4 2>/dev/null || echo)
GREEN  := $(shell tput setaf 2 2>/dev/null || echo)
STEP   := $(GREEN)>>>>> $(NORMAL)
MAIN  := $(BLUE)$(BOLD)>>>>> 


# non-optimised build
.PHONY: build
build:
	@echo "$(MAIN)Building $(MAIN_SOL)$(NORMAL)"
	@$(MAKE_CMD) SOLC_FLAGS="$(UNOPT_SOLC_FLAGS)" MSG="WITHOUT" compile link postprocess abi filter_abi update_explore_abi
	@echo "$(MAIN)Finished building $(MAIN_SOL)$(NORMAL)"

# optimised build
.PHONY: build_opt
build_opt:
	@echo "$(MAIN)Building $(MAIN_SOL)$(NORMAL)"
	@$(MAKE_CMD) SOLC_FLAGS="$(OPT_SOLC_FLAGS)" MSG="WITH" compile mv_opt link postprocess abi filter_abi update_explore_abi
	@echo "$(MAIN)Finished building $(MAIN_SOL)$(NORMAL)"

.PHONY: compile
compile:
	@echo "$(STEP)$(BOLD)Compiling $(MAIN_SOL) $(GREEN)$(MSG)$(NORMAL)$(BOLD) optimisation flags... $(NORMAL)"
	@mkdir -p $(BUILD_DIR)
	@$(SOLC) \
		$(YULT_INCLUDES) \
	  $(SOLC_INCLUDES) \
	  --base-path $(BASE_DIR) \
	  --output-dir $(BUILD_DIR) \
	  --overwrite \
		$(SOLC_REMAPS) \
	  $(SOLC_FLAGS) \
	  $(MAIN_SOL)

.PHONY: mv_opt
mv_opt:
	@mv $(TARGET_OPT_YUL) $(TARGET_YUL)

.PHONY: link
link:
	@echo "$(STEP)$(BOLD)Linking $(TARGET_YUL)... $(NORMAL)"
	@mkdir -p $(BUILD_DIR)
	@$(LINKER) $(TARGET_YUL) $(BUILD_DIR)

.PHONY: abi
abi:
	@echo "$(STEP)$(BOLD)Creating Full ABI... $(NORMAL)"
	@mkdir -p $(BUILD_DIR)
	@$(SOLC) \
		$(YULT_INCLUDES) \
	  $(SOLC_INCLUDES) \
	  --base-path $(BASE_DIR) \
		--combined-json abi \
		--pretty-json \
		$(SOLC_REMAPS) \
	  $(MAIN_SOL) > "$(FULL_ABI).tmp"
	@$(ABIPROCESSOR) $(TARGET_YUL) "$(FULL_ABI).tmp" "$(FULL_ABI)"

.PHONY: filter_abi
filter_abi:
	@echo "$(STEP)$(BOLD)Creating full exploration ABI of $(EXPLORE_ABI)... $(NORMAL)"
	@$(FILTER_EXPLORE_ABI) "$(FULL_ABI)" -o "$(FULL_EXPLORE_ABI)" --keep-pattern "$(EXPLORE_OBJECT_NAME)"
	@echo "$(STEP)$(BOLD)Creating filtered exploration ABI of $(EXPLORE_ABI) ($(ABI_FILTER_ARGS))... $(NORMAL)"
	@$(FILTER_EXPLORE_ABI) "$(FULL_ABI)" -o "$(EXPLORE_ABI)" $(ABI_FILTER_ARGS)

.PHONY: update_explore_abi
update_explore_abi:
	@echo "$(STEP)$(BOLD)Updating object names matching $(EXPLORE_ABI_PATTERN) inside $(FULL_EXPLORE_ABI) and $(EXPLORE_ABI)...$(NORMAL)"
	@$(UPDATE_EXPLORE_ABI) $(EXPLORE_ABI_PATTERN) $(FULL_ABI) $(FULL_EXPLORE_ABI)
	@$(UPDATE_EXPLORE_ABI) $(EXPLORE_ABI_PATTERN) $(FULL_ABI) $(EXPLORE_ABI)


# Alias `make postprocess` to do postprocess steps
.PHONY: postprocess
postprocess: postprocess_yult_functions postprocess_yult_objects remove_checked_arith

# Turn fun___yult__... placeholders into opcodes
.PHONY: postprocess_yult_functions
postprocess_yult_functions:
	@echo "$(STEP)$(BOLD)Postprocessing __yult__ functions in $(TARGET_YUL)...$(NORMAL)"
	@$(YULT_FUNCTIONS_SCRIPT) $(TARGET_YUL)

# Turn "call(..." inside "__Yult__..._deployed" objects into "IMPERSONATECALL(caller(), .."
.PHONY: postprocess_yult_objects
postprocess_yult_objects:
	@echo "$(STEP)$(BOLD)postprocessing __Yult__ objects in $(TARGET_YUL)...$(NORMAL)"
	@$(YULT_OBJECT_SCRIPT) $(TARGET_YUL)

# Strip out the Solidity-0.8 panic checks (overflow guards)
.PHONY: remove_checked_arith
remove_checked_arith:
	@echo "$(STEP)$(BOLD)Disabling checked arithmetic (legacy mode)$(NORMAL)"
	@$(STRIP_PANIC_SCRIPT) $(TARGET_YUL)

.PHONY: run
run:
	@echo "$(MAIN)Starting YulTracer exploration...$(NORMAL)"
	$(SHELL) -c 'time dune exec -- yult -i $(TARGET_YUL) -full-abi $(FULL_ABI) -abi $(EXPLORE_ABI) $(CORE_ARGS) $(ARGS)'

.PHONY: run-full-abi
run-full-abi:
	@echo "$(MAIN)Starting YulTracer exploration of the FULL ABI...$(NORMAL)"
	@$(SHELL) -c 'time dune exec -- yult -i $(TARGET_YUL) -full-abi $(FULL_ABI) -abi $(FULL_EXPLORE_ABI) $(CORE_ARGS) $(ARGS)'

.PHONY: clean
clean:
	@rm -rf $(BUILD_DIR)
