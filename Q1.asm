# Programa para ler um n�mero inteiro e imprimir o dobro desse n�mero.

.text
main: 
      addi $2, $0, 5          # L� um valor
      syscall                 # Chama syscall para entrada do usu�rio
      addi $5, $0, 2          # Atribui 2 a $5
      mul $4, $2, $5          # Multiplica o valor digitado por 2 e armazena em $4
      addi $2, $0, 1          # Prepara para imprimir o valor
      syscall                 # Chama syscall para imprimir
      addi $2, $0, 10         # Prepara para encerrar o programa
      syscall                 # Chama syscall para encerrar