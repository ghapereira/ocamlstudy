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
