.text

main: 

#------- Recebendo o número ----------

	addi $2,$0,5		
	syscall
	
	add $8,$0,$2
	
# ---- Extraindo os digitos --------

	addi $9,$0,1000
	addi $10,$0,100
	addi $11,$0,10
	
	div $8,$9
	mflo $12 		# UNIDADE DE MILHAR
	mfhi $13
	
	div $13,$10
	mflo $14		# CENTENA
	mfhi $15
	
	div $15,$11		
	mflo $24		# DEZENA
	mfhi $25		# UNIDADE
	
# ----- Print Valores -----------------

	add $4,$0,$12
	addi $2,$0,1		# UN. MILHAR
	syscall
	
	addi $4,$0,10		# 10 = Código ASCII ara '\n'
	addi $2,$0,11		# QUEBRA DE LINHA
	syscall	
	
	add $4,$0,$14
	addi $2,$0,1		# CENTENA
	syscall
	
	addi $4,$0,10		# QUEBRA DE LINHA
	addi $2,$0,11		# IMPRIMIR CARACTERE
	syscall
	
	add $4,$0,$24
	addi $2,$0,1		# DEZENA
	syscall
	
	addi $4,$0,10
	addi $2,$0,11		# QUEBRA DE LINHA
	syscall
	
	add $4,$0,$25
	addi $2,$0,1		# UNIDADE
	syscall
	
	addi $2,$0,10		# FIM
	syscall
	
	
	
	
	
	
	
	
	