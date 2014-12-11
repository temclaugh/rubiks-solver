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

let cornerCube () =
  let cube = initCube () in
  let rec loop offset even =
    if offset = 54 then
      cube
    else
      begin
        for i = 0 to 8 do
          let index = offset + i in
          let odd = not (index mod 2 = 0) in
          if (odd && even) || not (odd || even) then
            cube.(index) <- Blank
        done;
        loop (offset + 9) (not even)
      end
  in
  loop 0 true

let cube2string cube = ""


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
  done;
  newLine ()

let printCubeFlat cube =
  for i = 0 to 53 do
    Printf.printf "%s" (color2string cube.(i))
  done

let moves cube =
  let open Turns in
  let turns = [u;u';u2;d;d';d2;l;l';l2;r;r';r2;f;f';f2;b;b';b2] in
  List.map (fun f -> f cube) turns
(*
let _ =
  let open Turns in
  let rec apply moves cube =
    match moves with
    | [] -> cube
    | move::tl -> apply tl (move cube)
  in
  Printf.printf "%b\n" (b2 (b2 (initCube ())) = initCube ())

*)
