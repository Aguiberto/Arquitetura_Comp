.text

main:
	addi $2,$0,5
	syscall
	
	add $8,$0,$2 		# HORAS
	
	addi $2,$0,5
	syscall	
	
	add $9,$0,$2		# MINUTOS
	
	addi $2,$0,5
	syscall 
	
	add $10,$0,$2		# SEGUNDOS
	
	addi $11,$0,3600	# CONSTANTE P/ CONVERSÃO
	addi $12,$0,60		# CONSTANTE P/ CONVERSÃO
	
	mul $13,$8,$11		# CONVERSÃO
	mul $14,$9,$12		# CONVERSAO
	
	add $15,$13,$14		# Soma das horas (em seg.) com os minuntos (em seg.)
	add $15,$15,$10		# Soma com os segundos e o TOTAL
	
	add $4,$0,$15
	
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall
	