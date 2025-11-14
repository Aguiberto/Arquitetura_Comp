.data
.text

main:
	lui $8,0x1001
	add $9,$9,10
	
	addi $10,$10,0		# QTD negativos
	addi $11,$11,0		# ACUMULADOR PARES
	
vetor:	beq $9,$0,fim

	addi $2,$0,5
	syscall
	
	slt $12,$2,$0
	beq $12,$0,positivo
	
	addi $10,$10,1
	
	addi $9,$9,-1
	j vetor
	
positivo:
	add $11,$11,$2
	addi $9,$9,-1
	
	j vetor
fim:
	add $4,$0,$10
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	add $4,$0,$11
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall