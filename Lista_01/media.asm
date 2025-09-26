.text

main:
	#pesos
	
	addi $8,$0,2
	addi $9,$0,3
	
	#nota 1
	
	addi $2,$0,5
	syscall
	
	add $10,$0,$2
	
	#nota 2
	
	addi $2,$0,5
	syscall
	
	add $11,$0,$2
	
	# nota com pesos
	
		# nota 1
		mul $12,$10,$8
		
		# nota 2
		mul $13, $11, $9
		
	add $14, $13, $12
	
	# média
	
	addi $15,$0,5
	div $14,$15
	
	mflo $24
	
	# mostrar média
	
	add $4,$0,$24
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall
		
		
		
	
	