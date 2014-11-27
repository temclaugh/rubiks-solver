let rec idaStar (start: 'a)
                (isGoal: 'a -> bool)
                (getSuccessors: 'a -> ('b * 'a) list)
                (h: 'a -> int)
                (maxDepth: int)
                (depth: int)
                : 'b list option =

  let rec search (state: 'a)
                 (depth: int)
                 (bound: int)
                 (path: 'b list)
                 : (int * 'b list option) =
    let cost = depth + (h state) in
    if cost > bound then
      (cost, None)
    else if isGoal state then
      (depth, Some path)
    else
    let minCost = ref max_int in
    let successors = getSuccessors state in
    let rec iter succesors =
      match succesors with
      | [] -> (!minCost, None)
      | (action, succ)::tl ->
        let (cost, newPath) = search succ (depth + 1) bound (action::path) in
        if newPath != None then
          (cost, newPath)
        else
          let _ = minCost := min !minCost cost in
          iter tl
    in
    iter successors
  in

  match search start 0 depth [] with
  | (_, Some path) -> Some path
  | (t, None) -> idaStar start isGoal getSuccessors h maxDepth t
