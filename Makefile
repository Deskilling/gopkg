GO := go

.DEFAULT_GOAL := test

.PHONY: deps test test-verbose

deps:
	@$(GO) mod download

test: deps
	$(GO) test ./test/...

test-verbose: deps
	$(GO) test -v ./test/...
