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
    ]
