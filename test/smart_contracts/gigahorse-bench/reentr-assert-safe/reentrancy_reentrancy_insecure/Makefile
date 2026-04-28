ENTRY_OBJECT_NAME := Reentrancy_insecure
CORE_ARGS  ?= -g -b 2 -o-call-stack 3 -deploy-value 0 -o-uint-domain "1" -o-default-spending 1 -max-time 1 -o-ret -trace-length 12

ifndef YULTRACER_ROOT
$(error YULTRACER_ROOT is not set. Set it to the YulTracer root, e.g.: export YULTRACER_ROOT=/path/to/YulTracer)
endif
empty :=
space := $(empty) $(empty)
include $(subst $(space),\ ,$(YULTRACER_ROOT))/scripts/yultracer.mk
