asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------
	ldi r0, a
	ld r0, r0
	ldi r1, a+1
	ld r1, r1
	
	ldi r2, b
	ld r2, r2
	ldi r3, b+1
	ld r3, r3
	
	if
		cmp r1, r3
	is lt
		br addbr
	else
		if
			cmp r1, r3
		is eq
			br compare
		else
			br subbr
		fi
	fi

addbr:
	add r0, r2
	addc r1, r3
br ender

compare:
	if
		tst r0
	is lt
		if
			tst r2
		is lt
			if
				cmp r0, r2
			is le
				br subbr
			else
				br addbr
			fi
		else
			br subbr
		fi
	else
		if
			tst r2
		is lt
			br addbr
		else
			if
				cmp r0, r2
			is ge
				br subbr
			else
				br addbr
			fi
		fi
	fi

subbr:
	if
		sub r0, r2
	is cc
		dec r1
		sub r1, r3
	else
		sub r1, r3
	fi

ender:
	ldi r0, ans
	st r0, r2
	ldi r0, ans+1
	st r0, r3
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
# (different bit-strings placed at address x)
# ---------------------------------------------------------------------

INPUTS>
a:    dc  0x0e,0xc5   # replace two bytes by your choice of bit-srings for testing
b:    dc  0xc6,0xc5   # replace two bytes by your choice of bit-srings for testing

ENDINPUTS>

ans:  ds 2      # two byte reserved for the result
end


