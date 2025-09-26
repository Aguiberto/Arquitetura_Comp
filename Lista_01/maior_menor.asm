.text
		# O PROGRAMA MOSTRA O MENOR VALOR
main:
	addi $2,$0,5		# PRIMEIRA ENTRADA
	syscall
	
	add $8,$0,$2		# ATRIBUIÇÃO AO $8
	
	addi $2,$0,5		# SEGUNDA ENTRADA
	syscall
	
	add $9,$0,$2		# ATRIBUIÇÃO AO $9
	
	# ----------------- MAGICA DA QUESTÃO ---------------------
	
	sub $10,$8,$9		# Diferença das entradas
	sra $11,$10,31
	xor $12,$10,$11		# Inverte os bits
	sub $12,$12,$11		# DEVOLVE O VALOR ABSOLUTO
	
	# Esse trecho e responsável por calcular o módulo de um número
	# ----------------------------------------------------------
	
	add $11,$8,$9		# Soma das entradas
	sub $13, $11,$12	# Subtração do total pelo resultada da diferença em módulo
	
	addi $14,$0,2		# Constante para divisão
	
	div $13,$14		# Divisão por 2
	mflo $4		# Resultado
	
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall
