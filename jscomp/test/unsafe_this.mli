

val js_obj :
  [%bs.obj: <
         bark :  ('a ->  int ->  int -> int [@meth_callback]) ;
         length : int; 
         x : int;
         y : int
       >
       as 'a ]
