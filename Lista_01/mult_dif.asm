.text

	# MULTIPLICAÇÃO SEM MULTIPLICAR
	
main:
	addi $2,$0,5
	syscall
	
	add $8,$0,$2
	add $8,$8,$2		# Multiplicando por 3
	add $8,$8,$2	
	
	addi $2,$0,5
	syscall
	
	add $9,$0,$2
	add $9,$9,$2
	add $9,$9,$2
	add $9,$9,$2
	add $9,$9,$2		# Multiplicando por 9
	add $9,$9,$2
	add $9,$9,$2
	add $9,$9,$2
	add $9,$9,$2
	
	addi $2,$0,5
	syscall
	
	add $10,$0,$2
	add $10,$10,$2
	add $10,$10,$2
	add $10,$10,$2
	add $10,$10,$2
	add $10,$10,$2
	add $10,$10,$2
	add $10,$10,$2
	add $10,$10,$2		# Multiplicando por 15
	add $10,$10,$2
	add $10,$10,$2
	add $10,$10,$2
	add $10,$10,$2
	add $10,$10,$2
	add $10,$10,$2
	
	add $11,$8,$9
	add $11,$11,$10		# Soma TOTAL
	
	addi $12,$0,27		# 9 + 15 + 3
	
	div $11,$12
	mflo $13		# Média Ponderada
	
	add $4,$0,$13
	addi $2,$0,1
	syscall
	
	
	
	