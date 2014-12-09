
let bfs (root: 'a) (expand: 'a -> 'a list) (f: 'a -> unit) =
  let q: 'a Queue.t = Queue.create () in
  let seen: ('a, unit) Hashtbl.t = Hashtbl.create 3674160 in
  Queue.add root q;
  Hashtbl.add seen root ();
  let contains_key x =
    try Hashtbl.find seen x; true
    with Not_found -> false
  in
  while not (Queue.is_empty q) do
    let node = Queue.take q in
    f node;
    let children = List.filter (fun x -> not (contains_key x)) (expand node) in
    List.iter (fun x -> Queue.add x q) children
  done


