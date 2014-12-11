all:
	ocamlc -o cube search.ml types.ml turns.ml cube.ml
	ocamlc -o createTable search.ml types.ml turns.ml cube.ml createTable.ml
