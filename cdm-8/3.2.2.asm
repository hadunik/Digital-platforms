	asect 	0x00
	# WRITE YOUR CODE HERE
ldi r0,s
ldi r3,-32
while 
	ld r0,r1
	tst r1
stays nz
	if 
		ldi r2,97
		cmp r1,r2
	is ge
		if 
			ldi r2,122
			cmp r1,r2
		is le
			add r3,r1
			st r0,r1
		fi
	fi
	
	inc r0
wend 
	


	# at this point 'res' has the answer
	ldi   r0,res
	halt
inputs>
res:
s:	dc	"asdfghjklqwertyuiopzxcvbnm1234567890p[][;./.v",0 	# replace ... by some text for testing
	ds      17      # reserve more space in case the string from tester is longer than ours
endinputs>
	end
