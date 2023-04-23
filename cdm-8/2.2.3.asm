asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r3,0
ldi r0,1

ldi r1,x
ld r1,r1
and r0,r1

ldi r2,x
ld r2,r2
shra r2
and r0,r2

if
	cmp r2,r1
is z
	inc r3
fi

ldi r1,x
ld r1,r1
shra r1
shra r1
and r0,r1

ldi r2,x
ld r2,r2
shra r2
shra r2
shra r2
and r0,r2

if
	cmp r2,r1
is z
	inc r3
fi

ldi r1,x
ld r1,r1
shra r1
shra r1
shra r1
shra r1
and r0,r1

ldi r2,x
ld r2,r2
shra r2
shra r2
shra r2
shra r2
shra r2
and r0,r2

if
	cmp r2,r1
is z
	inc r3
fi

ldi r1,x
ld r1,r1
shra r1
shra r1
shra r1
shra r1
shra r1
shra r1
and r0,r1

ldi r2,x
ld r2,r2
shra r2
shra r2
shra r2
shra r2
shra r2
shra r2
shra r2
and r0,r2

if
	cmp r2,r1
is z
	inc r3
fi


ldi r2,4
if
	cmp r2,r3
is z
	ldi r1,x
	ld r1,r1
	ldi r0,ans
	st r0,r1
else
	ldi r1,0
	ldi r0,ans
	st r0,r1
fi
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
# (different bit-strings placed at addresses a, x, y and z)
# ---------------------------------------------------------------------

INPUTS>
x:    dc 0b01001100
ENDINPUTS>

ans:  ds 1     # one byte reserved for the result
end

