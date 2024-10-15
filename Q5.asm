# programa que leia um número inteiro entre 0 e 999 e imprima a soma dos
# algarismos desse número. Ex.: 358 gera uma saída de 16, pois 3+5+8 = 16

.text
main: addi $2, $0, 5	# serviço para leitura de inteiro
      syscall       	
      add $8, $0, $2 	# $8 contem o valor lido
      
      addi $9, $0, 10
      
      div $8, $9	# hi <- resto e lo <- quo
      mfhi $20
      mflo $8		# $8 <- quo
      
      div $8, $9	# hi <- resto e lo <- quo
      mfhi $21
      mflo $8		# $8 <- quo
      
      div $8, $9	# hi <- resto e lo <- quo
      mfhi $22
      mflo $8		# $8 <- quo
      
      add $4, $20, $21
      add $4, $4, $22
      
      addi $2, $0, 1	# syscall para imprimir inteiro
      syscall       	
      
      addi $2, $0, 10   # syscall para encerrar o programa
      syscall