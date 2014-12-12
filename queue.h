#ifndef QUEUE_H
#define QUEUE_H
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "cube.h"

typedef struct {
  hash_cube_t c_n;
  unsigned char val;
} hash_node;

typedef struct queue_node {
  QUEUE_DATA val;
  struct queue_node *prev;
  struct queue_node *next;
} queue_node;

typedef struct {
  unsigned int sz;
  queue_node *head;
  queue_node *tail;
} queue;


queue new_queue(void);
void enqueue(queue *q, QUEUE_DATA c_n);
QUEUE_DATA dequeue(queue *q);
int queue_size(queue *q);

#endif
