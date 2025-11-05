.data
.text

main:
	lui $8,0x1001		# criando endereço de memória
	
	addi $9,$0,6		# valor referência para o laço (N)
	addi $10,$0,6
laço:
	addi $2,$0,5
	syscall
	
	sw $2,0($8)		# salvando a entrada no endereço de memória do dolar $8

	addi $9,$9,-1		# decrementa o valor de N
	beq $9,$0,fimlaço
	
	addi $8,$8,4		# mudando o endereço de memória
	
	j laço
	
fimlaço:
	lw $4, 0($8)		# carrega no $4 o valor na ultima memória em $8
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	addi $10,$10,-1
	
	beq $10,$0,fim
	
	addi $8,$8,-4
	
	
	j fimlaço
fim:
	addi $2,$0,10
	syscall
	