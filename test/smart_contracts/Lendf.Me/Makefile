ENTRY_OBJECT_NAME   := Deployer
EXPLORE_OBJECT_NAME := MoneyMarket
CORE_ARGS  ?= -g -b 2 -o-call-stack 3 -deploy-value 0 -o-uint-domain "1" -o-default-spending 1 -no-wait -trace-length 12

# Option 1: All non-admin functions including events and fallback (41 entries)
# ABI_FILTER_ARGS := --keep-pattern "MoneyMarket" "__Yult__*" --exclude-function-pattern "_*" --contract-function "__Yult__Toolbox:mint_and_approve"
# Option 2: All non-admin functions excluding events and fallback (24 entries)
# ABI_FILTER_ARGS := --keep-pattern "MoneyMarket" "__Yult__*" --exclude-function-pattern "_*" --exclude-types event fallback --contract-function "__Yult__Toolbox:mint_and_approve"
# Option 3: Only supply() and mint_and_approve() (2 entries)
# ABI_FILTER_ARGS := --keep-pattern "MoneyMarket" "__Yult__*" --contract-function "MoneyMarket:supply" --contract-function "__Yult__Toolbox:mint_and_approve"
# Option 4: Core MoneyMarket operations + mint_and_approve (6 entries)
ABI_FILTER_ARGS := --keep-pattern "MoneyMarket" "__Yult__*" \
--contract-function "__Yult__Toolbox:mint_and_approve" \
--contract-function "MoneyMarket:supply"



ifndef YULTRACER_ROOT
$(error YULTRACER_ROOT is not set. Set it to the YulTracer root, e.g.: export YULTRACER_ROOT=/path/to/YulTracer)
endif
empty :=
space := $(empty) $(empty)
include $(subst $(space),\ ,$(YULTRACER_ROOT))/scripts/yultracer.mk
