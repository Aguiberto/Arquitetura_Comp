.text

#f1 para acessar o manual

main: addi $8, $0,1    
	addi $9,$0,2
	addi $10,$0,3
	addi $11,$0,4

#atribuição dos valores nos registradores 12 e 13 
#soma dos valores dos regirtadores 12 e 13 no registrador 20

	add $20,$8,$9
	add $20,$20,$10
	add $20,$20,$11

