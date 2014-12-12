CC=clang
CFLAGS=-Wall -g
all:
	$(CC) $(CFLAGS) -c cube.c
	$(CC) $(CFLAGS) -c queue.c
	$(CC) $(CFLAGS) -c hash_set.c
	$(CC) $(CFLAGS) -c create_tables.c
	$(CC) $(CFLAGS) cube.o queue.o hash_set.o create_tables.o -o create_tables

clean:
	rm create_tables *.o
