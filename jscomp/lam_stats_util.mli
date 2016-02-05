(* OCamlScript compiler
 * Copyright (C) 2015-2016 Bloomberg Finance L.P.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, with linking exception;
 * either version 2.1 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 *)

(* Author: Hongbo Zhang  *)



(** Utilities for lambda analysis *)

val pp_alias_tbl : Format.formatter -> Lam_stats.alias_tbl  -> unit

val pp_arities : Format.formatter -> Lam_stats.function_arities -> unit

val get_arity : Lam_stats.meta -> Lambda.lambda -> Lam_stats.function_arities

(* val dump_exports_arities : Lam_stats.meta -> unit *)

val export_to_cmj : 
  Lam_stats.meta ->
  string option ->
  Lam_module_ident.t list -> 
  Lambda.lambda list ->
  Js_cmj_format.cmj_table

val find_unused_exit_code : int Hash_set.hashset -> int