ENTRY_OBJECT_NAME := PrivateDeposit
CORE_ARGS  ?= -g -max-time 1 -b 2 -o-call-stack 3 -deploy-value 0 -o-uint-domain "1000000000000000000" -o-default-spending 1000000000000000000 -trace-length 12

ifndef YULTRACER_ROOT
$(error YULTRACER_ROOT is not set. Set it to the YulTracer root, e.g.: export YULTRACER_ROOT=/path/to/YulTracer)
endif
empty :=
space := $(empty) $(empty)
include $(subst $(space),\ ,$(YULTRACER_ROOT))/scripts/yultracer.mk
