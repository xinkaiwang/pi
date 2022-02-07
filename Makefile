SHELL=/bin/bash

# Important targets
.PHONY: clean 
all: demo

GO_BIN ?= go


demo:
	CGO_ENABLED=1 $(GO_BIN) build $(GO_GCFLAGS) -o build/demo ./cmd/demo
