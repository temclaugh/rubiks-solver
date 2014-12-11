exception UsageError

let _ =
  if Array.length Sys.argv != 2 then
    raise UsageError
  else
    let root =
      match Sys.argv.(1) with
      | "corners" -> Cube.cornerCube ()
      | _ -> raise UsageError
    in
    let expand = Cube.moves in
    let f cube depth =
      Cube.printCubeFlat cube;
      Printf.printf ",%d\n" depth
    in
    Search.bfs root expand Cube.cube2bytes f
