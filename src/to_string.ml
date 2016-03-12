open Ast

let prim_string = function
  | Int -> "int"
  | Float -> "float"
  | Char -> "char"

let return_string = function
  | Void -> "void"
  | Prim p -> prim_string p

let inop_string = function
  | Plus -> "+"
  | Minus -> "-"
  | Times -> "*"
  | Divide -> "/"
  | Mod -> "%"
  | Asgmt -> "="
  | ShiftLeft -> "<<"
  | ShiftRight -> ">>"
  | Less -> "<"
  | LesserEq -> "<="
  | Greater -> ">"
  | GreaterEq -> ">="
  | Equals -> "=="
  | NotEquals -> "!="
  | BitAnd -> "&"
  | BitXor -> "^"
  | BitOr -> "|"
  | And -> "&&"
  | Or -> "||"
  | PlusA -> "+="
  | MinusA -> "-="
  | TimesA -> "*="
  | DivideA -> "/="
  | ModA -> "%="
  | ShiftLeftA -> "<<="
  | ShiftRightA -> ">>="
  | BitAndA -> "&="
  | BitOrA -> "|="
  | BitXorA -> "^="
  | Comma -> ","

let endop_string = function
  | Incrmt -> "++"
  | Decrmt -> "--"

let value_string = function
  | Integer i -> string_of_int i
  | Decimal d -> string_of_float d
  | Letter l -> String.make 1 l
