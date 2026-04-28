ENTRY_OBJECT_NAME   := Deployer
EXPLORE_OBJECT_NAME := DAO
CORE_ARGS  ?= -g -o-uint-domain "0,604800" -wait-first -trace-length 116

# Expose newProposal, splitDAO, transfer, vote + fallback from DAO, plus DummyTransferer:transferToCaller
ABI_FILTER_ARGS := --keep-pattern "DAO" "DummyTransferer" --keep-function newProposal splitDAO transfer vote --keep-types fallback --contract-function "DummyTransferer:transferToCaller"

# Override default pattern (DAO_) which also matches DAO_Creator_; anchor to digits
EXPLORE_ABI_PATTERN := DAO_[0-9]


ifndef YULTRACER_ROOT
$(error YULTRACER_ROOT is not set. Set it to the YulTracer root, e.g.: export YULTRACER_ROOT=/path/to/YulTracer)
endif
empty :=
space := $(empty) $(empty)
include $(subst $(space),\ ,$(YULTRACER_ROOT))/scripts/yultracer.mk
