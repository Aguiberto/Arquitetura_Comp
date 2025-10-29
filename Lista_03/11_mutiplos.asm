.text
		# programa que mostra o primeiro multiplo de 11,13 ou 17
		# Após um numero fornecido pelo usuário
main:
	addi $2,$0,5
	syscall			# entrada
	add $8,$0,$2
	
	addi $9,$0,11
	addi $10,$0,13
	addi $11,$0,17
laço:	
	div $8,$9
	mfhi $12
	
	beq $12,$0,multiplo
	
	div $8,$10
	mfhi $13
	
	beq $13,$0,multiplo
	
	div $8,$11
	mfhi $14
	
	beq $14,$0,multiplo
	
	addi $8,$8,1		# incrementa em 1 o valor fornecido pelo usuário
	
	j laço
	
multiplo:
	add $4,$0,$8
	addi $2,$0,1
	syscall
	
fim:
	addi $2,$0,10
	syscall
	