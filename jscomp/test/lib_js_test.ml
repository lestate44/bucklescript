


let () =
  begin

    Js.log @@ Js.to_json_string [1;2;3];
    Js.log "hey";
  end

let suites = Mt.[
    "anything_to_string", (fun _ -> Eq("3", Js.String.of_any 3 ));
    (* in js, array is printed as {[ 1,2 ]} without brackets *)    
    (* "array_to_string", (fun _ -> Eq("[0]", Js.anything_to_string [|0|]))     *)
]

;; Mt.from_pair_suites __FILE__ suites
