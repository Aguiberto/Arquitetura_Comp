.text

main: 	lui $8, 0x1001
	ori $9, 0x5c9df2
	
	addi $10,$0,8191
	
ceu:	beq $10,$0,fim
	sw $9,0($8)
	addi $8,$8,4
	addi $10,$10,-1
	j ceu


fim:	addi $2,$0,10
	syscall