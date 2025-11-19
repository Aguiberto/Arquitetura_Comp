.text

				# programa que tem uma função que calcula o fatorial

	
main:	addi $2,$0,5
	syscall
	
	add $4,$0,$2
	jal fat 

end:	add $4,$0,$2
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall
	
fat:    add $2,$0,$4
	addi $8,$4,-1
	
mtpl:	mul $2,$2,$8
	addi $8,$8,-1
	bne $8,$0,mtpl
	
	jr $31

	