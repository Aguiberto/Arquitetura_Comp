.text
	# esse programa recebe 9 números e apresenta mais 2 formando um cpf válido
main:
	addi $2,$0,5
	syscall			# entrada 1
	add $8,$0,$2
	
	addi $9,$0,10
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$0,$10		# $11 acumulador
	
	addi $2,$0,5
	syscall			# entrada 2
	add $8,$0,$2
	
	addi $9,$0,9
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$11,$10		# $11 acumulador
	
	addi $2,$0,5
	syscall			# entrada 3
	add $8,$0,$2
	
	addi $9,$0,8
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$11,$10		# $11 acumulador
	
	addi $2,$0,5
	syscall			# entrada 4
	add $8,$0,$2
	
	addi $9,$0,7
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$11,$10		# $11 acumulador
	
	addi $2,$0,5
	syscall			# entrada 5
	add $8,$0,$2
	
	addi $9,$0,6
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$11,$10		# $11 acumulador
	
	addi $2,$0,5
	syscall			# entrada 6
	add $8,$0,$2
	
	addi $9,$0,5
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$11,$10		# $11 acumulador
	
	addi $2,$0,5
	syscall			# entrada 7
	add $8,$0,$2
	
	addi $9,$0,4
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$11,$10		# $11 acumulador
	
	addi $2,$0,5
	syscall			# entrada 8
	add $8,$0,$2
	
	addi $9,$0,3
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$11,$10		# $11 acumulador
	
	addi $2,$0,5
	syscall			# entrada 9
	add $8,$0,$2
	
	addi $9,$0,2
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$11,$10		# SOMA TOTAL
	
	addi $12,$0,11
	div $11,$12		
	mfhi $13		# resto da divisão por 11
	
	sub $8,$13,$12		# PRIMEIRO DIGITO = $8
	addi $9,$0,10
	slt $14,$8,$9
	beq $14,$0,PrimeiroZero
	
	add $4,$0,$8		# PRIEMEIRO DIGITO, quando for não for 0
	addi $2,$0,5
	syscall
	
	j SegundoDigito
	
PrimeiroZero:
	add $4,$0,$0
	addi $2,$0,5
	syscall
	
	
SegundoDigito:
	addi $2,$0,5
	syscall			# entrada 1
	add $8,$0,$2
	
	addi $9,$0,11
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$0,$10		# $11 acumulador
	
	addi $2,$0,5
	syscall			# entrada 2
	add $8,$0,$2
	
	addi $9,$0,10
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$11,$10		# $11 acumulador
	
	addi $2,$0,5
	syscall			# entrada 3
	add $8,$0,$2
	
	addi $9,$0,9
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$11,$10		# $11 acumulador
	
	addi $2,$0,5
	syscall			# entrada 4
	add $8,$0,$2
	
	addi $9,$0,8
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$11,$10		# $11 acumulador
	
	addi $2,$0,5
	syscall			# entrada 5
	add $8,$0,$2
	
	addi $9,$0,7
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$11,$10		# $11 acumulador
	
	addi $2,$0,5
	syscall			# entrada 6
	add $8,$0,$2
	
	addi $9,$0,6
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$11,$10		# $11 acumulador
	
	addi $2,$0,5
	syscall			# entrada 7
	add $8,$0,$2
	
	addi $9,$0,5
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$11,$10		# $11 acumulador
	
	addi $2,$0,5
	syscall			# entrada 8
	add $8,$0,$2
	
	addi $9,$0,4
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$11,$10		# $11 acumulador
	
	addi $2,$0,5
	syscall			# entrada 9
	add $8,$0,$2
	
	addi $9,$0,3
	mul $10,$9,$8		# primeira multiplicação
	
	addi $2,$0,5
	syscall			# entrada 9
	add $8,$0,$2
	
	addi $9,$0,2
	mul $10,$9,$8		# primeira multiplicação
	
	add $11,$11,$10		# SOMA TOTAL
	
	addi $12,$0,11
	div $11,$12
	mfhi $13		# resto da divisão
	sub $14,$12,$13	
	
	addi $8,$0,10
	slt $15,$14,$8
	beq $15,$0,SegundoZero
	
	add $4,$0,$14
	addi $2,$0,1
	syscall
	
	j fim
	
SegundoZero:
	add $4,$0,$0
	addi $2,$0,1
	syscall

fim:
	addi $2,$0,10
	syscall