	asect	0x00
	# WRITE YOUR CODE HERE

ldi r0,s
ld r0,r0
ldi r1,p
ld r1,r1

CYCLE:
while 
	ld r0,r2
	tst r2
stays nz
	ld r1,r3
	if 
		cmp r2,r3
	is z
		inc r0
		inc r1
		while
			ld r0,r2
			ld r1,r3
			tst r3
		stays nz
			if 
				cmp r3,r2
			is z
				inc r0
				inc r1
			else
				ldi r1,p
				ld r1,r1
				br CYCLE
			fi
		wend
		ldi r3,s
		ld r3,r3
		sub r0,r3
		
		ldi r0,p
		ld r0,r0
		ldi r1,0
		
		while 
			ld r0,r2
			tst r2
		stays nz
			inc r1
			inc r0
		wend
		sub r3,r1
		ldi r0,res
		st r0,r1
		br END
	fi
	inc r0
wend

ldi r3,-1
ldi r1,res
st r1,r3

END:
	# at this point 'res' has the answer
	ldi   r0,res
	halt
inputs>
s:		dc _s 	# do NOT use labels _s and _p above!
p:		dc _p	# do NOT use labels _s and _p above!

_s:	dc	"glkfZjp",00	 # replace that by some string for testing
_p:	dc	"kf",00		   # replace that by some pattern for testing

	ds	40     # reserve more space in case the string from tester is longer than ours
endinputs>
res:	ds	1
	end

