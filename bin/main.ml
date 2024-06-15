(*hier beginnt Tuturial 5*)

(*type vector3 = float * float * float*)

let p1 = (0.43, 0.76, 0.32) 
let p2 = (0.91, 0.43, 0.27)
let p3 = (0.76, 0.12, 0.52)

let string_of_vector3 (x,y,z) =
  "(" ^ string_of_float x ^ "," ^ string_of_float y ^ "," ^ string_of_float z ^ ")"

let vector3_add (x,y,z) (a,b,c) = (a+.x, b+.y, c+.z)

let vector3_mult (x,y,z) = x*.y*.z

let vector3_max (x,y,z) (a,b,c) =
  if vector3_mult (x, y, z) > vector3_mult (a,b,c)
  then (x,y,z)
  else (a,b,c)

let combine a b c = string_of_vector3(vector3_add a (vector3_max b c))

let () = print_string ((string_of_vector3 p1) ^"\n")
let () = print_float (vector3_mult p2)
let () = print_string ("\n" ^ (combine p1 p2 p3))


