.text

# Programa que diz se um número é par ou impar

main:
	addi $2,$0,5
	syscall
	andi $8,$2,1
	beq $8,$0,par
	addi $4,$0,'i'	
	j print
par:
	addi $4,$0,'p'
print:
	addi $2,$0,11
	syscall
	
	addi $2,$0,10
	syscall
	

	

	