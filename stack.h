#ifndef STACK_H
#define STACK_H

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "cube.h"

#define STACK_CAPACITY 20

typedef struct {
  STACK_DATA data[STACK_CAPACITY];
  unsigned int sz;
} stack;

stack stack_new(void);
void stack_push(stack *s, STACK_DATA val);
STACK_DATA stack_pop(stack *s);
unsigned int stack_size(stack *s);
void stack_free(stack *s);

#endif
