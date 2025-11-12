.data
.text
		# programa que calcula a maior soma três elementos consecutivos de um vetor
main:
	lui $8,0x1001
	addi $9,$9,10
	
addvetor:
	beq $9,$0,vetorfull
	
	addi $2,$0,5
	syscall
	
	sw $2,0($8)
	
	addi $9,$9,-1
	addi $8,$8,4
	
	j addvetor
	
vetorfull:
	lui $8,0x1001
	addi $9,$9,10
	
	addi $10,$0,0		# array[i]
	addi $11,$0,0		# array[i+1]
	addi $12,$0,0		# array[i+2]
	
	addi $13,$0,1		# I	
	addi $14,$0,0		# SOMA
	addi $15,$0,0		# I FINAL
	addi $16,$0,0		# maior soma
	
	lw $10,0($8)
	lw $11,4($8)
	lw $12,8($8)
	
	add $14,$10,$11
	add $14,$14,$12	
	
	add $16,$0,$14		# maior soma = array[i]+arrai[i+1]+array[i+2]
	addi $9,$9,-1
	
verification:
	beq $9,$0,fim
	
	lw $10,4($8)
	lw $11,8($8)
	lw $12,12($8)
	
	add $14,$10,$11
	add $14,$14,$12		
	
	slt $17,$14,$16
	beq $17,$0,troca
	
	addi $8,$8,4		# sobe um endereço de memória
	addi $9,$9,-1		# diminui o n
	addi $13,$13,1		# incrementa o valor de i
	
	j verification
	
troca:
	add $16,$0,$14		# atualiza a soma
	add $15,$0,$13		# atualiza a posição da soma
	
	addi $8,$8,4		# sobe um endereço de memória
	addi $9,$9,-1		# diminui o n
	addi $13,$13,1		# incrementa o valor de i
	
	add $19,$0,$10		# valor do array[i] para printar
	add $20,$0,$11		# valor do array[i+1] para printar
	add $21,$0,$12		# valor do array[i+2] para printar
	
	beq $9,$0,fim
	
	j verification
	
fim:
	add $4,$0,$19
	addi $2,$0,1
	syscall

	addi $4,$0,'+'
	addi $2,$0,11
	syscall
	
	add $4,$0,$20
	addi $2,$0,1
	syscall

	addi $4,$0,'+'
	addi $2,$0,11
	syscall
	
	add $4,$0,$21
	addi $2,$0,1
	syscall
	
	addi $4,$0,'='
	addi $2,$0,11
	syscall
	
	add $4,$0,$16
	addi $2,$0,1
	syscall

	addi $4,$0,'\n'
	addi $2,$0,11
	syscall

	addi $4,$0,'p'
	addi $2,$0,11
	syscall
	
	add $4,$0,$15
	addi $2,$0,1
	syscall

	addi $2,$0,10
	syscall