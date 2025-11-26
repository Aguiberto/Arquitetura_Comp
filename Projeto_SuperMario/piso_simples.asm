.text

main: 	lui $8, 0x1001
	ori $9, 0xbf3e0f
	
	addi $10,$10,1280	# o piso ocupa 1280 endereços de memória
	
piso:	beq $10,$0,fim

	sw $9,27648($8)
	addi $8,$8,4
	addi $10,$10,-1
	
	j piso
	
fim:	addi $2,$0,10
	syscall