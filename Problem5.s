_start:

@5. ABS r 1 , r 2

MOV r2, #-32 @loading r2 = -32 for testing 
CMP r2, #0   @compare with 0
BLT NEGATIVE @if negative go to NEGATIVE
CMP r2, #0   @compare with 0
BPL POSITIVE @if positive go to POSITIVE
		
NEGATIVE: @in ri take the not negative r2 and add 1 to get the absolute value
		MVN r1, r2
		ADD r1, #1
		B exit
POSITIVE: @move r2 to r1
		MOV r1, r2
		B exit
exit:

.end