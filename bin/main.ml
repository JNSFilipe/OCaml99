open OCaml99.Problems

let unwrap = function Some x -> x | None -> "ERROR"
let () = print_endline (unwrap (last [ "a"; "b"; "c"; "d" ]))
