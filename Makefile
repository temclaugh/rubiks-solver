CC=clang
CFLAGS=-Wall -O3 -ggdb3
all:
	$(CC) $(CFLAGS) -c cube.c
	$(CC) $(CFLAGS) -c queue.c
	$(CC) $(CFLAGS) -c hash_set.c
	$(CC) $(CFLAGS) -c stack.c
	$(CC) $(CFLAGS) -c create_tables.c
	$(CC) $(CFLAGS) -c korfs.c
	$(CC) $(CFLAGS) cube.o queue.o hash_set.o create_tables.o -o create_tables
	$(CC) $(CFLAGS) cube.o queue.o hash_set.o stack.o korfs.o -o korfs

clean:
	rm create_tables korfs *.o
