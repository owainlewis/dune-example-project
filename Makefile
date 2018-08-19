PROJECT=hello-dune

all: clean build

.PHONY: setup-workspace
setup-workspace:
	./scripts/workspace.sh

.PHONY: build
build:
	dune build bin/main.exe

.PHONY: exec
exec:
	dune exec bin/main.exe

.PHONY: clean
clean:
	dune clean
