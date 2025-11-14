.data
.text
		# programa que calcula a maior soma de elementos consecutivos
		
		# int array[10];
		# int soma = array[0];
		# posicao = 0;
		
		# for(int i = 0; i < n; i++){
		#   if(array[i] + array[i+1 > soma){
		#      soma = array[i] + array[i+1]
		#   }
		#}
		
main:
	lui $8,0x1001
	addi $9,$0,10
	
array:	beq $9,$0,fimarray
	
	addi $2,$0,5
	syscall
	
	sw $2,0($8)
	addi $8,$8,4
	addi $9,$9,-1
	
	j array

fimarray: lui $8,0x1001

	addi $9,$9,10
	
	addi $10,$0,0		# MAIOR SOMA
	addi $11,$0,0		# I
	
	lw $12,0($8)		# array[i]
	lw $13,4($8)		# array[i+1]
	
	add $10,$12,$13		# array[i] + array[i+1]
	
	addi $9,$9,-1
	addi $8,$8,4
	addi $11,$11,1
			
verification: beq $9,$0,fim
	
	lw $12,0($8)
	lw $13,4($8)
	
	add $14,$12,$13
	
	slt $15,$14,$10
	beq $15,$0,troca
	
	addi $8,$8,4
	addi $9,$9,-1
	addi $11,$11,1
	
	j verification
	
troca:
	add $10,$0,$14		# atualiza o valor da maior soma
	add $18,$0,$11		# I do maior
	
	addi $8,$8,4		# aumenta o endereço de memória
	addi $9,$9,-1		#  decrementa o N
	addi $11,$11,1		# aumenta a valor de I
	
	add $16,$0,$12		# valor que compõe a soma da maior soma
	add $17,$0,$13		# valor que compõe a soma da maior soma
	
	beq $9,$0,fim
	
	j verification

fim:
	add $4,$0,$16
	addi $2,$0,1
	syscall
	
	addi $4,$0,'+'
	addi $2,$0,11
	syscall
	
	add $4,$0,$17
	addi $2,$0,1
	syscall
	
	addi $4,$0,'='
	addi $2,$0,11
	syscall
	
	add $4,$0,$10
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	addi $4,$0,'p'
	addi $2,$0,11
	syscall
	
	add $4,$0,$18
	addi $2,$0,1
	syscall
