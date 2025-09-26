.text 

main :
	addi $2,$0,5
	syscall
	
	add $8,$0,$2
	
	addi $9,$0,3600
	addi $10,$0,60
	
	div $11,$8,$9
	mflo $12		# horas
	mfhi $13		# resto
	
	div $14,$13,$10
	mflo $15		# minutos
	mfhi $24		# resto final = segundos
	
	add $4,$0,$12		# Imprimindo as HORAS
	addi $2,$0,1
	syscall
	
	addi $4,$0,58
	addi $2,$0,11		# código ASCII paara : (dois pontos)
	syscall
	
	add $4,$0,$15		# Imprimindo os MINUTOS
	addi $2,$0,1
	syscall
	
	addi $4,$0,58		# código ASCII paara : (dois pontos)
	addi $2,$0,11
	syscall
	
	add $4,$0,$24		# Imprimindo os SEGUNDOS
	addi $2,$0,1
	syscall
	
	
	addi $2,$0,10		# FIM
	syscall
	
	