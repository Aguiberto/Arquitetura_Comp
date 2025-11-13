.data
.text
		# algoritmo de kadane
		# maior sublista contígua
		# aarray com 10 elementos
		
main:
	lui $8,0x1001
	addi $9,$0,9
	
criavetor:
	beq $9,$0,vetorcompleto
	
	addi $2,$0,5
	syscall
	
	sw $2,0($8)
	
	addi $9,$9,-1
	addi $8,$8, 4
	
	j criavetor
	
vetorcompleto:
	
	lui $8,0x1001
	addi $9,$0,9
	
	lw $10,0($8)		# maior_atual
	lw $11,0($8)		# maior_global
	
verification:
	
	beq $9,$0,fim
	
	add $8,$8,4
	
	lw $12,0($8)		# array[i]
	add $10,$10,$12		# maior_atual + array[i]
	
	slt $13,$12,$10		# 1º IF (array[i] > array[i] + maior_atual)
	beq $13,$0,atualiza
	
	addi $9,$9,-1
	
	slt $14,$10,$11		# 2º IF (maior_atual > maior_global)
	beq $14,$0,maior_global 
	
	j verification
	
atualiza:
	add $10,$0,$12		# max_atual = array[i]
	addi $9,$9,-1		# decremento de N
	
	slt $14,$10,$11		# 2º IF (maior_atual > maior_global)
	beq $14,$0,maior_global 
	
	j verification
	
maior_global:
	add $11,$0,$10		# maior_global = maior_atual;
	j verification
fim:
	add $4,$0,$11
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall