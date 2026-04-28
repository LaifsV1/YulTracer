ENTRY_OBJECT_NAME := take_my_ether
CORE_ARGS  ?= -g -b 2 -o-call-stack 3 -deploy-value 10000000000000000000 -o-uint-domain "0,1,2,3,4,5" -o-default-spending 1000000000000000001 -max-time 2592001 -wait-time 2592000 -ini deploy.ini -trace-length 12


ifndef YULTRACER_ROOT
$(error YULTRACER_ROOT is not set. Set it to the YulTracer root, e.g.: export YULTRACER_ROOT=/path/to/YulTracer)
endif
empty :=
space := $(empty) $(empty)
include $(subst $(space),\ ,$(YULTRACER_ROOT))/scripts/yultracer.mk
