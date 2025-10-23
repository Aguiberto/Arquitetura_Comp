.text
		# fazer u andi com 1 para pegar o numero par
main:
	addi $2,$0,5
	syscall			# 1º valor de intervalo
	add $8,$0,$2
	
	addi $2,$0,5
	syscall			# 2º valor de intervalo; N do laço
	add $9,$0,$2
	
	sub $10,$9,$8		# início do laço 
	
laco:
	andi $11,$10,1		# verificar se o valor é par
	beq $11,$0, par
	
	addi $10,$10,1
	
	slt $12,$10,$9
	beq $12,$0,fim
	
	j laco
	
par:
	add $4,$0,$10
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	addi $10,$10,1
	
	j laco
	
fim: 
	addi $2,$0,10
	syscall