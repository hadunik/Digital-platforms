asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------


ldi r1,a
ld r1,r1


ldi r3,0b11110000
and r1,r3
shr r3
shr r3
shr r3
shr r3
ldi r2,b
add r2,r3
ld r3,r3

ldi r0,res
st r0,r3


ldi r2, 0b00001111
and r1,r2
ldi r3,b
add r3,r2
ld r2,r2

ldi r0,res+1
st r0,r2


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
# (different bit-strings placed at address a)
# ---------------------------------------------------------------------

INPUTS>
a:    dc    0b10110011   # The output for this bit-string should be "E7"
b: 	  dc  	"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"
ENDINPUTS>

res:  ds 2             # Two bytes reserved for the result
end


