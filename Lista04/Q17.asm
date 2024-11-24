# Escreva uma fun��o que gera um tri�ngulo de altura e lados n e base 2 ? n ? 1. 
# Por exemplo, a sa�da para n = 6 seria:
#      *
#     ***
#    *****
#   *******
#  *********
# ***********

.text
main: addi $v0, $zero, 5   # syscall para leitura de inteiro
      syscall
      move $a0, $v0        # Passa o valor lido para $a0
      jal triangulo        # Chama a fun��o triangulo

      addi $v0, $zero, 10  # syscall para encerrar o programa
      syscall

triangulo:
      move $t0, $a0        # $t0 armazena o valor de n
      addi $t1, $zero, 1   # $t1 = i (linha atual, come�a em 1)

loop_linhas:
      bgt $t1, $t0, fim    # Se i > n, fim do tri�ngulo

      sub $t2, $t0, $t1    # $t2 = n - i (n�mero de espa�os), Calcula o n�mero de espa�os antes dos asterisco

      # Imprime os espa�os
      move $t3, $zero      # $t3 = contador de espa�os
loop_espacos:
      bge $t3, $t2, fim_espacos  # Se contador >= n - i, fim dos espa�os
      addi $a0, $zero, ' '       # Imprime um espa�o
      addi $v0, $zero, 11        # syscall para imprimir caractere
      syscall
      addi $t3, $t3, 1           # Incrementa o contador de espa�os
      j loop_espacos
fim_espacos:
      # Calcula o n�mero de asteriscos na linha
      mul $t4, $t1, 2      # $t4 = 2 * i
      sub $t4, $t4, 1      # $t4 = 2 * i - 1 (n�mero de asteriscos)

      # Imprime os asteriscos
      move $t5, $zero      # $t5 = contador de asteriscos
loop_asteriscos:
      bge $t5, $t4, fim_asteriscos  # Se contador >= 2 * i - 1, fim dos asteriscos
      addi $a0, $zero, '*'          # Imprime um asterisco
      addi $v0, $zero, 11           # syscall para imprimir caractere
      syscall
      addi $t5, $t5, 1              # Incrementa o contador de asteriscos
      j loop_asteriscos
fim_asteriscos:
      addi $a0, $zero, '\n'   # Imprime '\n'
      addi $v0, $zero, 11     # syscall para imprimir caractere
      syscall

      # Incrementa a linha atual e repete
      addi $t1, $t1, 1        # i++
      j loop_linhas
fim:
      jr $ra                  # Retorna para a fun��o chamadora
