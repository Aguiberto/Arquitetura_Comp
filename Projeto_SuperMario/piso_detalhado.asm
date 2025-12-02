.text

main: 	lui $8, 0x1001

	ori  $1, 108544    # deslocamento
    	add $8, $8, $1     # Soma: $8 = 0x10010000 + 108544
    	
	ori $9,0xbf3e0f #marrom
	ori $10,0xfcbcb0 #rosa
	ori $11,0x000000 #preto
	
	addi $15,$0,41
	
piso:	beq $15,$0,fim
	beq $15, 21, ajeitarPonteiro 

    # --- PRIMEIRA LINHA ---
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    
    # Fim da linha 1. Ajuste para a pr�xima linha:
    # 1024 (pulo total) - 48 (j� percorridos na linha) = 976
    addi $8,  $8, 976 

    # --- SEGUNDA LINHA ---
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4

    # Fim da linha 2.
    addi $8,  $8, 976 

    # --- TERCEIRA LINHA ---
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $11, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4

    # Fim da linha 3.
    addi $8,  $8, 976

    # --- QUARTA LINHA ---
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4

    # Fim da linha 4.
    addi $8,  $8, 976

    # --- QUINTA LINHA ---
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4

    # Fim da linha 5.
    addi $8,  $8, 976

    # --- SEXTA LINHA ---
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4

    # Fim da linha 6.
    addi $8,  $8, 976

    # --- S�TIMA LINHA ---
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4

    # Fim da linha 7.
    addi $8,  $8, 976

    # --- OITAVA LINHA ---
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $10, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4

    # Fim da linha 8.
    addi $8,  $8, 976

    # --- NONA LINHA ---
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $11, 0($8)
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4

    # Fim da linha 9.
    addi $8,  $8, 976

    # --- D�CIMA LINHA ---
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $11, 0($8)
    addi $8,  $8, 4

    # Fim da linha 10.
    addi $8,  $8, 976

    # --- D�CIMA PRIMEIRA LINHA ---
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $11, 0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $9,  0($8)
    addi $8,  $8, 4
    sw   $10, 0($8)    # rosa
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    sw   $11, 0($8)    # preto
    addi $8,  $8, 4
    sw   $11, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)
    addi $8,  $8, 4
    sw   $9,  0($8)    # marrom
    addi $8,  $8, 4
    
	subi $8,$8,10236
	addi $15,$15,-1
	
	j piso
	
ajeitarPonteiro:
	lui $8, 0x1001
	ori  $1, 119808    # deslocamento
    	add $8, $8, $1     # Soma: $8 = 0x10010000 + 119808
    	addi $15, $15, -1
    	j piso
    	
fim:	addi $2,$0,10
	syscall
	
