asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r1,a
ld r1,r1
ldi r2,b
ld r2,r2


if 
	cmp r2,r1
	is ge
		ldi r0,x
		ld r0,r0
fi
if 
	cmp r1,r2
	is ge
		ldi r0,z
		ld r0,r0
fi
if 
	cmp r1,r2
	is z
		ldi r0,y
		ld r0,r0
fi
ldi r3,ans
st r3,r0

# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, ans  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different integers placed at addresses a, b, x, y and z)
# ---------------------------------------------------------------------

INPUTS>
a:    dc -1    # replace these five numbers
b:    dc 1     # by your choice of integers
x:    dc 8     # for testing purposes
y:    dc -3
z:    dc 3
ENDINPUTS>

ans:  ds 1     # one byte reserved for the result
end

