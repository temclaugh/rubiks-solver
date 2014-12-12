#include "korfs.h"

hash_set_t corner_table;

move_t solution[20];
int solution_length;

void load_corner_table(char *path) {
  corner_table = new_hash_set(hash_cube_index, hash_cube_equals);
  FILE *fp = fopen(path, "r");
  char buf[256];
  int counter = 0;
  while (fgets(buf, sizeof(buf), fp)) {
    ++counter;
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
    hash_cube_t h = decompress(compressed_cube);
    h.dist = dist;
    insert(&corner_table, &h);
    if (counter > 10000) {
      break;
    }
  }
  fclose(fp);
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
  cube *c_ = extract_corners(c);
  hash_cube_t h = hash_cube(c_);
  int h0 = hash_lookup(&corner_table, &h);
  delete_cube(c_);
  return h0;
}

int search(cube *c, int depth, int bound) {
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
    cube *c_ = cube_expand[i](c);
    int t = search(c_, depth + 1, bound);
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
  load_corner_table("corners.csv");
  cube *c = get_scramble();
  print_cube(c);
  if (c == NULL) {
    return 0;
  }

  int bound = heuristic(c);
  while (1) {
    int t = search(c, 0, bound);
    if (t == FOUND) {
      print_solution();
      break;
    }
    bound = t;
  }
  delete_cube(c);
  free_hash_set(&corner_table);
}
