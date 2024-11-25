# Escreva uma função que gera um triângulo lateral de altura 2 ? n ? 1 e n largura. 
# Por exemplo, a saída para n = 4 seria:
# *
# **
# ***
# ****
# ***
# **
# *

.text
main:
    addi $2 $0 5
    syscall
    add $4 $2 $0
    jal triangulo
    
    addi $2 $0 10
    syscall

triangulo:
    add $25 $4 $0	# $4 para $25, tamanho do triangulo
    addi $8 $0 2	# maximo
    mul $8 $4 $8 	# armazena o dobro do tamanho original do triangulo
    addi $9 $0 1 	# i
    addi $16 $0 2
primeiro_laco:
    beq $9 $8 fim_primeiro_laco 	# se $9 == $8 o loop externo termina
    add $10 $0 $0 	# j
    add $15 $9 $0
    slt $20 $25 $15 	# se $25 < $15, resultado (0 ou 1) vai para $20
    bne $20 $0 subtrai	# se $20 != $0, salta para subtrai
    j segundo_laco	# senão salta para segundo_laco
subtrai:
    sub $15 $15 $16 
    addi $16 $16 2	# incrementa $16 em 2
segundo_laco:
    beq $10 $15 fim_segundo_laco 	# se $10 == $15, termina o loop interno
    add $4 $0 '*'	# imprime *
    addi $2 $0 11
    syscall
    
    addi $10 $10 1	# incrementa $10
    j segundo_laco
fim_segundo_laco:
    addi $4 $0 '\n'	# quebra de linha
    addi $2 $0 11
    syscall
    
    addi $9 $9 1	# incrementa $9
    j primeiro_laco
fim_primeiro_laco:
    jr $31
