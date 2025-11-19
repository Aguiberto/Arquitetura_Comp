.data

.text

main:
	addi $2,$0,5
	syscall
	
 #----- salvando um dado na memória ---------------
 
	lui $8,0x1001
	sw $2,0($8)
	
# ------ carregando um dado da memoória	------------

	lw $4,0($8)
	addi $2,$0,1
	syscall
	
	addi $2,$0,10
	syscall