.text

main:
	addi $2,$0,5
	syscall
	add $8,$0,$2
	
	srl $9,$8,31		# verifica se o valor digitado é negativo
	bne $9,$0,fim
	
	add $10,$0,$8
	
laco:
	addi $2,$0,5
	syscall
	add $8,$0,$2
	
	srl $9,$8,31		# verifica se o valor digitado é negativo
	bne $9,$0,fim
	
	add $10,$10,$8
	
	j laco
	
fim:
	add $4,$0,$10
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall