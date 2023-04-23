	asect	0x00
	# WRITE YOUR CODE HERE
ldi r0,S
ld r0,r1
ldi r2,"{"
if 
	cmp r2,r1
is nz
br ERROR
fi
inc r0

while
	ldi r3,128
	ld r0,r1
	ldi r2,"}"
	cmp r2,r1
stays nz
	ldi r2,"h"
	if 
		cmp r2,r1
	is pl
		ldi r2,"a"
		while 
			cmp r2,r1
		stays nz
			inc r2
			shra r3
		wend
		neg r3
		ldi r2,result
		ld r2,r2
		or r3,r2
		ldi r3,result
		st r3,r2
	else
				
		ldi r2,"p"
		if 
			cmp r2,r1
		is pl
			ldi r2,"i"
			while 
				cmp r2,r1
			stays nz
				inc r2
				shra r3
			wend
			neg r3
			ldi r2,result+1
			ld r2,r2
			or r3,r2
			ldi r3,result+1
			st r3,r2
				
		else
			ldi r2,"x"
			if 
				cmp r2,r1
			is pl
				ldi r2,"q"
				while 
					cmp r2,r1
				stays nz
					inc r2
					shra r3
				wend
				neg r3
				ldi r2,result+2
				ld r2,r2
				or r3,r2
				ldi r3,result+2
				st r3,r2
			else
				ldi r2,"z"
				if 
					cmp r2,r1
				is pl
					ldi r2,"y"
					while 
					cmp r2,r1
				stays nz
					inc r2
					shra r3
				wend
				neg r3
				ldi r2,result+3
				ld r2,r2
				or r3,r2
				ldi r3,result+3
				st r3,r2
				else
					br ERROR
				fi
			fi
		fi
	fi
	inc r0
	ld r0,r1
	ldi r2,"}"
	if 
		cmp r2,r1
	is z
		br END
	else
		ldi r2,","
		if 
			cmp r2,r1
		is nz
			br ERROR
		else 
			inc r0
		fi
	fi
wend

ERROR:
ldi r1,result
ldi r2,0
st r1,r2
ldi r1,result+1
ldi r2,0
st r1,r2
ldi r1,result+2
ldi r2,0
st r1,r2
ldi r1,result+3
ldi r2,0x3F
st r1,r2

END:
        # at this point 'result' has the answer
        ldi   r0,result
        halt
inputs>
S:	dc	"{d,i,r}",0 	# replace by your choice of S for testing
	ds	40	# reserve more space in case the string from tester is longer than ours
endinputs>
result: ds	4
        end
