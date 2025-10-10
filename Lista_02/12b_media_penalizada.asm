.text
	# programa calcula a média ponderada de um aluno
	# penaliza com 10 pontos a cada 5 faltas
	# como calcular:
	#    Se o a quantiade de faltas for menor que 10 perde 10 pontos
	#    Se as faltas forem menor que 20
main:
	addi $2,$0,5
	syscall			# NOTA 1
	add $8,$0,$2
	
	addi $2,$0,5
	syscall			# NOTA 2
	add $9,$0,$2
	
	addi $2,$0,5
	syscall			# FALTAS 
	add $10,$0,$2
	
	addi $11,$0,20		# peso 2
	addi $12,$0,30		# peso 3
	
	mul $8,$8,$11		# nota com peso 2
	mul $9,$9,$12		# nota com peso 3
	
	add $13,$8,$9		# soma das notas
	add $11,$11,$12		# soma dos pesos
	
	div $13,$11		# divisão da soma das notas pela soma dos pesos
	mflo $13		# MÉDIA
	
	add $4,$0,$13
	addi $2,$0,1		# mostrar a média
	syscall	
	
	addi $4,$0,'\n'
	addi $2,$0,11		# QUEBRA DE LINHA
	syscall
	
	addi $14,$0,5		# quantidade de faltas para 1 penalização
	addi $15,$0,10		# valor para cada penalidade
	
	div $10,$14		# quantidade de penalidade que serão computadas
	mflo $8
	
	mul $9,$8,$15		# PENALIDADE
	add $4,$0,$9		# mostrar penalidade
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11		# QUEBRA DE LINHA
	syscall
	
	sub $10,$13,$9		# NOTA FINAL
	add $4,$0,$10		# mostrar nota final
	addi $2,$0,1		
	syscall
	
	addi $2,$0,10
	syscall