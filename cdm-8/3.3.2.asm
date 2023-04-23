	asect 	0x00
	# WRITE YOUR CODE HERE
ldi r1,x
ldi r2,y

ld r1,r0
ld r2,r3
addc r0,r3
ldi r0,sum
st r0,r3
ldi r1,x+1
ldi r2,y+1

ld r1,r0
ld r2,r3
addc r0,r3
ldi r0,sum+1
st r0,r3
ldi r1,x+2
ldi r2,y+2

ld r1,r0
ld r2,r3
addc r0,r3
ldi r0,sum+2
st r0,r3
ldi r1,x+3
ldi r2,y+3

ld r1,r0
ld r2,r3
addc r0,r3
ldi r0,sum+3
st r0,r3
ldi r1,x+4
ldi r2,y+4

ld r1,r0
ld r2,r3
addc r0,r3
ldi r0,sum+4
st r0,r3
ldi r1,x+5
ldi r2,y+5

ld r1,r0
ld r2,r3
addc r0,r3
ldi r0,sum+5
st r0,r3
ldi r1,x+6
ldi r2,y+6

ld r1,r0
ld r2,r3
addc r0,r3
ldi r0,sum+6
st r0,r3
ldi r1,x+7
ldi r2,y+7

ld r1,r0
ld r2,r3
addc r0,r3
ldi r0,sum+7
st r0,r3

	# at this point 'res' has the answer
	ldi   r0,sum
	halt
inputs>
x:	dc	0x07,0xab,0x07,0xab,0x07,0xab,0x07,0xab # choose your data
y:	dc	0x07,0xab,0x07,0xab,0x07,0xab,0x07,0xab # choose your data
endinputs>
sum:	ds	8
	end
