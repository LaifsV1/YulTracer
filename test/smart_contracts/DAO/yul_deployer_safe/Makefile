CORE_ARGS ?= -g -o-uint-domain "0,604800" -wait-first -trace-length 116

# Run `make` or `make run` to explore
.PHONY: run
run:
	@$(SHELL) -c 'time dune exec -- yult -i Deployer.yul -abi DAO_pruned.json -full-abi DAO.json $(CORE_ARGS)'
