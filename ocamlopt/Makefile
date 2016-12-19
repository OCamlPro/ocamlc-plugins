all: ocamlopt.dyn


OCAMLLIB:=$(shell ocamlc -where)
include ${OCAMLLIB}/Makefile.config

ocamlopt.dyn: optmain.ml Makefile
	ocamlopt -g -I +compiler-libs -o ocamlopt.dyn \
	    ocamlcommon.cmxa ocamlbytecomp.cmxa ocamloptcomp.cmxa \
	    -ccopt "$(BYTECCLINKOPTS)" optmain.ml

clean:
	rm -f *~ *.cm? *.o ocamlopt.dyn
