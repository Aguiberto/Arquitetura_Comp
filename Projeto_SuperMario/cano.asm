.text
		# 		CANO
		# DIMENSÕES 12 pixels X 13 pixels (Comprimento x Altura)
		# COMPRIMENTO: colunas ik - iv  
		#	"corpo": 9
		#	"Pescoço": 12 
		#	"cabeça": 12
		# ALTURA:  linhas 94 - 106	
		#	"cabeça": 4
		#	"pescoço": 1
		#	"corpo": 7 
	
main:	lui $8,0x1001

	ori $1,108508
	add $8,$8,$1
	
	ori $9,0x000000
	ori $10,0x80d010		# VERDE CLARO
	ori $11, 0x00a800		# VERDE ESCURO
	
	
	
	# CORPO
	# LINHA 1 = 106
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	
	# LINHA 2 = 105
	
	addi $8,$8,-1060
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	
	
	# LINHA 3 = 104
	addi $8,$8,-1060
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	
	# LINHA 4 = 103
	addi $8,$8,-1060
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	
	# LINHA 5 = 102
	addi $8,$8,-1060
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4

	# LINHA 6 = 101
	addi $8,$8,-1060
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4		# VERDE CLARO
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4

	# LINHA 7 = 100
	addi $8,$8,-1060
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	
	# PESCOÇO
	# LINHA 8 = 99
	addi $8,$8,-1072
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	
	
	# "CABEÇA"
	# LINHA 9 = 98
	addi $8,$8,-1072
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4		
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4

	# LINHA 10 = 97
	addi $8,$8,-1072
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	
	# LINHA 11 = 96
	addi $8,$8,-1072
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	
	# LINHA 12 = 95
	addi $8,$8,-1072
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $11,0($8)		# VERDE ESCURO
	addi $8,$8,4
	sw $10,0($8)		# VERDE CLARO
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	sw $10,0($8)
	addi $8,$8,4
	
	# LINHA 13 = 94
	addi $8,$8,-1072
	
	sw $9,0($8)		# PRETO
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	sw $9,0($8)
	addi $8,$8,4
	
	
	
	
	
	
	
	
