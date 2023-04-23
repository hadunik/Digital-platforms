asect 0x00
	
	# Тест на vx > 0
	ldi r0, vxy
	ld r0, r0
	ldi r1, 0b00100000
	and r1, r0
	if
		tst r0
	is nz
		br 0x00
	fi
	
	ldi r1,y
	ld r1,r1
	ldi r0,pos
	st r0,r1
	
		br 0x00

asect 0xF3

INPUTS>
	vxy: ds 1
	x: ds 1
	y: ds 1
	pos: ds 1
ENDINPUTS>

end