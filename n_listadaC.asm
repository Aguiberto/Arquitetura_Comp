.data
.text
			# programa que soma todos os pares da lista
main:
	lui $8, 0x1001
	addi $9,$0,10
	
criavetor: beq $9,$0,fimvetor
	
	addi $2,$0,5
	syscall
	
	sw $2,0($8)
	
	addi $8,$8,4
	addi $9,$9,-1
	
	j criavetor

fimvetor: lui $8,0x1001
	
	addi $9,$9,10
	addi $12,$0,0		# acumulador dos pares
	
verificador: beq $9,$0,fim

	lw $10,0($8)
	add $8,$8,4
	addi $9,$9,-1
	
	andi $11,$10,1
	beq $11,$0,par
	
	j verificador 
	
par: 
	add $12,$12,$10		# acumula um valor par da lista
	j verificador
	
fim:
	add $4,$0,$12
	addi $2,$0,1
	syscall
	
	addi $2,$0,10	
	syscall