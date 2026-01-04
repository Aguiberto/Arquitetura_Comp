.text

		# APRENDENDO MOVIMENTO REPETITIVO DE NPC
			# 1º MOVIMNTO LIVRE
			# 2º MOVIMENTO REPETIDO
			
main:
	ori $5,$5,0xfffff
	addi $2,$0,42		# serviço 42 gera um numero inteiro aleatório
	
	lui $10,0x1001		# criando área de memória
	addi $8,$0,512
	
	# carregando o cenário + o shadow
for1: beq $8,$0,fimCena

	addi $4,$0,0
	syscall
	
	sw $4,0($10)		# inicio do cenário
	sw $4,2048($10)		# inicio do shadow
	
	addi $10,$10,4
	addi $8,$8,-1
	
	j for1
	
fimCena:

	lui $10,0x1001
	ori $9,0xffffff
	
	addi $12,$0,200
	
	sw $9,0($10)	# pintando o "npc" em um lugar qualquer
	
for2:	beq $12,$0,parou
	jal timer	# função que gasta tempo
	
	# MOVIMENTO NO NPC
	
	sw $9,4($10)	# pintando ele um endereço a frente

		# APAGANDO O "NPC" 	
	lw $11,2048($10) # pega o pixel que estava no lugar do personagem no "cenario shadow" e carrega no $11
	sw $11,0($10)	#  carrega o pixel do cenário onde o "npc" estava apagando-o.	
	
	addi $10,$10,4	 # faz com que o "npc" seja pintado no próximo endereço de memória
	addi $12,$12,-1	 # decrementa o contador do laço - CONTROLA A QUANTIDADE DE MOVIMENTOS DO "NPC"
	
	j for2
	
parou:
	addi $2,$0,10
	add $4,$2,$0
	syscall
	
# função apenas para gastar tempo
timer: addi $15,$0,6500
fortimer: beq $15,$0,fimtimer
	 addi $15,$15,-1	
	 
	 j fortimer
fimtimer: jr $31 
	
	
	
	
	
	
	