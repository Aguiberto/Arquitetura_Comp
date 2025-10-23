.text

main:
	addi $8,$0,10		# N
	addi $9,$0,0		# I
	
laco:
	addi $2,$0,5
	syscall
	add $10,$10,$2
	
	addi $9,$9,1
	
	slt $11,$9,$8
	beq $11,$0,fora
	
	j laco
fora:
	add $4,$0,$10
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall