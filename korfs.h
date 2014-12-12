#ifndef KORFS_H
#define KORFS_H
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <stdio.h>
#include <limits.h>

#include "cube.h"
#include "hash_set.h"
#include "stack.h"

#define FOUND -1

void load_corner_table(char *path);
cube *get_scramble();
void print_solution();
int heuristic(cube *c);
int search(cube *c, int depth, int bound, move_t prev_move, move_t prev_prev_mode);

#endif
