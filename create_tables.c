#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "cube.h"

int main(void) {
  cube *c0 = init_cube();
  cube *c1 = turn_r_(c0);
  cube *c2 = turn_f(c1);
  cube *c3 = turn_r(c2);
  cube *c4 = turn_b_(c3);
  cube *c5 = turn_r_(c4);
  cube *c6 = turn_f_(c5);
  cube *c7 = turn_r(c6);
  cube *c8 = turn_b(c7);
  print_cube(c8);
  cube *c9 = turn_r_(c8);
  return 0;
}
