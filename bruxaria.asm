.text
main:   ori $5, $0, 0xffff
        sll $5, $5, 4
        ori $5, $5, 0xf
        addi $2, $0, 42
       
        lui $10, 0x1001
        addi $8, $0, 512
for1:   beq $8, $0, fimCena
       
        addi $4, $0, 0
        syscall
        sw $4, 0($10)
        sw $4, 2028($10)

        addi $10, $10, 4
        addi $8, $8, -1
        j for1
fimCena:  

	lui $12,0x00ff		# cor vermelha (personagem)
	lui $19,0x1001		# ponteiro para endereço de memória
	addi $19,$19,512	# iniciando ponteiro com 512
	
	sw $12,0($19)		# local inicial do personagem
	
        lui $10, 0x1001		# reinicia a memória
        add $14, $10, 124	# limite para o npc voltar
        add $15, $0, $10	# limite para o npc ir 
       
        ori $9, $0, 0xffff	
        sll $9, $9, 8
        ori $9, $9, 0xff	# cria o npc pixel branco

        
        lui $17,0xffff		# registrador usando para verificar o que o usuário digitou
        
        sw $9, 0($10)		# posicionamento do npc no inicio da tela
        addi $13, $0, 4		# variável que define a direção do movimento
        
for2:  
	lw $18,0($17)		# lendo o valor que está em $17
	beq $18,$0,continue	# VERIFICA SE DIGITOU ALGO. se for = 0 (não digitou nada ) continua
	lw $20,4($17)		# verifica o que foi digitado
	addi $21,$0,' '		
	beq $21,$20,parou	# Se digitou espaço então o jogo para
	
continue:  jal timer		# função para gastar tempo
       
        add $16, $10, $13	# variável que indica em qual endereço o pixel deve ser pintado
        sw $9, 0($16)		# pinta o npc em um local a frente o para trás
       
        lw $11, 2048($10)	# pega o pixel do cenáraio shadow
        sw $11, 0($10)		# repinta o pixel onde o npc estava
       
        add $10, $10, $13	# aumenta um endereço de memória
       
        beq $10, $14, dim	# se o endereço de memória chegou no valor igual ao $14, $ 13 começa a decrementar a memoria
        beq $10, $15, pos  	# se o endereço de memória chegou ao valor iguao ao $14 então $13 começa a incrementar a memoria
        j segue			
        
dim:    add $13, $0, -4		# redefine $13 para mover o npc para trás
        j segue    
pos:    add $13, $0, 4        	# redefine $13 para movr o npc para frente
       
segue:  	
        j for2

parou:   addi $2, $0, 10
         syscall    
         
timer:  addi $25, $0, 65000
fortimer: beq $25, $0, fimtimer
         
          addi $25, $25, -1
          j fortimer        
fimtimer: jr $31
