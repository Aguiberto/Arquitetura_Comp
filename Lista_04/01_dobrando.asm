.text
				# progama com uma função que imprime o dobro de um numero
main:
	addi $2,$0,5
	syscall
	
	jal dobra
end:
	add $4,$0,$9
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall
	
dobra:
	addi $8,$0,2
	mul $9,$8,$2
	
	jr $31
	