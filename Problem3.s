_start:
@3. MULF r 1 , r 2 , #54

		MOV r2, #3            @loading decimal 3 in r2 for checking 
		MOV r1, r2, LSL#5     @r1 = (2^5) *r2
		MOV r3, r2, LSL#4
		MOV r4, r2, LSL#2
		MOV r5, r2, LSL#1
		ADD r6, r1, r3
		ADD r6, r6, r4
		ADD r6, r6, r5
		MOV r1, r6
.end
