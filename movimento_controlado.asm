.text

	# movimento em escala maior
	
main:
	ori $9,0xffffff		# branco

	lui $8,0x1001
	addi $10,$0,32500
	
	
Cena: 	beq $10,$0,fimCena
	
	sw $9,0($8)		# cenário
	sw $9,131072($8)	# cenário shadow
	
	addi $8,$8,4
	addi $10,$10,-1
	
	j Cena
	
fimCena: 
	
	lui $19,0x00fff		# "PERSONAGEM" pixel vermelho
	lui $21,0x1001		# NOVO PONTEIRO PARA ENDEREÇO DE MEMORI
	addi $21,$21,3072	# ponto inicial do ponteiro
	
	sw $19,0($21)		# pinta o persoagem no ponto inicial
	
	lui $22,0xffff		
	
	lui $8,0x1001
	addi $13,$8,1020	# limite para começar a diminuir
	add $14,$0,$8		# limite para começar a aumentar
	
	ori $17,0x00ff00	# criação do npc (cor verde)
	
	sw $17,0($8)		# pintando na primeira localização
	addi $15,$0,4		# variável para difinir a direção do movimento

	
mov:	lw $23,0($22)		# no inicio do laço verificar o que foi digitado
	beq $23, $0, continue	# verifica se o usuário digitou alguma coisa, caso não tenha digitado nada o jogo continua
	lw $24,4($22)
	addi $25,$0,' '
	beq $24,$25,fim		# verifica se o usuário digitou espaço, se for verdadeiro então o jogo termina
	
continue: jal timer 		# função para gastar tempo

	add $16,$8,$15		# ponteiro que vai indicar o  endereço de memória a ser pintado
	sw $17,0($16)		
	
	lw $18,131072($8)	
	sw $18,0($8)
	
	add $8,$8,$15
	

	beq $8,$13,diminuir	# modificar a verificação para que o valor seja maior ou igual
	beq $8,$14,aumentar	# modificar a verificação para que o valor s

	
	j mov
	
diminuir: addi $15,$0,-4
	
	j mov
aumentar: addi $15,$0,4
	
	j mov
	
fim: 	addi $2,$0,10
	syscall
	
timer: addi $20,$0,6500
fortimer: beq $20,$0,fimtimer
	addi $20,$20,-1
	j fortimer
	
fimtimer: jr $31
	
	
