.text
			# Super Mario - Overworld theme
			# INSTRUMENTO : PIANO
			# NOTAS: MI,MI,MI,DO,MI,SOL,SOL
			
			# COLOCAR O TEMPO DE DURAÇÃO EM CADA NOTA

main:	
			# volume

	# MI
	addi $4,$0,64
	addi $5,$0,300
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,230
	addi $2,$0,32
	syscall
	
	# MI
	addi $4,$0,64
	addi $5,$0,300
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,230
	addi $2,$0,32
	syscall
	
	# MI
	addi $4,$0,64
	addi $5,$0,400
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA NO MEIO
	addi $4,$0,300
	addi $2,$0,32
	syscall
	
	# DO
	addi $4,$0,60
	addi $5,$0,380
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,250
	addi $2,$0,32
	syscall
	
	# MI
	addi $4,$0,64
	addi $5,$5,380
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,250
	addi $2,$0,32
	syscall
	
	# SOL
	addi $4,$0,67
	addi $5,$0,580
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA FINAL
	addi $4,$0,650
	addi $2,$0,32
	syscall
	
	# SOL GRAVE
	addi $4,$0,55
	addi $5,$0,580
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA FINAL
	addi $4,$0,750
	addi $2,$0,32
	syscall
	
	
