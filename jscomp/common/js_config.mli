(* Copyright (C) 2015-2016 Bloomberg Finance L.P.
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * In addition to the permissions granted to you by the LGPL, you may combine
 * or link a "work that uses the Library" with a publicly distributed version
 * of this file to produce a combined library or application, then distribute
 * that combined work under the terms of your choosing, with no requirement
 * to comply with the obligations normally placed on you by section 4 of the
 * LGPL version 3 (or the corresponding section of a later version of the LGPL
 * should you choose to use a later version).
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA. *)






type env = 
  | Browser
  | NodeJS
  | AmdJS
  | Goog of string option

val cmj_ext : string 
val get_env : unit -> env
val get_ext : unit -> string

val get_output_dir : string -> string 
val get_output_file : string -> string
val get_goog_package_name : unit -> string option

val set_npm_package_path : string -> unit 
val get_npm_package_path : unit -> (string * string) option

val cross_module_inline : bool ref
val set_cross_module_inline : bool -> unit
val get_cross_module_inline : unit -> bool
  
val diagnose : bool ref 
val get_diagnose : unit -> bool 
val set_diagnose : bool -> unit 

val set_env : env -> unit
val cmd_set_module : string -> unit  
val default_gen_tds : bool ref

val no_builtin_ppx_ml : bool ref 
val no_builtin_ppx_mli : bool ref 

val runtime_set : String_set.t
val stdlib_set : String_set.t


val block : string
val int32 : string
val gc : string 
val backtrace : string
val version : string
val builtin_exceptions : string
val exceptions : string
val io : string
val oo : string
val sys : string
val lexer : string 
val parser : string
val obj_runtime : string
val array : string
val format : string
val string : string 
val float : string 
val curry : string 
(* val bigarray : string *)
(* val unix : string *)
val int64 : string
val md5 : string
val hash : string
val weak : string
val js_primitive : string
val module_ : string

(** Debugging utilies *)
val set_current_file : string -> unit 
val get_current_file : unit -> string
val get_module_name : unit -> string

val iset_debug_file : string -> unit
val set_debug_file : string -> unit
val get_debug_file : unit -> string

val is_same_file : unit -> bool 

val tool_name : string

val check_div_by_zero : bool ref 

val get_check_div_by_zero : unit -> bool 

(* It will imply [-noassert] be set too, note from the implmentation point of view, 
   in the lambda layer, it is impossible to tell whehther it is [assert (3 <> 2)] or 
   [if (3<>2) then assert false]
 *)
val no_any_assert : bool ref 

val set_no_any_assert : unit -> unit
val get_no_any_assert : unit -> bool 
