asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
ldi r1,x
ld r1,r1
ldi r3,0b01000000
ldi r2,0b00010000
ldi r0,0b00000100

and r1,r3
shr r3
shr r3
shr r3
shr r3
shr r3
shr r3
and r1,r2
shr r2
shr r2
shr r2
shr r2
and r1,r0
shr r0
shr r0

if 
	cmp r3,r2
is z
	if 
		cmp r2,r0
	is nz
		ldi r2,0b01000000
		if 
			and r1,r2
		is z 
			ldi r2,0b01000000
			or r2,r1
		else
			ldi r2,0b10111111
			and r2,r1
		fi
		ldi r0,0b00000100
		if 
			and r1,r0
		is z 
			ldi r3,0b00000100
			or r3,r1
		else
			ldi r3,0b11111011
			and r3,r1
		fi
		
	fi
fi
ldi r0,ans
st r0,r1

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
x:    dc 0b01011011
ENDINPUTS>

ans:  ds 1     # one byte reserved for the result
end

