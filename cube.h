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
  U, U_, U2,
  D, D_, D2,
  L, L_, L2,
  R, R_, R2,
  F, F_, F2,
  B, B_, B2,
  NO_MOVE
} move_t;

typedef struct {
  unsigned char stickers[NUM_STICKERS];
} cube;

typedef struct {
  unsigned char h[12];
} hash_cube_t;

typedef hash_cube_t QUEUE_DATA;
typedef hash_cube_t HASH_DATA;

cube *init_cube(void);
void delete_cube(cube *c);
bool cube_compare(cube *x, cube *y);
cube *corner_cube(void);
char color2char(color_t color);
void print_cube(cube* c);
void print_cube_flat(cube* c);
bool is_center(int index);
hash_cube_t hash_cube(cube *c);
bool hash_cube_equals(hash_cube_t *h0, hash_cube_t *h1);
unsigned int hash_cube_index(hash_cube_t *h);
cube *reconstruct(hash_cube_t *h);

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
