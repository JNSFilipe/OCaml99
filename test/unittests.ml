open Alcotest
open OCaml99.Problems

let () =
  run "Problems"
    [
      (* <++> Problem 1 *)
      ( "Problem 1 - last",
        [
          test_case "last" `Quick (fun () ->
              check (option string) "last" (Some "d")
                (last [ "a"; "b"; "c"; "d" ]));
          test_case "last empty" `Quick (fun () ->
              check (option string) "last empty" None (last []));
        ] );
    ]
