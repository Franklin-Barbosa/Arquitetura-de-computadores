# Faça um programa que calcule o(s) terno(s) pitagórico(s) a, b, c, para o qual a+b+c é
# um valor fornecido pelo usuário. Um terno pitagórico é uma tríade tal que a^2+b^2=c^2.
# Por exemplo, o usuário forneceu o valor 12, ora, um terno pitagórico para esse caso é
# a=3, b=4 e c=5, pois 3^2+4^2=5^2 e 3+4+5 =12.

.text
main:  addi $2, $0, 5
       syscall
       add $18, $0, $2  # n fornecido pelo usuario
       add $7, $0, $2   # copia no $7
       add $20, $0, $18
       add $21, $0, $18
       add $22, $0, $18
       
lacoext:
       beq $20, $0, fimlacoext
lacomedio:
       beq $21, $0, fimlacomedio
lacoint:
       beq $22, $0, fimlacoint      
       
corpo: add $4, $0, $20
       add $5, $0, $21
       add $6, $0, $22
       jal ternosoma
       beq $2, $0, naoeh
       addi $2, $0, 1
       syscall
       
       addi $4, $0, ' '
       addi $2, $0, 11
       syscall
       
       add $4, $0,$21
       addi $2, $0, 1
       syscall
       
       addi $4, $0, ' '
       addi $2, $0, 11
       syscall
       
       add $4, $0, $22
       addi $2, $0, 1
       syscall
       
       addi $4, $0, '\n'
       addi $2, $0, 11
       syscall
       
naoeh:      
       addi $22, $22, -1
       j lacoint
fimlacoint:
       add $22, $0, $18      
       addi $21, $21, -1      
       j lacomedio              
fimlacomedio:                                  
       add $22, $0, $18
       add $21, $0, $18      
       addi $20, $20, -1
       j lacoext              
fimlacoext:                                                
       
       addi $2, $0, 10
       syscall
       
#==================================================
# funcao ternosoma
# entradas: $4, $5, $6, $7
# saida: $2  (1 eh terno e soma, 0 nao eh)    
# reg usados: $25, $8
# rotulos usados: ternosoma, fimternosoma
ternosoma: addi $2, $0, 0
        add $25, $0, $31
        add $8, $4, $5
        add $8, $8, $6
        bne $7, $8, fimternosoma
        jal terno
fimternosoma:
        add $31, $0, $25
        jr $31
#--------------------------------------------------
# funcao terno
# entradas: $4, $5, $6
# saida: $2 (1 eh terno, 0 nao eh)
# reg usados: $8, $9, $10
# rotulos usados: terno, fimterno
terno: addi $2, $0, 1
       mul $8, $4, $4        
       mul $9, $5, $5
       mul $10, $6, $6
       add $9, $8, $9
       beq $9, $10, fimterno
       add $2, $0, $0
fimterno: jr $31