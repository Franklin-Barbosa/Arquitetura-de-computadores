.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      add $4, $0, $8
      add $5, $0, $9
      jal Pot
      add $4, $0, $2
      addi $2, $0, 1
      syscall
      
      addi $2, $0, 10
      syscall


#================================================
# Funcao para calcular uma potencia ($4 ^$5
# nome: Pot
# entrada: $4 e $5
# saida: $2
# Regs usados: $8, $9
# rotulos usados: test

Pot: add $8, $0, $5
     addi $9, $0, 1 	# elemento neutro da multiplicação
test: beq $8, $0, fimPot
     mul $9, $9, $4
     addi $8, $8, -1
     j test
fimPot: add $2, $0, $9
        jr $31