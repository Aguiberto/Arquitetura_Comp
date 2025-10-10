.text
	# programa que mostra se um trabalhador pode se aposentar
	# critérios ter pelo menos 65 anos OU ter trabalhado 40 anos
	
	
main: 
	addi $2,$0,5
	syscall			#idade $8
	add $8,$0,$2
	
	addi $2,$0,5
	syscall			#tempo de serviço $9
	add $9,$0,$2
	
	addi $10,$0,65		# referência idade
	addi $11,$0,40		# referrência tempo de serviço
	
	slt $12,$8,$10
	beq $12,$0, retire	# comparação para saber se $8 > $10
	
	slt $13,$9,$11
	beq $13,$0, retire	#comparaçã para saer se $9 > $11
	
	addi $4,$0,'N'
	addi $2,$0,11
	syscall 
	
	j fim

retire:
	addi $4,$0,'S'
	addi $2,$0,11
	syscall
fim:
	addi $2,$0,10
	syscall 