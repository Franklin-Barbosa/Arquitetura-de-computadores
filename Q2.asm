# Programa para ler um número inteiro e imprimir o quadrado desse número.

.text
main: 
      addi $2, $0, 5         # Lê um valor
      syscall                # Chama syscall para entrada do usuário
      addi $8, $0, 2          # Atribui 2 a $8
      
      mul $4, $2, $2         # Multiplica o valor digitado por 2 e armazena em $4
      
      addi $2, $0, 1         # Prepara para imprimir o valor
      syscall                # Chama syscall para imprimir
      
      addi $2, $0, 10        # Prepara para encerrar o programa
      syscall                # Chama syscall para encerrar
