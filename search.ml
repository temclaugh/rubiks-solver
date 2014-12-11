module NodeSet = Set.Make(struct
  type t = string
  let compare = String.compare
end)

let numPermutations = 88179840

let bfs (root: 'a) (expand: 'a -> ('b * 'a) list) (toString: 'a -> string) (f: 'a -> int -> unit) =

  let c = ref 0 in
  let q: ('b * 'a * int) Queue.t = Queue.create () in
  Queue.add (Types.NoFace, root, 0) q;
  let seen = ref (NodeSet.singleton (toString root)) in

  while not (Queue.is_empty q) do
    incr c;
    if ((!c mod 1000) = 0) then begin
      prerr_float ((float_of_int !c) /. (float_of_int numPermutations));
      prerr_newline ();
    end;
    let prevMove, node, depth = Queue.take q in
    seen := NodeSet.add (toString node) !seen;
    f node depth;
    let nodeFilter (move, node') = 
      if prevMove = move then
        false
      else
        not (NodeSet.mem (toString node') !seen)
    in
    let children = List.filter nodeFilter (expand node) in
    let _  = Printf.printf ">>>%d\n" (List.length children) in
    List.iter (fun (move, node) -> Queue.add (move, node, depth + 1) q) children;
  done

