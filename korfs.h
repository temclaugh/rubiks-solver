#ifndef KORFS_H
#define KORFS_H
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <stdio.h>
#include <limits.h>

#include "cube.h"
#include "hash_set.h"

#define FOUND -1

hash_set_t load_corner_table(char *path);
void print_solution();
int heuristic(cube *c);




#endif
