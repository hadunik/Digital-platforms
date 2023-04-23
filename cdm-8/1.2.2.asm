asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
	ldi r1,aLo
	ld r1,r1
	ldi r2,bLo
	ld r2,r2
	add r1,r2
	ldi r1,resLo
	st r1,r2
	ldi r2,aHi
	ld r2,r2
	ldi r3,bHi
	ld r3,r3
	addc r2,r3
	ldi r2,resHi
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
aLo:	dc	200 	# replace 0 by your choice of low byte for testing
aHi:	dc	4 	# replace 0 by your choice of high byte for testing
bLo:	dc	100 	# replace 0 by your choice of low byte for testing
bHi:	dc	5 	# replace 0 by your choice of high byte for testing
ENDINPUTS>

resLo:	ds	1
resHi:  ds  1		# two bytes reserved for the result
end


