.text

# 	PROGRAMA QUE LÊ UM INTEIRO DE TRAS PARA FRENTE

main:
	add $8,$0,100
	add $9,$0,10
	
	addi $2,$0,5
	syscall
	
	add $10,$0,$2
	
	div $10,$8		# divisão por 100
	mflo $11		# CENTENA
	mfhi $12
	
	div $12,$9		# Divisão por 10
	mflo $13		# DEZENA
	mfhi $14		# UNIDADE
	
	add $4,$0,$14
	addi $2,$0,1		# Print UNIDADE
	syscall
	
	add $4,$0,$13
	addi $2,$0,1		# Print DEZENA
	syscall
	
	add $4,$0,$11
	addi $2,$0,1		# Print CENTENA
	syscall
	
	addi $2,$0,10
	syscall
	
	
	
	