.text

			# função que desenha uma linha 
			
main: 	addi $2,$0,5
	syscall
	add $8,$0,$2
	
	jal linha
	
end: 	addi $2,$0,10
	syscall
	
linha:  addi $4,$0,'='
	addi $2,$0,11
	syscall
	
	addi $8,$8,-1
	
	bne $8,$0,linha
	
	jr $31
	