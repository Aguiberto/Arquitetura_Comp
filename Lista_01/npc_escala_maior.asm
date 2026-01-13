.text
	# npc em escala maior
main:
	ori $9,0xffffff
	addi $2,$0,42
	
	lui $8,0x1001
	addi $10,$0,131068
	


forCenario: beq $10,$0,fimCenario
	
	addi $4,$0,0
	syscall
	
	sw $4,0($8)		# cenário
	sw $4,131072($8)	# cenário shadow
	
	addi $8,$8,4
	addi $10,$10,-1
	
	j forCenario

fimCenario: addi $2,$0,10

	addi $4,$0,0
	syscall
	