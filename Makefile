
all:
	(cd ocamlopt; make)
	(cd hello; make)
	(cd ppx_example; make)

clean:
	(cd ocamlopt; make clean)
	(cd hello; make clean)
	(cd ppx_example; make clean)
