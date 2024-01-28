open Alcotest
open OCaml99.Problems

let () =
  run "Problems"
    [
      (* <++> Problem 1 *)
      ( "Problem 1 - last",
        [
          test_case "Input [ a; b; c; d ]" `Quick (fun () ->
              check (option string) "last 1" (Some "d")
                (last [ "a"; "b"; "c"; "d" ]));
          test_case "Input []" `Quick (fun () ->
              check (option string) "last 2" None (last []));
        ] );
      (* <++> Problem 2 *)
      ( "Problem 2 - last_two",
        [
          test_case "Input [ a; b; c; d ]" `Quick (fun () ->
              check
                (option (pair string string))
                "last_two 1"
                (Some ("c", "d"))
                (last_two [ "a"; "b"; "c"; "d" ]));
          test_case "Input [a]" `Quick (fun () ->
              check
                (option (pair string string))
                "last_two 2" None (last_two [ "a" ]));
        ] );
      (* <++> Problem 3 *)
      ( "Problem 3 - at",
        [
          test_case "Input [ a; b; c; d; e ] 3" `Quick (fun () ->
              (* The example assumes base 1, but I hate that, so base 0 is assumed, assertion is ajusted accordingly *)
              check (option string) "at 1" (Some "d")
                (at [ "a"; "b"; "c"; "d"; "e" ] 3));
          test_case "Input [a] 3" `Quick (fun () ->
              check (option string) "at 2" None (at [ "a" ] 3));
        ] );
      (* <++> Problem 4 *)
      ( "Problem 4 - length",
        [
          test_case "Input [ a; b; c ]" `Quick (fun () ->
              check int "length 1" 3 (length [ "a"; "b"; "c" ]));
          test_case "Input []" `Quick (fun () ->
              check int "length 2" 0 (length []));
        ] );
      (* <++> Problem 5 *)
      ( "Problem 5 - rev",
        [
          test_case "Input [ a; b; c ]" `Quick (fun () ->
              check (list string) "rev 1" [ "c"; "b"; "a" ]
                (rev [ "a"; "b"; "c" ]));
        ] );
    ]
