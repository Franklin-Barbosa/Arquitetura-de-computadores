#  Impressão da tabuada em três colunas.

.text
main: 
    addi $8, $0, 11       # Condição de parada (i = 11)
    addi $9, $0, 1        # Inicialização de i = 1

outer_loop:
    beq $9, $8, end       # Se i == 11, encerra o programa

    # Inicializa j para o loop interno
    addi $18, $0, 11      # Condição de parada (j = 11)
    addi $19, $0, 1       # Inicialização de j = 1

    # Inicializa contador de colunas (3 por linha)
    addi $21, $0, 0       # colunas = 0

inner_loop:
    beq $19, $18, next_i  # Se j == 11, sai do loop interno

    add $4, $0, $9 	  # Imprime i
    addi $2, $0, 1
    syscall

    addi $4, $0, '*' 	  # Imprime '*'
    addi $2, $0, 11
    syscall

    add $4, $0, $19	 # Imprime j
    addi $2, $0, 1
    syscall

    addi $4, $0, '='	 # Imprime '='
    addi $2, $0, 11
    syscall

    mul $20, $9, $19	 # Calcula i * j

    add $4, $0, $20      # Imprime resultado de i * j
    addi $2, $0, 1
    syscall

    addi $4, $0, ' '     # Imprime um espaço
    addi $2, $0, 11
    syscall

    addi $21, $21, 1     # Incrementa contador de colunas
    beq $21, 3, newline  # Se colunas == 3, faz quebra de linha

    addi $19, $19, 1	 # Incrementa j (j = j + 1)
    j inner_loop         # Volta para o teste do loop interno

newline:
    jal printQL          # Quebra de linha
    addi $21, $0, 0      # Reseta o contador de colunas
    j inner_loop         # Continua o loop interno

next_i:
    jal printQL		# Quebra de linha ao fim da tabuada de um número

    addi $9, $9, 1	# Incrementa i (i = i + 1)
    j outer_loop        # Volta para o teste do loop externo

end:
    addi $2, $0, 10	# Finaliza programa
    syscall

#================================================
# Funcao printQL para imprimir quebra de linha
# nome: PrintQL
# entrada: void
# saida: void (quabra de linha do terminal)
# Regs sujos: $4 e $2
printQL:
    addi $4, $0, '\n' 	# print quebra de linha
    addi $2, $0, 11     # Código do sistema para imprimir caractere
    syscall
    jr $31              # Retorna para a instrução principal
