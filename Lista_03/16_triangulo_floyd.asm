.text

main:
	addi $2,$0,5
	syscall			# entrada
	add $8,$0,$2
	
	addi $8,$8,1
	
	addi $9,$0,1		# variável para contar quebra de linhas
	addi $10,$0,1		# variável sequencia de números a ser mostrada
	addi $11,$0,0
	
laço:
	add $4,$0,$10
	addi $2,$0,1
	syscall
	
	addi $4,$0,' '
	addi $2,$0,11
	syscall
	
	addi $10,$10,1		# incremento da sequência
	addi $11,$11,1		# incremento qtd de elementos da linha
	
	slt $12,$11,$9
	beq $12,$0,Kbra
	
	j laço
	
	
Kbra:
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	addi $9,$9,1		# incremento de QTD quebra de linha
	addi $11,$0,0		# reinicia a quantidade de elementos na linha
	
	beq $9,$8,fim 		# se a quantidade de quebra de linha for igual ao solicitado pelo usuário o programa encerra
	
	j laço

fim:
	addi $2,$0,10
	syscall