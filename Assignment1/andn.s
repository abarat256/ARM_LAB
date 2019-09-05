
  @ BSS section
      .bss
z: .word

  @ DATA SECTION
      .data
a: .word 5234 
b: .word 5124 

  @ TEXT section
      .text

.global _main

	 
_main:

     LDR r4, =a   ; @get the address of a
     LDR r2, [r4] ; @get value of a
     LDR r4, =b;
     LDR r3, [r4] ; @get value b
     BIC r1,r2,r3 ;
