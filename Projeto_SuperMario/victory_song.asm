.text
			# Super Mario - Flagpole Fanfare
			# INSTRUMENTO : PIANO
			# NOTAS: 
			# G3, C4, E4, G4, C5, E5, G5, B3
			# Eb4, Ab4, C5, Eb5,Ab5, Bb5, Ab3
			# F4, Bb4, D5, F5, Bb5, Bb5, Bb5, C6.
			
main:

	# SOL - G3
	addi $4,$0,55
	addi $5,$0,250
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,250
	addi $2,$0,32
	syscall
	
	# DO - C4
	addi $4,$0,60
	addi $5,$0,250
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# MI - E4
	addi $4,$0,64
	addi $5,$0,250
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# SOL - G4
	addi $4,$0,67
	addi $5,$0,250
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# DO - C5
	addi $4,$0,72
	addi $5,$0,250
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# MI - E5
	addi $4,$0,76
	addi $5,$0,250
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall

	# SOL - G5
	addi $4,$0,79
	addi $5,$0,500
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# LA - Ab3
	addi $4,$0,56
	addi $5,$0,500
	addi $6,$0,0		
	addi $7,$0,80
	addi $2,$0,31
	syscall
	
# ========================================
		
	# PAUSA
	addi $4,$0,350
	addi $2,$0,32
	syscall
	
	
# ========== PARTE 2 ====================

	
	# MI - Eb4
	addi $4,$0,63
	addi $5,$0,250
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# LA - Ab4
	addi $4,$0,68
	addi $5,$0,250
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# DO - C5
	addi $4,$0,72
	addi $5,$0,250
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# MI - Eb5
	addi $4,$0,75
	addi $5,$0,250
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# LA - Ab5
	addi $4,$0,80
	addi $5,$0,250
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall

	# SI - Bb5
	addi $4,$0,82
	addi $5,$0,500
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# Si - Ab3
	addi $4,$0,58
	addi $5,$0,500
	addi $6,$0,0		
	addi $7,$0,80
	addi $2,$0,31
	syscall

# ======================================	
			
	# PAUSA
	addi $4,$0,350
	addi $2,$0,32
	syscall
	
# ========== PARTE 2 ====================

	
	# FA - F4
	addi $4,$0,65
	addi $5,$0,250
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# SI - Bb4
	addi $4,$0,70
	addi $5,$0,500
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# RE - D5
	addi $4,$0,74
	addi $5,$0,500
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# FA - F5
	addi $4,$0,77
	addi $5,$0,600
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,250
	addi $2,$0,32
	syscall
	
	# SI - Bb5
	addi $4,$0,82
	addi $5,$0,500
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# SI - Bb5
	addi $4,$0,82
	addi $5,$0,250
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# SI - Bb5
	addi $4,$0,82
	addi $5,$0,250
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# SI - Bb5
	addi $4,$0,82
	addi $5,$0,250
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall

	# DO - C6
	addi $4,$0,84
	addi $5,$0,800
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	