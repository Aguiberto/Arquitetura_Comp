.text

main:
	addi $2,$0,5		# ENTRADA
	syscall
	
	add $8,$0,$2		# ATRIBUIÇÃO AO REG 8
	
	andi $9,$8,1		# VERIFICAÇÃO SE PAR OU IMPAR
	
	sub $10,$0,$9		# SE PAR $10 = 0 SE IMPAR $10 = -1
	
	add $4,$0,$10		
	addi $2,$0,1		# PRINT RESULTADO
	syscall
	
	addi $2,$0,10		# ENCERRAMENTO
	syscall