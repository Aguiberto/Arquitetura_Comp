.text
			# Super Mario - Overworld theme
			# INSTRUMENTO : PIANO
			# NOTAS: 
			# DO, SOL , MI
			# LA, SI, SIB, LA
			# SOL, MI, SOL, LA
			# FA, SOL
			# MI, DO, RE, SI
			
			# COLOCAR O TEMPO DE DURAÇÃO EM CADA NOTA

main:

	# DO 
	addi $4,$0,60
	addi $5,$0,1200
	addi $6,$0,0		
	addi $7,$0,115
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,650
	addi $2,$0,32
	syscall
	
	# SOL
	addi $4,$0,67
	addi $5,$0,1200
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,650
	addi $2,$0,32
	syscall
	
	# MI 
	addi $4,$0,64
	addi $5,$0,1200
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	

