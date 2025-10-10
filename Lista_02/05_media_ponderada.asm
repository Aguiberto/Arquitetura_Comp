.text

		# este programa calcula e media ponderada de 3 notas
		# informa se o aluno foi aprovado ou não
		# media para aprovação : 06
		
main:
	addi $2,$0,5
	syscall			# recebendo dados NOTA 1
	add $8,$0,$2
	
	addi $2,$0,5
	syscall			# recebendo dados NOTA 2
	add $9,$0,$2
	
	addi $2,$0,5
	syscall			# recebendo dados NOTA 3
	add $10,$0,$2
	
	addi $11,$0,1
	addi $12,$0,2		# pesos
	addi $13,$0,3
	
	mul $14,$8,$11		# multiplicação do peso 1
	add $15,$0,$14		# incremento da nota
	
	mul $14,$9,$12		# multiplicação do peso 2
	add $15,$15,$14		# incremento da nota
	
	mul $14,$10,$13		# multiplicação do peso 3
	add $15,$15,$14		# incremento da nota. TOTAL
	
	add $11,$11,$12
	add $11,$11,$13		# soma dos pesos

	div $15,$11
	mflo $15		# media do aluno
	
	addi $8,$0,6
	slt $9,$15,$8
	
	beq $9,$0,aprovado
	
	addi $4,$0,'R'
	addi $2,$0,11
	syscall
	
	j fim
	
aprovado:
	addi $4,$0,'A'
	addi $2,$0,11
	syscall
	
fim: 
	addi $2,$0,10
	syscall
	
	