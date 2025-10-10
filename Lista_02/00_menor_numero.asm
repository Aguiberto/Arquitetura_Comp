.text

main:
	addi $2,$0,5
	syscall			# recebendo dados
	add $8,$0,$2
	
	addi $2,$0,5
	syscall			# recebendo dados
	add $9,$0,$2
	
	slt $10,$8,$9		# se $8<$9 então $10 = 1 senão $10 = 0
	
	beq $10,$0,novemaior
	
	add $4,$0,$8
	j fim
	
novemaior: 
	add $4,$0,$9
	
	
fim:	
	addi $2,$0,1
	syscall 