#!/bin/bash

OCAML_VERSION=$(ocaml --version | awk '{print $5}')

echo "Setting up workspace for OCaml ${OCAML_VERSION}"

opam switch hello-dune --alias-of ${OCAML_VERSION}

eval `opam config env`

opam install merlin ocp-indent dune utop
