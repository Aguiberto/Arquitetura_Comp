.text

main:
	addi $2,$0,5
	syscall			#  numero a ser multiplicado $8
	add $8,$0,$2
	
	addi $2,$0,5
	syscall			# quantidade de vezes $9
	add $9,$0,$2
	
	addi $10,$0,1		# valor de I

	add $11,$0,$8
	
	add $4,$0,$11
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
laco:
	add $11,$11,$8		# incrementando 
	
	add $4,$0,$11
	addi $2,$0,1		# mostrando valor
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11		# quebra de linha
	syscall
	
	addi $10,$10,1		# incremento de I
	
	slt $13,$10,$9
	beq $13,$0,fora
	
	j laco
	
fora:
	addi $2,$0,10
	syscall
	
