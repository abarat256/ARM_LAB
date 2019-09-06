;Question#1
XNOR
		MOV		r2, #0x50
		MOV		r3, #0x30
		;XOR between r2 and r3
		EOR		r1, r2, r3
		;XOR between r1 and 0xFF will flip bits of r1
		EOR		r1, r1, #0xFF

;Question#2
ANDN
		MOV		r2, #0x50
		MOV		r3, #0x30
		;BIC means r2 AND !r3
		EOR       	r3, r3, #0xFF
		AND       	r0, r2, r3

;Question#3
MULF
		;54=0b110110
		;set positions are 5th, 4th, 2nd and 1st as counting
		;is starting from 0th position
		MOV		r3, #54
		MOV		r2, #0x50
		;r2*54 = r2*(0b110110)
		;      = r2*(2^5 + 2^4 + 2^2 + 2^1)
		;      = r2*(1<<5 + 1<<4 + 1<<2 + 1<<1)
		MOV		r1, r2, LSL #5
		ADD		r1, r1, r2, LSL #4
		ADD		r1, r1, r2, LSL #2
		ADD		r1, r1, r2, LSL #1

;Question#4
DIVF
                MOV             r0, #0
		MOV	  	r3, #45
		MOV	  	r2, #0x500
Loop
                ;SUBS After copy update CPSR
                SUBS      	r2, r2, r3
                ADD       	r0, r0, #1
                ;Branch if N bit is clear in CPSR
                BPL       	Loop
                ;decrement by 1 as loop executed one time extra to detect negative
                SUB       	r0, r0, #1
		
;Question#5
ABS
		MOV		r0, #-45
		;arithematic shift 31st bit to 0th position to determine sign
		;for +ve num, r1 will be zero and for -ve num, r1 will 0xFFFFFFFF
		ASR		r1, r0, #31
		;logical shift
		LSR		r2, r1, #31
		;x XOR 0 = x, x XOR 1 = ~x, hence for +ve value retained and for -ve we will get 1's complement
		EOR		r0, r0, r1
		;for +ve value retained and for -ve we will get 2's complement
		ADD		r0, r0, r2
		
		
