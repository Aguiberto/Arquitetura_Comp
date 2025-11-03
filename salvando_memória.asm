.data
.text

main:
	lui $8,0x1001		# cria o endereço de memório
		
	addi $2,$0,5
	syscall			# entrada para determinar a quantidade de dados (N)
	add $9,$0,$2
		
laço:	
	beq $9,$0,fim		# verifica se N chegou em 0
	
	addi $2,$0,5		# recebe um valor de dado
	syscall
	
	sw $2,0($8)		# adiciona na memória
	addi $8,$8,4		# muda o endereço de memório para o próximo
	
	subi $9,$9,1		# decrementa o N
	
	j laço
fim:
	addi $2,$0,10
	syscall	