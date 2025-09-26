# PROGRAMA PARA CONVERTER HORAS, MIN E SEG

.text

main: 
	addi $8,$0,1000
	addi $9,$0,100		# constantes
	addi $10,$0,10
	
	addi $2,$0,5		# pedindo dados
	syscall
	
	add $11,$0,$2		# atribuindo dado ao reg.10
	
	div $11,$8
	mflo $12		# DEZ. HORA
	mflo $13		# RESTO - Usado na proxima divisão
	
	div $13,$9
	mflo $14		# UNIDADE HORA
	mfhi $15		# RESTO - Usado na prixma divisao
	
	div $15,$10
	mfhi $24		# DEZ. MINUTO
	mflo $25		# UNIDADE MINUTO
	
	addi $8,$0,
	
	