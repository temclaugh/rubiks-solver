module NodeSet = Set.Make(struct
  type t = string
  let compare = String.compare
end)

let numPermutations = 88179840

let bfs (root: 'a) (expand: 'a -> ('b * 'a) list) (toBytes: 'a -> bytes) (f: 'a -> int -> unit) =

  let q: ('b * 'a) Queue.t = Queue.create () in
  Queue.add (Types.NoFace, root) q;
  let seen = ref (NodeSet.singleton (toBytes root)) in

  let depth = ref 0 in
  let counter = ref 0 in
  while not (Queue.is_empty q) do
    let len = Queue.length q in
    for i = 1 to len do

      let prevMove, node = Queue.take q in
      seen := NodeSet.add (toBytes node) !seen;
      f node !depth;

      let nodeFilter (move, node') = 
        if prevMove = move then
          false
        else
          not (NodeSet.mem (toBytes node') !seen)
      in
      let children = List.filter nodeFilter (expand node) in
      List.iter (fun x -> Queue.add x q) children;

      incr counter;
      if ((!counter mod 1000) = 0) then begin
        prerr_float ((float_of_int !counter) /. (float_of_int numPermutations));
        prerr_newline ();
      end;
    done;
    incr depth;
  done

