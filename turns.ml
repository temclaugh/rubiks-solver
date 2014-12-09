open Types
open Array

let clockwise i = (i / 3) + (6 - 3 * (i mod 3))
let counterClockwise i = 2 - (i / 3) + 3 * (i mod 3)
let oneEighty i = 8 - i


let u cube =
  let newCube = copy cube in
  let offset = 0 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(offset + clockwise i);
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
    newCube.(offset + i) <- cube.(offset + counterClockwise i);
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
    newCube.(offset + i) <- cube.(offset + oneEighty i);
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
    newCube.(offset + i) <- cube.(offset + clockwise i);
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
    newCube.(offset + i) <- cube.(offset + counterClockwise i);
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
    newCube.(offset + i) <- cube.(offset + oneEighty i);
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
  let offset = 9 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(offset + clockwise i);
  done;
  newCube.(0) <- cube.(44);
  newCube.(3) <- cube.(41);
  newCube.(6) <- cube.(38);
  newCube.(18) <- cube.(0);
  newCube.(21) <- cube.(3);
  newCube.(24) <- cube.(6);
  newCube.(45) <- cube.(18);
  newCube.(48) <- cube.(21);
  newCube.(51) <- cube.(24);
  newCube.(44) <- cube.(45);
  newCube.(41) <- cube.(48);
  newCube.(38) <- cube.(51);
  newCube

let l' cube =
  let newCube = copy cube in
  let offset = 9 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(offset + counterClockwise i);
  done;
  newCube.(44) <- cube.(0);
  newCube.(41) <- cube.(3);
  newCube.(38) <- cube.(6);
  newCube.(0) <- cube.(18);
  newCube.(3) <- cube.(21);
  newCube.(6) <- cube.(24);
  newCube.(18) <- cube.(45);
  newCube.(21) <- cube.(48);
  newCube.(24) <- cube.(51);
  newCube.(45) <- cube.(44);
  newCube.(48) <- cube.(41);
  newCube.(51) <- cube.(38);
  newCube

let l2 cube =
  let newCube = copy cube in
  let offset = 9 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(offset + oneEighty i);
  done;
  newCube.(44) <- cube.(18);
  newCube.(41) <- cube.(21);
  newCube.(38) <- cube.(24);
  newCube.(0) <- cube.(45);
  newCube.(3) <- cube.(48);
  newCube.(6) <- cube.(51);
  newCube.(18) <- cube.(44);
  newCube.(21) <- cube.(41);
  newCube.(24) <- cube.(38);
  newCube.(45) <- cube.(0);
  newCube.(48) <- cube.(3);
  newCube.(51) <- cube.(6);
  newCube

let r cube =
  let newCube = copy cube in
  let offset = 27 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(offset + clockwise i);
  done;
  newCube.(42) <- cube.(2);
  newCube.(39) <- cube.(5);
  newCube.(36) <- cube.(8);

  newCube.(2) <- cube.(20);
  newCube.(5) <- cube.(23);
  newCube.(8) <- cube.(26);

  newCube.(20) <- cube.(47);
  newCube.(23) <- cube.(50);
  newCube.(26) <- cube.(53);

  newCube.(47) <- cube.(42);
  newCube.(50) <- cube.(39);
  newCube.(53) <- cube.(36);
  newCube

let r' cube =
  let newCube = copy cube in
  let offset = 27 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(offset + counterClockwise i);
  done;
  newCube.(2) <- cube.(42);
  newCube.(5) <- cube.(39);
  newCube.(8) <- cube.(36);

  newCube.(20) <- cube.(2);
  newCube.(23) <- cube.(5);
  newCube.(26) <- cube.(8);

  newCube.(47) <- cube.(20);
  newCube.(50) <- cube.(23);
  newCube.(53) <- cube.(26);

  newCube.(42) <- cube.(47);
  newCube.(39) <- cube.(50);
  newCube.(36) <- cube.(53);
  newCube

let r2 cube =
  let newCube = copy cube in
  let offset = 27 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(offset + oneEighty i);
  done;
  newCube.(2) <- cube.(47);
  newCube.(5) <- cube.(50);
  newCube.(8) <- cube.(53);

  newCube.(20) <- cube.(42);
  newCube.(23) <- cube.(39);
  newCube.(26) <- cube.(36);

  newCube.(47) <- cube.(2);
  newCube.(50) <- cube.(5);
  newCube.(53) <- cube.(8);

  newCube.(42) <- cube.(20);
  newCube.(39) <- cube.(23);
  newCube.(36) <- cube.(26);
  newCube

let f cube =
  let newCube = copy cube in
  let offset = 18 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(offset + clockwise i);
  done;
  newCube.(6) <- cube.(17);
  newCube.(7) <- cube.(14);
  newCube.(8) <- cube.(11);

  newCube.(17) <- cube.(47);
  newCube.(14) <- cube.(46);
  newCube.(11) <- cube.(45);

  newCube.(47) <- cube.(27);
  newCube.(46) <- cube.(30);
  newCube.(45) <- cube.(33);

  newCube.(27) <- cube.(6);
  newCube.(30) <- cube.(7);
  newCube.(33) <- cube.(8);
  newCube

let f' cube =
  let newCube = copy cube in
  let offset = 18 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(offset + counterClockwise i);
  done;
  newCube.(17) <- cube.(6);
  newCube.(14) <- cube.(7);
  newCube.(11) <- cube.(8);

  newCube.(47) <- cube.(17);
  newCube.(46) <- cube.(14);
  newCube.(45) <- cube.(11);

  newCube.(27) <- cube.(47);
  newCube.(30) <- cube.(46);
  newCube.(33) <- cube.(45);

  newCube.(6) <- cube.(27);
  newCube.(7) <- cube.(30);
  newCube.(8) <- cube.(33);
  newCube

let f2 cube =
  let newCube = copy cube in
  let offset = 18 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(offset + oneEighty i);
  done;
  newCube.(17) <- cube.(27);
  newCube.(14) <- cube.(30);
  newCube.(11) <- cube.(33);

  newCube.(47) <- cube.(6);
  newCube.(46) <- cube.(7);
  newCube.(45) <- cube.(8);

  newCube.(27) <- cube.(17);
  newCube.(30) <- cube.(14);
  newCube.(33) <- cube.(11);

  newCube.(6) <- cube.(47);
  newCube.(7) <- cube.(46);
  newCube.(8) <- cube.(45);
  newCube

let b cube =
  let newCube = copy cube in
  let offset = 36 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(offset + clockwise i);
  done;
  newCube.(0) <- cube.(29);
  newCube.(1) <- cube.(32);
  newCube.(2) <- cube.(35);

  newCube.(29) <- cube.(53);
  newCube.(32) <- cube.(52);
  newCube.(35) <- cube.(51);

  newCube.(53) <- cube.(15);
  newCube.(52) <- cube.(12);
  newCube.(51) <- cube.(9);

  newCube.(15) <- cube.(0);
  newCube.(12) <- cube.(1);
  newCube.(9) <- cube.(2);
  newCube

let b' cube =
  let newCube = copy cube in
  let offset = 36 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(offset + counterClockwise i);
  done;
  newCube.(29) <- cube.(0);
  newCube.(32) <- cube.(1);
  newCube.(35) <- cube.(2);

  newCube.(53) <- cube.(29);
  newCube.(52) <- cube.(32);
  newCube.(51) <- cube.(35);

  newCube.(15) <- cube.(53);
  newCube.(12) <- cube.(52);
  newCube.(9) <- cube.(51);

  newCube.(0) <- cube.(15);
  newCube.(1) <- cube.(12);
  newCube.(2) <- cube.(9);
  newCube

let b2 cube =
  let newCube = copy cube in
  let offset = 36 in
  for i = 0 to 8 do
    newCube.(offset + i) <- cube.(offset + oneEighty i);
  done;
  newCube.(29) <- cube.(15);
  newCube.(32) <- cube.(12);
  newCube.(35) <- cube.(9);

  newCube.(53) <- cube.(0);
  newCube.(52) <- cube.(1);
  newCube.(51) <- cube.(2);

  newCube.(15) <- cube.(29);
  newCube.(12) <- cube.(32);
  newCube.(9) <- cube.(35);

  newCube.(0) <- cube.(53);
  newCube.(1) <- cube.(52);
  newCube.(2) <- cube.(51);
  newCube

