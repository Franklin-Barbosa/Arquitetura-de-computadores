.text
main: 
    addi $8, $0, 11       # Condição de parada (i = 11)
    addi $9, $0, 1        # Inicialização de i = 1

outer_loop:
    beq $9, $8, end       # Se i == 11, encerra o programa

    # Inicializa j para o loop interno
    addi $18, $0, 11      # Condição de parada (j = 11)
    addi $19, $0, 1       # Inicialização de j = 1

inner_loop:
    beq $19, $18, next_i  # Se j == 11, sai do loop interno

    # Imprime i
    add $4, $0, $9
    addi $2, $0, 1
    syscall

    # Imprime '*'
    addi $4, $0, '*'
    addi $2, $0, 11
    syscall

    # Imprime j
    add $4, $0, $19
    addi $2, $0, 1
    syscall

    # Imprime '='
    addi $4, $0, '='
    addi $2, $0, 11
    syscall

    # Calcula i * j
    mul $20, $9, $19

    # Imprime o resultado de i * j
    add $4, $0, $20
    addi $2, $0, 1
    syscall

    # Imprime um espaço após cada multiplicação
    addi $4, $0, ' '
    addi $2, $0, 11
    syscall

    # Incrementa j (j = j + 1)
    addi $19, $19, 1
    j inner_loop         # Volta para o teste do loop interno

next_i:
    # Quebra de linha ao fim de cada linha da tabuada
    jal printQL

    # Incrementa i (i = i + 1)
    addi $9, $9, 1
    j outer_loop         # Volta para o teste do loop externo

end:
    # Finaliza o programa
    addi $2, $0, 10
    syscall

# Função para imprimir quebra de linha
printQL:
    addi $4, $0, 10       # Código ASCII para '\n'
    addi $2, $0, 11       # Código do sistema para imprimir caractere
    syscall
    jr $31                # Retorna para a instrução principal
