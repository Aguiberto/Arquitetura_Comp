.data
.text

main:
	lui $8, 0x1001		# endereço de memória salvo no $8
	
	addi $9,$9,0		# variável SOMA
	addi $11,$0,0		# variável ÍNDICE
	
	addi $2,$0,5
	syscall
	add $10,$0,$2		# N para referência do laço
	
laço:
	beq $10,$0,fimlaço
	
	addi $2,$0,5
	syscall
	
	beq $11,$0, soma
	beq

salva:	
	addi $11,$11,1
	
	sw $2,0($8)
	addi $8,$8,4
	
	addi $10,$10,-1
	
	j laço
soma:
	add $9,$9,$2
	j salva
		
fim:
	addi $2,$0,10
	syscall

	
	