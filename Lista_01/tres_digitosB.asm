.text

main:
	addi $8,$0,100		# centena
	addi $9,$,10		# dezena
	
	addi $2,$0,5		# pedindo o numero
	syscall
	
	add $10,$0,$2		# atribuindo o valor pedido ao reg. 10
	
	div $10,$8		# divisao por 100
	
	mfhi $11		# resto
	mflo $12		# quociente ( 0 da CENTENA)
	
	div $11, $9		# divisão por 10
	
	mfhi $13		# UNIDADE
	mflo $14		# quociente (0 da DEZENA)
	
	add $4,$0,$12
	addi $2,$0,1		# IMPRIMIE A CENTENA
	syscall
	
	add $4,$0,$14
	addi $2,$0,1		# IMPRIME A DEZENA
	syscall
	
	add $4,$0,$13
	addi $2,$0,1		# IMPRIME A UNIDADE
	syscall 
	
	addi $2,$0,10
	syscall
	
	
	
	