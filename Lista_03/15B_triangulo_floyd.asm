.text
		# programa que faz o triângulo de floyd
		# os valores do triângulo são multiplos de 11,13 ou 17
main:
	addi $2,$0,5
	syscall
	add $8,$0,$2
	
	addi $8,$8,1
	
	addi $9,$0,11		# para encontrar os multiplos
	addi $10,$0,13		# para encontrar os multiplos
	addi $11,$0,17		# para encontrar os multiplos
	
	addi $12,$0,1		# variável para ser a QTD de quebra de linhas
	addi $13,$0,0		# variável para ser a QTD de numeros
	addi $14,$0,11		# variável para ser OS NUMEROS DA SEQUENCIA
laço:
	div $14,$9
	mfhi $15
	
	beq $15,$0,multiplo
	
	div $14,$10
	mfhi $16
	
	beq $16,$0,multiplo
	
	div $14,$11
	mfhi $17
	
	beq $17,$0,multiplo
	
	addi $14,$14,1
	
	j laço 

multiplo:
	add $4,$0,$14
	addi $2,$0,1		# mostra o numero
	syscall
	
	addi $4,$0,' '
	addi $2,$0,11		# da um espaço
	syscall
	
	addi $13,$13,1		# INCREMENTO DA QTD DE NUMEROS NA LINHA
	addi $14,$14,1
	
	slt $18,$13,$12		# Verfica se a QTD de numeros na linha é igual ao de quebra de linha
	beq $18,$0,Kbra
	
	j laço	
Kbra:
	addi $4,$0,'\n'
	addi $2,$0,11		# Realiza uma quebra de linha
	syscall
	
	addi $13,$0,0		# Reinicia a quantida de numeros na linha
	addi $12,$12,1		# incrementa a QTD  de QUEBRA DE LINHA
	
	slt $19,$12,$8		# verifica se a QTD de quebra é menor que o numero fornecido pelo usuário
	beq $19,$0,fim		# se  numero  de quebra de linha for igual ao maior o programa encerra
	
	j laço
fim:
	addi $2,$0,10
	syscall