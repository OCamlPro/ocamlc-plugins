
In 4.04.0, `ocamlopt.opt` is not generated with the correct options.
This problem is fixed in the sub-directory `ocamlopt/`, by generating
an `ocamlopt.dyn` binary equivalent to `ocamlopt.opt`, but correctly
linked to load plugins.

The sub-directory `hello/` contains the most basic example.

The sub-directory `ppx_example/` contains the most basic example
of ppx using a plugin.

