	asect 	0x00
	# WRITE YOUR CODE HERE
ldi r0,array
ldi r1,res
ldi r3,array
ldi r2,8
add r2,r3

while 
	cmp r0,r3
stays lt
	if
		ld r0,r2
		tst r2
	is mi	
		st r1,r2
		inc r1
	fi
	inc r0
wend 

ldi r0,array
ldi r3,array
ldi r2,8
add r2,r3

while 
	cmp r0,r3
stays lt
	if
		ld r0,r2
		tst r2
	is pl	
		st r1,r2
		inc r1
	fi
	inc r0
wend 


	# at this point 'res' has the answer
	ldi   r0,res
	halt
inputs>
array:	dc	 5,-1,-3,7,4,2,2,-8 # choose some numbers for testing
endinputs>
res:	ds	8
	end
