# Faça um programa que leia um número entre 0 e 9999 e imprima cada algarismo em uma linha diferente.

.text
main:   addi $2, $0, 5 		#lê inteiro
	syscall
	addi $8, $0, 10 	#guarda 10 no reg $8
	
	div $2, $8 		#divide o valor de $2 pelo valor de $8
	mfhi $4 		#guarda o resto no hi $4
	addi $2, $0, 1 
	syscall
	add $4, $0, $8 		# quebra linha
	addi $2, $0, 11 	# exibe caracter em $4
	syscall
	mflo $2 		#armazena o valor de Lo em $2
	
	div $2, $8 		# divide o valor de $2 pelo valor de $8
	mfhi $4 		# armazena o valor de Hi em $4 (resto)
	addi $2, $0, 1 		# exibe o valor de $4
	syscall
	add $4, $0, $8 		# quebra linha
	addi $2, $0, 11 	# exibe caracter em $4
	syscall
	mflo $2 		# armazena o valor de Lo em $2 (inteiro)
	
	div $2, $8 		# divide o valor de $2 pelo valor de $8
	mfhi $4 		# armazena o valor de Hi em $4 (resto)
	addi $2, $0, 1 		# exibe o valor de $4
	syscall
	add $4, $0, $8 		# quebra linha
	addi $2, $0, 11 	# exibe caracter em $4
	syscall
	mflo $2 		# armazena o valor de Lo em $2 (inteiro)
	
	div $2, $8 		# divide o valor de $2 pelo valor de $8
	mfhi $4 		# armazena o valor de Hi em $4 (resto)
	addi $2, $0, 1 		# exibe o valor de $4
	syscall
	add $4, $0, $8 		# quebra linha
	addi $2, $0, 11 	# exibe caracter em $4
	syscall
	mflo $2 		# armazena o valor de Lo em $2 (inteiro)
	
	addi $2, $0, 10 	# encerra programa
	syscall