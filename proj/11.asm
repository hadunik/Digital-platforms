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
	
	# Начало
	ldi r0, 224
	ldi r1, x
	ld r1, r1
	sub r0, r1 # 224 - x. r0 мусор, r1 = 224 - x
	move r1, r1 # Для нормального деления
	shr r1 # (224 - x) / (vx == 2). r1 = (224 - x) / 2
	ldi r2, 0 # Число переполнений. r1 = (224 - x) / 2, r2 = 0
	ldi r0, vxy
	ld r0, r0
	ldi r3, 0b00000111
	and r3, r0
	ldi r3, 0b00000100 # (-4)
	# r0 = 0b00000VVX, r1 = (224 - x) / 2, r2 = 0, r3 = 0x00000100
	if
		cmp r0, r3 # сравниваем 0b00000VVX с 0b00000100 (-4)
		# r0 мусор, r1 = (224 - x) / 2, r2 = 0, r3 мусор
	is eq
		# Умножение делаем над r1. Число переполнений в r2
		if
			shla r1
		is cc
			inc r2
		fi
		if
			shla r1
		is cc
			inc r2
		fi
		ldi r3, y
		ld r3, r3
		# r0 мусор, r1 = (224 - x) / 2 * (vy == -4), r2 = число переполнений, r3 = y
		# Вычисляем y + ...
		if
			sub r3, r1 # y + (224 - x) / vx * vy. Результат в r1
		is cc
			inc r2
		fi
		# r0 мусор, r1 = (224 - x) / 2 * (vy == -4), r2 = число переполнений, r3 = мусор
		# Конец (-4)
	else # else if для ускорения работы
	ldi r3, 0b00000101 # (-3)
	# r0 = 0b00000VVX, r1 = (224 - x) / 2, r2 = 0, r3 = 0x00000101
	if
		cmp r1, r3 # сравниваем 0b00000VVX с 0x00000101 (-3)
		# r0 мусор, r1 = (224 - x) / 2, r2 = 0, r3 мусор
	is eq
		move r1, r0 # резерв для дальнейшего сложения
		# r0 = (224 - x) / 2, r1 = (224 - x) / 2, r2 = 0, r3 мусор
		if
			shla r1
		is cc
			inc r2
		fi
		if 
			add r0, r1
		is cc
			inc r2
		fi
		ldi r3, y
		ld r3, r3
		# r0 мусор, r1 = (224 - x) / 2 * (vy == -4), r2 = число переполнений, r3 = y
		if
			sub r3, r1 # y + (224 - x) / vx * vy. Результат в r1
		is cc
			inc r2
		fi
		# r0 мусор, r1 = (224 - x) / 2 * (vy == -4), r2 = число переполнений, r3 = мусор
		# Конец (-3)
	else
	ldi r3, 0b00000110 # (-2)
	if
		cmp r0, r3 # сравниваем 0b00000VVX с 0b00000100 (-2)
		# r0 мусор, r1 = (224 - x) / 2, r2 = 0, r3 мусор
	is eq
		# Умножение делаем над r1. Число переполнений в r2
		if
			shla r1
		is cc
			inc r2
		fi
		ldi r3, y
		ld r3, r3
		# r0 мусор, r1 = (224 - x) / 2 * (vy == -4), r2 = число переполнений, r3 = y
		# Вычисляем y + ...
		if
			sub r3, r1 # y + (224 - x) / vx * vy. Результат в r1
		is cc
			inc r2
		fi
		# r0 мусор, r1 = (224 - x) / 2 * (vy == -4), r2 = число переполнений, r3 = мусор
		# Конец (-2)
	else
	ldi r3, 0b00000111 # (-1)
	if
		cmp r0, r3
	is eq
		ldi r3, y
		ld r3, r3
		# r0 мусор, r1 = (224 - x) / 2 * (vy == -4), r2 = число переполнений, r3 = y
		# Вычисляем y + ...
		if
			sub r3, r1 # y + (224 - x) / vx * vy. Результат в r1
		is cc
			inc r2
		fi
	else
	ldi r3, 0b00000011 # (3)
	if
		cmp r0, r3
	is eq
		move r1, r0
		if
			shla r1
		is cs
			inc r2
		fi
		if 
			add r0, r1
		is cs
			inc r2
		fi
		ldi r3, y
		ld r3, r3
		if
			add r3, r1 # y + (224 - x) / vx * vy. Результат в r1
		is cs
			inc r2
		fi
	else
	ldi r3, 0b00000010 # (2)
	if
		cmp r0, r3
	is eq
		if
			shla r1
		is cs
			inc r2
		fi
		ldi r3, y
		ld r3, r3
		if
			add r3, r1 # y + (224 - x) / vx * vy. Результат в r1
		is cs
			inc r2
		fi
	else
	ldi r3, 0b00000001 # (1)
	if
		cmp r0, r3
	is eq
		ldi r3, y
		ld r3, r3
		if
			add r3, r1 # y + (224 - x) / vx * vy. Результат в r1
		is cs
			inc r2
		fi
	else
	ldi r3, 0
	if
		cmp r0, r3
	is eq
		ldi r1, y # Если умножение на 0, то Решает только y
		ld r1, r1
	fi
	fi
	fi
	fi
	fi
	fi
	fi
	fi
	# r0 мусор, r1 = (224 - x) / 2 * (vy == -4), r2 = число переполнений, r3 = мусор
	
	#Проверяем, является ли r2 четным. Если да, то все ок. Если нет, то отражаем его
	#Делаем для отрицательных тоже
	ldi r0, vxy
	ld r0, r0
	ldi r3, 0b00000100
	if
		and r0, r3
		tst r3
	is nz
		#Для отрицательных
		if
			shra r2
		is cs
		else 
			neg r1
		fi
	else
		if
			shra r2
		is cs
			neg r1
		else 
		fi
	fi
	# Перевод в 5 бит
	shr r1
	shr r1
	shr r1
	ldi r0, 0b00011111
	and r0, r1
	
	# Записываем результат
	ldi r0, pos
	st r0, r1
	ldi r1,1
	st r0,31
	#Зацикливаем
	br 0x00

asect 0xF3

INPUTS>
	vxy: ds 1
	x: ds 1
	y: ds 1
	pos: ds 1
ENDINPUTS>

end