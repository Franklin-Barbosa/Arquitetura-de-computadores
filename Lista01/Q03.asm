# Programa para ler dois n�meros inteiros e imprimir a multiplica��o desses dois n�meros

.text
main: addi $2, $0, 5
      syscall 
      add $8, $0, $2
      
      addi $2, $0, 5
      syscall  
      add $9, $0, $2
      
      mul $4, $8, $8
      
      addi $2, $0, 1
      syscall
      
      addi $2, $0, 10
      syscall
