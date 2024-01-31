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

(* <++> Problem 5 *)
let rev l =
  let rec aux in_list out_list =
    match in_list with x :: tail -> aux tail (x :: out_list) | [] -> out_list
  in
  aux l []

(* <++> Problem 6 *)
let is_palindrome l = l = rev l

(* <++> Problem 7 *)
type 'a node = One of 'a | Many of 'a node list

let flatten l =
  let rec aux out_list in_list =
    match in_list with
    | [] -> out_list
    | One x :: t -> aux (x :: out_list) t
    | Many in_list :: t -> aux (aux out_list in_list) t
  in
  List.rev (aux [] l)
