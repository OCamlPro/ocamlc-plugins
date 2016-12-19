PLUGIN=hello

all: $(PLUGIN).cmxs $(PLUGIN).cma

$(PLUGIN).cmxs: $(PLUGIN).ml Makefile
	ocamlopt.opt -g -shared -o $(PLUGIN).cmxs $(PLUGIN).ml

$(PLUGIN).cma: $(PLUGIN).ml Makefile
	ocamlc.opt -a -o $(PLUGIN).cma $(PLUGIN).ml

clean:
	rm -f *.cm? *.cm?? *.o *~
