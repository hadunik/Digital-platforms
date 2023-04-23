	asect	0x00
	# WRITE YOUR CODE HERE
ldi r3,n
ld r3,r3
ldi r1,s

while 
	ld r1,r2
	tst r2
stays nz
	if 
		tst r3
	is z
		ldi r0,res
		st r0,r2
		break
	fi
	inc r1
	dec r3
wend

if 
	tst r3
is nz
	ldi r0,res
	ldi r3,63
	st r0,r3
fi


	# at this point 'res' has the answer
	ldi   r0,res
	halt
inputs>
n:	dc	18 		# replace 0 by your choice of n for testing
s:	dc	"235789245",0 	# replace ... by some text for testing
	ds	18 	# reserve more space in case the string from tester is longer than ours
endinputs>
res:	ds	1
	end
