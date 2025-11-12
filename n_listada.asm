.data
.text
		# programa que calcula a maior soma de dois número consecutivos de um array
main:
	lui $8,0x1001
	
	addi $9,$0,10		# tamanho do vetor
	
addvetor:
	beq $9,$0,vetorfull
	
	addi $2,$0,5
	syscall
	
	sw $2,0($8)
	
	addi $8,$8,4		# mudando endereço de memória
	addi $9,$9,-1		# decrementando o tamanho do vetor
	
	j addvetor
	
vetorfull:
	lui $8,0x1001
	
	lw $10,0($8)
	lw $11,4($8)
	
	add $10,$10,$11		# variável com a soma dos dois primeiros elementos do vetor
	addi $9,$0,10		# reinicia o valor de 
	
	addi $12,$0,1		# variável p/ saber o valor de i temporário # tem que começar de 1 por já há a primeira soma
	addi $17,$0,0
laço:
	beq $9,$0,fim
	
	lw $13,8($8)
	lw $14,12($8)
	
	add $15,$13,$14
	
	slt $16,$15,$10
	beq $16,$0, troca
	
	addi $9,$9,-1
	addi $8,$8,4
	addi $12,$12,1
	
	j laço

troca:
	add $10,$0,$15		# atualiza o valor da maior soma
	addi $9,$9,-1		# decrementa o N
	addi $8,$8,4		# muda o endereço de memória +
	addi $12,$12,1		# incrementa o valor do i
	add $17,$0,$12		# atualiza o valor de i (posição da maior soma)	
	
	add $18,$0,$13		# primeiro elemento da maior soma
	add $19,$0,$14		#segundo elemento da maior soma
	
	beq $9,$0,fim
	
	j laço
fim:
	add $4,$0,$18
	addi $2,$0,1		# PRIMEIRO ELEMENTO DA MAIOR SOMA
	syscall
	
	addi $4,$0,'+'
	addi $2,$0,11
	syscall
	
	add  $4,$0,$19
	addi $2,$0,1		# SEGUNDO ELEMENTO DA MAIOR SOMA
	syscall
	
	addi $4,$0,'='
	addi $2,$0,11
	syscall
	
	add $4,$0,$10
	addi $2,$0,1		# MAIOR SOMA
	syscall

	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	addi $4,$0,'p'
	addi $2,$0,11
	syscall
	
	add $4,$0,$17		# POSIÇÃO INICIAL DA MAIOR SOMA
	addi $2,$0,1
	syscall
			
	addi $2,$0,10
	syscall