ENTRY_OBJECT_NAME := U_BANK
CORE_ARGS  ?= -g -b 2 -o-call-stack 3 -deploy-value 0 -o-uint-domain "0,2000000000000000001" -o-default-spending 2000000000000000001 -max-time 1 -trace-length 12

ifndef YULTRACER_ROOT
$(error YULTRACER_ROOT is not set. Set it to the YulTracer root, e.g.: export YULTRACER_ROOT=/path/to/YulTracer)
endif
empty :=
space := $(empty) $(empty)
include $(subst $(space),\ ,$(YULTRACER_ROOT))/scripts/yultracer.mk
