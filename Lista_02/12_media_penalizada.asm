.text

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
	
	div $13,$11		# divisão da soma das notas pelos pesos
	mflo $13		# MÉDIA
	add $4,$0,$13
	addi $2,$0,1
	syscall
	
	add $4,$0,'\n'
	addi $2,$0,11		# QUEBRA DE LINHA
	syscall	
	
	addi $14,$0,2		# valor de 5 faltas 
	
	mul $15,$14,$10		# PENALIDADE
	add $4,$0,$15
	addi $2,$0,1
	syscall
	
	add $4,$0,'\n'
	addi $2,$0,11		# QUEBRA DE LINHA
	syscall
	
	sub $24,$13,$15		# MEDIA FINAL
	add $4,$0,$24
	addi $2,$0,1
	syscall	
	
	
fim:	addi $2,$0,10
	syscall	
	
	
	
	
	