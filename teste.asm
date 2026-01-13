.text

	# movimento em escala maior
	
main:
	ori $9,0xffffff
	
	lui $8,0x1001
	addi $10,$0,131068
	
Cena: 	beq $10,$0,fimCena
	
	
	sw $9,0($8)		# cenário
	sw $9,131072($8)	# cenário shadow
	
	addi $8,$8,4
	addi $10,$10,-1
	
	j Cena
	
fimCena: addi $2,$0,10
	syscall
	
	
	
	
	
