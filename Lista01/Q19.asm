# Em Edul�ndia o calend�rio � muito parecido com o nosso, exceto pelo fato de n�o existirem anos bissextos e o m�s de fevereiro 
# ter uma quantidade fixa de dias, isso �, 30. Fa�a um programa que leia um inteiro representando um m�s do ano Eduland�s e
# imprima a quantidade de dias que tem esse m�s.

.text
main:  addi $2, $0, 5	# l� um inteiro
       syscall
       add $8, $0, $2	# armazenar inteiro lido em $8
       
       addi $18, $0, 8	# adicionar 8 em $18
       div $8, $18	# dividir inteiro lido por $18
       mflo $9		# move o quociente da divis�o (parte inteira) para $9
       
       add $10, $8, $9	# $10 = inteiro lido + quociente
       andi $11, $10, 1	# Aplica AND bit a bit com 1, armazenando o resultado em $11 (se $10 � par ou �mpar)
       addi $4, $11, 30 # Adiciona 30 a $11 para obter o c�digo ASCII ('0' ou '1') e armazena em $4
       
       addi $2, $0, 1	# impress�o de inteiro
       syscall
       addi $2, $0, 10	# finalizar o programa
       syscall