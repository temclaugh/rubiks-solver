type color_t = White | Yellow | Red | Orange | Blue | Green
type turn = Up | Down | Left | Right | Bottom | Top

type cubie_t =
  Corner of color_t ref * color_t ref * color_t ref
| Edge of color_t ref * color_t ref

type face_t = color_t * cubie_t list

type cube_t = {
  front: face_t;
  back: face_t;
  left: face_t;
  right: face_t;
  up: face_t;
  down: face_t
}

let solved cube =
  let rec s color cubies =
    match cubies with
    | [] -> true
    | Corner(color_ref, _, _)::tl | Edge(color_ref, _)::tl ->
      !color_ref = color && s color tl
  in
  s (fst cube.front) (snd cube.front) &&
  s (fst cube.back) (snd cube.back) &&
  s (fst cube.left) (snd cube.left) &&
  s (fst cube.right) (snd cube.right) &&
  s (fst cube.up) (snd cube.up) &&
  s (fst cube.down) (snd cube.down)


let color2string color =
  match color with
  | White -> "W"
  | Yellow -> "Y"
  | Red -> "R"
  | Orange -> "O"
  | Blue -> "B"
  | Green -> "G"

let _ =
  Printf.printf "blah\n"

