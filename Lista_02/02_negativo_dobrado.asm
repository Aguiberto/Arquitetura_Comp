.text

main:
	addi $2,$0,5
	syscall			# recebendo os dados
	add $8,$0,$2
	
	srl $9,$8,31		# pegando o bit de sinal
	
	addi $10,$0,1		# criando variável de comparação de valor == 1
	
	beq $9,$0,positivo
	
	mul $11,$8,$8
	add $4,$0,$11
	j fim
	
positivo:
	add $8,$8,$8		# somando a N + N (Resultando no DOBRO)
	add $4,$0,$8
fim:	
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall
	
	