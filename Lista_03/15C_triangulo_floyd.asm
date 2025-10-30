.text
		# programa que mostra o triâgulo de floyd
		# todos os numeros são pares
main:
	addi $2,$0,5
	syscall
	add $8,$0,$2
	
	addi $8,$8,1
	
	addi $9,$0,0		# variável p QTD DE NUMEROS
	addi $10,$0,2		# varipavel para a MOSTRAR NO TRIÂNGULO
	addi $11,$0,1		# variavel p QTD DE QUEBRA DE LINHA
laço:
	andi $12,$10,1
	beq $12,$0,par
	
	addi $10,$10,1
	
	j laço
par:
	add $4,$0,$10
	addi $2,$0,1
	syscall
	
	addi $4,$0,' '
	addi $2,$0,11
	syscall
	
	addi $9,$9,1		# incrento da quantidade de numeros na linha
	addi $10,$10,1		# incremento no número a ser mostrado
	
	slt $13,$9,$11		# verifica se  a quantidade de nºs na linha é menor que a de nºs de quebra de linha
	beq $13,$0,kbra
	
	j laço
kbra:
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	addi $11,$11,1		# incrementando a QTD DE QUEBRA DE LINHA
	addi $9,$0,0		# reiniciando a QTD DE NUMEROS NA LINHA
	
	slt $14,$11,$8
	beq $14,$0,fim
	
	j laço
fim:
	addi $2,$0,10
	syscall