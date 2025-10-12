.text
	# esse programa recebe 9 números e apresenta mais 2 formando um cpf válido
main:

#--------- ENTRADAS ------------------------

	addi $2,$0,5
	syscall			# 1
	add $8,$0,$2
	
	addi $2,$0,5
	syscall			# 2
	add $9,$0,$2
	
	addi $2,$0,5
	syscall			# 3
	add $10,$0,$2
	
	addi $2,$0,5
	syscall			# 4
	add $11,$0,$2
	
	addi $2,$0,5
	syscall			# 5
	add $12,$0,$2
	
	addi $2,$0,5
	syscall			# 6
	add $13,$0,$2
	
	addi $2,$0,5
	syscall			# 7
	add $14,$0,$2
	
	addi $2,$0,5
	syscall			# 8
	add $15,$0,$2
	
	addi $2,$0,5
	syscall			# 9
	add $16,$0,$2
	
	
# --------------- PRIMEIRO DIGITO --------------------

	mul $17,$8,10
	add $18,$0,$17
	
	mul $17,$9,9
	add $18,$18,$17
	
	mul $17,$10,8
	add $18,$18,$17
	
	mul $17,$11,7
	add $18,$18,$17
	
	mul $17,$12,6
	add $18,$18,$17
	
	mul $17,$13,5
	add $18,$18,$17
	
	mul $17,$14,4
	add $18,$18,$17
	
	mul $17,$15,3
	add $18,$18,$17
	
	mul $17,$16,2
	add $18,$18,$17		# SOMA TOTAL
	
	mul $18,$18,10
	addi $17,$0,11
	div $18,$17
	mfhi $19		# PRIMEIRO DIGITO OPÇÃO 1
	
	addi $17,$0,10
	beq $19,$17,DigitoZero
	
	add $4,$0,$19
	addi $2,$0,1
	syscall
	
	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
	j SegundoDigito
	
DigitoZero:
	
	addi $4,$0,0		# PRIMEIRO DIGITO OPÇÃO 2
	addi $2,$0,1
	syscall

	addi $4,$0,'\n'
	addi $2,$0,11
	syscall
	
# ------------- SEGUNDO DIGITO -----------------------------

SegundoDigito:
	
	addi $18,$0,0
	
	mul $17,$8,11
	add $18,$0,$17
	
	mul $17,$9,10
	add $18,$18,$17
	
	mul $17,$10,9
	add $18,$18,$17
	
	mul $17,$11,8
	add $18,$18,$17
	
	mul $17,$12,7
	add $18,$18,$17
	
	mul $17,$13,6
	add $18,$18,$17
	
	mul $17,$14,5
	add $18,$18,$17
	
	mul $17,$15,4
	add $18,$18,$17
	
	mul $17,$16,3
	add $18,$18,$17
	
	mul $17,$19,2
	add $18,$18,$17		# SOMA TOTAL	
	
	mul $18,$18,10
	addi $17,$0,11
	div $18,$17
	mfhi $18		# SEGUNDO DIGITO OPÇÃO 1
	
	addi $17,$0,10
	beq $18,$17,DigitoZeros
	
	add $4,$0,$18
	addi $2,$0,1
	syscall
	
	j fim

DigitoZeros:
	
	addi $4,$0,0
	addi $2,$0,1
	syscall
	
fim:
	addi $2,$0,10
	syscall	
	