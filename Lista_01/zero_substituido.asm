.text

main:
	addi $2,$0,5
	syscall
	
	addi $8,$0,1000
	
	div $8,$2
	
	mflo $8			# UNIDADE DE MILHAR
	mfhi $9
	
	addi $10,$0,100
	
	div $9,$10
	
	mflo $11		# CENTENA
	mfhi $12
	
	addi $13,$0,10
	
	div $12,$13
	
	mflo $14		# DEZENA
	mfhi $15		# UNIDADE
	
	
	
	