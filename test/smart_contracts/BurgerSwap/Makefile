ENTRY_OBJECT_NAME := DummyRouter
CORE_ARGS  ?= -g -b 2 -o-call-stack 3 -deploy-value 0 -o-uint-domain "2000000000000000000000" -o-default-spending 1 -no-wait -o-ret -trace-length 32


ifndef YULTRACER_ROOT
$(error YULTRACER_ROOT is not set. Set it to the YulTracer root, e.g.: export YULTRACER_ROOT=/path/to/YulTracer)
endif
empty :=
space := $(empty) $(empty)
include $(subst $(space),\ ,$(YULTRACER_ROOT))/scripts/yultracer.mk

# --- Deterministic opponent (Deployer.sol) ---
.PHONY: build-det run-det
build-det:
	@$(MAKE_CMD) ENTRY_OBJECT_NAME=Deployer build

run-det:
	@$(MAKE_CMD) ENTRY_OBJECT_NAME=Deployer run
