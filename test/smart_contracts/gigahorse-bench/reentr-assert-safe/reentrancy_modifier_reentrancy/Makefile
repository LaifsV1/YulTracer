ENTRY_OBJECT_NAME := ModifierEntrancy
CORE_ARGS  ?= -g -b 2 -o-call-stack 3 -deploy-value 0 -o-uint-domain "0x84a65ebeb1b5bc81f9264598ea011316d8b7d86cc8e7e1672dd85300503f7ed5" -o-default-spending 1 -max-time 1 -o-ret -trace-length 12

ifndef YULTRACER_ROOT
$(error YULTRACER_ROOT is not set. Set it to the YulTracer root, e.g.: export YULTRACER_ROOT=/path/to/YulTracer)
endif
empty :=
space := $(empty) $(empty)
include $(subst $(space),\ ,$(YULTRACER_ROOT))/scripts/yultracer.mk
