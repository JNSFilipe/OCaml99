(* <++> Problem 1 *)
let rec last = function [] -> None | [ x ] -> Some x | _ :: t -> last t

(* <++> Problem 2 *)
let rec last_two = function
  | [] | [ _ ] -> None
  | [ x; y ] -> Some (x, y)
  | _ :: t -> last_two t

(* <++> Problem 3 *)
let rec at l i =
  match (i, l) with
  | 0, x :: _ -> Some x
  | _, _ :: t -> at t (i - 1)
  | _, [] -> None

(* <++> Problem 4 *)
let length l =
  let rec aux list acc =
    match list with [] -> acc | _ :: tail -> aux tail (acc + 1)
  in
  aux l 0
