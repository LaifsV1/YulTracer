(* INI File Parser in OCaml *)
class inifile (path : string) =
  object (_self)
    (* Internal storage for the parsed INI data *)
    val mutable data : (string, (string, string) Hashtbl.t) Hashtbl.t = Hashtbl.create 10

    (* Load and parse the INI file *)
    initializer
      let channel = open_in path in
      let current_section = ref None in
      try
        while true do
          let line = input_line channel |> String.trim in
          (* Skip empty lines or comments *)
          if line = "" || (String.length line > 0 && (line.[0] = ';' || line.[0] = '#')) then
            ()
          else if String.length line > 0 && line.[0] = '[' then
            (* Parse section header *)
            let section_name =
              String.sub line 1 (String.length line - 2) |> String.trim
            in
            current_section := Some section_name;
            (if not (Hashtbl.mem data section_name) then
              Hashtbl.add data section_name (Hashtbl.create 10))
          else
            (* Parse key-value pairs *)
            match String.split_on_char '=' line with
            | [key; value] -> (
                match !current_section with
                | Some section ->
                    let section_table = Hashtbl.find data section in
                    Hashtbl.add section_table (String.trim key) (String.trim value)
                | None ->
                    failwith "Key-value pair found outside of a section")
            | _ -> failwith "Invalid line in INI file"
        done
      with End_of_file -> close_in channel

    (* Method to get a value from the INI file *)
    method getval (section : string) (field : string) : string =
      if Hashtbl.mem data section then
        let section_table = Hashtbl.find data section in
        if Hashtbl.mem section_table field then
          Hashtbl.find section_table field
        else
          failwith ("Field " ^ field ^ " not found in section " ^ section)
      else
        failwith ("Section " ^ section ^ " not found")
  end

(* (\* Example usage *\) *)
(* let mk_ini_reader ini = *)
(*   fun section field -> try Some (ini#getval section field) with _ -> None *)

(* let () = *)
(*   (\* Replace "config.ini" with the path to your INI file *\) *)
(*   let ini_reader = *)
(*     try *)
(*       Some (mk_ini_reader (new inifile "config.ini")) *)
(*     with _ -> *)
(*       None *)
(*   in *)
(*   match ini_reader with *)
(*   | Some reader -> *)
(*      begin *)
(*        let f x y =  *)
(*          match reader x y with *)
(*          | Some value -> Printf.printf "Value: %s\n" value *)
(*          | None -> Printf.printf "Key not found\n" *)
(*        in *)
(*        f "section1" "key1";  *)
(*        f "section2" "key1"; *)
(*        f "section1" "key2"; *)
(*        f "section1" "key3"; *)
(*        f "section2" "keyA";  *)
(*      end *)
(*   | None -> Printf.printf "Failed to load INI file\n" *)
