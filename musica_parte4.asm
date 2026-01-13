.text
		# PARTE 4
		# MI,DO,RE,SI
		
main:
	# MI
	addi $4,$0,64
	addi $5,$0,400
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,400
	addi $2,$0,32
	syscall
	
	# DO
	addi $4,$0,60
	addi $5,$0,300
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# RE
	addi $4,$0,62
	addi $5,$0,300
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,200
	addi $2,$0,32
	syscall
	
	# SI 
	addi $4,$0,71
	addi $5,$0,300
	addi $6,$0,0		
	addi $7,$0,100
	addi $2,$0,31
	syscall
	
	
