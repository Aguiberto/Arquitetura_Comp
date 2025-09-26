.text

main :
	addi $8,$0,100	# variáveis para executar as divisões
	addi $9,$0,10	# variáveis para executar as divisões
	addi $10,$0,0	# CRIANDO O ACUMULADOR
	
	addi $2,$0,5		# pedido o valor
	syscall
	
	add $11,$0,$2   # atribuindo o valor ao reg. 11
	
	div $11,$8	# dividindo por 100
	
	mflo $12	# QUOCIENTE (resultado da divisão)
	mfhi $13	# resto da divisão
	
	add $10,$10,$12 #somando o primeiro algarismo
	
	div $13,$9	#dividindo por 10
	
	mflo $12
	mfhi $13
	
	add $10,$10,$12 #soma com o 2º algarismo
	add $10,$10,$13 #soma com o 3º algarismo
	
	add $4,$0,$10	#tranferindo o valor para o reg. 4
	
	addi $2,$0,1	# print
	syscall	
	
	addi $2,$0,10	# fim
	syscall
	
	
	
	