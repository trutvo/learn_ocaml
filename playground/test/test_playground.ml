open Playground

let rec loop f c = function
  | 0 -> ()
  | n ->
    write_file (c ^ (string_of_int n)) f;
    let c' = read_file f in
    print_endline ( (string_of_int n) ^ ": " ^ c');
    loop f c (n - 1)

let () = 
  loop "test.txt" "test file content " 50


  

