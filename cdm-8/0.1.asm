asect 0x00

	ldi r0,a
	ld r0,r0
	ldi r1,b
	ld r1,r1
	add r0,r1
	ldi r0,c
	st r0,r1

	ldi r0, c
	halt

INPUTS> 
a: 
	dc 15
b:
	dc 26
ENDINPUTS>
c: 
	ds 1
end