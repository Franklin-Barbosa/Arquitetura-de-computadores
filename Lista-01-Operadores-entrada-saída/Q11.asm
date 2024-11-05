# Faça um programa que leia 1 inteiro entre 100 e 999 e o imprima escrito de trás para frente. 
# Exemplo: 384 gera uma saída 483

.text
main:  	addi $2, $0, 5 		#le o inteiro
	syscall
	addi $8, $0, 100
	addi $9, $0, 10
	
divpor100: div $2, $8
           mflo $10
           mfhi $11
           
divpor10:  div $11, $9
           mflo $12
           mfhi $4
           
imprime:   addi $2, $0, 1
	   syscall
	   add $4, $0, $12
	   syscall
	   add $4, $0, $10
	   syscall
	  
fim:	   addi $2, $0, 10
	   syscall