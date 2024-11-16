# imprimir inteiros de 0 a 10 com quebra de linha (um número por linha)

.text
main: addi $8, $0, 11
      addi $9, $0, 0  # i = 0;
test: beq $8, $9, endfor # i<10

      addi $4, $9, 0
      addi $2, $0, 1
      syscall
     
      addi $4, $0, '\n'
      addi $2, $0, 11
      syscall
     
      addi $9, $9, 1 # i = i + 1; ou i++;  
      j test          
endfor:
      addi $2, $0, 10
      syscall
