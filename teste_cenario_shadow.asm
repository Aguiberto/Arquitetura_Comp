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
	
fimCena: lui $8,0x1001
	addi $8,$8,512
	addi $13,$8,130560	# limite para começar a diminuir
	addi $14,$8,512		# limite para começar a aumentar
	
	ori $17,0x00ff00	# criação do npc (cor verde)
	addi $19,$0, 1024	# quantidade de movimentos
	
	sw $17,0($8)		# pintando na primeira localização
	addi $15,$0,1024	# variável para difinir a direção do movimento

	
mov:	beq $19,$0,fim		# se $19 chegar a 0 então termina o jogo 
	
	jal timer 		# função para gastar tempo

	add $16,$8,$15		# ponteiro que vai indicar o  endereço de memória a ser pintado
	sw $17,0($16)		
	
	lw $18,131072($8)	
	sw $18,0($8)
	
	add $8,$8,$15
	
	slt $20,$8,$13
	beq $20,$0,diminuir	# modificar a verificação para que o valor seja maior ou igual
	
	slt $21,$8,$14
	bne $21,$0,aumentar	# modificar a verificação para que o valor s

	
	 addi $19,$19,-1
	j mov
	
diminuir: addi $15,$0,-1024
	addi $19,$19,-1
	j mov
aumentar: addi $15,$0,1024
	addi $19,$19,-1
	j mov
	
fim: 	addi $2,$0,10
	syscall
	
timer: addi $20,$0,6500
fortimer: beq $20,$0,fimtimer
	addi $20,$20,-1
	j fortimer
	
fimtimer: jr $31
	
	
