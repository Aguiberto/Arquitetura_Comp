.text

		# APRENDENDO MOVIMENTO REPETITIVO DE NPC
			# 1º MOVIMNTO LIVRE
			# 2º MOVIMENTO REPETIDO
			
main:
	ori $5,0xfffff
	addi $2,$0,42		# serviço 42 gera um numero inteiro aleatório
	
	lui $10,0x1001		# criando área de memória
	addi $8,$0,512
	
	# carregando o cenário + o shadow
for1: beq $8,$0,fimCena

	addi $4,$0,0		# escolhe aleatoriamente um valor que vai corenponder a uma cor
	syscall
	
	sw $4,0($10)		# inicio do cenário
	sw $4,2048($10)		# inicio do shadow
	
	addi $10,$10,4
	addi $8,$8,-1
	
	j for1
	
fimCena:

	lui $10,0x1001
	addi $14,$10,124 # condição para o npc fazer o movimento voltando (QTD em $10(0) + 128 = FIM DA TELA)
	add $15,$0,$10  # condição para o npc se deslocar para a direita ( o valor do $10 for 0 = INICIO DA TELA)
	ori $9,0xffffff
	
	addi $12,$0,200 # quantidade de movimentos do "npc"
	
	sw $9,0($10)	# pintando o "npc" em um lugar qualquer (posição inicial)
	addi $13,$0,4
	
for2:	beq $12,$0,parou
	jal timer	# função que gasta tempo
	
	# MOVIMENTO NO NPC
	add $16,$10,$13	 # $13 pode ser positivo ou negativo
	sw $9,0($16)	 # pintando ele um endereço a frente ou atrás

		# APAGANDO O "NPC" 	
	lw $11,2048($10) # pega o pixel que estava no lugar do personagem no "cenario shadow" e carrega no $11
	sw $11,0($10)	#  carrega o pixel do cenário onde o "npc" estava apagando-o.	
	
	add $10,$10,$13	 # faz com que o "npc" seja pintado no próximo endereço de memória

	beq $10,$14,dim # condição para o npc andar para a esquerda
	beq $10,$15, pos # condição para o npc andar par a direita
	j segue
	
dim:    add $13,$0,-4	# redefinição da variável para fazer com que os endereços de memoria diminuam e assim o npc ande para trás
	j segue
	
pos: add $13,$0,4 # redefinição da variável para permitir que o os endereços de memória sejam positivos e o npc ande para frente

segue: addi $12,$12,-1	 # decrementa o contador do laço - CONTROLA A QUANTIDADE DE MOVIMENTOS DO "NPC"
	
	j for2
	
parou:	addi $2,$0,10
	syscall
	
# função apenas para gastar tempo
timer: addi $25,$0,6500
fortimer: beq $25,$0,fimtimer
	 addi $25,$25,-1	
	 
	 j fortimer
fimtimer: jr $31 
	
	
	
	
	
	
	
