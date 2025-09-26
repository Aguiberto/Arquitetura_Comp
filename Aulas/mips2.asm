  # EXEMPLO 3 : MEDIA DE UM ALUNO
  
main: 
addi $8,$0,55
addi $9,$0,75
# notas 1 e 2

addi $10,$0,2
addi $11,$0,3
#pesos 2 e 3

mul $12,$8,$10
mul $13,$9,$11

add $14,$12,$13
#soma das notas com os pesos

add $15,$10,$11
#soma dos pesos

div $14,$15
mflo $16
#resultado no registrador 16