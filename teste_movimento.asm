.text

main:	lui $8,0x1001
	ori $9,0xffffff
	ori $10,0x0000
	ori $12,0x00ff00
	
	addi $11,$0,512

cenario: beq $11,$0,fimcenario
	
	sw $9,0($8)
	sw $9,2048($8)
	addi $8,$8,4
	addi $11,$11,-1
	
	j cenario
	
fimcenario:	lui $8,0x1001

	
	addi $14,$0,200
	
	sw $10,0($8)
	sw $12,4($8)
	sw $10,128($8)
	sw $12,132($8)

	
formovimento: beq $14,$0,para	
	
	sw $10,4($8)
	sw $12,8($8)
	sw $10,132($8)
	sw $12,136($8)
	
	lw $13,2048($8)
	sw $13,0($8)
	lw $13,2180($8)
	sw $13,128($8)
	
	
	addi $8,$8,4
	addi $14,$14,-1
	
	j formovimento
	
para:	addi $14,$14,200
	lui $8,0x1001
	
	j formovimento
	
	
	
	
	
	
	
	
	
	
	
	
	
	
