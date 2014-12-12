#include "stack.h"

stack stack_new() {
  stack s;
  s.sz = 0;
  return s;
}

void stack_push(stack *s, STACK_DATA val) {
  if (s->sz == STACK_CAPACITY) {
    fprintf(stderr, "attempting to push to full stack\n");
    return;
  }
  s->data[s->sz++] = val;
}
STACK_DATA stack_pop(stack *s) {
  if (s->sz == 0) {
    fprintf(stderr, "attempting to pop from empty stack\n");
  }
  return s->data[--s->sz];
;
}
unsigned int stack_size(stack *s) {
  return s->sz;
}
void stack_free(stack *s) {
  return;
}
