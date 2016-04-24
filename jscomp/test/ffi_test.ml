

external f : int -> int = "xx" [@@bs.call ]


let u () = f 3 
let v = Js.Null.empty

let a, b ,c, d = Js.(true_, false_, Js.Null.empty, Js.Def.empty)

module Textarea = struct
  type t
  external create : unit -> t  = "TextArea" [@@ bs.new ]
  (* TODO: *)
  external set_minHeight : t -> int -> unit = "minHeight" [@@bs.set ]
  external get_minHeight : t ->  int = "minHeight" [@@bs.get]
  external draw : t -> string  -> unit = "string" [@@bs.send ]

end
module Int32Array = struct
  type t 
  external create : int -> t = "Int32Array" [@@bs.new]
  external get : t -> int -> int = "" [@@bs.get_index]
  external set : t -> int -> int -> unit = "" [@@bs.set_index]
end

let v () =
  let u = Textarea.create () in
   Textarea.set_minHeight u 3 ;
   Textarea.get_minHeight u
   (* Textarea.set_minHeight_x *)


let f () = 
  let module Array = Int32Array in 
  let v  = Array.create 32 in 
  begin 
    v.(0) <- 3   ;
    v.(0)
  end
