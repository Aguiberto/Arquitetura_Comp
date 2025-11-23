.text 

	# tela de 512 pixels de largura x 256 pixels altura
	# cada pixel ocupa 16x16 unidades
	# tela com 32 unidades gráficas (UG) de largura
	
	# endereços de memória indicam posições na tela lado a lado até 32
	# após 32 UG forem preenchidas o preenchimento da tela começa a linha de baixo

main:	lui $8,0x1001		# inicia o endereço de memória
	ori $9,$0,0x964b00	# define a cor do pixel
	addi $10,$0,64		# informa quantas GU serão preenchidas com a cor escolida
	
for:	beq $10,$0,fim		# condição de parada do laço
	sw $9,0($8)		# adicional um pixel de cor no edereço definico por $8
	addi $8,$8,4		# muda para o próximo endereço de meória
	
	addi $10,$10,-1		# decrementa o valor de n do laço
	j for
	
fim: 	addi $2,$0,10
	syscall