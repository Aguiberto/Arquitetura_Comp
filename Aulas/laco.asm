.text

main:
	addi $8,$0,0    #variável que será adicionára/incrementada notas
	addi $9,$0,0    # "contador" : quantidade de notas colocadas
	
cont : addi $2,$0,5     # input do usuário
	syscall
	
	add $8,$8,$2    # incremento da nota
	addi $9,$9,1    # incremento da quantidade de notas
	
	slt $10,$2,$0	# verifica se a nota é NEGATIVA ( nota < 0)
	beq $10,$0,cont	# compara com $0, se a condição verdadeira, então joga pro rotulo de cima formando o laço
			# ^^^^^^^ TESTE QUE INICIA O LAÇO ^^^^^^
	#...            # nota < 0 . execução sai do laço.
	
	sub $8,$8,$2	# remove uma vez o valor adicionado pelo ultimo input
	addi $9,$9,-1	# decrementa a quantidade de nota uma vez
	
	div $8,$9	# divisão das notas pela quantidade de notas
	mflo $4		# pegando o resultado da divisão do reg. lo. e colocando em $4 (para possibilitar o PRINT)
	
	addi $2,$0,1	# comando para o PRINT
	syscall 	# comando para o PRINT
	
	addi $2,$0,10	# ENCERRANDO
	syscall		# ENCERRANDO	