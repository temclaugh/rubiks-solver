open Types

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
  let open Printf in
  let p s i =
    printf "%s%2d " s i;
  in
  let newLine () = printf "\n" in
  for i = 0 to 2 do
    printf "            ";
    for j = 0 to 2 do
      let index = 3 * i + j in
      p (color2string cube.(index)) index
    done;
    newLine ();
  done;
  for i = 0 to 2 do
    for j = 0 to 2 do
      let index = 9 + 3 * i + j in
      p (color2string cube.(index)) index
    done;
    for j = 0 to 2 do
      let index = 18 + 3 * i + j in
      p (color2string cube.(index)) index
    done;
    for j = 0 to 2 do
      let index = 27 + 3 * i + j in
      p (color2string cube.(index)) index
    done;
    for j = 0 to 2 do
      let index = 36 + 3 * i + j in
      p (color2string cube.(index)) index
    done;
    newLine ();
  done;
  for i = 0 to 2 do
    printf "            ";
    for j = 0 to 2 do
      let index = 45 + 3 * i + j in
      p (color2string cube.(index)) index
    done;
    newLine ();
  done; ()

let _ =
  let open Turns in
  let moves = [r; u'; r; u; r; u; r; u'; r'; u';r2] in
  let moves = [b2] in
  let rec apply moves cube =
    match moves with
    | [] -> cube
    | move::tl -> apply tl (move cube)
  in
  let cube = apply moves (initCube ()) in
  printCube cube

