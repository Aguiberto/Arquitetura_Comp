.text
		# CANO
		# DIMENSÕES 12 Ug X 30 Ug (Comprimento x Altura)
		# COMPRIMENTO: colunas ik - iv  (corpo 8(in-iv) e cabeça 12(ik - iv))
		# ALTURA:  linhas 75 - 105	(cabeça 20 ug (75 - 95)) (corpo 10uG (76 - 105))
		
		# 1042 p pular uma linha
		
main:	lui $8,0x1001

	ori $1,108508
	add $8,$8,$1
	
	ori $9,0x000000
	ori $10,0x80d010		# VERDE CLARO
	ori $11, 0x00a800		# VERDE ESCURO
	
	
	
	# LINHA 1 = 106
	sw $9,0($8)
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
	
	# LINHA 2 = 105

	addi $8,$8,-1056
	
	sw $9,0($8)
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
	
	# LINHA 3 = 104

	addi $8,$8,-1056
	
	sw $9,0($8)
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
	
	# LINHA 4 = 103
	
	addi $8,$8,-1056
	
	sw $9,0($8)
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
	
	# LINHA 5 = 102
	
	addi $8,$8,-1056
	
	sw $9,0($8)
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
	
	# LINHA 6 = 101
	
	addi $8,$8,-1056
	
	sw $9,0($8)
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
	
	# LINHA 7 = 100
	
	addi $8,$8,-1056
	
	sw $9,0($8)
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
	
	# LINHA 9 = 99
	
	addi $8,$8,-1056
	
	sw $9,0($8)
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
	
	# LINHA 10 = 98
	
	addi $8,$8,-1056
	
	sw $9,0($8)
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
	
	
	# LINHA 11 = 97
	
	
	addi $8,$8,-1056
	
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

	
	
	
	
	
	
	
