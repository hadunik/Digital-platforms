asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
	ldi r1,x
	ld r1,r1
	ldi r2,0
	ldi r3,0
	shra r1
	addc r2,r3
	shra r1
	addc r2,r3
	shra r1
	addc r2,r3
	shra r1
	addc r2,r3
	shra r1
	addc r2,r3
	shra r1
	addc r2,r3
	shra r1
	addc r2,r3
	shra r1
	addc r2,r3
	shra r3
	ldi r1,0
	addc r1,r2
	
	ldi r0,res
	st r0,r2



# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, res  # Loads the start address of your result into r0 for the robot
    halt           # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different bit-strings placed at addresses aLo, aHi, bLo and bHi)
# ---------------------------------------------------------------------

INPUTS>
x:     dc  0x8c    # replace 0 by your choice of bit-string for testing
ENDINPUTS>

res:  ds  1    # one byte reserved for the result
end


