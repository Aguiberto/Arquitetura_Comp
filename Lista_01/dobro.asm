.text

main:
	addi $2,$0,5
	syscall
	
	add $8,$0,$2
	
	#dobrar valor
	
	addi $9,$0,2
	mul $11,$8,$9
	
	add $4, $0, $11
	
	# PRINT
	
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall
	
	