.text

	# tela de 512 pixels de largura x 256 pixels altura
	# cada pixel ocupa 16x16 unidades
	# tela com 32 unidades gráficas (UG) de largura
	


main: 	lui $8,0x1001		# endereço de memório é uma coordenada geográfica no bitmap
	ori $9,$0, 0x00ff00	# cor do bit
	sw $9,0($8)		# posição onde o bit será inserido
	sll $9,$9,8		# realizar o SLL do valor armazenado em $9 muda a cor do bit
	sw $9,4($8)		# posição seguinte 
	
	addi $2,$0,10
	syscall