type color_t = White | Yellow | Red | Orange | Blue | Green | Blank
type turn = Up | Down | Left | Right | Bottom | Top

type cube_t = color_t array



let initCube () =
  let cube = Array.make 54 Blank in
  let colors = [|Yellow; Green; Orange; Blue; Red; White|] in
  for i = 0 to 5 do
    for j = 0 to 8 do
      cube.(9 * i + j) <- colors.(i)
    done;
  done;
  cube

let color2string (color: color_t) : string =
  match color with
  | White -> "W"
  | Yellow -> "Y"
  | Red -> "R"
  | Orange -> "O"
  | Blue -> "B"
  | Green -> "G"
  | Blank -> "_"

let printCube (cube: cube_t) =
  let p = Printf.printf in
  for i = 0 to 2 do
    p "      ";
    for j = 0 to 2 do
      p "%s " (color2string cube.(3 * i + j))
    done;
    p "\n";
  done;
  for i = 0 to 2 do
    for j = 0 to 2 do
      p "%s " (color2string cube.(9 + 3 * i + j))
    done;
    for j = 0 to 2 do
      p "%s " (color2string cube.(18 + 3 * i + j))
    done;
    for j = 0 to 2 do
      p "%s " (color2string cube.(27 + 3 * i + j))
    done;
    for j = 0 to 2 do
      p "%s " (color2string cube.(36 + 3 * i + j))
    done;
    p "\n";
  done;
  for i = 0 to 2 do
    p "      ";
    for j = 0 to 2 do
      p "%s " (color2string cube.(45 + 3 * i + j))
    done;
    p "\n";
  done; ()

let _ =
  printCube (initCube ())

