.text

main:	
	#recebendo dados
	addi $2,$0,5
	syscall
	add $8,$0,$2
	
	addi $2,$0,5
	syscall
	add $9,$0,$2
	
	# subtração
	sub $10,$8,$9
	
	# pegando bit de sinal
	srl $11,$10,31
	
	beq $11,$0,dif_abs
	
	# "multiplcação por -1"
	# inversão de sinal
	sub $10,$0,$10
	
dif_abs:
	# print
	add $4,$0,$10
	addi $2,$0,1
	syscall
	
	#----------- FIM PRIMEIRA PARTE ------------------------
	
	add $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	#----------- MOSTRANDO MAIOR VALOR----------------------
	
	slt $12,$8,$9		# se $8 < $9 , então $12 = 1 senão $12 = 0
	beq $12,$0,oitomaior
	add $4,$0,$9
	j fim
	
oitomaior: 
	add $4,$0,$8
	
fim: 
	add $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall
	
	
	