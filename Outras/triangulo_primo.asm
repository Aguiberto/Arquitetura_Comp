.text

main:
	addi $2,$0,5
	syscall
	add $8,$0,$2
	
	addi $9,$8,1		# referência para encerramento do programa
	
	addi $8,$0,2
	
	addi $10,$0,1		# QTD na linha
	addi $11,$0,1		# QTD de quebra de linha
	addi $12,$0,2		# numeero testar se é primo e mostrar na sequência
	
	addi $4,$0,1
	addi $2,$0,1
	syscall
	
	addi $4,$0,' '
	addi $2,$0,11
	syscall
	
	addi $13,$0,2
	
	beq $12,$13,primoespecial

laço:	
testedeprimo:
	
	div $12,$8
	mfhi $13
	
	beq $13,$0,nprimo
		
	addi $8,$8,1		#incrementa o divisor
	
	beq $8,$12,primo
	
	j testedeprimo

nprimo:
	addi $12,$12,1
	j testedeprimo
	
primo:
	add $4,$0,$12
	addi $2,$0,1
	syscall
	
	addi $4,$0,' '
	addi $2,$0,11
	syscall
	
	addi $10,$10,1
	addi $12,$12,1
	addi $8,$0,2		# reinicia a quantidade de divisores
	
	slt $14,$10,$11
	beq $14,$0,kbra
	
	j laço

primoespecial:
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	add $4,$0,$12
	addi $2,$0,1
	syscall
	
	addi $4,$0,' '
	addi $2,$0,11
	syscall
	
	addi $12,$12,1
	addi $10,$10,1
	
	j testedeprimo
kbra:
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	addi $11,$11,1
	addi $10,$0,0
	
	beq $11,$9,fim
	
	j laço
fim:
	addi $2,$0,10
	syscall