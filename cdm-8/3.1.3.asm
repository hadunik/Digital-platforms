asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r0,n
ld r0,r0
ldi r1,0
ldi r2,0 #total
ldi r3,-1 #oflow

while
	cmp r1,r0
stays le
	if 
		add r1,r2
	is cs
		ldi	 r3,1
		ldi r2,255
		break
	else
		inc r1
	fi
wend
ldi r0,res
st r0,r2
ldi r1,oflow
st r1,r3


# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, res  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different unsigned numbers placed at address n)
# ---------------------------------------------------------------------

INPUTS>
n:     dc 100    # replace this with your choice of unsigned number for testing
ENDINPUTS>

res:   ds 1    # one byte reserved for the (unsigned number) total
oflow: ds 1    # one byte to indicate whether or not an overflow has occurred
end

