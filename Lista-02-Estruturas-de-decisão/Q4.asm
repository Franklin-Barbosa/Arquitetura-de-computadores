# Fa�a um programa que leia dois n�meros e escreva a rela��o de grandeza entre eles.
# Ex. 345 e 23 gera a sa�da 345>23. Ex.: 24 e 38 gera a sa�da 24<38. Ex.: 12 e 12 gera a sa�da 12=12

.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      add $4, $0, $8
      addi $2, $0, 1
      syscall
      
      beq $8, $9, impIgual
      slt $10, $8, $9
      beq $10, $0, impMaior
      addi $4, $0, '<'
      j imp
      
impMaior: addi $4, $0, '>'
	 j imp
      
impIgual: addi $4, $0, '='
	  j imp
	  
imp: addi $2, $0, 11
     syscall
     
     add $4, $0, $9
     addi $2, $0, 1
     syscall

fim: addi $2, $0, 10
     syscall