COMPILER=ocamlopt

all:
	#ocamlopt -o cube types.ml turns.ml search.ml cube.ml
	$(COMPILER) -S -o createTable types.ml turns.ml cube.ml search.ml createTable.ml

clean:
	-rm *.cmo *.cmi createTable 
