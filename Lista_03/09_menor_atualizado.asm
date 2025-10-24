.text
		# programa que lê uma quantidade de numeros definidas pelo usuário
		# mostra o maior número
		# diz quantas vezes o maior foi redefinido
main:
	addi $8,$0,0		# variável para ATUALIZAÇÃO
	addi $9,$0,0		# I para termino do laço
	addi $14,$0,0		# veriável que conta a redefinição do menor

	addi $2,$0,5
	syscall
	add $10,$0,$2		# N

	subi $10,$10,1		# N-1
	
	addi $2,$0,5
	syscall
	add $8,$0,$2

laço:
	addi $2,$0,5
	syscall
	add $11,$0,$2
	
	slt $12,$11,$8
	bne $12,$0,menor
	
	# condição de parada do laço
	slt $13,$9,$10 
	beq $13,$0,fim
	
	addi $9,$9,1		# incremento do I
	
	j laço

menor:
	add $8,$0,$11		# atualização do menor
	addi $9,$9,1		# incremento do I
	addi $14,$14,1		# incremento da redefinição
	
	j laço

fim:
	add $4,$0,$8
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	add $4,$0,$14
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall
