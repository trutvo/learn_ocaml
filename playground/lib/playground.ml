
let write_file c filename =
  let outc = Out_channel.open_text filename in
  Out_channel.output_string outc c;
  Out_channel.close outc

let read_file filename =
  let file = In_channel.open_text filename in
  let cnt = In_channel.input_all file in
  In_channel.close file;
  cnt
