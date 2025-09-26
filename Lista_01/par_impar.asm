.text 

    # Esse programa resulta em 1 se o numero for impar e 0 se for par
    
    #------------------ FUNCIONAMENTO -------------------------
    # Recebe um número e atribui a um registrador
    # Pega o número da entrada e faz um AND entre o valor e o número 1
    # Numero impares em binário tem final 1 
    # Numeros pares em binário tem final 0
    # AND com o ultimo bit de um número ímpar = 1 and 1 = 1
    # AND COM O ultumo bit de um número par = 0 and 1 = 0

main:
	addi $2,$0,5
	syscall
	
	add $8,$0,$2
	
	andi $8,$8,1
	
	add $4,$0,$8
	addi $2,$0,1
	syscall
	
