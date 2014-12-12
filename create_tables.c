#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "cube.h"
#include "queue.h"
#include "hash_set.h"

#define CORNER_NODES 88179840
#define EDGE_NODES 42577920

void create_table(cube *(*construct_cube)(cube*),
                      hash_cube_t (*hash_cube)(cube*),
                      cube *(*reconstruct_stickers)(hash_cube_t*),
                      int total_count
                      ) {
  hash_set_t hash_set = new_hash_set(hash_cube_index, hash_cube_equals);
  queue q = new_queue();

  cube *c0 = construct_cube(init_cube());
  hash_cube_t h0 = hash_cube(c0);
  delete_cube(c0);

  enqueue(&q, h0);
  insert(&hash_set, &h0);

  int count = 0;
  int depth = 0;
  while (queue_size(&q) != 0) {
    int n = queue_size(&q);
    for (int i = 0; i < n; ++i) {
      ++count;
      if (count % 1000 == 0) {
        fprintf(stderr, "%f\n", (float) count / total_count);
      }

      hash_cube_t val = dequeue(&q);
      cube *c1 = reconstruct_stickers(&val);
      print_cube_flat(c1);
      printf(",%d\n", depth);

      for (int i = 0; i < 18; ++i) {
        cube *c2 = cube_expand[i](c1);
        hash_cube_t h1 = hash_cube(c2);
        if (!contains(&hash_set, &h1)) {
          enqueue(&q, h1);
          insert(&hash_set, &h1);
        }
        delete_cube(c2);
      }
      delete_cube(c1);
    }
    ++depth;
  }

  free_queue(&q);
  free_hash_set(&hash_set);
}

int main(int argc, char *argv[]) {

  /*
  cube *c0 = cube_edges1(init_cube());
  hash_cube_t h = hash_cube(c0);
  cube *c1 = reconstruct_edges1(&h);
  print_cube(c0);
  print_cube(c1);
  return 0;
  */

  if (argc != 2) {
    fprintf(stderr, "Usage: ./create_table {corners, edges1, edges2}\n");
    return 0;
  }
  if (!strcmp(argv[1], "corners")) {
    create_table(cube_corners, hash_cube, reconstruct_corners, CORNER_NODES);
  } else if (!strcmp(argv[1], "edges1")) {
    create_table(cube_edges1, hash_cube, reconstruct_edges1, EDGE_NODES);
  } else if (!strcmp(argv[1], "edges2")) {
    create_table(cube_edges2, hash_cube, reconstruct_edges2, EDGE_NODES);
  } else {
    fprintf(stderr, "Usage: ./create_table {corners, edge1, edge2}\n");
    return 0;
  }
}
