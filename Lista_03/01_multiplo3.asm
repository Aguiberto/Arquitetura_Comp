.text

           # programa que calcula os 10 primeiros multiplos de 3

main:
	addi $8,$0,1		# I no for
	addi $9,$0,10		# N
	
	addi $10,$0,3		# valor a ser multiplicado
	
	add $4,$0,$10
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
			
laco: 	
	addi $10,$10,3       # soma + 3
	
	add $4,$0,$10
	addi $2,$0,1         # mostra o resultado
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	addi $8,$8,1		# incrementa o I
	
	slt $12,$8,$9
	beq $12,$0, fora
	
	j laco
	
fora:
	addi $2,$0,10
	syscall
	
	
	