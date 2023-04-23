asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
	ldi r1,bLo
	ld r1,r1
	ldi r2,bHi
	ld r2,r2
	shla r1
	addc r2,r2
	
	ldi r3,aHi
	ld r3,r3
	
	dec r3
	not r1
	
	ldi r0,aLo
	ld r0,r0
	
	inc r0
	neg r2
	add r1,r0
	addc r2,r3
	
	ldi r1,resLo
	ldi r2,resHi
	st r1,r0
	st r2,r3
	
	


# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, resLo  # Loads the start address of your result into r0 for the robot
    halt           # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different bit-strings placed at addresses aLo, aHi, bLo and bHi)
# ---------------------------------------------------------------------

INPUTS>
aLo:	dc	0x84 	# replace 0 by your choice of low byte for testing
aHi:	dc	0x51 	# replace 0 by your choice of high byte for testing
bLo:	dc	0xa1 	# replace 0 by your choice of low byte for testing
bHi:	dc	0x0a 	# replace 0 by your choice of high byte for testing
ENDINPUTS>

resLo:	ds	1
resHi:  ds  1		# two bytes reserved for the result
end




