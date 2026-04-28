ENTRY_OBJECT_NAME := Deployer
EXPLORE_OBJECT_NAME := FibonacciBalance
CORE_ARGS  ?= -g -b 1 -bfs -trace-length 12

ifndef YULTRACER_ROOT
$(error YULTRACER_ROOT is not set. Set it to the YulTracer root, e.g.: export YULTRACER_ROOT=/path/to/YulTracer)
endif
empty :=
space := $(empty) $(empty)
include $(subst $(space),\ ,$(YULTRACER_ROOT))/scripts/yultracer.mk
