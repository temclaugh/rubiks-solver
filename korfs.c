#include "stack.h"
#include "korfs.h"

hash_set_t corner_table;

move_t solution[20];
int solution_length;

hash_set_t load_corner_table(char *path) {
  hash_set_t hash_set = new_hash_set(hash_cube_index, hash_cube_equals);
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
    insert(&hash_set, &h);
    if (counter > 10000) {
      break;
    }
  }

  fclose(fp);
  return hash_set;
}

void print_solution() {
  for (int i = 0; i < solution_length; ++i) {
    printf("%s\n", move2string(solution[i]));
  }
}

int heuristic(cube *c) {
  cube *c_ = extract_corners(c);
  hash_cube_t h = hash_cube(c_);
  int dist = hash_lookup(&corner_table, &h);
  delete_cube(c_);
  return dist;
}

int search(cube *c, int depth, int bound) {
  int cost = depth + heuristic(c);
  if (cost > bound) {
    return cost;
  }
  if (cube_solved(c)) {
    solution_length = depth;
    return FOUND;
  }
  int min = INT_MAX;
  for (int i = 0; i < 18; ++i) {
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
  corner_table = load_corner_table("corners.csv");
  cube *c0 = init_cube();
  cube *c1 = turn_r(c0);
  cube *c2 = turn_u(c1);
  cube *c3 = turn_d(c2);

  int bound = heuristic(c3);
  while (1) {
    //int t = search(c3);
    int t = 0;
    if (t == FOUND) {
      print_solution();
      break;
    }
  }
  heuristic(c0);
  //int solved = search(c3, 0, )

  free_hash_set(&corner_table);
}
