.text
		# programa que tem um laço que realiza a contagem até 10
main:
	addi $8,$0,10
	addi $9,$0,1
	
	add $4,$0,$9
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
laco: 
	addi $9,$9,1
	
	
	add $4,$0,$9
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	

	slt $10,$9,$8
	beq $10,$0,fora 
	
	j laco

fora:
	addi $2,$0,10
	syscall