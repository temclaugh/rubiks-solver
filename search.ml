let bfs (root: 'a) (expand: 'a -> 'a list) (f: 'a -> int -> unit) =

  let c = ref 0 in
  let q: ('a * int) Queue.t = Queue.create () in
  let seen: ('a, unit) Hashtbl.t = Hashtbl.create 3674160 in
  Queue.add (root, 0) q;
  Hashtbl.add seen root ();

  let contains_key x =
    try Hashtbl.find seen x; true
    with Not_found -> false
  in

  while not (Queue.is_empty q) do
    incr c;
    if ((!c mod 1000) = 0) then begin
      prerr_float ((float_of_int !c) /. (float_of_int 3674160));
      prerr_newline ();
    end;
    let node, depth = Queue.take q in
    Hashtbl.add seen node ();
    f node depth;
    let children = List.filter (fun x -> not (contains_key x)) (expand node) in
    List.iter (fun x -> Queue.add (x, depth + 1) q) children;
  done

