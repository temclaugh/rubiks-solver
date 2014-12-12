#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

#include "cube.h"

cube *init_cube(void) {
  printf("bool size: %lu\n", sizeof(true));
  printf("cube size: %lu\n", sizeof(cube));
  cube *c = malloc(sizeof(cube));
  color_t colors[] = {YELLOW, GREEN, ORANGE, BLUE, RED, WHITE};
  for (int i = 0; i < NUM_FACES; ++i) {
    for (int j = 0; j < NUM_FACE_STICKERS; ++j) {
      c->stickers[9 * i + j] = colors[i];
    }
  }
  return c;
}

void delete_cube(cube *c) {
  free(c);
}

cube *copy_cube(cube *c) {
  cube *c_ = malloc(sizeof(cube));
  for (int i = 0; i < NUM_STICKERS; ++i) {
    c_->stickers[i] = c->stickers[i];
  }
  return c_;
}

bool cube_compare(cube *x, cube *y) {
  for (int i = 0; i < NUM_STICKERS; ++i) {
    if (x->stickers[i] != y->stickers[i]) {
      return false;
    }
  }
  return true;
}

cube *corner_cube(void) {
  cube *c = init_cube();
  bool even = true;
  for (int offset = 0; offset < 54; offset += 9) {
    for (int i = 0; i < 9; ++i) {
      int index = offset + i;
      bool odd = !(index % 2 == 0);
      if ((odd && even ) || !(odd || even)) {
        c->stickers[index] = BLANK;
      }
    }
    even = !even;
  }
  return c;
}

char color2char(color_t color) {
  switch (color) {
    case WHITE:
      return 'W';
    case YELLOW:
      return 'Y';
    case RED:
      return 'R';
    case ORANGE:
      return 'O';
    case BLUE:
      return 'B';
    case GREEN:
      return 'G';
    case BLANK:
      return '_';
  }
  return 's';
}

void print_cube(cube* c) {
  for (int i = 0; i < 3; ++i) {
    printf("            ");
    for (int j = 0; j < 3; ++j) {
      int index = 3 * i + j;
      char color = color2char(c->stickers[index]);
      printf("%c%d ", color, is_center(index));
    }
    printf("\n");
  }
  for (int i = 0; i < 3; ++i) {
    for (int offset = 9; offset < 45; offset += 9) {
      for (int j = 0; j < 3; ++j) {
        int index = offset + 3 * i + j;
        char color = color2char(c->stickers[index]);
        printf("%c%d ", color, is_center(index));
      }
    }
    printf("\n");
  }
  for (int i = 0; i < 3; ++i) {
    printf("            ");
    for (int j = 0; j < 3; ++j) {
      int index = 45 + 3 * i + j;
      char color = color2char(c->stickers[index]);
      printf("%c%d ", color, is_center(index));
    }
    printf("\n");
  }
  printf("\n");
}

void print_cube_flat(cube* c) {
  char output[NUM_STICKERS];
  for (int i = 0; i < NUM_STICKERS; ++i) {
    output[i] = color2char(c->stickers[i]);
  }
  printf("%s\n", output);
}

bool is_center(int index) {
  return index % 9 == 4;
}

void print_bin(int n) {
  char s[9];
  memset(s, '0', 8);
  s[8] = '\0';
  int i = 0;
  while (n) {
    if (n & 1) {
      s[7 - i] = '1';
    }
    n >>= 1;
    ++i;
  }
  printf("%s", s);
}

hash_cube_t hash_cube(cube *c) {
  hash_cube_t h;
  memset(h.h, 0, 12);
  int bit_position = 0;
  for (int i = 0; i < NUM_STICKERS; ++i) {
    if (c->stickers[i] == BLANK || is_center(i)) {
      continue;
    }
    int byte_position = bit_position / 8;
    int offset = bit_position % 8;
    unsigned int result = c->stickers[i] << (COLOR_ENTROPY - offset);
    h.h[byte_position] |= result;
    //printf("%c = %d at index %d. byte position: %d, bit position %d, offset: %d, result: ", color2char(c->stickers[i]), c->stickers[i], i, byte_position, bit_position, offset);
    //print_bin(result);
    //printf("\n");
    bit_position += COLOR_ENTROPY;
  }
  return h;
}

bool hash_cube_equals(hash_cube_t *h0, hash_cube_t *h1) {
  for (int i = 0; i < 12; ++i) {
    if (h0->h[i] != h1->h[i]) {
      return false;
    }
  }
  return true;
}

unsigned int hash_cube_index(hash_cube_t *h) {
  unsigned int hash = 2166136261;
  for (int i = 0; i < 12; ++i) {
    hash *= 16777619;
    hash ^= h->h[i];
  }
  return hash;
}

cube *reconstruct(hash_cube_t *h) {
  cube *c = corner_cube();
  int bit_position = 0;
  for (int i = 0; i < NUM_STICKERS; ++i) {
    if (c->stickers[i] == BLANK || is_center(i)) {
      continue;
    }
    int byte_position = bit_position / 8;
    int offset = bit_position % 8;
    int val = (h->h[byte_position] >> (COLOR_ENTROPY - offset)) & 15;
    c->stickers[i] = val;
    bit_position += COLOR_ENTROPY;
  }
  return c;
}

int clockwise(int i) { return (i / 3) + (6 - 3 * (i % 3)); }
int counter_clockwise(int i) { return 2 - (i / 3) + 3 * (i % 3); }
int one_eighty(int i) { return 8 - i; }

cube *turn_u(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 0;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + clockwise(i)];
  }
  c_->stickers[9] = c->stickers[18];
  c_->stickers[10] = c->stickers[19];
  c_->stickers[11] = c->stickers[20];
  c_->stickers[18] = c->stickers[27];
  c_->stickers[19] = c->stickers[28];
  c_->stickers[20] = c->stickers[29];
  c_->stickers[27] = c->stickers[36];
  c_->stickers[28] = c->stickers[37];
  c_->stickers[29] = c->stickers[38];
  c_->stickers[36] = c->stickers[9];
  c_->stickers[37] = c->stickers[10];
  c_->stickers[38] = c->stickers[11];
  return c_;
}

cube *turn_u_(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 0;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + counter_clockwise(i)];
  }
  c_->stickers[18] = c->stickers[9];
  c_->stickers[19] = c->stickers[10];
  c_->stickers[20] = c->stickers[11];
  c_->stickers[27] = c->stickers[18];
  c_->stickers[28] = c->stickers[19];
  c_->stickers[29] = c->stickers[20];
  c_->stickers[36] = c->stickers[27];
  c_->stickers[37] = c->stickers[28];
  c_->stickers[38] = c->stickers[29];
  c_->stickers[9] = c->stickers[36];
  c_->stickers[10] = c->stickers[37];
  c_->stickers[11] = c->stickers[38];
  return c_;
}

cube *turn_u2(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 0;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + one_eighty(i)];
  }
  c_->stickers[9] = c->stickers[27];
  c_->stickers[10] = c->stickers[28];
  c_->stickers[11] = c->stickers[29];
  c_->stickers[18] = c->stickers[36];
  c_->stickers[19] = c->stickers[37];
  c_->stickers[20] = c->stickers[38];
  c_->stickers[27] = c->stickers[9];
  c_->stickers[28] = c->stickers[10];
  c_->stickers[29] = c->stickers[11];
  c_->stickers[36] = c->stickers[18];
  c_->stickers[37] = c->stickers[19];
  c_->stickers[38] = c->stickers[20];
  return c_;
}

cube *turn_d(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 45;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + clockwise(i)];
  }
  c_->stickers[24] = c->stickers[15];
  c_->stickers[25] = c->stickers[16];
  c_->stickers[26] = c->stickers[17];
  c_->stickers[33] = c->stickers[24];
  c_->stickers[34] = c->stickers[25];
  c_->stickers[35] = c->stickers[26];
  c_->stickers[42] = c->stickers[33];
  c_->stickers[43] = c->stickers[34];
  c_->stickers[44] = c->stickers[35];
  c_->stickers[15] = c->stickers[42];
  c_->stickers[16] = c->stickers[43];
  c_->stickers[17] = c->stickers[44];
  return c_;
}

cube *turn_d_(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 45;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + counter_clockwise(i)];
  }
  c_->stickers[15] = c->stickers[24];
  c_->stickers[16] = c->stickers[25];
  c_->stickers[17] = c->stickers[26];
  c_->stickers[24] = c->stickers[33];
  c_->stickers[25] = c->stickers[34];
  c_->stickers[26] = c->stickers[35];
  c_->stickers[33] = c->stickers[42];
  c_->stickers[34] = c->stickers[43];
  c_->stickers[35] = c->stickers[44];
  c_->stickers[42] = c->stickers[15];
  c_->stickers[43] = c->stickers[16];
  c_->stickers[44] = c->stickers[17];
  return c_;
}

cube *turn_d2(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 45;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + one_eighty(i)];
  }
  c_->stickers[15] = c->stickers[33];
  c_->stickers[16] = c->stickers[34];
  c_->stickers[17] = c->stickers[35];
  c_->stickers[24] = c->stickers[42];
  c_->stickers[25] = c->stickers[43];
  c_->stickers[26] = c->stickers[44];
  c_->stickers[33] = c->stickers[15];
  c_->stickers[34] = c->stickers[16];
  c_->stickers[35] = c->stickers[17];
  c_->stickers[42] = c->stickers[24];
  c_->stickers[43] = c->stickers[25];
  c_->stickers[44] = c->stickers[26];

  return c_;
}

cube *turn_l(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 9;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + clockwise(i)];
  }
  c_->stickers[0] = c->stickers[44];
  c_->stickers[3] = c->stickers[41];
  c_->stickers[6] = c->stickers[38];
  c_->stickers[18] = c->stickers[0];
  c_->stickers[21] = c->stickers[3];
  c_->stickers[24] = c->stickers[6];
  c_->stickers[45] = c->stickers[18];
  c_->stickers[48] = c->stickers[21];
  c_->stickers[51] = c->stickers[24];
  c_->stickers[44] = c->stickers[45];
  c_->stickers[41] = c->stickers[48];
  c_->stickers[38] = c->stickers[51];

  return c_;
}

cube *turn_l_(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 9;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + counter_clockwise(i)];
  }
  c_->stickers[44] = c->stickers[0];
  c_->stickers[41] = c->stickers[3];
  c_->stickers[38] = c->stickers[6];
  c_->stickers[0] = c->stickers[18];
  c_->stickers[3] = c->stickers[21];
  c_->stickers[6] = c->stickers[24];
  c_->stickers[18] = c->stickers[45];
  c_->stickers[21] = c->stickers[48];
  c_->stickers[24] = c->stickers[51];
  c_->stickers[45] = c->stickers[44];
  c_->stickers[48] = c->stickers[41];
  c_->stickers[51] = c->stickers[38];
  return c_;
}

cube *turn_l2(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 9;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + one_eighty(i)];
  }
  c_->stickers[44] = c->stickers[18];
  c_->stickers[41] = c->stickers[21];
  c_->stickers[38] = c->stickers[24];
  c_->stickers[0] = c->stickers[45];
  c_->stickers[3] = c->stickers[48];
  c_->stickers[6] = c->stickers[51];
  c_->stickers[18] = c->stickers[44];
  c_->stickers[21] = c->stickers[41];
  c_->stickers[24] = c->stickers[38];
  c_->stickers[45] = c->stickers[0];
  c_->stickers[48] = c->stickers[3];
  c_->stickers[51] = c->stickers[6];
  return c_;
}

cube *turn_r(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 27;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + clockwise(i)];
  }
  c_->stickers[42] = c->stickers[2];
  c_->stickers[39] = c->stickers[5];
  c_->stickers[36] = c->stickers[8];
  c_->stickers[2] = c->stickers[20];
  c_->stickers[5] = c->stickers[23];
  c_->stickers[8] = c->stickers[26];
  c_->stickers[20] = c->stickers[47];
  c_->stickers[23] = c->stickers[50];
  c_->stickers[26] = c->stickers[53];
  c_->stickers[47] = c->stickers[42];
  c_->stickers[50] = c->stickers[39];
  c_->stickers[53] = c->stickers[36];
  return c_;
}

cube *turn_r_(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 27;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + counter_clockwise(i)];
  }
  c_->stickers[2] = c->stickers[42];
  c_->stickers[5] = c->stickers[39];
  c_->stickers[8] = c->stickers[36];
  c_->stickers[20] = c->stickers[2];
  c_->stickers[23] = c->stickers[5];
  c_->stickers[26] = c->stickers[8];
  c_->stickers[47] = c->stickers[20];
  c_->stickers[50] = c->stickers[23];
  c_->stickers[53] = c->stickers[26];
  c_->stickers[42] = c->stickers[47];
  c_->stickers[39] = c->stickers[50];
  c_->stickers[36] = c->stickers[53];

  return c_;
}

cube *turn_r2(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 27;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + one_eighty(i)];
  }
  c_->stickers[2] = c->stickers[47];
  c_->stickers[5] = c->stickers[50];
  c_->stickers[8] = c->stickers[53];
  c_->stickers[20] = c->stickers[42];
  c_->stickers[23] = c->stickers[39];
  c_->stickers[26] = c->stickers[36];
  c_->stickers[47] = c->stickers[2];
  c_->stickers[50] = c->stickers[5];
  c_->stickers[53] = c->stickers[8];
  c_->stickers[42] = c->stickers[20];
  c_->stickers[39] = c->stickers[23];
  c_->stickers[36] = c->stickers[26];
  return c_;
}

cube *turn_f(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 18;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + clockwise(i)];
  }
  c_->stickers[6] = c->stickers[17];
  c_->stickers[7] = c->stickers[14];
  c_->stickers[8] = c->stickers[11];
  c_->stickers[17] = c->stickers[47];
  c_->stickers[14] = c->stickers[46];
  c_->stickers[11] = c->stickers[45];
  c_->stickers[47] = c->stickers[27];
  c_->stickers[46] = c->stickers[30];
  c_->stickers[45] = c->stickers[33];
  c_->stickers[27] = c->stickers[6];
  c_->stickers[30] = c->stickers[7];
  c_->stickers[33] = c->stickers[8];
  return c_;
}

cube *turn_f_(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 18;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + counter_clockwise(i)];
  }
  c_->stickers[17] = c->stickers[6];
  c_->stickers[14] = c->stickers[7];
  c_->stickers[11] = c->stickers[8];
  c_->stickers[47] = c->stickers[17];
  c_->stickers[46] = c->stickers[14];
  c_->stickers[45] = c->stickers[11];
  c_->stickers[27] = c->stickers[47];
  c_->stickers[30] = c->stickers[46];
  c_->stickers[33] = c->stickers[45];
  c_->stickers[6] = c->stickers[27];
  c_->stickers[7] = c->stickers[30];
  c_->stickers[8] = c->stickers[33];
  return c_;
}

cube *turn_f2(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 18;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + one_eighty(i)];
  }
  c_->stickers[17] = c->stickers[27];
  c_->stickers[14] = c->stickers[30];
  c_->stickers[11] = c->stickers[33];
  c_->stickers[47] = c->stickers[6];
  c_->stickers[46] = c->stickers[7];
  c_->stickers[45] = c->stickers[8];
  c_->stickers[27] = c->stickers[17];
  c_->stickers[30] = c->stickers[14];
  c_->stickers[33] = c->stickers[11];
  c_->stickers[6] = c->stickers[47];
  c_->stickers[7] = c->stickers[46];
  c_->stickers[8] = c->stickers[45];
  return c_;
}

cube *turn_b(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 36;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + clockwise(i)];
  }
  c_->stickers[0] = c->stickers[29];
  c_->stickers[1] = c->stickers[32];
  c_->stickers[2] = c->stickers[35];
  c_->stickers[29] = c->stickers[53];
  c_->stickers[32] = c->stickers[52];
  c_->stickers[35] = c->stickers[51];
  c_->stickers[53] = c->stickers[15];
  c_->stickers[52] = c->stickers[12];
  c_->stickers[51] = c->stickers[9];
  c_->stickers[15] = c->stickers[0];
  c_->stickers[12] = c->stickers[1];
  c_->stickers[9] = c->stickers[2];
  return c_;
}

cube *turn_b_(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 36;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + counter_clockwise(i)];
  }
  c_->stickers[29] = c->stickers[0];
  c_->stickers[32] = c->stickers[1];
  c_->stickers[35] = c->stickers[2];
  c_->stickers[53] = c->stickers[29];
  c_->stickers[52] = c->stickers[32];
  c_->stickers[51] = c->stickers[35];
  c_->stickers[15] = c->stickers[53];
  c_->stickers[12] = c->stickers[52];
  c_->stickers[9] = c->stickers[51];
  c_->stickers[0] = c->stickers[15];
  c_->stickers[1] = c->stickers[12];
  c_->stickers[2] = c->stickers[9];
  return c_;
}

cube *turn_b2(cube *c) {
  cube *c_ = copy_cube(c);
  int offset = 36;
  for (int i = 0; i < 9; ++i) {
    c_->stickers[offset + i] = c->stickers[offset + one_eighty(i)];
  }
  c_->stickers[29] = c->stickers[15];
  c_->stickers[32] = c->stickers[12];
  c_->stickers[35] = c->stickers[9];
  c_->stickers[53] = c->stickers[0];
  c_->stickers[52] = c->stickers[1];
  c_->stickers[51] = c->stickers[2];
  c_->stickers[15] = c->stickers[29];
  c_->stickers[12] = c->stickers[32];
  c_->stickers[9] = c->stickers[35];
  c_->stickers[0] = c->stickers[53];
  c_->stickers[1] = c->stickers[52];
  c_->stickers[2] = c->stickers[51];
  return c_;
}

