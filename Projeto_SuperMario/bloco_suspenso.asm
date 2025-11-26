.text
	
		# BLOCOS SUSPENSOS:
		
		# Dimensões: 5uG x 6uG (altura x comprimento)
		# Comprimento: Bb - BH
		# Altura: 40 - 33

main: 	lui $8,0x1001
	ori $9,0x000300		# COR: PRETO
	ori $10,0xfd9939	# COR: MARROM CLARO
	ori $11,0xbf3e0f	# COR: MARROM ESCURO
	
	
	sw $10,20184($8)
	sw $10,20188($8)
	sw $10,20192($8)	# linha 1 (40)
	sw $10,20196($8)
	sw $10,20200($8)
	sw $10,20204($8)

	sw $10,19672($8)
	sw $10,19676($8)
	sw $10,19680($8)	# linha 2 (39)
	sw $10,19684($8)
	sw $10,19688($8)
	sw $10,19692($8)

	sw $10,19160($8)
	sw $10,19164($8)
	sw $10,19168($8)	# linha 3 (38)
	sw $10,19172($8)
	sw $10,19176($8)
	sw $10,19180($8)

	sw $10,18648($8)
	sw $10,18652($8)
	sw $10,18656($8)	# linha 4 (37)
	sw $10,18660($8)
	sw $10,18664($8)
	sw $10,18668($8)

	
	
	sw $10,18136($8)
	sw $10,18140($8)
	sw $10,18144($8)	# linha 5 (36)
	sw $10,18148($8)
	sw $10,18152($8)
	sw $10,18156($8)
	
	
	
	
	
	
	
	
	
	
	
	