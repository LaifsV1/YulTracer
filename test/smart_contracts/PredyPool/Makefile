TIME_BOUND		 := 1m
PREDY_VER      ?= PredyPool-attacked-version
FIXED_VER			 := PredyPool-fixed-version

SOLC_INCLUDES  := --include-path "$(CURDIR)/src/$(PREDY_VER)" \
									--include-path "$(CURDIR)/src/ext_libs" \
									--include-path "$(CURDIR)/src"
SOLC_REMAPS    := @uniswap/v3-core=uniswap/v3-core-1.0.0 \
									@uniswap/v3-periphery=uniswap/v3-periphery-1.3.0 \
									@uniswap/lib=uniswap/solidity-lib-4.0.0-alpha \
									@openzeppelin/contracts/utils/Strings.sol=openzeppelin-contracts-4.9.3/contracts/utils/Strings.sol \
									@openzeppelin=openzeppelin-contracts-3.4.1-solc-0.7-2 \
									base64-sol=base64-sol-1.0.1 \
									canonical-weth=canonical-weth-1.4.0
BASE_PATH      := ./
BUILD_DIR      := build
SRC_DIR				 := src
ABI_DIR				 := abi

# which .sol to compile
DEPLOYER_EXPLORATION   := DeployerExploration.sol
DEPLOYER_DETERMINISTIC := DeployerDeterministic.sol
DEPLOYER        			 := Deployer.sol

SOL_FILES      := $(shell find $(BASE_PATH) \
                       \( -type d -name '.vim*' -prune \) -o \
                       \( -type d -name '.nvim*' -prune \) -o \
                       \( -type f -name '*.sol' -print \) )

SOLC           := solc
MAKE_CMD       := $(MAKE) --no-print-directory

SOLC_FLAGS     ?= --ir
#
# Default arguments passed to yult; you can override on the CLI:
ARGS  ?= -g -no-wait -b 2 -o-call-stack 6 -o-uint-domain "1"
EXTRA_ARGS ?=

# Object Names in the exprole.json ABI file that have to have consistent names with compiled ABI
EXPLORE_ABI_PATTERN="PredyParticipant_"

TARGET_YUL  := $(BUILD_DIR)/$(DEPLOYER:.sol=.yul)
TARGET_YUL_OPT  := $(BUILD_DIR)/$(DEPLOYER:.sol=_opt.yul)
TARGET_ABI := $(BUILD_DIR)/$(DEPLOYER:.sol=_2.json)
TMP_JSON := $(TARGET_ABI:.json=.json.tmp)
EXE_YUL := $(BUILD_DIR)/$(DEPLOYER:.sol=_2.yul)
EXPLORE_ABI := $(ABI_DIR)/explore.json

# scripts
SCRIPTS_DIR := scripts
YULT_FUNCTIONS_SCRIPT  = bash $(SCRIPTS_DIR)/process_yult_functions.sh
YULT_OBJECT_SCRIPT  = bash $(SCRIPTS_DIR)/run_awk_inplace.sh $(SCRIPTS_DIR)/process_yult_objects.awk
STRIP_PANIC_SCRIPT  = bash $(SCRIPTS_DIR)/run_awk_inplace.sh $(SCRIPTS_DIR)/remove_checked_arith.awk
ABIPROCESSOR   := python3 $(SCRIPTS_DIR)/process_abi.py
LINKER         := bash $(SCRIPTS_DIR)/library_linker.sh
UPDATE_EXPLORE_ABI   := bash $(SCRIPTS_DIR)/update_explore_abi_names.sh

BOLD   := $(shell tput bold)
NORMAL := $(shell tput sgr0)

.PHONY: normal deterministic compile link optimised clean run preprocess_yult_functions remove_checked_arith preprocess abi update_explore_abi

# non-optimised build
normal: 
	@echo "ℹ️ ${BOLD}Building GAME EXPLORATION version, ${NORMAL}"
	@$(MAKE_CMD) DEPLOYER_SRC="$(DEPLOYER_EXPLORATION)" $(TARGET_YUL)

fixed: 
	@echo "ℹ️ ${BOLD}Building GAME EXPLORATION version, RUNNING ON FIXED VERSION OF THE CODE${NORMAL}"
	@$(MAKE_CMD) DEPLOYER_SRC="$(DEPLOYER_EXPLORATION)" PREDY_VER="$(FIXED_VER)" $(TARGET_YUL) 

deterministic:
	@echo "ℹ️ ${BOLD}Building DETERMINISTIC ATTACK version${NORMAL}"
	@$(MAKE_CMD) DEPLOYER_SRC="$(DEPLOYER_DETERMINISTIC)" $(TARGET_YUL)

$(TARGET_YUL): $(SOL_FILES)
	@$(MAKE_CMD) compile link preprocess $(TARGET_ABI) update_explore_abi

compile: 
	@echo "⏩ ${BOLD}Compiling $(SRC_DIR)/$(DEPLOYER_SRC) ... ${NORMAL}"
	@mkdir -p $(BUILD_DIR)
	@$(SOLC) \
	  $(SOLC_INCLUDES) \
	  --base-path $(BASE_PATH) \
	  --output-dir $(BUILD_DIR) \
	  --overwrite \
		$(SOLC_REMAPS) \
	  $(SOLC_FLAGS) \
	  $(SRC_DIR)/$(DEPLOYER_SRC)

link: $(EXE_YUL)

$(EXE_YUL): $(SOL_FILES)
	@echo "⏩ ${BOLD}Linking... ${NORMAL}"
	@$(LINKER)

abi:
	@echo "⏩ ${BOLD}Creating ABI... ${NORMAL}"
	@$(MAKE_CMD) $(TARGET_ABI)

# generate ABI JSON
$(TARGET_ABI):  $(EXE_YUL)
	@mkdir -p $(BUILD_DIR)
	@$(SOLC) \
	  $(SOLC_INCLUDES) \
	  --base-path $(BASE_PATH) \
		--combined-json abi \
		--pretty-json \
		$(SOLC_REMAPS) \
	  $(SRC_DIR)/$(DEPLOYER_SRC) > $(TMP_JSON)
	@$(ABIPROCESSOR) $(EXE_YUL) $(TMP_JSON) $(TARGET_ABI)

update_explore_abi: 
	@echo "⏩ ${BOLD}Updating $(EXPLORE_ABI) generated object names${NORMAL}"
	@$(UPDATE_EXPLORE_ABI) $(EXPLORE_ABI_PATTERN) $(TARGET_ABI) $(EXPLORE_ABI)


# Alias `make preprocess` to do both steps
preprocess: preprocess_yult_functions preprocess_yult_objects remove_checked_arith

# Turn fun___yult__... placeholders into opcodes
preprocess_yult_functions: $(EXE_YUL)
	@echo "⏩ ${BOLD}Activating __yult__functions(bool)${NORMAL}"
	@$(YULT_FUNCTIONS_SCRIPT) $(EXE_YUL)

# Turn "call(..." inside "__Yult__..._deployed" objects into "IMPERSONATECALL(caller(), .."
preprocess_yult_objects: $(EXE_YUL)
	@echo "⏩ ${BOLD}Preprocessing __Yult__... objects${NORMAL}"
	@$(YULT_OBJECT_SCRIPT) $(EXE_YUL)

# Strip out the Solidity-0.8 panic checks (overflow guards)
remove_checked_arith: $(EXE_YUL)
	@echo "⏩ ${BOLD}Disabling checked arithmetic (legacy mode)${NORMAL}"
	@$(STRIP_PANIC_SCRIPT) $(EXE_YUL)

run:
	@echo "⏩ ${BOLD}Starting YulToolkit exploration ...${NORMAL}"
	@bash -c 'time timeout $(TIME_BOUND) dune exec -- yult -i $(EXE_YUL) -full-abi $(TARGET_ABI) -abi $(EXPLORE_ABI) $(ARGS) $(EXTRA_ARGS); \
	  ec=$$?; \
	  if [ $$ec -eq 124 ]; then \
	    echo "⏱️  Timeout reached after $(TIME_BOUND)"; \
	  fi; \
	  exit $$ec'

clean:
	rm -rf $(BUILD_DIR)
