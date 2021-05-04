// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Flip.asm

// Switches the values of R1 and R2.

   @R0
   D=M
   @n
   M=D    

   @i
   M=1
   @sum
   M=0    


(LOOP)
   @i
   D=M
   @n
   D=D-M
   @STOP
   D;JGT
   @R1
   D=M
   @sum
   M=D+M
   @i
   M=M+1
   @LOOP
   0;JMP
(STOP)
   @sum
   D=M
   @R2
   M=D

(END)
   @END
   0;JMP
