#ifndef HASH_SET_H
#define HASH_SET_H
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <stdio.h>

#include "cube.h"

#define TABLE_SIZE 100000000

typedef struct hash_set_node {
  HASH_DATA val;
  struct hash_set_node *next;
} hash_set_node;

typedef struct {
  hash_set_node **buckets;
  unsigned int sz;
  unsigned int (*hash)(HASH_DATA*);
  bool (*equals)(HASH_DATA*, HASH_DATA*);
} hash_set_t;


hash_set_t new_hash_set(unsigned int (*hash)(HASH_DATA*), bool (*equals)(HASH_DATA*, HASH_DATA*));
void insert(hash_set_t *tbl, HASH_DATA *val);
bool contains(hash_set_t *tbl, HASH_DATA *val);
unsigned int size(hash_set_t *tbl);
void free_hash_set(hash_set_t *tbl);

#endif
