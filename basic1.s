


.global _main

_main:

      MOV r1, #5
      @MOV r5, #1
      @MOV r6, r5, LSL #12
      @STR r5, [r6, #24]
      LDR r2, =0x1018
      STR r1, [r2, #4]

      LDR r4, [r2, #4]
      MOV r3, r2



