# programa para ler duas notas de um aluno do IFRN em um curso semestral.
# Esse programa dever� apresentar a m�dia desse aluno, ap�s as duas provas.

.text
main:
    # Ler nota 1
    addi $2, $0, 5	# syscall para leitura de inteiro
    syscall       	# l� a primeira nota
    add $8, $0, $2 	# move o valor de $2 para $8 (primeira nota)

    # Ler nota 2
    addi $2, $0, 5	# syscall para leitura de inteiro
    syscall       	# l� a segunda nota
    add $9, $0, $2	# move o valor de $2 para $9 (segunda nota)

    # Pesos
    addi $10, $0, 2   	# $10 <- peso da primeira nota (2)
    addi $11, $0, 3  	# $11 <- peso da segunda nota (3)

    # Calcular a m�dia
    mul $12, $8, $10   	# $12 <- primeira nota * peso1
    mul $13, $9, $11   	# $13 <- segunda nota * peso2
    add $14, $12, $13   # $14 <- soma dos produtos (nota1*peso1 + nota2*peso2)

    add $15, $10, $11   # $15 <- soma dos pesos (peso1 + peso2)

    # M�dia ponderada
    div $14, $15        # dividir soma dos produtos pela soma dos pesos
    mflo $24            # $24 <- m�dia ponderada (quociente da divis�o)

    # Imprimir m�dia ponderada
    add $4, $0, $24    	# move o valor da m�dia para $4 (argumento de impress�o)
    addi $2, $0, 1    	# syscall para imprimir inteiro
    syscall             # imprime a m�dia

    # Finalizar o programa
    addi $2, $0, 10    	# syscall para encerrar o programa
    syscall
