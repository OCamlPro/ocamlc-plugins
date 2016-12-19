
(* Replace any occurrence of a variable `test1` in an expression
   by a variable `test2`. *)

open Asttypes
open Longident
open Parsetree

open Ast_mapper

let ast_mapper =
  { default_mapper with
    expr = (fun mapper expr ->
      match expr with
      | { pexp_desc = Pexp_ident ({ loc; txt = Lident "test1" }) } ->
        { expr with pexp_desc = Pexp_ident ({ loc; txt = Lident "test2" }); }
      | other -> default_mapper.expr mapper other); }

let () =
  Pparse.ImplementationHooks.add_hook "ppx_example"
    (fun
      (hook_info : Misc.hook_info)
      (ast : Parsetree.structure_item list) ->
        ast_mapper.structure ast_mapper ast);
  Pparse.InterfaceHooks.add_hook "ppx_example"
    (fun (hook_info : Misc.hook_info)
      (ast : Parsetree.signature_item list) ->
        ast_mapper.signature ast_mapper ast);
  ()
