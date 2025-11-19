.data
.text
		# Aguiberto Candido da Silva Filho
		# Alisson Bruno Dantas Felix
		
		# algoritmo de kadane
		# maior sublista contígua
		# array com 10 elementos
		
		# int max_atual = array[0];
		# int max_global = array[0];
		#
		# for(int i = 0; i > n; i++){
		#  if(array[i] > max_atual + array[i]){
		#   max_atual = array[i];
		# } else{
		#   max_atual + = array[i];
		# }
		#  if(max_atual > max_global){
		#    max_global = max_atual
		# }
		#}
		
main:
	lui $8,0x1001
	addi $2,$0,5
	syscall
	
	add $9,$0,$2
	add $18,$0,$9
	
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
	add $9,$0,$18
	
	addi $15,$0,-1		# INDICE
	addi $16,$0,0		# INDICE FINAL
	addi $17,$0,1		# QTD ELEMENTOS
	
	lw $10,0($8)		# maior_atual
	lw $11,0($8)		# maior_global
	
verification:
	
	beq $9,$0,fim
	
	lw $12,0($8)		# array[i]
	add $10,$10,$12		# maior_atual + array[i]
	addi $17,$17,1		# incrementa um número da sublista
	
	addi $15,$15,1
	add $8,$8,4
	
	slt $13,$12,$10		# 1º IF (array[i] > array[i] + maior_atual)
	beq $13,$0,atualiza
	
	addi $9,$9,-1
	
	slt $14,$10,$11		# 2º IF (maior_atual > maior_global)
	beq $14,$0,pre_global

	sub $17,$17,1
	
	j verification
	
atualiza:
	add $10,$0,$12		# max_atual = array[i]
	add $16,$0,$15		# atualiza qual é a posição inicial da maior sublista
	addi $9,$9,-1		# decremento de N
	
	
	addi $17,$0,1		# reseta a maior sublista para um elemento
	
	slt $14,$10,$11		# 2º IF (maior_atual > maior_global)
	beq $14,$0,maior_global 
	
	j verification
	
pre_global:
	add $16,$0,$15
	
maior_global:
	add $11,$0,$10		# maior_global = maior_atual;
	
	j verification
	
fim:
	add $4,$0,$11
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	add $4,$0,$16
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	add $4,$0,$17
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall
