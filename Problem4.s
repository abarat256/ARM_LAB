_start:

@4. DIV r 1 , r 2 , #45 

MOV r2, #90 @loading r2 = 90 for testing
MOV r1 , #0 @counter variable

LOOP: 
    ADD r1 , r1, #1  @increment the counter
	SUB r2 , r2, #45
    CMP r2, #0       @compare r2 to 0
	BPL LOOP
	SUB r1, r1 , #1  @decrementing the counter because it has been incremented inspite of r2 being -ve the last time
	
.end