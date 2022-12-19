type token =
  | INT of (int)
  | NOP
  | MOV
  | ADD
  | ADDI
  | SUB
  | SUBI
  | JMP
  | LD
  | ST
  | IN
  | OUT
  | JLE
  | JLT
  | JEQ
  | JNE
  | COMA
  | COLON
  | LPAR
  | RPAR
  | REG of (int)
  | LABEL of (string)
  | EOL

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
    open Asm
# 31 "parser.ml"
let yytransl_const = [|
  258 (* NOP *);
  259 (* MOV *);
  260 (* ADD *);
  261 (* ADDI *);
  262 (* SUB *);
  263 (* SUBI *);
  264 (* JMP *);
  265 (* LD *);
  266 (* ST *);
  267 (* IN *);
  268 (* OUT *);
  269 (* JLE *);
  270 (* JLT *);
  271 (* JEQ *);
  272 (* JNE *);
  273 (* COMA *);
  274 (* COLON *);
  275 (* LPAR *);
  276 (* RPAR *);
  279 (* EOL *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  277 (* REG *);
  278 (* LABEL *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\001\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\002\000\002\000\
\002\000\002\000\000\000"

let yylen = "\002\000\
\002\000\001\000\002\000\001\000\001\000\004\000\004\000\006\000\
\006\000\006\000\006\000\006\000\006\000\006\000\004\000\006\000\
\004\000\006\000\002\000\002\000\006\000\002\000\001\000\001\000\
\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\005\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\023\000\024\000\025\000\
\026\000\000\000\002\000\027\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\022\000\000\000\000\000\019\000\
\020\000\001\000\000\000\003\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\006\000\000\000\
\007\000\000\000\000\000\000\000\000\000\000\000\015\000\017\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\018\000\016\000\011\000\010\000\008\000\009\000\013\000\
\012\000\014\000\021\000"

let yydgoto = "\002\000\
\020\000\021\000\022\000"

let yysindex = "\018\000\
\254\254\000\000\000\000\003\255\002\255\004\255\005\255\006\255\
\007\255\009\255\010\255\011\255\013\255\000\000\000\000\000\000\
\000\000\021\255\000\000\000\000\019\255\018\255\022\255\025\255\
\027\255\028\255\029\255\030\255\000\000\031\255\032\255\000\000\
\000\000\000\000\033\255\000\000\008\255\014\255\015\255\034\255\
\035\255\036\255\037\255\038\255\039\255\044\255\000\000\041\255\
\000\000\046\255\047\255\048\255\049\255\050\255\000\000\000\000\
\051\255\052\255\054\255\055\255\016\255\053\255\017\255\068\255\
\056\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\051\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000"

let yytablesize = 78
let yytable = "\003\000\
\004\000\005\000\006\000\007\000\008\000\009\000\010\000\011\000\
\012\000\013\000\014\000\015\000\016\000\017\000\047\000\050\000\
\069\000\072\000\001\000\018\000\019\000\023\000\025\000\024\000\
\026\000\027\000\028\000\046\000\029\000\030\000\031\000\032\000\
\048\000\033\000\049\000\051\000\070\000\073\000\034\000\035\000\
\036\000\038\000\037\000\039\000\040\000\041\000\042\000\043\000\
\044\000\045\000\004\000\000\000\000\000\071\000\052\000\053\000\
\054\000\055\000\056\000\057\000\058\000\059\000\060\000\061\000\
\062\000\063\000\064\000\065\000\074\000\000\000\000\000\000\000\
\066\000\067\000\000\000\068\000\000\000\075\000"

let yycheck = "\002\001\
\003\001\004\001\005\001\006\001\007\001\008\001\009\001\010\001\
\011\001\012\001\013\001\014\001\015\001\016\001\001\001\001\001\
\001\001\001\001\001\000\022\001\023\001\019\001\021\001\021\001\
\021\001\021\001\021\001\020\001\022\001\021\001\021\001\021\001\
\019\001\021\001\021\001\021\001\021\001\021\001\018\001\021\001\
\023\001\017\001\021\001\017\001\017\001\017\001\017\001\017\001\
\017\001\017\001\000\000\255\255\255\255\001\001\021\001\021\001\
\021\001\021\001\021\001\021\001\017\001\021\001\017\001\017\001\
\017\001\017\001\017\001\017\001\001\001\255\255\255\255\255\255\
\021\001\020\001\255\255\021\001\255\255\022\001"

let yynames_const = "\
  NOP\000\
  MOV\000\
  ADD\000\
  ADDI\000\
  SUB\000\
  SUBI\000\
  JMP\000\
  LD\000\
  ST\000\
  IN\000\
  OUT\000\
  JLE\000\
  JLT\000\
  JEQ\000\
  JNE\000\
  COMA\000\
  COLON\000\
  LPAR\000\
  RPAR\000\
  EOL\000\
  "

let yynames_block = "\
  INT\000\
  REG\000\
  LABEL\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 20 "parser.mly"
                                 ( (_1, None) )
# 176 "parser.ml"
               : (Asm.label * Asm.instr option)))
; (fun __caml_parser_env ->
    Obj.repr(
# 21 "parser.mly"
                                 ( ("", None) )
# 182 "parser.ml"
               : (Asm.label * Asm.instr option)))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'code) in
    Obj.repr(
# 22 "parser.mly"
                                 ( ("", Some _1) )
# 189 "parser.ml"
               : (Asm.label * Asm.instr option)))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'code) in
    Obj.repr(
# 23 "parser.mly"
                                 ( ("", Some _1) )
# 196 "parser.ml"
               : (Asm.label * Asm.instr option)))
; (fun __caml_parser_env ->
    Obj.repr(
# 27 "parser.mly"
                                  ( Nop )
# 202 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 28 "parser.mly"
                                  ( Ldi (_2,_4) )
# 210 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 29 "parser.mly"
                                  ( Addi (_2,_4,0,false)  )
# 218 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 30 "parser.mly"
                                  ( Add  (_2,_4,_6,false) )
# 227 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 31 "parser.mly"
                                  ( assert (0<=_6 && _6<32); Addi (_2,_4,_6,false) )
# 236 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 32 "parser.mly"
                                  ( assert (0<=_6 && _6<32); Addi (_2,_4,_6,false) )
# 245 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 33 "parser.mly"
                                  ( assert (0<=_4 && _4<32); Addi (_2,_6,_4,false) )
# 254 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 34 "parser.mly"
                                  ( Add  (_2,_4,_6,true)  )
# 263 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 35 "parser.mly"
                                  ( assert (0<=_6 && _6<32); Addi (_2,_4,_6,true)  )
# 272 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 36 "parser.mly"
                                  ( assert (0<=_6 && _6<32); Addi (_2,_4,_6,true)  )
# 281 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 37 "parser.mly"
                                  ( Load (_2, _4)  )
# 289 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 38 "parser.mly"
                                  ( Load (_2, _5)  )
# 297 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 39 "parser.mly"
                                  ( Store (_4, _2) )
# 305 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 3 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 40 "parser.mly"
                                  ( Store (_3, _6) )
# 313 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 41 "parser.mly"
                                  ( In _2  )
# 320 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 42 "parser.mly"
                                  ( Out _2 )
# 327 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : Asm.cond) in
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 43 "parser.mly"
                                  ( CJmp (_2,_4,_6,_1) )
# 337 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 44 "parser.mly"
                                  ( Jmp _2 )
# 344 "parser.ml"
               : 'code))
; (fun __caml_parser_env ->
    Obj.repr(
# 48 "parser.mly"
         ( LE )
# 350 "parser.ml"
               : Asm.cond))
; (fun __caml_parser_env ->
    Obj.repr(
# 49 "parser.mly"
         ( LT )
# 356 "parser.ml"
               : Asm.cond))
; (fun __caml_parser_env ->
    Obj.repr(
# 50 "parser.mly"
         ( EQ )
# 362 "parser.ml"
               : Asm.cond))
; (fun __caml_parser_env ->
    Obj.repr(
# 51 "parser.mly"
         ( NE )
# 368 "parser.ml"
               : Asm.cond))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : (Asm.label * Asm.instr option))
