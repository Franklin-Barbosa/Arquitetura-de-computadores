# tabuada

.text
main: addi $8, $0, 11 # condicao de parada
      addi $9, $0, 1  # inicializacao i = 1
test: beq $8, $9, ffor# teste i<11
     
      addi $18, $0, 11 # condicao de parada
      addi $19, $0, 1  # ini j = 1
testi:beq $18, $19, fforInt #teste j<11
     
      add $4, $0, $9  #print i
      addi $2, $0, 1
      syscall
     
      addi $4, $0, '*'#print *
      addi $2, $0, 11
      syscall
     
      add $4, $0, $19 #print j
      addi $2, $0, 1
      syscall
     
      addi $4, $0, '=' #print =
      addi $2, $0, 11
      syscall
     
      mul $20, $9, $19
                 
      add $4, $0, $20 #print i*j
      addi $2, $0, 1
      syscall
     
      jal printQL
     
      addi $19, $19, 1 # j =  j + 1
      j testi
fforInt:      
      jal printQL            
     
      addi $9, $9, 1  # incremento i++
      j test
ffor: addi $2, $0, 10
      syscall
      
#================================================
# Funcao printQL para imprimir quebra de linha
# nome: PrintQL
# entrada: void
# saida: void (quabra de linha do terminal)
# Regs sujos: $4 e $2

printQL:
      addi $4, $0, '\n' #print quebra de linha
      addi $2, $0, 11
      syscall  
      jr $31