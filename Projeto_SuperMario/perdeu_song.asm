.text

		# NOTAS G F F F E D C

main:	addi $6,$0,0		# INSTRUMENTO
	addi $7,$0,100		# VOLUME
	
	 # G
	addi $5,$0,800
	addi $4,$0,55
	addi $2,$0,31
	syscall
	
	 # G
	addi $5,$0,800
	addi $4,$0,55
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,900
	addi $2,$0,32
	syscall
	
	# F
	addi $5,$0,450
	addi $4,$0,53
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,300
	addi $2,$0,32
	syscall
	
	# F
	addi $5,$0,450
	addi $4,$0,53
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,300
	addi $2,$0,32
	syscall
	
	# F
	addi $5,$0,450
	addi $4,$0,53
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,300
	addi $2,$0,32
	syscall
	
	# E
	addi $5,$0,700
	addi $4,$0,52
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,400
	addi $2,$0,32
	syscall
	
	# D
	addi $5,$0,800
	addi $4,$0,50
	addi $2,$0,31
	syscall
	
	# PAUSA
	addi $4,$0,400
	addi $2,$0,32
	syscall
	
	# C
	addi $5,$0,800
	addi $4,$0,48
	addi $2,$0,31
	syscall
