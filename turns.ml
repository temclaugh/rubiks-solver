open Types
open Array

(*
0 8
1 7
2 6
3 5
4 4
5 3
6 2
7 1
8 0
*)

let clockwise i = (i / 3) + (6 - 3 * (i mod 3))
let counterClockwise i = 2 - (i / 3) + 3 * (i mod 3)
let oneEighty i = 8 - i

let u cube =
  let newCube = copy cube in
  let offset = 0 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(clockwise i);
  done;
  newCube.(9) <- cube.(18);
  newCube.(10) <- cube.(19);
  newCube.(11) <- cube.(20);
  newCube.(18) <- cube.(27);
  newCube.(19) <- cube.(28);
  newCube.(20) <- cube.(29);
  newCube.(27) <- cube.(36);
  newCube.(28) <- cube.(37);
  newCube.(29) <- cube.(38);
  newCube.(36) <- cube.(9);
  newCube.(37) <- cube.(10);
  newCube.(38) <- cube.(11);
  newCube

let u' cube =
  let newCube = copy cube in
  let offset = 0 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(counterClockwise i);
  done;
  newCube.(18) <- cube.(9);
  newCube.(19) <- cube.(10);
  newCube.(20) <- cube.(11);
  newCube.(27) <- cube.(18);
  newCube.(28) <- cube.(19);
  newCube.(29) <- cube.(20);
  newCube.(36) <- cube.(27);
  newCube.(37) <- cube.(28);
  newCube.(38) <- cube.(29);
  newCube.(9) <- cube.(36);
  newCube.(10) <- cube.(37);
  newCube.(11) <- cube.(38);
  newCube

let u2 cube =
  let newCube = copy cube in
  let offset = 0 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(oneEighty i);
  done;
  newCube.(9) <- cube.(27);
  newCube.(10) <- cube.(28);
  newCube.(11) <- cube.(29);
  newCube.(18) <- cube.(36);
  newCube.(19) <- cube.(37);
  newCube.(20) <- cube.(38);
  newCube.(27) <- cube.(9);
  newCube.(28) <- cube.(10);
  newCube.(29) <- cube.(11);
  newCube.(36) <- cube.(18);
  newCube.(37) <- cube.(19);
  newCube.(38) <- cube.(20);
  newCube

let d cube =
  let newCube = copy cube in
  let offset = 45 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(clockwise i);
  done;
  newCube.(24) <- cube.(15);
  newCube.(25) <- cube.(16);
  newCube.(26) <- cube.(17);
  newCube.(33) <- cube.(24);
  newCube.(34) <- cube.(25);
  newCube.(35) <- cube.(26);
  newCube.(42) <- cube.(33);
  newCube.(43) <- cube.(34);
  newCube.(44) <- cube.(35);
  newCube.(15) <- cube.(42);
  newCube.(16) <- cube.(43);
  newCube.(17) <- cube.(44);
  newCube

let d' cube =
  let newCube = copy cube in
  let offset = 45 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(counterClockwise i);
  done;
  newCube.(15) <- cube.(24);
  newCube.(16) <- cube.(25);
  newCube.(17) <- cube.(26);
  newCube.(24) <- cube.(33);
  newCube.(25) <- cube.(34);
  newCube.(26) <- cube.(35);
  newCube.(33) <- cube.(42);
  newCube.(34) <- cube.(43);
  newCube.(35) <- cube.(44);
  newCube.(42) <- cube.(15);
  newCube.(43) <- cube.(16);
  newCube.(44) <- cube.(17);
  newCube

let d2 cube =
  let newCube = copy cube in
  let offset = 45 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(oneEighty i);
  done;
  newCube.(15) <- cube.(33);
  newCube.(16) <- cube.(34);
  newCube.(17) <- cube.(35);
  newCube.(24) <- cube.(42);
  newCube.(25) <- cube.(43);
  newCube.(26) <- cube.(44);
  newCube.(33) <- cube.(15);
  newCube.(34) <- cube.(16);
  newCube.(35) <- cube.(17);
  newCube.(42) <- cube.(24);
  newCube.(43) <- cube.(25);
  newCube.(44) <- cube.(26);
  newCube

let l cube =
  let newCube = copy cube in
  newCube

let l' cube =
  let newCube = copy cube in
  newCube

let l2 cube =
  let newCube = copy cube in
  newCube

let r cube =
  let newCube = copy cube in
  newCube

let r' cube =
  let newCube = copy cube in
  newCube

let r2 cube =
  let newCube = copy cube in
  newCube

let b cube =
  let newCube = copy cube in
  newCube

let b' cube =
  let newCube = copy cube in
  newCube

let b2 cube =
  let newCube = copy cube in
  newCube

let t cube =
  let newCube = copy cube in
  newCube

let t' cube =
  let newCube = copy cube in
  newCube

let t2 cube =
  let newCube = copy cube in
  newCube

