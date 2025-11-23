.text
		# função para verificar se um número é POSITIVO ou NEGATIVO
		
main:   addi $2,$0,5
	syscall
	
	jal verif
	
end:	add $4,$0,$9
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall

#------------ função verificadora ----------------
			
verif:
	beq $2,$0,zero
	
	slt $8,$2,$0
	beq $8,$0,positivo
	
	addi $9,$0,-1
	
	jr $31
	
zero:
	add $9,$0,$2
	jr $31

positivo:
	addi $9,$0,1
	jr $31