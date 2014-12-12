#include "hash_set.h"

hash_set_t new_hash_set(unsigned int (*hash)(HASH_DATA*), bool (*equals)(HASH_DATA*, HASH_DATA*)) {
  hash_set_t hash_set;
  hash_set.buckets = malloc(TABLE_SIZE * sizeof(hash_set_node*));
  memset(hash_set.buckets, 0, TABLE_SIZE * sizeof(hash_set_node*));

  hash_set.sz = 0;

  hash_set.hash = hash;
  hash_set.equals = equals;
  return hash_set;
}

void insert(hash_set_t *tbl, HASH_DATA *val) {
  unsigned int index = tbl->hash(val) % TABLE_SIZE;
  hash_set_node *node = malloc(sizeof(hash_set_node));
  node->val = *val;
  node->next = tbl->buckets[index];
  tbl->buckets[index] = node;
  ++tbl->sz;
}

bool contains(hash_set_t *tbl, HASH_DATA *val) {
  unsigned int index = tbl->hash(val) % TABLE_SIZE;
  hash_set_node *ptr = tbl->buckets[index];
  while (ptr) {
    HASH_DATA val_ = ptr->val;
    if (tbl->equals(val, &val_)) {
      return true;
    }
    ptr = ptr->next;
  }
  return false;

}
unsigned int size(hash_set_t *tbl) {
  return tbl->sz;
}

void free_hash_set(hash_set_t *tbl) {
  for (int i = 0; i < TABLE_SIZE; ++i) {
    hash_set_node *ptr = tbl->buckets[i];
    while (ptr) {
      hash_set_node *temp = ptr;
      ptr = ptr->next;
      free(temp);
    }
  }
  free(tbl->buckets);
}
