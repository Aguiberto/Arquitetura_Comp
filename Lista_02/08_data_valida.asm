.text

main:
	addi $2,$0,5
	syscall			# entrada DIA
	add $8,$0,$2
	
	addi $2,$0,5
	syscall			# entrada MES
	add $9,$0,$2
	
	addi $2,$0,5
	syscall			# entrada ANO
	add $10,$0,$2
	
	addi $11,$0,1
	beq $9,
	