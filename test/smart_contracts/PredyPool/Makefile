ENTRY_OBJECT_NAME   := Deployer
EXPLORE_OBJECT_NAME := PredyParticipant
MAIN_SOL            := src/exploration/Deployer.sol
CORE_ARGS  ?= -g -no-wait -b 2 -o-call-stack 6 -o-uint-domain "1" -trace-length 20

# Expose only the 5 participant operations (exclude predySettlementCallback, predyTradeAfterCallback)
ABI_FILTER_ARGS := --keep-pattern "PredyParticipant" \
  --keep-function createPredyPool supplyLiquidity take trade withdrawLiquidity

# PredyPool version: override with PREDY_VER=PredyPool-fixed-version for the patched code
PREDY_VER  ?= PredyPool-attacked-version

SOLC_INCLUDES := --include-path "$(CURDIR)/src/$(PREDY_VER)" \
  --include-path "$(CURDIR)/src/ext_libs" \
  --include-path "$(CURDIR)/src"

SOLC_REMAPS := @uniswap/v3-core=uniswap/v3-core-1.0.0 \
  @uniswap/v3-periphery=uniswap/v3-periphery-1.3.0 \
  @uniswap/lib=uniswap/solidity-lib-4.0.0-alpha \
  @openzeppelin/contracts/utils/Strings.sol=openzeppelin-contracts-4.9.3/contracts/utils/Strings.sol \
  @openzeppelin=openzeppelin-contracts-3.4.1-solc-0.7-2 \
  base64-sol=base64-sol-1.0.1 \
  canonical-weth=canonical-weth-1.4.0

# ── Build targets ──────────────────────────────────────────────────
# Run `make` to build the vulnerable exploration version, then `make run`.
# See also: `make fixed`, `make deterministic`.
.PHONY: normal fixed deterministic

# Game exploration on the vulnerable (attacked) version
normal: clean build

# Game exploration on the patched (fixed) version
fixed: clean
	@$(MAKE) --no-print-directory build PREDY_VER=PredyPool-fixed-version

# Deterministic attack replay (no game exploration)
deterministic: clean
	@$(MAKE) --no-print-directory build MAIN_SOL=src/deterministic/Deployer.sol

# ── Shared pipeline ───────────────────────────────────────────────
ifndef YULTRACER_ROOT
$(error YULTRACER_ROOT is not set. Set it to the YulTracer root, e.g.: export YULTRACER_ROOT=/path/to/YulTracer)
endif
empty :=
space := $(empty) $(empty)
include $(subst $(space),\ ,$(YULTRACER_ROOT))/scripts/yultracer.mk
