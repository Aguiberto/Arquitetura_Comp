.text
		# RESULTADO IMPAR = -1 RESULTADO PAR = 0
main: 
	addi $8,$0,2		# CONSTANTE P/ DIVISAO
	
	addi $2,$0,5
	syscall
	
	add $9,$0,$2		# PRIMEIRO VALOR
	
	addi $2,$0,5
	syscall
	
	add $10,$0,$2		# SEGUNDO VALOR
	
	add $11,$9,$10		# SOMA
	
	div $11,$8		
	mflo $12		# QUOCIENTE (RESULTADO INTEIRO)
	mfhi $13		# RESTO
	
	add $4,$0,$12
	addi $2,$0,1		# PRINTA O INTEIRO
	syscall
	
	addi $4,$0,44
	addi $2,$0,11		# PRINTA A VIRGULA
	syscall
	
	addi $14,$0,10		# ---- AQUI ACONTECE A MÁGICA ---------------------------
	mul $13,$13,$14		# ---- O RESTO É MULTIPLICADO POR 10 --------------------
				#              ...
	div $13,$8		# ---- DEPOIS O RESTO É DIVIDIDO NOVAMENTE --------------
	mflo $13		# ---- SE TRANSFORMA EM DECIMAL E É ATRIBUÍDO AO $13 ----
	
	add $4,$0,$13
	addi $2,$0,1		# PRINTA O DECIMAL
	syscall
	
	addi $2,$0,10		# ENCERRA O PROGRAMA
	syscall