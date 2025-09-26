.text

main:
	addi $8,$0, 5
	addi $9,$0, 2
	#adicionando valores
	
	add $10,$9,$8
	#soma
	
	sub $11,$8,$9
	#subtração
	
	mul $12,$9,$8
	#mutiplicação
	
	div $8, $9
	mflo $13
	# multiplicação. 
	# Ver como será representado o resultado
	# mflo para transferir o resultado da divisão para o reg 13
	# NA DIVISÃO HÁ O ARREDONDAMENTO PARA BAIXO
	
	