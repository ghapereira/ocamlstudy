(* Chapter 2 exercises *)
(* http://www.cs.cornell.edu/courses/cs3110/2019sp/textbook/basics/exercises.html *)

(* Operators: write pow function for float base and int exponent *)
let rec pow (x:float) (y:int) = if y = 0 then 1.0 else x *. pow x (y - 1)

let signal x = if x < 0 then -1
              else if x = 0 then 0
              else 1

let rms x y = sqrt (((pow x 2) +. (pow y 2)) /.  2.0)

(* date fun *)
let test_date (d:int) (m:string) =
  if d < 1 || d > 31 then false
  else if m = "Feb" && d < 30 then true
  else if (m = "Apr" || m = "Jun" || m = "Sep" || m = "Nov") && d < 31 then true
  else (m = "Jan" || m = "Mar" || m = "May" || m = "Jul" || m = "Aug" || m = "Oct" || m = "Dec")

(* naive fib *)
let rec fib n = if n < 2 then n
                else fib (n - 1) + fib (n - 2)

(* linear fast_fib *)
let rec h n pp p = if n = 1 then p
                   else h (n - 1) p (pp + p)

let fib_fast n = if n < 2 then n
                 else h n 0 1

(*
 * add 5 1: integet
 * add 5: function
 * (add 5) 1: integer
 * add (5 1): error
 *)

(* Average *)
let (+/.) x y = (x +. y) /. 2.

(* Print list rec *)

(* print_int_list: int list -> unit *)

let rec print_int_list int_list =
  match int_list with
  | [] -> ()
  | h::t -> print_int h; print_endline ""; print_int_list t

(* print_int_list' : int list -> unit *)

let print_int_list' lst =
  List.iter (fun x -> (print_int x; print_endline "")) lst














