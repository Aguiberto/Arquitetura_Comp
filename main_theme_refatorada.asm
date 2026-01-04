.text
			# Super Mario - Overworld theme
			# INSTRUMENTO : PIANO
			# NOTAS: MI,MI,MI,DO,MI,SOL,SOL
			
			# COLOCAR O TEMPO DE DURAÇÃO EM CADA NOTA

main:	
	addi $6,$0,0		# instrumento
	addi $7,$0,100		# volume

	# MI
	addi $5,$0,370
	addi $4,$0,64
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,350
	addi $2,$0,32
	syscall
	
	# MI
	addi $5,$0,370
	addi $4,$0,64
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,350
	addi $2,$0,32
	syscall
	
	# MI
	addi $5,$0,370
	addi $4,$0,64
	addi $2,$0,31
	syscall
	
	# PAUSA NO MEIO
	addi $4,$0,340
	addi $2,$0,32
	syscall
	
	# DO
	addi $5,$0,480
	addi $4,$0,60
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,350
	addi $2,$0,32
	syscall
	
	# MI
	addi $5,$5,480
	addi $4,$0,64
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,350
	addi $2,$0,32
	syscall
	
	# SOL
	addi $5,$0,580
	addi $4,$0,67
	addi $2,$0,31
	syscall
	
	# PAUSA FINAL
	addi $4,$0,650
	addi $2,$0,32
	syscall
	
	# SOL GRAVE
	addi $5,$0,580
	addi $4,$0,55
	addi $2,$0,31
	syscall
	
	# PAUSA FINAL
	addi $4,$0,750
	addi $2,$0,32
	syscall
	
	
	
# --------- PARTE 1 ------------------

	# DO
	addi $5,$0,600
	addi $4,$0,48
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,550
	addi $2,$0,32
	syscall
	
	# SOL
	addi $5,$0,600
	addi $4,$0,55
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,550
	addi $2,$0,32
	syscall
	
	# MI
	addi $5,$0,600
	addi $4,$0,52
	addi $2,$0,31
	syscall

	# PAUSA
	addi $4,$0,600
	addi $2,$0,32
	syscall
		
#------- PARTE 2 ------------------
	
	# LA
	addi $5,$0,550
	addi $4,$0,57
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,400
	addi $2,$0,32
	syscall
	
	# SI
	addi $5,$0,600
	addi $4,$0,59
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,450
	addi $2,$0,32
	syscall
	
	# SIb
	addi $5,$0,480
	addi $4,$0,58
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,350
	addi $2,$0,32
	syscall
	
	# LA
	addi $5,$0,480
	addi $4,$0,57
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,600
	addi $2,$0,32
	syscall
	
# ------- PARTE 3 -------------

	# SOL
	addi $5,$0,400
	addi $4,$0,55
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,280
	addi $2,$0,32
	syscall
	
	# MI
	addi $5,$0,300
	addi $4,$0,52
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,280
	addi $2,$0,32
	syscall
	
	# SOL
	addi $5,$0,310
	addi $4,$0,55
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,280
	addi $2,$0,32
	syscall
	
	# LA
	addi $5,$0,300
	addi $4,$0,57
	addi $2,$0,31
	syscall
	
	
	# PAUSA
	addi $4,$0,600
	addi $2,$0,32
	syscall
	
# ---------- PARTE 4 -------------

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
	

	

