.text
		# programa que lê inteiro enquanto não digitar 0
		# mostra o maior valor
		# mostra o menor valor
main:
	addi $2,$0,5
	syscall	
	add $8,$0,$2
	
	add $9,$0,$8		# variável para comparar se é MENOR
	add $10,$0,$8		# variável para comparar se é MAIOR
	
	beq $8,$0,fim
	
	slt $11,$8,$10
	beq $11,$0, maior
	
	    # menor
	slt $11,$8,$9
	bne $11,$0, menor
	
	
laco:	
	addi $2,$0,5
	syscall
	add $8,$0,$2
	
	beq $8,$0,fim
	
	slt $11,$8,$10
	beq $11,$0, maior
	
	    # menor
	slt $11,$8,$9
	bne $11,$0, menor
	
	j laco
maior:
	add $10,$0,$8
	j laco

menor:
	add $9,$0,$8
	j laco 
fim:
	add $4,$0,$9
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall	
	
	add $4,$0,$10
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall