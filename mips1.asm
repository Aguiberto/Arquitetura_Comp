.text
main:
    #################################
    # CONFIGURAÇÃO DE CORES
    #################################

    # cor do cenário (preto)
    addi $4, $0, 0

    # cor do NPC (verde: 0x00FF00)
    lui  $9, 0x0000
    ori  $9, $9, 0xFF00

    #################################
    # DESENHO DO CENÁRIO + SHADOW
    #################################

    lui  $8, 0x1001        # $8 = base do bitmap
    addi $10, $0, 32000    # quantidade de pixels

Cena:
    beq  $10, $0, fimCena

    sw   $4, 0($8)         # cenário principal
    sw   $4, 131072($8)    # shadow (fundo salvo)

    addi $8, $8, 4
    addi $10, $10, -1
    j Cena

fimCena:
    #################################
    # CONFIGURAÇÃO DO NPC
    #################################

    lui  $8, 0x1001        # posição atual do NPC
    addi $14, $8, 1020     # limite direito
    add  $15, $0, $8       # limite esquerdo

    addi $13, $0, 4        # direção inicial (direita)
    addi $12, $0, 400      # duração da animação

    sw   $9, 0($8)         # desenha NPC inicial

#################################
# LOOP DE MOVIMENTO
#################################
mov:
    beq  $12, $0, fim

    jal  timer             # atraso (velocidade)

    # calcula próxima posição
    add  $16, $8, $13
    sw   $9, 0($16)        # desenha NPC na nova posição

    # restaura fundo antigo
    lw   $11, 131072($8)
    sw   $11, 0($8)

    # atualiza posição atual
    add  $8, $8, $13

    # verifica limites
    beq  $8, $14, inverter
    beq  $8, $15, inverter

    addi $12, $12, -1
    j mov

#################################
# INVERSÃO DE DIREÇÃO
#################################
inverter:
    sub  $13, $0, $13      # troca sinal da direção
    addi $12, $12, -1
    j mov

#################################
# FIM DO PROGRAMA
#################################
fim:
    addi $2, $0, 10
    syscall

#################################
# TIMER (delay por software)
#################################
timer:
    addi $20, $0, 6500

fortimer:
    beq  $20, $0, fimtimer
    addi $20, $20, -1
    j fortimer

fimtimer:
    jr   $31
