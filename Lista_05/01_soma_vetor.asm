.data

.text

main:
	lui $8, 0x1001
	
	addi $9,$0,6		# N
	addi $10,$0,0		# SOMA
	
laço:
	beq $9,$0,soma
	
	addi $2,$0,5
	syscall
	
	sw $2,0($8)
	
	addi $9,$9,-1
	addi $8,$8,4
	
	j laço
	
soma:
	lui $8,0x1001
	
	lw $4,0($8)
	add $10,$10,$4
	
	lw $4,4($8)
	add $10,$10,$4
	
	lw $4,20($8)
	add $10,$10,$4
	
	add $4,$0,$10
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
mudavalor:
	addi $11,$0,100
	sw $11,16($8)
	
	addi $9,$0,6
	
mostravetor:

	beq $9,$0,fim
	
	lw $4,0($8)
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	addi $8,$8,4
	addi $9,$9,-1
	
	j mostravetor
fim:
	addi $2,$0,10
	syscall
