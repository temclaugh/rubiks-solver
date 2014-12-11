module NodeSet = Set.Make(struct
  type t = Types.cube_t
  let compare = Cube.cubeCompare
end)

let bfs (root: 'a) (expand: 'a -> 'a list) (nodeCompare: 'a -> 'a -> int) (f: 'a -> int -> unit) =

  let c = ref 0 in
  let q: ('a * int) Queue.t = Queue.create () in
  Queue.add (root, 0) q;
  let seen = ref (NodeSet.singleton root) in

  while not (Queue.is_empty q) do
    incr c;
    if ((!c mod 1000) = 0) then begin
      prerr_float ((float_of_int !c) /. (float_of_int 3674160));
      prerr_newline ();
    end;
    let node, depth = Queue.take q in
    seen := NodeSet.add node !seen;
    f node depth;
    let filter x = not (NodeSet.mem x !seen) in
    let children = List.filter filter (expand node) in
    List.iter (fun x -> Queue.add (x, depth + 1) q) children;
  done

