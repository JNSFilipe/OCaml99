(lang dune 3.11)

(name OCaml99)

(generate_opam_files true)

(source
 (github JNSFilipe/OCaml99))

(authors "JNSFilipe")

(maintainers "JNSFilipe")

(license LICENSE)

(documentation https://github.com/JNSFilipe/OCaml99)

(package
 (name OCaml99)
 (synopsis "My solutions to the 99 problems in OCaml")
 (description "This repo contains my solutions to the 99 problems found [here](https://v2.ocaml.org/learn/tutorials/99problems.html), in an attempt to learn OCaml.")
 (depends ocaml dune)
 (tags
  ("OCaml" "learn" "99 problems")))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
