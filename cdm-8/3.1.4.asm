asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r0,content
ldi r1,0
ldi r2,n
ld r2,r2
while 
	cmp r1,r2
stays lt
	add r1,r0
	inc r1
	st r0,r1
	ldi r0,content
wend
	






# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, content  # Loads the address of your result into r0 for the robot
    halt            # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different unsigned numbers placed at addresses x and y)
# ---------------------------------------------------------------------

INPUTS>
n:       dc 12   # replace this with your choice of unsigned number for testing
ENDINPUTS>

content: ds 15  # 15 bytes reserved for the content of the array
end

