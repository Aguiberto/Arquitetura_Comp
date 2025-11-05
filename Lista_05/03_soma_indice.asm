.data
.text

main:
	addi $2,$0,5
	syscall
	add $8,$0,$2		# X
	
	addi $2,$0,5
	syscall
	add $9,$0,$2		# Y
	
	addi $10,$0,8		# Tamanho do Vetor
	addi $12,$12,0		# soma dos valores nos índices
	
	addi $13,$13,1
	
	lui $11,0x1001
	
incremento:

	addi $2,$0,5
	syscall
	
	sw $2,0($11) 

	beq $13,$10,fim
	beq $13,$8, somar
	beq $13,$9, somar
	
	addi $11,$11,4
	addi $13,$13,1
	
	j incremento

somar:
	add $12,$12,$2
	
	addi $11,$11,4
	addi $13,$13,1
	
	j incremento
fim:
	add $4,$0,$12
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall