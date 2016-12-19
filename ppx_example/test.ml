
(*

If you try `ocamlopt test.ml`, it will fail with
`Error: Unbound value test1`.

If you try `../ocamlopt/ocamlopt.dyn -plugin ppx_example.cmxs test.ml`,
it will succeed, because the ppx_example will replace the occurrences
of `test1` by `test2`.

*)


let test2 = 1
let () = print_int test1; print_newline ()
