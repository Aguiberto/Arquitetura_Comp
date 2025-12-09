.text

main: 	lui $8, 0x1001
	ori $1, 86028
	add $8,$8,$1
	
	ori $11, 0x000000
	ori $12, 0x00A800
	
# --- Primeira Linha ---
# Endereço inicial: ...86028
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

    # Correção de salto para a próxima linha (87040)
    # Já andamos 20 bytes. Faltam 992 para chegar em 87040.
    addi $8, $8, 992 

# --- Segunda Linha ---
# Endereço inicial: ...87040
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

    # Salto para a próxima linha (88064)
    # Andamos 44 bytes. Faltam 980.
    addi $8, $8, 980

# --- Terceira Linha ---
# Endereço inicial: ...88064
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
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4     # verde
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $12, 0($8)
    addi $8,  $8, 4
    sw   $11, 0($8)     # preto
    addi $8,  $8, 4

    # Salto para a próxima linha (90112)
    # Andamos 56 bytes. Faltam 968.
    addi $8, $8, 968

# --- LOOP PARA GERAR AS PRÓXIMAS LINHAS (ESCADA) ---
    # $8 já está apontando para o início da linha 5 (90112)
    
    addi $13, $0, 14          # $13 = Quantidade de verdes (começa com 14)
    addi $14, $0, 18          # $14 = Total de linhas a desenhar

loop_linhas:
    beq  $14, $0, detalhesDaMontanha  # Se desenhou todas as linhas, termina
    
    # Desenha os Verdes
    add $15, $0, $13         # Contador de verdes para esta linha
    add $16, $0, $8         # $16 é o ponteiro que vai andar na linha
loop_verde:
    beq  $15, $0, fim_verde
    sw   $12, 0($16)      # Desenha verde
    addi $16, $16, 4      # Próximo pixel
    addi $15, $15, -1     # Decrementa contador
    j    loop_verde

fim_verde:
    # Desenha o Preto no final
    sw   $11, 0($16)      # Desenha preto

    # Prepara para a próxima linha
    addi $8, $8, 1024   # Pula para a próxima linha (base + 1024)
    addi $13, $13, 1      # Aumenta um verde para a próxima linha
    addi $14, $14, -1     # Uma linha a menos para fazer
    j    loop_linhas

detalhesDaMontanha:
    lui $8, 0x1001
    
    #Detalhe maior 
    sw $11, 90148($8)
    sw $11, 90152($8)
    sw $11, 90156($8)
    sw $11, 91172($8)
    sw $11, 91176($8)
    sw $11, 91180($8)
    sw $11, 92196($8)
    sw $11, 92200($8)
    sw $11, 92204($8)
    sw $11, 93224($8)
    
    #Detalhe menor
    sw $11, 92184($8)    
    sw $11, 92188($8)
    sw $11, 93208($8)
    sw $11, 93212($8)
    sw $11, 94232($8)
    sw $11, 94236($8)
    
    #Detalhe maior 
    sw $11, 97348($8)
    sw $11, 98368($8)
    sw $11, 98372($8)
    sw $11, 98376($8)
    sw $11, 99392($8)
    sw $11, 99396($8)
    sw $11, 99400($8)
    sw $11, 100416($8)
    sw $11, 100420($8)
    sw $11, 100424($8)
    sw $11, 101444($8)

    #Detalhe menor
    sw $11, 100404($8)    
    sw $11, 100408($8)
    sw $11, 101428($8)
    sw $11, 101432($8)
    sw $11, 102452($8)
    sw $11, 102456($8)

fim:
    addi $2, $0, 10
    syscall