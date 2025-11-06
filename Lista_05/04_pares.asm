.data
.text

main:
	lui $8,0x1001
	
	addi $9,$0,10
	
	addi $12,$0,0		# contar par

incremento:

	beq $9,$0,fim
	
	addi $2,$0,5
	syscall
	
	sw $2,0($8)
	
	andi $11,$2,1
	beq $11,$0,par
	
	addi $8,$8,4
	addi $9,$9,-1
	
	j incremento
par:
	addi $12,$12,1
	
	addi $8,$8,4
	addi $9,$9,-1
	
	j incremento
	
fim:
	add $4,$0,$12
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall