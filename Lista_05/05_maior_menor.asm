.data
.text
		# progframa que mostra o menor e o maior valor de uma lista
main:
	lui $8,0x1001
	addi $9,$9,10		# valor de N ara ser usado no laço
	
incremento_vetor:
	beq $9,$0,fimlaço

	addi $2,$0,5
	syscall
	
	sw $2,0($8)
	addi $8,$8,4	# incrementa o valor do endereço de memória
	addi $9,$9,-1
	
	j incremento_vetor
	
fimlaço:
	lui $8,0x1001
	
	lw $10,0($8)
	lw $11,0($8)
	
	add $14,$0,$10
	add $15,$0,$11
	
	addi $8,$8,4
	addi $9,$0,9
	 
verificação:
	beq $9, $0, fim
		
	lw $12,0($8)	
	
	slt $13,$12,$14
	bne $13,$0,menor
	
	slt $13,$12,$15
	beq $13,$0,maior
	
	addi $8,$8,4	
	addi $9,$9,-1
	
	j verificação
	
menor:
	add $14,$0,$12
	addi $9,$9,-1
	addi $8,$8,4
	j verificação

maior:
	add $15,$0,$12
	addi $9,$9,-1
	addi $8,$8,4
	j verificação
			
fim:
	add $4,$0,$14
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	add $4,$0,$15
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall