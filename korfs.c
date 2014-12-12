#include "korfs.h"

#define MAX(a,b) (a > b) ? a : b

hash_set_t corner_table;
hash_set_t edge1_table;
hash_set_t edge2_table;

move_t solution[20];
int solution_length;

hash_set_t load_table(char *path, cube *((*init)(cube*))) {
  hash_set_t new_table = new_hash_set(hash_cube_index, hash_cube_equals);
  FILE *fp = fopen(path, "r");
  char buf[256];
  while (fgets(buf, sizeof(buf), fp)) {
    char *comma_position = strchr(buf, ',');
    char *newline_position = strchr(buf, '\n');
    if (comma_position == NULL || newline_position == NULL) {
      fprintf(stderr, "Error: corner table invalid formatting") ;
    }
    *comma_position = '\0';
    *newline_position = '\0';
    char compressed_cube[25];
    strcpy(compressed_cube, buf);
    int dist = atoi(comma_position + 1);
    hash_cube_t h = decompress(compressed_cube, init);
    h.dist = dist;
    insert(&new_table, &h);
  }
  fclose(fp);
  return new_table;
}

cube *get_scramble() {
  cube *c = init_cube();
  char buf[8];
  while (scanf("%s", (char*) &buf) == 1) {
    move_t move = string2move(buf);
    if (move == NO_MOVE) {
      printf("Error: invalid scramble");
      return NULL;
    }
    cube *temp = c;
    c = cube_expand[move](c);
    delete_cube(temp);
  }
  return c;

}

void print_solution() {
  for (int i = 0; i < solution_length; ++i) {
    printf("%s\n", move2string(solution[i]));
  }
}

int heuristic(cube *c) {
  cube *c_corners = copy_cube(c);
  c_corners = extract_corners(c_corners);
  hash_cube_t hash_0 = hash_cube(c_corners);
  int h0 = hash_lookup(&corner_table, &hash_0);
  delete_cube(c_corners);

  return h0;

  cube *c_edges1 = copy_cube(c);
  c_edges1 = cube_edges1(c_edges1);
  hash_cube_t hash_1 = hash_cube(c_edges1);
  int h1 = hash_lookup(&edge1_table, &hash_1);
  delete_cube(c_edges1);

  cube *c_edges2 = copy_cube(c);
  c_edges2 = cube_edges2(c_edges2);
  hash_cube_t hash_2 = hash_cube(c_edges2);
  int h2 = hash_lookup(&edge2_table, &hash_2);
  delete_cube(c_edges2);
  return h2;

  int guess = MAX(MAX(h0, h1), MAX(h1, h2));
  printf("%d, %d, %d -> %d\n", h0, h1, h2, guess);
  return guess;

}

int search(cube *c, int depth, int bound, move_t prev_move, move_t prev_prev_move) {
  int guess = depth + heuristic(c);
  if (guess > bound) {
    return guess;
  }
  if (cube_solved(c)) {
    solution_length = depth;
    return FOUND;
  }
  int min = INT_MAX;
  for (int i = 0; i < NUM_TURNS; ++i) {
    if (same_face(i, prev_move)) {
      continue;
    }
    if (opposite_face(prev_move, prev_prev_move) && same_face(i, prev_prev_move)) {
      continue;
    }
    cube *c_ = cube_expand[i](c);
    int t = search(c_, depth + 1, bound, i, prev_move);
    delete_cube(c_);
    if (t == FOUND) {
      solution[depth] = i;
      return FOUND;
    }
    if (t < min) {
      min = t;
    }
  }
  return min;
}

int main(void) {
  printf("loading corner table...\n");
  corner_table = load_table("corners.csv", cube_corners);
  printf("loading first edge table...\n");
  //edge1_table = load_table("edges1.csv", cube_edges1);
  printf("loading second edge table...\n\n");
  //edge2_table = load_table("edges2.csv", cube_edges2);
  cube *c = get_scramble();
  print_cube(c);
  printf("solving...\n");
  if (c == NULL) {
    return 0;
  }
  int bound = heuristic(c);
  while (1) {
    printf("searching to a depth of %d\n", bound);
    int t = search(c, 0, bound, NO_MOVE, NO_MOVE);
    if (t == FOUND) {
      print_solution();
      break;
    }
    bound = t;
  }
  delete_cube(c);
  free_hash_set(&corner_table);
}
