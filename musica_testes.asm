.text
			# Super Mario - Overworld theme
			# INSTRUMENTO : PIANO
		
			

main:	
	addi $6,$0,0		# instrumento
	addi $7,$0,100		# volume
	
	
	# FA
	addi $5,$0,400
	addi $4,$0,53
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,400
	addi $2,$0,32
	syscall
	
	# SOL
	addi $5,$0,400
	addi $4,$0,55
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,600
	addi $2,$0,32
	syscall
	

	