.text
	# programa informa se 3 ondas formam ou não um pico
	# informa se o pico é negativo ou positivo
	# PICO NEGATIVO; a>b e b<c
	# PICO POSTIVO: a<b e b>c
main:
	addi $2,$0,5
	syscall			# A
	add $8,$0,$2
	
	addi $2,$0,5
	syscall			# B
	add $9,$0,$2
	
	addi $2,$0,5
	syscall			# C
	add $10,$0,$2
	
	slt $11,$8,$9		# verificando se  A < B então $11 = 1 senão $11 = 0
	slt $12,$10,$9		# verificando se C < B então $12 = 1 senão $12 = 0
	
	bne $11,$12,flat	# verifica se não forma um pico
	
	beq $11,$12,pico	# verifica se forma pico (0,0,) ou (1,1)
	
	
	
flat:
	addi $4,$0,'N'
	addi $2,$0,11
	syscall 
	j fim

pico: 				#verificar se o pico é positivo ou negativo

	beq $11,$0,negativo
	
	addi $4,$0,'P'
	addi $2,$0,11		# caso não tenha caído em nenhum dos outros casos so resta o pico negativo
	syscall
	
	addi $4,$0,'+'
	addi $2,$0,11
	syscall
	
	j fim
	
	
negativo:
	addi $4,$0,'P'
	addi $2,$0,11
	syscall
	
	addi $4,$0,'-'
	addi $2,$0,11
	syscall
	
	j fim
	
fim: 
	addi $2,$0,10
	syscall

