.text

main:
	addi $2,$0,12		# REBERCER UM CHAR 
	syscall
	
	add $8,$0,$2
	
	addi $8,$8,-32		# CONVERSAO : a difenrença na tabela ASCII de qualquer valor minúsculo para maiúsculo é de 32
	
	addi $4,$0,10		# Quebra de linha
	addi $2,$0,11
	syscall
	
	add $4,$0,$8
	addi $2,$0,11
	syscall
	
	addi $2,$0,10
	syscall
	