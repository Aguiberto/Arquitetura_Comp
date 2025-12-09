.text
main:   ori $5, $0, 0xffff	# cor branca
        sll $5, $5, 4		
        ori $5, $5, 0xf
        addi $2, $0, 42		# cor aleatoria
       
        lui $10, 0x1001		# inicializando a memoria
        addi $8, $0, 512	# iteracoes do laco
for1:   beq $8, $0, fimCena
       
        addi $4, $0, 0		# chama um numero aleatorio
        syscall
        sw $4, 0($10)		# adicona no primeiro endereço de memoria
        sw $4, 2048($10)	# shadow copiando o cenario a partir do endereco de memoria 2048

        addi $10, $10, 4	# proxima memoria
        addi $8, $8, -1		# decrementa o n das iteracoes do laco
        j for1
fimCena:  


        lui $10, 0x1001		# REINICIA A MEMORIA
        add $14, $10, 124	# memoria + 124(8 endereços de memoria)
        add $15, $0, $10	# grava o endereço de memoria
       
        ori $9, $0, 0xffff	# cor branca
        sll $9, $9, 8
        ori $9, $9, 0xff
        addi $12, $0, 200	# n do laço
        sw $9, 0($10)		# coloca branco no inicio da tela
        addi $13, $0, 4		# $13 = 4
for2:   beq $12, $0, parou
        jal timer		# função para definir o tempo de desocamento do pixel
       
        add $16, $10, $13	# endereço de memoria + 4
        sw $9, 0($16)		# branco adiciona no endereço de memoria
       
        lw $11, 2048($10)	
        sw $11, 0($10)
       
        add $10, $10, $13
       
        beq $10, $14, dim
        beq $10, $15, pos  
        j segue
dim:    add $13, $0, -4
        j segue    
pos:    add $13, $0, 4        
       
segue:  addi $12, $12, -1
        j for2


parou:   addi $2, $0, 10
         syscall    
         
         
         
timer:  addi $25, $0, 6500
fortimer: beq $25, $0, fimtimer
         
          addi $25, $25, -1
          j fortimer        
fimtimer: jr $31