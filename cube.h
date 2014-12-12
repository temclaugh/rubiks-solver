#define NUM_FACES 6
#define NUM_FACE_STICKERS 9
#define NUM_STICKERS NUM_FACES * NUM_FACE_STICKERS

typedef enum {WHITE, YELLOW, RED, ORANGE, BLUE, GREEN, BLANK} color_t;

typedef struct {
  unsigned char stickers[NUM_STICKERS];
} cube;

cube *init_cube(void);
void delete_cube(cube *c);
bool cube_compare(cube *x, cube *y);
cube *corner_cube(void);
char color2char(color_t color);
void print_cube(cube* c);
void print_cube_flat(cube* c);

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

