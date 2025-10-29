.text
		# calcula o MDC pelo algoritmo de EUCLUDES
main:
	addi $2,$0,5
	syscall			# dividendo
	add $8,$0,$2
	
	addi $2,$0,5
	syscall			# divisor
	add $9,$0,$2
	
laço:	
	div $10, $8, $9		# divisão
	mfhi $11		# resto
	
	beq $11,$0,mdc		# verificando se resto = 0, se for $9 é o MDC
	
	add $8,$0,$9		# dividendo vai ser o antigo divisõr
	add $9,$0,$11		# divisor vai res o resto
	
	j laço
mdc:
	add $4,$0,$9
	addi $2,$0,1
	syscall

fim:
	addi $2,$0,10
	syscall