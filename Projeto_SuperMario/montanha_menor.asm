.text

main: 	lui $8, 0x1001
	ori $1, 93828
	add $8,$8,$1
	
	ori $11, 0x000000
	ori $12, 0x00A800
	
# --- Primeira Linha ---
# Endereço inicial: ...93828
# Desenha 5 pretos
    sw   $11, 0($8)     # pixel 1
    addi $8,  $8, 4
    sw   $11, 0($8)     # pixel 2
    addi $8,  $8, 4
    sw   $11, 0($8)     # pixel 3
    addi $8,  $8, 4
    sw   $11, 0($8)     # pixel 4
    addi $8,  $8, 4
    sw   $11, 0($8)     # pixel 5
    addi $8,  $8, 4

    # Correção de salto para a próxima linha (94840)
    # Já andamos 20 bytes. Faltam 992 para chegar em 94840.
    addi $8, $8, 992 

# --- Segunda Linha ---
# Endereço inicial: ...94840
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4

    # Salto para a próxima linha (95856)
    # Andamos 44 bytes. Faltam 972.
    addi $8, $8, 972

# --- Terceira Linha ---
# Endereço inicial: ...95856
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4

    # Salto para a próxima linha (89088)
    # Andamos 52 bytes. Faltam 972.
    addi $8, $8, 972

# --- Quarta Linha ---
# Endereço inicial: ...89088
    sw   $12, 0($8)     # verde
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4

# --- LOOP PARA GERAR AS PRÓXIMAS LINHAS (ESCADA) ---
    # --- Configuração do Endereço Inicial ($8) ---
    lui  $8, 0x1001
    addi $1, $0, 96876              # Endereço base
    add  $8, $8, $1        	    # Endereço inicial atualizadp

    # --- Variáveis de Controle ---
    addi   $16, $0, 15             # Quantidade de verdes iniciais
    addi   $17, $0, 952            # $17 = Salto inicial ajustado para expandir p/ esquerda
    addi   $18, $0, 12             # Total de linhas a desenhar

loop_linha:
    beq  $18, $0, detalhesDaMontanha     # Se acabaram as linhas, sai.

    # Primeiro preto (borda esquerda)
    sw   $11, 0($8)
    addi $8, $8, 4

    # Loop -> desenhar Verdes
    add $20, $0, $16            # Copia do contador

loop_verde:
    beq  $20, $0, fim_verde
    sw   $12, 0($8)         # Desenha verde
    addi $8, $8, 4
    addi $20, $20, -1
    j    loop_verde

fim_verde:
    # 3. Ultimo Preto (borda direita)
    sw   $11, 0($8)
    addi $8, $8, 4

    # 4. Pula para a próxima linha
    # O valor 952 fará com que caia 4 bytes antes do alinhamento vertical
    add  $8, $8, $17       

    # 5. Atualiza para a próxima volta
    addi $16, $16, 2         # Aumenta largura em 2 pixels (1 esq + 1 dir)
    addi $17, $17, -8        # Diminui o salto para compensar a largura maior
    addi $18, $18, -1        # Decrementa contador de linhas
    j    loop_linha
    
detalhesDaMontanha:
    lui $8, 0x1001
    
    #Detalhe maior 
    sw $11, 96928($8)
    sw $11, 97948($8)
    sw $11, 97952($8)
    sw $11, 97956($8)
    sw $11, 98972($8)
    sw $11, 98976($8)
    sw $11, 98980($8)
    sw $11, 99996($8)
    sw $11, 100000($8)
    sw $11, 100004($8)
    sw $11, 101024($8)
    
    #Detalhe menor
    sw $11, 99984($8)    
    sw $11, 99988($8)
    sw $11, 101008($8)
    sw $11, 101012($8)
    sw $11, 102032($8)
    sw $11, 102036($8)

fim:
	addi $2, $0, 10
	syscall