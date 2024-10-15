# Faça um programa que leia um caractere minúsculo e imprima o seu equivalente maiúsculo.
# A = 65      a = 97    diferença = 32

.text
main: addi $2, $0, 12	# serviço de leitura de caractere
      syscall        	# chamada ao sistema operacional
      add $8, $0, $2 	# $8 <= $2
     
      addi $4, $8, -32
 
      addi $2, $0, 11	# serviço para imprimir caractere
      syscall
     
      addi $2, $0, 10	# serviço para encerrar o programa
      syscall
      