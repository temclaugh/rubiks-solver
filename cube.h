#ifndef CUBE_H
#define CUBE_H
#define NUM_FACES 6
#define NUM_FACE_STICKERS 9
#define NUM_STICKERS NUM_FACES * NUM_FACE_STICKERS
#define COLOR_ENTROPY 4

typedef enum {
  WHITE = 0,
  YELLOW = 1,
  RED = 2,
  ORANGE = 3,
  BLUE = 4,
  GREEN = 5,
  BLANK = 6,
} color_t;

typedef enum {
  U = 0, U_ = 1, U2 = 2,
  D = 3, D_ = 4, D2 = 5,
  L = 6, L_ = 7, L2 = 8,
  R = 9, R_ = 10, R2 = 11,
  F = 12, F_ = 13, F2 = 14,
  B = 15, B_ = 16, B2 = 17,
  NO_MOVE = 18,
} move_t;

typedef struct {
  unsigned char stickers[NUM_STICKERS];
} cube;

typedef struct {
  unsigned char h[12];
  unsigned char dist;
} hash_cube_t;

typedef hash_cube_t QUEUE_DATA;
typedef hash_cube_t HASH_DATA;
typedef int STACK_DATA;

cube *(*cube_expand[18])(cube *c);

cube *init_cube(void);
void delete_cube(cube *c);
bool cube_solved(cube *c);
bool cube_compare(cube *x, cube *y);
cube *corner_cube(void);
cube *extract_corners(cube *c);
char color2char(color_t color);
char *move2string(move_t move);
void print_cube(cube* c);
void print_cube_flat(cube* c);
bool is_center(int index);
hash_cube_t hash_cube(cube *c);
bool hash_cube_equals(hash_cube_t *h0, hash_cube_t *h1);
unsigned int hash_cube_index(hash_cube_t *h);
cube *reconstruct(hash_cube_t *h);
hash_cube_t decompress(char *s);

cube *turn_u(cube *c);
cube *turn_u_(cube *c);
cube *turn_u2(cube *c);
cube *turn_d(cube *c);
cube *turn_d_(cube *c);
cube *turn_d2(cube *c);
cube *turn_l(cube *c);
cube *turn_l_(cube *c);
cube *turn_l2(cube *c);
cube *turn_r(cube *c);
cube *turn_r_(cube *c);
cube *turn_r2(cube *c);
cube *turn_f(cube *c);
cube *turn_f_(cube *c);
cube *turn_f2(cube *c);
cube *turn_b(cube *c);
cube *turn_b_(cube *c);
cube *turn_b2(cube *c);

#endif
