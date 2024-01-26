(* <++> Problem 1 *)
let rec last = function [] -> None | [ x ] -> Some x | _ :: t -> last t

(* <++> Problem 2 *)
let rec last_two = function
  | [] | [ _ ] -> None
  | [ x; y ] -> Some (x, y)
  | _ :: t -> last_two t
