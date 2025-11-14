.data
.text

main:
	lui $8,0x1001
	addi $9,$0,6
	addi $11,$0,0
	
vetor:	beq $11,$9,print
	
	addi $2,$0,5
	syscall
	
	andi $10,$2,1
	beq $10,$0,par
	
	j vetor

par:
	sw $2,0,($8)
	
	add $11,$11,1
	addi $8,$8,4
	
	j vetor
	
print:	 beq $9,$0,fim

	lw $4,-4($8)	
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	addi $8,$8,-4
	addi $9,$9,-1
	
	j print
fim:
	addi $2,$0,10
	syscall