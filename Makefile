#COMPILER=ocamlopt

#all:
	#ocamlopt -o cube types.ml turns.ml search.ml cube.ml
#	$(COMPILER) -S -o createTable types.ml turns.ml cube.ml search.ml createTable.ml

#clean:
#	-rm *.cmo *.cmi createTable

CC=clang

all:
	$(CC) $(CFLAGS) -c cube.c
	$(CC) $(CFLAGS) -c data_structures.c
	$(CC) $(CFLAGS) -c create_tables.c
	$(CC) $(CFLAGS) cube.o create_tables.o -o create_tables

clean:
	rm create_tables *.o
