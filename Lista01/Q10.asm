# Fa�a um programa que leia um caractere min�sculo e imprima o seu equivalente mai�sculo.
# A = 65      a = 97    diferen�a = 32

.text
main: addi $2, $0, 12	# servi�o de leitura de caractere
      syscall        	# chamada ao sistema operacional
      add $8, $0, $2 	# $8 <= $2
     
      addi $4, $8, -32
 
      addi $2, $0, 11	# servi�o para imprimir caractere
      syscall
     
      addi $2, $0, 10	# servi�o para encerrar o programa
      syscall
      