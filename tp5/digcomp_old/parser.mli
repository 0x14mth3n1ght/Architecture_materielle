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

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> (Asm.label * Asm.instr option)
