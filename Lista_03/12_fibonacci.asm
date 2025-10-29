.text
		# sequencia de FIBONACCI até N
main:
	addi $2,$0,5
	syscall			# entrada (N fornecido pelo usuário)
	add $8,$0,$2

	addi $9,$0,0		# I
	
	addi $11,$0,1		# Variável A
	add $12,$0,1		# Variavel B
	addi $13,$0,0		# Variável C
	
	add $4,$0,$11
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	subi $8,$8,1

laço:
	slt $10,$9,$8
	beq $10,$0,fimlaço
	
	add $4,$0,$11
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall

	add $13,$11,$12		# variável temp para receber a soma
	add $12,$0,$11		# recebe o valor de A
	add $11,$0,$13		# recebe a soma
	
	
	addi $9,$9,1		# incremento de I
	
	j laço

fimlaço: