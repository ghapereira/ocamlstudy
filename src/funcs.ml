let increment x = x + 1
let decrement x = x - 1

let square x = x * x

let rec pow a b = if b = 0 then 1
                  else a * pow a (b - 1)

let pitagoras ~c1 ~c2 ~hip = assert ((pow c1 2) + (pow c2 2) = (pow hip 2))

(* Program *)
print_string "LOADED!";
