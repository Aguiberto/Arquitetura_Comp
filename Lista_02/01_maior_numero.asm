.text 

main: 
	addi $2,$0,5
	syscall
	add $8,$0,$2
	
	addi $2,$0,5
	syscall
	add $9,$0,$2
	
	addi $11,$0,1		# variável p/ comparação valor = 1
	
	slt $10,$8,$9
	
	beq $10,$11,novemaior
	
	add $4,$0,$8
	j fim
novemaior:
	add $4,$0,$9
	
fim: 
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall
	
