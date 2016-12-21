PLUGIN=pptx_example

all: $(PLUGIN).cmxs $(PLUGIN).cma

$(PLUGIN).cmxs: $(PLUGIN).ml Makefile
	ocamlopt.opt -g -shared -o $(PLUGIN).cmxs -I +compiler-libs $(PLUGIN).ml

$(PLUGIN).cma: $(PLUGIN).ml Makefile
	ocamlc.opt -a -o $(PLUGIN).cma -I +compiler-libs $(PLUGIN).ml

clean:
	rm -f *.cm? *.cm?? *.o *~
