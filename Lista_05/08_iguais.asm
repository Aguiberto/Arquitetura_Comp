.data
.text

main:
	lui $8,0x1001
	lui $13,0x1001
	addi $9,$0,10
	addi $14,$0,0		# valor de I
	addi $15,$0,4		
	
vetor: beq $9,$0,completo

	addi $2,$0,5
	syscall
	
	sw $2,0($8)
	add $8,$8,4
	addi $9,$9,-1
	
	j vetor
	
completo:
	addi $9,$0,10
	j laçoJ
	
preI:	lui $8,0x1001	
	addi $17,$0,10
	addi $14,$14,1
	
	mul $16,$15,$14
	
laçoI:  beq $17,$0,fim
	
	add $8,$8,$16
	
	lw $10,0($8)
	add $8,$8,4
	
	addi $17,$17,-1
	add $14,$14,1
	j preJ

preJ:	addi $9,$9,10
	lui $8,0x1001
		
laçoJ:	beq $9,$0,preI
	lw $11,0($8)
	
	beq $11,$10,iguais
	addi $9,$9,-1
	addi $8,$8,4
	
	j laçoJ
iguais:
	sw $11,0($13)
	addi $8,$8,4
	addi $13,$13,4
	addi $9,$9,-1
	
	j laçoJ
	
preprint:
	lui $13,0x1001
	addi $9,$0,10

print: beq $9,$0,fim

	lw $4,0($13)
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	addi $13,$13,4
	addi $9,$9,-1
	
fim:
	addi $2,$0,10
	syscall
	
	
	
	
	
	
	