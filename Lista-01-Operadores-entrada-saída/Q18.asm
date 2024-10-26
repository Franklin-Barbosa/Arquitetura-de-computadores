# programa que leia dois n�meros e informe o menor deles 
# (use apenas opera��es aritm�ticas e l�gicas.

.text
main: addi $2, $0, 5	# servi�o de leitura de inteiros
      syscall        	# chamada ao sistema operacional
      add $8, $0, $2 	# $8 <= $2
      
      addi $2, $0, 5	# servi�o de leitura de inteiros
      syscall        	# chamada ao sistema operacional
      add $9, $0, $2 	# $9 <= $2
     
      sub $10, $8, $9	# y = a - b
      not $11, $10	# y negado bit a bot
      
      srl $12, $10, 31	# s = sinal(y)
      srl $13, $11, 31	# k = sinal (x)
      
      mul $14, $8, $12	# a*s
      mul $15, $9, $13	# b*k
      
      add $4, $14, $15
 
      addi $2, $0, 1	# servi�o para imprimir inteiros
      syscall
     
      addi $2, $0, 10	# servi�o para encerrar o programa
      syscall