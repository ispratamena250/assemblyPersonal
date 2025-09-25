.globl main
.data 
	nl: .asciz "\n"
	inputMessage: .asciz "Digite a string: "
	typedString: .asciz "String digitada: "
	endMessage: .asciz "Fim"
	buffer: .space 100
.text
main:
	#input message
	la a0, inputMessage #atribuicao de endereco
	li a7, 4 #load immediate
	ecall #printa a0
	
	#new line
	la a0, nl
	li a7, 4
	ecall #printa a0
	
	#leitura
	la a0, buffer
	li a1, 100 #tamanho do buffer
	li a7, 8
	ecall #le string do console e coloca em a0
	
	#guarda o buffer
	la t0, buffer #t0 = buffer
	
	#string digitada
	la a0, typedString
	li a7, 4
	ecall #printa a0
	
	#new line
	la a0, nl
	li a7, 4
	ecall #printa a0
	
	#printa string digitada
	mv a0, t0
	li a7, 4
	ecall #printa a0
	
	#new line
	la a0, nl
	li a7, 4
	ecall #printa a0
	
	#end message
	la a0, endMessage
	li a7, 4
	ecall #printa a0
	
	#exit
	li a7, 10
	ecall #fim