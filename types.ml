type color_t = White | Yellow | Red | Orange | Blue | Green | Blank
type face = Up | Down | Left | Right | Front | Back | NoFace
type direction = Clockwise | CounterClockwise | OneEighty
type turn_t = face * direction
type cube_t = color_t array
