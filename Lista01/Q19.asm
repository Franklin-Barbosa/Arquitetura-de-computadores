# Em Edulândia o calendário é muito parecido com o nosso, exceto pelo fato de não existirem anos bissextos e o mês de fevereiro 
# ter uma quantidade fixa de dias, isso é, 30. Faça um programa que leia um inteiro representando um mês do ano Edulandês e
# imprima a quantidade de dias que tem esse mês.

.text
main:  addi $2, $0, 5	# lê um inteiro
       syscall
       add $8, $0, $2	# armazenar inteiro lido em $8
       
       addi $18, $0, 8	# adicionar 8 em $18
       div $8, $18	# dividir inteiro lido por $18
       mflo $9		# move o quociente da divisão (parte inteira) para $9
       
       add $10, $8, $9	# $10 = inteiro lido + quociente
       andi $11, $10, 1	# Aplica AND bit a bit com 1, armazenando o resultado em $11 (se $10 é par ou ímpar)
       addi $4, $11, 30 # Adiciona 30 a $11 para obter o código ASCII ('0' ou '1') e armazena em $4
       
       addi $2, $0, 1	# impressão de inteiro
       syscall
       addi $2, $0, 10	# finalizar o programa
       syscall