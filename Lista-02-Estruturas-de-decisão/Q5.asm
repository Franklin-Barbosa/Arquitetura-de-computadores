# Fa�a um programa que receba tr�s notas (entre 0 e 100) e calcule a m�dia ponderada dessas notas 
# com pesos 1, 2 e 3. Informe a m�dia e se o aluno foi aprovado, escreva ap�s a m�dia o a letra A. 
# Caso o aluno seja reprovado, informe, ap�s a m�dia, a letra R. A m�dia para aprova��o � 60.

.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      addi $2, $0, 5
      syscall
      add $10, $0, $2
      
      sll $9, $9, 1    # deslocar uma casa para a esuqerda == mult por 2
      
      sll $11, $10, 1
      add $10, $11, $10
      
      add $12, $8, $9
      add $12, $12, $10
      
      addi $13, $0, 6
      div $12, $13
          
      mflo $14
      mflo $4
      addi $2, $0, 1
      syscall
      
      addi $13, $0, 60
      slt $15, $14, $13 # $25 == $14<$23 ? 1 : 0
      beq $15, $0, apv
      addi $4, $0, 'R'
      j imp
      
apv: addi $4, $0, 'A'

imp: addi $2, $0, 11
     syscall

fim: addi $2, $0, 10
     syscall