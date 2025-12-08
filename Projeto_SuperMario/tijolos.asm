.text

main: 	lui $8, 0x1001
	
	ori $1, 59040
	add $24, $8, $1

	andi $1, $0, 0
	
	ori $1, 59136
	add $25, $8, $1
	
	ori $9, 0x5c94fc  #azul
	ori $10, 0xc84c0c #marrom	
	ori $11, 0xfcbcb0 #rosa
	ori $12, 0x000000 #preto
	
	addi $20, $0, 11
	
	#------------- PRIMEIRA LINHA -------------
forRosaTij:
	beq $20, $0, fimforRosaTij
	sw $11, 0($24)
	sw $11, 0($25)
	
	addi $24, $24, 4
	addi $25, $25, 4
	addi $20, $20, -1
	j forRosaTij
	
fimforRosaTij:
	sw $9, 0($24)
	sw $9, 0($25)	
	addi $24, $24, 980
	addi $25, $25, 980
	#ponteiro movido para a segunda linha
	#------------- SEGUNDA, TERCEIRA, OITAVA E NONA LINHA -------------
	addi $20, $0, 5
	
forMarromTij1:
	beq $20, $0, fimforMarromTij1
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	sw $10, 6144($24)
	sw $10, 6144($25)
	sw $10, 7168($24)
	sw $10, 7168($25)
	addi $24, $24, 4
	addi $25, $25, 4
		
	addi $20, $20, -1
	j forMarromTij1
	
fimforMarromTij1:
	sw $12, 0($24)
	sw $12, 0($25)
	sw $12, 1024($24)
	sw $12, 1024($25)
	sw $12, 6144($24)
	sw $12, 6144($25)
	sw $12, 7168($24)
	sw $12, 7168($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	addi $20, $0, 4

forMarromTij2:
	beq $20, $0, fimforMarromTij2
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	sw $10, 6144($24)
	sw $10, 6144($25)
	sw $10, 7168($24)
	sw $10, 7168($25)
	addi $24, $24, 4
	addi $25, $25, 4
		
	addi $20, $20, -1
	j forMarromTij2
	
fimforMarromTij2:
	sw $12, 0($24)
	sw $12, 0($25)
	sw $12, 1024($24)
	sw $12, 1024($25)
	sw $12, 6144($24)
	sw $12, 6144($25)
	sw $12, 7168($24)
	sw $12, 7168($25)
	addi $24, $24, 4
	addi $25, $25, 4
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	sw $10, 6144($24)
	sw $10, 6144($25)
	sw $10, 7168($24)
	sw $10, 7168($25)
	addi $24, $24, 2004
	addi $25, $25, 2004
	#ponteiro movido para a quarta linha

	#------------- QUARTA E SETIMA LINHA -------------
	addi $20, $0, 11
forPretoTij1:
	beq $20, $0, fimforPretoTij1
	sw $12, 0($24)
	sw $12, 0($25)
	sw $12, 3072($24)
	sw $12, 3072($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	addi $20, $20, -1
	j forPretoTij1
	
fimforPretoTij1:
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 3072($24)
	sw $10, 3072($25)
	addi $24, $24, 980
	addi $25, $25, 980
	#ponteiro movido para a quinta linha
	#------------- QUINTA E SEXTA LINHA -------------
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $12, 0($24)
	sw $12, 0($25)
	sw $12, 1024($24)
	sw $12, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $12, 0($24)
	sw $12, 0($25)
	sw $12, 1024($24)
	sw $12, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	sw $10, 0($24)
	sw $10, 0($25)
	sw $10, 1024($24)
	sw $10, 1024($25)
	addi $24, $24, 5076
	addi $25, $25, 5076
	
	#ponteiro movido para a decima linha
	#------------- DECIMA E DECIMA PRIMEIRA LINHA -------------
	
	addi $20, $0, 12
forPretoTij2:
	beq $20, $0, fimforPretoTij2
	sw $12, 0($24)
	sw $12, 0($25)
	sw $12, 1024($24)
	sw $12, 1024($25)
	addi $24, $24, 4
	addi $25, $25, 4
	
	addi $20, $20, -1
	j forPretoTij2
	
fimforPretoTij2:
