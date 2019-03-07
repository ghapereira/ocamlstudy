# OCaml learning comments

Study source: http://www.cs.cornell.edu/courses/cs3110/2019sp/textbook

# 2.8 Function application
* `e0 e1 e2 ... en`: The first expression `e0` is the function. It is applied to arguments
  `e1` to `en`
* Pipelines: Send values through expressions from left to right:
  `5 |> square |> inc` = inc (square 5)`

## 2.15 Printing

* Type `unit` (`()`) is a placeholder when there is nothing useful to take or return
* `;` allows for unit-returning expressions (f.ex. `print_string`) chaining
  * If `e1` in `e1; e2` does not return `()` a warning will be sent; It can be ignored with `ignore e1; e2`

# 2.16 What about Main?
* In Ocaml there is no special `main` function. The usual idiom is to have the last definition in a file serve as the program's main calling point

# 2.17 Debugging
* Set a print statement in the middle of a function:
`let inc x = let() = print_int(x); print_endline " "; in x + 1`
or, as I would rather do:
`let inc x = let() = x |> print_int; " " |> print_endline; in x + 1`

* Trace a function:
`#trace f`;;
When you next run `f` the values will be traced in it

# 2.18 Documentation
* OCaml doc format: `(* * OCamldoc doc format *)`(the first two asterisks are together, separated here because of markdown)
* It also supports `@tags` just like Javadoc or Doxygen
