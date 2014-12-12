#include "queue.h"

queue new_queue(void) {
  queue q;
  q.sz = 0;
  q.head = NULL;
  q.tail = NULL;
  return q;
}
void enqueue(queue *q, QUEUE_DATA val) {
  queue_node *new_node = malloc(sizeof(queue_node));
  new_node->val = val;
  new_node->prev = NULL;
  new_node->next = NULL;

  if (q->sz == 0) {
    q->head = new_node;
    q->tail = new_node;
  } else {
    new_node->next = q->tail;
    new_node->next->prev = new_node;
    q->tail = new_node;
  }
  ++q->sz;
}

QUEUE_DATA dequeue(queue *q) {
  if (q->sz == 0) {
    fprintf(stderr, "error: attempting to dequeue empty queue\n");
  }
  QUEUE_DATA val = q->head->val;
  if (q->head == q->tail) {
    free(q->head);
    q->head = NULL;
    q->tail = NULL;
    if (q->sz != 1) {
      fprintf(stderr, "error: something went wrong with dequeue\n");
    }
    q->sz = 0;
  } else {
    queue_node *temp = q->head->prev;
    temp->next = NULL;
    free(q->head);
    q->head = temp;
    --q->sz;
  }
  return val;
}

int queue_size(queue *q) {
  return q->sz;
}
