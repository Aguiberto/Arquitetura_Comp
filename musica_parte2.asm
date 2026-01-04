.text
			# Super Mario - Overworld theme
			# INSTRUMENTO : PIANO
			# NOTAS: MI,MI,MI,DO,MI,SOL,SOL
			
			# COLOCAR O TEMPO DE DURAÇÃO EM CADA NOTA

main:	
	addi $6,$0,0		# instrumento
	addi $7,$0,100		# volume

	# MI
	addi $5,$0,300
	addi $4,$0,64
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,300
	addi $2,$0,32
	syscall
	
	# MI
	addi $5,$0,300
	addi $4,$0,64
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,300
	addi $2,$0,32
	syscall
	
	# MI
	addi $5,$0,300
	addi $4,$0,64
	addi $2,$0,31
	syscall
	
	# PAUSA NO MEIO
	addi $4,$0,320
	addi $2,$0,32
	syscall
	
	# DO
	addi $5,$0,400
	addi $4,$0,60
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,300
	addi $2,$0,32
	syscall
	
	# MI
	addi $5,$5,400
	addi $4,$0,64
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,300
	addi $2,$0,32
	syscall
	
	# SOL
	addi $5,$0,500
	addi $4,$0,67
	addi $2,$0,31
	syscall
	
	# PAUSA FINAL
	addi $4,$0,600
	addi $2,$0,32
	syscall
	
	# SOL GRAVE
	addi $5,$0,600
	addi $4,$0,55
	addi $2,$0,31
	syscall
	
	