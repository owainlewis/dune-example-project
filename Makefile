all: clean build

.PHONY: build
build:
	dune build bin/main.exe

.PHONY: exec
exec:
	dune exec bin/main.exe

.PHONY: clean
clean:
	dune clean
