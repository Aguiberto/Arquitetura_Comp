.data
    # Notas da escala (Dó, Ré, Mi, Fá, Sol, Lá, Si, Dó)
    notas: .byte 60, 62, 64, 65, 67, 69, 71, 72 

.text
main:
    la $8, notas      # $8 (t0) = endereço inicial do array de notas
    li $9, 0          # $9 (t1) = contador do loop (i = 0)
    li $10, 8         # $10 (t2) = limite do loop (8 notas)

loop_escala:
    beq $9, $10, fim  # Se contador == 8, encerra

    # Preparando o syscall 31
    li $2, 31         # $v0 = 31 (som MIDI síncrono)
    
    lb $4, 0($8)      # $a0 = carrega a nota atual do array
    li $5, 500        # $a1 = duração (500ms)
    li $6, 0          # $a2 = instrumento (Piano)
    li $7, 100        # $a3 = volume (100)
    
    syscall           # Toca a nota e aguarda 500ms

    # Atualização dos ponteiros e contadores
    addi $8, $8, 1    # Avança para a próxima nota no array (.byte = 1 byte)
    addi $9, $9, 1    # i++
    j loop_escala     # Repete o loop

fim:
    li $2, 10         # Encerra o programa
    syscall