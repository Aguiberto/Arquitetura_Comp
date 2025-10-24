.text
		# programa que lê inteiros diferente de 0 
		# soma os positivos
		# para quando a entrada for == 0
main:
	addi $9,$0,0		# acumulador

laco: 
	addi $2,$0,5
	syscall			# entrada $8
	add $8,$0,$2
	
	beq $8,$0,fim
	
	srl $10,$8,31
	beq $10,$0, positivo
	
	j laco
	
positivo:
	add $9,$9,$8
	j laco
fim:
	add $4,$0,$9
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall