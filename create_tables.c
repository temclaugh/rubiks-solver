#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "cube.h"
#include "queue.h"
#include "hash_set.h"

int main(void) {
  cube *c = corner_cube();
  hash_cube_t h = hash_cube(c);
  cube *c_ = reconstruct(&h);
  print_cube(c);
  print_cube(c_);
/*
  cube *(*turns[18])(cube *c) = {
    turn_u, turn_u_, turn_u2, turn_d, turn_d_,
    turn_d2, turn_l, turn_l_, turn_l2, turn_r,
    turn_r_, turn_r2, turn_f, turn_f_, turn_f2,
    turn_b, turn_b_, turn_b2,
  };
  cube *c = corner_cube();

  hash_set_t hash_set = new_hash_set(hash_cube_index, hash_cube_equals);

  free_hash_set(&hash_set);
  cube *c = corner_cube();
  queue q = new_queue();
  enqueue(&q, a);
  int depth = 0;
  while (queue_size(&q) != 0) {
    int n = queue_size(&q);
    printf("%d: ", depth);
    for (int i = 0; i < n; ++i) {
      int val = dequeue(&q);
      if (val < 100) {
        enqueue(&q, 2 * val);
        enqueue(&q, 2 * val + 1);
      }
      printf("%d ", val);
    }
    printf("\n");
    ++depth;
  }

  free_hash_set(hash_set);
  return 0;
  */
}
