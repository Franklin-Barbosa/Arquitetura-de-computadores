# Programa para ler um n�mero inteiro e imprimir o quadrado desse n�mero.

.text
main: 
      addi $2, $0, 5         # L� um valor
      syscall                # Chama syscall para entrada do usu�rio
      addi $8, $0, 2          # Atribui 2 a $8
      
      mul $4, $2, $2         # Multiplica o valor digitado por 2 e armazena em $4
      
      addi $2, $0, 1         # Prepara para imprimir o valor
      syscall                # Chama syscall para imprimir
      
      addi $2, $0, 10        # Prepara para encerrar o programa
      syscall                # Chama syscall para encerrar
