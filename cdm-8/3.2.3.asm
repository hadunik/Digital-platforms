	asect 	0x00
	# WRITE YOUR CODE HERE

ldi r0,res
ldi r1,s
ldi r3," "
st r0,r1
inc r0
while
ld r1,r2
tst r2
stays nz
if
cmp r2,r3
is z
ldi r3,0
st r1,r3
inc r1
st r0,r1
inc r0
ldi r3," "
else
inc r1
fi

wend
ldi r3,0
st r0,r3



	# at this point 'res' has the answer
	ldi   r0,res
	halt
res:	ds	9	# pointers to at most 8 words and the null
inputs>
s:	dc	"csta dogs fix",0 # replace ... by some text for testing
	ds      57      # reserve more space in case the string from tester is longer than ours
endinputs>
	end
