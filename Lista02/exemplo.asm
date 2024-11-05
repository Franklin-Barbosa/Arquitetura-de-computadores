# Verificar se os dois números inseridos são iguais ou diferentes.

.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      beq $8, $9, iguais
      # diferentes
      addi $4, $0, '~'
      j imp		# desvio/salto incondicional para imp
      
      
iguais: addi $4, $0, '='
     
imp: addi $2, $0, 11	# impressão
     syscall
     addi $2, $0, 10	# finalizar
     syscall
     
