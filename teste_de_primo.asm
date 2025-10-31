.text 

main:
	addi $2,$0,5
	syscall
	add $8,$0,$2
	
	addi $9,$0,2		# divisor	
	
	addi $11,$0,2
	
	
testedeprimo:
	
	div $8,$9
	mfhi $12
	
	beq $12,$0,nprimo
	
	addi $9,$9,1		# incrementa o divisor
	
	beq $9,$8,primo	
	
	j testedeprimo
	
primo:
	addi $4,$0,'S'
	addi $2,$0,11
	syscall
	
	j fim
nprimo:
	addi $4,$0,'N'
	addi $2,$0,11
	syscall
fim:			
	addi $2,$0,10
	syscall